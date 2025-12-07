uint64_t google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 2);
  v3 = *v2;
  v4 = *(*v2 + 10);
  if (!*(*v2 + 10))
  {
    goto LABEL_6;
  }

LABEL_2:
  v5 = 0;
  v6 = (v3 + 2);
  do
  {
    v7 = *v6;
    v6 += 8;
    if (v7 >= a2)
    {
      goto LABEL_7;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_7:
  while (!*(v3 + 11))
  {
    v3 = v3[v5 + 30];
    v4 = *(v3 + 10);
    if (*(v3 + 10))
    {
      goto LABEL_2;
    }

LABEL_6:
    LODWORD(v5) = 0;
  }

  while (v5 == *(v3 + 10))
  {
    LODWORD(v5) = *(v3 + 8);
    v3 = *v3;
    if (*(v3 + 11))
    {
      goto LABEL_14;
    }
  }

  if (SLODWORD(v3[4 * v5 + 2]) > a2)
  {
LABEL_14:
    v8 = v2[1];
    v9 = *(v8 + 10);
    v3 = v8;
    LODWORD(v5) = v9;
    goto LABEL_16;
  }

  v8 = v2[1];
  v9 = *(v8 + 10);
LABEL_16:
  v10 = v5 == v9 && v3 == v8;
  v11 = &v3[4 * v5 + 3];
  if (v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>>::erase<int>(uint64_t **a1, int *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = *(*a1 + 10);
  if (*(*a1 + 10))
  {
    goto LABEL_4;
  }

LABEL_8:
  LODWORD(v5) = 0;
LABEL_9:
  while (!*(v3 + 11))
  {
    v3 = v3[v5 + 30];
    v4 = *(v3 + 10);
    if (!*(v3 + 10))
    {
      goto LABEL_8;
    }

LABEL_4:
    v5 = 0;
    v6 = (v3 + 2);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7 >= v2)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = v4;
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
    v8 = *(v3 + 10);
    if (v5 != v8)
    {
      break;
    }

    LODWORD(v5) = *(v3 + 8);
    v3 = *v3;
    if (*(v3 + 11))
    {
      v9 = a1[1];
      v10 = *(v9 + 10);
      v11 = v10;
LABEL_13:
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase_range(a1, v9, v11, v9, v11, v21);
      return v21[0];
    }
  }

  v9 = a1[1];
  v11 = *(v9 + 10);
  if (v3 == v9 && v5 == v11)
  {
    goto LABEL_13;
  }

  v14 = v5;
  if (v2 >= SLODWORD(v3[4 * v5 + 2]))
  {
    if (*(v3 + 11))
    {
      v15 = v5 + 1;
      if (v15 == v8)
      {
        v16 = v3;
        while (1)
        {
          v17 = *v16;
          if (*(*v16 + 11))
          {
            break;
          }

          v18 = v16[8];
          v16 = *v16;
          if (v18 != *(v17 + 10))
          {
            v15 = v18;
            goto LABEL_30;
          }
        }
      }

      v17 = v3;
    }

    else
    {
      v19 = &v3[(v5 + 1) + 30];
      do
      {
        v17 = *v19;
        v20 = *(*v19 + 11);
        v19 = *v19 + 240;
      }

      while (!v20);
      v15 = 0;
    }

LABEL_30:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase_range(a1, v3, v14, v17, v15, v21);
    return v21[0];
  }

  else
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase_range(a1, v3, v5, v3, v5, v21);
    return v21[0];
  }
}

void *google::protobuf::internal::OnShutdownDelete<absl::lts_20240722::flat_hash_set<google::protobuf::internal::ExtensionInfo,google::protobuf::internal::anonymous namespace::ExtensionHasher,google::protobuf::internal::anonymous namespace::ExtensionEq,std::allocator<google::protobuf::internal::ExtensionInfo>>>(absl::lts_20240722::flat_hash_set<google::protobuf::internal::ExtensionInfo,google::protobuf::internal::anonymous namespace::ExtensionHasher,google::protobuf::internal::anonymous namespace::ExtensionEq,std::allocator<google::protobuf::internal::ExtensionInfo>> *)::{lambda(void const*)#1}::__invoke(void *result)
{
  if (result)
  {
    if (*result)
    {
      operator delete((result[2] - (result[1] & 1) - 8));
      v1 = vars8;
    }

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::internal::ExtensionInfo>,google::protobuf::internal::anonymous namespace::ExtensionHasher,google::protobuf::internal::anonymous namespace::ExtensionEq,std::allocator<google::protobuf::internal::ExtensionInfo>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,48ul,true,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::internal::anonymous namespace::ExtensionHasher,google::protobuf::internal::ExtensionInfo>(uint64_t a1, uint64_t a2)
{
  v2 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
  v3 = (((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2)) + *(a2 + 8);
  return ((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3);
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[30];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 240];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 240]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 30);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::~()::$_0>(google::protobuf::internal::RepeatedPtrFieldBase *result, int a2, unsigned __int8 *a3, int a4)
{
  v7 = result;
  if (result != a3)
  {
    do
    {
LABEL_3:
      while (1)
      {
        result = google::protobuf::internal::ExtensionSet::Extension::Free(&v7[32 * a2 + 24]);
        if (v7[11])
        {
          break;
        }

        v11 = &v7[8 * (a2 + 1) + 240];
        do
        {
          v7 = *v11;
          v12 = *(*v11 + 11);
          v11 = *v11 + 240;
        }

        while (!v12);
        a2 = 0;
        if (v7 == a3)
        {
          goto LABEL_2;
        }
      }

      if (++a2 == v7[10])
      {
        v8 = v7;
        while (1)
        {
          v9 = *v8;
          if (*(*v8 + 11))
          {
            break;
          }

          v10 = v8[8];
          v8 = *v8;
          if (v10 != v9[10])
          {
            a2 = v10;
            v7 = v9;
            break;
          }
        }
      }
    }

    while (v7 != a3);
  }

LABEL_2:
  if (a2 != a4)
  {
    goto LABEL_3;
  }

  return result;
}

void google::protobuf::RepeatedField<int>::GrowNoAnnotate(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (!v5)
  {
    if (a3 >= 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = 2;
    v8 = 8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v6 = *(v6 - 1);
  if (a3 < 2)
  {
    goto LABEL_7;
  }

  if (v5 > 1073741819)
  {
    v7 = 0x7FFFFFFF;
    v8 = 0x1FFFFFFFCLL;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = 2 * v5 + 2;
  if (v10 <= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v10;
  }

  v8 = 4 * v7;
  if (!v6)
  {
LABEL_14:
    v9 = operator new(v8 + 8);
    *v9 = v6;
    if (*(a1 + 4) < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

LABEL_8:
  v9 = google::protobuf::Arena::AllocateForArray(v6, (v8 + 15) & 0x3FFFFFFF8);
  *v9 = v6;
  if (*(a1 + 4) < 1)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a2 >= 1)
  {
    memcpy(v9 + 1, *(a1 + 8), 4 * a2);
  }

  v11 = *(a1 + 8);
  v13 = *(v11 - 8);
  v12 = (v11 - 8);
  if (v13)
  {
    v14 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
    if (*(v14 + 8) == *v16)
    {
      v17 = 4 * v15 + 8;
      v18 = *(v14 + 16);
      v19 = 59 - __clz(v17);
      v20 = *(v18 + 80);
      if (v19 >= v20)
      {
        if (*(v18 + 80))
        {
          v26 = v17;
          memmove(v12, *(v18 + 88), 8 * v20);
          v17 = v26;
          v22 = *(v18 + 80);
        }

        else
        {
          v22 = 0;
        }

        v23 = v17 >> 3;
        v24 = (v17 & 0xFFFFFFFFFFFFFFF8) - v22 * 8;
        if (v24 >= 1)
        {
          v27 = v17 >> 3;
          bzero(&v12[v22], v24);
          v23 = v27;
        }

        *(v18 + 88) = v12;
        v25 = 64;
        if (v23 < 0x40)
        {
          v25 = v23;
        }

        *(v18 + 80) = v25;
      }

      else
      {
        v21 = *(v18 + 88);
        *v12 = *(v21 + 8 * v19);
        *(v21 + 8 * v19) = v12;
      }
    }
  }

  else
  {
    operator delete(v12);
  }

LABEL_22:
  *(a1 + 4) = v7;
  *(a1 + 8) = v9 + 1;
}

void google::protobuf::RepeatedField<long long>::GrowNoAnnotate(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (!v5)
  {
    if (a3 >= 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    v8 = 8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v6 = *(v6 - 1);
  if (a3 < 1)
  {
    goto LABEL_13;
  }

  if (v5 > 1073741819)
  {
    v7 = 0x7FFFFFFF;
    v8 = 0x3FFFFFFF8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_7:
  if (((2 * v5) | 1) > a3)
  {
    v7 = 2 * v5 + 1;
  }

  else
  {
    v7 = a3;
  }

  v8 = 8 * v7;
  if (!v6)
  {
LABEL_14:
    v9 = operator new(v8 + 8);
    *v9 = v6;
    if (*(a1 + 4) < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

LABEL_11:
  v9 = google::protobuf::Arena::AllocateForArray(v6, (v8 + 15) & 0x7FFFFFFF8);
  *v9 = v6;
  if (*(a1 + 4) < 1)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a2 >= 1)
  {
    memcpy(v9 + 1, *(a1 + 8), 8 * a2);
  }

  v10 = *(a1 + 8);
  v12 = *(v10 - 8);
  v11 = (v10 - 8);
  if (v12)
  {
    v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
    if (*(v13 + 8) == *v15)
    {
      v16 = 8 * v14 + 8;
      v17 = *(v13 + 16);
      v18 = 59 - __clz(v16);
      v19 = *(v17 + 80);
      if (v18 >= v19)
      {
        if (*(v17 + 80))
        {
          v24 = v16;
          memmove(v11, *(v17 + 88), 8 * v19);
          v16 = v24;
          v21 = *(v17 + 80);
        }

        else
        {
          v21 = 0;
        }

        v22 = v16 >> 3;
        if ((v16 - v21 * 8) >= 1)
        {
          v25 = v16 >> 3;
          bzero(&v11[v21], v16 - v21 * 8);
          v22 = v25;
        }

        *(v17 + 88) = v11;
        v23 = 64;
        if (v22 < 0x40)
        {
          v23 = v22;
        }

        *(v17 + 80) = v23;
      }

      else
      {
        v20 = *(v17 + 88);
        *v11 = *(v20 + 8 * v18);
        *(v20 + 8 * v18) = v11;
      }
    }
  }

  else
  {
    operator delete(v11);
  }

LABEL_22:
  *(a1 + 4) = v7;
  *(a1 + 8) = v9 + 1;
}

void google::protobuf::RepeatedField<BOOL>::GrowNoAnnotate(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (!v5)
  {
    if (a3 >= 8)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = 8;
    v8 = 8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v6 = *(v6 - 1);
  if (a3 < 8)
  {
    goto LABEL_7;
  }

  if (v5 > 1073741819)
  {
    v7 = 0x7FFFFFFF;
    v8 = 0x7FFFFFFFLL;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = 2 * v5 + 8;
  if (v10 <= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v10;
  }

  v8 = v7;
  if (!v6)
  {
LABEL_14:
    v9 = operator new(v8 + 8);
    *v9 = v6;
    if (*(a1 + 4) < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

LABEL_8:
  v9 = google::protobuf::Arena::AllocateForArray(v6, (v8 + 15) & 0xFFFFFFF8);
  *v9 = v6;
  if (*(a1 + 4) < 1)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a2 >= 1)
  {
    memcpy(v9 + 1, *(a1 + 8), a2);
  }

  v11 = *(a1 + 8);
  v13 = *(v11 - 8);
  v12 = (v11 - 8);
  if (v13)
  {
    v14 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
    if (*(v14 + 8) == *v16)
    {
      v17 = v15 + 8;
      v18 = *(v14 + 16);
      v19 = 59 - __clz(v17);
      v20 = *(v18 + 80);
      if (v19 >= v20)
      {
        if (*(v18 + 80))
        {
          v26 = v17;
          memmove(v12, *(v18 + 88), 8 * v20);
          v17 = v26;
          v22 = *(v18 + 80);
        }

        else
        {
          v22 = 0;
        }

        v23 = v17 >> 3;
        v24 = (v17 & 0xFFFFFFFFFFFFFFF8) - v22 * 8;
        if (v24 >= 1)
        {
          v27 = v17 >> 3;
          bzero(&v12[v22], v24);
          v23 = v27;
        }

        *(v18 + 88) = v12;
        v25 = 64;
        if (v23 < 0x40)
        {
          v25 = v23;
        }

        *(v18 + 80) = v25;
      }

      else
      {
        v21 = *(v18 + 88);
        *v12 = *(v21 + 8 * v19);
        *(v21 + 8 * v19) = v12;
      }
    }
  }

  else
  {
    operator delete(v12);
  }

LABEL_22:
  *(a1 + 4) = v7;
  *(a1 + 8) = v9 + 1;
}

uint64_t google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(uint64_t *a1, void *a2, google::protobuf::internal::ThreadSafeArena *a3, google::protobuf::internal::ThreadSafeArena *this)
{
  if (!a3 && this)
  {
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      google::protobuf::internal::ThreadSafeArena::AddCleanup(this, a2, google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>);
      a2 = v5;
      a1 = v4;
    }

    goto LABEL_5;
  }

  if (this == a3)
  {
LABEL_5:

    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(a1, a2);
  }

  v7 = a1;
  v8 = a2;
  v9 = google::protobuf::internal::NewFromPrototypeHelper(a2);
  google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>::Merge(v8, v9);
  a1 = v7;
  a2 = v9;

  return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(a1, a2);
}

uint64_t *google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(uint64_t *result, google::protobuf::MessageLite *a2)
{
  v3 = result;
  v4 = *(result + 3);
  v5 = *(result + 2);
  if (v5 > v4)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(result, 1);
LABEL_3:
    ++*(*v3 - 1);
    goto LABEL_21;
  }

  v6 = *result;
  if ((*result & 1) == 0)
  {
    if (!v6)
    {
      if ((v5 & 0x80000000) != 0)
      {
        v7 = 0;
        v8 = 0;
        v9 = 7;
LABEL_16:
        v12 = (v9 + 8 * v8);
        if (v6)
        {
          v13 = v12;
        }

        else
        {
          v13 = result;
        }

        *v13 = v7;
        goto LABEL_3;
      }

      goto LABEL_21;
    }

LABEL_9:
    if (!result[2])
    {
      v10 = v6 + 8 * v5 + 7;
      if (v6)
      {
        v11 = v10;
      }

      else
      {
        v11 = result;
      }

      result = google::protobuf::internal::InternalOutOfLineDeleteMessageLite(*v11, a2);
    }

    goto LABEL_21;
  }

  v8 = *(v6 - 1);
  if (v8 > v4)
  {
    goto LABEL_9;
  }

  if (v5 < v8)
  {
    v9 = v6 + 7;
    v7 = *(v6 + 7 + 8 * v5);
    goto LABEL_16;
  }

  *(v6 - 1) = v8 + 1;
LABEL_21:
  v14 = *(v3 + 8);
  *(v3 + 8) = v14 + 1;
  v15 = (*v3 + 8 * v14 + 7);
  if ((*v3 & 1) == 0)
  {
    v15 = v3;
  }

  *v15 = a2;
  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::Clear(void)::$_0>(unsigned __int8 *result, int a2, unsigned __int8 *a3, int a4)
{
  v7 = result;
  while (v7 != a3)
  {
LABEL_3:
    while (1)
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Clear(&v7[32 * a2 + 24]);
      if (v7[11])
      {
        break;
      }

      v11 = &v7[8 * (a2 + 1) + 240];
      do
      {
        v7 = *v11;
        v12 = *(*v11 + 11);
        v11 = *v11 + 240;
      }

      while (!v12);
      a2 = 0;
      if (v7 == a3)
      {
        goto LABEL_2;
      }
    }

    if (++a2 == v7[10])
    {
      v8 = v7;
      while (1)
      {
        v9 = *v8;
        if (*(*v8 + 11))
        {
          break;
        }

        v10 = v8[8];
        v8 = *v8;
        if (v10 != v9[10])
        {
          a2 = v10;
          v7 = v9;
          break;
        }
      }
    }
  }

LABEL_2:
  if (a2 != a4)
  {
    goto LABEL_3;
  }

  return result;
}

__n128 google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::MessageLite const*,google::protobuf::internal::ExtensionSet const&)::$_0>(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6)
{
  v10 = a2;
  while (v10 != a4)
  {
LABEL_3:
    while (1)
    {
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(*(a6 + 8), *a6, *&v10[32 * a3 + 16], &v10[32 * a3 + 24], **(a6 + 16));
      if (v10[11])
      {
        break;
      }

      v15 = &v10[8 * (a3 + 1) + 240];
      do
      {
        v10 = *v15;
        v16 = *(*v15 + 11);
        v15 = *v15 + 240;
      }

      while (!v16);
      a3 = 0;
      if (v10 == a4)
      {
        goto LABEL_2;
      }
    }

    if (++a3 == v10[10])
    {
      v12 = v10;
      while (1)
      {
        v13 = *v12;
        if (*(*v12 + 11))
        {
          break;
        }

        v14 = v12[8];
        v12 = *v12;
        if (v14 != v13[10])
        {
          a3 = v14;
          v10 = v13;
          break;
        }
      }
    }
  }

LABEL_2:
  if (a3 != a5)
  {
    goto LABEL_3;
  }

  result = *a6;
  *a1 = *a6;
  *(a1 + 16) = *(a6 + 16);
  return result;
}

void *google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::ByteSize(void)::$_0>(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, void *a5)
{
  v9 = a1;
  while (v9 != a3)
  {
LABEL_3:
    while (1)
    {
      *a5 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(&v9[32 * a2 + 24], *&v9[32 * a2 + 16]);
      if (v9[11])
      {
        break;
      }

      v13 = &v9[8 * (a2 + 1) + 240];
      do
      {
        v9 = *v13;
        v14 = *(*v13 + 11);
        v13 = *v13 + 240;
      }

      while (!v14);
      a2 = 0;
      if (v9 == a3)
      {
        goto LABEL_2;
      }
    }

    if (++a2 == v9[10])
    {
      v10 = v9;
      while (1)
      {
        v11 = *v10;
        if (*(*v10 + 11))
        {
          break;
        }

        v12 = v10[8];
        v10 = *v10;
        if (v12 != v11[10])
        {
          a2 = v12;
          v9 = v11;
          break;
        }
      }
    }
  }

LABEL_2:
  if (a2 != a4)
  {
    goto LABEL_3;
  }

  return a5;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(uint64_t result)
{
  LODWORD(v1) = *(result + 8);
  if (*result)
  {
    v2 = *result + 7;
  }

  else
  {
    v2 = result;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = v1;
  }

  do
  {
    while (1)
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        break;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
      v2 += 8;
      if (!--v1)
      {
        goto LABEL_10;
      }
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    v2 += 8;
    --v1;
  }

  while (v1);
LABEL_10:
  *(result + 8) = 0;
  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(int *a1)
{
  v2 = a1[2];
  if (*a1)
  {
    v3 = (*a1 + 7);
  }

  else
  {
    v3 = a1;
  }

  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  do
  {
    v5 = *v3;
    v3 += 2;
    result = (*(*v5 + 24))(v5);
    --v4;
  }

  while (v4);
  a1[2] = 0;
  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::insert_unique<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>@<X0>(uint64_t *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  if (!result[2])
  {
    operator new();
  }

  v6 = *a2;
  v7 = *result;
  v8 = *(*result + 10);
  if (!*(*result + 10))
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = 0;
  v10 = (v7 + 16);
  do
  {
    v11 = *v10;
    v10 += 8;
    if (v11 >= v6)
    {
      goto LABEL_9;
    }

    ++v9;
  }

  while (v8 != v9);
  LODWORD(v9) = v8;
LABEL_9:
  while (!v7[11])
  {
    v7 = *&v7[8 * v9 + 240];
    v8 = v7[10];
    if (v7[10])
    {
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v9) = 0;
  }

  v12 = v9;
  v13 = v9;
  v14 = v7;
  while (v13 == *(v14 + 10))
  {
    v13 = *(v14 + 8);
    v14 = *v14;
    if (*(v14 + 11))
    {
      goto LABEL_17;
    }
  }

  if (v6 < SLODWORD(v14[4 * v13 + 2]))
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::internal_emplace<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(result, v7, v12, a4);
    v14 = result;
    v15 = 1;
    v13 = v16;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_19:
  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15;
  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::internal_emplace<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  i = a2;
  v23 = a3;
  v6 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = a2;
    v8 = a3;
    v9 = a2[10];
    v10 = v9 - a3;
    if (v9 <= a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 240];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 240];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v23) = a3;
  v6 = a2[11];
  if (!a2[11])
  {
    v6 = 7;
  }

  if (a2[10] != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 6)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v23;
  v9 = *(i + 10);
  v10 = v9 - v23;
  if (v9 > v23)
  {
LABEL_13:
    if ((v10 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v11 = &v7[4 * v8 + 2 + 4 * v10];
      v12 = 32 * v8 - 32 * v9;
      do
      {
        v13 = *(v11 - 1);
        *v11 = *(v11 - 2);
        *(v11 + 1) = v13;
        v11 -= 4;
        v12 += 32;
      }

      while (v12);
      LODWORD(v9) = *(v7 + 10);
    }
  }

LABEL_17:
  v14 = &v7[4 * v8];
  *(v14 + 4) = *a4;
  v15 = *(a4 + 8);
  v14[5] = *(a4 + 24);
  *(v14 + 3) = v15;
  v16 = v9 + 1;
  *(v7 + 10) = v16;
  if (!*(v7 + 11))
  {
    v17 = v8 + 1;
    if (v17 < v16)
    {
      v18 = v7 + 30;
      do
      {
        v19 = v18[(v16 - 1)];
        v18[v16] = v19;
        *(v19 + 8) = v16;
      }

      while (v17 < --v16);
    }
  }

  ++a1[2];
  return i;
}

void *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_or_split(uint64_t *a1, uint64_t **a2)
{
  result = *a2;
  v5 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v6 = *(result + 8);
  if (*(result + 8))
  {
    v7 = *(v5 + 8 * (v6 - 1) + 240);
    v8 = *(v7 + 10);
    if (v8 <= 6)
    {
      v9 = *(a2 + 8);
      v10 = (7 - v8) >> (v9 < 7);
      v11 = v10 <= 1 ? 1 : v10;
      if (v9 >= v11 || (v11 + v8) <= 6u)
      {
        v13 = *(v7 + 8);
        v14 = *v7;
        v15 = v7 + 32 * v8;
        v16 = *v7 + 32 * v13;
        v17 = *(v16 + 32);
        *(v15 + 16) = *(v16 + 16);
        *(v15 + 32) = v17;
        v18 = result + 2;
        v19 = (v11 - 1);
        v20 = &result[4 * v19 + 2];
        if (v11 != 1)
        {
          v21 = 32 * v8 + 48;
          v22 = 32 * v19;
          v23 = (result + 2);
          do
          {
            v24 = (v7 + v21);
            v25 = *v23;
            v26 = v23[1];
            v23 += 2;
            *v24 = v25;
            v24[1] = v26;
            v21 += 32;
            v22 -= 32;
          }

          while (v22);
          v14 = *v7;
          v13 = *(v7 + 8);
        }

        v27 = v14 + 32 * v13;
        v28 = v20[1];
        *(v27 + 16) = *v20;
        *(v27 + 32) = v28;
        v29 = *(result + 10);
        if (v29 != v11)
        {
          v30 = 32 * v29 - 32 * v11;
          do
          {
            v31 = v18[2 * v11 + 1];
            *v18 = v18[2 * v11];
            v18[1] = v31;
            v18 += 2;
            v30 -= 32;
          }

          while (v30);
        }

        if (!*(v7 + 11))
        {
          v32 = result + 30;
          v33 = result[30];
          v34 = v7 + 240;
          v35 = *(v7 + 10) + 1;
          *(v7 + 240 + 8 * v35) = v33;
          *(v33 + 8) = v35;
          *v33 = v7;
          if (v10 > 1)
          {
            v36 = *(v7 + 10) + 2;
            v37 = result[31];
            *(v34 + 8 * v36) = v37;
            *(v37 + 8) = v36;
            *v37 = v7;
            if (v10 != 2)
            {
              v38 = *(v7 + 10) + 3;
              v39 = result[32];
              *(v34 + 8 * v38) = v39;
              *(v39 + 8) = v38;
              *v39 = v7;
              if (v10 != 3)
              {
                v40 = *(v7 + 10) + 4;
                v41 = result[33];
                *(v34 + 8 * v40) = v41;
                *(v41 + 8) = v40;
                *v41 = v7;
                if (v10 != 4)
                {
                  v42 = *(v7 + 10) + 5;
                  v43 = result[34];
                  *(v34 + 8 * v42) = v43;
                  *(v43 + 8) = v42;
                  *v43 = v7;
                  if (v10 != 5)
                  {
                    v44 = *(v7 + 10) + 6;
                    v45 = result[35];
                    *(v34 + 8 * v44) = v45;
                    *(v45 + 8) = v44;
                    *v45 = v7;
                    if (v10 != 6)
                    {
                      v46 = *(v7 + 10) + 7;
                      v47 = result[36];
                      *(v34 + 8 * v46) = v47;
                      *(v47 + 8) = v46;
                      *v47 = v7;
                    }
                  }
                }
              }
            }
          }

          if (*(result + 10) >= v11)
          {
            v48 = 0;
            do
            {
              v49 = v32[(v48 + v11)];
              v32[v48] = v49;
              *(v49 + 8) = v48;
              *v49 = result;
              ++v48;
            }

            while (*(result + 10) - v11 >= v48);
          }
        }

        *(v7 + 10) += v11;
        *(result + 10) -= v11;
        v50 = *(a2 + 8) - v11;
        *(a2 + 2) = v50;
        if (v50 >= 0)
        {
          return result;
        }

        v59 = v50 + *(v7 + 10) + 1;
LABEL_48:
        *(a2 + 2) = v59;
        *a2 = v7;
        return result;
      }
    }
  }

  v51 = *(v5 + 10);
  if (v6 >= v51 || (v7 = *(v5 + 8 * (v6 + 1) + 240), v52 = *(v7 + 10), v52 > 6) || ((v53 = *(a2 + 2), (7 - v52) >> (v53 > 0) <= 1u) ? (v54 = 1) : (v54 = (7 - v52) >> (v53 > 0)), (v55 = (v54 + v52), (*(result + 10) - v54) < v53) ? (v56 = v55 > 6) : (v56 = 0), v56))
  {
    if (v51 == 7)
    {
      v60 = v5;
      v61 = v6;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_or_split(a1, &v60);
      result = *a2;
    }

    if (*(result + 11))
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_left_to_right(result, v54, *(v5 + 8 * (v6 + 1) + 240));
  v57 = *(a2 + 2);
  v58 = *(*a2 + 10);
  if (v57 > v58)
  {
    v59 = v57 + ~v58;
    goto LABEL_48;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (a3 + 16);
  if (*(a3 + 10))
  {
    v4 = 32 * *(a3 + 10);
    do
    {
      v5 = (a3 - 16 + 32 * a2 + v4);
      v6 = *(a3 + v4);
      *v5 = *(a3 - 16 + v4);
      v5[1] = v6;
      v4 -= 32;
    }

    while (v4);
  }

  v7 = &v3[2 * a2 - 2];
  v8 = *result + 32 * *(result + 8);
  v9 = *(v8 + 32);
  *v7 = *(v8 + 16);
  v7[1] = v9;
  v10 = *(result + 10);
  if (a2 != 1)
  {
    v11 = -32 * a2;
    v12 = result + 32 * v10 + 48;
    do
    {
      v13 = *(v12 + v11 + 16);
      *v3 = *(v12 + v11);
      v3[1] = v13;
      v3 += 2;
      v11 += 32;
    }

    while (v11 != -32);
    LODWORD(v10) = *(result + 10);
  }

  v14 = *result + 32 * *(result + 8);
  v15 = (result + 16 + 32 * (v10 - a2));
  v16 = v15[1];
  *(v14 + 16) = *v15;
  *(v14 + 32) = v16;
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v17 = a3 + 240;
      v18 = (*(a3 + 10) + 1);
      do
      {
        v19 = *(v17 + 8 * (v18 - 1));
        *(v17 + 8 * (v18 - 1 + a2)) = v19;
        *(v19 + 8) = v18 - 1 + a2;
        *v19 = a3;
        --v18;
      }

      while (v18);
    }

    if (a2)
    {
      v20 = 0;
      if ((a2 + 1) <= 2u)
      {
        v21 = 2;
      }

      else
      {
        v21 = (a2 + 1);
      }

      v22 = v21 - 1;
      do
      {
        v23 = *(result + 240 + 8 * (v20 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v20 + 240) = v23;
        *(v23 + 8) = v20;
        *v23 = a3;
        ++v20;
      }

      while (v22 != v20);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::split(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 == 7)
  {
    LOBYTE(v3) = 0;
  }

  else if (a2)
  {
    v3 = result[10] >> 1;
  }

  else
  {
    LOBYTE(v3) = result[10] - 1;
  }

  *(a3 + 10) = v3;
  v4 = result[10] - v3;
  result[10] = v4;
  v5 = result + 16;
  if (*(a3 + 10))
  {
    v6 = &v5[32 * v4];
    v7 = (a3 + 16);
    v8 = 32 * *(a3 + 10);
    do
    {
      v9 = *v6;
      v10 = *(v6 + 1);
      v6 += 32;
      *v7 = v9;
      v7[1] = v10;
      v7 += 2;
      v8 -= 32;
    }

    while (v8);
    v4 = result[10];
  }

  v11 = v4 - 1;
  result[10] = v4 - 1;
  v12 = *result;
  v13 = result[8];
  v14 = &v5[32 * v11];
  v15 = *(*result + 10);
  v16 = v15 - v13;
  if (v15 > v13 && (v16 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = (v12 + 32 * v13 + 16 + 32 * v16);
    v18 = 32 * v13 - 32 * v15;
    do
    {
      v19 = *(v17 - 1);
      *v17 = *(v17 - 2);
      v17[1] = v19;
      v17 -= 2;
      v18 += 32;
    }

    while (v18);
    LODWORD(v15) = *(v12 + 10);
  }

  v20 = v12 + 32 * v13;
  v21 = *(v14 + 1);
  *(v20 + 16) = *v14;
  *(v20 + 32) = v21;
  v22 = v15 + 1;
  *(v12 + 10) = v15 + 1;
  if (!*(v12 + 11))
  {
    v23 = v13 + 1;
    if (v23 < v22)
    {
      v24 = v12 + 240;
      do
      {
        v25 = *(v24 + 8 * (v22 - 1));
        *(v24 + 8 * v22) = v25;
        *(v25 + 8) = v22;
      }

      while (v23 < --v22);
    }
  }

  *(*result + 8 * (result[8] + 1) + 240) = a3;
  v27 = result[11];
  if (!result[11])
  {
    v28 = result[10];
    do
    {
      v29 = *&result[8 * ++v28 + 240];
      *(a3 + 240 + 8 * v27) = v29;
      *(v29 + 8) = v27;
      *v29 = a3;
      ++v27;
    }

    while (*(a3 + 10) >= v27);
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::insert_hint_unique<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>@<X0>(uint64_t *result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (result[2])
  {
    v6 = result[1];
    v7 = v6[10];
    v8 = v6 == a2 && a3 == v7;
    if (v8 || (v9 = *a4, v10 = *&a2[32 * a3 + 16], *a4 < v10))
    {
      if (**result != a2 || a3 != 0)
      {
        if (a2[11])
        {
          if (a3 <= 0)
          {
            v18 = a2;
            while (1)
            {
              i = *v18;
              if (*(*v18 + 11))
              {
                break;
              }

              v12 = v18[8];
              v18 = *v18;
              if (v12)
              {
                goto LABEL_28;
              }
            }
          }

          v12 = a3;
          i = a2;
        }

        else
        {
            ;
          }

          v12 = i[10];
        }

LABEL_28:
        if (*&i[(((v12 << 32) - 0x100000000) >> 27) + 16] >= *a4)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (v10 >= v9)
      {
        *a6 = a2;
        *(a6 + 8) = a3;
        *(a6 + 16) = 0;
        return result;
      }

      if (a2[11])
      {
        v14 = (a3 + 1);
        a3 = a3 & 0xFFFFFFFF00000000 | v14;
        if (v14 == a2[10])
        {
          v15 = a2;
          while (1)
          {
            v16 = *v15;
            if (*(*v15 + 11))
            {
              break;
            }

            v17 = v15[8];
            a3 = a3 & 0xFFFFFFFF00000000 | v17;
            v15 = *v15;
            if (v17 != v16[10])
            {
              goto LABEL_37;
            }
          }

          a3 = a3 & 0xFFFFFFFF00000000 | v14;
        }

        v16 = a2;
      }

      else
      {
        v19 = &a2[8 * (a3 + 1) + 240];
        do
        {
          v16 = *v19;
          v20 = *(*v19 + 11);
          v19 = (*v19 + 240);
        }

        while (!v20);
        a3 &= 0xFFFFFFFF00000000;
      }

LABEL_37:
      if ((v16 != v6 || a3 != v7) && v9 >= *&v16[32 * a3 + 16])
      {
        goto LABEL_29;
      }

      a2 = v16;
    }

    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::internal_emplace<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(result, a2, a3, a5);
    *a6 = result;
    *(a6 + 8) = v22;
    *(a6 + 16) = 1;
    return result;
  }

LABEL_29:

  return absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::insert_unique<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(result, a4, a6, a5);
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase_range(uint64_t a1@<X0>, uint64_t **a2@<X1>, unint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a3;
  v7 = a2;
  v22 = a4;
  v23 = a5;
  v10 = absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>,std::pair<operations_research::Domain const,int>&,std::pair<operations_research::Domain const,int>*>::operator-(&v22, a2, a3);
  if (v10)
  {
    v11 = v10;
    v12 = *(a1 + 16);
    if (v12 == v10)
    {
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::clear(a1);
      v13 = *(a1 + 8);
      v14 = *(v13 + 10);
      *a6 = v11;
      *(a6 + 8) = v13;
      *(a6 + 16) = v14;
      return;
    }

    if (v22 == v7)
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(v7, v6, (v23 - v6));
      *(a1 + 16) -= v11;
      v20 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_after_delete(a1, v7, v6);
      *a6 = v11;
      *(a6 + 8) = v20;
      *(a6 + 16) = v21;
      return;
    }

    v15 = v12 - v10;
    if (v12 >= v10)
    {
      do
      {
        while (!v7[11])
        {
          v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase(a1, v7, v6);
          v6 = v6 & 0xFFFFFFFF00000000 | v16;
          v12 = *(a1 + 16);
          if (v12 <= v15)
          {
            goto LABEL_14;
          }
        }

        v17 = v12 - v15;
        if (v7[10] - v6 >= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v7[10] - v6;
        }

        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(v7, v6, v18);
        *(a1 + 16) -= v18;
        v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_after_delete(a1, v7, v6);
        v6 = v6 & 0xFFFFFFFF00000000 | v19;
        v12 = *(a1 + 16);
      }

      while (v12 > v15);
    }

LABEL_14:
    *a6 = v11;
  }

  else
  {
    *a6 = 0;
  }

  *(a6 + 8) = v7;
  *(a6 + 16) = v6;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 10);
  v6 = (a3 + a2);
  if (v6 != v5)
  {
    v7 = (a1 + 16 + 32 * v6);
    v8 = (a1 + 16 + 32 * a2);
    v9 = 32 * v5 - 32 * v6;
    do
    {
      v10 = *v7;
      v11 = v7[1];
      v7 += 2;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 -= 32;
    }

    while (v9);
  }

  if (!*(a1 + 11))
  {
    v25 = a3 + a2;
    if (a3)
    {
      v12 = 0;
      v13 = a2 + 1;
      do
      {
        v14 = *(a1 + 240 + 8 * (v13 + v12));
        if (*(v14 + 11) || !*(v14 + 10))
        {
          operator delete(v14);
          goto LABEL_8;
        }

        v15 = *v14;
        do
        {
          v14 = v14[30];
        }

        while (!*(v14 + 11));
        v16 = *(v14 + 8);
        v17 = *v14;
        while (1)
        {
          v18 = *&v17[8 * v16 + 240];
          if (!v18[11])
          {
            break;
          }

          v19 = v17;
          operator delete(*&v17[8 * v16 + 240]);
          v17 = v19;
          if (v16 >= v19[10])
          {
            goto LABEL_20;
          }

LABEL_14:
          ++v16;
        }

        do
        {
          v18 = *(v18 + 30);
        }

        while (!v18[11]);
        v16 = v18[8];
        v20 = *v18;
        operator delete(v18);
        v17 = v20;
        if (v16 < v20[10])
        {
          goto LABEL_14;
        }

LABEL_20:
        while (1)
        {
          v16 = v17[8];
          v21 = *v17;
          operator delete(v17);
          if (v21 == v15)
          {
            break;
          }

          v17 = v21;
          if (v16 < v21[10])
          {
            goto LABEL_14;
          }
        }

LABEL_8:
        ++v12;
      }

      while (v12 != a3);
    }

    v22 = v25 + 1;
    if (v5 >= (v25 + 1))
    {
      v23 = a1 + 240;
      do
      {
        v24 = *(v23 + 8 * v22);
        *(v23 + 8 * (v22 - a3)) = v24;
        *(v24 + 8) = v22++ - a3;
      }

      while (v5 >= v22);
    }
  }

  *(a1 + 10) = v5 - a3;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_after_delete(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v16 = a2;
  v17 = a3;
  if (*a1 == a2)
  {
    goto LABEL_8;
  }

  if (a2[10] > 2u)
  {
    goto LABEL_9;
  }

  v6 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_merge_or_rebalance(a1, &v16);
  v4 = v16;
  v3 = v3 & 0xFFFFFFFF00000000 | v17;
  if (!v6)
  {
    goto LABEL_9;
  }

  LODWORD(v17) = v16[8];
  v7 = *v16;
  v16 = v7;
  if (v7 == *a1)
  {
LABEL_8:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_shrink(a1);
    if (!a1[2])
    {
      return a1[1];
    }
  }

  else
  {
    while (v7[10] <= 2u && absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_merge_or_rebalance(a1, &v16))
    {
      LODWORD(v17) = v16[8];
      v7 = *v16;
      v16 = v7;
      if (v7 == *a1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v8 = v4[10];
  if (v3 != v8)
  {
    return v4;
  }

  v9 = v3 & 0xFFFFFFFF00000000;
  if (v4[11])
  {
    v10 = v9 | v8;
    v11 = v4;
    while (1)
    {
      result = *v11;
      if (*(*v11 + 11))
      {
        break;
      }

      v13 = v11[8];
      v10 = v10 & 0xFFFFFFFF00000000 | v13;
      v11 = *v11;
      if (v13 != result[10])
      {
        return result;
      }
    }

    return v4;
  }

  v14 = &v4[8 * v8 + 240];
  do
  {
    result = *v14;
    v15 = *(*v14 + 11);
    v14 = *v14 + 240;
  }

  while (!v15);
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a2[11];
  if (a2[11])
  {
    v4 = a2[10];
    if (v4 != (a3 + 1))
    {
      v5 = (32 * a3) | 0x10;
      v6 = 32 * (v4 - (a3 + 1));
      v7 = (32 * (a3 + 1)) | 0x10;
      do
      {
        v8 = &a2[v5];
        v9 = *&a2[v7 + 16];
        *v8 = *&a2[v7];
        *(v8 + 1) = v9;
        v5 += 32;
        v7 += 32;
        v6 -= 32;
      }

      while (v6);
    }

    i = a2;
  }

  else
  {
      ;
    }

    v11 = a3 << 32;
    a3 = a3 & 0xFFFFFFFF00000000 | (i[10] - 1);
    v12 = &i[(i[10] + 0xFFFFFFFFLL) << 32 >> 27];
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    v15 = &a2[v11 >> 27];
    *(v15 + 1) = v13;
    *(v15 + 2) = v14;
  }

  --i[10];
  --*(a1 + 16);
  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_after_delete(a1, i, a3);
  if (!v3)
  {
    if (result[11])
    {
      if (v17 + 1 == result[10])
      {
        v18 = result;
        while (1)
        {
          v19 = *v18;
          if (*(*v18 + 11))
          {
            break;
          }

          v20 = v18[8];
          v18 = *v18;
          if (v20 != *(v19 + 10))
          {
            return v19;
          }
        }
      }
    }

    else
    {
      v21 = &result[8 * (v17 + 1) + 240];
      do
      {
        v22 = *v21;
        v23 = *(*v21 + 11);
        v21 = (*v21 + 240);
      }

      while (!v23);
      return v22;
    }
  }

  return result;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_shrink(uint64_t a1)
{
  v2 = *a1;
  if (*(v2 + 10))
  {
    return;
  }

  if (!*(v2 + 11))
  {
    v3 = v2[30];
    *v3 = **v3;
    *a1 = v3;
    if (!*(v2 + 11))
    {
      goto LABEL_7;
    }

LABEL_11:

    operator delete(v2);
    return;
  }

  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::EmptyNode(void)::empty_node;
  if (*(v2 + 11))
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!*(v2 + 10))
  {
    goto LABEL_11;
  }

  v4 = *v2;
  do
  {
    v2 = v2[30];
  }

  while (!*(v2 + 11));
  v5 = *(v2 + 8);
  v6 = *v2;
  while (1)
  {
    v7 = *&v6[8 * v5 + 240];
    if (!v7[11])
    {
      break;
    }

    v8 = v6;
    operator delete(*&v6[8 * v5 + 240]);
    v6 = v8;
    if (v5 >= v8[10])
    {
      goto LABEL_20;
    }

LABEL_14:
    ++v5;
  }

  do
  {
    v7 = *(v7 + 30);
  }

  while (!v7[11]);
  v5 = v7[8];
  v9 = *v7;
  operator delete(v7);
  v6 = v9;
  if (v5 < v9[10])
  {
    goto LABEL_14;
  }

LABEL_20:
  while (1)
  {
    v5 = v6[8];
    v10 = *v6;
    operator delete(v6);
    if (v10 == v4)
    {
      break;
    }

    v6 = v10;
    if (v5 < v10[10])
    {
      goto LABEL_14;
    }
  }
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_merge_or_rebalance(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = **a2;
  v6 = *(*a2 + 8);
  if (*(*a2 + 8))
  {
    v7 = *(v5 + 8 * (v6 - 1) + 240);
    v8 = *(v7 + 10) + 1;
    if (v8 + *(v4 + 10) <= 7)
    {
      *(a2 + 8) += v8;
      v22 = *(v7 + 10);
      v23 = *v7 + 32 * *(v7 + 8);
      v24 = (v7 + 32 * v22);
      v25 = *(v23 + 32);
      v24[1] = *(v23 + 16);
      v24[2] = v25;
      if (*(v4 + 10))
      {
        v26 = (v4 + 2);
        v27 = v24 + 3;
        v28 = 32 * *(v4 + 10);
        do
        {
          v29 = *v26;
          v30 = v26[1];
          v26 += 2;
          *v27 = v29;
          v27[1] = v30;
          v27 += 2;
          v28 -= 32;
        }

        while (v28);
        LODWORD(v22) = *(v7 + 10);
        v31 = *(v7 + 11);
        if (*(v7 + 11))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v31 = *(v7 + 11);
        if (*(v7 + 11))
        {
LABEL_15:
          LOBYTE(v32) = *(v4 + 10);
LABEL_51:
          *(v7 + 10) = v32 + v22 + 1;
          *(v4 + 10) = 0;
          absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(*v7, *(v7 + 8), 1);
          if (*(a1 + 8) == v4)
          {
            *(a1 + 8) = v7;
          }

          *a2 = v7;
          return 1;
        }
      }

      do
      {
        LODWORD(v22) = v22 + 1;
        v68 = v4[v31 + 30];
        *(v7 + 240 + 8 * v22) = v68;
        *(v68 + 8) = v22;
        *v68 = v7;
        ++v31;
        v32 = *(v4 + 10);
      }

      while (v32 >= v31);
      LOBYTE(v22) = *(v7 + 10);
      goto LABEL_51;
    }
  }

  if (v6 >= *(v5 + 10))
  {
    goto LABEL_42;
  }

  v9 = *(v5 + 8 * (v6 + 1) + 240);
  v10 = *(v4 + 10);
  v11 = *(v9 + 10);
  if (v10 + v11 + 1 <= 7)
  {
    v12 = v5 + 32 * v6;
    v13 = &v4[4 * v10];
    v14 = *(v12 + 32);
    *(v13 + 1) = *(v12 + 16);
    *(v13 + 2) = v14;
    if (*(v9 + 10))
    {
      v15 = (v9 + 16);
      v16 = v13 + 6;
      v17 = 32 * *(v9 + 10);
      do
      {
        v18 = *v15;
        v19 = v15[1];
        v15 += 2;
        *v16 = v18;
        v16[1] = v19;
        v16 += 2;
        v17 -= 32;
      }

      while (v17);
      LODWORD(v10) = *(v4 + 10);
    }

    v20 = *(v4 + 11);
    if (*(v4 + 11))
    {
      LOBYTE(v21) = *(v9 + 10);
    }

    else
    {
      do
      {
        LODWORD(v10) = v10 + 1;
        v69 = *(v9 + 240 + 8 * v20);
        v4[v10 + 30] = v69;
        *(v69 + 8) = v10;
        *v69 = v4;
        ++v20;
        v21 = *(v9 + 10);
      }

      while (v21 >= v20);
      LOBYTE(v10) = *(v4 + 10);
    }

    *(v4 + 10) = v21 + v10 + 1;
    *(v9 + 10) = 0;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(*v4, *(v4 + 8), 1);
    result = 1;
    if (*(a1 + 8) == v9)
    {
      *(a1 + 8) = v4;
    }

    return result;
  }

  if (v11 < 4 || *(v4 + 10) && *(a2 + 8) < 1)
  {
LABEL_42:
    if (!*(*a2 + 8))
    {
      return 0;
    }

    v62 = *(v5 + 8 * (v6 - 1) + 240);
    v63 = *(v62 + 10);
    if (v63 < 4)
    {
      return 0;
    }

    v64 = *(v4 + 10);
    if (*(v4 + 10))
    {
      if (*(a2 + 8) >= v64)
      {
        return 0;
      }
    }

    v65 = ((v63 - v64 + (((v63 - v64) & 0x8000) >> 15)) >> 1);
    v66 = (v63 - 1);
    if (v66 >= v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = v66;
    }

    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_left_to_right(v62, v67, v4);
    result = 0;
    *(a2 + 8) += v67;
    return result;
  }

  v33 = (v11 - v10 + (((v11 - v10) & 0x8000) >> 15)) >> 1;
  v34 = v11 - 1;
  LODWORD(v35) = (v11 - 1);
  if (v35 >= v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = v35;
  }

  v36 = &v4[4 * v10];
  v37 = v5 + 32 * v6;
  v38 = *(v37 + 32);
  *(v36 + 1) = *(v37 + 16);
  *(v36 + 2) = v38;
  v39 = (v9 + 16);
  v40 = (v9 + 16 + 32 * (v35 - 1));
  if (v35 != 1)
  {
    v41 = 32 * v10 + 48;
    v42 = v34;
    if (v34 >= v33)
    {
      v42 = v33;
    }

    v43 = 32 * v42 - 32;
    v44 = (v9 + 16);
    do
    {
      v45 = (v4 + v41);
      v46 = *v44;
      v47 = v44[1];
      v44 += 2;
      *v45 = v46;
      v45[1] = v47;
      v41 += 32;
      v43 -= 32;
    }

    while (v43);
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  v48 = v5 + 32 * v6;
  v49 = v40[1];
  *(v48 + 16) = *v40;
  *(v48 + 32) = v49;
  v50 = *(v9 + 10);
  if (v50 != v35)
  {
    v51 = 32 * v50 - 32 * v35;
    do
    {
      v52 = v39[2 * v35 + 1];
      *v39 = v39[2 * v35];
      v39[1] = v52;
      v39 += 2;
      v51 -= 32;
    }

    while (v51);
  }

  if (!*(v4 + 11))
  {
    if (v35)
    {
      v53 = (v9 + 240);
      v54 = 1;
      v55 = v35;
      do
      {
        v56 = *(v4 + 10) + v54;
        v57 = *v53++;
        v4[v56 + 30] = v57;
        *(v57 + 8) = v56;
        *v57 = v4;
        ++v54;
        --v55;
      }

      while (v55);
    }

    if (*(v9 + 10) >= v35)
    {
      v58 = 0;
      v59 = v9 + 240;
      do
      {
        v60 = *(v59 + 8 * (v58 + v35));
        *(v59 + 8 * v58) = v60;
        *(v60 + 8) = v58;
        *v60 = v9;
        ++v58;
      }

      while (*(v9 + 10) - v35 >= v58);
    }
  }

  result = 0;
  *(v4 + 10) += v35;
  *(v9 + 10) -= v35;
  return result;
}

uint64_t google::protobuf::internal::ValidateEnum(google::protobuf::internal *this, unsigned int *a2, const unsigned int *a3)
{
  v3 = *a2;
  v4 = v3 >> 16;
  v5 = this - v3;
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (!v6)
  {
    return 1;
  }

  v9 = a2[1];
  if (v7 < v9)
  {
    return (a2[(v7 >> 5) + 2] >> v7) & 1;
  }

  v10 = 0;
  v11 = v9 >> 16;
  v12 = &a2[(v9 >> 5) + 2];
  do
  {
    v13 = v10 < v11;
    if (v10 >= v11)
    {
      break;
    }

    v14 = v12[v10];
    v13 = 1;
    v15 = v14 == this;
    v16 = v14 > this ? 1 : 2;
    v10 = v16 + 2 * v10;
  }

  while (!v15);
  return v13;
}

unsigned __int16 *google::protobuf::internal::TcParser::ParseLoop(uint64_t a1, unsigned __int16 *done, google::protobuf::internal::EpsCopyInputStream *this, uint64_t a4)
{
  v7 = a4 + 48;
  while (done < *this)
  {
LABEL_3:
    v8 = *done;
    v9 = v7 + 2 * (v8 & *(v7 - 40));
    done = (*v9)(a1, done, this, *(v9 + 8) ^ v8, v7 - 48, 0);
    if (!done || *(this + 20))
    {
      return done;
    }
  }

  v10 = (done - *(this + 2));
  if (*(this + 7) != v10)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v10, *(this + 23), a4);
    if (v11)
    {
      return done;
    }

    goto LABEL_3;
  }

  if (v10 >= 1 && !*(this + 2))
  {
    return 0;
  }

  return done;
}

uint64_t google::protobuf::internal::TcParser::Error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, int a6)
{
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return 0;
}

uint64_t google::protobuf::internal::TcParser::MiniParse(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x8_t a7)
{
  v9 = *a2;
  v8 = (a2 + 1);
  v10 = v9;
  if ((v9 & 0x80000000) == 0)
  {
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 <= 0x1F)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = (*(a5 + 10) + a5);
    v19 = *v18;
    if (*v18 <= v11)
    {
      while (1)
      {
        v20 = v18 + 6;
        v21 = *(v18 + 2);
        v22 = v11 - v19;
        v23 = (v11 - v19) >> 4;
        if (v23 < v21)
        {
          break;
        }

        v18 = (v20 + 4 * v21);
        v19 = *v18;
        if (*v18 > v11)
        {
          return (*(a5 + 40))();
        }
      }

      v24 = (v20 + 4 * v23);
      v25 = *v24;
      v26 = 1 << (v22 & 0xF);
      if ((v26 & v25) == 0)
      {
        a7.i32[0] = (v26 - 1) & v25;
        v27 = vcnt_s8(a7);
        v27.i16[0] = vaddlv_u8(v27);
        v16 = (v22 & 0xF) - v27.i32[0] + v24[1];
        return (*(&google::protobuf::internal::TcParser::MiniParse<false>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::kMiniParseTable + (*(v12 + a5 + 12 * v16 + 10) & 0xF)))(a1, v8, a3, v10 | ((v12 + 12 * v16) << 32));
      }
    }

    return (*(a5 + 40))();
  }

  v10 = *v8 | (v10 << 57);
  if ((*v8 & 0x80000000) == 0)
  {
    LODWORD(v10) = __ROR8__(v10, 57);
    v8 = (a2 + 2);
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 > 0x1F)
    {
      goto LABEL_8;
    }

LABEL_3:
    v14 = *(a5 + 12);
    if ((v14 & (1 << v13)) == 0)
    {
      a7.i32[0] = v14 & ((1 << v13) - 1);
      v15 = vcnt_s8(a7);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v13 - v15.i32[0];
      return (*(&google::protobuf::internal::TcParser::MiniParse<false>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::kMiniParseTable + (*(v12 + a5 + 12 * v16 + 10) & 0xF)))(a1, v8, a3, v10 | ((v12 + 12 * v16) << 32));
    }

    return (*(a5 + 40))();
  }

  v10 = __ROR8__(v10, 7) & 0xFFFC000000000000 | a2[2];
  if ((a2[2] & 0x80000000) == 0)
  {
    LODWORD(v10) = __ROR8__(v10, 50);
    v8 = (a2 + 3);
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 > 0x1F)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v10 = __ROR8__(v10, 7) & 0xFFFFF80000000000 | a2[3];
  if ((a2[3] & 0x80000000) == 0)
  {
    LODWORD(v10) = __ROR8__(v10, 43);
    v8 = (a2 + 4);
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 > 0x1F)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v28 = a2[4];
  if ((v28 & 0x8000000000000000) == 0)
  {
    LODWORD(v10) = __ROR8__(__ROR8__(v10, 7) & 0xFFFFFFF000000000 | v28, 36);
    v8 = (a2 + 5);
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 > 0x1F)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  return google::protobuf::internal::TcParser::Error(a1, v8, a3, a4, a5, a6);
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEndG1(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a3 + 80) = WORD1(a4) - 1;
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return (a2 + 1);
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEndG2(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a3 + 80) = WORD1(a4) - 1;
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return (a2 + 2);
}

uint64_t google::protobuf::internal::TcParser::FastMdS1(uint64_t a1, uint64_t a2, google::protobuf::internal::ParseContext *this, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
    }

    v8 = HIWORD(a4);
    v9 = *(a1 + HIWORD(a4));
    if (!v9)
    {
      v10 = *(a1 + 8);
      v12 = a2;
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = (*(**(&a5[4 * BYTE3(a4)] + *(a5 + 6)) + 16))(*(&a5[4 * BYTE3(a4)] + *(a5 + 6)), v10, a7);
      *(a1 + v8) = v9;
      a2 = v12;
    }

    return google::protobuf::internal::ParseContext::ParseMessage(this, v9, (a2 + 1));
  }
}

uint64_t google::protobuf::internal::TcParser::FastMdS2(uint64_t a1, uint64_t a2, google::protobuf::internal::ParseContext *this, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
    }

    v8 = HIWORD(a4);
    v9 = *(a1 + HIWORD(a4));
    if (!v9)
    {
      v10 = *(a1 + 8);
      v12 = a2;
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = (*(**(&a5[4 * BYTE3(a4)] + *(a5 + 6)) + 16))(*(&a5[4 * BYTE3(a4)] + *(a5 + 6)), v10, a7);
      *(a1 + v8) = v9;
      a2 = v12;
    }

    return google::protobuf::internal::ParseContext::ParseMessage(this, v9, (a2 + 2));
  }
}

uint64_t google::protobuf::internal::TcParser::FastGdS1(uint64_t a1, char *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  if (!a4)
  {
    v8 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
    }

    v9 = HIWORD(a4);
    v10 = *(a1 + HIWORD(a4));
    if (v10)
    {
      v11 = a3[11].i32[0];
      v12 = __OFSUB__(v11--, 1);
      a3[11].i32[0] = v11;
      if (v11 < 0 == v12)
      {
LABEL_6:
        ++a3[11].i32[1];
        result = (*(*v10 + 56))(v10, a2 + 1, a3);
        a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
        v14 = a3[10].i32[0];
        a3[10].i32[0] = 0;
        if (v14 != v8)
        {
          return 0;
        }

        return result;
      }
    }

    else
    {
      v15 = *(a1 + 8);
      v17 = a2;
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = (*(**(&a5[4 * BYTE3(a4)] + *(a5 + 6)) + 16))(*(&a5[4 * BYTE3(a4)] + *(a5 + 6)), v15, a7);
      *(a1 + v9) = v10;
      a2 = v17;
      v18 = a3[11].i32[0];
      v12 = __OFSUB__(v18--, 1);
      a3[11].i32[0] = v18;
      if (v18 < 0 == v12)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
}

uint64_t google::protobuf::internal::TcParser::FastGdS2(uint64_t a1, char *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  if (!a4)
  {
    v8 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
    }

    v9 = HIWORD(a4);
    v10 = *(a1 + HIWORD(a4));
    if (v10)
    {
      v11 = a3[11].i32[0];
      v12 = __OFSUB__(v11--, 1);
      a3[11].i32[0] = v11;
      if (v11 < 0 == v12)
      {
LABEL_6:
        ++a3[11].i32[1];
        result = (*(*v10 + 56))(v10, a2 + 2, a3);
        a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
        v14 = a3[10].i32[0];
        a3[10].i32[0] = 0;
        if (v14 != (v8 + v8) >> 1)
        {
          return 0;
        }

        return result;
      }
    }

    else
    {
      v15 = *(a1 + 8);
      v17 = a2;
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = (*(**(&a5[4 * BYTE3(a4)] + *(a5 + 6)) + 16))(*(&a5[4 * BYTE3(a4)] + *(a5 + 6)), v15, a7);
      *(a1 + v9) = v10;
      a2 = v17;
      v18 = a3[11].i32[0];
      v12 = __OFSUB__(v18--, 1);
      a3[11].i32[0] = v18;
      if (v18 < 0 == v12)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
}

unsigned __int8 *google::protobuf::internal::TcParser::FastMtS1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7.n128_u64[0]);
  }

  if (*a5)
  {
    *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
  }

  v9 = HIWORD(a4);
  v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  if (*(a1 + HIWORD(a4)))
  {
    v11 = (a2 + 1);
    v12 = a2[1];
    if ((a2[1] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    google::protobuf::internal::ReadSizeFallback(v11, v12);
    done = v20;
    if (!v20)
    {
      return done;
    }

    LODWORD(v12) = v19;
    v21 = *(this + 22);
    v15 = __OFSUB__(v21, 1);
    v16 = v21 - 1;
    if (v16 < 0 != v15)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v17 = *(a1 + 8);
  v18 = a2;
  if (v17)
  {
    v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + v9) = (*(**(v10 + 32) + 16))(*(v10 + 32), v17, a7);
  a2 = v18;
  v11 = (v18 + 1);
  v12 = v18[1];
  if (v18[1] < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  done = (a2 + 2);
  v14 = *(this + 22);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v16 < 0 != v15)
  {
    return 0;
  }

LABEL_14:
  v22 = *(this + 1);
  v23 = v12 + done - v22;
  *this = v22 + (v23 & (v23 >> 31));
  LODWORD(v22) = *(this + 7);
  *(this + 7) = v23;
  v24 = v22 - v23;
  *(this + 22) = v16;
  v25 = *(a1 + v9);
  while (done < *this)
  {
LABEL_16:
    v26 = *done;
    v27 = v10 + 48 + 2 * (v26 & *(v10 + 8));
    done = (*v27)(v25, done, this, *(v27 + 8) ^ v26, v10, 0);
    if (!done || *(this + 20))
    {
LABEL_21:
      LODWORD(v28) = *(this + 7);
      goto LABEL_22;
    }
  }

  v28 = (done - *(this + 2));
  if (*(this + 7) != v28)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v28, *(this + 23), a4);
    if (v29)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v28 >= 1 && !*(this + 2))
  {
    done = 0;
  }

LABEL_22:
  ++*(this + 22);
  *(this + 7) = v28 + v24;
  if (*(this + 20))
  {
    return 0;
  }

  *this = *(this + 1) + ((v28 + v24) & ((v28 + v24) >> 31));
  return done;
}

unsigned __int8 *google::protobuf::internal::TcParser::FastMtS2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7.n128_u64[0]);
  }

  if (*a5)
  {
    *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
  }

  v9 = HIWORD(a4);
  v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  if (*(a1 + HIWORD(a4)))
  {
    v11 = (a2 + 2);
    v12 = a2[2];
    if ((a2[2] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    google::protobuf::internal::ReadSizeFallback(v11, v12);
    done = v20;
    if (!v20)
    {
      return done;
    }

    LODWORD(v12) = v19;
    v21 = *(this + 22);
    v15 = __OFSUB__(v21, 1);
    v16 = v21 - 1;
    if (v16 < 0 != v15)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v17 = *(a1 + 8);
  v18 = a2;
  if (v17)
  {
    v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + v9) = (*(**(v10 + 32) + 16))(*(v10 + 32), v17, a7);
  a2 = v18;
  v11 = (v18 + 2);
  v12 = v18[2];
  if (v18[2] < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  done = (a2 + 3);
  v14 = *(this + 22);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v16 < 0 != v15)
  {
    return 0;
  }

LABEL_14:
  v22 = *(this + 1);
  v23 = v12 + done - v22;
  *this = v22 + (v23 & (v23 >> 31));
  LODWORD(v22) = *(this + 7);
  *(this + 7) = v23;
  v24 = v22 - v23;
  *(this + 22) = v16;
  v25 = *(a1 + v9);
  while (done < *this)
  {
LABEL_16:
    v26 = *done;
    v27 = v10 + 48 + 2 * (v26 & *(v10 + 8));
    done = (*v27)(v25, done, this, *(v27 + 8) ^ v26, v10, 0);
    if (!done || *(this + 20))
    {
LABEL_21:
      LODWORD(v28) = *(this + 7);
      goto LABEL_22;
    }
  }

  v28 = (done - *(this + 2));
  if (*(this + 7) != v28)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v28, *(this + 23), a4);
    if (v29)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v28 >= 1 && !*(this + 2))
  {
    done = 0;
  }

LABEL_22:
  ++*(this + 22);
  *(this + 7) = v28 + v24;
  if (*(this + 20))
  {
    return 0;
  }

  *this = *(this + 1) + ((v28 + v24) & ((v28 + v24) >> 31));
  return done;
}

unsigned __int8 *google::protobuf::internal::TcParser::FastGtS1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7.n128_u64[0]);
  }

  v8 = *a2;
  if (*a5)
  {
    *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
  }

  v9 = HIWORD(a4);
  v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  v11 = *(a1 + HIWORD(a4));
  if (!v11)
  {
    v23 = *(a1 + 8);
    v25 = a2;
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = (*(**(v10 + 32) + 16))(*(v10 + 32), v23, a7);
    *(a1 + v9) = v11;
    a2 = v25;
    v26 = *(this + 22);
    v13 = __OFSUB__(v26--, 1);
    *(this + 22) = v26;
    if (v26 < 0 == v13)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

LABEL_6:
  done = (a2 + 1);
  ++*(this + 23);
  v15 = v10 + 48;
  while (done < *this)
  {
LABEL_8:
    v16 = *done;
    v17 = v15 + 2 * (v16 & *(v15 - 40));
    done = (*v17)(v11, done, this, *(v17 + 8) ^ v16, v15 - 48, 0);
    if (!done || *(this + 20))
    {
LABEL_13:
      v18 = *(this + 23);
      goto LABEL_14;
    }
  }

  v18 = *(this + 23);
  v19 = (done - *(this + 2));
  if (*(this + 7) != v19)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v19, v18, a4);
    if (v20)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v19 >= 1 && !*(this + 2))
  {
    done = 0;
  }

LABEL_14:
  ++*(this + 22);
  *(this + 23) = v18 - 1;
  v21 = *(this + 20);
  *(this + 20) = 0;
  if (v21 == v8)
  {
    return done;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastGtS2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7.n128_u64[0]);
  }

  v8 = *a2;
  if (*a5)
  {
    *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
  }

  v9 = HIWORD(a4);
  v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  v11 = *(a1 + HIWORD(a4));
  if (!v11)
  {
    v24 = *(a1 + 8);
    v26 = a2;
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = (*(**(v10 + 32) + 16))(*(v10 + 32), v24, a7);
    *(a1 + v9) = v11;
    a2 = v26;
    v27 = *(this + 22);
    v13 = __OFSUB__(v27--, 1);
    *(this + 22) = v27;
    if (v27 < 0 == v13)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

LABEL_6:
  v14 = (v8 + v8) >> 1;
  done = (a2 + 2);
  ++*(this + 23);
  v16 = v10 + 48;
  while (done < *this)
  {
LABEL_8:
    v17 = *done;
    v18 = v16 + 2 * (v17 & *(v16 - 40));
    done = (*v18)(v11, done, this, *(v18 + 8) ^ v17, v16 - 48, 0);
    if (!done || *(this + 20))
    {
LABEL_13:
      v19 = *(this + 23);
      goto LABEL_14;
    }
  }

  v19 = *(this + 23);
  v20 = (done - *(this + 2));
  if (*(this + 7) != v20)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v20, v19, a4);
    if (v21)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v20 >= 1 && !*(this + 2))
  {
    done = 0;
  }

LABEL_14:
  ++*(this + 22);
  *(this + 23) = v19 - 1;
  v22 = *(this + 20);
  *(this + 20) = 0;
  if (v22 == v14)
  {
    return done;
  }

  else
  {
    return 0;
  }
}

void google::protobuf::internal::TcParser::FastMlS1()
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v0, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_tctable_lite.cc", 457);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v0, "Unimplemented");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v0);
}

void google::protobuf::internal::TcParser::FastMlS2()
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v0, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_tctable_lite.cc", 457);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v0, "Unimplemented");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v0);
}

unsigned __int8 *google::protobuf::internal::TcParser::FastMdR1(uint64_t a1, char *a2, google::protobuf::internal::ParseContext *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *a2;
    v13 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v14 = (a1 + HIWORD(a4));
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v14, v13);
      result = google::protobuf::internal::ParseContext::ParseMessage(a3, v15, v10 + 1);
      if (!result)
      {
        break;
      }

      v10 = result;
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }

      if (*result != v12)
      {
        v20 = *result;
        v21 = &a5[(v20 & a5[4])];
        v22 = *(v21 + 6);
        v23 = *(v21 + 7) ^ v20;

        return v22(a1, result, a3, v23, a5, a6);
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, a6);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastMdR2(uint64_t a1, char *a2, google::protobuf::internal::ParseContext *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *a2;
    v13 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v14 = (a1 + HIWORD(a4));
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v14, v13);
      result = google::protobuf::internal::ParseContext::ParseMessage(a3, v15, v10 + 2);
      if (!result)
      {
        break;
      }

      v10 = result;
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }

      v20 = *result;
      if (v20 != v12)
      {
        v21 = &a5[(v20 & a5[4])];
        v22 = *(v21 + 6);
        v23 = *(v21 + 7) ^ v20;

        return v22(a1, result, a3, v23, a5, a6);
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, a6);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastGdR1(uint64_t a1, char *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *a2;
    v13 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v14 = (a1 + HIWORD(a4));
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v14, v13);
      v19 = a3[11].i32[0];
      v20 = __OFSUB__(v19, 1);
      a3[11].i32[0] = --v19;
      if (v19 < 0 != v20)
      {
        break;
      }

      ++a3[11].i32[1];
      result = (*(*v15 + 56))(v15, v10 + 1, a3);
      a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
      v22 = a3[10].i32[0];
      a3[10].i32[0] = 0;
      if (v22 != v12 || result == 0)
      {
        break;
      }

      v10 = result;
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }

      if (*result != v12)
      {
        v24 = *result;
        v25 = &a5[(v24 & a5[4])];
        v26 = *(v25 + 6);
        v27 = *(v25 + 7) ^ v24;

        return v26(a1, result, a3, v27, a5, a6);
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v16, v17, v18, a5, a6);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastGdR2(uint64_t a1, char *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v13 = *a2;
    v14 = (a1 + HIWORD(a4));
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v14, v12);
      v19 = a3[11].i32[0];
      v20 = __OFSUB__(v19, 1);
      a3[11].i32[0] = --v19;
      if (v19 < 0 != v20)
      {
        break;
      }

      ++a3[11].i32[1];
      result = (*(*v15 + 56))(v15, v10 + 2, a3);
      a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
      v22 = a3[10].i32[0];
      a3[10].i32[0] = 0;
      if (v22 != (v13 + v13) >> 1 || result == 0)
      {
        break;
      }

      v10 = result;
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }

      v24 = *result;
      if (v24 != v13)
      {
        v25 = &a5[(v24 & a5[4])];
        v26 = *(v25 + 6);
        v27 = *(v25 + 7) ^ v24;

        return v26(a1, result, a3, v27, a5, a6);
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v16, v17, v18, a5, a6);
  }
}

