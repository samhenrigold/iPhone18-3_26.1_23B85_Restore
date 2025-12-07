void re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 24) = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 32;
            do
            {
              if ((*(v18 - 32) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::DynamicArray<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 24) % *(a1 + 24), *(v18 + 24));
                v20 = *(v18 - 24);
                *(v19 + 48) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 32) = 0;
                *(v19 + 8) = v20;
                *(v19 + 16) = 0;
                v21 = *(v18 - 8);
                *(v19 + 16) = *(v18 - 16);
                *(v19 + 24) = v21;
                *(v18 - 16) = 0;
                *(v18 - 8) = 0;
                v22 = *(v19 + 32);
                *(v19 + 32) = *v18;
                *v18 = v22;
                v23 = *(v19 + 48);
                *(v19 + 48) = *(v18 + 16);
                *(v18 + 16) = v23;
                ++*(v18 + 8);
                ++*(v19 + 40);
              }

              v18 += 64;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + (v5 << 6);
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v27 + 56) = a3;
  *(v28 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v24 + (v5 << 6);
}

void re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 1872 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

double re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 468;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(uint64_t result, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2 && (v4 = a4 % *(a2 + 24), v6 = *(*(a2 + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(a2 + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 1872 * v6;
      v12 = *(v10 + 8);
      v11 = v10 + 8;
      if (v12 == *a3 && *(v11 + 8) == a3[1] && *(v11 + 16) == a3[2])
      {
        break;
      }

      v6 = *(v8 + 1872 * v9) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v9;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::allocEntry(a1, *(v13 + 1856) % *(a1 + 24), *(v13 + 1856));
                v18 = *(v13 + 24);
                *(v17 + 8) = *(v13 + 8);
                *(v17 + 24) = v18;
                memcpy((v17 + 32), (v13 + 32), 0x720uLL);
              }

              v13 += 1872;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 1872 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 1872 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 1872 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 1856) = a3;
  ++*(a1 + 28);
  return v19 + 1872 * v5;
}

uint64_t re::DynamicArray<re::AllocatedShadowHandle>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AllocatedShadowHandle>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::AllocatedShadowHandle>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::EvaluationRegister>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 32 * v5 - 4);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 32 * v5, (*(a2 + 32) + 32 * v5), 32 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 32 * v4 - 4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::SkinningModelBuilder::addSkinnedMeshPartData(uint64_t a1, int a2, char a3, char a4, uint64_t a5)
{
  v34 = 0xA7268F0C3B45D55ELL;
  v35 = "skinningInfluences";
  v10 = re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a5, &v34, 0x5626F7127DF0A498uLL, &v22);
  v11 = HIDWORD(v24);
  v12 = *(a5 + 16);
  if (v34)
  {
    if (v34)
    {
    }
  }

  v34 = 0xF98D22D8F2059642;
  v35 = "influenceEndIndices";
  v13 = re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a5, &v34, 0x1554917AD4E323E0uLL, &v22);
  v14 = HIDWORD(v24);
  v15 = *(a5 + 16);
  if (v34)
  {
    if (v34)
    {
    }
  }

  v22 = a2;
  LOBYTE(v23) = a3;
  HIBYTE(v23) = a4;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (v11 == 0x7FFFFFFF)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    v16 = v12 + (v11 << 6);
    LOBYTE(v27) = 0;
    DWORD2(v28) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v27, v16 + 24);
    v29 = *(v16 + 56);
  }

  v30 = 0uLL;
  if (v14 == 0x7FFFFFFF)
  {
    v33 = 0;
    v32 = 0u;
    v31 = 0u;
  }

  else
  {
    v17 = v15 + (v14 << 6);
    LOBYTE(v31) = 0;
    DWORD2(v32) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v31, v17 + 24);
    v33 = *(v17 + 56);
  }

  v18 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::addUninitialized(a1 + 80);
  v19 = v23;
  *v18 = v22;
  *(v18 + 4) = v19;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 8) = 0;
  *(v18 + 8) = v24;
  *(v18 + 16) = v25;
  v24 = 0;
  v25 = 0;
  *(v18 + 24) = v26;
  v26 = 0;
  *(v18 + 32) = 0;
  *(v18 + 56) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18 + 32, &v27);
  v20 = v29;
  *(v18 + 88) = 0;
  v18 += 88;
  *(v18 - 24) = v20;
  *(v18 - 16) = v30;
  *(v18 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18, &v31);
  *(v18 + 32) = v33;
  if (DWORD2(v32) != -1)
  {
    (off_1F5D0A000[DWORD2(v32)])(&v34, &v31);
  }

  DWORD2(v32) = -1;
  if (DWORD2(v28) != -1)
  {
    (off_1F5D0A000[DWORD2(v28)])(&v34, &v27);
  }

  DWORD2(v28) = -1;
  if (v24 && v25)
  {
    (*(*v24 + 40))();
  }

  return *(a1 + 120) - 1;
}

uint64_t re::SkinningModelBuilder::buildDeformationModel(re::SkinningModelBuilder *this, id *a2, DeformationModelData *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  re::SkinningModelBuilder::generatePreparedSkinnedMeshPartData(this, 1, a2);
  var0 = a3->var0[2].var0;
  v5 = &a3->var0[2];
  if (var0)
  {
    (*(**this + 40))();
  }

  v7 = *this;
  v8 = (*(**this + 32))(*this, 48, 8);
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *&v45 = &unk_1F5D0A020;
  *(&v45 + 1) = v7;
  *(&v46 + 1) = &v45;
  v32 = v31;
  v30 = v8;
  v31[0] = &unk_1F5D0A020;
  v31[1] = v7;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100](v5, &v30);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v30);
  v9 = std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v45);
  v10 = *v5;
  v11 = *(this + 15);
  v10[1] = v11;
  if (v11)
  {
    if (v11 < 0x2E8BA2E8BA2E8BBLL)
    {
      v10[2] = v13;
      if (!v13)
      {
        goto LABEL_23;
      }

      v15 = v11 - 1;
      if (v11 != 1)
      {
        do
        {
          *v13 = 0;
          *(v13 + 4) = 0uLL;
          *(v13 + 20) = 0uLL;
          *(v13 + 36) = 0uLL;
          *(v13 + 52) = 0uLL;
          *(v13 + 68) = 0uLL;
          *(v13 + 84) = 0;
          v13 += 88;
          --v15;
        }

        while (v15);
      }

      *v13 = 0;
      *(v13 + 4) = 0u;
      *(v13 + 20) = 0u;
      *(v13 + 36) = 0u;
      *(v13 + 52) = 0u;
      *(v13 + 68) = 0u;
      *(v13 + 84) = 0;
      re::FixedArray<re::BufferSlice>::init<>(v10 + 3, *this, *(this + 2));
      re::FixedArray<re::BufferSlice>::operator=((v10 + 3), this + 1);
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](this + 80, v17);
        LOWORD(v30) = *(v18 + 4);
        HIDWORD(v30) = *v18;
        LOBYTE(v31[0]) = 0;
        LODWORD(v32) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v31, v18 + 88);
        v33 = *(v18 + 120);
        v34[0] = 0;
        v35 = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v34, v18 + 32);
        v36 = *(v18 + 64);
        v19 = v10[1];
        if (v19 <= v17)
        {
          break;
        }

        v20 = (v10[2] + v16);
        *v20 = v30;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v20 + 1), v31);
        v20[5] = v33;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v20 + 6), v34);
        v20[10] = v36;
        if (v35 != -1)
        {
          (off_1F5D0A000[v35])(&v45, v34);
        }

        v35 = -1;
        if (v32 != -1)
        {
          (off_1F5D0A000[v32])(&v45, v31);
        }

        ++v17;
        v16 += 88;
        if (v11 == v17)
        {
          return 1;
        }
      }

      v29 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v37 = 136315906;
      v38 = "operator[]";
      v39 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v40 = 468;
      v41 = 2048;
      v42 = v17;
      v43 = 2048;
      v44 = v19;
      _os_log_send_and_compose_impl(v24, &v29, &v45, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v27, v28);
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, v11, v29);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v25, v26);
    __break(1u);
LABEL_23:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  re::FixedArray<re::BufferSlice>::init<>(v10 + 3, *this, *(this + 2));
  re::FixedArray<re::BufferSlice>::operator=((v10 + 3), this + 1);
  return 1;
}

void re::SkinningModelBuilder::generatePreparedSkinnedMeshPartData(re::SkinningModelBuilder *this, int a2, id *a3)
{
  v4 = *(this + 8);
  v5 = *(this + 15);
  if (v4 <= v5)
  {
    if (v5)
    {
      v52 = a2 == 0;
    }

    else
    {
      v52 = 1;
    }

    if (!v52)
    {
      v53 = 0;
      do
      {
        v54 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](this + 80, v53);
        v55 = v54;
        v56 = *(v54 + 68);
        if (*(v54 + 16))
        {
          v57 = v56 == 0;
        }

        else
        {
          v57 = 0;
        }

        if (v57)
        {
          v58 = [*a3 newBufferWithBytes:*(v54 + 24) length:? options:?];
          v81[0] = v58;
          v82 = 0;
          LODWORD(v83) = 0;
          HIDWORD(v83) = [v58 length];
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v55 + 32, v81);
          *(v55 + 64) = v83;
          if (v82 != -1)
          {
            (off_1F5D0A000[v82])(v78, v81);
          }

          v82 = -1;
          if (v58)
          {
          }

          v56 = *(v55 + 68);
        }

        if (*(v55 + 80))
        {
          v59 = v56 == 0;
        }

        else
        {
          v59 = 0;
        }

        if (v59)
        {
          v60 = [*a3 newBufferWithBytes:*(v55 + 72) length:? options:?];
          v81[0] = v60;
          v82 = 0;
          LODWORD(v83) = 0;
          HIDWORD(v83) = [v60 length];
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v55 + 32, v81);
          *(v55 + 64) = v83;
          if (v82 != -1)
          {
            (off_1F5D0A000[v82])(v78, v81);
          }

          v82 = -1;
          if (v60)
          {
          }
        }

        ++v53;
      }

      while (v5 != v53);
    }

    return;
  }

  if (v4 > 4 * *(this + 11))
  {
    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::setBucketsCapacity((this + 80), (v4 + 3) >> 2);
    v4 = *(this + 8);
    if (!v4)
    {
      return;
    }
  }

  v69 = v4;
  v6 = 0;
  while (1)
  {
    v7 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 24, v6);
    v8 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::addUninitialized(this + 80);
    *(v8 + 4) = 0;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 120) = 0;
    *(v8 + 88) = 0u;
    *v8 = *v7;
    v9 = *(v7 + 32);
    if (v9)
    {
      v10 = *(v7 + 24);
      v11 = *v10;
      v12 = v9 - 1;
      if (v12)
      {
        v13 = v10 + 1;
        v14 = v11;
        while (1)
        {
          v16 = *v13++;
          v15 = v16;
          if (v11 != v16 - v14)
          {
            break;
          }

          v14 = v15;
          if (!--v12)
          {
            goto LABEL_13;
          }
        }

        v11 = 0;
      }

LABEL_13:
      if (v11 >= 256)
      {
        LOBYTE(v11) = 0;
      }

      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v7 + 16);
    if (v18)
    {
      v19 = (*(v7 + 8) + 4);
      v20 = *(v7 + 16);
      while (*(v19 - 1) <= 0x3FFu)
      {
        if (*v19 < 0.0 || *v19 > 1.0)
        {
          break;
        }

        v19 += 2;
        if (!--v20)
        {
          goto LABEL_25;
        }
      }

      v22 = 0;
    }

    else
    {
LABEL_25:
      v22 = 1;
    }

    v84 = 0;
    v85 = 0;
    v86 = 0;
    v81[0] = 0;
    v82 = 0;
    v83 = 0;
    v78[0] = 0;
    v79 = 0;
    v80 = 0;
    if (!v18)
    {
      goto LABEL_66;
    }

    if (v22)
    {
      v23 = 4 * v18;
      if (a2)
      {
        v24 = [*a3 newBufferWithLength:v23 options:0];
        v73 = v24;
        v76 = 0;
        LODWORD(v77) = 0;
        HIDWORD(v77) = [v24 length];
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v81, &v73);
        v83 = v77;
        if (v76 != -1)
        {
          (off_1F5D0A000[v76])(v72, &v73);
        }

        v76 = -1;
        if (v24)
        {
        }

        v25 = re::BufferSlice::contents(v81);
      }

      else
      {
        re::FixedArray<BOOL>::init<>(&v84, *this, v23);
        v25 = v86;
      }

      v30 = 0;
      v31 = *(v7 + 16);
      v33 = *(v7 + 40);
      v32 = *(v7 + 48);
      v34 = (*(v7 + 8) + 4);
      while (v31 != v30)
      {
        *&v35 = *(v34 - 1);
        if (v32)
        {
          v35 = v35;
          if (v32 <= v35)
          {
            goto LABEL_110;
          }

          LODWORD(v35) = *(v33 + 4 * v35);
        }

        v36 = *v34;
        v34 += 2;
        *(v25 + 4 * v30++) = ((v36 * 4194300.0) + 0.5) | (v35 << 22);
        if (v18 == v30)
        {
          goto LABEL_63;
        }
      }

      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v31, v31);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v61, v65);
      __break(1u);
LABEL_110:
      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v32);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v62, v66);
      __break(1u);
      goto LABEL_111;
    }

    v27 = (8 * v18);
    if (*(v7 + 48))
    {
      break;
    }

    v37 = *(v7 + 8);
    v38 = *this;
    v72[0] = v37;
    v72[1] = v27;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    re::FixedArray<BOOL>::init<>(&v73, v38, v27);
    re::FixedArray<unsigned char>::copy(&v73, v72);
    re::FixedArray<float>::operator=(&v84, &v73);
    if (v73 && v74)
    {
      (*(*v73 + 40))();
    }

    if (a2)
    {
      v39 = [*a3 newBufferWithBytes:v37 length:v27 options:0];
      v73 = v39;
      v76 = 0;
      LODWORD(v77) = 0;
      HIDWORD(v77) = [v39 length];
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v81, &v73);
      v83 = v77;
      if (v76 != -1)
      {
        (off_1F5D0A000[v76])(v72, &v73);
      }

      v76 = -1;
      if (v39)
      {
      }
    }

LABEL_65:
    if (!v17)
    {
      v50 = v69;
      if (a2)
      {
        v51 = [*a3 newBufferWithBytes:*(v7 + 24) length:4 * *(v7 + 32) options:0];
        v73 = v51;
        v76 = 0;
        LODWORD(v77) = 0;
        HIDWORD(v77) = [v51 length];
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v78, &v73);
        v80 = v77;
        if (v76 != -1)
        {
          (off_1F5D0A000[v76])(v72, &v73);
        }

        v76 = -1;
        if (v51)
        {
        }

        v48 = 0;
        v49 = 0;
      }

      else
      {
        v49 = *(v7 + 24);
        v48 = 4 * *(v7 + 32);
      }

      goto LABEL_67;
    }

LABEL_66:
    v48 = 0;
    v49 = 0;
    v50 = v69;
LABEL_67:
    *(v8 + 4) = v22;
    *(v8 + 5) = v17;
    re::FixedArray<float>::operator=((v8 + 8), &v84);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v8 + 32, v81);
    *(v8 + 64) = v83;
    *(v8 + 72) = v49;
    *(v8 + 80) = v48;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v8 + 88, v78);
    *(v8 + 120) = v80;
    if (v79 != -1)
    {
      (off_1F5D0A000[v79])(&v73, v78);
    }

    if (v82 != -1)
    {
      (off_1F5D0A000[v82])(v78, v81);
    }

    if (v84)
    {
      if (v85)
      {
        (*(*v84 + 40))(v84, v86);
      }
    }

    if (++v6 == v50)
    {
      return;
    }
  }

  if (a2)
  {
    v28 = [*a3 newBufferWithLength:8 * v18 options:0];
    v73 = v28;
    v76 = 0;
    LODWORD(v77) = 0;
    HIDWORD(v77) = [v28 length];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v81, &v73);
    v83 = v77;
    if (v76 != -1)
    {
      (off_1F5D0A000[v76])(v72, &v73);
    }

    v76 = -1;
    if (v28)
    {
    }

    v29 = re::BufferSlice::contents(v81);
  }

  else
  {
    re::FixedArray<BOOL>::init<>(&v84, *this, 8 * v18);
    v29 = v86;
  }

  v40 = *(v7 + 16);
  v42 = *(v7 + 40);
  v41 = *(v7 + 48);
  v43 = (v29 + 4);
  v44 = (*(v7 + 8) + 4);
  v45 = v40;
  while (v45)
  {
    v46 = *(v44 - 1);
    if (v41 <= v46)
    {
      goto LABEL_112;
    }

    v47 = *v44;
    v44 += 2;
    *(v43 - 1) = *(v42 + 4 * v46);
    *v43 = v47;
    v43 += 2;
    --v45;
    if (!--v18)
    {
LABEL_63:
      if (a2)
      {
        re::BufferSlice::buffer(v81, v26);
      }

      goto LABEL_65;
    }
  }

LABEL_111:
  re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v40, v40);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v63, v67);
  __break(1u);
LABEL_112:
  re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v46, v41);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v64, v68);
  __break(1u);
}

_anonymous_namespace_ *re::FixedArray<re::BufferSlice>::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  if (!*a1)
  {
    v4 = a2[1];
    if (!v4)
    {
      return a1;
    }
  }

  v5 = a2[1];
  if (*(a1 + 1) == v5)
  {
    if (v5)
    {
      v6 = *a2;
      v7 = v6 + 40 * v5;
      v8 = *(a1 + 2);
      do
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v8, v6);
        *(v8 + 32) = *(v6 + 32);
        v6 += 40;
        v8 += 40;
      }

      while (v6 != v7);
    }

    return a1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
  result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
  __break(1u);
  return result;
}

uint64_t re::SkinningModelBuilder::buildAttributeDescriptor(uint64_t *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  re::SkinningModelBuilder::generatePreparedSkinnedMeshPartData(a1, 0, 0);
  *a2 = *(a1 + 1);
  v5 = a1[15];
  v6 = *a1;
  *(a2 + 16) = *a1;
  *(a2 + 24) = v5;
  if (v5)
  {
    if (v5 < 0x492492492492493)
    {
      v7 = (*(*v6 + 32))(v6, 56 * v5, 8);
      *(a2 + 32) = v7;
      if (!v7)
      {
        goto LABEL_27;
      }

      v9 = v5 - 1;
      if (v5 == 1)
      {
        *v7 = -1;
        *(v7 + 4) = 0;
        v11 = (v7 + 8);
        v10 = (v7 + 44);
      }

      else
      {
        v10 = (v7 + 44);
        do
        {
          *(v10 - 11) = -1;
          *(v10 - 20) = 0;
          *(v10 - 1) = 0uLL;
          *(v10 - 9) = 0uLL;
          *(v10 - 5) = 0uLL;
          *v10 = 0x7FFFFFFF;
          v10 += 14;
          --v9;
        }

        while (v9);
        *(v10 - 11) = -1;
        *(v10 - 20) = 0;
        v11 = v10 - 9;
      }

      v12 = 0;
      v13 = 0;
      v11[1] = 0u;
      v11[2] = 0u;
      *v11 = 0u;
      *v10 = 0x7FFFFFFF;
      while (1)
      {
        v14 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[]((a1 + 10), v13);
        v15 = *(a2 + 24);
        if (v15 <= v13)
        {
          break;
        }

        v16 = v14;
        v17 = *(a2 + 32) + v12;
        *v17 = *v14;
        *(v17 + 4) = *(v14 + 4);
        re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v17 + 8, *a1, 3);
        v18 = 8;
        if (*(v17 + 4))
        {
          v18 = 4;
        }

        *v32 = 0xA7268F0C3B45D55ELL;
        *&v32[8] = "skinningInfluences";
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        v37[0].n128_u64[0] = v18;
        v37[0].n128_u64[1] = v19;
        v37[1].n128_u64[0] = v20;
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(v17 + 8, v32, v37);
        if (v32[0])
        {
          if (v32[0])
          {
          }
        }

        if (*(v16 + 80))
        {
          *v32 = 0xF98D22D8F2059642;
          *&v32[8] = "influenceEndIndices";
          v37[0].n128_u64[0] = 4;
          *(v37 + 8) = *(v16 + 72);
          re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(v17 + 8, v32, v37);
          if (v32[0])
          {
            if (v32[0])
            {
            }
          }
        }

        ++v13;
        v12 += 56;
        if (v5 == v13)
        {
          return 1;
        }
      }

      v31 = 0;
      memset(v37, 0, sizeof(v37));
      v24 = MEMORY[0x1E69E9C10];
      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v32 = 136315906;
      *&v32[4] = "operator[]";
      *&v32[12] = 1024;
      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      *&v32[14] = 468;
      v33 = 2048;
      v34 = v13;
      v35 = 2048;
      v36 = v15;
      _os_log_send_and_compose_impl(v26, &v31, v37, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v32, 38, v29, v30);
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v5);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v27, v28);
    __break(1u);
LABEL_27:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  return 1;
}

__n128 re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v12, v11);
    v9 = *a2;
    *(v8 + 8) = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
    *(v8 + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
    *(v8 + 16) = a2[1];
    *a2 = 0;
    a2[1] = &str_67;
    v10 = a3[1].n128_u64[0];
    result = *a3;
    *(v8 + 24) = *a3;
    *(v8 + 40) = v10;
    ++*(a1 + 40);
  }

  return result;
}

double re::SkinningModelUtil::inverseBindPoseBufferForPart@<D0>(uint64_t *__return_ptr a1@<X8>, re::SkinningModelUtil *this@<X0>, unint64_t a3@<X1>)
{
  v4 = *(this + 10);
  if (!v4 || v4[1] <= a3 || (v5 = *(v4[2] + 88 * a3 + 4), v5 == -1) || v4[4] <= v5)
  {
    a1[4] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  else
  {
    v6 = v4[5] + 40 * v5;
    *a1 = 0;
    *(a1 + 6) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a1, v6);
    a1[4] = *(v6 + 32);
  }

  return result;
}

double re::SkinningModelUtil::skinnedEndIndicesBuffer@<D0>(uint64_t *__return_ptr a1@<X8>, re::SkinningModelUtil *this@<X0>, unint64_t a3@<X1>)
{
  v4 = *(this + 10);
  if (v4 && *(v4 + 8) > a3)
  {
    v5 = *(v4 + 16) + 88 * a3;
    *a1 = 0;
    *(a1 + 6) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a1, v5 + 8);
    a1[4] = *(v5 + 40);
  }

  else
  {
    a1[4] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

re **re::SkinningDeformer::init(re **result, uint64_t a2)
{
  if ((result[2] & 1) == 0)
  {
    v2 = result;
    *(result + 16) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      if (*(v3 + 208))
      {
        v4 = 0;
        v5 = 1;
        do
        {
          v6 = 0;
          v7 = v5;
          v8 = 1;
          do
          {
            v9 = v8;
            if (re::DeformerFeatureFlags::enableStitchableDeformation(result))
            {
              re::SkinningDeformer::getPerformSkinningFunction(v2, 0, v4 & 1, v6 & 1, 0);
              re::SkinningDeformer::getPerformSkinningFunction(v2, 1, v4 & 1, v6 & 1, 0);
              re::SkinningDeformer::getPerformSkinningFunction(v2, 2, v4 & 1, v6 & 1, 0);
              result = re::SkinningDeformer::getPerformSkinningFunction(v2, 3, v4 & 1, v6 & 1, 0);
            }

            else
            {
              LODWORD(v17) = 0;
              re::VertexFormatInfo::setVertexFormat(v16, 0xC, 0x1Eu);
              re::SkinningDeformer::getPerformSkinningPipeline(v2, 0, v17, 0, 0, 0, v4 & 1, v6 & 1, 0);
              LODWORD(v17) = 0;
              re::VertexFormatInfo::setVertexFormat(v16, 0xC, 0x1Eu);
              v15 = 0;
              re::VertexFormatInfo::setVertexFormat(v14, 0xC, 0x1Eu);
              re::SkinningDeformer::getPerformSkinningPipeline(v2, 1u, v17, v15, 0, 0, v4 & 1, v6 & 1, 0);
              LODWORD(v17) = 0;
              re::VertexFormatInfo::setVertexFormat(v16, 0xC, 0x1Eu);
              v15 = 0;
              re::VertexFormatInfo::setVertexFormat(v14, 0xC, 0x1Eu);
              v13 = 0;
              re::VertexFormatInfo::setVertexFormat(v12, 0xC, 0x1Eu);
              re::SkinningDeformer::getPerformSkinningPipeline(v2, 2u, v17, v15, v13, 0, v4 & 1, v6 & 1, 0);
              LODWORD(v17) = 0;
              re::VertexFormatInfo::setVertexFormat(v16, 0xC, 0x1Eu);
              v15 = 0;
              re::VertexFormatInfo::setVertexFormat(v14, 0xC, 0x1Eu);
              v13 = 0;
              re::VertexFormatInfo::setVertexFormat(v12, 0xC, 0x1Eu);
              v11 = 0;
              re::VertexFormatInfo::setVertexFormat(v10, 0xC, 0x1Eu);
              result = re::SkinningDeformer::getPerformSkinningPipeline(v2, 3u, v17, v15, v13, v11, v4 & 1, v6 & 1, 0);
            }

            v8 = 0;
            v6 = 1;
          }

          while ((v9 & 1) != 0);
          v5 = 0;
          v4 = 1;
        }

        while ((v7 & 1) != 0);
      }
    }
  }

  return result;
}

re **re::SkinningDeformer::getPerformSkinningFunction(re **this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = &this[4 * a2] + 2 * a3 + a4;
  if (!v5[4099])
  {
    v21[0] = 0;
    v24 = 0;
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    re::DynamicString::setCapacity(&v55, 0);
    memset(v63, 0, sizeof(v63));
    v62 = 0u;
    v61 = 0u;
    v59 = 33;
    v60 = a2;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v27, &v55);
    memset(v49, 0, sizeof(v49));
    re::DynamicString::setCapacity(v49, 0);
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 65569;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v27, v49);
    memset(v43, 0, sizeof(v43));
    re::DynamicString::setCapacity(v43, 0);
    v45 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    LOBYTE(v45) = a3;
    v44 = 131125;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v27, v43);
    memset(v37, 0, sizeof(v37));
    re::DynamicString::setCapacity(v37, 0);
    v39 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    LOBYTE(v39) = a4;
    v38 = 196661;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v27, v37);
    if (a5)
    {
      isPhysicalHardware = re::mtl::Device::isPhysicalHardware((this[1] + 208));
      if (isPhysicalHardware)
      {
        v15 = *re::graphicsLogObjects(isPhysicalHardware);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = a2;
          v33 = 1024;
          v34 = a3;
          v35 = 1024;
          LODWORD(v36) = a4;
          _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Compiling performSkinningStitchable vfbc=%d di=%d pi=%d", buf, 0x14u);
        }

        re::DynamicString::format(buf, "vfbc=%d di=%d pi=%d", v16, a2, a3, a4);
        isPhysicalHardware = *buf;
        if (*buf && (v33 & 1) != 0)
        {
          isPhysicalHardware = (*(**buf + 40))();
        }
      }
    }

    MetalFunction = re::getOrCreateMetalFunction(this[1], buf, v21, v17);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 4099, MetalFunction);
    if (!v5[4099])
    {
      re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "function->isValid()", "getPerformSkinningFunction", 1330);
      _os_crash("assertion failure: (function->isValid()) ");
      __break(1u);
    }

    if (*buf && (v33 & 1) != 0)
    {
      (*(**buf + 40))();
    }

    if (v37[0] && (v37[1] & 1) != 0)
    {
      (*(*v37[0] + 40))();
    }

    if (v43[0] && (v43[1] & 1) != 0)
    {
      (*(*v43[0] + 40))();
    }

    if (v49[0] && (v49[1] & 1) != 0)
    {
      (*(*v49[0] + 40))();
    }

    if (v55 && (v56 & 1) != 0)
    {
      (*(*v55 + 40))(v55, v57);
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v27);
    if (v24 == 1 && v25)
    {
      if (BYTE8(v25))
      {
        (*(*v25 + 40))();
      }

      v25 = 0u;
      v26 = 0u;
    }

    if (v21[0] == 1 && v22 && (v23 & 1) != 0)
    {
      (*(*v22 + 40))();
    }
  }

  return v5 + 4099;
}

