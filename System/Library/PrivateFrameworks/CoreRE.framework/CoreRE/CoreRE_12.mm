void re::DynamicArray<unsigned long>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 8 * v4), 8 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<unsigned long>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<float>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<float>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<float>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<float>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<int>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<float>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<int>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<float>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<float>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<float>::add(this, &v10);
  v8 = (*(this + 4) + 4 * *(this + 2) - 4);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<float>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 4 * a3;
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

  return *(a2 + 32) + 4 * a3;
}

void re::DynamicArray<float>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<int>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 4 * v4), 4 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<int>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<int>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<float>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 4 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

re::IntrospectionCStyleArray *re::IntrospectionCStyleArray::IntrospectionCStyleArray(re::IntrospectionCStyleArray *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CB0038;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *(this + 16) = 0;
  return this;
}

{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CB0038;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *(this + 16) = 0;
  return this;
}

void re::IntrospectionCStyleArray::~IntrospectionCStyleArray(re::IntrospectionCStyleArray *this)
{
  *this = &unk_1F5CB0038;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB0038;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CB0038;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

uint64_t re::IntrospectionCStyleArray::childInfo(re::IntrospectionCStyleArray *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 454, v2, v3);
  result = _os_crash("assertion failure: (index == 0) Index out of range.");
  __break(1u);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKJoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigSplineIKJoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigSplineIKJoint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKJoint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKJoint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigSplineIKJoint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigSplineIKJoint>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 80 * v9;
  *v15 = -1;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 80 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RigSplineIKJoint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 80 * a3;
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

  return *(a2 + 32) + 80 * a3;
}

void *re::DynamicArray<re::RigSplineIKJoint>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 80 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::RigSplineIKJoint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      memset(v8 + 8, 0, 56);
      v5 = 80 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 80 * v4;
        v7 = v5 / 0x50uLL + 1;
        do
        {
          *v6 = -1;
          *(v6 + 24) = v8[1];
          *(v6 + 40) = v8[2];
          *(v6 + 56) = v8[3];
          *(v6 + 72) = 0;
          *(v6 + 8) = v8[0];
          v6 += 80;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigSplineIKJoint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 80 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 80;
        v11 -= 80;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 80 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigSplineIKControlPoint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigSplineIKControlPoint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 96 * v9;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *v15 = 0;
  *(v15 + 24) = 1;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 1;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 72) = 0;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 96 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 96 * a3;
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

  return *(a2 + 32) + 96 * a3;
}

uint64_t re::DynamicArray<re::RigSplineIKControlPoint>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 96 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 96;
          v5 -= 96;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = v8 + 96 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v13[9] = 0;
          v13[6] = 0;
          v13[7] = 0;
          v13[5] = 0;
          *(v13 + 16) = 0;
          v17 = (v8 + v10 + 40);
          v18 = *(v8 + v10 + 48);
          v13[5] = *v17;
          *v17 = 0;
          v13[6] = v18;
          *(v12 + 48) = 0;
          v19 = v7[v10 / 8 + 7];
          v13[7] = *(v8 + v10 + 56);
          *(v12 + 56) = v19;
          v20 = v7[v10 / 8 + 9];
          v13[9] = *(v8 + v10 + 72);
          *(v12 + 72) = v20;
          *(v12 + 64) = *(v8 + v10 + 64) + 1;
          *(v13 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          *(v13 + 5) = *(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v17);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 96;
        }

        while (v12 + 96 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigSplineIKControlPoint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 96 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 96;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0;
        *(v7 + 72) = 0;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigSplineIKControlPoint>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigSplineIKControlPoint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::RigSplineIKControlPoint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 96 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 96;
        v11 -= 96;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::RigSplineIKControlPoint>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 96 * v2;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 96;
      v4 -= 96;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 96 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 96 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigComponentConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigComponentConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigComponentConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigComponentConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigComponentConstraint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigComponentConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigComponentConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigComponentConstraint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigComponentConstraint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::RigComponentConstraint>::add(this, v10);
  if (v12)
  {
    if (v14)
    {
      (*(*v12 + 40))();
    }

    v14 = 0;
    *&v13 = 0;
    v12 = 0uLL;
    ++DWORD2(v13);
  }

  if (*(&v10[0] + 1) && *(&v11 + 1))
  {
    (*(**(&v10[0] + 1) + 40))();
  }

  v8 = (*(this + 4) + 88 * *(this + 2) - 88);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::RigComponentConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 88 * a3;
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

  return *(a2 + 32) + 88 * a3;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 88 * v4;
        v6 = v3 + 48;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 40);
          v6 += 88;
          v5 -= 88;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::RigComponentConstraint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 88 * a2 + 48;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10);
      result = re::DynamicArray<unsigned long>::deinit(v10 - 40);
      ++v9;
      v8 += 88;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 1) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 8) = 0;
        *(v7 + 32) = 0;
        *(v7 + 80) = 0;
        *(v7 + 40) = 0uLL;
        *(v7 + 56) = 0uLL;
        *(v7 + 72) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigComponentConstraint>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigComponentConstraint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigComponentConstraint>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::RigComponentConstraint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 88 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 88;
        v11 -= 88;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 88 * v2;
    v4 = *(result + 32) + 48;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v4);
      result = re::DynamicArray<unsigned long>::deinit(v4 - 40);
      v4 += 88;
      v3 -= 88;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 88 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigBasicConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigBasicConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigBasicConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigBasicConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigBasicConstraint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigBasicConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigBasicConstraint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigBasicConstraint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::RigBasicConstraint>::add(this, v10);
  if (*(&v11 + 1))
  {
    if (*(&v13 + 1))
    {
      (*(**(&v11 + 1) + 40))();
    }

    *(&v13 + 1) = 0;
    v12 = 0uLL;
    *(&v11 + 1) = 0;
    LODWORD(v13) = v13 + 1;
  }

  if (*&v10[0] && v11)
  {
    (*(**&v10[0] + 40))();
  }

  v8 = (*(this + 4) + 80 * *(this + 2) - 80);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::RigBasicConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 80 * a3;
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

  return *(a2 + 32) + 80 * a3;
}