char *google::protobuf::internal::TcParser::FastMtR1(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  done = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v10 = *a2;
  v11 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  v12 = (a1 + HIWORD(a4));
  v13 = *(v11 + 32);
  v14 = v11 + 48;
  while (2)
  {
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v12, v13);
    v18 = done[1];
    if ((v18 & 0x80) != 0)
    {
      google::protobuf::internal::ReadSizeFallback((done + 1), v18);
      if (!v22)
      {
        break;
      }

      done = v22;
      v23 = *(a3 + 88);
      v20 = __OFSUB__(v23, 1);
      v21 = v23 - 1;
      if (v21 < 0 != v20)
      {
        break;
      }
    }

    else
    {
      done += 2;
      v19 = *(a3 + 88);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21 < 0 != v20)
      {
        break;
      }
    }

    v24 = *(a3 + 8);
    v25 = v18 + done - v24;
    *a3 = v24 + (v25 & (v25 >> 31));
    LODWORD(v24) = *(a3 + 28);
    *(a3 + 28) = v25;
    v26 = v24 - v25;
    *(a3 + 88) = v21;
    while (done < *a3)
    {
LABEL_11:
      v27 = *done;
      v28 = v14 + 2 * (v27 & *(v14 - 40));
      done = (*v28)(v17, done, a3, *(v28 + 8) ^ v27, v14 - 48, 0);
      if (!done || *(a3 + 80))
      {
LABEL_16:
        v18 = *(a3 + 28);
        goto LABEL_17;
      }
    }

    v18 = (done - *(a3 + 8));
    if (*(a3 + 28) != v18)
    {
      done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v18, *(a3 + 92), v16);
      if (v29)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v18 >= 1 && !*(a3 + 16))
    {
      done = 0;
    }

