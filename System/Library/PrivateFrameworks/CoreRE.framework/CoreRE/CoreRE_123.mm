void re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
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
        re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
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

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v14);
  v7 = HIDWORD(v15);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v15, v14);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = 0;
    v9 = v8 + 24;
    *(v9 + 32) = 0;
    *(v9 + 24) = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    v10 = *(a3 + 8);
    *v9 = *a3;
    *(v9 + 8) = v10;
    *a3 = 0;
    *(a3 + 8) = 0;
    v11 = *(v9 + 16);
    *(v9 + 16) = *(a3 + 16);
    *(a3 + 16) = v11;
    v12 = *(v9 + 32);
    *(v9 + 32) = *(a3 + 32);
    *(a3 + 32) = v12;
    ++*(a3 + 24);
    ++*(v9 + 24);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::DynamicArray<re::RigComponentConstraint>::operator=(*(a1 + 16) + (v7 << 6) + 24, a3);
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

unint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 6) + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + (v4 << 6)) & 0x80000000) != 0)
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
          v5 += 16;
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

unint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

unint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8 = re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  if (v10[0] && v12)
  {
    (*(*v10[0] + 40))();
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
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
    v10 = *(a2 + 16) + (v6 << 6);
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
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
      if ((*(*(a2 + 16) + (v6 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v14);
  v7 = HIDWORD(v15);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v15, v14);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = 0;
    v9 = v8 + 24;
    *(v9 + 32) = 0;
    *(v9 + 24) = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    v10 = *(a3 + 8);
    *v9 = *a3;
    *(v9 + 8) = v10;
    *a3 = 0;
    *(a3 + 8) = 0;
    v11 = *(v9 + 16);
    *(v9 + 16) = *(a3 + 16);
    *(a3 + 16) = v11;
    v12 = *(v9 + 32);
    *(v9 + 32) = *(a3 + 32);
    *(a3 + 32) = v12;
    ++*(a3 + 24);
    ++*(v9 + 24);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::DynamicArray<re::RigComponentConstraint>::operator=(*(a1 + 16) + (v7 << 6) + 24, a3);
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

unint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 6) + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + (v4 << 6)) & 0x80000000) != 0)
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
          v5 += 16;
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

unint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

unint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
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
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
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
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
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
          v5 += 8;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
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

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  memset(v10, 0, sizeof(v10));
  v8 = re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  re::BlendShapeWeights::~BlendShapeWeights(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
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

void re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
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
        re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 56;
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

void *re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v13, a1, a2);
  v6 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v14, v13);
    re::StringID::StringID((v7 + 1), a2);
    v8 = v7 + 3;
    re::FixedArray<float>::FixedArray(v7 + 3, a3);
    v9 = a3[3];
    v7[6] = v9;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 56 * v6;
    v8 = (v11 + 24);
    re::FixedArray<float>::operator=((v11 + 24), a3);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v11 + 48), a3[3]);
  }

  return v8;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

void *re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4, a1, a2);
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v5 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
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
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
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
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v11, a1, a2);
  v6 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v12, v11);
    re::StringID::StringID((v7 + 8), a2);
    *(v7 + 24) = *a3;
    v8 = v7 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v9 = *(a1 + 16) + 32 * v6;
    *(v9 + 24) = *a3;
    return v9 + 24;
  }

  return v8;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4, a1, a2);
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v5 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
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
          v5 += 8;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

double re::make::shared::unsafelyInplace<re::ecs2::KeyValueComponent>(void *a1)
{
  bzero(a1, 0x358uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CDC8E0;
  a1[4] = &unk_1F5CF1D78;
  result = 0.0;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 18) = 0;
  *(a1 + 76) = 0x7FFFFFFFLL;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 30) = 0;
  *(a1 + 124) = 0x7FFFFFFFLL;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 42) = 0;
  *(a1 + 172) = 0x7FFFFFFFLL;
  *(a1 + 23) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 54) = 0;
  *(a1 + 220) = 0x7FFFFFFFLL;
  *(a1 + 29) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 66) = 0;
  *(a1 + 268) = 0x7FFFFFFFLL;
  *(a1 + 35) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 78) = 0;
  *(a1 + 316) = 0x7FFFFFFFLL;
  *(a1 + 41) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 90) = 0;
  *(a1 + 364) = 0x7FFFFFFFLL;
  *(a1 + 47) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 102) = 0;
  *(a1 + 412) = 0x7FFFFFFFLL;
  *(a1 + 53) = 0u;
  *(a1 + 55) = 0u;
  *(a1 + 114) = 0;
  *(a1 + 460) = 0x7FFFFFFFLL;
  *(a1 + 126) = 0;
  *(a1 + 59) = 0u;
  *(a1 + 61) = 0u;
  *(a1 + 508) = 0x7FFFFFFFLL;
  *(a1 + 138) = 0;
  *(a1 + 65) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 556) = 0x7FFFFFFFLL;
  *(a1 + 150) = 0;
  *(a1 + 71) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 604) = 0x7FFFFFFFLL;
  *(a1 + 162) = 0;
  *(a1 + 77) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 652) = 0x7FFFFFFFLL;
  *(a1 + 83) = 0u;
  *(a1 + 85) = 0u;
  *(a1 + 174) = 0;
  *(a1 + 700) = 0x7FFFFFFFLL;
  *(a1 + 186) = 0;
  *(a1 + 89) = 0u;
  *(a1 + 91) = 0u;
  *(a1 + 748) = 0x7FFFFFFFLL;
  *(a1 + 198) = 0;
  *(a1 + 95) = 0u;
  *(a1 + 97) = 0u;
  *(a1 + 796) = 0x7FFFFFFFLL;
  *(a1 + 210) = 0;
  *(a1 + 101) = 0u;
  *(a1 + 103) = 0u;
  *(a1 + 844) = 0x7FFFFFFFLL;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs217KeyValueComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

re::ecs2::ImagePresentationStatusComponent *re::ecs2::ImagePresentationStatusComponent::ImagePresentationStatusComponent(re::ecs2::ImagePresentationStatusComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF2730;
  *(v2 + 25) = 0;
  *(v2 + 29) = 1;
  *(v2 + 96) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 100) = 0u;
  *(v2 + 116) = 0u;
  *(v2 + 129) = 0;
  v3 = *re::imagePresentationLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[ImagePresentationStatusComponent] Component initialized.", v5, 2u);
  }

  return this;
}

void re::ecs2::ImagePresentationStatusComponent::setAlchemistAnimationParams(uint64_t a1, uint64_t a2)
{
  if (!re::ecs2::AlchemistAnimationParams::operator==((a1 + 96), a2))
  {
    *(a1 + 96) = *a2;
    re::AssetHandle::operator=(a1 + 112, (a2 + 16));
    v4 = *(*(a1 + 16) + 216);
    if (v4)
    {

      re::ecs2::NetworkComponent::markDirty(v4, a1);
    }
  }
}

void re::ecs2::ImagePresentationStatusComponent::resetAlchemistAnimationParams(re::ecs2::ImagePresentationStatusComponent *this)
{
  *(this + 96) = 0;
  *(this + 13) = 0;
  *(this + 25) = 0;
  v2 = *(this + 14);
  if (v2)
  {

    *(this + 14) = 0;
  }

  *(this + 15) = 0;
  v3 = *(*(this + 2) + 216);
  if (v3)
  {

    re::ecs2::NetworkComponent::markDirty(v3, this);
  }
}

void re::ecs2::ImagePresentationStatusComponent::publishUpdatesInApp(re::ecs2::ImagePresentationStatusComponent *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    v19 = *re::imagePresentationLogObjects(this);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v29 = 0;
    v20 = "[ImagePresentationStatusComponent::publishUpdatesInApp] Cannot find entity of ImagePresentationStatusComponent";
    v21 = &v29;
    goto LABEL_32;
  }

  v3 = *(this + 2);
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = *(v4 + 24);
  if (!v5)
  {
    v19 = *re::imagePresentationLogObjects(this);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v28 = 0;
    v20 = "[ImagePresentationStatusComponent::publishUpdatesInApp] Entity of ImagePresentationStatusComponent is not in a scene";
    v21 = &v28;
    goto LABEL_32;
  }

  v6 = *(v5 + 288);
  if (!v6)
  {
    v19 = *re::imagePresentationLogObjects(this);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v20 = "[ImagePresentationStatusComponent::publishUpdatesInApp] Cannot find eventBus for the scene of ImagePresentationStatusComponent";
    v21 = buf;
LABEL_32:
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 2u);
    return;
  }

  v7 = *(this + 27);
  if ((*(this + 146) != v7 || *(this + 147) != *(this + 28)) && ((v7 & 1) != 0 || *(this + 28) == 1))
  {
    v8 = re::ecs2::EntityComponentCollection::get((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v8)
    {
      v9 = *(v8 + 133);
      v10 = *(v8 + 132);
      v26[0] = *(this + 25);
      v26[1] = v10;
      v26[2] = *(this + 26);
      v26[3] = v9;
      if ((atomic_load_explicit(&qword_1EE1AA480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA480))
      {
        qword_1EE1AA478 = re::EventBus::typeStringToId(("41REImagePresentationTransitionStartedEvent" & 0x7FFFFFFFFFFFFFFFLL), v24);
        __cxa_guard_release(&qword_1EE1AA480);
      }

      re::EventBus::publish(v6, v1, qword_1EE1AA478, v26, 4uLL, 0);
      *(this + 73) = *(this + 27);
    }
  }

  v11 = *(this + 25);
  v12 = *(this + 145);
  v13 = *(this + 26);
  v14 = *(this + 144) == v11 && v12 == v13;
  v15 = !v14;
  if (!v14)
  {
    v25[0] = *(this + 144);
    v25[1] = v11;
    v25[2] = v12;
    v25[3] = v13;
    if ((atomic_load_explicit(&qword_1EE1AA490, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1EE1AA490))
      {
        qword_1EE1AA488 = re::EventBus::typeStringToId(("43REImagePresentationTransitionCompletedEvent" & 0x7FFFFFFFFFFFFFFFLL), v23);
        __cxa_guard_release(&qword_1EE1AA490);
      }
    }

    re::EventBus::publish(v6, v1, qword_1EE1AA488, v25, 4uLL, 0);
    *(this + 36) = *(this + 25);
  }

  v16 = *(this + 32);
  v17 = vmvn_s8(vceq_f32(*(this + 152), v16));
  if ((vpmax_u32(v17, v17).u32[0] & 0x80000000) != 0)
  {
    v22 = *(this + 5);
  }

  else
  {
    v18 = vmvn_s8(vceq_f32(*(this + 160), *(this + 40)));
    if ((vpmax_u32(v18, v18).u32[0] & 0x80000000) == 0)
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_36;
    }

    v22 = *(this + 5);
  }

  *(this + 19) = v16;
  *(this + 20) = v22;
LABEL_36:
  re::ecs2::Component::wasModified(this);
}

void re::IntrospectionInfo<re::Optional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1AA498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA498))
  {
    re::IntrospectionOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>::IntrospectionOptional();
    __cxa_guard_release(&qword_1EE1AA498);
  }

  if ((_MergedGlobals_284 & 1) == 0)
  {
    v6 = re::ecs2::SpatialMedia::ImmersiveTransition::introspect_Configuration(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_284 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_284 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA4A0, 0);
      qword_1EE1AA4B0 = 0x300000000DLL;
      dword_1EE1AA4B8 = v8;
      word_1EE1AA4BC = 0;
      *&xmmword_1EE1AA4C0 = 0;
      *(&xmmword_1EE1AA4C0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA4D0 = v7;
      qword_1EE1AA4D8 = 0;
      qword_1EE1AA4A0 = &unk_1F5CF27B8;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1AA4A0);
      if (v19)
      {
        v11 = *&v20[7];
      }

      else
      {
        v11 = v20;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = *(v7 + 32);
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v21);
        re::TypeBuilder::TypeBuilder(&v18, v21);
        v17 = v15;
        re::TypeBuilder::beginOptionalType(&v18, &v16, 0x30uLL, 8uLL, &v17);
        re::TypeBuilder::setOptionalAccessors(&v18, re::TypeBuilderHelper::registerOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1AA4C0 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_ImagePresentationStatusComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AA470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA470))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA530, "ImagePresentationStatusComponent");
    __cxa_guard_release(&qword_1EE1AA470);
  }

  return &unk_1EE1AA530;
}

void re::ecs2::initInfo_ImagePresentationStatusComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v57[0] = 0xB98963C08035C0ECLL;
  v57[1] = "ImagePresentationStatusComponent";
  if (v57[0])
  {
    if (v57[0])
    {
    }
  }

  *(this + 2) = v58;
  if ((atomic_load_explicit(&qword_1EE1AA468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA468))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AA4E0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::ecs2::introspect_ImageViewingMode(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_currentViewingMode";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AA4E8 = v18;
    v19 = re::introspectionAllocator();
    v20 = re::introspect_Vector2F(1);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_currentPresentationScreenSize";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AA4F0 = v21;
    v22 = re::introspectionAllocator();
    v23 = re::introspect_Vector2F(1);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "m_currentScreenImageDimension";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x2800000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1AA4F8 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::ecs2::introspect_ImageImmersiveViewingMode(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "m_currentImmersiveViewingMode";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x1A00000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1AA500 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_BOOL(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "m_isInViewingModeTransition";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x1B00000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1AA508 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_BOOL(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "m_isInImmersiveTransition";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x1C00000006;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1AA510 = v36;
    v37 = re::introspectionAllocator();
    v43 = re::ecs2::introspect_AlchemistAnimationParams(1, v38, v39, v40, v41, v42);
    v44 = (*(*v37 + 32))(v37, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "m_alchemistAnimationParams";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x6000000007;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1AA518 = v44;
    v45 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>>::get(v45, v46, v47, v48, v49, v50);
    v51 = (*(*v45 + 32))(v45, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "m_immersiveTransitionConfiguration";
    *(v51 + 16) = &qword_1EE1AA4A0;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0x3000000008;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE1AA520 = v51;
    v52 = re::introspectionAllocator();
    v54 = re::introspect_BOOL(1, v53);
    v55 = (*(*v52 + 32))(v52, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "m_isPresentingFirstFrame";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0x1D00000009;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE1AA528 = v55;
    __cxa_guard_release(&qword_1EE1AA468);
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1AA4E0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImagePresentationStatusComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImagePresentationStatusComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImagePresentationStatusComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImagePresentationStatusComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232ImagePresentationStatusComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v56 = v58;
}

void re::ecs2::ImagePresentationStatusComponent::~ImagePresentationStatusComponent(re::ecs2::ImagePresentationStatusComponent *this)
{
  *this = &unk_1F5CF2730;
  re::AssetHandle::~AssetHandle((this + 112));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF2730;
  re::AssetHandle::~AssetHandle((this + 112));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>::IntrospectionOptional()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AA4A0, 0);
  *(&qword_1EE1AA4B0 + 6) = 0;
  qword_1EE1AA4B0 = 0;
  *&xmmword_1EE1AA4C0 = 0;
  *(&xmmword_1EE1AA4C0 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AA4A0 = &unk_1F5CBA310;
  qword_1EE1AA4D8 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AA4D0);
  qword_1EE1AA4A0 = &unk_1F5CF27B8;
  return result;
}

void *re::IntrospectionOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 40) = 0;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    if (*a1)
    {
      result = *a2;
      v3 = *(a2 + 16);
      *(a1 + 40) = *(a2 + 32);
      *(a1 + 24) = v3;
      *(a1 + 8) = result;
    }

    else
    {
      *a1 = 1;
      result = v4;
      *(a1 + 8) = v4;
      *(a1 + 24) = v5;
      *(a1 + 40) = v6;
    }
  }

  else if (*a1 == 1)
  {
    *a1 = 0;
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs232ImagePresentationStatusComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

re::ecs2::AudioDebugSystem *re::ecs2::AudioDebugSystem::AudioDebugSystem(re::ecs2::AudioDebugSystem *this)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF2838;
  *(v2 + 29) = 0;
  *(v2 + 30) = 0;
  *(v2 + 28) = 0;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 416, 16);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0u;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0u;
  *(v4 + 384) = 0u;
  *(v4 + 400) = 0u;
  *(v4 + 36) = 0x7FFFFFFF;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  __asm { FMOV            V0.4S, #1.0 }

  *(v4 + 128) = _Q0;
  *(v4 + 144) = 0u;
  *(v4 + 144) = _Q0;
  re::audio::ColorPaletteEditorMaterial::ColorPaletteEditorMaterial((v4 + 160));
  re::audio::ColorPaletteARKitMaterial::ColorPaletteARKitMaterial((v4 + 240));
  re::audio::ColorPaletteARKitClassification::ColorPaletteARKitClassification((v4 + 320));
  *(v4 + 400) = 257;
  *(v4 + 402) = 1;
  v15[0] = &unk_1F5CF28C8;
  v15[3] = v15;
  *(this + 35) = this + 256;
  *(this + 31) = v4;
  *(this + 32) = &unk_1F5CF28C8;
  std::__function::__value_func<void ()(re::audio::MeshVisualizer *)>::~__value_func[abi:nn200100](v15);
  *(this + 288) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 0;
  *(this + 380) = 0x7FFFFFFFLL;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 106) = 0;
  *(this + 428) = 0x7FFFFFFFLL;
  v10 = *(this + 31);
  *(v10 + 96) = 0x800000008;
  v11 = *(v10 + 160);
  if (*(v10 + 168) != v11)
  {
    v12 = 0;
    v13 = 12;
    do
    {
      *(v11 + v13) = 1059749626;
      *(v10 + 204) = 1059749626;
      ++v12;
      v11 = *(v10 + 160);
      v13 += 16;
    }

    while (v12 < (*(v10 + 168) - v11) >> 4);
  }

  return this;
}

void anonymous namespace::tryLoadMaterialAsset(_anonymous_namespace_ *this, re::AssetHandle *a2, _anonymous_namespace_ *a3, re::RenderManager *a4, AssetService *a5)
{
  v8 = *(this + 1);
  if (!v8 || (v9 = atomic_load((v8 + 896)), v9 != 2))
  {
    (*(*a4 + 8))(&v17, a4, a2, a3, a4, a5);
    if (v18)
    {
      if (!atomic_load((v18 + 896)))
      {
        re::AssetHandle::loadNow(v18, 0);
      }

      if (v18)
      {
        v11 = atomic_load((v18 + 896));
        if (v11 == 2)
        {
          re::AssetHandle::AssetHandle(v14, &v17);
          re::MaterialAsset::makeMaterialMemoryAsset(a4, a3, v14, 0, 0);
          v12 = *this;
          *this = v15;
          v15 = v12;
          v13 = *(this + 2);
          *(this + 2) = v16;
          v16 = v13;
          re::AssetHandle::~AssetHandle(&v15);
          re::AssetHandle::~AssetHandle(v14);
        }
      }
    }

    re::AssetHandle::~AssetHandle(&v17);
  }
}

void re::ecs2::AudioDebugSystem::willAddSystemToECSService(re::ecs2::AudioDebugSystem *this)
{
  *(this + 30) = (*(**(this + 5) + 32))(*(this + 5));
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  v4 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  *(this + 29) = v4;
  if (v4)
  {
    v5 = (*(**(this + 5) + 32))(*(this + 5));
    v6 = re::ServiceLocator::service<re::AssetService>(v5);
    v9 = *(this + 29);
  }
}

void re::ecs2::AudioDebugSystem::willRemoveSystemFromECSService(re::ecs2::AudioDebugSystem *this)
{
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  v2 = *(this + 37);
  if (v2)
  {

    *(this + 37) = 0;
  }

  *(this + 38) = 0;
  v3 = *(this + 40);
  if (v3)
  {

    *(this + 40) = 0;
  }

  *(this + 41) = 0;
}

double re::ecs2::AudioDebugSystem::willAddSceneToECSService(re::ecs2::AudioDebugSystem *this, re::ecs2::Scene *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddComponents,re::ecs2::AudioDebugSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 8), &v8);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveComponents,re::ecs2::AudioDebugSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 272), &v8);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddAcousticMeshComponents,re::ecs2::AudioDebugSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 8), &v8);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveAcousticMeshComponents,re::ecs2::AudioDebugSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 272), &v8);
    v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddAudioPlayerComponents,re::ecs2::AudioDebugSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v6 + 8), &v8);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveAudioPlayerComponents,re::ecs2::AudioDebugSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v6 + 272), &v8);
  }

  return result;
}

