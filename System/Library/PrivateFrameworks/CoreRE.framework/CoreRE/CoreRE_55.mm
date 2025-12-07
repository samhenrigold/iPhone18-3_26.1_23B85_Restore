void re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void *re::DynamicArray<re::BlendShapeWeights>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendShapeWeights>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
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
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          re::FixedArray<float>::FixedArray(v11, v8);
          v12 = v8[3];
          v11[3] = v12;
          if (v12)
          {
            v13 = (v12 + 8);
          }

          re::BlendShapeWeights::~BlendShapeWeights(v8);
          v8 += 4;
          v11 += 4;
          v10 -= 32;
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

ArcSharedObject *re::make::shared::object<re::BlendShapeWeightsDefinition,re::FixedArray<re::StringID> const&>@<X0>(const StringID **a1@<X0>, _anonymous_namespace_ **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 104, 8);
  v6 = a1[1];
  v8[0] = a1[2];
  v8[1] = v6;
  *a2 = v5;
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::FixedArray<re::StringID>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::FixedArray<re::StringID>>::add(this, v10);
  re::FixedArray<re::StringID>::deinit(v10);
  v8 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 24 * a3;
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

  return *(a2 + 32) + 24 * a3;
}

void *re::DynamicArray<re::FixedArray<re::StringID>>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      result = re::FixedArray<re::StringID>::deinit((v3[4] + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (v3[4] + v6);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, void *a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::FixedArray<re::StringID>>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  v9 = re::DynamicArray<re::FixedArray<re::StringID>>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), &v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = 24 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a4, 0);
        re::TypeInfo::construct(v13, v11, a4, 0);
        v11 += 24;
        v12 -= 24;
      }

      while (v12);
    }
  }
}

void *re::DynamicArray<re::FixedArray<re::StringID>>::clear(void *result)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = result[4];
    v4 = 24 * v2;
    do
    {
      result = re::FixedArray<re::StringID>::deinit(v3);
      v3 += 3;
      v4 -= 24;
    }

    while (v4);
  }

  ++*(v1 + 6);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 24 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendShapeWeightsMeshMap>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = &str_67;
  v13 = 0;
  v11 = 0u;
  v14 = &str_67;
  v15 = 0;
  v8 = re::DynamicArray<re::BlendShapeWeightsMeshMap>::add(this, &v11);
  if (v13)
  {
    if (v13)
    {
    }
  }

  v13 = 0;
  v14 = &str_67;
  if (BYTE8(v11))
  {
    if (BYTE8(v11))
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 48 * a3;
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

  return *(a2 + 32) + 48 * a3;
}

void re::DynamicArray<re::BlendShapeWeightsMeshMap>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 48 * a2 + 24;
    v9 = a2;
    do
    {
      v10 = (result[4] + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      ++v9;
      v8 += 48;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        *(v7 + 40) = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 48 * v8;
      v10 = (*(a1 + 32) + 24);
      do
      {
        re::StringID::destroyString(v10);
        re::StringID::destroyString((v10 - 16));
        v10 = (v10 + 48);
        v9 -= 48;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::MeshDeformationIndex>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::BlendShapeWeightsMeshMap>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 48 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 48;
        v14 -= 48;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 48 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::TextureAsset::assetType(re::TextureAsset *this)
{
  {
    re::TextureAsset::assetType(void)::type = "Texture";
    qword_1EE1C7198 = 0;
    re::AssetType::generateCompiledExtension(&re::TextureAsset::assetType(void)::type);
  }

  return &re::TextureAsset::assetType(void)::type;
}

uint64_t re::TextureAsset::makeTextureAsset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0u;
  v7 = 0u;
  LOWORD(v7) = 257;
  BYTE2(v7) = 1;
  BYTE5(v7) = 1;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v6, a1, a2, a3, a4);

  return TextureAsset;
}

uint64_t re::TextureAsset::makeTextureAsset(re *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v17 = a5;
  v18 = a4;
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 408, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 240) = 0u;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0u;
  *(v9 + 352) = 0u;
  *(v9 + 368) = 0u;
  *(v9 + 384) = 0u;
  *(v9 + 400) = 0;
  *(v9 + 176) = 0u;
  v10 = re::TextureAsset::TextureAsset(v9);
  *(v10 + 64) = *a3;
  v11 = *(a3 + 8);
  *(v10 + 148) = *(a3 + 20);
  *(v10 + 136) = v11;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10 + 21, *(a3 + 40));
  re::ObjCObject::operator=((v9 + 176), (a3 + 48));
  re::DynamicArray<short>::operator=(v9 + 184, (a3 + 56));
  *(v9 + 224) = *(a3 + 96);
  v12 = *(a3 + 48);
  v13 = v12;
  v14 = *(a3 + 72);
  v16[0] = *(a3 + 88);
  v16[1] = v14;
  re::TextureAsset::setTexture(v9, a1, a2, &v18, &v17, v12, v16);
  return v9;
}

void re::TextureAsset::setTexture(uint64_t a1, const re::ImportGraphicsContext *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, __CFString *a6, uint64_t a7)
{
  os_unfair_lock_lock((a1 + 400));
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1 + 112, a3);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1 + 232, a3);
  *(a1 + 356) = *a4;
  *(a1 + 360) = *a5 == 1;
  *(a1 + 248) = re::TextureData::width((a1 + 112));
  *(a1 + 252) = re::TextureData::height((a1 + 112));
  *(a1 + 256) = re::TextureData::depth((a1 + 112));
  *(a1 + 260) = re::TextureData::arrayLength((a1 + 112));
  re::TextureData::pixelFormat((a1 + 112));
  *(a1 + 344) = v14;
  *(a1 + 348) = re::TextureData::textureType((a1 + 112));
  v15 = *(a1 + 72);
  *(a1 + 72) = 0;

  if (*(a1 + 120) || (v21 = [*(a1 + 112) device]) == 0 || (v22 = v21, v23 = objc_msgSend(v21, "supportsTextureSwizzle"), v22, v23))
  {
    *(a1 + 352) = re::TextureData::swizzle((a1 + 112));
  }

  else
  {
    *(a1 + 352) = 84148994;
  }

  if ((*(a1 + 356) - 3) <= 1)
  {
    re::TextureAsset::updateColorSpaceFromTexture(a1, a2, 0);
  }

  re::DynamicArray<short>::operator=((a1 + 304), a7);
  LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(a1);
  *(a1 + 264) = LoadedMipmapRange;
  *(a1 + 272) = v17;
  v18 = *(a1 + 280);
  if (!v18)
  {
  }

  v19 = *(a1 + 336);
  v20 = *(a1 + 320);
  v27 = 0;
  v28 = 0;
  v26 = 0;
  re::FixedArray<short>::init<>(&v26, v18, v20);
  re::FixedArray<short>::copy(&v26, v19, v20);
  re::FixedArray<short>::operator=((a1 + 280), &v26);
  if (v26 && v27)
  {
    (*(*v26 + 40))();
  }

  re::TextureAsset::setColorSpace(a1, a6);
  if (!*(a1 + 16) || !*(a1 + 8))
  {
    goto LABEL_14;
  }

  if (!*(a3 + 8))
  {
    re::TextureHandle::setMetalTexture((a1 + 8), a3);
    re::TextureAsset::updateLegacyLinearFormatWithSRGBDataTexture(a1, a2);
LABEL_14:
    os_unfair_lock_unlock((a1 + 400));
    return;
  }

  v24 = std::__throw_bad_variant_access[abi:nn200100]();
  re::TextureAsset::makeTextureAssetWithIOSurface(v24, v25);
}

uint64_t re::TextureAsset::makeTextureAssetWithIOSurface(id *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v17 = 0u;
  v18 = 0u;
  LOWORD(v18) = 257;
  BYTE2(v18) = 1;
  BYTE5(v18) = 1;
  re::mtl::Device::makeTextureWithIOSurface(&v14, *a2, a1, a3, a4);
  v15 = v14;
  v16 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v10 = 0u;
  memset(v11, 0, 28);
  v12 = 0;
  v13 = 0;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v17, &v15, &v6, 6, 0);
  if (*&v11[0])
  {
    if (v12)
    {
      (*(**&v11[0] + 40))();
    }

    v12 = 0;
    memset(v11, 0, 24);
    ++DWORD2(v11[1]);
  }

  if (v10)
  {
  }

  if (v16 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v16])(&v6, &v15);
  }

  v16 = -1;
  if (v14)
  {
  }

  return TextureAsset;
}

uint64_t re::TextureAsset::makeTextureAssetWithDirectTexture(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 408, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0;
  re::TextureAsset::TextureAsset(v3);
  re::DirectTexturePayload::make(a1, &v8);
  v4 = (v3 + 72);
  if ((v3 + 72) != &v8)
  {
    v5 = v8;
    v8 = 0;
    v6 = *v4;
    *v4 = v5;
  }

  return v3;
}

id re::TextureData::width(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureData::height(v5);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 width];
}

id re::TextureData::height(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureData::depth(v5);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 height];
}

id re::TextureData::depth(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureData::arrayLength(v5);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 depth];
}

id re::TextureData::arrayLength(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureData::mipmapLevelCount(v5);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 arrayLength];
}

void re::TextureData::mipmapLevelCount(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2 != 1)
  {
    if (v2)
    {
      v4 = std::__throw_bad_variant_access[abi:nn200100]();
      re::TextureAsset::updateMips(v4, v5, v6);
    }

    else
    {
      v3 = *this;

      [v3 mipmapLevelCount];
    }
  }
}

void re::TextureAsset::updateMips(uint64_t a1, os_unfair_lock_s **a2, id a3)
{
  v5 = a3;
  if (*(a1 + 240))
  {
    v11 = std::__throw_bad_variant_access[abi:nn200100]();
    re::FixedArray<short>::operator=(v11, v12);
  }

  else
  {
    v6 = v5;
    v7 = *(a1 + 232);
    v20 = v6;
    v19 = v7;
    re::copyTextureMips(a2, &v20, &v19, (a1 + 80));
    if (v19)
    {

      v19 = 0;
    }

    if (v20)
    {

      v20 = 0;
    }

    v17 = v7;
    re::makeLoadedTextureView(&v17, (a1 + 80), &v18);
    if (v17)
    {

      v17 = 0;
    }

    if (v18)
    {
      v15 = v18;
      v16 = 0;
      v14 = *(a1 + 360);
      v8 = *(a1 + 176);
      v9 = v8;
      v10 = *(a1 + 200);
      v13[0] = *(a1 + 216);
      v13[1] = v10;
      re::TextureAsset::setTexture(a1, a2, &v15, (a1 + 356), &v14, v8, v13);
      if (v16 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v16])(v13, &v15);
      }

      if (v18)
      {
      }
    }

    if (v7)
    {
    }

    if (v6)
    {
    }
  }
}

uint64_t *re::FixedArray<short>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

uint64_t re::TextureAsset::getLoadedMipmapRange(re::TextureAsset *this)
{
  v2 = *(this + 78);
  v3 = re::TextureData::width((this + 112));
  v4 = re::TextureData::height((this + 112));
  if (v3 <= v4)
  {
    v3 = v4;
  }

  v5 = re::TextureData::depth((this + 112));
  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = 64 - __clz((v6 + 1));
  v8 = v7 - 1;
  v9 = __CFADD__(v6, 1);
  v10 = (v6 + 1);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = ~(-1 << (v7 - 1));
  }

  if (v9)
  {
    v8 = 0;
  }

  if ((v11 & v10) != 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  v9 = v2 >= v12;
  v13 = v2 - v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  re::TextureData::mipmapLevelCount((this + 112));
  return v14;
}

unint64_t re::TextureAsset::getMemoryInfo@<X0>(id *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, char *a4@<X3>, unint64_t *a5@<X8>)
{
  if (*(a2 + 82))
  {
    v10 = 232;
  }

  else
  {
    v10 = 112;
  }

  result = re::estimateTextureMemorySize(this, (a2 + v10), 1);
  v12 = result;
  *a5 = result;
  if (*a3)
  {
    v13 = *a4;
    v15 = *(a3 + 8);
    v14 = *(a3 + 16);
    v33[0] = 1;
    v34 = v15;
    v35 = v14;
    if ((v13 & 1) == 0)
    {
      v28 = this;
      LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(a2);
LABEL_10:
      v30[0] = 1;
      v31 = LoadedMipmapRange;
      v32 = v17;
      v20 = *(a2 + 156);
      v21 = *(a2 + 136);
      v22 = *(a2 + 140);
      v23 = *(a2 + 144);
      v24 = *(a2 + 148);
      v25 = re::TextureData::textureType((a2 + v10));
      re::TextureData::pixelFormat((a2 + v10));
      v29 = v26;
      re::TextureData::compressionType((a2 + v10));
      result = re::estimateTextureMemorySize(v28, v20, v21, v22, v23, v24, v25, &v29, v27, v33, v30);
      a5[1] = v12 + 2 * result;
      a5[2] = result;
      return result;
    }

LABEL_9:
    v28 = this;
    LoadedMipmapRange = *(a4 + 1);
    v17 = *(a4 + 2);
    goto LABEL_10;
  }

  if (*a4)
  {
    v18 = *(a2 + 320);
    v19 = *(a2 + 336);
    v33[0] = 1;
    v34 = v19;
    v35 = v18;
    goto LABEL_9;
  }

  a5[1] = 0;
  a5[2] = 0;
  return result;
}

id re::TextureData::textureType(re::TextureData *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return [*this textureType];
  }

  if (v1 == 1)
  {
    this = (*this + 24);
    return [*this textureType];
  }

  v3 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureData::pixelFormat(v3);
}

void re::TextureData::pixelFormat(re::TextureData *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    this = (*this + 24);
LABEL_4:
    [*this pixelFormat];
    return;
  }

  v2 = std::__throw_bad_variant_access[abi:nn200100]();
  re::TextureData::compressionType(v2);
}

void re::TextureData::compressionType(re::TextureData *this)
{
  v1 = *(this + 2);
  if (v1 == 1)
  {
    v2 = *this;

    re::CPUTexture::compressionType(v2);
  }

  else if (v1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    re::TextureAssetData::~TextureAssetData(v3);
  }

  else
  {
    [*this compressionType];
  }
}

void re::TextureAssetData::~TextureAssetData(re::TextureAssetData *this)
{
  *this = &unk_1F5CC40A0;
  v2 = *(this + 18);
  if (v2)
  {

    *(this + 18) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 96);

  v3 = *(this + 10);
  if (v3)
  {

    *(this + 10) = 0;
  }

  v4 = *(this + 8);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v5, this + 24);
  }

  *(this + 8) = -1;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CC40A0;
  v2 = *(this + 18);
  if (v2)
  {

    *(this + 18) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 96);

  v3 = *(this + 10);
  if (v3)
  {

    *(this + 10) = 0;
  }

  v4 = *(this + 8);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v5, this + 24);
  }

  *(this + 8) = -1;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
  MEMORY[0x1E6906520](this, 0x10F3C40B1BD834BLL);
}

id re::TextureData::label(re::TextureData *this)
{
  v1 = *(this + 2);
  if (v1 == 1)
  {
    v3 = *this;
    if (*(*this + 80))
    {
      return *(v3 + 88);
    }

    else
    {
      return (v3 + 81);
    }
  }

  else if (v1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::TextureData::isValid(v4);
  }

  else
  {
    result = [objc_msgSend(*this label)];
    if (!result)
    {
      return re::TextureData::label(void)const::emptyString;
    }
  }

  return result;
}

uint64_t re::TextureData::isValid(re::TextureData *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return *this != 0;
  }

  if (v1 == 1)
  {
    if (*(*this + 48))
    {
      this = (*this + 24);
      return *this != 0;
    }

    return 0;
  }

  else
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::FixedArray<short>::operator[](v3, v4, v5);
  }
}

uint64_t re::FixedArray<short>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 <= a3)
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

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 2 * a3;
}

uint64_t re::FixedArray<re::Pair<unsigned short,unsigned short,true>>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 <= a3)
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

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 4 * a3;
}

uint64_t re::DynamicArray<short>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<short>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<short>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<short>::copy(a1, a2);
    }
  }

  return a1;
}

void re::TextureAsset::createTextureAssetData(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v265 = *MEMORY[0x1E69E9840];
  if (a6 && (v16 = atomic_load((a6 + 24)), (v16 & 1) != 0) || a7 && (v17 = atomic_load((a7 + 24)), (v17 & 1) != 0))
  {
    v18 = "TextureAsset update was cancelled";
LABEL_34:
    v44 = buf;
    v45 = v251;
    *a8 = 0;
    *(a8 + 8) = v44;
    *(a8 + 24) = v45;
    return;
  }

  v19 = os_unfair_lock_trylock((a1 + 400));
  if (!v19)
  {
    v18 = "TextureAsset is blocked by another update";
    goto LABEL_34;
  }

  v185 = a2;
  v192 = a4;
  v20 = a1 + 128;
  v217 = *(a1 + 128);
  *v218 = *(a1 + 136);
  *&v218[12] = *(a1 + 148);
  v21 = *(a1 + 168);
  v219 = v21;
  if (v21)
  {
    v22 = (v21 + 8);
  }

  v220 = *(a1 + 176);
  re::DynamicArray<short>::DynamicArray(v221, (a1 + 184));
  v224 = *(a1 + 224);
  if (v219)
  {
    v190 = a8;
    v191 = a3;
    v23 = *&v218[20];
    LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(a1);
    v26 = v25;
    v27 = *a5;
    v28 = *(a5 + 1);
    v187 = a5;
    if (*(a5 + 2) < *&v218[20])
    {
      v23 = *(a5 + 2);
    }

    v29 = a1;
    re::DynamicArray<short>::DynamicArray(&v214, (a1 + 304));
    v30 = *(v192 + 16);
    if (!*v192)
    {
      v30 = v215;
    }

    v183 = v26;
    v184 = LoadedMipmapRange;
    if (v28 == LoadedMipmapRange && v23 == v26)
    {
      v32 = 0;
    }

    else
    {
      v32 = v27;
    }

    v33 = v30;
    if (v30 == v215)
    {
      v34 = *v192 ? *(v192 + 8) : __s2;
      v35 = memcmp(v34, __s2, 2 * v215);
      v36 = v35 ? 1 : v32;
      if ((v36 & 1) == 0)
      {
        v49 = v241;
        v51 = v191[1];
        v50 = v191[2];
        v52 = *v191;
        *(v241 + 76) = *(v191 + 44);
        *(v49 + 3) = v51;
        *(v49 + 4) = v50;
        *(v49 + 2) = v52;
        re::ObjCObject::operator=(v49 + 12, v191 + 8);
        v53 = *(v191 + 72);
        *(v49 + 30) = *(v191 + 22);
        *(v49 + 104) = v53;
        re::FixedArray<short>::operator=(v49 + 16, v191 + 12);
        v49[152] = *(v191 + 120);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v49 + 3, *(v29 + 168));
        *(v49 + 20) = *(v29 + 224);
        v213 = v49;
        v54 = v49 + 8;
        re::TextureAssetData::createShared(v29 + 112, v20, &v213, v231);
        re::TextureAssetData::TextureAssetData(&buf, v231);
        *v190 = 1;
        re::TextureAssetData::TextureAssetData(v190 + 8, &buf);
        *&buf = &unk_1F5CC40A0;
        if (v257)
        {

          v257 = 0;
        }

        if (*&v252[64])
        {
          if (v255)
          {
            (*(**&v252[64] + 40))();
          }

          v255 = 0;
          v253 = 0;
          *&v254 = 0;
          *&v252[64] = 0;
          ++DWORD2(v254);
        }

        if (*&v252[48])
        {

          *&v252[48] = 0;
        }

        if (*v252 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*v252])(&v211, &v251 + 8);
        }

        *v252 = -1;
        *&buf = &unk_1F5CCF868;
        objc_destructInstance(&buf + 8);
        v231[0] = &unk_1F5CC40A0;
        if (*&v239[0])
        {

          *&v239[0] = 0;
        }

        if (*v237)
        {
          if (v238)
          {
            (*(**v237 + 40))();
          }

          *&v238 = 0;
          memset(v237, 0, 24);
          ++*&v237[24];
        }

        if (v235)
        {

          v235 = 0;
        }

        if (LODWORD(v231[4]) != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[LODWORD(v231[4])])(&v211, &v231[3]);
        }

        LODWORD(v231[4]) = -1;
        v231[0] = &unk_1F5CCF868;
        objc_destructInstance(&v231[1]);

        os_unfair_lock_unlock((v29 + 400));
        v55 = v49 + 8;
        goto LABEL_274;
      }
    }

    v179 = v32;
    v181 = *(v29 + 344);
    v37 = v219;
    if (v219)
    {
      v38 = (v219 + 8);
    }

    v186 = *&v218[20];
    v39 = v29;
    v40 = re::TextureData::label((v29 + 112));
    v211 = 0u;
    v212 = 0u;
    re::DynamicString::setCapacity(&v211, 0);
    v41 = a6;
    if (v40)
    {
      v42 = strlen(v40);
      *&buf = v40;
      *(&buf + 1) = v42;
      re::DynamicString::operator=(&v211, &buf);
      if (BYTE8(v211))
      {
        v43 = v212;
      }

      else
      {
        v43 = &v211 | 9;
      }

      v180 = v43;
    }

    else
    {
      v180 = 0;
    }

    LOBYTE(v209) = 0;
    v210 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(&v209, v39 + 112);
    os_unfair_lock_unlock((v39 + 400));
    LODWORD(buf) = -1;
    v207 = 0;
    v208 = 0;
    v206 = 0;
    v57 = v191[1];
    v196 = *v191;
    v197 = v57;
    v198[0] = v191[2];
    *(v198 + 12) = *(v191 + 44);
    v199 = *(v191 + 8);
    v200 = *(v191 + 72);
    v201 = *(v191 + 22);
    v58 = re::FixedArray<short>::FixedArray(&v202, v191 + 12);
    v205 = *(v191 + 120);
    if (v37)
    {
      v58 = (v37 + 8);
    }

    v230 = a6;
    v229 = a7;
    v182 = v33;
    if (a6 && (v59 = atomic_load((a6 + 24)), (v59 & 1) != 0) || a7 && (v60 = atomic_load((a7 + 24)), (v60 & 1) != 0))
    {
      v61 = 0;
      v186 = 0;
      v188 = 0;
      LOWORD(v236) = v236 & 0xFC00;
      v62 = 0uLL;
      memset(v231, 0, sizeof(v231));
      v232 = 0u;
      v238 = 0u;
      v239[0] = 0u;
      v234 = 0;
      LODWORD(v235) = 0;
      v233 = 0;
      *v237 = 0;
      *&v237[8] = 0;
LABEL_79:
      *(v239 + 12) = v62;
      *&v237[16] = 0;
      v240 = 0uLL;
      goto LABEL_80;
    }

    if (*v187 == 1)
    {
      v63 = v192;
      v64 = *(v187 + 1) != v184 || *(v187 + 2) != v26;
    }

    else
    {
      v64 = 0;
      v63 = v192;
    }

    if (*v63 == 1)
    {
      if (*(v63 + 16) != v215)
      {
        v65 = 1;
        goto LABEL_143;
      }

      v58 = memcmp(*(v63 + 8), __s2, 2 * v215);
      v65 = v58 != 0;
    }

    else
    {
      v65 = 0;
    }

    if (!v64 && !v65)
    {
      v61 = 0;
      v186 = 0;
      v188 = 0;
      LOWORD(v236) = v236 & 0xFC00;
      v234 = 0;
      LODWORD(v235) = 0;
      v62 = 0uLL;
      memset(v231, 0, sizeof(v231));
      v232 = 0u;
      v233 = 0;
      *v237 = 0;
      *&v237[8] = 0;
      v238 = 0u;
      v239[0] = 0u;
      goto LABEL_79;
    }