LABEL_17:
    ++*(a3 + 88);
    *(a3 + 28) = v18 + v26;
    if (!*(a3 + 80))
    {
      v30 = *(a3 + 8) + ((v18 + v26) & ((v18 + v26) >> 31));
      *a3 = v30;
      if (done)
      {
        if (v30 <= done)
        {
          if (*a5)
          {
            *(a1 + *a5) |= a6;
          }

          return done;
        }

        if (*done != v10)
        {
          v32 = *done;
          v33 = &a5[(v32 & a5[4])];
          v34 = *(v33 + 6);
          v35 = *(v33 + 7) ^ v32;

          return v34(a1, done, a3, v35, a5, a6);
        }

        continue;
      }
    }

    break;
  }

  return google::protobuf::internal::TcParser::Error(a1, v18, v15, v16, a5, a6);
}

char *google::protobuf::internal::TcParser::FastMtR2(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  done = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v10 = *a2;
  v11 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  v12 = (a1 + HIWORD(a4));
  v13 = *(v11 + 32);
  v14 = v11 + 48;
  while (2)
  {
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v12, v13);
    v18 = done[2];
    if ((v18 & 0x80) != 0)
    {
      google::protobuf::internal::ReadSizeFallback((done + 2), v18);
      if (!v22)
      {
        break;
      }

      done = v22;
      v23 = *(a3 + 88);
      v20 = __OFSUB__(v23, 1);
      v21 = v23 - 1;
      if (v21 < 0 != v20)
      {
        break;
      }
    }

    else
    {
      done += 3;
      v19 = *(a3 + 88);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21 < 0 != v20)
      {
        break;
      }
    }

    v24 = *(a3 + 8);
    v25 = v18 + done - v24;
    *a3 = v24 + (v25 & (v25 >> 31));
    LODWORD(v24) = *(a3 + 28);
    *(a3 + 28) = v25;
    v26 = v24 - v25;
    *(a3 + 88) = v21;
    while (done < *a3)
    {
LABEL_11:
      v27 = *done;
      v28 = v14 + 2 * (v27 & *(v14 - 40));
      done = (*v28)(v17, done, a3, *(v28 + 8) ^ v27, v14 - 48, 0);
      if (!done || *(a3 + 80))
      {
LABEL_16:
        v18 = *(a3 + 28);
        goto LABEL_17;
      }
    }

    v18 = (done - *(a3 + 8));
    if (*(a3 + 28) != v18)
    {
      done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v18, *(a3 + 92), v16);
      if (v29)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v18 >= 1 && !*(a3 + 16))
    {
      done = 0;
    }