void re::ecs2::AudioDebugSystem::willRemoveSceneFromECSService(re::ecs2::AudioDebugSystem *this, re::ecs2::Scene *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddComponents,re::ecs2::AudioDebugSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 8, &v7);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveComponents,re::ecs2::AudioDebugSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 272, &v7);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddAcousticMeshComponents,re::ecs2::AudioDebugSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 8, &v7);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveAcousticMeshComponents,re::ecs2::AudioDebugSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 272, &v7);
    v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddAudioPlayerComponents,re::ecs2::AudioDebugSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 8, &v7);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveAudioPlayerComponents,re::ecs2::AudioDebugSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 272, &v7);
  }
}

void re::ecs2::AudioDebugSystem::didAddComponentsRecursive(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a3;
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v20, a1 + 344, v6, v8 ^ (v8 >> 31));
    v9 = HIDWORD(v21);
    if (HIDWORD(v21) == 0x7FFFFFFF)
    {
      v10 = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1 + 344, v21, v20);
      *(v10 + 8) = v7;
      *(v10 + 16) = a3;
      ++*(a1 + 384);
    }

    else
    {
      ++*(a1 + 384);
      *(*(a1 + 360) + 32 * v9 + 16) = a3;
    }
  }

  v11 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v11)
  {
    v20 = v11;
    re::HashTable<re::ecs2::AudioPlayerComponent *,re::ecs2::AudioDebugComponent const*,re::Hash<re::ecs2::AudioPlayerComponent *>,re::EqualTo<re::ecs2::AudioPlayerComponent *>,true,false>::addOrReplace(a1 + 392, &v20, &v19);
  }

  v12 = a2[43];
  if (v12)
  {
    v13 = a2[45];
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      if (*v13)
      {
        v16 = v15 + 1;
        v17 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = a3;
        }

        re::ecs2::AudioDebugSystem::didAddComponentsRecursive(a1, v15, v18);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }
}

uint64_t re::HashTable<re::ecs2::AudioPlayerComponent *,re::ecs2::AudioDebugComponent const*,re::Hash<re::ecs2::AudioPlayerComponent *>,re::EqualTo<re::ecs2::AudioPlayerComponent *>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v8 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, v10, v9);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::AudioPlayerComponent *,re::ecs2::AudioDebugComponent const*,re::Hash<re::ecs2::AudioPlayerComponent *>,re::EqualTo<re::ecs2::AudioPlayerComponent *>,true,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v8, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void collectEntitiesRecursive(uint64_t a1, unint64_t a2)
{
  v16 = a2;
  if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1, &v16))
  {
    return;
  }

  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4 | re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
  {
    v16 = a2;
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v6 = v5 ^ (v5 >> 31);
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = v6 % v7;
      v9 = *(*(a1 + 8) + 4 * (v6 % v7));
      if (v9 != 0x7FFFFFFF)
      {
        v10 = *(a1 + 16);
        if (*(v10 + 24 * v9 + 16) == a2)
        {
          goto LABEL_11;
        }

        while (1)
        {
          LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
          if (v9 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v10 + 24 * v9 + 16) == a2)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(a1, v8, v6, &v16, &v16);
    ++*(a1 + 40);
  }

LABEL_11:
  v11 = *(a2 + 344);
  if (v11)
  {
    v12 = *(a2 + 360);
    v13 = 8 * v11;
    do
    {
      v14 = *v12;
      if (*v12)
      {
        v15 = (v14 + 8);
        collectEntitiesRecursive(a1, v14);
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }
}

uint64_t anonymous namespace::getAudioDebugComponentFromEntity(_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  do
  {
    result = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v4 = *(this + 4);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 304);
    this = (v5 & 0x80) != 0 ? 0 : *(this + 4);
  }

  while ((v5 & 0x80) == 0 && !result);
  return result;
}

uint64_t re::ecs2::AudioDebugSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v128 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x100000000) == 0)
  {
    v4 = result;
    v5 = (*(**(result + 40) + 32))(*(result + 40));
    result = re::ServiceLocator::serviceOrNull<re::Engine>(v5);
    if (!result || (*(result + 432) & 0x10) != 0)
    {
      if (*(v4 + 232))
      {
        v6 = *(a3 + 200);
        if (v6)
        {
          v7 = *(a3 + 216);
          v83 = &v7[v6];
          do
          {
            v8 = *v7;
            LODWORD(v94) = 0;
            v92 = 0u;
            v93 = 0u;
            *(&v94 + 4) = 0x7FFFFFFFLL;
            v9 = re::ServiceLocator::service<re::TransformService>(*(v4 + 240));
            if (*(v4 + 372))
            {
              v10 = v9;
              v11 = v8;
              re::PrimitiveRenderingContext::PrimitiveRenderingContext(v110, *(*(*(v4 + 232) + 88) + 224), *(*(*(v4 + 232) + 88) + 248));
              re::audio::MeshVisualizer::setMaterial(*(v4 + 248), *(v4 + 232), v110);
              v12 = *(v4 + 376);
              if (v12)
              {
                v13 = 0;
                v14 = *(v4 + 360);
                while (1)
                {
                  v15 = *v14;
                  v14 += 8;
                  if (v15 < 0)
                  {
                    break;
                  }

                  if (v12 == ++v13)
                  {
                    LODWORD(v13) = *(v4 + 376);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v13) = 0;
              }

              if (v13 != v12)
              {
                v16 = *(v4 + 376);
                while (1)
                {
                  v17 = *(v4 + 360) + 32 * v13;
                  v18 = *(v17 + 16);
                  if (v18)
                  {
                    if (*(v18 + 32) && *(v18 + 25) == 1)
                    {
                      break;
                    }
                  }

LABEL_39:
                  if (v16 <= v13 + 1)
                  {
                    v35 = v13 + 1;
                  }

                  else
                  {
                    v35 = v16;
                  }

                  while (v35 - 1 != v13)
                  {
                    LODWORD(v13) = v13 + 1;
                    if ((*(*(v4 + 360) + 32 * v13) & 0x80000000) != 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  LODWORD(v13) = v35;
LABEL_46:
                  if (v13 == v12)
                  {
                    goto LABEL_47;
                  }
                }

                v19 = *(v17 + 8);
                re::TransformService::worldMatrixForRendering(&v95, v10, *(v19 + 16), 1);
                re::audio::cleanUpTransformForPHASE(&v95, v98, v20, v21, v22);
                v88 = 0u;
                v90 = 0u;
                v91 = xmmword_1E30474D0;
                re::decomposeScaleRotationTranslation<float>(v98, &v88, &v91, &v90);
                v89[0] = v88;
                v89[1] = v91;
                v89[2] = v90;
                re::AssetHandle::AssetHandle(&v88, (v19 + 32));
                if (!v88.i64[1])
                {
                  goto LABEL_38;
                }

                v23 = atomic_load((v88.i64[1] + 896));
                if (v23 != 2)
                {
                  goto LABEL_38;
                }

                v24 = re::AssetHandle::blockUntilLoaded<re::AcousticMeshAsset>(&v88);
                if (*(v24 + 8) != 1)
                {
                  goto LABEL_38;
                }

                v25 = v24;
                if (v88.i64[1])
                {
                  v26 = *(v88.i64[1] + 792);
                }

                else
                {
                  v26 = 0;
                }

                v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v88.i64[1] ^ (v88.i64[1] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v88.i64[1] ^ (v88.i64[1] >> 30))) >> 27));
                v28 = v26 ^ (v27 >> 31) ^ v27;
                if (v93.i32[2])
                {
                  v29 = v28 % v93.u32[2];
                  v30 = *(v92.i64[1] + 4 * v29);
                  if (v30 != 0x7FFFFFFF)
                  {
                    while (*(v93.i64[0] + 40 * v30 + 24) != v88.i64[1])
                    {
                      v30 = *(v93.i64[0] + 40 * v30 + 8) & 0x7FFFFFFF;
                      if (v30 == 0x7FFFFFFF)
                      {
                        goto LABEL_32;
                      }
                    }

LABEL_33:
                    re::AssetHandle::AssetHandle(v87, &v88);
                    v31 = (*(**(v4 + 40) + 32))(*(v4 + 40));
                    v32 = re::ServiceLocator::service<re::AssetService>(v31);
                    re::audio::MeshVisualizer::setupMaterials(*(v4 + 248), v32, *(v4 + 232));
                    v33 = *(v4 + 248);
                    if ((*(v4 + 288) & 1) != 0 || (v47 = *(v33 + 104) == 2, (*(v4 + 288) = v47) != 0))
                    {
                      re::AssetHandle::AssetHandle(v98, v87);
                      re::audio::MeshVisualizer::addDebugVisMesh(v33, v98, (v25 + 16));
                      re::AssetHandle::~AssetHandle(v98);
                      v34 = *(v4 + 248);
                      re::AssetHandle::AssetHandle(&v95, v87);
                      re::audio::MeshVisualizer::drawDebugVisMesh(v34, &v95, v89, v110);
                      re::AssetHandle::~AssetHandle(&v95);
                    }

                    re::AssetHandle::~AssetHandle(v87);
LABEL_38:
                    re::AssetHandle::~AssetHandle(&v88);
                    v16 = *(v4 + 376);
                    goto LABEL_39;
                  }
                }

                else
                {
                  LODWORD(v29) = 0;
                }

LABEL_32:
                re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsCopy(&v92, v29, v28, &v88, &v88);
                ++DWORD2(v94);
                goto LABEL_33;
              }

LABEL_47:
              re::PrimitiveRenderer::submitContext(*(*(v4 + 232) + 88), v110);
              v8 = v11;
              if (v122)
              {
                if (v126)
                {
                  (*(*v122 + 40))();
                }

                v126 = 0;
                v123 = 0;
                v124 = 0;
                v122 = 0;
                ++v125;
              }

              re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v120);
              if (v115)
              {
                if (v119)
                {
                  (*(*v115 + 40))();
                }

                v119 = 0;
                v116 = 0;
                v117 = 0;
                v115 = 0;
                ++v118;
              }

              for (i = 122; i != 102; i -= 5)
              {
                re::DynamicArray<unsigned long>::deinit(&v110[i]);
              }

              do
              {
                re::DynamicArray<unsigned long>::deinit(&v110[i]);
                i -= 5;
              }

              while (i != 82);
              do
              {
                re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v110[i]);
                i -= 5;
              }

              while (i != 62);
              for (j = 30; j != -5; j -= 5)
              {
                re::DynamicArray<unsigned long>::deinit(&v110[j]);
              }
            }

            re::audio::MeshVisualizer::removeDebugVisMeshesNotInUse(*(v4 + 248), &v92);
            re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v92.i64);
            if (*(v4 + 420))
            {
              v38 = *(v4 + 240);
              v81 = *(*(v4 + 232) + 88);
              LOBYTE(v110[0]) = 0;
              v127 = 0;
              v82 = re::ServiceLocator::service<re::TransformService>(v38);
              v39 = *(v4 + 424);
              if (v39)
              {
                v40 = 0;
                v41 = *(v4 + 408);
                while (1)
                {
                  v42 = *v41;
                  v41 += 8;
                  if (v42 < 0)
                  {
                    break;
                  }

                  if (v39 == ++v40)
                  {
                    LODWORD(v40) = *(v4 + 424);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v40) = 0;
              }

              if (v40 != v39)
              {
                v80 = v8;
                v43 = *(v4 + 424);
                v84 = v7;
                v86 = v43;
                do
                {
                  v44 = *(v4 + 408) + 32 * v40;
                  v46 = *(v44 + 8);
                  v45 = *(v44 + 16);
                  if (v46)
                  {
                    v47 = v45 == 0;
                  }

                  else
                  {
                    v47 = 1;
                  }

                  if (!v47 && *(v46 + 16) && (*(v45 + 32) & 1) != 0)
                  {
                    v48 = *(v46 + 112);
                    if (v48)
                    {
                      v49 = 0;
                      v50 = *(v46 + 96);
                      while (1)
                      {
                        v51 = *v50;
                        v50 += 8;
                        if (v51 < 0)
                        {
                          break;
                        }

                        if (v48 == ++v49)
                        {
                          LODWORD(v49) = *(v46 + 112);
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v49) = 0;
                    }

                    if (v49 != v48)
                    {
                      v85 = *(v46 + 16);
                      v52 = 0;
                      v53 = 3;
                      v54 = 4;
                      v55 = *(v46 + 112);
                      do
                      {
                        v56 = *(v46 + 96) + 32 * v49;
                        v57 = *(v56 + 16);
                        if (*(v57 + 510) == 1)
                        {
                          v58 = *(v57 + 288);
                          if (v58)
                          {
                            v59 = v58 >> 1;
                          }

                          else
                          {
                            v59 = v58 >> 1;
                          }

                          if (v59 || !*(v57 + 72) && (*(v57 + 264) || *(v57 + 272)))
                          {
                            if (v53)
                            {
                              v60 = v53 == 3;
                            }

                            else
                            {
                              v60 = 1;
                            }

                            if (v60)
                            {
                              v53 = 0;
                            }

                            else
                            {
                              v53 = 2;
                            }
                          }

                          else if (((v53 - 1) & 0xFFFFFFFD) != 0)
                          {
                            v53 = 2;
                          }

                          else
                          {
                            v53 = 1;
                          }

                          v61 = re::ecs2::AudioPlayerComponent::selectInputMode(v46, *(v56 + 8));
                          switch(v61)
                          {
                            case 2:
                              if (v54 == 1 || v54 == 4)
                              {
                                v54 = 1;
                              }

                              else
                              {
                                v54 = 3;
                              }

                              break;
                            case 1:
                              if (((v54 - 2) & 0xFFFFFFFD) != 0)
                              {
                                v54 = 3;
                              }

                              else
                              {
                                v54 = 2;
                              }

                              break;
                            case 0:
                              if (v54 == 4)
                              {
                                v54 = 0;
                              }

                              else
                              {
                                v54 = 3;
                              }

                              break;
                          }

                          v52 |= re::ecs2::AudioPlayerComponent::playbackStateForToken(v46, *(v56 + 8)) == 1;
                          v55 = *(v46 + 112);
                        }

                        if (v55 <= v49 + 1)
                        {
                          v63 = v49 + 1;
                        }

                        else
                        {
                          v63 = v55;
                        }

                        while (v63 - 1 != v49)
                        {
                          LODWORD(v49) = v49 + 1;
                          if ((*(*(v46 + 96) + 32 * v49) & 0x80000000) != 0)
                          {
                            goto LABEL_124;
                          }
                        }

                        LODWORD(v49) = v63;
LABEL_124:
                        ;
                      }

                      while (v49 != v48);
                      v91.i64[0] = __PAIR64__(v53, v54);
                      v91.i8[8] = v52;
                      v7 = v84;
                      if (v54 != 4 || v53 != 3)
                      {
                        if ((v127 & 1) == 0)
                        {
                          re::PrimitiveRenderingContext::PrimitiveRenderingContext(v98, *(v81 + 224), *(v81 + 248));
                          std::optional<re::PrimitiveRenderingContext>::operator=[abi:nn200100]<re::PrimitiveRenderingContext,void>(v110, v98);
                          if (v105)
                          {
                            if (v109)
                            {
                              (*(*v105 + 40))();
                            }

                            v109 = 0;
                            v106 = 0;
                            v107 = 0;
                            v105 = 0;
                            ++v108;
                          }

                          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(&v104);
                          if (v99)
                          {
                            if (v103)
                            {
                              (*(*v99 + 40))();
                            }

                            v103 = 0;
                            v100 = 0;
                            v101 = 0;
                            v99 = 0;
                            ++v102;
                          }

                          for (k = 122; k != 102; k -= 5)
                          {
                            re::DynamicArray<unsigned long>::deinit(&v98[k]);
                          }

                          do
                          {
                            re::DynamicArray<unsigned long>::deinit(&v98[k]);
                            k -= 5;
                          }

                          while (k != 82);
                          do
                          {
                            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v98[k]);
                            k -= 5;
                          }

                          while (k != 62);
                          for (m = 30; m != -5; m -= 5)
                          {
                            re::DynamicArray<unsigned long>::deinit(&v98[m]);
                          }

                          if (v114 == 1)
                          {
                            v110[12] = 0;
                            ++v111;
                            v114 = 0;
                          }

                          if (v113)
                          {
                            v113 = 0;
                          }

                          v112[28] = 998445679;
                        }

                        re::TransformService::worldMatrixForRendering(&v95, v82, v85, 1);
                        re::audio::cleanUpTransformForPHASE(&v95, v98, v66, v67, v68);
                        v89[0] = 0u;
                        v88 = xmmword_1E30474D0;
                        v87[0] = 0u;
                        re::decomposeScaleRotationTranslation<float>(v98, v89, &v88, v87);
                        v92 = v89[0];
                        v93 = v88;
                        v94 = v87[0];
                        if ((v127 & 1) == 0 || (re::ecs2::AudioDebugSystem::createAxis(v91.u32[0], &v92, v110), (v127 & 1) == 0))
                        {
                          std::__throw_bad_optional_access[abi:nn200100]();
                        }

                        re::ecs2::AudioDebugSystem::createShape(&v91, &v92, v110);
                      }
                    }

                    v43 = *(v4 + 424);
                    LODWORD(v39) = v86;
                  }

                  if (v43 <= v40 + 1)
                  {
                    v69 = v40 + 1;
                  }

                  else
                  {
                    v69 = v43;
                  }

                  while (v69 - 1 != v40)
                  {
                    LODWORD(v40) = v40 + 1;
                    if ((*(*(v4 + 408) + 32 * v40) & 0x80000000) != 0)
                    {
                      goto LABEL_162;
                    }
                  }

                  LODWORD(v40) = v69;
LABEL_162:
                  ;
                }

                while (v40 != v39);
                v8 = v80;
                if ((v127 & 1) != 0 && !re::PrimitiveRenderingContext::isEmpty(v110))
                {
                  v121 = 0;
                  re::PrimitiveRenderer::submitContext(v81, v110);
                }
              }

              if (v127 == 1)
              {
                if (v122)
                {
                  if (v126)
                  {
                    (*(*v122 + 40))();
                  }

                  v126 = 0;
                  v123 = 0;
                  v124 = 0;
                  v122 = 0;
                  ++v125;
                }

                re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v120);
                if (v115)
                {
                  if (v119)
                  {
                    (*(*v115 + 40))();
                  }

                  v119 = 0;
                  v116 = 0;
                  v117 = 0;
                  v115 = 0;
                  ++v118;
                }

                for (n = 122; n != 102; n -= 5)
                {
                  re::DynamicArray<unsigned long>::deinit(&v110[n]);
                }

                do
                {
                  re::DynamicArray<unsigned long>::deinit(&v110[n]);
                  n -= 5;
                }

                while (n != 82);
                do
                {
                  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v110[n]);
                  n -= 5;
                }

                while (n != 62);
                v71 = -280;
                v72 = v112;
                do
                {
                  re::DynamicArray<unsigned long>::deinit(v72);
                  v72 -= 10;
                  v71 += 40;
                }

                while (v71);
              }
            }

            v89[0].i64[0] = v8;
            v88.i64[0] = *(*(v4 + 232) + 88);
            LOBYTE(v110[0]) = 0;
            v127 = 0;
            v73 = re::ecs2::ComponentHelper::privateSceneDataEntity(v8, 1);
            result = re::ecs2::EntityComponentCollection::get((v73 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            *&v87[0] = result;
            if (result)
            {
              v92.i64[0] = 0;
              v92.i8[8] = 1;
              if (*(v4 + 224))
              {
                v74 = re::ServiceLocator::service<re::TransformService>(*(v4 + 240));
                v75 = (*(**(v4 + 224) + 16))(*(v4 + 224), v8);
                v98[0] = v89;
                v98[1] = v87;
                v98[2] = v110;
                v98[3] = &v88;
                v98[4] = v74;
                v98[5] = &v92;
                v76 = re::globalAllocators(v75)[2];
                v95.n128_u64[0] = &unk_1F5CF2958;
                v95.n128_u64[1] = v98;
                v96 = v76;
                v97 = &v95;
                (*(*v75 + 832))(v75, &v95);
                result = re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(&v95);
                if (v127 == 1)
                {
                  result = re::PrimitiveRenderingContext::isEmpty(v110);
                  if ((result & 1) == 0)
                  {
                    v121 = 0;
                    result = re::PrimitiveRenderer::submitContext(v88.i64[0], v110);
                  }
                }
              }

              if (v127)
              {
                if (v122)
                {
                  if (v126)
                  {
                    (*(*v122 + 40))();
                  }

                  v126 = 0;
                  v123 = 0;
                  v124 = 0;
                  v122 = 0;
                  ++v125;
                }

                re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v120);
                if (v115)
                {
                  if (v119)
                  {
                    (*(*v115 + 40))();
                  }

                  v119 = 0;
                  v116 = 0;
                  v117 = 0;
                  v115 = 0;
                  ++v118;
                }

                for (ii = 122; ii != 102; ii -= 5)
                {
                  re::DynamicArray<unsigned long>::deinit(&v110[ii]);
                }

                do
                {
                  re::DynamicArray<unsigned long>::deinit(&v110[ii]);
                  ii -= 5;
                }

                while (ii != 82);
                do
                {
                  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v110[ii]);
                  ii -= 5;
                }

                while (ii != 62);
                v78 = -280;
                v79 = v112;
                do
                {
                  result = re::DynamicArray<unsigned long>::deinit(v79);
                  v79 -= 10;
                  v78 += 40;
                }

                while (v78);
              }
            }

            ++v7;
          }

          while (v7 != v83);
        }
      }
    }
  }

  return result;
}