LABEL_143:
    v227 = 0;
    v226 = 0;
    v228 = 0;
    if (v64)
    {
      v89 = *(v187 + 1);
      v88 = *(v187 + 2);
      v90 = v183;
      v91 = v184;
      v92 = v184 == v89 && v183 == v88;
      v93 = !v92;
      if (v92)
      {
        v89 = 0;
        v88 = 0;
      }

      else
      {
        v94 = 0;
        if (v89 > v183 || v88 < v184)
        {
          v186 = 0;
          goto LABEL_162;
        }

        if (v89 < v184 && v88 > v183)
        {
          v94 = 0;
          v186 = 0;
LABEL_162:
          v61 = 1;
          goto LABEL_163;
        }

        if (v89 < v184)
        {
          if (v88 <= v184)
          {
            v61 = 0;
            v94 = 0;
            v186 = 0;
            goto LABEL_286;
          }

          if (v88 == v186)
          {
            v61 = 0;
            v94 = v184;
LABEL_286:
            v88 = v184;
            goto LABEL_163;
          }
        }
      }

      v94 = 0;
      v186 = 0;
      v61 = v93;
    }

    else
    {
      v61 = 0;
      v94 = 0;
      v186 = 0;
      v89 = 0;
      v88 = 0;
      v90 = v183;
      v91 = v184;
    }

LABEL_163:
    v178 = v37;
    if (v65)
    {
      if (v88 > v89)
      {
        v97 = 1;
      }

      else
      {
        v97 = v61;
      }

      if (v97 == 1)
      {
        v98 = v192;
        re::FixedArray<short>::operator=(&v226, (v192 + 8));
        v89 = *(v187 + 1);
        v88 = *(v187 + 2);
        v61 = 1;
        v90 = v183;
      }

      else
      {
        v177 = v88;
        v99 = v207;
        LODWORD(v231[0]) = -1;
        *&v251 = 0;
        buf = 0uLL;
        re::FixedArray<short>::operator=(&v226, &buf);
        v100 = buf;
        if (buf && *(&buf + 1))
        {
          v100 = (*(*buf + 40))();
        }

        v101 = __s2;
        v102 = v215;
        v103 = *(v192 + 16);
        LODWORD(v231[0]) = -1;
        *&v251 = 0;
        buf = 0uLL;
        re::FixedArray<short>::operator=(&v226, &buf);
        if (buf && *(&buf + 1))
        {
          (*(*buf + 40))();
        }

        v98 = v192;
        v104 = *(v192 + 16);
        if (!v104)
        {
          goto LABEL_193;
        }

        v105 = 0;
        v106 = 0;
        v107 = *(v192 + 8);
        v108 = v228;
        v109 = v227;
        v111 = v207;
        v110 = v208;
        do
        {
          v112 = *(v107 + 2 * v106);
          if ((v112 & 0x80000000) == 0)
          {
            if (v102)
            {
              v113 = 0;
              while (v101[v113] != v112)
              {
                if (v102 == ++v113)
                {
                  goto LABEL_186;
                }
              }

              if (v111 <= v106)
              {
                goto LABEL_322;
              }

              *(v110 + 2 * v106) = v113;
              ++v105;
            }

LABEL_186:
            if (v111 <= v106)
            {
              v241 = 0;
              memset(v252, 0, 48);
              v251 = 0u;
              buf = 0u;
              v165 = MEMORY[0x1E69E9C10];
              v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v231[0]) = 136315906;
              *(v231 + 4) = "operator[]";
              WORD2(v231[1]) = 1024;
              if (v166)
              {
                v167 = 3;
              }

              else
              {
                v167 = 2;
              }

              *(&v231[1] + 6) = 468;
              WORD1(v231[2]) = 2048;
              *(&v231[2] + 4) = v106;
              WORD2(v231[3]) = 2048;
              *(&v231[3] + 6) = v111;
              _os_log_send_and_compose_impl(v167, &v241, &buf, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v231, 38, v177, v178);
              _os_crash_msg();
              __break(1u);
LABEL_318:
              v241 = 0;
              memset(v252, 0, 48);
              v251 = 0u;
              buf = 0u;
              v168 = MEMORY[0x1E69E9C10];
              v169 = v109;
              v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v231[0]) = 136315906;
              *(v231 + 4) = "operator[]";
              WORD2(v231[1]) = 1024;
              if (v170)
              {
                v171 = 3;
              }

              else
              {
                v171 = 2;
              }

              *(&v231[1] + 6) = 468;
              WORD1(v231[2]) = 2048;
              *(&v231[2] + 4) = v106;
              WORD2(v231[3]) = 2048;
              *(&v231[3] + 6) = v169;
              _os_log_send_and_compose_impl(v171, &v241, &buf, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v231, 38, v177, v178);
              _os_crash_msg();
              __break(1u);
LABEL_322:
              v241 = 0;
              memset(v252, 0, 48);
              v251 = 0u;
              buf = 0u;
              v172 = MEMORY[0x1E69E9C10];
              v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v231[0]) = 136315906;
              *(v231 + 4) = "operator[]";
              WORD2(v231[1]) = 1024;
              if (v173)
              {
                v174 = 3;
              }

              else
              {
                v174 = 2;
              }

              *(&v231[1] + 6) = 468;
              WORD1(v231[2]) = 2048;
              *(&v231[2] + 4) = v106;
              WORD2(v231[3]) = 2048;
              *(&v231[3] + 6) = v111;
              _os_log_send_and_compose_impl(v174, &v241, &buf, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v231, 38, v177, v178);
              _os_crash_msg();
              __break(1u);
            }

            if (*(v110 + 2 * v106) == -1)
            {
              if (v109 <= v106)
              {
                goto LABEL_318;
              }

              *(v108 + 2 * v106) = *(v107 + 2 * v106);
            }
          }

          ++v106;
        }

        while (v106 != v104);
        v98 = v192;
        if (v105)
        {
          v61 = 0;
        }

        else
        {
LABEL_193:
          v114 = re::FixedArray<short>::operator=(&v226, (v98 + 8));
          *&v251 = 0;
          *(&buf + 1) = 0;
          re::FixedArray<short>::operator=(&v206, &buf);
          if (buf && *(&buf + 1))
          {
            (*(*buf + 40))();
          }

          v61 = 1;
        }

        v90 = v183;
        v91 = v184;
        v88 = v177;
      }
    }

    else
    {
      v98 = v192;
    }

    if ((v227 == 0) | *v187 & 1)
    {
      v115 = v89;
    }

    else
    {
      v115 = v91;
    }

    if ((v227 == 0) | *v187 & 1)
    {
      v116 = v88;
    }

    else
    {
      v116 = v90;
    }

    if (v116 > v115 && (*v98 & 1) == 0)
    {
      *&buf = __s2;
      *(&buf + 1) = v215;
      re::FixedArray<short>::operator=(&v226, &buf);
    }

    if (v226)
    {
      re::FixedArray<short>::FixedArray(&buf, &v226);
    }

    else
    {
      *&v251 = 0;
      *(&buf + 1) = 0;
    }

    re::FixedArray<short>::operator=(&v202, &buf);
    if (buf && *(&buf + 1))
    {
      (*(*buf + 40))();
    }

    LOWORD(v201) = v115;
    HIWORD(v201) = v116;
    v188 = v94;
    if (v94 == v116 && v186 > v94)
    {
      v118 = 1;
    }

    else
    {
      v118 = 2;
    }

    DWORD1(v197) = v118;
    isHDR = re::isHDR(v181);
    if (isHDR)
    {
      v120 = 1;
    }

    else
    {
      v120 = 2;
    }

    if (v230 && (v121 = atomic_load((v230 + 24)), (v121 & 1) != 0) || v229 && (v122 = atomic_load((v229 + 24)), (v122 & 1) != 0))
    {
      v234 = 0;
      LODWORD(v235) = 0;
      memset(v231, 0, sizeof(v231));
      v232 = 0u;
      v233 = 0;
      LOWORD(v236) = v236 & 0xFC00;
      memset(v237, 0, 24);
      v238 = 0u;
      memset(v239, 0, 28);
      v240 = 0uLL;
      v37 = v178;
    }

    else
    {
      v123 = *v185;
      v37 = v178;
      if (*v185)
      {
        v234 = 0;
        LODWORD(v235) = 0;
        memset(v231, 0, sizeof(v231));
        v232 = 0u;
        v233 = 0;
        LOWORD(v236) = v236 & 0xFC00;
        memset(v237, 0, 24);
        v238 = 0u;
        memset(v239, 0, 28);
        v240 = 0uLL;
        *&buf = v123;
        *(&buf + 1) = *(v185 + 8);
        LODWORD(v251) = *(v185 + 16);
        if (BYTE3(v251) == 1)
        {
          BYTE4(v251) = *(v185 + 20);
        }

        *(&v251 + 5) = *(v185 + 21);
        HIDWORD(v251) = *(v185 + 28);
        *v252 = v180;
        *&v252[8] = v196;
        *&v252[24] = v197;
        *&v252[40] = v198[0];
        *&v252[52] = *(v198 + 12);
        v253 = v199;
        v254 = v200;
        LODWORD(v255) = v201;
        v124 = re::FixedArray<short>::FixedArray(&v256, &v202);
        v259 = v205;
        v261 = v120;
        v262 = v231;
        v263 = &v230;
        v264 = &v229;
        v125 = re::globalAllocators(v124)[2];
        *v244 = v125;
        if (v125)
        {
          v125 = (*(*v125 + 32))(v125, 216, 0);
        }

        (*(*v178 + 48))(v225, v178, &v241);
        re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(&v241);
        if (v256)
        {
          if (v257)
          {
            (*(*v256 + 40))();
            v257 = 0;
            v258 = 0;
          }

          v256 = 0;
        }

        if ((v225[0] & 1) == 0)
        {
        }
      }

      else
      {
        v126 = *re::assetsLogObjects(isHDR);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1E1C61000, v126, OS_LOG_TYPE_DEFAULT, "ImportGraphicsContext has an invalid device!", &buf, 2u);
        }

        v234 = 0;
        LODWORD(v235) = 0;
        memset(v231, 0, sizeof(v231));
        v232 = 0u;
        v233 = 0;
        LOWORD(v236) = v236 & 0xFC00;
        memset(v237, 0, 24);
        v238 = 0u;
        memset(v239, 0, 28);
        v240 = 0uLL;
      }
    }

    if (v226 && v227)
    {
      (*(*v226 + 40))();
    }

LABEL_80:
    LOBYTE(v241) = 0;
    v242 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v241, &v234);
    v243 = v236;
    *v244 = *v237;
    *&v244[12] = *&v237[12];
    v66 = v238;
    v238 = 0u;
    v245 = v66;
    v246 = *&v239[0];
    memset(v239, 0, 24);
    v247 = *(v239 + 8);
    ++DWORD2(v239[1]);
    v248 = 1;
    v67 = v240;
    *&v240 = 0;
    v249 = v67;
    if (v235 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v235])(&buf, &v234);
    }

    LODWORD(v235) = -1;
    if (v37)
    {
    }

    if (v202)
    {
      if (v203)
      {
        (*(*v202 + 40))();
        v203 = 0;
        v204 = 0;
      }

      v202 = 0;
    }

    if (v242)
    {
      if (v242 != 1)
      {
        goto LABEL_326;
      }

      if (!*(v241 + 6))
      {
        goto LABEL_98;
      }

      v69 = (v241 + 24);
    }

    else
    {
      v69 = &v241;
    }

    if (*v69)
    {
      if (v207)
      {
        v70 = 0;
        v71 = 0;
        v72 = v208;
        do
        {
          v73 = *v72++;
          v70 += (v73 >> 15) ^ 1;
          ++v71;
        }

        while (v207 > v71);
      }

      else
      {
        v70 = 0;
      }

      v76 = (v70 == 0) & ~v61;
      if (v182 == v215)
      {
        v76 = 0;
      }

      if ((v61 | v76))
      {
        goto LABEL_103;
      }

      if (v210)
      {
        if (v210 != 1)
        {
          goto LABEL_326;
        }

        if (!*(v209 + 48))
        {
          goto LABEL_141;
        }

        v77 = (v209 + 24);
      }

      else
      {
        v77 = &v209;
      }

      if (*v77)
      {
        v85 = os_unfair_lock_trylock((v39 + 400));
        if (v85)
        {
          if (!*(v39 + 120) && !v210)
          {
            if (*(v39 + 112) != v209)
            {
LABEL_255:
              v147 = buf;
              v148 = v251;
              *v190 = 0;
              *(v190 + 8) = v147;
              *(v190 + 24) = v148;
              os_unfair_lock_unlock((v39 + 400));
              goto LABEL_256;
            }

            re::TextureData::pixelFormat(&v241);
            v128 = v127;
            re::TextureData::pixelFormat((v39 + 112));
            if (v128 != v129)
            {
              re::DynamicString::format(&buf, "TextureAsset data has mismatched pixel formats and cannot be copied, existing [%d] != loaded [%d].", v130, v129, v128);
              goto LABEL_255;
            }

            if (v179)
            {
              v131 = v186 - v188;
              if (v186 <= v188)
              {
                v146 = 0;
              }

              else
              {
                v132 = vdupq_n_s64(v188);
                v133 = vaddq_s64(v132, xmmword_1E305F210);
                v134 = vaddq_s64(v132, xmmword_1E3049660);
                v135 = vaddq_s64(v132, xmmword_1E3049640);
                v136 = vaddq_s64(v132, xmmword_1E3049620);
                v137 = vdupq_n_s64(v131 - 1);
                v138 = vdupq_n_s64(v184);
                v139 = 0uLL;
                v140 = vdupq_n_s64(1uLL);
                v141 = 8;
                do
                {
                  v142 = v139;
                  v139 = vorrq_s8(v139, vuzp1q_s16(vuzp1q_s32(vshlq_u64(v140, vsubq_s64(v136, v138)), vshlq_u64(v140, vsubq_s64(v135, v138))), vuzp1q_s32(vshlq_u64(v140, vsubq_s64(v134, v138)), vshlq_u64(v140, vsubq_s64(v133, v138)))));
                  v143 = vdupq_n_s64(8uLL);
                  v134 = vaddq_s64(v134, v143);
                  v135 = vaddq_s64(v135, v143);
                  v136 = vaddq_s64(v136, v143);
                  v133 = vaddq_s64(v133, v143);
                  v141 -= 8;
                }

                while (((v131 + 7) & 0xFFFFFFFFFFFFFFF8) + v141 != 8);
                v144 = vdupq_n_s64(-v141);
                v145 = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(vorrq_s8(v144, xmmword_1E3049620), v137), vcgtq_u64(vorrq_s8(v144, xmmword_1E3049640), v137)), vuzp1q_s32(vcgtq_u64(vorrq_s8(v144, xmmword_1E3049660), v137), vcgtq_u64(vorrq_s8(v144, xmmword_1E305F210), v137))), v142, v139);
                *v145.i8 = vorr_s8(*v145.i8, *&vextq_s8(v145, v145, 8uLL));
                v146 = v145.i16[0] | v145.i16[2] | ((v145.i32[0] | v145.i32[1]) >> 16);
              }
            }

            else
            {
              v146 = -1;
            }

            memset(v231, 0, 24);
            v149 = v207;
            if (v207)
            {
              v150 = 0;
              v151 = 0;
              v152 = 0;
              v189 = v231[1];
              v153 = v231[2];
              do
              {
                if ((v208[v150] & 0x80000000) == 0)
                {
                  v154 = *re::FixedArray<short>::operator[](v149, v208, v150);
                  *re::FixedArray<re::Pair<unsigned short,unsigned short,true>>::operator[](v189, v153, v151) = v154 | (v152 << 16);
                  v149 = v207;
                  ++v151;
                }

                v150 = ++v152;
              }

              while (v149 > v152);
            }

            if (v41 && (v155 = atomic_load((v41 + 24)), (v155 & 1) != 0) || a7 && (v156 = atomic_load((a7 + 24)), (v156 & 1) != 0))
            {
              v157 = buf;
              v158 = v251;
              *v190 = 0;
              *(v190 + 8) = v157;
              *(v190 + 24) = v158;
              v159 = v231[1];
              goto LABEL_310;
            }

            if (!*(v39 + 120))
            {
              v160 = v37;
              v195 = *(v39 + 112);
              if (!v242)
              {
                v194 = v241;
                v159 = v231[1];
                *&buf = v231[2];
                *(&buf + 1) = v231[1];
                v161 = re::copyTextureMipsAndSlices(v185, &v195, &v194, v146, &buf);
                if (v194)
                {

                  v194 = 0;
                }

                v162 = v195;
                if (v195)
                {

                  v195 = 0;
                }

                if (v161)
                {
                  if (v231[0] && v159)
                  {
                    (*(*v231[0] + 40))();
                  }

                  os_unfair_lock_unlock((v39 + 400));
                  v37 = v160;
LABEL_103:
                  if (*v192 == 1)
                  {
                    re::DynamicArray<short>::DynamicArray(&buf, v192 + 8);
                  }

                  else
                  {
                    re::DynamicArray<short>::DynamicArray(&buf, (v39 + 304));
                  }

                  re::DynamicArray<short>::operator=(&v246, &buf);
                  v78 = buf;
                  if (buf && *v252)
                  {
                    v78 = (*(*buf + 40))();
                  }

                  v79 = v226;
                  v81 = v191[1];
                  v80 = v191[2];
                  v82 = *v191;
                  *(v226 + 76) = *(v191 + 44);
                  *(v79 + 48) = v81;
                  *(v79 + 64) = v80;
                  *(v79 + 32) = v82;
                  re::ObjCObject::operator=((v79 + 96), v191 + 8);
                  v83 = *(v191 + 72);
                  *(v79 + 120) = *(v191 + 22);
                  *(v79 + 104) = v83;
                  re::FixedArray<short>::operator=((v79 + 128), v191 + 12);
                  *(v79 + 152) = *(v191 + 120);
                  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v79 + 24), v37);
                  *(v79 + 160) = *(v39 + 224);
                  v193 = v79;
                  v84 = (v79 + 8);
                  re::TextureAssetData::TextureAssetData(v231, &v241, &v243, &v193);
                  re::TextureAssetData::TextureAssetData(&buf, v231);
                  *v190 = 1;
                  re::TextureAssetData::TextureAssetData(v190 + 8, &buf);
                  *&buf = &unk_1F5CC40A0;
                  if (v257)
                  {

                    v257 = 0;
                  }

                  if (*&v252[64])
                  {
                    if (v255)
                    {
                      (*(**&v252[64] + 40))();
                    }

                    v255 = 0;
                    v253 = 0;
                    *&v254 = 0;
                    *&v252[64] = 0;
                    ++DWORD2(v254);
                  }

                  if (*&v252[48])
                  {

                    *&v252[48] = 0;
                  }

                  if (*v252 != -1)
                  {
                    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*v252])(v225, &v251 + 8);
                  }

                  *v252 = -1;
                  *&buf = &unk_1F5CCF868;
                  objc_destructInstance(&buf + 8);
                  v231[0] = &unk_1F5CC40A0;
                  if (*&v239[0])
                  {

                    *&v239[0] = 0;
                  }

                  if (*v237)
                  {
                    if (v238)
                    {
                      (*(**v237 + 40))();
                    }

                    *&v238 = 0;
                    memset(v237, 0, 24);
                    ++*&v237[24];
                  }

                  if (v235)
                  {

                    v235 = 0;
                  }

                  if (LODWORD(v231[4]) != -1)
                  {
                    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[LODWORD(v231[4])])(v225, &v231[3]);
                  }

                  LODWORD(v231[4]) = -1;
                  v231[0] = &unk_1F5CCF868;
                  objc_destructInstance(&v231[1]);

                  goto LABEL_256;
                }

                v163 = buf;
                v164 = v251;
                *v190 = 0;
                *(v190 + 8) = v163;
                *(v190 + 24) = v164;
                v37 = v160;
LABEL_310:
                if (v231[0] && v159)
                {
                  (*(*v231[0] + 40))();
                }

                os_unfair_lock_unlock((v39 + 400));
                goto LABEL_256;
              }
            }
          }

LABEL_326:
          v175 = std::__throw_bad_variant_access[abi:nn200100]();
          re::TextureAsset::setColorSpace(v175, v176);
          return;
        }

        v86 = "TextureAsset is blocked by another update";
        goto LABEL_160;
      }

LABEL_141:
      v86 = "TextureAsset has invalid data, so it cannot be copied";
LABEL_160:
      v95 = buf;
      v96 = v251;
      *v190 = 0;
      *(v190 + 8) = v95;
      *(v190 + 24) = v96;
      goto LABEL_256;
    }

LABEL_98:
    v74 = buf;
    v75 = v251;
    *v190 = 0;
    *(v190 + 8) = v74;
    *(v190 + 24) = v75;
LABEL_256:
    if (v246)
    {
      if (v249)
      {
        (*(*v246 + 40))();
      }

      *&v249 = 0;
      v247 = 0uLL;
      v246 = 0;
      ++v248;
    }

    if (v245)
    {

      *&v245 = 0;
    }

    if (v242 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v242])(&buf, &v241);
    }

    if (v206 && v207)
    {
      (*(*v206 + 40))();
    }

    if (v210 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v210])(&buf, &v209);
    }

    if (v211 && (BYTE8(v211) & 1) != 0)
    {
      (*(*v211 + 40))();
    }

    if (!v37)
    {
      goto LABEL_275;
    }

    v55 = (v37 + 8);
LABEL_274:

LABEL_275:
    if (v214 && __s2)
    {
      (*(*v214 + 40))();
    }

    goto LABEL_278;
  }

  os_unfair_lock_unlock((a1 + 400));
  v47 = buf;
  v48 = v251;
  *a8 = 0;
  *(a8 + 8) = v47;
  *(a8 + 24) = v48;
LABEL_278:
  if (v221[0])
  {
    if (v223)
    {
      (*(*v221[0] + 40))();
    }

    v223 = 0;
    memset(v221, 0, sizeof(v221));
    ++v222;
  }

  if (v219)
  {
  }
}