LABEL_17:
    ++*(a3 + 88);
    *(a3 + 28) = v18 + v26;
    if (!*(a3 + 80))
    {
      v30 = *(a3 + 8) + ((v18 + v26) & ((v18 + v26) >> 31));
      *a3 = v30;
      if (done)
      {
        if (v30 <= done)
        {
          if (*a5)
          {
            *(a1 + *a5) |= a6;
          }

          return done;
        }

        v31 = *done;
        if (v31 != v10)
        {
          v33 = &a5[(v31 & a5[4])];
          v34 = *(v33 + 6);
          v35 = *(v33 + 7) ^ v31;

          return v34(a1, done, a3, v35, a5, a6);
        }

        continue;
      }
    }

    break;
  }

  return google::protobuf::internal::TcParser::Error(a1, v18, v15, v16, a5, a6);
}

char *google::protobuf::internal::TcParser::FastGtR1(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  done = a2;
  if (!a4)
  {
    v11 = *a2;
    v12 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v13 = (a1 + HIWORD(a4));
    v14 = *(v12 + 32);
    v15 = v12 + 48;
    while (1)
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v13, v14);
      v20 = *(a3 + 88);
      v21 = __OFSUB__(v20--, 1);
      *(a3 + 88) = v20;
      if (v20 < 0 != v21)
      {
LABEL_23:

        return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, a6);
      }

      v22 = v16;
      ++done;
      ++*(a3 + 92);
      while (done < *a3)
      {
LABEL_6:
        v23 = *done;
        v24 = v15 + 2 * (v23 & *(v15 - 40));
        done = (*v24)(v22, done, a3, *(v24 + 8) ^ v23, v15 - 48, 0);
        if (!done || *(a3 + 80))
        {
LABEL_11:
          v18 = *(a3 + 92);
          goto LABEL_12;
        }
      }

      v18 = *(a3 + 92);
      v17 = (done - *(a3 + 8));
      if (*(a3 + 28) != v17)
      {
        break;
      }

      if (v17 >= 1 && !*(a3 + 16))
      {
        done = 0;
      }

LABEL_12:
      ++*(a3 + 88);
      *(a3 + 92) = v18 - 1;
      v25 = *(a3 + 80);
      *(a3 + 80) = 0;
      if (v25 != v11 || done == 0)
      {
        goto LABEL_23;
      }

      if (*a3 <= done)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return done;
      }

      if (*done != v11)
      {
        v28 = *done;
        v29 = &a5[(v28 & a5[4])];
        v30 = *(v29 + 6);
        v31 = *(v29 + 7) ^ v28;

        return v30(a1, done, a3, v31, a5, a6);
      }
    }

    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v17, v18, v19);
    if (v17)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