void **re::SkinningDeformer::getPerformSkinningPipeline(re::SkinningDeformer *this, unsigned int a2, const re::VertexFormatInfo *a3, const re::VertexFormatInfo *a4, const re::VertexFormatInfo *a5, const re::VertexFormatInfo *a6, unsigned int a7, unsigned int a8, BOOL a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = a3 | (4 * a4) | (16 * a5) | (a6 << 6);
  v10 = this + 0x2000 * a2 + 4096 * a7 + 2048 * a8 + 8 * v9;
  v12 = *(v10 + 3);
  v11 = (v10 + 24);
  if (!v12)
  {
    v27 = 0;
    v30 = 0;
    memset(v33, 0, sizeof(v33));
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 1;
    v38 = 0;
    v39 = 0;
    v66 = 0u;
    v67 = 0u;
    re::DynamicString::setCapacity(&v66, 0);
    memset(v72, 0, sizeof(v72));
    v71 = 0u;
    v70 = 0u;
    v68 = 33;
    v69 = a2;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v33, &v66);
    memset(v60, 0, sizeof(v60));
    re::DynamicString::setCapacity(v60, 0);
    memset(v65, 0, sizeof(v65));
    v64 = 0u;
    v63 = 0u;
    v62 = v9;
    v61 = 65569;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v33, v60);
    memset(v54, 0, sizeof(v54));
    re::DynamicString::setCapacity(v54, 0);
    v56 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    LOBYTE(v56) = a7;
    v55 = 131125;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v33, v54);
    memset(v48, 0, sizeof(v48));
    re::DynamicString::setCapacity(v48, 0);
    v50 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    LOBYTE(v50) = a8;
    v49 = 196661;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v33, v48);
    if (a9)
    {
      isPhysicalHardware = re::mtl::Device::isPhysicalHardware((*(this + 1) + 208));
      if (isPhysicalHardware)
      {
        v23 = *re::graphicsLogObjects(isPhysicalHardware);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v41 = a2;
          v42 = 1024;
          v43 = v9;
          v44 = 1024;
          v45 = a7;
          v46 = 1024;
          v47 = a8;
          _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Compiling performSkinning vfbc=%d ci=%d di=%d pi=%d", buf, 0x1Au);
        }
      }
    }

    ComputePipelineState = re::getOrCreateComputePipelineState(*(this + 1), &v25);
    NS::SharedPtr<MTL::Buffer>::operator=(v11, ComputePipelineState);
    if (v48[0] && (v48[1] & 1) != 0)
    {
      (*(*v48[0] + 40))();
    }

    if (v54[0] && (v54[1] & 1) != 0)
    {
      (*(*v54[0] + 40))();
    }

    if (v60[0] && (v60[1] & 1) != 0)
    {
      (*(*v60[0] + 40))();
    }

    if (v66 && (BYTE8(v66) & 1) != 0)
    {
      (*(*v66 + 40))(v66, v67);
    }

    if (v38)
    {

      v38 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v33);
    if (v30 == 1 && v31)
    {
      if (BYTE8(v31))
      {
        (*(*v31 + 40))();
      }

      v31 = 0u;
      v32 = 0u;
    }

    if (v27 == 1 && v28)
    {
      if (BYTE8(v28))
      {
        (*(*v28 + 40))();
      }

      v29 = 0u;
      v28 = 0u;
    }

    if (v25 && (v26 & 1) != 0)
    {
      (*(*v25 + 40))();
    }
  }

  return v11;
}

re::DeformerFeatureFlags *re::SkinningDeformer::addDeformationInstance@<X0>(re::DeformerFeatureFlags *result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v5 = 0;
  }

  else if (*(*(result + 1) + 304))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = 2;
  if (a2[1])
  {
    v6 = 30;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = v6;
  *(a4 + 16) = v6;
  LODWORD(v6) = *a3;
  if (v6 == 255)
  {
    v6 = *(a3 + 2);
    if (v6)
    {
      v6 = *(v6 + 208);
      if (v6)
      {
        if (v5 && (result = re::DeformerFeatureFlags::enableStitchableDeformation(result), !result))
        {
          LOBYTE(v6) = 1;
        }

        else
        {
          LOBYTE(v6) = v5;
        }
      }
    }
  }

  *(a4 + 24) = v6;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

_anonymous_namespace_ *re::SkinningDeformer::allocateBuffers(re::SkinningDeformer *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a5;
  v186 = *MEMORY[0x1E69E9840];
  v130 = *a5;
  v131 = *(*a5 + 48);
  if (a4 == 1)
  {
    v9 = (*(*a2 + 32))(a2, 56, 8);
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 1;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 24) = 0;
    *(v9 + 48) = 0;
    v113 = v9;
  }

  else
  {
    v113 = 0;
  }

  if (v131)
  {
    v10 = 0;
    v134 = v6;
    v124 = a3;
    do
    {
      v11 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v130 + 8, v10);
      v12 = *(v11 + 8);
      v13 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v6[1], v12);
      v15 = *(v11 + 16);
      v16 = v13[42];
      if (v16 <= v15)
      {
        goto LABEL_60;
      }

      v17 = v13;
      v18 = *(v13[44] + 40);
      if (v18)
      {
        v19 = v6[6];
        if (v19 <= v12)
        {
          goto LABEL_61;
        }

        v132 = v10;
        a3 = v13[41];
        v20 = v6[5];
        v122 = v13[46];
        v21 = re::DataArray<re::MeshModel>::get(*(*(a1 + 1) + 32) + 8, *(v122 + 16));
        v5 = *(v17 + 196);
        v10 = *(v21 + 56);
        if (v10 <= v5)
        {
LABEL_62:
          *v173 = 0;
          v184 = 0u;
          v185 = 0u;
          v183 = 0u;
          memset(buf, 0, sizeof(buf));
          v92 = MEMORY[0x1E69E9C10];
          v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v168 = 136315906;
          *&v168[4] = "operator[]";
          *&v168[12] = 1024;
          if (v93)
          {
            v94 = 3;
          }

          else
          {
            v94 = 2;
          }

          *&v168[14] = 476;
          *&v168[18] = 2048;
          *&v168[20] = v5;
          *&v168[28] = 2048;
          *&v168[30] = v10;
          _os_log_send_and_compose_impl(v94, v173, buf, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v168, 38, v110, v111);
          _os_crash_msg();
          __break(1u);
LABEL_66:
          *v173 = 0;
          v184 = 0u;
          v185 = 0u;
          v183 = 0u;
          memset(buf, 0, sizeof(buf));
          v95 = MEMORY[0x1E69E9C10];
          v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v168 = 136315906;
          *&v168[4] = "operator[]";
          *&v168[12] = 1024;
          if (v96)
          {
            v97 = 3;
          }

          else
          {
            v97 = 2;
          }

          *&v168[14] = 476;
          *&v168[18] = 2048;
          *&v168[20] = v15;
          *&v168[28] = 2048;
          *&v168[30] = a3;
          _os_log_send_and_compose_impl(v97, v173, buf, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v168, 38, v110, v111);
          _os_crash_msg();
          __break(1u);
LABEL_70:
          *v173 = 0;
          v184 = 0u;
          v185 = 0u;
          v183 = 0u;
          memset(buf, 0, sizeof(buf));
          v98 = MEMORY[0x1E69E9C10];
          v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v168 = 136315906;
          *&v168[4] = "operator[]";
          *&v168[12] = 1024;
          if (v99)
          {
            v100 = 3;
          }

          else
          {
            v100 = 2;
          }

          *&v168[14] = 476;
          *&v168[18] = 2048;
          *&v168[20] = v15;
          *&v168[28] = 2048;
          *&v168[30] = a3;
          _os_log_send_and_compose_impl(v100, v173, buf, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v168, 38, v110, v111);
          _os_crash_msg();
          __break(1u);
LABEL_74:
          *&v167[1] = 0;
          v184 = 0u;
          v185 = 0u;
          v183 = 0u;
          memset(buf, 0, sizeof(buf));
          v101 = MEMORY[0x1E69E9C10];
          v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v174 = 136315906;
          v175 = "operator[]";
          v176 = 1024;
          if (v102)
          {
            v103 = 3;
          }

          else
          {
            v103 = 2;
          }

          v177 = 858;
          v178 = 2048;
          v179 = v5;
          v180 = 2048;
          v181 = a3;
          _os_log_send_and_compose_impl(v103, &v167[1], buf, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v174, 38, v110, v111);
          _os_crash_msg();
          __break(1u);
LABEL_78:
          re::internal::assertLog(5, v48, "assertion failure: '%s' (%s:line %i) Unexpected vertex buffer index: %zu", "!Unreachable code", "allocateBuffers", 833, a3);
          _os_crash("assertion failure: (!Unreachable code) Unexpected vertex buffer index: %zu", v106);
          __break(1u);
LABEL_79:
          std::__throw_bad_variant_access[abi:nn200100]();
LABEL_80:
          re::internal::assertLog(5, v26, "assertion failure: '%s' (%s:line %i) Unsupported execution mode: %u.", "!Unreachable code", "allocateBuffers", 887, v28);
          _os_crash("assertion failure: (!Unreachable code) Unsupported execution mode: %u.", v107);
          __break(1u);
        }

        v22 = v21;
        v23 = (v20 + 312 * v12);
        v24 = *(v21 + 64);
        v12 = *(a3 + (v15 << 6) + 16) & *v23;
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
        v25 = *(v23[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 7, buf) + 20);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
        v27 = *(v23[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 15, buf) + 4);
        v129 = v25;
        v133 = v25 / v27;
        v28 = a4;
        if (a4)
        {
          if (a4 != 1)
          {
            goto LABEL_80;
          }

          v29 = *(v17[43] + 80);
          v15 = *(v17 + 196);
          a3 = v29[1];
          if (a3 <= v15)
          {
            goto LABEL_66;
          }

          v30 = v29[2] + 88 * *(v17 + 196);
          v15 = *(v30 + 4);
          a3 = v29[4];
          if (a3 <= v15)
          {
            goto LABEL_70;
          }

          v126 = v27;
          v31 = (v24 + 544 * v5);
          v5 = v29[5] + 40 * v15;
          v127 = (v29[2] + 88 * *(v17 + 196));
          a3 = *(v30 + 1);
          v32 = *(v5 + 36) >> 6;
          *&v173[4] = v31[22];
          *&v173[20] = v31[23];
          *&v173[36] = v31[24];
          v115 = v31;
          *&v173[52] = v31[25];
          v15 = v124;
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, v124, 0x50uLL, 0x10uLL);
          v119 = *&buf[16];
          v120 = *&buf[8];
          v33 = *buf + *&buf[8];
          *v33 = a3;
          *(v33 + 4) = v32;
          *(v33 + 8) = v133;
          *(v33 + 12) = *v173;
          *(v33 + 76) = *&v173[64];
          *(v33 + 60) = *&v173[48];
          *(v33 + 44) = *&v173[32];
          *(v33 + 28) = *&v173[16];
          v121 = v5;
          v34 = *(v5 + 36);
          if (v18[9] == v34)
          {
            v35 = v18[6];
            if (v35 == -1)
            {
              goto LABEL_79;
            }

            v118 = v18[8];
            *buf = v168;
            v36 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v35])(buf, v18);
            v116 = v37;
            v117 = v36;
            v114 = HIDWORD(v37);
          }

          else
          {
            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v168, v124, *(v5 + 36), 0x10uLL);
            v40 = *&v168[8];
            v34 = *&v168[12];
            if (*&v168[12] >= 0x40u)
            {
              v41 = (*v168 + *&v168[8]);
              v42 = (*&v168[12] >> 6) + 1;
              do
              {
                *v41 = xmmword_1E3047670;
                v41[1] = xmmword_1E3047680;
                v41[2] = xmmword_1E30476A0;
                v41[3] = xmmword_1E30474D0;
                v41 += 4;
                --v42;
              }

              while (v42 > 1);
            }

            v117 = *&v168[16];
            v118 = v40;
            isSkinningAssignLoggingEnabled = re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(v39);
            if (isSkinningAssignLoggingEnabled)
            {
              v45 = *re::graphicsLogObjects(isSkinningAssignLoggingEnabled);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v84 = a2[3] & 0xFFFFFFFFFFFFFFFLL;
                v85 = *(v122 + 8);
                v86 = *(v22 + 8);
                v87 = *(v115 + 62);
                *buf = 134218754;
                *&buf[4] = v84;
                *&buf[12] = 2080;
                *&buf[14] = v85;
                *&buf[22] = 2080;
                *&buf[24] = v86;
                LOWORD(v183) = 2080;
                *(&v183 + 2) = v87;
                _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "[DeformerLogging] Frame[%llu]: Mesh Instance[%s] Model[%s] Part[%s] missing pose data.", buf, 0x2Au);
              }
            }

            LODWORD(v114) = v44;
            v116 = 0;
          }

          v123 = v34;
          v166 = 0;
          v167[0] = 0;
          v164 = 0;
          memset(v165, 0, sizeof(v165));
          v162 = 0;
          memset(v163, 0, sizeof(v163));
          v159 = 0;
          v160 = 0;
          memset(v161, 0, sizeof(v161));
          *&v157 = 0;
          DWORD2(v157) = 0;
          v158 = 0;
          *&v155 = 0;
          DWORD2(v155) = 0;
          v156 = 0;
          *&v153 = 0;
          DWORD2(v153) = 0;
          v154 = 0;
          *&v151 = 0;
          DWORD2(v151) = 0;
          v152 = 0;
          *&v149 = 0;
          DWORD2(v149) = 0;
          v150 = 0;
          *&v147 = 0;
          DWORD2(v147) = 0;
          v148 = 0;
          *&v145 = 0;
          DWORD2(v145) = 0;
          v146 = 0;
          *v168 = &v163[1];
          *&v168[8] = &v153;
          *&v168[16] = &v151;
          *&v168[24] = &v161[1];
          *&v168[32] = &v149;
          v169 = &v147;
          v170 = &v159;
          v171 = 0;
          v172 = &v145;
          v46 = 0;
          if (v12)
          {
            a3 = __clz(__rbit64(v12));
            while (1)
            {
              buf[0] = a3;
              re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, a3);
              v47 = v23[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 7, buf);
              buf[0] = a3;
              re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, a3);
              *v143 = *(v23[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 15, buf) + 4);
              if (a3 - 2 >= 3)
              {
                break;
              }

              v15 = v46 + 1;
              v49 = &v168[24 * v46];
              v50 = v49[1];
              v5 = v49[2];
              re::VertexFormatInfo::setVertexFormat(*v49, LOWORD(v143[0]), BYTE4(v143[1]));
              ++v46;
              if (v50)
              {
                goto LABEL_37;
              }

LABEL_38:
              v52 = re::DeformationBufferAllocator::alloc(v17[45], v134[2], a3, v143[0], v143[1], *(v11 + 16), *(v47 + 20));
              v53 = v17[45];
              v54 = *(v11 + 16);
              v10 = *(v53 + 8);
              if (v10 <= v54)
              {
                *&v141 = 0;
                v184 = 0u;
                v185 = 0u;
                v183 = 0u;
                memset(buf, 0, sizeof(buf));
                v89 = MEMORY[0x1E69E9C10];
                v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v174 = 136315906;
                v175 = "operator[]";
                v176 = 1024;
                if (v90)
                {
                  v91 = 3;
                }

                else
                {
                  v91 = 2;
                }

                v177 = 476;
                v178 = 2048;
                v179 = v54;
                v180 = 2048;
                v181 = v10;
                _os_log_send_and_compose_impl(v91, &v141, buf, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v174, 38, v110, v111);
                _os_crash_msg();
                __break(1u);
LABEL_60:
                re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
                _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v104, v108);
                __break(1u);
LABEL_61:
                re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v19);
                _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v105, v109);
                __break(1u);
                goto LABEL_62;
              }

              v55 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v53 + 16) + 72 * *(v11 + 16) + 16, v52);
              re::DeformationVertexBufferState::setOutputBuffer(v23, a3, 1, (v55 + 24), v143);
              re::BufferSlice::buffer(v55 + 24, v56);
              v57 = *(v55 + 56);
              *v5 = *(v55 + 24);
              *(v5 + 8) = 0;
              *(v5 + 16) = v57;
              if (a3 != 63)
              {
                v38 = ((-2 << a3) & v12) == 0;
                a3 = __clz(__rbit64((-2 << a3) & v12));
                if (!v38)
                {
                  continue;
                }
              }

              goto LABEL_42;
            }

            if (a3 != 1)
            {
              goto LABEL_78;
            }

            re::VertexFormatInfo::setVertexFormat(&v165[1], LOWORD(v143[0]), BYTE4(v143[1]));
            v5 = &v155;
            v50 = &v157;
LABEL_37:
            v51 = *(v47 + 16);
            *v50 = *(v47 + 24);
            *(v50 + 2) = 0;
            *(v50 + 2) = v51;
            goto LABEL_38;
          }

LABEL_42:
          if (v129 >= v126)
          {
            PerformSkinningPipeline = re::SkinningDeformer::getPerformSkinningPipeline(a1, v46, v167[0], v165[0], v163[0], v161[0], v127[1] == 0, *v127, 1);
            if (*PerformSkinningPipeline)
            {
              v59 = *(v127 + 18);
              if (v59 == -1)
              {
                goto LABEL_79;
              }

              v60 = PerformSkinningPipeline;
              v61 = *(v127 + 10);
              *buf = &v174;
              v62 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v59])(buf, v127 + 48);
              v64 = *(v127 + 8);
              if (v64 == -1)
              {
                goto LABEL_79;
              }

              v65 = v62;
              v66 = v63;
              v67 = *(v127 + 5);
              *buf = &v174;
              v68 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v64])(buf, v127 + 8);
              v70 = *(v121 + 24);
              if (v70 == -1)
              {
                goto LABEL_79;
              }

              v71 = v68;
              v72 = v69;
              v73 = *(v121 + 32);
              *buf = &v174;
              v74 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v70])(buf, v121);
              v76 = v75;
              *v143 = v153;
              v144 = v154;
              v141 = v151;
              v142 = v152;
              v139 = v149;
              v140 = v150;
              v138 = v148;
              v137 = v147;
              v136 = v146;
              v77 = v113;
              v78 = *(v113 + 5);
              a3 = *(v113 + 1);
              v135 = v145;
              if (v78 + 1 > 8 * a3)
              {
                v77 = v113;
                a3 = *(v113 + 1);
              }

              v5 = v78 >> 3;
              if (a3 <= v78 >> 3)
              {
                goto LABEL_74;
              }

              v79 = (v113 + 24);
              if ((*(v77 + 16) & 1) == 0)
              {
                v79 = *(v77 + 4);
              }

              v80 = v79[v5];
              ++*(v77 + 5);
              ++*(v77 + 12);
              v81 = v80 + 304 * (v78 & 7);
              *v81 = v60;
              *(v81 + 8) = v133;
              *(v81 + 16) = v65;
              *(v81 + 24) = v66;
              *(v81 + 32) = v61;
              *(v81 + 40) = v71;
              *(v81 + 48) = v72;
              *(v81 + 56) = v67;
              *(v81 + 64) = v157;
              *(v81 + 80) = v158;
              *(v81 + 88) = v155;
              *(v81 + 104) = v156;
              *(v81 + 112) = v74;
              *(v81 + 120) = v76;
              *(v81 + 128) = v73;
              *(v81 + 136) = v117;
              *(v81 + 144) = v116;
              *(v81 + 148) = v114;
              *(v81 + 152) = v118;
              *(v81 + 156) = v123;
              *(v81 + 160) = v119;
              *(v81 + 168) = 0;
              *(v81 + 176) = v120;
              v82 = *v143;
              *(v81 + 200) = v144;
              *(v81 + 184) = v82;
              v83 = v141;
              *(v81 + 224) = v142;
              *(v81 + 208) = v83;
              *(v81 + 248) = v140;
              *(v81 + 232) = v139;
              *(v81 + 272) = v138;
              *(v81 + 256) = v137;
              *(v81 + 296) = v136;
              *(v81 + 280) = v135;
            }
          }

          v6 = v134;
          v10 = v132;
        }

        else
        {
          v6 = v134;
          a3 = v124;
          v10 = v132;
          if (v12)
          {
            v5 = __clz(__rbit64(v12));
            do
            {
              re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, v124, 4 * (v133 + 2 * v133), 0x10uLL);
              *&v168[4] = 257;
              *v168 = 65548;
              v168[12] = 30;
              *&v168[8] = 0;
              re::DeformationVertexBufferState::setOutputBuffer(v23, v5, 0, buf, v168);
              if (v5 == 63)
              {
                break;
              }

              v38 = ((-2 << v5) & v12) == 0;
              v5 = __clz(__rbit64((-2 << v5) & v12));
            }

            while (!v38);
          }
        }
      }

      ++v10;
    }

    while (v10 != v131);
  }

  return v113;
}

uint64_t re::VertexFormatInfo::setVertexFormat(uint64_t this, const VertexBufferFormat *a2, unsigned __int8 a3)
{
  *(this + 8) = a2;
  v5 = re::unpackHalf3Data;
  if (a3 > 0x19u)
  {
    if (a3 == 26)
    {
      v6 = 1;
      goto LABEL_10;
    }

    if (a3 == 30)
    {
      v6 = 0;
      v5 = re::unpackFloat3Data;
      goto LABEL_10;
    }
  }

  else
  {
    if (a3 == 8)
    {
      v6 = 2;
      v5 = re::unpackUChar3NormalizedData;
      goto LABEL_10;
    }

    if (a3 == 11)
    {
      v6 = 3;
      v5 = re::unpackChar3NormalizedData;
LABEL_10:
      *this = v5;
      *(this + 12) = v6;
      return this;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported format", "!Unreachable code", "setVertexFormat", 142, v3, v4);
  this = _os_crash("assertion failure: (!Unreachable code) Unsupported format");
  __break(1u);
  return this;
}

void re::SkinningDeformer::stitchedFunctionParameters(uint64_t a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, unint64_t *a4, void *a5)
{
  v98 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  v90 = *(*a4 + 48);
  if (v90)
  {
    v7 = a4;
    v8 = 0;
    v78 = *a4;
    while (1)
    {
      v9 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v6 + 8, v8);
      v10 = *(v9 + 8);
      v11 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v7[1], v10);
      v13 = *(v9 + 16);
      v14 = v11[42];
      if (v14 <= v13)
      {
        break;
      }

      v5 = v11;
      v15 = *(v11[44] + 40);
      if (v15)
      {
        v16 = v7[6];
        if (v16 <= v10)
        {
          goto LABEL_42;
        }

        v17 = (v7[5] + 312 * v10);
        if ((*v17 & 2) != 0)
        {
          v18 = v11[41];
          v81 = v11[46];
          v19 = re::DataArray<re::MeshModel>::get(*(*(a1 + 8) + 32) + 8, *(v81 + 16));
          v9 = *(v5 + 392);
          v6 = *(v19 + 56);
          if (v6 <= v9)
          {
            goto LABEL_43;
          }

          v20 = *(*(v5 + 344) + 80);
          v6 = v20[1];
          if (v6 <= v9)
          {
            goto LABEL_47;
          }

          v21 = (v20[2] + 88 * *(v5 + 392));
          v5 = *(v21 + 1);
          v22 = v20[4];
          if (v22 <= v5)
          {
            goto LABEL_51;
          }

          v23 = v19;
          v86 = v18;
          v87 = v17;
          v24 = *(v19 + 64) + 544 * v9;
          v25 = v20[5] + 40 * v5;
          v26 = v21[1];
          v27 = *(v25 + 36) >> 6;
          *(v97 + 4) = *(v24 + 352);
          *(&v97[1] + 4) = *(v24 + 368);
          *(&v97[2] + 4) = *(v24 + 384);
          *(&v97[3] + 4) = *(v24 + 400);
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, a3, 0x50uLL, 0x10uLL);
          v84 = *&buf[16];
          v85 = *&buf[8];
          v28 = *buf + *&buf[8];
          *v28 = v26;
          *(v28 + 4) = v27;
          *(v28 + 8) = 0;
          *(v28 + 12) = v97[0];
          *(v28 + 76) = v97[4];
          *(v28 + 60) = v97[3];
          *(v28 + 44) = v97[2];
          *(v28 + 28) = v97[1];
          v29 = *(v25 + 36);
          if (v15[9] == v29)
          {
            v30 = v15[6];
            if (v30 == -1)
            {
              goto LABEL_56;
            }

            v83 = v15[8];
            *buf = &v91;
            v31 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v30])(buf, v15);
            v33 = v32;
            v82 = HIDWORD(v32);
            v5 = 2;
          }

          else
          {
            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v91, a3, *(v25 + 36), 0x10uLL);
            v35 = v92;
            v29 = v93;
            if (v93 >= 0x40)
            {
              v36 = &v91[v92];
              v37 = (v93 >> 6) + 1;
              do
              {
                *v36 = xmmword_1E3047670;
                *(v36 + 1) = xmmword_1E3047680;
                *(v36 + 2) = xmmword_1E30476A0;
                *(v36 + 3) = xmmword_1E30474D0;
                v36 += 64;
                --v37;
              }

              while (v37 > 1);
            }

            v83 = v35;
            v31 = v94;
            isSkinningAssignLoggingEnabled = re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(v34);
            v5 = 2;
            if (isSkinningAssignLoggingEnabled)
            {
              v40 = *re::graphicsLogObjects(isSkinningAssignLoggingEnabled);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v57 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFLL;
                v58 = *(v81 + 8);
                v59 = *(v23 + 8);
                v60 = *(v24 + 496);
                *buf = 134218754;
                *&buf[4] = v57;
                *&buf[12] = 2080;
                *&buf[14] = v58;
                *&buf[22] = 2080;
                *&buf[24] = v59;
                *&buf[32] = 2080;
                *&buf[34] = v60;
                _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "[DeformerLogging] Frame[%llu]: Mesh Instance[%s] Model[%s] Part[%s] missing pose data.", buf, 0x2Au);
              }
            }

            v33 = 0;
            LODWORD(v82) = v39;
          }

          v41 = *(v86 + (v13 << 6) + 16) & *v87;
          if ((v41 & 0x10) != 0)
          {
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          if ((v41 & 8) == 0)
          {
            v42 = 1;
          }

          if ((v41 & 4) != 0)
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          PerformSkinningFunction = re::SkinningDeformer::getPerformSkinningFunction(a1, v43, v21[1] == 0, *v21, 1);
          if (!*PerformSkinningFunction)
          {
            goto LABEL_57;
          }

          v46 = a5[1];
          if (v46 <= v8)
          {
            goto LABEL_55;
          }

          v47 = (*a5 + 48 * v8);
          *v47 = PerformSkinningFunction;
          if (v47[2] <= 5)
          {
            re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v47 + 1, 6uLL);
          }

          *buf = 1;
          memset(&buf[8], 0, 32);
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 2;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = *(v25 + 32);
          v48 = *(v25 + 24);
          if (v48 == -1)
          {
            goto LABEL_56;
          }

          v91 = &v95;
          *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v48])(&v91, v25);
          *&buf[16] = v49;
          *&buf[32] = 1;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 2;
          *&buf[8] = v31;
          *&buf[16] = v33;
          *&buf[20] = v82;
          *&buf[24] = v83;
          *&buf[28] = v29;
          *&buf[32] = 1;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 3;
          *&buf[8] = v84;
          *&buf[16] = 0;
          *&buf[24] = v85;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 2;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = *(v21 + 10);
          v50 = *(v21 + 18);
          if (v50 == -1)
          {
            goto LABEL_56;
          }

          v91 = &v95;
          *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v50])(&v91, v21 + 48);
          *&buf[16] = v51;
          *&buf[32] = 1;
          v52 = re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 2;
          v53 = *(v21 + 11);
          if (v53)
          {
            v54 = *(v21 + 10);
            *&buf[8] = 0;
            *&buf[16] = 0;
            *&buf[24] = v54;
            *&buf[28] = v53;
            v55 = *(v21 + 8);
            if (v55 == -1)
            {
              goto LABEL_56;
            }

            v91 = &v95;
            *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v55])(&v91, v21 + 8, v52);
            *&buf[16] = v56;
          }

          else
          {
            memset(&buf[8], 0, 24);
          }

          *&buf[32] = 1;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          v6 = v78;
          v7 = a4;
        }
      }

      if (++v8 == v90)
      {
        return;
      }
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v9 + 16), v14);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v69, v72);
    __break(1u);