uint64_t std::optional<re::PrimitiveRenderingContext>::operator=[abi:nn200100]<re::PrimitiveRenderingContext,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1200) == 1)
  {
    for (i = 0; i != 280; i += 40)
    {
      if (a1 != a2)
      {
        v5 = *(a1 + i);
        v6 = *(a2 + i);
        if (v5)
        {
          v7 = v6 == 0;
        }

        else
        {
          v7 = 1;
        }

        if (!v7 && v5 != v6)
        {
          re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
LABEL_62:
          re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
LABEL_63:
          re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
LABEL_64:
          re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
LABEL_65:
          re::internal::assertLog(4, v67, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
          goto LABEL_66;
        }

        v9 = a1 + i;
        v10 = a2 + i;
        v11 = *(a1 + i + 8);
        v12 = *(a2 + i + 8);
        *v9 = v6;
        *(v9 + 8) = v12;
        *v10 = v5;
        *(v10 + 8) = v11;
        v13 = *(a1 + i + 16);
        *(v9 + 16) = *(a2 + i + 16);
        *(v10 + 16) = v13;
        v14 = *(a1 + i + 32);
        *(v9 + 32) = *(a2 + i + 32);
        *(v10 + 32) = v14;
        *(v10 + 24) = *(a2 + i + 24) + 1;
        *(v9 + 24) = *(a1 + i + 24) + 1;
      }
    }

    v15 = 0;
    v16 = *(a2 + 288);
    v17 = *(a2 + 304);
    v18 = *(a2 + 336);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 336) = v18;
    *(a1 + 288) = v16;
    *(a1 + 304) = v17;
    v19 = *(a2 + 352);
    v20 = *(a2 + 368);
    v21 = *(a2 + 400);
    *(a1 + 384) = *(a2 + 384);
    *(a1 + 400) = v21;
    *(a1 + 352) = v19;
    *(a1 + 368) = v20;
    v22 = *(a2 + 416);
    v23 = *(a2 + 432);
    v24 = *(a2 + 464);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 464) = v24;
    *(a1 + 416) = v22;
    *(a1 + 432) = v23;
    v25 = *(a2 + 480);
    v26 = *(a2 + 496);
    v27 = *(a2 + 512);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 496) = v26;
    *(a1 + 512) = v27;
    *(a1 + 480) = v25;
    do
    {
      if (a1 != a2)
      {
        v28 = *(a1 + v15 + 536);
        v29 = *(a2 + v15 + 536);
        if (v28)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30 && v28 != v29)
        {
          goto LABEL_62;
        }

        *(a1 + v15 + 536) = v29;
        *(a2 + v15 + 536) = v28;
        v32 = a1 + v15;
        v33 = a2 + v15;
        v34 = *(a1 + v15 + 544);
        *(v32 + 544) = *(a2 + v15 + 544);
        *(v33 + 544) = v34;
        v35 = *(a1 + v15 + 552);
        *(v32 + 552) = *(a2 + v15 + 552);
        *(v33 + 552) = v35;
        v36 = *(a1 + v15 + 568);
        *(v32 + 568) = *(a2 + v15 + 568);
        *(v33 + 568) = v36;
        *(v33 + 560) = *(a2 + v15 + 560) + 1;
        *(v32 + 560) = *(a1 + v15 + 560) + 1;
      }

      v15 += 40;
    }

    while (v15 != 160);
    for (j = 0; j != 160; j += 40)
    {
      if (a1 != a2)
      {
        v38 = *(a1 + j + 696);
        v39 = *(a2 + j + 696);
        if (v38)
        {
          v40 = v39 == 0;
        }

        else
        {
          v40 = 1;
        }

        if (!v40 && v38 != v39)
        {
          goto LABEL_63;
        }

        *(a1 + j + 696) = v39;
        *(a2 + j + 696) = v38;
        v42 = a1 + j;
        v43 = a2 + j;
        v44 = *(a1 + j + 704);
        *(v42 + 704) = *(a2 + j + 704);
        *(v43 + 704) = v44;
        v45 = *(a1 + j + 712);
        *(v42 + 712) = *(a2 + j + 712);
        *(v43 + 712) = v45;
        v46 = *(a1 + j + 728);
        *(v42 + 728) = *(a2 + j + 728);
        *(v43 + 728) = v46;
        *(v43 + 720) = *(a2 + j + 720) + 1;
        *(v42 + 720) = *(a1 + j + 720) + 1;
      }
    }

    for (k = 0; k != 4; ++k)
    {
      while (a1 == a2)
      {
        if (++k == 4)
        {
          re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 1016, (a2 + 1016));
          v58 = *(a2 + 1128);
          v59 = *(a2 + 1112);
          *(a1 + 1096) = *(a2 + 1096);
          *(a1 + 1112) = v59;
          *(a1 + 1128) = v58;
LABEL_60:
          v80 = *(a2 + 1176);
          *(a1 + 1192) = *(a2 + 1192);
          *(a1 + 1176) = v80;
          return a1;
        }
      }

      v48 = a1 + 856 + 40 * k;
      v49 = a2 + 856 + 40 * k;
      v50 = *v48;
      v51 = *v49;
      if (*v48)
      {
        v52 = v51 == 0;
      }

      else
      {
        v52 = 1;
      }

      if (!v52 && v50 != v51)
      {
        goto LABEL_64;
      }

      v54 = *(v48 + 8);
      v55 = *(v49 + 8);
      *v48 = v51;
      *(v48 + 8) = v55;
      *v49 = v50;
      *(v49 + 8) = v54;
      v56 = *(v48 + 16);
      *(v48 + 16) = *(v49 + 16);
      *(v49 + 16) = v56;
      v57 = *(v48 + 32);
      *(v48 + 32) = *(v49 + 32);
      *(v49 + 32) = v57;
      ++*(v49 + 24);
      ++*(v48 + 24);
    }

    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 1016, (a2 + 1016));
    v68 = *(a1 + 1056);
    v69 = *(a2 + 1056);
    if (v68 && v69 && v68 != v69)
    {
      goto LABEL_65;
    }

    *(a1 + 1056) = v69;
    *(a2 + 1056) = v68;
    v70 = *(a1 + 1064);
    *(a1 + 1064) = *(a2 + 1064);
    *(a2 + 1064) = v70;
    v71 = *(a1 + 1072);
    *(a1 + 1072) = *(a2 + 1072);
    *(a2 + 1072) = v71;
    v72 = *(a1 + 1088);
    *(a1 + 1088) = *(a2 + 1088);
    *(a2 + 1088) = v72;
    ++*(a2 + 1080);
    ++*(a1 + 1080);
    v73 = *(a2 + 1096);
    v74 = *(a2 + 1112);
    *(a1 + 1128) = *(a2 + 1128);
    *(a1 + 1096) = v73;
    *(a1 + 1112) = v74;
    v75 = *(a1 + 1136);
    v76 = *(a2 + 1136);
    if (!v75 || !v76 || v75 == v76)
    {
      *(a1 + 1136) = v76;
      *(a2 + 1136) = v75;
      v77 = *(a1 + 1144);
      *(a1 + 1144) = *(a2 + 1144);
      *(a2 + 1144) = v77;
      v78 = *(a1 + 1152);
      *(a1 + 1152) = *(a2 + 1152);
      *(a2 + 1152) = v78;
      v79 = *(a1 + 1168);
      *(a1 + 1168) = *(a2 + 1168);
      *(a2 + 1168) = v79;
      ++*(a2 + 1160);
      ++*(a1 + 1160);
      goto LABEL_60;
    }

LABEL_66:
    re::internal::assertLog(4, v67, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
    __break(1u);
  }

  else
  {
    re::PrimitiveRenderingDynamicGeometry::PrimitiveRenderingDynamicGeometry(a1, a2);
    *(a1 + 1088) = 0;
    *(a1 + 1056) = 0;
    *(a1 + 1080) = 0;
    *(a1 + 1072) = 0;
    *(a1 + 1064) = 0;
    *(a1 + 1056) = *(a2 + 1056);
    *(a2 + 1056) = 0;
    *(a1 + 1064) = *(a2 + 1064);
    *(a2 + 1064) = 0;
    v60 = *(a1 + 1072);
    *(a1 + 1072) = *(a2 + 1072);
    *(a2 + 1072) = v60;
    v61 = *(a1 + 1088);
    *(a1 + 1088) = *(a2 + 1088);
    *(a2 + 1088) = v61;
    ++*(a2 + 1080);
    ++*(a1 + 1080);
    v62 = *(a2 + 1096);
    v63 = *(a2 + 1112);
    *(a1 + 1128) = *(a2 + 1128);
    *(a1 + 1096) = v62;
    *(a1 + 1112) = v63;
    *(a1 + 1168) = 0;
    *(a1 + 1136) = 0;
    *(a1 + 1152) = 0;
    *(a1 + 1144) = 0;
    *(a1 + 1160) = 0;
    *(a1 + 1136) = *(a2 + 1136);
    *(a2 + 1136) = 0;
    *(a1 + 1144) = *(a2 + 1144);
    *(a2 + 1144) = 0;
    v64 = *(a1 + 1152);
    *(a1 + 1152) = *(a2 + 1152);
    *(a2 + 1152) = v64;
    v65 = *(a1 + 1168);
    *(a1 + 1168) = *(a2 + 1168);
    *(a2 + 1168) = v65;
    ++*(a2 + 1160);
    ++*(a1 + 1160);
    v66 = *(a2 + 1176);
    *(a1 + 1192) = *(a2 + 1192);
    *(a1 + 1176) = v66;
    *(a1 + 1200) = 1;
    return a1;
  }

  return result;
}

float re::ecs2::AudioDebugSystem::createAxis(uint64_t result, uint64_t a2, void *a3)
{
  if (result != 2)
  {
    v37 = v3;
    v38 = v4;
    v6 = *(a2 + 16);
    v36 = *(a2 + 32);
    v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
    v8 = vnegq_f32(v6);
    v9 = vmlaq_f32(vmulq_f32(v6, xmmword_1E30661D0), xmmword_1E3047670, v7);
    v10 = vaddq_f32(v9, v9);
    v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
    v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v8), v11, v7);
    v13 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v11, v6, 3), xmmword_1E3047670), vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
    v14 = vmlaq_f32(vmulq_f32(v6, xmmword_1E30661E0), xmmword_1E3047680, v7);
    v15 = vaddq_f32(v14, v14);
    v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
    v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v8), v16, v7);
    v18 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v16, v6, 3), xmmword_1E3047680), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
    v19 = vmlaq_f32(vmulq_f32(v6, xmmword_1E30661F0), xmmword_1E30476A0, v7);
    v20 = vaddq_f32(v19, v19);
    v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v8), v21, v7);
    v23 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v21, v6, 3), xmmword_1E30476A0), vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
    v24 = vmulq_f32(v13, v13);
    v25 = vmulq_n_f32(v13, 0.1 / sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)));
    v26 = vmulq_f32(v18, v18);
    v27 = vmulq_n_f32(v18, 0.1 / sqrtf(v26.f32[2] + vaddv_f32(*v26.f32)));
    v28 = vmulq_f32(v23, v23);
    v33 = v27;
    v34 = vmulq_n_f32(v23, 0.1 / sqrtf(v28.f32[2] + vaddv_f32(*v28.f32)));
    v35 = vaddq_f32(v36, v25);
    v29 = re::PrimitiveRenderingContext::addLine(a3, &v36, &v35);
    v35 = vaddq_f32(v36, v33);
    v30 = re::PrimitiveRenderingContext::addLine(a3, &v36, &v35);
    v35 = vaddq_f32(v36, v34);
    v31 = re::PrimitiveRenderingContext::addLine(a3, &v36, &v35);
    v35 = xmmword_1E3060D30;
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v29, &v35, (a3 + 25), a3 + 517, a3[17], a3[66], a3[149]);
    v35 = xmmword_1E3071540;
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v30, &v35, (a3 + 25), a3 + 517, a3[17], a3[66], a3[149]);
    v35 = xmmword_1E3063230;
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v31, &v35, (a3 + 25), a3 + 517, a3[17], a3[66], a3[149]);
  }

  return v32;
}