char *google::protobuf::internal::TcParser::FastGtR2(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  done = a2;
  if (!a4)
  {
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = *a2;
    v12 = (a1 + HIWORD(a4));
    v13 = *(v10 + 32);
    v14 = v10 + 48;
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v12, v13);
      v19 = *(a3 + 88);
      v20 = __OFSUB__(v19--, 1);
      *(a3 + 88) = v19;
      if (v19 < 0 != v20)
      {
LABEL_23:

        return google::protobuf::internal::TcParser::Error(a1, v16, v17, v18, a5, a6);
      }

      v21 = v15;
      done += 2;
      ++*(a3 + 92);
      while (done < *a3)
      {
LABEL_6:
        v22 = *done;
        v23 = v14 + 2 * (v22 & *(v14 - 40));
        done = (*v23)(v21, done, a3, *(v23 + 8) ^ v22, v14 - 48, 0);
        if (!done || *(a3 + 80))
        {
LABEL_11:
          v17 = *(a3 + 92);
          goto LABEL_12;
        }
      }

      v17 = *(a3 + 92);
      v16 = (done - *(a3 + 8));
      if (*(a3 + 28) != v16)
      {
        break;
      }

      if (v16 >= 1 && !*(a3 + 16))
      {
        done = 0;
      }

LABEL_12:
      ++*(a3 + 88);
      *(a3 + 92) = v17 - 1;
      v24 = *(a3 + 80);
      *(a3 + 80) = 0;
      if (v24 != (v11 + v11) >> 1 || done == 0)
      {
        goto LABEL_23;
      }

      if (*a3 <= done)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return done;
      }

      v26 = *done;
      if (v26 != v11)
      {
        v28 = &a5[(v26 & a5[4])];
        v29 = *(v28 + 6);
        v30 = *(v28 + 7) ^ v26;

        return v29(a1, done, a3, v30, a5, a6);
      }
    }

    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v16, v17, v18);
    if (v16)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastF32S1(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = *(a2 + 1);
  v8 = (a2 + 5);
  if (*a3 > v8)
  {
    return (*&a5[(*v8 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v7;
  }

  return v8;
}

unsigned __int16 *google::protobuf::internal::TcParser::FastF32S2(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = *(a2 + 2);
  v8 = (a2 + 6);
  if (*a3 > v8)
  {
    return (*&a5[(*v8 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v7;
  }

  return v8;
}

unsigned __int16 *google::protobuf::internal::TcParser::FastF64S1(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = *(a2 + 1);
  v8 = (a2 + 9);
  if (*a3 > v8)
  {
    return (*&a5[(*v8 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v7;
  }

  return v8;
}

unsigned __int16 *google::protobuf::internal::TcParser::FastF64S2(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = *(a2 + 2);
  v8 = (a2 + 10);
  if (*a3 > v8)
  {
    return (*&a5[(*v8 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v7;
  }

  return v8;
}

unsigned __int8 *google::protobuf::internal::TcParser::FastF32R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *a2;
    v9 = *v7;
    v10 = v7[1];
    while (1)
    {
      v11 = *(a2 + 1);
      if (v9 == v10)
      {
        v13 = a3;
        v14 = a1;
        v15 = a2;
        v16 = a6;
        v17 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, v9, (v9 + 1));
        a3 = v13;
        a1 = v14;
        a5 = v17;
        a2 = v15;
        a6 = v16;
        LODWORD(v9) = *v7;
        v10 = v7[1];
      }

      v12 = *(v7 + 1);
      *v7 = v9 + 1;
      *(v12 + 4 * v9) = v11;
      a2 += 5;
      if (*a3 <= a2)
      {
        break;
      }

      v9 = (v9 + 1);
      if (*a2 != v8)
      {
        v18 = *&a5[(*a2 & *(a5 + 8)) + 24];

        return v18(a1);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return a2;
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastF32R2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v10 = *a2;
    v8 = (a2 + 6);
    v9 = v10;
    v11 = *v7;
    v12 = v7[1];
    while (1)
    {
      v13 = *(v8 - 1);
      if (v11 == v12)
      {
        v17 = a3;
        v18 = a1;
        v19 = v8;
        v20 = a6;
        v21 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, v11, (v11 + 1));
        a3 = v17;
        v8 = v19;
        a1 = v18;
        a5 = v21;
        a6 = v20;
        LODWORD(v11) = *v7;
        v12 = v7[1];
      }

      v14 = *(v7 + 1);
      *v7 = v11 + 1;
      *(v14 + 4 * v11) = v13;
      if (*a3 <= v8)
      {
        break;
      }

      v16 = *v8;
      v8 += 6;
      v15 = v16;
      v11 = (v11 + 1);
      if (v16 != v9)
      {
        v22 = *&a5[(v15 & a5[4]) + 24];
        v23 = v8 - 6;

        return v22(a1, v23);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v8;
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastF64R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *a2;
    v9 = *v7;
    while (1)
    {
      v10 = *(a2 + 1);
      if (v9 == v7[1])
      {
        v12 = a3;
        v13 = a1;
        v14 = a2;
        v15 = a6;
        v16 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, v9, (v9 + 1));
        a3 = v12;
        a1 = v13;
        a5 = v16;
        a2 = v14;
        a6 = v15;
        LODWORD(v9) = *v7;
      }

      v11 = *(v7 + 1);
      *v7 = v9 + 1;
      *(v11 + 8 * v9) = v10;
      a2 += 9;
      if (*a3 <= a2)
      {
        break;
      }

      v9 = (v9 + 1);
      if (*a2 != v8)
      {
        v17 = *&a5[(*a2 & *(a5 + 8)) + 24];

        return v17(a1);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return a2;
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastF64R2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v10 = *a2;
    v8 = (a2 + 10);
    v9 = v10;
    v11 = *v7;
    while (1)
    {
      v12 = *(v8 - 1);
      if (v11 == v7[1])
      {
        v16 = a3;
        v17 = a1;
        v18 = v8;
        v19 = a6;
        v20 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, v11, (v11 + 1));
        a3 = v16;
        v8 = v18;
        a1 = v17;
        a5 = v20;
        a6 = v19;
        LODWORD(v11) = *v7;
      }

      v13 = *(v7 + 1);
      *v7 = v11 + 1;
      *(v13 + 8 * v11) = v12;
      if (*a3 <= v8)
      {
        break;
      }

      v15 = *v8;
      v8 += 10;
      v14 = v15;
      v11 = (v11 + 1);
      if (v15 != v9)
      {
        v21 = *&a5[(v14 & a5[4]) + 24];
        v22 = v8 - 10;

        return v21(a1, v22);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v8;
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastF32P1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v8 = a2[1];
    if (a2[1] < 0)
    {
      google::protobuf::internal::ReadSizeFallback((a2 + 1), v8);
      v18 = v17;
      v20 = v19;
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = v18;
      v12 = v20;
    }

    else
    {
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = a2 + 2;
      v12 = v8;
    }

    return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(v10, v11, v12, v9);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastF32P2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v8 = a2[2];
    if (a2[2] < 0)
    {
      google::protobuf::internal::ReadSizeFallback((a2 + 2), v8);
      v18 = v17;
      v20 = v19;
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = v18;
      v12 = v20;
    }

    else
    {
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = a2 + 3;
      v12 = v8;
    }

    return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(v10, v11, v12, v9);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastF64P1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v8 = a2[1];
    if (a2[1] < 0)
    {
      google::protobuf::internal::ReadSizeFallback((a2 + 1), v8);
      v18 = v17;
      v20 = v19;
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = v18;
      v12 = v20;
    }

    else
    {
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = a2 + 2;
      v12 = v8;
    }

    return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(v10, v11, v12, v9);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastF64P2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v8 = a2[2];
    if (a2[2] < 0)
    {
      google::protobuf::internal::ReadSizeFallback((a2 + 2), v8);
      v18 = v17;
      v20 = v19;
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = v18;
      v12 = v20;
    }

    else
    {
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = a2 + 3;
      v12 = v8;
    }

    return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(v10, v11, v12, v9);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastV8S1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if ((a4 & 0xFEFF) != 0)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  *(a1 + HIWORD(a4)) = BYTE1(a4);
  v7 = (a2 + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if (*a3 > v7)
  {
    return (*&a5[(*v7 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v8;
  }

  return v7;
}

char *google::protobuf::internal::TcParser::FastV8S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if (v7 < 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<BOOL,unsigned short,false>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = v7 != 0;
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v8;
  }

  return v9;
}

unsigned __int16 *google::protobuf::internal::TcParser::FastV32S1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v8 = a2[1];
  if (v8 < 0)
  {
    *(&v13 + 1) = a2[2];
    *&v13 = -128;
    v12 = v13 >> 57;
    if (v12 < 0)
    {
      *(&v15 + 1) = a2[3];
      *&v15 = -128;
      v14 = v15 >> 50;
      if (v14 < 0)
      {
        *(&v16 + 1) = a2[4];
        *&v16 = -128;
        v12 &= v16 >> 43;
        if (v12 < 0 != v7)
        {
          *(&v17 + 1) = a2[5];
          *&v17 = -128;
          v14 &= v17 >> 36;
          if (v14 < 0 != v7)
          {
            if (a2[6] < 0)
            {
              if (a2[7] < 0)
              {
                if (a2[8] < 0)
                {
                  if (a2[9] < 0)
                  {
                    v9 = (a2 + 11);
                    v18 = a2[10];
                    if (v18 != 1 && v18 < 0)
                    {
                      return google::protobuf::internal::TcParser::Error(a1, a2, a3, a4, a5, a6);
                    }
                  }

                  else
                  {
                    v9 = (a2 + 10);
                  }
                }

                else
                {
                  v9 = (a2 + 9);
                }
              }

              else
              {
                v9 = (a2 + 8);
              }
            }

            else
            {
              v9 = (a2 + 7);
            }
          }

          else
          {
            v9 = (a2 + 6);
          }
        }

        else
        {
          v9 = (a2 + 5);
        }
      }

      else
      {
        v9 = (a2 + 4);
      }

      LODWORD(v12) = v12 & v14;
    }

    else
    {
      v9 = (a2 + 3);
    }

    LODWORD(v8) = v12 & v8;
  }

  else
  {
    v9 = (a2 + 2);
  }

  v10 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = v8;
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v10;
  }

  return v9;
}

char *google::protobuf::internal::TcParser::FastV32S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if (v7 < 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<unsigned int,unsigned short,false>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = v7;
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v8;
  }

  return v9;
}

unsigned __int16 *google::protobuf::internal::TcParser::FastV64S1(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v8 = *(a2 + 1);
  if (v8 < 0)
  {
    *(&v13 + 1) = *(a2 + 2);
    *&v13 = -128;
    v12 = v13 >> 57;
    if (v12 < 0)
    {
      *(&v15 + 1) = *(a2 + 3);
      *&v15 = -128;
      v14 = v15 >> 50;
      if (v14 < 0)
      {
        *(&v16 + 1) = *(a2 + 4);
        *&v16 = -128;
        v12 &= v16 >> 43;
        if (v12 < 0 != v7)
        {
          *(&v17 + 1) = *(a2 + 5);
          *&v17 = -128;
          v14 &= v17 >> 36;
          if (v14 < 0 != v7)
          {
            *(&v18 + 1) = *(a2 + 6);
            *&v18 = -128;
            v12 &= v18 >> 29;
            if (v12 < 0 != v7)
            {
              *(&v19 + 1) = *(a2 + 7);
              *&v19 = -128;
              v14 &= v19 >> 22;
              if (v14 < 0 != v7)
              {
                *(&v20 + 1) = *(a2 + 8);
                *&v20 = -128;
                v12 &= v20 >> 15;
                if (v12 < 0 != v7)
                {
                  *(&v21 + 1) = *(a2 + 9);
                  *&v21 = -128;
                  v14 &= v21 >> 8;
                  if (v14 < 0 != v7)
                  {
                    v9 = (a2 + 11);
                    v22 = *(a2 + 10);
                    if (v22 != 1)
                    {
                      if ((v22 & 0x80) != 0)
                      {
                        return google::protobuf::internal::TcParser::Error(a1, a2, a3, a4, a5, a6);
                      }

                      if ((v22 & 1) == 0)
                      {
                        v14 &= ~0x8000000000000000;
                      }
                    }
                  }

                  else
                  {
                    v9 = (a2 + 10);
                  }
                }

                else
                {
                  v9 = (a2 + 9);
                }
              }

              else
              {
                v9 = (a2 + 8);
              }
            }

            else
            {
              v9 = (a2 + 7);
            }
          }

          else
          {
            v9 = (a2 + 6);
          }
        }

        else
        {
          v9 = (a2 + 5);
        }
      }

      else
      {
        v9 = (a2 + 4);
      }

      v12 &= v14;
    }

    else
    {
      v9 = (a2 + 3);
    }

    v8 &= v12;
  }

  else
  {
    v9 = (a2 + 2);
  }

  v10 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = v8;
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v10;
  }

  return v9;
}

char *google::protobuf::internal::TcParser::FastV64S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if (v7 < 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<unsigned long long,unsigned short,false>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = v7;
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v8;
  }

  return v9;
}

char *google::protobuf::internal::TcParser::FastZ32S1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = *(this + 1);
  v8 = (1 << SBYTE2(a4)) | a6;
  if ((v7 & 0x80000000) != 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<int,unsigned char,true>(a1, (this + 1), a3, a4, a5, v8);
  }

  v9 = (this + 2);
  *(a1 + HIWORD(a4)) = -(v7 & 1) ^ (v7 >> 1);
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v8;
  }

  return v9;
}

char *google::protobuf::internal::TcParser::FastZ32S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if ((v7 & 0x80000000) != 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<int,unsigned char,true>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = -(v7 & 1) ^ (v7 >> 1);
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v8;
  }

  return v9;
}

char *google::protobuf::internal::TcParser::FastZ64S1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = *(this + 1);
  v8 = (1 << SBYTE2(a4)) | a6;
  if ((v7 & 0x8000000000000000) != 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<long long,unsigned char,true>(a1, (this + 1), a3, a4, a5, v8);
  }

  v9 = (this + 2);
  *(a1 + HIWORD(a4)) = -(v7 & 1) ^ (v7 >> 1);
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v8;
  }

  return v9;
}

char *google::protobuf::internal::TcParser::FastZ64S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if ((v7 & 0x8000000000000000) != 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<long long,unsigned char,true>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = -(v7 & 1) ^ (v7 >> 1);
  if (*a3 > v9)
  {
    return (*&a5[(*v9 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v8;
  }

  return v9;
}

char *google::protobuf::internal::TcParser::FastV8R1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *a2;
    while (1)
    {
      v9 = (a2 + 2);
      v10 = a2[1];
      if (v10 < 2)
      {
        break;
      }

      if ((v10 & 0x80) != 0)
      {
        v20 = a2[2];
        v14 = v20 | v10 & 0x7F;
        if (v20 < 0)
        {
          v21 = a2[3];
          v14 = v21 | v14 & 0x7F;
          if (v21 < 0)
          {
            v22 = a2[4];
            v14 = v22 | v14 & 0x7F;
            if (v22 < 0)
            {
              v23 = a2[5];
              v14 = v23 | v14 & 0x7F;
              if (v23 < 0)
              {
                v24 = a2[6];
                v14 = v24 | v14 & 0x7F;
                if (v24 < 0)
                {
                  v25 = a2[7];
                  v14 = v25 | v14 & 0x7F;
                  if (v25 < 0)
                  {
                    v26 = a2[8];
                    v14 = v26 | v14 & 0x7F;
                    if (v26 < 0)
                    {
                      v27 = a2[9];
                      v14 = v27 | v14 & 0x7F;
                      if (v27 < 0)
                      {
                        v28 = a2[10];
                        if (v28 < 0)
                        {

                          return google::protobuf::internal::TcParser::Error(a1, a2, a3, a4, a5, a6);
                        }

                        v9 = (a2 + 11);
                        v14 = v28 & 0xFFFFFF81 | v14 & 0x7F;
                      }

                      else
                      {
                        v9 = (a2 + 10);
                      }
                    }

                    else
                    {
                      v9 = (a2 + 9);
                    }
                  }

                  else
                  {
                    v9 = (a2 + 8);
                  }
                }

                else
                {
                  v9 = (a2 + 7);
                }
              }

              else
              {
                v9 = (a2 + 6);
              }
            }

            else
            {
              v9 = (a2 + 5);
            }
          }

          else
          {
            v9 = (a2 + 4);
          }
        }

        else
        {
          v9 = (a2 + 3);
        }
      }

      else
      {
        v14 = 1;
      }

      LOBYTE(v10) = v14 != 0;
      a2 = v9;
      v12 = *v7;
      v11 = v7[1];
      if (*v7 == v11)
      {
        goto LABEL_11;
      }

LABEL_5:
      v13 = *(v7 + 1);
      *v7 = v12 + 1;
      *(v13 + v12) = v10 & 1;
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      if (*a2 != v8)
      {
        v29 = *&a5[(*a2 & *(a5 + 8)) + 24];

        return v29(a1);
      }
    }

    a2 += 2;
    v12 = *v7;
    v11 = v7[1];
    if (*v7 != v11)
    {
      goto LABEL_5;
    }

LABEL_11:
    v15 = a3;
    v16 = a1;
    v17 = a2;
    v18 = a6;
    v19 = a5;
    google::protobuf::RepeatedField<BOOL>::Grow(v7, v11, (v11 + 1));
    a2 = v17;
    a3 = v15;
    a1 = v16;
    a5 = v19;
    a6 = v18;
    v12 = *v7;
    goto LABEL_5;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastV8R2(uint64_t a1, unsigned __int16 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *a2;
    while (1)
    {
      v9 = (a2 + 3);
      v10 = *(a2 + 2);
      if (v10 < 2)
      {
        break;
      }

      if ((v10 & 0x80) != 0)
      {
        v21 = *(a2 + 3);
        v15 = v21 | v10 & 0x7F;
        if (v21 < 0)
        {
          v22 = *(a2 + 4);
          v15 = v22 | v15 & 0x7F;
          if (v22 < 0)
          {
            v23 = *(a2 + 5);
            v15 = v23 | v15 & 0x7F;
            if (v23 < 0)
            {
              v24 = *(a2 + 6);
              v15 = v24 | v15 & 0x7F;
              if (v24 < 0)
              {
                v25 = *(a2 + 7);
                v15 = v25 | v15 & 0x7F;
                if (v25 < 0)
                {
                  v26 = *(a2 + 8);
                  v15 = v26 | v15 & 0x7F;
                  if (v26 < 0)
                  {
                    v27 = *(a2 + 9);
                    v15 = v27 | v15 & 0x7F;
                    if (v27 < 0)
                    {
                      v28 = *(a2 + 10);
                      v15 = v28 | v15 & 0x7F;
                      if (v28 < 0)
                      {
                        v29 = *(a2 + 11);
                        if (v29 < 0)
                        {

                          return google::protobuf::internal::TcParser::Error(a1, a2, a3, a4, a5, a6);
                        }

                        v9 = a2 + 6;
                        v15 = v29 & 0xFFFFFF81 | v15 & 0x7F;
                      }

                      else
                      {
                        v9 = (a2 + 11);
                      }
                    }

                    else
                    {
                      v9 = a2 + 5;
                    }
                  }

                  else
                  {
                    v9 = (a2 + 9);
                  }
                }

                else
                {
                  v9 = a2 + 4;
                }
              }

              else
              {
                v9 = (a2 + 7);
              }
            }

            else
            {
              v9 = a2 + 3;
            }
          }

          else
          {
            v9 = (a2 + 5);
          }
        }

        else
        {
          v9 = a2 + 2;
        }
      }

      else
      {
        v15 = 1;
      }

      LOBYTE(v10) = v15 != 0;
      a2 = v9;
      v12 = *v7;
      v11 = v7[1];
      if (*v7 == v11)
      {
        goto LABEL_11;
      }

LABEL_5:
      v13 = *(v7 + 1);
      *v7 = v12 + 1;
      *(v13 + v12) = v10 & 1;
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      v14 = *a2;
      if (v14 != v8)
      {
        v30 = *&a5[(v14 & a5[4]) + 24];

        return v30(a1);
      }
    }

    a2 = (a2 + 3);
    v12 = *v7;
    v11 = v7[1];
    if (*v7 != v11)
    {
      goto LABEL_5;
    }

LABEL_11:
    v16 = a3;
    v17 = a1;
    v18 = a2;
    v19 = a6;
    v20 = a5;
    google::protobuf::RepeatedField<BOOL>::Grow(v7, v11, (v11 + 1));
    a2 = v18;
    a3 = v16;
    a1 = v17;
    a5 = v20;
    a6 = v19;
    v12 = *v7;
    goto LABEL_5;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

google::protobuf::internal *google::protobuf::internal::TcParser::FastV32R1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *this;
    while (1)
    {
      v9 = *(this + 1);
      *v29 = 0;
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v25 = a3;
          v26 = a1;
          v27 = a5;
          v28 = a6;
          v19 = google::protobuf::internal::VarintParseSlowArm((this + 1), v29, v9);
          if (!v19)
          {

            return google::protobuf::internal::TcParser::Error(v26, v20, v21, v22, v27, v28);
          }

          this = v19;
          v10 = *v29;
          a5 = v27;
          a6 = v28;
          a3 = v25;
          a1 = v26;
        }

        else
        {
          v10 = v9 & 0x7F | (((v9 >> 8) & 0x7F) << 7);
          this = (this + 3);
        }
      }

      else
      {
        v10 = v9 & 0x7F;
        this = (this + 2);
      }

      v11 = HIDWORD(*v7);
      v12 = *v7;
      if (v12 == v11)
      {
        v14 = a3;
        v15 = a1;
        v16 = this;
        v17 = a6;
        v18 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v11 + 1));
        this = v16;
        a3 = v14;
        a1 = v15;
        a5 = v18;
        a6 = v17;
        v12 = *v7;
      }

      v13 = v7[1];
      *v7 = v12 + 1;
      *(v13 + 4 * v12) = v10;
      if (*a3 <= this)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return this;
      }

      if (*this != v8)
      {
        v23 = *&a5[(*this & *(a5 + 8)) + 24];

        return v23(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

google::protobuf::internal *google::protobuf::internal::TcParser::FastV32R2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *this;
    while (1)
    {
      v9 = *(this + 2);
      *v30 = 0;
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v26 = a3;
          v27 = a1;
          v28 = a5;
          v29 = a6;
          v20 = google::protobuf::internal::VarintParseSlowArm((this + 2), v30, v9);
          if (!v20)
          {

            return google::protobuf::internal::TcParser::Error(v27, v21, v22, v23, v28, v29);
          }

          this = v20;
          v10 = *v30;
          a5 = v28;
          a6 = v29;
          a3 = v26;
          a1 = v27;
        }

        else
        {
          v10 = v9 & 0x7F | (((v9 >> 8) & 0x7F) << 7);
          this = (this + 4);
        }
      }

      else
      {
        v10 = v9 & 0x7F;
        this = (this + 3);
      }

      v11 = HIDWORD(*v7);
      v12 = *v7;
      if (v12 == v11)
      {
        v15 = a3;
        v16 = a1;
        v17 = this;
        v18 = a6;
        v19 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v11 + 1));
        this = v17;
        a3 = v15;
        a1 = v16;
        a5 = v19;
        a6 = v18;
        v12 = *v7;
      }

      v13 = v7[1];
      *v7 = v12 + 1;
      *(v13 + 4 * v12) = v10;
      if (*a3 <= this)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return this;
      }

      v14 = *this;
      if (v14 != v8)
      {
        v24 = *&a5[(v14 & a5[4]) + 24];

        return v24(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

char *google::protobuf::internal::TcParser::FastV64R1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      *v29 = 0;
      v9 = *(a2 + 1);
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v25 = a3;
          v26 = a1;
          v27 = a5;
          v28 = a6;
          v19 = google::protobuf::internal::VarintParseSlowArm((a2 + 1), v29, v9);
          if (!v19)
          {

            return google::protobuf::internal::TcParser::Error(v26, v20, v21, v22, v27, v28);
          }

          a2 = v19;
          a6 = v28;
          v10 = *v29;
          a1 = v26;
          a5 = v27;
          a3 = v25;
        }

        else
        {
          v10 = *(a2 + 1) & 0x7FLL | (((*(a2 + 1) >> 8) & 0x7FLL) << 7);
          a2 += 3;
        }
      }

      else
      {
        v10 = *(a2 + 1) & 0x7FLL;
        a2 += 2;
      }

      v12 = *v7;
      v11 = *(v7 + 4);
      if (*v7 == v11)
      {
        v14 = a3;
        v15 = a1;
        v16 = a2;
        v17 = a6;
        v18 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, *(v7 + 4), (v11 + 1));
        a3 = v14;
        a2 = v16;
        a1 = v15;
        a5 = v18;
        a6 = v17;
        v12 = *v7;
      }

      v13 = *(v7 + 8);
      *v7 = v12 + 1;
      *(v13 + 8 * v12) = v10;
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      if (*a2 != v8)
      {
        v23 = *&a5[(*a2 & *(a5 + 8)) + 24];

        return v23(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

char *google::protobuf::internal::TcParser::FastV64R2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      *v30 = 0;
      v9 = *(a2 + 2);
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v26 = a3;
          v27 = a1;
          v28 = a5;
          v29 = a6;
          v20 = google::protobuf::internal::VarintParseSlowArm((a2 + 2), v30, v9);
          if (!v20)
          {

            return google::protobuf::internal::TcParser::Error(v27, v21, v22, v23, v28, v29);
          }

          a2 = v20;
          a6 = v29;
          v10 = *v30;
          a1 = v27;
          a5 = v28;
          a3 = v26;
        }

        else
        {
          v10 = *(a2 + 2) & 0x7FLL | (((*(a2 + 2) >> 8) & 0x7FLL) << 7);
          a2 += 4;
        }
      }

      else
      {
        v10 = *(a2 + 2) & 0x7FLL;
        a2 += 3;
      }

      v12 = *v7;
      v11 = *(v7 + 4);
      if (*v7 == v11)
      {
        v15 = a3;
        v16 = a1;
        v17 = a2;
        v18 = a6;
        v19 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, *(v7 + 4), (v11 + 1));
        a3 = v15;
        a2 = v17;
        a1 = v16;
        a5 = v19;
        a6 = v18;
        v12 = *v7;
      }

      v13 = *(v7 + 8);
      *v7 = v12 + 1;
      *(v13 + 8 * v12) = v10;
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      v14 = *a2;
      if (v14 != v8)
      {
        v24 = *&a5[(v14 & a5[4]) + 24];

        return v24(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

google::protobuf::internal *google::protobuf::internal::TcParser::FastZ32R1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *this;
    while (1)
    {
      v9 = *(this + 1);
      *v29 = 0;
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v25 = a3;
          v26 = a1;
          v27 = a5;
          v28 = a6;
          v19 = google::protobuf::internal::VarintParseSlowArm((this + 1), v29, v9);
          if (!v19)
          {

            return google::protobuf::internal::TcParser::Error(v26, v20, v21, v22, v27, v28);
          }

          this = v19;
          v10 = *v29;
          a5 = v27;
          a6 = v28;
          a3 = v25;
          a1 = v26;
        }

        else
        {
          v10 = v9 & 0x7F | (((v9 >> 8) & 0x7F) << 7);
          this = (this + 3);
        }
      }

      else
      {
        v10 = v9 & 0x7F;
        this = (this + 2);
      }

      v11 = HIDWORD(*v7);
      v12 = *v7;
      if (v12 == v11)
      {
        v14 = a3;
        v15 = a1;
        v16 = this;
        v17 = a6;
        v18 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v11 + 1));
        this = v16;
        a3 = v14;
        a1 = v15;
        a5 = v18;
        a6 = v17;
        v12 = *v7;
      }

      v13 = v7[1];
      *v7 = v12 + 1;
      *(v13 + 4 * v12) = -(v10 & 1) ^ (v10 >> 1);
      if (*a3 <= this)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return this;
      }

      if (*this != v8)
      {
        v23 = *&a5[(*this & *(a5 + 8)) + 24];

        return v23(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

google::protobuf::internal *google::protobuf::internal::TcParser::FastZ32R2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *this;
    while (1)
    {
      v9 = *(this + 2);
      *v30 = 0;
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v26 = a3;
          v27 = a1;
          v28 = a5;
          v29 = a6;
          v20 = google::protobuf::internal::VarintParseSlowArm((this + 2), v30, v9);
          if (!v20)
          {

            return google::protobuf::internal::TcParser::Error(v27, v21, v22, v23, v28, v29);
          }

          this = v20;
          v10 = *v30;
          a5 = v28;
          a6 = v29;
          a3 = v26;
          a1 = v27;
        }

        else
        {
          v10 = v9 & 0x7F | (((v9 >> 8) & 0x7F) << 7);
          this = (this + 4);
        }
      }

      else
      {
        v10 = v9 & 0x7F;
        this = (this + 3);
      }

      v11 = HIDWORD(*v7);
      v12 = *v7;
      if (v12 == v11)
      {
        v15 = a3;
        v16 = a1;
        v17 = this;
        v18 = a6;
        v19 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v11 + 1));
        this = v17;
        a3 = v15;
        a1 = v16;
        a5 = v19;
        a6 = v18;
        v12 = *v7;
      }

      v13 = v7[1];
      *v7 = v12 + 1;
      *(v13 + 4 * v12) = -(v10 & 1) ^ (v10 >> 1);
      if (*a3 <= this)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return this;
      }

      v14 = *this;
      if (v14 != v8)
      {
        v24 = *&a5[(v14 & a5[4]) + 24];

        return v24(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

char *google::protobuf::internal::TcParser::FastZ64R1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      *v29 = 0;
      v9 = *(a2 + 1);
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v25 = a3;
          v26 = a1;
          v27 = a5;
          v28 = a6;
          v19 = google::protobuf::internal::VarintParseSlowArm((a2 + 1), v29, v9);
          if (!v19)
          {

            return google::protobuf::internal::TcParser::Error(v26, v20, v21, v22, v27, v28);
          }

          a2 = v19;
          a6 = v28;
          v10 = *v29;
          a1 = v26;
          a5 = v27;
          a3 = v25;
        }

        else
        {
          v10 = *(a2 + 1) & 0x7FLL | (((*(a2 + 1) >> 8) & 0x7FLL) << 7);
          a2 += 3;
        }
      }

      else
      {
        v10 = *(a2 + 1) & 0x7FLL;
        a2 += 2;
      }

      v12 = *v7;
      v11 = *(v7 + 4);
      if (*v7 == v11)
      {
        v14 = a3;
        v15 = a1;
        v16 = a2;
        v17 = a6;
        v18 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, *(v7 + 4), (v11 + 1));
        a3 = v14;
        a2 = v16;
        a1 = v15;
        a5 = v18;
        a6 = v17;
        v12 = *v7;
      }

      v13 = *(v7 + 8);
      *v7 = v12 + 1;
      *(v13 + 8 * v12) = -(v10 & 1) ^ (v10 >> 1);
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      if (*a2 != v8)
      {
        v23 = *&a5[(*a2 & *(a5 + 8)) + 24];

        return v23(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

char *google::protobuf::internal::TcParser::FastZ64R2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      *v30 = 0;
      v9 = *(a2 + 2);
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v26 = a3;
          v27 = a1;
          v28 = a5;
          v29 = a6;
          v20 = google::protobuf::internal::VarintParseSlowArm((a2 + 2), v30, v9);
          if (!v20)
          {

            return google::protobuf::internal::TcParser::Error(v27, v21, v22, v23, v28, v29);
          }

          a2 = v20;
          a6 = v29;
          v10 = *v30;
          a1 = v27;
          a5 = v28;
          a3 = v26;
        }

        else
        {
          v10 = *(a2 + 2) & 0x7FLL | (((*(a2 + 2) >> 8) & 0x7FLL) << 7);
          a2 += 4;
        }
      }

      else
      {
        v10 = *(a2 + 2) & 0x7FLL;
        a2 += 3;
      }

      v12 = *v7;
      v11 = *(v7 + 4);
      if (*v7 == v11)
      {
        v15 = a3;
        v16 = a1;
        v17 = a2;
        v18 = a6;
        v19 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, *(v7 + 4), (v11 + 1));
        a3 = v15;
        a2 = v17;
        a1 = v16;
        a5 = v19;
        a6 = v18;
        v12 = *v7;
      }

      v13 = *(v7 + 8);
      *v7 = v12 + 1;
      *(v13 + 8 * v12) = -(v10 & 1) ^ (v10 >> 1);
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      v14 = *a2;
      if (v14 != v8)
      {
        v24 = *&a5[(v14 & a5[4]) + 24];

        return v24(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

void google::protobuf::internal::TcParser::FastV8P1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastV8P2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastV32P1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastV32P2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastV64P1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastV64P2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastZ32P1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastZ32P2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastZ64P1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)), a4);
  }
}