uint64_t re::DynamicArray<re::RigBasicConstraint>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 80 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 80;
          v5 -= 80;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::RigBasicConstraint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 72) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigBasicConstraint>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigBasicConstraint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::RigBasicConstraint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 80 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 80;
        v11 -= 80;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::RigBasicConstraint>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 80 * v2;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 80;
      v4 -= 80;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 80 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigAimConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigAimConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigAimConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigAimConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigAimConstraint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigAimConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigAimConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigAimConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigAimConstraint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigAimConstraint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  v17 = 0xFFFFFFFFFFFFFFFFLL;
  v8 = re::DynamicArray<re::RigAimConstraint>::add(this, v11);
  if (*(&v14 + 1))
  {
    if (*(&v16 + 1))
    {
      (*(**(&v14 + 1) + 40))(v8);
    }

    *(&v16 + 1) = 0;
    v15 = 0uLL;
    *(&v14 + 1) = 0;
    LODWORD(v16) = v16 + 1;
  }

  if (v12 && v14)
  {
    (*(*v12 + 40))(v8);
  }

  v9 = (*(this + 4) + 144 * *(this + 2) - 144);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigAimConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 144 * a3;
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

  return *(a2 + 32) + 144 * a3;
}

uint64_t re::DynamicArray<re::RigAimConstraint>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 144 * v4;
        v6 = v3 + 48;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6 + 40);
          re::DynamicArray<unsigned long>::deinit(v6);
          v6 += 144;
          v5 -= 144;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::RigAimConstraint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 144 * a2 + 48;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 144;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigAimConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 144 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 4) = 0;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 60) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 96) = 0uLL;
        *(v7 + 112) = 0;
        *(v7 + 120) = 0;
        *(v7 + 128) = -1;
        v6 += 144;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigAimConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigAimConstraint>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigAimConstraint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigAimConstraint>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::RigAimConstraint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 144 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 144;
        v11 -= 144;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::RigAimConstraint>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 144 * v2;
    v4 = *(result + 32) + 48;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v4 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 144;
      v3 -= 144;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 144 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 144 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeChannel>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNodeChannel>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNodeChannel>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNodeChannel>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeChannel>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeChannel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNodeChannel>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 16 * v9) = xmmword_1E3049610;
  v15 = *(a4 + 16) + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (*(a4 + 32) + 16 * v15 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

unint64_t re::IntrospectionDynamicArray<re::RigNodeChannel>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void *re::DynamicArray<re::RigNodeChannel>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 16 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = 0;
        *(v6 + 8) = -1;
        v6 += 16;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeChannel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstant>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNodeConstant>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNodeConstant>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstant>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstant>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeConstant>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNodeConstant>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 16 * v9) = xmmword_1E304DD20;
  v15 = *(a4 + 16) + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (*(a4 + 32) + 16 * v15 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

unint64_t re::IntrospectionDynamicArray<re::RigNodeConstant>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void *re::DynamicArray<re::RigNodeConstant>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 16 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = -1;
        *(v6 + 8) = -1;
        v6 += 16;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeConstant>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeConstant>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 16 * v9) = xmmword_1E304DD20;
  v15 = *(a4 + 16) + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (*(a4 + 32) + 16 * v15 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

unint64_t re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeConstant>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigExpressionParameter>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigExpressionParameter>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigExpressionParameter>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigExpressionParameter>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigExpressionParameter>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeChannel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigExpressionParameter>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 16 * v9) = xmmword_1E3049610;
  v15 = *(a4 + 16) + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (*(a4 + 32) + 16 * v15 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

unint64_t re::IntrospectionDynamicArray<re::RigExpressionParameter>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeChannel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigExpression>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigExpression>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigExpression>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigExpression>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigExpression>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigExpression>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigExpression>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 24 * v9);
  *v15 = 0xFFFFFFFFLL;
  v15[1] = -1;
  v15[2] = -1;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 24 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RigExpression>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::RigExpression>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v5;
      if (24 * v5 >= 1)
      {
        v7 = v3[4] + 24 * v4;
        v8 = v6 / 0x18 + 1;
        do
        {
          *v7 = -1;
          *(v7 + 8) = -1;
          *(v7 + 16) = -1;
          v7 += 24;
          --v8;
        }

        while (v8 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigExpression>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigTwoBoneIKHandles>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::RigTwoBoneIKHandles>::add(this, v10);
  if (*(&v21 + 1))
  {
    if (*(&v23 + 1))
    {
      (*(**(&v21 + 1) + 40))();
    }

    *(&v23 + 1) = 0;
    v22 = 0uLL;
    *(&v21 + 1) = 0;
    LODWORD(v23) = v23 + 1;
  }

  if (v19)
  {
    if (v21)
    {
      (*(*v19 + 40))();
    }

    *&v21 = 0;
    *&v20 = 0;
    v19 = 0uLL;
    ++DWORD2(v20);
  }

  if (*(&v16 + 1))
  {
    if (*(&v18 + 1))
    {
      (*(**(&v16 + 1) + 40))();
    }

    *(&v18 + 1) = 0;
    v17 = 0uLL;
    *(&v16 + 1) = 0;
    LODWORD(v18) = v18 + 1;
  }

  if (v14)
  {
    if (v16)
    {
      (*(*v14 + 40))();
    }

    *&v16 = 0;
    *&v15 = 0;
    v14 = 0uLL;
    ++DWORD2(v15);
  }

  if (*(&v11 + 1))
  {
    if (*(&v13 + 1))
    {
      (*(**(&v11 + 1) + 40))();
    }

    *(&v13 + 1) = 0;
    v12 = 0uLL;
    *(&v11 + 1) = 0;
    LODWORD(v13) = v13 + 1;
  }

  if (*&v10[0] && v11)
  {
    (*(**&v10[0] + 40))();
  }

  v8 = (*(this + 4) + 240 * *(this + 2) - 240);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 240 * a3;
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

  return *(a2 + 32) + 240 * a3;
}

uint64_t re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 240 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 200);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 160);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 120);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 80);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 40);
          re::DynamicArray<unsigned long>::deinit(v3 + v5);
          v5 += 240;
        }

        while (v6 != v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::RigTwoBoneIKHandles>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 240 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 200);
      re::DynamicArray<unsigned long>::deinit(v10 + 160);
      re::DynamicArray<unsigned long>::deinit(v10 + 120);
      re::DynamicArray<unsigned long>::deinit(v10 + 80);
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 240;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 240 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 232) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0uLL;
        *(v7 + 88) = 0uLL;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0uLL;
        *(v7 + 168) = 0uLL;
        *(v7 + 184) = 0;
        *(v7 + 192) = 0uLL;
        *(v7 + 208) = 0uLL;
        v6 += 240;
        *(v7 + 224) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 240 * v8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 200);
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 160);
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 120);
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 80);
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 40);
        re::DynamicArray<unsigned long>::deinit(v10 + v9);
        v9 += 240;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v12 = re::DynamicArray<re::RigTwoBoneIKHandles>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 240 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 240;
        v15 -= 240;
      }

      while (v15);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 240 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 240 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigSingleChainIKHandles>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigSingleChainIKHandles>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  DWORD2(v17) = 1008981770;
  v8.n128_f32[0] = re::DynamicArray<re::RigSingleChainIKHandles>::add(this, v11);
  if (v15)
  {
    if (v17)
    {
      (*(*v15 + 40))(v8.n128_f32[0]);
    }

    *&v17 = 0;
    *&v16 = 0;
    v15 = 0uLL;
    ++DWORD2(v16);
  }

  if (*(&v12 + 1))
  {
    if (*(&v14 + 1))
    {
      (*(**(&v12 + 1) + 40))(v8);
    }

    *(&v14 + 1) = 0;
    v13 = 0uLL;
    *(&v12 + 1) = 0;
    LODWORD(v14) = v14 + 1;
  }

  if (*&v11[0] && v12)
  {
    (*(**&v11[0] + 40))(v8);
  }

  v9 = (*(this + 4) + (*(this + 2) << 7) - 128);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + (a3 << 7);
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

  return *(a2 + 32) + (a3 << 7);
}