re::DynamicString *re::TextureAsset::setColorSpace(id *this, __CFString *a2)
{
  re::TextureImportData::ImportReport::setColorSpace(this + 16, a2);
  if (a2)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    re::DynamicString::operator=((this + 46), &v6);
    result = v6;
    if (v6)
    {
      if (v7)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  else
  {
    v6 = "";
    v7 = 0;
    return re::DynamicString::operator=((this + 46), &v6);
  }

  return result;
}

void re::TextureImportData::ImportReport::setColorSpace(id *this, __CFString *a2)
{
  objc_storeStrong(this + 6, a2);
}

BOOL re::TextureAsset::isLegacyLinearFormatWithSRGBData(re::TextureAsset *this)
{
  v2 = *(this + 7);
  if (v2 && *(v2 + 296) != 1)
  {
    return 0;
  }

  v3 = *(this + 89);
  if (v3 != 6 && v3 != 0)
  {
    return 0;
  }

  MTLPixelFormatGetInfoForDevice();
  v5 = *(this + 86);
  return v5 != re::translateLinearPixelFormatToSRGB(v5);
}

void re::TextureAsset::createTextureSRGBAdaptor(id *a1@<X0>, id *a2@<X1>, char a3@<W2>, void **a4@<X8>)
{
  v8 = re::translateLinearPixelFormatToSRGB([*a2 pixelFormat]);
  if ([*a2 pixelFormat] == v8)
  {
    *a4 = 0;
    return;
  }

  if (a1)
  {
    v9 = *a1;
    if (a3)
    {
LABEL_5:
      *a4 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = [*a2 device];
    if (a3)
    {
      goto LABEL_5;
    }
  }

  isSupportedPixelFormat = re::isSupportedPixelFormat(v9, v8, [*a2 textureType]);
  *a4 = 0;
  if (isSupportedPixelFormat)
  {
    v21 = [*a2 newTextureViewWithPixelFormat_];
    NS::SharedPtr<MTL::Texture>::operator=(a4, &v21);
    goto LABEL_31;
  }

LABEL_9:
  if (!a1)
  {
    return;
  }

  re::createDescriptorFromTexture(a1, a2, &v21);
  [v21 setUsage_];
  [v21 setSwizzle_];
  v11 = v21;
  if (([v21 respondsToSelector_] & 1) != 0 || objc_msgSend(v11, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v11 setCompressionType_];
  }

  if (v8 == 11)
  {
    [v21 setPixelFormat_];
    if ([*a2 isShareable])
    {
      re::mtl::Device::makeSharedTexture(&v20, v21, a1);
    }

    else
    {
      re::mtl::Device::makeTexture(&v20, v21, a1);
    }

    NS::SharedPtr<MTL::Texture>::operator=(a4, &v20);
    if (v20)
    {
    }

    if (!*a4)
    {
      goto LABEL_31;
    }

    re::copyTexture(a1, a2, a4, 0x5040302uLL, 1);
    if ([*a2 swizzle] == 84148994)
    {
      goto LABEL_31;
    }

    v13 = *a4;
    v14 = [*a4 pixelFormat];
    v15 = [*a4 textureType];
    v16 = [*a4 mipmapLevelCount];
    v17 = *a4;
    v18 = [*a4 arrayLength];
    if ([v17 textureType] - 5 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 6 * v18;
    }

    v12 = [v13 newTextureViewWithPixelFormat:v14 textureType:v15 levels:0 slices:v16 swizzle:0, v19, objc_msgSend(*a2, sel_swizzle)];
  }

  else
  {
    [v21 setPixelFormat_];
    re::mtl::Device::makeTexture(&v20, v21, a1);
    NS::SharedPtr<MTL::Texture>::operator=(a4, &v20);
    if (v20)
    {
    }

    if (!*a4)
    {
      goto LABEL_31;
    }

    re::copyTexture(a1, a2, a4, 0x5040302uLL, 0);
    v12 = [*a4 newTextureViewWithPixelFormat_];
  }

  v20 = v12;
  NS::SharedPtr<MTL::Texture>::operator=(a4, &v20);
  if (v20)
  {
  }

LABEL_31:
  if (v21)
  {
  }
}

void re::TextureAsset::addLegacyLinearFormatWithSRGBDataTexture(os_unfair_lock_s **this, const re::RenderManager *a2)
{
  re::ImportGraphicsContext::createFromRenderManager(v6, a2);
  re::TextureHandle::unsynchronizedMetalTexture(v4, this + 1);
  re::TextureAsset::createTextureSRGBAdaptor(v6, v4, 0, &v5);
  if (v4[0])
  {
  }

  if (v5)
  {
    re::TextureManager::registerTexture(*(a2 + 7), &v5, v4);
    re::TextureHandle::operator=((this + 12), v4);
    re::TextureHandle::invalidate(v4);
    if (v5)
    {
    }
  }
}

void re::TextureAsset::updateLegacyLinearFormatWithSRGBDataTexture(re::TextureAsset *this, id *a2)
{
  if (*(this + 13) && *(this + 12))
  {
    if (*(this + 30))
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      re::TextureData::swizzle(v5);
      return;
    }

    v4 = [*(this + 14) pixelFormat];
    if (v4 == re::translateLinearPixelFormatToSRGB(v4))
    {
      re::TextureHandle::unsynchronizedMetalTexture(&v7, this + 1);
    }

    else
    {
      if (!*a2)
      {
        a2 = 0;
      }

      re::TextureHandle::unsynchronizedMetalTexture(&v6, this + 1);
      re::TextureAsset::createTextureSRGBAdaptor(a2, &v6, 0, &v7);
      if (v6)
      {
      }

      if (!v7)
      {
        re::TextureHandle::unsynchronizedMetalTexture(&v6, this + 1);
        re::TextureHandle::setMetalTexture((this + 96), &v6);
        if (v6)
        {
        }

        goto LABEL_12;
      }
    }

    re::TextureHandle::setMetalTexture((this + 96), &v7);
LABEL_12:
    if (v7)
    {
    }
  }
}

__CFString *re::TextureData::swizzle(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureAsset::updateColorSpaceFromTexture(v5, v6, v7);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 swizzle];
}

__CFString *re::TextureAsset::updateColorSpaceFromTexture(__CFString **this, const re::ImportGraphicsContext *a2, __CFString *a3)
{
  v3 = a3;
  if (a3 || (v3 = this[22], result = v3, v3) || *(a2 + 19) == 1 && (result = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(*(this + 86), *(a2 + 20)), (v3 = result) != 0))
  {

    return re::TextureAsset::setColorSpace(this, v3);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<short>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<short>::copy(this, 0, *a2, v4);
      re::DynamicArray<short>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<short>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<short>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

void re::TextureAsset::setTexture(re::TextureAsset *this, const re::ImportGraphicsContext *a2, re::AssetHandle *a3, const re::TextureAssetData *a4)
{
  re::AssetHandle::loadNow(*(a2 + 1), 0);
  v7 = *(a2 + 1);
  if (v7)
  {
    v8 = atomic_load((v7 + 896));
    if (v8 == 2)
    {
      re::AssetHandle::mutateAssetCommon(a2);
      ++*(*(a2 + 1) + 276);
      v9 = re::AssetHandle::loadedAsset<re::TextureAsset>(a2);
      if (v9)
      {
        v10 = v9;
        re::TextureAssetLoader::getOrCreateImportOptions(v21, a3);
        v12 = v10 + 168;
        v11 = *(v10 + 168);
        if (v11)
        {
          v13 = (v11 + 8);
        }

        *(v10 + 128) = *(a3 + 20);
        v14 = *(a3 + 3);
        *(v10 + 148) = *(a3 + 60);
        *(v10 + 136) = v14;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v10 + 168), *(a3 + 10));
        re::ObjCObject::operator=((v10 + 176), a3 + 11);
        re::DynamicArray<short>::operator=(v10 + 184, a3 + 12);
        *(v10 + 224) = *(a3 + 17);
        if (!v11 || *v12 && (v15 = (*(*v11 + 56))(v11), v15 != (*(**v12 + 56))()))
        {
          if (*v12)
          {

            *v12 = 0;
          }
        }

        v16 = *(a3 + 11);
        v17 = v16;
        v18 = *(a3 + 14);
        v20[0] = *(a3 + 16);
        v20[1] = v18;
        re::TextureAsset::setTexture(v10, this, a3 + 24, &v23, v22, v16, v20);
        if (v11)
        {
        }

        if (v25)
        {
          if (v26)
          {
            (*(*v25 + 40))();
            v26 = 0;
            v27 = 0;
          }

          v25 = 0;
        }

        v19 = *(a2 + 1);
        *(v19 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v19);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(a2 + 1));
      }
    }
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(a2 + 1) + 264), *(a3 + 18));
  re::AssetManager::assetPayloadDidChange(*(*(a2 + 1) + 24), *(a2 + 1));
}

uint64_t re::TextureAsset::setTexture_makeMutable(re::TextureAsset *this, const re::ImportGraphicsContext *a2, re::AssetHandle *a3, const re::TextureAssetData *a4)
{
  re::AssetHandle::loadNow(*(a2 + 1), 0);
  re::TextureAssetLoader::getOrCreateImportOptions(&v24, a3);
  v7 = *(a2 + 1);
  if (v7 && (v8 = *(v7 + 24)) != 0 && re::AssetManager::convertToMutable(v8, a2))
  {
    v9 = *(a2 + 1);
    if (v9)
    {
      v10 = atomic_load((v9 + 896));
      if (v10 == 2)
      {
        re::AssetHandle::mutateAssetCommon(a2);
        ++*(*(a2 + 1) + 276);
        v11 = re::AssetHandle::loadedAsset<re::TextureAsset>(a2);
        if (v11)
        {
          v12 = v11;
          v14 = (v11 + 168);
          v13 = *(v11 + 168);
          if (v13)
          {
            v15 = (v13 + 8);
          }

          *(v12 + 128) = *(a3 + 20);
          v16 = *(a3 + 3);
          *(v12 + 148) = *(a3 + 60);
          *(v12 + 136) = v16;
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v14, *(a3 + 10));
          re::ObjCObject::operator=((v12 + 176), a3 + 11);
          re::DynamicArray<short>::operator=(v12 + 184, a3 + 12);
          *(v12 + 224) = *(a3 + 17);
          if (!v13 || *v14 && (v17 = (*(*v13 + 56))(v13), v17 != (*(**v14 + 56))()))
          {
            if (*v14)
            {

              *v14 = 0;
            }
          }

          v18 = *(a3 + 11);
          v19 = v18;
          v20 = *(a3 + 14);
          v31[0] = *(a3 + 16);
          v31[1] = v20;
          re::TextureAsset::setTexture(v12, this, a3 + 24, &v26, v25, v18, v31);
          if (v13)
          {
          }

          v21 = *(a2 + 1);
          *(v21 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v21);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(a2 + 1));
        }
      }
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(a2 + 1) + 264), *(a3 + 18));
    re::AssetManager::assetPayloadDidChange(*(*(a2 + 1) + 24), *(a2 + 1));
    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (v28)
  {
    if (v29)
    {
      (*(*v28 + 40))();
      v29 = 0;
      v30 = 0;
    }

    v28 = 0;
  }

  return v22;
}

void *re::TextureAssetLoader::getOrCreateImportOptions(re::TextureAssetLoader *this, const re::TextureAssetData *a2)
{
  v3 = *(a2 + 18);
  if (v3)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 48);
    v6 = *(v3 + 64);
    *(this + 44) = *(v3 + 76);
    *(this + 1) = v5;
    *(this + 2) = v6;
    *this = v4;
    *(this + 8) = *(v3 + 96);
    v7 = *(v3 + 120);
    *(this + 72) = *(v3 + 104);
    *(this + 22) = v7;
    result = re::FixedArray<short>::FixedArray(this + 12, (v3 + 128));
    *(this + 120) = *(v3 + 152);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 4) = 1;
    *(this + 10) = 0;
    *(this + 44) = 0;
    *(this + 12) = 0;
    *(this + 3) = 0;
    *(this + 29) = 0;
    *(this + 14) = 6;
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 8) = 0;
    *(this + 22) = -65536;
    *(this + 13) = 0;
    *(this + 14) = 0;
    *(this + 12) = 0;
    *(this + 120) = 0;
    re::TextureData::mipmapLevelCount((a2 + 24));
    v11 = v10;
    result = 0;
    v12 = *(a2 + 8);
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    if (v11 <= 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    *(this + 5) = v14;
    if (!v12)
    {
      result = [*(a2 + 3) isShareable];
    }

    *(this + 52) = result;
  }

  return result;
}

void re::TextureAsset::setMetalTexture_fromDrawableQueue(re::TextureAsset *a1, re::ImportGraphicsContext *a2, void **a3, int a4)
{
  re::TextureHandle::setMetalTexture((a1 + 8), a3);
  if (a4)
  {
    re::ImportGraphicsContext::createFromRenderManager(v7, a2);
    re::TextureAsset::updateLegacyLinearFormatWithSRGBDataTexture(a1, v7);
  }
}

BOOL re::TextureAsset::isCompletelyLoadedTexture(re::TextureAsset *this)
{
  if (*(this + 7))
  {
    return 1;
  }

  if (*(this + 9) || !*(this + 21) || !*(this + 39))
  {
    return 1;
  }

  LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(this);
  result = 0;
  if (LoadedMipmapRange || v3 != *(this + 39))
  {
    return result;
  }

  v5 = *(this + 40);
  if (!v5)
  {
    return 1;
  }

  if (v5 != *(this + 37))
  {
    return 0;
  }

  v6 = 0;
  v7 = v5 - 1;
  do
  {
    v8 = *(*(this + 42) + 2 * v6);
    result = v6 == v8;
    v9 = v6 != v8 || v7 == v6;
    ++v6;
  }

  while (!v9);
  return result;
}

uint64_t re::Optional<re::StringID>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::StringID::operator=(v3, (a2 + 8));
    }

    else
    {
      re::StringID::destroyString(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v4 = *(a2 + 8);
    *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = &str_67;
  }

  return a1;
}

void re::TextureAssetLoader::init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  a1[1] = a2;
  a1[2] = a3;
  re::ObjCObject::operator=(a1 + 5, a4);
  re::ObjCObject::operator=(a1 + 6, (a4 + 8));
  v16 = *(a4 + 16);
  *(a1 + 58) = *(a4 + 18);
  *(a1 + 28) = v16;
  if (*(a1 + 59))
  {
    if ((*(a4 + 19) & 1) == 0)
    {
      *(a1 + 59) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a4 + 19) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 59) = 1;
  }

  *(a1 + 60) = *(a4 + 20);
LABEL_7:
  v17 = *(a4 + 21);
  *(a1 + 17) = *(a4 + 28);
  *(a1 + 61) = v17;
  a1[9] = a6;
  a1[3] = a5;
  a1[4] = a7;
  *(a1 + 88) = a8;
  re::Defaults::BOOLValue(&v23, "preloadEngineTextureAssets", v15);
  if (v23)
  {
    v18 = BYTE1(v23);
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 89) = v18;
  if (a9)
  {
    v23 = a1;
    re::make::shared::object<re::TextureAssetRealityFileProviderCallbacks,re::TextureAssetLoader *>(&v23, &v21);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 10, v21);
    v20 = *(a1[1] + 1960);
    if (v20)
    {
      re::TextureAsset::assetType(v19);
      v22 = v21;
      v23 = &re::TextureAsset::assetType(void)::type;
      re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::emplace<re::RealityFileAssetProvider::PerTypeLoadCallbacks*&>(v20 + 232, &v23, &v22);
    }

    if (v21)
    {
    }
  }
}

__n128 re::TextureAssetLoader::initSpecializedTemporaryLoader(re::TextureAssetLoader *this, const re::TextureAssetLoader *a2)
{
  *(this + 8) = *(a2 + 8);
  re::ObjCObject::operator=(this + 5, a2 + 5);
  re::ObjCObject::operator=(this + 6, a2 + 6);
  v4 = *(a2 + 28);
  *(this + 58) = *(a2 + 58);
  *(this + 28) = v4;
  if ((*(this + 59) & 1) == 0)
  {
    if ((*(a2 + 59) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(this + 59) = 1;
LABEL_6:
    *(this + 60) = *(a2 + 60);
    goto LABEL_7;
  }

  if (*(a2 + 59))
  {
    goto LABEL_6;
  }

  *(this + 59) = 0;
LABEL_7:
  v5 = *(a2 + 61);
  *(this + 17) = *(a2 + 17);
  *(this + 61) = v5;
  *(this + 9) = *(a2 + 9);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(this + 44) = *(a2 + 44);
  return result;
}

void re::TextureAssetLoader::~TextureAssetLoader(re::TextureAssetLoader *this)
{
  *this = &unk_1F5CC3BC0;
  v2 = *(this + 10);
  if (v2)
  {
    *(v2 + 24) = 0;
  }

  re::DynamicArray<re::AssetHandle>::deinit(this + 96);
  v3 = *(this + 10);
  if (v3)
  {

    *(this + 10) = 0;
  }
}

{
  re::TextureAssetLoader::~TextureAssetLoader(this);

  JUMPOUT(0x1E6906520);
}

void re::TextureAssetLoader::preloadAssets(uint64_t a1, re::StringID *a2)
{
  if (re::ServiceLocator::serviceOrNull<re::RenderManager>(a2))
  {
    v4 = re::ServiceLocator::service<re::AssetService>(a2);
    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(v4 + 238), "BuiltinTexture");
    if (ProviderForScheme)
    {
      re::BuiltinTextureAssetProvider::buildFallbackTextureDescriptors(ProviderForScheme, v6, v10);
      if (v11)
      {
        v7 = v12;
        v8 = 144 * v11;
        do
        {
          os_unfair_lock_lock(v4 + 32);
          re::AssetManager::assetHandle_assetTablesLocked(v9, v4, v7);
          os_unfair_lock_unlock(v4 + 32);
          if ((*(**(a1 + 8) + 360))())
          {
            re::AssetHandle::loadAsync(v9);
          }

          re::DynamicArray<re::AssetHandle>::add((a1 + 96), v9);
          re::AssetHandle::~AssetHandle(v9);
          v7 = (v7 + 144);
          v8 -= 144;
        }

        while (v8);
      }

      re::DynamicArray<re::AssetLoadDescriptor>::deinit(v10);
    }

    re::AssetManager::assetHandle(v4, "engine:blueNoise64RGBA8.ktx", v10);
    if ((*(a1 + 89) & 1) != 0 || (*(**(a1 + 8) + 360))(*(a1 + 8)))
    {
      re::AssetHandle::loadAsync(v10);
    }

    re::DynamicArray<re::AssetHandle>::add((a1 + 96), v10);
    re::AssetHandle::~AssetHandle(v10);
  }
}

uint64_t re::TextureAssetLoader::defaultAssetCompileOptions(re::TextureAssetLoader *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = re::globalAllocators(this);
  result = (*(*v2[2] + 32))(v2[2], 128, 8);
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 16) = 1;
  *(result + 52) = 0;
  *(result + 20) = 0;
  *(result + 28) = 0;
  *(result + 36) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 80) = 0;
  *(result + 90) = -1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 112) = 0;
  *(result + 24) = 1;
  return result;
}

void re::reinterpretAsLinear(re *this, const re::TextureData *a2)
{
  re::TextureData::pixelFormat(a2);
  v5 = re::translateSRGBPixelFormatToLinear(v4);
  re::TextureData::pixelFormat(a2);
  if (v5 == v6)
  {
    *this = 0;
    *(this + 2) = -1;

    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(this, a2);
  }

  else
  {
    v7 = *(a2 + 2);
    if (v7)
    {
      if (v7 != 1 || (v8 = [*(*a2 + 24) copy], v20 = v8, v9 = objc_msgSend(v8, sel_setPixelFormat_, v5), *(a2 + 2) != 1))
      {
        v16 = std::__throw_bad_variant_access[abi:nn200100]();
        re::TextureAssetLoader::serializeAssetBlob(v16, v17, v18, v19);
        return;
      }

      v10 = *a2;
      v11 = re::globalAllocators(v9);
      v12 = (*(*v11[2] + 32))(v11[2], 104, 8);
      v13 = re::CPUTexture::CPUTexture(v12, &v20, (v10 + 32));
      *this = v13;
      if (v13)
      {
        v14 = (v12 + 8);
        *(this + 2) = 1;

        if (!v8)
        {
          return;
        }
      }

      else
      {
        *(this + 2) = 1;
        if (!v8)
        {
          return;
        }
      }
    }

    else
    {
      v15 = [*a2 newTextureViewWithPixelFormat_];
      *this = v15;
      *(this + 2) = 0;
      if (v15)
      {
      }
    }
  }
}

BOOL re::TextureAssetLoader::serializeAssetBlob(int a1, const char *a2, id *this, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  isCompletelyLoadedTexture = re::TextureAsset::isCompletelyLoadedTexture(this);
  v8 = isCompletelyLoadedTexture;
  v9 = this[21];
  if (!isCompletelyLoadedTexture)
  {
    if (!v9)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v10 = !isCompletelyLoadedTexture | ((this[16] & 4) >> 2);
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (!a4)
  {
LABEL_19:
    v21 = 0;
    v22 = 0;
    v25 = 0;
    v24 = 0;
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_20:
    v23 = v25;
    v20 = !v8;
    goto LABEL_21;
  }

LABEL_7:
  if (re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "writeAsSourceImage"))
  {
    return 1;
  }

  v12 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a4, "blobOverrideParameterKey");
  if (v12 && *(v12 + 32) == 1)
  {
    v13 = *v12;
    v14 = (*(*a2 + 16))(a2, [v13 bytes], objc_msgSend(v13, "length"));
    v11 = v14 == [v13 length];

    return v11;
  }

  if (!re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "kGBA8ToASTCCompressionWriteParameters"))
  {
    goto LABEL_19;
  }

  v43 = "kGBA8ToASTCCompressionWriteParameters";
  v15 = re::Hash<re::DynamicString>::operator()(&v40, "kGBA8ToASTCCompressionWriteParameters");
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a4, &v43, v15, &v40);
  v16 = *(a4 + 16) + 88 * HIDWORD(v41);
  if (*(v16 + 72) == 1)
  {
    v17 = *(v16 + 40);
    v18 = [v17 bytes];
    if (v10)
    {
      v19 = *(v18 + 16);
      v20 = !v8;
      if (!v8 || (*(v18 + 16) & 1) != 0)
      {

        if (v19)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
LABEL_21:
          v26 = re::copySourceKTX((this + 21), a2);
          v11 = v26;
          if (!v20)
          {
            v25 = v23;
            if ((v26 & 1) == 0)
            {
LABEL_23:
              v27 = (this + 14);
              if (v24)
              {
                LOBYTE(v40) = 0;
                if (shouldForceToLinearPixelFormat)
                {
                  re::reinterpretAsLinear(buf, v27);
                  LOBYTE(v43) = 1;
                  LOBYTE(v44) = 0;
                  v45 = -1;
                  shouldForceToLinearPixelFormat = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v44, buf);
                  if (v40)
                  {
                    if (v43)
                    {
                      shouldForceToLinearPixelFormat = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v41, &v44);
                    }

                    else
                    {
                      if (LODWORD(v42[0]) != -1)
                      {
                        shouldForceToLinearPixelFormat = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[LODWORD(v42[0])])(&v46, &v41);
                      }

                      LODWORD(v42[0]) = -1;
                      LOBYTE(v40) = 0;
                    }
                  }

                  else if (v43)
                  {
                    LOBYTE(v40) = 1;
                    LOBYTE(v41) = 0;
                    LODWORD(v42[0]) = -1;
                    shouldForceToLinearPixelFormat = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v41, &v44);
                  }

                  if (v43 == 1)
                  {
                    if (v45 != -1)
                    {
                      shouldForceToLinearPixelFormat = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v45])(&v46, &v44);
                    }

                    v45 = -1;
                  }

                  if (HIDWORD(v48) != -1)
                  {
                    shouldForceToLinearPixelFormat = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[HIDWORD(v48)])(&v46, buf);
                  }
                }

                if (v40)
                {
                  v27 = &v41;
                }

                v34 = this[22];
                v35 = v34;
                v11 = re::exportToKtxWithRGBA8ToASTCCompression(a2, v27, v34, v25, v22 | (v21 << 32), *(this + 89));
                if (v40 == 1 && LODWORD(v42[0]) != -1)
                {
                  (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[LODWORD(v42[0])])(&v43, &v41);
                }
              }

              else
              {
                v43 = 0;
                v44 = 0;
                if (v29)
                {
                  re::reinterpretAsLinear(&v40, v27);
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v43, &v40);
                  if (v41 != -1)
                  {
                    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v41])(buf, &v40);
                  }

                  v27 = &v43;
                }

                v30 = this[22];
                v31 = v30;
                re::exportToKtx(a2, v27, v30, 0, 0, &v40);
                if ((v40 & 1) == 0)
                {
                  v33 = *re::assetTypesLogObjects(v32);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    if (v42[0])
                    {
                      v37 = v42[1];
                    }

                    else
                    {
                      v37 = v42 + 1;
                    }

                    *buf = 136315138;
                    v48 = v37;
                    _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
                  }
                }

                v11 = v40;
                if (v40 & 1) == 0 && v41 && (v42[0])
                {
                  (*(*v41 + 40))();
                }

                if (v44 != -1)
                {
                  (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v44])(&v40, &v43);
                }
              }
            }
          }

          return v11;
        }

        return 0;
      }
    }

    else if (!v8)
    {

      return 0;
    }

    v25 = *v18;
    v22 = *(v18 + 8);
    v21 = *(v18 + 12);

    v24 = 1;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v38 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(v38, v39);
}