void google::protobuf::internal::TcParser::FastZ64P2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)), a4);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastUnknownEnumFallback(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v10 = (this + 1);
  v11 = *this;
  if ((*this & 0x80000000) == 0)
  {
LABEL_4:
    *v26 = 0;
    v13 = *v10;
    if ((*v10 & 0x80) == 0)
    {
LABEL_5:
      v14 = v13 & 0x7F;
      v15 = (v10 + 1);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v12 = v11 + (*v10 << 7);
  v11 = v12 - 128;
  if ((*v10 & 0x80000000) == 0)
  {
    v10 = (this + 2);
    goto LABEL_4;
  }

  google::protobuf::internal::ReadTagFallback(this, (v12 - 128));
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v21;
  *v26 = 0;
  v13 = *v10;
  if ((*v10 & 0x80) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  if ((v13 & 0x8000) == 0)
  {
    v14 = v13 & 0x7F | (((v13 >> 8) & 0x7F) << 7);
    v15 = (v10 + 2);
    goto LABEL_6;
  }

  v25 = v11;
  v24 = google::protobuf::internal::VarintParseSlowArm(v10, v26, v13);
  if (v24)
  {
    v15 = v24;
    v11 = v25;
    v14 = *v26;
LABEL_6:
    google::protobuf::internal::TcParser::AddUnknownEnum(a1, a5, v11, v14);
    if (*a3 <= v15)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v15;
    }

    else
    {
      v16 = *v15;
      v17 = &a5[(v16 & a5[4])];
      v18 = *(v17 + 6);
      v19 = *(v17 + 7) ^ v16;

      return v18(a1, v15, a3, v19, a5, a6);
    }
  }

LABEL_19:

  return google::protobuf::internal::TcParser::Error(a1, v21, v22, v23, a5, a6);
}

uint64_t google::protobuf::internal::TcParser::AddUnknownEnum(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(a2 + 40))(0, 0, 0, 0, 0, 0);

  return v7(a1, a3 >> 3, a4);
}

char *google::protobuf::internal::TcParser::MpUnknownEnumFallback(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  *v23 = 0;
  v10 = *this;
  if ((*this & 0x80) == 0)
  {
    v11 = *this & 0x7FLL;
    v12 = this + 1;
    goto LABEL_3;
  }

  if ((v10 & 0x8000) == 0)
  {
    v11 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
    v12 = this + 2;
    goto LABEL_3;
  }

  v22 = a4;
  v18 = google::protobuf::internal::VarintParseSlowArm(this, v23, v10);
  if (v18)
  {
    v12 = v18;
    LODWORD(a4) = v22;
    v11 = *v23;
LABEL_3:
    google::protobuf::internal::TcParser::AddUnknownEnum(a1, a5, a4, v11);
    if (*a3 <= v12)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v12;
    }

    else
    {
      v13 = *v12;
      v14 = &a5[(v13 & a5[4])];
      v15 = *(v14 + 6);
      v16 = *(v14 + 7) ^ v13;

      return v15(a1, v12, a3, v16, a5, a6);
    }
  }

  return google::protobuf::internal::TcParser::Error(a1, v19, v20, v21, a5, a6);
}

