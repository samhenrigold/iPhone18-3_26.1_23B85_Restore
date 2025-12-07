uint64_t re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 224 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 224 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 224 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 216) = a3;
  ++*(a1 + 28);
  return v7 + 224 * v5;
}

uint64_t re::MeshPassFilters::MeshPassFilters(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  ++*(a2 + 24);
  ++*(a1 + 24);
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  ++*(a2 + 64);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v11 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v12;
  ++*(a2 + 104);
  LODWORD(v12) = *(a1 + 104) + 1;
  *(a1 + 120) = 0u;
  v13 = a1 + 120;
  *(a1 + 104) = v12;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 120), (a2 + 120));
  *(v13 + 48) = *(a2 + 168);
  v14 = *(a2 + 169);
  *(v13 + 49) = v14;
  if (v14 == 1)
  {
    v15 = *(a2 + 170);
    *(a1 + 174) = *(a2 + 174);
    *(a1 + 170) = v15;
  }

  *(a1 + 175) = *(a2 + 175);
  return a1;
}

void re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 224;
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

uint64_t re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v19, a2);
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v16, a1, a2, v6);
  v7 = HIDWORD(v17);
  if (HIDWORD(v17) != 0x7FFFFFFF)
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 224 * v7;
    v9 = v10 + 40;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v10 + 40, a3);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v10 + 80, (a3 + 40));
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v10 + 120, (a3 + 80));
    if (v10 + 40 != a3)
    {
      v11 = *(v10 + 160);
      if (v11)
      {
        v12 = v11 == *(a3 + 120);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v10 + 160), (a3 + 120));
      }

      else
      {
        re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v10 + 160);
        if (*(a3 + 120))
        {
          v13 = *(a3 + 148);
          if (*(v10 + 184) < v13)
          {
            re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(v10 + 160, v13);
          }

          re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(v10 + 160, a3 + 120);
          ++*(v10 + 200);
        }
      }
    }

    *(v10 + 208) = *(a3 + 168);
    if (*(v10 + 209))
    {
      if ((*(a3 + 169) & 1) == 0)
      {
        *(v10 + 209) = 0;
LABEL_20:
        *(v10 + 215) = *(a3 + 175);
        return v9;
      }
    }

    else
    {
      if ((*(a3 + 169) & 1) == 0)
      {
        goto LABEL_20;
      }

      *(v10 + 209) = 1;
    }

    v14 = *(a3 + 170);
    *(v10 + 214) = *(a3 + 174);
    *(v10 + 210) = v14;
    goto LABEL_20;
  }

  v8 = re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17, v16);
  re::DynamicString::DynamicString((v8 + 8), a2);
  v9 = v8 + 40;
  re::MeshPassFilters::MeshPassFilters(v8 + 40, a3);
  ++*(a1 + 40);
  return v9;
}

BOOL re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 224 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 224 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 224 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 224 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 224 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 224 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 56;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 224 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 224 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<BOOL>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<BOOL>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::addElement(re::Allocator **a1, re *this, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<BOOL>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<BOOL>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32);
  *(v15 + v9) = 0;
  v16 = v9 + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (v15 + v16 - 1);
  re::introspectionInitElement(this, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

void re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
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
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v12);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::RenderGraphMultiPassMeshNode::RenderGraphMultiPassMeshNode(re::RenderGraphMultiPassMeshNode *this)
{
  v1 = re::RenderGraphNode::RenderGraphNode(this);
  *(v1 + 66) = 1;
  *(v1 + 268) = 0;
  *v1 = &unk_1F5D15E58;
  result = 0.0;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 76) = 0;
  *(v1 + 308) = 0x7FFFFFFFLL;
  *(v1 + 41) = 0;
  *(v1 + 42) = 0;
  *(v1 + 40) = 0;
  *(v1 + 86) = 0;
  *(v1 + 54) = 0;
  *(v1 + 22) = 0u;
  *(v1 + 23) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 106) = 0;
  *(v1 + 110) = 2;
  *(v1 + 56) = 0;
  *(v1 + 57) = 0;
  *(v1 + 118) = 0;
  *(v1 + 58) = 0;
  return result;
}

re::RenderGraphMaterialReplaceNode *re::RenderGraphMaterialReplaceNode::RenderGraphMaterialReplaceNode(re::RenderGraphMaterialReplaceNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D16098;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  v3 = re::DynamicString::setCapacity(this + 38, 0);
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  re::DynamicString::setCapacity(this + 42, 0);
  *(this + 184) = 2;
  return this;
}

void *re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 14;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 56 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 56 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, _WORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v12, a2);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    v9 = v8 + 40;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 56 * v7;
    *(v10 + 40) = *a3;
    return v10 + 40;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 56 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 14;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void re::ar::DualGuidedFilter::create(uint64_t *__return_ptr a1@<X8>, re::ar::DualGuidedFilter *this@<X0>, const re::mtl::Device *a3@<X1>)
{
  v4 = [objc_alloc(getARDualGuidedFilterClass()) initWithDevice:*this useSmoothing:a3];
  *a1 = v4;
}

void re::ar::DualGuidedFilter::encodeDualCoefficients(void **a1, void **a2, void **a3, void **a4, id *a5, uint64_t *a6)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a6;
  v11 = *a5;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  [v15 encodeDualCoefficients:v14 guide:v13 stencil:v12 coefficientsTextureFG:v11 coefficientsTextureBG:v10];
}

Class initARDualGuidedFilter(void)
{
  if (qword_1EE1C2648 != -1)
  {
    dispatch_once(&qword_1EE1C2648, &__block_literal_global_50);
  }

  result = objc_getClass("ARDualGuidedFilter");
  _MergedGlobals_548 = result;
  getARDualGuidedFilterClass = ARDualGuidedFilterFunction;
  return result;
}

void ___ZL9LoadARKitv_block_invoke()
{
  LoadARKit(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ARKit.framework/ARKit", 2);
  if (!LoadARKit(void)::frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

void re::ARGuidedFilterOcclusionNode::setup(re::ARGuidedFilterOcclusionNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a2 + 296) = 257;
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 264, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 280, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 296, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 312, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 328, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 328, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 344, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 344, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 360, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 360, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 376, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 376, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 392, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 392, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 408, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 408, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 424, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 424, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 440, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 440, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 456, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 456, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 472, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 472, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 488, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 488, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 504, &v6);
  re::RenderGraphNode::setup(this, a2, a3);
}

void re::ARGuidedFilterOcclusionNode::execute(re::ARGuidedFilterOcclusionNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v66, 5087, 0, 0, 0, 0);
  v4 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
  v5 = re::RenderFrame::currentCommandBuffer(v4);
  if ((atomic_load_explicit(&qword_1EE1C2658, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_1EE1C2658);
    if (v14)
    {
      _MergedGlobals_549 = re::getCombinedScopeHash(v14, v15, v16);
      __cxa_guard_release(&qword_1EE1C2658);
    }
  }

  v6 = re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(*(a2 + 146), _MergedGlobals_549);
  v7 = *(v6 + 32);
  v8 = *v7;
  v9 = *v7 == 0;
  v60 = *(*(a2 + 1) + 208);
  v59 = *(v5 + 2);
  v10 = *(v6 + 184);
  v62 = 0;
  v63 = 0;
  location = 0;
  v64 = v10;
  v65 = 0;
  re::ObjCObject::operator=(&v62, &v59);
  re::ObjCObject::operator=(&location, &v60);

  v52 = *(*(a2 + 1) + 208);
  v53 = 0u;
  v54 = 0u;
  v56 = v6;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  re::ObjCObject::operator=(&v57, &v52);

  re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler::prepareTexturesForFrame(&v53);
  v11 = *(v6 + 185) | (v9 | v58) & 1;
  v46 = *(*(a2 + 1) + 208);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = v6;
  v51 = 0;
  re::ObjCObject::operator=(&v51, &v46);

  v45 = *(*(*(a2 + 1) + 48) + 360);
  re::guided_filter_occlusion::GuidedFilterKernelRecycler::prepareKernelsForFrame(&v47, *(a2 + 1), &v45, v9);
  re::RenderGraphContext::metalTexture(a2, this + 264, 0, 0, &v29);
  re::RenderGraphContext::metalTexture(a2, this + 280, 0, 0, &v30);
  re::RenderGraphContext::metalTexture(a2, this + 296, 0, 0, &v31);
  re::RenderGraphContext::metalTexture(a2, this + 312, 0, 0, &v32);
  re::RenderGraphContext::metalTexture(a2, this + 328, 0, 0, &v33);
  re::RenderGraphContext::metalTexture(a2, this + 344, 0, 0, &v34);
  re::RenderGraphContext::metalTexture(a2, this + 360, 0, 0, &v35);
  re::RenderGraphContext::metalTexture(a2, this + 376, 0, 0, &v36);
  re::RenderGraphContext::metalTexture(a2, this + 392, 0, 0, &v37);
  re::RenderGraphContext::metalTexture(a2, this + 408, 0, 0, &v38);
  re::RenderGraphContext::metalTexture(a2, this + 424, 0, 0, &v39);
  re::RenderGraphContext::metalTexture(a2, this + 440, 0, 0, &v40);
  re::RenderGraphContext::metalTexture(a2, this + 456, 0, 0, &v41);
  re::RenderGraphContext::metalTexture(a2, this + 472, 0, 0, &v42);
  re::RenderGraphContext::metalTexture(a2, this + 488, 0, 0, &v43);
  re::RenderGraphContext::metalTexture(a2, this + 504, 0, 0, &v44);
  v19 = a2;
  v20 = *(v5 + 2);
  p_location = &location;
  v22 = v6;
  v23 = &v47;
  v24 = &v53;
  v25 = &v29;
  v26 = v7;
  v27 = v9;
  v28 = v11;
  v18 = *(&v53 + 1);
  v17 = v55;
  if ((v11 & 1) != 0 || !v8)
  {
    NS::SharedPtr<MTL::Buffer>::operator=(&v18, &v53);
    NS::SharedPtr<MTL::Buffer>::operator=(&v17, &v54 + 1);
  }

  [*(v5 + 2) pushDebugGroup:@"ARGuidedFilterOcclusionNode"];
  re::guided_filter_occlusion::encodeGuidedFilterOcclusionCommands(&v19);
  [*(v5 + 2) popDebugGroup];
  re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler::saveTexturesForNextFrame(&v53);
  ++*v7;
  if (v17)
  {
  }

  if (v18)
  {
  }

  if (v44)
  {

    v44 = 0;
  }

  if (v43)
  {

    v43 = 0;
  }

  if (v42)
  {

    v42 = 0;
  }

  if (v41)
  {

    v41 = 0;
  }

  if (v40)
  {

    v40 = 0;
  }

  if (v39)
  {

    v39 = 0;
  }

  if (v38)
  {

    v38 = 0;
  }

  if (v37)
  {

    v37 = 0;
  }

  if (v36)
  {

    v36 = 0;
  }

  if (v35)
  {

    v35 = 0;
  }

  if (v34)
  {

    v34 = 0;
  }

  if (v33)
  {

    v33 = 0;
  }

  if (v32)
  {

    v32 = 0;
  }

  if (v31)
  {

    v31 = 0;
  }

  if (v30)
  {

    v30 = 0;
  }

  if (v29)
  {
  }

  if (v55)
  {

    v55 = 0;
  }

  if (*(&v54 + 1))
  {

    *(&v54 + 1) = 0;
  }

  if (v54)
  {

    *&v54 = 0;
  }

  if (*(&v53 + 1))
  {

    *(&v53 + 1) = 0;
  }

  if (v53)
  {
  }

  if (v63)
  {

    v63 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v66, v12, v13);
}

void *re::allocInfo_ARGuidedFilterOcclusionNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2660))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2750, "ARGuidedFilterOcclusionNode");
    __cxa_guard_release(&qword_1EE1C2660);
  }

  return &unk_1EE1C2750;
}