uint64_t re::DynamicArray<re::RigSingleChainIKHandles>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 7;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 80);
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 128;
          v5 -= 128;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::RigSingleChainIKHandles>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = a2 << 7;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 80);
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 128;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 7;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 112) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0uLL;
        *(v7 + 88) = 0uLL;
        *(v7 + 104) = 0;
        v6 += 128;
        *(v7 + 120) = 1008981770;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

float re::DynamicArray<re::RigSingleChainIKHandles>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigSingleChainIKHandles>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 7);
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  *(v5 + 72) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 64) = 0;
  v9 = *(a2 + 48);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 48) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v10 = *(v5 + 56);
  *(v5 + 56) = *(a2 + 56);
  *(a2 + 56) = v10;
  v11 = *(v5 + 72);
  *(v5 + 72) = *(a2 + 72);
  *(a2 + 72) = v11;
  ++*(a2 + 64);
  ++*(v5 + 64);
  *(v5 + 112) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 80) = 0;
  *(v5 + 104) = 0;
  v12 = *(a2 + 88);
  *(v5 + 80) = *(a2 + 80);
  *(v5 + 88) = v12;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v13 = *(v5 + 96);
  *(v5 + 96) = *(a2 + 96);
  *(a2 + 96) = v13;
  v14 = *(v5 + 112);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  ++*(a2 + 104);
  ++*(v5 + 104);
  result = *(a2 + 120);
  *(v5 + 120) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigSingleChainIKHandles>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v8 << 7;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v9 + 80);
        re::DynamicArray<unsigned long>::deinit(v9 + 40);
        re::DynamicArray<unsigned long>::deinit(v9);
        v9 += 128;
        v10 -= 128;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigSingleChainIKHandles>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::RigSingleChainIKHandles>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = v12 << 7;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 128;
        v14 -= 128;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + (a2 << 7);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 7);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigSplineIKHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigSplineIKHandle>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKHandle>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigSplineIKHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKHandle>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigSplineIKHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigSplineIKHandle>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = 0uLL;
  v27 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  *&v28 = -1;
  *(&v28 + 1) = -1;
  v29 = 0xFFFFFFFFFFFFFFFFLL;
  v33 = 0u;
  v34 = 0u;
  LODWORD(v34) = 0;
  v31 = 0u;
  v32 = 0u;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
      {
        v12 = 2 * v9;
        v13 = v9 == 0;
        v14 = 8;
        if (!v13)
        {
          v14 = v12;
        }

        if (v14 <= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v14;
        }

        re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a4, v15);
      }

      else
      {
        re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }

      v8 = 0uLL;
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 240 * v10;
  *v16 = 1008981770;
  *(v16 + 8) = v8;
  *(v16 + 24) = 0;
  *(v16 + 40) = 0;
  *(v16 + 32) = 1;
  *(v16 + 48) = v8;
  v24 = v8;
  *(v16 + 64) = 0;
  *&v25 = 0;
  *(v16 + 80) = 0;
  *&v26[0] = 0;
  DWORD2(v25) = 1;
  *(v16 + 72) = 1;
  *(v16 + 88) = v8;
  *(v26 + 8) = v8;
  *(v16 + 104) = 0;
  *(&v26[1] + 1) = 0;
  *(v16 + 120) = 0;
  *(&v27 + 1) = 0;
  LODWORD(v27) = 1;
  *(v16 + 112) = 1;
  v17 = v28;
  v18 = v30;
  *(v16 + 144) = v29;
  *(v16 + 160) = v18;
  *(v16 + 128) = v17;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  *(v16 + 224) = v34;
  *(v16 + 192) = v20;
  *(v16 + 208) = v21;
  *(v16 + 176) = v19;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::RigSplineIKControlPoint>::deinit(&v24);
  v22 = (*(a4 + 32) + 240 * *(a4 + 16) - 240);
  re::introspectionInitElement(a2, a3, a1[6], v22);
  return v22;
}

unint64_t re::IntrospectionDynamicArray<re::RigSplineIKHandle>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 240 * a3;
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

  return *(a2 + 32) + 240 * a3;
}

