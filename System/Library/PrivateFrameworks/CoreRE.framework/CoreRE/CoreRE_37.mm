double re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
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

double re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = re::DynamicString::deinit((result + 2));
    if (*(result + 40) == 1)
    {

      return re::DynamicString::deinit((result + 12));
    }
  }

  return v2;
}

uint64_t re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::ensureCapacity(uint64_t result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 8);
    if (*(result + 16))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(result + 24);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 8);
    result = re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::setCapacity(v1, v4 + 1);
    *(v1 + 16) += 2;
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::growCapacity(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::setCapacity(v3, v2);
    *(v3 + 16) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 1)
    {
      return result;
    }

    v5 = 2;
  }

  else
  {
    v4 = *(result + 24);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::setCapacity(result, a2);
}

uint64_t re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
      {
        if (v7)
        {
          v14 = a1 + 3;
        }

        else
        {
          v14 = a1[4];
        }

        if (v9)
        {
          v15 = *v14;
          a1[5] = v14[2];
          *(a1 + 3) = v15;
          v16 = *(v14 + 24);
          *(a1 + 48) = v16;
          if (v16 == 1)
          {
            *(a1 + 13) = *(v14 + 7);
          }
        }

        result = (*(*result + 40))(result);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 59)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 32, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v22, v24);
        __break(1u);
      }

      else
      {
        v2 = 32 * a2;
        result = (*(*result + 32))(result, 32 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v17 = a1[1];
          if (v17)
          {
            v18 = &v13[4 * v17];
            v19 = result;
            do
            {
              v20 = *v13;
              *(v19 + 16) = v13[2];
              *v19 = v20;
              v21 = *(v13 + 24);
              *(v19 + 24) = v21;
              if (v21 == 1)
              {
                *(v19 + 28) = *(v13 + 7);
              }

              v13 += 4;
              v19 += 32;
            }

            while (v13 != v18);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v23, v25);
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          memset(v34, 0, 36);
          *&v34[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v34, v9, v8);
          v11 = *v34;
          *v34 = *a1;
          *a1 = v11;
          v12 = *&v34[16];
          v13 = a1[2];
          *&v34[16] = v13;
          a1[2] = v12;
          v15 = *&v34[24];
          *&v34[24] = *(a1 + 3);
          v14 = *&v34[32];
          *(a1 + 3) = v15;
          ++*&v34[40];
          if (v14)
          {
            v16 = 0;
            v17 = 88 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = (v13 + v16);
                v19 = re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v16 + 80) % *(a1 + 6), *(v13 + v16 + 80));
                *(v19 + 24) = 0u;
                *(v19 + 8) = 0u;
                *(v19 + 32) = *(v13 + v16 + 32);
                v20 = *(v13 + v16 + 16);
                *(v19 + 8) = *(v13 + v16 + 8);
                v18[1] = 0;
                v21 = *(v13 + v16 + 24);
                v18[4] = 0;
                v23 = *(v19 + 16);
                v22 = *(v19 + 24);
                *(v19 + 16) = v20;
                *(v19 + 24) = v21;
                v18[2] = v23;
                v18[3] = v22;
                LODWORD(v21) = *(v13 + v16 + 40);
                *(v19 + 40) = v21;
                if (v21 == 1)
                {
                  *(v19 + 48) = 0uLL;
                  *(v19 + 64) = 0uLL;
                  *(v19 + 72) = v18[9];
                  v24 = v18[7];
                  *(v19 + 48) = v18[6];
                  v18[6] = 0;
                  v25 = v18[8];
                  v18[9] = 0;
                  v27 = *(v19 + 56);
                  v26 = *(v19 + 64);
                  *(v19 + 56) = v24;
                  *(v19 + 64) = v25;
                  v18[7] = v27;
                  v18[8] = v26;
                }
              }

              v16 += 88;
            }

            while (v17 != v16);
          }

          re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v34);
        }
      }

      else
      {
        if (v8)
        {
          v30 = 2 * v7;
        }

        else
        {
          v30 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v28 = a1[2];
    v29 = *(v28 + 88 * v5);
  }

  else
  {
    v28 = a1[2];
    v29 = *(v28 + 88 * v5);
    *(a1 + 9) = v29 & 0x7FFFFFFF;
  }

  v31 = v28 + 88 * v5;
  *v31 = v29 | 0x80000000;
  v32 = a1[1];
  *v31 = *(v32 + 4 * a2) | 0x80000000;
  *(v32 + 4 * a2) = v5;
  *(v31 + 80) = a3;
  ++*(a1 + 7);
  return v28 + 88 * v5;
}

void re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27, 4 * v10);
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

void re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_27, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 64;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString,re::DynamicString>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 24) = 0u;
  *(v7 + 8) = 0u;
  *(v7 + 32) = a3[3];
  v8 = a3[1];
  *(v7 + 8) = *a3;
  *a3 = 0;
  v9 = a3[2];
  a3[3] = 0;
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  a3[1] = v11;
  a3[2] = v10;
  *(v7 + 40) = 0u;
  result = v7 + 40;
  *(result + 16) = 0u;
  *(result + 24) = a4[3];
  v13 = a4[1];
  *result = *a4;
  *a4 = 0;
  v14 = a4[2];
  a4[3] = 0;
  v16 = *(result + 8);
  v15 = *(result + 16);
  *(result + 8) = v13;
  *(result + 16) = v14;
  a4[1] = v16;
  a4[2] = v15;
  ++*(a1 + 40);
  return result;
}

void re::NetworkActionQueue::deinit(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 128));
  v4 = *(a1 + 152);
  if (v4)
  {
    v5 = *(a1 + 168);
    v6 = v5 + 168 * v4;
    while (1)
    {
      v11[0] = 0;
      v12 = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> const&>(v11, v5);
      v7 = *(v5 + 152);
      v14 = *(v5 + 160);
      v13 = v7;
      v8 = *(a2 + 24);
      if (!v8)
      {
        break;
      }

      (*(*v8 + 48))(v8, v11);
      if (v12 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v12])(&v15, v11);
      }

      v5 += 168;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    v9 = std::__throw_bad_function_call[abi:nn200100]();
    re::NetworkActionQueue::queueSyncAction(v9, v10);
  }

  else
  {
LABEL_7:
    re::DynamicArray<re::NetworkActionQueue::Action>::clear(a1 + 136);
    os_unfair_lock_unlock((a1 + 128));
  }
}

void re::NetworkActionQueue::queueSyncAction(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    os_unfair_lock_lock((a1 + 128));
    v4 = *(a1 + 152);
    if (v4 >= *(a1 + 144))
    {
      re::DynamicArray<re::NetworkActionQueue::Action>::growCapacity((a1 + 136), v4 + 1);
      v4 = *(a1 + 152);
    }

    v5 = *(a1 + 168) + 168 * v4;
    *v5 = 0;
    *(v5 + 144) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> const&>(v5, a2);
    v6 = *(a2 + 152);
    *(v5 + 160) = *(a2 + 160);
    *(v5 + 152) = v6;
    ++*(a1 + 152);
    ++*(a1 + 160);

    os_unfair_lock_unlock((a1 + 128));
  }

  else
  {
    v7 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Attempt to queue a network action when the queue is disabled.", v8, 2u);
    }
  }
}

void re::NetworkActionQueue::queueSyncActionShareAsset(uint64_t a1, uint64_t a2, int a3)
{
  v3[0] = a3;
  v4 = 0;
  v5 = a2;
  v6 = 0;
  re::NetworkActionQueue::queueSyncAction(a1, v3);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v4])(&v7, v3);
  }
}

void re::NetworkActionQueue::queueSyncActionShareDependencies(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5, a3);
  v6 = 1;
  v7 = a2;
  v8 = 1;
  re::NetworkActionQueue::queueSyncAction(a1, v5);
  if (v6 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v6])(&v9, v5);
  }
}

void re::NetworkActionQueue::queueSyncActionShareLoadState(re::NetworkActionQueue *this, uint64_t a2)
{
  v2[0] = 0;
  v3 = 0;
  v4 = a2;
  v5 = 2;
  re::NetworkActionQueue::queueSyncAction(this, v2);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v3])(&v6, v2);
  }
}

void re::NetworkActionQueue::queueSyncActionShareMetadata(re::NetworkActionQueue *this, uint64_t a2)
{
  v2[0] = 0;
  v3 = 0;
  v4 = a2;
  v5 = 3;
  re::NetworkActionQueue::queueSyncAction(this, v2);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v3])(&v6, v2);
  }
}

void re::NetworkActionQueue::queueSyncActionRestrictAssetShareMode(uint64_t a1, uint64_t a2, int a3)
{
  v3[0] = a3;
  v4 = 0;
  v5 = a2;
  v6 = 4;
  re::NetworkActionQueue::queueSyncAction(a1, v3);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v4])(&v7, v3);
  }
}

void re::NetworkActionQueue::queueSyncActionNetworkLoad(re::NetworkActionQueue *this, uint64_t a2, const re::DynamicString *a3)
{
  re::DynamicString::DynamicString(v5, a3);
  v6 = 3;
  v7 = a2;
  v8 = 5;
  re::NetworkActionQueue::queueSyncAction(this, v5);
  if (v6 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v6])(&v9, v5);
  }
}

void re::NetworkActionQueue::queueSyncActionPeerLoad(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::DynamicString::DynamicString(v6, a3);
  re::DynamicArray<BOOL>::DynamicArray(&v7, a3 + 4);
  re::DynamicArray<BOOL>::DynamicArray(&v8, a3 + 9);
  re::DynamicString::DynamicString(&v9, (a3 + 14));
  v10 = 2;
  v11 = a2;
  v12 = 6;
  re::NetworkActionQueue::queueSyncAction(a1, v6);
  if (v10 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v10])(&v13, v6);
  }
}

void re::NetworkActionQueue::queueSyncActionPreloadOnLocalPeer(re::NetworkActionQueue *this, uint64_t a2)
{
  v2[0] = 0;
  v3 = 0;
  v4 = a2;
  v5 = 7;
  re::NetworkActionQueue::queueSyncAction(this, v2);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v3])(&v6, v2);
  }
}

void re::NetworkActionQueue::queueSyncActionProcessLoadedAsset(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3[0] = *a3;
  v4 = 4;
  v5 = a2;
  v6 = 8;
  re::NetworkActionQueue::queueSyncAction(a1, v3);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v4])(&v7, v3);
  }
}

void re::NetworkActionQueue::readActions(uint64_t *__return_ptr a1@<X8>, os_unfair_lock_s *this@<X0>)
{
  a1[4] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *(a1 + 6) = 0;
  os_unfair_lock_lock(this + 32);
  re::DynamicArray<re::NetworkActionQueue::Action>::operator=(a1, &this[34]);

  os_unfair_lock_unlock(this + 32);
}

void re::NetworkActionQueue::removeActions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 128));
  v34 = 0;
  v32 = 0uLL;
  v31 = 0;
  v33 = 0;
  v6 = *(a1 + 152);
  if (v6)
  {
    re::DynamicArray<re::NetworkActionQueue::Action>::setCapacity(&v31, v6);
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a3 + 8);
      if (v10 <= v9)
      {
        break;
      }

      if ((*(*(a3 + 16) + v9) & 1) == 0 && (*(*(a2 + 16) + v9) & 1) == 0)
      {
        v10 = *(a1 + 152);
        if (v10 <= v9)
        {
          goto LABEL_39;
        }

        re::DynamicArray<re::NetworkActionQueue::Action>::add(&v31, *(a1 + 168) + v8);
        v7 = *(a2 + 8);
      }

      ++v9;
      v8 += 168;
      if (v7 <= v9)
      {
        v11 = v7;
        goto LABEL_13;
      }
    }

    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v39 = 476;
    v40 = 2048;
    v41 = v9;
    v42 = 2048;
    v43 = v10;
    _os_log_send_and_compose_impl(v19, &v35, &v44, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  v11 = 0;
LABEL_13:
  if (*(a1 + 152) > v11)
  {
    v12 = 168 * v11;
    do
    {
      re::DynamicArray<re::NetworkActionQueue::Action>::add(&v31, *(a1 + 168) + v12);
      ++v11;
      v12 += 168;
    }

    while (*(a1 + 152) > v11);
    v7 = *(a2 + 8);
  }

  if (v7)
  {
    v13 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a3 + 8);
      if (v10 <= v9)
      {
        break;
      }

      if (*(*(a3 + 16) + v9) == 1 && (*(*(a2 + 16) + v9) & 1) == 0)
      {
        v10 = *(a1 + 152);
        if (v10 <= v9)
        {
          goto LABEL_43;
        }

        re::DynamicArray<re::NetworkActionQueue::Action>::add(&v31, *(a1 + 168) + v13);
        v7 = *(a2 + 8);
      }

      ++v9;
      v13 += 168;
      if (v7 <= v9)
      {
        goto LABEL_25;
      }
    }

LABEL_35:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v39 = 476;
    v40 = 2048;
    v41 = v9;
    v42 = 2048;
    v43 = v10;
    _os_log_send_and_compose_impl(v22, &v35, &v44, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
LABEL_39:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v39 = 789;
    v40 = 2048;
    v41 = v9;
    v42 = 2048;
    v43 = v10;
    _os_log_send_and_compose_impl(v25, &v35, &v44, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v39 = 789;
    v40 = 2048;
    v41 = v9;
    v42 = 2048;
    v43 = v10;
    _os_log_send_and_compose_impl(v28, &v35, &v44, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
LABEL_47:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
    __break(1u);
  }

LABEL_25:
  if ((a1 + 136) != &v31)
  {
    v14 = *(a1 + 136);
    if (v14 && v31 && v14 != v31)
    {
      goto LABEL_47;
    }

    *(a1 + 136) = v31;
    v31 = v14;
    v15 = *(a1 + 144);
    *(a1 + 144) = v32;
    v32 = v15;
    v16 = *(a1 + 168);
    *(a1 + 168) = v34;
    v34 = v16;
    ++v33;
    ++*(a1 + 160);
  }

  re::DynamicArray<re::NetworkActionQueue::Action>::deinit(&v31);
  os_unfair_lock_unlock((a1 + 128));
}

void re::NetworkActionQueue::removeLoadActions(os_unfair_lock_s *this, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4 >= 1)
  {
    v5 = (*&this[38]._os_unfair_lock_opaque & 0x7FFFFFFFLL) + 1;
    v6 = 168 * (*&this[38]._os_unfair_lock_opaque & 0x7FFFFFFFLL);
    while (1)
    {
      if (v4 <= v5 - 2)
      {
        v20 = 0;
        memset(v29, 0, sizeof(v29));
        v17 = MEMORY[0x1E69E9C10];
        v21 = 136315906;
        v22 = "operator[]";
        v23 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v24 = 789;
        v25 = 2048;
        v26 = v5 - 2;
        v27 = 2048;
        v28 = v4;
        _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

      v7 = *&this[42]._os_unfair_lock_opaque;
      v8 = v7 + v6 - 16;
      if (*v8 != a2 || (*(v7 + v6 - 8) - 5) > 1)
      {
        goto LABEL_16;
      }

      if (v4 - 1 > v5 - 2)
      {
        break;
      }

LABEL_13:
      v15 = v7 + 168 * v4;
      v16 = *(v15 - 24);
      if (v16 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v16])(v29, v15 - 168);
        v4 = *&this[38]._os_unfair_lock_opaque;
      }

      *(v15 - 24) = -1;
      *&this[38]._os_unfair_lock_opaque = --v4;
      ++this[40]._os_unfair_lock_opaque;
LABEL_16:
      --v5;
      v6 -= 168;
      if (v5 <= 1)
      {
        goto LABEL_17;
      }
    }

    v9 = v7 + v6 - 168;
    v10 = v7 + 168 * v4;
    v11 = v7 + v6;
    v12 = *(v7 + v6 - 24);
    v13 = *(v10 - 24);
    if (v12 == -1)
    {
      if (v13 == -1)
      {
        goto LABEL_12;
      }
    }

    else if (v13 == -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v12])(v29, v9);
      *(v11 - 24) = -1;
LABEL_12:
      v14 = *(v10 - 16);
      *(v8 + 8) = *(v10 - 8);
      *v8 = v14;
      v4 = *&this[38]._os_unfair_lock_opaque;
      v7 = *&this[42]._os_unfair_lock_opaque;
      goto LABEL_13;
    }

    *&v29[0] = v8 - 152;
    (off_1F5CBA598[v13])(v29);
    goto LABEL_12;
  }

LABEL_17:

  os_unfair_lock_unlock(this + 32);
}

BOOL re::NetworkActionQueue::hasLoadActions(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 32);
  v2 = *&this[38]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = 168 * v2 - 168;
    v4 = (*&this[42]._os_unfair_lock_opaque + 160);
    do
    {
      v5 = *v4;
      v4 += 42;
      v6 = (v5 - 5) < 2;
      v7 = (v5 - 5) < 2 || v3 == 0;
      v3 -= 168;
    }

    while (!v7);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v6;
}

uint64_t re::DynamicArray<re::NetworkActionQueue::Action>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 168 * v2;
    do
    {
      v5 = *(v3 + 144);
      if (v5 != -1)
      {
        result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v6, v3);
      }

      *(v3 + 144) = -1;
      v3 += 168;
      v4 -= 168;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 144);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 144) = -1;
  v5 = *(a2 + 144);
  if (v5 != -1)
  {
    v6 = v3;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100IZNS0_6__ctorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JSQ_EEEDcmST_DpOT0____fdiagonal[v5])(&v6, a2);
    *(v3 + 144) = v5;
  }

  return result;
}