void re::initInfo_ARGuidedFilterOcclusionNode(re *this, re::IntrospectionBase *a2)
{
  v73[0] = 0x30DAB7D54DFCD6BCLL;
  v73[1] = "ARGuidedFilterOcclusionNode";
  if (v73[0])
  {
    if (v73[0])
    {
    }
  }

  *(this + 2) = v74;
  if ((atomic_load_explicit(&qword_1EE1C2668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2668))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C26C8 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_RenderGraphTargetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "suVirtualContentOpaqueOnlyDepth";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C26D0 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_RenderGraphTargetHandle(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "suAllVirtualContentDepth";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x11800000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C26D8 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_RenderGraphTargetHandle(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "suVirtualContentDepthAsR16";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x14800000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C26E0 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_RenderGraphTargetHandle(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "processedVirtualDepthAsR16";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x15800000004;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1C26E8 = v23;
    v24 = re::introspectionAllocator();
    v26 = re::introspect_RenderGraphTargetHandle(1, v25);
    v27 = (*(*v24 + 32))(v24, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "suMeshDepthEdgesScratch";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x16800000005;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1C26F0 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_RenderGraphTargetHandle(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "suMeshDepthEdges";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x17800000006;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1C26F8 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::introspect_RenderGraphTargetHandle(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "maskOfAllOcclusions";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x18800000007;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1C2700 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_RenderGraphTargetHandle(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "regressionInputCameraFeed";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x19800000008;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1C2708 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::introspect_RenderGraphTargetHandle(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "reconstructionInputCameraFeed";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x1A800000009;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1C2710 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::introspect_RenderGraphTargetHandle(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "cameraFeedRGBDownsampled";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x1B80000000ALL;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1C2718 = v47;
    v48 = re::introspectionAllocator();
    v50 = re::introspect_RenderGraphTargetHandle(1, v49);
    v51 = (*(*v48 + 32))(v48, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "guidedFilterInputWeights";
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0x1C80000000BLL;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE1C2720 = v51;
    v52 = re::introspectionAllocator();
    v54 = re::introspect_RenderGraphTargetHandle(1, v53);
    v55 = (*(*v52 + 32))(v52, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "guidedFilterInputMask";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0x1D80000000CLL;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE1C2728 = v55;
    v56 = re::introspectionAllocator();
    v58 = re::introspect_RenderGraphTargetHandle(1, v57);
    v59 = (*(*v56 + 32))(v56, 72, 8);
    *v59 = 1;
    *(v59 + 8) = "reconstructedAlpha";
    *(v59 + 16) = v58;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0x1E80000000DLL;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    qword_1EE1C2730 = v59;
    v60 = re::introspectionAllocator();
    v62 = re::introspect_RenderGraphTargetHandle(1, v61);
    v63 = (*(*v60 + 32))(v60, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "suMeshDepth";
    *(v63 + 16) = v62;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x1280000000ELL;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE1C2738 = v63;
    v64 = re::introspectionAllocator();
    v66 = re::introspect_RenderGraphTargetHandle(1, v65);
    v67 = (*(*v64 + 32))(v64, 72, 8);
    *v67 = 1;
    *(v67 + 8) = "suMeshBackfacesDepth";
    *(v67 + 16) = v66;
    *(v67 + 24) = 0;
    *(v67 + 32) = 0x1380000000FLL;
    *(v67 + 40) = 0;
    *(v67 + 48) = 0;
    *(v67 + 56) = 0;
    *(v67 + 64) = 0;
    qword_1EE1C2740 = v67;
    v68 = re::introspectionAllocator();
    v70 = re::introspect_RenderGraphTargetHandle(1, v69);
    v71 = (*(*v68 + 32))(v68, 72, 8);
    *v71 = 1;
    *(v71 + 8) = "suOcclusionMatte";
    *(v71 + 16) = v70;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0x1F800000010;
    *(v71 + 40) = 0;
    *(v71 + 48) = 0;
    *(v71 + 56) = 0;
    *(v71 + 64) = 0;
    qword_1EE1C2748 = v71;
    __cxa_guard_release(&qword_1EE1C2668);
  }

  *(this + 2) = 0x20800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 17;
  *(this + 8) = &qword_1EE1C26C8;
  *(this + 9) = re::internal::defaultConstruct<re::ARGuidedFilterOcclusionNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARGuidedFilterOcclusionNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARGuidedFilterOcclusionNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARGuidedFilterOcclusionNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v72 = v74;
}

void *re::allocInfo_SceneUnderstandingGuidedFilterOcclusionConnectionData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2670))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C27E0, "SceneUnderstandingGuidedFilterOcclusionConnectionData");
    __cxa_guard_release(&qword_1EE1C2670);
  }

  return &unk_1EE1C27E0;
}

void re::initInfo_SceneUnderstandingGuidedFilterOcclusionConnectionData(re *this, re::IntrospectionBase *a2)
{
  v46[0] = 0x4001EAA823D50D7ALL;
  v46[1] = "SceneUnderstandingGuidedFilterOcclusionConnectionData";
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  *(this + 2) = v47;
  if ((atomic_load_explicit(&qword_1EE1C2678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2678))
  {
    v5 = re::introspectionAllocator();
    v11 = re::introspect_RenderGraphData(1, v6, v7, v8, v9, v10);
    v12 = (*(*v5 + 32))(v5, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "RenderGraphData";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 3;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C2680 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_uint32_t(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "guidedFilterResolutionX";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C2688 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_uint32_t(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "guidedFilterResolutionY";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xC00000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1C2690 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_uint32_t(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "outputMatteResolutionX";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x1000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1C2698 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_uint32_t(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "outputMatteResolutionY";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x1400000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1C26A0 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_uint32_t(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "suMeshDepthEdgesResolutionX";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x2000000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1C26A8 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_uint32_t(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "suMeshDepthEdgesResolutionY";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x2400000006;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1C26B0 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::introspect_uint32_t(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "downsampledCameraFeedResolutionX";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x1800000007;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1C26B8 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::introspect_uint32_t(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "downsampledCameraFeedResolutionY";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x1C00000008;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1C26C0 = v44;
    __cxa_guard_release(&qword_1EE1C2678);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1C2680;
  *(this + 9) = re::internal::defaultConstruct<re::SceneUnderstandingGuidedFilterOcclusionConnectionData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SceneUnderstandingGuidedFilterOcclusionConnectionData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SceneUnderstandingGuidedFilterOcclusionConnectionData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SceneUnderstandingGuidedFilterOcclusionConnectionData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v45 = v47;
}

void re::ARGuidedFilterOcclusionNode::~ARGuidedFilterOcclusionNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

double re::ARGuidedFilterOcclusionNode::ARGuidedFilterOcclusionNode(re::ARGuidedFilterOcclusionNode *this)
{
  v1 = re::RenderGraphNode::RenderGraphNode(this);
  *v1 = &unk_1F5D164A0;
  *(v1 + 33) = 0;
  result = NAN;
  *(v1 + 34) = -1;
  *(v1 + 35) = 0;
  *(v1 + 36) = -1;
  *(v1 + 37) = 0;
  *(v1 + 38) = -1;
  *(v1 + 39) = 0;
  *(v1 + 40) = -1;
  *(v1 + 41) = 0;
  *(v1 + 42) = -1;
  *(v1 + 43) = 0;
  *(v1 + 44) = -1;
  *(v1 + 45) = 0;
  *(v1 + 46) = -1;
  *(v1 + 47) = 0;
  *(v1 + 48) = -1;
  *(v1 + 49) = 0;
  *(v1 + 50) = -1;
  *(v1 + 51) = 0;
  *(v1 + 52) = -1;
  *(v1 + 53) = 0;
  *(v1 + 54) = -1;
  *(v1 + 55) = 0;
  *(v1 + 56) = -1;
  *(v1 + 57) = 0;
  *(v1 + 58) = -1;
  *(v1 + 59) = 0;
  *(v1 + 60) = -1;
  *(v1 + 61) = 0;
  *(v1 + 62) = -1;
  *(v1 + 63) = 0;
  *(v1 + 64) = -1;
  return result;
}

void re::RenderGraphBlurGenerationNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v15 = 0;
  v18 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v13);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 36, ComputePipelineState);
  if (v28)
  {

    v28 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v21);
  if (v18 == 1 && v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v19 = 0u;
    v20 = 0u;
  }

  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v17 = 0u;
    v16 = 0u;
  }

  v9 = v13;
  if (v13 && (v14 & 1) != 0)
  {
    v9 = (*(*v13 + 40))();
  }

  v15 = 0;
  v18 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v10 = re::getOrCreateComputePipelineState(*(a4 + 1), &v13);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 37, v10);
  if (v28)
  {

    v28 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v21);
  if (v18 == 1 && v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v19 = 0u;
    v20 = 0u;
  }

  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v17 = 0u;
    v16 = 0u;
  }

  v11 = v13;
  if (v13 && (v14 & 1) != 0)
  {
    v11 = (*(*v13 + 40))();
  }

  v15 = 0;
  v18 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v12 = re::getOrCreateComputePipelineState(*(a4 + 1), &v13);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 38, v12);
  if (v28)
  {

    v28 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v21);
  if (v18 == 1 && v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v19 = 0u;
    v20 = 0u;
  }

  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v17 = 0u;
    v16 = 0u;
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

void *re::RenderGraphBlurGenerationNode::execute(char **this, re::RenderGraphContext *a2)
{
  v2 = this;
  result = re::RenderGraphDataStore::tryGet<re::BlurGenerationContext>(*(a2 + 146), "BlurGenerationContext", this[4]);
  if (result)
  {
    v4 = result;
    v64 = 0;
    v61[1] = 0;
    v62 = 0;
    v61[0] = 0;
    v63 = 0;
    if (*result)
    {
      v5 = v2;
      v6 = result[2];
      v61[0] = *result;
      re::DynamicArray<re::RenderGraphBlurGenerationData>::setCapacity(v61, v6);
      ++v63;
      v7 = v4[2];
      if (v7 >= v62)
      {
        re::DynamicArray<re::RenderGraphBlurGenerationData>::setCapacity(v61, v4[2]);
        std::__copy_impl::operator()[abi:nn200100]<re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *>(v4[4], (v4[4] + 24 * v62), v64);
        if (v62 != v7)
        {
          v11 = v4[4];
          v12 = v11 + 24 * v7;
          v13 = v11 + 24 * v62;
          v14 = &v64[3 * v62];
          do
          {
            *v14 = *v13;
            v14[1] = *(v13 + 8);
            *(v14 + 16) = *(v13 + 16);
            v13 += 24;
            v14 += 3;
          }

          while (v13 != v12);
        }
      }

      else
      {
        std::__copy_impl::operator()[abi:nn200100]<re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *>(v4[4], (v4[4] + 24 * v7), v64);
        if (v7 != v62)
        {
          v8 = 24 * v62 - 24 * v7;
          v9 = &v64[3 * v7 + 1];
          do
          {
            if (*v9)
            {

              *v9 = 0;
            }

            v10 = *(v9 - 1);
            if (v10)
            {

              *(v9 - 1) = 0;
            }

            v9 += 3;
            v8 -= 24;
          }

          while (v8);
        }
      }

      v62 = v7;
      v2 = v5;
    }

    v15 = *(*a2 + 32);
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v60 = 0x7FFFFFFFLL;
    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v57, v15, 3);
    if (v62)
    {
      v16 = v64;
      v17 = &v64[3 * v62];
      do
      {
        v18 = *v16;
        v19 = [v18 protectionOptions];
        v20 = v16[1];
        if (v20)
        {
        }

        v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
        v22 = v21 ^ (v21 >> 31);
        if (v57)
        {
          v23 = *(*(&v57 + 1) + 4 * (v22 % DWORD2(v58)));
          if (v23 != 0x7FFFFFFF)
          {
            while (*(v58 + (v23 << 6) + 8) != v19)
            {
              v23 = *(v58 + (v23 << 6)) & 0x7FFFFFFF;
              if (v23 == 0x7FFFFFFF)
              {
                goto LABEL_24;
              }
            }

            v26 = v58 + (v23 << 6) + 16;
            goto LABEL_31;
          }

LABEL_24:
          v54 = 0uLL;
          v55 = 0;
          v56 = 0;
          v53 = v15;
          re::DynamicArray<float *>::setCapacity(&v53, 0);
          v24 = v22 % DWORD2(v58);
          v25 = *(*(&v57 + 1) + 4 * v24);
          if (v25 != 0x7FFFFFFF)
          {
            while (*(v58 + (v25 << 6) + 8) != v19)
            {
              v25 = *(v58 + (v25 << 6)) & 0x7FFFFFFF;
              if (v25 == 0x7FFFFFFF)
              {
                goto LABEL_29;
              }
            }

            v26 = v58 + (v25 << 6) + 16;
            v20 = v53;
            if (v53 && v56)
            {
              v20 = (*(*v53 + 40))();
            }

            goto LABEL_31;
          }
        }

        else
        {
          v54 = 0uLL;
          v55 = 0;
          v56 = 0;
          v53 = v15;
          re::DynamicArray<float *>::setCapacity(&v53, 0);
          LODWORD(v24) = 0;
        }

LABEL_29:
        v20 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v57, v24, v22);
        *(v20 + 2) = v53;
        v26 = (v20 + 16);
        *(v20 + 1) = v19;
        *(v20 + 24) = v54;
        v53 = 0;
        v54 = 0uLL;
        *(v20 + 6) = v56;
        *(v20 + 10) = 1;
        ++HIDWORD(v60);
LABEL_31:
        v27 = *(v26 + 8);
        v28 = *(v26 + 16);
        if (v28 >= v27)
        {
          v29 = v28 + 1;
          if (v27 < v28 + 1)
          {
            if (*v26)
            {
              v30 = 2 * v27;
              v31 = v27 == 0;
              v32 = 8;
              if (!v31)
              {
                v32 = v30;
              }

              if (v32 <= v29)
              {
                v33 = v29;
              }

              else
              {
                v33 = v32;
              }

              re::DynamicArray<float *>::setCapacity(v26, v33);
            }

            else
            {
              re::DynamicArray<float *>::setCapacity(v26, v29);
              ++*(v26 + 24);
            }
          }

          v28 = *(v26 + 16);
        }

        *(*(v26 + 32) + 8 * v28) = v16;
        *(v26 + 16) = v28 + 1;
        ++*(v26 + 24);
        if (v18)
        {
        }

        v16 += 3;
      }

      while (v16 != v17);
    }

    if (v59)
    {
      v34 = 0;
      v35 = v58;
      while (1)
      {
        v36 = *v35;
        v35 += 16;
        if (v36 < 0)
        {
          break;
        }

        if (v59 == ++v34)
        {
          LODWORD(v34) = v59;
          break;
        }
      }
    }

    else
    {
      LODWORD(v34) = 0;
    }

    if (v34 != v59)
    {
      v37 = v58;
      v49 = v59;
      while (1)
      {
        v38 = (v37 + (v34 << 6));
        re::RenderGraphContext::makeComputeCommandEncoder(a2, 0, v38[1], &v52);
        v39 = v38[4];
        if (v39)
        {
          break;
        }

LABEL_68:
        re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(a2, &v52, 1);

        if (v49 <= v34 + 1)
        {
          v48 = v34 + 1;
        }

        else
        {
          v48 = v49;
        }

        while (v48 - 1 != v34)
        {
          LODWORD(v34) = v34 + 1;
          if ((*(v37 + (v34 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_75;
          }
        }

        LODWORD(v34) = v48;
LABEL_75:
        if (v34 == v49)
        {
          goto LABEL_76;
        }
      }

      v40 = v38[6];
      v41 = 8 * v39;
      while (1)
      {
        v42 = *v40;
        v51 = 0;
        v43 = *(v42 + 16);
        v44 = (v2 + 36);
        if (*(v42 + 16))
        {
          if (v43 == 2)
          {
            v44 = (v2 + 38);
          }

          else
          {
            v45 = 0;
            v44 = (v2 + 37);
            if (v43 != 1)
            {
              goto LABEL_65;
            }
          }
        }

        NS::SharedPtr<MTL::Buffer>::operator=(&v51, v44);
        v45 = v51;
LABEL_65:
        [v52 setComputePipelineState:v45];
        [v52 setTexture:*v42 atIndex:0];
        [v52 setTexture:v42[1] atIndex:1];
        v46 = [*v42 height];
        [v52 setThreadgroupMemoryLength:(8 * v46 + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
        v47 = [*v42 height];
        v53 = [*v42 width];
        v54 = vdupq_n_s64(1uLL);
        v65 = v47;
        v66 = v54;
        [v52 dispatchThreadgroups:&v53 threadsPerThreadgroup:&v65];
        if (v51)
        {
        }

        ++v40;
        v41 -= 8;
        if (!v41)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_76:
    re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v57);
    return re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v61);
  }

  return result;
}

void re::RenderGraphBlurGenerationNode::~RenderGraphBlurGenerationNode(re::RenderGraphBlurGenerationNode *this)
{
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  v3 = *(this + 37);
  if (v3)
  {

    *(this + 37) = 0;
  }

  v4 = *(this + 36);
  if (v4)
  {

    *(this + 36) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  v3 = *(this + 37);
  if (v3)
  {

    *(this + 37) = 0;
  }

  v4 = *(this + 36);
  if (v4)
  {

    *(this + 36) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 264));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void **std::__copy_impl::operator()[abi:nn200100]<re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *>(void **result, void **a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      NS::SharedPtr<MTL::Buffer>::operator=(a3, v5);
      result = NS::SharedPtr<MTL::Buffer>::operator=((a3 + 8), v5 + 1);
      *(a3 + 16) = *(v5 + 16);
      v5 += 3;
      a3 += 24;
    }

    while (v5 != a2);
  }

  return result;
}

unint64_t re::MXIOffscreenMeshNode::setup(re::MXIOffscreenMeshNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  *(a2 + 592) = 1;
  re::RenderGraphNode::setup(this, a2, a3);
  if (*(this + 280))
  {
    v4 = *(this + 36);
  }

  else
  {
    v4 = this + 281;
  }

  result = strlen(v4);
  if (result)
  {
    result = MurmurHash3_x64_128(v4, result, 0, v7);
    v6 = (v7[1] + (v7[0] << 6) + (v7[0] >> 2) - 0x61C8864680B583E9) ^ v7[0];
  }

  else
  {
    v6 = 0;
  }

  *(this + 41) = v6;
  return result;
}

void re::MXIOffscreenMeshNode::execute(re::MXIOffscreenMeshNode *this, re::RenderGraphContext *a2)
{
  v3 = this;
  v190 = *MEMORY[0x1E69E9840];
  v168 = &unk_1F5D153E8;
  v169 = 256;
  v4 = *(a2 + 146);
  v5 = "N2re20MXIReprojectionStateE";
  if (("N2re20MXIReprojectionStateE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re20MXIReprojectionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  if (!*(v4 + 64))
  {
    goto LABEL_12;
  }

  v9 = (*(*(a2 + 5) + 48) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v10 = *(*(v4 + 72) + 4 * (v9 % *(v4 + 88)));
  if (v10 == 0x7FFFFFFF)
  {
    goto LABEL_12;
  }

  v11 = *(v4 + 80);
  while (*(v11 + 24 * v10 + 8) != v9)
  {
    v10 = *(v11 + 24 * v10) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v11 + 24 * v10 + 16);
  if (!v12 || (v169 = *(v12 + 8), (v169 & 0x100) != 0))
  {
LABEL_12:
    re::RenderGraphContext::acquireManagedRenderCommandEncoder(a2, 0, v167);
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v167);
  }

  if (!*(v3 + 41))
  {
    v20 = *re::graphicsLogObjects(this);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v21 = "materialTechniqueName must be set for MXIOffscreenMeshNode to execute.";
LABEL_40:
    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, v21, &buf, 2u);
    return;
  }

  v13 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v14 = *(*a2 + 32);
  v15 = (*(*v14 + 32))(v14, 56, 8);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 24) = 0;
  *(v15 + 48) = 0;
  re::BucketArray<re::MeshPartDrawContext,128ul>::init(v15, v14, 1uLL);
  v16 = *(a2 + 146);
  v17 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(v16, *(*(a2 + 5) + 48));
  if (!v17)
  {
    v20 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v21 = "MXIOffscreenMeshNode::execute ran with an invalid MXIFrameData. Was this graph meant to be emitted?";
    goto LABEL_40;
  }

  v18 = v17;
  v151 = v15;
  if (*(v17 + 40))
  {
    v19 = *(v17 + 48);
  }

  else
  {
    v19 = (v17 + 41);
  }

  MurmurHash3_x64_128("Camera", 6uLL, 0, &buf);
  v22 = (v177 - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf;
  v23 = strlen(v19);
  v24 = 0x9E3779B97F4A7C17;
  if (v23)
  {
    MurmurHash3_x64_128(v19, v23, 0, &buf);
    v24 = ((v177 - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf) - 0x61C8864680B583E9;
  }

  v25 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(v16, ((v22 >> 2) + (v22 << 6) + v24) ^ v22);
  if (!v25)
  {
    v25 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
  }

  v26 = *(v18 + 8);
  if (!*(v26 + 8))
  {
    v20 = *re::graphicsLogObjects(v25);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v21 = "MXIOffscreenMeshNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
    goto LABEL_40;
  }

  v156 = v25;
  v148 = v14;
  v27 = *(v3 + 76);
  v159 = *(v18 + 8);
  v28 = *(v26 + 56);
  v29 = *(a2 + 146);
  MurmurHash3_x64_128("MeshScenes", 0xAuLL, 0, &buf);
  v30 = buf;
  v31 = v177;
  v32 = strlen(v28);
  v33 = 0x9E3779B97F4A7C17;
  if (v32)
  {
    MurmurHash3_x64_128(v28, v32, 0, &buf);
    v33 = ((v177 - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf) - 0x61C8864680B583E9;
  }

  v34 = "N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x8000000000000000) != 0)
  {
    v35 = ("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v36 = 5381;
    do
    {
      v34 = v36;
      v37 = *v35++;
      v36 = (33 * v36) ^ v37;
    }

    while (v37);
  }

  v38 = v159;
  if (*(v29 + 64))
  {
    v39 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
    v40 = ((((v39 >> 2) + (v39 << 6) + v33) ^ v39) - 0x61C8864680B583E9 + (v34 << 6) + (v34 >> 2)) ^ v34;
    v41 = *(*(v29 + 72) + 4 * (v40 % *(v29 + 88)));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(v29 + 80);
      while (*(v42 + 24 * v41 + 8) != v40)
      {
        v41 = *(v42 + 24 * v41) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          return;
        }
      }

      v43 = *(v42 + 24 * v41 + 16);
      if (v43)
      {
        v166 = 0;
        v144 = *(v43 + 48);
        if (!v144)
        {
LABEL_120:
          if (*(v151 + 40))
          {
            buf = v151;
            LOBYTE(v177) = 0;
            *(&v177 + 6) = 65280;
            BYTE10(v177) = 1;
            v164[0] = 0;
            if (*(v3 + 280))
            {
              v121 = *(v3 + 36);
            }

            else
            {
              v121 = v3 + 281;
            }

            memset(v188, 0, 24);
            v161 = *(v3 + 308);
            if (v161 == 1)
            {
              v163 = *(v3 + 325);
              v162 = *(v3 + 309);
            }

            re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(v3, a2, &buf, 1, 0, 0, v156, 2, v164, 0, v121, v188, 0, &v161);
          }

          return;
        }

        v44 = 0;
        v45 = 0;
        v146 = v3 + 281;
        __asm { FMOV            V9.2S, #1.0 }

        v160 = v3;
        v142 = v43;
        while (1)
        {
          v145 = v45;
          v50 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v43 + 8, v45);
          v52 = *(v50 + 16);
          if (v52)
          {
            break;
          }

LABEL_119:
          v45 = v145 + 1;
          v43 = v142;
          if (v145 + 1 == v144)
          {
            goto LABEL_120;
          }
        }

        v53 = *(v50 + 32);
        v54 = v53 + 736 * v52;
        v143 = v54;
        while (1)
        {
          if (v27 <= 4 && ((1 << v27) & 0x13) != 0)
          {
            v55 = *(v53 + 512);
            if (v55 != *(v38 + 8))
            {
              v56 = *(v38 + 24);
              goto LABEL_51;
            }
          }

          else
          {
            if ((v27 & 0xFFFFFFFE) != 2)
            {
              goto LABEL_59;
            }

            v55 = *(v53 + 512);
            if (v55 != *(v38 + 16))
            {
              v56 = *(v38 + 32);
LABEL_51:
              if (v55 != v56)
              {
                goto LABEL_59;
              }
            }
          }

          if ((*(v53 + 524) & *(v13 + 904)) != 0)
          {
            buf = v53;
            v177 = **(v53 + 112);
            v57 = *(v53 + 8);
            v178[0] = 0;
            v178[1] = v57;
            v179 = xmmword_1E3047670;
            v180 = xmmword_1E3047680;
            v181 = xmmword_1E30476A0;
            v182 = xmmword_1E30474D0;
            v183 = 0;
            v184 = 0;
            if (!*(v53 + 56))
            {
              *&v185 = v178;
              *(&v185 + 1) = 1;
              v147 = 1;
LABEL_62:
              v58 = 0;
              while (2)
              {
                v165[0] = &buf;
                v165[1] = v58;
                v59 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v165, v51);
                v60 = 0;
                v61 = *(v53 + 128);
                v62 = *(v53 + 144);
                v63 = *(v53 + 160);
                v64 = *(v53 + 176);
                v65 = v59[2];
                v66 = v59[3];
                v67 = v59[4];
                *v186 = v59[1];
                *&v186[16] = v65;
                *&v186[32] = v66;
                v187 = v67;
                do
                {
                  *&v188[v60] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(*&v186[v60])), v62, *&v186[v60], 1), v63, *&v186[v60], 2), v64, *&v186[v60], 3);
                  v60 += 16;
                }

                while (v60 != 64);
                v154 = *&v188[16];
                v155 = *v188;
                v152 = *&v188[48];
                v153 = *&v188[32];
                if (v44)
                {
                  v68 = 0;
                  v69 = 0;
                  goto LABEL_73;
                }

                v70 = *(v38 + 216);
                if (v70)
                {
                  if (!*(v156 + 3))
                  {
                    goto LABEL_130;
                  }

                  v71 = 0;
                  v72 = *(v156 + 5);
                  v73 = *v72;
                  v74 = v72[1];
                  v75 = v72[2];
                  v76 = v72[3];
                  *v186 = *v188;
                  *&v186[16] = *&v188[16];
                  *&v186[32] = *&v188[32];
                  v187 = *&v188[48];
                  do
                  {
                    *&v188[v71] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*&v186[v71])), v74, *&v186[v71], 1), v75, *&v186[v71], 2), v76, *&v186[v71], 3);
                    v71 += 16;
                  }

                  while (v71 != 64);
                  *v186 = *v188;
                  *&v186[16] = *&v188[16];
                  *&v186[32] = *&v188[32];
                  v187 = *&v188[48];
                  if (!*(v156 + 8))
                  {
LABEL_134:
                    v170 = 0;
                    v189 = 0u;
                    memset(v188, 0, sizeof(v188));
                    v129 = MEMORY[0x1E69E9C10];
                    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v171 = 136315906;
                    *&v171[4] = "operator[]";
                    *&v171[12] = 1024;
                    if (v130)
                    {
                      v131 = 3;
                    }

                    else
                    {
                      v131 = 2;
                    }

                    *&v171[14] = 797;
                    *&v171[18] = 2048;
                    *&v171[20] = 0;
                    *&v171[28] = 2048;
                    *&v171[30] = 0;
                    _os_log_send_and_compose_impl(v131, &v170, v188, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v171, 38, v140, v141);
                    _os_crash_msg();
                    __break(1u);
LABEL_138:
                    re::internal::assertLog(6, v117, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v133, v137);
                    __break(1u);
                    goto LABEL_139;
                  }

                  v77 = *(v156 + 10);
                  v78 = v77[2];
                  v80 = *v77;
                  v79 = v77[1];
                  v172 = v77[3];
                  *&v171[16] = v79;
                  *&v171[32] = v78;
                  *v171 = v80;
                  re::MXIContext::ReprojectionContext::notifyFrame(v70, v38 + 224, v186, v171, *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL, v169, &v166, v188);
                  v68 = v188[0];
                  v173 = *&v188[1];
                  v174 = *&v188[17];
                  v175[0] = *&v188[33];
                  *(v175 + 15) = *&v188[48];
                  v69 = v189;
LABEL_73:
                  v81 = 1;
                }

                else
                {
                  v68 = 0;
                  v69 = 0;
                  v81 = 0;
                }

                v82 = *(a2 + 1);
                v83 = *(v82 + 112);
                v158 = v81;
                v157 = v58;
                if (v83)
                {
                  v84 = *(v83 + 320);
                }

                else
                {
                  v84 = 0;
                }

                v85 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v84, *(*(v82 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v82 + 144) + 16) << 60));
                re::PerFrameAllocatorGPU::allocInternal(v85, 8uLL, 0x10uLL, 0, v186);
                v58 = v186;
                v86 = *&v186[8];
                *(*v186 + *&v186[8]) = *(v38 + 96);
                *v188 = **&v186[24];
                *&v188[24] = 0;
                *&v188[32] = v86;
                *&v188[36] = 8;
                v87 = *a2;
                *v171 = 0xD9B2155075A987DLL;
                re::BufferTable::setBuffer((v87 + 480), v171, v188);
                if (*&v188[24] != -1)
                {
                  (off_1F5D16AB0[*&v188[24]])(v171, v188);
                }

                re::PerFrameAllocatorGPU::allocInternal(v85, 8uLL, 0x10uLL, 0, v186);
                v88 = *(v38 + 104);
                v89 = *&v186[8];
                v90 = (*v186 + *&v186[8]);
                *v90 = v166;
                v90[1] = v88;
                *v188 = **&v186[24];
                *&v188[24] = 0;
                *&v188[32] = v89;
                *&v188[36] = 8;
                v91 = *a2;
                *v171 = 0x44D3F5F0CE6A1982;
                re::BufferTable::setBuffer((v91 + 480), v171, v188);
                if (*&v188[24] != -1)
                {
                  (off_1F5D16AB0[*&v188[24]])(v171, v188);
                }

                if (v69)
                {
                  re::PerFrameAllocatorGPU::allocInternal(v85, 0x40uLL, 0x10uLL, 0, v186);
                  v122 = *&v186[8];
                  v123 = *v186 + *&v186[8];
                  *v123 = v68;
                  v124 = v174;
                  *(v123 + 1) = v173;
                  *(v123 + 17) = v124;
                  *(v123 + 33) = v175[0];
                  *(v123 + 48) = *(v175 + 15);
                  *v188 = **&v186[24];
                  *&v188[24] = 0;
                  *&v188[32] = v122;
                  *&v188[36] = 64;
                  v125 = *a2;
                  *v171 = 0x2657CB62B5D6B400;
                  re::BufferTable::setBuffer((v125 + 480), v171, v188);
                  if (*&v188[24] != -1)
                  {
                    (off_1F5D16AB0[*&v188[24]])(v171, v188);
                  }

                  return;
                }

                PassTechniqueMapping = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v165, v92);
                v94 = *(PassTechniqueMapping + 8);
                _CF = v94 >= *PassTechniqueMapping;
                v96 = v94 - *PassTechniqueMapping;
                if (_CF)
                {
                  v97 = v96;
                }

                else
                {
                  v97 = 0;
                }

                if (v96 == 0 || !_CF)
                {
LABEL_111:
                  v119 = *re::graphicsLogObjects(PassTechniqueMapping);
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                  {
                    v120 = v146;
                    if (*(v160 + 280))
                    {
                      v120 = *(v160 + 36);
                    }

                    *v188 = 136315138;
                    *&v188[4] = v120;
                    _os_log_impl(&dword_1E1C61000, v119, OS_LOG_TYPE_DEFAULT, "MeshPart should have %s technique mapping", v188, 0xCu);
                  }

LABEL_115:
                  v58 = v157 + 1;
                  v38 = v159;
                  v44 = v158;
                  if (v157 + 1 == v147)
                  {
                    goto LABEL_58;
                  }

                  continue;
                }

                break;
              }

              v98 = 0;
              v99 = 0;
LABEL_88:
              v149 = v98;
              while (1)
              {
                v100 = *v165[0];
                v101 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v165, v51);
                v102 = re::Slice<re::internal::BindPointImplBase const*>::range(v100, *v101, v101[1]);
                if (v103 <= v99)
                {
                  re::internal::assertLog(6, v103, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v99, v103);
                  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v132, v136);
                  __break(1u);
LABEL_130:
                  *v171 = 0;
                  v189 = 0u;
                  memset(v188, 0, sizeof(v188));
                  v126 = MEMORY[0x1E69E9C10];
                  v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v186 = 136315906;
                  *&v186[4] = "operator[]";
                  *&v186[12] = 1024;
                  if (v127)
                  {
                    v128 = 3;
                  }

                  else
                  {
                    v128 = 2;
                  }

                  *&v186[14] = 797;
                  *&v186[18] = 2048;
                  *&v186[20] = 0;
                  *&v186[28] = 2048;
                  *&v186[30] = 0;
                  _os_log_send_and_compose_impl(v128, v171, v188, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v140, v141);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_134;
                }

                v104 = *(v102 + 8 * v99);
                PassTechniqueMapping = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(v165, v99);
                v58 = PassTechniqueMapping;
                if (*(v53 + 200) <= PassTechniqueMapping)
                {
                  v107 = *re::graphicsLogObjects(PassTechniqueMapping);
                  PassTechniqueMapping = os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT);
                  if (PassTechniqueMapping)
                  {
                    v108 = *(v53 + 200);
                    *v188 = 134218496;
                    *&v188[4] = v99;
                    *&v188[12] = 1024;
                    *&v188[14] = v58;
                    *&v188[18] = 2048;
                    *&v188[20] = v108;
                    _os_log_impl(&dword_1E1C61000, v107, OS_LOG_TYPE_DEFAULT, "MeshPart %lu has materialIndex %d out of scope (%lu)", v188, 0x1Cu);
                  }
                }

                else
                {
                  v58 = PassTechniqueMapping;
                  v105 = *(*(v53 + 192) + 8 * PassTechniqueMapping);
                  if (v105)
                  {
                    v106 = *(v160 + 41);
                    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                    {
                      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                    }

                    PassTechniqueMapping = re::MaterialParameterTable::tryGetPassTechniqueMapping((v105 + 304), v106, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
                    if (PassTechniqueMapping)
                    {
                      re::globalAllocators(PassTechniqueMapping);
                      v109 = (*(*v148 + 32))(v148, 336, 16);
                      *v109 = 0u;
                      *(v109 + 16) = 0u;
                      *(v109 + 32) = 0u;
                      *(v109 + 48) = 0;
                      *(v109 + 56) = 0u;
                      *(v109 + 72) = 0u;
                      *(v109 + 88) = 0u;
                      *(v109 + 104) = 0u;
                      *(v109 + 120) = 0;
                      *(v109 + 192) = 0;
                      *(v109 + 200) = 0;
                      *(v109 + 208) = 0;
                      *(v109 + 224) = 0;
                      *(v109 + 128) = 0u;
                      *(v109 + 144) = 0u;
                      *(v109 + 160) = 0u;
                      *(v109 + 176) = 0;
                      *(v109 + 184) = v148;
                      *(v109 + 232) = xmmword_1E304F3C0;
                      *(v109 + 248) = 0;
                      *(v109 + 252) = 10854;
                      *(v109 + 256) = _D9;
                      *(v109 + 264) = 0;
                      *(v109 + 272) = 0;
                      *(v109 + 320) = 0;
                      *&v188[24] = re::globalAllocators(v109)[2];
                      *&v188[32] = v188;
                      *v188 = &unk_1F5D16AD0;
                      v110 = (*(*v148 + 16))(v148, v109, v188);
                      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v188);
                      *(v110 + 7) = v105;
                      v112 = *(v53 + 288);
                      if (v112)
                      {
                        if (v112 > v58)
                        {
                          v112 = *(*(v53 + 280) + 8 * v58);
                          goto LABEL_103;
                        }

LABEL_139:
                        re::internal::assertLog(6, v111, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v58, v112);
                        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v134, v138);
                        __break(1u);
LABEL_140:
                        re::internal::assertLog(6, v111, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v58, v113);
                        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v135, v139);
                        __break(1u);
                      }

LABEL_103:
                      *(v110 + 9) = v112;
                      v113 = *(v53 + 336);
                      if (v113 <= *(v104 + 458))
                      {
                        v114 = 0;
                      }

                      else
                      {
                        if (v113 <= v58)
                        {
                          goto LABEL_140;
                        }

                        v114 = *(*(v53 + 328) + 8 * v58);
                      }

                      *(v110 + 10) = v114;
                      v58 = *(v53 + 512);
                      v115 = *(v104 + 528);
                      v116 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v110, *(v160 + 41));
                      if (!v117)
                      {
                        goto LABEL_138;
                      }

                      v150 = *v116;
                      v118 = re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(v151);
                      *v118 = v58;
                      *(v118 + 8) = 0;
                      *(v118 + 16) = 0;
                      *(v118 + 24) = v104;
                      *(v118 + 32) = 0;
                      *(v118 + 40) = v110;
                      *(v118 + 48) = 0;
                      *(v118 + 56) = -65280;
                      *(v118 + 60) = v150;
                      *(v118 + 64) = 0;
                      *(v118 + 80) = v155;
                      *(v118 + 96) = v154;
                      *(v118 + 112) = v153;
                      *(v118 + 128) = v152;
                      *(v118 + 172) = 0;
                      *(v118 + 176) = 0;
                      *(v118 + 184) = 0;
                      *(v118 + 192) = 0;
                      *(v118 + 144) = 0;
                      *(v118 + 152) = 0;
                      *(v118 + 168) = 0;
                      *(v118 + 160) = 0;
                      *(v118 + 196) = v115;
                      *(v118 + 200) = -NAN;
                      *(v118 + 208) = 0;
                      *(v118 + 212) = 0xFFFFFFFFLL;
                      ++v99;
                      v98 = 1;
                      *(v118 + 224) = 0;
                      *(v118 + 232) = 0;
                      if (v99 >= v97)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_88;
                    }
                  }
                }

                if (++v99 >= v97)
                {
                  if (v149)
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_111;
                }
              }
            }

            v185 = *(v53 + 48);
            v147 = *(&v185 + 1);
            if (*(&v185 + 1))
            {
              goto LABEL_62;
            }

LABEL_58:
            v3 = v160;
            v54 = v143;
          }

LABEL_59:
          v53 += 736;
          if (v53 == v54)
          {
            goto LABEL_119;
          }
        }
      }
    }
  }
}