uint64_t re::DynamicArray<re::RigSplineIKHandle>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 240 * v4;
        v6 = v3 + 88;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v6 - 40);
          re::DynamicArray<unsigned long>::deinit(v6 - 80);
          v6 += 240;
          v5 -= 240;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::RigSplineIKHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigSplineIKHandle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v31, v33);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v32, v34);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 240 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[5] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v12 = v8 + 8;
          v13 = *(v8 + 16);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[2] = v13;
          *(v8 + 16) = 0;
          v14 = v11[3];
          v11[3] = *(v8 + 24);
          *(v8 + 24) = v14;
          v15 = v11[5];
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v15;
          ++*(v8 + 32);
          LODWORD(v15) = *(v11 + 8) + 1;
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v17 = v8 + 48;
          v16 = *(v8 + 48);
          *(v11 + 8) = v15;
          v18 = *(v8 + 56);
          v11[6] = v16;
          *(v8 + 48) = 0;
          v11[7] = v18;
          *(v8 + 56) = 0;
          v19 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v19;
          v20 = v11[10];
          v11[10] = *(v8 + 80);
          *(v8 + 80) = v20;
          ++*(v8 + 72);
          ++*(v11 + 18);
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v21 = *(v8 + 88);
          v22 = *(v8 + 96);
          v23 = v8 + 88;
          v11[11] = v21;
          v11[12] = v22;
          *v23 = 0;
          *(v23 + 8) = 0;
          v24 = v11[13];
          v11[13] = *(v23 + 16);
          *(v23 + 16) = v24;
          v25 = v11[15];
          v11[15] = *(v23 + 32);
          *(v23 + 32) = v25;
          ++*(v23 + 24);
          ++*(v11 + 28);
          v26 = *(v23 + 40);
          v27 = *(v23 + 72);
          *(v11 + 9) = *(v23 + 56);
          *(v11 + 10) = v27;
          *(v11 + 8) = v26;
          v28 = *(v23 + 88);
          v29 = *(v23 + 104);
          v30 = *(v23 + 120);
          *(v11 + 56) = *(v23 + 136);
          *(v11 + 12) = v29;
          *(v11 + 13) = v30;
          *(v11 + 11) = v28;
          re::DynamicArray<unsigned long>::deinit(v23);
          re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v17);
          re::DynamicArray<unsigned long>::deinit(v12);
          v11 += 30;
          v8 = v23 + 152;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigSplineIKHandle>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 240 * a2 + 88;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10);
      re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v10 - 40);
      result = re::DynamicArray<unsigned long>::deinit(v10 - 80);
      ++v9;
      v8 += 240;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSplineIKHandle>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 240 * v4 + 176;
      do
      {
        v7 = v3[4] + v6;
        *(v7 - 176) = 1008981770;
        *(v7 - 160) = 0;
        *(v7 - 152) = 0;
        *(v7 - 168) = 0;
        *(v7 - 144) = 0;
        *(v7 - 136) = 0uLL;
        *(v7 - 120) = 0uLL;
        *(v7 - 104) = 0;
        *(v7 - 96) = 0uLL;
        *(v7 - 80) = 0uLL;
        *(v7 - 64) = 0;
        *(v7 - 56) = 0;
        *(v7 - 48) = -1;
        *(v7 - 40) = -1;
        *(v7 - 32) = -1;
        *(v7 - 16) = -1;
        *(v7 - 8) = -1;
        *(v7 + 48) = 0;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        v6 += 240;
        *v7 = 0uLL;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 240 * v8;
      v10 = *(a1 + 32) + 88;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v10);
        re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v10 - 40);
        re::DynamicArray<unsigned long>::deinit(v10 - 80);
        v10 += 240;
        v9 -= 240;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigSplineIKHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::RigSplineIKHandle>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 240 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 240;
        v14 -= 240;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 240 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 240 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigTransform>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigTransform>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigTransform>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigTransform>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigTransform>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigTransform>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigTransform>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigTransform>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigTransform>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  memset(v10, 0, sizeof(v10));
  v11 = 0x3F8000003F800000;
  v12 = 1065353216;
  LOBYTE(v13) = 7;
  re::DynamicArray<re::RigTransform>::add(this, v10);
  v8 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::RigTransform>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + (a3 << 6);
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

  return *(a2 + 32) + (a3 << 6);
}

void *re::DynamicArray<re::RigTransform>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigTransform>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + (v4 << 6);
      v7 = v5 + 1;
      do
      {
        *v6 = 0uLL;
        *(v6 + 16) = 0uLL;
        *(v6 + 32) = 0x3F8000003F800000;
        *(v6 + 40) = 1065353216;
        *(v6 + 48) = 7;
        v6 += 64;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigTransform>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigTransform>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigTransform>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigJoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigJoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigJoint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigJoint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigJoint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigJoint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigJoint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigJoint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigJoint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v10[0] = 0u;
  v10[1] = xmmword_1E30474D0;
  v10[2] = 0u;
  v10[3] = xmmword_1E30474D0;
  v11 = 0x3F8000003F800000;
  v12 = 1065353216;
  LOBYTE(v13) = 7;
  re::DynamicArray<re::RigJoint>::add(this, v10);
  v8 = (*(this + 4) + 96 * *(this + 2) - 96);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::RigJoint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 96 * a3;
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

  return *(a2 + 32) + 96 * a3;
}

void *re::DynamicArray<re::RigJoint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigJoint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 96 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 96 * v4;
        v7 = v5 / 0x60uLL + 1;
        do
        {
          *v6 = 0uLL;
          *(v6 + 16) = xmmword_1E30474D0;
          *(v6 + 32) = 0uLL;
          *(v6 + 48) = xmmword_1E30474D0;
          *(v6 + 64) = 0x3F8000003F800000;
          *(v6 + 72) = 1065353216;
          *(v6 + 80) = 7;
          v6 += 96;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigJoint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigJoint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigJoint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 96 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 96;
        v11 -= 96;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 96 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 96 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNodeConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNodeConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeChannel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNodeConstraint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = xmmword_1E3049610;
  re::DynamicArray<re::RigNodeConstraint>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::RigNodeConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeChannel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigIKHandles>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigIKHandles>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigIKHandles>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeChannel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigIKHandles>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = xmmword_1E3049610;
  re::DynamicArray<re::RigNodeConstraint>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::RigIKHandles>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeChannel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigNode>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNode>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11.n128_u64[0] = 0;
  v11.n128_u64[1] = &str_67;
  v12 = 0;
  v13 = -1;
  v14 = -1;
  v15 = xmmword_1E3049610;
  re::DynamicArray<re::RigNode>::add(this, &v11);
  if (v11.n128_u8[0])
  {
    if (v11.n128_u8[0])
    {
    }
  }

  v9 = (*(this + 4) + 56 * *(this + 2) - 56);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 56 * a3;
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

  return *(a2 + 32) + 56 * a3;
}