BOOL re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(uint64_t a1, char *a2)
{
  v6 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v6, v3, v5);
  return v5[3] != 0x7FFFFFFF;
}

uint64_t re::anonymous namespace::shouldForceToLinearPixelFormat(uint64_t a1, re::TextureData *this, uint64_t a3)
{
  if (!a3 || (v4 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, "DeploymentTarget")) == 0 || *(v4 + 32) || ((*(v4 + 8) & 1) != 0 ? (v5 = *(v4 + 16)) : (v5 = (v4 + 9)), atoi(v5) <= 4))
  {
    re::TextureData::pixelFormat(this);
    MTLPixelFormatGetInfoForDevice();
  }

  return 0;
}

void re::TextureAssetLoader::writeAssetToRealityFile(uint64_t a1@<X0>, re::TextureAssetLoader *a2@<X1>, re::DynamicString *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v120 = *MEMORY[0x1E69E9840];
  *v111 = a7;
  v17 = *(a4 + 44);
  v19 = *(a4 + 24) > 14 && v17 != 0;
  v110 = v19;
  v20 = re::AssetHandle::loadedAsset<re::TextureAsset>(a2);
  v21 = *(v20 + 344);
  ComponentCount = re::getComponentCount(v21);
  re::TextureAssetLoader::getOrCreateImportOptions(a2, &v102);
  if ((v104 - 3) <= 1 || *(v20 + 360) == 1 && !*(*(a2 + 1) + 264))
  {
    v110 = 0;
  }

  if (v103 != 1)
  {
    v110 = 0;
  }

  if ((re::isHDR(v21) & 1) != 0 || *(v20 + 348) != 2 || ComponentCount == 2 || ComponentCount >= 5)
  {
    v110 = 0;
  }

  if (((v21 - 10) > 0x3D || ((1 << (v21 - 10)) & 0x3000000000000003) == 0) && (re::isASTCPixelFormat(v21) & 1) == 0)
  {
    v110 = 0;
  }

  if (*(v20 + 288) || *(v20 + 264) || (v23 = *(v20 + 272), re::TextureData::mipmapLevelCount((v20 + 112)), v23 < v24))
  {
    v110 = 0;
  }

  v25 = re::estimateExportedTextureSizeWithCompressionOptions((a1 + 40), (v20 + 112), v104, v105);
  v27 = vcvts_n_f32_u64(v25, 1uLL);
  v28 = (v27 / 1.5);
  v100 = v27;
  v101 = v28;
  if (!v110)
  {
    goto LABEL_38;
  }

  v29 = *(a4 + 44);
  v30 = 0.0;
  if (v29 <= 1)
  {
    if (v29 != 1)
    {
      if (!v29)
      {
        v82 = "assertion failure: '%s' (%s:line %i) Unexpected";
        re::internal::assertLog(4, v26, 0.0);
        _os_crash("assertion failure: (!Unreachable code) Unexpected");
        __break(1u);
        goto LABEL_116;
      }

      goto LABEL_35;
    }

    v31 = ComponentCount == 1;
    v32 = &unk_1E305F178;
  }

  else if (v29 == 2)
  {
    v31 = ComponentCount == 1;
    v32 = &unk_1E305F170;
  }

  else
  {
    if (v29 != 3)
    {
      goto LABEL_35;
    }

    v31 = ComponentCount == 1;
    v32 = &unk_1E305F168;
  }

  v30 = v32[v31];
LABEL_35:
  v33 = *(v20 + 252);
  if (((v30 * *(v20 + 248)) * v33) + 940 <= v28)
  {
    v100 = ((v30 * *(v20 + 248)) * v33) + 940;
  }

  else
  {
    v110 = 0;
  }

LABEL_38:
  v98 = 0u;
  v99 = 0u;
  re::DynamicString::setCapacity(&v98, 0);
  re::DynamicString::rfind(v97, a3, 46);
  v84 = a5;
  if (LOBYTE(v97[0]) == 1)
  {
    re::DynamicString::substr(buf, a3, 0, v97[1]);
    re::DynamicString::operator=(&v98, buf);
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))(*buf, *&buf[16]);
    }
  }

  else
  {
    re::DynamicString::operator=(&v98, a3);
  }

  LOBYTE(a5) = a10;
  v83 = &v98 | 9;
  if (BYTE8(v98))
  {
    v35 = v99;
  }

  else
  {
    v35 = &v98 | 9;
  }

  isAllowedPassthroughFormat = re::DynamicString::format(&v94, "%s%s", v34, v35, ".sourceimage");
  v93 = 0;
  if (!v17)
  {
    goto LABEL_71;
  }

  v38 = *(*(a2 + 1) + 264);
  if (v38)
  {
    if (isAllowedPassthroughFormat)
    {
      v39 = *(v38 + 24);
      if (v39)
      {
        v118 = re::globalAllocators(isAllowedPassthroughFormat)[2];
        v119 = 0;
        v40 = (*(*v118 + 32))(v118, 56, 0);
        *v40 = &unk_1F5CC3E00;
        v40[1] = &v101;
        v40[2] = &v110;
        v40[3] = &v100;
        v40[4] = &v94;
        v40[5] = v111;
        v40[6] = &v93;
        v119 = v40;
        (*(*v39 + 48))(v112, v39, v117);
        isAllowedPassthroughFormat = re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v117);
        if ((v112[0] & 1) == 0)
        {
          v41 = *re::assetsLogObjects(isAllowedPassthroughFormat);
          isAllowedPassthroughFormat = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
          if (isAllowedPassthroughFormat)
          {
            v42 = re::AssetHandle::assetInfo(a2);
            if (v42[17])
            {
              v43 = v42[18];
            }

            else
            {
              v43 = v42 + 137;
            }

            v44 = re::WrappedError::localizedDescription(v112 + 1);
            *buf = 136315394;
            *&buf[4] = v43;
            *&buf[12] = 2080;
            *&buf[14] = v44;
            _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Failed to preserve source texture data for asset '%s': '%s'.", buf, 0x16u);
          }
        }

        if ((v112[0] & 1) == 0)
        {
        }
      }
    }
  }

  if (v93)
  {
    goto LABEL_59;
  }

  if (!v110)
  {
LABEL_71:
    re::AssetLoader::writeAssetToRealityFile(a1, a2, a3, a4, v84, a6, *v111, a8, a9, a10);
    goto LABEL_135;
  }

  v46 = *(a4 + 44);
  v10 = 1.0;
  v47 = v46 == 1;
  if (v46 > 1)
  {
    if (v46 == 2)
    {
      v10 = 0.4;
    }

    else if (v46 == 3)
    {
      v10 = 0.2;
    }

    goto LABEL_147;
  }

LABEL_116:
  if (v47)
  {
    v10 = 0.8;
  }

  else if (!v46)
  {
    re::internal::assertLog(4, v37, "assertion failure: '%s' (%s:line %i) Unexpected", "!Unreachable code", "writeAssetToRealityFile", 2028);
    _os_crash("assertion failure: (!Unreachable code) Unexpected");
    __break(1u);
    return;
  }

LABEL_147:
  if ((atomic_load_explicit(&qword_1EE195EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EA8))
  {
    re::Defaults::BOOLValue(buf, "encodeSmallTexturesAsHEIC", v80);
    if (buf[0])
    {
      v81 = buf[1];
    }

    else
    {
      v81 = 0;
    }

    _MergedGlobals_72[0] = v81;
    __cxa_guard_release(&qword_1EE195EA8);
  }

  v71 = (*(v20 + 356) - 3) < 2 && ComponentCount == 4;
  v72 = *(v20 + 176);
  v73 = v72;
  if (_MergedGlobals_72[0] == 1)
  {
    v74 = [*MEMORY[0x1E6982E00] identifier];
  }

  else
  {
    v74 = re::UTTypes::AVIF(v73);
  }

  re::encodeTextureSliceToImageData(buf, (a1 + 40), (v20 + 112), v72, v74, v71, v10, 0, 0, 0, v82);
  if ((buf[0] & 1) == 0)
  {
    if (buf[16])
    {
      v78 = v115;
    }

    else
    {
      v78 = &buf[17];
    }

    re::WrappedError::make(v112, @"RERealityFileWriterErrorDomain", 5, v78);
    v79 = *&v112[0];
    *&v112[0] = 0;
    *a9 = 0;
    *(a9 + 8) = v79;

    if (buf[0] & 1) == 0 && *&buf[8] && (buf[16])
    {
      (*(**&buf[8] + 40))();
    }

    goto LABEL_135;
  }

  if (v95)
  {
    v75 = *&v96[7];
  }

  else
  {
    v75 = v96;
  }

  re::RealityFileWriter::saveEntryToArchive(*&buf[8], v75, *v111, 1, 0, 0, v112);
  v76 = LOBYTE(v112[0]);
  if ((v112[0] & 1) == 0)
  {
    v77 = *(&v112[0] + 1);
    *a9 = 0;
    *(a9 + 8) = v77;
    if ((v112[0] & 1) == 0)
    {
    }
  }

  CFRelease(*&buf[8]);
  if ((buf[0] & 1) == 0)
  {
    isAllowedPassthroughFormat = *&buf[8];
    if (*&buf[8])
    {
      if (buf[16])
      {
        isAllowedPassthroughFormat = (*(**&buf[8] + 40))();
      }
    }
  }

  if (v76)
  {
LABEL_59:
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = 1;
    v115 = 0;
    v116 = 0;
    *&v112[0] = *&v92[0];
    *(&v112[1] + 1) = *(&v92[1] + 1);
    *(v112 + 8) = *(v92 + 8);
    memset(v92, 0, sizeof(v92));
    v113 = 0;
    re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a6, "writeAsSourceImage", v112);
    if (v113 != -1)
    {
      (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0 + v113))(&v89, v112);
    }

    v113 = -1;
    if (*&v92[0] && (BYTE8(v92[0]) & 1) != 0)
    {
      (*(**&v92[0] + 40))();
    }

    re::AssetLoader::writeCompiledAssetToRealityFile(v112, a2, a1, a3, a4, v84, a6, *v111, a8, a5);
    v45 = LOBYTE(v112[0]);
    if (v112[0])
    {
      re::DynamicOverflowArray<re::DynamicString,2ul>::add(buf, a3);
    }

    else
    {
      v48 = *(&v112[0] + 1);
      *a9 = 0;
      *(a9 + 8) = v48;
    }

    if (LOBYTE(v112[0]) == 1)
    {
      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v112 + 1);
      if (!v45)
      {
        goto LABEL_134;
      }
    }

    else
    {

      if (!v45)
      {
LABEL_134:
        re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(buf);
        goto LABEL_135;
      }
    }

    v49 = re::DynamicOverflowArray<re::DynamicString,2ul>::add(buf, &v94);
    memset(v112, 0, sizeof(v112));
    re::DynamicString::setCapacity(v112, 0);
    v113 = 0;
    if (v93 == 1)
    {
      v50 = v106;
      if (v106)
      {
        CStringPtr = CFStringGetCStringPtr(v106, 0x8000100u);
        v52 = strlen(CStringPtr);
        *&v92[0] = CStringPtr;
        *(&v92[0] + 1) = v52;
        v50 = re::DynamicString::operator=(v112, v92);
      }

      if (v102 == 1)
      {
        v113 = *(v20 + 344);
      }
    }

    else
    {
      v50 = re::DynamicString::operator=(v112, (v20 + 368));
    }

    memset(v92, 0, sizeof(v92));
    v53 = re::DynamicString::setCapacity(v92, 0);
    v91[0] = &unk_1F5D0B0E8;
    v91[1] = v92;
    if ((atomic_load_explicit(&qword_1EE195F18, memory_order_acquire) & 1) == 0)
    {
      v53 = __cxa_guard_acquire(&qword_1EE195F18);
      if (v53)
      {
        qword_1EE195F10 = re::internal::getOrCreateInfo("SidecarImageImportOptions", re::allocInfo_SidecarImageImportOptions, re::initInfo_SidecarImageImportOptions, &unk_1EE195F00, 0);
        __cxa_guard_release(&qword_1EE195F18);
      }
    }

    v54 = qword_1EE195F10;
    v89 = *(v54 + 32);
    {
      v60 = v58;
      v61 = v83;
      if (BYTE8(v98))
      {
        v61 = v99;
      }

      re::DynamicString::format(&v89, "%s%s", v59, v61, "_importOptions.json");
      if (BYTE8(v89))
      {
        v62 = v90;
      }

      else
      {
        v62 = &v89 + 9;
      }

      re::RealityFileWriter::saveEntryToArchive(v60, v62, *v111, 1, 0, 0, &v87);
      v63 = v87;
      if (v87)
      {
        re::DynamicOverflowArray<re::DynamicString,2ul>::add(buf, &v89);
      }

      else
      {
        v69 = v88;
        *a9 = 0;
        *(a9 + 8) = v69;
      }

      if ((v87 & 1) == 0)
      {
      }

      if (v89 && (BYTE8(v89) & 1) != 0)
      {
        (*(*v89 + 40))();
      }

      CFRelease(v60);
      if (*&v92[0] && (BYTE8(v92[0]) & 1) != 0)
      {
        (*(**&v92[0] + 40))();
      }

      if (*&v112[0] && (BYTE8(v112[0]) & 1) != 0)
      {
        (*(**&v112[0] + 40))();
      }

      if (v63)
      {
        re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(v112, buf);
        *a9 = 1;
        re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(a9 + 8, v112);
        re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(v112);
      }
    }

    else
    {
      v64 = re::AssetHandle::assetInfo(a2);
      if (v64[17])
      {
        v66 = v64[18];
      }

      else
      {
        v66 = v64 + 137;
      }

      re::DynamicString::format(&v89, "Failed to serialize source image import options for texture asset '%s'", v65, v66);
      if (BYTE8(v89))
      {
        v67 = v90;
      }

      else
      {
        v67 = &v89 + 9;
      }

      re::WrappedError::make(&v87, @"RERealityFileWriterErrorDomain", 5, v67);
      v68 = v87;
      v87 = 0;
      *a9 = 0;
      *(a9 + 8) = v68;

      if (v89 && (BYTE8(v89) & 1) != 0)
      {
        (*(*v89 + 40))();
      }

      if (*&v92[0] && (BYTE8(v92[0]) & 1) != 0)
      {
        (*(**&v92[0] + 40))();
      }

      if (*&v112[0] && (BYTE8(v112[0]) & 1) != 0)
      {
        (*(**&v112[0] + 40))();
      }
    }

    goto LABEL_134;
  }

LABEL_135:
  if (v94 && (v95 & 1) != 0)
  {
    (*(*v94 + 40))();
  }

  if (v98 && (BYTE8(v98) & 1) != 0)
  {
    (*(*v98 + 40))();
  }

  if (v107)
  {
    if (v108)
    {
      (*(*v107 + 40))();
      v108 = 0;
      v109 = 0;
    }

    v107 = 0;
  }
}

uint64_t re::AssetHandle::loadedAsset<re::TextureAsset>(re::TextureAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::TextureAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::TextureAsset::assetType(void)::type, 1);
}

uint64_t *re::TextureAssetLoader::getOrCreateImportOptions@<X0>(re::TextureAssetLoader *this@<X0>, uint64_t x8_0@<X8>)
{
  v5 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(this);
  if (!v5)
  {
    v5 = re::AssetHandle::loadedAsset<re::TextureAsset>(this);
  }

  v6 = *(*(this + 1) + 264);

  return re::TextureAssetLoader::getOrCreateImportOptions(v5, v6, x8_0);
}

BOOL re::anonymous namespace::isAllowedPassthroughFormat(_BOOL8 cf1, const __CFString *a2)
{
  if (cf1)
  {
    v2 = cf1;
    if ((atomic_load_explicit(&qword_1EE195F08, memory_order_acquire) & 1) == 0)
    {
      v6 = __cxa_guard_acquire(&qword_1EE195F08);
      if (v6)
      {
        qword_1EE195F38 = re::UTTypes::JPEG(v6);
        qword_1EE195F40 = re::UTTypes::HEIC(qword_1EE195F38);
        qword_1EE195F48 = re::UTTypes::AVIF(qword_1EE195F40);
        __cxa_guard_release(&qword_1EE195F08);
      }
    }

    v3 = 0;
    do
    {
      v4 = CFEqual(v2, *&_MergedGlobals_72[v3 + 152]);
      v5 = v4 == 0;
      cf1 = v4 != 0;
      v5 = !v5 || v3 == 16;
      v3 += 8;
    }

    while (!v5);
  }

  return cf1;
}

void re::TextureAsset::copyColorSpaceToCFStringPtr(re::TextureAsset *this, uint64_t a2)
{
  *this = 0;
  v2 = *(a2 + 376);
  v3 = v2 >> 1;
  if ((v2 & 1) == 0)
  {
    v3 = v2 >> 1;
  }

  if (v3)
  {
    if (v2)
    {
      v5 = *(a2 + 384);
    }

    else
    {
      v5 = (a2 + 377);
    }

    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
    *this = v6;

    CFRelease(v6);
  }
}

void re::TextureAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, re::SeekableInputStream *a3, uint64_t a4, uint64_t a5)
{
  v123 = *MEMORY[0x1E69E9840];
  if (*(a2 + 72))
  {
    v102 = 0;
    LODWORD(v103) = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a2 + 112, &v102);
    if (v103 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v103])(v91, &v102);
    }

    v102 = 0;
    LODWORD(v103) = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a2 + 232, &v102);
    if (v103 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v103])(v91, &v102);
    }

    LOWORD(v102) = 0;
    v103 = 0;
    v104 = 0;
    v108 = 0u;
    v109 = 0u;
    v110 = 0;
    v111 = 0;
    *&v112[0] = 0;
    *(a2 + 128) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    v6 = *(a2 + 168);
    v105 = 0;
    v107 = v6;
    v7 = (a2 + 176);
    *(a2 + 168) = 0;
    if ((a2 + 176) != &v108)
    {
      v8 = *v7;
      *v7 = 0;
    }

    re::DynamicArray<short>::operator=(a2 + 184, &v108 + 1);
    v9 = *(&v108 + 1);
    *(a2 + 224) = *&v112[0];
    if (v9)
    {
      if (v111)
      {
        (*(*v9 + 40))(v9);
      }

      v111 = 0;
      v109 = 0uLL;
      *(&v108 + 1) = 0;
      ++v110;
    }

    if (v107)
    {
    }

    *(a2 + 344) = 0x200000000;
    *(a2 + 352) = 84148994;
    *(a2 + 356) = 6;
    v102 = "";
    v103 = 0;
    re::DynamicString::operator=((a2 + 368), &v102);
    *(a2 + 256) = 1;
    *(a2 + 248) = 0x100000001;
    *(a2 + 82) = 0;
    if (*(a2 + 86) == 1)
    {
      *(a2 + 86) = 0;
    }

    *(a2 + 80) = 0;
    return;
  }

  v11 = a4;
  if ((re::TextureData::isValid((a2 + 112)) & 1) != 0 || !a3)
  {
    return;
  }

  re::TextureAsset::copyColorSpaceToCFStringPtr(&v101, a2);
  v14 = v101;
  v15 = v101;
  if (!v101)
  {
    if ((*(a2 + 356) - 3) > 1)
    {
      v15 = 0;
    }

    else
    {
      v16 = re::translateLinearPixelFormatToSRGB(*(a2 + 344));
      v15 = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v16, 0);
      v101 = v15;
    }
  }

  v100 = *(a2 + 352);
  if (a5)
  {
    v17 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a5, "SkipBackcompGamutConversion");
    v18 = *(a2 + 356);
    if (v17)
    {
      v19 = (v18 - 3) >= 2;
    }

    else
    {
      v19 = 1;
    }

    LODWORD(a5) = !v19 && v14 == 0;
  }

  else
  {
    v18 = *(a2 + 356);
  }

  v21 = -1;
  v22 = *(a2 + 264);
  v23 = *(a2 + 272);
  if (v22 >= 0xFFFF)
  {
    LOWORD(v22) = -1;
  }

  LOWORD(v95) = v22;
  if (v23 < 0xFFFF)
  {
    v21 = v23;
  }

  HIWORD(v95) = v21;
  re::FixedArray<short>::operator=(&v96, (a2 + 280));
  v82[0] = v91[0];
  v82[1] = v91[1];
  v83[0] = v92[0];
  *(v83 + 12) = *(v92 + 12);
  v84 = v93;
  v85 = v94;
  v86 = v95;
  re::FixedArray<short>::FixedArray(&v87, &v96);
  v90 = v99;
  re::TextureAssetLoader::parseKTXData(&v102, a1, a3, v82, &v100, a5);
  if (v87)
  {
    if (v88)
    {
      (*(*v87 + 40))();
      v88 = 0;
      v89 = 0;
    }

    v87 = 0;
  }

  v24 = *(a2 + 252);
  if (v24 <= 1)
  {
    v24 = 1;
  }

  v25 = v107;
  if (v107 <= 1)
  {
    v25 = 1;
  }

  if (v24 != v25)
  {
    goto LABEL_58;
  }

  v26 = *(a2 + 248);
  if (v26 <= 1)
  {
    v26 = 1;
  }

  v27 = v106;
  if (v106 <= 1)
  {
    v27 = 1;
  }

  if (v26 == v27)
  {
    v28 = *(a2 + 256);
    if (v28 <= 1)
    {
      v28 = 1;
    }

    v29 = HIDWORD(v107);
    if (HIDWORD(v107) <= 1)
    {
      v29 = 1;
    }

    v30 = v28 == v29;
  }

  else
  {
LABEL_58:
    v30 = 0;
  }

  *(a2 + 84) = v30;
  if (*(a2 + 86))
  {
    if ((v109 & 1) == 0)
    {
      *(a2 + 86) = 0;
      goto LABEL_65;
    }
  }

  else
  {
    if ((v109 & 1) == 0)
    {
      goto LABEL_65;
    }

    *(a2 + 86) = 1;
  }

  *(a2 + 88) = WORD1(v109);