unsigned __int8 *google::protobuf::internal::TcParser::FastErS1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    v7 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *v28 = 0;
    v8 = *(a2 + 1);
    if ((v8 & 0x80) == 0)
    {
      LODWORD(v9) = v8 & 0x7F;
      v10 = (a2 + 2);
      goto LABEL_4;
    }

    if ((v8 & 0x8000) == 0)
    {
      v9 = *(a2 + 1) & 0x7FLL | (((*(a2 + 1) >> 8) & 0x7FLL) << 7);
      v10 = (a2 + 3);
      goto LABEL_4;
    }

    v23 = a4;
    v24 = v7;
    v27 = a6;
    v22 = a3;
    v25 = a1;
    v26 = a5;
    v21 = a2;
    v17 = google::protobuf::internal::VarintParseSlowArm((a2 + 1), v28, v8);
    if (v17)
    {
      v10 = v17;
      a6 = v27;
      LODWORD(v9) = *v28;
      a5 = v26;
      LODWORD(v7) = v24;
      a1 = v25;
      a3 = v22;
      a4 = v23;
      a2 = v21;
LABEL_4:
      v11 = v7;
      v12 = v7 + WORD1(v7);
      if (v11 > v9 || v12 <= v9)
      {

        return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, a2, a3, a4, a5, a6);
      }

      else
      {
        v14 = (1 << SBYTE2(a4)) | a6;
        *(a1 + HIWORD(a4)) = v9;
        if (*a3 <= v10)
        {
          if (*a5)
          {
            *(a1 + *a5) |= v14;
          }

          return v10;
        }

        else
        {
          v15 = *&a5[(*v10 & *(a5 + 8)) + 24];

          return v15(a7);
        }
      }
    }

    return google::protobuf::internal::TcParser::Error(v25, v18, v19, v20, v26, v27);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastErS2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    v7 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *v28 = 0;
    v8 = *(a2 + 2);
    if ((v8 & 0x80) == 0)
    {
      LODWORD(v9) = v8 & 0x7F;
      v10 = (a2 + 3);
      goto LABEL_4;
    }

    if ((v8 & 0x8000) == 0)
    {
      v9 = *(a2 + 2) & 0x7FLL | (((*(a2 + 2) >> 8) & 0x7FLL) << 7);
      v10 = (a2 + 4);
      goto LABEL_4;
    }

    v23 = a4;
    v24 = v7;
    v27 = a6;
    v22 = a3;
    v25 = a1;
    v26 = a5;
    v21 = a2;
    v17 = google::protobuf::internal::VarintParseSlowArm((a2 + 2), v28, v8);
    if (v17)
    {
      v10 = v17;
      a6 = v27;
      LODWORD(v9) = *v28;
      a5 = v26;
      LODWORD(v7) = v24;
      a1 = v25;
      a3 = v22;
      a4 = v23;
      a2 = v21;
LABEL_4:
      v11 = v7;
      v12 = v7 + WORD1(v7);
      if (v11 > v9 || v12 <= v9)
      {

        return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, a2, a3, a4, a5, a6);
      }

      else
      {
        v14 = (1 << SBYTE2(a4)) | a6;
        *(a1 + HIWORD(a4)) = v9;
        if (*a3 <= v10)
        {
          if (*a5)
          {
            *(a1 + *a5) |= v14;
          }

          return v10;
        }

        else
        {
          v15 = *&a5[(*v10 & *(a5 + 8)) + 24];

          return v15(a7);
        }
      }
    }

    return google::protobuf::internal::TcParser::Error(v25, v18, v19, v20, v26, v27);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEvS1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *v36 = 0;
    v8 = *(a2 + 1);
    if ((v8 & 0x80) != 0)
    {
      if ((v8 & 0x8000) != 0)
      {
        v31 = a4;
        v32 = v7;
        v35 = a6;
        v30 = a3;
        v33 = a1;
        v34 = a5;
        v29 = a2;
        v20 = google::protobuf::internal::VarintParseSlowArm((a2 + 1), v36, v8);
        if (!v20)
        {

          return google::protobuf::internal::TcParser::Error(v33, v21, v22, v23, v34, v35);
        }

        v10 = v20;
        a6 = v35;
        LODWORD(v9) = *v36;
        a5 = v34;
        v7 = v32;
        a1 = v33;
        a3 = v30;
        a4 = v31;
        a2 = v29;
      }

      else
      {
        v9 = *(a2 + 1) & 0x7FLL | (((*(a2 + 1) >> 8) & 0x7FLL) << 7);
        v10 = (a2 + 3);
      }
    }

    else
    {
      LODWORD(v9) = v8 & 0x7F;
      v10 = (a2 + 2);
    }

    v11 = *v7;
    v12 = v11 >> 16;
    v13 = v9 - v11;
    v14 = v13 >= v12;
    v15 = v13 - v12;
    if (!v14)
    {
      goto LABEL_5;
    }

    v19 = v7[1];
    if (v15 >= v19)
    {
      v24 = 0;
      v25 = &v7[(v19 >> 5) + 2];
      while (v24 < v19 >> 16)
      {
        v26 = *(v25 + 4 * v24);
        v27 = v26 == v9;
        if (v26 > v9)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        v24 = v28 + 2 * v24;
        if (v27)
        {
          goto LABEL_5;
        }
      }
    }

    else if ((v7[(v15 >> 5) + 2] >> v15))
    {
LABEL_5:
      v16 = (1 << SBYTE2(a4)) | a6;
      *(a1 + HIWORD(a4)) = v9;
      if (*a3 <= v10)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v16;
        }

        return v10;
      }

      else
      {
        v17 = *&a5[(*v10 & *(a5 + 8)) + 24];

        return v17();
      }
    }

    return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, a2, a3, a4, a5, a6);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEvS2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *v36 = 0;
    v8 = *(a2 + 2);
    if ((v8 & 0x80) != 0)
    {
      if ((v8 & 0x8000) != 0)
      {
        v31 = a4;
        v32 = v7;
        v35 = a6;
        v30 = a3;
        v33 = a1;
        v34 = a5;
        v29 = a2;
        v20 = google::protobuf::internal::VarintParseSlowArm((a2 + 2), v36, v8);
        if (!v20)
        {

          return google::protobuf::internal::TcParser::Error(v33, v21, v22, v23, v34, v35);
        }

        v10 = v20;
        a6 = v35;
        LODWORD(v9) = *v36;
        a5 = v34;
        v7 = v32;
        a1 = v33;
        a3 = v30;
        a4 = v31;
        a2 = v29;
      }

      else
      {
        v9 = *(a2 + 2) & 0x7FLL | (((*(a2 + 2) >> 8) & 0x7FLL) << 7);
        v10 = (a2 + 4);
      }
    }

    else
    {
      LODWORD(v9) = v8 & 0x7F;
      v10 = (a2 + 3);
    }

    v11 = *v7;
    v12 = v11 >> 16;
    v13 = v9 - v11;
    v14 = v13 >= v12;
    v15 = v13 - v12;
    if (!v14)
    {
      goto LABEL_5;
    }

    v19 = v7[1];
    if (v15 >= v19)
    {
      v24 = 0;
      v25 = &v7[(v19 >> 5) + 2];
      while (v24 < v19 >> 16)
      {
        v26 = *(v25 + 4 * v24);
        v27 = v26 == v9;
        if (v26 > v9)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        v24 = v28 + 2 * v24;
        if (v27)
        {
          goto LABEL_5;
        }
      }
    }

    else if ((v7[(v15 >> 5) + 2] >> v15))
    {
LABEL_5:
      v16 = (1 << SBYTE2(a4)) | a6;
      *(a1 + HIWORD(a4)) = v9;
      if (*a3 <= v10)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v16;
        }

        return v10;
      }

      else
      {
        v17 = *&a5[(*v10 & *(a5 + 8)) + 24];

        return v17();
      }
    }

    return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, a2, a3, a4, a5, a6);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastErR1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = this;
  if (!a4)
  {
    v8 = (a1 + HIWORD(a4));
    v9 = *this;
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = v10;
    v12 = v10 + WORD1(v10);
    while (1)
    {
      *v35 = 0;
      v13 = *(v7 + 1);
      if ((v13 & 0x80) != 0)
      {
        if ((v13 & 0x8000) != 0)
        {
          v31 = a3;
          v32 = a1;
          v33 = a5;
          v34 = a6;
          v30 = v7;
          v25 = google::protobuf::internal::VarintParseSlowArm((v7 + 1), v35, v13);
          if (!v25)
          {

            return google::protobuf::internal::TcParser::Error(v32, v26, v27, a4, v33, v34);
          }

          v15 = v25;
          a6 = v34;
          LODWORD(v14) = *v35;
          a1 = v32;
          a5 = v33;
          v7 = v30;
          a3 = v31;
        }

        else
        {
          v14 = *(v7 + 1) & 0x7FLL | (((*(v7 + 1) >> 8) & 0x7FLL) << 7);
          v15 = (v7 + 3);
        }
      }

      else
      {
        LODWORD(v14) = v13 & 0x7F;
        v15 = (v7 + 2);
      }

      if (v11 > v14 || v12 <= v14)
      {

        return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, v7, a3, a4, a5, a6);
      }

      v17 = HIDWORD(*v8);
      v18 = *v8;
      if (v18 == v17)
      {
        v20 = a3;
        v21 = a1;
        v22 = v15;
        v23 = a6;
        v24 = a5;
        google::protobuf::RepeatedField<int>::Grow(v8, HIDWORD(*v8), (v17 + 1));
        v15 = v22;
        a3 = v20;
        a1 = v21;
        a5 = v24;
        a6 = v23;
        v18 = *v8;
      }

      v19 = v8[1];
      *v8 = v18 + 1;
      *(v19 + 4 * v18) = v14;
      if (*a3 <= v15)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v15;
      }

      v7 = v15;
      if (*v15 != v9)
      {
        v28 = *&a5[(*v15 & *(a5 + 8)) + 24];

        return v28(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastErR2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = this;
  if (!a4)
  {
    v8 = (a1 + HIWORD(a4));
    v9 = *this;
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = v10;
    v12 = v10 + WORD1(v10);
    while (1)
    {
      *v36 = 0;
      v13 = *(v7 + 2);
      if ((v13 & 0x80) != 0)
      {
        if ((v13 & 0x8000) != 0)
        {
          v32 = a3;
          v33 = a1;
          v34 = a5;
          v35 = a6;
          v31 = v7;
          v26 = google::protobuf::internal::VarintParseSlowArm((v7 + 2), v36, v13);
          if (!v26)
          {

            return google::protobuf::internal::TcParser::Error(v33, v27, v28, a4, v34, v35);
          }

          v15 = v26;
          a6 = v35;
          LODWORD(v14) = *v36;
          a1 = v33;
          a5 = v34;
          v7 = v31;
          a3 = v32;
        }

        else
        {
          v14 = *(v7 + 2) & 0x7FLL | (((*(v7 + 2) >> 8) & 0x7FLL) << 7);
          v15 = (v7 + 4);
        }
      }

      else
      {
        LODWORD(v14) = v13 & 0x7F;
        v15 = (v7 + 3);
      }

      if (v11 > v14 || v12 <= v14)
      {

        return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, v7, a3, a4, a5, a6);
      }

      v17 = HIDWORD(*v8);
      v18 = *v8;
      if (v18 == v17)
      {
        v21 = a3;
        v22 = a1;
        v23 = v15;
        v24 = a6;
        v25 = a5;
        google::protobuf::RepeatedField<int>::Grow(v8, HIDWORD(*v8), (v17 + 1));
        v15 = v23;
        a3 = v21;
        a1 = v22;
        a5 = v25;
        a6 = v24;
        v18 = *v8;
      }

      v19 = v8[1];
      *v8 = v18 + 1;
      *(v19 + 4 * v18) = v14;
      if (*a3 <= v15)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v15;
      }

      v20 = *v15;
      v7 = v15;
      if (v20 != v9)
      {
        v29 = *&a5[(v20 & a5[4]) + 24];

        return v29(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastEvR1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = this;
  if (!a4)
  {
    v8 = (a1 + HIWORD(a4));
    v9 = *this;
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = v10 + 2;
    while (1)
    {
      *v45 = 0;
      v12 = *(v7 + 1);
      if ((v12 & 0x80) != 0)
      {
        if ((v12 & 0x8000) != 0)
        {
          v42 = a6;
          v44 = a3;
          v40 = a1;
          v41 = a5;
          v39 = v7;
          v28 = google::protobuf::internal::VarintParseSlowArm((v7 + 1), v45, v12);
          if (!v28)
          {

            return google::protobuf::internal::TcParser::Error(v40, v29, v30, a4, v41, v42);
          }

          v14 = v28;
          a3 = v44;
          LODWORD(v13) = *v45;
          a5 = v41;
          a6 = v42;
          v7 = v39;
          a1 = v40;
        }

        else
        {
          v13 = *(v7 + 1) & 0x7FLL | (((*(v7 + 1) >> 8) & 0x7FLL) << 7);
          v14 = (v7 + 3);
        }
      }

      else
      {
        LODWORD(v13) = v12 & 0x7F;
        v14 = (v7 + 2);
      }

      v15 = *v10;
      v16 = v15 >> 16;
      v17 = v13 - v15;
      v18 = v17 >= v16;
      v19 = v17 - v16;
      if (v18)
      {
        v23 = v10[1];
        if (v19 >= v23)
        {
          v31 = 0;
          v32 = v23 >> 16;
          v33 = &v11[v23 >> 5];
          while (v31 < v32)
          {
            v34 = v33[v31];
            v35 = v34 == v13;
            if (v34 > v13)
            {
              v36 = 1;
            }

            else
            {
              v36 = 2;
            }

            v31 = v36 + 2 * v31;
            if (v35)
            {
              goto LABEL_6;
            }
          }

LABEL_29:

          return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, v7, a3, a4, a5, a6);
        }

        if (((*(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v19) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_6:
      v20 = HIDWORD(*v8);
      v21 = *v8;
      if (v21 == v20)
      {
        v43 = a3;
        v24 = a1;
        v25 = v14;
        v26 = a6;
        v27 = a5;
        google::protobuf::RepeatedField<int>::Grow(v8, v20, (v20 + 1));
        v14 = v25;
        a3 = v43;
        a1 = v24;
        a5 = v27;
        a6 = v26;
        v21 = *v8;
      }

      v22 = v8[1];
      *v8 = v21 + 1;
      *(v22 + 4 * v21) = v13;
      if (*a3 <= v14)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v14;
      }

      v7 = v14;
      if (*v14 != v9)
      {
        v37 = *&a5[(*v14 & *(a5 + 8)) + 24];

        return v37(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastEvR2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = this;
  if (!a4)
  {
    v8 = (a1 + HIWORD(a4));
    v9 = *this;
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = v10 + 2;
    while (1)
    {
      *v46 = 0;
      v12 = *(v7 + 2);
      if ((v12 & 0x80) != 0)
      {
        if ((v12 & 0x8000) != 0)
        {
          v43 = a6;
          v45 = a3;
          v41 = a1;
          v42 = a5;
          v40 = v7;
          v29 = google::protobuf::internal::VarintParseSlowArm((v7 + 2), v46, v12);
          if (!v29)
          {

            return google::protobuf::internal::TcParser::Error(v41, v30, v31, a4, v42, v43);
          }

          v14 = v29;
          a3 = v45;
          LODWORD(v13) = *v46;
          a5 = v42;
          a6 = v43;
          v7 = v40;
          a1 = v41;
        }

        else
        {
          v13 = *(v7 + 2) & 0x7FLL | (((*(v7 + 2) >> 8) & 0x7FLL) << 7);
          v14 = (v7 + 4);
        }
      }

      else
      {
        LODWORD(v13) = v12 & 0x7F;
        v14 = (v7 + 3);
      }

      v15 = *v10;
      v16 = v15 >> 16;
      v17 = v13 - v15;
      v18 = v17 >= v16;
      v19 = v17 - v16;
      if (v18)
      {
        v24 = v10[1];
        if (v19 >= v24)
        {
          v32 = 0;
          v33 = v24 >> 16;
          v34 = &v11[v24 >> 5];
          while (v32 < v33)
          {
            v35 = v34[v32];
            v36 = v35 == v13;
            if (v35 > v13)
            {
              v37 = 1;
            }

            else
            {
              v37 = 2;
            }

            v32 = v37 + 2 * v32;
            if (v36)
            {
              goto LABEL_6;
            }
          }

LABEL_29:

          return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, v7, a3, a4, a5, a6);
        }

        if (((*(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v19) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_6:
      v20 = HIDWORD(*v8);
      v21 = *v8;
      if (v21 == v20)
      {
        v44 = a3;
        v25 = a1;
        v26 = v14;
        v27 = a6;
        v28 = a5;
        google::protobuf::RepeatedField<int>::Grow(v8, v20, (v20 + 1));
        v14 = v26;
        a3 = v44;
        a1 = v25;
        a5 = v28;
        a6 = v27;
        v21 = *v8;
      }

      v22 = v8[1];
      *v8 = v21 + 1;
      *(v22 + 4 * v21) = v13;
      if (*a3 <= v14)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v14;
      }

      v23 = *v14;
      v7 = v14;
      if (v23 != v9)
      {
        v38 = *&a5[(v23 & a5[4]) + 24];

        return v38(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

void google::protobuf::internal::TcParser::FastErP1(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v14 = v7;
    v15 = v8;
    *&v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *(&v10 + 1) = a1;
    v11 = a5;
    v12 = v9;
    v13 = a1 + HIWORD(a4);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, (a2 + 1), &v10, a4);
  }
}

void google::protobuf::internal::TcParser::FastErP2(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v14 = v7;
    v15 = v8;
    *&v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *(&v10 + 1) = a1;
    v11 = a5;
    v12 = v9;
    v13 = a1 + HIWORD(a4);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, (a2 + 2), &v10, a4);
  }
}

void google::protobuf::internal::TcParser::FastEvP1(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v14 = v7;
    v15 = v8;
    *&v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *(&v10 + 1) = a1;
    v11 = a5;
    v12 = v9;
    v13 = a1 + HIWORD(a4);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, (a2 + 1), &v10, a4, a5);
  }
}

void google::protobuf::internal::TcParser::FastEvP2(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v14 = v7;
    v15 = v8;
    *&v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *(&v10 + 1) = a1;
    v11 = a5;
    v12 = v9;
    v13 = a1 + HIWORD(a4);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, (a2 + 2), &v10, a4, a5);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEr0S1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = a2[1];
  if (v7 > BYTE3(a4))
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  *(a1 + HIWORD(a4)) = v7;
  v8 = (a2 + 2);
  v9 = (1 << SBYTE2(a4)) | a6;
  if (*a3 > v8)
  {
    return (*&a5[(*v8 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v9;
  }

  return v8;
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEr0S2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = a2[2];
  if (v7 > BYTE3(a4))
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  *(a1 + HIWORD(a4)) = v7;
  v8 = (a2 + 3);
  v9 = (1 << SBYTE2(a4)) | a6;
  if (*a3 > v8)
  {
    return (*&a5[(*v8 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v9;
  }

  return v8;
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEr1S1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = a2[1];
  if ((v7 - 1) >= BYTE3(a4))
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  *(a1 + HIWORD(a4)) = v7;
  v8 = (a2 + 2);
  v9 = (1 << SBYTE2(a4)) | a6;
  if (*a3 > v8)
  {
    return (*&a5[(*v8 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v9;
  }

  return v8;
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEr1S2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  v7 = a2[2];
  if ((v7 - 1) >= BYTE3(a4))
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  *(a1 + HIWORD(a4)) = v7;
  v8 = (a2 + 3);
  v9 = (1 << SBYTE2(a4)) | a6;
  if (*a3 > v8)
  {
    return (*&a5[(*v8 & *(a5 + 8)) + 24])(a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= v9;
  }

  return v8;
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEr0R1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
LABEL_12:

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    v7 = (a2 + 2);
    v8 = v9;
    v10 = BYTE3(a4);
    v11 = (a1 + HIWORD(a4));
    while (1)
    {
      v12 = *(v7 - 1);
      if (v12 > v10)
      {
        a2 = (v7 - 2);
        goto LABEL_12;
      }

      a7 = *v11;
      v13 = HIDWORD(*v11);
      v14 = *v11;
      if (v14 == v13)
      {
        v17 = a3;
        v18 = a1;
        v19 = v7;
        v20 = a6;
        v21 = a5;
        google::protobuf::RepeatedField<int>::Grow(v11, HIDWORD(*v11), (v13 + 1));
        a3 = v17;
        a1 = v18;
        v7 = v19;
        a5 = v21;
        a6 = v20;
        v14 = v11->i32[0];
      }

      v15 = v11[1];
      v11->i32[0] = v14 + 1;
      *(*&v15 + 4 * v14) = v12;
      if (*a3 <= v7)
      {
        break;
      }

      v16 = *v7;
      v7 += 2;
      if (v16 != v8)
      {
        v23 = *(v7 - 1);
        v22 = v7 - 2;
        v24 = *&a5[(v23 & a5[4]) + 24];

        return v24(a1, v22);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v7;
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEr0R2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
LABEL_12:

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    v7 = (a2 + 3);
    v8 = v9;
    v10 = BYTE3(a4);
    v11 = (a1 + HIWORD(a4));
    while (1)
    {
      v12 = *(v7 - 1);
      if (v12 > v10)
      {
        a2 = (v7 - 3);
        goto LABEL_12;
      }

      a7 = *v11;
      v13 = HIDWORD(*v11);
      v14 = *v11;
      if (v14 == v13)
      {
        v18 = a3;
        v19 = a1;
        v20 = v7;
        v21 = a6;
        v22 = a5;
        google::protobuf::RepeatedField<int>::Grow(v11, HIDWORD(*v11), (v13 + 1));
        v7 = v20;
        a3 = v18;
        a1 = v19;
        a5 = v22;
        a6 = v21;
        v14 = v11->i32[0];
      }

      v15 = v11[1];
      v11->i32[0] = v14 + 1;
      *(*&v15 + 4 * v14) = v12;
      if (*a3 <= v7)
      {
        break;
      }

      v17 = *v7;
      v7 += 3;
      v16 = v17;
      if (v17 != v8)
      {
        v23 = *&a5[(v16 & a5[4]) + 24];
        v24 = v7 - 3;

        return v23(a1, v24);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v7;
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEr1R1(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
LABEL_12:

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v10 = *a2;
    v8 = (a2 + 2);
    v9 = v10;
    while (1)
    {
      v11 = *(v8 - 1);
      if ((v11 - 1) >= BYTE3(a4))
      {
        a2 = (v8 - 2);
        goto LABEL_12;
      }

      a7 = *v7;
      v12 = HIDWORD(*v7);
      v13 = *v7;
      if (v13 == v12)
      {
        v16 = a3;
        v17 = a1;
        v18 = v8;
        v19 = a6;
        v20 = a5;
        v21 = a4;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v12 + 1));
        a4 = v21;
        a3 = v16;
        a1 = v17;
        v8 = v18;
        a5 = v20;
        a6 = v19;
        v13 = v7->i32[0];
      }

      v14 = v7[1];
      v7->i32[0] = v13 + 1;
      *(*&v14 + 4 * v13) = v11;
      if (*a3 <= v8)
      {
        break;
      }

      v15 = *v8;
      v8 += 2;
      if (v15 != v9)
      {
        v23 = *(v8 - 1);
        v22 = v8 - 2;
        v24 = *&a5[(v23 & a5[4]) + 24];

        return v24(a1, v22);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v8;
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastEr1R2(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
LABEL_12:

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v10 = *a2;
    v8 = (a2 + 3);
    v9 = v10;
    while (1)
    {
      v11 = *(v8 - 1);
      if ((v11 - 1) >= BYTE3(a4))
      {
        a2 = (v8 - 3);
        goto LABEL_12;
      }

      a7 = *v7;
      v12 = HIDWORD(*v7);
      v13 = *v7;
      if (v13 == v12)
      {
        v17 = a3;
        v18 = a1;
        v19 = v8;
        v20 = a6;
        v21 = a5;
        v22 = a4;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v12 + 1));
        a4 = v22;
        v8 = v19;
        a3 = v17;
        a1 = v18;
        a5 = v21;
        a6 = v20;
        v13 = v7->i32[0];
      }

      v14 = v7[1];
      v7->i32[0] = v13 + 1;
      *(*&v14 + 4 * v13) = v11;
      if (*a3 <= v8)
      {
        break;
      }

      v16 = *v8;
      v8 += 3;
      v15 = v16;
      if (v16 != v9)
      {
        v23 = *&a5[(v15 & a5[4]) + 24];
        v24 = v8 - 3;

        return v23(a1, v24);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v8;
  }
}

void google::protobuf::internal::TcParser::FastEr0P1(uint64_t a1, unsigned __int8 *a2, int *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v15 = v7;
    v16 = v8;
    v9 = *a2;
    LOBYTE(v11) = BYTE3(a4);
    *(&v11 + 1) = a1;
    v12 = a5;
    v13 = v9;
    v14 = (a1 + HIWORD(a4));
    v10[0] = v14;
    v10[1] = a3;
    v10[2] = (a2 + 1);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(a3, (a2 + 1), &v11, v10, a5);
  }
}

void google::protobuf::internal::TcParser::FastEr0P2(uint64_t a1, unsigned __int8 *a2, int *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v15 = v7;
    v16 = v8;
    v9 = *a2;
    LOBYTE(v11) = BYTE3(a4);
    *(&v11 + 1) = a1;
    v12 = a5;
    v13 = v9;
    v14 = (a1 + HIWORD(a4));
    v10[0] = v14;
    v10[1] = a3;
    v10[2] = (a2 + 2);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(a3, (a2 + 2), &v11, v10, a5);
  }
}

void google::protobuf::internal::TcParser::FastEr1P1(uint64_t a1, unsigned __int8 *a2, int *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v15 = v7;
    v16 = v8;
    v9 = *a2;
    LOBYTE(v11) = BYTE3(a4);
    *(&v11 + 1) = a1;
    v12 = a5;
    v13 = v9;
    v14 = (a1 + HIWORD(a4));
    v10[0] = v14;
    v10[1] = a3;
    v10[2] = (a2 + 1);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(a3, (a2 + 1), &v11, v10, a5);
  }
}

void google::protobuf::internal::TcParser::FastEr1P2(uint64_t a1, unsigned __int8 *a2, int *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v15 = v7;
    v16 = v8;
    v9 = *a2;
    LOBYTE(v11) = BYTE3(a4);
    *(&v11 + 1) = a1;
    v12 = a5;
    v13 = v9;
    v14 = (a1 + HIWORD(a4));
    v10[0] = v14;
    v10[1] = a3;
    v10[2] = (a2 + 2);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(a3, (a2 + 2), &v11, v10, a5);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastBS1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v10 = 1 << SBYTE2(a4);
    v11 = (a1 + HIWORD(a4));
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10 | a6;
      if (v12)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, (a2 + 1), v11, v12);
        v17 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_17:

        return google::protobuf::internal::TcParser::Error(a1, v17, v14, v15, a5, v13);
      }
    }

    else
    {
      v13 = v10 | a6;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v17 = v20;
    if (v20)
    {
LABEL_5:
      if (*this <= v17)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v13;
        }

        return v17;
      }

      else
      {
        v18 = *&a5[(*v17 & *(a5 + 8)) + 24];

        return v18(a1);
      }
    }

    goto LABEL_17;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastBS2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v10 = 1 << SBYTE2(a4);
    v11 = (a1 + HIWORD(a4));
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10 | a6;
      if (v12)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, (a2 + 2), v11, v12);
        v17 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_17:

        return google::protobuf::internal::TcParser::Error(a1, v17, v14, v15, a5, v13);
      }
    }

    else
    {
      v13 = v10 | a6;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v17 = v20;
    if (v20)
    {
LABEL_5:
      if (*this <= v17)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v13;
        }

        return v17;
      }

      else
      {
        v18 = *&a5[(*v17 & *(a5 + 8)) + 24];

        return v18(a1);
      }
    }

    goto LABEL_17;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastSS1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v10 = 1 << SBYTE2(a4);
    v11 = (a1 + HIWORD(a4));
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10 | a6;
      if (v12)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, (a2 + 1), v11, v12);
        v17 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_17:

        return google::protobuf::internal::TcParser::Error(a1, v17, v14, v15, a5, v13);
      }
    }

    else
    {
      v13 = v10 | a6;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v17 = v20;
    if (v20)
    {
LABEL_5:
      if (*this <= v17)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v13;
        }

        return v17;
      }

      else
      {
        v18 = *&a5[(*v17 & *(a5 + 8)) + 24];

        return v18(a1);
      }
    }

    goto LABEL_17;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastSS2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v10 = 1 << SBYTE2(a4);
    v11 = (a1 + HIWORD(a4));
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10 | a6;
      if (v12)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, (a2 + 2), v11, v12);
        v17 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_17:

        return google::protobuf::internal::TcParser::Error(a1, v17, v14, v15, a5, v13);
      }
    }

    else
    {
      v13 = v10 | a6;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v17 = v20;
    if (v20)
    {
LABEL_5:
      if (*this <= v17)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v13;
        }

        return v17;
      }

      else
      {
        v18 = *&a5[(*v17 & *(a5 + 8)) + 24];

        return v18(a1);
      }
    }

    goto LABEL_17;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastUS1(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v12 = *a2;
    v10 = (a2 + 1);
    v11 = v12;
    v13 = 1 << SBYTE2(a4);
    v14 = (a1 + HIWORD(a4));
    v15 = *(a1 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      v16 = v13 | a6;
      if (v15)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, v10, v14, v15);
        v21 = v20;
        if (!v20)
        {
          goto LABEL_22;
        }

LABEL_11:
        v24 = (*v14 & 0xFFFFFFFFFFFFFFFCLL);
        v25 = v24[23];
        if (v25 < 0)
        {
          v24 = *v24;
          v25 = *((*v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        if (utf8_range::IsStructurallyValid(v24, v25))
        {
          if (*this <= v21)
          {
            if (*a5)
            {
              *(a1 + *a5) |= v16;
            }

            return v21;
          }

          else
          {
            v30 = *v21;
            v31 = &a5[(v30 & a5[4])];
            v32 = *(v31 + 6);
            v33 = *(v31 + 7) ^ v30;

            return v32(a1, v21, this, v33, a5, v16);
          }
        }

        google::protobuf::internal::TcParser::ReportFastUtf8Error(v11, a5, v26, v27, v28, v29);
LABEL_22:

        return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, v16);
      }
    }

    else
    {
      v16 = v13 | a6;
      if (v15)
      {
        goto LABEL_4;
      }
    }

    v21 = v23;
    if (!v23)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastUS2(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v12 = *a2;
    v10 = (a2 + 2);
    v11 = v12;
    v13 = 1 << SBYTE2(a4);
    v14 = (a1 + HIWORD(a4));
    v15 = *(a1 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      v16 = v13 | a6;
      if (v15)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, v10, v14, v15);
        v21 = v20;
        if (!v20)
        {
          goto LABEL_22;
        }

LABEL_11:
        v24 = (*v14 & 0xFFFFFFFFFFFFFFFCLL);
        v25 = v24[23];
        if (v25 < 0)
        {
          v24 = *v24;
          v25 = *((*v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        if (utf8_range::IsStructurallyValid(v24, v25))
        {
          if (*this <= v21)
          {
            if (*a5)
            {
              *(a1 + *a5) |= v16;
            }

            return v21;
          }

          else
          {
            v30 = *v21;
            v31 = &a5[(v30 & a5[4])];
            v32 = *(v31 + 6);
            v33 = *(v31 + 7) ^ v30;

            return v32(a1, v21, this, v33, a5, v16);
          }
        }

        google::protobuf::internal::TcParser::ReportFastUtf8Error((v11 + v11) >> 1, a5, v26, v27, v28, v29);
LABEL_22:

        return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, v16);
      }
    }

    else
    {
      v16 = v13 | a6;
      if (v15)
      {
        goto LABEL_4;
      }
    }

    v21 = v23;
    if (!v23)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastBR1(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    v11 = *a2;
    v12 = (a1 + HIWORD(a4));
    if (v12[2])
    {
      v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(a7);
      if (*(v13 + 8) == *v15)
      {
        v16 = v13;
        v17 = *v12;
        v18 = (*v12 & 1) != 0 ? *(v17 - 1) : v17 != 0;
        result = v14;
        if (v18 == *(v12 + 2))
        {
          v20 = *(v16 + 16);
          while (1)
          {
            v21 = *(result + 1);
            if (*(result + 1) < 0)
            {
              google::protobuf::internal::ReadSizeFallback((result + 1), v21);
              if (!v31)
              {
                goto LABEL_33;
              }

              v22 = v31;
              LODWORD(v21) = v27;
              v23 = *(v20 + 5);
              if (v23)
              {
LABEL_11:
                v24 = v23 - 24;
                *(v20 + 5) = v24;
                v25 = (*(v20 + 4) + v24 + 16);
                v25->__r_.__value_.__r.__words[0] = 0;
                v25->__r_.__value_.__l.__size_ = 0;
                v25->__r_.__value_.__r.__words[2] = 0;
                v26 = *(v12 + 2);
                if (v26 > *(v12 + 3))
                {
                  goto LABEL_22;
                }

                goto LABEL_12;
              }
            }

            else
            {
              v22 = result + 2;
              v23 = *(v20 + 5);
              if (v23)
              {
                goto LABEL_11;
              }
            }

            v25 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v20);
            v25->__r_.__value_.__r.__words[0] = 0;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v26 = *(v12 + 2);
            if (v26 > *(v12 + 3))
            {
LABEL_22:
              v32 = v25;
              v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1);
              v25 = v32;
              *v33 = v32;
              ++*(*v12 - 1);
              v26 = *(v12 + 2);
              goto LABEL_15;
            }

LABEL_12:
            if (*v12)
            {
              *(*v12 + 8 * v26 + 7) = v25;
              ++*(*v12 - 1);
            }

            else
            {
              *v12 = v25;
            }

LABEL_15:
            *(v12 + 2) = v26 + 1;
            result = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v22, v21, v25);
            if (!result)
            {
              goto LABEL_33;
            }

            v30 = *a3;
            if (*a3 <= result)
            {
              goto LABEL_30;
            }

            if (*result != v11)
            {
              goto LABEL_26;
            }
          }
        }
      }
    }

    while (1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      result = google::protobuf::internal::InlineGreedyStringParser();
      if (!result)
      {
        break;
      }

      v30 = *a3;
      if (*a3 <= result)
      {
        goto LABEL_30;
      }

      if (*result != v11)
      {
LABEL_26:
        if (v30 > result)
        {
          v34 = *result;
          v35 = &a5[(v34 & a5[4])];
          v36 = *(v35 + 6);
          v37 = *(v35 + 7) ^ v34;

          return v36(a1, result, a3, v37, a5, a6);
        }

LABEL_30:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }
    }

LABEL_33:

    return google::protobuf::internal::TcParser::Error(a1, v27, v28, v29, a5, a6);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastBR2(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    v11 = *a2;
    v12 = (a1 + HIWORD(a4));
    if (v12[2])
    {
      v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(a7);
      if (*(v13 + 8) == *v15)
      {
        v16 = v13;
        v17 = *v12;
        v18 = (*v12 & 1) != 0 ? *(v17 - 1) : v17 != 0;
        result = v14;
        if (v18 == *(v12 + 2))
        {
          v20 = *(v16 + 16);
          while (1)
          {
            v21 = *(result + 2);
            if (*(result + 2) < 0)
            {
              google::protobuf::internal::ReadSizeFallback((result + 2), v21);
              if (!v32)
              {
                goto LABEL_33;
              }

              v22 = v32;
              LODWORD(v21) = v27;
              v23 = *(v20 + 5);
              if (v23)
              {
LABEL_11:
                v24 = v23 - 24;
                *(v20 + 5) = v24;
                v25 = (*(v20 + 4) + v24 + 16);
                v25->__r_.__value_.__r.__words[0] = 0;
                v25->__r_.__value_.__l.__size_ = 0;
                v25->__r_.__value_.__r.__words[2] = 0;
                v26 = *(v12 + 2);
                if (v26 > *(v12 + 3))
                {
                  goto LABEL_22;
                }

                goto LABEL_12;
              }
            }

            else
            {
              v22 = result + 3;
              v23 = *(v20 + 5);
              if (v23)
              {
                goto LABEL_11;
              }
            }

            v25 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v20);
            v25->__r_.__value_.__r.__words[0] = 0;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v26 = *(v12 + 2);
            if (v26 > *(v12 + 3))
            {
LABEL_22:
              v33 = v25;
              v34 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1);
              v25 = v33;
              *v34 = v33;
              ++*(*v12 - 1);
              v26 = *(v12 + 2);
              goto LABEL_15;
            }

LABEL_12:
            if (*v12)
            {
              *(*v12 + 8 * v26 + 7) = v25;
              ++*(*v12 - 1);
            }

            else
            {
              *v12 = v25;
            }

LABEL_15:
            *(v12 + 2) = v26 + 1;
            result = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v22, v21, v25);
            if (!result)
            {
              goto LABEL_33;
            }

            v30 = *a3;
            if (*a3 <= result)
            {
              goto LABEL_30;
            }

            v31 = *result;
            if (v31 != v11)
            {
              goto LABEL_26;
            }
          }
        }
      }
    }

    while (1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      result = google::protobuf::internal::InlineGreedyStringParser();
      if (!result)
      {
        break;
      }

      v30 = *a3;
      if (*a3 <= result)
      {
        goto LABEL_30;
      }

      v31 = *result;
      if (v31 != v11)
      {
LABEL_26:
        if (v30 > result)
        {
          v35 = &a5[v31 & a5[4]];
          v36 = *(v35 + 6);
          v37 = *(v35 + 7) ^ v31;

          return v36(a1, result, a3, v37, a5, a6);
        }

LABEL_30:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }
    }

LABEL_33:

    return google::protobuf::internal::TcParser::Error(a1, v27, v28, v29, a5, a6);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastSR1(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    v11 = *a2;
    v12 = (a1 + HIWORD(a4));
    if (v12[2])
    {
      v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(a7);
      if (*(v13 + 8) == *v15)
      {
        v16 = v13;
        v17 = *v12;
        v18 = (*v12 & 1) != 0 ? *(v17 - 1) : v17 != 0;
        result = v14;
        if (v18 == *(v12 + 2))
        {
          v20 = *(v16 + 16);
          while (1)
          {
            v21 = *(result + 1);
            if (*(result + 1) < 0)
            {
              google::protobuf::internal::ReadSizeFallback((result + 1), v21);
              if (!v31)
              {
                goto LABEL_33;
              }

              v22 = v31;
              LODWORD(v21) = v27;
              v23 = *(v20 + 5);
              if (v23)
              {
LABEL_11:
                v24 = v23 - 24;
                *(v20 + 5) = v24;
                v25 = (*(v20 + 4) + v24 + 16);
                v25->__r_.__value_.__r.__words[0] = 0;
                v25->__r_.__value_.__l.__size_ = 0;
                v25->__r_.__value_.__r.__words[2] = 0;
                v26 = *(v12 + 2);
                if (v26 > *(v12 + 3))
                {
                  goto LABEL_22;
                }

                goto LABEL_12;
              }
            }

            else
            {
              v22 = result + 2;
              v23 = *(v20 + 5);
              if (v23)
              {
                goto LABEL_11;
              }
            }

            v25 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v20);
            v25->__r_.__value_.__r.__words[0] = 0;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v26 = *(v12 + 2);
            if (v26 > *(v12 + 3))
            {
LABEL_22:
              v32 = v25;
              v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1);
              v25 = v32;
              *v33 = v32;
              ++*(*v12 - 1);
              v26 = *(v12 + 2);
              goto LABEL_15;
            }

LABEL_12:
            if (*v12)
            {
              *(*v12 + 8 * v26 + 7) = v25;
              ++*(*v12 - 1);
            }

            else
            {
              *v12 = v25;
            }

LABEL_15:
            *(v12 + 2) = v26 + 1;
            result = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v22, v21, v25);
            if (!result)
            {
              goto LABEL_33;
            }

            v30 = *a3;
            if (*a3 <= result)
            {
              goto LABEL_30;
            }

            if (*result != v11)
            {
              goto LABEL_26;
            }
          }
        }
      }
    }

    while (1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      result = google::protobuf::internal::InlineGreedyStringParser();
      if (!result)
      {
        break;
      }

      v30 = *a3;
      if (*a3 <= result)
      {
        goto LABEL_30;
      }

      if (*result != v11)
      {
LABEL_26:
        if (v30 > result)
        {
          v34 = *result;
          v35 = &a5[(v34 & a5[4])];
          v36 = *(v35 + 6);
          v37 = *(v35 + 7) ^ v34;

          return v36(a1, result, a3, v37, a5, a6);
        }

LABEL_30:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }
    }

LABEL_33:

    return google::protobuf::internal::TcParser::Error(a1, v27, v28, v29, a5, a6);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastSR2(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    v11 = *a2;
    v12 = (a1 + HIWORD(a4));
    if (v12[2])
    {
      v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(a7);
      if (*(v13 + 8) == *v15)
      {
        v16 = v13;
        v17 = *v12;
        v18 = (*v12 & 1) != 0 ? *(v17 - 1) : v17 != 0;
        result = v14;
        if (v18 == *(v12 + 2))
        {
          v20 = *(v16 + 16);
          while (1)
          {
            v21 = *(result + 2);
            if (*(result + 2) < 0)
            {
              google::protobuf::internal::ReadSizeFallback((result + 2), v21);
              if (!v32)
              {
                goto LABEL_33;
              }

              v22 = v32;
              LODWORD(v21) = v27;
              v23 = *(v20 + 5);
              if (v23)
              {
LABEL_11:
                v24 = v23 - 24;
                *(v20 + 5) = v24;
                v25 = (*(v20 + 4) + v24 + 16);
                v25->__r_.__value_.__r.__words[0] = 0;
                v25->__r_.__value_.__l.__size_ = 0;
                v25->__r_.__value_.__r.__words[2] = 0;
                v26 = *(v12 + 2);
                if (v26 > *(v12 + 3))
                {
                  goto LABEL_22;
                }

                goto LABEL_12;
              }
            }

            else
            {
              v22 = result + 3;
              v23 = *(v20 + 5);
              if (v23)
              {
                goto LABEL_11;
              }
            }

            v25 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v20);
            v25->__r_.__value_.__r.__words[0] = 0;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v26 = *(v12 + 2);
            if (v26 > *(v12 + 3))
            {
LABEL_22:
              v33 = v25;
              v34 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1);
              v25 = v33;
              *v34 = v33;
              ++*(*v12 - 1);
              v26 = *(v12 + 2);
              goto LABEL_15;
            }

LABEL_12:
            if (*v12)
            {
              *(*v12 + 8 * v26 + 7) = v25;
              ++*(*v12 - 1);
            }

            else
            {
              *v12 = v25;
            }

LABEL_15:
            *(v12 + 2) = v26 + 1;
            result = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v22, v21, v25);
            if (!result)
            {
              goto LABEL_33;
            }

            v30 = *a3;
            if (*a3 <= result)
            {
              goto LABEL_30;
            }

            v31 = *result;
            if (v31 != v11)
            {
              goto LABEL_26;
            }
          }
        }
      }
    }

    while (1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      result = google::protobuf::internal::InlineGreedyStringParser();
      if (!result)
      {
        break;
      }

      v30 = *a3;
      if (*a3 <= result)
      {
        goto LABEL_30;
      }

      v31 = *result;
      if (v31 != v11)
      {
LABEL_26:
        if (v30 > result)
        {
          v35 = &a5[v31 & a5[4]];
          v36 = *(v35 + 6);
          v37 = *(v35 + 7) ^ v31;

          return v36(a1, result, a3, v37, a5, a6);
        }

LABEL_30:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }
    }