LABEL_42:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v73);
    __break(1u);
LABEL_43:
    v91 = 0;
    memset(v97, 0, sizeof(v97));
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    *&buf[14] = 476;
    *&buf[18] = 2048;
    *&buf[20] = v9;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    _os_log_send_and_compose_impl(v63, &v91, v97, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v75, v76);
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v91 = 0;
    memset(v97, 0, sizeof(v97));
    v22 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    *&buf[14] = 476;
    *&buf[18] = 2048;
    *&buf[20] = v9;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    _os_log_send_and_compose_impl(v65, &v91, v97, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v75, v76);
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v91 = 0;
    memset(v97, 0, sizeof(v97));
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    *&buf[14] = 476;
    *&buf[18] = 2048;
    *&buf[20] = v5;
    *&buf[28] = 2048;
    *&buf[30] = v22;
    _os_log_send_and_compose_impl(v68, &v91, v97, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v75, v76);
    _os_crash_msg();
    __break(1u);
LABEL_55:
    re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v46);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v71, v74);
    __break(1u);
LABEL_56:
    std::__throw_bad_variant_access[abi:nn200100]();
LABEL_57:
    re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) no valid function", "false", "stitchedFunctionParameters", 1028);
    _os_crash("assertion failure: (false) no valid function");
    __break(1u);
  }
}

uint64_t re::SkinningDeformer::deformGPU(int a1, uint64_t a2, void **this)
{
  v29 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Linear Blend Skinning");
  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = 0;
    v23 = vdupq_n_s64(1uLL);
    do
    {
      v10 = *(a2 + 40);
      if (v10 <= v9)
      {
        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v9, v10);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v19, v20);
        __break(1u);
LABEL_22:
        v24 = 0;
        memset(v28, 0, sizeof(v28));
        v16 = MEMORY[0x1E69E9C10];
        v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v25 = 136315906;
        *&v25[4] = "operator[]";
        *&v25[12] = 1024;
        if (v17)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        *&v25[14] = 866;
        *&v25[18] = 2048;
        *&v25[20] = v3;
        v26 = 2048;
        v27 = v4;
        _os_log_send_and_compose_impl(v18, &v24, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v21, v22);
        _os_crash_msg();
        __break(1u);
      }

      v3 = v9 >> 3;
      v4 = *(a2 + 8);
      if (v4 <= v9 >> 3)
      {
        goto LABEL_22;
      }

      v11 = a2 + 24;
      if ((*(a2 + 16) & 1) == 0)
      {
        v11 = *(a2 + 32);
      }

      v3 = *(v11 + 8 * v3) + 304 * (v9 & 7);
      [*this setComputePipelineState:**v3];
      if (*(v3 + 108))
      {
        [*this setBuffer:*(v3 + 64) offset:*(v3 + 80) atIndex:0];
        [*this setBuffer:*(v3 + 88) offset:*(v3 + 104) atIndex:1];
      }

      [*this setBuffer:*(v3 + 112) offset:*(v3 + 128) atIndex:2];
      [*this setBuffer:*(v3 + 136) offset:*(v3 + 152) atIndex:3];
      [*this setBuffer:*(v3 + 160) offset:*(v3 + 176) atIndex:4];
      [*this setBuffer:*(v3 + 16) offset:*(v3 + 32) atIndex:5];
      if (*(v3 + 60))
      {
        [*this setBuffer:*(v3 + 40) offset:*(v3 + 56) atIndex:6];
      }

      if (*(v3 + 228))
      {
        [*this setBuffer:*(v3 + 184) offset:*(v3 + 200) atIndex:7];
        [*this setBuffer:*(v3 + 208) offset:*(v3 + 224) atIndex:8];
      }

      if (*(v3 + 276))
      {
        [*this setBuffer:*(v3 + 232) offset:*(v3 + 248) atIndex:9];
        [*this setBuffer:*(v3 + 256) offset:*(v3 + 272) atIndex:10];
      }

      if (*(v3 + 300))
      {
        [*this setBuffer:*(v3 + 280) offset:*(v3 + 296) atIndex:11];
      }

      v4 = *(v3 + 8);
      v12 = [**v3 threadExecutionWidth];
      v13 = *this;
      *&v28[0] = ((v4 + v12 - 1) / v12);
      *(v28 + 8) = v23;
      *v25 = v12;
      *&v25[8] = v23;
      [v13 dispatchThreadgroups:v28 threadsPerThreadgroup:v25];
      ++v9;
    }

    while (v8 != v9);
  }

  v14 = *this;

  return [v14 popDebugGroup];
}

void re::SkinningDeformer::deformCPU(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v119 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v84 = *(*a3 + 48);
  if (v84)
  {
    v6 = a3;
    v7 = a1;
    v8 = 0;
    v82 = *a3;
    while (1)
    {
      v10 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v5 + 8, v8) + 8);
      v11 = v6[6];
      if (v11 <= v10)
      {
        goto LABEL_74;
      }

      v12 = v6[5];
      v13 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v6[1], v10);
      v14 = re::DataArray<re::MeshModel>::get(*(*(v7 + 8) + 32) + 8, *(*(v13 + 368) + 16));
      v3 = *(v13 + 392);
      v4 = *(v14 + 56);
      if (v4 <= v3)
      {
        goto LABEL_75;
      }

      v15 = *(*(v13 + 352) + 40);
      if (v15)
      {
        break;
      }

LABEL_68:
      if (++v8 == v84)
      {
        return;
      }
    }

    v16 = *(*(v13 + 344) + 80);
    v4 = v16[1];
    if (v4 <= v3)
    {
      goto LABEL_79;
    }

    v87 = v8;
    v17 = (v16[2] + 88 * *(v13 + 392));
    v8 = *(v17 + 1);
    v4 = v16[4];
    if (v4 <= v8)
    {
      goto LABEL_83;
    }

    v4 = *(v14 + 64);
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v114, (v16[5] + 40 * v8));
    if ((v114 & 1) == 0)
    {
      v22 = *re::graphicsLogObjects(v18);
      v8 = v87;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", buf, 2u);
      }

      goto LABEL_63;
    }

    v20 = *(&v114 + 1);
    v19 = v115;
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(buf, (v17 + 8));
    if (v17[1])
    {
      v99 = 0;
      v89 = 0;
    }

    else
    {
      if ((buf[0] & 1) == 0)
      {
        v57 = *re::graphicsLogObjects(v21);
        v5 = v82;
        v8 = v87;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *v107 = 0;
          _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", v107, 2u);
        }

LABEL_58:
        if (buf[0] == 1)
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v113[4]);
        }

        else if (*&v113[20] && (v113[28] & 1) != 0)
        {
          (*(**&v113[20] + 40))();
        }

LABEL_63:
        if (v114 == 1)
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v114 + 8));
        }

        else if (*(&v115 + 1))
        {
          if (v116)
          {
            (*(**(&v115 + 1) + 40))(*(&v115 + 1), *(&v116 + 1));
          }
        }

        goto LABEL_68;
      }

      v89 = *&v113[4];
      v99 = *&v113[12] >> 2;
    }

    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v107, (v17 + 48));
    if (v107[0])
    {
      v88 = v108;
      re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v103, v15);
      if (v103)
      {
        v83 = (v12 + 312 * v10);
        v25 = v83[2];
        if (v25)
        {
          v8 = v19 >> 6;
          v26 = v104;
          v27 = v15[9];
          v10 = __clz(__rbit64(v25));
          v86 = (v4 + 544 * v3);
          v81 = v17;
          while (1)
          {
            v100[0] = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v83, v10);
            v4 = 20;
            v28 = v83[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v83 + 15, v100);
            *v100 = 0;
            v101 = 0;
            v102 = 0;
            re::VertexFormatInfo::setVertexFormat(v100, *(v28 + 4), *(v28 + 16));
            v111 = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v83, v10);
            v29 = v83[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v83 + 7, &v111);
            v97 = *(v29 + 16);
            v98 = *(v29 + 8);
            v111 = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v83, v10);
            v30 = v83[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v83 + 23, &v111);
            v95 = *(v30 + 8);
            v91 = *(v30 + 16);
            v93 = *(v30 + 20);
            v3 = *v17;
            v85 = v17[1];
            v111 = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v83, v10);
            v31 = *(v83[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v83 + 7, &v111) + 20);
            v111 = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v83, v10);
            v33 = *(v83[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v83 + 15, &v111) + 4);
            if (v31 >= v33)
            {
              break;
            }

LABEL_39:
            v17 = v81;
            if (v10 == 63 || (v83[2] & (-2 << v10)) == 0)
            {
              goto LABEL_46;
            }

            v10 = __clz(__rbit64(v83[2] & (-2 << v10)));
          }

          v34 = 0;
          v4 = 0;
          v92 = v95 + v91;
          v94 = v93 / 0xCuLL;
          v96 = *v100;
          v90 = v31 / v33;
          while (1)
          {
            v35 = v99;
            if (v99)
            {
              if (v99 <= v34)
              {
                goto LABEL_73;
              }

              v36 = *(v89 + 4 * v34);
            }

            else
            {
              v36 = (v4 + v85);
            }

            v37 = v96(v98 + v97, v34);
            v38 = 0uLL;
            v39 = v36 - v4;
            if (v36 > v4)
            {
              break;
            }

LABEL_35:
            if (v10 != 1)
            {
              v51 = vmulq_f32(v38, v38);
              *v51.i8 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
              v51.i32[0] = vadd_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).u32[0];
              v52 = vrsqrte_f32(v51.u32[0]);
              v53 = vmul_f32(v52, vrsqrts_f32(v51.u32[0], vmul_f32(v52, v52)));
              v38 = vmulq_n_f32(v38, vmul_f32(v53, vrsqrts_f32(v51.u32[0], vmul_f32(v53, v53))).f32[0]);
            }

            if (v34 == v94)
            {
              goto LABEL_72;
            }

            v54 = v92 + 12 * v34;
            *v54 = v38.i64[0];
            *(v54 + 8) = v38.i32[2];
            ++v34;
            v4 = v36;
            if (v34 >= v90)
            {
              goto LABEL_39;
            }
          }

          *v40.f32 = v37;
          v40.i64[1] = v32;
          v41 = vaddq_f32(v86[25], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86[22], v37.f32[0]), v86[23], v37, 1), v86[24], v40, 2));
          v42 = vdupq_lane_s32(*v41.i8, 1);
          v43 = vdupq_laneq_s32(v41, 2);
          v44 = vdupq_laneq_s32(v41, 3);
          v45 = (v88 + 4 + 8 * v4);
          v46 = (v88 + 4 * v4);
          v38 = 0uLL;
          while (1)
          {
            if (v3)
            {
              v47 = *v46 >> 22;
              v48 = (*v46 & 0x3FFFFF) * 0.00000023842;
            }

            else
            {
              v47 = *(v45 - 1);
              v48 = *v45;
            }

            v49 = v47;
            if (v8 <= v47)
            {
              break;
            }

            v50 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(v20 + (v47 << 6)), *v41.i32), v42, *(v20 + (v47 << 6) + 16)), v43, *(v20 + (v47 << 6) + 32)), v44, *(v20 + (v47 << 6) + 48));
            if (v27 >= 0x40)
            {
              if ((v27 >> 6) <= v47)
              {
                goto LABEL_71;
              }

              v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(v26 + (v47 << 6)), v50.f32[0]), *(v26 + (v47 << 6) + 16), *v50.f32, 1), *(v26 + (v47 << 6) + 32), v50, 2), *(v26 + (v47 << 6) + 48), v50, 3);
            }

            v38 = vaddq_f32(v38, vmulq_n_f32(v50, v48));
            v45 += 2;
            ++v46;
            if (!--v39)
            {
              goto LABEL_35;
            }
          }

          re::internal::assertLog(6, v32, *v38.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v47, v8);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v67, v72);
          __break(1u);
LABEL_71:
          re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v49, v27 >> 6);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v68, v73);
          __break(1u);
LABEL_72:
          re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v94, v94);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v69, v74);
          __break(1u);
LABEL_73:
          re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v35);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v75);
          __break(1u);
LABEL_74:
          re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v11);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v71, v76);
          __break(1u);
LABEL_75:
          *v107 = 0;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *v113 = "operator[]";
          *&v113[8] = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          *&v113[10] = 476;
          *&v113[14] = 2048;
          *&v113[16] = v3;
          *&v113[24] = 2048;
          *&v113[26] = v4;
          _os_log_send_and_compose_impl(v60, v107, &v114, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v77, v78);
          _os_crash_msg();
          __break(1u);
LABEL_79:
          *v107 = 0;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          v61 = MEMORY[0x1E69E9C10];
          v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *v113 = "operator[]";
          *&v113[8] = 1024;
          if (v62)
          {
            v63 = 3;
          }

          else
          {
            v63 = 2;
          }

          *&v113[10] = 476;
          *&v113[14] = 2048;
          *&v113[16] = v3;
          *&v113[24] = 2048;
          *&v113[26] = v4;
          _os_log_send_and_compose_impl(v63, v107, &v114, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v77, v78);
          _os_crash_msg();
          __break(1u);
LABEL_83:
          *v107 = 0;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          v64 = MEMORY[0x1E69E9C10];
          v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *v113 = "operator[]";
          *&v113[8] = 1024;
          if (v65)
          {
            v66 = 3;
          }

          else
          {
            v66 = 2;
          }

          *&v113[10] = 476;
          *&v113[14] = 2048;
          *&v113[16] = v8;
          *&v113[24] = 2048;
          *&v113[26] = v4;
          _os_log_send_and_compose_impl(v66, v107, &v114, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v77, v78);
          _os_crash_msg();
          __break(1u);
        }
      }

      else
      {
        v56 = *re::graphicsLogObjects(v24);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *v100 = 0;
          _os_log_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", v100, 2u);
        }
      }

LABEL_46:
      if (v103 == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v104);
        v7 = a1;
        v6 = a3;
        v5 = v82;
        v8 = v87;
      }

      else
      {
        v7 = a1;
        v6 = a3;
        v5 = v82;
        v8 = v87;
        if (v105 && (v106 & 1) != 0)
        {
          (*(*v105 + 40))();
        }
      }
    }

    else
    {
      v55 = *re::graphicsLogObjects(v23);
      v5 = v82;
      v8 = v87;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v103) = 0;
        _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", &v103, 2u);
      }
    }

    if (v107[0] == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v108);
    }

    else if (v109 && (v110 & 1) != 0)
    {
      (*(*v109 + 40))();
    }

    goto LABEL_58;
  }
}

uint64_t re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 56 * (v2 & 3);
}

uint64_t re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + ((v2 & 3) << 7);
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_16SkinningDeformerENS2_12_GLOBAL__N_113SkinningModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0A020;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_16SkinningDeformerENS2_12_GLOBAL__N_113SkinningModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EEclEOSF_(uint64_t result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::BufferSlice>::deinit(v2 + 3);
    if (*v2)
    {
      v4 = v2[1];
      if (v4)
      {
        v5 = 88 * v4;
        v6 = v2[2] + 48;
        do
        {
          v7 = *(v6 + 24);
          if (v7 != -1)
          {
            (off_1F5D0A000[v7])(&v9, v6);
          }

          *(v6 + 24) = -1;
          v8 = *(v6 - 16);
          if (v8 != -1)
          {
            (off_1F5D0A000[v8])(&v10, v6 - 40);
          }

          *(v6 - 16) = -1;
          v6 += 88;
          v5 -= 88;
        }

        while (v5);
        (*(**v2 + 40))(*v2, v2[2]);
        v2[1] = 0;
        v2[2] = 0;
      }

      *v2 = 0;
    }

    return (*(*v3 + 40))(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_16SkinningDeformerENS2_12_GLOBAL__N_113SkinningModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
                v22 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v21 % *(a1 + 24), v21);
                v23 = *(v19 + 8);
                *(v22 + 8) = *(v22 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 16) = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v31[16];
                v24 = *(*&v31[16] + v17 + 40);
                *(v22 + 24) = *(*&v31[16] + v17 + 24);
                *(v22 + 40) = v24;
                v16 = *&v31[32];
              }

              ++v18;
              v17 += 48;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + 48 * v4);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 48 * v4);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = 48 * v4;
  *(v25 + v28) = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *(v25 + v28) = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v25 + 48 * v4;
}

_anonymous_namespace_ *re::BucketArray<re::anonymous namespace::GpuAllocationData::SkinTask,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::anonymous namespace::GpuAllocationData::SkinTask,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      v4 = *(result + 1);
      if (v4 > a2)
      {
        v5 = *(result + 4);
        do
        {
          v6 = (v3 + 24);
          if ((v5 & 1) == 0)
          {
            v6 = *(v3 + 4);
          }

          result = (*(**v3 + 40))(*v3, v6[v4 - 1]);
          v7 = *(v3 + 4);
          v4 = *(v3 + 1) - 1;
          *(v3 + 1) = v4;
          v5 = v7 + 2;
          *(v3 + 4) = v5;
        }

        while (v4 > a2);
      }

      if (v4 < a2)
      {
        v8 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 2432, 0);
          v9 = result;
          if (*v3)
          {
            v10 = *(v3 + 1);
            v11 = *(v3 + 4);
            if ((v11 & 1) == 0)
            {
              v12 = *v8;
              v14 = v10 >= *v8;
              v13 = v10 + 1;
              v14 = !v14 || v12 >= v13;
              if (v14)
              {
                goto LABEL_24;
              }

              v15 = 2 * v12;
              goto LABEL_20;
            }

            v13 = v10 + 1;
            if (v13 >= 3)
            {
              v15 = 4;
LABEL_20:
              if (v15 <= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v15;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v17);
              v11 = *(v3 + 4);
            }
          }

          else
          {
            v16 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v16 + 1);
            v11 = *(v3 + 4) + 2;
            *(v3 + 4) = v11;
          }

LABEL_24:
          v18 = (v3 + 24);
          if ((v11 & 1) == 0)
          {
            v18 = *(v3 + 4);
          }

          v19 = *(v3 + 1);
          v18[v19++] = v9;
          *(v3 + 1) = v19;
          *(v3 + 4) += 2;
        }

        while (v19 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

float32x4_t re::ColorManager::computeWPCMatrix@<Q0>(float32x4_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a2;
  {
    v3 = a2;
    if (v15)
    {
      re::Defaults::floatValue(&re::ColorManager::computeWPCMatrix(re::Matrix3x3<float> const&,re::DebugSettingsManager *)const::overrideWpcStrength, "iblWPCStrength", v16);
      v3 = a2;
    }
  }

  v6 = *&dword_1ECF1CCE4;
  if (!re::ColorManager::computeWPCMatrix(re::Matrix3x3<float> const&,re::DebugSettingsManager *)const::overrideWpcStrength)
  {
    v6 = 1.0;
  }

  v19 = v6;
  if (v3)
  {
    v18[0] = 0xFEE1A01690D44944;
    v18[1] = "colorpipe:wpcStrength";
    v7 = re::DebugSettingsManager::getWithErrorCode<float>(v3, v18, &v19);
    if (v18[0])
    {
      if (v18[0])
      {
      }
    }

    v6 = v19;
  }

  v8 = vmulq_n_f32(*a1, v6);
  v9 = vmulq_n_f32(a1[1], v6);
  v10 = vmulq_n_f32(a1[2], v6);
  v11 = 1.0 - v6;
  v12 = vaddq_f32(v8, vmulq_n_f32(xmmword_1E3047670, v11));
  v13 = vaddq_f32(v9, vmulq_n_f32(xmmword_1E3047680, v11));
  *(a3 + 8) = v12.i32[2];
  *(a3 + 24) = v13.i32[2];
  result = vaddq_f32(vmulq_n_f32(xmmword_1E30476A0, v11), v10);
  *a3 = v12.i64[0];
  *(a3 + 16) = v13.i64[0];
  *(a3 + 40) = result.i32[2];
  *(a3 + 32) = result.i64[0];
  return result;
}

void re::ColorManager::init(uint64_t a1, int a2, unsigned int a3, char a4, char a5)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  *(a1 + 112) = a4;
  *(a1 + 113) = a5;
  re::ColorHelpers::computeGamutTransformMatrix(a2, a3, __A);
  v6 = __A[1];
  *(a1 + 16) = __A[0];
  *(a1 + 32) = v6;
  *(a1 + 48) = __A[2];
  __B = 0.00097752;
  LODWORD(__A[0]) = 0;
  vDSP_vramp(__A, &__B, (a1 + 8416), 1, 0x400uLL);
  *(a1 + 12564) = 1;
}

uint64_t re::ColorManager::deinit(re::ColorManager *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    MEMORY[0x1E69064F0](v2, 0x1000C8052888210);
    *(this + 16) = 0;
  }

  result = *(this + 1565);
  if (result)
  {
    result = MEMORY[0x1E69064F0](result, 0x1000C8052888210);
    *(this + 1565) = 0;
  }

  return result;
}

void *re::ColorManager::setTargetDisplayTonemapLUTDomain(void *a1, unint64_t *a2)
{
  v4 = a1[16];
  if (v4)
  {
    v5 = a1[15];
    if (v5 == *a2)
    {
      goto LABEL_7;
    }

    MEMORY[0x1E69064F0]();
    a1[16] = 0;
  }

  v5 = *a2;
  if (*a2)
  {
    operator new[]();
  }

  v4 = 0;
LABEL_7:
  a1[15] = v5;
  result = memcpy(v4, a2[1], 4 * *a2);
  if (a1[1564] != *a2 && *a2 != 0)
  {
    v8 = a1[1565];
    if (v8)
    {
      MEMORY[0x1E69064F0](v8, 0x1000C8052888210);
    }

    operator new[]();
  }

  return result;
}

__n128 re::ColorManager::setTonemapUserParameters(re::ColorManager *this, const re::TonemapUserParameters *a2, const re::TonemapUserParameters *a3)
{
  *(this + 221) |= !re::haveSamePreBlendLUT((this + 136), a2, a3);
  *(this + 222) |= !re::haveSameExposure((this + 136), a2, v5);
  result = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  *(this + 177) = *(a2 + 41);
  *(this + 168) = v8;
  *(this + 152) = v7;
  *(this + 136) = result;
  return result;
}

uint64_t re::ColorManager::updateTonemapLUTs(uint64_t a1, float *a2)
{
  if ((*(a1 + 222) & 1) == 0 && *(a1 + 221) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 12512);
  if (v4)
  {
    v5 = *(a1 + 128);
    v6 = *(a1 + 12520);
    do
    {
      v7 = *v5++;
      *v6++ = re::computeTonemapping(a2, v7 * *a2);
      --v4;
    }

    while (v4);
  }

  if ((*(a1 + 115) & 1) == 0 && *(a1 + 221) == 1)
  {
    for (i = 0; i != 1024; ++i)
    {
      *(a1 + 224 + 4 * i) = re::computeTonemapping(a2, a2[31] * (*a2 * ((i * 0.00097752) + 0.0))) * a2[32];
    }

    for (j = 0; j != 1024; ++j)
    {
      *(a1 + 4320 + 4 * j) = (re::computeTonemappingInverse(a2, (j * 0.00097752) + 0.0) * a2[1]) * a2[6];
    }
  }

  *(a1 + 221) = 0;
  return 1;
}

uint64_t re::ColorManager::updateISPTonemapLUTAccelerated(uint64_t a1)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v5 = v1;
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(v2 + 8);
  if (v6)
  {
    v7 = *&v4;
    v8 = v3;
    v9 = v2;
    __A = 0.0;
    __B = vcvts_n_f32_u64(v6, 0xAuLL);
    vDSP_vramp(&__A, &__B, __C, 1, 0x400uLL);
    __S2 = 0.0;
    __S1 = 1.0;
    vDSP_vtabi(__C, 1, &__S1, &__S2, *v9, *(v9 + 8), v5 + 2104, 1, 0x400uLL);
    re::computeTonemappingInverseAccelerated(v8, v5 + 2104, v5 + 2104, 0x400uLL);
    v11 = *(v9 + 8);
    v12 = v11 * 0.1;
    if (v11 <= v12)
    {
      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, v11);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", __N, v18);
      __break(1u);
    }

    v13 = *v9;
    v5[3134] = re::computeTonemappingInverse(v8, v13[v12]) / 0.1;
    v14 = ((v5[3132] * v11) / v7);
    if (v11 - 1 < v14)
    {
      v14 = v11 - 1;
    }

    v15 = v5[3133] + (v13[v14] - v5[3133]) * 0.05;
    v5[3133] = v15;
    return 1;
  }

  if (*(v1 + 12564) == 1)
  {
    *(v1 + 12564) = 0;
    return 1;
  }

  return 0;
}

void *re::allocInfo_ColorManager(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_479, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_479))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BBDE8, "ColorManager");
    __cxa_guard_release(&_MergedGlobals_479);
  }

  return &unk_1EE1BBDE8;
}