re::DynamicString *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEEEEEDcSU_DpT0_(re::DynamicString **a1, uint64_t *a2)
{
  v3 = *a1;
  re::DynamicString::DynamicString(*a1, a2);
  re::DynamicArray<BOOL>::DynamicArray(v3 + 32, a2 + 4);
  re::DynamicArray<BOOL>::DynamicArray(v3 + 72, a2 + 9);

  return re::DynamicString::DynamicString((v3 + 112), (a2 + 14));
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEEEEEDcSU_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<re::NetworkActionQueue::Action>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::NetworkActionQueue::Action>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::NetworkActionQueue::Action>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::NetworkActionQueue::Action>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::NetworkActionQueue::Action>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 168 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 144) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1>>(v11, v8);
          v12 = *(v8 + 152);
          *(v11 + 160) = *(v8 + 160);
          *(v11 + 152) = v12;
          v13 = *(v8 + 144);
          if (v13 != -1)
          {
            (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v13])(&v18, v8);
          }

          *(v8 + 144) = -1;
          v8 += 168;
          v11 += 168;
          v10 -= 168;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 144);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 144) = -1;
  v5 = *(a2 + 144);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CBA548[v5])(&v6, a2);
    *(v3 + 144) = v5;
  }

  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData> &&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 36) = 0x7FFFFFFFLL;
  return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v2, a2);
}

double std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 24) = *(a2 + 24);
  v4 = *(a2 + 8);
  *v2 = *a2;
  *a2 = 0;
  v5 = *(a2 + 16);
  *(a2 + 24) = 0;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(v2 + 64) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  v8 = *(a2 + 40);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 40) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *(v2 + 48);
  *(v2 + 48) = *(a2 + 48);
  *(a2 + 48) = v9;
  v10 = *(v2 + 64);
  *(v2 + 64) = *(a2 + 64);
  *(a2 + 64) = v10;
  ++*(a2 + 56);
  ++*(v2 + 56);
  *(v2 + 104) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = 0;
  *(v2 + 96) = 0;
  v11 = *(a2 + 80);
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 80) = v11;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v12 = *(v2 + 88);
  *(v2 + 88) = *(a2 + 88);
  *(a2 + 88) = v12;
  v13 = *(v2 + 104);
  *(v2 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  ++*(a2 + 96);
  ++*(v2 + 96);
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 136) = *(a2 + 136);
  v14 = *(a2 + 120);
  *(v2 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  v15 = *(a2 + 128);
  *(a2 + 136) = 0;
  v17 = *(v2 + 120);
  v16 = *(v2 + 128);
  *(v2 + 120) = v14;
  *(v2 + 128) = v15;
  *(a2 + 120) = v17;
  *(a2 + 128) = v16;
  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData> &&>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 24) = a2[3];
  v4 = a2[1];
  *v2 = *a2;
  *a2 = 0;
  v5 = a2[2];
  a2[3] = 0;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  a2[1] = v7;
  a2[2] = v6;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t re::DynamicArray<re::NetworkActionQueue::Action>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::NetworkActionQueue::Action>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::NetworkActionQueue::Action>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::NetworkActionQueue::Action>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::NetworkActionQueue::Action>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicArray<re::NetworkActionQueue::Action>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::NetworkActionQueue::Action>::setCapacity(result, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = v3[2];
    v15 = v3[4];
    if (v14)
    {
      v16 = v13 + 168 * v14;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> const&>(v15, v13);
        v17 = *(v13 + 152);
        *(v15 + 160) = *(v13 + 160);
        *(v15 + 152) = v17;
        v13 += 168;
        v15 += 168;
      }

      while (v13 != v16);
      v15 = v3[4];
      v14 = v3[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v18 = v13 + 168 * v4;
      v19 = 168 * v14;
      v20 = v13 + v19;
      v21 = v15 + v19;
      do
      {
        *v21 = 0;
        *(v21 + 144) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> const&>(v21, v20);
        v22 = *(v20 + 152);
        *(v21 + 160) = *(v20 + 160);
        *(v21 + 152) = v22;
        v20 += 168;
        v21 += 168;
      }

      while (v20 != v18);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + 168 * v4;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> const&>(v6, v7);
        v9 = *(v7 + 152);
        *(v6 + 160) = *(v7 + 160);
        *(v6 + 152) = v9;
        v7 += 168;
        v6 += 168;
      }

      while (v7 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v10 = v6 + 168 * v4;
      v11 = -168 * v4 + 168 * v5;
      do
      {
        v12 = *(v10 + 144);
        if (v12 != -1)
        {
          result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v12])(&v23, v10);
        }

        *(v10 + 144) = -1;
        v10 += 168;
        v11 -= 168;
      }

      while (v11);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 144);
  v4 = *(a2 + 144);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v3])(&v6, result, a2);
    *(v2 + 144) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CBA570[v4])(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEERKS11_EEEDcST_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 144);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[36] = 0;
  return result;
}

re::DynamicString *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEERKS11_EEEDcST_DpT0_(uint64_t *a1, re::DynamicString *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v7, v4);
LABEL_7:
    *(v4 + 144) = -1;
    result = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v4, a3);
    *(v4 + 144) = 1;
    return result;
  }

  return re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a2, a3);
}

re::DynamicString *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEERKS11_EEEDcST_DpT0_(uint64_t a1, re::DynamicString *this, re::DynamicString *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v8, v4);
LABEL_7:
    v4[36] = -1;
    re::DynamicString::DynamicString(v4, a3);
    re::DynamicArray<BOOL>::DynamicArray((v4 + 8), a3 + 4);
    re::DynamicArray<BOOL>::DynamicArray((v4 + 18), a3 + 9);
    result = re::DynamicString::DynamicString((v4 + 28), (a3 + 112));
    v4[36] = 2;
    return result;
  }

  re::DynamicString::operator=(this, a3);
  re::DynamicArray<BOOL>::operator=(this + 32, a3 + 4);
  re::DynamicArray<BOOL>::operator=(this + 72, a3 + 9);

  return re::DynamicString::operator=((this + 112), (a3 + 112));
}

re::DynamicString *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEERKS11_EEEDcST_DpT0_(re::DynamicString **a1, re::DynamicString *this, re::DynamicString *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 36);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 3)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v7, v4);
LABEL_7:
    *(v4 + 36) = -1;
    result = re::DynamicString::DynamicString(v4, a3);
    *(v4 + 36) = 3;
    return result;
  }

  return re::DynamicString::operator=(this, a3);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEERKS11_EEEDcST_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[9].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 4)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v7, v4);
  }

  v4[9].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[9].n128_u32[0] = 4;
  return result;
}

uint64_t re::DynamicArray<re::NetworkActionQueue::Action>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::NetworkActionQueue::Action>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 168 * v4;
  *v5 = 0;
  *(v5 + 144) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::AssetNetworkSharingMode,re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::AssetLoadDescriptor,re::DynamicString,re::NetworkActionQueue::Action::NetworkLoadData>,(std::__variant_detail::_Trait)1>>(v5, a2);
  v7 = *(a2 + 152);
  *(v5 + 160) = *(a2 + 160);
  *(v5 + 152) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEEOSZ_EEEDcSR_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 144);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[36] = 0;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEEOSZ_EEEDcSR_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  if (v5 != 1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v8, v4);
LABEL_11:
    *(v4 + 144) = -1;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    *(v4 + 36) = 0x7FFFFFFFLL;
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v4, a3);
    *(v4 + 144) = 1;
    return;
  }

  if (a2 != a3)
  {
    if (!*a2 || *a2 == *a3)
    {

      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a2, a3);
    }

    else
    {
      re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a2);
      if (*a3)
      {
        v7 = *(a3 + 28);
        if (*(a2 + 24) < v7)
        {
          re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a2, v7);
        }

        re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a2, a3);
        ++*(a2 + 40);
      }
    }
  }
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEEOSZ_EEEDcSR_DpT0_(uint64_t *a1, re::DynamicString *this, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v22, v4);
LABEL_7:
    result = 0.0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 24) = *(a3 + 24);
    v8 = *(a3 + 8);
    *v4 = *a3;
    *a3 = 0;
    v9 = *(a3 + 16);
    *(a3 + 24) = 0;
    v11 = *(v4 + 8);
    v10 = *(v4 + 16);
    *(v4 + 8) = v8;
    *(v4 + 16) = v9;
    *(a3 + 8) = v11;
    *(a3 + 16) = v10;
    *(v4 + 64) = 0;
    *(v4 + 56) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    *(v4 + 32) = 0;
    v12 = *(a3 + 40);
    *(v4 + 32) = *(a3 + 32);
    *(v4 + 40) = v12;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    v13 = *(v4 + 48);
    *(v4 + 48) = *(a3 + 48);
    *(a3 + 48) = v13;
    v14 = *(v4 + 64);
    *(v4 + 64) = *(a3 + 64);
    *(a3 + 64) = v14;
    ++*(a3 + 56);
    ++*(v4 + 56);
    *(v4 + 104) = 0;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 72) = 0;
    *(v4 + 96) = 0;
    v15 = *(a3 + 80);
    *(v4 + 72) = *(a3 + 72);
    *(v4 + 80) = v15;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    v16 = *(v4 + 88);
    *(v4 + 88) = *(a3 + 88);
    *(a3 + 88) = v16;
    v17 = *(v4 + 104);
    *(v4 + 104) = *(a3 + 104);
    *(a3 + 104) = v17;
    ++*(a3 + 96);
    ++*(v4 + 96);
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 136) = *(a3 + 136);
    v18 = *(a3 + 120);
    *(v4 + 112) = *(a3 + 112);
    *(a3 + 112) = 0;
    v19 = *(a3 + 128);
    *(a3 + 136) = 0;
    v21 = *(v4 + 120);
    v20 = *(v4 + 128);
    *(v4 + 120) = v18;
    *(v4 + 128) = v19;
    *(a3 + 120) = v21;
    *(a3 + 128) = v20;
    *(v4 + 144) = 2;
    return result;
  }

  re::DynamicString::operator=(this, a3);
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(this + 32, (a3 + 32));
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(this + 72, (a3 + 72));

  re::DynamicString::operator=((this + 112), (a3 + 112));
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEEOSZ_EEEDcSR_DpT0_(uint64_t *a1, re::DynamicString *this, re::DynamicString *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 3)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v11, v4);
LABEL_7:
    result = 0.0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 24) = *(a3 + 3);
    v7 = *(a3 + 1);
    *v4 = *a3;
    *a3 = 0;
    v8 = *(a3 + 2);
    *(a3 + 3) = 0;
    v10 = *(v4 + 8);
    v9 = *(v4 + 16);
    *(v4 + 8) = v7;
    *(v4 + 16) = v8;
    *(a3 + 1) = v10;
    *(a3 + 2) = v9;
    *(v4 + 144) = 3;
    return result;
  }

  re::DynamicString::operator=(this, a3);
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISL_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSP_1EJS9_SG_SH_SB_SK_EEEOSZ_EEEDcSR_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[9].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 4)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS6_9HashTableINS6_13DynamicStringEyNS6_4HashIS9_EENS6_7EqualToIS9_EELb1ELb0EEENS6_19AssetLoadDescriptorES9_NS6_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSL_EEEDcOSM_DpOT0____fmatrix[v5])(&v7, v4);
  }

  v4[9].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[9].n128_u32[0] = 4;
  return result;
}

void *re::allocInfo_AssetLoadDescriptor(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_45, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_45))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192A00, "AssetLoadDescriptor");
    __cxa_guard_release(&_MergedGlobals_45);
  }

  return &unk_1EE192A00;
}

void re::initInfo_AssetLoadDescriptor(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xBD52FE729D2D4FCALL;
  v20[1] = "AssetLoadDescriptor";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1929E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1929E0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "scheme";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1929E8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "data";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1929F0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicString>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "assetType";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x7000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1929F8 = v18;
    __cxa_guard_release(&qword_1EE1929E0);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1929E8;
  *(this + 9) = re::internal::defaultConstruct<re::AssetLoadDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AssetLoadDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::AssetLoadDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssetLoadDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionDynamicArray<unsigned char>::IntrospectionDynamicArray(&re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint8_t(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::info, 0);
    qword_1EE186830 = 0x2800000003;
    dword_1EE186838 = v8;
    word_1EE18683C = 0;
    *&xmmword_1EE186840 = 0;
    *(&xmmword_1EE186840 + 1) = 0xFFFFFFFFLL;
    qword_1EE186850 = v7;
    unk_1EE186858 = 0;
    re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::info = &unk_1F5CBA5D0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186840 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(BOOL)::info;
}

void *re::internal::defaultConstruct<re::AssetLoadDescriptor>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;

  return re::DynamicString::setCapacity((a3 + 112), 0);
}

double re::internal::defaultDestruct<re::AssetLoadDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 112));
  re::DynamicArray<unsigned long>::deinit(a3 + 72);
  re::DynamicArray<unsigned long>::deinit(a3 + 32);

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::AssetLoadDescriptor>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;

  return re::DynamicString::setCapacity((a1 + 112), 0);
}

double re::internal::defaultDestructV2<re::AssetLoadDescriptor>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 112));
  re::DynamicArray<unsigned long>::deinit(a1 + 72);
  re::DynamicArray<unsigned long>::deinit(a1 + 32);

  return re::DynamicString::deinit(a1);
}

uint64_t re::AssetLoadDescriptor::setIntrospectableData(char **this, const re::IntrospectionBase *a2, const re::IntrospectionBase **a3, re::Allocator *a4)
{
  v4 = a4;
  if (!a4)
  {
  }

  v14 = 0;
  __src = 0;
  re::serializeBinaryToBuffer(a2, a3, 0, v4, v4, &__src, &v14);
  v8 = v14;
  this[6] = 0;
  ++*(this + 14);
  re::DynamicArray<BOOL>::resize((this + 4), v8 + 22);
  strcpy(this[8], "Z9T4");
  this[8][5] = 0;
  v9 = this[8];
  *(v9 + 6) = 0;
  *(v9 + 14) = v8;
  v10 = this[8];
  v11 = __src;
  memcpy(v10 + 22, __src, v8);
  v12 = *(*v4 + 40);

  return v12(v4, v11);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData(re::AssetLoadDescriptor *this, re **a2, re::DynamicString ***a3, re::Allocator *a4)
{
  v4 = a4;
  if (!a4)
  {
  }

  v8 = *(this + 8);
  if (*v8 != 877934938)
  {
    v9 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      v10 = "Failed getIntrospectableData: Incoming Asset Load Descriptor does not have the proper tag";
      goto LABEL_9;
    }

    return 0;
  }

  if (*(v8 + 4))
  {
    v9 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      v10 = "Failed getIntrospectableData: Incoming Asset Load Descriptor newer than current version";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, v10, &v27, 2u);
      return 0;
    }

    return 0;
  }

  if (*(v8 + 5))
  {
    if (*(v8 + 5) == 1)
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      v13 = *(v8 + 14);
      v27 = &unk_1F5D0A468;
      LOBYTE(v28) = 0;
      v29 = v8 + 22;
      v30 = v13;
      v14 = re::FixedArrayInputStream::FixedArrayInputStream(v31, (v8 + 22), v13, -1);
      v27 = &unk_1F5D0A468;
      re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v31);
      return 1;
    }

    v9 = *re::assetsLogObjects(this);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    LOWORD(v27) = 0;
    v10 = "Failed getIntrospectableData: unsupported serialization method for AssetLoadDescriptor";
    goto LABEL_9;
  }

  v16 = *(v8 + 6);
  if (v16)
  {
    v17 = re::DynamicArray<unsigned char>::slice(this + 32, 0x16uLL, *(v8 + 6));
    v19 = v18;
    LOBYTE(v29) = 0;
    v27 = &unk_1F5CCF6E8;
    v28 = "schema";
    v30 = v4;
    memset(v31, 0, sizeof(v31));
    v32 = 0;
    v33 = 0x7FFFFFFFLL;
    re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(v31, v4, 3);
    v37 = &unk_1F5D0B130;
    v38 = v17;
    v39 = v19;
    v40 = 0;
    v11 = 0;
    {
      if (*(&v34 + 1) && (v35 & 1) != 0)
      {
        (*(**(&v34 + 1) + 40))(*(&v34 + 1), *(&v35 + 1), v20, v21);
      }
    }

    re::AutoFreeAllocator::~AutoFreeAllocator(&v27);
  }

  else
  {
    v25 = re::DynamicArray<unsigned char>::slice(this + 32, 0x16uLL, *(this + 6) - 22);
    v27 = &unk_1F5D0B130;
    v28 = v25;
    v29 = v26;
    v30 = 0;
  }

  return v11;
}

unint64_t re::DynamicArray<unsigned char>::slice(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = v4 + 1;
  if (v4 + 1 <= a2)
  {
    v17 = 0;
    memset(v23, 0, sizeof(v23));
    v7 = MEMORY[0x1E69E9C10];
    *v18 = 136315906;
    *&v18[4] = "slice";
    *&v18[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *&v18[14] = 1119;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v8, &v17, v23, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v18, 38, v13, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (__CFADD__(a2, a3))
  {
LABEL_9:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 1125, a2, a3, v4, v17, *v18);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", v9, v11, v14);
    __break(1u);
LABEL_10:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1129, a2, a3, v4);
    _os_crash("assertion failure: (endIndexExclusive <= m_size) Invalid count. index = %zu, count = %zu, array size = %zu", v10, v12, v15);
    __break(1u);
  }

  if (a2 + a3 > v4)
  {
    goto LABEL_10;
  }

  return *(a1 + 32) + a2;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionDynamicArray<unsigned char>::IntrospectionDynamicArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CADA48;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CBA5D0;
  return a1;
}