double re::ecs2::AudioDebugSystem::createShape(unsigned int *a1, int8x16_t *a2, uint64_t a3)
{
  _Q0 = a2[1];
  v6 = vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL);
  v7 = vnegq_f32(_Q0);
  v8 = vmlaq_f32(vmulq_f32(_Q0, xmmword_1E30661D0), xmmword_1E3047670, v6);
  v9 = vaddq_f32(v8, v8);
  v10 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v7), v10, v6);
  v12 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v10, _Q0, 3), xmmword_1E3047670), vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v13 = vmlaq_f32(vmulq_f32(_Q0, xmmword_1E3080630), xmmword_1E306DD20, v6);
  v14 = vaddq_f32(v13, v13);
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v7), v15, v6);
  v17 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v15, _Q0, 3), xmmword_1E306DD20), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v18 = vmulq_f32(v12, v12);
  v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  if (fabsf(v19) >= 1.0e-10)
  {
    v20 = v19;
    v21 = vrsqrte_f32(LODWORD(v19));
    v22 = vmul_f32(v21, vrsqrts_f32(LODWORD(v20), vmul_f32(v21, v21)));
    v12 = vmulq_n_f32(v12, vmul_f32(v22, vrsqrts_f32(LODWORD(v20), vmul_f32(v22, v22))).f32[0]);
  }

  v23 = vmulq_f32(v17, v17);
  v24 = v23.f32[2] + vaddv_f32(*v23.f32);
  if (fabsf(v24) >= 1.0e-10)
  {
    v25 = v24;
    v26 = vrsqrte_f32(LODWORD(v24));
    v27 = vmul_f32(v26, vrsqrts_f32(LODWORD(v25), vmul_f32(v26, v26)));
    v17 = vmulq_n_f32(v17, vmul_f32(v27, vrsqrts_f32(LODWORD(v25), vmul_f32(v27, v27))).f32[0]);
  }

  v28 = vdupq_laneq_s32(_Q0, 3);
  v29 = vmulq_f32(v12, v17);
  v29.f32[0] = v29.f32[2] + vaddv_f32(*v29.f32);
  if (v29.f32[0] == -1.0 || (v30 = ((fabsf(v29.f32[0]) + 1.0) + 1.0) * 0.00001, v29.f32[0] = v29.f32[0] + 1.0, fabsf(v29.f32[0]) < v30))
  {
    if (fabsf(*&v12.i32[2]) >= 0.00001)
    {
      v31.i32[0] = 0;
      v31.f32[1] = -*&v12.i32[2];
      v31.i64[1] = v12.u32[1];
    }

    else
    {
      v31 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v12.i32[1]), v12);
    }

    v32 = vmulq_f32(v31, v31);
    *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
    *v32.f32 = vrsqrte_f32(v33);
    *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
    v34 = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
    _S3 = 0.0;
  }

  else
  {
    v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vnegq_f32(v12)), v17, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
    v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
    v29.f32[0] = sqrtf(v29.f32[0] + v29.f32[0]);
    _S3 = v29.f32[0] * 0.5;
    v34 = vdivq_f32(v50, vdupq_lane_s32(*v29.f32, 0));
  }

  _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v7), v34, v6);
  v37 = vmlaq_n_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v34, v28), _Q0, _S3);
  __asm { FMLA            S2, S3, V0.S[3] }

  v37.i32[3] = _Q2.i32[0];
  v52 = v37;
  v42 = *a1;
  if (v42 >= 5)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0x607000304uLL >> (8 * v42);
  }

  v44 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a3, v43 & 7, a2[2].i8, &v52);
  v51 = vdupq_n_s32(0x3CCCCCCDu);
  re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a3, v44, v43 & 7, 2, &v51);
  v45 = a1[1];
  *&v46 = 0;
  DWORD2(v46) = 0;
  if (v45 > 1)
  {
    if (v45 == 2)
    {
      v46 = xmmword_1E308A730;
    }
  }

  else if (v45)
  {
    if (v45 == 1)
    {
      v46 = xmmword_1E30476A0;
    }
  }

  else
  {
    v46 = xmmword_1E3047670;
  }

  v47 = 0.25;
  if (*(a1 + 8))
  {
    v47 = 1.0;
  }

  *(&v46 + 3) = v47;
  v51 = v46;
  return re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a3, v44, v43, 3, &v51);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::AcousticMeshAsset>(re::AcousticMeshAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::AcousticMeshAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

void re::introspect_AudioDebugDrawMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AA5C8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AA5D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA5D0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AA688, "AudioDebugDrawMode", 4, 4, 1, 1);
      qword_1EE1AA688 = &unk_1F5D0C658;
      qword_1EE1AA6C8 = &re::introspect_AudioDebugDrawMode(BOOL)::enumTable;
      dword_1EE1AA698 = 9;
      __cxa_guard_release(&qword_1EE1AA5D0);
    }

    if (_MergedGlobals_285)
    {
      break;
    }

    _MergedGlobals_285 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AA688, a2);
    v37 = 0xFA7BEE5A61D098C8;
    v38 = "AudioDebugDrawMode";
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
      v6 = qword_1EE1AA6C8;
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
      xmmword_1EE1AA6A8 = v39;
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
    if (__cxa_guard_acquire(&qword_1EE1AA5C8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Wireframe";
      qword_1EE1AA628 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Solid";
      qword_1EE1AA630 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Transparent";
      qword_1EE1AA638 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Lines";
      qword_1EE1AA640 = v35;
      __cxa_guard_release(&qword_1EE1AA5C8);
    }
  }
}

void re::introspect_AudioDebugDrawLevel(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AA5D8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AA5E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA5E0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AA6D0, "AudioDebugDrawLevel", 1, 1, 1, 1);
      qword_1EE1AA6D0 = &unk_1F5D0C658;
      qword_1EE1AA710 = &re::introspect_AudioDebugDrawLevel(BOOL)::enumTable;
      dword_1EE1AA6E0 = 9;
      __cxa_guard_release(&qword_1EE1AA5E0);
    }

    if (byte_1EE1AA5C1)
    {
      break;
    }

    byte_1EE1AA5C1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AA6D0, a2);
    v35 = 0x5501DCF1D81DC1C6;
    v36 = "AudioDebugDrawLevel";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1AA710;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1AA6F0 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v34);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1AA5D8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Disabled";
      qword_1EE1AA610 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "ECSComponent";
      qword_1EE1AA618 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "PHASE";
      qword_1EE1AA620 = v33;
      __cxa_guard_release(&qword_1EE1AA5D8);
    }
  }
}

void re::introspect_AudioDebugDrawOptions(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AA5E8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AA5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA5F0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AA718, "AudioDebugDrawOptions", 4, 4, 1, 1);
      qword_1EE1AA718 = &unk_1F5D0C658;
      qword_1EE1AA758 = &re::introspect_AudioDebugDrawOptions(BOOL)::enumTable;
      dword_1EE1AA728 = 9;
      __cxa_guard_release(&qword_1EE1AA5F0);
    }

    if (byte_1EE1AA5C2)
    {
      break;
    }

    byte_1EE1AA5C2 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AA718, a2);
    v37 = 0x1BFE67DDAA6FE07ALL;
    v38 = "AudioDebugDrawOptions";
    v41 = 0x607DD0F01DCLL;
    v42 = "uint32_t";
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
      v6 = qword_1EE1AA758;
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
      xmmword_1EE1AA738 = v39;
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
    if (__cxa_guard_acquire(&qword_1EE1AA5E8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Disabled";
      qword_1EE1AA648 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "AudioSources";
      qword_1EE1AA650 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "VirtualAcousticGeometries";
      qword_1EE1AA658 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 4;
      *(v35 + 16) = "ARAcousticGeometries";
      qword_1EE1AA660 = v35;
      __cxa_guard_release(&qword_1EE1AA5E8);
    }
  }
}

void *re::ecs2::allocInfo_AudioDebugComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AA5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA5F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA760, "AudioDebugComponent");
    __cxa_guard_release(&qword_1EE1AA5F8);
  }

  return &unk_1EE1AA760;
}

void re::ecs2::initInfo_AudioDebugComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v25[0] = 0x5501DB4321E1AA80;
  v25[1] = "AudioDebugComponent";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1AA600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA600))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AA668 = v14;
    v15 = re::introspectionAllocator();
    re::introspect_AudioDebugDrawLevel(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "debugDrawLevel";
    *(v17 + 16) = &qword_1EE1AA6D0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1900000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AA670 = v17;
    v18 = re::introspectionAllocator();
    re::introspect_AudioDebugDrawMode(v18, v19);
    v20 = (*(*v18 + 32))(v18, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "debugDrawMode";
    *(v20 + 16) = &qword_1EE1AA688;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x1C00000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1AA678 = v20;
    v21 = re::introspectionAllocator();
    re::introspect_AudioDebugDrawOptions(v21, v22);
    v23 = (*(*v21 + 32))(v21, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "debugDrawOptions";
    *(v23 + 16) = &qword_1EE1AA718;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x2000000003;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1AA680 = v23;
    __cxa_guard_release(&qword_1EE1AA600);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AA668;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioDebugComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioDebugComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioDebugComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioDebugComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219AudioDebugComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v24 = v26;
}

double re::internal::defaultConstruct<re::ecs2::AudioDebugComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  *v3 = &unk_1F5CDA168;
  *&result = 3;
  *(v3 + 28) = 3;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioDebugComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 256;
  *v1 = &unk_1F5CDA168;
  *&result = 3;
  *(v1 + 28) = 3;
  return result;
}

void *re::ecs2::allocInfo_AudioDebugSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AA608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA608))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA7F0, "AudioDebugSystem");
    __cxa_guard_release(&qword_1EE1AA608);
  }

  return &unk_1EE1AA7F0;
}

void re::ecs2::initInfo_AudioDebugSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xBB723698560B198;
  v8[1] = "AudioDebugSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1B800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioDebugSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioDebugSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioDebugSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioDebugSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioDebugSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioDebugSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioDebugSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::ecs2::AudioDebugSystem::~AudioDebugSystem(re::ecs2::AudioDebugSystem *this)
{
  *this = &unk_1F5CF2838;
  v2 = (this + 248);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 49);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  std::unique_ptr<re::audio::MeshVisualizer,std::function<void ()(re::audio::MeshVisualizer*)>>::~unique_ptr[abi:nn200100](v2);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CF2838;
  v2 = (this + 248);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 49);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  std::unique_ptr<re::audio::MeshVisualizer,std::function<void ()(re::audio::MeshVisualizer*)>>::~unique_ptr[abi:nn200100](v2);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t (***re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(uint64_t a1))(void)
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

uint64_t *std::unique_ptr<re::audio::MeshVisualizer,std::function<void ()(re::audio::MeshVisualizer*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = a1[4];
  v6 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
LABEL_4:
    std::__function::__value_func<void ()(re::audio::MeshVisualizer *)>::~__value_func[abi:nn200100]((a1 + 1));
    return a1;
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::audio::MeshVisualizer *)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__value_func<void ()(re::audio::MeshVisualizer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

re *_ZNSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_5audio14MeshVisualizerEJEEENS_10unique_ptrIT_NS_8functionIFvPS7_EEEEEDpOT0_EUlPS5_E_NS_9allocatorISH_EEFvSG_EEclEOSG_(re *result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    v4 = v2[46];
    if (v4)
    {
      operator delete(v4);
    }

    v5 = v2[40];
    if (v5)
    {
      v2[41] = v5;
      operator delete(v5);
    }

    v6 = v2[36];
    if (v6)
    {
      operator delete(v6);
    }

    v7 = v2[30];
    if (v7)
    {
      v2[31] = v7;
      operator delete(v7);
    }

    v8 = v2[26];
    if (v8)
    {
      operator delete(v8);
    }

    v9 = v2[20];
    if (v9)
    {
      v2[21] = v9;
      operator delete(v9);
    }

    re::AssetHandle::~AssetHandle((v2 + 9));
    re::AssetHandle::~AssetHandle((v2 + 6));
    v10.n128_f64[0] = re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v2);
    v11 = *(*v3 + 40);

    return v11(v3, v2, v10);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_5audio14MeshVisualizerEJEEENS_10unique_ptrIT_NS_8functionIFvPS7_EEEEEDpOT0_EUlPS5_E_NS_9allocatorISH_EEFvSG_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 56;
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

void re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::AssetHandle::~AssetHandle((a1 + 8));
    v3 = *(a1 + 40);
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddComponents,re::ecs2::AudioDebugSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v7 = &a3[a4];
    do
    {
      v8 = *v4;
      v9 = *(*v4 + 16);
      if (v9)
      {
        if (v9 == re::ecs2::ComponentHelper::privateSceneDataEntity(*(a2 + 472), 0))
        {
          v10 = *(a2 + 472);
          v17 = v8;
          v11 = re::ecs2::SceneComponentTable::get((v10 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v11)
          {
            v12 = *(v11 + 384);
            if (v12)
            {
              v13 = *(v11 + 400);
              v14 = 8 * v12;
              do
              {
                v16 = *v13;
                if (*(v16 + 16))
                {
                  re::HashTable<re::ecs2::AudioPlayerComponent *,re::ecs2::AudioDebugComponent const*,re::Hash<re::ecs2::AudioPlayerComponent *>,re::EqualTo<re::ecs2::AudioPlayerComponent *>,true,false>::add(a1 + 392, &v16, &v17);
                }

                ++v13;
                v14 -= 8;
              }

              while (v14);
            }
          }
        }

        else
        {
          re::ecs2::AudioDebugSystem::didAddComponentsRecursive(a1, v9, v8);
        }
      }

      ++v4;
    }

    while (v4 != v7);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioDebugComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveComponents,re::ecs2::AudioDebugSystem>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v64 = 0x7FFFFFFFLL;
  if (!a4)
  {
    v59 = 0;
    v57 = 0uLL;
    v58 = 0uLL;
    v60 = 0x7FFFFFFFLL;
    goto LABEL_102;
  }

  v4 = a3;
  v5 = 8 * a4;
  v52 = 8 * a4;
  v6 = a3;
  do
  {
    if (*v6)
    {
      v7 = *(*v6 + 16);
      if (v7)
      {
        collectEntitiesRecursive(&v61, v7);
      }
    }

    ++v6;
    v5 -= 8;
  }

  while (v5);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v60 = 0x7FFFFFFFLL;
  v8 = v52;
  if (v63)
  {
    v9 = 0;
    v10 = v62;
    v11 = 8;
    do
    {
      if ((*(v62 + v11) & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      ++v9;
      v11 += 24;
    }

    while (v63 != v9);
    LODWORD(v9) = v63;
LABEL_12:
    if (v63 == v9)
    {
      goto LABEL_102;
    }

    v49 = v4;
    v51 = v63;
LABEL_14:
    v12 = *(v10 + 24 * v9 + 16);
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v56 = 0x7FFFFFFFLL;
    if (v57)
    {
      if (HIDWORD(v58) <= 3)
      {
        v13 = 3;
      }

      else
      {
        v13 = HIDWORD(v58);
      }

      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v53, v57, v13);
      v14 = v59;
      if (v59)
      {
        v15 = (v58 + 16);
        do
        {
          if ((*(v15 - 2) & 0x80000000) != 0)
          {
            v16 = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(&v53, v15[1] % DWORD2(v54), v15[1]);
            *(v16 + 8) = *(v15 - 1);
            *(v16 + 16) = *v15;
          }

          v15 += 4;
          --v14;
        }

        while (v14);
      }

      v8 = v52;
      v69[0] = v12;
      if (v53)
      {
        v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
        v18 = *(*(&v53 + 1) + 4 * ((v17 ^ (v17 >> 31)) % DWORD2(v54)));
        if (v18 != 0x7FFFFFFF)
        {
          for (i = v18; i != 0x7FFFFFFF; i = *(v54 + 32 * i) & 0x7FFFFFFF)
          {
            if (*(v54 + 32 * i + 8) == v12)
            {
              do
              {
                if (*(v54 + 32 * v18 + 8) == v12)
                {
                  goto LABEL_32;
                }

                v18 = *(v54 + 32 * v18) & 0x7FFFFFFF;
              }

              while (v18 != 0x7FFFFFFF);
              v18 = 0x7FFFFFFFLL;
LABEL_32:
              v20 = *(v54 + 32 * v18 + 16);
              goto LABEL_83;
            }
          }
        }
      }
    }

    else
    {
      v69[0] = v12;
    }

    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v68 = 0x7FFFFFFFLL;
    if (!v12)
    {
      v20 = 0;
      goto LABEL_82;
    }

    v21 = v12;
    while (1)
    {
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) >> 27));
      v23 = v22 ^ (v22 >> 31);
      if (!DWORD2(v66))
      {
        break;
      }

      v24 = v23 % DWORD2(v66);
      v25 = *(*(&v65 + 1) + 4 * v24);
      if (v25 == 0x7FFFFFFF)
      {
        goto LABEL_42;
      }

      while (*(v66 + 24 * v25 + 16) != v21)
      {
        LODWORD(v25) = *(v66 + 24 * v25 + 8) & 0x7FFFFFFF;
        if (v25 == 0x7FFFFFFF)
        {
          goto LABEL_42;
        }
      }

LABEL_43:
      v26 = re::ecs2::EntityComponentCollection::get((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      v20 = v26;
      if (v26)
      {
        v27 = v8;
        v28 = v4;
        while (*v28 != v26)
        {
          ++v28;
          v27 -= 8;
          if (!v27)
          {
            goto LABEL_50;
          }
        }

        if (v27)
        {
          v20 = 0;
        }
      }

LABEL_50:
      v21 = *(v69[0] + 32);
      if (!v21)
      {
        v69[0] = 0;
LABEL_58:
        v30 = v67;
        if (v67)
        {
          v31 = 0;
          v32 = v67;
          v33 = v66;
          v34 = 8;
          while ((*(v66 + v34) & 0x80000000) == 0)
          {
            ++v31;
            v34 += 24;
            if (v67 == v31)
            {
              LODWORD(v31) = v67;
              break;
            }
          }

          if (v67 != v31)
          {
            while (2)
            {
              v35 = *(v33 + 24 * v31 + 16);
              v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
              v37 = v36 ^ (v36 >> 31);
              if (v53)
              {
                v38 = v37 % DWORD2(v54);
                v39 = *(*(&v53 + 1) + 4 * v38);
                if (v39 != 0x7FFFFFFF)
                {
                  while (*(v54 + 32 * v39 + 8) != v35)
                  {
                    v39 = *(v54 + 32 * v39) & 0x7FFFFFFF;
                    if (v39 == 0x7FFFFFFF)
                    {
                      goto LABEL_70;
                    }
                  }

                  ++HIDWORD(v56);
                  *(v54 + 32 * v39 + 16) = v20;
LABEL_72:
                  v33 = v66;
                  if (v32 <= v31 + 1)
                  {
                    v41 = v31 + 1;
                  }

                  else
                  {
                    v41 = v32;
                  }

                  while (v41 - 1 != v31)
                  {
                    LODWORD(v31) = v31 + 1;
                    if ((*(v66 + 24 * v31 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_79;
                    }
                  }

                  LODWORD(v31) = v41;
LABEL_79:
                  if (v31 == v30)
                  {
                    goto LABEL_80;
                  }

                  continue;
                }
              }

              else
              {
                LODWORD(v38) = 0;
              }

              break;
            }

LABEL_70:
            v40 = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(&v53, v38, v37);
            *(v40 + 8) = v35;
            *(v40 + 16) = v20;
            ++HIDWORD(v56);
            v32 = v67;
            goto LABEL_72;
          }

LABEL_80:
          v4 = v49;
        }

        v8 = v52;
LABEL_82:
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v65);
LABEL_83:
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v53);
        if (!v20)
        {
          v43 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v43)
          {
            re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(a1 + 344, v43);
          }

          v44 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v44)
          {
            v45 = v44;
            do
            {
              v46 = v12;
              v12 = *(v12 + 32);
            }

            while (v12);
            v47 = re::ecs2::ComponentHelper::privateSceneDataEntity(*(v46 + 24), 1);
            *&v65 = re::ecs2::EntityComponentCollection::get((v47 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v65)
            {
              v69[0] = v45;
              re::HashTable<re::ecs2::AudioPlayerComponent *,re::ecs2::AudioDebugComponent const*,re::Hash<re::ecs2::AudioPlayerComponent *>,re::EqualTo<re::ecs2::AudioPlayerComponent *>,true,false>::addOrReplace(a1 + 392, v69, &v65);
            }

            else
            {
              re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(a1 + 392, v45);
            }
          }
        }

        v10 = v62;
        if (v63 <= v9 + 1)
        {
          v42 = v9 + 1;
        }

        else
        {
          v42 = v63;
        }

        while (v42 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(v62 + 24 * v9 + 8) & 0x80000000) != 0)
          {
            goto LABEL_91;
          }
        }

        LODWORD(v9) = v42;
LABEL_91:
        if (v9 == v51)
        {
          goto LABEL_102;
        }

        goto LABEL_14;
      }

      v29 = *(v21 + 304) & 0x80;
      if (v29)
      {
        v21 = 0;
      }

      v69[0] = v21;
      if (v20 || v29)
      {
        goto LABEL_58;
      }
    }

    LODWORD(v24) = 0;