void re::initInfo_ColorManager(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x31DB7AC1852E8DD4;
  v8[1] = "ColorManager";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x312000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_ColorManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ColorManager>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ColorManager>;
  *(this + 13) = re::internal::defaultConstructV2<re::ColorManager>;
  *(this + 14) = re::internal::defaultDestructV2<re::ColorManager>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

float32x4_t *re::computeFrustumCorners@<X0>(float32x4_t *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>, float32x4_t a8@<Q4>)
{
  v9.i32[3] = 0;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  if (*a2)
  {
    if (!a3)
    {
      return result;
    }

    v10 = *result;
    v11 = result[1].f32[0];
    v12 = result[1].f32[1];
    v13 = result[1].f32[2];
    v14 = result[1].f32[3];
    v15 = (v11 + v11) * v13;
    v16 = (v12 + v12) * v14;
    a6.f32[0] = v15 + v16;
    v17 = (v12 + v12) * v13;
    v18 = (v11 + v11) * v14;
    v19 = (v11 + v11) * v11;
    v20 = (v12 + v12) * v12;
    a6.f32[1] = v17 - v18;
    a6.f32[2] = 1.0 - (v19 + v20);
    v21 = (v11 + v11) * v12;
    v22 = (v13 + v13) * v14;
    v8.f32[0] = v21 - v22;
    a8.f32[0] = (v13 + v13) * v13;
    v8.f32[1] = 1.0 - (v19 + a8.f32[0]);
    v8.f32[2] = v18 + v17;
    a8.f32[0] = 1.0 - (v20 + a8.f32[0]);
    a8.f32[1] = v21 + v22;
    a8.f32[2] = v15 - v16;
    v23 = vsubq_f32(*result, vmulq_n_f32(a6, COERCE_FLOAT(*(a2 + 4))));
    v24 = vmulq_n_f32(a8, COERCE_FLOAT(*(a2 + 16)));
    v25 = vaddq_f32(v24, v23);
    v26 = vmulq_n_f32(v8, COERCE_FLOAT(*(a2 + 20)));
    v27 = vaddq_f32(v26, v25);
    v27.i32[3] = 1.0;
    v28 = vmulq_n_f32(v8, COERCE_FLOAT(*(a2 + 24)));
    v29 = vaddq_f32(v28, v25);
    v29.i32[3] = 1.0;
    *a4 = v27;
    a4[1] = v29;
    v30 = vmulq_n_f32(a8, COERCE_FLOAT(*(a2 + 12)));
    v31 = vaddq_f32(v30, v23);
    v32 = vaddq_f32(v26, v31);
    v32.i32[3] = 1.0;
    v33 = vaddq_f32(v28, v31);
    v33.i32[3] = 1.0;
    a4[2] = v32;
    a4[3] = v33;
    v34 = vsubq_f32(v10, vmulq_n_f32(a6, COERCE_FLOAT(*(a2 + 8))));
    v35 = vaddq_f32(v24, v34);
    v36 = vaddq_f32(v26, v35);
    v36.i32[3] = 1.0;
    v37 = vaddq_f32(v28, v35);
    v37.i32[3] = 1.0;
    a4[4] = v36;
    a4[5] = v37;
    v38 = vaddq_f32(v30, v34);
    v39 = vaddq_f32(v26, v38);
    v39.i32[3] = 1.0;
    a4[6] = v39;
    v40 = vaddq_f32(v28, v38);
    v40.i32[3] = 1.0;
  }

  else
  {
    v9.i32[0] = result[1].i32[0];
    a5.i32[0] = result[1].i32[1];
    v41 = result[1].f32[2];
    a7.i32[0] = result[1].i32[3];
    v42 = a5.f32[0] + a5.f32[0];
    v43 = (v9.f32[0] + v9.f32[0]) * v9.f32[0];
    v44 = (a5.f32[0] + a5.f32[0]) * a5.f32[0];
    v45 = (v41 + v41) * v41;
    a5.f32[0] = (v9.f32[0] + v9.f32[0]) * a5.f32[0];
    v46 = (v9.f32[0] + v9.f32[0]) * v41;
    v47 = v42 * v41;
    v48 = (v9.f32[0] + v9.f32[0]) * a7.f32[0];
    v49 = v42 * a7.f32[0];
    a7.f32[0] = (v41 + v41) * a7.f32[0];
    v9.f32[0] = 1.0 - (v44 + v45);
    v9.f32[1] = a5.f32[0] + a7.f32[0];
    v9.f32[2] = v46 - v49;
    a5.f32[0] = a5.f32[0] - a7.f32[0];
    a5.f32[1] = 1.0 - (v43 + v45);
    a5.f32[2] = v48 + v47;
    a7.f32[0] = v46 + v49;
    a7.f32[1] = v47 - v48;
    a7.f32[2] = 1.0 - (v43 + v44);
    v50 = *result;
    v51 = *(a2 + 4);
    v52 = vaddq_f32(*result, vmulq_n_f32(a7, -v51));
    v53 = *(a2 + 16);
    v54 = vmulq_n_f32(v9, *&v53);
    v55 = vaddq_f32(v52, v54);
    v56 = *(a2 + 12);
    v57 = vmulq_n_f32(v9, *&v56);
    v58 = vaddq_f32(v52, v57);
    v59 = *(a2 + 20);
    v60 = vmulq_n_f32(a5, *&v59);
    v61 = vaddq_f32(v60, v55);
    v62 = *(a2 + 24);
    v63 = vmulq_n_f32(a5, *&v62);
    v64 = vaddq_f32(v63, v55);
    v65 = vaddq_f32(v60, v58);
    v66 = vaddq_f32(v63, v58);
    v61.i32[3] = 1.0;
    v64.i32[3] = 1.0;
    *a4 = v61;
    a4[1] = v64;
    v65.i32[3] = 1.0;
    v66.i32[3] = 1.0;
    a4[2] = v65;
    a4[3] = v66;
    if (a3 && (v67 = *(a2 + 8), v67 != INFINITY))
    {
      v71 = vaddq_f32(v50, vmulq_n_f32(a7, -v67));
      v72 = 1.0 / v51;
      v73 = vmulq_n_f32(v9, v67);
      v74 = vmulq_n_f32(a5, v67);
      v75 = vaddq_f32(v71, vmulq_n_f32(vmulq_n_f32(v73, *&v53), v72));
      v76 = vaddq_f32(v71, vmulq_n_f32(vmulq_n_f32(vmulq_f32(v9, v73), *&v56), v72));
      v77 = vmulq_n_f32(vmulq_n_f32(v74, *&v59), v72);
      v78 = vaddq_f32(v77, v75);
      v79 = vmulq_n_f32(vmulq_n_f32(v74, *&v62), v72);
      v80 = vaddq_f32(v79, v75);
      v81 = vaddq_f32(v77, v76);
      v40 = vaddq_f32(v79, v76);
      v78.i32[3] = 1.0;
      v80.i32[3] = 1.0;
      a4[4] = v78;
      a4[5] = v80;
      v81.i32[3] = 1.0;
      a4[6] = v81;
      v40.i32[3] = 1.0;
    }

    else
    {
      v68 = vaddq_f32(v60, v54);
      v69 = vaddq_f32(v63, v54);
      v70 = vaddq_f32(v60, v57);
      v40 = vaddq_f32(v63, v57);
      v68.i32[3] = 0;
      v69.i32[3] = 0;
      a4[4] = v68;
      a4[5] = v69;
      v70.i32[3] = 0;
      a4[6] = v70;
      v40.i32[3] = 0;
    }
  }

  a4[7] = v40;
  return result;
}

unint64_t re::computeCullingPlanes@<X0>(float32x4_t *this@<X0>, const re::RenderCamera *a2@<X1>, const re::Projection *a3@<X2>, float32x4_t *a4@<X8>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>, float32x4_t a8@<Q4>, float32x4_t a9@<Q6>)
{
  v9 = a3;
  a4->i64[0] = 0;
  a4->i32[2] = 0;
  if (*a2)
  {
    v105 = *this;
    v12 = this[1].f32[0];
    v13 = this[1].f32[1];
    a6.i32[0] = this[1].i32[2];
    v14 = this[1].f32[3];
    a8.f32[0] = v12 + v12;
    v15 = v13 + v13;
    v16 = (v12 + v12) * v12;
    v17 = (v13 + v13) * v13;
    v18 = (a6.f32[0] + a6.f32[0]) * a6.f32[0];
    v19 = a8.f32[0] * v13;
    v20 = a8.f32[0] * a6.f32[0];
    v21 = v15 * a6.f32[0];
    v22 = a8.f32[0] * v14;
    v23 = v15 * v14;
    a6.f32[0] = (a6.f32[0] + a6.f32[0]) * v14;
    a8.f32[0] = 1.0 - (v17 + v18);
    a8.f32[1] = v19 + a6.f32[0];
    a8.f32[2] = v20 - (v15 * v14);
    a6.f32[0] = v19 - a6.f32[0];
    a6.f32[1] = 1.0 - (v16 + v18);
    a6.f32[2] = v22 + v21;
    v100 = a8;
    v102 = a6;
    v98 = *(a2 + 1);
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(0, a2);
    v24 = vmulq_f32(v100, vaddq_f32(v105, vmulq_n_f32(v100, *&v98)));
    v25 = v100;
    v25.f32[3] = -(v24.f32[2] + vaddv_f32(*v24.f32));
    a4[1] = v25;
    LODWORD(v98) = *(a2 + 12);
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(1uLL, v26);
    v27 = vnegq_f32(v100);
    v28 = vmulq_f32(vaddq_f32(v105, vmulq_n_f32(v100, *&v98)), v27);
    v27.f32[3] = -(v28.f32[2] + vaddv_f32(*v28.f32));
    a4[2] = v27;
    v100.i32[0] = *(a2 + 20);
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(2uLL, v29);
    v30 = vmulq_f32(v102, vaddq_f32(v105, vmulq_n_f32(v102, v100.f32[0])));
    v31 = v102;
    v31.f32[3] = -(v30.f32[2] + vaddv_f32(*v30.f32));
    a4[3] = v31;
    v100.i32[0] = *(a2 + 3);
    result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(3uLL, v32);
    v35 = vnegq_f32(v102);
    v36.i32[3] = v105.i32[3];
    v37 = vmulq_f32(vaddq_f32(v105, vmulq_n_f32(v102, v100.f32[0])), v35);
    v35.f32[3] = -(v37.f32[2] + vaddv_f32(*v37.f32));
    a4[4] = v35;
    a4->i64[0] = 4;
    a4->i32[2] = 4;
    if (v9)
    {
      v36.f32[0] = v20 + v23;
      v36.f32[1] = v21 - v22;
      v36.f32[2] = 1.0 - (v16 + v17);
      v103 = v36;
      v38 = *(a2 + 2);
      re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(4uLL, v34);
      v39 = vnegq_f32(v103);
      v40 = vmulq_f32(vaddq_f32(v105, vmulq_n_f32(v103, -v38)), v39);
      v39.f32[3] = -(v40.f32[2] + vaddv_f32(*v40.f32));
      a4[5] = v39;
      v41 = 5;
      a4->i64[0] = 5;
      a4->i32[2] = 5;
      v42 = *(a2 + 1);
      result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(5uLL, v43);
      v44 = v103;
      v45 = vmulq_f32(v103, vaddq_f32(v105, vmulq_n_f32(v103, -v42)));
LABEL_4:
      v44.f32[3] = -(v45.f32[2] + vaddv_f32(*v45.f32));
      a4[v41 + 1] = v44;
      ++a4->i64[0];
      ++a4->i32[2];
    }
  }

  else
  {
    v46 = this[1].f32[0];
    a5.i32[0] = this[1].i32[1];
    v47 = this[1].f32[2];
    a7.i32[0] = this[1].i32[3];
    v48 = v46 + v46;
    v49 = a5.f32[0] + a5.f32[0];
    a9.f32[0] = v47 + v47;
    v50 = (v46 + v46) * v46;
    v51 = (a5.f32[0] + a5.f32[0]) * a5.f32[0];
    v52 = (v47 + v47) * v47;
    a5.f32[0] = v48 * a5.f32[0];
    v53 = v48 * v47;
    v54 = v49 * v47;
    v55 = v48 * a7.f32[0];
    v56 = v49 * a7.f32[0];
    a7.f32[0] = a9.f32[0] * a7.f32[0];
    a9.f32[0] = 1.0 - (v51 + v52);
    a9.f32[1] = a5.f32[0] + a7.f32[0];
    a9.f32[2] = v53 - v56;
    a5.f32[0] = a5.f32[0] - a7.f32[0];
    a5.f32[1] = 1.0 - (v50 + v52);
    a5.f32[2] = v55 + v54;
    a7.f32[0] = v53 + v56;
    a7.f32[1] = v54 - v55;
    a7.f32[2] = 1.0 - (v50 + v51);
    v94 = a7;
    v106 = *this;
    v95 = vaddq_f32(*this, vmulq_n_f32(a7, -*(a2 + 1)));
    v96 = vsubq_f32(*this, v95);
    v57 = vaddq_f32(vmulq_n_f32(a9, COERCE_FLOAT(*(a2 + 1))), v95);
    v58 = vaddq_f32(vmulq_n_f32(a9, COERCE_FLOAT(*(a2 + 12))), v95);
    v59 = vmulq_n_f32(a5, COERCE_FLOAT(*(a2 + 20)));
    v60 = vmulq_n_f32(a5, COERCE_FLOAT(*(a2 + 3)));
    v97 = vaddq_f32(v59, v57);
    v99 = vaddq_f32(v59, v58);
    v101 = vaddq_f32(v60, v57);
    v104 = vaddq_f32(v60, v58);
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(0, a2);
    v61 = vmulq_f32(v95, v96);
    v62 = v96;
    v62.f32[3] = -(v61.f32[2] + vaddv_f32(*v61.f32));
    v63 = a4 + 1;
    a4[a4->i64[0] + 1] = v62;
    v64 = a4->i64[0] + 1;
    a4->i64[0] = v64;
    ++a4->i32[2];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v64, v65);
    v66 = vsubq_f32(v101, v106);
    v67 = vsubq_f32(v97, v101);
    v68 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), vnegq_f32(v66)), v67, vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL));
    v69 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
    v70 = vmulq_f32(v106, v69);
    v69.f32[3] = -(v70.f32[2] + vaddv_f32(*v70.f32));
    v63[v64] = v69;
    v71 = a4->i64[0] + 1;
    a4->i64[0] = v71;
    ++a4->i32[2];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v71, v72);
    v73 = vsubq_f32(v97, v106);
    v74 = vsubq_f32(v99, v97);
    v75 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL), vnegq_f32(v73)), v74, vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL));
    v76 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
    v77 = vmulq_f32(v106, v76);
    v76.f32[3] = -(v77.f32[2] + vaddv_f32(*v77.f32));
    v63[v71] = v76;
    v78 = a4->i64[0] + 1;
    a4->i64[0] = v78;
    ++a4->i32[2];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v78, v79);
    v80 = vsubq_f32(v99, v106);
    v81 = vsubq_f32(v104, v99);
    v82 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), vnegq_f32(v80)), v81, vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL));
    v83 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
    v84 = vmulq_f32(v106, v83);
    v83.f32[3] = -(v84.f32[2] + vaddv_f32(*v84.f32));
    v63[v78] = v83;
    v85 = a4->i64[0] + 1;
    a4->i64[0] = v85;
    ++a4->i32[2];
    result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v85, v86);
    v88 = vsubq_f32(v104, v106);
    v89 = vsubq_f32(v101, v104);
    v90 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL), vnegq_f32(v88)), v89, vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL));
    v91 = vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL);
    v92 = vmulq_f32(v106, v91);
    v91.f32[3] = -(v92.f32[2] + vaddv_f32(*v92.f32));
    v63[v85] = v91;
    v41 = a4->i64[0] + 1;
    a4->i64[0] = v41;
    ++a4->i32[2];
    if (v9)
    {
      v93 = *(a2 + 2);
      if (v93 != INFINITY)
      {
        result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v41, v87);
        v44 = vnegq_f32(v96);
        v45 = vmulq_f32(vaddq_f32(v106, vmulq_n_f32(v94, -v93)), v44);
        goto LABEL_4;
      }
    }
  }

  return result;
}

unint64_t re::buildCullingPlanes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v5 = 0;
  v6 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = a1 + 16;
  v8 = a1 + 32;
  v9 = a1 + 48;
  v10 = a2 + 16;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = *(a1 + 4 * v6);
      if (v13)
      {
        v15 = -v15;
        v29 = -*(v7 + 4 * v6) - *(a1 + 28);
        v28 = -*(v8 + 4 * v6) - *(a1 + 44);
        v16 = -*(v9 + 4 * v6);
      }

      else
      {
        v29 = *(v7 + 4 * v6) - *(a1 + 28);
        v28 = *(v8 + 4 * v6) - *(a1 + 44);
        v16 = *(v9 + 4 * v6);
      }

      v17 = *(a1 + 12);
      v18 = *(a1 + 60);
      result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v5, a3);
      v13 = 0;
      *&v21 = v15 - v17;
      *(&v21 + 1) = v29;
      *(&v21 + 2) = v28;
      *(&v21 + 3) = v16 - v18;
      *(v10 + 16 * v5) = v21;
      v5 = *a2 + 1;
      *a2 = v5;
      ++*(a2 + 8);
    }

    while ((v14 & 1) != 0);
    v11 = 0;
    v6 = 1;
  }

  while ((v12 & 1) != 0);
  v20.i32[0] = *(a1 + 8);
  v22 = *(a1 + 24);
  v23 = v20;
  v23.f32[1] = v22;
  v24 = *(a1 + 40);
  v25 = vnegq_f32(v23);
  v25.f32[2] = -v24;
  v26 = vmulq_f32(v25, v25);
  if (sqrtf(v26.f32[2] + vaddv_f32(*v26.f32)) > 0.0)
  {
    v25.f32[3] = -*(a1 + 56);
    v30 = v25;
    result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v5, a3);
    *(v10 + 16 * v5) = v30;
    v5 = *a2 + 1;
    *a2 = v5;
    ++*(a2 + 8);
    v20.i32[0] = *(a1 + 8);
    v22 = *(a1 + 24);
    v24 = *(a1 + 40);
  }

  v26.f32[0] = -*(a1 + 12) - v20.f32[0];
  v26.f32[1] = -*(a1 + 28) - v22;
  v26.f32[2] = -*(a1 + 44) - v24;
  v27 = vmulq_f32(v26, v26);
  if (sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) > 0.0)
  {
    v26.f32[3] = -*(a1 + 60) - *(a1 + 56);
    v31 = v26;
    result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v5, a3);
    *(v10 + 16 * v5) = v31;
    ++*a2;
    ++*(a2 + 8);
  }

  return result;
}

double re::buildCullingFrustum@<D0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = 0;
  v5 = 0;
  v42[1] = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v42[0] = 0x3F80000000000000;
  v6 = *a2;
  v7 = a2[1];
  __asm { FMOV            V2.2S, #-1.0 }

  v13 = -_D2;
  v14 = a2[2];
  v15 = a2[3];
  do
  {
    v16 = 0;
    v17 = (v42 + v5);
    v18 = vld1q_dup_f32(v17);
    v41 = v13;
    do
    {
      v19 = 0;
      v20 = (&v42[-1] + v16);
      v21 = vld1q_dup_f32(v20);
      v40 = v13;
      if (v4 <= 8)
      {
        v22 = 8;
      }

      else
      {
        v22 = v4;
      }

      v23 = v4;
      do
      {
        v24 = vaddq_f32(v15, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v6, *(&v40 + v19)), v21, v7), v18, v14));
        if (v24.f32[3] != 0.0)
        {
          v24 = vdivq_f32(v24, vdupq_laneq_s32(v24, 3));
        }

        if (v22 == v23)
        {
          re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v22, 8);
          _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v30, v31);
          __break(1u);
        }

        v4 = v23 + 1;
        *(&v32 + v23) = v24;
        v19 += 4;
        ++v23;
      }

      while (v19 != 8);
      v16 += 4;
    }

    while (v16 != 8);
    v5 += 4;
  }

  while (v5 != 8);
  re::buildCullingPlanes(a1, a3, v23);
  v25 = v37;
  a3[11] = v36;
  a3[12] = v25;
  v26 = v39;
  a3[13] = v38;
  a3[14] = v26;
  v27 = v33;
  a3[7] = v32;
  a3[8] = v27;
  result = *&v34;
  v29 = v35;
  a3[9] = v34;
  a3[10] = v29;
  return result;
}

uint64_t re::boundingBoxIntersectFrustums(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::transformedAABBVertices(a1, a2, &v72);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = vmulq_f32(*a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL))), vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL)));
  *v5.i32 = v7.f32[2] + vaddv_f32(*v7.f32);
  v8 = v72;
  if (*v5.i32 >= 0.0)
  {
    v18 = v74;
    v33 = vsubq_f32(v72, v73);
    v9 = v75;
    v10 = v76;
    v34 = vsubq_f32(v75, v72);
    v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v33)), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v36 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
    v37 = vmulq_f32(v73, v36);
    v36.f32[3] = -(v37.f32[2] + vaddv_f32(*v37.f32));
    v71[0] = v36;
    v13 = v79;
    v38 = vsubq_f32(v76, v72);
    v39 = vsubq_f32(v79, v76);
    v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v38)), v39, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
    v26 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    v41 = vmulq_f32(v72, v26);
    v26.f32[3] = -(v41.f32[2] + vaddv_f32(*v41.f32));
    v32 = v77;
    v42 = vsubq_f32(v77, v76);
    v43 = vsubq_f32(v78, v77);
    v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), vnegq_f32(v42)), v43, vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL));
    v28 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
    v45 = vmulq_f32(v76, v28);
    v28.f32[3] = -(v45.f32[2] + vaddv_f32(*v45.f32));
    v29 = vsubq_f32(v73, v77);
    v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
    v31 = vsubq_f32(v74, v73);
    v12 = v72;
    v8 = v73;
  }

  else
  {
    v9 = v75;
    v10 = v76;
    v11 = vsubq_f32(v72, v75);
    v12 = v73;
    v13 = v74;
    v14 = vsubq_f32(v73, v72);
    v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v11)), v14, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
    v17 = vmulq_f32(v75, v16);
    v16.f32[3] = -(v17.f32[2] + vaddv_f32(*v17.f32));
    v18 = v79;
    v19 = vsubq_f32(v76, v79);
    v20 = vsubq_f32(v72, v76);
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
    v26 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v22 = vsubq_f32(v77, v78);
    v23 = vsubq_f32(v76, v77);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), vnegq_f32(v22)), v23, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
    v25 = vmulq_f32(v79, v26);
    v26.f32[3] = -(v25.f32[2] + vaddv_f32(*v25.f32));
    v28 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
    v27 = vmulq_f32(v78, v28);
    v28.f32[3] = -(v27.f32[2] + vaddv_f32(*v27.f32));
    v71[0] = v16;
    v29 = vsubq_f32(v73, v74);
    v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
    v31 = vsubq_f32(v77, v73);
    v32 = v74;
  }

  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), vnegq_f32(v29)), v31, v30);
  v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
  v48 = vmulq_f32(v32, v47);
  v47.f32[3] = -(v48.f32[2] + vaddv_f32(*v48.f32));
  v49 = vsubq_f32(v9, v18);
  v50 = vsubq_f32(v13, v9);
  v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
  v52 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
  v53 = vmulq_f32(v18, v52);
  v52.f32[3] = -(v53.f32[2] + vaddv_f32(*v53.f32));
  v71[1] = v26;
  v71[2] = v28;
  v71[3] = v47;
  v71[4] = v52;
  v54 = vsubq_f32(v10, v8);
  v55 = vsubq_f32(v12, v10);
  v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v54)), v55, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
  v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
  v58 = vmulq_f32(v8, v57);
  v57.f32[3] = -(v58.f32[2] + vaddv_f32(*v58.f32));
  v71[5] = v57;
  v69 = 6;
  v70 = 6;
  result = 1;
  if (*a3 == 1)
  {
    v68 = 1;
    result = re::boxVerticesIntersectPlanesForFrustumCulling(&v72, a3 + 32, *(a3 + 16), &v68, *(a3 + 544));
    if (result)
    {
      if (v68 == 1)
      {
        return re::frustumVerticesIntersectWithBox((a3 + 240), 0, v71, 6);
      }

      else
      {
        return 1;
      }
    }
  }

  else if (*a3 == 2)
  {
    v68 = 1;
    v60 = *(a3 + 544);
    v61 = re::boxVerticesIntersectPlanesForFrustumCulling(&v72, a3 + 32, *(a3 + 16), &v68, v60);
    if (v61 && (v68 & 1) != 0)
    {
      v62 = re::frustumVerticesIntersectWithBox((a3 + 240), 0, v71, 6);
      v64 = *a3;
      v68 = 1;
      if (v64 < 2)
      {
        re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v64);
        result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v66, v67);
        __break(1u);
        return result;
      }

      v61 = v62;
      v60 = *(a3 + 544);
    }

    else
    {
      v68 = 1;
    }

    v65 = re::boxVerticesIntersectPlanesForFrustumCulling(&v72, a3 + 144, *(a3 + 128), &v68, v60 & 1);
    if (v65)
    {
      if (v68 == 1)
      {
        v65 = re::frustumVerticesIntersectWithBox((a3 + 240), 1, v71, v69);
      }

      else
      {
        v65 = 1;
      }
    }

    return v61 | v65;
  }

  return result;
}

uint64_t re::transformedAABBVertices@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  memset(v13, 0, sizeof(v13));
  result = re::AABB::extractCorners(a1, v13, 8uLL, 0);
  v6 = 0;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  do
  {
    v11 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*&v13[v6])), v8, v13[v6].n128_u64[0], 1), v9, v13[v6], 2));
    v12 = vdivq_f32(v11, vdupq_laneq_s32(v11, 3));
    v12.i32[3] = 1.0;
    a3[v6++] = v12;
  }

  while (v6 != 8);
  return result;
}

uint64_t re::boxVerticesIntersectPlanesForFrustumCulling(uint64_t result, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  if (a3 < 1)
  {
    v13 = 0;
    result = 1;
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    LOBYTE(result) = 1;
    do
    {
      v8 = 0;
      v9 = 0;
      if (v6 == 5)
      {
        v10 = a5;
      }

      else
      {
        v10 = 1;
      }

      do
      {
        v11 = vmulq_f32(*(a2 + 16 * v6), *(v5 + v8));
        *v11.i8 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
        if (vadd_f32(*v11.i8, vdup_lane_s32(*v11.i8, 1)).f32[0] > 0.0)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        v9 += v12;
        v8 += 16;
      }

      while (v8 != 128);
      result = result & (v9 != 8);
      v7 = v7 - v9 + 8;
      ++v6;
    }

    while (v6 != (a3 & 0x7FFFFFFF));
    v13 = v7;
  }

  if (v13 == 8 * a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a4;
  }

  *a4 = v14;
  return result;
}

uint64_t re::frustumVerticesIntersectWithBox(unint64_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, a2, v4);
    result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v15, v16);
    __break(1u);
    return result;
  }

  v5 = &a1[18 * a2];
  v8 = v5[2];
  v7 = v5 + 2;
  v6 = v8;
  if (!v8 || !a4)
  {
    return 1;
  }

  v9 = &a3[a4];
  v10 = (v7 + 2);
  result = 1;
  do
  {
    v12 = v6;
    for (i = v10; ; ++i)
    {
      v14 = vmulq_f32(*a3, *i);
      if (vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL))) <= 0.0)
      {
        break;
      }

      if (!--v12)
      {
        return 0;
      }
    }

    ++a3;
  }

  while (a3 != v9);
  return result;
}