uint64_t re::DynamicArray<re::RigNode>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 56 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 56);
          v5 -= 56;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::DynamicArray<re::RigNode>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 56 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((result[4] + v8));
      ++v9;
      v8 += 56;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::RigNode>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0;
        *(v7 + 24) = -1;
        *(v7 + 32) = -1;
        *(v7 + 40) = xmmword_1E3049610;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigNode>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigNode>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNode>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::RigNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 56 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 56;
        v11 -= 56;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::RigNode>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 56 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 56);
      v4 -= 56;
    }

    while (v4);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 56 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 56 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigPoseNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigPoseNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigPoseNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigPoseNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigPoseNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigPoseNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigPoseNode>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 24 * v9);
  *v15 = 0;
  v15[1] = -1;
  v15[2] = -1;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 24 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RigPoseNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::RigPoseNode>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v5;
      if (24 * v5 >= 1)
      {
        v7 = v3[4] + 24 * v4;
        v8 = v6 / 0x18 + 1;
        do
        {
          *v7 = 0;
          *(v7 + 8) = -1;
          *(v7 + 16) = -1;
          v7 += 24;
          --v8;
        }

        while (v8 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigPoseNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigPose>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigPose>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigPose>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigPose>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigPose>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigPose>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigPose>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigPose>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigPose>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigPose>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigPose>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigPose>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 32 * v9;
  *v15 = 0;
  *(v15 + 8) = &str_67;
  *(v15 + 16) = xmmword_1E3049610;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 32 * v16 - 32);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RigPose>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 32 * a3;
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

  return *(a2 + 32) + 32 * a3;
}

uint64_t re::DynamicArray<re::RigPose>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 32 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 32);
          v5 -= 32;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::RigPose>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigPose>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 1) = *(v8 + 1);
          re::StringID::destroyString(v8);
          v8 += 4;
          v11 += 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::RigPose>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((result[4] + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::RigPose>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = xmmword_1E3049610;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigPose>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigPose>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigPose>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigPose>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::RigPose>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::RigPose>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 32 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 32);
      v4 -= 32;
    }

    while (v4);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::RigDefinition::~RigDefinition(re::RigDefinition *this)
{
  re::DynamicArray<re::RigPose>::deinit(this + 1104);
  re::DynamicArray<unsigned long>::deinit(this + 1064);
  re::DynamicArray<re::RigNode>::deinit(this + 1024);
  re::DynamicArray<unsigned long>::deinit(this + 984);
  re::DynamicArray<unsigned long>::deinit(this + 944);
  re::DynamicArray<unsigned long>::deinit(this + 904);
  re::DynamicArray<unsigned long>::deinit(this + 864);
  re::DynamicArray<re::RigSplineIKHandle>::deinit(this + 824);
  re::DynamicArray<re::RigSingleChainIKHandles>::deinit(this + 784);
  re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(this + 744);
  re::DynamicArray<unsigned long>::deinit(this + 704);
  re::DynamicArray<unsigned long>::deinit(this + 664);
  re::DynamicArray<unsigned long>::deinit(this + 624);
  re::DynamicArray<unsigned long>::deinit(this + 520);
  re::DynamicArray<unsigned long>::deinit(this + 480);
  re::DynamicArray<unsigned long>::deinit(this + 440);
  re::DynamicArray<unsigned long>::deinit(this + 400);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::DynamicArray<unsigned long>::deinit(this + 280);
  re::DynamicArray<unsigned long>::deinit(this + 240);
  re::DynamicArray<unsigned long>::deinit(this + 200);
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<re::RigAimConstraint>::deinit(this + 120);
  re::DynamicArray<re::RigBasicConstraint>::deinit(this + 80);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 40);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this);
}

re::internal::AutoRetargetRigGraphNode *re::internal::AutoRetargetRigGraphNode::AutoRetargetRigGraphNode(re::internal::AutoRetargetRigGraphNode *this, re::Allocator *a2, const re::RigHierarchy *a3, const re::RigHierarchy *a4)
{
  *this = 0;
  re::internal::AutoRetargetRigGraphNode::makeJointDefArray(a2, a3, this + 1);
  re::internal::AutoRetargetRigGraphNode::makeJointDefArray(a2, a4, this + 4);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v7 = *(a4 + 27);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  re::FixedArray<CoreIKTransform>::init<>(this + 10, a2, v7);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 128) = 0;
  *(this + 15) = 0;
  *(this + 17) = a2;
  return this;
}