LABEL_65:
  v31 = &v109 + 1;
  if (v110)
  {
    if (v110 != 1)
    {
      v71 = std::__throw_bad_variant_access[abi:nn200100]();
      return;
    }

    if (!*(*(&v109 + 1) + 48))
    {
      goto LABEL_71;
    }

    v31 = (*(&v109 + 1) + 24);
  }

  if (*v31)
  {
    *(a2 + 128) = v111;
    *(a2 + 136) = v112[0];
    *(a2 + 148) = *(v112 + 12);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a2 + 168), v113);
    re::ObjCObject::operator=((a2 + 176), &v114);
    re::DynamicArray<short>::operator=(a2 + 184, v115);
    *(a2 + 224) = v118;
    v81 = *(a2 + 360);
    v32 = *(a2 + 176);
    v33 = v32;
    v34 = *(a2 + 200);
    v78 = *(a2 + 216);
    v79 = v34;
    re::TextureAsset::setTexture(a2, (a1 + 40), &v109 + 8, (a2 + 356), &v81, v32, &v78);
  }

LABEL_71:
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a2 + 232, a2 + 112);
  if ((*(a2 + 84) & 1) == 0)
  {
    LODWORD(v36) = v107;
    if (v107 <= v106)
    {
      LODWORD(v36) = v106;
    }

    if (v36 <= HIDWORD(v107))
    {
      v36 = HIDWORD(v107);
    }

    else
    {
      v36 = v36;
    }

    if (*(a2 + 248) <= *(a2 + 252))
    {
      v37 = *(a2 + 252);
    }

    else
    {
      v37 = *(a2 + 248);
    }

    if (v37 <= *(a2 + 256))
    {
      v37 = *(a2 + 256);
    }

    v38 = v37;
    v39 = 32 - __clz(v36);
    v40 = v39 - 1;
    v41 = ~(-1 << (v39 - 1));
    if (!v36)
    {
      v41 = 0;
      v40 = 0;
    }

    if ((v41 & v36) != 0)
    {
      v42 = v39;
    }

    else
    {
      v42 = v40;
    }

    v43 = 64 - __clz(v37);
    v44 = v43 - 1;
    v45 = v37 == 0;
    if (v37)
    {
      v46 = ~(-1 << (v43 - 1));
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v44 = 0;
    }

    if ((v46 & v38) != 0)
    {
      v47 = v43;
    }

    else
    {
      v47 = v44;
    }

    v48 = v47 - v42;
    if (v48 < 1)
    {
      *(a2 + 84) = 1;
    }

    else if (DWORD2(v108))
    {
      v49 = (DWORD2(v108) + 7) & 0x1FFFFFFF8;
      v35.i16[0] = *(a2 + 80);
      v50 = vdupq_n_s64(DWORD2(v108) - 1);
      v51 = xmmword_1E305F210;
      v52 = xmmword_1E3049660;
      v53 = xmmword_1E3049640;
      v54 = xmmword_1E3049620;
      v55 = vdupq_n_s64(v48);
      v56 = vdupq_n_s64(1uLL);
      v57 = vdupq_n_s64(8uLL);
      do
      {
        v58 = v51;
        v59 = v52;
        v60 = v53;
        v61 = v54;
        v62 = v35;
        v35 = vorrq_s8(v35, vuzp1q_s16(vuzp1q_s32(vshlq_u64(v56, vaddq_s64(v54, v55)), vshlq_u64(v56, vaddq_s64(v53, v55))), vuzp1q_s32(vshlq_u64(v56, vaddq_s64(v52, v55)), vshlq_u64(v56, vaddq_s64(v51, v55)))));
        v52 = vaddq_s64(v52, v57);
        v53 = vaddq_s64(v53, v57);
        v54 = vaddq_s64(v54, v57);
        v51 = vaddq_s64(v51, v57);
        v49 -= 8;
      }

      while (v49);
      v63 = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v61, v50), vcgtq_u64(v60, v50)), vuzp1q_s32(vcgtq_u64(v59, v50), vcgtq_u64(v58, v50))), v62, v35);
      *v63.i8 = vorr_s8(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
      *(a2 + 80) = v63.i16[0] | v63.i16[2] | ((v63.i32[0] | v63.i32[1]) >> 16);
    }
  }

  isValid = re::TextureData::isValid((a2 + 112));
  if (isValid)
  {
    LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(a2);
    *(a2 + 264) = LoadedMipmapRange;
    *(a2 + 272) = v66;
    v67 = *(a2 + 280);
    if (!v67)
    {
    }

    v68 = *(a2 + 336);
    v69 = *(a2 + 320);
    v79 = 0;
    v80 = 0;
    v78 = 0;
    re::FixedArray<short>::init<>(&v78, v67, v69);
    re::FixedArray<short>::copy(&v78, v68, v69);
    re::FixedArray<short>::operator=((a2 + 280), &v78);
    if (v78 && v79)
    {
      (*(*v78 + 40))();
    }
  }

  else
  {
    v70 = *re::assetTypesLogObjects(isValid);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v78) = 0;
      _os_log_error_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_ERROR, "Failed to load compiled texture blob", &v78, 2u);
    }
  }

  if (v120)
  {
    if (v121)
    {
      (*(*v120 + 40))();
      v121 = 0;
      v122 = 0;
    }

    v120 = 0;
  }

  if (v115[0])
  {
    if (v117)
    {
      (*(*v115[0] + 40))();
    }

    v117 = 0;
    memset(v115, 0, sizeof(v115));
    ++v116;
  }

  if (v113)
  {

    v113 = 0;
  }

  if (v110 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v110])(&v78, &v109 + 8);
  }

  if (v96)
  {
    if (v97)
    {
      (*(*v96 + 40))();
      v97 = 0;
      v98 = 0;
    }

    v96 = 0;
  }
}

void re::anonymous namespace::createTextureFromImageOptions(uint64_t a1, int a2, char a3, void *a4, int a5, char a6, unsigned int *a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = 2;
  *(a1 + 24) = 0;
  v12 = (a1 + 24);
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 29) = 0;
  *(a1 + 52) = a3;
  *(a1 + 56) = a5;
  v13 = a4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = v13;
  *(a1 + 88) = -65536;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if ((a6 & 1) == 0)
  {
    *v12 = 1;
  }

  if ((a5 - 3) <= 1 && (v14 = *a7, re::translateLinearPixelFormatToSRGB(*a7) == v14) && (re::isHDR(v14) & 1) == 0)
  {
    *(a1 + 48) = 2;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v20 = 1;
  if (v13 && re::ColorHelpers::getColorGamutFromCGColorSpaceName(v13, &v20) && v20 == 1)
  {
    v16 = *a7;
    isHDR = re::isHDR(*a7);
    if (isHDR)
    {
      if (re::getComponentCount(v16) >= 3)
      {
        v18 = MEMORY[0x1E695F0F0];
LABEL_23:
        re::TextureFromImageOptions::setColorSpace(a1, *v18);
        goto LABEL_24;
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      MTLPixelFormatGetInfoForDevice();
      v19 = v15 | ((WORD4(v21) & 0x800) >> 11);
      if (re::getComponentCount(*a7) >= 3)
      {
        if (v19)
        {
          v18 = MEMORY[0x1E695F0B8];
        }

        else
        {
          v18 = MEMORY[0x1E695F198];
        }

        goto LABEL_23;
      }

      if (v19)
      {
        v18 = MEMORY[0x1E695F128];
        goto LABEL_23;
      }
    }

    v18 = MEMORY[0x1E695F0F8];
    if (!isHDR)
    {
      v18 = MEMORY[0x1E695F1A0];
    }

    goto LABEL_23;
  }

LABEL_24:
  if (a2 >= 2)
  {
    *(a1 + 8) = 1;
  }
}

uint64_t *re::FixedArray<short>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<short>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<short>::copy(a1, a2);
    }
  }

  return a1;
}

void re::TextureAssetLoader::parseKTXData(uint64_t a1, uint64_t a2, re::SeekableInputStream *a3, uint64_t a4, unsigned int *a5, int a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 40);
  v12 = *(a2 + 48);
  v30 = v12;
  *v31 = *(a2 + 56);
  v31[2] = *(a2 + 58);
  v32 = *(a2 + 59);
  if (v32 == 1)
  {
    v33 = *(a2 + 60);
  }

  *v34 = *(a2 + 61);
  *&v34[7] = *(a2 + 68);
  if (a6)
  {
    v13 = *(a2 + 57);
    v31[0] = 0;
    *&v31[1] = v13;
  }

  v14 = *a5;
  v15 = *(a4 + 16);
  v20[0] = *a4;
  v20[1] = v15;
  v21[0] = *(a4 + 32);
  *(v21 + 12) = *(a4 + 44);
  v22 = *(a4 + 64);
  v23 = *(a4 + 72);
  v24 = *(a4 + 88);
  re::FixedArray<short>::FixedArray(&v25, (a4 + 96));
  v28 = *(a4 + 120);
  if (v25)
  {
    if (v26)
    {
      (*(*v25 + 40))();
      v26 = 0;
      v27 = 0;
    }

    v25 = 0;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) &= 0xFC00u;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = -65536;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = 0;
  *(a1 + 304) = 0;
  *(a1 + 64) = 0;
  v16 = v36[1];
  *a1 = v36[0];
  *(a1 + 16) = v16;
  v17 = v36[3];
  *(a1 + 32) = v36[2];
  *(a1 + 48) = v17;
  if (v37 == 1)
  {
    *(a1 + 64) = v37;
    *(a1 + 66) = v38;
  }

  v18 = *(a4 + 16);
  *(a1 + 192) = *a4;
  *(a1 + 208) = v18;
  *(a1 + 224) = *(a4 + 32);
  *(a1 + 236) = *(a4 + 44);
  re::ObjCObject::operator=((a1 + 256), (a4 + 64));
  *(a1 + 264) = *(a4 + 72);
  *(a1 + 280) = *(a4 + 88);
  re::FixedArray<short>::operator=((a1 + 288), (a4 + 96));
  *(a1 + 312) = *(a4 + 120);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1 + 72, &v39);
  *(a1 + 88) = v41;
  *(a1 + 96) = v42[0];
  *(a1 + 108) = *(v42 + 12);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 128), v43);
  re::ObjCObject::operator=((a1 + 136), &v44);
  re::DynamicArray<short>::operator=(a1 + 144, v45);
  v19 = v45[0];
  *(a1 + 184) = v48;
  if (v19)
  {
    if (v47)
    {
      (*(*v19 + 40))(v19);
    }

    v47 = 0;
    memset(v45, 0, sizeof(v45));
    ++v46;
  }

  if (v43)
  {

    v43 = 0;
  }

  if (v40 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v40])(&v35, &v39);
  }
}

void re::TextureAssetLoader::createRuntimeData(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 8);
  if (!v9)
  {
    if ((*(*a1 + 24))(a1, a2, a3, a5))
    {
      *a6 = 1;
      *(a6 + 8) = 0;
    }

    else
    {
      re::WrappedError::make(buf, @"REAssetLoadingErrorDomain", 6, "Failed to create runtime data for texture asset.");
      v38 = *buf;
      *buf = 0;
      *a6 = 0;
      *(a6 + 8) = v38;
    }

    return;
  }

  if (v9 <= 2)
  {
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v11 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Unexpected: TextureAsset has more than two auxiliary stream.", buf, 2u);
    }

    v9 = *(a4 + 8);
    v60 = 0;
    v61 = 0;
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  v12 = *a4;
  v13 = *a4 + 8 * v9;
  do
  {
    v14 = *v12;
    if (*v12)
    {
      v15 = (v14 + 8);
    }

    v16 = (*(*v14 + 32))(v14);
    if (*(v16 + 8))
    {
      v18 = *(v16 + 16);
    }

    else
    {
      v18 = (v16 + 9);
    }

    v19 = re::path::ext(v18, v17);
    if (v19)
    {
      if (!strncmp(v19, ".sourceimage", 0xCuLL))
      {
        v27 = &v61;
        goto LABEL_29;
      }

      v20 = *((*(*v14 + 32))(v14) + 8);
      if (v20)
      {
        v21 = v20 >> 1;
      }

      else
      {
        v21 = v20 >> 1;
      }

      if (v21 >= 0x13)
      {
        v22 = (*(*v14 + 32))(v14);
        v23 = *(v22 + 8);
        v24 = *(v22 + 16);
        if ((v23 & 1) == 0)
        {
          v24 = v22 + 9;
        }

        v25 = v23 >> 1;
        v26 = v23 >> 1;
        if (*(v22 + 8))
        {
          v26 = v25;
        }

        if (!strncmp((v24 + v26 - 19), "_importOptions.json", 0x13uLL))
        {
          v27 = &v60;
LABEL_29:
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v27, v14);
        }
      }
    }

    ++v12;
  }

  while (v12 != v13);
  v29 = v61;
  if (!v61)
  {
LABEL_35:
    v37 = "Unexpected: TextureAsset has no source image auxiliary stream.";
LABEL_38:
    re::WrappedError::make(buf, @"REAssetLoadingErrorDomain", 6, v37);
    v39 = *buf;
    *buf = 0;
    *a6 = 0;
    *(a6 + 8) = v39;
    v40 = 0;
    goto LABEL_52;
  }

  if (!v60)
  {
    v37 = "Unexpected: TextureAsset has no source image import options auxiliary stream.";
    goto LABEL_38;
  }

  memset(buf, 0, sizeof(buf));
  *v52 = 1;
  *&v52[24] = 0;
  v52[28] = 0;
  *&v52[32] = 0;
  v52[36] = 0;
  memset(&v52[4], 0, 17);
  *&v52[40] = 6;
  v54 = 0uLL;
  v53 = 0;
  v55 = -65536;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v63 = re::globalAllocators(v28)[2];
  v30 = (*(*v63 + 32))(v63, 40, 0);
  *v30 = &unk_1F5CC3E68;
  v30[1] = a1;
  v30[2] = a2;
  v30[3] = &v60;
  v30[4] = buf;
  v64 = v30;
  (*(*v29 + 48))(&v49, v29, v62);
  v31 = re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v62);
  if (v49)
  {
    v32 = v46;
    v33 = *&v52[28];
    v35 = *v52;
    v34 = *&v52[16];
    v46[2] = *buf;
    v32[3] = v35;
    v32[4] = v34;
    *(v32 + 76) = v33;
    re::ObjCObject::operator=(v32 + 12, &v53);
    *(v32 + 104) = v54;
    *(v32 + 30) = v55;
    re::FixedArray<short>::operator=(v32 + 16, &v56);
    *(v32 + 152) = v59;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v32 + 3, v61);
    *(v32 + 20) = *(a2 + 224);
    v36 = v32 + 8;
    *a6 = 1;
    *(a6 + 8) = v32;
  }

  else
  {
    v41 = re::WrappedError::localizedDescription(&v50);
    re::DynamicString::format(&v46, "Failed to create runtime data for TextureAsset due to error: %s", v42, v41);
    if (v47)
    {
      v43 = *&v48[7];
    }

    else
    {
      v43 = v48;
    }

    re::WrappedError::make(&v45, @"REAssetLoadingErrorDomain", 6, v43);
    v44 = v45;
    v45 = 0;
    *a6 = 0;
    *(a6 + 8) = v44;

    if (v46 && (v47 & 1) != 0)
    {
      (*(*v46 + 40))();
    }
  }

  if ((v49 & 1) == 0)
  {
  }

  if (v56)
  {
    if (v57)
    {
      (*(*v56 + 40))();
      v57 = 0;
      v58 = 0;
    }

    v56 = 0;
  }

  v40 = v53;
LABEL_52:

  if (v60)
  {
  }

  if (v61)
  {
  }
}

uint64_t re::TextureAssetLoader::assetByteSize(re::TextureAssetLoader *this, void *a2)
{
  v4 = (*(*this + 56))(this);
  v5 = *(a2 + 30);
  if (v5 == 1)
  {
    v12 = *(a2 + 14);
    v13 = *(v12 + 48);
    if (v13)
    {
      v14 = *(v12 + 64);
      v15 = 40 * v13;
      do
      {
        re::DynamicArray<BOOL>::DynamicArray(&v22, v14);
        v16 = v23;
        if (v22 && v24)
        {
          (*(*v22 + 40))();
        }

        v4 += v16;
        v14 += 5;
        v15 -= 40;
      }

      while (v15);
    }

    return v4;
  }

  if (!v5)
  {
    v6 = [*(a2 + 14) mipmapLevelCount];
    v7 = *(a2 + 14);
    v8 = [v7 arrayLength];
    if ([v7 textureType] - 5 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 6 * v8;
    }

    if (v6)
    {
      v10 = 0;
      v21 = v6;
      do
      {
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = *(this + 2);
        [*(a2 + 14) pixelFormat];
        [*(a2 + 14) width];
        [*(a2 + 14) height];
        [*(a2 + 14) depth];
        [*(a2 + 14) sampleCount];
        re::mtl::getTextureLevelInfo((v11 + 208), &v22);
        v4 += v28 * v9;
        ++v10;
      }

      while (v21 != v10);
    }

    return v4;
  }

  v18 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureAssetLoader::registerAsset(v18, v19, v20);
}

uint64_t re::TextureAssetLoader::registerAsset(re::TextureAssetLoader *this, void **a2, const re::ExistingAssetInformation *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  if (v6 && *(v6 + 208) && (!a2[2] || !a2[1]) && re::TextureData::isValid((a2 + 14)) && !*(a2 + 30))
  {
    re::TextureManager::registerTexture(*(*(this + 2) + 56), a2 + 14, &v33);
    re::TextureHandle::operator=((a2 + 1), &v33);
    re::TextureHandle::invalidate(&v33);
  }

  if (!*(this + 9) || !a2[9])
  {
    v16 = *(this + 1);
    if (!v16)
    {
      goto LABEL_40;
    }

    if (*(a2 + 82) == 1)
    {
      if (*(a2 + 84))
      {
        goto LABEL_40;
      }

      if (!*(a2 + 60))
      {
        v30 = a2[29];
        re::makeLoadedTextureView(&v30, a2 + 40, &v31);
        if (v30)
        {

          v30 = 0;
        }

        v33 = v31;
        *v34 = 0;
        v29 = *(a2 + 90);
        v17 = a2[22];
        v18 = v17;
        v19 = a2[40];
        *dst = a2[42];
        *&dst[8] = v19;
        re::TextureAsset::setTexture(a2, (this + 40), &v33, a2 + 89, &v29, v17, dst);
        if (*v34 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*v34])(dst, &v33);
        }

        goto LABEL_30;
      }

LABEL_44:
      v28 = std::__throw_bad_variant_access[abi:nn200100]();
      _Unwind_Resume(v28);
    }

    (*(*v16 + 8))(&v33);
    (*(**(this + 1) + 24))(dst);
    re::AssetHandle::loadNow(*&dst[8], 0);
    if (*&dst[8])
    {
      v23 = atomic_load((*&dst[8] + 896));
      if (v23 == 2)
      {
        re::AssetHandle::mutateAssetCommon(dst);
        ++*(*&dst[8] + 276);
        v24 = re::AssetHandle::loadedAsset<re::TextureAsset>(dst);
        if (v24)
        {
          if (*(a2 + 30))
          {
            goto LABEL_44;
          }

          re::TextureAsset::updateMips(v24, this + 5, a2[14]);
          v25 = *&dst[8];
          *(*&dst[8] + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v25);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*&dst[8]);
        }
      }
    }

    re::AssetHandle::~AssetHandle(dst);
    re::AssetHandle::~AssetHandle(&v33);
    goto LABEL_40;
  }

  v7 = re::DirectTexturePayload::connectionId(a2 + 9);
  v8 = [a2[9] identifier];
  v33 = v7;
  uuid_copy(v34, v8);
  v9 = *(this + 9);
  *dst = v33;
  uuid_copy(&dst[8], v34);
  if (*(a3 + 10) == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a3 + 10);
  }

  re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(v9, dst, v10);
  v11 = *(this + 9);
  v12 = v33;
  uuid_copy(dst, v34);
  Resource = re::DirectResourceAssetTracker::findResource(v11, v12, dst);
  if (!Resource)
  {
    goto LABEL_40;
  }

  v14 = Resource;
  v15 = DRResourceAsTexture();
  if (v15)
  {
    [a2[9] setDirectTexture:v15];
    v31 = DRTextureReadTexture();
    if (a2[2] && a2[1])
    {
      re::TextureHandle::setMetalTexture((a2 + 1), &v31);
    }

    else
    {
      v20 = *(this + 2);
      if (v20)
      {
        re::TextureManager::registerTexture(*(v20 + 56), &v31, dst);
        re::TextureHandle::operator=((a2 + 1), dst);
        re::TextureHandle::invalidate(dst);
      }
    }

    re::TextureHandle::setMetalTexture((a2 + 12), &v31);
LABEL_30:
    if (v31)
    {
    }

    goto LABEL_40;
  }

  v21 = *re::assetsLogObjects(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = re::DirectTexturePayload::connectionId(a2 + 9);
    *dst = 134218240;
    *&dst[4] = v22;
    *&dst[12] = 2048;
    *&dst[14] = v14;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "TexturePayload resourceDidUpdate received a non-texture DirectResource for connectionId: %llu resource: %p", dst, 0x16u);
  }

LABEL_40:
  v26 = *(this + 3);
  if (v26 && a2[7])
  {
    (**v26)(v26, a2);
  }

  return 0;
}