char *re::buildCullingFrustum@<X0>(char *result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, _BYTE *a4@<X3>, uint64_t a5@<X8>, float32x4_t a6@<Q2>, float32x4_t a7@<Q4>)
{
  v7 = a4;
  v8 = a5;
  v167 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 240) = 0;
  *(a5 + 248) = 0;
  *(a5 + 544) = 0;
  if (*a2)
  {
    if (a3)
    {
      v9 = (result + 16);
      v10 = (a2 + 3);
      v11 = a3;
      do
      {
        v137 = v9[-1];
        v12 = v9->f32[0];
        v13 = v9->f32[1];
        a6.i32[0] = v9->i32[2];
        v14 = v9->f32[3];
        a7.f32[0] = v12 + v12;
        v15 = v13 + v13;
        v16 = (v12 + v12) * v12;
        v17 = (v13 + v13) * v13;
        v18 = (a6.f32[0] + a6.f32[0]) * a6.f32[0];
        v19 = a7.f32[0] * v13;
        v20 = a7.f32[0] * a6.f32[0];
        v21 = v15 * a6.f32[0];
        v22 = a7.f32[0] * v14;
        v23 = v15 * v14;
        a6.f32[0] = (a6.f32[0] + a6.f32[0]) * v14;
        a7.f32[0] = 1.0 - (v17 + v18);
        a7.f32[1] = v19 + a6.f32[0];
        a7.f32[2] = v20 - (v15 * v14);
        a6.f32[0] = v19 - a6.f32[0];
        a6.f32[1] = 1.0 - (v16 + v18);
        a6.f32[2] = v22 + v21;
        v135 = a7;
        v136 = a6;
        v131 = v10[1];
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(0, a2);
        v24 = vmulq_f32(v135, vaddq_f32(v137, vmulq_n_f32(v135, v131)));
        v25 = v135;
        v25.f32[3] = -(v24.f32[2] + vaddv_f32(*v24.f32));
        v144 = v25;
        v132 = *v10;
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(1uLL, v26);
        v27 = vnegq_f32(v135);
        v28 = vmulq_f32(vaddq_f32(v137, vmulq_n_f32(v135, v132)), v27);
        v27.f32[3] = -(v28.f32[2] + vaddv_f32(*v28.f32));
        v145 = v27;
        v27.f32[0] = v10[2];
        v135 = v27;
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(2uLL, v29);
        v30 = vmulq_f32(v136, vaddq_f32(v137, vmulq_n_f32(v136, v135.f32[0])));
        v31 = v136;
        v31.f32[3] = -(v30.f32[2] + vaddv_f32(*v30.f32));
        v146 = v31;
        v30.f32[0] = v10[3];
        v135 = v30;
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(3uLL, v32);
        v36 = vnegq_f32(v136);
        v34.i32[3] = v137.i32[3];
        v35 = vmulq_f32(vaddq_f32(v137, vmulq_n_f32(v136, v135.f32[0])), v36);
        v36.f32[3] = -(v35.f32[2] + vaddv_f32(*v35.f32));
        v147 = v36;
        v143.i64[0] = 4;
        v143.i32[2] = 4;
        if (*v7 == 1)
        {
          v34.f32[0] = v20 + v23;
          v34.f32[1] = v21 - v22;
          v34.f32[2] = 1.0 - (v16 + v17);
          v36.f32[0] = *(v10 - 1);
          v135 = v36;
          v136 = v34;
          re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(4uLL, v33);
          v37 = vmulq_f32(v136, vaddq_f32(v137, vmulq_n_f32(v136, v135.f32[0])));
          v38 = v136;
          v38.f32[3] = -(v37.f32[2] + vaddv_f32(*v37.f32));
          v148 = v38;
          v37.f32[0] = *(v10 - 2);
          v135 = v37;
          re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(5uLL, v39);
          v40 = vnegq_f32(v136);
          v41 = vmulq_f32(vaddq_f32(v137, vmulq_n_f32(v136, v135.f32[0])), v40);
          v40.f32[3] = -(v41.f32[2] + vaddv_f32(*v41.f32));
          v149 = v40;
          v143.i64[0] = 6;
          v143.i32[2] = 6;
        }

        result = re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::add(v8, &v143);
        v9 += 2;
        v10 += 60;
        --v11;
      }

      while (v11);
    }

    goto LABEL_45;
  }

  if (!a3)
  {
    goto LABEL_45;
  }

  v42 = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  v47 = -_D0;
  v117 = a3;
  v118 = a5 + 240;
  v119 = result;
  v120 = a2;
  do
  {
    v48 = &a2[60 * v42];
    v49 = v48[3];
    v145 = v48[2];
    v146 = v49;
    v147.i16[0] = v48[4].i16[0];
    v50 = v48[1];
    v143 = *v48;
    v144 = v50;
    v148.i8[0] = v48[5].i8[0];
    if (v148.u8[0] == 1)
    {
      v51 = v48[7];
      v149 = v48[6];
      v150 = v51;
      v52 = v48[9];
      v151 = v48[8];
      v152 = v52;
    }

    v153 = v48[10].i8[0];
    if (v153 == 1)
    {
      v53 = v48[12];
      v154 = v48[11];
      v155 = v53;
      v54 = v48[14];
      v156 = v48[13];
      v157 = v54;
    }

    v55 = v143.f32[2];
    v144.i8[12] = 0;
    if (v143.f32[2] == INFINITY)
    {
      v56 = 1000.0;
    }

    else
    {
      v56 = v143.f32[2];
    }

    v143.f32[2] = v56;
    v123 = v42;
    v57 = &result[32 * v42];
    v124 = *v57;
    re::Projection::cullingProjectionMatrix(v166, &v143);
    re::RenderCamera::computeInverseTransform(v165, v57);
    v58 = 0;
    v59 = v166[0];
    v60 = v166[1];
    v61 = v166[2];
    v62 = v166[3];
    v158 = v165[0];
    v159 = v165[1];
    v160 = v165[2];
    v161 = v165[3];
    do
    {
      v138.columns[v58 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v158 + v58))), v60, *(&v158 + v58), 1), v61, *(&v158 + v58), 2), v62, *(&v158 + v58), 3);
      v58 += 16;
    }

    while (v58 != 64);
    v168 = __invert_f4(v138);
    v129 = v168.columns[1];
    v133 = v168.columns[0];
    v125 = v168.columns[3];
    v127 = v168.columns[2];
    v64 = 0;
    LODWORD(v65) = 0;
    v66 = 0;
    v138.columns[0].i64[0] = 0;
    v138.columns[0].i32[2] = 0;
    *&v158 = 1065353216;
    do
    {
      v67 = 0;
      v168.columns[0].i32[0] = *(&v158 + v66);
      _ZF = v168.columns[0].f32[0] == 0.0 && v55 == INFINITY;
      *v166 = v47;
      v69 = _ZF;
      v135 = vdupq_lane_s32(*v168.columns[0].f32, 0);
      do
      {
        v70 = 0;
        v71 = (v166 + v67);
        v168.columns[0] = vld1q_dup_f32(v71);
        v136 = v168.columns[0];
        *v165 = v47;
        v65 = v65;
        v72 = 4 * v65;
        do
        {
          if (v69)
          {
            if (v64 <= v65 - 4)
            {
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v65 - 4, v64);
              _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v106, v111);
              __break(1u);
LABEL_47:
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
              _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v107, v112);
              __break(1u);
LABEL_48:
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 1, 1);
              _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v108, v113);
              __break(1u);
LABEL_49:
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 3, v64);
              _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v109, v114);
              __break(1u);
              goto LABEL_50;
            }

            v168.columns[0].i64[0] = v135.i64[v72 / 2];
            v168.columns[0].i32[2] = v135.i32[v72 + 2];
            v137 = v168.columns[0];
            re::DynamicInlineArray<re::Vector4<float>,8ul>::ensureCapacity(v64, v63);
            v168.columns[0] = vsubq_f32(v137, v124);
            v168.columns[0].i32[3] = 0;
          }

          else
          {
            v168.columns[0].i32[0] = *(v165 + v70);
            v137 = v168.columns[0];
            re::DynamicInlineArray<re::Vector4<float>,8ul>::ensureCapacity(v64, v63);
            v168.columns[0] = vaddq_f32(v125, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v133, v137.f32[0]), v136, v129), v135, v127));
            v168.columns[0] = vdivq_f32(v168.columns[0], vdupq_laneq_s32(v168.columns[0], 3));
            v168.columns[0].i32[3] = 1.0;
          }

          v138.columns[v64 + 1] = v168.columns[0];
          v73 = v138.columns[0].i64[0];
          v64 = ++v138.columns[0].i64[0];
          ++v138.columns[0].i32[2];
          ++v65;
          v70 += 4;
          v72 += 4;
        }

        while (v70 != 8);
        v67 += 4;
      }

      while (v67 != 8);
      v66 += 4;
    }

    while (v66 != 8);
    if (!v64)
    {
      goto LABEL_47;
    }

    v8 = a5;
    v7 = a4;
    if (!v73)
    {
      goto LABEL_48;
    }

    if (v64 <= 3)
    {
      goto LABEL_49;
    }

    v135 = v138.columns[2];
    v136 = v139;
    v137 = v138.columns[1];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(0, v63);
    v74 = vsubq_f32(v135, v137);
    v128 = vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL);
    v130 = v74;
    v126 = vsubq_f32(v136, v135);
    v116 = vextq_s8(vuzp1q_s32(v126, v126), v126, 0xCuLL);
    v75 = vmlaq_f32(vmulq_f32(v116, vnegq_f32(v74)), v126, v128);
    v76 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
    v77 = vmulq_f32(v137, v76);
    v76.f32[3] = -(v77.f32[2] + vaddv_f32(*v77.f32));
    v159 = v76;
    v134 = v138.columns[3];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(1uLL, v78);
    v79 = vsubq_f32(v134, v124);
    v80 = vsubq_f32(v137, v134);
    v81 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), vnegq_f32(v79)), v80, vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL));
    v82 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
    v83 = vmulq_f32(v124, v82);
    v82.f32[3] = -(v83.f32[2] + vaddv_f32(*v83.f32));
    v160 = v82;
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(2uLL, v84);
    v85 = vsubq_f32(v135, v124);
    v86 = vmlaq_f32(vmulq_f32(v116, vnegq_f32(v85)), v126, vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL));
    v87 = vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL);
    v88 = vmulq_f32(v124, v87);
    v87.f32[3] = -(v88.f32[2] + vaddv_f32(*v88.f32));
    v161 = v87;
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(3uLL, v89);
    v90 = vsubq_f32(v136, v124);
    v91 = vsubq_f32(v134, v136);
    v92 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL), vnegq_f32(v90)), v91, vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL));
    v93 = vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL);
    v94 = vmulq_f32(v124, v93);
    v93.f32[3] = -(v94.f32[2] + vaddv_f32(*v94.f32));
    v162 = v93;
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(4uLL, v95);
    v97 = vsubq_f32(v137, v124);
    v98 = vmlaq_f32(vmulq_f32(v128, vnegq_f32(v97)), v130, vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL));
    v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
    v100 = vmulq_f32(v124, v99);
    v99.f32[3] = -(v100.f32[2] + vaddv_f32(*v100.f32));
    v163 = v99;
    *&v158 = 5;
    DWORD2(v158) = 5;
    if (*a4 == 1 && v55 != INFINITY)
    {
      if (v64 > 7)
      {
        v135 = v141;
        v136 = v142;
        v137 = v140;
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(5uLL, v96);
        v101 = vsubq_f32(v135, v136);
        v102 = vsubq_f32(v137, v135);
        v103 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL), vnegq_f32(v101)), v102, vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL));
        v104 = vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL);
        v105 = vmulq_f32(v136, v104);
        v104.f32[3] = -(v105.f32[2] + vaddv_f32(*v105.f32));
        v164 = v104;
        *&v158 = 6;
        DWORD2(v158) = 6;
        goto LABEL_42;
      }

LABEL_50:
      re::internal::assertLog(6, v96, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 7, v64);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v110, v115);
      __break(1u);
    }

LABEL_42:
    re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::add(a5, &v158);
    if (a4[1] == 1)
    {
      re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::add(v118, &v138);
    }

    v42 = v123 + 1;
    result = v119;
    a2 = v120;
  }

  while (v123 + 1 != v117);
LABEL_45:
  *(v8 + 544) = *v7;
  return result;
}

void *re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::add(uint64_t a1, uint64_t *a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  else
  {
    v3 = a1 + 112 * *a1;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    v4 = *a2;
    result = memcpy((v3 + 32), a2 + 2, 16 * *a2);
    *(v3 + 16) = v4;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

void *re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::add(uint64_t a1, uint64_t *a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  else
  {
    v3 = a1 + 144 * *a1;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    v4 = *a2;
    result = memcpy((v3 + 32), a2 + 2, 16 * *a2);
    *(v3 + 16) = v4;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::isBoundingBoxInsidePlanes(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (!*(a2 + 8))
  {
    return 1;
  }

  re::transformedAABBVertices(a1, a3, v10);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = *a2 + 16 * v4;
    do
    {
      v7 = 0;
      while (1)
      {
        v8 = vmulq_f32(*v5, v10[v7]);
        if (vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) <= 0.0)
        {
          break;
        }

        if (++v7 == 8)
        {
          return 0;
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return 1;
}

uint64_t re::isBoundingBoxInsidePlanesArray(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  if (a2->i64[0] == 1)
  {
    v11 = a2[1].i64[0];
    *&v22[0] = a2 + 2;
    *(&v22[0] + 1) = v11;
    return re::isBoundingBoxInsidePlanes(a1, v22, a3);
  }

  if (a2->i64[0] != 2)
  {
    return 0;
  }

  if (!a2[1].i64[0] || !a2[8].i64[0])
  {
    return 1;
  }

  re::transformedAABBVertices(a1, a3, v22);
  v5 = a2->i64[0];
  if (a2->i64[0])
  {
    v6 = a2[1].i64[0];
    if (v6)
    {
      v7 = a2 + 2;
      v8 = &a2[v6 + 2];
LABEL_8:
      for (i = 0; i != 8; ++i)
      {
        v10 = vmulq_f32(*v7, v22[i]);
        if (vaddv_f32(vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL))) <= 0.0)
        {
          if (++v7 != v8)
          {
            goto LABEL_8;
          }

          return 1;
        }
      }

      if (v5 == 1)
      {
        goto LABEL_27;
      }

      v13 = a2[8].i64[0];
      if (v13)
      {
        v14 = a2 + 9;
        v15 = &a2[v13 + 9];
        result = 1;
        do
        {
          v16 = 0;
          while (1)
          {
            v17 = vmulq_f32(*v14, v22[v16]);
            if (vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL))) <= 0.0)
            {
              break;
            }

            if (++v16 == 8)
            {
              return 0;
            }
          }

          ++v14;
        }

        while (v14 != v15);
        return result;
      }
    }

    return 1;
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v18, v20);
  __break(1u);
LABEL_27:
  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v5);
  result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v19, v21);
  __break(1u);
  return result;
}

BOOL re::isBoundingSphereIntersectingFrustumPlanes(float32x4_t *a1, void *a2, double a3, double a4, float32x4_t a5)
{
  if (!*a2)
  {
    return 1;
  }

  v5 = *a1;
  LODWORD(v6) = HIDWORD(*a1);
  v7 = a2 + 7;
  v8 = 16 * *a2 - 16;
  do
  {
    a5.i64[0] = *(v7 - 3);
    a5.f32[2] = *(v7 - 1);
    v9 = vmulq_f32(a5, a5);
    a5 = vmulq_f32(v5, a5);
    v10 = *v7;
    v7 += 4;
    a5.f32[0] = (v10 + (a5.f32[2] + vaddv_f32(*a5.f32))) / sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
    result = a5.f32[0] <= v6;
    v12 = a5.f32[0] > v6 || v8 == 0;
    v8 -= 16;
  }

  while (!v12);
  return result;
}

uint64_t re::approxFrustumIntersectFrustum(float32x4_t *a1, float32x4_t *a2)
{
  if (!a1->i64[0] || !a2->i64[0])
  {
    return 1;
  }

  v2 = a1 + 1;
  do
  {
    v3 = 0;
    while (1)
    {
      v4 = vmulq_f32(*v2, a2[v3 + 7]);
      if (vaddv_f32(vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL))) <= 0.0)
      {
        break;
      }

      if (++v3 == 8)
      {
        return 0;
      }
    }

    ++v2;
  }

  while (v2 != &a1[a1->i64[0] + 1]);
  v5 = a1 + 7;
  v6 = a2 + 1;
  do
  {
    v7 = 0;
    while (1)
    {
      v8 = vmulq_f32(*v6, v5[v7]);
      if (vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) <= 0.0)
      {
        break;
      }

      result = 0;
      if (++v7 == 8)
      {
        return result;
      }
    }

    ++v6;
    result = 1;
  }

  while (v6 != &a2[a2->i64[0] + 1]);
  return result;
}

_DWORD *re::setResolvedTechniqueStateOverride(_DWORD *result, re::MaterialParameterTableLayers *this)
{
  v2 = result[15];
  if (v2 != -1)
  {
    v3 = result;
    result = re::MaterialParameterTableLayers::getTechniqueAtIndex(this, v2);
    if (result && *(*result + 2846) == 1)
    {
      *(v3 + 192) = 1;
      v4 = v3[49];
      if ((v4 & 0x1000000) == 0)
      {
        *(v3 + 193) |= 4u;
      }

      if ((v4 & 0x800000) == 0)
      {
        *(v3 + 193) |= 1u;
      }
    }

    if (*(v3 + 161) < 0)
    {
      *(v3 + 192) = 1;
    }
  }

  return result;
}

double re::bucketMeshPart(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v118 = *MEMORY[0x1E69E9840];
  v93 = *(a3 + 32);
  v94 = 0;
  v95 = 0;
  v97 = 0u;
  v98 = 0u;
  v99 = 0;
  v100 = 0x7FFFFFFFLL;
  if (re::s_debugSettingsManager)
  {
    LOBYTE(v105) = 0;
    *&v113 = 0x38C0AA772CC1B274;
    *(&v113 + 1) = "overrides:usepbrlite";
    v7 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, &v113, &v105);
    v8 = v7;
    if (v113)
    {
      if (v113)
      {
      }
    }

    v9 = v105;
    if (v8)
    {
      v9 = 0;
    }

    v87 = v9;
    v10 = a4;
  }

  else
  {
    v10 = a4;
    v87 = 0;
  }

  v11 = 0;
  v102 = vextq_s8(a2[4], a2[4], 8uLL);
  v12 = a2[3].i64[1] + 304;
  v103 = a2[5].i64[1];
  v104 = v12;
  while (1)
  {
    v13 = v102.i64[v11];
    if (v13)
    {
      *&v113 = a2[14].i64[0];
      if (re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v13 + 1032, &v113))
      {
        break;
      }
    }

    if (++v11 == 4)
    {
      v86 = 1;
      goto LABEL_15;
    }
  }

  v86 = 0;
LABEL_15:
  v14 = 0;
  do
  {
    v88 = v14;
    v15 = *(v102.i64 + v14);
    if (!v15)
    {
      goto LABEL_24;
    }

    v16 = re::MaterialParameterTable::passTechniqueHashTable(v15, a2[14].i64[0], v86);
    v17 = *(v16 + 8);
    if (v17)
    {
      v18 = 0;
      v19 = v16[2];
      while (1)
      {
        v20 = *v19;
        v19 += 6;
        if (v20 < 0)
        {
          break;
        }

        if (v17 == ++v18)
        {
          LODWORD(v18) = *(v16 + 8);
          break;
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
    }

    if (v18 == v17)
    {
      goto LABEL_24;
    }

    v21 = v16[2];
    v91 = *(v16 + 8);
    v92 = v16;
    do
    {
      v22 = v21 + 24 * v18;
      if (HIDWORD(v98))
      {
        v23 = *(v22 + 8);
        if (DWORD2(v98))
        {
          for (i = *(*(&v97 + 1) + 4 * (v23 % DWORD2(v98))); i != 0x7FFFFFFF; i = *(v98 + 16 * i) & 0x7FFFFFFF)
          {
            if (*(v98 + 16 * i + 8) == v23)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        if (v94)
        {
          v25 = 8 * v94;
          v26 = v96;
          while (*v26 != *(v22 + 8))
          {
            ++v26;
            v25 -= 8;
            if (!v25)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
LABEL_37:
          v26 = &v96[v94];
        }

        if (v26 != &v96[v94])
        {
          goto LABEL_71;
        }

        v23 = *(v22 + 8);
      }

      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, (v22 + 8), v23, &v113);
      if (HIDWORD(v113) == 0x7FFFFFFF)
      {
        v27 = *(a3 + 32);
        v113 = 0uLL;
        LODWORD(v114) = 1;
        v115 = 0uLL;
        *(&v114 + 1) = 0;
        LODWORD(v116) = 0;
        re::BucketArray<re::MeshPartDrawContext,128ul>::init(&v113, v27, 1uLL);
        DWORD2(v116) = 0;
        v28 = re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v10, (v22 + 8), &v113);
        re::BucketArray<re::MeshPartDrawContext,128ul>::deinit(&v113);
        if (v113 && (v114 & 1) == 0)
        {
          (*(*v113 + 40))(v113, v115);
        }
      }

      else
      {
        v28 = *(v10 + 16) + 80 * HIDWORD(v113) + 16;
      }

      *(a1 + 64) = 0;
      *(a1 + 66) = 0;
      v29 = a2[3].i64[1];
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v29 + 24, (v22 + 16), *(v22 + 16), &v113);
      if (HIDWORD(v113) == 0x7FFFFFFF)
      {
        *(a1 + 60) = -1;
LABEL_60:
        v39 = re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(v28);
        v41 = *(a1 + 16);
        v40 = *(a1 + 32);
        *v39 = *a1;
        v39[1] = v41;
        v39[2] = v40;
        v42 = *(a1 + 96);
        v44 = *(a1 + 48);
        v43 = *(a1 + 64);
        v39[5] = *(a1 + 80);
        v39[6] = v42;
        v39[3] = v44;
        v39[4] = v43;
        v45 = *(a1 + 160);
        v47 = *(a1 + 112);
        v46 = *(a1 + 128);
        v39[9] = *(a1 + 144);
        v39[10] = v45;
        v39[7] = v47;
        v39[8] = v46;
        v48 = *(a1 + 224);
        v50 = *(a1 + 176);
        v49 = *(a1 + 192);
        v39[13] = *(a1 + 208);
        v39[14] = v48;
        v39[11] = v50;
        v39[12] = v49;
        goto LABEL_61;
      }

      v31 = *(v29 + 40) + 48 * HIDWORD(v113);
      v32 = *(v31 + 40);
      if ((v32 & 0x80000000) == 0)
      {
        v33 = *(a1 + 196);
        if ((v33 & 0x400) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = -2;
        }

        if ((v33 & 0x100) != 0)
        {
          v35 = ((v33 >> 9) | 0xFE) + v34;
        }

        else
        {
          v35 = (v33 >> 9) & 3;
        }

        if ((*(a1 + 196) & 0x700) == 0x100)
        {
          v35 = v87;
        }

        v36 = (v35 + v32);
        v37 = *(v31 + 24);
        if (v36 >= (v37 - 1))
        {
          v36 = (v37 - 1);
        }

        v38 = v36 & ~(v36 >> 31);
        if (v37 <= v38)
        {
          v101 = 0;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v113 = 0u;
          v78 = MEMORY[0x1E69E9C10];
          v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v105 = 136315906;
          v106 = "operator[]";
          v107 = 1024;
          if (v79)
          {
            v80 = 3;
          }

          else
          {
            v80 = 2;
          }

          v108 = 476;
          v109 = 2048;
          v110 = v38;
          v111 = 2048;
          v112 = v37;
          _os_log_send_and_compose_impl(v80, &v101, &v113, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v83, v84);
          _os_crash_msg();
          __break(1u);
          goto LABEL_108;
        }

        *(a1 + 60) = *(*(v31 + 32) + 4 * v38);
        re::setResolvedTechniqueStateOverride(a1, a2);
        goto LABEL_60;
      }

      v57 = *(v31 + 24);
      if (v57 < 2)
      {
        if (!v57)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v58 = (*a5)++;
        *(a1 + 64) = v58;
      }

      v59 = 0;
      do
      {
        *(a1 + 60) = *(*(v31 + 32) + 4 * v59);
        *(a1 + 66) = v59;
        re::setResolvedTechniqueStateOverride(a1, a2);
        v60 = re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(v28);
        v62 = *(a1 + 16);
        v61 = *(a1 + 32);
        *v60 = *a1;
        v60[1] = v62;
        v60[2] = v61;
        v63 = *(a1 + 96);
        v65 = *(a1 + 48);
        v64 = *(a1 + 64);
        v60[5] = *(a1 + 80);
        v60[6] = v63;
        v60[3] = v65;
        v60[4] = v64;
        v66 = *(a1 + 160);
        v68 = *(a1 + 112);
        v67 = *(a1 + 128);
        v60[9] = *(a1 + 144);
        v60[10] = v66;
        v60[7] = v68;
        v60[8] = v67;
        v69 = *(a1 + 224);
        v71 = *(a1 + 176);
        v70 = *(a1 + 192);
        v60[13] = *(a1 + 208);
        v60[14] = v69;
        v60[11] = v71;
        v60[12] = v70;
        ++v59;
      }

      while (v59 < *(v31 + 24));
LABEL_61:
      v10 = a4;
      if (HIDWORD(v98))
      {
        goto LABEL_62;
      }

      v51 = *(v22 + 8);
      LODWORD(v17) = v91;
      v16 = v92;
      if (!v94)
      {
        goto LABEL_70;
      }

      v52 = 8 * v94;
      v53 = v96;
      while (*v53 != v51)
      {
        ++v53;
        v52 -= 8;
        if (!v52)
        {
          v53 = &v96[v94];
          break;
        }
      }

      if (v53 != &v96[v94])
      {
        goto LABEL_71;
      }

      if (v94 <= 9)
      {
LABEL_70:
        v96[v94] = v51;
        v54 = v94;
        ++v95;
        if (!__CFADD__(v94++, 1))
        {
          goto LABEL_71;
        }

LABEL_108:
        re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v54, 0);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v81, v82);
        __break(1u);
      }

      v72 = v93;
      if (!v93)
      {
      }

      if (!v97)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v97, v72, 20);
      }

      v73 = v96;
      do
      {
        v74 = *v73;
        if (!DWORD2(v98))
        {
          LODWORD(v75) = 0;
LABEL_98:
          re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addAsCopy(&v97, v75, v74, v73, v73);
          ++HIDWORD(v100);
          goto LABEL_99;
        }

        v75 = v74 % DWORD2(v98);
        v76 = *(*(&v97 + 1) + 4 * v75);
        if (v76 == 0x7FFFFFFF)
        {
          goto LABEL_98;
        }

        while (*(v98 + 16 * v76 + 8) != v74)
        {
          v76 = *(v98 + 16 * v76) & 0x7FFFFFFF;
          if (v76 == 0x7FFFFFFF)
          {
            goto LABEL_98;
          }
        }

LABEL_99:
        ++v73;
      }

      while (v73 != &v96[v94]);
      v94 = 0;
      ++v95;
LABEL_62:
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(&v97, (v22 + 8));
      LODWORD(v17) = v91;
      v16 = v92;
LABEL_71:
      if (*(v16 + 8) <= (v18 + 1))
      {
        v56 = v18 + 1;
      }

      else
      {
        v56 = *(v16 + 8);
      }

      v21 = v16[2];
      while (v56 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(v21 + 24 * v18) & 0x80000000) != 0)
        {
          goto LABEL_79;
        }
      }

      LODWORD(v18) = v56;
LABEL_79:
      ;
    }

    while (v18 != v17);
LABEL_24:
    v14 = v88 + 8;
  }

  while (v88 != 24);
  if (v97)
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&v97);
  }

  return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&v97);
}

unint64_t re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 5)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  return result;
}

unint64_t re::DynamicInlineArray<re::Vector4<float>,8ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 7)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  return result;
}

uint64_t re::DrawCallSortKey<3ul,unsigned long long>::appendUInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x18)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 24, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 23) = a2;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<3ul,unsigned long long>::appendUInt16(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x17)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 2, 24, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 22) = a2;
    *a3 += 2;
  }

  return result;
}

uint64_t re::DrawCallSortKey<3ul,unsigned long long>::appendUInt64(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x11)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 8, 24, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 16) = a2;
    *a3 += 8;
  }

  return result;
}

void *re::DrawCallSortKey<3ul,unsigned long long>::appendBytes(uint64_t a1, uint64_t a2, uint64_t a3, size_t __n, _BYTE *a5)
{
  v11 = a2;
  v5 = *a5;
  if (v5 + __n >= 0x19)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + __n, 24);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v9, v10);
    __break(1u);
  }

  else
  {
    v7 = __n;
    result = memcpy((a1 + (24 - __n - v5)), &v11 + a3, __n);
    *a5 += v7;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(uint64_t result, _BYTE *a2, float a3)
{
  v5 = *a2;
  if (v5 >= 0x1D)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 32, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 28) = ((SLODWORD(a3) >> 31) | 0x80000000) ^ LODWORD(a3);
    *a2 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x20)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 32, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 31) = a2 ^ 0x80;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x1D)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 32, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 28) = a2 ^ 0x80000000;
    *a3 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x20)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 32, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 31) = a2;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendUInt16(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x1F)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 2, 32, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 30) = a2;
    *a3 += 2;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x1D)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 32, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 28) = a2;
    *a3 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendFloat(uint64_t result, _BYTE *a2, float a3)
{
  v5 = *a2;
  if (v5 >= 0x25)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 40, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 36) = ((SLODWORD(a3) >> 31) | 0x80000000) ^ LODWORD(a3);
    *a2 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x28)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 40, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 39) = a2 ^ 0x80;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendInt32(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x25)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 40, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 36) = a2 ^ 0x80000000;
    *a3 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x28)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 40, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 39) = a2;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendUInt16(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x27)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 2, 40, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 38) = a2;
    *a3 += 2;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendUInt32(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x25)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 40, v3, v4);
    result = _os_crash("assertion failure: ((size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)) SortKey trying to use %zu bytes when it only has capacity for %zu.", v6, v7);
    __break(1u);
  }

  else
  {
    *(result - v5 + 36) = a2;
    *a3 += 4;
  }

  return result;
}