LABEL_42:
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addAsCopy(&v65, v24, v23, v69, v69);
    ++HIDWORD(v68);
    v21 = v69[0];
    goto LABEL_43;
  }

LABEL_102:
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v57);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v61);
  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddAcousticMeshComponents,re::ecs2::AudioDebugSystem>(uint64_t a1, const re::ecs2::Entity *a2, unint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = 8 * a4;
    do
    {
      v7 = *a3;
      v8 = *(*a3 + 16);
      if (v8)
      {
        if (AudioDebugComponentFromEntity)
        {
          v10 = AudioDebugComponentFromEntity;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v14, a1 + 344, v7, v11 ^ (v11 >> 31));
          if (HIDWORD(v15) == 0x7FFFFFFF)
          {
            v12 = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1 + 344, v15, v14);
            *(v12 + 8) = v7;
            *(v12 + 16) = v10;
            ++*(a1 + 384);
          }
        }
      }

      ++a3;
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveAcousticMeshComponents,re::ecs2::AudioDebugSystem>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = 8 * a4;
    do
    {
      v7 = *a3++;
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(a1 + 344, v7);
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::didAddAudioPlayerComponents,re::ecs2::AudioDebugSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::ecs2::ComponentHelper::privateSceneDataEntity(*(a2 + 472), 1);
  v8 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (a4)
  {
    v10 = v8;
    v11 = 8 * a4;
    do
    {
      v17 = *a3;
      v12 = *(v17 + 16);
      if (v12)
      {
        if (AudioDebugComponentFromEntity)
        {
          v14 = AudioDebugComponentFromEntity;
        }

        else
        {
          v14 = v10;
        }

        v16 = v14;
        if (v14)
        {
          re::HashTable<re::ecs2::AudioPlayerComponent *,re::ecs2::AudioDebugComponent const*,re::Hash<re::ecs2::AudioPlayerComponent *>,re::EqualTo<re::ecs2::AudioPlayerComponent *>,true,false>::add(a1 + 392, &v17, &v16);
        }
      }

      ++a3;
      v11 -= 8;
    }

    while (v11);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioDebugSystem::willRemoveAudioPlayerComponents,re::ecs2::AudioDebugSystem>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = 8 * a4;
    do
    {
      v7 = *a3++;
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(a1 + 392, v7);
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::PrimitiveRenderingDynamicGeometry(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 280; i += 40)
  {
    v3 = result + i;
    v4 = a2 + i;
    *(v3 + 32) = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 0;
    *(v3 + 24) = 0;
    v5 = *(a2 + i + 8);
    *v3 = *(a2 + i);
    *(v3 + 8) = v5;
    *v4 = 0;
    *(v4 + 8) = 0;
    v6 = *(result + i + 16);
    *(v3 + 16) = *(a2 + i + 16);
    *(v4 + 16) = v6;
    v7 = *(result + i + 32);
    *(v3 + 32) = *(a2 + i + 32);
    *(v4 + 32) = v7;
    *(v4 + 24) = *(a2 + i + 24) + 1;
    *(v3 + 24) = *(result + i + 24) + 1;
  }

  v8 = 0;
  v9 = *(a2 + 288);
  v10 = *(a2 + 304);
  v11 = *(a2 + 336);
  *(result + 320) = *(a2 + 320);
  *(result + 336) = v11;
  *(result + 288) = v9;
  *(result + 304) = v10;
  v12 = *(a2 + 352);
  v13 = *(a2 + 368);
  v14 = *(a2 + 400);
  *(result + 384) = *(a2 + 384);
  *(result + 400) = v14;
  *(result + 352) = v12;
  *(result + 368) = v13;
  v15 = *(a2 + 416);
  v16 = *(a2 + 432);
  v17 = *(a2 + 464);
  *(result + 448) = *(a2 + 448);
  *(result + 464) = v17;
  *(result + 416) = v15;
  *(result + 432) = v16;
  v18 = *(a2 + 480);
  v19 = *(a2 + 496);
  v20 = *(a2 + 512);
  *(result + 528) = *(a2 + 528);
  *(result + 496) = v19;
  *(result + 512) = v20;
  *(result + 480) = v18;
  do
  {
    v21 = result + v8;
    v22 = a2 + v8;
    *(v21 + 568) = 0;
    *(v21 + 536) = 0;
    *(v21 + 552) = 0;
    *(v21 + 544) = 0;
    *(v21 + 560) = 0;
    *(v21 + 536) = *(a2 + v8 + 536);
    *(v22 + 536) = 0;
    *(v21 + 544) = *(a2 + v8 + 544);
    *(v22 + 544) = 0;
    v23 = *(result + v8 + 552);
    *(v21 + 552) = *(a2 + v8 + 552);
    *(v22 + 552) = v23;
    v24 = *(result + v8 + 568);
    *(v21 + 568) = *(a2 + v8 + 568);
    *(v22 + 568) = v24;
    *(v22 + 560) = *(a2 + v8 + 560) + 1;
    *(v21 + 560) = *(result + v8 + 560) + 1;
    v8 += 40;
  }

  while (v8 != 160);
  for (j = 0; j != 160; j += 40)
  {
    v26 = result + j;
    v27 = a2 + j;
    *(v26 + 728) = 0;
    *(v26 + 696) = 0;
    *(v26 + 712) = 0;
    *(v26 + 704) = 0;
    *(v26 + 720) = 0;
    *(v26 + 696) = *(a2 + j + 696);
    *(v27 + 696) = 0;
    *(v26 + 704) = *(a2 + j + 704);
    *(v27 + 704) = 0;
    v28 = *(result + j + 712);
    *(v26 + 712) = *(a2 + j + 712);
    *(v27 + 712) = v28;
    v29 = *(result + j + 728);
    *(v26 + 728) = *(a2 + j + 728);
    *(v27 + 728) = v29;
    *(v27 + 720) = *(a2 + j + 720) + 1;
    *(v26 + 720) = *(result + j + 720) + 1;
  }

  for (k = 0; k != 160; k += 40)
  {
    v31 = result + k;
    v32 = a2 + k;
    *(v31 + 888) = 0;
    *(v31 + 856) = 0;
    *(v31 + 872) = 0;
    *(v31 + 864) = 0;
    *(v31 + 880) = 0;
    *(v31 + 856) = *(a2 + k + 856);
    *(v32 + 856) = 0;
    *(v31 + 864) = *(a2 + k + 864);
    *(v32 + 864) = 0;
    v33 = *(result + k + 872);
    *(v31 + 872) = *(a2 + k + 872);
    *(v32 + 872) = v33;
    v34 = *(result + k + 888);
    *(v31 + 888) = *(a2 + k + 888);
    *(v32 + 888) = v34;
    *(v32 + 880) = *(a2 + k + 880) + 1;
    *(v31 + 880) = *(result + k + 880) + 1;
  }

  *(result + 1048) = 0;
  *(result + 1016) = 0;
  *(result + 1032) = 0;
  *(result + 1024) = 0;
  *(result + 1040) = 0;
  *(result + 1016) = *(a2 + 1016);
  *(a2 + 1016) = 0;
  *(result + 1024) = *(a2 + 1024);
  *(a2 + 1024) = 0;
  v35 = *(result + 1032);
  *(result + 1032) = *(a2 + 1032);
  *(a2 + 1032) = v35;
  v36 = *(result + 1048);
  *(result + 1048) = *(a2 + 1048);
  *(a2 + 1048) = v36;
  ++*(a2 + 1040);
  ++*(result + 1040);
  return result;
}

uint64_t re::internal::CallableRef<re::ecs2::AudioDebugSystem::renderTrackedCALayerEntities(re::ecs2::Scene *)::$_0,void ()(unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF29C0;
  v3 = *v2;
  v4 = v2[1];
  *(a2 + 40) = v2[2];
  *(a2 + 24) = v4;
  *(a2 + 8) = v3;
  return a2;
}

double std::invoke[abi:nn200100]<re::ecs2::AudioDebugSystem::renderTrackedCALayerEntities(re::ecs2::Scene *)::$_0 const&,unsigned long long>(uint64_t **a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v20[0] = a2;
  v4 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v3 + 152, v20);
  if (v4)
  {
    v6 = *(v4 + 8);
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v6 = *(v3 + 104);
    if (*(v6 + 39) != v20[0])
    {
      return result;
    }
  }

  if (*(*a1[1] + 32))
  {
    if ((a1[2][150] & 1) == 0)
    {
      re::PrimitiveRenderingContext::PrimitiveRenderingContext(v20, *(*a1[3] + 224), *(*a1[3] + 248));
      std::optional<re::PrimitiveRenderingContext>::operator=[abi:nn200100]<re::PrimitiveRenderingContext,void>(a1[2], v20);
      if (v27)
      {
        if (v31)
        {
          (*(*v27 + 40))();
        }

        v31 = 0;
        v28 = 0;
        v29 = 0;
        v27 = 0;
        ++v30;
      }

      re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(&v26);
      if (v21)
      {
        if (v25)
        {
          (*(*v21 + 40))();
        }

        v25 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        ++v24;
      }

      for (i = 122; i != 102; i -= 5)
      {
        re::DynamicArray<unsigned long>::deinit(&v20[i]);
      }

      do
      {
        re::DynamicArray<unsigned long>::deinit(&v20[i]);
        i -= 5;
      }

      while (i != 82);
      do
      {
        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v20[i]);
        i -= 5;
      }

      while (i != 62);
      for (j = 30; j != -5; j -= 5)
      {
        re::DynamicArray<unsigned long>::deinit(&v20[j]);
      }

      v9 = a1[2];
      if (*(v9 + 514) == 1)
      {
        v9[12] = 0;
        ++*(v9 + 26);
        *(v9 + 514) = 0;
      }

      if (*(v9 + 92))
      {
        *(v9 + 92) = 0;
      }

      *(v9 + 88) = 998445679;
    }

    re::TransformService::worldMatrixForRendering(v15, a1[4], v6, 1);
    re::audio::cleanUpTransformForPHASE(v15, v20, v10, v11, v12);
    v18 = xmmword_1E30474D0;
    v19 = 0u;
    v17 = 0u;
    re::decomposeScaleRotationTranslation<float>(v20, &v19, &v18, &v17);
    v16[0] = v19;
    v16[1] = v18;
    v16[2] = v17;
    v13 = a1[2];
    if ((v13[150] & 1) == 0 || (re::ecs2::AudioDebugSystem::createAxis(*a1[5], v16, v13), v14 = a1[2], (v14[150] & 1) == 0))
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      JUMPOUT(0x1E24A9F3CLL);
    }

    return re::ecs2::AudioDebugSystem::createShape(a1[5], v16, v14);
  }

  return result;
}

uint64_t re::internal::Callable<re::ecs2::AudioDebugSystem::renderTrackedCALayerEntities(re::ecs2::Scene *)::$_0,void ()(unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF29C0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::AudioDebugSystem::renderTrackedCALayerEntities(re::ecs2::Scene *)::$_0,void ()(unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF29C0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219AudioDebugComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::EDRColorManagementComponent::~EDRColorManagementComponent(re::ecs2::EDRColorManagementComponent *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    _Block_release(v2);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::EDRColorManagementComponent::~EDRColorManagementComponent(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_EDRColorManagementComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_286, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_286))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA898, "EDRColorManagementComponent");
    __cxa_guard_release(&_MergedGlobals_286);
  }

  return &unk_1EE1AA898;
}

void re::ecs2::initInfo_EDRColorManagementComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x34DD0CE7CF85CC94;
  v16[1] = "EDRColorManagementComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AA890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA890))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AA888 = v14;
    __cxa_guard_release(&qword_1EE1AA890);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AA888;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::EDRColorManagementComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::EDRColorManagementComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::EDRColorManagementComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::EDRColorManagementComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227EDRColorManagementComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::EDRColorManagementComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF2A18;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::EDRColorManagementComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF2A18;
  *(v1 + 32) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs227EDRColorManagementComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::ShadowScopeComponent::ShadowScopeComponent(re::ecs2::ShadowScopeComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF2AA0;
  *(v1 + 28) = 1065353216;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  for (i = 48; i != 80; i += 16)
  {
    *(v1 + i) = re::ecs2::kDefaultLightDirection;
  }
}

void re::ecs2::introspect_ShadowScopeMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AA930, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AA938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA938))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AA980, "ShadowScopeMode", 4, 4, 1, 1);
      qword_1EE1AA980 = &unk_1F5D0C658;
      qword_1EE1AA9C0 = &re::ecs2::introspect_ShadowScopeMode(BOOL)::enumTable;
      dword_1EE1AA990 = 9;
      __cxa_guard_release(&qword_1EE1AA938);
    }

    if (_MergedGlobals_287)
    {
      break;
    }

    _MergedGlobals_287 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AA980, a2);
    v33 = 0x8A5DC928AAFE896ELL;
    v34 = "ShadowScopeMode";
    v37 = 0x607DD0F01DCLL;
    v38 = "uint32_t";
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
      v6 = qword_1EE1AA9C0;
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
      xmmword_1EE1AA9A0 = v35;
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
    if (__cxa_guard_acquire(&qword_1EE1AA930))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Floor";
      qword_1EE1AA950 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Wall";
      qword_1EE1AA958 = v31;
      __cxa_guard_release(&qword_1EE1AA930);
    }
  }
}

void *re::ecs2::allocInfo_ShadowScopeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AA940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA940))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA9C8, "ShadowScopeComponent");
    __cxa_guard_release(&qword_1EE1AA940);
  }

  return &unk_1EE1AA9C8;
}