void *re::allocInfo_MXIOffscreenMeshNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_550))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2900, "MXIOffscreenMeshNode");
    __cxa_guard_release(&_MergedGlobals_550);
  }

  return &unk_1EE1C2900;
}

void re::initInfo_MXIOffscreenMeshNode(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x8F675D4BB4FE81D8;
  v13[1] = "MXIOffscreenMeshNode";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1C2878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2878))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C28D8 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::IntrospectionInfo<re::DynamicString>::get(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "materialTechniqueName";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x11000000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C28E0 = v11;
    __cxa_guard_release(&qword_1EE1C2878);
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C28D8;
  *(this + 9) = re::internal::defaultConstruct<re::MXIOffscreenMeshNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIOffscreenMeshNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIOffscreenMeshNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIOffscreenMeshNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::internal::defaultDestruct<re::MXIOffscreenMeshNode>(uint64_t a1, uint64_t a2, id *a3)
{
  re::DynamicString::deinit((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

void re::internal::defaultDestructV2<re::MXIOffscreenMeshNode>(id *a1)
{
  re::DynamicString::deinit((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void re::MXIMRCNode::execute(re::MXIMRCNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v4)
  {
    v7 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "MXIMRCNode::execute ran with an invalid MXIFrameData. Was this graph meant to be emitted?";
    v9 = buf;
    goto LABEL_13;
  }

  v5 = *(v4 + 1);
  if (!v5 || !*(v5 + 8))
  {
    v7 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = 0;
    v8 = "MXIMRCNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
    v9 = &v11;
    goto LABEL_13;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    v7 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v10 = 0;
    v8 = "MXIMRCNode::execute had invalid reprojectionContext.";
    v9 = &v10;
LABEL_13:
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    return;
  }

  if ((*(v6 + 256) & 1) == 0)
  {

    re::RenderGraphMRCNode::execute(this, a2);
  }
}

uint64_t re::MXIAlphaComputeNode::setupEncoder(uint64_t a1, void *a2, id *a3)
{
  v5 = *(re::RenderGraphDataStore::get<re::MXIFrameData>(a2[146], *(a2[5] + 48)) + 8);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v14, (*a2 + 16), 8uLL, 8uLL);
  v6 = v16;
  *(v14 + v15) = v5[12];
  [*a3 setBuffer:v6 offset:? atIndex:?];
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v14, (*a2 + 16), 0x10uLL, 0x10uLL);
  v8 = v15;
  v9 = *(v5[27] + 244);
  if (v9 <= 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 1.0 / v9;
  }

  *&v7 = *(v5 + 108);
  *(&v7 + 2) = v10;
  *(v14 + v15) = v7;
  v11 = v16;
  v12 = *a3;

  return [v12 setBuffer:v11 offset:v8 atIndex:3];
}

void re::MXIAlphaComputeNode::execute(re::MXIAlphaComputeNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v4)
  {
    v6 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v7 = "MXIAlphaComputeNode::execute ran with an invalid MXIFrameData. Was this graph meant to be emitted?";
    v8 = buf;
    goto LABEL_9;
  }

  v5 = *(v4 + 1);
  if (!v5 || !*(v5 + 8) || *(v5 + 74) == 1)
  {
    v6 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = 0;
    v7 = "MXIAlphaComputeNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
    v8 = &v11;
    goto LABEL_9;
  }

  v9 = *(v5 + 216);
  if (v9)
  {
    if ((*(v9 + 256) & 1) == 0)
    {

      re::RenderGraphComputeNodeBase::execute(this, a2);
    }
  }

  else
  {
    v6 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "MXIAlphaComputeNode::execute had invalid reprojectionContext.";
      v8 = &v10;
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }
}

void re::MXIBlurNode::execute(re::MXIBlurNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v4)
  {
    v6 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v7 = "MXIBlurNode::execute ran with an invalid MXIFrameData. Was this graph meant to be emitted?";
    v8 = buf;
    goto LABEL_12;
  }

  v5 = *(v4 + 1);
  if (!v5 || !*(v5 + 8))
  {
    v6 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 0;
    v7 = "MXIBlurNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
    v8 = &v9;
LABEL_12:
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    return;
  }

  if (*(v5 + 116) >= 0.001)
  {
    *(this + 66) = 1084227584;
    *(this + 268) = 1;

    re::RenderGraphMPSImageGaussianBlurNode::execute(this, a2);
  }
}

void *re::allocInfo_MXIBlurNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2880))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2990, "MXIBlurNode");
    __cxa_guard_release(&qword_1EE1C2880);
  }

  return &unk_1EE1C2990;
}

void re::initInfo_MXIBlurNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x1D16BE1E19AF24ELL;
  v9[1] = "MXIBlurNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C2890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2890))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C2888 = v7;
    __cxa_guard_release(&qword_1EE1C2890);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2888;
  *(this + 9) = re::internal::defaultConstruct<re::MXIBlurNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIBlurNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIBlurNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIBlurNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::MXIBlurNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 134) = 0;
  *(result + 34) = 0;
  *(result + 35) = 0;
  *result = &unk_1F5D16750;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::MXIBlurNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 134) = 0;
  *(result + 34) = 0;
  *(result + 35) = 0;
  *result = &unk_1F5D16750;
  return result;
}