void re::internal::AutoRetargetRigGraphNode::makeJointDefArray(re::Allocator *a1@<X1>, const re::RigHierarchy *a2@<X2>, void *a3@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 27);
  *a3 = a1;
  a3[1] = v4;
  a3[2] = 0;
  if (v4)
  {
    if (!(v4 >> 59))
    {
      v6 = (*(*a1 + 32))(a1, 32 * v4, 8);
      a3[2] = v6;
      if (!v6)
      {
        goto LABEL_40;
      }

      v8 = v6;
      v9 = v4 - 1;
      if (v4 == 1)
      {
        *v6 = 0;
        v6[1] = &str_67;
        v10 = v6 + 3;
        v6[2] = 0;
      }

      else
      {
        v10 = v6 + 3;
        do
        {
          *(v10 - 3) = 0;
          *(v10 - 2) = &str_67;
          *(v10 - 1) = 0;
          *v10 = &str_67;
          v10 += 4;
          --v9;
        }

        while (v9);
        *(v10 - 3) = 0;
        *(v10 - 2) = &str_67;
        *(v10 - 1) = 0;
      }

      v11 = 0;
      v12 = 0;
      *v10 = &str_67;
      while (1)
      {
        v32 = 0;
        __s = &str_67;
        *&v34 = 0;
        *(&v34 + 1) = &str_67;
        v13 = *(a2 + 27);
        if (v13 <= v12)
        {
          break;
        }

        re::StringID::operator=(&v32, (*(a2 + 29) + v11));
        v14 = strlen(__s);
        *&v47 = __s;
        *(&v47 + 1) = v14;
        v15 = re::RigHierarchy::jointParent(a2, &v47, 1, &v36);
        if (v36 == 1 && *&v37[4])
        {
          re::StringID::operator=(&v34, *&v37[4]);
        }

        else
        {
          *&v47 = 0;
          *(&v47 + 1) = &str_67;
          v17 = v47;
          *&v47 = 0;
          *(&v47 + 1) = &str_67;
          v18 = v34;
          v19 = *(&v34 + 1);
          v34 = v17;
          if (v18)
          {
            if (v47)
            {
              if (v47)
              {
              }
            }
          }
        }

        if (v4 == v12)
        {
          goto LABEL_35;
        }

        re::StringID::operator=(v8, &v32);
        v21 = re::StringID::operator=(v8 + 2, &v34);
        if ((v36 & 1) == 0)
        {
          v21 = *&v39[4];
          if (*&v39[4])
          {
            if (v39[12])
            {
              v21 = (*(**&v39[4] + 40))();
            }
          }
        }

        if (v34)
        {
          if (v34)
          {
          }
        }

        *&v34 = 0;
        *(&v34 + 1) = &str_67;
        if (v32)
        {
          if (v32)
          {
          }
        }

        ++v12;
        v8 += 4;
        v11 += 16;
        if (v4 == v12)
        {
          return;
        }
      }

      *v40 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v36 = 136315906;
      *v37 = "operator[]";
      *&v37[8] = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      *&v37[10] = 797;
      v38 = 2048;
      *v39 = v12;
      *&v39[8] = 2048;
      *&v39[10] = v13;
      _os_log_send_and_compose_impl(v24, v40, &v47, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v30, v31);
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v42 = 468;
      v43 = 2048;
      v44 = v4;
      v45 = 2048;
      v46 = v4;
      _os_log_send_and_compose_impl(v27, &v35, &v47, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v40, 38, v30, v31);
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, a1, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, v4);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v28, v29);
    __break(1u);
LABEL_40:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }
}

uint64_t re::internal::AutoRetargetRigGraphNode::initialize(re::internal::AutoRetargetRigGraphNode *this, const re::RigDataValue *a2, const re::RigDataValue *a3, const re::RigDataValue *a4, const re::RigDataValue *a5, const re::RigDataValue *a6)
{
  if (*(this + 128))
  {
    return 1;
  }

  re::internal::getSRTFromRDV(v36, a4);
  re::internal::getSRTFromRDV(v35, a5);
  v12 = vmulq_f32(v36[0], v36[0]);
  if (fabsf(v12.f32[2] + vaddv_f32(*v12.f32)) < 1.0e-10)
  {
    return 0;
  }

  v13 = vmulq_f32(v35[0], v35[0]);
  if (fabsf(v13.f32[2] + vaddv_f32(*v13.f32)) < 1.0e-10)
  {
    return 0;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  re::FixedArray<CoreIKBaseJoint>::init<>(&v32, *(this + 17), *(a2 + 32));
  re::internal::AutoRetargetRigGraphNode::initialize(re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&)::$_0::operator()(a2, this + 8, &v32);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  re::FixedArray<CoreIKBaseJoint>::init<>(&v29, *(this + 17), *(a3 + 32));
  re::internal::AutoRetargetRigGraphNode::initialize(re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&)::$_0::operator()(a3, this + 32, &v29);
  v16 = v30;
  v15 = v31;
  v18 = v33;
  v17 = v34;
  RetargetRig = CoreIKAutoMatchingGenerateRetargetRig();
  if (*(a6 + 96) && *(a6 + 32))
  {
    v20 = 0;
    do
    {
      v21 = re::RigDataValue::attributeValue(a6, v20);
      v22 = re::RigDataValue::attributeValue(v21, 0);
      v24 = *re::RigDataValue::getRuntimeValue<int>(v22, v23);
      v25 = re::RigDataValue::attributeValue(v21, 1uLL);
      re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v25, v26);
      if ((v24 & 0x80000000) == 0 && v18 > v24)
      {
        CoreIKRigJointSetSourceRotationOffset();
      }

      ++v20;
    }

    while (v20 < *(a6 + 32));
  }

  v27 = MEMORY[0x1E6903C40](RetargetRig);
  if (!*(this + 7))
  {
    re::FixedArray<CoreIKTransform>::init<>(this + 7, *(this + 17), v27);
  }

  if (!*(this + 13))
  {
    re::FixedArray<unsigned long>::init<>(this + 13, *(this + 17), v27);
  }

  CoreIKAutoMatchingGenerateHierarchyToRigMapping();
  v28 = MEMORY[0x1E6903790](RetargetRig);
  *this = v28;
  if (RetargetRig)
  {
    MEMORY[0x1E69037D0](RetargetRig);
    v28 = *this;
  }

  v6 = v28 != 0;
  *(this + 128) = v6;
  if (v16 && v29)
  {
    (*(*v29 + 40))(v29, v15);
  }

  if (v18 && v32)
  {
    (*(*v32 + 40))(v32, v17);
  }

  return v6;
}

void re::FixedArray<CoreIKBaseJoint>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 48 * a3;
  v6 = (*(*a2 + 32))(a2, 48 * a3, 16);
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
    bzero(v6, v5 - 48);
    v8 = (v8 + v5 - 48);
  }

  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
}