void *re::IntrospectionDynamicArray<unsigned char>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<unsigned char>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<unsigned char>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<unsigned char>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<unsigned char>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<BOOL>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<BOOL>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<unsigned char>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<unsigned char>::add(this, &v10);
  v8 = (*(this + 4) + *(this + 2) - 1);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<unsigned char>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + a3;
}

_anonymous_namespace_ *re::DynamicArray<unsigned char>::add(_anonymous_namespace_ *this, _BYTE *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<BOOL>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + v4) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<BOOL>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<BOOL>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v12);
    re::TypeInfo::TypeInfo(v11, &v13);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      do
      {
        re::TypeInfo::destruct(v11, v10, a3, 0);
        re::TypeInfo::construct(v11, v10++, a3, 0);
        --v9;
      }

      while (v9);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::allocInfo_PeerAssetLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_46, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_46))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192AB0, "PeerAssetLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_46);
  }

  return &unk_1EE192AB0;
}

void re::initInfo_PeerAssetLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xEB1ACE70333D9ADALL;
  v16[1] = "PeerAssetLoadDescriptorParameters";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE192A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192A98))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint64_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "fromPeerId";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE192AA0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "assetPathOnPeer";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE192AA8 = v14;
    __cxa_guard_release(&qword_1EE192A98);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE192AA0;
  *(this + 9) = re::internal::defaultConstruct<re::PeerAssetLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PeerAssetLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::PeerAssetLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::PeerAssetLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::PeerAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0u;
  v3 = (a3 + 8);
  *(a3 + 24) = 0u;

  return re::DynamicString::setCapacity(v3, 0);
}

void *re::internal::defaultConstructV2<re::PeerAssetLoadDescriptorParameters>(uint64_t a1)
{
  *(a1 + 8) = 0u;
  v1 = (a1 + 8);
  *(a1 + 24) = 0u;

  return re::DynamicString::setCapacity(v1, 0);
}

re::PeerAssetProvider *re::PeerAssetProvider::PeerAssetProvider(re::PeerAssetProvider *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CBA668;
  v2 = &unk_1EE187000;
  {
    v2 = &unk_1EE187000;
    if (v4)
    {
      re::introspect<re::PeerAssetLoadDescriptorParameters>(BOOL)::info = re::internal::getOrCreateInfo("PeerAssetLoadDescriptorParameters", re::allocInfo_PeerAssetLoadDescriptorParameters, re::initInfo_PeerAssetLoadDescriptorParameters, &re::internal::introspectionInfoStorage<re::PeerAssetLoadDescriptorParameters>, 0);
      v2 = &unk_1EE187000;
    }
  }

  re::PeerAssetProvider::s_loadDescriptorParametersIntrospect = v2[172];
  return this;
}

uint64_t *re::PeerAssetProvider::makeDescriptor@<X0>(uint64_t *__return_ptr a1@<X8>, re::PeerAssetProvider *this@<X0>, const re::DynamicString *a3@<X2>, re::DynamicString *a4@<X1>)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v8 = re::DynamicString::setCapacity(a1, 0);
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 14) = 0;
  a1[6] = 0;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  a1[17] = 0;
  re::DynamicString::setCapacity(a1 + 14, 0);
  v17 = "PeerAsset";
  v18 = 9;
  re::DynamicString::operator=(a1, &v17);
  v9 = strlen(a3);
  v17 = a3;
  v18 = v9;
  v10 = re::DynamicString::operator=((a1 + 14), &v17);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  re::DynamicString::setCapacity(&v18, 0);
  re::DynamicString::operator=(&v18, a4);
  v17 = this;
  v15 = this;
  re::DynamicString::DynamicString(v16, &v18);
  re::AssetLoadDescriptor::setIntrospectableData(a1, re::PeerAssetProvider::s_loadDescriptorParametersIntrospect, &v15, 0);
  if (v16[0])
  {
    if (v16[1])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    memset(v16, 0, sizeof(v16));
  }

  result = v18;
  if (v18)
  {
    if (v19)
    {
      return (*(*v18 + 40))(v18, v20, v11, v12, v13);
    }
  }

  return result;
}

__n128 re::PeerAssetProvider::load@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

uint64_t *re::PeerAssetProvider::resolveChild@<X0>(const re::AssetLoadDescriptor *a1@<X1>, re::AssetProvider *a2@<X2>, const re::DynamicString *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 2);
  }

  else
  {
    v8 = a1 + 9;
  }

  v9 = strcmp(v8, "PeerAsset");
  if (v9)
  {
    result = re::DynamicString::format(&v28, "Scheme %s does not match scheme %s.", v10, v8, "PeerAsset");
    v12 = v28;
    v13 = v29;
    v14 = v30;
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    re::DynamicString::setCapacity(&v41, 0);
    Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::PeerAssetLoadDescriptorParameters>(a1, &v40, 0);
    if (Descriptor)
    {
      if (v42)
      {
        v16 = v43;
      }

      else
      {
        v16 = (&v42 + 1);
      }

      re::AssetProvider::resolveChildPath(v39, a2, v16);
      re::PeerAssetProvider::makeDescriptor(&v28, v40, a3, v39);
      v17 = v28;
      *(a4 + 48) = v31;
      v18 = v34;
      *(a4 + 72) = v33;
      v28 = 0u;
      v19 = v29;
      v20 = v30;
      v29 = 0;
      v21 = *(&v30 + 1);
      v30 = 0u;
      ++v32;
      v23 = v37;
      v22 = v38;
      v24 = v36;
      *a4 = 1;
      *(a4 + 24) = v19;
      *(a4 + 32) = v20;
      *(a4 + 8) = v17;
      *(a4 + 40) = v21;
      v31 = 0u;
      *(a4 + 64) = 1;
      v33 = 0u;
      v34 = 0u;
      *(a4 + 88) = v18;
      *(a4 + 104) = 1;
      *(a4 + 112) = v35;
      *(a4 + 136) = v23;
      *(a4 + 144) = v22;
      *(a4 + 128) = v24;
      if (*&v39[0])
      {
        if (BYTE8(v39[0]))
        {
          (*(**&v39[0] + 40))();
        }

        memset(v39, 0, sizeof(v39));
      }
    }

    else
    {
      v25 = v28;
      v26 = v29;
      v27 = v30;
      *a4 = 0;
      *(a4 + 8) = v25;
      *(a4 + 24) = v26;
      *(a4 + 32) = v27;
    }

    result = v41;
    if (v41)
    {
      if (v42)
      {
        return (*(*v41 + 40))();
      }
    }
  }

  return result;
}

uint64_t *re::PeerAssetProvider::getDescription(re::PeerAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::DynamicString::setCapacity(&v11, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::PeerAssetLoadDescriptorParameters>(a2, &v10, 0))
  {
    if (v12)
    {
      v6 = v13;
    }

    else
    {
      v6 = &v12 + 1;
    }

    re::DynamicString::format(&v8, "peer:%llu / %s", v5, v10, v6);
    re::DynamicString::operator=(a3, &v8);
    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }
  }

  else
  {
    v8 = "mangled";
    v9 = 7;
    re::DynamicString::operator=(a3, &v8);
  }

  result = v11;
  if (v11)
  {
    if (v12)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

uint64_t *re::PeerAssetProvider::getAssetPathForRelease@<X0>(_anonymous_namespace_ *a1@<X0>, re::AssetLoadDescriptor *a2@<X1>, const re::internal::AssetTypeRegistry *a3@<X2>, os_unfair_lock_s *a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v56 = 0;
  v57 = 0;
  v58 = 0;
  re::DynamicString::setCapacity(&v55, 0);
  Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::PeerAssetLoadDescriptorParameters>(a2, &v54, 0);
  if (Descriptor)
  {
    *v49 = 0;
    *&v49[8] = 0u;
    v50 = 0u;
    v12 = re::DynamicString::setCapacity(&v49[8], 0);
    v52 = 0u;
    v51 = 0u;
    re::DynamicString::setCapacity(&v51, 0);
    v53 = 0;
    if (v56)
    {
      v13 = v57;
    }

    else
    {
      v13 = &v56 + 1;
    }

    v16 = re::AssetPath::parse(v46, v49, v13, 0, a3, a4);
    if ((v46[0] & 1) == 0)
    {
      v14 = v47;
      if (v47)
      {
        if (BYTE8(v47))
        {
          v14 = (*(*v47 + 40))(v16);
        }

        v48 = 0u;
        v47 = 0u;
      }
    }

    if (a5 > 9 || *v49 == 3)
    {
      v23 = re::DynamicString::format(&v43, "%llu", v15, v54);
      LODWORD(v36) = 0;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v24 = re::DynamicString::setCapacity(&v36 + 1, 0);
      *(&v40 + 1) = 0;
      v41 = 0uLL;
      re::DynamicString::setCapacity(&v40, 0);
      v42 = 0;
      if (*(a2 + 15))
      {
        v25 = *(a2 + 16);
      }

      else
      {
        v25 = a2 + 121;
      }

      v26 = re::internal::AssetTypeRegistry::assetTypeWithName(a3, v25);
      if (v44)
      {
        v27 = *&v45[7];
      }

      else
      {
        v27 = v45;
      }

      if (BYTE8(v51))
      {
        v28 = v52;
      }

      else
      {
        v28 = &v51 + 9;
      }

      re::AssetPath::initPeerAssetPath(&v36, v27, v28, v26);
      v34 = 0;
      v35 = 0;
      v33 = *(&v36 + 1);
      re::DynamicString::setCapacity(&v33, 0);
      re::AssetPath::fullAssetPath(&v36, &v33);
      v29 = v33;
      v30 = v34;
      v31 = v35;
      *a6 = 1;
      *(a6 + 8) = v29;
      *(a6 + 24) = v30;
      *(a6 + 32) = v31;
      if (v40)
      {
        if (BYTE8(v40))
        {
          (*(*v40 + 40))();
        }

        v41 = 0u;
        v40 = 0u;
      }

      if (*(&v36 + 1) && (v37 & 1) != 0)
      {
        (*(**(&v36 + 1) + 40))();
      }

      if (v43 && (v44 & 1) != 0)
      {
        (*(*v43 + 40))();
      }
    }

    else
    {
      v17 = v36;
      v18 = v37;
      v19 = v38;
      *a6 = 0;
      *(a6 + 8) = v17;
      *(a6 + 24) = v18;
      *(a6 + 32) = v19;
    }

    if (v51)
    {
      if (BYTE8(v51))
      {
        (*(*v51 + 40))();
      }

      v52 = 0u;
      v51 = 0u;
    }

    if (*&v49[8] && (v49[16] & 1) != 0)
    {
      (*(**&v49[8] + 40))();
    }
  }

  else
  {
    *&v49[8] = 0;
    *&v49[16] = 0;
    *&v50 = 0;
    re::DynamicString::setCapacity(v49, 0);
    v20 = *v49;
    v21 = *&v49[16];
    v22 = v50;
    *a6 = 0;
    *(a6 + 8) = v20;
    *(a6 + 24) = v21;
    *(a6 + 32) = v22;
  }

  result = v55;
  if (v55)
  {
    if (v56)
    {
      return (*(*v55 + 40))();
    }
  }

  return result;
}

__n128 re::PeerAssetProvider::makeDescriptorFromAssetPath@<Q0>(re::PeerAssetProvider *this@<X0>, const re::AssetPath *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 2))
  {
    v5 = *(a2 + 3);
  }

  else
  {
    v5 = a2 + 17;
  }

  v6 = **(a2 + 9);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v7 = re::DynamicString::setCapacity(&v26, 0);
  v30 = 0;
  v31 = 0;
  v33 = 0;
  v32 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  re::DynamicString::setCapacity(&v37 + 1, 0);
  v8 = strtoull_l(v5, 0, 10, 0);
  if (v8)
  {
    re::PeerAssetProvider::makeDescriptor(&v14, v8, v6, (a2 + 40));
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
    v9 = re::DynamicString::setCapacity(&v14, 0);
    v17 = 0;
    v18 = 0uLL;
    v19 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    re::DynamicString::setCapacity(&v23.n128_u64[1], 0);
  }

  if (*(&v37 + 1) && (v38 & 1) != 0)
  {
    (*(**(&v37 + 1) + 40))();
  }

  if (*(&v34 + 1) && v37)
  {
    (*(**(&v34 + 1) + 40))();
  }

  if (v30 && v34)
  {
    (*(*v30 + 40))();
  }

  if (v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  *a3 = 1;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  v10 = v17;
  *(a3 + 32) = v16;
  *(a3 + 40) = v10;
  *(a3 + 48) = v18;
  *(a3 + 64) = 1;
  v11 = v21;
  *(a3 + 72) = v20;
  *(a3 + 88) = v11;
  *(a3 + 104) = 1;
  result = v23;
  *(a3 + 144) = v25;
  v13 = v24;
  *(a3 + 112) = result;
  *(a3 + 128) = v13;
  return result;
}

void re::PeerAssetProvider::~PeerAssetProvider(re::PeerAssetProvider *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::AssetErrorCategoryImpl::~AssetErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

void *re::AssetErrorCategoryImpl::message@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v3 = "Unknown REAssets error";
  if (a1 == 200)
  {
    v3 = "Invalid asset path";
  }

  if (a1 == 100)
  {
    v4 = "Unexpected error";
  }

  else
  {
    v4 = v3;
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v4);
}

void re::RawAssetProvider::load(re::RawAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(this + 23);
  if (*(a2 + 120))
  {
    v9 = *(a2 + 16);
  }

  else
  {
    v9 = a2 + 121;
  }

  v10 = re::internal::AssetTypeRegistry::assetTypeWithName(v8, v9);
  if (!v10)
  {
    if (*(a2 + 120))
    {
      v23 = *(a2 + 16);
    }

    else
    {
      v23 = a2 + 121;
    }

    if (*(a2 + 8))
    {
      v33 = *(a2 + 2);
    }

    else
    {
      v33 = a2 + 9;
    }

    re::DynamicString::format(&v56, "Invalid AssetType: %s, specified for AssetDescriptor scheme: %s", v11, v23, v33);
    goto LABEL_27;
  }

  v12 = v10;
  if (*(this + 12))
  {
    v13 = *(this + 23);
    *&v56 = v12;
    v14 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v13, &v56);
    (*(**v14 + 128))(*v14);
    v15 = *v14;
    v16 = (*(*v15 + 136))(v15);
    re::internal::AssetEntry::makeAssetEntry(v16, v12, 1, &v54);
    v17 = v54;
    re::internal::AssetEntry::makeAssetReference(&v61, v54);
    v18 = v61;
    *&v56 = a2;
    v50 = a3;
    v53[0] = v61;
    v19 = (*(**(this + 12) + 16))(*(this + 12), &v56, &v50, v53);
    if (v19)
    {
      v20 = v19;
      os_unfair_lock_lock(v17 + 128);
      re::internal::AssetEntry::LoadState::unloadAssetPointer_locked(&v17[224], v15);
      os_unfair_lock_unlock(v17 + 128);
      v21 = [v20 description];
      v22 = [v21 UTF8String];

      re::DynamicString::DynamicString(&v50, &v56);
      *a4 = 0;
      *(a4 + 8) = v50;
      *(a4 + 32) = v52;
      *(a4 + 16) = v51;
      if (v56 && (BYTE8(v56) & 1) != 0)
      {
        (*(*v56 + 40))();
      }

      if (!v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
      re::DynamicString::DynamicString(&v56, (a2 + 112));
      os_unfair_lock_lock(v17 + 128);
      v37 = re::internal::AssetEntry::LoadState::clearAndReturnAssetPointer_locked(&v17[224]);
      os_unfair_lock_unlock(v17 + 128);
      LOBYTE(v60) = 0;
      BYTE8(v60) = 0;
      v38 = v56;
      v39 = v57;
      v40 = v58;
      *(a4 + 56) = v60;
      *a4 = 1;
      *(a4 + 8) = v38;
      *(a4 + 24) = v39;
      *(a4 + 32) = v40;
      *(a4 + 40) = v37;
      *(a4 + 48) = 0;
      if (!v18)
      {
LABEL_12:
        if (v17)
        {
        }

        return;
      }
    }

    goto LABEL_12;
  }

  v24 = *(this + 7);
  if (!v24)
  {
LABEL_27:
    v34 = v56;
    v35 = v57;
    v36 = v58;
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 32) = v36;
    return;
  }

  *&v56 = a2;
  v50 = a3;
  (*(*v24 + 16))(&v54);
  if (v54)
  {
    v61 = v55;

    v25 = *(this + 23);
    v53[1] = 0;
    v53[2] = 0;
    v53[0] = v25;
    v48[0] = 1;
    v49 = a3;
    re::AssetUtilities::loadCompiledAssetFromData(&v61, v53, v12, 0, 0, v48, &v50);
    if (v50)
    {
      re::DynamicString::DynamicString(&v56, (a2 + 112));
      v28 = *(&v51 + 1);
      v27 = v51;
      v59 = v51;
      if (*(&v51 + 1))
      {
        v29 = (*(&v51 + 1) + 8);
        v28 = *(&v59 + 1);
        v27 = v59;
      }

      LOBYTE(v60) = 0;
      BYTE8(v60) = 0;
      v30 = v56;
      v31 = v57;
      v32 = v58;
      *(a4 + 56) = v60;
      *a4 = 1;
      *(a4 + 8) = v30;
      *(a4 + 24) = v31;
      *(a4 + 32) = v32;
      *(a4 + 40) = v27;
      *(a4 + 48) = v28;
    }

    else
    {
      if (BYTE8(v51))
      {
        v44 = v52;
      }

      else
      {
        v44 = &v51 + 9;
      }

      re::DynamicString::format(&v56, "Error loading compiled asset '%llu': %s", v26, a3, v44);
      v45 = v56;
      v46 = v57;
      v47 = v58;
      *a4 = 0;
      *(a4 + 8) = v45;
      *(a4 + 24) = v46;
      *(a4 + 32) = v47;
    }

    re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v50);
  }

  else
  {
    v41 = v55;
    v42 = [v55 description];
    v43 = [v42 UTF8String];

    re::DynamicString::DynamicString(&v50, &v56);
    *a4 = 0;
    *(a4 + 8) = v50;
    *(a4 + 32) = v52;
    *(a4 + 16) = v51;
    if (v56 && (BYTE8(v56) & 1) != 0)
    {
      (*(*v56 + 40))();
    }
  }
}