uint64_t *re::MXIColorConversionTileNode::configure(re::MXIColorConversionTileNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  re::DynamicString::setCapacity(&v20, 0);
  memset(&v25[1], 0, 64);
  v11 = "EnableManualSrgbConversion";
  v12 = 26;
  re::DynamicString::operator=(&v20, &v11);
  v24 = 53;
  memset(v25, 0, sizeof(v25));
  re::DynamicArray<re::TechniqueFunctionConstant>::add((this + 400), &v20);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::DynamicString::setCapacity(&v11, 0);
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v10[0] = "EnablePremultiplyAlphaInSrgb";
  v10[1] = 28;
  re::DynamicString::operator=(&v11, v10);
  v15 = 65589;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  re::DynamicArray<re::TechniqueFunctionConstant>::add((this + 400), &v11);
  re::AssetHandle::loadNow(*(this + 34), 0);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

void re::MXIColorConversionTileNode::execute(re::MXIColorConversionTileNode *this, re::RenderGraphContext *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v4)
  {
    v7 = 1;
LABEL_10:
    v10 = *(this + 4);
    v11 = strlen(*(this + 3));
    if (v11)
    {
      MurmurHash3_x64_128(*(this + 3), v11, 0, buf);
      v12 = (*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf;
    }

    else
    {
      v12 = 0;
    }

    v13 = strlen(v10);
    if (v13)
    {
      MurmurHash3_x64_128(v10, v13, 0, buf);
      v14 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
    }

    else
    {
      v14 = 0x9E3779B97F4A7C17;
    }

    v15 = *(a2 + 146);
    v16 = "N2re23MXIColorConversionStateE";
    if (("N2re23MXIColorConversionStateE" & 0x8000000000000000) != 0)
    {
      v17 = ("N2re23MXIColorConversionStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v18 = 5381;
      do
      {
        v16 = v18;
        v19 = *v17++;
        v18 = (33 * v18) ^ v19;
      }

      while (v19);
    }

    if (!*(v15 + 64) || (v20 = ((((v12 >> 2) + (v12 << 6) + v14) ^ v12) - 0x61C8864680B583E9 + (v16 << 6) + (v16 >> 2)) ^ v16, v21 = *(*(v15 + 72) + 4 * (v20 % *(v15 + 88))), v21 == 0x7FFFFFFF))
    {
LABEL_24:
      LOBYTE(v23) = 0;
    }

    else
    {
      v22 = *(v15 + 80);
      while (*(v22 + 24 * v21 + 8) != v20)
      {
        v21 = *(v22 + 24 * v21) & 0x7FFFFFFF;
        if (v21 == 0x7FFFFFFF)
        {
          goto LABEL_24;
        }
      }

      v23 = *(v22 + 24 * v21 + 16);
      if (v23)
      {
        v24 = v7 & *(v23 + 9);
        LOBYTE(v23) = *(v23 + 8);
        if (v23)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    v24 = 0;
LABEL_26:
    if ((v24 & 1) == 0)
    {
      return;
    }

LABEL_27:
    v25 = v23 & 1;
    if (*(this + 441) != v25)
    {
      *(this + 441) = v25;
      if (!*(this + 52))
      {
        v35 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        *buf = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v39 = 789;
        v40 = 2048;
        v41 = 0;
        v42 = 2048;
        v43 = 0;
        _os_log_send_and_compose_impl(v30, &v35, buf, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
        _os_crash_msg();
        __break(1u);
        goto LABEL_44;
      }

      v26 = *(this + 54);
      *(v26 + 84) = 0u;
      *(v26 + 68) = 0u;
      *(v26 + 52) = 0u;
      *(v26 + 36) = 0u;
      *(v26 + 36) = *(this + 441);
      *(this + 440) = 1;
    }

    v27 = v24 & 1;
    if (*(this + 442) == v27)
    {
LABEL_33:
      re::RenderGraphMRCNode::execute(this, a2);
      return;
    }

    *(this + 442) = v27;
    v10 = *(this + 52);
    if (v10 > 1)
    {
      v28 = *(this + 54);
      *(v28 + 188) = 0u;
      *(v28 + 172) = 0u;
      *(v28 + 156) = 0u;
      *(v28 + 140) = 0u;
      *(v28 + 140) = *(this + 442);
      *(this + 440) = 1;
      goto LABEL_33;
    }

LABEL_44:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *buf = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v39 = 789;
    v40 = 2048;
    v41 = 1;
    v42 = 2048;
    v43 = v10;
    _os_log_send_and_compose_impl(v33, &v35, buf, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(v4 + 1);
  if (!v5 || !*(v5 + 8))
  {
    v8 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = "MXIMRCNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
LABEL_8:
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    return;
  }

  v6 = *(v5 + 216);
  if (v6)
  {
    v7 = *(v6 + 256);
    goto LABEL_10;
  }

  v8 = *re::graphicsLogObjects(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "MXIMRCNode::execute had invalid reprojectionContext.";
    goto LABEL_8;
  }
}

void *re::allocInfo_MXIColorConversionTileNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2898))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2A20, "MXIColorConversionTileNode");
    __cxa_guard_release(&qword_1EE1C2898);
  }

  return &unk_1EE1C2A20;
}

void re::initInfo_MXIColorConversionTileNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x69F946F693D4FD6;
  v9[1] = "MXIColorConversionTileNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C28A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C28A8))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphMRCNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphMRCNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C28A0 = v7;
    __cxa_guard_release(&qword_1EE1C28A8);
  }

  *(this + 2) = 0x1C000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C28A0;
  *(this + 9) = re::internal::defaultConstruct<re::MXIColorConversionTileNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIColorConversionTileNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIColorConversionTileNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIColorConversionTileNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphMRCNode *re::internal::defaultConstruct<re::MXIColorConversionTileNode>(int a1, int a2, re::RenderGraphMRCNode *this)
{
  *(this + 54) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  result = re::RenderGraphMRCNode::RenderGraphMRCNode(this);
  *result = &unk_1F5D168B8;
  *(result + 220) = 0;
  *(result + 442) = 0;
  return result;
}

re::RenderGraphMRCNode *re::internal::defaultConstructV2<re::MXIColorConversionTileNode>(uint64_t a1)
{
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
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
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::RenderGraphMRCNode::RenderGraphMRCNode(a1);
  *result = &unk_1F5D168B8;
  *(result + 220) = 0;
  *(result + 442) = 0;
  return result;
}

void re::MXIFullscreenNode::execute(re::MXIFullscreenNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v4)
  {
    v5 = *(v4 + 1);
    if (v5 && *(v5 + 8) && *(v5 + 74) != 1)
    {
      if (*(v5 + 216))
      {
        v9 = *(this + 119) - 1;
        if (v9 > 3)
        {
          if (*(this + 360) == 1)
          {
            *(this + 360) = 0;
          }
        }

        else
        {
          v10 = 0x1010102u >> (8 * v9);
          v11 = qword_1E3109428[v9];
          if ((*(this + 360) & 1) == 0)
          {
            *(this + 360) = 1;
          }

          *(this + 361) = v11;
          *(this + 369) = v11;
          *(this + 377) = v10;
        }

        *(this + 48) = *(v4 + 8);
        if (*(*(v5 + 216) + 256) == 1)
        {
          if (!*(this + 472))
          {
            return;
          }
        }

        else if (*(this + 472))
        {
          return;
        }

        re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
      }

      else
      {
        v6 = *re::graphicsLogObjects(v4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 0;
          v7 = "MXIFullscreenNode::execute had invalid reprojectionContext.";
          v8 = &v12;
          goto LABEL_8;
        }
      }
    }

    else if ((atomic_exchange(re::MXIFullscreenNode::execute(re::RenderGraphContext &)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v6 = *re::graphicsLogObjects(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "MXIFullscreenNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
        v8 = buf;
LABEL_8:
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }
  }
}

void *re::allocInfo_MXIFullscreenNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C28B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C28B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2AB0, "MXIFullscreenNode");
    __cxa_guard_release(&qword_1EE1C28B0);
  }

  return &unk_1EE1C2AB0;
}

void re::initInfo_MXIFullscreenNode(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0xDDFF3E6A4FBCD7F6;
  v17[1] = "MXIFullscreenNode";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C28B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C28B8))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphFullscreenNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphFullscreenNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C28E8 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_int(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "stencilStep";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x1DC00000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C28F0 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_BOOL(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "renderOnReprojectionFrames";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x1D800000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C28F8 = v15;
    __cxa_guard_release(&qword_1EE1C28B8);
  }

  *(this + 2) = 0x1E000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C28E8;
  *(this + 9) = re::internal::defaultConstruct<re::MXIFullscreenNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIFullscreenNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIFullscreenNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIFullscreenNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

re::RenderGraphFullscreenNode *re::internal::defaultConstruct<re::MXIFullscreenNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  result = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *result = &unk_1F5D16970;
  *(result + 472) = 1;
  *(result + 119) = 0;
  return result;
}

re::RenderGraphFullscreenNode *re::internal::defaultConstructV2<re::MXIFullscreenNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
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
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *result = &unk_1F5D16970;
  *(result + 472) = 1;
  *(result + 119) = 0;
  return result;
}

void re::MXIMeshCrackNode::execute(re::MXIMeshCrackNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v4)
  {
    v5 = *(v4 + 1);
    if (v5 && *(v5 + 8) && *(v5 + 74) != 1)
    {
      v9 = *(v5 + 216);
      if (v9)
      {
        if (*(v9 + 256) == 1)
        {
          v10 = *(this + 92) - 1;
          if (v10 > 3)
          {
            if (*(this + 347) == 1)
            {
              *(this + 347) = 0;
            }
          }

          else
          {
            v11 = 0x1010102u >> (8 * v10);
            v12 = qword_1E3109428[v10];
            if ((*(this + 347) & 1) == 0)
            {
              *(this + 347) = 1;
            }

            *(this + 348) = v12;
            *(this + 356) = v12;
            *(this + 364) = v11;
          }

          re::RenderGraphMeshNode::execute(this, a2);
        }
      }

      else
      {
        v6 = *re::graphicsLogObjects(v4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 0;
          v7 = "MXIMeshCrackNode::execute had invalid reprojectionContext.";
          v8 = &v13;
          goto LABEL_8;
        }
      }
    }

    else if ((atomic_exchange(re::MXIMeshCrackNode::execute(re::RenderGraphContext &)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v6 = *re::graphicsLogObjects(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "MXIMeshCrackNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
        v8 = buf;
LABEL_8:
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }
  }
}

void *re::allocInfo_MXIMeshCrackNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C28C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C28C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2B40, "MXIMeshCrackNode");
    __cxa_guard_release(&qword_1EE1C28C0);
  }

  return &unk_1EE1C2B40;
}

void re::initInfo_MXIMeshCrackNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x7C4AF479AC00D822;
  v9[1] = "MXIMeshCrackNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C28D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C28D0))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphMeshNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphMeshNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C28C8 = v7;
    __cxa_guard_release(&qword_1EE1C28D0);
  }

  *(this + 2) = 0x17800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C28C8;
  *(this + 9) = re::internal::defaultConstruct<re::MXIMeshCrackNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIMeshCrackNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIMeshCrackNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIMeshCrackNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphMeshNode *re::internal::defaultConstruct<re::MXIMeshCrackNode>(int a1, int a2, re::RenderGraphMeshNode *this)
{
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 349) = 0u;
  result = re::RenderGraphMeshNode::RenderGraphMeshNode(this);
  *result = &unk_1F5D16A18;
  *(result + 92) = 3;
  return result;
}

re::RenderGraphMeshNode *re::internal::defaultConstructV2<re::MXIMeshCrackNode>(_OWORD *a1)
{
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 349) = 0u;
  result = re::RenderGraphMeshNode::RenderGraphMeshNode(a1);
  *result = &unk_1F5D16A18;
  *(result + 92) = 3;
  return result;
}

void re::MXIOffscreenMeshNode::~MXIOffscreenMeshNode(id *this)
{
  re::DynamicString::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::DynamicString::deinit((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIMRCNode::~MXIMRCNode(re::MXIMRCNode *this)
{
  re::RenderGraphMRCNode::~RenderGraphMRCNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIBlurNode::~MXIBlurNode(re::MXIBlurNode *this)
{
  re::RenderGraphMPSImageGaussianBlurNode::~RenderGraphMPSImageGaussianBlurNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIAlphaComputeNode::~MXIAlphaComputeNode(re::MXIAlphaComputeNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIColorConversionTileNode::~MXIColorConversionTileNode(re::MXIColorConversionTileNode *this)
{
  re::RenderGraphMRCNode::~RenderGraphMRCNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIFullscreenNode::~MXIFullscreenNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIMeshCrackNode::~MXIMeshCrackNode(id *this)
{
  re::RenderGraphMeshNode::~RenderGraphMeshNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::MXIOffscreenMeshNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D16AD0;
  return result;
}

void *re::internal::Callable<re::MXIOffscreenMeshNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D16AD0;
  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::MXIFrameData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re12MXIFrameDataE";
  if (("N2re12MXIFrameDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re12MXIFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

re::MXIOffscreenMeshNode *re::MXIOffscreenMeshNode::MXIOffscreenMeshNode(re::MXIOffscreenMeshNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D165F0;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  re::DynamicString::setCapacity(this + 34, 0);
  *(this + 76) = 0;
  *(this + 308) = 0;
  *(this + 41) = 0;
  return this;
}

void re::GuidedFilterOcclusionManager::generatePerFrameGuidedFilterOcclusionData(re::GuidedFilterOcclusionManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F5CF56C8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = (a2 + 16);
  *(a2 + 24) = 0;
  v5 = *this;
  if (*this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v4, this);
      NS::SharedPtr<MTL::Buffer>::operator=((a2 + 24), this + 1);
      v6 = *(this + 2);
      *(a2 + 48) = *(this + 1);
      *(a2 + 64) = v6;
      v7 = *(this + 3);
      v8 = *(this + 4);
      *(a2 + 80) = v7;
      *(a2 + 96) = v8;
      LODWORD(v7) = *(this + 54);
      *(a2 + 184) = *(this + 144);
      v9 = exp2(v7);
      *v10.i64 = simd_quaternion(*(this + 240));
      v43 = v10;
      *v11.i64 = simd_quaternion(*(this + 80));
      v12 = vmulq_f32(v43, xmmword_1E3100CF0);
      v13 = vnegq_f32(v11);
      v14 = vtrn2q_s32(v11, vtrn1q_s32(v11, v13));
      v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v13, 8uLL), *v12.f32, 1), vextq_s8(v14, v14, 8uLL), v12.f32[0]);
      v16 = vrev64q_s32(v11);
      v16.i32[0] = v13.i32[1];
      v16.i32[3] = v13.i32[2];
      LODWORD(v17) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v12, 3), v16, v12, 2), v15).i32[3];
      if (v17 > 1.0)
      {
        v17 = 1.0;
      }

      v18 = acosf(v17);
      v19 = ((v18 + v18) * 180.0) / 3.14159265;
      if (*(this + 48) >= v19)
      {
        v20 = *(this + 38) + 1;
        v21 = v20 < 2;
      }

      else
      {
        v20 = 0;
        v21 = 1;
      }

      *(this + 38) = v20;
      *(a2 + 185) = v21;
      v22 = *(this + 6);
      *(this + 15) = *(this + 5);
      *(this + 16) = v22;
      v23 = *(this + 8);
      *(this + 17) = *(this + 7);
      *(this + 18) = v23;
      v24 = [*(a2 + 16) width];
      v25 = [*(a2 + 16) height];
      v26 = COERCE_FLOAT(*(this + 28));
      v27 = COERCE_FLOAT(HIDWORD(*(this + 28)));
      if (v26 <= v27)
      {
        v28 = COERCE_FLOAT(HIDWORD(*(this + 28)));
      }

      else
      {
        v28 = COERCE_FLOAT(*(this + 28));
      }

      if (v26 >= v27)
      {
        v26 = COERCE_FLOAT(HIDWORD(*(this + 28)));
      }

      v30 = *(this + 52);
      v29 = *(this + 53);
      v31 = vcvtas_u32_f32((v29 * v26) / v28);
      v32 = v30 * v25 / v24;
      v33 = round((acosf(*(this + 4)) * 180.0) / 3.14159265);
      v34 = v33 == 90.0;
      if (v33 == -90.0)
      {
        v34 = 1;
      }

      v35 = !v34;
      if (v34)
      {
        v36 = v31;
      }

      else
      {
        v36 = v29;
      }

      if (v35)
      {
        v37 = v31;
      }

      else
      {
        v37 = v29;
      }

      v38 = 16 * v9;
      LODWORD(v5) = v36 / v38 * v38;
      v39 = v37 / v38 * v38;
      *(a2 + 160) = v5;
      *(a2 + 164) = v39;
      *(a2 + 176) = v5 / v9;
      *(a2 + 180) = v39 / v9;
      *(a2 + 168) = v30;
      *(a2 + 172) = v32;
      v40 = *(this + 10);
      LODWORD(v40) = HIDWORD(v40);
      HIDWORD(v40) = *(this + 10);
      *(a2 + 152) = *(this + 25);
      v41 = *(this + 23);
      v42 = vrev64_s32(*(this + 176));
      *(a2 + 112) = v40;
      *(a2 + 144) = *(this + 49);
      *(a2 + 128) = v42;
      *(a2 + 136) = v41;
      *(a2 + 148) = *(this + 48);
      LOBYTE(v5) = 1;
    }
  }

  *(a2 + 8) = v5;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

uint64_t re::SceneUnderstandingManager::setDepthFeatheringEnabled(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
  }

  return this;
}

void **re::SceneUnderstandingManager::setGuidedFilterOcclusionCameraFeed(uint64_t a1, void **a2, void **a3)
{
  NS::SharedPtr<MTL::Buffer>::operator=((a1 + 16), a2);

  return NS::SharedPtr<MTL::Buffer>::operator=((a1 + 24), a3);
}

double re::SceneUnderstandingManager::SceneUnderstandingManager(re::SceneUnderstandingManager *this)
{
  *this = &unk_1F5D16B28;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 160) = 0;
  *(this + 1) = 0u;
  *(this + 11) = xmmword_1E3109450;
  *(this + 24) = 0x400000007;
  *(this + 25) = 0x3EE147AE3F19999ALL;
  *(this + 26) = 0x93F19999ALL;
  *(this + 27) = 0x3E6147AE3F19999ALL;
  *(this + 28) = 0x20000000200;
  *(this + 58) = 1;
  *(this + 30) = 0;
  *(this + 16) = xmmword_1E3047670;
  *(this + 17) = xmmword_1E3047680;
  result = 0.0;
  *(this + 18) = xmmword_1E30476A0;
  *(this + 19) = xmmword_1E30474D0;
  *(this + 40) = 0;
  return result;
}

void re::SceneUnderstandingManager::~SceneUnderstandingManager(re::SceneUnderstandingManager *this)
{
  *this = &unk_1F5D16B28;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }
}

{
  re::SceneUnderstandingManager::~SceneUnderstandingManager(this);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_SceneUnderstandingService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_551, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_551))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2BD8, "SceneUnderstandingService");
    __cxa_guard_release(&_MergedGlobals_551);
  }

  return &unk_1EE1C2BD8;
}