__n128 re::internal::AutoRetargetRigGraphNode::initialize(re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&)::$_0::operator()(re::RigDataValue *this, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 32))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(a2 + 8);
      if (v9 <= v8)
      {
        *v26 = 0;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v25 = 136315906;
        *&v25[4] = "operator[]";
        *&v25[12] = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        *&v25[14] = 476;
        *&v25[18] = 2048;
        *&v25[20] = v8;
        *&v25[28] = 2048;
        *&v25[30] = v9;
        _os_log_send_and_compose_impl(v19, v26, &v33, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23, v24);
        _os_crash_msg();
        __break(1u);
LABEL_11:
        v24 = 0;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v26 = 136315906;
        *&v26[4] = "operator[]";
        v27 = 1024;
        if (v21)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v28 = 468;
        v29 = 2048;
        v30 = v8;
        v31 = 2048;
        v32 = v9;
        _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v26, 38, v23);
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(a2 + 16) + v6;
      v11 = *(v10 + 8);
      v12 = *(v10 + 24);
      v13 = re::RigDataValue::attributeValue(this, v8);
      *&v25[8] = 1065353216;
      *&v25[16] = 0;
      *v25 = 0x3F8000003F800000;
      *&v25[24] = 0x3F80000000000000;
      *&v25[32] = 0uLL;
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v13, v25);
      v9 = *(a3 + 8);
      if (v9 <= v8)
      {
        goto LABEL_11;
      }

      result = *&v25[16];
      v15 = *&v25[32];
      v16 = (*(a3 + 16) + v7);
      v16->n128_u64[0] = v11;
      v16->n128_u64[1] = v12;
      v16[1].n128_u64[0] = v15;
      v16[1].n128_u32[2] = DWORD2(v15);
      v16[2] = result;
      ++v8;
      v7 += 48;
      v6 += 32;
    }

    while (v8 < *(this + 32));
  }

  return result;
}

uint64_t re::internal::AutoRetargetRigGraphNode::solveAndUpdate(re::internal::AutoRetargetRigGraphNode *this, re::RigDataValue *a2, const re::RigDataValue *a3, re::RigDataValue *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (*(this + 8))
  {
    v10 = 0;
    v11 = 0;
    v5 = 0x3F8000003F800000;
    v4 = 0x3F80000000000000;
    while (1)
    {
      v12 = *(this + 14);
      if (v12 <= v11)
      {
        break;
      }

      v13 = *(*(this + 15) + 8 * v11);
      *v40 = 0x3F8000003F800000;
      *&v40[8] = 1065353216;
      *&v40[16] = 0;
      *&v40[24] = 0x3F80000000000000;
      *&v40[32] = 0uLL;
      v14 = re::RigDataValue::attributeValue(a2, v13);
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v14, v40);
      v12 = *(this + 8);
      if (v12 <= v11)
      {
        goto LABEL_29;
      }

      v16 = *&v40[16];
      v15 = *&v40[32];
      v17 = *(this + 9) + v10;
      *(v17 + 8) = *&v40[40];
      *v17 = v15;
      *(v17 + 16) = v16;
      ++v11;
      v10 += 32;
      if (v11 >= *(this + 8))
      {
        goto LABEL_8;
      }
    }

    *v41 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v48 = 0u;
    v49 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v40 = 136315906;
    *&v40[4] = "operator[]";
    *&v40[12] = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    *&v40[14] = 468;
    *&v40[18] = 2048;
    *&v40[20] = v11;
    *&v40[28] = 2048;
    *&v40[30] = v12;
    _os_log_send_and_compose_impl(v28, v41, &v48, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v40, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v39 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    v42 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v43 = 468;
    v44 = 2048;
    v45 = v11;
    v46 = 2048;
    v47 = v12;
    _os_log_send_and_compose_impl(v31, &v39, &v48, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v41, 38, v38);
    _os_crash_msg();
    __break(1u);
LABEL_33:
    *v41 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v48 = 0u;
    v49 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v40 = 136315906;
    *&v40[4] = "operator[]";
    *&v40[12] = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    *&v40[14] = 468;
    *&v40[18] = 2048;
    *&v40[20] = a2;
    *&v40[28] = 2048;
    *&v40[30] = v12;
    _os_log_send_and_compose_impl(v34, v41, &v48, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v40, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
LABEL_37:
    v39 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    v42 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v43 = 789;
    v44 = 2048;
    v45 = v4;
    v46 = 2048;
    v47 = v5;
    _os_log_send_and_compose_impl(v37, &v39, &v48, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v41, 38, v38);
    _os_crash_msg();
    __break(1u);
  }

LABEL_8:
  re::internal::transferPose(a3, this + 80);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v18 = CoreIKSolve();
  if (re::internal::enableSignposts(0, 0))
  {
    CoreIKSolverGetConstraintCount();
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::transferPose(a2, a4, v19);
  if (!v18 && *(this + 8))
  {
    v20 = 0;
    a2 = 0;
    do
    {
      v12 = *(this + 14);
      if (v12 <= a2)
      {
        goto LABEL_33;
      }

      v4 = *(*(this + 15) + 8 * a2);
      v21 = (*(this + 9) + v20);
      v22 = *(v21 + 2);
      v23 = *(v21 + 3);
      v24 = *v21;
      *v40 = 0x3F8000003F800000;
      *&v40[8] = 1065353216;
      *&v40[16] = v22;
      *&v40[24] = v23;
      *&v40[32] = v24;
      v5 = *(a4 + 32);
      if (v5 <= v4)
      {
        goto LABEL_37;
      }

      re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(a4 + 34) + 288 * v4, v40);
      a2 = (a2 + 1);
      v20 += 32;
    }

    while (a2 < *(this + 8));
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    return kdebug_trace();
  }

  return result;
}

re::RigDataValue *re::internal::GameRigSettingsUpdateHelper::updateRigJointSettings(re::RigDataValue *this, uint64_t a2)
{
  if (*(this + 32))
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = re::RigDataValue::attributeValue(v2, v3);
      v5 = re::RigDataValue::attributeValue(v4, 0);
      re::RigDataValue::getRuntimeValue<float>(v5, v6);
      v7 = re::RigDataValue::attributeValue(v4, 1uLL);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v7, v8);
      v9 = re::RigDataValue::attributeValue(v4, 2uLL);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v9, v10);
      CoreIKGenericSolverGetJoint();
      CoreIKJointSetRetargetingGain();
      CoreIKJointSetRetargetingGainDOF();
      this = CoreIKJointSetRotationStiffness();
      ++v3;
    }

    while (v3 < *(v2 + 32));
  }

  return this;
}