void re::ecs2::initInfo_ShadowScopeComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0xAB3D6A8B5C65BCD2;
  v27[1] = "ShadowScopeComponent";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1AA948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA948))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AA960 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "opacity";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AA968 = v18;
    v19 = re::introspectionAllocator();
    re::ecs2::introspect_ShadowScopeMode(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "mode";
    *(v21 + 16) = &qword_1EE1AA980;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AA970 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Vector3<float> [2]>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "directions";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x3000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1AA978 = v25;
    __cxa_guard_release(&qword_1EE1AA948);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AA960;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowScopeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowScopeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowScopeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowScopeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220ShadowScopeComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void re::ecs2::ShadowScopeComponent::~ShadowScopeComponent(re::ecs2::ShadowScopeComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs220ShadowScopeComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_PortalRenderingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_288))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAA60, "PortalRenderingSystem");
    __cxa_guard_release(&_MergedGlobals_288);
  }

  return &unk_1EE1AAA60;
}

void re::ecs2::initInfo_PortalRenderingSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xB8F182DDF4708B5ELL;
  v8[1] = "PortalRenderingSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PortalRenderingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PortalRenderingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PortalRenderingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PortalRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PortalRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PortalRenderingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PortalRenderingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::PortalRenderingSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF2B28;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PortalRenderingSystem>(uint64_t a1)
{
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF2B28;
  return result;
}

void re::ecs2::PortalRenderingSystem::update(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (!v2 || (*(v2 + 432) & 0x10) != 0)
  {
    if (*(a1 + 256))
    {
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v5, 3127, a1, 0, 0, 0);
      (*(**(a1 + 256) + 48))(*(a1 + 256));
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v5, v3, v4);
    }
  }
}

uint64_t re::ecs2::PortalRenderingSystem::willAddSystemToECSService(re::ecs2::PortalRenderingSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  result = *(this + 32);
  if (result)
  {
    v3 = *(*result + 16);

    return v3();
  }

  return result;
}

uint64_t re::ecs2::PortalRenderingSystem::willAddSceneToECSService(uint64_t a1)
{
  result = *(a1 + 256);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t re::ecs2::PortalRenderingSystem::willRemoveSceneFromECSService(uint64_t a1)
{
  result = *(a1 + 256);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void re::ecs2::PortalRenderingSystem::~PortalRenderingSystem(re::ecs2::PortalRenderingSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_PhysicsSimulationService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_289, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_289))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAAF8, "PhysicsSimulationService");
    __cxa_guard_release(&_MergedGlobals_289);
  }

  return &unk_1EE1AAAF8;
}

void re::ecs2::initInfo_PhysicsSimulationService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x747915B438994E8ELL;
  v8[1] = "PhysicsSimulationService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_PhysicsSimulationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

_anonymous_namespace_ *re::ecs2::WorldRootProvider::worldIds@<X0>(uint64_t *__return_ptr a1@<X8>, re::ecs2::WorldRootProvider *this@<X0>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  a1[2] = 0;
  *(a1 + 6) = 0;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  v3 = (*(**this + 16))(*this);
  re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::operator=(a1, v3);

  return re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a1, &re::kDefaultWorldRootId);
}

uint64_t re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 124) || *(a1 + 16) || *(a1 + 120))
  {
    v4 = (a1 + 96);
    if (*(a1 + 96))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v4);
    }

    *(a1 + 16) = 0;
    ++*(a1 + 24);
    *a1 = 0;
  }

  *a1 = *a2;
  if (*(a2 + 124))
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(a1 + 96, a2 + 96);
  }

  else
  {
    re::DynamicInlineArray<__CVBuffer *,2ul>::operator=((a1 + 16), (a2 + 16));
  }

  return a1;
}

uint64_t *re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot@<X0>(uint64_t *__return_ptr a1@<X8>, re::ecs2::RenderingSubsystem *this@<X0>, const re::ecs2::Scene *a3@<X1>, re::DynamicString **a4@<X2>)
{
  result = re::RenderFrame::getStreamNameForWorldRoot(a4, (*(this + 13) + 288), a3);
  v6 = result[2];
  if ((result[1] & 1) == 0)
  {
    v6 = result + 9;
  }

  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v8 = v6[1];
      if (v8)
      {
        v9 = (v6 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = 2 * v7;
  a1[1] = v6;
  return result;
}

_anonymous_namespace_ *re::ecs2::RenderingSubsystem::willAddSystemToECSService(re::ecs2::RenderingSubsystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 30) = re::ServiceLocator::serviceOrNull<re::AssetService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 31) = re::ServiceLocator::serviceOrNull<re::ShadowService>(v5);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 33) = re::ServiceLocator::serviceOrNull<re::DepthMitigationService>(v6);
  v7 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 32) = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v7);
  v8 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 34) = re::ServiceLocator::serviceOrNull<re::ecs2::RenderOptionsService>(v8);
  v9 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 35) = re::ServiceLocator::serviceOrNull<re::ecs2::BillboardService>(v9);
  v10 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v10);
  *(this + 36) = result;
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ShadowService>(uint64_t a1)
{
  {
    re::introspect<re::ShadowService>(BOOL)::info = re::introspect_ShadowService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ShadowService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::DepthMitigationService>(uint64_t a1)
{
  {
    re::introspect<re::DepthMitigationService>(BOOL)::info = re::introspect_DepthMitigationService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::DepthMitigationService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::BillboardService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::BillboardService>(BOOL)::info = re::ecs2::introspect_BillboardService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::BillboardService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

double re::ecs2::RenderingSubsystem::willRemoveSystemFromECSService(re::ecs2::RenderingSubsystem *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(a1);
      }
    }

    else if (v4)
    {
      if (*(a2 + 28) <= 3u)
      {
        v5 = 3;
      }

      else
      {
        v5 = *(a2 + 28);
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(a1, v4, v5);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::copy(a1, a2);
    }
  }

  return a1;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      if ((*(v8 + v6) & 0x80000000) != 0)
      {
        v9 = 0xBF58476D1CE4E5B9 * (*(v8 + v6 + 8) ^ (*(v8 + v6 + 8) >> 30));
        v10 = (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(a1, v10 % *(a1 + 24), v10, v8 + v6 + 8, (v8 + v6 + 8));
        v5 = *(a2 + 32);
      }

      v6 += 16;
    }
  }
}

void media::Spatial3DImageAnimationEngine::~Spatial3DImageAnimationEngine(media::Spatial3DImageAnimationEngine *this)
{
  v2 = this + 40;
  for (i = 24; i != 24696; i += 4112)
  {
    v4 = *(this + i);
    if (v4)
    {
      v5 = 16 * v4;
      v6 = v2;
      do
      {
        v7 = *v6;
        v6 += 2;
        re::internal::destroyPersistent<media::FloatAnimation>("~Spatial3DImageAnimationEngine", 13, v7);
        v5 -= 16;
      }

      while (v5);
    }

    v2 += 4112;
  }

  v8 = (this + 20592);
  v9 = -24672;
  do
  {
    *(v8 - 1) = 0;
    ++*v8;
    v8 -= 1028;
    v9 += 4112;
  }

  while (v9);
}

double media::Spatial3DImageAnimationEngine::addScreenEntityTransitionToMXIEntityAnimation(media::Spatial3DImageAnimationEngine *this)
{
  v2 = media::Spatial3DImageAnimationEngine::add(this, 0, 0);
  if (v2)
  {
    *(v2 + 8) = xmmword_1E3083D70;
  }

  v3 = media::Spatial3DImageAnimationEngine::add(this, 2, 0);
  if (v3)
  {
    result = 0.0000000134110482;
    *(v3 + 8) = xmmword_1E308EC80;
  }

  return result;
}

uint64_t media::Spatial3DImageAnimationEngine::add(float *a1, uint64_t a2, char a3)
{
  if (a2 > 6)
  {
    return 0;
  }

  v6 = a2;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v15 = re::globalAllocators(a1);
        v3 = (*(*v15[2] + 32))(v15[2], 48, 8);
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        *(v3 + 24) = a1 + 2;
        *(v3 + 32) = 0;
        *(v3 + 36) = 0;
        *v3 = &unk_1F5CF2C10;
        *(v3 + 40) = 0;
        v8 = MEMORY[0x1E69793C8];
        v9 = MEMORY[0x1E6979EA8];
        goto LABEL_17;
      }

      v10 = re::globalAllocators(a1);
      v11 = (*(*v10[2] + 32))(v10[2], 40, 8);
      v3 = v11;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = a1 + 1;
    }

    else
    {
      v14 = re::globalAllocators(a1);
      v11 = (*(*v14[2] + 32))(v14[2], 40, 8);
      v3 = v11;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = a1;
    }

    *(v11 + 32) = 0;
    *(v11 + 36) = 0;
    *v11 = &unk_1F5CF2BD0;
    goto LABEL_18;
  }

  if (a2 <= 4)
  {
    if (a2 != 3)
    {
      v13 = re::globalAllocators(a1);
      v3 = (*(*v13[2] + 32))(v13[2], 48, 8);
      if (!media::FloatEaseInOutAnimation::FloatEaseInOutAnimation(v3, a1 + 4))
      {
        return v3;
      }

LABEL_18:
      v18 = &a1[1028 * v6];
      v21 = *(v18 + 3);
      v19 = v18 + 6;
      v20 = v21;
      if (v21 <= 0xFF)
      {
        v22 = &v19[4 * v20];
        *(v22 + 2) = v3;
        *(v22 + 24) = a3;
        *v19 = v20 + 1;
        ++*(v19 + 2);
      }

      return v3;
    }

    v7 = re::globalAllocators(a1);
    v3 = (*(*v7[2] + 32))(v7[2], 48, 8);
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = a1 + 3;
    *(v3 + 32) = 0;
    *(v3 + 36) = 0;
    *v3 = &unk_1F5CF2C50;
    *(v3 + 40) = 0;
    v8 = MEMORY[0x1E69793C8];
    v9 = MEMORY[0x1E6979EC8];
LABEL_17:
    v16 = [v8 functionWithName:*v9];
    v17 = *(v3 + 40);
    *(v3 + 40) = v16;

    goto LABEL_18;
  }

  if (a2 == 5)
  {
    v12 = re::globalAllocators(a1);
    v3 = (*(*v12[2] + 32))(v12[2], 48, 8);
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = a1 + 5;
    *(v3 + 32) = 0;
    *(v3 + 36) = 0;
    *v3 = &unk_1F5CEABC0;
    *(v3 + 40) = 1065353216;
    goto LABEL_18;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 6);
  result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v24, v25);
  __break(1u);
  return result;
}

double media::Spatial3DImageAnimationEngine::addMXIEntityTransitionToScreenEntityAnimation(media::Spatial3DImageAnimationEngine *this)
{
  v2 = media::Spatial3DImageAnimationEngine::add(this, 2, 0);
  if (v2)
  {
    *(v2 + 8) = xmmword_1E308EC90;
  }

  v3 = media::Spatial3DImageAnimationEngine::add(this, 0, 0);
  if (v3)
  {
    result = 0.000000381469873;
    *(v3 + 8) = xmmword_1E308ECA0;
  }

  return result;
}

double media::Spatial3DImageAnimationEngine::addAlchemistGenerationEffectFadeOutAnimation(media::Spatial3DImageAnimationEngine *this)
{
  v2 = media::Spatial3DImageAnimationEngine::add(this, 4, 1);
  if (v2)
  {
    *(v2 + 8) = xmmword_1E308ECB0;
  }

  v3 = media::Spatial3DImageAnimationEngine::add(this, 3, 1);
  if (v3)
  {
    result = 0.000000381469873;
    *(v3 + 8) = xmmword_1E308ECC0;
  }

  return result;
}

uint64_t media::Spatial3DImageAnimationEngine::addMXIImmersiveTransitionAnimation(media::Spatial3DImageAnimationEngine *this, int a2)
{
  result = media::Spatial3DImageAnimationEngine::add(this, 5, 2);
  if (result)
  {
    v4 = 0.0;
    if (a2)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    *(result + 40) = 1063675494;
    *(result + 8) = 0x3F66666600000000;
    if (!a2)
    {
      v4 = 1.0;
    }

    *(result + 16) = v4;
    *(result + 20) = v5;
  }

  return result;
}

uint64_t media::Spatial3DImageAnimationEngine::update(uint64_t this, float a2, double a3, __n128 a4)
{
  v5 = this + 32;
  v6 = 24672;
  while (1)
  {
    if (!*(v5 - 8))
    {
      goto LABEL_9;
    }

    this = media::FloatAnimation::update(*(v5 + 8), a2, a3, a4);
    if (this)
    {
      goto LABEL_9;
    }

    if (!*(v5 - 8))
    {
      break;
    }

    this = re::internal::destroyPersistent<media::FloatAnimation>("update", 127, *(v5 + 8));
    v9 = *(v5 - 8);
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9 - 1;
    if (v9 != 1)
    {
      this = memmove((v5 + 8), (v5 + 24), 16 * v9 - 16);
    }

    *(v5 - 8) = v10;
    ++*v5;
LABEL_9:
    v5 += 4112;
    v6 -= 4112;
    if (!v6)
    {
      return this;
    }
  }

  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v11, v13);
  __break(1u);
LABEL_12:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeStableAt", 555, 0, 0);
  this = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v12, v14);
  __break(1u);
  return this;
}

void media::FloatEaseInAnimation::~FloatEaseInAnimation(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

float media::FloatEaseInAnimation::interpolate(id *this, double a2, float a3, float a4)
{
  v5 = *&a2;
  *&a2 = a4;
  [this[5] _solveForInput:a2];
  if (v6 > 0.999)
  {
    v6 = 1.0;
  }

  return v5 + ((a3 - v5) * v6);
}

void media::FloatEaseOutAnimation::~FloatEaseOutAnimation(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

float media::FloatEaseOutAnimation::interpolate(id *this, double a2, float a3, float a4)
{
  v5 = *&a2;
  *&a2 = a4;
  [this[5] _solveForInput:a2];
  if (v6 > 0.999)
  {
    v6 = 1.0;
  }

  return v5 + ((a3 - v5) * v6);
}

void *re::ecs2::allocInfo_ListenerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_290))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AABB0, "ListenerComponent");
    __cxa_guard_release(&_MergedGlobals_290);
  }

  return &unk_1EE1AABB0;
}

void re::ecs2::initInfo_ListenerComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x9E2DEA8680918512;
  v20[1] = "ListenerComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1AAB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAB90))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AABA0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "linearGain";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AABA8 = v18;
    __cxa_guard_release(&qword_1EE1AAB90);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AABA0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ListenerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ListenerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ListenerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ListenerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217ListenerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::ecs2::allocInfo_ListenerSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AAB98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAB98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAC40, "ListenerSystem");
    __cxa_guard_release(&qword_1EE1AAB98);
  }

  return &unk_1EE1AAC40;
}

void re::ecs2::initInfo_ListenerSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x7E48499C06873046;
  v8[1] = "ListenerSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ListenerSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ListenerSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ListenerSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ListenerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ListenerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ListenerSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ListenerSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::ListenerSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 1, 1);
  *v3 = &unk_1F5CF2C90;
  *(v3 + 224) = 0;
  result = 0.0;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 1065353216;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::ListenerSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a3 + 240);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::ListenerSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 1, 1);
  *v1 = &unk_1F5CF2C90;
  *(v1 + 224) = 0;
  result = 0.0;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 1065353216;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::ListenerSystem>(re::ecs2::System *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a1 + 240);

  re::ecs2::System::~System(a1);
}

_anonymous_namespace_ *re::ecs2::ListenerSystem::willAddSystemToECSService(re::ecs2::ListenerSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v3);
  *(this + 29) = result;
  return result;
}

uint64_t re::ecs2::ListenerSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

void re::ecs2::ListenerSystem::willAddSceneToECSService(re::ecs2::ListenerSystem *this, re::ecs2::Scene *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = a2;
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&buf = this;
    *(&buf + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ListenerSystem::willRemoveComponents,re::ecs2::ListenerSystem>;
    v18 = 0;
    v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 272), &buf);
    std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__emplace_unique_key_args<re::ecs2::Scene *,re::ecs2::Scene * const&>(this + 30, &v16, &v16);
    v4 = *(this + 28);
    if (v4)
    {
      v5 = *(*(v16 + 13) + 288);
      v6 = (*(*v4 + 16))(v4);
      if (v6)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = ___ZN2re4ecs214ListenerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke;
        v12 = &__block_descriptor_56_e5_v8__0l;
        v13 = v16;
        v14 = v5 >> 1;
        v15 = v6;
        v7 = (*(*v6 + 32))(v6, 768);
        v8 = *re::audioLogObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "[ListenerSystem] ->[willAddSystemToECSService] addServiceResetCallback :: Adding Callback", &buf, 2u);
        }
      }
    }
  }
}

void ___ZN2re4ecs214ListenerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *re::audioLogObjects(a1);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 134217984;
      v11 = v9;
      _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[ListenerSystem] ->[willAddSystemToECSService] addServiceResetCallback :: Start of Callback for scene: %llu", buf, 0xCu);
    }

    v4 = re::ecs2::SceneComponentTable::get((*(a1 + 32) + 200), re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v4)
    {
      v5 = *(v4 + 384);
      if (v5)
      {
        v6 = *(v4 + 400);
        v7 = 8 * v5;
        do
        {
          v8 = *v6++;
          (*(**(a1 + 48) + 352))(*(a1 + 48), *(v8 + 32));
          *(v8 + 32) = xmmword_1E3049610;
          v7 -= 8;
        }

        while (v7);
      }
    }

    (*(**(a1 + 48) + 88))(*(a1 + 48), 4, *(a1 + 40), 1);
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "[ListenerSystem] ->[willAddSystemToECSService] addServiceResetCallback :: Scene is a nullptr", buf, 2u);
  }
}