void re::initInfo_SceneUnderstandingService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x751DCB99112AFALL;
  v6[1] = "SceneUnderstandingService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_SceneUnderstandingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::TypeRegistry *re::createTypeRegistry(uint64_t a1, re::Allocator *a2)
{
  v2 = a2;
  v83 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 864, 8);
  *(&v77 + 1) = 0xFFFFFFFFLL;
  *&v78 = 0;
  *(&v78 + 1) = 0xFFFFFFFFLL;
  *&v79 = 0;
  *(&v79 + 1) = 0xFFFFFFFFLL;
  *&v80 = 0;
  *(&v80 + 1) = 0xFFFFFFFFLL;
  *&v81 = 0;
  *(&v81 + 1) = 0xFFFFFFFFLL;
  v75[0] = v2;
  v75[1] = a1;
  v76 = re::TypeRegistry::TypeRegistry(v4, v2);
  *&v77 = 0;
  *&v60[0] = 6059476;
  *(&v60[0] + 1) = "BOOL";
  re::TypeBuilderHelper::registerBasic<BOOL>(v76, v60, &v74);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 6104748;
  *(&v60[0] + 1) = "char";
  re::TypeBuilderHelper::registerBasic<BOOL>(v4, v60, &v73);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 0x161EEF7A2;
  *(&v60[0] + 1) = "double";
  re::TypeBuilderHelper::registerBasic<double>(v4, v60, &v72);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 195052728;
  *(&v60[0] + 1) = "float";
  re::TypeBuilderHelper::registerBasic<float>(v4, v60, &v71);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 218827000;
  *(&v60[0] + 1) = "short";
  re::TypeBuilderHelper::registerBasic<short>(v4, v60, &v70);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 208862;
  *(&v60[0] + 1) = "int";
  re::TypeBuilderHelper::registerBasic<int>(v4, v60, &v69);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 6655224;
  *(&v60[0] + 1) = "long";
  re::TypeBuilderHelper::registerBasic<long>(v4, v60, &v68);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 0x1947BDF6CLL;
  *(&v60[0] + 1) = "size_t";
  re::TypeBuilderHelper::registerBasic<long>(v4, v60, &v67);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 0x2CE93EC744;
  *(&v60[0] + 1) = "int64_t";
  re::TypeBuilderHelper::registerBasic<long>(v4, v60, &v66);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  v61 = 0x31CD534126;
  v62 = "uint8_t";
  re::TypeBuilderHelper::registerBasic<BOOL>(v4, &v61, v60);
  v78 = v60[0];
  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 0x607DD0D4E68;
  v62 = "uint16_t";
  re::TypeBuilderHelper::registerBasic<short>(v4, &v61, v60);
  v79 = v60[0];
  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 0x607DD0F01DCLL;
  v62 = "uint32_t";
  re::TypeBuilderHelper::registerBasic<int>(v4, &v61, v60);
  v80 = v60[0];
  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 0x607DD11CB1ALL;
  v62 = "uint64_t";
  re::TypeBuilderHelper::registerBasic<long>(v4, &v61, v60);
  v81 = v60[0];
  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 218827000;
  v62 = "short";
  __s[0] = 0x2CE93A4A92;
  __s[1] = "int16_t";
  re::TypeRegistry::typeID(v60, v4, &v61);
  re::TypeRegistry::declareTypeAlias(v4, v60, __s);
  if (__s[0])
  {
    if (__s[0])
    {
    }
  }

  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 208862;
  v62 = "int";
  __s[0] = 0x2CE93BFE06;
  __s[1] = "int32_t";
  re::TypeRegistry::typeID(v60, v4, &v61);
  re::TypeRegistry::declareTypeAlias(v4, v60, __s);
  if (__s[0])
  {
    if (__s[0])
    {
    }
  }

  if (v61)
  {
    if (v61)
    {
    }
  }

  re::TypeBuilderHelper::registerCString(&v65, v4);
  re::TypeBuilderHelper::registerDynamicString(&v64, v4);
  re::TypeBuilderHelper::registerStringID(&v63, v4);
  re::StackScratchAllocator::StackScratchAllocator(&v61);
  re::TypeBuilder::TypeBuilder(v60, &v61);
  __s[0] = 0x258C98EAAF29A10ALL;
  __s[1] = "CallbackSerializerAttribute";
  v59[0] = 0;
  v59[1] = 0xFFFFFFFFLL;
  v20 = re::TypeBuilder::beginObjectType(v60, __s, 1, 1, 8uLL, 8uLL, v59);
  if (__s[0])
  {
    if (__s[0])
    {
    }
  }

  re::TypeBuilder::commitTo(__s, v60, v4);
  v77 = *__s;
  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = 0;
    v24 = *(a1 + 16);
    while (1)
    {
      v25 = *v24;
      v24 += 14;
      if (v25 < 0)
      {
        break;
      }

      if (v22 == ++v23)
      {
        LODWORD(v23) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  v26 = *(a1 + 32);
  if (v23 == v22)
  {
LABEL_71:
    if (v26)
    {
      v29 = 0;
      v30 = *(a1 + 16);
      while (1)
      {
        v31 = *v30;
        v30 += 14;
        if (v31 < 0)
        {
          break;
        }

        if (v26 == ++v29)
        {
          LODWORD(v29) = v26;
          break;
        }
      }
    }

    else
    {
      LODWORD(v29) = 0;
    }

    if (v29 != v26)
    {
      v32 = v26;
      v52 = v2;
      while (1)
      {
        v33 = *(*(a1 + 16) + 56 * v29 + 40);
        if (*(v33 + 16) == 8)
        {
          v34 = *(v33 + 56);
          if (v34)
          {
            break;
          }
        }

LABEL_102:
        if (v32 <= v29 + 1)
        {
          v47 = v29 + 1;
        }

        else
        {
          v47 = v32;
        }

        while (v47 - 1 != v29)
        {
          LODWORD(v29) = v29 + 1;
          if ((*(*(a1 + 16) + 56 * v29) & 0x80000000) != 0)
          {
            goto LABEL_109;
          }
        }

        LODWORD(v29) = v47;
LABEL_109:
        if (v29 == v26)
        {
          goto LABEL_115;
        }
      }

      v51 = *(a1 + 16);
      v35 = *(v33 + 64);
      v53 = v35 + 8 * v34;
      while (1)
      {
        if (**v35 == 2)
        {
          v36 = *(*v35 + 8);
          if (v36)
          {
            v37 = *v36;
            if (*v36)
            {
              break;
            }
          }
        }

LABEL_100:
        v35 += 8;
        if (v35 == v53)
        {
          v32 = *(a1 + 32);
          goto LABEL_102;
        }
      }

      v38 = *(v36 + 1);
      v39 = v38 + 40 * v37;
      v40 = v38 + 8;
      while (1)
      {
        v41 = v40 - 8;
        __s[0] = *(v40 - 8);
        v56 = 0;
        v42 = *(v40 + 8);
        if (v42)
        {
          if (*(v42 + 8))
          {
            v43 = *(v42 + 16);
          }

          else
          {
            v43 = (v42 + 9);
          }

          v44 = re::SerializedReference<re::IntrospectionBase const*>::setString(&__s[1], v43, *v42);
        }

        else
        {
          v44 = re::SerializedReference<re::IntrospectionBase const*>::reset(&__s[1]);
          __s[1] = *v40;
        }

        v45 = *(v40 + 16);
        v58 = *(v40 + 24);
        v57 = v45;
        {
          v48 = *re::foundationSerializationLogObjects(v44);
          v2 = v52;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            if (*(v51 + 56 * v29 + 16))
            {
              v50 = *(v51 + 56 * v29 + 24);
            }

            else
            {
              v50 = v51 + 56 * v29 + 17;
            }

            *buf = 136315138;
            *&buf[4] = v50;
            _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "Invalid polymorphic table in type %s", buf, 0xCu);
          }

          re::SerializedReference<re::IntrospectionBase const*>::reset(&__s[1]);
          goto LABEL_113;
        }

        if (!*buf)
        {
          break;
        }

        re::TypeRegistry::makeStringID(&v54, v4, __s[0]);
        re::TypeRegistry::overridePolymorphicObjectName(v4, buf, &v54);
        if (*&v54.var0)
        {
          if (*&v54.var0)
          {
          }
        }

        re::TypeRegistry::overrideCustomClassID(v4, buf, v57);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&__s[1]);
        v40 += 40;
        if (v41 + 40 == v39)
        {
          goto LABEL_100;
        }
      }

      re::SerializedReference<re::IntrospectionBase const*>::reset(&__s[1]);
      v2 = v52;
      if (v4)
      {
        goto LABEL_114;
      }
    }
  }

  else
  {
    while (1)
    {
      v27 = *(a1 + 16) + 56 * v23;
      if (!__s[0])
      {
        break;
      }

      v26 = *(a1 + 32);
      if (v26 <= v23 + 1)
      {
        v28 = v23 + 1;
      }

      else
      {
        v28 = *(a1 + 32);
      }

      while (v28 - 1 != v23)
      {
        LODWORD(v23) = v23 + 1;
        if ((*(*(a1 + 16) + 56 * v23) & 0x80000000) != 0)
        {
          goto LABEL_70;
        }
      }

      LODWORD(v23) = v28;
LABEL_70:
      if (v23 == v22)
      {
        goto LABEL_71;
      }
    }

LABEL_113:
    if (v4)
    {
LABEL_114:
      re::TypeRegistry::~TypeRegistry(v4);
      (*(*v2 + 40))(v2, v4);
      v4 = 0;
    }
  }

LABEL_115:
  re::TypeBuilder::~TypeBuilder(v60, v21);
  re::StackScratchAllocator::~StackScratchAllocator(&v61);
  return v4;
}

void anonymous namespace::getTypeID(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v112 = *MEMORY[0x1E69E9840];
  v8 = a4[2];
  v9 = *(a2 + 16);
  v10 = a2 + 9;
  if ((*(a2 + 8) & 1) == 0)
  {
    v9 = (a2 + 9);
  }

  if (v9)
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = v9[1];
      if (v12)
      {
        v13 = (v9 + 2);
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

  *&buf[8] = v9;
  *buf = 2 * v11;
  v15 = re::TypeRegistry::typeID(&v90, v8, buf);
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  if (v90)
  {
    *a1 = v90;
    return;
  }

  if (!a3)
  {
    v18 = a4[1];
    v19 = re::Hash<re::DynamicString>::operator()(buf, a2);
    v20 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v18, v19, buf, a2);
    if (*&buf[12] == 0x7FFFFFFF || (a3 = *(*(v18 + 16) + 56 * *&buf[12] + 40)) == 0)
    {
      v21 = *re::foundationSerializationLogObjects(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 8))
        {
          v73 = *(a2 + 16);
        }

        else
        {
          v73 = v10;
        }

        *buf = 136315138;
        *&buf[4] = v73;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Invalid introspection info. Type name: %s", buf, 0xCu);
      }

      *a1 = 0;
      *(a1 + 8) = 0xFFFFFFFFLL;
      return;
    }
  }

  v16 = *(a3 + 16);
  if (v16 > 0xD)
  {
    v17 = 0;
  }

  else
  {
    v17 = byte_1E31094C0[v16];
  }

  re::StringID::StringID(&v88, a2);
  if (*(a3 + 16) == 8)
  {
    StructureVersion = re::introspectionFindStructureVersion(a3, v22);
  }

  else
  {
    StructureVersion = 1;
  }

  re::TypeRegistry::declareType(buf, &v88, a4[2], v17, StructureVersion, 0);
  v90 = *buf;
  v87 = *buf;
  v24 = a4[2];
  v26 = *(a3 + 20);
  v25 = *(a3 + 24);
  re::StackScratchAllocator::StackScratchAllocator(v109);
  re::TypeBuilder::TypeBuilder(buf, v109);
  v28 = 0;
  v29 = *(a3 + 16);
  if (v29 <= 6)
  {
    if (v29 <= 2)
    {
      if (v29 == 1)
      {
        {
          goto LABEL_124;
        }

        v28 = *&v102[0] != 0;
        if (!*&v102[0])
        {
          goto LABEL_184;
        }

        v103 = v102[0];
        re::TypeBuilder::beginPointerType(buf, &v88, 1, v26, v25, &v103, 1);
      }

      else
      {
        if (v29 != 2)
        {
          goto LABEL_184;
        }

        {
          goto LABEL_124;
        }

        v28 = *&v102[0] != 0;
        if (!*&v102[0])
        {
          goto LABEL_184;
        }

        v103 = v102[0];
        re::TypeBuilder::beginArrayType(buf, &v88, &v103, *(a3 + 64));
      }

LABEL_127:
      v101 = v87;
      v52 = &v101;
      goto LABEL_183;
    }

    if (v29 != 3 && v29 != 4 && v29 != 5)
    {
      goto LABEL_184;
    }

    {
      v28 = *&v102[0] != 0;
      if (!*&v102[0])
      {
        goto LABEL_184;
      }

      v103 = v102[0];
      re::TypeBuilder::beginListType(buf, &v88, 1, v26, v25, &v103);
      goto LABEL_126;
    }

LABEL_124:
    v28 = 0;
    goto LABEL_184;
  }

  if (v29 > 8)
  {
    switch(v29)
    {
      case 9:
        if (*(a3 + 64))
        {
          v53 = *(a3 + 20) - 1;
          if (v53 <= 7 && ((0x8Bu >> v53) & 1) != 0)
          {
            v54 = (a4 + qword_1E31094D0[v53]);
            if (*v54)
            {
              v102[0] = *v54;
              v55 = re::TypeBuilder::beginEnumType(buf, &v88, 1, 4294967294, v102);
              v56 = *(a3 + 64);
              v57 = *(v56 + 1);
              v58 = *v56;
              v59 = 8 * v58;
              v86 = v58;
              if (v58)
              {
                v60 = 8 * v58;
                v61 = v57;
                do
                {
                  v62 = *v61;
                  if (**v61 == 1)
                  {
                    v63 = *(v62 + 1);
                    v64 = *(v62 + 2);
                    *&v103.var0 = 0;
                    v103.var1 = &str_67;
                    re::TypeBuilder::addEnumConstant(buf, v63, &v103);
                    if (*&v103.var0)
                    {
                      if (*&v103.var0)
                      {
                      }
                    }
                  }

                  ++v61;
                  v60 -= 8;
                }

                while (v60);
              }

              if (v88 >> 1 == 0x4848FE09E6F816FDLL)
              {
                if (__s1 == "RERotationOrder" || (v55 = strcmp(__s1, "RERotationOrder"), !v55))
                {
                  *&v103.var0 = 174834;
                  v103.var1 = "XYZ";
                  re::TypeBuilder::addEnumConstant(buf, 0, &v103);
                  re::StringID::destroyString(&v103);
                  *&v103.var0 = 176814;
                  v103.var1 = "YZX";
                  re::TypeBuilder::addEnumConstant(buf, 1, &v103);
                  re::StringID::destroyString(&v103);
                  *&v103.var0 = 178614;
                  v103.var1 = "ZXY";
                  re::TypeBuilder::addEnumConstant(buf, 2, &v103);
                  re::StringID::destroyString(&v103);
                  *&v103.var0 = 174894;
                  v103.var1 = "XZY";
                  re::TypeBuilder::addEnumConstant(buf, 3, &v103);
                  re::StringID::destroyString(&v103);
                  *&v103.var0 = 176694;
                  v103.var1 = "YXZ";
                  re::TypeBuilder::addEnumConstant(buf, 4, &v103);
                  re::StringID::destroyString(&v103);
                  *&v103.var0 = 178674;
                  v103.var1 = "ZYX";
                  re::TypeBuilder::addEnumConstant(buf, 5, &v103);
                  re::StringID::destroyString(&v103);
                  *&v103.var0 = 130597342;
                  v103.var1 = "Count";
                  re::TypeBuilder::addEnumConstant(buf, 6, &v103);
                  re::StringID::destroyString(&v103);
                  *&v103.var0 = 0x1FB01113AELL;
                  v103.var1 = "Invalid";
                  re::TypeBuilder::addEnumConstant(buf, 7, &v103);
                  re::StringID::destroyString(&v103);
                }
              }

              if (v86)
              {
                do
                {
                  v65 = *v57;
                  if (**v57 == 2)
                  {
                    v66 = *(v65 + 1);
                    v67 = *(v65 + 2);
                    *&v103.var0 = 0;
                    v103.var1 = &str_67;
                    re::TypeBuilder::addEnumConstantRenaming(buf, v66, &v103);
                    if (*&v103.var0)
                    {
                      if (*&v103.var0)
                      {
                      }
                    }
                  }

                  ++v57;
                  v59 -= 8;
                }

                while (v59);
              }

              v103 = v87;
              re::TypeBuilder::commitTo(buf, &v103);
              v28 = 1;
              goto LABEL_184;
            }
          }
        }

        break;
      case 11:
        *&v102[0] = 0;
        *(&v102[0] + 1) = 0xFFFFFFFFLL;
        v28 = 1;
        re::TypeBuilder::beginObjectType(buf, &v88, 1, 4294967294, v26, v25, v102);
        v68 = (*(**a4 + 32))(*a4, 8, 8);
        *v68 = 0;
        v103 = *(a4 + 3);
        re::TypeBuilder::addAttribute(buf, &v103, v68, 0xFFFFFFFFLL, 1);
        re::TypeBuilder::setIsCallbackSerializer(buf, 1);
LABEL_126:
        re::TypeBuilder::setIsIncomplete(buf, 1);
        goto LABEL_127;
      case 13:
        {
          v28 = *&v102[0] != 0;
          if (!*&v102[0])
          {
            goto LABEL_184;
          }

          v103 = v102[0];
          re::TypeBuilder::beginOptionalType(buf, &v88, v26, v25, &v103);
          goto LABEL_126;
        }

        break;
      default:
        goto LABEL_184;
    }

    goto LABEL_124;
  }

  if (v29 == 7)
  {
    {
      if (*&v102[0])
      {
        v28 = *&v103.var0 != 0;
        if (*&v103.var0)
        {
          v101 = v102[0];
          v97 = v103;
          re::TypeBuilder::beginDictionaryType(buf, &v88, 1, v26, v25, &v101, &v97);
          re::TypeBuilder::setIsIncomplete(buf, 1);
          v108 = v87;
          v52 = &v108;
          goto LABEL_183;
        }

        goto LABEL_184;
      }
    }

    goto LABEL_124;
  }

  *&v108.var0 = 0;
  v108.var1 = 0xFFFFFFFFLL;
  v30 = re::TypeBuilder::beginObjectType(buf, &v88, 1, 4294967294, v26, v25, &v108);
  v31 = *(a3 + 64);
  v32 = *(a3 + 56);
  v33 = 8 * v32;
  v85 = *(a3 + 56);
  if (!v32)
  {
    v51 = 0;
LABEL_129:
    v69 = v88;
    v70 = v88 >> 1;
    if (v88 >> 1 > 0x30E420B6B6B86DA7)
    {
      switch(v70)
      {
        case 0x30E420B6B6B86DA8uLL:
          v71 = __s1;
          if (__s1 == "AnchorComponent")
          {
            goto LABEL_160;
          }

          v72 = "AnchorComponent";
          break;
        case 0x61364BE27E2A4A64uLL:
          v71 = __s1;
          if (__s1 == "BodyTrackingComponent")
          {
            goto LABEL_160;
          }

          v72 = "BodyTrackingComponent";
          break;
        case 0x6AED206A3BA9D6E9uLL:
          v71 = __s1;
          if (__s1 == "ClusterShadowMarkerComponent")
          {
            goto LABEL_160;
          }

          v72 = "ClusterShadowMarkerComponent";
          break;
        default:
          goto LABEL_153;
      }
    }

    else
    {
      switch(v70)
      {
        case 0x10DD8B3803C67A90uLL:
          v71 = __s1;
          if (__s1 == "AnchoringComponent")
          {
            goto LABEL_160;
          }

          v72 = "AnchoringComponent";
          break;
        case 0x1F68485107138B4BuLL:
          v71 = __s1;
          if (__s1 == "SimpleComponent")
          {
            goto LABEL_160;
          }

          v72 = "SimpleComponent";
          break;
        case 0x2E6717DB96117F50uLL:
          v71 = __s1;
          if (__s1 == "PhysicsOriginComponent")
          {
            goto LABEL_160;
          }

          v72 = "PhysicsOriginComponent";
          break;
        default:
LABEL_153:
          if ((v51 & 1) == 0 || (v30 = strlen(__s1), v30 < 0xF) || (*__s1 == 0x6F436D6F74737543 ? (v74 = *(__s1 + 7) == 0x746E656E6F706D6FLL) : (v74 = 0), !v74))
          {
LABEL_161:
            if (v69 >> 1 == 0x29AC414532D4AF9DLL)
            {
              if (__s1 == "RenderGraphFillBufferNode" || (v30 = strcmp(__s1, "RenderGraphFillBufferNode"), !v30))
              {
                *&v101.var0 = 0xA3C1F00635C716B4;
                v101.var1 = "RenderGraphNode";
                re::TypeRegistry::typeID(&v103, v24, &v101);
                re::TypeBuilder::setObjectSuperClass(buf, &v103);
                re::StringID::destroyString(&v101);
                v69 = v88;
              }
            }

            if (v69 >> 1 == 0x7FEDDCE41DFF568DLL)
            {
              v75 = __s1;
              if (__s1 != "RenderGraphSpecifyTargetOperation")
              {
                v76 = "RenderGraphSpecifyTargetOperation";
LABEL_171:
                v30 = strcmp(v75, v76);
                if (v30)
                {
                  goto LABEL_173;
                }
              }
            }

            else
            {
              if (v69 >> 1 != 0x775B4322064CEE52)
              {
                goto LABEL_173;
              }

              v75 = __s1;
              if (__s1 != "RenderGraphSpecifyLaneOperation")
              {
                v76 = "RenderGraphSpecifyLaneOperation";
                goto LABEL_171;
              }
            }

            *&v97.var0 = 0x3AAEC69498BCCC9ELL;
            v97.var1 = "RenderGraphSpecifyOperationBase";
            re::TypeRegistry::typeID(&v101, v24, &v97);
            re::TypeBuilder::setObjectSuperClass(buf, &v101);
            re::StringID::destroyString(&v97);
            goto LABEL_173;
          }

LABEL_160:
          *&v103.var0 = 0x6DAE480279BALL;
          v103.var1 = "Component";
          re::TypeRegistry::typeID(v102, v24, &v103);
          re::TypeBuilder::setObjectSuperClass(buf, v102);
          re::StringID::destroyString(&v103);
          v69 = v88;
          goto LABEL_161;
      }
    }

    v30 = strcmp(v71, v72);
    if (!v30)
    {
      goto LABEL_160;
    }

    goto LABEL_153;
  }

  v84 = 0;
  v34 = 8 * v32;
  v35 = v31;
  do
  {
    v36 = *v35;
    v37 = **v35;
    if (v37 > 3)
    {
      if (v37 == 4)
      {
        if (v36[1] == 1)
        {
          v30 = re::TypeBuilder::setHideObjectWithOneMember(buf, 1);
        }
      }

      else if (v37 == 6)
      {
        v38 = *(v36 + 1);
        if (v38 > v111)
        {
          v30 = re::TypeBuilder::setVersion(buf, v38);
        }
      }
    }

    else if (v37 == 1)
    {
      {
        goto LABEL_199;
      }

      if (!v107)
      {
        goto LABEL_199;
      }

      v39 = v36[10];
      if (v39 <= 1)
      {
        if (!v39)
        {
          v105 = v107;
          re::StringID::StringID(v102, *(v36 + 1));
          re::TypeBuilder::addObjectMember(buf, 0xFFFFFFFFLL, &v105, v102, v36[9]);
          re::StringID::destroyString(v102);
          v45 = *(v36 + 1);
          v30 = strlen(v45);
          if (v30 == 6)
          {
            v47 = *v45 == 1701470831 && *(v45 + 4) == 29795;
            BYTE4(v84) |= v47;
          }

          goto LABEL_91;
        }

        if (v39 != 1)
        {
          goto LABEL_91;
        }

        re::TypeRegistry::typeInfo(v24, &v107, &v103);
        if (v103.var0 != 1 || v104 != 9)
        {
          goto LABEL_199;
        }

        re::TypeBuilder::TypeBuilder(v102, v109);
        re::DynamicString::format(&v101, "%s::%s", v40, __s1, *(v36 + 1));
        re::StringID::StringID(v100, &v101);
        re::TypeInfo::referencedType(&v103.var1, &v97);
        v41 = *v98;
        v99[0] = *&v97.var0;
        v99[1] = v41;
        v96 = *(a4 + 11);
        re::TypeBuilder::beginArrayType(v102, v100, v99, &v96, 0);
        re::StringID::destroyString(v100);
        re::TypeBuilder::commitTo(&v97, v102, v24);
        if (!*&v97.var0)
        {
          goto LABEL_195;
        }

        v95 = v97;
        re::StringID::StringID(v100, *(v36 + 1));
        v43 = v36[9];
        v44 = &v95;
LABEL_87:
        re::TypeBuilder::addObjectMember(buf, 0xFFFFFFFFLL, v44, v100, v43);
        re::StringID::destroyString(v100);
        if (*&v101.var0 && (v101.var1 & 1) != 0)
        {
          (*(**&v101.var0 + 40))();
        }

        re::TypeBuilder::~TypeBuilder(v102, v50);
        goto LABEL_91;
      }

      if (v39 == 2)
      {
        re::TypeRegistry::typeInfo(v24, &v107, &v103);
        if (v103.var0 != 1 || v104 != 9)
        {
          goto LABEL_199;
        }

        re::TypeBuilder::TypeBuilder(v102, v109);
        re::DynamicString::format(&v101, "%s::%s", v48, __s1, *(v36 + 1));
        re::StringID::StringID(v100, &v101);
        re::TypeInfo::referencedType(&v103.var1, &v97);
        v49 = *v98;
        v94[0] = *&v97.var0;
        v94[1] = v49;
        re::TypeBuilder::beginPointerType(v102, v100, 1, 8uLL, 8uLL, v94, 1);
        re::StringID::destroyString(v100);
        v93 = *(a4 + 11);
        re::TypeBuilder::addCustomClassIDForPointer(v102, &v93, 8);
        re::TypeBuilder::commitTo(&v97, v102, v24);
        if (!*&v97.var0)
        {
LABEL_195:
          if (*&v101.var0 && (v101.var1 & 1) != 0)
          {
            (*(**&v101.var0 + 40))();
          }

          re::TypeBuilder::~TypeBuilder(v102, v42);
LABEL_199:
          v28 = 0;
          goto LABEL_184;
        }

        v92 = v97;
        re::StringID::StringID(v100, *(v36 + 1));
        v43 = v36[9];
        v44 = &v92;
        goto LABEL_87;
      }

      if (v39 == 3)
      {
        v106 = v107;
        v30 = re::TypeBuilder::setObjectSuperClass(buf, &v106);
        LOBYTE(v84) = 1;
      }
    }

    else if (v37 == 3)
    {
      {
        goto LABEL_199;
      }

      v91 = v102[0];
      *&v103.var0 = 0xC98E91CCDF0B5FC4;
      v103.var1 = "customClassID";
      re::TypeBuilder::addObjectMemberCustomClassID(buf, &v91, &v103, v36[6]);
      if (*&v103.var0)
      {
        if (*&v103.var0)
        {
        }
      }
    }

LABEL_91:
    ++v35;
    v34 -= 8;
  }

  while (v34);
  v51 = BYTE4(v84);
  if ((v84 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_173:
  if (v85)
  {
    do
    {
      v77 = *v31;
      if (**v31 == 5)
      {
        v78 = *(v77 + 2);
        *&v97.var0 = 0;
        v97.var1 = &str_67;
        v79 = *(v77 + 1);
        *&v107 = 0;
        *(&v107 + 1) = &str_67;
        re::TypeBuilder::addObjectMemberRenaming(buf, &v97, &v107);
        if (v107)
        {
          if (v107)
          {
          }
        }

        if (*&v97.var0)
        {
          if (*&v97.var0)
          {
          }
        }
      }

      ++v31;
      v33 -= 8;
    }

    while (v33);
  }

  v28 = 1;
  re::TypeBuilder::setIsIncomplete(buf, 1);
  v97 = v87;
  v52 = &v97;
LABEL_183:
  re::TypeBuilder::commitTo(buf, v52);
LABEL_184:
  re::TypeBuilder::~TypeBuilder(buf, v27);
  re::StackScratchAllocator::~StackScratchAllocator(v109);
  if (v28)
  {
    *a1 = v90;
  }

  else
  {
    v82 = *re::foundationSerializationLogObjects(v81);
    v81 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);
    if (v81)
    {
      if (*(a2 + 8))
      {
        v83 = *(a2 + 16);
      }

      else
      {
        v83 = v10;
      }

      *buf = 136315138;
      *&buf[4] = v83;
      _os_log_error_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_ERROR, "Failed to create type info for type %s.", buf, 0xCu);
    }

    *a1 = 0;
    *(a1 + 8) = 0xFFFFFFFFLL;
  }

  if (v88)
  {
    if (v88)
    {
    }
  }
}