void re::TextureAssetLoader::unregisterAsset(uint64_t a1, re::DirectTexturePayload *this, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 && *(this + 7))
  {
    (*(*v6 + 8))(v6, this);
  }

  if (*(a1 + 72) && *(this + 9))
  {
    v7 = re::DirectTexturePayload::connectionId(this + 9);
    v8 = [*(this + 9) identifier];
    v13 = v7;
    uuid_copy(v14, v8);
    v9 = *(a1 + 72);
    v11 = v7;
    uuid_copy(v12, v14);
    if (*(a3 + 80) == -1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a3 + 80);
    }

    re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(v9, &v11, v10);
  }

  if (*(this + 2) && *(this + 1))
  {
    re::TextureHandle::invalidate(this + 1);
  }

  if (*(this + 13))
  {
    if (*(this + 12))
    {
      re::TextureHandle::invalidate(this + 12);
    }
  }
}

void re::TextureAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, re::SeekableInputStream *a3, uint64_t a4)
{
  if (a4 && (v8 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a4, "TextureDownsampleFactor")) != 0 && !*(v8 + 32))
  {
    if (*(v8 + 8))
    {
      v10 = *(v8 + 16);
    }

    else
    {
      v10 = (v8 + 9);
    }

    v9 = atoi(v10);
  }

  else
  {
    v9 = 1;
  }

  re::TextureAssetLoader::createRuntimeData(a1, a2, a3, v9, a4);
}

re *re::TextureAssetLoader::createRuntimeDataWithMemoryAttribution(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(4, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) createRuntimeDataWithMemoryAttribution: task token cannot be null", "memoryAttributionTarget != ((task_id_token_t) 0)", "createRuntimeDataWithMemoryAttribution", 2633);
    _os_crash("assertion failure: (memoryAttributionTarget != ((task_id_token_t) 0)) createRuntimeDataWithMemoryAttribution: task token cannot be null");
    __break(1u);
LABEL_18:
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) createRuntimeDataWithMemoryAttribution called while !supportsMemoryAttribution", "supportsMemoryAttribution()", "createRuntimeDataWithMemoryAttribution", 2634);
    _os_crash("assertion failure: (supportsMemoryAttribution()) createRuntimeDataWithMemoryAttribution called while !supportsMemoryAttribution");
    __break(1u);
  }

  if (((*(*a1 + 320))(a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = (*(*a1 + 24))(a1, a2, a4, a5);
  v12 = v11;
  if (!v11)
  {
    return v12;
  }

  v13 = *(a2 + 120);
  v14 = *re::assetTypesLogObjects(v11);
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Texture asset memory attribution requires Metal storage.", buf, 2u);
    }

    return v12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v22 = a3;
    _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "Attributing texture asset to %llu", buf, 0xCu);
  }

  if (!*(a2 + 120))
  {
    v20 = *(a2 + 112);
    v15 = re::AssetHelper::attributeResourceMemory(&v20, a3);
    if (v15)
    {
      *(a2 + 128) |= 0x100u;
    }

    else
    {
      v16 = *re::assetTypesLogObjects(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = [objc_msgSend(v20 label)];
        *buf = 134218242;
        v22 = a3;
        v23 = 2080;
        v24 = v18;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Texture asset memory attribution failed for task_id %llu and buffer %s.", buf, 0x16u);
      }
    }

    if (v20)
    {
    }

    return v12;
  }

  v19 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureAssetLoader::supportsMemoryAttribution(v19);
}

re *re::internal::destroyPersistent<re::TextureAsset>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::TextureAssetLoader::introspectionType(re::TextureAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::TextureAsset>(BOOL)::info = re::internal::getOrCreateInfo("TextureAsset", re::allocInfo_TextureAsset, re::initInfo_TextureAsset, &re::internal::introspectionInfoStorage<re::TextureAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[235];
}

void re::TextureAssetLoader::cloneAsset(id *this, unsigned int *a2, re::AssetSerializationScheme *a3)
{
  v5 = a2[30];
  if (v5)
  {
    if (v5 != 1)
    {
      v15 = std::__throw_bad_variant_access[abi:nn200100]();
      return;
    }

    v6 = *(a2 + 14);
    if (*(v6 + 48) && *(v6 + 24))
    {
      v23 = 0;
      v24 = 0;
      v7 = *(a2 + 14);
      v8 = re::globalAllocators(this);
      v9 = (*(*v8[2] + 32))(v8[2], 104, 8);
      v21 = re::CPUTexture::CPUTexture(v9, (v7 + 24), (v7 + 32));
      if (v21)
      {
        v10 = (v9 + 8);
      }

      v22 = 1;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v23, &v21);
      if (v22 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v22])(&v20, &v21);
      }

      v22 = -1;
      if (!v9)
      {
        goto LABEL_15;
      }

      v11 = (v9 + 8);
      goto LABEL_14;
    }
  }

  else if (*(a2 + 14))
  {
    v23 = 0;
    v24 = 0;
    v13 = *(a2 + 14);
    v20 = v13;
    v14 = v19;
    if (!v19)
    {
      if (v13)
      {
      }

      goto LABEL_16;
    }

    v21 = v19;
    v22 = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v23, &v21);
    if (v22 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v22])(&v25, &v21);
    }

    if (!v13)
    {
LABEL_15:
      TextureAsset = re::TextureAsset::makeTextureAsset(&v23, (a2 + 32), a2[89], a2[90]);
      *(TextureAsset + 82) = *(a2 + 82);
      *(TextureAsset + 83) = *(a2 + 83);
      *(TextureAsset + 80) = *(a2 + 40);
      re::DynamicString::operator=((TextureAsset + 24), (a2 + 6));
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(TextureAsset + 232, TextureAsset + 112);
LABEL_16:
      if (v24 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v24])(&v21, &v23);
      }

      return;
    }

    v11 = v13;
LABEL_14:

    goto LABEL_15;
  }

  re::AssetLoader::cloneAsset(this, a2, a3);
}

void re::anonymous namespace::makeCopyOfTextureCommitAndWaitForGPU(id *a1, id *a2, id *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  re::createDescriptorFromTexture(a2, a3, &v21);
  if (a4)
  {
    [v21 setStorageMode_];
    re::mtl::Device::makeSharedTexture(&v20, v21, a2);
  }

  else
  {
    re::mtl::Device::makeTexture(&v20, v21, a2);
  }

  if (v20)
  {
    [v20 setLabel_];
    re::ImportGraphicsContext::getOrCreateCommandQueue(a2, &re::internal::copyTextureQueueName(void)::queueName, 1, &v19);
    re::mtl::CommandQueue::makeCommandBuffer(&v18, &v19);
    re::mtl::CommandBuffer::makeBlitCommandEncoder(&v17, &v18);
    re::mtl::BlitCommandEncoder::textureCopy(&v17, *a3, v20);
    objc_msgSend_endEncoding(v17);
    [v18 commit];
    [v18 waitUntilCompleted];
    re::internal::getCommandBufferError(&v13, &v18);
    if (v13)
    {
      v9 = [*a3 label];
      if (v9)
      {
        [v20 setLabel_];
      }

      *a1 = v20;
      v20 = 0;
    }

    else
    {
      v10 = *re::assetsLogObjects(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_msgSend(*a3 label)];
        if (v15)
        {
          v12 = *&v16[7];
        }

        else
        {
          v12 = v16;
        }

        *buf = 136315394;
        v23 = v11;
        v24 = 2080;
        v25 = v12;
      }

      *a1 = 0;
    }

    if (v13 & 1) == 0 && v14 && (v15)
    {
      (*(*v14 + 40))();
    }

    if (v20)
    {
    }
  }

  else
  {
    *a1 = 0;
  }

  if (v21)
  {
  }
}

uint64_t re::TextureAssetLoader::allocateSampleAsset(id *this)
{
  v23[1] = *MEMORY[0x1E69E9840];
  re::mtl::makeDefaultDevice(v23);
  v22 = 4;
  v20 = 0;
  v21 = 80;
  v9 = 2;
  TextureCompressionType = re::mtl::getTextureCompressionType(v23, &v20, &v21, &v22, &v9);
  v3 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  if (([v3 respondsToSelector_] & 1) != 0 || objc_msgSend(v3, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v3 setCompressionType_];
  }

  [v3 setPixelFormat_];
  [v3 setWidth_];
  [v3 setHeight_];
  [v3 setUsage_];
  [v3 setStorageMode_];
  Texture = re::mtl::Device::makeTexture(&v19, v3, this + 5);
  MEMORY[0x1EEE9AC00](Texture);
  qmemcpy(v8, " !#$%&'()*+,-./0123456789:;<=>?", sizeof(v8));
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = vdupq_n_s64(4uLL);
  *&v13 = 1;
  [v19 replaceRegion:&v9 mipmapLevel:0 withBytes:0x706050403020100 bytesPerRow:{0xF0E0D0C0B0A0908, 0x1716151413121110, 0x1F1E1D1C1B1A1918, v8[0], v8[1], v8[2], v8[3]}];
  v5 = v19;
  v16 = 0;
  v17 = v5;
  v18 = 0;
  LOWORD(v9) = 0;
  v11 = 0;
  v12.i64[0] = 0;
  v10 = 0;
  v13 = 0u;
  memset(v14, 0, 28);
  v15 = 0;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v17, &v9, 1, 0);
  if (*&v14[0])
  {
    if (v15)
    {
      (*(**&v14[0] + 40))(*&v14[0]);
    }

    v15 = 0;
    memset(v14, 0, 24);
    ++DWORD2(v14[1]);
  }

  if (v13)
  {
  }

  if (v18 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v18])(&v9, &v17);
  }

  if (v19)
  {
  }

  if (v3)
  {
  }

  return TextureAsset;
}

void re::TextureAssetLoader::makeSharedResourcePayload(re::TextureAssetLoader *this@<X0>, char *a2@<X1>, re::AssetSerializationScheme *a3@<X2>, RESerializedPayload **a4@<X8>)
{
  v5 = *(a2 + 9);
  if (v5)
  {
    *a4 = v5;
    return;
  }

  if (!*(a2 + 30))
  {
    v8 = this;
    this = *(a2 + 14);
    if (this)
    {
      v10 = this;
      v39 = v10;
      if (re::TextureData::isValid((a2 + 232)))
      {
        if (re::TextureData::isShareable((a2 + 232)))
        {
          v11 = [(re::TextureAssetLoader *)v10 isShareable];
          if ((v11 & 1) == 0)
          {
            v12 = *re::assetTypesLogObjects(v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Copying a texture to create a shared version.", buf, 2u);
            }

            v13 = v38;
            if (v38)
            {
              *buf = v38;
              v37 = 0;
              v35 = *(a2 + 90);
              v14 = *(a2 + 22);
              v15 = v14;
              v16 = *(a2 + 40);
              v33 = *(a2 + 42);
              v34 = v16;
              re::TextureAsset::setTexture(a2, (v8 + 40), buf, a2 + 89, &v35, v14, &v33);
              if (v37 != -1)
              {
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v37])(&v33, buf);
              }
            }
          }
        }
      }

      v17 = [(re::TextureAssetLoader *)v10 iosurface];
      v18 = [(re::TextureAssetLoader *)v10 isShareable];
      if (*(v8 + 88) != 1 || v17 || (v18 & 1) != 0)
      {
        *buf = 0;
        if (!v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v19 = *re::assetTypesLogObjects(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Last attempt to copying a texture to create a shared version", buf, 2u);
        }

        v20 = v38;
        if (!v38)
        {
          *buf = 0;
          goto LABEL_36;
        }

        *buf = v38;
        v37 = 0;
        v35 = *(a2 + 90);
        v21 = *(a2 + 22);
        v22 = v21;
        v23 = *(a2 + 40);
        v33 = *(a2 + 42);
        v34 = v23;
        re::TextureAsset::setTexture(a2, (v8 + 40), buf, a2 + 89, &v35, v21, &v33);
        if (v37 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v37])(&v33, buf);
        }

        if (*(a2 + 30))
        {
          v31 = std::__throw_bad_variant_access[abi:nn200100]();
          re::TextureData::isShareable(v31);
          return;
        }

        NS::SharedPtr<MTL::Buffer>::operator=(&v39, a2 + 14);
        v17 = [(re::TextureAssetLoader *)v39 iosurface];
        v24 = [(re::TextureAssetLoader *)v39 isShareable];

        *buf = 0;
        if ((v24 & 1) == 0)
        {
LABEL_28:
          if (v17)
          {
            re::IOSurfaceTexturePayload::make(&v39, &v33);
LABEL_38:
            v27 = v33;
            v33 = 0;
            *buf = v27;

            goto LABEL_39;
          }

LABEL_36:
          if (!*(a2 + 7))
          {
            goto LABEL_42;
          }

          re::AssetLoader::makeSharedResourcePayload(&v33, v8, a2, a3);
          goto LABEL_38;
        }
      }

      v25 = a2[85];
      v26 = *(a2 + 89);
      re::DynamicString::DynamicString(v32, (a2 + 368));
      re::SharedTexturePayload::make(&v39, v25, v26, v32, &v33);
      v27 = v33;
      v33 = 0;
      *buf = v27;

      if (*&v32[0])
      {
        if (BYTE8(v32[0]))
        {
          (*(**&v32[0] + 40))();
        }

        memset(v32, 0, sizeof(v32));
      }

LABEL_39:
      if (v27)
      {
        v28 = *(a2 + 7);
        if (v28)
        {
          re::DrawableQueue::makeSharedResourcePayload(&v33, v28);
          re::DrawableQueueTexturePayload::make(&v33, &v38);
          v29 = v38;
          v38 = 0;
          *a4 = v29;

          v30 = *buf;
        }

        else
        {
          v30 = 0;
          *buf = 0;
          *a4 = v27;
        }

LABEL_44:

        if (v39)
        {
        }

        return;
      }

LABEL_42:
      re::AssetLoader::makeSharedResourcePayload(a4, v8, a2, a3);
      v30 = 0;
      goto LABEL_44;
    }
  }

  v7 = *re::assetsLogObjects(this);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to create a shared resource payload for a texture asset with an invalid Metal texture.", buf, 2u);
  }

  *a4 = 0;
}

id re::TextureData::isShareable(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2 == 1)
  {
    return 0;
  }

  if (v2)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::TextureAssetLoader::postInitializeAssetFromPayload(v5, v6, v7);
  }

  else
  {
    v3 = *this;

    return [v3 isShareable];
  }
}

uint64_t re::TextureAssetLoader::postInitializeAssetFromPayload(uint64_t a1, id *a2, const re::SharedResourcePayload *a3)
{
  v12 = *a2;
  (*(*a1 + 248))(a1, a3, &v12, re::PassthroughAssetSerialization::instance(void)::instance);

  v11 = *a2;
  v6 = re::AssetLoader::createRuntimeDataWithPayload(a1, a3, &v11, 0);

  if ((v6 & 1) == 0)
  {
    v8 = *re::assetsLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "createRuntimeData returned false for asset created from a payload", v10, 2u);
    }
  }

  return v6;
}

void re::TextureAssetLoader::resourceDidUpdate(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  re::DrawableQueueTexturePayload::dynamicCast(a3, &v49);
  if (!v49)
  {
LABEL_6:
    *(a2 + 85) = 0;
    re::DirectTexturePayload::dynamicCast(&v47, a3);
    re::SharedTexturePayload::dynamicCast(a3, &v46);
    re::IOSurfaceTexturePayload::dynamicCast(a3, &v45);
    if (*(a1 + 72) && v47)
    {
      re::ObjCObject::operator=((a2 + 72), &v47);
      goto LABEL_23;
    }

    if (v46)
    {
      v13 = re::SharedTexturePayload::handle(&v46);
      v15 = *(a1 + 40);
      v14 = (a1 + 40);
      v16 = [v15 newSharedTextureWithHandle_];
      re::SharedTexturePayload::colorSpace(&v46, buf);
      re::DynamicString::operator=((a2 + 368), buf);
      if (*buf && (v44 & 1) != 0)
      {
        (*(**buf + 40))();
      }

      re::TextureAsset::copyColorSpaceToCFStringPtr(&v42, a2);
      re::ObjCObject::operator=((a2 + 176), &v42);
      *buf = v16;
      LODWORD(v44) = 0;
      v17 = [v46 semantic];
      v40 = *(a2 + 360);
      v41 = v17;
      v18 = *(a2 + 176);
      v19 = v18;
      v20 = *(a2 + 320);
      v38 = *(a2 + 336);
      v39 = v20;
      re::TextureAsset::setTexture(a2, v14, buf, &v41, &v40, v18, &v38);
      if (v44 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v44])(&v38, buf);
      }

      *(a2 + 85) = [v46 isLimitedRenderAsset];

      if (!v16)
      {
        goto LABEL_23;
      }

      v21 = v16;
    }

    else
    {
      if (!v45)
      {
        v26 = *re::assetsLogObjects(v12);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Using fallback Texture resourceDidUpdate, no shared texture or iosurface found.", buf, 2u);
        }

        v37 = *a3;
        re::AssetLoader::resourceDidUpdate(a1, a2, &v37, a4);

        v27 = (a1 + 40);
        v28 = [*(a1 + 40) supportsSharedTextureHandles];
        if (v28)
        {
          v29 = *re::assetTypesLogObjects(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "TextureAssetLoader::resourceDidUpdate: unexpected to get here if shared texture handles are supported", buf, 2u);
          }
        }

        *buf = 0;
        LODWORD(v44) = 0;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a2 + 112, buf);
        if (v44 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v44])(&v38, buf);
        }

        v36 = *a3;
        v30 = re::AssetLoader::createRuntimeDataWithPayload(a1, a2, &v36, 0);

        if (v30)
        {
          LODWORD(v38) = *(a2 + 360);
          v32 = *(a2 + 176);
          v33 = v32;
          v34 = *(a2 + 320);
          *buf = *(a2 + 336);
          v44 = v34;
          re::TextureAsset::setTexture(a2, v27, a2 + 112, (a2 + 356), &v38, v32, buf);
        }

        else
        {
          v35 = *re::assetsLogObjects(v31);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "createRuntimeData returned false for asset created from a payload", buf, 2u);
          }
        }

        goto LABEL_23;
      }

      re::IOSurfaceTexturePayload::makeTextureWithDevice(&v45, (a1 + 40), &v42);
      *buf = v42;
      LODWORD(v44) = 0;
      v41 = *(a2 + 360);
      v23 = *(a2 + 176);
      v24 = v23;
      v25 = *(a2 + 320);
      v38 = *(a2 + 336);
      v39 = v25;
      re::TextureAsset::setTexture(a2, (a1 + 40), buf, (a2 + 356), &v41, v23, &v38);
      if (v44 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v44])(&v38, buf);
      }

      v21 = v42;
      if (!v42)
      {
LABEL_23:

        v22 = v47;
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  re::DrawableQueueTexturePayload::drawableQueue(&v49, buf);
  v8 = *(a1 + 16);
  v10 = re::globalAllocators(v9);
  v11 = (*(*v10[2] + 32))(v10[2], 448, 8);
  v48 = v11;
  re::TextureAssetLoader::setDrawableQueueForTextureAsset(a1, a2, &v48);
  if (v11)
  {

    v48 = 0;
  }

  re::DrawableQueueTexturePayload::placeholderTexture(&v49, &v38);
  if (v38)
  {
    re::ObjCObject::operator=(a3, &v38);

    goto LABEL_6;
  }

  v22 = *buf;
LABEL_24:
}

void re::TextureAssetLoader::setDrawableQueueForTextureAsset(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = (a2 + 56);
  v3 = *(a2 + 56);
  v5 = *a3;
  if (v3 != *a3)
  {
    if (v5)
    {
      v7 = *(a2 + 72) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (*(a2 + 16))
      {
        v8 = *(a2 + 8) == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v10 = *(result + 24);
        if (v10)
        {
          v12 = *a3;
          if (v3)
          {
            (*(*v10 + 8))(v10, a2);
            v12 = *a3;
          }

          if (v5)
          {
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v4, v12);
            (***(result + 24))(*(result + 24), a2);
            v5 = *a3;
          }

          else
          {
            v5 = v12;
          }
        }
      }

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v4, v5);
      v13 = *v4;
      if (*v4 && (*(a2 + 68) & 0xFFFFFF) != 0)
      {
        v14 = *(a2 + 64);

        re::DrawableQueue::setActiveRealityRendererScene(v13, v14);
      }
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) It is ill-formed for a texture asset to be backed by both a DrawableQueue and a DirectTexture.", "!drawableQueue || !textureAsset.directTexturePayload.isValid()", "setDrawableQueueForTextureAsset", 3137);
      _os_crash("assertion failure: (!drawableQueue || !textureAsset.directTexturePayload.isValid()) It is ill-formed for a texture asset to be backed by both a DrawableQueue and a DirectTexture.");
      __break(1u);
    }
  }
}

void *re::TextureAssetLoader::checkCredentialsOfNetworkAsset@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _WORD *a4@<X8>)
{
  if (a2)
  {
    result = result[4];
    if (result)
    {
      result = (*(*result + 72))(result, a3);
    }

    *a4 = 257;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t re::TextureAssetLoader::needsCustomSerializationCopy(re::TextureAssetLoader *this, os_unfair_lock_s **a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a2[7] && !a2[9])
  {
    return 0;
  }

  re::TextureHandle::unsynchronizedMetalTexture(&v10, a2 + 1);
  v4 = a2[7];
  if (v4)
  {
    re::DrawableQueue::getLatestReadableUnSynchronizedMetalTexture(&v8, v4);
    if (v8 == 1)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(&v10, &v9);
      if (v8)
      {
        if (v9)
        {
        }
      }
    }
  }

  if (!v10)
  {
    return 0;
  }

  v8 = v10;
  LODWORD(v9) = 0;
  canExportToKtx = re::canExportToKtx(&v8, v5);
  if (v9 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v9])(&v11, &v8);
  }

  if ((canExportToKtx & 1) == 0)
  {
    if (v10)
    {
    }

    return 0;
  }

  if (v10)
  {
  }

  return 1;
}

id *re::TextureAssetLoader::tryMakeCustomSerializationCopy(re::TextureAssetLoader *this, os_unfair_lock_s **a2, int a3)
{
  if (!a3 || !a2[7] && !a2[9])
  {
    return 0;
  }

  re::TextureHandle::unsynchronizedMetalTexture(&v13, a2 + 1);
  v5 = a2[7];
  if (v5)
  {
    TextureAsset = &v11;
    re::DrawableQueue::getLatestReadableUnSynchronizedMetalTexture(&v11, v5);
    if (v11 == 1)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(&v13, &v12);
      if (v11)
      {
        if (v12)
        {
        }
      }
    }
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v11 = v13;
  LODWORD(v12) = 0;
  canExportToKtx = re::canExportToKtx(&v11, v6);
  v8 = canExportToKtx;
  if (canExportToKtx)
  {
    TextureAsset = re::TextureAsset::makeTextureAsset(&v11, (a2 + 16), *(a2 + 89), *(a2 + 90));
  }

  if (v12 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v12])(&v14, &v11);
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
LABEL_16:
    v9 = 1;
  }

  if (v13)
  {
  }

  if (v9)
  {
    return 0;
  }

  return TextureAsset;
}