void re::RawAssetProvider::resolveChild(re::RawAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(this + 17);
  if (!v6)
  {
    v13 = v44;
    v14 = v45;
    v15 = v46;
    *a5 = 0;
    *(a5 + 8) = v13;
    *(a5 + 24) = v14;
    *(a5 + 32) = v15;
    return;
  }

  v34 = a2;
  *v23 = a3;
  v53[4] = a4;
  (*(*v6 + 16))(&v44);
  if ((v44 & 1) == 0)
  {
    v16 = *(&v44 + 1);
    v17 = [*(&v44 + 1) description];
    v18 = [v17 UTF8String];

    re::DynamicString::DynamicString(v23, &v34);
    *a5 = 0;
    *(a5 + 8) = *v23;
    *(a5 + 32) = v24;
    *(a5 + 16) = *&v23[8];
    if (v34 && (v35 & 1) != 0)
    {
      (*(*v34 + 40))();
    }

    goto LABEL_37;
  }

  re::DynamicString::DynamicString(&v34, (&v44 + 8));
  re::DynamicArray<BOOL>::DynamicArray(v36, v47);
  re::DynamicArray<BOOL>::DynamicArray(v40, v50);
  v7 = re::DynamicString::DynamicString(v43, v53);
  if (v35)
  {
    v8 = v35 >> 1;
  }

  else
  {
    v8 = v35 >> 1;
  }

  if (!v8)
  {
    v19 = "The child AssetDescriptor's scheme name was not set via CoreRE API.";
LABEL_21:
    v20 = *v23;
    v21 = *&v23[16];
    v22 = v24;
    *a5 = 0;
    *(a5 + 8) = v20;
    *(a5 + 24) = v21;
    *(a5 + 32) = v22;
    goto LABEL_22;
  }

  if (!v37)
  {
    v19 = "The child AssetDescriptor's data was not set via CoreRE API.";
    goto LABEL_21;
  }

  if (v43[1])
  {
    v9 = v43[1] >> 1;
  }

  else
  {
    v9 = LOBYTE(v43[1]) >> 1;
  }

  if (!v9)
  {
    v19 = "The child AssetDescriptor's assetType was not set via CoreRE API.";
    goto LABEL_21;
  }

  re::DynamicString::DynamicString(v23, &v34);
  re::DynamicArray<BOOL>::DynamicArray(&v24 + 8, v36);
  re::DynamicArray<BOOL>::DynamicArray(&v27 + 8, v40);
  re::DynamicString::DynamicString((&v30 + 8), v43);
  *a5 = 1;
  *(a5 + 8) = *v23;
  *v23 = 0;
  v10 = v24;
  *(a5 + 16) = *&v23[8];
  *(a5 + 48) = v25;
  v11 = v28;
  *(a5 + 72) = v27;
  v24 = 0u;
  *&v23[8] = 0u;
  *(a5 + 32) = v10;
  v25 = 0u;
  ++v26;
  *(a5 + 64) = 1;
  *(a5 + 88) = v11;
  v27 = 0u;
  v28 = 0u;
  ++v29;
  *(a5 + 104) = 1;
  *(a5 + 112) = v30;
  v30 = 0u;
  v12 = v33;
  *(a5 + 136) = v32;
  *(a5 + 144) = v12;
  v32 = 0;
  v33 = 0;
  *(a5 + 128) = v31;
LABEL_22:
  if (v43[0])
  {
    if (v43[1])
    {
      (*(*v43[0] + 40))();
    }

    memset(v43, 0, sizeof(v43));
  }

  if (v40[0])
  {
    if (v42)
    {
      (*(*v40[0] + 40))();
    }

    v42 = 0;
    memset(v40, 0, sizeof(v40));
    ++v41;
  }

  if (v36[0])
  {
    if (v39)
    {
      (*(*v36[0] + 40))();
    }

    v39 = 0;
    v36[1] = 0;
    v37 = 0;
    v36[0] = 0;
    ++v38;
  }

  if (v34 && (v35 & 1) != 0)
  {
    (*(*v34 + 40))();
  }

LABEL_37:
  if (v44 == 1)
  {
    if (v53[0])
    {
      if (v53[1])
      {
        (*(*v53[0] + 40))();
      }

      memset(v53, 0, 32);
    }

    if (v50[0])
    {
      if (v52)
      {
        (*(*v50[0] + 40))();
      }

      v52 = 0;
      memset(v50, 0, sizeof(v50));
      ++v51;
    }

    if (v47[0])
    {
      if (v49)
      {
        (*(*v47[0] + 40))();
      }

      v49 = 0;
      memset(v47, 0, sizeof(v47));
      ++v48;
    }

    if (*(&v44 + 1))
    {
      if (v45)
      {
        (*(**(&v44 + 1) + 40))();
      }
    }
  }
}

void re::RawAssetProvider::~RawAssetProvider(re::RawAssetProvider *this)
{
  *this = &unk_1F5CBA768;
  v2 = this + 24;
  re::DynamicString::deinit((this + 144));
  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(this + 104);
  re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(this + 64);
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBA768;
  v2 = this + 24;
  re::DynamicString::deinit((this + 144));
  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(this + 104);
  re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(this + 64);
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RawAssetProvider::schemeName(re::RawAssetProvider *this)
{
  if (*(this + 152))
  {
    return *(this + 20);
  }

  else
  {
    return this + 153;
  }
}

re::DynamicString *re::RawAssetProvider::getDescription(re::RawAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v4[0] = "custom";
  v4[1] = 6;
  return re::DynamicString::operator=(a3, v4);
}

uint64_t (***re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void re::introspect_AssetNetworkMessageType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE192B48, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE192B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192B50))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE192BA0, "AssetNetworkMessageType", 4, 4, 1, 1);
      qword_1EE192BA0 = &unk_1F5D0C658;
      qword_1EE192BE0 = &re::introspect_AssetNetworkMessageType(BOOL)::enumTable;
      dword_1EE192BB0 = 9;
      __cxa_guard_release(&qword_1EE192B50);
    }

    if (_MergedGlobals_47)
    {
      break;
    }

    _MergedGlobals_47 = 1;
    re::IntrospectionRegistry::add(&qword_1EE192BA0, a2);
    v33 = 0x721F4BEB80401F86;
    v34 = "AssetNetworkMessageType";
    v37 = 208862;
    v38 = "int";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE192BE0;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE192BC0 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v32);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE192B48))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 100;
      *(v29 + 16) = "Request";
      qword_1EE192B68 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 101;
      *(v31 + 16) = "Response";
      qword_1EE192B70 = v31;
      __cxa_guard_release(&qword_1EE192B48);
    }
  }
}

void *re::allocInfo_AssetSimpleMessage(re *this)
{
  if ((atomic_load_explicit(&qword_1EE192B58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192B58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192BE8, "AssetSimpleMessage");
    __cxa_guard_release(&qword_1EE192B58);
  }

  return &unk_1EE192BE8;
}

void re::initInfo_AssetSimpleMessage(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0x1F5266FA5945820ALL;
  v27[1] = "AssetSimpleMessage";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE192B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192B60))
  {
    v7 = re::introspectionAllocator();
    re::introspect_AssetNetworkMessageType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "messageType";
    *(v9 + 16) = &qword_1EE192BA0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE192B78 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "assetPath";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x800000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE192B80 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_uint32_t(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "assetSize";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE192B88 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_uint32_t(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "currentFragment";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2C00000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE192B90 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_uint32_t(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "numFragments";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x3000000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE192B98 = v25;
    __cxa_guard_release(&qword_1EE192B60);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE192B78;
  *(this + 9) = re::internal::defaultConstruct<re::AssetSimpleMessage>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AssetSimpleMessage>;
  *(this + 13) = re::internal::defaultConstructV2<re::AssetSimpleMessage>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssetSimpleMessage>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void *re::internal::defaultConstruct<re::AssetSimpleMessage>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0u;
  v3 = (a3 + 8);
  *(a3 + 24) = 0u;

  return re::DynamicString::setCapacity(v3, 0);
}

void *re::internal::defaultConstructV2<re::AssetSimpleMessage>(uint64_t a1)
{
  *(a1 + 8) = 0u;
  v1 = (a1 + 8);
  *(a1 + 24) = 0u;

  return re::DynamicString::setCapacity(v1, 0);
}

uint64_t re::AssetSimpleMessage::maxBytesPerPacket(re::AssetSimpleMessage *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::uintValue(v8, "networkAssetMaxBytesPerPacket", v6);
      v7 = HIDWORD(v8[0]);
      if (!LOBYTE(v8[0]))
      {
        v7 = 0xFFFFLL;
      }

      re::AssetSimpleMessage::maxBytesPerPacket(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return *(v3 + 48);
}

re::AssetOPACKSerializer *re::AssetOPACKSerializer::AssetOPACKSerializer(re::AssetOPACKSerializer *this)
{
  *&v4.var0 = 0x3D2ADDFABE78EB94;
  v4.var1 = "AssetOPACKSerializer";
  v2 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(this, &v4);
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CBA8D8;
  return this;
}

re::AssetOPACKDeserializer *re::AssetOPACKDeserializer::AssetOPACKDeserializer(re::AssetOPACKDeserializer *this)
{
  *&v4.var0 = 0x935762BFD538CE16;
  v4.var1 = "AssetOPACKDeserializer";
  v2 = re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SerializerV2(this, &v4);
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CBA940;
  return this;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SerializerV2(uint64_t a1, const StringID *a2)
{
  *a1 = &unk_1F5CBADD8;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::Encoder(a1 + 24, 15);
  *(a1 + 256) = 0x7FFFFFFF00000000;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 264) = 0;
  *a1 = off_1F5CBAD70;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0x7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 376) = 0;
  *(a1 + 420) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 436) = 0x7FFFFFFFLL;
  return a1;
}

void re::serializeAssetBinary(uint64_t a1@<X0>, uint64_t a2@<X1>, re **a3@<X2>, _BOOL8 a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v70);
  if (v68)
  {
    re::StreamWriterCopyingOutputStream::StreamWriterCopyingOutputStream(&v60, a1);
    *v24 = 0x7F36B44A9D0F5EC6;
    *&v24[8] = "AssetBinarySerializer";
    v31 = &unk_1F5CB6190;
    re::StringID::StringID(&v32, v24);
    re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(v34, 15);
    v41 = 0u;
    v42 = 0u;
    v38 = 0;
    v39 = 0;
    v43 = 0;
    v40 = 0;
    v44 = 0x7FFFFFFFLL;
    v45 = 1;
    memset(v46, 0, sizeof(v46));
    v47 = 0;
    v48 = 0x7FFFFFFFLL;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v52 = 0;
    v59 = 0;
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    v31 = &unk_1F5CBA808;
    v38 = a4;
    re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::open(&v31, &v60, a5, a6);
    if ((v35 & 1) == 0)
    {
      (*(v31 + 9))(&v31, "asset", 1, a2, v69, v69, 0);
    }

    (*(v31 + 7))(&v31);
    re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(v34);
    if (v35 == 1)
    {
      v24[0] = v35;
      *&v24[8] = v36;
      re::DynamicString::DynamicString(&v25, &v37);
      if (v26)
      {
        v15 = *&v27[7];
      }

      else
      {
        v15 = v27;
      }

      re::DynamicString::format(&v28, "Asset serialization failed. Details: %s", v14, v15);
      v16 = v28;
      v17 = v29;
      v18 = v30;
      *a7 = 0;
      *(a7 + 8) = v16;
      *(a7 + 24) = v17;
      *(a7 + 32) = v18;
      if (v24[0] == 1 && v25 && (v26 & 1) != 0)
      {
        (*(*v25 + 40))();
      }
    }

    else
    {
      *a7 = 1;
    }

    v31 = &unk_1F5CB6128;
    if (*(&v56 + 1))
    {
      if (v59)
      {
        (*(**(&v56 + 1) + 40))();
      }

      v59 = 0;
      v57 = 0uLL;
      *(&v56 + 1) = 0;
      ++v58;
    }

    if (*(&v53 + 1))
    {
      if (v56)
      {
        (*(**(&v53 + 1) + 40))();
      }

      *&v56 = 0;
      v54 = 0uLL;
      *(&v53 + 1) = 0;
      ++v55;
    }

    if (v49)
    {
      if (v53)
      {
        (*(*v49 + 40))();
      }

      *&v53 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      ++v52;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v46);
    re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(&v31);
    re::StreamWriterCopyingOutputStream::Flush(&v60);
    if (v63)
    {
      if (v67)
      {
        (*(*v63 + 40))();
      }

      v67 = 0;
      v64 = 0;
      v65 = 0;
      v63 = 0;
      ++v66;
    }

    re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v60);
  }

  else
  {
    re::getPrettyTypeName(&v31, a3);
    if (v32)
    {
      v20 = *&v33[7];
    }

    else
    {
      v20 = v33;
    }

    re::DynamicString::format(&v60, "Asset serialization failed. Type info %s not found.", v19, v20);
    v21 = v60;
    v22 = v61;
    v23 = v62;
    *a7 = 0;
    *(a7 + 8) = v21;
    *(a7 + 24) = v22;
    *(a7 + 32) = v23;
    if (v31 && (v32 & 1) != 0)
    {
      (*(*v31 + 40))();
    }
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v70);
}