void re::OpenSubdivUtils::generateOpenSubdivTesselationBuffers(uint64_t a1, id *a2, int *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v213 = *MEMORY[0x1E69E9840];
  v132 = a4;
  if (a4)
  {
    v7 = a2;
    if (*a2)
    {
      v186 = 0;
      v171 = 0;
      v174 = 0;
      v179 = 0;
      v177 = 0;
      v178 = 0;
      v180 = 0;
      v184 = 0;
      v185 = 0;
      v182 = 0;
      v181 = 0;
      v183 = 0;
      v10 = *re::getOrCreateComputePipelineState(a1, &v169);
      v154 = 0;
      v157 = 0;
      v162 = 0;
      v160 = 0;
      v161 = 0;
      v163 = 0;
      v167 = 0;
      v168 = 0;
      v165 = 0;
      v164 = 0;
      v166 = 0;
      v11 = *re::getOrCreateComputePipelineState(a1, &v152);
      v150 = 0;
      memset(v192, 0, 24);
      v135 = 0;
      *v136 = 0uLL;
      v13 = *&v136[8];
      v14 = (*&v192[1] + 4);
      v15 = a3;
      v16 = v132;
      do
      {
        *(v14 - 1) = 2;
        v17 = *v15;
        v15 += 8;
        *v14 = v17;
        *v13 = v17;
        v13 += 64;
        v14 += 64;
        --v16;
      }

      while (v16);
      *&v210[0] = [*(a1 + 208) newBufferWithBytes_length_options_];
      NS::SharedPtr<MTL::Texture>::operator=(&v150, v210);
      if (*&v210[0])
      {
      }

      if (!v150 || ![v150 contents])
      {
        goto LABEL_13;
      }

      *&v210[0] = [*(a1 + 208) newBufferWithBytes:*&v136[8] length:*v136 options:0];
      NS::SharedPtr<MTL::Texture>::operator=(&v186, v210);
      if (*&v210[0])
      {
      }

      if (v186)
      {
        v18 = [v186 contents] != 0;
      }

      else
      {
LABEL_13:
        v18 = 0;
      }

      if (v135 && *v136)
      {
        (*(*v135 + 40))();
      }

      if (*&v192[0] && *(&v192[0] + 1))
      {
        (*(**&v192[0] + 40))();
      }

      if (v18)
      {
        v113 = v18;
        v114 = v7;
        v19 = [(_anonymous_namespace_ *)v11 threadExecutionWidth];
        v20 = [*(a1 + 208) maxThreadgroupMemoryLength];
        v22 = 0;
        if (v19 * v19 >= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v19 * v19;
        }

        v116 = v23;
        v24 = v19;
        v25 = vcnt_s8(v19);
        v25.i16[0] = vaddlv_u8(v25);
        v115 = v25.u32[0];
        v26 = 0x10000;
        v128 = a3;
        v117 = v11;
        v119 = v10;
        do
        {
          if (v22 == a6)
          {
            re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a6, a6);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v107, v109);
            __break(1u);
LABEL_215:
            re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
            _os_crash("assertion failure: (m_data) Out of memory.");
            __break(1u);
LABEL_216:
            *v203 = 0;
            memset(v193, 0, sizeof(v193));
            memset(v192, 0, sizeof(v192));
            v77 = MEMORY[0x1E69E9C10];
            v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v210[0]) = 136315906;
            *(v210 + 4) = "operator[]";
            WORD6(v210[0]) = 1024;
            if (v78)
            {
              v79 = 3;
            }

            else
            {
              v79 = 2;
            }

            *(v210 + 14) = 468;
            WORD1(v210[1]) = 2048;
            *(&v210[1] + 4) = 0;
            WORD6(v210[1]) = 2048;
            *(&v210[1] + 14) = 0;
            _os_log_send_and_compose_impl(v79, v203, v192, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v210, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_220:
            *v203 = 0;
            memset(v193, 0, sizeof(v193));
            memset(v192, 0, sizeof(v192));
            v80 = MEMORY[0x1E69E9C10];
            v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v210[0]) = 136315906;
            *(v210 + 4) = "operator[]";
            WORD6(v210[0]) = 1024;
            if (v81)
            {
              v82 = 3;
            }

            else
            {
              v82 = 2;
            }

            *(v210 + 14) = 468;
            WORD1(v210[1]) = 2048;
            *(&v210[1] + 4) = 1;
            WORD6(v210[1]) = 2048;
            *(&v210[1] + 14) = v22;
            _os_log_send_and_compose_impl(v82, v203, v192, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v210, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_224:
            *v203 = 0;
            memset(v193, 0, sizeof(v193));
            memset(v192, 0, sizeof(v192));
            v83 = MEMORY[0x1E69E9C10];
            v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v210[0]) = 136315906;
            *(v210 + 4) = "operator[]";
            WORD6(v210[0]) = 1024;
            if (v84)
            {
              v85 = 3;
            }

            else
            {
              v85 = 2;
            }

            *(v210 + 14) = 468;
            WORD1(v210[1]) = 2048;
            *(&v210[1] + 4) = 2;
            WORD6(v210[1]) = 2048;
            *(&v210[1] + 14) = v24;
            _os_log_send_and_compose_impl(v85, v203, v192, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v210, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_228:
            re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a6, a6);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v108, v110);
            __break(1u);
LABEL_229:
            *v203 = 0;
            v211 = 0u;
            v212 = 0u;
            memset(v210, 0, sizeof(v210));
            v86 = MEMORY[0x1E69E9C10];
            v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            if (v87)
            {
              v88 = 3;
            }

            else
            {
              v88 = 2;
            }

            *&v188[14] = 468;
            *&v188[18] = 2048;
            *&v188[20] = 0;
            *&v188[28] = 2048;
            *v189 = 0;
            _os_log_send_and_compose_impl(v88, v203, v210, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v188, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_233:
            *v203 = 0;
            v211 = 0u;
            v212 = 0u;
            memset(v210, 0, sizeof(v210));
            v89 = MEMORY[0x1E69E9C10];
            v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            if (v90)
            {
              v91 = 3;
            }

            else
            {
              v91 = 2;
            }

            *&v188[14] = 468;
            *&v188[18] = 2048;
            *&v188[20] = 1;
            *&v188[28] = 2048;
            *v189 = 1;
            _os_log_send_and_compose_impl(v91, v203, v210, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v188, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_237:
            *v203 = 0;
            v211 = 0u;
            v212 = 0u;
            memset(v210, 0, sizeof(v210));
            v92 = MEMORY[0x1E69E9C10];
            v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            if (v93)
            {
              v94 = 3;
            }

            else
            {
              v94 = 2;
            }

            *&v188[14] = 468;
            *&v188[18] = 2048;
            *&v188[20] = 2;
            *&v188[28] = 2048;
            *v189 = 2;
            _os_log_send_and_compose_impl(v94, v203, v210, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v188, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_241:
            re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
            _os_crash("assertion failure: (!isEmpty()) Array is empty.");
            __break(1u);
LABEL_242:
            v187 = 0;
            v211 = 0u;
            v212 = 0u;
            memset(v210, 0, sizeof(v210));
            v95 = MEMORY[0x1E69E9C10];
            v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v203 = 136315906;
            *&v203[4] = "operator[]";
            v204 = 1024;
            if (v96)
            {
              v97 = 3;
            }

            else
            {
              v97 = 2;
            }

            v205 = 468;
            v206 = 2048;
            v207 = 4;
            v208 = 2048;
            v209 = v6;
            _os_log_send_and_compose_impl(v97, &v187, v210, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_246:
            v187 = 0;
            v211 = 0u;
            v212 = 0u;
            memset(v210, 0, sizeof(v210));
            v98 = MEMORY[0x1E69E9C10];
            v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v203 = 136315906;
            *&v203[4] = "operator[]";
            v204 = 1024;
            if (v99)
            {
              v100 = 3;
            }

            else
            {
              v100 = 2;
            }

            v205 = 468;
            v206 = 2048;
            v207 = 5;
            v208 = 2048;
            v209 = v26;
            _os_log_send_and_compose_impl(v100, &v187, v210, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_250:
            re::internal::assertLog(4, v68, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
            _os_crash("assertion failure: (!isEmpty()) Array is empty.");
            __break(1u);
LABEL_251:
            v187 = 0;
            v211 = 0u;
            v212 = 0u;
            memset(v210, 0, sizeof(v210));
            v101 = MEMORY[0x1E69E9C10];
            v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v203 = 136315906;
            *&v203[4] = "operator[]";
            v204 = 1024;
            if (v102)
            {
              v103 = 3;
            }

            else
            {
              v103 = 2;
            }

            v205 = 468;
            v206 = 2048;
            v207 = 3;
            v208 = 2048;
            v209 = v26;
            _os_log_send_and_compose_impl(v103, &v187, v210, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
LABEL_255:
            v187 = 0;
            v211 = 0u;
            v212 = 0u;
            memset(v210, 0, sizeof(v210));
            v104 = MEMORY[0x1E69E9C10];
            v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v203 = 136315906;
            *&v203[4] = "operator[]";
            v204 = 1024;
            if (v105)
            {
              v106 = 3;
            }

            else
            {
              v106 = 2;
            }

            v205 = 468;
            v206 = 2048;
            v207 = 3;
            v208 = 2048;
            v209 = v26;
            _os_log_send_and_compose_impl(v106, &v187, v210, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v111, v112);
            _os_crash_msg();
            __break(1u);
          }

          v27 = &a3[8 * v22];
          v24 = *v27;
          v28 = (a5 + 24 * v22);
          v28[1] = 6;
          v28[2] = v29;
          if (!v29)
          {
            goto LABEL_215;
          }

          v31 = v29 + 16;
          v32 = 5;
          v130 = (v19 - 1 + v24) / v19;
          do
          {
            *(v31 - 16) = 0;
            *(v31 - 8) = &str_67;
            *v31 = 0x10000;
            *(v31 + 4) = 256;
            *(v31 + 16) = 0uLL;
            *(v31 + 32) = 0uLL;
            *(v31 + 48) = 0;
            v31 += 72;
            --v32;
          }

          while (v32);
          *(v31 - 16) = 0;
          *(v31 - 8) = &str_67;
          *v31 = 0x10000;
          *(v31 + 4) = 256;
          *(v31 + 16) = 0uLL;
          *(v31 + 32) = 0uLL;
          *(v31 + 48) = 0;
          v6 = [*(a1 + 208) newBufferWithLength:12 * *v27 options:0];
          v135 = 0xA6A8C9789D43C186;
          *v136 = "tessellationFactors";
          *&v136[12] = 1;
          *&v136[8] = 2;
          v136[20] = 53;
          *&v136[16] = 0;
          v137 = v6;
          LODWORD(v139) = 0;
          DWORD2(v139) = 0;
          HIDWORD(v139) = [v6 length];
          if (!v28[1])
          {
            goto LABEL_216;
          }

          v33 = v28[2];
          re::StringID::operator=(v33, &v135);
          v34 = *&v136[8];
          *(v33 + 21) = *&v136[13];
          v33[2] = v34;
          v35 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v33 + 4), &v137);
          v33[8] = *(&v139 + 1);
          if (v139 != -1)
          {
            v35 = (off_1F5D0A170[v139])(v192, &v137);
          }

          LODWORD(v139) = -1;
          if (v135)
          {
            if (v135)
            {
            }
          }

          [*&v188[8] setComputePipelineState:v10];
          v125 = v22;
          v36 = v22 << 8;
          [*&v188[8] setBuffer:v150 offset:v22 << 8 atIndex:0];
          [*&v188[8] setBuffer:*(v27 + 1) offset:v27[6] atIndex:1];
          [*&v188[8] setBuffer:v6 offset:0 atIndex:2];
          *&v192[0] = (v19 - 1 + v24) / v19;
          v24 = 1;
          *(v192 + 8) = vdupq_n_s64(1uLL);
          v135 = v19;
          *v136 = *(v192 + 8);
          [*&v188[8] dispatchThreadgroups:v192 threadsPerThreadgroup:&v135];
          v37 = [*(a1 + 208) newBufferWithLength:4 * (*v27 + 1) options:0];
          v135 = 0x1A8D5954F324B0F6;
          *v136 = "tessellationVertexOffsets";
          *&v136[12] = 1;
          *&v136[8] = 4;
          v136[20] = 36;
          *&v136[16] = 0;
          v137 = v37;
          LODWORD(v139) = 0;
          DWORD2(v139) = 0;
          HIDWORD(v139) = [v37 length];
          v22 = v28[1];
          if (v22 <= 1)
          {
            goto LABEL_220;
          }

          v38 = v28[2];
          re::StringID::operator=((v38 + 9), &v135);
          v38[11] = *&v136[8];
          *(v38 + 93) = *&v136[13];
          v39 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v38 + 13), &v137);
          v38[17] = *(&v139 + 1);
          if (v139 != -1)
          {
            v39 = (off_1F5D0A170[v139])(v192, &v137);
          }

          LODWORD(v139) = -1;
          if (v135)
          {
            if (v135)
            {
            }
          }

          v40 = [*(a1 + 208) newBufferWithLength:4 * (*v27 + 1) options:0];
          v135 = 0x10A82A1AFCB1795ELL;
          *v136 = "tessellationIndexOffsets";
          *&v136[12] = 1;
          *&v136[8] = 4;
          v136[20] = 36;
          *&v136[16] = 0;
          v137 = v40;
          LODWORD(v139) = 0;
          DWORD2(v139) = 0;
          HIDWORD(v139) = [v40 length];
          v24 = v28[1];
          if (v24 <= 2)
          {
            goto LABEL_224;
          }

          v41 = v28[2];
          re::StringID::operator=((v41 + 18), &v135);
          v41[20] = *&v136[8];
          *(v41 + 165) = *&v136[13];
          v42 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v41 + 22), &v137);
          v41[26] = *(&v139 + 1);
          if (v139 != -1)
          {
            v42 = (off_1F5D0A170[v139])(v192, &v137);
          }

          LODWORD(v139) = -1;
          v11 = v117;
          v24 = v19;
          if (v135)
          {
            if (v135)
            {
            }
          }

          [*&v188[8] setComputePipelineState:v117];
          [*&v188[8] setBuffer:v186 offset:v36 atIndex:0];
          [*&v188[8] setBuffer:v6 offset:0 atIndex:1];
          [*&v188[8] setBuffer:v37 offset:0 atIndex:2];
          [*&v188[8] setBuffer:v40 offset:0 atIndex:3];
          v43 = v19 - 1 + *v27;
          if (v115 == 1)
          {
            LODWORD(v43) = v43 & -v19;
          }

          else
          {
            v43 = v43 / v19 * v19;
          }

          if (v43 >= v116)
          {
            LODWORD(v43) = v116;
          }

          v44 = 4 * v43;
          [*&v188[8] setThreadgroupMemoryLength:v44 atIndex:0];
          [*&v188[8] setThreadgroupMemoryLength:v44 atIndex:1];
          *&v192[0] = v130;
          *(v192 + 8) = vdupq_n_s64(1uLL);
          v135 = v19;
          *v136 = *(v192 + 8);
          v20 = [*&v188[8] dispatchThreadgroups:v192 threadsPerThreadgroup:&v135];
          if (v40)
          {
          }

          a3 = v128;
          if (v37)
          {
          }

          if (v6)
          {
          }

          v22 = v125 + 1;
          v10 = v119;
        }

        while ((v125 + 1) != v132);
        objc_msgSend_endEncoding(*&v188[8]);
        [*v188 enqueue];
        [*v188 commit];
        [*v188 waitUntilCompleted];
        v7 = v114;
        v18 = v113;
      }

      if (v150)
      {
      }

      if (v11)
      {
      }

      if (v167)
      {

        v167 = 0;
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v160);
      if (v157 == 1 && v158)
      {
        if (BYTE8(v158))
        {
          (*(*v158 + 40))();
        }

        v158 = 0u;
        v159 = 0u;
      }

      if (v154 == 1 && v155)
      {
        if (BYTE8(v155))
        {
          (*(*v155 + 40))();
        }

        v156 = 0u;
        v155 = 0u;
      }

      if (v152 && (v153 & 1) != 0)
      {
        (*(*v152 + 40))();
      }

      if (v10)
      {
      }

      if (v184)
      {

        v184 = 0;
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v177);
      if (v174 == 1 && v175)
      {
        if (BYTE8(v175))
        {
          (*(*v175 + 40))();
        }

        v175 = 0u;
        v176 = 0u;
      }

      if (v171 == 1 && v172)
      {
        if (BYTE8(v172))
        {
          (*(*v172 + 40))();
        }

        v173 = 0u;
        v172 = 0u;
      }

      if (v169 && (v170 & 1) != 0)
      {
        (*(*v169 + 40))();
      }

      if (v18)
      {
        v171 = 0;
        v174 = 0;
        v179 = 0;
        v177 = 0;
        v178 = 0;
        v180 = 0;
        v184 = 0;
        v185 = 0;
        v182 = 0;
        v181 = 0;
        v183 = 0;
        v26 = *re::getOrCreateComputePipelineState(a1, &v169);
        v154 = 0;
        v157 = 0;
        v162 = 0;
        v160 = 0;
        v161 = 0;
        v163 = 0;
        v167 = 0;
        v168 = 0;
        v165 = 0;
        v164 = 0;
        v166 = 0;
        v126 = *re::getOrCreateComputePipelineState(a1, &v152);
        LOBYTE(v193[0]) = 0;
        BYTE8(v193[2]) = 0;
        memset(v196, 0, sizeof(v196));
        v197 = 0;
        v201 = 0;
        v202 = 0;
        v199 = 0;
        v198 = 0;
        v200 = 0;
        v120 = *re::getOrCreateComputePipelineState(a1, v192);
        LOBYTE(v137) = 0;
        v140 = 0;
        memset(v143, 0, sizeof(v143));
        v144 = 0;
        v148 = 0;
        v149 = 0;
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v118 = *re::getOrCreateComputePipelineState(a1, &v135);
        v127 = v26;
        v46 = [v26 threadExecutionWidth];
        v48 = 0;
        v121 = v46 - 1;
        v122 = v46;
        v131 = v46;
        v49 = a6;
        v50 = (a5 + 16);
        do
        {
          if (!v49)
          {
            goto LABEL_228;
          }

          v51 = *(v50 - 1);
          if (!v51)
          {
            goto LABEL_229;
          }

          if (v51 == 1)
          {
            goto LABEL_233;
          }

          if (v51 <= 2)
          {
            goto LABEL_237;
          }

          v52 = *a3;
          v53 = *v50;
          v54 = re::BufferSlice::contents((*v50 + 104));
          v56 = *(v53 + 140);
          if (v56 <= 3)
          {
            goto LABEL_241;
          }

          v129 = a3;
          v26 = *(v54 + (v56 & 0xFFFFFFFC) - 4);
          v57 = [*(a1 + 208) newBufferWithLength:4 * v26 options:0];
          *v188 = 0xD804C91A9F88FEAALL;
          *&v188[8] = "postTessellationVertexPatchIDs";
          *&v188[20] = 1;
          *&v188[16] = 4;
          v188[28] = 36;
          *&v188[24] = 0;
          *&v189[2] = v57;
          v190 = 0;
          LODWORD(v191) = 0;
          HIDWORD(v191) = [v57 length];
          v6 = *(v50 - 1);
          if (v6 <= 4)
          {
            goto LABEL_242;
          }

          v58 = *v50;
          re::StringID::operator=((*v50 + 288), v188);
          v58[38] = *&v188[16];
          *(v58 + 309) = *&v188[21];
          v59 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v58 + 40), &v189[2]);
          v58[44] = v191;
          if (v190 != -1)
          {
            v59 = (off_1F5D0A170[v190])(v210, &v189[2]);
          }

          v190 = -1;
          if (v188[0])
          {
            if (v188[0])
            {
            }
          }

          v60 = (v121 + v52) / v122;
          [v151 setComputePipelineState:v127];
          [v151 setBuffer:v186 offset:v48 atIndex:0];
          re::BufferSlice::buffer(v53 + 32, v61);
          [v151 setBuffer:*(v53 + 32) offset:*(v53 + 64) atIndex:1];
          re::BufferSlice::buffer(v53 + 104, v62);
          [v151 setBuffer:*(v53 + 104) offset:*(v53 + 136) atIndex:2];
          [v151 setBuffer:v57 offset:0 atIndex:3];
          *&v210[0] = v60;
          *(v210 + 8) = vdupq_n_s64(1uLL);
          *v188 = v131;
          *&v188[8] = *(v210 + 8);
          [v151 dispatchThreadgroups:v210 threadsPerThreadgroup:v188];
          v6 = [*(a1 + 208) newBufferWithLength:8 * v26 options:0];
          *v188 = 0x54E6B12B377D1502;
          *&v188[8] = "postTessellationVertexPatchCoords";
          *&v188[20] = 1;
          *&v188[16] = 8;
          v188[28] = 29;
          *&v188[24] = 0;
          *&v189[2] = v6;
          v190 = 0;
          LODWORD(v191) = 0;
          HIDWORD(v191) = [v6 length];
          v26 = *(v50 - 1);
          if (v26 <= 5)
          {
            goto LABEL_246;
          }

          v63 = *v50;
          re::StringID::operator=((*v50 + 360), v188);
          v63[47] = *&v188[16];
          *(v63 + 381) = *&v188[21];
          v64 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v63 + 49), &v189[2]);
          v63[53] = v191;
          if (v190 != -1)
          {
            v64 = (off_1F5D0A170[v190])(v210, &v189[2]);
          }

          v190 = -1;
          v26 = v126;
          if (v188[0])
          {
            if (v188[0])
            {
            }
          }

          [v151 setComputePipelineState:v126];
          [v151 setBuffer:v186 offset:v48 atIndex:0];
          re::BufferSlice::buffer(v53 + 32, v65);
          [v151 setBuffer:*(v53 + 32) offset:*(v53 + 64) atIndex:1];
          re::BufferSlice::buffer(v53 + 104, v66);
          [v151 setBuffer:*(v53 + 104) offset:*(v53 + 136) atIndex:2];
          [v151 setBuffer:v6 offset:0 atIndex:3];
          *&v210[0] = v60;
          *(v210 + 8) = vdupq_n_s64(1uLL);
          *v188 = v131;
          *&v188[8] = *(v210 + 8);
          [v151 dispatchThreadgroups:v210 threadsPerThreadgroup:v188];
          v67 = re::BufferSlice::contents((v53 + 176));
          v69 = *(v53 + 212);
          if (v69 <= 3)
          {
            goto LABEL_250;
          }

          v70 = *(v67 + (v69 & 0xFFFFFFFC) - 4);
          v134 = 0;
          if (v70 > 0xFFFD)
          {
            *&v210[0] = [*(a1 + 208) newBufferWithLength:4 * v70 options:0];
            NS::SharedPtr<MTL::Texture>::operator=(&v134, v210);
            if (*&v210[0])
            {
            }

            *v188 = 0x47F398376BF54D4CLL;
            *&v188[8] = "postTessellationIndices";
            *&v188[20] = 1;
            *&v188[16] = 4;
            v188[28] = 36;
            *&v188[24] = 0;
            *&v189[2] = v134;
            v190 = 0;
            LODWORD(v191) = 0;
            HIDWORD(v191) = [v134 length];
            v26 = *(v50 - 1);
            if (v26 <= 3)
            {
              goto LABEL_251;
            }

            v26 = *v50;
            re::StringID::operator=((*v50 + 216), v188);
            *(v26 + 232) = *&v188[16];
            *(v26 + 237) = *&v188[21];
            v73 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v26 + 248, &v189[2]);
            *(v26 + 280) = v191;
            if (v190 != -1)
            {
              v73 = (off_1F5D0A170[v190])(v210, &v189[2]);
            }

            v190 = -1;
            if (v188[0])
            {
              if (v188[0])
              {
              }
            }

            v72 = v118;
          }

          else
          {
            *&v210[0] = [*(a1 + 208) newBufferWithLength:2 * v70 options:0];
            NS::SharedPtr<MTL::Texture>::operator=(&v134, v210);
            if (*&v210[0])
            {
            }

            *v188 = 0x47F398376BF54D4CLL;
            *&v188[8] = "postTessellationIndices";
            *&v188[20] = 1;
            *&v188[16] = 2;
            v188[28] = 49;
            *&v188[24] = 0;
            *&v189[2] = v134;
            v190 = 0;
            LODWORD(v191) = 0;
            HIDWORD(v191) = [v134 length];
            v26 = *(v50 - 1);
            if (v26 <= 3)
            {
              goto LABEL_255;
            }

            v26 = *v50;
            re::StringID::operator=((*v50 + 216), v188);
            *(v26 + 232) = *&v188[16];
            *(v26 + 237) = *&v188[21];
            v71 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v26 + 248, &v189[2]);
            *(v26 + 280) = v191;
            if (v190 != -1)
            {
              v71 = (off_1F5D0A170[v190])(v210, &v189[2]);
            }

            v190 = -1;
            if (v188[0])
            {
              if (v188[0])
              {
              }
            }

            v72 = v120;
          }

          [v151 setComputePipelineState:v72];
          [v151 setBuffer:v186 offset:v48 atIndex:0];
          re::BufferSlice::buffer(v53 + 32, v74);
          [v151 setBuffer:*(v53 + 32) offset:*(v53 + 64) atIndex:1];
          re::BufferSlice::buffer(v53 + 104, v75);
          [v151 setBuffer:*(v53 + 104) offset:*(v53 + 136) atIndex:2];
          re::BufferSlice::buffer(v53 + 176, v76);
          [v151 setBuffer:*(v53 + 176) offset:*(v53 + 208) atIndex:3];
          [v151 setBuffer:v134 offset:0 atIndex:4];
          *&v210[0] = v60;
          *(v210 + 8) = vdupq_n_s64(1uLL);
          *v188 = v131;
          *&v188[8] = *(v210 + 8);
          [v151 dispatchThreadgroups:v210 threadsPerThreadgroup:v188];
          if (v134)
          {
          }

          if (v6)
          {
          }

          if (v57)
          {
          }

          a3 = v129 + 8;
          v50 += 3;
          v48 += 256;
          --v49;
          --v132;
        }

        while (v132);
        objc_msgSend_endEncoding(v151);
        [v150 enqueue];
        [v150 commit];
        [v150 waitUntilCompleted];
        if (v118)
        {
        }

        if (v148)
        {

          v148 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v143);
        if (v140 == 1 && v141)
        {
          if (BYTE8(v141))
          {
            (*(*v141 + 40))();
          }

          v141 = 0u;
          v142 = 0u;
        }

        if (v137 == 1 && v138)
        {
          if (BYTE8(v138))
          {
            (*(*v138 + 40))();
          }

          v139 = 0u;
          v138 = 0u;
        }

        if (v135 && (v136[0] & 1) != 0)
        {
          (*(*v135 + 40))();
        }

        if (v120)
        {
        }

        if (v201)
        {

          v201 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v196);
        if (BYTE8(v193[2]) == 1 && v194)
        {
          if (BYTE8(v194))
          {
            (*(*v194 + 40))();
          }

          v194 = 0u;
          v195 = 0u;
        }

        if (LOBYTE(v193[0]) == 1 && *(&v193[0] + 1))
        {
          if (v193[1])
          {
            (*(**(&v193[0] + 1) + 40))();
          }

          memset(v193 + 8, 0, 32);
        }

        if (*&v192[0] && (BYTE8(v192[0]) & 1) != 0)
        {
          (*(**&v192[0] + 40))();
        }

        if (v126)
        {
        }

        if (v167)
        {

          v167 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v160);
        if (v157 == 1 && v158)
        {
          if (BYTE8(v158))
          {
            (*(*v158 + 40))();
          }

          v158 = 0u;
          v159 = 0u;
        }

        if (v154 == 1 && v155)
        {
          if (BYTE8(v155))
          {
            (*(*v155 + 40))();
          }

          v156 = 0u;
          v155 = 0u;
        }

        if (v152 && (v153 & 1) != 0)
        {
          (*(*v152 + 40))();
        }

        if (v127)
        {
        }

        if (v184)
        {

          v184 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v177);
        if (v174 == 1 && v175)
        {
          if (BYTE8(v175))
          {
            (*(*v175 + 40))();
          }

          v175 = 0u;
          v176 = 0u;
        }

        if (v171 == 1 && v172)
        {
          if (BYTE8(v172))
          {
            (*(*v172 + 40))();
          }

          v173 = 0u;
          v172 = 0u;
        }

        if (v169 && (v170 & 1) != 0)
        {
          (*(*v169 + 40))();
        }
      }

      if (v186)
      {
      }
    }
  }
}