re::RigDataValue *re::internal::GameRigSettingsUpdateHelper::updateRigTaskSettings(re::RigDataValue *this, uint64_t a2)
{
  if (*(this + 32))
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = re::RigDataValue::attributeValue(v3, v4);
      v6 = re::RigDataValue::attributeValue(v5, 0);
      v14 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v6, v7);
      v8 = re::RigDataValue::attributeValue(v5, 1uLL);
      v13 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v8, v9);
      v10 = re::RigDataValue::attributeValue(v5, 2uLL);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v10, v11);
      MEMORY[0x1E6903A00](a2, v4);
      v12 = MEMORY[0x1E69038E0]();
      MEMORY[0x1E6903BF0](v14);
      MEMORY[0x1E6903BE0](v12, v13);
      this = CoreIKGenericConstraintSetLookAtAxis();
      ++v4;
    }

    while (v4 < *(v3 + 32));
  }

  return this;
}

uint64_t re::internal::GameRigSettingsUpdateHelper::updateRigSolverSettings(re::RigDataValue *a1, uint64_t a2)
{
  v4 = re::RigDataValue::attributeValue(a1, 0);
  v6 = *re::RigDataValue::getRuntimeValue<int>(v4, v5);
  v7 = re::RigDataValue::attributeValue(a1, 1uLL);
  v9 = *re::RigDataValue::getRuntimeValue<float>(v7, v8);
  MEMORY[0x1E6903AB0](a2, v6);
  v10.n128_u32[0] = v9;

  return MEMORY[0x1EEDF9410](a2, v10);
}

void re::internal::registerMakeIKLookAtTask(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719508;
  v11[1] = *&off_1E8719518;
  v11[2] = xmmword_1E8719528;
  v11[3] = *&off_1E8719538;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKLookAtTaskCompile(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v14);
    __break(1u);
    goto LABEL_19;
  }

  if (a3 == 1)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v15);
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= 2)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
    goto LABEL_21;
  }

  if (!a5)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v18 = "lookAtTarget";
  v19 = 12;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v6);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  v18 = "rotationAlpha";
  v19 = 13;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v5);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  v18 = "taskIndex";
  v19 = 9;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v7);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKTask(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719548;
  v11[1] = *&off_1E8719558;
  v11[2] = xmmword_1E8719568;
  v11[3] = *&off_1E8719578;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKTaskCompile(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v14);
    __break(1u);
    goto LABEL_19;
  }

  if (a3 == 1)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v15);
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= 2)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
    goto LABEL_21;
  }

  if (!a5)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v18 = "target";
  v19 = 6;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v6);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  v18 = "targetAlpha";
  v19 = 11;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v5);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  v18 = "taskIndex";
  v19 = 9;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v7);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKPenetrationCorrectionTask(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719588;
  v11[1] = *&off_1E8719598;
  v11[2] = xmmword_1E87195A8;
  v11[3] = *&off_1E87195B8;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKPenetrationCorrectionTask(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v14);
    __break(1u);
    goto LABEL_19;
  }

  if (a3 == 1)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v15);
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= 2)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
    goto LABEL_21;
  }

  if (!a5)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v18 = "inJointName";
  v19 = 11;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v6);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  v18 = "inRayCastDirection";
  v19 = 18;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v5);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  v18 = "inRayCastLength";
  v19 = 15;
  re::RigDataValue::attributeValue(v8, &v18, v20);
  re::RigDataValue::operator=(v21, v7);
  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKRigJointSettings(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E87195E8;
  v11[3] = *&off_1E87195F8;
  v11[4] = xmmword_1E8719608;
  v11[0] = xmmword_1E87195C8;
  v11[1] = *&off_1E87195D8;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKRigJointSettings(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v16);
    __break(1u);
    goto LABEL_24;
  }

  if (a3 == 1)
  {
LABEL_24:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v17);
    __break(1u);
    goto LABEL_25;
  }

  if (a3 <= 2)
  {
LABEL_25:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v18);
    __break(1u);
    goto LABEL_26;
  }

  if (a3 == 3)
  {
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v19);
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
LABEL_27:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v20);
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *a4;
  v21 = "inJointName";
  v22 = 11;
  re::RigDataValue::attributeValue(v9, &v21, v23);
  re::RigDataValue::operator=(v24, v6);
  if (v23[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  v21 = "inRetargetingGain";
  v22 = 17;
  re::RigDataValue::attributeValue(v9, &v21, v23);
  re::RigDataValue::operator=(v24, v5);
  if (v23[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  v21 = "inRetargetingGainDof";
  v22 = 20;
  re::RigDataValue::attributeValue(v9, &v21, v23);
  re::RigDataValue::operator=(v24, v8);
  if (v23[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  v21 = "inStiffness";
  v22 = 11;
  re::RigDataValue::attributeValue(v9, &v21, v23);
  re::RigDataValue::operator=(v24, v7);
  if (v23[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKRigTaskSettings(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719638;
  v11[3] = *&off_1E8719648;
  v11[4] = xmmword_1E8719658;
  v11[0] = xmmword_1E8719618;
  v11[1] = *&off_1E8719628;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKRigTaskSettings(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v16);
    __break(1u);
    goto LABEL_24;
  }

  if (a3 == 1)
  {
LABEL_24:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v17);
    __break(1u);
    goto LABEL_25;
  }

  if (a3 <= 2)
  {
LABEL_25:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v18);
    __break(1u);
    goto LABEL_26;
  }

  if (a3 == 3)
  {
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v19);
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
LABEL_27:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v20);
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *a4;
  v21 = "inTaskBoneName";
  v22 = 14;
  re::RigDataValue::attributeValue(v9, &v21, v23);
  re::RigDataValue::operator=(v24, v6);
  if (v23[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  v21 = "inPositionWeight";
  v22 = 16;
  re::RigDataValue::attributeValue(v9, &v21, v23);
  re::RigDataValue::operator=(v24, v5);
  if (v23[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  v21 = "inRotationWeight";
  v22 = 16;
  re::RigDataValue::attributeValue(v9, &v21, v23);
  re::RigDataValue::operator=(v24, v8);
  if (v23[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  v21 = "inLookAtAxis";
  v22 = 12;
  re::RigDataValue::attributeValue(v9, &v21, v23);
  re::RigDataValue::operator=(v24, v7);
  if (v23[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  return 1;
}