void re::deserializeAssetBinary(uint64_t a1@<X0>, uint64_t a2@<X1>, re **a3@<X2>, re *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, const re::PersistedSchema *a7@<X6>, uint64_t a8@<X8>)
{
  v94 = *MEMORY[0x1E69E9840];
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v51);
  if (v49)
  {
    v90 = 0;
    v92 = 0;
    v47[0] = v49;
    re::TypeInfo::TypeInfo(v48, v50);
    if (!a4)
    {
      goto LABEL_23;
    }

    TypeRegistry = re::createTypeRegistry(a4, a7);
    *&v93[0] = &unk_1F5CBB428;
    *(&v93[0] + 1) = a7;
    *(&v93[1] + 1) = v93;
    v55 = (&v52 + 8);
    *&v52 = TypeRegistry;
    *(&v52 + 1) = &unk_1F5CBB428;
    v53 = a7;
    std::__function::__value_func<void ()(re::TypeRegistry *)>::~__value_func[abi:nn200100](v93);
    v17 = v52;
    *&v52 = 0;
    v18 = v90;
    v90 = v17;
    if (v18)
    {
      std::function<void ()(re::TypeRegistry *)>::operator()(v92, v18);
    }

    v19 = v92;
    v92 = 0;
    if (v19 == v91)
    {
      (*(*v19 + 32))(v19);
    }

    else if (v19)
    {
      (*(*v19 + 40))(v19);
    }

    if (v55)
    {
      if (v55 == (&v52 + 8))
      {
        v92 = v91;
        (*(*v55 + 24))();
      }

      else
      {
        v92 = v55;
        v55 = 0;
      }
    }

    else
    {
      v92 = 0;
    }

    v24 = std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>>::~unique_ptr[abi:nn200100](&v52);
    v25 = v90;
    if (v90)
    {
      v26 = re::TypeInfo::name(v50);
      re::TypeRegistry::typeInfo(&v52, v25, v26);
      re::Optional<re::TypeInfo>::operator=(v47, &v52);
      if (v47[0])
      {
LABEL_23:
        *&v93[0] = 0x81C6E49267FF3CC8;
        *(&v93[0] + 1) = "AssetBinaryDeserializer";
        *&v52 = &unk_1F5CBAB90;
        v27 = re::StringID::StringID((&v52 + 8), v93);
        v64 = 0;
        memset(v62, 0, sizeof(v62));
        v63 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59[0] = 0;
        v65 = 15;
        v67 = 1024;
        v66 = 0;
        if ((atomic_load_explicit(&qword_1EE192C80, memory_order_acquire) & 1) == 0)
        {
          v27 = __cxa_guard_acquire(&qword_1EE192C80);
          if (v27)
          {
            re::Defaults::intValue(&v44, "maxSerializationDepth", v42);
            if (v44)
            {
              v43 = SDWORD1(v44);
            }

            else
            {
              v43 = 0;
            }

            _MergedGlobals_48 = v43;
            __cxa_guard_release(&qword_1EE192C80);
          }
        }

        if (_MergedGlobals_48)
        {
          v67 = _MergedGlobals_48;
        }

        v71 = 0u;
        v72 = 0u;
        v68 = 0;
        v69 = 0;
        v73 = 0;
        v70 = 0;
        v74 = 0x7FFFFFFFLL;
        *&v52 = &unk_1F5CBAB28;
        v75 = 1;
        memset(v76, 0, sizeof(v76));
        v77 = 0;
        v78 = 0x7FFFFFFFLL;
        v80 = 0;
        v81 = 0;
        v79 = 0;
        v82 = 0;
        v89 = 0;
        v83 = 0u;
        v84 = 0u;
        v85 = 0;
        v86 = 0u;
        v87 = 0u;
        v88 = 0;
        if (v93[0])
        {
        }

        *&v52 = &unk_1F5CBA870;
        v68 = a5;
        v29 = v69;
        if (*(v69 + 6) != v70)
        {
          re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::deinit(&v52);
          v28 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::init(&v52, v29);
        }

        v54 = a1;
        v55 = 0;
        v56 = 0;
        if (!a6)
        {
        }

        v57 = a6;
        if (!a7)
        {
        }

        v58 = a7;
        LOBYTE(v93[0]) = 0;
        re::Optional<re::DetailedError>::operator=(v59, v93);
        if (LOBYTE(v93[0]) == 1 && *(&v93[1] + 1) && (v93[2] & 1) != 0)
        {
          (*(**(&v93[1] + 1) + 40))();
        }

        v62[0] = v57;
        re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v62, 0x40uLL);
        ++v63;
        LOBYTE(v93[0]) = 0;
        memset(v93 + 4, 0, 44);
        v30 = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add(v62, v93);
        (*(v52 + 48))(&v52, v30);
        if ((v59[0] & 1) == 0)
        {
          (*(v52 + 72))(&v52, "asset", 1, a2, v50, v48, 0);
        }

        (*(v52 + 56))(&v52);
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::close(&v54);
        if (v59[0] == 1)
        {
          v32 = re::TypeInfo::name(v50)[1];
          LOBYTE(v93[0]) = v59[0];
          if (v59[0])
          {
            *(v93 + 8) = v60;
            re::DynamicString::DynamicString((&v93[1] + 8), &v61);
            if (v93[2])
            {
              v33 = *(&v93[2] + 1);
            }

            else
            {
              v33 = &v93[2] + 1;
            }
          }

          else
          {
            v33 = &v93[2] + 1;
          }

          re::DynamicString::format(&v44, "Asset deserialization failed. Asset type %s. Details: %s", v31, v32, v33);
          v39 = v44;
          v40 = v45;
          v41 = v46;
          *a8 = 0;
          *(a8 + 8) = v39;
          *(a8 + 24) = v40;
          *(a8 + 32) = v41;
          if (LOBYTE(v93[0]) == 1 && *(&v93[1] + 1) && (v93[2] & 1) != 0)
          {
            (*(**(&v93[1] + 1) + 40))();
          }
        }

        else
        {
          *a8 = 1;
        }

        *&v52 = &unk_1F5CBAB28;
        if (*(&v86 + 1))
        {
          if (v89)
          {
            (*(**(&v86 + 1) + 40))();
          }

          v89 = 0;
          v87 = 0uLL;
          *(&v86 + 1) = 0;
          ++v88;
        }

        if (*(&v83 + 1))
        {
          if (v86)
          {
            (*(**(&v83 + 1) + 40))();
          }

          *&v86 = 0;
          v84 = 0uLL;
          *(&v83 + 1) = 0;
          ++v85;
        }

        if (v79)
        {
          if (v83)
          {
            (*(*v79 + 40))();
          }

          *&v83 = 0;
          v80 = 0;
          v81 = 0;
          v79 = 0;
          ++v82;
        }

        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v76);
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::~Serializer(&v52);
        goto LABEL_67;
      }

      v34 = re::TypeInfo::name(v50);
      re::DynamicString::format(&v52, "Asset deserialization failed. Type %s not found in persisted schema.", v35, v34[1]);
    }

    else
    {
    }

    v36 = v52;
    v37 = v53;
    v38 = v54;
    *a8 = 0;
    *(a8 + 8) = v36;
    *(a8 + 24) = v37;
    *(a8 + 32) = v38;
LABEL_67:
    std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>>::~unique_ptr[abi:nn200100](&v90);
    goto LABEL_68;
  }

  re::getPrettyTypeName(&v52, a3);
  if (BYTE8(v52))
  {
    v21 = v53;
  }

  else
  {
    v21 = (&v52 + 9);
  }

  re::DynamicString::format(v93, "Asset serialization failed. Type info %s not found.", v20, v21);
  v22 = v93[0];
  v23 = v93[1];
  *a8 = 0;
  *(a8 + 8) = v22;
  *(a8 + 24) = v23;
  if (v52 && (BYTE8(v52) & 1) != 0)
  {
    (*(*v52 + 40))();
  }

LABEL_68:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v51);
}

void re::serializeAssetOPACK(re *a1@<X0>, uint64_t a2@<X1>, re **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v68[6] = *MEMORY[0x1E69E9840];
  v14 = re::useSnapshotOPACK(a1);
  if (v14)
  {
    re::StreamWriterCopyingOutputStream::StreamWriterCopyingOutputStream(&v45, a1);
    re::serializeOPACK(&v45, a3, a2, a4, a6, a7);
    re::StreamWriterCopyingOutputStream::Flush(&v45);
    if (v51)
    {
      if (v55)
      {
        (*(*v51 + 40))();
      }

      v55 = 0;
      v52 = 0;
      v53 = 0;
      v51 = 0;
      ++v54;
    }

    re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v45);
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v44);
    if (v42)
    {
      re::StreamWriterCopyingOutputStream::StreamWriterCopyingOutputStream(&v34, a1);
      re::AssetOPACKSerializer::AssetOPACKSerializer(&v45);
      v56 = a4;
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::open(&v45, &v34, a5, a6);
      if (v49 != 1)
      {
        (v45[9])(&v45, "asset", 1, a2, v43, v43, 0);
      }

      (v45[7])(&v45);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(v48);
      if (v49 == 1)
      {
        v27 = v49;
        re::DynamicString::DynamicString(&v28, &v50);
        if (v29)
        {
          v21 = *&v30[7];
        }

        else
        {
          v21 = v30;
        }

        re::DynamicString::format(&v31, "Asset serialization failed. Details: %s", v20, v21);
        v22 = v31;
        v23 = v32;
        v24 = v33;
        *a7 = 0;
        *(a7 + 8) = v22;
        *(a7 + 24) = v23;
        *(a7 + 32) = v24;
        if (v27 == 1 && v28 && (v29 & 1) != 0)
        {
          (*(*v28 + 40))();
        }
      }

      else
      {
        *a7 = 1;
      }

      v45 = off_1F5CB5A48;
      v25 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v68);
      if (v63)
      {
        if (v67)
        {
          (*(*v63 + 40))(v25);
        }

        v67 = 0;
        v64 = 0;
        v65 = 0;
        v63 = 0;
        ++v66;
      }

      v26 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v62);
      if (v57)
      {
        if (v61)
        {
          (*(*v57 + 40))(v26);
        }

        v61 = 0;
        v58 = 0;
        v59 = 0;
        v57 = 0;
        ++v60;
      }

      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(&v45);
      re::StreamWriterCopyingOutputStream::Flush(&v34);
      if (v37)
      {
        if (v41)
        {
          (*(*v37 + 40))();
        }

        v41 = 0;
        v38 = 0;
        v39 = 0;
        v37 = 0;
        ++v40;
      }

      re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v34);
    }

    else
    {
      re::getPrettyTypeName(&v45, a3);
      if (v46)
      {
        v16 = *&v47[7];
      }

      else
      {
        v16 = v47;
      }

      re::DynamicString::format(&v34, "Asset serialization failed. Type info %s not found.", v15, v16);
      v17 = v34;
      v18 = v35;
      v19 = v36;
      *a7 = 0;
      *(a7 + 8) = v17;
      *(a7 + 24) = v18;
      *(a7 + 32) = v19;
      if (v45 && (v46 & 1) != 0)
      {
        (*(*v45 + 5))();
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v44);
  }
}

void re::deserializeAssetOPACK(re *a1@<X0>, uint64_t *a2@<X1>, re **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v14 = re::useSnapshotOPACK(a1);
  if (v14)
  {

    re::deserializeOPACKIntoBuffer(a1, a3, a2, a4, a5, a6, a7);
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v39);
    if (v37)
    {
      v59[0] = 0;
      v59[4] = 0;
      v35 = v37;
      re::TypeInfo::TypeInfo(v36, v38);
      re::AssetOPACKDeserializer::AssetOPACKDeserializer(&v40);
      v46[14] = a4;
      re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::open(&v40, a1, a5, a6);
      if (v44 != 1)
      {
        (v40[9])(&v40, "asset", 1, a2, v38, v36, 0);
      }

      (v40[7])(&v40);
      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(&v43);
      if (v44 == 1)
      {
        v21 = re::TypeInfo::name(v38)[1];
        v28[0] = v44;
        if (v44)
        {
          *&v28[8] = v45;
          re::DynamicString::DynamicString(&v29, v46);
          if (v30)
          {
            v22 = *&v31[7];
          }

          else
          {
            v22 = v31;
          }
        }

        else
        {
          v22 = v31;
        }

        re::DynamicString::format(&v32, "Asset deserialization failed. Asset type %s. Details: %s", v20, v21, v22);
        v23 = v32;
        v24 = v33;
        v25 = v34;
        *a7 = 0;
        *(a7 + 8) = v23;
        *(a7 + 24) = v24;
        *(a7 + 32) = v25;
        if (v28[0] == 1 && v29 && (v30 & 1) != 0)
        {
          (*(*v29 + 40))();
        }
      }

      else
      {
        *a7 = 1;
      }

      v40 = off_1F5CBAD70;
      v26 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v58);
      if (v53)
      {
        if (v57)
        {
          (*(*v53 + 40))(v26);
        }

        v57 = 0;
        v54 = 0;
        v55 = 0;
        v53 = 0;
        ++v56;
      }

      v27 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v52);
      if (v47)
      {
        if (v51)
        {
          (*(*v47 + 40))(v27);
        }

        v51 = 0;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        ++v50;
      }

      re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(&v40);
      std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>>::~unique_ptr[abi:nn200100](v59);
    }

    else
    {
      re::getPrettyTypeName(&v40, a3);
      if (v41)
      {
        v16 = *&v42[7];
      }

      else
      {
        v16 = v42;
      }

      re::DynamicString::format(v28, "Asset serialization failed. Type info %s not found.", v15, v16);
      v17 = *v28;
      v18 = *&v28[16];
      v19 = v29;
      *a7 = 0;
      *(a7 + 8) = v17;
      *(a7 + 24) = v18;
      *(a7 + 32) = v19;
      if (v40 && (v41 & 1) != 0)
      {
        (*(*v40 + 5))();
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v39);
  }
}

void re::serializeAssetJSON(uint64_t a1@<X0>, uint64_t a2@<X1>, re **a3@<X2>, _BOOL8 a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v89);
  if (v87)
  {
    re::StreamWriterCopyingOutputStream::StreamWriterCopyingOutputStream(&v79, a1);
    *&v90[0].var0 = 0x8EBD744EB006D4;
    v90[0].var1 = "AssetJSONSerializer";
    v36 = &unk_1F5CBB020;
    v14 = re::StringID::StringID(&v37, v90);
    v49 = 0;
    memset(v47, 0, sizeof(v47));
    v48 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44[0] = 0;
    v50 = 15;
    v52 = 1024;
    v51 = 0;
    if ((atomic_load_explicit(&qword_1EE192C90, memory_order_acquire) & 1) == 0)
    {
      v14 = __cxa_guard_acquire(&qword_1EE192C90);
      if (v14)
      {
        re::Defaults::intValue(&v33, "maxSerializationDepth", v31);
        if (v33)
        {
          v32 = SDWORD1(v33);
        }

        else
        {
          v32 = 0;
        }

        qword_1EE192C88 = v32;
        __cxa_guard_release(&qword_1EE192C90);
      }
    }

    if (qword_1EE192C88)
    {
      v52 = qword_1EE192C88;
    }

    v55[4] = 0;
    v56 = 0;
    v53 = 0u;
    v54 = 0u;
    memset(v55, 0, 28);
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v63 = 0x7FFFFFFFLL;
    v36 = &unk_1F5CBAFB8;
    v64 = 1;
    memset(v65, 0, sizeof(v65));
    v66 = 0;
    v67 = 0x7FFFFFFFLL;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v78 = 0;
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    if (*&v90[0].var0)
    {
    }

    v36 = &unk_1F5CBA9A8;
    v57 = a4;
    v16 = v58;
    if (*(v58 + 6) != v59)
    {
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v36);
      v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v36, v16);
    }

    v39 = &v79;
    v40 = 0;
    v41 = 0;
    if (!a5)
    {
    }

    v42 = a5;
    if (!a6)
    {
    }

    v43 = a6;
    *&v90[0].var0 = 0;
    re::Optional<re::DetailedError>::operator=(v44, v90);
    if (v90[0].var0 == 1 && v90[1].var1 && (*&v90[2].var0 & 1) != 0)
    {
      (*(*v90[1].var1 + 40))();
    }

    v47[0] = v42;
    re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v47, 0x40uLL);
    ++v48;
    *&v90[0].var0 = 0;
    memset(&v90[0].var0 + 1, 0, 44);
    re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add(v47, v90);
    if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
    {
    }

    v55[0] = v43;
    re::DynamicArray<char>::setCapacity(v55, 0);
    ++LODWORD(v55[3]);
    v18 = (*(*v42 + 32))(v42, 64, 8);
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 512;
    *(v18 + 56) = 324;
    *(v18 + 60) = 0;
    *(&v53 + 1) = v18;
    v19 = (*(*v42 + 32))(v42, 48, 8);
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
    *(v19 + 40) = 256;
    *&v53 = v19;
    v20 = *(&v53 + 1);
    **(&v53 + 1) = v19;
    *(v20 + 60) = 0;
    *(v20 + 32) = *(v20 + 24);
    v36[6](&v36);
    if ((v44[0] & 1) == 0)
    {
      (v36[9])(&v36, "asset", 1, a2, v88, v88, 0);
    }

    v36[7](&v36);
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::close(&v39);
    if (v44[0] == 1)
    {
      *&v90[0].var0 = v44[0];
      *&v90[0].var1 = v45;
      re::DynamicString::DynamicString(&v90[1].var1, &v46);
      if (*&v90[2].var0)
      {
        var1 = v90[2].var1;
      }

      else
      {
        var1 = &v90[2].var0 + 1;
      }

      re::DynamicString::format(&v33, "Asset serialization failed. Details: %s", v21, var1);
      v23 = v33;
      v24 = v34;
      v25 = v35;
      *a7 = 0;
      *(a7 + 8) = v23;
      *(a7 + 24) = v24;
      *(a7 + 32) = v25;
      if (v90[0].var0 == 1 && v90[1].var1 && (*&v90[2].var0 & 1) != 0)
      {
        (*(*v90[1].var1 + 40))();
      }
    }

    else
    {
      *a7 = 1;
    }

    v36 = &unk_1F5CBAFB8;
    if (*(&v75 + 1))
    {
      if (v78)
      {
        (*(**(&v75 + 1) + 40))();
      }

      v78 = 0;
      v76 = 0uLL;
      *(&v75 + 1) = 0;
      ++v77;
    }

    if (*(&v72 + 1))
    {
      if (v75)
      {
        (*(**(&v72 + 1) + 40))();
      }

      *&v75 = 0;
      v73 = 0uLL;
      *(&v72 + 1) = 0;
      ++v74;
    }

    if (v68)
    {
      if (v72)
      {
        (*(*v68 + 40))();
      }

      *&v72 = 0;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      ++v71;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v65);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v36);
    re::StreamWriterCopyingOutputStream::Flush(&v79);
    if (v82)
    {
      if (v86)
      {
        (*(*v82 + 40))();
      }

      v86 = 0;
      v83 = 0;
      v84 = 0;
      v82 = 0;
      ++v85;
    }

    re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v79);
  }

  else
  {
    re::getPrettyTypeName(&v36, a3);
    if (v37)
    {
      v27 = *&v38[7];
    }

    else
    {
      v27 = v38;
    }

    re::DynamicString::format(&v79, "Asset serialization failed. Type info %s not found.", v26, v27);
    v28 = v79;
    v29 = v80;
    v30 = v81;
    *a7 = 0;
    *(a7 + 8) = v28;
    *(a7 + 24) = v29;
    *(a7 + 32) = v30;
    if (v36 && (v37 & 1) != 0)
    {
      (*(*v36 + 5))();
    }
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v89);
}

void re::AssetBinarySerializer::~AssetBinarySerializer(re::AssetBinarySerializer *this)
{
  *this = &unk_1F5CB6128;
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicArray<unsigned long>::deinit(this + 312);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 33);

  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);
}

{
  *this = &unk_1F5CB6128;
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicArray<unsigned long>::deinit(this + 312);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 33);
  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::AssetBinaryDeserializer::~AssetBinaryDeserializer(re::AssetBinaryDeserializer *this)
{
  *this = &unk_1F5CBAB28;
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicArray<unsigned long>::deinit(this + 312);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 33);

  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::~Serializer(this);
}

{
  *this = &unk_1F5CBAB28;
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicArray<unsigned long>::deinit(this + 312);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 33);
  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::untrackObject(uint64_t result)
{
  if (*(result + 256) == 1)
  {
    --*(result + 408);
    ++*(result + 416);
  }

  return result;
}