id *re::anonymous namespace::TessellationCommandBuffers::TessellationCommandBuffers(id *this, id *a2)
{
  *this = 0;
  this[1] = 0;
  re::mtl::CommandQueue::makeCommandBuffer(&v11, a2);
  if (&v11 != this)
  {
    v3 = v11;
    v11 = 0;
    v4 = *this;
    *this = v3;
  }

  if ((atomic_load_explicit(&qword_1EE1BBE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBE80))
  {
    v10 = re::ns::String::String(&_MergedGlobals_480, "OpenSubDiv Tessellation Upload Buffer");
    __cxa_guard_release(v10 + 1);
  }

  v5 = _MergedGlobals_480;
  v6 = this + 1;
  [*this setLabel:v5];

  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v11, this);
  if (this + 1 != &v11)
  {
    v7 = v11;
    v11 = 0;
    v8 = *v6;
    *v6 = v7;
  }

  return this;
}

uint64_t re::OpenSubdivViewIndependentComputeStep::init(uint64_t result, uint64_t a2)
{
  if ((*(result + 8) & 1) == 0)
  {
    v3 = result;
    *(result + 8) = 1;
    v4 = *(a2 + 16);
    *(result + 16) = *(v4 + 32);
    if (*(v4 + 208))
    {
      if (*(v4 + 310) == 1)
      {
        v11 = 0;
        v14 = 0;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v20 = 0;
        v24 = 0;
        v25 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        ComputePipelineState = re::getOrCreateComputePipelineState(*(a2 + 16), &v9);
        NS::SharedPtr<MTL::Buffer>::operator=((v3 + 24), ComputePipelineState);
        if (v24)
        {

          v24 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v17);
        if (v14 == 1 && v15)
        {
          if (BYTE8(v15))
          {
            (*(*v15 + 40))();
          }

          v15 = 0u;
          v16 = 0u;
        }

        if (v11 == 1 && v12)
        {
          if (BYTE8(v12))
          {
            (*(*v12 + 40))();
          }

          v13 = 0u;
          v12 = 0u;
        }

        v6 = v9;
        if (v9 && (v10 & 1) != 0)
        {
          v6 = (*(*v9 + 40))();
        }

        v11 = 0;
        v14 = 0;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v20 = 0;
        v24 = 0;
        v25 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v7 = re::getOrCreateComputePipelineState(*(a2 + 16), &v9);
        NS::SharedPtr<MTL::Buffer>::operator=((v3 + 32), v7);
        if (v24)
        {

          v24 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v17);
        if (v14 == 1 && v15)
        {
          if (BYTE8(v15))
          {
            (*(*v15 + 40))();
          }

          v15 = 0u;
          v16 = 0u;
        }

        if (v11 == 1 && v12)
        {
          if (BYTE8(v12))
          {
            (*(*v12 + 40))();
          }

          v13 = 0u;
          v12 = 0u;
        }

        result = v9;
        if (v9 && (v10 & 1) != 0)
        {
          result = (*(*v9 + 40))();
        }

        v8 = *(v3 + 32);
        if (v8)
        {
          LOBYTE(v8) = *(v3 + 24) != 0;
        }

        *(v3 + 9) = v8;
      }
    }
  }

  return result;
}

uint64_t re::OpenSubdivViewIndependentComputeStep::addDeformationInstance@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = 3;
  if (*(result + 8) == 1)
  {
    if (*(result + 9))
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }
  }

  *a3 = 0xFFFFFFFFLL;
  *(a3 + 8) = xmmword_1E30FBEE0;
  v4 = *a2;
  if (v4 == 255)
  {
    v5 = *(a2 + 2);
    LOBYTE(v4) = 3;
    if (v5)
    {
      if (*(v5 + 208))
      {
        LOBYTE(v4) = v3;
      }

      else
      {
        LOBYTE(v4) = 3;
      }
    }
  }

  *(a3 + 24) = v4;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

uint64_t re::OpenSubdivViewIndependentComputeStep::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, unsigned int a4, uint64_t *a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v46 = *a5;
  v8 = *(*a5 + 48);
  re::globalAllocators(a1);
  v9 = (*(*a2 + 32))(a2, 24, 8);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(v9, a2, v8);
  v11 = re::globalAllocators(v10)[2];
  *&v56 = &unk_1F5D0A190;
  *(&v57 + 1) = v11;
  *&v58 = &v56;
  v12 = (*(*a2 + 16))(a2, v9, &v56);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v56);
  v42 = v8;
  if (v8)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v46 + 8, v14);
      v16 = *(v15 + 8);
      v17 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v16);
      v19 = a5[6];
      if (v19 <= v16)
      {
        break;
      }

      v20 = v17;
      v21 = a5[5];
      v22 = re::DataArray<re::MeshModel>::get(*(a1 + 2) + 8, *(*(v17 + 368) + 16));
      v5 = *(v20 + 392);
      v8 = *(v22 + 56);
      if (v8 <= v5)
      {
        goto LABEL_9;
      }

      v23 = v21 + 312 * v16;
      v24 = *(v22 + 64);
      LOBYTE(v56) = 9;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 9u);
      v25 = *(*(v23 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v23 + 56), &v56) + 20) >> 2;
      v5 = *(v24 + 544 * v5 + 512);
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v56, a3, 8uLL, 4uLL);
      v26 = v56;
      v27 = v57;
      *(v56 + DWORD2(v56)) = v5 | (v25 << 32);
      v8 = *(v12 + 8);
      if (v8 <= v14)
      {
        goto LABEL_13;
      }

      v28 = *(v12 + 16) + v13;
      *v28 = v26;
      *(v28 + 16) = v27;
      v29 = *(v20 + 360);
      v30 = a5[2];
      v31 = *(v15 + 16);
      WORD2(v56) = 1025;
      LODWORD(v56) = 65548;
      BYTE12(v56) = 30;
      DWORD2(v56) = 0;
      re::DeformationVertexBufferState::allocAndSetOutputBuffer(v23, v29, v30, v31, 12 * (v25 + v5), 13, a4, &v56);
      ++v14;
      v13 += 24;
      if (v42 == v14)
      {
        return v12;
      }
    }

    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v16, v19);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v38, v39);
    __break(1u);
LABEL_9:
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v51 = 476;
    v52 = 2048;
    v53 = v5;
    v54 = 2048;
    v55 = v8;
    _os_log_send_and_compose_impl(v34, &v47, &v56, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v51 = 468;
    v52 = 2048;
    v53 = v14;
    v54 = 2048;
    v55 = v8;
    _os_log_send_and_compose_impl(v37, &v47, &v56, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
  }

  return v12;
}

uint64_t re::DeformationVertexBufferState::allocAndSetOutputBuffer(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v14 = re::DeformationBufferAllocator::alloc(a2, a3, a6, *a8, a8[1], a4, a5);
  v15 = a2[1];
  if (v15 <= a4)
  {
    v21 = 0;
    memset(v30, 0, sizeof(v30));
    v18 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 476;
    v26 = 2048;
    v27 = a4;
    v28 = 2048;
    v29 = v15;
    _os_log_send_and_compose_impl(v19, &v21, v30, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v16 = (re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a2[2] + 72 * a4 + 16, v14) + 24);

  return re::DeformationVertexBufferState::setOutputBuffer(a1, a6, a7, v16, a8);
}

uint64_t re::OpenSubdivViewIndependentComputeStep::deformGPU(uint64_t a1, unint64_t a2, void **a3, uint64_t *a4)
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  v9 = [*(a1 + 24) maxTotalThreadsPerThreadgroup];
  v65 = v8;
  v10 = *(v8 + 48);
  re::mtl::ComputeCommandEncoder::pushDebugGroup(a3, "OpenSubdivViewIndependentComputeStep - copy positions");
  v64 = v10;
  if (v10)
  {
    v11 = v9;
    v12 = 0;
    v13 = 0;
    v60 = v11 - 1;
    v61 = v11;
    v62 = a1;
    v59 = v11;
    v63 = a2;
    while (1)
    {
      v14 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v65 + 8, v13);
      v16 = *(a2 + 8);
      if (v16 <= v13)
      {
        break;
      }

      v4 = *(v14 + 8);
      v17 = a4[6];
      if (v17 <= v4)
      {
        goto LABEL_22;
      }

      v18 = *(a2 + 16);
      v19 = a4[5];
      v20 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v4);
      if (*(v18 + v12 + 12))
      {
        v21 = v20;
        v22 = re::DataArray<re::MeshModel>::get(v62[2] + 8, *(*(v20 + 368) + 16));
        v16 = *(v21 + 392);
        a2 = *(v22 + 56);
        if (a2 <= v16)
        {
          goto LABEL_28;
        }

        v23 = (v19 + 312 * v4);
        v24 = *(v22 + 64);
        LOBYTE(v71[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
        v25 = v23[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 7, v71);
        LOBYTE(v71[0]) = 13;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 0xDu);
        v4 = v23[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 23, v71);
        v26 = (*(v24 + 544 * v16 + 512) + v60) / v61;
        [*a3 setComputePipelineState:v62[3]];
        [*a3 setBuffer:*(v18 + v12 + 16) offset:*(v18 + v12 + 8) atIndex:0];
        [*a3 setBuffer:*(v25 + 24) offset:*(v25 + 16) atIndex:1];
        [*a3 setBuffer:*(v4 + 24) offset:*(v4 + 16) atIndex:2];
        v27 = *a3;
        *&v71[0] = v26;
        *(v71 + 8) = vdupq_n_s64(1uLL);
        *v68 = v59;
        *&v68[8] = *(v71 + 8);
        [v27 dispatchThreadgroups:v71 threadsPerThreadgroup:v68];
        a2 = v63;
      }

      ++v13;
      v12 += 24;
      if (v64 == v13)
      {
        [*a3 popDebugGroup];
        re::mtl::ComputeCommandEncoder::pushDebugGroup(a3, "OpenSubdivViewIndependentComputeStep - apply stencils");
        v28 = 0;
        v13 = 0;
        while (1)
        {
          v29 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v65 + 8, v13);
          v16 = *(a2 + 8);
          if (v16 <= v13)
          {
            break;
          }

          v4 = *(v29 + 8);
          v31 = a4[6];
          if (v31 <= v4)
          {
            goto LABEL_27;
          }

          v32 = *(a2 + 16);
          v33 = a4[5];
          re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v4);
          v34 = v32 + v28;
          if (*(v32 + v28 + 12))
          {
            v35 = (v33 + 312 * v4);
            LOBYTE(v71[0]) = 1;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 1u);
            v36 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v71);
            LOBYTE(v71[0]) = 12;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 0xCu);
            v58 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v71);
            LOBYTE(v71[0]) = 9;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 9u);
            v37 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v71);
            LOBYTE(v71[0]) = 10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 0xAu);
            v38 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v71);
            LOBYTE(v71[0]) = 11;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 0xBu);
            v39 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v71);
            LOBYTE(v71[0]) = 13;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 0xDu);
            v40 = v35[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 23, v71);
            v4 = (v60 + (*(v37 + 20) >> 2)) / v61;
            [*a3 setComputePipelineState:v62[4]];
            [*a3 setBuffer:*(v34 + 16) offset:*(v34 + 8) atIndex:0];
            [*a3 setBuffer:*(v36 + 24) offset:*(v36 + 16) atIndex:1];
            [*a3 setBuffer:*(v37 + 24) offset:*(v37 + 16) atIndex:2];
            [*a3 setBuffer:*(v38 + 24) offset:*(v38 + 16) atIndex:3];
            [*a3 setBuffer:*(v58 + 24) offset:*(v58 + 16) atIndex:4];
            [*a3 setBuffer:*(v39 + 24) offset:*(v39 + 16) atIndex:5];
            [*a3 setBuffer:*(v40 + 24) offset:*(v40 + 16) atIndex:6];
            v41 = *a3;
            *&v71[0] = v4;
            *(v71 + 8) = vdupq_n_s64(1uLL);
            *v68 = v59;
            *&v68[8] = *(v71 + 8);
            [v41 dispatchThreadgroups:v71 threadsPerThreadgroup:v68];
          }

          ++v13;
          v28 += 24;
          a2 = v63;
          if (v64 == v13)
          {
            return [*a3 popDebugGroup];
          }
        }

LABEL_23:
        v67 = 0;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        memset(v71, 0, sizeof(v71));
        v46 = MEMORY[0x1E69E9C10];
        v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v68 = 136315906;
        *&v68[4] = "operator[]";
        *&v68[12] = 1024;
        if (v47)
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }

        *&v68[14] = 468;
        *&v68[18] = 2048;
        *&v68[20] = v13;
        v69 = 2048;
        v70 = v16;
        _os_log_send_and_compose_impl(v48, &v67, v71, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
LABEL_27:
        re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v4, v31);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v55);
        __break(1u);
LABEL_28:
        v67 = 0;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        memset(v71, 0, sizeof(v71));
        v49 = MEMORY[0x1E69E9C10];
        v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v68 = 136315906;
        *&v68[4] = "operator[]";
        *&v68[12] = 1024;
        if (v50)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        *&v68[14] = 476;
        *&v68[18] = 2048;
        *&v68[20] = v16;
        v69 = 2048;
        v70 = a2;
        _os_log_send_and_compose_impl(v51, &v67, v71, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
      }
    }

    v67 = 0;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    memset(v71, 0, sizeof(v71));
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v68 = 136315906;
    *&v68[4] = "operator[]";
    *&v68[12] = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    *&v68[14] = 468;
    *&v68[18] = 2048;
    *&v68[20] = v13;
    v69 = 2048;
    v70 = v16;
    _os_log_send_and_compose_impl(v45, &v67, v71, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v56, v57);
    _os_crash_msg();
    __break(1u);
LABEL_22:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v4, v17);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v52, v54);
    __break(1u);
    goto LABEL_23;
  }

  [*a3 popDebugGroup];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(a3, "OpenSubdivViewIndependentComputeStep - apply stencils");
  return [*a3 popDebugGroup];
}

uint64_t re::OpenSubdivViewDependentComputeStep::init(uint64_t result, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(result + 8))
  {
    return result;
  }

  v2 = result;
  *(result + 8) = 1;
  v3 = *(a2 + 16);
  *(result + 16) = *(v3 + 32);
  if (!*(v3 + 208) || *(v3 + 310) != 1)
  {
    return result;
  }

  v26 = 0;
  v29 = 0;
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  v34 = 0;
  v38 = 0;
  v39 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  memset(v53, 0, sizeof(v53));
  re::DynamicString::setCapacity(v53, 0);
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 1048629;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v32, v53);
  memset(v47, 0, sizeof(v47));
  re::DynamicString::setCapacity(v47, 0);
  v49 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  LOBYTE(v49) = 1;
  v48 = 10289205;
  v6 = v33;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v32, v47);
  memset(v41, 0, sizeof(v41));
  v8 = re::DynamicString::setCapacity(v41, 0);
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  LOBYTE(v43) = v9 != 2;
  v42 = 11534389;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v32, v41);
  ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v24);
  NS::SharedPtr<MTL::Buffer>::operator=(v2 + 3, ComputePipelineState);
  v11 = v33;
  if (v33 <= v6)
  {
    v40 = 0;
    memset(v67, 0, sizeof(v67));
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = v6;
    v65 = 2048;
    v66 = v11;
    _os_log_send_and_compose_impl(v23, &v40, v67, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v24, v25);
    _os_crash_msg();
    __break(1u);
  }

  v12 = v35 + 104 * v6;
  *(v12 + 84) = 0u;
  *(v12 + 68) = 0u;
  *(v12 + 52) = 0u;
  *(v12 + 36) = 0u;
  v13 = re::getOrCreateComputePipelineState(v3, &v24);
  v14 = NS::SharedPtr<MTL::Buffer>::operator=(v2 + 4, v13);
  if (v15 == 2)
  {
    v16 = "outputOpenSubdivPostTessellationVertices";
    v17 = 5;
  }

  else
  {
    {
      goto LABEL_10;
    }

    *&v67[0] = "outputUniformPostTessellationVertices";
    *(&v67[0] + 1) = 37;
    re::DynamicString::operator=(&v24, v67);
    v18 = re::getOrCreateComputePipelineState(v3, &v24);
    NS::SharedPtr<MTL::Buffer>::operator=(v2 + 5, v18);
    v16 = "outputUniformPostTessellationIndices";
    v17 = 6;
  }

  v19 = strlen(v16);
  *&v67[0] = v16;
  *(&v67[0] + 1) = v19;
  re::DynamicString::operator=(&v24, v67);
  v20 = re::getOrCreateComputePipelineState(v3, &v24);
  NS::SharedPtr<MTL::Buffer>::operator=(&v2[v17], v20);
LABEL_10:
  if (*&v41[0] && (BYTE8(v41[0]) & 1) != 0)
  {
    (*(**&v41[0] + 40))();
  }

  if (*&v47[0] && (BYTE8(v47[0]) & 1) != 0)
  {
    (*(**&v47[0] + 40))();
  }

  if (*&v53[0] && (BYTE8(v53[0]) & 1) != 0)
  {
    (*(**&v53[0] + 40))();
  }

  if (v38)
  {

    v38 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v32);
  if (v29 == 1 && v30)
  {
    if (BYTE8(v30))
    {
      (*(*v30 + 40))();
    }

    v30 = 0u;
    v31 = 0u;
  }

  if (v26 == 1 && v27)
  {
    if (BYTE8(v27))
    {
      (*(*v27 + 40))();
    }

    v28 = 0u;
    v27 = 0u;
  }

  result = v24;
  if (v24)
  {
    if (v25)
    {
      return (*(*v24 + 40))();
    }
  }

  return result;
}

uint64_t re::OpenSubdivViewDependentComputeStep::addDeformationInstance@<X0>(re::_anonymous_namespace_ *a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>)
{
  {
    v7 = 1048607;
  }

  else
  {
    v7 = 0;
  }

  v9 = 508032;
  if (result == 2)
  {
    v9 = 507904;
  }

  *a3 = 0xFFFFFFFFLL;
  *(a3 + 8) = 8512;
  *(a3 + 16) = v9 | v7;
  v10 = *a2;
  if (v10 == 255)
  {
    v11 = *(a2 + 2);
    LOBYTE(v10) = 3;
    if (v11)
    {
      v12 = *(v11 + 208);
      if (*(a1 + 3))
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        LOBYTE(v10) = 3;
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }
  }

  *(a3 + 24) = v10;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

uint64_t re::OpenSubdivViewDependentComputeStep::allocateBuffers(re *a1, unint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, uint64_t *a5)
{
  v129 = *MEMORY[0x1E69E9840];
  v104 = *a5;
  v105 = *(*a5 + 48);
  if (v105)
  {
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3] + 272 * (v9 - 1);
      if ((*(v10 + 112) & 1) == 0)
      {
        re::Projection::cullingProjectionMatrix(&v124, (v10 + 32));
      }
    }

    re::globalAllocators(a1);
    v11 = (*(*a2 + 32))(a2, 24, 8);
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(v11, a2, 2 * v105);
    v13 = re::globalAllocators(v12)[2];
    *&v124 = &unk_1F5D0A1E8;
    *(&v125 + 1) = v13;
    *&v126 = &v124;
    v109 = (*(*a2 + 16))(a2, v11, &v124);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v124);
    v14 = 0;
    v15 = 2;
    while (1)
    {
      v110 = v14;
      v16 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v104 + 8, v14);
      v17 = *(v16 + 8);
      v18 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v17);
      v20 = a5[6];
      if (v20 <= v17)
      {
        re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v20);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v93, v96);
        __break(1u);
LABEL_60:
        v118 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v78 = MEMORY[0x1E69E9C10];
        v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        *&v120[12] = 1024;
        if (v79)
        {
          v80 = 3;
        }

        else
        {
          v80 = 2;
        }

        *&v120[14] = 476;
        *&v120[18] = 2048;
        v121 = a2;
        v122 = 2048;
        v123 = v5;
        _os_log_send_and_compose_impl(v80, &v118, &v124, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v99, v100);
        _os_crash_msg();
        __break(1u);
LABEL_64:
        v118 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v81 = MEMORY[0x1E69E9C10];
        v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        *&v120[12] = 1024;
        if (v82)
        {
          v83 = 3;
        }

        else
        {
          v83 = 2;
        }

        *&v120[14] = 468;
        *&v120[18] = 2048;
        v121 = v15;
        v122 = 2048;
        v123 = a2;
        _os_log_send_and_compose_impl(v83, &v118, &v124, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v99, v100);
        _os_crash_msg();
        __break(1u);
LABEL_68:
        v118 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v84 = MEMORY[0x1E69E9C10];
        v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        *&v120[12] = 1024;
        if (v85)
        {
          v86 = 3;
        }

        else
        {
          v86 = 2;
        }

        *&v120[14] = 476;
        *&v120[18] = 2048;
        v121 = v5;
        v122 = 2048;
        v123 = v17;
        _os_log_send_and_compose_impl(v86, &v118, &v124, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v99, v100);
        _os_crash_msg();
        __break(1u);
LABEL_72:
        re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v41, v40);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v94, v97);
        __break(1u);
LABEL_73:
        re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v46, v45);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v95, v98);
        __break(1u);
LABEL_74:
        re::internal::assertLog(4, v48, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
        _os_crash("assertion failure: (!isEmpty()) Array is empty.");
        __break(1u);
LABEL_75:
        v118 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v87 = MEMORY[0x1E69E9C10];
        v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        *&v120[12] = 1024;
        if (v88)
        {
          v89 = 3;
        }

        else
        {
          v89 = 2;
        }

        *&v120[14] = 468;
        *&v120[18] = 2048;
        v121 = v17;
        v122 = 2048;
        v123 = v5;
        _os_log_send_and_compose_impl(v89, &v118, &v124, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v99, v100);
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v111 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v90 = MEMORY[0x1E69E9C10];
        v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        *&v120[12] = 1024;
        if (v91)
        {
          v92 = 3;
        }

        else
        {
          v92 = 2;
        }

        *&v120[14] = 468;
        *&v120[18] = 2048;
        v121 = v17;
        v122 = 2048;
        v123 = v5;
        _os_log_send_and_compose_impl(v92, &v111, &v124, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v99, v100);
        _os_crash_msg();
        __break(1u);
LABEL_83:
        std::__throw_bad_variant_access[abi:nn200100]();
      }

      v21 = v18;
      v22 = a5[5];
      v23 = re::DataArray<re::MeshModel>::get(*(a1 + 2) + 8, *(*(v18 + 368) + 16));
      a2 = *(v21 + 392);
      v5 = *(v23 + 56);
      if (v5 <= a2)
      {
        goto LABEL_60;
      }

      v24 = v22 + 312 * v17;
      v5 = *(v23 + 64) + 544 * *(v21 + 392);
      v25 = v5;
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25 && !v26[8]);
      *&v124 = 0x23F9CC1BB5FAA6A6;
      v27 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v26 + 5, &v124);
      v28 = v27 == -1 ? 0 : (v26[6] + 16 * v27 + 8);
      v29 = v5;
      do
      {
        v30 = v29;
        v29 = *v29;
      }

      while (v29 && !v30[8]);
      *&v124 = 0xD46ACAA7992587BLL;
      v31 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v30 + 5, &v124);
      v32 = v31 == -1 ? 0 : v30[6] + 16 * v31 + 8;
      {
        break;
      }

      if (v28 && v32)
      {
        v101 = v32;
        v34 = *(v21 + 360);
        v35 = *(v16 + 16);
        v106 = v5;
        v36 = v5;
        do
        {
          v37 = v36;
          v36 = *v36;
          v17 = v37[3];
          if (v36)
          {
            v38 = v17 == 0;
          }

          else
          {
            v38 = 0;
          }
        }

        while (v38);
        v5 = *v28;
        if (v17 <= v5)
        {
          goto LABEL_68;
        }

        v17 = v37[4];
        v39 = re::AttributeTable::buffers(v106);
        v41 = *v28;
        if (v40 <= v41)
        {
          goto LABEL_72;
        }

        v42 = v39 + 24 * *v28;
        v117 = *v42;
        v43 = *(v42 + 4);
        LODWORD(v42) = *(v42 + 5);
        *v120 = v117;
        *&v120[16] = v43;
        LODWORD(v121) = v42;
        *&v124 = 0;
        DWORD2(v125) = 0;
        *&v126 = __PAIR64__(v42, v43);
        v118 = &v124;
        v119 = &v124;
        if (DWORD2(v117) == -1)
        {
          goto LABEL_83;
        }

        v114 = &v118;
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSliceC1ENS6_10BufferViewEmmE3__0ZNS9_C1ESA_mmE3__1EEEEEJRNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[DWORD2(v117)])(&v114, v120);
        re::DeformationBufferAllocator::allocWithExistingBuffer(v34, 0, *(v17 + 16 * v5), *(v17 + 16 * v5 + 8), v35, &v124);
        re::DeformationVertexBufferState::setOutputBuffer(v24, 0, 1, &v124, v17 + 16 * v5);
        if (DWORD2(v125) != -1)
        {
          (off_1F5D0A170[DWORD2(v125)])(v120, &v124);
        }

        v44 = re::AttributeTable::buffers(v106);
        v46 = *v101;
        if (v45 <= v46)
        {
          goto LABEL_73;
        }

        v17 = v44 + 24 * *v101;
        v47 = re::BufferView::contents(v17);
        v49 = *(v17 + 20);
        if (v49 <= 3)
        {
          goto LABEL_74;
        }

        v50 = *(v47 + (v49 & 0xFFFFFFFC) - 4);
        v51 = *(v106 + 129);
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v124, a3, 8uLL, 4uLL);
        v52 = v124;
        v53 = v125;
        *(v124 + DWORD2(v124)) = v51 | (v50 << 32);
        v17 = (2 * v110) | 1;
        v5 = *(v109 + 8);
        if (v5 <= v17)
        {
          goto LABEL_75;
        }

        v54 = 0;
        v55 = *(v109 + 16) + 24 * v17;
        *v55 = v52;
        *(v55 + 16) = v53;
        WORD2(v124) = 257;
        LODWORD(v124) = 65548;
        BYTE12(v124) = 30;
        DWORD2(v124) = 0;
        do
        {
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 12 * v50, re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::kVertexBufferIDs[v54++], a4, &v124);
        }

        while (v54 != 4);
        *&v120[4] = 257;
        *v120 = 65544;
        v120[12] = 29;
        *&v120[8] = 0;
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 8 * v50, 20, a4, v120);
        v5 = v106;
        v15 = 2 * v110;
        goto LABEL_40;
      }

      a2 = 257;
      WORD2(v124) = 257;
      LODWORD(v124) = 65548;
      BYTE12(v124) = 30;
      DWORD2(v124) = 0;
      v69 = *(v5 + 456);
      *&v120[2] = 0x10000;
      if (v69)
      {
        v70 = 36;
      }

      else
      {
        v70 = 49;
      }

      *v120 = re::sizeFromVertexFormat(v70, v33);
      v120[12] = v70;
      *&v120[8] = 0;
      WORD2(v118) = 257;
      LODWORD(v118) = 65544;
      BYTE4(v119) = 29;
      LODWORD(v119) = 0;
      LOBYTE(v117) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 1u);
      v71 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v117);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 1, 1, *(v24 + 64) + 32 * v71 + 8, &v124);
      LOBYTE(v117) = 2;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 2u);
      v72 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v117);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 2, 1, *(v24 + 64) + 32 * v72 + 8, &v124);
      LOBYTE(v117) = 3;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 3u);
      v73 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v117);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 3, 1, *(v24 + 64) + 32 * v73 + 8, &v124);
      LOBYTE(v117) = 4;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 4u);
      v74 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v117);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 4, 1, *(v24 + 64) + 32 * v74 + 8, &v124);
      LOBYTE(v117) = 0;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 0);
      v75 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v117);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 0, 1, *(v24 + 64) + 32 * v75 + 8, v120);
      LOBYTE(v117) = 20;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 0x14u);
      v76 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v117);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 20, 1, *(v24 + 64) + 32 * v76 + 8, &v118);