LABEL_33:

    return google::protobuf::internal::TcParser::Error(a1, v27, v28, v29, a5, a6);
  }
}

char *google::protobuf::internal::TcParser::FastUR1(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    v12 = *a2;
    v13 = a1 + HIWORD(a4);
    if (*(v13 + 16))
    {
      v14 = google::protobuf::internal::ThreadSafeArena::thread_cache_(a7);
      if (*(v14 + 8) == *v15)
      {
        v16 = *v13;
        v17 = (*v13 & 1) != 0 ? *(v16 - 1) : v16 != 0;
        if (v17 == *(v13 + 8))
        {
          v18 = *(v14 + 16);
          while (1)
          {
            v19 = v10[1];
            if (v10[1] < 0)
            {
              google::protobuf::internal::ReadSizeFallback((v10 + 1), v10[1]);
              if (!v37)
              {
                goto LABEL_45;
              }

              v20 = v37;
              v19 = v26;
              v21 = *(v18 + 5);
              if (v21)
              {
LABEL_11:
                v22 = v21 - 24;
                *(v18 + 5) = v22;
                v23 = (*(v18 + 4) + v22 + 16);
                v23->__r_.__value_.__r.__words[0] = 0;
                v23->__r_.__value_.__l.__size_ = 0;
                v23->__r_.__value_.__r.__words[2] = 0;
                v24 = *(v13 + 8);
                if (v24 <= *(v13 + 12))
                {
                  goto LABEL_12;
                }

                goto LABEL_27;
              }
            }

            else
            {
              v20 = v10 + 2;
              v21 = *(v18 + 5);
              if (v21)
              {
                goto LABEL_11;
              }
            }

            v23 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v18);
            v23->__r_.__value_.__r.__words[0] = 0;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v24 = *(v13 + 8);
            if (v24 <= *(v13 + 12))
            {
LABEL_12:
              if (*v13)
              {
                *(*v13 + 8 * v24 + 7) = v23;
                ++*(*v13 - 1);
              }

              else
              {
                *v13 = v23;
              }

              goto LABEL_15;
            }

LABEL_27:
            v38 = v23;
            v39 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v13, 1);
            v23 = v38;
            *v39 = v38;
            ++*(*v13 - 1);
            v24 = *(v13 + 8);
LABEL_15:
            *(v13 + 8) = v24 + 1;
            String = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v20, v19, v23);
            if (!String)
            {
              goto LABEL_45;
            }

            v10 = String;
            v29 = *v13 + 8 * *(v13 + 8) - 1;
            if ((*v13 & 1) == 0)
            {
              v29 = v13;
            }

            v30 = *v29;
            v31 = *(*v29 + 23);
            if (v31 < 0)
            {
              v30 = *v30;
              v31 = *(*v29 + 8);
            }

            if (!utf8_range::IsStructurallyValid(v30, v31))
            {
              goto LABEL_44;
            }

            v36 = *a3;
            if (*a3 <= v10)
            {
              goto LABEL_41;
            }

            if (*v10 != v12)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

    while (1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::AddString(v13);
      v40 = google::protobuf::internal::InlineGreedyStringParser();
      if (!v40)
      {
        break;
      }

      v10 = v40;
      v41 = *v13 + 8 * *(v13 + 8) - 1;
      if ((*v13 & 1) == 0)
      {
        v41 = v13;
      }

      v42 = *v41;
      v43 = *(*v41 + 23);
      if (v43 < 0)
      {
        v42 = *v42;
        v43 = *(*v41 + 8);
      }

      if (!utf8_range::IsStructurallyValid(v42, v43))
      {
LABEL_44:
        google::protobuf::internal::TcParser::ReportFastUtf8Error(v12, a5, v32, v33, v34, v35);
        break;
      }

      v36 = *a3;
      if (*a3 <= v10)
      {
        goto LABEL_41;
      }

      if (*v10 != v12)
      {
LABEL_37:
        if (v36 > v10)
        {
          v44 = *v10;
          v45 = &a5[(v44 & a5[4])];
          v46 = *(v45 + 6);
          v47 = *(v45 + 7) ^ v44;

          return v46(a1, v10, a3, v47, a5, a6);
        }

LABEL_41:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v10;
      }
    }

LABEL_45:

    return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
  }
}

char *google::protobuf::internal::TcParser::FastUR2(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7.n128_u64[0]);
  }

  else
  {
    v12 = *a2;
    v13 = a1 + HIWORD(a4);
    if (*(v13 + 16))
    {
      v14 = google::protobuf::internal::ThreadSafeArena::thread_cache_(a7);
      if (*(v14 + 8) == *v15)
      {
        v16 = *v13;
        v17 = (*v13 & 1) != 0 ? *(v16 - 1) : v16 != 0;
        if (v17 == *(v13 + 8))
        {
          v18 = *(v14 + 16);
          while (1)
          {
            v19 = v10[2];
            if (v10[2] < 0)
            {
              google::protobuf::internal::ReadSizeFallback((v10 + 2), v10[2]);
              if (!v38)
              {
                goto LABEL_45;
              }

              v20 = v38;
              v19 = v26;
              v21 = *(v18 + 5);
              if (v21)
              {
LABEL_11:
                v22 = v21 - 24;
                *(v18 + 5) = v22;
                v23 = (*(v18 + 4) + v22 + 16);
                v23->__r_.__value_.__r.__words[0] = 0;
                v23->__r_.__value_.__l.__size_ = 0;
                v23->__r_.__value_.__r.__words[2] = 0;
                v24 = *(v13 + 8);
                if (v24 <= *(v13 + 12))
                {
                  goto LABEL_12;
                }

                goto LABEL_27;
              }
            }

            else
            {
              v20 = v10 + 3;
              v21 = *(v18 + 5);
              if (v21)
              {
                goto LABEL_11;
              }
            }

            v23 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v18);
            v23->__r_.__value_.__r.__words[0] = 0;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v24 = *(v13 + 8);
            if (v24 <= *(v13 + 12))
            {
LABEL_12:
              if (*v13)
              {
                *(*v13 + 8 * v24 + 7) = v23;
                ++*(*v13 - 1);
              }

              else
              {
                *v13 = v23;
              }

              goto LABEL_15;
            }

LABEL_27:
            v39 = v23;
            v40 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v13, 1);
            v23 = v39;
            *v40 = v39;
            ++*(*v13 - 1);
            v24 = *(v13 + 8);
LABEL_15:
            *(v13 + 8) = v24 + 1;
            String = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v20, v19, v23);
            if (!String)
            {
              goto LABEL_45;
            }

            v10 = String;
            v29 = *v13 + 8 * *(v13 + 8) - 1;
            if ((*v13 & 1) == 0)
            {
              v29 = v13;
            }

            v30 = *v29;
            v31 = *(*v29 + 23);
            if (v31 < 0)
            {
              v30 = *v30;
              v31 = *(*v29 + 8);
            }

            if (!utf8_range::IsStructurallyValid(v30, v31))
            {
              goto LABEL_44;
            }

            v36 = *a3;
            if (*a3 <= v10)
            {
              goto LABEL_41;
            }

            v37 = *v10;
            if (v37 != v12)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

    while (1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::AddString(v13);
      v41 = google::protobuf::internal::InlineGreedyStringParser();
      if (!v41)
      {
        break;
      }

      v10 = v41;
      v42 = *v13 + 8 * *(v13 + 8) - 1;
      if ((*v13 & 1) == 0)
      {
        v42 = v13;
      }

      v43 = *v42;
      v44 = *(*v42 + 23);
      if (v44 < 0)
      {
        v43 = *v43;
        v44 = *(*v42 + 8);
      }

      if (!utf8_range::IsStructurallyValid(v43, v44))
      {
LABEL_44:
        google::protobuf::internal::TcParser::ReportFastUtf8Error((v12 + v12) >> 1, a5, v32, v33, v34, v35);
        break;
      }

      v36 = *a3;
      if (*a3 <= v10)
      {
        goto LABEL_41;
      }

      v37 = *v10;
      if (v37 != v12)
      {
LABEL_37:
        if (v36 > v10)
        {
          v45 = &a5[v37 & a5[4]];
          v46 = *(v45 + 6);
          v47 = *(v45 + 7) ^ v37;

          return v46(a1, v10, a3, v47, a5, a6);
        }

LABEL_41:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v10;
      }
    }

LABEL_45:

    return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
  }
}

uint64_t google::protobuf::internal::TcParser::ChangeOneof(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v8 = *(a2 + 4);
  v9 = *(a5 + v8);
  *(a5 + v8) = a3;
  if (!v9)
  {
    return 1;
  }

  if (v9 == a3)
  {
    return 0;
  }

  v12 = v6;
  v13 = v7;
  google::protobuf::internal::TcParser::ChangeOneof(a1, v9, a5, &v11, a6);
  return v11;
}