void re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::doOpen(uint64_t a1)
{
  *(a1 + 257) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 264);
  *(a1 + 328) = 0;
  ++*(a1 + 336);
  *(a1 + 368) = 0;
  ++*(a1 + 376);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
}

void re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::doClose(uint64_t a1)
{
  re::internal::SharedObjectGraph::markAndSweep((a1 + 256), *(a1 + 48), *(a1 + 184));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 264);
  *(a1 + 328) = 0;
  ++*(a1 + 336);
  *(a1 + 368) = 0;
  ++*(a1 + 376);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
}

void re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderBinary<re::SeekableInputStream>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 192);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v31, v19, &v27);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 192);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderBinary<re::SeekableInputStream>>);
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 408);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v20 = *a5;
    *(&v20 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 256), v15, &v20);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 256) == 1)
    {
      --*(a1 + 408);
      ++*(a1 + 416);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v19[1]);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderBinary<re::SeekableInputStream>>;
      if (*this == *(a1 + 192))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 208, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderBinary<re::SeekableInputStream>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::serializePointer;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash("assertion failure: (!Unreachable code) Invalid PointerSharing type.");
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash("assertion failure: (!Unreachable code) External references are not supported by the SerializerV1.");
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

void re::AssetOPACKSerializer::~AssetOPACKSerializer(re::AssetOPACKSerializer *this)
{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);
}

{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::AssetOPACKDeserializer::~AssetOPACKDeserializer(re::AssetOPACKDeserializer *this)
{
  *this = off_1F5CBAD70;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(this);
}

{
  *this = off_1F5CBAD70;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::doOpen(uint64_t a1)
{
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
  result = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, "container", 0, 0);
  if ((result & 1) == 0 && (*(a1 + 64) & 1) == 0)
  {

    return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, "container", "Failed to open container.");
  }

  return result;
}

void re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::doClose(uint64_t a1)
{
  re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::deserializeSharedObjects(a1);
  re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);

  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
}

void re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderOPACK<re::SeekableInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 208);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v30, v19, &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 208);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::SeekableInputStream>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::doSerialize(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, const re::TypeInfo *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (!a1[107] && a1[34] == 2)
  {
    v20 = 0;
    v17 = a4;
    re::TypeInfo::TypeInfo(&v18, a5);
    re::TypeInfo::TypeInfo(v19, a6);
    v19[16] = 0;
    re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew((a1 + 100), &v20, &v17);
    a3 = 10;
  }

  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {
    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  v16 = re::TypeInfo::name(a5);
  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
  return 0;
}

uint64_t (*re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::serializePointer;
  if (*(a2 + 12) != 9)
  {
    if (*a2 == *(a1 + 208))
    {
      v7[1] = v2;
      v7[2] = v3;
      LODWORD(v7[0]) = **(a2 + 16);
      HIDWORD(v7[0]) = -1;
      v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v7);
      v4 = re::serializeType<re::EncoderOPACK<re::SeekableInputStream>>;
      if (v5)
      {
        return *v5;
      }
    }

    else
    {
      return re::serializeType<re::EncoderOPACK<re::SeekableInputStream>>;
    }
  }

  return v4;
}

void re::AssetJSONSerializer::~AssetJSONSerializer(re::AssetJSONSerializer *this)
{
  *this = &unk_1F5CBAFB8;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);

  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);
}

{
  *this = &unk_1F5CBAFB8;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 0;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v31, v19, &v27);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v20 = *a5;
    *(&v20 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v20);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v19[1]);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash("assertion failure: (!Unreachable code) Invalid PointerSharing type.");
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash("assertion failure: (!Unreachable code) External references are not supported by the SerializerV1.");
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::internal::SharedObjectGraph::markAndSweep((a1 + 336), *(a1 + 48), *(a1 + 264));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 272);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v30, v19, &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 272);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 288, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v20 = *a5;
    *(&v20 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v20);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v19[1]);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 == 94623636)
  {
    v6 = v4[1];
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString;
    if (v6 == "char*")
    {
      return v7;
    }

    v8 = strcmp(v6, "char*");
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString;
    if (!v8)
    {
      return v7;
    }
  }

  if (*(this + 12) != 9)
  {
    goto LABEL_9;
  }

  v9 = *(*(this + 2) + 88);
  v7 = re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
  if (v9 >= 2)
  {
    if (v9 != 2)
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid PointerSharing type.");
      __break(1u);
      return result;
    }

    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
    _os_crash("assertion failure: (!Unreachable code) External references are not supported by the SerializerV1.");
    __break(1u);
LABEL_9:
    if (*this == *(a1 + 272))
    {
      LODWORD(v12) = **(this + 2);
      HIDWORD(v12) = -1;
      v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, &v12);
      v7 = re::serializeType<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (v10)
      {
        return *v10;
      }
    }

    else
    {
      return re::serializeType<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    }
  }

  return v7;
}

uint64_t re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CBAB28;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);

  return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CBAB28;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);
  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::~Serializer(uint64_t a1, double a2)
{
  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(re::Allocator **a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7)
{
  v2 = re::serializeType<re::EncoderBinary<re::SeekableInputStream>>;
  if (*a2 == *(a1 + 192))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 208, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderBinary<re::SeekableInputStream>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CBAB90;
  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 208));
  re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::close(a1 + 24);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::deinit(void *a1)
{
  if (a1[24])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 26));
    a1[24] = 0;
  }
}

uint64_t re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::close(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    if ((*(result + 40) & 1) == 0)
    {
      v10 = 69;
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(result, "End-of-file", 0, &v10, "uint8", 0);
      if (v10 != 69)
      {
        re::DynamicString::format(&v3, "Failed to read end-of-file marker.", v2);
        *&v6 = 400;
        *(&v6 + 1) = re::FoundationErrorCategory(void)::instance;
        v7 = v3;
        v9 = v5;
        v8 = v4;
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, &v6);
        if (v7)
        {
          if (v8)
          {
            (*(*v7 + 40))();
          }
        }
      }

      if ((*(v1 + 40) & 1) == 0)
      {
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 0);
      }
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 16) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
    }

    *v1 = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

_anonymous_namespace_ *re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(_anonymous_namespace_ *result, int a2)
{
  v3 = result;
  v4 = *(result + 14);
  if (!v4)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v3, &v5);
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 14);
  }

  if (*(*(v3 + 16) + 48 * v4 - 48) != a2)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v3, &v5);
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 14);
  }

  *(v3 + 14) = v4 - 1;
  ++*(v3 + 30);
  return result;
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, a4, 1uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
  if (v9)
  {
    v6 = *&v10[7];
  }

  else
  {
    v6 = v10;
  }

  re::DynamicString::format(v11, "Failed to %s %s. Reason: Error %s type %s.", v5, "deserialize", v6, "reading", a3);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  result = v8;
  if (v8)
  {
    if (v9)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

uint64_t *re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(uint64_t a1, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  re::DynamicString::setCapacity(&v18, 0);
  va_copy(v17, va);
  re::DynamicString::vassignf(&v18, a3, va);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels((a1 + 24), a2, &v10);
  if (v11)
  {
    v7 = *&v12[7];
  }

  else
  {
    v7 = v12;
  }

  if (v19)
  {
    v8 = v20;
  }

  else
  {
    v8 = &v19 + 1;
  }

  re::DynamicString::format(&v13, "Failed to %s %s. Reason: %s", v6, "deserialize", v7, v8);
  *&v16[0] = 400;
  *(&v16[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v16[1] = v13;
  *(&v16[2] + 1) = v15;
  *(&v16[1] + 8) = v14;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, v16);
  if (*&v16[1])
  {
    if (BYTE8(v16[1]))
    {
      (*(**&v16[1] + 40))();
    }

    memset(&v16[1], 0, 32);
  }

  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  result = v18;
  if (v18)
  {
    if (v19)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = *(*(a1 + 8) + 4 * (a2 % *(a1 + 24)));
  if (v2 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  while (*(v3 + 24 * v2 + 4) != a2)
  {
    v2 = *(v3 + 24 * v2) & 0x7FFFFFFF;
    if (v2 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return v3 + 24 * v2 + 16;
}

uint64_t re::serializeType<re::EncoderBinary<re::SeekableInputStream>>(re::Allocator **a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7)
{
  if (this == a6)
  {
    goto LABEL_18;
  }

  if (*this == *a6)
  {
    v14 = **(this + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    goto LABEL_241;
  }

  v18 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v18)
  {
    v19 = *(v18 + 16);
  }

  else
  {
    v19 = -1;
  }

  v20 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = -1;
  }

  if (v19 != v21)
  {
    v34 = re::TypeInfo::name(this);
    v35 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v34, v35))
    {
      v58 = re::TypeInfo::name(a6)[1];
      v59 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      if (v59)
      {
        v60 = *(v59 + 16);
      }

      else
      {
        v60 = 0xFFFFFFFFLL;
      }

      v66 = re::TypeInfo::name(this)[1];
      v67 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      if (v67)
      {
        v68 = *(v67 + 16);
      }

      else
      {
        v68 = 0xFFFFFFFFLL;
      }

      v176 = v66;
      v177 = v68;
      v174 = v58;
      v175 = v60;
      v23 = "Type name changed: Serialized type %s version %u, runtime type %s version %u.";
      goto LABEL_221;
    }

    v36 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v36)
    {
      v37 = *(v36 + 16);
    }

    else
    {
      v37 = -1;
    }

    re::TypeInfo::atVersion(&v182, this, v37);
    if ((v182 & 1) == 0)
    {
      v63 = re::TypeInfo::name(a6)[1];
      v64 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      if (v64)
      {
        v65 = *(v64 + 16);
      }

      else
      {
        v65 = 0xFFFFFFFFLL;
      }

      v174 = v63;
      v175 = v65;
      v23 = "Unknown serialized type %s version %u. No matching runtime type found.";
      goto LABEL_221;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(v183, a1[6], a1[23]);
    }

    if ((a1[8] & 1) == 0)
    {
      (*(*a1 + 9))(a1, a2, a3, Instance, v183, a6, a7);
      if ((a1[8] & 1) == 0)
      {
        if ((a7 & 1) == 0)
        {
          re::TypeInfo::TypeInfo(&__dst, v183);
          re::internal::upgradeObject(Instance, &__dst, a4, this, a1[6], a1[23], &v178);
          if ((v178 & 1) == 0)
          {
            if (v181)
            {
              v166 = *(&v181 + 1);
            }

            else
            {
              v166 = &v181 + 1;
            }

            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "%s", v166);
            if (v178 & 1) == 0 && *(&v180 + 1) && (v181)
            {
              (*(**(&v180 + 1) + 40))();
            }

            goto LABEL_242;
          }
        }

        v52 = 1;
        return v52 & 1;
      }
    }

    if (!Instance)
    {
      goto LABEL_242;
    }

    v102 = a1[6];
    v129 = a1[23];
    v130 = v183;
    v131 = Instance;
LABEL_208:
    re::TypeInfo::releaseInstance(v130, v131, v102, v129);
    goto LABEL_242;
  }

LABEL_18:
  v22 = *(this + 12);
  if (v22 <= 4)
  {
    if (*(this + 12) <= 2u)
    {
      if (v22 != 1)
      {
        if (v22 != 2)
        {
          goto LABEL_85;
        }

        return re::serializeEnum<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v105 = **(this + 2);
          v106 = **(a6 + 2);
          if (v105 != v106)
          {
            goto LABEL_241;
          }

          v17 = WORD1(v105) == WORD1(v106);
          v107 = (v106 ^ v105) & 0xFFFFFF00000000;
          if (!v17 || v107 != 0)
          {
            goto LABEL_241;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_241;
        }
      }

      v38 = re::TypeInfo::name(this);
      v39 = *v38 >> 1;
      if (v39 <= 0x16749DFF02)
      {
        if (*v38 >> 1 <= 0x685847B)
        {
          if (*v38 >> 1 > 0x2E9355)
          {
            if (v39 != 3052374)
            {
              if (v39 != 3327612)
              {
                if (v39 == 97526364)
                {
                  v40 = "float";
                  v41 = (a1 + 3);
                  v42 = a2;
                  v43 = a3;
                  v44 = a4;
                  v45 = a7;

                  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(v41, v42, v43, v44, v40, v45);
                }

LABEL_316:
                v174 = re::TypeInfo::name(this)[1];
                v23 = "Unsupported basic type %s.";
                goto LABEL_221;
              }

              goto LABEL_255;
            }

            v136 = "char";
            v137 = (a1 + 3);
            v138 = a2;
            v139 = a3;
            v140 = a4;
            v141 = a7;

            return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(v137, v138, v139, v140, v136, v141);
          }

          if (v39 != 104431)
          {
            if (v39 != 3029738)
            {
              goto LABEL_316;
            }

            v136 = "BOOL";
            v137 = (a1 + 3);
            v138 = a2;
            v139 = a3;
            v140 = a4;
            v141 = a7;

            return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(v137, v138, v139, v140, v136, v141);
          }

LABEL_277:
          v40 = "int32";
          v41 = (a1 + 3);
          v42 = a2;
          v43 = a3;
          v44 = a4;
          v45 = a7;

          return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(v41, v42, v43, v44, v40, v45);
        }

        if (*v38 >> 1 <= 0xB9708BDD)
        {
          if (v39 != 109413500)
          {
            if (v39 != 2969009105)
            {
              goto LABEL_316;
            }

            v142 = "double";
            v143 = (a1 + 3);
            v144 = a2;
            v145 = a3;
            v146 = a4;
            v147 = a7;

            return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(v143, v144, v145, v146, v142, v147);
          }

          goto LABEL_280;
        }

        if (v39 == 3111160798)
        {
          v136 = "int8";
          v137 = (a1 + 3);
          v138 = a2;
          v139 = a3;
          v140 = a4;
          v141 = a7;

          return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(v137, v138, v139, v140, v136, v141);
        }

        if (v39 != 3393056694)
        {
          if (v39 != 0x16749D2549)
          {
            goto LABEL_316;
          }

LABEL_280:
          v148 = "int16";
          v149 = (a1 + 3);
          v150 = a2;
          v151 = a3;
          v152 = a4;
          v153 = a7;

          return re::EncoderBinary<re::SeekableInputStream>::serializeValue<short>(v149, v150, v151, v152, v148, v153);
        }

LABEL_268:
        v142 = "uint64";
        v143 = (a1 + 3);
        v144 = a2;
        v145 = a3;
        v146 = a4;
        v147 = a7;

        return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(v143, v144, v145, v146, v142, v147);
      }

      if (*v38 >> 1 > 0x303EE88E58CLL)
      {
        if (*v38 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v39 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_274;
          }

          if (v39 != 0x3AFE951B1F1F3391)
          {
            if (v39 != 0x412A40E9CB79BA35)
            {
              goto LABEL_316;
            }

            goto LABEL_268;
          }

          goto LABEL_271;
        }

        if (v39 == 0x303EE88E58DLL)
        {
          goto LABEL_268;
        }

        if (v39 != 0x2710786C3AC82DA1)
        {
          goto LABEL_316;
        }
      }

      else
      {
        if (*v38 >> 1 <= 0x18E6A9A092)
        {
          if (v39 != 0x16749DFF03)
          {
            if (v39 != 0x16749F63A2)
            {
              goto LABEL_316;
            }

LABEL_255:
            v142 = "int64";
            v143 = (a1 + 3);
            v144 = a2;
            v145 = a3;
            v146 = a4;
            v147 = a7;

            return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(v143, v144, v145, v146, v142, v147);
          }

          goto LABEL_277;
        }

        if (v39 != 0x18E6A9A093)
        {
          if (v39 != 0x303EE86A734)
          {
            if (v39 != 0x303EE8780EELL)
            {
              goto LABEL_316;
            }

LABEL_274:
            v40 = "uint32";
            v41 = (a1 + 3);
            v42 = a2;
            v43 = a3;
            v44 = a4;
            v45 = a7;

            return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(v41, v42, v43, v44, v40, v45);
          }

LABEL_271:
          v148 = "uint16";
          v149 = (a1 + 3);
          v150 = a2;
          v151 = a3;
          v152 = a4;
          v153 = a7;

          return re::EncoderBinary<re::SeekableInputStream>::serializeValue<short>(v149, v150, v151, v152, v148, v153);
        }
      }

      v136 = "uint8";
      v137 = (a1 + 3);
      v138 = a2;
      v139 = a3;
      v140 = a4;
      v141 = a7;

      return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(v137, v138, v139, v140, v136, v141);
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_85;
      }

      if (this != a6)
      {
        if (*this != *a6)
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_35;
          }

LABEL_116:
          if (*(a6 + 12) != 4)
          {
            goto LABEL_241;
          }

          v73 = *(this + 2);
          v74 = *(a6 + 2);
          v75 = *(v74 + 92) & 0xFFFFFF;
          if ((*(v73 + 92) & 0xFFFFFF) != 0)
          {
            if (!v75)
            {
              goto LABEL_241;
            }
          }

          else if (v75 || *(v73 + 96) != *(v74 + 96))
          {
            goto LABEL_241;
          }

          v25 = 0;
          if (a7)
          {
LABEL_36:
            v26 = a1[24];
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v178);
            re::TypeInfo::TypeInfo(&__dst, &v179);
            re::internal::translateType(&v182, v26, &__dst);
            v27 = (*(*a1 + 10))(a1, &v182);
            if (!v27)
            {
              goto LABEL_156;
            }

            v28 = v27;
            v29 = *(a6 + 2);
            v30 = *(v29 + 92) & 0xFFFFFF;
            if (v30)
            {
              v31 = 0;
              v32 = 8;
            }

            else
            {
              v31 = *(v29 + 96);
              v32 = 4;
            }

            v178 = v31;
            if (!re::EncoderBinary<re::SeekableInputStream>::beginArray((a1 + 3), a2, a3, &v178, v32))
            {
              goto LABEL_242;
            }

            v132 = v178;
            if (v30)
            {
              v133 = v178 == 0;
            }

            else
            {
              v133 = 1;
            }

            v134 = v133;
            if (!v133)
            {
              v188[0] = 0;
              v188[1] = 0xFFFFFFFFLL;
              (*(*a1 + 2))(a1, 0, v188);
              v132 = v178;
            }

            if (v184 == 1)
            {
              if (v132)
              {
                re::EncoderBinary<re::SeekableInputStream>::serializeArray((a1 + 3), 0, *(v185 + 8), v132, 1);
              }
            }

            else if (v132)
            {
              v154 = 0;
              do
              {
                v28(a1, 0, 0, 0, &v182, &v182, 1);
                ++v154;
              }

              while (v154 < v178);
            }

            if (v134)
            {
              goto LABEL_346;
            }

            goto LABEL_345;
          }

LABEL_120:
          re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v178);
          re::TypeInfo::TypeInfo(&__dst, &v179);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v178);
          re::TypeInfo::TypeInfo(v192, &v179);
          re::TypeInfo::TypeInfo(v190, this);
          v76 = (*(*a1 + 10))(a1, &__dst);
          if (!v76)
          {
            goto LABEL_200;
          }

          v77 = v76;
          v78 = re::ArrayAccessor::size(v190, a4);
          v187 = v78;
          v79 = *(*(this + 2) + 92) & 0xFFFFFF;
          if (v79)
          {
            v80 = 8;
          }

          else
          {
            v80 = 4;
          }

          if (!re::EncoderBinary<re::SeekableInputStream>::beginArray((a1 + 3), a2, a3, &v187, v80))
          {
            goto LABEL_242;
          }

          v81 = v187;
          if (v78 != v187)
          {
            if ((*(v191 + 92) & 0xFFFFFF) == 0)
            {
              v174 = v78;
              v175 = v187;
              v23 = "Invalid array size. Expected size = %zu, actual size = %zu";
              goto LABEL_202;
            }

            re::TypeRegistry::typeInfo(v190[0], *(v191 + 80), &v178);
            re::TypeInfo::TypeInfo(&v182, &v179);
            v82 = *(v185 + 8);
            if (!is_mul_ok(v82, v81))
            {
              v175 = v81;
LABEL_199:
              v174 = v82;
              v23 = "Size overflow during deserialization. Element size = %zu, count = %zu";
LABEL_202:
              v127 = a1;
              v128 = 0;
LABEL_222:
              re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v127, v128, v23, v174, v175, v176, v177);
              goto LABEL_242;
            }

            re::ArrayAccessor::reset(v190, a4, a1[6], v81);
            v78 = v187;
          }

          if (v79)
          {
            v167 = v78 == 0;
          }

          else
          {
            v167 = 1;
          }

          v168 = v167;
          if (!v167)
          {
            v169 = *a4;
            v186[0] = 0;
            v186[1] = 0xFFFFFFFFLL;
            (*(*a1 + 2))(a1, v169, v186);
            v78 = v187;
          }

          if (v194 == 1)
          {
            v170 = v25;
          }

          else
          {
            v170 = 0;
          }

          if (v170)
          {
            if (v78)
            {
              v171 = re::ArrayAccessor::elementAt(v190, a4, 0);
              re::EncoderBinary<re::SeekableInputStream>::serializeArray((a1 + 3), v171, *(v195 + 8), v187, 0);
            }
          }

          else if (v78)
          {
            v172 = 0;
            do
            {
              v173 = re::ArrayAccessor::elementAt(v190, a4, v172);
              v77(a1, 0, 0, v173, &__dst, v192, 0);
              ++v172;
            }

            while (v172 < v187);
          }

          if (v168)
          {
            goto LABEL_346;
          }