void re::TextureAssetLoader::editRealityFileSerializationParameters(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  re::TextureAssetLoader::getOrCreateImportOptions(a2, a4, v12);
  if (!re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "writeAsSourceImage") && re::shouldASTCCompress((a2 + 14), v13, &v14))
  {
    if (v13 == 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 1;
      LODWORD(v14) = 1;
      HIDWORD(v14) = 1056964608;
    }

    v11 = v6;
    v10 = v14;
    re::Data::makeDataWithBytes(&v9, &v10, 0x14);
    v7[0] = v9;
    v8 = 1;
    re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a3, "kGBA8ToASTCCompressionWriteParameters", v7);
    if (v8 != -1)
    {
      (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0 + v8))(&v19, v7);
    }
  }

  if (v16)
  {
    if (v17)
    {
      (*(*v16 + 40))();
      v17 = 0;
      v18 = 0;
    }

    v16 = 0;
  }
}

void *re::TextureAssetLoader::getOrCreateImportOptions@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *(a2 + 48);
    *a3 = *(a2 + 32);
    *(a3 + 16) = v5;
    *(a3 + 32) = *(a2 + 64);
    *(a3 + 44) = *(a2 + 76);
    *(a3 + 64) = *(a2 + 96);
    *(a3 + 72) = *(a2 + 104);
    *(a3 + 88) = *(a2 + 120);
    result = re::FixedArray<short>::FixedArray((a3 + 96), (a2 + 128));
    *(a3 + 120) = *(a2 + 152);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *(a3 + 40) = 0;
    *(a3 + 44) = 0;
    *(a3 + 48) = 0;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 64) = 0;
    *(a3 + 88) = -65536;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
    *(a3 + 96) = 0;
    *(a3 + 120) = 0;
    re::TextureData::mipmapLevelCount((a1 + 14));
    v9 = v8;
    result = 0;
    v10 = *(a1 + 30);
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    *(a3 + 56) = *(a1 + 89);
    v12 = *(a1 + 90);
    if (v9 >= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = 2;
    }

    *(a3 + 20) = v13;
    *(a3 + 24) = v12;
    if (!v10)
    {
      result = [a1[14] isShareable];
    }

    *(a3 + 52) = result;
  }

  return result;
}

void re::TextureAssetLoader::injectMipsFromKTX(re::TextureAssetLoader *this, re::TextureAsset *a2, id *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 22);
  v7 = *(a2 + 90) != 1;
  v8 = [*a3 bytes];
  v9 = [*a3 length];
  v18 = &unk_1F5D0A468;
  v19 = 0;
  v20 = v8;
  v21 = v9;
  re::FixedArrayInputStream::FixedArrayInputStream(v22, v8, v9, -1);
  v23[0] = v32[0];
  v23[1] = v32[1];
  v24[0] = v33[0];
  *(v24 + 12) = *(v33 + 12);
  v25 = v34;
  v26 = v35;
  v27 = v36;
  re::FixedArray<short>::FixedArray(&v28, &v37);
  v31 = v40;
  re::TextureAssetLoader::parseKTXData(v41, this, &v18, v23, a2 + 88, 0);
  if (v28)
  {
    if (v29)
    {
      (*(*v28 + 40))(v28, v30, v10, v11);
      v29 = 0;
      v30 = 0;
    }

    v28 = 0;
  }

  if (v37)
  {
    if (v38)
    {
      (*(*v37 + 40))(v37, v39, v12, v13);
      v38 = 0;
      v39 = 0;
    }

    v37 = 0;
  }

  if (v43)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  re::TextureAsset::updateMips(a2, this + 5, v42);
  if (v52)
  {
    if (v53)
    {
      (*(*v52 + 40))(v52, v54, v14, v15);
      v53 = 0;
      v54 = 0;
    }

    v52 = 0;
  }

  if (v46)
  {
    if (v50)
    {
      (*(*v46 + 40))(v46, v50, v16, v17);
    }

    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    ++v49;
  }

  if (v44)
  {

    v44 = 0;
  }

  if (v43 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v43])(v32, &v42);
  }

  v18 = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v22);
}

void re::TextureAssetLoader::setDirectTextureForTextureAsset(uint64_t a1, id *this, void *a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = this + 9;
  if (this[9])
  {
    v9 = re::DirectTexturePayload::directTexture(this + 9);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != a3)
  {
    if (a3 && this[7])
    {
      re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) It is ill-formed for a texture asset to be backed by both a DrawableQueue and a DirectTexture.", "!directTexture || !textureAsset.drawableQueue", "setDirectTextureForTextureAsset", 3176);
      _os_crash("assertion failure: (!directTexture || !textureAsset.drawableQueue) It is ill-formed for a texture asset to be backed by both a DrawableQueue and a DirectTexture.");
      __break(1u);
    }

    if (*(a1 + 72))
    {
      if (*v8)
      {
        v10 = re::DirectTexturePayload::connectionId(v8);
        v11 = [*v8 identifier];
        v26 = v10;
        uuid_copy(v27, v11);
        v12 = *(a1 + 72);
        v24 = v26;
        uuid_copy(v25, v27);
        if (*(a4 + 80) == -1)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(a4 + 80);
        }

        re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(v12, &v24, v13);
        v14 = *v8;
        *v8 = 0;
      }

      if (a3)
      {
        re::DirectTexturePayload::make(a3, &v26);
        if (v8 != &v26)
        {
          v15 = v26;
          v26 = 0;
          v16 = *v8;
          *v8 = v15;
        }

        v17 = re::DirectTexturePayload::connectionId(v8);
        v18 = [this[9] identifier];
        v26 = v17;
        uuid_copy(v27, v18);
        v19 = *(a1 + 72);
        v24 = v26;
        uuid_copy(v25, v27);
        if (*(a4 + 80) == -1)
        {
          v20 = 0;
        }

        else
        {
          v20 = *(a4 + 80);
        }

        re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(v19, &v24, v20);
        v23 = this[9];
        re::AssetLoader::createRuntimeDataWithPayload(a1, this, &v23, 0);

        v22 = DRTextureReadTexture();
        if (this[2] && this[1])
        {
          re::TextureHandle::setMetalTexture((this + 1), &v22);
        }

        else
        {
          v21 = *(a1 + 16);
          if (v21)
          {
            re::TextureManager::registerTexture(*(v21 + 56), &v22, &v24);
            re::TextureHandle::operator=((this + 1), &v24);
            re::TextureHandle::invalidate(&v24);
          }
        }

        re::TextureHandle::setMetalTexture((this + 12), &v22);
        if (v22)
        {
        }
      }
    }
  }
}

uint64_t re::TextureAssetLoader::setBlobOverrideSerializationParameter(uint64_t a1, id *a2)
{
  v4[0] = *a2;
  v5 = 1;
  result = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1, "blobOverrideParameterKey", v4);
  if (v5 != -1)
  {
    return (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0 + v5))(&v6, v4);
  }

  return result;
}

uint64_t re::TextureAssetLoader::fetchSourceImageTextureDescriptor@<X0>(re::TextureAssetLoader *this@<X0>, re::RealityFile *a2@<X1>, re::RealityFile *a3@<X2>, const char *a4@<X3>, char *a5@<X4>, uint64_t a7@<X8>)
{
  re::TextureAssetRealityFileProviderCallbacks::tryCreateSourceImageTextureProvider(&v14, this, a2, a3, a4, 1, a5, 0);
  if (v14)
  {
    re::TextureProvider::lazyFetchProperties(&v15, v8);
    v9 = v17;
    *a7 = 1;
    *(a7 + 8) = v9;
  }

  else
  {
    re::DynamicString::DynamicString(&v11, &v15);
    *a7 = 0;
    *(a7 + 8) = v11;
    *(a7 + 32) = v13;
    *(a7 + 16) = v12;
  }

  result = v15;
  if (v14 == 1)
  {
    return (*v15)(&v15);
  }

  if (v15)
  {
    if (v16)
    {
      return (*(*v15 + 40))();
    }
  }

  return result;
}

uint64_t *re::TextureAssetRealityFileProviderCallbacks::tryCreateSourceImageTextureProvider@<X0>(uint64_t *__return_ptr a1@<X8>, re::TextureAssetRealityFileProviderCallbacks *this@<X0>, const re::TextureAssetLoader *a3@<X1>, re::RealityFile *a4@<X2>, const char *a5@<X3>, const char *a6@<X4>, const char *a7@<X6>, uint64_t *a8@<X5>)
{
  v107 = *MEMORY[0x1E69E9840];
  re::DynamicString::rfind(v89, &v90, 46);
  if (LOBYTE(v89[0]) == 1)
  {
    v65 = a6;
    v64 = this;
    v66 = a4;
    re::DynamicString::resize(&v90, v89[1], 42);
    if (v91)
    {
      v18 = v93;
    }

    else
    {
      v18 = v92;
    }

    re::DynamicString::format(&v85, "%s%s%s", v17, "assets/", v18, ".json");
    if (v91)
    {
      v20 = v93;
    }

    else
    {
      v20 = v92;
    }

    re::DynamicString::format(&v81, "%s%s%s", v19, "assets/", v20, ".sourceimage");
    v21 = &v86;
    v22 = v88;
    v23 = v87;
    if (v86)
    {
      v24 = v88[0];
    }

    else
    {
      v24 = v87;
    }

    re::RealityFile::getInputStream(a3, v24, 1, v105);
    if (v82)
    {
      v25 = v84[0];
    }

    else
    {
      v25 = v83;
    }

    InputStream = re::RealityFile::getInputStream(a3, v25, 1, v103);
    if (v105[0])
    {
      v28 = &v82;
      v29 = v84;
      v30 = v83;
      if (v103[0])
      {
        if (a8)
        {
          v31 = *re::assetsLogObjects(InputStream);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = *a8;
            *buf = 136315650;
            *&buf[4] = v66;
            *&buf[12] = 2080;
            *&buf[14] = a5;
            *&buf[22] = 2048;
            v95 = v32;
          }
        }

        if (v106[54] < 3u)
        {
          v80 = 0;
          v77 = 0;
          v78 = 0;
          v76 = 0;
          v79 = 0;
          v73 = 0;
          v74 = 0;
          v72 = v106;
          v75 = 0;
          if (!re::SeekableInputStreamBufferedReader::readNext(&v72, 0xFFFFFFFFFFFFFFFFLL))
          {
            re::DynamicString::format(buf, "Unexpected error reading source image options for asset path: '%s'.", v33, v66);
            v47 = *buf;
            v48 = *&buf[16];
            v49 = v95;
            *a1 = 0;
            *(a1 + 1) = v47;
            a1[3] = v48;
            a1[4] = v49;
LABEL_69:
            if (v75)
            {
              (*(*v72 + 24))(v72);
              v75 = 0;
            }

            v72 = 0;
            v73 = 0;
            v74 = 0;
            if (v76 && v80)
            {
              (*(*v76 + 40))();
            }

            goto LABEL_45;
          }

          v34 = *MEMORY[0x1E695E480];
          cf = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v73, v74, *MEMORY[0x1E695E498]);
          re::parseTextureFromImageOptions(&v101, &cf);
          if ((v101 & 1) == 0)
          {
            re::DynamicString::DynamicString(buf, v102);
            *a1 = 0;
            v54 = v95;
            a1[1] = *buf;
            a1[4] = v54;
            *(a1 + 1) = *&buf[8];
LABEL_68:
            re::Result<re::TextureFromImageOptions,re::DynamicString>::~Result(&v101);
            goto LABEL_69;
          }

          CFRelease(cf);
          if (v65)
          {
            v102[2] = 1;
            v102[4] = v65;
          }

          v70 = 0;
          if (v104[54] < 3u)
          {
            v100 = 0;
            v98 = 0;
            v96 = 0;
            v97 = 0;
            v99 = 0;
            *&buf[16] = 0;
            *buf = v104;
            *&buf[8] = 0;
            LODWORD(v95) = 0;
            Next = re::SeekableInputStreamBufferedReader::readNext(buf, 0xFFFFFFFFFFFFFFFFLL);
            if (Next)
            {
              v37 = CFDataCreate(v34, *&buf[8], *&buf[16]);
              v70 = v37;
              v38 = v37 == 0;
            }

            else
            {
              re::DynamicString::format(&v67, "Unexpected error reading source image for asset path: '%s'.", v35, v66);
              v37 = 0;
              v55 = v67;
              v56 = v68;
              v57 = v69;
              *a1 = 0;
              *(a1 + 1) = v55;
              a1[3] = v56;
              a1[4] = v57;
              v38 = 1;
            }

            v58 = v95;
            if (v95)
            {
              (*(**buf + 24))(*buf);
              LODWORD(v95) = 0;
            }

            memset(buf, 0, sizeof(buf));
            if (v96)
            {
              v58 = v100;
              if (v100)
              {
                (*(*v96 + 40))();
              }
            }

            if (Next)
            {
              if (v38)
              {
                re::DynamicString::format(buf, "Cound not allocate source image for asset path: '%s'.", v58, v66);
                v59 = *buf;
                v60 = *&buf[16];
                v61 = v95;
                *a1 = 0;
                *(a1 + 1) = v59;
                a1[3] = v60;
                a1[4] = v61;
              }

              else
              {
                re::DataTextureProvider::DataTextureProvider(buf, (v64 + 40), *(v64 + 88), &v70, 0);
                if (v37)
                {
                  CFRelease(v37);
                }

                re::TextureProvider::setOptions(buf, v102);
                re::DataTextureProvider::DataTextureProvider(&v67, buf);
                *a1 = 1;
                re::DataTextureProvider::DataTextureProvider((a1 + 1), &v67);
                re::DataTextureProvider::~DataTextureProvider(&v67);
                re::DataTextureProvider::~DataTextureProvider(buf);
              }
            }

            goto LABEL_68;
          }
        }

        v62 = std::__throw_bad_variant_access[abi:nn200100]();
        return re::TextureAssetLoader::createTextureAssetDataFromProvider(v62, v63);
      }
    }

    else
    {
      v28 = &v86;
      v29 = v88;
      v30 = v87;
      v21 = &v82;
      v22 = v84;
      v23 = v83;
      if ((v103[0] & 1) == 0)
      {
        if (a7)
        {
          v46 = a7;
        }

        else
        {
          v46 = "Source image and options not found";
        }

        goto LABEL_44;
      }
    }

    v43 = *v29;
    if (*v28)
    {
      v44 = v43;
    }

    else
    {
      v44 = v30;
    }

    if (*v21)
    {
      v45 = *v22;
    }

    else
    {
      v45 = v23;
    }

    re::DynamicString::format(buf, "Unexpected: could open texture source image's '%s' but not '%s'.", v27, v45, v44);
LABEL_44:
    v50 = *buf;
    v51 = *&buf[16];
    v52 = v95;
    *a1 = 0;
    *(a1 + 1) = v50;
    a1[3] = v51;
    a1[4] = v52;
LABEL_45:
    re::Result<re::RealityFileEntryStream,re::WrappedError>::~Result(v103);
    re::Result<re::RealityFileEntryStream,re::WrappedError>::~Result(v105);
    if (v81 && (v82 & 1) != 0)
    {
      (*(*v81 + 40))();
    }

    if (v85 && (v86 & 1) != 0)
    {
      (*(*v85 + 40))();
    }

    goto LABEL_51;
  }

  if (v91)
  {
    v39 = v93;
  }

  else
  {
    v39 = v92;
  }

  re::DynamicString::format(buf, "Unexpected: asset entry has no extension: '%s'.", v16, v39);
  v40 = *buf;
  v41 = *&buf[16];
  v42 = v95;
  *a1 = 0;
  *(a1 + 1) = v40;
  a1[3] = v41;
  a1[4] = v42;
LABEL_51:
  result = v90;
  if (v90)
  {
    if (v91)
    {
      return (*(*v90 + 40))();
    }
  }

  return result;
}

id *re::TextureAssetLoader::createTextureAssetDataFromProvider@<X0>(re::TextureAssetLoader *this@<X0>, uint64_t a2@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(this);
  re::loadTextureDataWithProvider(&v47, this, v4[2], v5);
  if (v47)
  {
    v7 = v46;
    v9 = *(this + 4);
    v8 = *(this + 5);
    v10 = *(this + 3);
    *(v46 + 76) = *(this + 92);
    *(v7 + 48) = v9;
    *(v7 + 64) = v8;
    *(v7 + 32) = v10;
    re::ObjCObject::operator=((v7 + 96), this + 14);
    v11 = *(this + 120);
    *(v7 + 120) = *(this + 34);
    *(v7 + 104) = v11;
    re::FixedArray<short>::operator=((v7 + 128), this + 18);
    *(v7 + 152) = *(this + 168);
    v12 = (*(*this + 104))(&v44, this);
    if ((v44 & 1) == 0)
    {
      v13 = *re::assetsLogObjects(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = re::WrappedError::localizedDescription(&v45);
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Failed to preserve source texture data: '%s'.", buf, 0xCu);
      }
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v7 + 24), v45);
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] &= 0xFC00u;
    memset(v58, 0, 24);
    v59 = 0u;
    memset(v60, 0, 28);
    v61 = 0u;
    v35 = 0;
    v36 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v35, v48);
    v15 = v51;
    v38[0] = v50[0];
    *(v38 + 12) = *(v50 + 12);
    v37 = v49;
    v51 = 0u;
    v39 = v15;
    v40 = v52;
    v52 = 0;
    v41 = v53;
    v53 = 0u;
    ++v54;
    v42 = 1;
    v16 = v55;
    *&v55 = 0;
    v43 = v16;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v48, buf);
    v49 = *&buf[16];
    v17 = *(&v51 + 1);
    v18 = v59;
    v50[0] = *v58;
    *(v50 + 12) = *&v58[12];
    v59 = v51;
    v51 = v18;

    re::DynamicArray<short>::operator=(&v52, v60);
    *(&v55 + 1) = *(&v61 + 1);
    if (*v60)
    {
      if (v61)
      {
        (*(**v60 + 40))(*v60);
      }

      *&v61 = 0;
      memset(v60, 0, 24);
      ++*&v60[24];
    }

    if (v59)
    {

      *&v59 = 0;
    }

    if (*&buf[8] != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*&buf[8]])(&v23, buf);
    }

    *(v7 + 160) = *(&v43 + 1);
    v22 = v7;
    v19 = (v7 + 8);
    re::TextureAssetData::TextureAssetData(&v23, &v35, &v37, &v22);
    re::TextureAssetData::TextureAssetData(buf, &v23);
    *a2 = 1;
    re::TextureAssetData::TextureAssetData(a2 + 8, buf);
    *buf = &unk_1F5CC40A0;
    if (v64)
    {

      v64 = 0;
    }

    if (*&v60[24])
    {
      if (v63)
      {
        (*(**&v60[24] + 40))(*&v60[24]);
      }

      v63 = 0;
      v61 = 0uLL;
      *&v60[24] = 0;
      ++v62;
    }

    if (*&v60[8])
    {

      *&v60[8] = 0;
    }

    if (*&v58[8] != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*&v58[8]])(&v56, v58);
    }

    *&v58[8] = -1;
    *buf = &unk_1F5CCF868;
    objc_destructInstance(&buf[8]);
    v23 = &unk_1F5CC40A0;
    if (v34)
    {

      v34 = 0;
    }

    if (v29)
    {
      if (v33)
      {
        (*(*v29 + 40))();
      }

      v33 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      ++v32;
    }

    if (v27)
    {

      v27 = 0;
    }

    if (v26 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v26])(&v56, &v25);
    }

    v26 = -1;
    v23 = &unk_1F5CCF868;
    objc_destructInstance(&v24);

    if (v40)
    {
      if (v43)
      {
        (*(*v40 + 40))();
      }

      *&v43 = 0;
      v41 = 0uLL;
      v40 = 0;
      ++v42;
    }

    if (v39)
    {

      *&v39 = 0;
    }

    if (v36 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v36])(buf, &v35);
    }

    if (v44 == 1)
    {
      if (v45)
      {
      }
    }

    else
    {
    }
  }

  else
  {
    re::DynamicString::DynamicString(buf, v48);
    *a2 = 0;
    v20 = *v58;
    *(a2 + 8) = *buf;
    *(a2 + 32) = v20;
    *(a2 + 16) = *&buf[8];
  }

  return re::Result<re::TextureImportData,re::DynamicString>::~Result(&v47);
}

id *re::Result<re::TextureImportData,re::DynamicString>::~Result(id *this)
{
  v2 = this + 1;
  if (*this == 1)
  {
    re::DynamicArray<unsigned long>::deinit((this + 10));

    v3 = this[8];
    if (v3)
    {

      this[8] = 0;
    }

    v4 = *(this + 4);
    if (v4 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v6, v2);
    }

    *(this + 4) = -1;
  }

  else
  {
    re::DynamicString::deinit((this + 1));
  }

  return this;
}

void re::TextureAssetLoader::createTextureAssetData(re *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v19;
  v10 = a3[1];
  v9 = a3[2];
  v11 = *a3;
  *(v19 + 76) = *(a3 + 44);
  *(v8 + 48) = v10;
  *(v8 + 64) = v9;
  *(v8 + 32) = v11;
  v12 = (v8 + 96);
  v13 = a3 + 4;
  if ((v8 + 96) != a3 + 4)
  {
    v14 = *v13;
    *v13 = 0;
    v15 = *v12;
    *v12 = v14;
  }

  v16 = *(a3 + 72);
  *(v8 + 120) = *(a3 + 22);
  *(v8 + 104) = v16;
  re::FixedArray<short>::operator=((v8 + 128), a3 + 12);
  *(v8 + 152) = *(a3 + 120);
  *(v8 + 160) = *(a2 + 96);
  v18 = v8;
  v17 = (v8 + 8);
  re::TextureAssetData::TextureAssetData(a4, a1, a2, &v18);
}

void re::TextureAssetLoader::createTextureAssetDataWithOptionsOverride(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = v21;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v21 + 24), *(a3 + 24));
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[2];
  *(v10 + 76) = *(a4 + 44);
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  *(v10 + 32) = v11;
  v14 = (v10 + 96);
  v15 = a4 + 4;
  if ((v10 + 96) != a4 + 4)
  {
    v16 = *v15;
    *v15 = 0;
    v17 = *v14;
    *v14 = v16;
  }

  v18 = *(a4 + 72);
  *(v10 + 120) = *(a4 + 22);
  *(v10 + 104) = v18;
  re::FixedArray<short>::operator=((v10 + 128), a4 + 12);
  *(v10 + 152) = *(a4 + 120);
  *(v10 + 160) = *(a2 + 96);
  v20 = v10;
  v19 = (v10 + 8);
  re::TextureAssetData::TextureAssetData(a5, a1, a2, &v20);
}

uint64_t re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(re::TextureAsset *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 1) + 328) == 1)
  {
    re::TextureAsset::assetType(a1);
    result = re::AssetHandle::assetWithTypeRaw(a1, &re::TextureAsset::assetType(void)::type, 1);
    if (result)
    {
      return result;
    }

    v3 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = re::AssetHandle::assetInfo(a1);
      if (v4[17])
      {
        v5 = v4[18];
      }

      else
      {
        v5 = v4 + 137;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v6, 0xCu);
    }
  }

  return 0;
}