uint64_t re::ecs2::ListenerSystem::willRemoveSceneFromECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v5 = v2;
    *(&v5 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ListenerSystem::willRemoveComponents,re::ecs2::ListenerSystem>;
    v6 = 0;
    v7 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 272, &v5);
    std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__erase_unique<re::ecs2::Scene *>((v2 + 240), &v4);
    this = *(v2 + 224);
    if (this)
    {
      this = (*(*this + 16))(this, v4);
      if (this)
      {
        return (*(*this + 40))(this, 768, *(*(v4 + 13) + 288) >> 1);
      }
    }
  }

  return this;
}

void *re::ecs2::ListenerSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  if (result[5])
  {
    v3 = result;
    if (result[28])
    {
      v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v53);
      v6 = *(a3 + 200);
      if (v6)
      {
        v7 = *(a3 + 216);
        v47 = &v7[v6];
        v46 = vdupq_n_s64(1uLL);
        for (i = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType; ; i = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
        {
          v9 = *v7;
          isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
          if (isStatisticCollectionEnabled)
          {
            v11 = re::profilerThreadContext(isStatisticCollectionEnabled);
            v12 = re::ecs2::SceneComponentTable::get((v9 + 200), i[65]);
            v13 = v12 ? *(v12 + 384) : 0;
            v14 = *(v11 + 152);
            if (v14)
            {
              v15 = v14[1128].u64[0];
              if (v15 >= v13)
              {
                v15 = v13;
              }

              v14[1128].i64[0] = v15;
              v16 = v14[1128].u64[1];
              if (v16 <= v13)
              {
                v16 = v13;
              }

              v14[1128].i64[1] = v16;
              v17.i64[1] = v46.i64[1];
              v17.i64[0] = v13;
              v14[1129] = vaddq_s64(v14[1129], v17);
              *(v11 + 184) = 0;
            }
          }

          v18 = re::ecs2::SceneComponentTable::get((v9 + 200), i[65]);
          v19 = v18 ? *(v18 + 384) : 0;
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v54, 3063, v3, v19, 0, 0);
          v20 = *(*(v9 + 104) + 288);
          v21 = re::ecs2::SceneComponentTable::get((v9 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v22 = !v21 || *(v21 + 384) == 0;
          v48 = v22;
          v23 = re::ecs2::SceneComponentTable::get((v9 + 200), i[65]);
          if (v23)
          {
            v26 = *(v23 + 384);
            if (v26)
            {
              break;
            }
          }

LABEL_50:
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v54, v24, v25);
          if (++v7 == v47)
          {
            return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v53);
          }
        }

        v27 = v20 >> 1;
        v28 = *(v23 + 400);
        v29 = 8 * v26;
        while (1)
        {
          v30 = *v28;
          v31 = *(*(*v28 + 16) + 216);
          if (v31)
          {
            v32 = re::ecs2::NetworkComponent::owningProcessType(v31) == 0;
          }

          else
          {
            v32 = 1;
          }

          if (*(v30 + 40) == v27 && (v33 = *(v30 + 48), v33 == *(v30 + 128)))
          {
            v34 = (v30 + 32);
            if (*(v30 + 32))
            {
              goto LABEL_38;
            }
          }

          else
          {
            *(v30 + 32) = 0;
            v34 = (v30 + 32);
            *(v30 + 52) = 1065353216;
            *(v30 + 64) = xmmword_1E3047670;
            *(v30 + 80) = xmmword_1E3047680;
            *(v30 + 96) = xmmword_1E30476A0;
            *(v30 + 112) = xmmword_1E30474D0;
          }

          *(v30 + 40) = -1;
          if (!v32)
          {
            goto LABEL_49;
          }

          v35 = (*(**(v3 + 224) + 16))(*(v3 + 224), v9);
          if (v35)
          {
            v36 = (*(*v35 + 344))(v35, v27, *(v30 + 128));
            *(v30 + 32) = v36;
            if (!v36)
            {
              goto LABEL_49;
            }
          }

          else if (!*v34)
          {
            goto LABEL_49;
          }

          *(v30 + 40) = v27;
          v33 = *(v30 + 128);
          *(v30 + 48) = v33;
LABEL_38:
          if (v33 == 2)
          {
            v37 = (*(**(v3 + 224) + 16))(*(v3 + 224), v9);
            if (v37)
            {
              (*(*v37 + 360))(v37, *v34);
            }
          }

          re::TransformService::worldMatrix(*(v3 + 232), *(v30 + 16), 0, &v55);
          if (*(v30 + 52) != *(v30 + 28))
          {
            v38 = v55;
            v39 = v56;
            v40 = v57;
            v41 = v58;
LABEL_45:
            if ((*(*(v30 + 16) + 304) & 1) != 0 && (!v48 || *(v30 + 48) == 2))
            {
              v49 = v38;
              v50 = v39;
              v51 = v40;
              v52 = v41;
              v42 = (*(**(v3 + 224) + 16))(*(v3 + 224), v9);
              v43 = *(v30 + 32);
              v55 = v49;
              v56 = v50;
              v57 = v51;
              v58 = v52;
              v44 = *(v30 + 28);
              v45 = mach_absolute_time();
              (*(*v42 + 368))(v42, v43, &v55, v45, v44);
              *(v30 + 52) = *(v30 + 28);
              *(v30 + 64) = v49;
              *(v30 + 80) = v50;
              *(v30 + 96) = v51;
              *(v30 + 112) = v52;
            }

            goto LABEL_49;
          }

          v38 = v55;
          v39 = v56;
          v40 = v57;
          v41 = v58;
          if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v30 + 80), v56), vceqq_f32(*(v30 + 64), v55)), vandq_s8(vceqq_f32(*(v30 + 96), v57), vceqq_f32(*(v30 + 112), v58)))) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

LABEL_49:
          ++v28;
          v29 -= 8;
          if (!v29)
          {
            goto LABEL_50;
          }
        }
      }

      return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v53);
    }
  }

  return result;
}

void re::ecs2::ListenerSystem::~ListenerSystem(re::ecs2::ListenerSystem *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 240);

  re::ecs2::System::~System(this);
}

{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 240);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::unsafelyInplace<re::ecs2::ListenerComponent>(ArcSharedObject *a1)
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
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDDF00;
  *(v1 + 28) = 1065353216;
  *(v1 + 32) = xmmword_1E3049610;
  *(v1 + 48) = 1;
  *(v1 + 52) = 1065353216;
  *(v1 + 64) = xmmword_1E3047670;
  *(v1 + 80) = xmmword_1E3047680;
  result = 0.0;
  *(v1 + 96) = xmmword_1E30476A0;
  *(v1 + 112) = xmmword_1E30474D0;
  *(v1 + 128) = 1;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs217ListenerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ListenerSystem::willRemoveComponents,re::ecs2::ListenerSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 224))
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a3;
    v7 = &a3[a4];
    do
    {
      v8 = *v5;
      for (i = *(a1 + 256); i; i = *i)
      {
        v10 = (*(**(a1 + 224) + 16))(*(a1 + 224), i[2]);
        if (v10)
        {
          (*(*v10 + 352))(v10, *(v8 + 32));
        }
      }

      *(v8 + 32) = xmmword_1E3049610;
      ++v5;
    }

    while (v5 != v7);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

void *re::ecs2::introspect_SpatialVideoMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Screen";
    re::ecs2::introspect_SpatialVideoMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Spatial";
    qword_1EE1C59D0 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_SpatialVideoMode(BOOL)::info, "SpatialVideoMode", 1, 1, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::ecs2::introspect_SpatialVideoMode(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_SpatialVideoMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_SpatialVideoMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::ecs2::introspect_SpatialVideoMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::ecs2::introspect_SpatialVideoMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_SpatialVideoMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_SpatialVideoMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_SpatialVideoMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_SpatialVideoMode(BOOL)::info, a2);
  v14[0] = 0xA5C0ADA706287074;
  v14[1] = "SpatialVideoMode";
  xmmword_1EE1C59A0 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_SpatialVideoMode(BOOL)::info;
}

void *re::ecs2::introspect_ImageContentType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "None";
    re::ecs2::introspect_ImageContentType(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Mono";
    qword_1EE1C5B08 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Spatial";
    qword_1EE1C5B10 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_ImageContentType(BOOL)::info, "ImageContentType", 1, 1, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::ecs2::introspect_ImageContentType(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_ImageContentType(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_ImageContentType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::ecs2::introspect_ImageContentType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::ecs2::introspect_ImageContentType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_ImageContentType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_ImageContentType(BOOL)::info;
    }
  }

  re::ecs2::introspect_ImageContentType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_ImageContentType(BOOL)::info, a2);
  v16[0] = 0x3B4422DAEC277E30;
  v16[1] = "ImageContentType";
  xmmword_1EE1C5AD8 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_ImageContentType(BOOL)::info;
}

void *re::ecs2::introspect_ImageViewingMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Mono";
    re::ecs2::introspect_ImageViewingMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "SpatialStereo";
    qword_1EE1C5AA0 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Spatial3D";
    qword_1EE1C5AA8 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_ImageViewingMode(BOOL)::info, "ImageViewingMode", 1, 1, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::ecs2::introspect_ImageViewingMode(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_ImageViewingMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_ImageViewingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::ecs2::introspect_ImageViewingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::ecs2::introspect_ImageViewingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_ImageViewingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_ImageViewingMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_ImageViewingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_ImageViewingMode(BOOL)::info, a2);
  v16[0] = 0x3BB19B7F3ADCC44ALL;
  v16[1] = "ImageViewingMode";
  xmmword_1EE1C5A70 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_ImageViewingMode(BOOL)::info;
}

void *re::ecs2::introspect_ImageImmersiveViewingMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "None";
    re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Portal";
    qword_1EE1C5808 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Immersive";
    qword_1EE1C5810 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info, "ImageImmersiveViewingMode", 1, 1, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info, a2);
  v16[0] = 0x2FA9212071810500;
  v16[1] = "ImageImmersiveViewingMode";
  xmmword_1EE1C57D8 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info;
}

void *re::ecs2::introspect_ImmersiveAnimationMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Portal";
    re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Immersive";
    qword_1EE1C5870 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Expanding";
    qword_1EE1C5878 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "Collapsing";
    qword_1EE1C5880 = v16;
  }

  {
    v17 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info, "ImmersiveAnimationMode", 1, 1, 1, 1);
    *v17 = &unk_1F5D0C658;
    *(v17 + 8) = &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::enumTable;
    *(v17 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info, a2);
  v18[0] = 0xD3CC105FEF9C40D8;
  v18[1] = "ImmersiveAnimationMode";
  xmmword_1EE1C5840 = v19;
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info;
}

void re::ecs2::introspect_SpatialMediaBillboardingMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AACD8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AACE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AACE0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AAD10, "SpatialMediaBillboardingMode", 1, 1, 1, 1);
      qword_1EE1AAD10 = &unk_1F5D0C658;
      qword_1EE1AAD50 = &re::ecs2::introspect_SpatialMediaBillboardingMode(BOOL)::enumTable;
      dword_1EE1AAD20 = 9;
      __cxa_guard_release(&qword_1EE1AACE0);
    }

    if (_MergedGlobals_291)
    {
      break;
    }

    _MergedGlobals_291 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AAD10, a2);
    v35 = 0x40D35E6F71816C0CLL;
    v36 = "SpatialMediaBillboardingMode";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1AAD50;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1AAD30 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v34);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1AACD8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "None";
      qword_1EE1AACF8 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Headlocked";
      qword_1EE1AAD00 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Stabilized";
      qword_1EE1AAD08 = v33;
      __cxa_guard_release(&qword_1EE1AACD8);
    }
  }
}

void *re::ecs2::allocInfo_SpatialMediaComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AACF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AACF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AADB8, "SpatialMediaComponent");
    __cxa_guard_release(&qword_1EE1AACF0);
  }

  return &unk_1EE1AADB8;
}