LABEL_345:
          (*(*a1 + 3))(a1);
          goto LABEL_346;
        }

        v69 = **(this + 2);
        v70 = **(a6 + 2);
        if (v69 != v70)
        {
          goto LABEL_116;
        }

        v17 = WORD1(v69) == WORD1(v70);
        v71 = (v70 ^ v69) & 0xFFFFFF00000000;
        if (!v17 || v71 != 0)
        {
          goto LABEL_116;
        }
      }

LABEL_35:
      v25 = 1;
      if (a7)
      {
        goto LABEL_36;
      }

      goto LABEL_120;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v109 = **(this + 2);
        v110 = **(a6 + 2);
        if (v109 == v110 && WORD1(v109) == WORD1(v110) && ((v110 ^ v109) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_169;
        }

        v46 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_169;
        }

        v46 = *(this + 12);
      }

      if (v46 != *(a6 + 12))
      {
        goto LABEL_241;
      }
    }

LABEL_169:
    if (a7)
    {
      LOBYTE(__dst) = 0;
      re::EncoderBinary<re::SeekableInputStream>::beginOptional((a1 + 3), a2, a3, &__dst, 0);
      if (__dst == 1)
      {
        v111 = a1[24];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v178);
        re::TypeInfo::TypeInfo(&v182, &v179);
        re::internal::translateType(&v178, v111, &v182);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 9))(a1, a2, 0, 0, &v178, &v178, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v178);
      re::TypeInfo::TypeInfo(&v182, &v179);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v178);
      re::TypeInfo::TypeInfo(&__dst, &v179);
      re::TypeInfo::TypeInfo(&v178, this);
      v192[0] = (*(v180 + 88))(a4) != 0;
      v112 = re::EncoderBinary<re::SeekableInputStream>::beginOptional((a1 + 3), a2, a3, v192, 0);
      if (v192[0] == 1)
      {
        v113 = re::TypeInfo::createInstance(&v182, a1[6], a1[23]);
        (*(v180 + 96))(a4, v113);
        re::TypeInfo::releaseInstance(&v182, v113, a1[6], a1[23]);
      }

      else
      {
        (*(v180 + 96))(a4, 0, v112);
      }

      if (v192[0] == 1)
      {
        v121 = (*(v180 + 88))(a4);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 9))(a1, a2, 0, v121, &v182, &__dst, 0);
        }
      }
    }

    re::EncoderBinary<re::SeekableInputStream>::endOptional((a1 + 3));
    goto LABEL_347;
  }

  if (*(this + 12) <= 6u)
  {
    if (v22 != 5)
    {
      if (v22 != 6)
      {
        goto LABEL_85;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v83 = **(this + 2);
          v84 = **(a6 + 2);
          if (v83 == v84 && WORD1(v83) == WORD1(v84) && ((v84 ^ v83) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_134;
          }

          v33 = 6;
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_134;
          }

          v33 = *(this + 12);
        }

        if (v33 != *(a6 + 12))
        {
          goto LABEL_241;
        }
      }

LABEL_134:
      if (a7)
      {
        v85 = a1[24];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v178);
        re::TypeInfo::TypeInfo(&__dst, &v179);
        re::internal::translateType(&v182, v85, &__dst);
        v86 = a1[24];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v178);
        re::TypeInfo::TypeInfo(v192, &v179);
        re::internal::translateType(&__dst, v86, v192);
        v87 = (*(*a1 + 10))(a1, &v182);
        if (v87)
        {
          v88 = v87;
          v89 = (*(*a1 + 10))(a1, &__dst);
          if (v89)
          {
            v90 = v89;
            *v192 = 0;
            v91 = re::EncoderBinary<re::SeekableInputStream>::beginDictionary((a1 + 3), a2, a3, v192, 0);
            v52 = 0;
            if (v91)
            {
              if (*v192)
              {
                v92 = 0;
                do
                {
                  if ((a1[8] & 1) == 0)
                  {
                    LOBYTE(v178) = 7;
                    HIDWORD(v178) = 1;
                    v179 = "entry";
                    v180 = xmmword_1E3054780;
                    v181 = 0uLL;
                    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1 + 3, &v178);
                  }

                  v88(a1, "key", 0, 0, &v182, &v182, 1);
                  v90(a1, "value", 0, 0, &__dst, &__dst, 1);
                  re::EncoderBinary<re::SeekableInputStream>::endDictionaryEntry((a1 + 3));
                  ++v92;
                }

                while (v92 < *v192);
              }

              goto LABEL_155;
            }

            return v52 & 1;
          }

          goto LABEL_200;
        }

LABEL_156:
        p_dst = &v182;
LABEL_201:
        v174 = re::TypeInfo::name(p_dst)[1];
        v23 = "Failed to resolve serialize function for type %s";
        goto LABEL_202;
      }

      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v178);
      re::TypeInfo::TypeInfo(&v182, &v179);
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v178);
      re::TypeInfo::TypeInfo(&__dst, &v179);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v178);
      re::TypeInfo::TypeInfo(v192, &v179);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v178);
      re::TypeInfo::TypeInfo(v190, &v179);
      re::TypeInfo::TypeInfo(v188, this);
      v93 = (*(*a1 + 10))(a1, &v182);
      if (!v93)
      {
        goto LABEL_156;
      }

      v94 = v93;
      v95 = (*(*a1 + 10))(a1, &__dst);
      if (v95)
      {
        v96 = v95;
        v186[0] = (*(v189 + 96))(a4);
        v97 = re::EncoderBinary<re::SeekableInputStream>::beginDictionary((a1 + 3), a2, a3, v186, 0);
        v52 = 0;
        if (!v97)
        {
          return v52 & 1;
        }

        v98 = a1[6];
        v99 = *(v189 + 104);
        re::TypeInfo::TypeInfo(&v178, v188);
        v99(a4, &v178, v98);
        if (v186[0])
        {
          v100 = re::TypeInfo::createInstance(&v182, a1[6], a1[23]);
          if (v186[0])
          {
            v101 = 0;
            while (1)
            {
              if ((a1[8] & 1) == 0)
              {
                LOBYTE(v178) = 7;
                HIDWORD(v178) = 0;
                v179 = "entry";
                v180 = xmmword_1E3054780;
                v181 = 0uLL;
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1 + 3, &v178);
              }

              v94(a1, "key", 0, v100, &v182, v192, 0);
              v102 = a1[6];
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v103 = (*(v189 + 112))(a4, v188, v102, v100);
              v96(a1, "value", 0, v103, &__dst, v190, 0);
              re::EncoderBinary<re::SeekableInputStream>::endDictionaryEntry((a1 + 3));
              if (++v101 >= v186[0])
              {
                goto LABEL_154;
              }
            }

            v129 = a1[23];
            v130 = &v182;
            v131 = v100;
            goto LABEL_208;
          }

LABEL_154:
          re::TypeInfo::releaseInstance(&v182, v100, a1[6], a1[23]);
        }

LABEL_155:
        re::EncoderBinary<re::SeekableInputStream>::endDictionary((a1 + 3));
        goto LABEL_347;
      }

LABEL_200:
      p_dst = &__dst;
      goto LABEL_201;
    }

    if (this != a6)
    {
      if (*this != *a6)
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_75;
        }

        v120 = *(this + 12);
LABEL_192:
        if (v120 != *(a6 + 12))
        {
          goto LABEL_241;
        }

        v47 = 0;
        if (a7)
        {
LABEL_76:
          v48 = a1[24];
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v178);
          re::TypeInfo::TypeInfo(&__dst, &v179);
          re::internal::translateType(&v182, v48, &__dst);
          v49 = (*(*a1 + 10))(a1, &v182);
          if (!v49)
          {
            goto LABEL_156;
          }

          v50 = v49;
          v178 = 0;
          v51 = re::EncoderBinary<re::SeekableInputStream>::beginArray((a1 + 3), a2, a3, &v178, 0);
          v52 = 0;
          if (!v51)
          {
            return v52 & 1;
          }

          v53 = v178;
          if (v184 != 1)
          {
            if (v178)
            {
              for (i = 0; i < v178; ++i)
              {
                v50(a1, 0, 0, 0, &v182, &v182, 1);
              }
            }

            goto LABEL_346;
          }

          if (v178)
          {
            v54 = *(v185 + 8);
            v55 = (a1 + 3);
            v56 = 0;
            v57 = 1;
LABEL_81:
            re::EncoderBinary<re::SeekableInputStream>::serializeArray(v55, v56, v54, v53, v57);
          }

LABEL_346:
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 3));
          goto LABEL_347;
        }

LABEL_194:
        re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v178);
        re::TypeInfo::TypeInfo(&__dst, &v179);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v178);
        re::TypeInfo::TypeInfo(v192, &v179);
        re::TypeInfo::TypeInfo(v190, this);
        v122 = (*(*a1 + 10))(a1, &__dst);
        if (!v122)
        {
          goto LABEL_200;
        }

        v123 = v122;
        v124 = (*(v191 + 88))(a4);
        v188[0] = v124;
        v125 = re::EncoderBinary<re::SeekableInputStream>::beginArray((a1 + 3), a2, a3, v188, 0);
        v52 = 0;
        if (!v125)
        {
          return v52 & 1;
        }

        v126 = v188[0];
        if (v124 != v188[0])
        {
          re::TypeRegistry::typeInfo(v190[0], *(v191 + 80), &v178);
          re::TypeInfo::TypeInfo(&v182, &v179);
          v82 = *(v185 + 8);
          if (!is_mul_ok(v82, v126))
          {
            v175 = v126;
            goto LABEL_199;
          }

          v155 = a1[6];
          v156 = *(v191 + 96);
          re::TypeInfo::TypeInfo(&v178, v190);
          v156(a4, &v178, v155, v126);
        }

        v157 = *(v191 + 104);
        if (!v157)
        {
          v160 = *(v191 + 112);
          if (!v160 || !*(v191 + 120) || !*(v191 + 128))
          {
            re::TypeInfo::TypeInfo(&v178, v190);
            v174 = re::TypeInfo::name(&v178)[1];
            v23 = "List type %s does not provide an indexer or iterator.";
            goto LABEL_221;
          }

          v161 = v160(a4, a1[7]);
          v162 = (*(v191 + 120))();
          if (v162)
          {
            v163 = v162;
            do
            {
              v123(a1, 0, 0, v163, &__dst, v192, 0);
              v163 = (*(v191 + 120))(v161);
            }

            while (v163);
          }

          (*(v191 + 128))(v161, a1[7]);
          goto LABEL_346;
        }

        if (*(this + 12) == 5)
        {
          v158 = v47;
        }

        else
        {
          v158 = 0;
        }

        if (v158)
        {
          v159 = v188[0];
          if ((*(*(this + 2) + 48) & 8) != 0 && v194 == 1)
          {
            if (!v188[0])
            {
              goto LABEL_346;
            }

            v56 = v157(a4, 0);
            v54 = *(v195 + 8);
            v53 = v188[0];
            v55 = (a1 + 3);
            v57 = 0;
            goto LABEL_81;
          }
        }

        else
        {
          v159 = v188[0];
        }

        if (v159)
        {
          v164 = 0;
          do
          {
            v165 = (*(v191 + 104))(a4, v164);
            v123(a1, 0, 0, v165, &__dst, v192, 0);
            ++v164;
          }

          while (v164 < v188[0]);
        }

        goto LABEL_346;
      }

      v118 = **(this + 2);
      v119 = **(a6 + 2);
      if (v118 != v119 || WORD1(v118) != WORD1(v119) || ((v119 ^ v118) & 0xFFFFFF00000000) != 0)
      {
        v120 = 5;
        goto LABEL_192;
      }
    }

LABEL_75:
    v47 = 1;
    if (a7)
    {
      goto LABEL_76;
    }

    goto LABEL_194;
  }

  if (v22 == 7)
  {
    if (this == a6)
    {
      goto LABEL_67;
    }

    if (*this == *a6)
    {
      v114 = **(this + 2);
      v115 = **(a6 + 2);
      if (v114 == v115)
      {
        v17 = WORD1(v114) == WORD1(v115);
        v116 = (v115 ^ v114) & 0xFFFFFF00000000;
        if (v17 && v116 == 0)
        {
LABEL_67:
          if (a7)
          {
            if (a1[8])
            {
              goto LABEL_242;
            }

            LOBYTE(v178) = 1;
            HIDWORD(v178) = 16;
            v179 = a2;
            v180 = 0u;
            v181 = 0u;
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1 + 3, &v178);
            v182 = 0;
            re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>((a1 + 3), "tag", 0, &v182, "uint64", 0);
            if (v182 < *(*(a6 + 2) + 96))
            {
              re::TypeInfo::unionMember(&v178, a6, v182);
              if ((a1[8] & 1) == 0)
              {
                (*(*a1 + 9))(a1, "value", 0, 0, &v178, &v178, 1);
              }
            }
          }

          else
          {
            if (a1[8])
            {
              goto LABEL_242;
            }

            LOBYTE(v178) = 1;
            HIDWORD(v178) = 16;
            v179 = a2;
            v180 = 0u;
            v181 = 0u;
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1 + 3, &v178);
            re::TypeInfo::TypeInfo(&v178, this);
            __dst = re::UnionAccessor::readTag(&v178, a4);
            re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>((a1 + 3), "tag", 0, &__dst, "uint64", 0);
            re::UnionAccessor::reset(&v178, a4, __dst, a1[6]);
            if (__dst < *(*(this + 2) + 96))
            {
              re::TypeInfo::unionMember(&v182, this, __dst);
              if ((a1[8] & 1) == 0)
              {
                (*(*a1 + 9))(a1, "value", 0, a4, &v182, &v182, 0);
              }
            }
          }

          if ((a1[8] & 1) == 0)
          {
            re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 3), 1);
            v61 = a1[19] + 48 * a1[17];
            ++*(v61 - 16);
LABEL_347:
            v52 = *(a1 + 64) ^ 1;
            return v52 & 1;
          }