BOOL anonymous namespace::checkPointer(uint64_t a1)
{
  if (!a1)
  {
    v2 = *re::foundationSerializationLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Error converting PersistedSchema to TypeRegistry. Pointers are already hooked up.", v4, 2u);
    }
  }

  return a1 != 0;
}

uint64_t re::PersistedSchema::addIntrospectionGraph(re::PersistedSchema *this, const re::IntrospectionBase *a2)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13 = a2;
  re::getPrettyTypeName(&v11, a2);
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(this, &v11, &v13);
  v10 = 0;
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  v9 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v7, &v13);
  v14[0] = &unk_1F5D16BE0;
  v14[1] = this;
  v14[2] = v7;
  v14[3] = v14;
  {
    re::introspect<re::IntrospectionBase const*>(BOOL)::info = re::IntrospectionInfo<re::IntrospectionBase const*>::get(0);
  }

  v3 = v8;
  if (v8)
  {
    v4 = re::introspect<re::IntrospectionBase const*>(BOOL)::info;
    do
    {
      v6 = *(v10 + 8 * v3 - 8);
      v8 = v3 - 1;
      ++v9;
      re::IntrospectionWalker::walk(v4, &v6, v14);
      v3 = v8;
    }

    while (v8);
  }

  std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v14);
  if (v7[0] && v10)
  {
    (*(*v7[0] + 40))();
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

uint64_t re::PersistedSchema::introspectionInfo(re::PersistedSchema *this, char *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  *v25 = a2;
  v4 = re::Hash<re::DynamicString>::operator()(&v26, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(this, v25, v4, &v26);
  if (HIDWORD(v26) != 0x7FFFFFFF)
  {
    return *(*(this + 2) + 56 * HIDWORD(v26) + 40);
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  {
    re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v10);
  }

  *&v26 = re::introspect<BOOL>(BOOL)::info;
  {
    re::introspect<char>(BOOL)::info = re::introspect_char(0, v11);
  }

  *(&v26 + 1) = re::introspect<char>(BOOL)::info;
  {
    re::introspect<double>(BOOL)::info = re::introspect_double(0, v12);
  }

  *&v27 = re::introspect<double>(BOOL)::info;
  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v13);
  }

  *(&v27 + 1) = re::introspect<float>(BOOL)::info;
  {
    re::introspect<short>(BOOL)::info = re::introspect_short(0, v14);
  }

  *&v28 = re::introspect<short>(BOOL)::info;
  {
    re::introspect<int>(BOOL)::info = re::introspect_int(0, v15);
  }

  *(&v28 + 1) = re::introspect<int>(BOOL)::info;
  {
    re::introspect<long>(BOOL)::info = re::introspect_long(0, v16);
  }

  *&v29 = re::introspect<long>(BOOL)::info;
  {
    re::introspect<unsigned long>(BOOL)::info = re::introspect_size_t(0, v17);
  }

  *(&v29 + 1) = re::introspect<unsigned long>(BOOL)::info;
  {
    re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v18);
  }

  *&v30 = re::introspect<long long>(BOOL)::info;
  {
    re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v19);
  }

  *(&v30 + 1) = re::introspect<unsigned char>(BOOL)::info;
  {
    re::introspect<unsigned short>(BOOL)::info = re::introspect_uint16_t(0, v20);
  }

  *&v31 = re::introspect<unsigned short>(BOOL)::info;
  {
    re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v21);
  }

  *(&v31 + 1) = re::introspect<unsigned int>(BOOL)::info;
  {
    re::introspect<unsigned long long>(BOOL)::info = re::introspect_uint64_t(0, v22);
  }

  v5 = 0;
  v32 = re::introspect<unsigned long long>(BOOL)::info;
  while (1)
  {
    v6 = *(&v26 + v5);
    if (!strcmp(a2, *(v6 + 48)))
    {
      break;
    }

    v5 += 8;
    if (v5 == 104)
    {
      if (!strcmp(a2, "DynamicString"))
      {
        {
          re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v23);
        }

        return re::introspect<re::DynamicString>(BOOL)::info;
      }

      else
      {
        v7 = strcmp(a2, "StringID");
        if (v7)
        {
          v8 = *re::foundationSerializationLogObjects(v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 136315138;
            *&v25[4] = a2;
            _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Unknown type name in PersistedSchema '%s'", v25, 0xCu);
          }

          return 0;
        }

        else
        {
          {
            re::introspect<re::StringID>(BOOL)::info = re::IntrospectionInfo<re::StringID>::get(0, v24);
          }

          return re::introspect<re::StringID>(BOOL)::info;
        }
      }
    }
  }

  return v6;
}

__n128 anonymous namespace::serializePersistedSchemaInternal@<Q0>(_anonymous_namespace_ *a1@<X0>, int a2@<W1>, _anonymous_namespace_ *a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    {
      re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
    }

    if ((v13 & 1) == 0)
    {
      v12 = "Failed to serialized schema in binary format.";
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (a2 != 1)
  {
    v12 = "Invalid format argument.";
    goto LABEL_11;
  }

  {
    {
      re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
    }
  }

  v16 = *(re::introspect<re::PersistedSchema>(BOOL)::info + 2);
  if (v10)
  {
LABEL_8:
    *a4 = 1;
    return result;
  }

  v12 = "Failed to serialized schema as JSON.";
LABEL_11:
  result = v16;
  v14 = v17;
  v15 = v18;
  *a4 = 0;
  *(a4 + 8) = result;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  return result;
}

__n128 anonymous namespace::deserializePersistedSchemaInternal@<Q0>(_anonymous_namespace_ *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = (*(*a4 + 32))(a4, 48, 8);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v10, a4, 3);
  if (!a2)
  {
    {
      re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
    }

    if (v17)
    {
      goto LABEL_14;
    }

    v20 = "Failed to deserialize schema from binary format.";
LABEL_21:
    result = v26;
    v21 = v27;
    v22 = v28;
    *a5 = 0;
    *(a5 + 8) = result;
    *(a5 + 24) = v21;
    *(a5 + 32) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v20 = "Invalid format argument.";
    goto LABEL_21;
  }

  {
    re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
  }

  v23 = *(re::introspect<re::PersistedSchema>(BOOL)::info + 2);
  if (v26.n128_u8[0])
  {
LABEL_14:
    if (!a3)
    {
      goto LABEL_17;
    }

    {
      re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
    }

    v23.n128_u8[0] = 1;
    v26.n128_u64[0] = &unk_1F5D16C28;
    v26.n128_u64[1] = v10;
    v27 = &v23;
    v28 = &v26;
    re::IntrospectionWalker::walk(re::introspect<re::PersistedSchema>(BOOL)::info, v10, &v26);
    v18 = v23.n128_u8[0];
    v19 = std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](&v26);
    if (v18)
    {
LABEL_17:
      *a5 = 1;
      *(a5 + 8) = v10;
      return result;
    }

    v20 = "Failed to hook up schema.";
    goto LABEL_21;
  }

  if (v29)
  {
    v14 = *&v30[7];
  }

  else
  {
    v14 = v30;
  }

  re::DynamicString::format(&v23, "Failed to deserialize schema from JSON. Details: %s", v12, v14);
  result = v23;
  v15 = v24;
  v16 = v25;
  *a5 = 0;
  *(a5 + 8) = result;
  *(a5 + 24) = v15;
  *(a5 + 32) = v16;
  if (v26.n128_u8[0] & 1) == 0 && v28 && (v29)
  {
    (*(v28->n128_u64[0] + 40))();
  }

  return result;
}

void re::introspect_IntrospectionBasePointer(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2C78))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C3618, "IntrospectionBasePointer", 16, 8, 0, 0);
    qword_1EE1C3618 = &unk_1F5D0C698;
    qword_1EE1C3658 = re::internal::defaultConstruct<re::SerializedReference<re::IntrospectionBase const*>>;
    qword_1EE1C3680 = 0;
    qword_1EE1C3678 = 0;
    dword_1EE1C3628 = 11;
    __cxa_guard_release(&qword_1EE1C2C78);
  }

  if ((_MergedGlobals_552 & 1) == 0)
  {
    _MergedGlobals_552 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C3618, a2);
    v3[0] = 0x2DF81B3A31597722;
    v3[1] = "IntrospectionBasePointer";
    xmmword_1EE1C3638 = v4;
    if (v3[0])
    {
      if (v3[0])
      {
      }
    }
  }
}

uint64_t anonymous namespace::introspectionBaseSerialize(int a1, int a2, re **a3, re::DynamicString *this)
{
  if (*a3)
  {
    re::getPrettyTypeName(&v6, *a3);
    re::DynamicString::operator=(this, &v6);
    if (v6 && (v7 & 1) != 0)
    {
      (*(*v6 + 40))();
    }
  }

  else
  {
    v6 = "";
    v7 = 0;
    re::DynamicString::operator=(this, &v6);
  }

  return 1;
}

void re::introspectionTable_IntrospectionBase(re *this)
{
  if ((byte_1EE1C2C69 & 1) == 0)
  {
    byte_1EE1C2C69 = 1;
    if ((atomic_load_explicit(&qword_1EE1C2C80, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE1C2C80);
      if (v1)
      {
        qword_1ECF19FD0 = "IntrospectionBasic";
        v2 = qword_1EE1C2CB0;
        if (!qword_1EE1C2CB0)
        {
          v2 = re::allocInfo_IntrospectionBasic(v1);
          qword_1EE1C2CB0 = v2;
          re::initInfo_IntrospectionBasic(v2, v3);
        }

        qword_1ECF19FE0 = 0;
        unk_1ECF19FE8 = 0;
        qword_1ECF19FD8 = v2;
        dword_1ECF19FF0 = 0;
        qword_1ECF19FF8 = "IntrospectionPointer";
        v4 = qword_1EE1C2CC8;
        if (!qword_1EE1C2CC8)
        {
          v4 = re::allocInfo_IntrospectionPointer(v1);
          qword_1EE1C2CC8 = v4;
          re::initInfo_IntrospectionPointer(v4, v5);
        }

        qword_1ECF1A000 = v4;
        *algn_1ECF1A008 = 0;
        qword_1ECF1A010 = 1;
        dword_1ECF1A018 = 0;
        qword_1ECF1A020 = "IntrospectionCStyleArray";
        v6 = qword_1EE1C2CE0;
        if (!qword_1EE1C2CE0)
        {
          v6 = re::allocInfo_IntrospectionCStyleArray(v1);
          qword_1EE1C2CE0 = v6;
          re::initInfo_IntrospectionCStyleArray(v6, v7);
        }

        qword_1ECF1A028 = v6;
        unk_1ECF1A030 = 0;
        qword_1ECF1A038 = 2;
        dword_1ECF1A040 = 0;
        qword_1ECF1A048 = "IntrospectionDynamicArrayBase";
        v8 = qword_1EE1C2CF8;
        if (!qword_1EE1C2CF8)
        {
          v8 = re::allocInfo_IntrospectionDynamicArrayBase(v1);
          qword_1EE1C2CF8 = v8;
          re::initInfo_IntrospectionDynamicArrayBase(v8, v9);
        }

        qword_1ECF1A050 = v8;
        *algn_1ECF1A058 = 0;
        qword_1ECF1A060 = 3;
        dword_1ECF1A068 = 0;
        qword_1ECF1A070 = "IntrospectionFixedArrayBase";
        v10 = qword_1EE1C2D10;
        if (!qword_1EE1C2D10)
        {
          v10 = re::allocInfo_IntrospectionFixedArrayBase(v1);
          qword_1EE1C2D10 = v10;
          re::initInfo_IntrospectionFixedArrayBase(v10, v11);
        }

        qword_1ECF1A078 = v10;
        unk_1ECF1A080 = 0;
        qword_1ECF1A088 = 4;
        dword_1ECF1A090 = 0;
        qword_1ECF1A098 = "IntrospectionDataArrayBase";
        v12 = qword_1EE1C2D28;
        if (!qword_1EE1C2D28)
        {
          v12 = re::allocInfo_IntrospectionDataArrayBase(v1);
          qword_1EE1C2D28 = v12;
          re::initInfo_IntrospectionDataArrayBase(v12, v13);
        }

        qword_1ECF1A0A0 = v12;
        *algn_1ECF1A0A8 = 0;
        qword_1ECF1A0B0 = 5;
        dword_1ECF1A0B8 = 0;
        qword_1ECF1A0C0 = "IntrospectionDynamicString";
        v14 = qword_1EE1C2D48;
        if (!qword_1EE1C2D48)
        {
          v14 = re::allocInfo_IntrospectionDynamicString(v1);
          qword_1EE1C2D48 = v14;
          re::initInfo_IntrospectionDynamicString(v14, v15);
        }

        qword_1ECF1A0C8 = v14;
        unk_1ECF1A0D0 = 0;
        qword_1ECF1A0D8 = 6;
        dword_1ECF1A0E0 = 0;
        qword_1ECF1A0E8 = "IntrospectionHashTableBase";
        v16 = qword_1EE1C2D60;
        if (!qword_1EE1C2D60)
        {
          v16 = re::allocInfo_IntrospectionHashTableBase(v1);
          qword_1EE1C2D60 = v16;
          re::initInfo_IntrospectionHashTableBase(v16, v17);
        }

        qword_1ECF1A0F0 = v16;
        *algn_1ECF1A0F8 = 0;
        qword_1ECF1A100 = 7;
        dword_1ECF1A108 = 0;
        qword_1ECF1A110 = "IntrospectionStructure";
        v18 = qword_1EE1C2EA0;
        if (!qword_1EE1C2EA0)
        {
          v18 = re::allocInfo_IntrospectionStructure(v1);
          qword_1EE1C2EA0 = v18;
          re::initInfo_IntrospectionStructure(v18, v19);
        }

        qword_1ECF1A118 = v18;
        unk_1ECF1A120 = 0;
        qword_1ECF1A128 = 8;
        dword_1ECF1A130 = 0;
        qword_1ECF1A138 = "IntrospectionEnum";
        v20 = qword_1EE1C2F38;
        if (!qword_1EE1C2F38)
        {
          v20 = re::allocInfo_IntrospectionEnum(v1);
          qword_1EE1C2F38 = v20;
          re::initInfo_IntrospectionEnum(v20, v21);
        }

        qword_1ECF1A140 = v20;
        *algn_1ECF1A148 = 0;
        qword_1ECF1A150 = 9;
        dword_1ECF1A158 = 0;
        qword_1ECF1A160 = "IntrospectionStringID";
        v22 = qword_1EE1C2F58;
        if (!qword_1EE1C2F58)
        {
          v22 = re::allocInfo_IntrospectionStringID(v1);
          qword_1EE1C2F58 = v22;
          re::initInfo_IntrospectionStringID(v22, v23);
        }

        qword_1ECF1A168 = v22;
        unk_1ECF1A170 = 0;
        qword_1ECF1A178 = 10;
        dword_1ECF1A180 = 0;
        qword_1ECF1A188 = "IntrospectionCallbackSerializer";
        v24 = qword_1EE1C2F78;
        if (!qword_1EE1C2F78)
        {
          v24 = re::allocInfo_IntrospectionCallbackSerializer(v1);
          qword_1EE1C2F78 = v24;
          re::initInfo_IntrospectionCallbackSerializer(v24, v25);
        }

        qword_1ECF1A190 = v24;
        *algn_1ECF1A198 = 0;
        qword_1ECF1A1A0 = 11;
        dword_1ECF1A1A8 = 0;
        qword_1ECF1A1B0 = "IntrospectionOptionalBase";
        v26 = qword_1EE1C2F90;
        if (!qword_1EE1C2F90)
        {
          v26 = re::allocInfo_IntrospectionOptionalBase(v1);
          qword_1EE1C2F90 = v26;
          re::initInfo_IntrospectionOptionalBase(v26, v27);
        }

        qword_1ECF1A1B8 = v26;
        unk_1ECF1A1C0 = 0;
        qword_1ECF1A1C8 = 13;
        dword_1ECF1A1D0 = 0;
        __cxa_guard_release(&qword_1EE1C2C80);
      }
    }

    dword_1EE1C3000 = 13;
    qword_1EE1C3008 = &qword_1ECF19FD0;
  }
}

void *re::allocInfo_IntrospectionBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2C88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3688, "IntrospectionBase");
    __cxa_guard_release(&qword_1EE1C2C88);
  }

  return &unk_1EE1C3688;
}