void re::TextureAssetLoader::downgradeTextureAssetToSpring2023(re::TextureAssetLoader *this@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(this + 89) - 3) >= 2 || ((v6 = (this + 176), v7 = *(this + 22), v45 = 0, ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(v7, &v45), ColorGamutFromCGColorSpaceName) ? (v9 = v45 == 0) : (v9 = 1), v9))
  {
    *a3 = 1;
    return;
  }

  re::TextureAsset::assetType(ColorGamutFromCGColorSpaceName);
  v10 = a2[226];
  v35 = &re::TextureAsset::assetType(void)::type;
  v11 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v10, &v35);
  (*(**v11 + 128))(*v11);
  v12 = *v11;
  LOBYTE(v35) = 0;
  v36 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(&v35, this + 112);
  v13 = *(this + 21);
  v37 = *(this + 64);
  v38[0] = *(this + 136);
  *(v38 + 12) = *(this + 148);
  v39 = v13;
  if (v13)
  {
    v14 = (v13 + 8);
  }

  v40 = *(this + 22);
  re::DynamicArray<short>::DynamicArray(v41, this + 23);
  v44 = *(this + 28);
  v15 = &v25;
  re::convertTextureColorSpace(0, &v35, &v25);
  if (v26)
  {
    if (v26 != 1)
    {
      v21 = std::__throw_bad_variant_access[abi:nn200100]();
      re::TextureAssetLoader::downgradeTextureAssetToSpring2024(v21, v22);
      return;
    }

    if (!*(v25 + 48))
    {
      goto LABEL_17;
    }

    v15 = (v25 + 24);
  }

  if (!*v15)
  {
LABEL_17:
    v20 = *re::assetTypesLogObjects(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Failed to convert texture asset's color space before writing", v23, 2u);
    }

    goto LABEL_19;
  }

  *(this + 64) = v27;
  *(this + 136) = v28[0];
  *(this + 148) = *(v28 + 12);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this + 21, v29);
  re::ObjCObject::operator=(v6, &v30);
  re::DynamicArray<short>::operator=(this + 184, v31);
  v17 = v30;
  *(this + 28) = v34;
  v24 = *(this + 90);
  v18 = v17;
  v19 = *(this + 40);
  v23[0] = *(this + 42);
  v23[1] = v19;
  re::TextureAsset::setTexture(this, (v12 + 40), &v25, this + 89, &v24, v17, v23);
LABEL_19:
  *a3 = 1;
  if (v31[0])
  {
    if (v33)
    {
      (*(*v31[0] + 40))();
    }

    v33 = 0;
    memset(v31, 0, sizeof(v31));
    ++v32;
  }

  if (v29)
  {

    v29 = 0;
  }

  if (v26 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v26])(v23, &v25);
  }

  if (v41[0])
  {
    if (v43)
    {
      (*(*v41[0] + 40))();
    }

    v43 = 0;
    memset(v41, 0, sizeof(v41));
    ++v42;
  }

  if (v39)
  {

    v39 = 0;
  }

  if (v36 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v36])(&v25, &v35);
  }
}

_anonymous_namespace_ *re::TextureAssetLoader::downgradeTextureAssetToSpring2024@<X0>(_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 87) | 4) == 7)
  {
    v3 = v6;
    v4 = v7;
    v5 = v8;
    *a2 = 0;
    *(a2 + 8) = v3;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5;
  }

  else
  {
    *a2 = 1;
  }

  return this;
}

void *re::allocInfo_TextureCompileOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196080, "TextureCompileOptions");
    __cxa_guard_release(&qword_1EE195EB0);
  }

  return &unk_1EE196080;
}

void re::initInfo_TextureCompileOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0x8FAC598B1297B58CLL;
  v12[1] = "TextureCompileOptions";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE195EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EC0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_TextureCompressionType(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "compressionType";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 7;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE195EB8 = v10;
    __cxa_guard_release(&qword_1EE195EC0);
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE195EB8;
  *(this + 9) = re::internal::defaultConstruct<re::TextureCompileOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TextureCompileOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::TextureCompileOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::TextureCompileOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

uint64_t *re::introspect_TextureSemantic(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE195ED0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE195ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195ED8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE195FC8, "TextureSemantic", 4, 4, 1, 1);
      qword_1EE195FC8 = &unk_1F5D0C658;
      qword_1EE196008 = &re::introspect_TextureSemantic(BOOL)::enumTable;
      dword_1EE195FD8 = 9;
      __cxa_guard_release(&qword_1EE195ED8);
    }

    if (v2)
    {
      if (byte_1EE195EA1)
      {
        return &qword_1EE195FC8;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v52);
      v3 = byte_1EE195EA1;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v52);
      if (v3)
      {
        return &qword_1EE195FC8;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE195EA1)
      {
        goto LABEL_46;
      }
    }

    byte_1EE195EA1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE195FC8, a2);
    v49 = 0xACDB0069060A27C2;
    v50 = "TextureSemantic";
    v53 = 0x607DD0F01DCLL;
    v54 = "uint32_t";
    v9 = v52[0];
    v10 = v52[1];
    if (v53)
    {
      if (v53)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v50);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v48);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE195ED0))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Unspecified";
      qword_1EE195F50 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "Raw";
      qword_1EE195F58 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "Scalar";
      qword_1EE195F60 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "Color";
      qword_1EE195F68 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "HDRColor";
      qword_1EE195F70 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "Normal";
      qword_1EE195F78 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 6;
      *(v47 + 16) = "None";
      qword_1EE195F80 = v47;
      __cxa_guard_release(&qword_1EE195ED0);
    }
  }

  v11 = qword_1EE196008;
  v53 = v9;
  v54 = v10;
  re::TypeBuilder::beginEnumType(v52, &v49, 1, 1, &v53);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v51.var0 = 2 * v16;
        v51.var1 = v15;
        re::TypeBuilder::addEnumConstant(v52, v20, &v51);
        if (*&v51.var0)
        {
          if (*&v51.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v51.var0 = 2 * v25;
          v51.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v52, v29, &v51);
          if (*&v51.var0)
          {
            if (*&v51.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v52, v31);
  xmmword_1EE195FE8 = v51;
  if (v49)
  {
    if (v49)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE195FC8;
}

void re::IntrospectionInfo<re::FixedArray<short>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE195F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195F20))
  {
    re::IntrospectionFixedArray<short>::IntrospectionFixedArray();
    __cxa_guard_release(&qword_1EE195F20);
  }

  if ((byte_1EE195EA2 & 1) == 0)
  {
    v2 = re::introspect_short(1, a2);
    if ((byte_1EE195EA2 & 1) == 0)
    {
      v3 = v2;
      byte_1EE195EA2 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE195F88, 0);
      qword_1EE195F98 = 0x1800000004;
      unk_1EE195FA0 = v4;
      word_1EE195FA4 = 0;
      *&xmmword_1EE195FA8 = 0;
      *(&xmmword_1EE195FA8 + 1) = 0xFFFFFFFFLL;
      qword_1EE195FB8 = v3;
      qword_1EE195FC0 = 0;
      qword_1EE195F88 = &unk_1F5CC4008;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE195F88);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x18uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE195FA8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void *re::allocInfo_TextureAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196110, "TextureAsset");
    __cxa_guard_release(&qword_1EE195EE8);
  }

  return &unk_1EE196110;
}

void re::initInfo_TextureAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v69[0] = 0x3DA0ACA55D0EE56ALL;
  v69[1] = "TextureAsset";
  if (v69[0])
  {
    if (v69[0])
    {
    }
  }

  *(this + 2) = v70;
  if ((atomic_load_explicit(&qword_1EE195EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EE0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_int(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "width";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0xF800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196010 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_int(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "height";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0xFC00000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196018 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_int(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "depth";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x10000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE196020 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::mtl::introspect_PixelFormat(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "pixelFormat";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x15800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE196028 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::mtl::introspect_TextureType(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "textureType";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x15C00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE196030 = v26;
    v27 = re::introspectionAllocator();
    v33 = re::mtl::introspect_TextureSwizzleChannels(1, v28, v29, v30, v31, v32);
    v34 = (*(*v27 + 32))(v27, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "swizzle";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x16000000006;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE196038 = v34;
    v35 = re::introspectionAllocator();
    v36 = v35;
    v37 = qword_1EE195EC8;
    if (!qword_1EE195EC8)
    {
      v37 = re::allocInfo_TextureCompileOptions(v35);
      qword_1EE195EC8 = v37;
      re::initInfo_TextureCompileOptions(v37, v38, v39, v40);
    }

    v41 = (*(*v36 + 32))(v36, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "compileOptions";
    *(v41 + 16) = v37;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x16800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE196040 = v41;
    v42 = re::introspectionAllocator();
    re::introspect_TextureSemantic(1, v43);
    v44 = (*(*v42 + 32))(v42, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "semantic";
    *(v44 + 16) = &qword_1EE195FC8;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x16400000008;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE196048 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::IntrospectionInfo<re::DynamicString>::get(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "colorSpace";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x17000000009;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE196050 = v48;
    v49 = re::introspectionAllocator();
    v51 = re::introspect_int(1, v50);
    v52 = (*(*v49 + 32))(v49, 72, 8);
    *v52 = 1;
    *(v52 + 8) = "arrayLength";
    *(v52 + 16) = v51;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0x1040000000ALL;
    *(v52 + 40) = 0;
    *(v52 + 48) = 0;
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    qword_1EE196058 = v52;
    v53 = re::introspectionAllocator();
    v59 = re::introspect_Range(1, v54, v55, v56, v57, v58);
    v60 = (*(*v53 + 32))(v53, 72, 8);
    *v60 = 1;
    *(v60 + 8) = "defaultMipmapRange";
    *(v60 + 16) = v59;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0x1080000000BLL;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    *(v60 + 56) = 0;
    *(v60 + 64) = 0;
    qword_1EE196060 = v60;
    v61 = re::introspectionAllocator();
    re::IntrospectionInfo<re::FixedArray<short>>::get(v61, v62);
    v63 = (*(*v61 + 32))(v61, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "defaultSlices";
    *(v63 + 16) = &qword_1EE195F88;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x1180000000CLL;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE196068 = v63;
    v64 = re::introspectionAllocator();
    v65 = (*(*v64 + 32))(v64, 64, 8);
    *v65 = 6;
    *(v65 + 8) = 1;
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 40) = 1;
    *(v65 + 48) = re::TextureAssetLoader::downgradeTextureAssetToSpring2023;
    *(v65 + 56) = 2;
    qword_1EE196070 = v65;
    v66 = re::introspectionAllocator();
    v67 = (*(*v66 + 32))(v66, 64, 8);
    *v67 = 6;
    *(v67 + 8) = 1;
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    *(v67 + 32) = 0;
    *(v67 + 40) = 1;
    *(v67 + 48) = re::TextureAssetLoader::downgradeTextureAssetToSpring2024;
    *(v67 + 56) = 3;
    qword_1EE196078 = v67;
    __cxa_guard_release(&qword_1EE195EE0);
  }

  *(this + 2) = 0x19800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE196010;
  *(this + 9) = re::internal::defaultConstruct<re::TextureAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TextureAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::TextureAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::TextureAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_12TextureAssetELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS4_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS7_ENS0_8priorityILi1EEEENUlSC_S7_E_8__invokeESC_S7_;
  re::internal::prepare(this, v6);
  v68 = v70;
}

void *re::allocInfo_SidecarImageImportOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1961A0, "SidecarImageImportOptions");
    __cxa_guard_release(&qword_1EE195EF0);
  }

  return &unk_1EE1961A0;
}

void re::initInfo_SidecarImageImportOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x1B5556AE59D30EF6;
  v16[1] = "SidecarImageImportOptions";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE195EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EF8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::mtl::introspect_PixelFormat(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "pixelFormat";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x2000000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE195F28 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "colorSpace";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 2;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE195F30 = v14;
    __cxa_guard_release(&qword_1EE195EF8);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195F28;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::anonymous namespace::SidecarImageImportOptions>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::anonymous namespace::SidecarImageImportOptions>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  return result;
}

re::TextureAsset *re::TextureAsset::TextureAsset(re::TextureAsset *this)
{
  *this = &unk_1F5CC3D38;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v2 = (this + 24);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(this + 7) = 0;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 9) = 0;
  *(this + 40) = 0;
  *(this + 82) = 65537;
  *(this + 86) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 30) = 0;
  *(this + 64) &= 0xFC00u;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 60) = 0;
  *(this + 29) = 0;
  *(this + 248) = xmmword_1E305F260;
  *(this + 33) = 0;
  *(this + 34) = 0xFFFFFFFFLL;
  *(this + 42) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 82) = 0;
  *(this + 43) = 0x200000073;
  *(this + 88) = 84148994;
  *(this + 356) = 6;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  re::DynamicString::setCapacity(this + 46, 0);
  *(this + 100) = 0;
  return this;
}

void re::TextureAsset::~TextureAsset(re::TextureAsset *this)
{
  re::TextureAsset::~TextureAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC3D38;
  re::DynamicString::deinit((this + 368));
  re::DynamicArray<unsigned long>::deinit(this + 304);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  v2 = *(this + 60);
  if (v2 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v2])(&v6, this + 232);
  }

  *(this + 60) = -1;
  re::DynamicArray<unsigned long>::deinit(this + 184);

  v3 = *(this + 21);
  if (v3)
  {

    *(this + 21) = 0;
  }

  v4 = *(this + 30);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v7, this + 112);
  }

  *(this + 30) = -1;
  re::TextureHandle::invalidate(this + 12);

  v5 = *(this + 7);
  if (v5)
  {

    *(this + 7) = 0;
  }

  re::DynamicString::deinit((this + 24));
  re::TextureHandle::invalidate(this + 1);
}

id re::CPUTexture::compressionType(re::CPUTexture *this)
{
  v1 = *(this + 3);
  if ([v1 respondsToSelector_])
  {
    return [v1 compressionType];
  }

  result = [v1 methodSignatureForSelector_];
  if (result)
  {
    return [v1 compressionType];
  }

  return result;
}

double re::TextureAssetData::TextureAssetData(re::TextureAssetData *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CC40A0;
  *(this + 8) = 0;
  *(this + 20) &= 0xFC00u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 8) = -1;
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CC3D68[v5])(&v6, a2);
    *(v3 + 8) = v5;
  }

  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSD_10CPUTextureEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSC_SG_EEEEEEDcSQ_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

uint64_t **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSD_10CPUTextureEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSC_SG_EEEEEEDcSQ_DpT0_(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  **result = *a2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

_anonymous_namespace_ *re::FixedArray<short>::operator=(_anonymous_namespace_ *a1, const void **a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = a2[1];
  if (v4)
  {
LABEL_4:
    re::FixedArray<short>::copy(a1, *a2, a2[1]);
  }

  return a1;
}

void *re::FixedArray<short>::copy(void *result, const void *a2, uint64_t a3)
{
  if (result[1] == a3)
  {
    if (a3)
    {
      v5 = 2 * a3;
      v6 = result[2];

      return memmove(v6, a2, v5);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v3, v4);
    result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
  }

  return result;
}

void re::FixedArray<short>::init<>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 < 0)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 2 * a3;
  v6 = (*(*a2 + 32))(a2, 2 * a3, 2);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 2);
    v8 = (v8 + v5 - 2);
  }

  *v8 = 0;
}

void *re::FixedArray<short>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<short>::init<>(a1, v4, a2[1]);
    re::FixedArray<short>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<short>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 2 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

uint64_t re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3D88;
  *(a1 + 8) = *a2;
  *(a1 + 16) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 18);
  *(a1 + 24) = v4;
  v5 = *(a2 + 19);
  *(a1 + 27) = v5;
  if (v5 == 1)
  {
    *(a1 + 28) = *(a2 + 20);
  }

  v6 = *(a2 + 21);
  *(a1 + 36) = *(a2 + 28);
  *(a1 + 29) = v6;
  *(a1 + 40) = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *(a1 + 92) = *(a2 + 84);
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 48) = v7;
  v10 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 112) = v10;
  v11 = *(a2 + 112);
  *(a1 + 136) = *(a2 + 128);
  *(a1 + 120) = v11;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  v12 = *(a2 + 144);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 152) = v12;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  v13 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 152);
  *(a2 + 152) = v13;
  *(a1 + 168) = *(a2 + 160);
  v14 = *(a2 + 168);
  v15 = *(a2 + 184);
  *(a1 + 208) = *(a2 + 200);
  *(a1 + 176) = v14;
  *(a1 + 192) = v15;
  return a1;
}

uint64_t re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5CC3D88;
  re::FixedArray<CoreIKTransform>::deinit((a1 + 144));

  return a1;
}

void re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5CC3D88;
  re::FixedArray<CoreIKTransform>::deinit((a1 + 144));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()(uint64_t a1@<X0>, re::SeekableInputStream *a2@<X1>, _BYTE *a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v17[0] = *(a1 + 48);
  v17[1] = v7;
  v18[0] = *(a1 + 80);
  *(v18 + 12) = *(a1 + 92);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v21 = *(a1 + 136);
  re::FixedArray<short>::FixedArray(&v22, (a1 + 144));
  v25 = *(a1 + 168);
  re::createTextureWithKTXData(a1 + 8, a2, 0x5040302u, v6, v17, *(a1 + 184), 0, v27, *(a1 + 176), 0, **(a1 + 200), **(a1 + 208));
  v8 = *(a1 + 192);
  v9 = v27[0];
  v10 = v27[1];
  v11 = v27[3];
  *(v8 + 32) = v27[2];
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  if (*(v8 + 64))
  {
    if ((v28 & 1) == 0)
    {
      *(v8 + 64) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(v8 + 64) = 1;
  }

  *(v8 + 66) = v29;
LABEL_7:
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v8 + 72, &v30);
  *(v8 + 88) = v32;
  v12 = v33[0];
  *(v8 + 108) = *(v33 + 12);
  *(v8 + 96) = v12;
  v13 = *(v8 + 128);
  *(v8 + 128) = v34;
  v34 = v13;
  if (v8 != v27)
  {
    v14 = v35;
    v35 = 0;
    v15 = *(v8 + 136);
    *(v8 + 136) = v14;
  }

  re::DynamicArray<short>::operator=(v8 + 144, v36);
  v16 = v36[0];
  *(v8 + 184) = v39;
  if (v16)
  {
    if (v38)
    {
      (*(*v16 + 40))(v16);
    }

    v38 = 0;
    memset(v36, 0, sizeof(v36));
    ++v37;
  }

  if (v34)
  {

    v34 = 0;
  }

  if (v31 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v31])(&v26, &v30);
  }

  v31 = -1;
  if (v22)
  {
    if (v23)
    {
      (*(*v22 + 40))();
      v23 = 0;
      v24 = 0;
    }

    v22 = 0;
  }

  *a3 = 1;
}

uint64_t re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3D88;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a2 + 26) = *(a1 + 26);
  *(a2 + 24) = v4;
  v5 = *(a1 + 27);
  *(a2 + 27) = v5;
  if (v5 == 1)
  {
    *(a2 + 28) = *(a1 + 28);
  }

  v6 = *(a1 + 29);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 29) = v6;
  *(a2 + 40) = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  *(a2 + 92) = *(a1 + 92);
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 48) = v7;
  *(a2 + 112) = *(a1 + 112);
  v10 = *(a1 + 136);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = v10;
  re::FixedArray<short>::FixedArray((a2 + 144), (a1 + 144));
  *(a2 + 168) = *(a1 + 168);
  v11 = *(a1 + 176);
  v12 = *(a1 + 192);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 176) = v11;
  *(a2 + 192) = v12;
  return a2;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 8) = -1;
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CC3DD0[v5])(&v6, a2);
    *(v3 + 8) = v5;
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>> &&>(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>> &&>(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CC3DE0[v4])(&v5, result, a2);
}

void **std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__assign_alt[abi:nn200100]<0ul,NS::SharedPtr<MTL::Texture>,NS::SharedPtr<MTL::Texture> const&>(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 8))
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__emplace[abi:nn200100]<0ul,NS::SharedPtr<MTL::Texture> const&>(a1, a3);
  }

  else
  {
    return NS::SharedPtr<MTL::Buffer>::operator=(a2, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__emplace[abi:nn200100]<0ul,NS::SharedPtr<MTL::Texture> const&>(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a2;
  *(a1 + 8) = 0;
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__assign_alt[abi:nn200100]<1ul,re::SharedPtr<re::CPUTexture>,re::SharedPtr<re::CPUTexture> const&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a2, *a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__emplace[abi:nn200100]<1ul,re::SharedPtr<re::CPUTexture> const&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__emplace[abi:nn200100]<1ul,re::SharedPtr<re::CPUTexture> const&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v8, a1);
  }

  *(a1 + 8) = -1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a1 + 8) = 1;
  return a1;
}

unint64_t re::internal::Callable<re::TextureAssetLoader::writeAssetToRealityFile(re::AssetHandle const&,re::DynamicString const&,re::RealityFileWritingParameters const&,re::AssetWriteSettings const&,re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> &,re::RealityArchiveWriter *,re::AssetCompatibilityService *,REArchiveCompressionMethod)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*a2 + 64))(a2);
  if (result > **(a1 + 8) || **(a1 + 16) == 1 && result > (**(a1 + 24) * 1.5))
  {
    *a3 = 1;
    return result;
  }

  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 0;
  bytes = 0;
  length = 0;
  v16 = a2;
  v19 = 0;
  if (re::SeekableInputStreamBufferedReader::readNext(&v16, 0xFFFFFFFFFFFFFFFFLL) && length)
  {
    v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (*(v9 + 8))
      {
        v10 = *(v9 + 16);
      }

      else
      {
        v10 = (v9 + 9);
      }

      v13 = 1;
      re::RealityFileWriter::saveEntryToArchive(v7, v10, **(a1 + 40), 1, 0, 0, &v14);
      if (v14)
      {
        **(a1 + 48) = 1;
      }

      else
      {
        *(a3 + 8) = v15;
        v13 = 0;
      }

      *a3 = v13;
      if ((v14 & 1) == 0)
      {
      }

      CFRelease(v8);
      goto LABEL_13;
    }

    v11 = "Failed to allocate source image data";
  }

  else
  {
    v11 = "Failed to read source image data";
  }

  re::WrappedError::make(&v14, @"RERealityFileWriterErrorDomain", 5, v11);
  v12 = v14;
  v14 = 0;
  *a3 = 0;
  *(a3 + 8) = v12;

LABEL_13:
  if (v19)
  {
    (*(*v16 + 24))(v16);
    v19 = 0;
  }

  v16 = 0;
  bytes = 0;
  length = 0;
  result = v20;
  if (v20)
  {
    if (v24)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::writeAssetToRealityFile(re::AssetHandle const&,re::DynamicString const&,re::RealityFileWritingParameters const&,re::AssetWriteSettings const&,re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> &,re::RealityArchiveWriter *,re::AssetCompatibilityService *,REArchiveCompressionMethod)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3E00;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}