void re::ecs2::initInfo_SpatialMediaComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v58[0] = 0x1AC73CC565FE1EFALL;
  v58[1] = "SpatialMediaComponent";
  if (v58[0])
  {
    if (v58[0])
    {
    }
  }

  *(this + 2) = v59;
  if ((atomic_load_explicit(&qword_1EE1AACE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AACE8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AAD58 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_spillTextureBlend";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AAD60 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "m_legibilityGradientStrength";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x5400000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AAD68 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "m_isMediaBillboardingEnabled";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x3C00000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1AAD70 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "m_isFlatGeometry";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x3400000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1AAD78 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "m_shouldAnimateImmersiveTransition";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x5C00000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1AAD80 = v34;
    v35 = re::introspectionAllocator();
    re::ecs2::introspect_SpatialMediaBillboardingMode(v35, v36);
    v37 = (*(*v35 + 32))(v35, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "m_mediaBillboardingMode";
    *(v37 + 16) = &qword_1EE1AAD10;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x5000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1AAD88 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_float(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "m_immersiveReducedExtent";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x5800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1AAD90 = v41;
    v42 = re::introspectionAllocator();
    v43 = re::introspect_Vector3F(1);
    v44 = (*(*v42 + 32))(v42, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "m_portalMediaPlaneOffset";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x2000000008;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1AAD98 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::introspect_float(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "m_magnificationExtent";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x6000000009;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1AADA0 = v48;
    v49 = re::introspectionAllocator();
    v51 = re::introspect_float(1, v50);
    v52 = (*(*v49 + 32))(v49, 72, 8);
    *v52 = 1;
    *(v52 + 8) = "m_magnificationVelocity";
    *(v52 + 16) = v51;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0x640000000ALL;
    *(v52 + 40) = 0;
    *(v52 + 48) = 0;
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    qword_1EE1AADA8 = v52;
    v53 = re::introspectionAllocator();
    v55 = re::introspect_BOOL(1, v54);
    v56 = (*(*v53 + 32))(v53, 72, 8);
    *v56 = 1;
    *(v56 + 8) = "m_shouldUsePortalWidthForMediaScaling";
    *(v56 + 16) = v55;
    *(v56 + 24) = 0;
    *(v56 + 32) = 0x680000000BLL;
    *(v56 + 40) = 0;
    *(v56 + 48) = 0;
    *(v56 + 56) = 0;
    *(v56 + 64) = 0;
    qword_1EE1AADB0 = v56;
    __cxa_guard_release(&qword_1EE1AACE8);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE1AAD58;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialMediaComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialMediaComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialMediaComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialMediaComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221SpatialMediaComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v57 = v59;
}

re::ecs2::SpatialMediaComponent *re::ecs2::SpatialMediaComponent::SpatialMediaComponent(re::ecs2::SpatialMediaComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF2D20;
  *(v2 + 32) = xmmword_1E308ED80;
  *(v2 + 48) = 1065353216;
  *(v2 + 52) = 0;
  *(v2 + 56) = 0;
  *(v2 + 60) = 0;
  *(v2 + 64) = 0x3E3333333D23D70ALL;
  *(v2 + 72) = 0x141C80000;
  *(v2 + 80) = 0;
  *(v2 + 84) = 0;
  *(v2 + 88) = 0;
  *(v2 + 92) = 1;
  *(v2 + 96) = 1065353216;
  *(v2 + 104) = 0;
  v3 = *re::spatialMediaLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[SpatialMediaComponent] Component initialized.", v5, 2u);
  }

  return this;
}

uint64_t re::ecs2::SpatialMediaComponent::getPortalEntity(re::ecs2::SpatialMediaComponent *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::EntityComponentCollection::get((*(this + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v3 = re::ecs2::EntityComponentCollection::get((*(this + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    if (v3)
    {
      v4 = *re::spatialMediaLogObjects(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(this + 2) + 312);
        v21 = 134217984;
        v22 = v5;
        v6 = "[SpatialMediaSystem::getPortalEntity] Entity %llu has both ImagePresentationComponent and VideoPlayerComponent. It should only have one of them.";
LABEL_23:
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v6, &v21, 0xCu);
        return 0;
      }

      return 0;
    }

    v13 = *(this + 2);
    v14 = *(v13 + 344);
    if (v14)
    {
      v15 = *(v13 + 360);
      v16 = 8 * v14;
      do
      {
        v11 = *v15;
        if ((*(*v15 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
        {
          v17 = *(v11 + 296);
          if (v17 == "__InternalIPC-Screen__")
          {
            return v11;
          }

          v3 = strcmp(v17, "__InternalIPC-Screen__");
          if (!v3)
          {
            return v11;
          }
        }

        ++v15;
        v16 -= 8;
      }

      while (v16);
    }

LABEL_19:
    v4 = *re::spatialMediaLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(this + 2) + 312);
      v21 = 134217984;
      v22 = v18;
      v6 = "[SpatialMediaSystem::getPortalEntity] Unable to locate the portal entity under %llu.";
      goto LABEL_23;
    }

    return 0;
  }

  if (!v3)
  {
    v4 = *re::spatialMediaLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*(this + 2) + 312);
      v21 = 134217984;
      v22 = v19;
      v6 = "[SpatialMediaSystem::getPortalEntity] Entity %llu doesn't have an ImagePresentationComponent or VideoPlayerComponent.";
      goto LABEL_23;
    }

    return 0;
  }

  v7 = *(this + 2);
  v8 = *(v7 + 344);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = *(v7 + 360);
  v10 = 8 * v8;
  while (1)
  {
    v11 = *v9;
    if ((*(*v9 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
    {
      v12 = *(v11 + 296);
      if (v12 == "__InternalVPC-Screen__")
      {
        return v11;
      }

      v3 = strcmp(v12, "__InternalVPC-Screen__");
      if (!v3)
      {
        return v11;
      }
    }

    ++v9;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_19;
    }
  }
}

float32x2_t re::ecs2::SpatialMediaComponent::getCurrentScaledMeshSize(re::ecs2::SpatialMediaComponent *this)
{
  PortalEntity = re::ecs2::SpatialMediaComponent::getPortalEntity(this);
  if (PortalEntity)
  {
    v4 = PortalEntity;
    v5 = re::ecs2::EntityComponentCollection::get((PortalEntity + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v6 = *(*(this + 2) + 256);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return vmul_f32(vmul_f32(v6[4], *(*(v4 + 256) + 32)), v5[6]);
    }
  }

  return result;
}

void re::ecs2::SpatialMediaComponent::~SpatialMediaComponent(re::ecs2::SpatialMediaComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221SpatialMediaComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::SceneUnderstandingDepthTracker::updateRenderData(simd_float4 *a1, simd_float4x4 *a2, uint64_t a3, uint64_t a4, float a5)
{
  v7 = a5;
  v30 = *MEMORY[0x1E69E9840];
  a1[6].f32[0] = a1[6].f32[0] + a5;
  PipelineAction = re::ecs2::SceneUnderstandingDepthTracker::getPipelineAction(a1, &a1[1], a3, a2);
  if (PipelineAction == 1)
  {
    v10 = a2->columns[1];
    *&v28[15] = a2->columns[0];
    *&v28[31] = v10;
    v11 = a2->columns[3];
    *&v28[47] = a2->columns[2];
    v29 = v11;
    if (a1[1].i8[0])
    {
      v12 = a2->columns[0];
      v13 = a2->columns[1];
      v14 = a2->columns[3];
      a1[4] = a2->columns[2];
      a1[5] = v14;
      a1[2] = v12;
      a1[3] = v13;
    }

    else
    {
      a1[1].i8[0] = 1;
      v15 = *&v28[31];
      a1[2] = *&v28[15];
      a1[3] = v15;
      v16 = v29;
      a1[4] = *&v28[47];
      a1[5] = v16;
    }

    a1[6].i32[0] = 0;
    *v28 = re::ecs2::getPipelineParameters(void)::params;
    *&v28[16] = unk_1ECEF63C8;
    *&v28[32] = qword_1ECEF63D8;
    *&v28[52] = 1;
  }

  else
  {
    *v28 = re::ecs2::getPipelineParameters(void)::params;
    *&v28[16] = unk_1ECEF63C8;
    *&v28[32] = qword_1ECEF63D8;
    *&v28[52] = PipelineAction;
    v7 = a1[6].f32[0];
  }

  v17 = expf(-v7 / *&dword_1ECEF63CC);
  v18 = a1[6].i32[1];
  *&v28[40] = v17;
  *&v28[44] = v18;
  v28[48] = v17 > *(&qword_1ECEF63D8 + 1);
  a1[6].f32[1] = v17;
  v19 = *(a1->i64[0] + 112);
  if (v19)
  {
    v20 = re::RenderFrameBox::get((v19 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a4 + 8);
  if (v21)
  {
    v22 = *a4;
    v23 = 8 * v21;
    do
    {
      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v27, *v22, 0, v20);
      v26 = v27[0] >> 1;
      v24 = **(re::RenderFrameData::stream((v20 + 33), &v26) + 48);
      v25 = (*(v24 + 1128))();
      if (v27[0])
      {
        if (v27[0])
        {
        }
      }

      ++v22;
      v23 -= 8;
    }

    while (v23);
  }
}

uint64_t re::ecs2::SceneUnderstandingDepthTracker::getPipelineAction(uint64_t a1, uint64_t a2, uint64_t a3, simd_float4x4 *a4)
{
  if (*a2 != 1 || *(a1 + 96) >= *&dword_1ECEF63D0 || (*(a3 + 1) & 1) != 0)
  {
    return 1;
  }

  v23 = v4;
  v24 = v5;
  v25 = __invert_f4(*a4);
  v8 = 0;
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v21[0] = *(a2 + 16);
  v21[1] = v9;
  v21[2] = v10;
  v21[3] = v11;
  do
  {
    v22[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25.columns[0], COERCE_FLOAT(v21[v8])), v25.columns[1], *&v21[v8], 1), v25.columns[2], v21[v8], 2), v25.columns[3], v21[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  v20 = v22[3];
  re::makeQuaternionFromMatrix<float>(v22);
  v13 = 1.0;
  v14 = fabsf(v12);
  if (v14 <= 1.0 || fabsf(v14 + -1.0) < (((v14 + 1.0) + 1.0) * 0.00001))
  {
    if (v12 <= 1.0)
    {
      v13 = v12;
    }

    if (v13 < -1.0)
    {
      v13 = -1.0;
    }

    v16 = acosf(v13);
    v15 = v16 + v16;
  }

  else
  {
    v15 = NAN;
  }

  v17 = vmulq_f32(v20, v20);
  v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  if (fabsf(v15) <= *&qword_1ECEF63D8 && v18 <= *&dword_1ECEF63D4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *re::ecs2::allocInfo_AdaptiveResolutionSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_292, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_292))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAE50, "AdaptiveResolutionSystem");
    __cxa_guard_release(&_MergedGlobals_292);
  }

  return &unk_1EE1AAE50;
}

void re::ecs2::initInfo_AdaptiveResolutionSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x5E3F6A3BDCE67162;
  v8[1] = "AdaptiveResolutionSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AdaptiveResolutionSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AdaptiveResolutionSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AdaptiveResolutionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AdaptiveResolutionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AdaptiveResolutionSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF2DA8;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionSystem>(_OWORD *a1)
{
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
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF2DA8;
  return result;
}

void re::ecs2::AdaptiveResolutionSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**(a1 + 40) + 32))(*(a1 + 40), a2);
  v6 = re::ServiceLocator::service<re::TransformService>(v5);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = v6;
    v9 = 0;
    v10 = *(a3 + 216);
    v47 = &v10[v7];
    v11 = 0.0;
    v12 = &unk_1EE187000;
    v46 = v6;
    do
    {
      v13 = *v10;
      v14 = re::ecs2::SceneComponentTable::get((*v10 + 200), re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!v14)
      {
        goto LABEL_41;
      }

      v15 = *(v14 + 384);
      if (!v15)
      {
        goto LABEL_41;
      }

      v16 = *(v14 + 400);
      v48 = &v16[v15];
      do
      {
        v17 = *v16;
        if (v9)
        {
          goto LABEL_31;
        }

        v18 = re::ecs2::SceneComponentTable::get((v13 + 200), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!v18 || (v19 = *(v18 + 384)) == 0)
        {
          v9 = 0;
          break;
        }

        v20 = *(v18 + 400);
        v21 = 8 * v19;
        while (1)
        {
          v22 = *v20;
          v23 = *(*v20 + 2);
          if (v23)
          {
            if (*(v23 + 304))
            {
              v24 = (*(**(v13 + 56) + 32))(*(v13 + 56));
              v25 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v24);
              v26 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v26)
              {
                v35 = v26;
                v61[0] = 0;
                re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(v22, v25, v61, v27, v28);
                v36 = 1.0;
                if (*(v61 + 1) >= 0.0001)
                {
                  v36 = *v61 / *(v61 + 1);
                }

                re::ecs2::PerspectiveCameraComponent::calculateProjection(v35, v50, v36);
                goto LABEL_23;
              }

              v29 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v29)
              {
                v37 = v29;
                v61[0] = 0;
                re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(v22, v25, v61, v30, v31);
                v38 = 1.0;
                if (*(v61 + 1) >= 0.0001)
                {
                  v38 = *v61 / *(v61 + 1);
                }

                re::ecs2::OrthographicCameraComponent::calculateProjection(v37, v50, v38);
LABEL_23:
                v8 = v46;
                v12 = &unk_1EE187000;
                if (v52 == 1)
                {
                  v57 = v53;
                  v58 = v54;
                  v59 = v55;
                  v60 = v56;
                }

                else
                {
                  re::Projection::cullingProjectionMatrix(&v57, v50);
                }

                goto LABEL_30;
              }

              v32 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v32)
              {
                break;
              }
            }
          }

          ++v20;
          v21 -= 8;
          if (!v21)
          {
            v9 = 0;
            v8 = v46;
            v12 = &unk_1EE187000;
            goto LABEL_41;
          }
        }

        v39 = v32;
        v61[0] = 0;
        re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(v22, v25, v61, v33, v34);
        re::ecs2::CustomMatrixCameraComponent::calculateProjection(v39, 0, v50);
        if (v52 == 1)
        {
          v57 = v53;
          v58 = v54;
          v59 = v55;
          v60 = v56;
        }

        else
        {
          re::Projection::cullingProjectionMatrix(&v57, v50);
        }

        v8 = v46;
        v12 = &unk_1EE187000;
LABEL_30:
        v3 = *&v57;
        v9 = *(v22 + 2);
        v11 = *v61;
        if (!v9)
        {
          break;
        }

LABEL_31:
        v40 = *(v17 + 16);
        v41 = re::ecs2::EntityComponentCollection::getOrAdd((v40 + 48), v12[407]);
        re::TransformService::worldTransform(v8, v40, 0, v50);
        v49 = v51;
        re::TransformService::worldTransform(v8, v9, 0, v50);
        v42 = vsubq_f32(v49, v51);
        v43 = vmulq_f32(v42, v42);
        v43.f32[0] = sqrtf(v43.f32[2] + vaddv_f32(*v43.f32));
        v44 = v11 / ((1.0 / v3) * (v43.f32[0] + v43.f32[0]));
        v45 = 512.0;
        if (v44 >= 512.0)
        {
          if (v44 >= 1024.0)
          {
            v45 = 2048.0;
            if (v44 < 2048.0)
            {
              v45 = 1024.0;
              if ((v44 + -1024.0) > 512.0)
              {
                v45 = 2048.0;
              }
            }
          }

          else
          {
            v45 = 1024.0;
            if ((v44 + -512.0) <= 256.0)
            {
              v45 = 512.0;
            }
          }
        }

        if (v45 != *(v41 + 28))
        {
          *(v41 + 28) = v45;
          re::ecs2::Component::markDirty(v41);
        }

        ++v16;
      }

      while (v16 != v48);
LABEL_41:
      ++v10;
    }

    while (v10 != v47);
  }
}

void re::ecs2::AdaptiveResolutionSystem::~AdaptiveResolutionSystem(re::ecs2::AdaptiveResolutionSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::ecs2::BlendShapeWeightsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
      v13 = *(v12 + 2);
      re::ecs2::BlendShapeWeightsComponent::upgradeBlendWeightsFromBlendShapeWeights(v12);
      v14 = a3 + 4;
      if (*(v13 + 200))
      {
        v15 = *(v13 + 192);
        v14 = a3 + 4;
        if (v15)
        {
          if (*(v15 + 40))
          {
            v14 = a3 + 5;
          }

          else
          {
            v14 = a3 + 4;
          }
        }
      }

      v16 = v19;
      v17 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v16, v17, *v14);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

void re::ecs2::BlendShapeWeightsComponent::upgradeBlendWeightsFromBlendShapeWeights(re::ecs2::BlendShapeWeightsComponent *this)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(this + 43))
  {
    if (!*(this + 9))
    {
      v2 = re::AssetHandle::loadedAsset<re::BlendShapeWeightsDefinitionAsset>((this + 32));
      if (v2)
      {
        v3 = v2;
        v4 = *(this + 9);
        if (v4)
        {
          v5 = *(this + 11);
          v6 = 32 * v4;
          do
          {
            re::BlendShapeWeights::deinit(v5);
            v5 = (v5 + 32);
            v6 -= 32;
          }

          while (v6);
        }

        if (*(v3 + 16))
        {
          v7 = 0;
          v8 = 0;
          do
          {
            re::make::shared::object<re::BlendShapeWeightsDefinition,re::FixedArray<re::StringID> const&>((*(v3 + 32) + v7), v30);
            v37 = 0u;
            v38 = 0u;
            re::BlendShapeWeights::init(&v37, v30);
            v9 = *(this + 9);
            if (v9 >= *(this + 8))
            {
              re::DynamicArray<re::BlendShapeWeights>::growCapacity((this + 56), v9 + 1);
              v9 = *(this + 9);
            }

            v10 = re::FixedArray<float>::FixedArray((*(this + 11) + 32 * v9), &v37);
            v11 = *(&v38 + 1);
            v10[3] = *(&v38 + 1);
            if (v11)
            {
              v12 = (v11 + 8);
            }

            ++*(this + 9);
            ++*(this + 20);
            re::BlendShapeWeights::~BlendShapeWeights(&v37);
            if (*v30)
            {
            }

            ++v8;
            v7 += 24;
          }

          while (v8 < *(v3 + 16));
        }

        v13 = *(this + 43);
        if (v13)
        {
          v14 = 0;
          v15 = *(this + 45);
          do
          {
            v16 = v15 + 40 * v14;
            v17 = *(v16 + 16);
            if (v17)
            {
              v18 = *(this + 9);
              if (v18 > v14)
              {
                v19 = 0;
                v20 = *(v16 + 32);
                v21 = *(this + 11) + 32 * v14;
                v18 = *(v21 + 8);
                while (v18 != v19)
                {
                  *(*(v21 + 16) + 4 * v19) = *(v20 + 4 * v19);
                  if (v17 == ++v19)
                  {
                    goto LABEL_24;
                  }
                }

                v29 = 0;
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v37 = 0u;
                v22 = MEMORY[0x1E69E9C10];
                v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v30 = 136315906;
                *&v30[4] = "operator[]";
                v31 = 1024;
                if (v23)
                {
                  v24 = 3;
                }

                else
                {
                  v24 = 2;
                }

                v32 = 468;
                v33 = 2048;
                v34 = v18;
                v35 = 2048;
                v36 = v18;
                _os_log_send_and_compose_impl(v24, &v29, &v37, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v30, 38, v28);
                _os_crash_msg();
                __break(1u);
              }

              v29 = 0;
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v37 = 0u;
              v25 = MEMORY[0x1E69E9C10];
              v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v30 = 136315906;
              *&v30[4] = "operator[]";
              v31 = 1024;
              if (v26)
              {
                v27 = 3;
              }

              else
              {
                v27 = 2;
              }

              v32 = 789;
              v33 = 2048;
              v34 = v14;
              v35 = 2048;
              v36 = v18;
              _os_log_send_and_compose_impl(v27, &v29, &v37, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v30, 38, v28);
              _os_crash_msg();
              __break(1u);
            }

LABEL_24:
            ++v14;
          }

          while (v14 != v13);
        }
      }
    }
  }
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::BlendShapeWeightsComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v45, a5, 0);
  v8 = v45;
  v9 = v46;
  v10 = v46;
  v45 = a4;
  v46 = v8;
  v47 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v45);
      v13 = v12[2];
      re::ecs2::BlendShapeWeightsComponent::upgradeBlendWeightsFromBlendShapeWeights(v12);
      v14 = v13[24];
      v15 = re::AssetHandle::loadedAsset<re::MeshAsset>((v14 + 32));
      if (v15)
      {
        v16 = v15;
        v17 = re::ecs2::EntityComponentCollection::get((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v18 = v16[71];
        v43 = v16[73];
        v44 = v18;
        if (v17)
        {
          v19 = (v17 + 216);
          v20 = *(v17 + 192);
          v43 = *(v17 + 208);
          v44 = v20;
        }

        else
        {
          v19 = (v16 + 80);
        }

        v27 = re::AssetHandle::loadedAsset<re::BlendShapeWeightsDefinitionAsset>((v12 + 4));
        if (v27)
        {
          v28 = v27;
          v29 = *(v14 + 40);
          if (v29)
          {
            v30 = *(v29 + 792);
          }

          else
          {
            v30 = 0;
          }

          v33 = v12[5];
          if (v33)
          {
            v34 = *(v33 + 792);
          }

          else
          {
            v34 = 0;
          }

          v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
          v36 = v30 ^ (v35 >> 31) ^ v35;
          v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) >> 27));
          v38 = ((v36 << 6) + (v36 >> 2) + (v34 ^ (v37 >> 31) ^ v37) - 0x61C8864680B583E9) ^ v36;
          if (v12[12])
          {
            v12[12] = 0;
            re::DynamicArray<re::FixedArray<re::StringID>>::deinit((v12 + 13));
            re::DynamicArray<re::MeshDeformationIndex>::deinit((v12 + 18));
          }
        }

        else
        {
          if (v12[5])
          {
            re::AssetHandle::loadAsync((v12 + 4));
          }

          v31 = *(v14 + 40);
          if (v31)
          {
            v32 = *(v31 + 792);
          }

          else
          {
            v32 = 0;
          }

          v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
          v38 = v32 ^ (v39 >> 31) ^ v39;
          if (v38 != v12[12])
          {
            v12[12] = v38;
            re::DynamicArray<re::FixedArray<re::StringID>>::deinit((v12 + 13));
            re::DynamicArray<re::MeshDeformationIndex>::deinit((v12 + 18));
            re::BlendShapeWeightsDefinitionAsset::init((v12 + 13), v16, &v43, 0);
            v38 = v12[12];
          }

          v28 = v12 + 13;
        }

        re::BlendShapeWeightsMapping::update<re::MeshAsset>((v12 + 30), v28, v16, v19, v38, (v12 + 7));
        v40 = re::ecs2::EntityComponentCollection::getOrAdd((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        re::ecs2::BlendShapeWeightsBufferComponent::rebuildWeights(v40, v28, (v12 + 30), v16, v19, (v12 + 7));
        re::ecs2::Component::markDirty(v40);
        v41 = v13[27];
        if (v41)
        {
          re::ecs2::NetworkComponent::markDirty(v41, v40);
        }

        v23 = v45;
        v24 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v46);
        v25 = a3[2];
        v26 = a3[6];
      }

      else
      {
        v21 = *(v14 + 40);
        if (!v21 || (v22 = atomic_load((v21 + 896)), v22 != 3))
        {
          re::AssetHandle::loadAsync((v14 + 32));
          goto LABEL_34;
        }

        v23 = v45;
        v24 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v46);
        v25 = a3[2];
        v26 = a3[4];
      }

      re::ecs2::ComponentBucketsBase::moveComponent(v25, v23, v24, v26);
LABEL_34:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v46);
    }

    while (v46 != a5 || v47 != 0xFFFF || HIWORD(v47) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}