void re::initInfo_IntrospectionBase(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xAF6C477EF8EF2A18;
  v15[1] = "IntrospectionBase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C2C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2C90))
  {
    v5 = re::introspectionAllocator();
    re::introspect_IntrospectionType(v5, v6);
    v7 = (*(*v5 + 32))(v5, 32, 8);
    *v7 = 3;
    *(v7 + 8) = &qword_1EE1C3528;
    *(v7 + 16) = 0;
    *(v7 + 24) = 16;
    qword_1EE1C30F0 = v7;
    v8 = re::introspectionAllocator();
    re::introspectionTable_IntrospectionBase(v8);
    v9 = (*(*v8 + 32))(v8, 16, 8);
    *v9 = 2;
    *(v9 + 8) = &dword_1EE1C3000;
    qword_1EE1C30F8 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::introspect_int(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "size";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x1400000001;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1C3100 = v13;
    __cxa_guard_release(&qword_1EE1C2C90);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C30F0;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::IntrospectionBase>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *v3 = &unk_1F5CACBD8;
  v3[2] = 0;
  *(v3 + 22) = 0;
  v3[4] = 0;
  *&result = 0xFFFFFFFFLL;
  v3[5] = 0xFFFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionBase>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v1 = &unk_1F5CACBD8;
  v1[2] = 0;
  *(v1 + 22) = 0;
  v1[4] = 0;
  *&result = 0xFFFFFFFFLL;
  v1[5] = 0xFFFFFFFFLL;
  return result;
}

void *re::allocInfo_IntrospectionBasic(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3718, "IntrospectionBasic");
    __cxa_guard_release(&qword_1EE1C2CA0);
  }

  return &unk_1EE1C3718;
}

void re::initInfo_IntrospectionBasic(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x3E1CA86024F61AA6;
  v14[1] = "IntrospectionBasic";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C2CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CA8))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3010 = v9;
    v10 = re::introspectionAllocator();
    re::IntrospectionInfo<char const*>::get(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "name";
    *(v12 + 16) = &qword_1EE1C3250;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x3000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3018 = v12;
    __cxa_guard_release(&qword_1EE1C2CA8);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3010;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionBasic>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionBasic>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionBasic>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionBasic>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::IntrospectionInfo<char const*>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2FC0))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3250);
    __cxa_guard_release(&qword_1EE1C2FC0);
  }

  if ((byte_1EE1C2C70 & 1) == 0)
  {
    byte_1EE1C2C70 = 1;
    v2 = re::introspect_char(1, a2);
    ArcSharedObject::ArcSharedObject(&qword_1EE1C3250, 0);
    qword_1EE1C3260 = 0x800000001;
    dword_1EE1C3268 = 8;
    word_1EE1C326C = 0;
    *&xmmword_1EE1C3270 = 0;
    *(&xmmword_1EE1C3270 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C3250 = &unk_1F5CBD2C0;
    qword_1EE1C3280 = v2;
    qword_1EE1C3288 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v9, &qword_1EE1C3250);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = v2[2];
      v7 = v8;
    }

    xmmword_1EE1C3270 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::IntrospectionBasic>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 22) = 0;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C558;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionBasic>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 22) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C558;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  return result;
}

void *re::allocInfo_IntrospectionPointer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C37A8, "IntrospectionPointer");
    __cxa_guard_release(&qword_1EE1C2CB8);
  }

  return &unk_1EE1C37A8;
}

void re::initInfo_IntrospectionPointer(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x299410F0B7BB8444;
  v14[1] = "IntrospectionPointer";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C2CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CC0))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3020 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "pointeeInfo";
    *(v12 + 16) = &qword_1EE1C3618;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x3000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3028 = v12;
    __cxa_guard_release(&qword_1EE1C2CC0);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3020;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPointer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPointer>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPointer>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPointer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::allocInfo_IntrospectionCStyleArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CD0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3838, "IntrospectionCStyleArray");
    __cxa_guard_release(&qword_1EE1C2CD0);
  }

  return &unk_1EE1C3838;
}

void re::initInfo_IntrospectionCStyleArray(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x2DFB4F6972AAA2A0;
  v18[1] = "IntrospectionCStyleArray";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C2CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CD8))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3108 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "elementInfo";
    *(v12 + 16) = &qword_1EE1C3618;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x3000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3110 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_int(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "length";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x4000000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C3118 = v16;
    __cxa_guard_release(&qword_1EE1C2CD8);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3108;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionCStyleArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionCStyleArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionCStyleArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionCStyleArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::IntrospectionCStyleArray *re::internal::defaultConstruct<re::IntrospectionCStyleArray>(int a1, int a2, re::IntrospectionCStyleArray *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return re::IntrospectionCStyleArray::IntrospectionCStyleArray(this);
}

re::IntrospectionCStyleArray *re::internal::defaultConstructV2<re::IntrospectionCStyleArray>(re::IntrospectionCStyleArray *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return re::IntrospectionCStyleArray::IntrospectionCStyleArray(this);
}

void *re::allocInfo_IntrospectionDynamicArrayBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C38C8, "IntrospectionDynamicArrayBase");
    __cxa_guard_release(&qword_1EE1C2CE8);
  }

  return &unk_1EE1C38C8;
}

void re::initInfo_IntrospectionDynamicArrayBase(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x9D159A3DE5177A0CLL;
  v14[1] = "IntrospectionDynamicArrayBase";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C2CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CF0))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3030 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "elementInfo";
    *(v12 + 16) = &qword_1EE1C3618;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x3000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3038 = v12;
    __cxa_guard_release(&qword_1EE1C2CF0);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3030;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionDynamicArrayBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionDynamicArrayBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionDynamicArrayBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionDynamicArrayBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::allocInfo_IntrospectionFixedArrayBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3958, "IntrospectionFixedArrayBase");
    __cxa_guard_release(&qword_1EE1C2D00);
  }

  return &unk_1EE1C3958;
}

void re::initInfo_IntrospectionFixedArrayBase(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xC4BC7EA0B7596862;
  v14[1] = "IntrospectionFixedArrayBase";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C2D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D08))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3040 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "elementInfo";
    *(v12 + 16) = &qword_1EE1C3618;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x3000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3048 = v12;
    __cxa_guard_release(&qword_1EE1C2D08);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3040;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionFixedArrayBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionFixedArrayBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionFixedArrayBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionFixedArrayBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::allocInfo_IntrospectionDataArrayBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C39E8, "IntrospectionDataArrayBase");
    __cxa_guard_release(&qword_1EE1C2D18);
  }

  return &unk_1EE1C39E8;
}

void re::initInfo_IntrospectionDataArrayBase(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xBC1C8D611DE318CALL;
  v14[1] = "IntrospectionDataArrayBase";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C2D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D20))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3050 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "elementInfo";
    *(v12 + 16) = &qword_1EE1C3618;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x3000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3058 = v12;
    __cxa_guard_release(&qword_1EE1C2D20);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3050;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionDataArrayBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionDataArrayBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionDataArrayBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionDataArrayBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::allocInfo_IntrospectionDynamicString(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3A78, "IntrospectionDynamicString");
    __cxa_guard_release(&qword_1EE1C2D30);
  }

  return &unk_1EE1C3A78;
}

void re::initInfo_IntrospectionDynamicString(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xCCE6C9CCDB070AAALL;
  v11[1] = "IntrospectionDynamicString";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1C2D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D40))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C2D38 = v9;
    __cxa_guard_release(&qword_1EE1C2D40);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2D38;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionDynamicString>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionDynamicString>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionDynamicString>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionDynamicString>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

double re::internal::defaultConstruct<re::IntrospectionDynamicString>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0x2000000006;
  *(v3 + 24) = 8;
  *(v3 + 28) = 0;
  *(v3 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C618;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionDynamicString>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0x2000000006;
  *(v1 + 24) = 8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C618;
  return result;
}

void *re::allocInfo_IntrospectionHashTableBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3B08, "IntrospectionHashTableBase");
    __cxa_guard_release(&qword_1EE1C2D50);
  }

  return &unk_1EE1C3B08;
}

void re::initInfo_IntrospectionHashTableBase(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x138AE0C4810624ECLL;
  v17[1] = "IntrospectionHashTableBase";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C2D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D58))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3120 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "keyInfo";
    *(v12 + 16) = &qword_1EE1C3618;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x3000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3128 = v12;
    v13 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v13, v14);
    v15 = (*(*v13 + 32))(v13, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "valueInfo";
    *(v15 + 16) = &qword_1EE1C3618;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x4000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C3130 = v15;
    __cxa_guard_release(&qword_1EE1C2D58);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3120;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionHashTableBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionHashTableBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionHashTableBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionHashTableBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

re::IntrospectionHashTableBase *re::internal::defaultConstruct<re::IntrospectionHashTableBase>(int a1, int a2, re::IntrospectionHashTableBase *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return re::IntrospectionHashTableBase::IntrospectionHashTableBase(this);
}

re::IntrospectionHashTableBase *re::internal::defaultConstructV2<re::IntrospectionHashTableBase>(re::IntrospectionHashTableBase *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return re::IntrospectionHashTableBase::IntrospectionHashTableBase(this);
}

void *re::allocInfo_IntrospectionPolymorphicType(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3B98, "IntrospectionPolymorphicType");
    __cxa_guard_release(&qword_1EE1C2D68);
  }

  return &unk_1EE1C3B98;
}

void re::initInfo_IntrospectionPolymorphicType(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x6B4F0BF1FB5DBC2ALL;
  v16[1] = "IntrospectionPolymorphicType";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1C2D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D70))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<char const*>::get(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "name";
    *(v7 + 16) = &qword_1EE1C3250;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C3138 = v7;
    v8 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v8, v9);
    v10 = (*(*v8 + 32))(v8, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "info";
    *(v10 + 16) = &qword_1EE1C3618;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000002;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1C3140 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint64_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "typeData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1800000003;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1C3148 = v14;
    __cxa_guard_release(&qword_1EE1C2D70);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3138;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPolymorphicType>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPolymorphicType>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPolymorphicType>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPolymorphicType>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

uint64_t re::internal::defaultConstruct<re::IntrospectionPolymorphicType>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 8);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionPolymorphicType>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_IntrospectionPolymorphicTable(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_223, "IntrospectionPolymorphicTable");
    __cxa_guard_release(&qword_1EE1C2D80);
  }

  return &_MergedGlobals_223;
}

void re::initInfo_IntrospectionPolymorphicTable(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xFE92724D704390A6;
  v10[1] = "IntrospectionPolymorphicTable";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C2D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D90))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<re::IntrospectionPolymorphicType const*>::get(v5);
    v7 = re::introspect_uint32_t(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "table";
    *(v8 + 16) = &qword_1EE1C3290;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0x800000001;
    *(v8 + 40) = 1;
    *(v8 + 48) = v7;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1C2D88 = v8;
    __cxa_guard_release(&qword_1EE1C2D90);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2D88;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPolymorphicTable>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPolymorphicTable>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPolymorphicTable>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPolymorphicTable>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::IntrospectionInfo<re::IntrospectionPolymorphicType const*>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C2FC8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C2FC8);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3290);
      __cxa_guard_release(&qword_1EE1C2FC8);
    }
  }

  if ((byte_1EE1C2C71 & 1) == 0)
  {
    byte_1EE1C2C71 = 1;
    v1 = qword_1EE1C2D78;
    if (!qword_1EE1C2D78)
    {
      v1 = re::allocInfo_IntrospectionPolymorphicType(a1);
      qword_1EE1C2D78 = v1;
      re::initInfo_IntrospectionPolymorphicType(v1, v2);
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1C3290, 0);
    qword_1EE1C32A0 = 0x800000001;
    dword_1EE1C32A8 = 8;
    word_1EE1C32AC = 0;
    *&xmmword_1EE1C32B0 = 0;
    *(&xmmword_1EE1C32B0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C3290 = &unk_1F5CBD2C0;
    qword_1EE1C32C0 = v1;
    unk_1EE1C32C8 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v9, &qword_1EE1C3290);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = *(v1 + 2);
      v7 = v8;
    }

    xmmword_1EE1C32B0 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionPolymorphicTable>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void re::introspect_IntrospectionMemberType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2DA0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C2DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DA8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C3450, "IntrospectionMemberType", 4, 4, 1, 1);
      qword_1EE1C3450 = &unk_1F5D0C658;
      qword_1EE1C3490 = &re::introspect_IntrospectionMemberType(BOOL)::enumTable;
      dword_1EE1C3460 = 9;
      __cxa_guard_release(&qword_1EE1C2DA8);
    }

    if (byte_1EE1C2C6A)
    {
      break;
    }

    byte_1EE1C2C6A = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C3450, a2);
    v37 = 0x859EBCF7EF0CCDDELL;
    v38 = "IntrospectionMemberType";
    v41 = 208862;
    v42 = "int";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C3490;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1C3470 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1C2DA0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Simple";
      qword_1EE1C31E0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "ArrayWithSize";
      qword_1EE1C31E8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "PolymorphicWithInlineType";
      qword_1EE1C31F0 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Parent";
      qword_1EE1C31F8 = v35;
      __cxa_guard_release(&qword_1EE1C2DA0);
    }
  }
}

void re::introspect_IntrospectionStructureAttributeType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2DB0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C2DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DB8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C3498, "IntrospectionStructureAttributeType", 4, 4, 1, 1);
      qword_1EE1C3498 = &unk_1F5D0C658;
      qword_1EE1C34D8 = &re::introspect_IntrospectionStructureAttributeType(BOOL)::enumTable;
      dword_1EE1C34A8 = 9;
      __cxa_guard_release(&qword_1EE1C2DB8);
    }

    if (byte_1EE1C2C6B)
    {
      break;
    }

    byte_1EE1C2C6B = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C3498, a2);
    v41 = 0xE05DA9CA5EB8957CLL;
    v42 = "IntrospectionStructureAttributeType";
    v45 = 208862;
    v46 = "int";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C34D8;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
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
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
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
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1C34B8 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v40);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1C2DB0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 1;
      *(v29 + 16) = "Member";
      qword_1EE1C3220 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 2;
      *(v31 + 16) = "PolymorphicTable";
      qword_1EE1C3228 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 3;
      *(v33 + 16) = "PolymorphicType";
      qword_1EE1C3230 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 4;
      *(v35 + 16) = "Flags";
      qword_1EE1C3238 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 5;
      *(v37 + 16) = "RenameMember";
      qword_1EE1C3240 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 6;
      *(v39 + 16) = "ComplexVersioningFunction";
      qword_1EE1C3248 = v39;
      __cxa_guard_release(&qword_1EE1C2DB0);
    }
  }
}