LABEL_55:
      v14 = v110 + 1;
      if (v110 + 1 == v105)
      {
        return v109;
      }
    }

    v15 = 2 * v110;
LABEL_40:
    v56 = v5;
    v5 = *(v5 + 516);
    v17 = (16 * v5);
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v124, a3, 0xD0uLL, 0x10uLL);
    v57 = v124;
    v58 = v125;
    v59 = v124 + DWORD2(v124);
    *v59 = xmmword_1E3047670;
    *(v59 + 16) = xmmword_1E3047680;
    *(v59 + 32) = xmmword_1E30476A0;
    *(v59 + 48) = xmmword_1E30474D0;
    *(v59 + 64) = xmmword_1E3047670;
    *(v59 + 80) = xmmword_1E3047680;
    *(v59 + 96) = xmmword_1E30476A0;
    *(v59 + 112) = xmmword_1E30474D0;
    *(v59 + 128) = xmmword_1E3047670;
    *(v59 + 144) = xmmword_1E3047680;
    *(v59 + 160) = xmmword_1E30476A0;
    *(v59 + 176) = xmmword_1E30474D0;
    *(v59 + 192) = v17;
    *(v59 + 196) = 2;
    a2 = *(v109 + 8);
    if (a2 <= v15)
    {
      goto LABEL_64;
    }

    v60 = 0;
    v107 = 6 * v5;
    v5 = (4 * v5);
    v102 = v15;
    v61 = *(v109 + 16) + 24 * v15;
    *v61 = v57;
    *(v61 + 16) = v58;
    WORD2(v118) = 1025;
    LODWORD(v118) = 65548;
    BYTE4(v119) = 30;
    LODWORD(v119) = 0;
    v62 = 12 * v17;
    do
    {
      re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), v62, re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::kControlPointVIDs[v60++], a4, &v118);
    }

    while (v60 != 3);
    a2 = 0;
    WORD2(v117) = 769;
    LODWORD(v117) = 65552;
    BYTE12(v117) = 31;
    DWORD2(v117) = 0;
    do
    {
      v63 = re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 4 * v5, re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::kTesselationHiLoVIDs[a2++], a4, &v117);
    }

    while (a2 != 2);
    v15 = 2;
    {
      WORD2(v114) = 769;
      LODWORD(v114) = 65548;
      v116 = 30;
      v115 = 0;
      v64 = re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 2 * v107, 7, a4, &v114);
      {
        a2 = *(v56 + 516);
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v124, a3, 8uLL, 4uLL);
        v65 = v124;
        v66 = v125;
        *(v124 + DWORD2(v124)) = a2 | ((25 * a2) << 32);
        v17 = v102 | 1;
        v5 = *(v109 + 8);
        if (v5 <= (v102 | 1))
        {
          goto LABEL_79;
        }

        v67 = *(v109 + 16) + 24 * v17;
        *v67 = v65;
        *(v67 + 16) = v66;
        v68 = *(v56 + 516);
        WORD2(v124) = 1;
        LODWORD(v124) = 2;
        BYTE12(v124) = 49;
        DWORD2(v124) = 0;
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 192 * v68, 0, a4, &v124);
        v5 = 0;
        *&v120[4] = 257;
        *v120 = 65548;
        v120[12] = 30;
        *&v120[8] = 0;
        do
        {
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 300 * a2, re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::kVertexBufferIDs[v5++], a4, v120);
        }

        while (v5 != 4);
        WORD2(v111) = 257;
        LODWORD(v111) = 65544;
        v113 = 29;
        v112 = 0;
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 200 * a2, 20, a4, &v111);
        v15 = 2;
      }
    }

    goto LABEL_55;
  }

  return 0;
}

uint64_t re::OpenSubdivViewDependentComputeStep::deformGPU(uint64_t a1, unint64_t a2, void **a3, uint64_t *a4)
{
  v5 = a4;
  v157 = *MEMORY[0x1E69E9840];
  v141 = *a4;
  if (a4[4])
  {
    v9 = 24;
  }

  else
  {
    v9 = 32;
  }

  v10 = &selRef_setOwnerWithIdentity_;
  v100 = v9;
  if ([*(a1 + v9) threadExecutionWidth] <= 0x40)
  {
    v116 = [*(a1 + v9) threadExecutionWidth];
  }

  else
  {
    v116 = 64;
  }

  re::mtl::ComputeCommandEncoder::pushDebugGroup(a3, "OpenSubdivViewDependentComputeStep - cull and calculate tessellation factors");
  v139 = *(v141 + 48);
  if (v139)
  {
    v11 = 0;
    v115 = v116 - 1;
    v117 = v5;
    v99 = a3;
    v140 = a2;
    do
    {
      v12 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v141 + 8, v11);
      v14 = 2 * v11;
      v15 = *(a2 + 8);
      if (v15 <= 2 * v11)
      {
        v149 = 0;
        v155 = 0u;
        v156 = 0u;
        v154 = 0u;
        memset(v153, 0, sizeof(v153));
        v75 = MEMORY[0x1E69E9C10];
        v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v150 = 136315906;
        *&v150[4] = "operator[]";
        *&v150[12] = 1024;
        if (v76)
        {
          v77 = 3;
        }

        else
        {
          v77 = 2;
        }

        *&v150[14] = 468;
        *&v150[18] = 2048;
        *&v150[20] = 2 * v11;
        v151 = 2048;
        v152 = v15;
        _os_log_send_and_compose_impl(v77, &v149, v153, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_61:
        re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v16);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v83, v89);
        __break(1u);
LABEL_62:
        v149 = 0;
        v155 = 0u;
        v156 = 0u;
        v154 = 0u;
        memset(v153, 0, sizeof(v153));
        v78 = MEMORY[0x1E69E9C10];
        v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v150 = 136315906;
        *&v150[4] = "operator[]";
        *&v150[12] = 1024;
        if (v79)
        {
          v80 = 3;
        }

        else
        {
          v80 = 2;
        }

        *&v150[14] = 476;
        *&v150[18] = 2048;
        *&v150[20] = v15;
        v151 = 2048;
        v152 = a2;
        _os_log_send_and_compose_impl(v80, &v149, v153, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_66:
        v149 = 0;
        v155 = 0u;
        v156 = 0u;
        v154 = 0u;
        memset(v153, 0, sizeof(v153));
        v43 = MEMORY[0x1E69E9C10];
        v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v150 = 136315906;
        *&v150[4] = "operator[]";
        *&v150[12] = 1024;
        if (v81)
        {
          v82 = 3;
        }

        else
        {
          v82 = 2;
        }

        *&v150[14] = 468;
        *&v150[18] = 2048;
        *&v150[20] = v15;
        v151 = 2048;
        v152 = v10;
        _os_log_send_and_compose_impl(v82, &v149, v153, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_70:
        re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v45);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v84, v90);
        __break(1u);
LABEL_71:
        re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v48);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v85, v91);
        __break(1u);
LABEL_72:
        re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v50);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v86, v92);
        __break(1u);
LABEL_73:
        re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v43, v61);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v87, v93);
        __break(1u);
LABEL_74:
        re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v65, v64);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v88, v94);
        __break(1u);
      }

      v10 = *(v12 + 8);
      v16 = v5[6];
      if (v16 <= v10)
      {
        goto LABEL_61;
      }

      v4 = *(a2 + 16) + 48 * v11;
      v17 = v5[5];
      v18 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v5[1], v10);
      v142 = v4;
      if (*(v4 + 12))
      {
        v19 = v18;
        v20 = re::DataArray<re::MeshModel>::get(*(a1 + 16) + 8, *(*(v18 + 368) + 16));
        v15 = *(v19 + 392);
        a2 = *(v20 + 56);
        if (a2 <= v15)
        {
          goto LABEL_62;
        }

        v21 = (v17 + 312 * v10);
        v22 = *(v20 + 64) + 544 * v15;
        v23 = v22;
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23 && !v24[8]);
        *&v153[0] = 0x3CB5DB6609EB25B9;
        v25 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v153);
        a2 = v140;
        if (v25 == -1)
        {
          v4 = 0;
        }

        else
        {
          v4 = v24[6] + 16 * v25 + 8;
        }

        *&v153[0] = 0x5A059158998155F0;
        v26 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v153);
        if (v26 == -1)
        {
          v146 = 0;
        }

        else
        {
          v146 = (v24[6] + 16 * v26 + 8);
        }

        *&v153[0] = 0x4FC8CE4D0F6BEDB7;
        v27 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v153);
        if (v27 == -1)
        {
          v144 = 0;
        }

        else
        {
          v144 = (v24[6] + 16 * v27 + 8);
        }

        *&v153[0] = 0x6C02648D4FC47F55;
        v28 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v153);
        if (v28 == -1)
        {
          v10 = 0;
        }

        else
        {
          v10 = v24[6] + 16 * v28 + 8;
        }

        *&v153[0] = 0x2A7358959BBE8A81;
        v29 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v153);
        if (v29 == -1)
        {
          v30 = 0;
          if (!v4)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v30 = v24[6] + 16 * v29 + 8;
          if (!v4)
          {
            goto LABEL_55;
          }
        }

        {
          v108 = v30;
          v110 = v10;
          v138 = v22;
          LOBYTE(v153[0]) = 6;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 6u);
          v31 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 7, v153);
          v32 = v21[8];
          LOBYTE(v153[0]) = 8;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 8u);
          v136 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 7, v153);
          v130 = v21[8];
          LOBYTE(v153[0]) = 16;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0x10u);
          v33 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
          v126 = v21[24];
          v128 = v33;
          LOBYTE(v153[0]) = 17;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0x11u);
          v34 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
          v122 = v21[24];
          v124 = v34;
          LOBYTE(v153[0]) = 18;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0x12u);
          v120 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
          v35 = v21[24];
          LOBYTE(v153[0]) = 14;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0xEu);
          v118 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
          v36 = v21[24];
          LOBYTE(v153[0]) = 15;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0xFu);
          v37 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
          v38 = v21[24];
          v133 = 2 * v11;
          {
            v113 = 0;
          }

          else
          {
            LOBYTE(v153[0]) = 7;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 7u);
            v113 = v21[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153) + 8;
          }

          v14 = v130 + 32 * v136;
          v137 = v35 + 32 * v120;
          v10 = v36 + 32 * v118;
          LOBYTE(v153[0]) = 13;
          v39 = v38 + 32 * v37;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0xDu);
          v40 = v21[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 7, v153);
          a3 = v99;
          [*v99 setComputePipelineState:*(a1 + v100)];
          [*v99 setBuffer:*(v40 + 24) offset:*(v40 + 16) atIndex:0];
          [*v99 setBuffer:*(v32 + 32 * v31 + 24) offset:*(v32 + 32 * v31 + 16) atIndex:1];
          v131 = v14;
          [*v99 setBuffer:*(v14 + 24) offset:*(v14 + 16) atIndex:2];
          [*v99 setBuffer:*(v10 + 24) offset:*(v10 + 16) atIndex:3];
          [*v99 setBuffer:*(v39 + 24) offset:*(v39 + 16) atIndex:4];
          v127 = v126 + 32 * v128;
          [*v99 setBuffer:*(v127 + 24) offset:*(v127 + 16) atIndex:5];
          v129 = v122 + 32 * v124;
          [*v99 setBuffer:*(v129 + 24) offset:*(v129 + 16) atIndex:6];
          [*v99 setBuffer:*(v137 + 24) offset:*(v137 + 16) atIndex:7];
          {
            [*v99 setBuffer:*(v113 + 16) offset:*(v113 + 8) atIndex:10];
          }

          v41 = *v99;
          *&v153[0] = (v115 + 16 * *(v138 + 129)) / v116;
          *(v153 + 8) = vdupq_n_s64(1uLL);
          *v150 = v116;
          *&v150[8] = *(v153 + 8);
          v5 = v117;
          a2 = v140;
          {
            v15 = v133 | 1;
            v10 = *(v140 + 8);
            if (v10 <= (v133 | 1uLL))
            {
              goto LABEL_66;
            }

            v43 = *(v140 + 16);
            v44 = re::AttributeTable::buffers(v138);
            v14 = *v4;
            if (v45 <= v14)
            {
              goto LABEL_70;
            }

            v46 = v44;
            v47 = re::AttributeTable::buffers(v138);
            v4 = *v146;
            if (v48 <= v4)
            {
              goto LABEL_71;
            }

            v147 = v47;
            v49 = re::AttributeTable::buffers(v138);
            v5 = *v144;
            if (v50 <= v5)
            {
              goto LABEL_72;
            }

            v145 = v49;
            v51 = v43 + 24 * v15;
            LOBYTE(v153[0]) = 1;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 1u);
            v52 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
            v143 = v21[24];
            LOBYTE(v153[0]) = 2;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 2u);
            v53 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
            v134 = v21[24];
            v135 = v53;
            LOBYTE(v153[0]) = 3;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 3u);
            v54 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
            v123 = v21[24];
            v125 = v54;
            LOBYTE(v153[0]) = 4;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 4u);
            v55 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
            v119 = v21[24];
            v121 = v55;
            LOBYTE(v153[0]) = 20;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0x14u);
            v56 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
            v112 = v21[24];
            v114 = v56;
            [*v99 setComputePipelineState:*(a1 + 40)];
            v98 = v51;
            [*v99 setBuffer:*(v51 + 16) offset:*(v51 + 8) atIndex:0];
            {
              v57 = 2;
              v101 = 3;
              v102 = 4;
              v103 = 5;
              v104 = 6;
              v105 = 7;
              v106 = 8;
              v107 = 9;
              v109 = 10;
              v111 = 11;
              v132 = 12;
            }

            else
            {
              v97 = v5;
              v58 = v4;
              v59 = v14;
              v14 = v52;
              v60 = re::AttributeTable::buffers(v138);
              v43 = *v110;
              if (v61 <= v43)
              {
                goto LABEL_73;
              }

              v62 = v60;
              v63 = re::AttributeTable::buffers(v138);
              v65 = *v108;
              if (v64 <= v65)
              {
                goto LABEL_74;
              }

              v66 = v62 + 24 * v43;
              v67 = v63 + 24 * *v108;
              [*v99 setBuffer:*v66 offset:*(v66 + 4) atIndex:2];
              [*v99 setBuffer:*v67 offset:*(v67 + 4) atIndex:3];
              v57 = 4;
              v101 = 5;
              v102 = 6;
              v103 = 7;
              v104 = 8;
              v105 = 9;
              v106 = 10;
              v107 = 11;
              v109 = 12;
              v111 = 13;
              v132 = 14;
              v52 = v14;
              LODWORD(v14) = v59;
              LODWORD(v4) = v58;
              LODWORD(v5) = v97;
            }

            v68 = v143 + 32 * v52;
            v10 = v147 + 24 * v4;
            v4 = v119 + 32 * v121;
            [*v99 setBuffer:*(v127 + 24) offset:*(v127 + 16) atIndex:v57];
            [*v99 setBuffer:*(v129 + 24) offset:*(v129 + 16) atIndex:v101];
            [*v99 setBuffer:*(v137 + 24) offset:*(v137 + 16) atIndex:v102];
            [*v99 setBuffer:*(v46 + 3 * v14) offset:*(v46 + 6 * v14 + 4) atIndex:v103];
            [*v99 setBuffer:*v10 offset:*(v10 + 16) atIndex:v104];
            [*v99 setBuffer:*(v145 + 3 * v5) offset:*(v145 + 6 * v5 + 4) atIndex:v105];
            [*v99 setBuffer:*(v68 + 24) offset:*(v68 + 16) atIndex:v106];
            [*v99 setBuffer:*(v134 + 32 * v135 + 24) offset:*(v134 + 32 * v135 + 16) atIndex:v107];
            [*v99 setBuffer:*(v123 + 32 * v125 + 24) offset:*(v123 + 32 * v125 + 16) atIndex:v109];
            [*v99 setBuffer:*(v4 + 24) offset:*(v4 + 16) atIndex:v111];
            [*v99 setBuffer:*(v112 + 32 * v114 + 24) offset:*(v112 + 32 * v114 + 16) atIndex:v132];
            v69 = *(v68 + 20) / 0xCu;
            v70 = [*(a1 + 40) threadExecutionWidth];
            v71 = *v99;
            *&v153[0] = (v69 + v70 - 1) / v70;
            *(v153 + 8) = vdupq_n_s64(1uLL);
            *v150 = v70;
            *&v150[8] = *(v153 + 8);
            v5 = v117;
            a2 = v140;
            {
              LOBYTE(v153[0]) = 0;
              re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0);
              v72 = v21[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v153);
              [*v99 setComputePipelineState:*(a1 + 48)];
              [*v99 setBuffer:*(v98 + 16) offset:*(v98 + 8) atIndex:0];
              [*v99 setBuffer:*(v72 + 24) offset:*(v72 + 16) atIndex:1];
              v73 = *v99;
              *&v153[0] = (*(v138 + 129) + v115) / v116;
              *(v153 + 8) = vdupq_n_s64(1uLL);
              *v150 = v116;
              *&v150[8] = *(v153 + 8);
              [v73 dispatchThreadgroups:v153 threadsPerThreadgroup:v150];
            }
          }
        }
      }

LABEL_55:
      ++v11;
    }

    while (v11 != v139);
  }

  return [*a3 popDebugGroup];
}

void re::OpenSubdivViewIndependentComputeStep::deformCPU(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) OpenSubdivViewIndependentComputeStep does not have a CPU implementation", "!Unreachable code", "deformCPU", 99);
  _os_crash("assertion failure: (!Unreachable code) OpenSubdivViewIndependentComputeStep does not have a CPU implementation");
  __break(1u);
}

void re::OpenSubdivViewDependentComputeStep::deformCPU(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) OpenSubdivViewDependentComputeStep does not have a CPU implementation", "!Unreachable code", "deformCPU", 170);
  _os_crash("assertion failure: (!Unreachable code) OpenSubdivViewDependentComputeStep does not have a CPU implementation");
  __break(1u);
}

void *re::internal::Callable<re::OpenSubdivViewIndependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0A190;
  return result;
}

void *re::internal::Callable<re::OpenSubdivViewIndependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0A190;
  return result;
}

void *re::internal::Callable<re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0A1E8;
  return result;
}

void *re::internal::Callable<re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0A1E8;
  return result;
}

uint64_t re::RenderThread::init(uint64_t this, re::RenderManager *a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 8) = a2;
    atomic_store(0, (this + 176));
    atomic_store(0, (this + 184));
    atomic_store(0, (this + 192));
    atomic_store(0, (this + 200));
    *(this + 160) = 0;
    *(this + 168) = 0;
    v2[3] = 0;
    std::function<void ()(re::EventQueue &)>::operator=((this + 128), v2);
    std::__function::__value_func<void ()(re::EventQueue &)>::~__value_func[abi:nn200100](v2);
    operator new();
  }

  return this;
}

void re::RenderThread::threadFuncStatic(re::RenderThread *this, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_setname_np("Render");
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 248);
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = this + 32;
  do
  {
    do
    {
      re::internal::AutoResetEvent::waitOne((this + 320));
      re::EventQueue::processEvents(this + 6);
    }

    while (*(this + 15) == *&v6[40 * ((*(this + 28) & 1) == 0) + 16]);
    v7 = 0;
    do
    {
      v8 = re::EventQueue::peekEvent((this + 24), 0);
      if (v8 == 1)
      {
        v7 = 1;
        __dst = 1;
        re::EventQueue::readEvent((this + 24), &__dst, 4uLL);
      }

      else if (!v8)
      {
        __dst = 0;
        v20 = 0xFFFFFFFFFFFFFFFLL;
        v9 = re::EventQueue::readEvent((this + 24), &__dst, 0x28uLL);
        v11 = v20;
        v12 = *(*(this + 1) + 112) + 16 * (v20 & 7);
        *(v12 + 456) = v21;
        *(v12 + 464) = v11;
        if (v22)
        {
          v13 = v20;
          isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v9);
          if (isStatisticCollectionEnabled)
          {
            v15 = re::profilerThreadContext(isStatisticCollectionEnabled);
            v16 = *(*(this + 1) + 112);
            if (v16)
            {
              v17 = *(v16 + 1664);
            }

            else
            {
              v17 = 0;
            }

            re::ProfilerThreadContext::begin(v15, v17, v13 & 0xFFFFFFFFFFFFFFFLL, 0);
          }

          v26 = 1;
          v18 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
          if (v18)
          {
            if (*(re::profilerThreadContext(v18) + 152))
            {
              mach_absolute_time();
            }
          }

          v24 = 0;
          rep = std::chrono::steady_clock::now().__d_.__rep_;
          v25 = 1;
          operator new();
        }

        re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) NULL workload passed to RenderThread::doRender", "workload", "doRender", 146);
        _os_crash("assertion failure: (workload) NULL workload passed to RenderThread::doRender");
        __break(1u);
LABEL_24:
        re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) NULL RenderManager in RenderThread. Cannot continue.", "m_renderManager", "threadFunc", 95);
        _os_crash("assertion failure: (m_renderManager) NULL RenderManager in RenderThread. Cannot continue.");
        __break(1u);
      }
    }

    while (*(this + 15) != *&v6[40 * ((*(this + 28) & 1) == 0) + 16]);
  }

  while ((v7 & 1) == 0);
}

void re::RenderThread::join(re::RenderThread *this)
{
  if (*(this + 16) == 1)
  {
    v5 = v1;
    v6 = v2;
    if ((*(this + 18) & 1) == 0)
    {
      *(this + 18) = 1;
      v4 = 1;
      re::EventQueue::postEvent(this + 6, &v4, 4uLL);
      re::internal::AutoResetEvent::set((this + 320));
      std::thread::join(this);
    }
  }
}

void re::RenderThread::deinit(re::RenderThread *this)
{
  if (*(this + 16) == 1)
  {
    re::internal::AutoResetEvent::set((this + 320));
    re::RenderThread::waitForIdleInternal(this);
    re::RenderThread::waitForCallbacksCompletion(this);
    re::RenderThread::join(this);
    *(this + 1) = 0;
    *(this + 16) = 0;
  }
}

void re::RenderThread::waitForCallbacksCompletion(re::RenderThread *this)
{
  v3.__m_ = (this + 208);
  v3.__owns_ = 1;
  std::mutex::lock((this + 208));
  v2 = *(this + 22);
  while (*(this + 24) < v2 || *(this + 25) < v2)
  {
    std::condition_variable::wait((this + 272), &v3);
  }

  if (v3.__owns_)
  {
    std::mutex::unlock(v3.__m_);
  }
}

void re::RenderThread::commitFrame(uint64_t a1, int a2, re::RenderFrameWorkload *a3)
{
  if (*(a1 + 16) == 1)
  {
    v35 = v3;
    v36 = v4;
    v30 = 0;
    v8 = *(a1 + 8);
    v9 = *(v8 + 144);
    v10 = *(v9 + 3) & 0xFFFFFFFFFFFFFFFLL;
    v31 = v10 | (*(v9 + 2) << 60);
    v11 = *(v8 + 112);
    if (v11)
    {
      v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
      v9 = *(*(a1 + 8) + 144);
    }

    else
    {
      v12 = 0;
    }

    v32 = v12;
    v33 = a2;
    v34 = a3;
    FrameRefCount = re::FrameManager::getFrameRefCount(v9, v10);
    if (FrameRefCount)
    {
      atomic_fetch_add(FrameRefCount + 32, 1u);
      v12 = v32;
      v10 = v31 & 0xFFFFFFFFFFFFFFFLL;
    }

    v14 = v12[52];
    v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
    if (v10 != (v14 & 0xFFFFFFFFFFFFFFFLL))
    {
      v16 = re::FrameManager::getFrameRefCount(v9, v14 & 0xFFFFFFFFFFFFFFFLL);
      if (v16)
      {
        atomic_fetch_add(v16 + 32, 1u);
        v12 = v32;
      }
    }

    if (v12[539])
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if ([*(v12[541] + v17) commandBuffer])
        {
          v19 = v31 & 0xFFFFFFFFFFFFFFFLL;
          v20 = re::FrameManager::getFrameRefCount(v9, v31 & 0xFFFFFFFFFFFFFFFLL);
          if (v20)
          {
            atomic_fetch_add(v20 + 32, 1u);
            v19 = v31 & 0xFFFFFFFFFFFFFFFLL;
          }

          if (v19 != v15)
          {
            v21 = re::FrameManager::getFrameRefCount(*(*(a1 + 8) + 144), v15);
            if (v21)
            {
              atomic_fetch_add(v21 + 32, 1u);
            }
          }
        }

        ++v18;
        v12 = v32;
        v17 += 24;
      }

      while (v32[539] > v18);
    }

    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v29, 1506, *(a1 + 8), *(*(*(a1 + 8) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
    re::internal::AutoResetEvent::set((a1 + 320));
    re::RenderThread::waitForIdleInternal(a1);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v29, v22, v23);
    re::EventQueue::postEvent((a1 + 24), &v30, 0x28uLL);
    atomic_fetch_add((a1 + 176), 1uLL);
    if (*(a3 + 296))
    {
      v24 = *(a1 + 168);
      v25 = atomic_load((a1 + 176));
      *(a1 + 160) = v24;
      *(a1 + 168) = v25;
    }

    re::internal::AutoResetEvent::set((a1 + 320));
    if (a2 == 2)
    {
      re::RenderThread::waitForIdleInternal(a1);
      v26 = *(*(a1 + 8) + 112);
      if (v26)
      {
        v27 = *(v26 + 1792);
      }

      else
      {
        v27 = 0.0;
      }

      re::RenderFrameWorkload::immediatePresentDrawables(a3, 1.0 / v27);
    }

    v28 = *(*(a1 + 8) + 112);
    if (!v28 || (*(*(v28 + 256) + 315) & 1) == 0)
    {
      re::RenderThread::waitForFramePacing(a1);
    }

    if (a2 == 1 || (*(a1 + 17) & 1) != 0)
    {
      re::RenderThread::waitForIdleInternal(a1);
    }
  }
}