LABEL_242:
          v52 = 0;
          return v52 & 1;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_67;
    }

LABEL_241:
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
    goto LABEL_242;
  }

  if (v22 != 8)
  {
    if (v22 == 9)
    {
      v174 = re::TypeInfo::name(this)[1];
      v23 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_221:
      v127 = a1;
      v128 = a2;
      goto LABEL_222;
    }

LABEL_85:
    v174 = *(this + 12);
    v23 = "Invalid type category. Value = %d";
    goto LABEL_221;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t *re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  v8 = re::TypeInfo::name(a4);
  return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Type mismatch. Runtime type %s and serialized type %s are different.", v7, v8[1]);
}

uint64_t re::serializeEnum<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v14 = **(a5 + 16);
      v15 = **(a6 + 16);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_12;
    }

    if (*(a5 + 12) != *(a6 + 12) || (v18 = re::TypeInfo::name(a5), v19 = re::TypeInfo::name(a6), !re::StringID::operator==(v18, v19)))
    {
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsBinary<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v23 = *(a1 + 192);
      v46[0] = 0x2686EB529B3EE220;
      v46[1] = "DynamicString";
      re::TypeRegistry::typeInfo(&v39, v23, v46);
      v24 = re::TypeInfo::TypeInfo(v47, &v40);
      if (v46[0])
      {
        if (v46[0])
        {
        }
      }

      v25 = v47;
      v26 = v47;
      v27 = a1;
      v28 = a2;
      v29 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v27 = a1;
      v28 = a2;
      v29 = a3;
      v25 = this;
      v26 = this;
    }

    re::serializeDynamicString<re::EncoderBinary<re::SeekableInputStream>>(v27, v28, v29, 0, v25, v26, 1);
    goto LABEL_38;
  }

LABEL_6:
  v16 = *(this + 2);
  v17 = *(v16 + 48);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = *(v16 + 168);
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v39 = &unk_1F5CBABF8;
      v40 = a1;
      *&v41 = v19;
      *(&v41 + 1) = v20;
      v42 = 0uLL;
      v43 = 1;
      v44 = 0;
      v45 = 0;
      v47[0].n128_u64[0] = a2;
      v47[0].n128_u32[2] = a3;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(&v42, v47);
      v18(&v39, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v39 = &unk_1F5CBABF8;
      if (v42)
      {
        if ((v43 & 1) == 0)
        {
          (*(*v42 + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    if (*(a1 + 64))
    {
LABEL_14:
      v22 = 0;
      return v22 & 1;
    }

    LOBYTE(v39) = 1;
    HIDWORD(v39) = 0;
    v40 = a2;
    v41 = 0u;
    v42 = 0u;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v39);
    if (this == a6)
    {
      goto LABEL_25;
    }

    if (*this == *a6)
    {
      v32 = **(this + 2);
      v33 = **(a6 + 2);
      if (v32 == v33)
      {
        v35 = WORD1(v32) == WORD1(v33);
        v34 = (v33 ^ v32) & 0xFFFFFF00000000;
        v35 = v35 && v34 == 0;
        if (v35)
        {
          goto LABEL_25;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v31))
    {
LABEL_25:
      re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::SeekableInputStream>>(a1, a4, this, a7);
LABEL_36:
      if (*(a1 + 64))
      {
        goto LABEL_14;
      }

      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 1);
      v38 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v38 - 16);
LABEL_38:
      v22 = *(a1 + 64) ^ 1;
      return v22 & 1;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderBinary<re::SeekableInputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v36 = re::TypeInfo::name(this)[1];
      v37 = re::TypeInfo::name(a6);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v36, v37[1]);
    }

    goto LABEL_36;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::serializeValue<short>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, a4, 2uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, a4, 4uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, a4, 8uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::internal::serializeEnumAsBinary<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re::internal *a5, const re::TypeInfo *a6, int a7)
{
  if (a7)
  {
    v11 = *(a1 + 192);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__src);
    re::TypeInfo::TypeInfo(v33, v35);
    re::internal::translateType(&__src, v11, v33);
    if ((*(a1 + 64) & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, 0, &__src, &__src, 1);
    }

    return 0;
  }

  v15 = *a5;
  if (a5 == a6)
  {
    goto LABEL_8;
  }

  v16 = *a6;
  if (v15 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = *(a6 + 2);
    v22 = *v21;
    if (v20 != *v21)
    {
      goto LABEL_21;
    }

    v24 = WORD1(v20) == WORD1(v22);
    v23 = (v22 ^ v20) & 0xFFFFFF00000000;
    v24 = v24 && v23 == 0;
    if (!v24)
    {
      goto LABEL_21;
    }

LABEL_8:
    re::TypeRegistry::typeInfo(v15, *(*(a5 + 2) + 80), &__src);
    re::TypeInfo::TypeInfo(v33, v35);
    __src = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      result = (*(*a1 + 72))(a1, a2, a3, &__src, v33, v33, 0);
      if (!result)
      {
        return result;
      }

      if ((re::internal::getEnumConstantIndex(a5, &__src, v17) & 0x80000000) == 0)
      {
        v18 = *(*(a5 + 2) + 8);
        p_src = &__src;
LABEL_12:
        memcpy(a4, p_src, v18);
        return 1;
      }

      re::TypeInfo::name(a5);
      goto LABEL_32;
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    v15 = *a5;
    goto LABEL_8;
  }

  v16 = *a6;
  v21 = *(a6 + 2);
LABEL_21:
  v25 = *(a1 + 192);
  re::TypeRegistry::typeInfo(v16, v21[10], &__src);
  re::TypeInfo::TypeInfo(v32, v35);
  re::internal::translateType(v33, v25, v32);
  if (*(v33[2] + 8) < 9u)
  {
    v32[0] = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      result = (*(*a1 + 72))(a1, a2, a3, v32, v33, v33, 0);
      if (!result)
      {
        return result;
      }

      EnumConstantIndex = re::internal::getEnumConstantIndex(a6, v32, v26);
      if ((EnumConstantIndex & 0x80000000) != 0)
      {
        re::TypeInfo::name(a6);
LABEL_32:
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Value %zu is not a valid enum constant of %s.");
        return 0;
      }

      v28 = EnumConstantIndex;
      v29 = *(*a6 + 856);
      if (v29)
      {
        v30 = re::internal::TypeTranslationTable::translateSerializedEnum(v29, a6, v28, a5);
        if (v30)
        {
          p_src = v30;
          v18 = *(*(a5 + 2) + 8);
          goto LABEL_12;
        }
      }

      __src = re::TypeInfo::enumConstants(a6);
      v35[0] = v31;
      re::Slice<re::EnumConstant>::operator[](&__src, v28);
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Serialized enum constant %s does not exist in runtime type %s.");
    }
  }

  else
  {
    re::TypeInfo::name(v33);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Enum type %s has invalid size: %zu bytes.");
  }

  return 0;
}

double re::EncoderBinary<re::SeekableInputStream>::beginOptional(_anonymous_namespace_ *result, const char *a2, int a3, char *__dst, int a5)
{
  if ((*(result + 40) & 1) == 0)
  {
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, __dst, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(result, a2, "BOOL");
    }

    v9 = *__dst;
    v11[0] = 3;
    v12 = a5;
    v13 = a2;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v15 = v9;
    return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(result, v11);
  }

  return v10;
}

_anonymous_namespace_ *re::EncoderBinary<re::SeekableInputStream>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 3);
      v2 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v4 = *&v8[7];
      }

      else
      {
        v4 = v8;
      }

      if (*(*(v1 + 16) + 48 * *(v1 + 14) - 24) <= 0)
      {
        v5 = "Optional should not have a value.";
      }

      else
      {
        v5 = "Optional requires a value.";
      }

      re::DynamicString::format(v9, "Failed to serialize optional type %s. %s", v3, v4, v5);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      result = v6;
      if (v6)
      {
        if (v7)
        {
          return (*(*v6 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::beginArray(_anonymous_namespace_ *a1, const char *a2, int a3, char *__dst, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v22 = v5;
    v23 = v6;
    if ((a5 & 4) == 0 && (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 4uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "uint32");
    }

    v12 = *__dst;
    if ((a5 & 8) != 0)
    {
      if (v12)
      {
        v13 = 73;
      }

      else
      {
        v13 = 78;
      }

      v15[0] = v13;
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v15, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "uint8");
      }

      v12 = *__dst;
    }

    v15[0] = 5;
    v16 = a5;
    v17 = a2;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = v12;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v15);
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::serializeArray(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((*(result + 40) & 1) == 0)
  {
    v6 = result;
    v7 = a4 * a3;
    if (a5)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, v7);
    if (result)
    {
      v8 = *(v6 + 16) + 48 * *(v6 + 14);
      *(v8 - 16) += a4;
    }

    else
    {

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v6, 0, "Array");
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::SeekableInputStream>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 5);
      v2 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v4 = *&v8[7];
      }

      else
      {
        v4 = v8;
      }

      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(v9, "Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", v3, v4, *(v5 - 24), *(v5 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      result = v6;
      if (v6)
      {
        if (v7)
        {
          return (*(*v6 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::beginDictionary(_anonymous_namespace_ *a1, const char *a2, int a3, char *__dst, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v21 = v5;
    v22 = v6;
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 4uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "uint32");
    }

    v12 = *__dst;
    v14[0] = 6;
    v15 = a5;
    v16 = a2;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v18 = v12;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v14);
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderBinary<re::SeekableInputStream>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == 2)
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 7);
      v2 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v4 = *&v7[7];
      }

      else
      {
        v4 = v7;
      }

      re::DynamicString::format(v8, "Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", v3, v4, *(*(v1 + 16) + 48 * *(v1 + 14) - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v8);
      if (*&v8[0])
      {
        if (BYTE8(v8[0]))
        {
          (*(**&v8[0] + 40))();
        }

        memset(v8, 0, sizeof(v8));
      }

      result = v5;
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::SeekableInputStream>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 6);
      v2 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v4 = *&v8[7];
      }

      else
      {
        v4 = v8;
      }

      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(v9, "Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", v3, v4, *(v5 - 24), *(v5 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      result = v6;
      if (v6)
      {
        if (v7)
        {
          return (*(*v6 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, re::DynamicString *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x22C6ED80D0CLL || (v19 = v18[1], v19 != "StringID") && strcmp(v19, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_24;
  }

LABEL_14:
  if (!a7)
  {
    v25 = *(a4 + 1);
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    __dst = v26;
    v27 = re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, v9, &__dst, 0);
    v21 = 0;
    if (!v27)
    {
      return v21 & 1;
    }

    v28 = __dst;
    if (v28 <= (*(**(a1 + 24) + 64))(*(a1 + 24)))
    {
      if (!*a4)
      {
        v31 = __dst;
        *a4 = *(a1 + 48);
        re::DynamicString::setCapacity(a4, v31 + 1);
      }

      re::DynamicString::resize(a4, __dst, 0);
      if (!__dst)
      {
        goto LABEL_33;
      }

      if (*(a4 + 8))
      {
        v23 = *(a4 + 2);
      }

      else
      {
        v23 = a4 + 9;
      }

      v22 = a1 + 24;
      v24 = 0;
      goto LABEL_32;
    }

    v29 = __dst;
    v30 = (*(**(a1 + 24) + 64))(*(a1 + 24));
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v29, v30);
LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  __dst = 0;
  v20 = re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, v9, &__dst, 0);
  v21 = 0;
  if (v20)
  {
    if (!__dst)
    {
LABEL_33:
      re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_32:
    re::EncoderBinary<re::SeekableInputStream>::serializeString(v22, v23, v24);
    goto LABEL_33;
  }

  return v21 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CBABF8;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderBinary<re::SeekableInputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, re *a5, re *a6, uint64_t a7)
{
  v14 = re::TypeMemberCollection::TypeMemberCollection(&v29, *a5, *(a5 + 2));
  re::TypeMemberCollection::operator[](v14, 0, &v27);
  v15 = *(v28 + 24);
  re::TypeRegistry::typeInfo(v27, *v28, &v29);
  re::TypeInfo::TypeInfo(v26, v30);
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v18 = **(a5 + 2);
    v19 = *(a6 + 2);
    v20 = *v19;
    if (v18 != *v19)
    {
      goto LABEL_14;
    }

    v22 = WORD1(v18) == WORD1(v20);
    v21 = (v20 ^ v18) & 0xFFFFFF00000000;
    v22 = v22 && v21 == 0;
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v26, a7);
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, v16))
  {
    goto LABEL_4;
  }

  v19 = *(a6 + 2);
LABEL_14:
  if (*(v19 + 96) != 1)
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v23, *a6, v19);
  re::TypeMemberCollection::operator[](v23, 0, v24);
  re::TypeRegistry::typeInfo(v24[0], *v24[2], &v29);
  re::TypeInfo::TypeInfo(v25, v30);
  if (a1[64])
  {
    return 0;
  }

  return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v25, a7);
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::beginString(_anonymous_namespace_ *a1, uint64_t a2, int a3, char *__dst, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v21 = v5;
    v22 = v6;
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 4uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, "length", "uint32");
    }

    v12 = *__dst;
    v14[0] = 8;
    v15 = a5;
    v16 = a2;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v18 = v12;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v14);
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::serializeString(uint64_t result, char *a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v4 = result;
    v5 = *(result + 128) + 48 * *(result + 112);
    v6 = *(v5 - 24);
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, *(v5 - 24));
    if (result)
    {
      if ((a3 & 2) == 0)
      {
        v7 = *(v4 + 16) + 48 * *(v4 + 14);
        *(v7 - 16) += v6;
      }
    }

    else
    {

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v4, 0, "string");
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::SeekableInputStream>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 8);
      v2 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v4 = *&v8[7];
      }

      else
      {
        v4 = v8;
      }

      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(&v9, "Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", v3, v4, *(v5 - 24), *(v5 - 16));
      *&v12[0] = 400;
      *(&v12[0] + 1) = re::FoundationErrorCategory(void)::instance;
      *&v12[1] = v9;
      *(&v12[2] + 1) = v11;
      *(&v12[1] + 8) = v10;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v12);
      if (*&v12[1])
      {
        if (BYTE8(v12[1]))
        {
          (*(**&v12[1] + 40))();
        }

        memset(&v12[1], 0, 32);
      }

      result = v6;
      if (v6)
      {
        if (v7)
        {
          return (*(*v6 + 40))();
        }
      }
    }
  }

  return result;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CBABF8;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((*(*(result + 1) + 64) & 1) == 0)
  {
    v9 = result;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    re::DynamicString::setCapacity(&v15, 0);
    va_copy(v14, va);
    re::DynamicString::vappendf(&v15, a2, va);
    v10 = *(v9 + 1);
    *&v11 = 400;
    *(&v11 + 1) = re::FoundationErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v12, &v15);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v10 + 24, &v11);
    if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }

    result = v15;
    if (v15)
    {
      if (v16)
      {
        return (*(*v15 + 40))(v15, v17);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginField(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  *(v3 + 16 * v4 - 8) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 16 * v4 - 16) = a3;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
    v5 = *(v2 + 16 * *(a1 + 40) - 16);
    v7[0].n128_u8[0] = 1;
    v7[0].n128_u32[1] = 0;
    v7[0].n128_u64[1] = v5;
    memset(&v7[1], 0, 32);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((v3 + 24), v7);
    v7[0].n128_u64[0] = "";
    v7[0].n128_u32[2] = 0;
    re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, v7);
  }

  return v4 ^ 1u;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::endObject(_anonymous_namespace_ *result)
{
  v1 = *(result + 12);
  --*(result + 5);
  *(result + 12) = v1 + 2;
  v2 = *(result + 1);
  if ((*(v2 + 64) & 1) == 0)
  {
    result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((v2 + 24), 1);
    v3 = *(v2 + 152) + 48 * *(v2 + 136);
    ++*(v3 - 16);
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginArray(uint64_t a1, char *__dst)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderBinary<re::SeekableInputStream>::beginArray((*(a1 + 8) + 24), *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), __dst, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderBinary<re::SeekableInputStream>::endArray((*(a1 + 8) + 24));
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginDictionary(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, (v4 + 16 * *(a1 + 40) - 16));
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  re::EncoderBinary<re::SeekableInputStream>::beginDictionary((*(a1 + 8) + 24), *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), a2, 0);
  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext::beginDictionaryEntry(v1 + 16 * *(a1 + 40) - 16, *(a1 + 8) + 24);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 16 * *(result + 40);
  *(v2 - 8) = 1;
  *(v2 - 16) = "value";
  return result;
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::endDictionary(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderBinary<re::SeekableInputStream>::endDictionary((*(a1 + 8) + 24));
    v4 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v4 + 2;
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginData(uint64_t a1, char *__dst)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderBinary<re::SeekableInputStream>::beginBLOB((*(a1 + 8) + 24), *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), __dst, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginOptional(uint64_t a1)
{
  __dst = 0;
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::EncoderBinary<re::SeekableInputStream>::beginOptional((*(a1 + 8) + 24), *(v1 + 16 * *(a1 + 40) - 16), *(v1 + 16 * *(a1 + 40) - 8), &__dst, 0);
  return __dst;
}