void re::introspectionTable_IntrospectionStructureAttribute(re *this)
{
  if ((byte_1EE1C2C6C & 1) == 0)
  {
    byte_1EE1C2C6C = 1;
    if ((atomic_load_explicit(&qword_1EE1C2DC0, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE1C2DC0);
      if (v1)
      {
        qword_1ECF19EB8 = "IntrospectionMember";
        v2 = qword_1EE1C2DF0;
        if (!qword_1EE1C2DF0)
        {
          v2 = re::allocInfo_IntrospectionMember(v1);
          qword_1EE1C2DF0 = v2;
          re::initInfo_IntrospectionMember(v2, v3);
        }

        qword_1ECF19EC0 = v2;
        *algn_1ECF19EC8 = 0;
        qword_1ECF19ED0 = 1;
        dword_1ECF19ED8 = 0;
        qword_1ECF19EE0 = "IntrospectionPolymorphicTableAttribute";
        v4 = qword_1EE1C2E08;
        if (!qword_1EE1C2E08)
        {
          v4 = re::allocInfo_IntrospectionPolymorphicTableAttribute(v1);
          qword_1EE1C2E08 = v4;
          re::initInfo_IntrospectionPolymorphicTableAttribute(v4, v5);
        }

        qword_1ECF19EE8 = v4;
        unk_1ECF19EF0 = 0;
        qword_1ECF19EF8 = 2;
        dword_1ECF19F00 = 0;
        qword_1ECF19F08 = "IntrospectionPolymorphicTypeAttribute";
        v6 = qword_1EE1C2E20;
        if (!qword_1EE1C2E20)
        {
          v6 = re::allocInfo_IntrospectionPolymorphicTypeAttribute(v1);
          qword_1EE1C2E20 = v6;
          re::initInfo_IntrospectionPolymorphicTypeAttribute(v6, v7);
        }

        qword_1ECF19F10 = v6;
        *algn_1ECF19F18 = 0;
        qword_1ECF19F20 = 3;
        dword_1ECF19F28 = 0;
        qword_1ECF19F30 = "IntrospectionFlagsAttribute";
        v8 = qword_1EE1C2E38;
        if (!qword_1EE1C2E38)
        {
          v8 = re::allocInfo_IntrospectionFlagsAttribute(v1);
          qword_1EE1C2E38 = v8;
          re::initInfo_IntrospectionFlagsAttribute(v8, v9);
        }

        qword_1ECF19F38 = v8;
        unk_1ECF19F40 = 0;
        qword_1ECF19F48 = 4;
        dword_1ECF19F50 = 0;
        qword_1ECF19F58 = "IntrospectionRenameMemberAttribute";
        v10 = qword_1EE1C2E50;
        if (!qword_1EE1C2E50)
        {
          v10 = re::allocInfo_IntrospectionRenameMemberAttribute(v1);
          qword_1EE1C2E50 = v10;
          re::initInfo_IntrospectionRenameMemberAttribute(v10, v11);
        }

        qword_1ECF19F60 = v10;
        *algn_1ECF19F68 = 0;
        qword_1ECF19F70 = 5;
        dword_1ECF19F78 = 0;
        qword_1ECF19F80 = "IntrospectionComplexVersioningAttribute";
        v12 = qword_1EE1C2E68;
        if (!qword_1EE1C2E68)
        {
          v12 = re::allocInfo_IntrospectionComplexVersioningAttribute(v1);
          qword_1EE1C2E68 = v12;
          re::initInfo_IntrospectionComplexVersioningAttribute(v12, v13);
        }

        qword_1ECF19F88 = v12;
        unk_1ECF19F90 = 0;
        qword_1ECF19F98 = 6;
        dword_1ECF19FA0 = 0;
        qword_1ECF19FA8 = "IntrospectionCreateBindPointAttribute";
        BindPointAttribute = qword_1EE1C2E88;
        if (!qword_1EE1C2E88)
        {
          BindPointAttribute = re::allocInfo_IntrospectionCreateBindPointAttribute(v1);
          qword_1EE1C2E88 = BindPointAttribute;
          re::initInfo_IntrospectionCreateBindPointAttribute(BindPointAttribute, v15);
        }

        qword_1ECF19FB0 = BindPointAttribute;
        *algn_1ECF19FB8 = 0;
        qword_1ECF19FC0 = 7;
        dword_1ECF19FC8 = 0;
        __cxa_guard_release(&qword_1EE1C2DC0);
      }
    }

    dword_1EE1C3060 = 7;
    qword_1EE1C3068 = &qword_1ECF19EB8;
  }
}

void *re::allocInfo_IntrospectionStructureAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19498, "IntrospectionStructureAttribute");
    __cxa_guard_release(&qword_1EE1C2DC8);
  }

  return &unk_1ECF19498;
}

void re::initInfo_IntrospectionStructureAttribute(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x868C2D67524F32C8;
  v11[1] = "IntrospectionStructureAttribute";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1C2DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DD0))
  {
    v5 = re::introspectionAllocator();
    re::introspect_IntrospectionStructureAttributeType(v5, v6);
    v7 = (*(*v5 + 32))(v5, 32, 8);
    *v7 = 3;
    *(v7 + 8) = &qword_1EE1C3498;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    qword_1EE1C3070 = v7;
    v8 = re::introspectionAllocator();
    re::introspectionTable_IntrospectionStructureAttribute(v8);
    v9 = (*(*v8 + 32))(v8, 16, 8);
    *v9 = 2;
    *(v9 + 8) = &dword_1EE1C3060;
    qword_1EE1C3078 = v9;
    __cxa_guard_release(&qword_1EE1C2DD0);
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3070;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionStructureAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionStructureAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionStructureAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionStructureAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::allocInfo_IntrospectionMember(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19528, "IntrospectionMember");
    __cxa_guard_release(&qword_1EE1C2DE0);
  }

  return &unk_1ECF19528;
}

void re::initInfo_IntrospectionMember(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x857863A49FC2EC2ALL;
  v20[1] = "IntrospectionMember";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1C2DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DE8))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2DD8;
    if (!qword_1EE1C2DD8)
    {
      v7 = re::allocInfo_IntrospectionStructureAttribute(v5);
      qword_1EE1C2DD8 = v7;
      re::initInfo_IntrospectionStructureAttribute(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionStructureAttribute";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3200 = v9;
    v10 = re::introspectionAllocator();
    re::IntrospectionInfo<char const*>::get(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "name";
    *(v12 + 16) = &qword_1EE1C3250;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x800000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3208 = v12;
    v13 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v13, v14);
    v15 = (*(*v13 + 32))(v13, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "memberInfo";
    *(v15 + 16) = &qword_1EE1C3618;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x1000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C3210 = v15;
    v16 = re::introspectionAllocator();
    re::introspect_IntrospectionMemberType(v16, v17);
    v18 = (*(*v16 + 32))(v16, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "memberType";
    *(v18 + 16) = &qword_1EE1C3450;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1C3218 = v18;
    __cxa_guard_release(&qword_1EE1C2DE8);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1C3200;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionMember>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionMember>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionMember>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionMember>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

uint64_t re::internal::defaultDestruct<re::IntrospectionMember>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 48);

  return re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 16);
}

uint64_t re::internal::defaultDestructV2<re::IntrospectionMember>(uint64_t a1)
{
  re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 48);

  return re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 16);
}

void *re::allocInfo_IntrospectionPolymorphicTableAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF195B8, "IntrospectionPolymorphicTableAttribute");
    __cxa_guard_release(&qword_1EE1C2DF8);
  }

  return &unk_1ECF195B8;
}

void re::initInfo_IntrospectionPolymorphicTableAttribute(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x7BCA109D2D15F12;
  v13[1] = "IntrospectionPolymorphicTableAttribute";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1C2E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E00))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2DD8;
    if (!qword_1EE1C2DD8)
    {
      v7 = re::allocInfo_IntrospectionStructureAttribute(v5);
      qword_1EE1C2DD8 = v7;
      re::initInfo_IntrospectionStructureAttribute(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionStructureAttribute";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3080 = v9;
    v10 = re::introspectionAllocator();
    re::IntrospectionInfo<re::IntrospectionPolymorphicTable const*>::get(v10);
    v11 = (*(*v10 + 32))(v10, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "polymorphicTable";
    *(v11 + 16) = &qword_1EE1C32D0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C3088 = v11;
    __cxa_guard_release(&qword_1EE1C2E00);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3080;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPolymorphicTableAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPolymorphicTableAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPolymorphicTableAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPolymorphicTableAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::IntrospectionInfo<re::IntrospectionPolymorphicTable const*>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C2FD0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C2FD0);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C32D0);
      __cxa_guard_release(&qword_1EE1C2FD0);
    }
  }

  if ((byte_1EE1C2C72 & 1) == 0)
  {
    byte_1EE1C2C72 = 1;
    v1 = qword_1EE1C2D98;
    if (!qword_1EE1C2D98)
    {
      v1 = re::allocInfo_IntrospectionPolymorphicTable(a1);
      qword_1EE1C2D98 = v1;
      re::initInfo_IntrospectionPolymorphicTable(v1, v2);
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1C32D0, 0);
    qword_1EE1C32E0 = 0x800000001;
    dword_1EE1C32E8 = 8;
    word_1EE1C32EC = 0;
    *&xmmword_1EE1C32F0 = 0;
    *(&xmmword_1EE1C32F0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C32D0 = &unk_1F5CBD2C0;
    qword_1EE1C3300 = v1;
    unk_1EE1C3308 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v9, &qword_1EE1C32D0);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = *(v1 + 2);
      v7 = v8;
    }

    xmmword_1EE1C32F0 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionPolymorphicTableAttribute>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *re::allocInfo_IntrospectionPolymorphicTypeAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19648, "IntrospectionPolymorphicTypeAttribute");
    __cxa_guard_release(&qword_1EE1C2E10);
  }

  return &unk_1ECF19648;
}

void re::initInfo_IntrospectionPolymorphicTypeAttribute(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x8519B7F970D5E80ELL;
  v18[1] = "IntrospectionPolymorphicTypeAttribute";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C2E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E18))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2DD8;
    if (!qword_1EE1C2DD8)
    {
      v7 = re::allocInfo_IntrospectionStructureAttribute(v5);
      qword_1EE1C2DD8 = v7;
      re::initInfo_IntrospectionStructureAttribute(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionStructureAttribute";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3150 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "polymorphicInfo";
    *(v12 + 16) = &qword_1EE1C3618;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x800000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3158 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_int(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "polymorphicTypeOffset";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x1800000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C3160 = v16;
    __cxa_guard_release(&qword_1EE1C2E18);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3150;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPolymorphicTypeAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPolymorphicTypeAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPolymorphicTypeAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPolymorphicTypeAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

uint64_t re::internal::defaultConstruct<re::IntrospectionPolymorphicTypeAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 8);
  *(a3 + 24) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionPolymorphicTypeAttribute>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 8);
  *(a1 + 24) = 0;
  return result;
}

void *re::allocInfo_IntrospectionFlagsAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF196D8, "IntrospectionFlagsAttribute");
    __cxa_guard_release(&qword_1EE1C2E28);
  }

  return &unk_1ECF196D8;
}

void re::initInfo_IntrospectionFlagsAttribute(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xF628A0708C2B08A0;
  v15[1] = "IntrospectionFlagsAttribute";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C2E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E30))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2DD8;
    if (!qword_1EE1C2DD8)
    {
      v7 = re::allocInfo_IntrospectionStructureAttribute(v5);
      qword_1EE1C2DD8 = v7;
      re::initInfo_IntrospectionStructureAttribute(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionStructureAttribute";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3090 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::introspect_uint32_t(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "flags";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x400000001;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1C3098 = v13;
    __cxa_guard_release(&qword_1EE1C2E30);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3090;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionFlagsAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionFlagsAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionFlagsAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionFlagsAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_IntrospectionRenameMemberAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19768, "IntrospectionRenameMemberAttribute");
    __cxa_guard_release(&qword_1EE1C2E40);
  }

  return &unk_1ECF19768;
}

void re::initInfo_IntrospectionRenameMemberAttribute(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x5F5C67A515547252;
  v17[1] = "IntrospectionRenameMemberAttribute";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C2E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E48))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2DD8;
    if (!qword_1EE1C2DD8)
    {
      v7 = re::allocInfo_IntrospectionStructureAttribute(v5);
      qword_1EE1C2DD8 = v7;
      re::initInfo_IntrospectionStructureAttribute(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionStructureAttribute";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3168 = v9;
    v10 = re::introspectionAllocator();
    re::IntrospectionInfo<char const*>::get(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "oldName";
    *(v12 + 16) = &qword_1EE1C3250;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x800000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3170 = v12;
    v13 = re::introspectionAllocator();
    re::IntrospectionInfo<char const*>::get(v13, v14);
    v15 = (*(*v13 + 32))(v13, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "currentName";
    *(v15 + 16) = &qword_1EE1C3250;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x1000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C3178 = v15;
    __cxa_guard_release(&qword_1EE1C2E48);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3168;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionRenameMemberAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionRenameMemberAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionRenameMemberAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionRenameMemberAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

void re::internal::defaultConstruct<re::IntrospectionRenameMemberAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionRenameMemberAttribute>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::allocInfo_IntrospectionComplexVersioningAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF197F8, "IntrospectionComplexVersioningAttribute");
    __cxa_guard_release(&qword_1EE1C2E58);
  }

  return &unk_1ECF197F8;
}

void re::initInfo_IntrospectionComplexVersioningAttribute(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x151FCB3FE48E5DBALL;
  v18[1] = "IntrospectionComplexVersioningAttribute";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C2E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E60))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2DD8;
    if (!qword_1EE1C2DD8)
    {
      v7 = re::allocInfo_IntrospectionStructureAttribute(v5);
      qword_1EE1C2DD8 = v7;
      re::initInfo_IntrospectionStructureAttribute(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionStructureAttribute";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3180 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_IntrospectionBasePointer(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "previousInfo";
    *(v12 + 16) = &qword_1EE1C3618;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C3188 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_size_t(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "version";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C3190 = v16;
    __cxa_guard_release(&qword_1EE1C2E60);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3180;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionComplexVersioningAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionComplexVersioningAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionComplexVersioningAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionComplexVersioningAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

uint64_t re::internal::defaultConstruct<re::IntrospectionComplexVersioningAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 24) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 16);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionComplexVersioningAttribute>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

void *re::allocInfo_IntrospectionCreateBindPointAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19888, "IntrospectionCreateBindPointAttribute");
    __cxa_guard_release(&qword_1EE1C2E70);
  }

  return &unk_1ECF19888;
}

void re::initInfo_IntrospectionCreateBindPointAttribute(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x5F39BBB1873362C0;
  v11[1] = "IntrospectionCreateBindPointAttribute";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1C2E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E80))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2DD8;
    if (!qword_1EE1C2DD8)
    {
      v7 = re::allocInfo_IntrospectionStructureAttribute(v5);
      qword_1EE1C2DD8 = v7;
      re::initInfo_IntrospectionStructureAttribute(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionStructureAttribute";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C2E78 = v9;
    __cxa_guard_release(&qword_1EE1C2E80);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2E78;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionCreateBindPointAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionCreateBindPointAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionCreateBindPointAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionCreateBindPointAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionCreateBindPointAttribute>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *re::allocInfo_IntrospectionStructure(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19918, "IntrospectionStructure");
    __cxa_guard_release(&qword_1EE1C2E90);
  }

  return &unk_1ECF19918;
}

void re::initInfo_IntrospectionStructure(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x14D39C8D0D949830;
  v18[1] = "IntrospectionStructure";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C2E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E98))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C2C98;
    if (!qword_1EE1C2C98)
    {
      v7 = re::allocInfo_IntrospectionBase(v5);
      qword_1EE1C2C98 = v7;
      re::initInfo_IntrospectionBase(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "IntrospectionBase";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C3198 = v9;
    v10 = re::introspectionAllocator();
    re::IntrospectionInfo<char const*>::get(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "name";
    *(v12 + 16) = &qword_1EE1C3250;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x3000000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C31A0 = v12;
    v13 = re::introspectionAllocator();
    re::IntrospectionInfo<re::IntrospectionStructureAttribute const* const*>::get(v13);
    v15 = re::introspect_uint32_t(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "structureAttributes";
    *(v16 + 16) = &qword_1EE1C3310;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x4000000002;
    *(v16 + 40) = 1;
    *(v16 + 48) = v15;
    *(v16 + 56) = 0;
    *(v16 + 64) = 56;
    qword_1EE1C31A8 = v16;
    __cxa_guard_release(&qword_1EE1C2E98);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3198;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionStructure>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionStructure>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionStructure>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionStructure>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::IntrospectionInfo<re::IntrospectionStructureAttribute const* const*>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C2FD8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C2FD8);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3310);
      __cxa_guard_release(&qword_1EE1C2FD8);
    }
  }

  if ((byte_1EE1C2C73 & 1) == 0)
  {
    byte_1EE1C2C73 = 1;
    if ((atomic_load_explicit(&qword_1EE1C2FE0, memory_order_acquire) & 1) == 0)
    {
      a1 = __cxa_guard_acquire(&qword_1EE1C2FE0);
      if (a1)
      {
        re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3350);
        __cxa_guard_release(&qword_1EE1C2FE0);
      }
    }

    if ((byte_1EE1C2C74 & 1) == 0)
    {
      byte_1EE1C2C74 = 1;
      v1 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v1 = re::allocInfo_IntrospectionStructureAttribute(a1);
        qword_1EE1C2DD8 = v1;
        re::initInfo_IntrospectionStructureAttribute(v1, v2);
      }

      ArcSharedObject::ArcSharedObject(&qword_1EE1C3350, 0);
      qword_1EE1C3360 = 0x800000001;
      dword_1EE1C3368 = 8;
      word_1EE1C336C = 0;
      *&xmmword_1EE1C3370 = 0;
      *(&xmmword_1EE1C3370 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C3350 = &unk_1F5CBD2C0;
      qword_1EE1C3380 = v1;
      unk_1EE1C3388 = 0;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&v13, &qword_1EE1C3350);
      if (BYTE8(v13))
      {
        v5 = v14;
      }

      else
      {
        v5 = &v13 + 9;
      }

      if (v13 && (BYTE8(v13) & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 0xB47AF28 && (__s1 == "char*" || !strcmp(__s1, "char*")))
      {
        v7 = v13;
      }

      else
      {
        v13 = *(v1 + 2);
        v7 = v12;
      }

      xmmword_1EE1C3370 = v7;
      if (v15)
      {
        if (v15)
        {
        }
      }
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1C3310, 0);
    qword_1EE1C3320 = 0x800000001;
    dword_1EE1C3328 = 8;
    word_1EE1C332C = 0;
    *&xmmword_1EE1C3330 = 0;
    *(&xmmword_1EE1C3330 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C3310 = &unk_1F5CBD2C0;
    qword_1EE1C3340 = &qword_1EE1C3350;
    unk_1EE1C3348 = 0;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&v13, &qword_1EE1C3310);
    if (BYTE8(v13))
    {
      v10 = v14;
    }

    else
    {
      v10 = &v13 + 9;
    }

    if (v13 && (BYTE8(v13) & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 0xB47AF28 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      xmmword_1EE1C3330 = v13;
    }

    else
    {
      v13 = xmmword_1EE1C3370;
      xmmword_1EE1C3330 = v12;
    }

    if (v15)
    {
      if (v15)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::IntrospectionStructure>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 22) = 0;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C718;
  result = 0.0;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionStructure>(ArcSharedObject *a1)
{
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 22) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C718;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  return result;
}

void re::introspect_IntrospectionEnumAttributeType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2EA8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C2EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2EB0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C34E0, "IntrospectionEnumAttributeType", 4, 4, 1, 1);
      qword_1EE1C34E0 = &unk_1F5D0C658;
      qword_1EE1C3520 = &re::introspect_IntrospectionEnumAttributeType(BOOL)::enumTable;
      dword_1EE1C34F0 = 9;
      __cxa_guard_release(&qword_1EE1C2EB0);
    }

    if (byte_1EE1C2C6D)
    {
      break;
    }

    byte_1EE1C2C6D = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C34E0, a2);
    v33 = 0xB7843CC4D7E65C34;
    v34 = "IntrospectionEnumAttributeType";
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
      v6 = qword_1EE1C3520;
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
      xmmword_1EE1C3500 = v35;
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
    if (__cxa_guard_acquire(&qword_1EE1C2EA8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 1;
      *(v29 + 16) = "Value";
      qword_1EE1C30A0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 2;
      *(v31 + 16) = "ValueRename";
      qword_1EE1C30A8 = v31;
      __cxa_guard_release(&qword_1EE1C2EA8);
    }
  }
}