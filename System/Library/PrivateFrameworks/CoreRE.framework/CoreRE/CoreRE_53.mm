unint64_t re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::DoubleKeyframeAnimationAssetData::~DoubleKeyframeAnimationAssetData(re::DoubleKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFC90;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFC90;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::DoubleKeyframeAnimationAssetData::clone(re::DoubleKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<double>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFC90;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<char const*>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFC20;
  return v4;
}

void re::Vector2FKeyframeAnimationAssetData::~Vector2FKeyframeAnimationAssetData(re::Vector2FKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFD40;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFD40;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FKeyframeAnimationAssetData::clone(re::Vector2FKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFD40;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<unsigned long>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFCD0;
  return v4;
}

void re::Vector3FKeyframeAnimationAssetData::~Vector3FKeyframeAnimationAssetData(re::Vector3FKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFDF0;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFDF0;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FKeyframeAnimationAssetData::clone(re::Vector3FKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFDF0;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::Vector3<float>>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFD80;
  return v4;
}

uint64_t re::DynamicArray<re::Vector3<float>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Quaternion<float>>::copy(a1, a2);
  }

  return a1;
}

void re::Vector4FKeyframeAnimationAssetData::~Vector4FKeyframeAnimationAssetData(re::Vector4FKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFEA0;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFEA0;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FKeyframeAnimationAssetData::clone(re::Vector4FKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFEA0;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::Vector4<float>>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFE30;
  return v4;
}

void re::QuaternionFKeyframeAnimationAssetData::~QuaternionFKeyframeAnimationAssetData(re::QuaternionFKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFF50;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFF50;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFKeyframeAnimationAssetData::clone(re::QuaternionFKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFF50;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::Vector3<float>>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFEE0;
  return v4;
}

void *re::IntrospectionDynamicArray<re::GenericSRT<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::GenericSRT<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::GenericSRT<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::GenericSRT<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::GenericSRT<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::GenericSRT<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::GenericSRT<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10[0] = 0x3F8000003F800000;
  v10[1] = 1065353216;
  v10[2] = 0;
  v10[3] = 0x3F80000000000000;
  v10[4] = 0;
  v10[5] = 0;
  re::DynamicArray<re::Matrix3x3<float>>::add(this, v10);
  v8 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::GenericSRT<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::GenericSRT<float>>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 48 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = (v3[4] + 48 * v4);
        v7 = v5 / 0x30uLL + 1;
        do
        {
          *v6 = 0x3F8000003F800000;
          v6[1] = 1065353216;
          v6[2] = 0;
          v6[3] = 0x3F80000000000000;
          v6[4] = 0;
          v6[5] = 0;
          v6 += 6;
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

void *re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::GenericSRT<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::SRTKeyframeAnimationAssetData::~SRTKeyframeAnimationAssetData(re::SRTKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CC0098;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0098;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SRTKeyframeAnimationAssetData::clone(re::SRTKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0098;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::GenericSRT<float>>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CC0028;
  return v4;
}

uint64_t re::DynamicArray<re::GenericSRT<float>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Matrix3x3<float>>::copy(a1, a2);
  }

  return a1;
}

void *re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SkeletalPoseAssetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 24 * v9);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 24 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v12 = v8[1];
          *v11 = *v8;
          v11[1] = v12;
          *v8 = 0;
          v8[1] = 0;
          v13 = v11[2];
          v11[2] = v8[2];
          v8[2] = v13;
          re::FixedArray<CoreIKTransform>::deinit(v8);
          v8 += 3;
          v11 += 3;
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

void *re::DynamicArray<re::SkeletalPoseAssetData>::resize(void *result, unint64_t a2)
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
      result = re::FixedArray<CoreIKTransform>::deinit((v3[4] + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(result, a2);
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

void *re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::SkeletalPoseAssetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::SkeletalPoseKeyframeAnimationAssetData::~SkeletalPoseKeyframeAnimationAssetData(re::SkeletalPoseKeyframeAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::AssetHandle::~AssetHandle((this + 160));
  *this = &unk_1F5CC01E0;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::AssetHandle::~AssetHandle((this + 160));
  *this = &unk_1F5CC01E0;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SkeletalPoseKeyframeAnimationAssetData::clone(re::SkeletalPoseKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 224, 8);
  v5 = re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC01E0;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::SkeletalPoseAssetData>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CC0170;
  re::AssetHandle::AssetHandle((v4 + 20), (this + 160));
  re::DynamicArray<re::StringID>::DynamicArray((v4 + 23), this + 23);
  return v4;
}

uint64_t re::DynamicArray<re::SkeletalPoseAssetData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SkeletalPoseAssetData>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::DynamicArray<re::SkeletalPoseAssetData>::copy(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 24 * v12;
      do
      {
        result = re::FixedArray<re::GenericSRT<float>>::operator=(v13, v11);
        v11 += 3;
        v13 += 3;
        v14 -= 24;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 3 * v12;
      v16 = &v11[v15];
      result = &v13[v15];
      v17 = 24 * v4 - 8 * v15;
      do
      {
        v18 = re::FixedArray<re::GenericSRT<float>>::FixedArray(result, v16);
        v16 += 3;
        result = v18 + 3;
        v17 -= 24;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        result = re::FixedArray<re::GenericSRT<float>>::operator=(v6, v7);
        v7 += 3;
        v6 += 3;
        v8 -= 24;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[3 * v4];
      v10 = 24 * v5 - 24 * v4;
      do
      {
        result = re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SkeletalPoseAssetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::BlendShapeWeightsAssetData>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 24 * v8);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 24 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

_anonymous_namespace_ *re::DynamicArray<re::BlendShapeWeightsAssetData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::SkeletalPoseAssetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::BlendShapeWeightsKeyframeAnimationAssetData::~BlendShapeWeightsKeyframeAnimationAssetData(re::BlendShapeWeightsKeyframeAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 160);
  *this = &unk_1F5CC0328;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::StringID>::deinit(this + 160);
  *this = &unk_1F5CC0328;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::BlendShapeWeightsKeyframeAnimationAssetData::clone(re::BlendShapeWeightsKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 200, 8);
  v5 = re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0328;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::BlendShapeWeightsAssetData>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CC02B8;
  re::DynamicArray<re::StringID>::DynamicArray((v4 + 20), this + 20);
  return v4;
}

uint64_t re::DynamicArray<re::BlendShapeWeightsAssetData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::BlendShapeWeightsAssetData>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::DynamicArray<re::BlendShapeWeightsAssetData>::copy(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 24 * v12;
      do
      {
        result = re::FixedArray<float>::operator=(v13, v11);
        v11 += 3;
        v13 += 3;
        v14 -= 24;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 3 * v12;
      v16 = &v11[v15];
      result = &v13[v15];
      v17 = 24 * v4 - 8 * v15;
      do
      {
        v18 = re::FixedArray<float>::FixedArray(result, v16);
        v16 += 3;
        result = v18 + 3;
        v17 -= 24;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        result = re::FixedArray<float>::operator=(v6, v7);
        v7 += 3;
        v6 += 3;
        v8 -= 24;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[3 * v4];
      v10 = 24 * v5 - 24 * v4;
      do
      {
        result = re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void re::FloatSampledAnimationAssetData::~FloatSampledAnimationAssetData(re::FloatSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC03D8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC03D8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::FloatSampledAnimationAssetData::clone(re::FloatSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<float>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC03D8;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<float>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0368;
  return v4;
}

void re::DoubleSampledAnimationAssetData::~DoubleSampledAnimationAssetData(re::DoubleSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC0488;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0488;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::DoubleSampledAnimationAssetData::clone(re::DoubleSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<double>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0488;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<char const*>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0418;
  return v4;
}

void re::Vector2FSampledAnimationAssetData::~Vector2FSampledAnimationAssetData(re::Vector2FSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC0538;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0538;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FSampledAnimationAssetData::clone(re::Vector2FSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0538;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<unsigned long>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC04C8;
  return v4;
}

void re::Vector3FSampledAnimationAssetData::~Vector3FSampledAnimationAssetData(re::Vector3FSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC05E8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC05E8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FSampledAnimationAssetData::clone(re::Vector3FSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC05E8;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::Vector3<float>>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0578;
  return v4;
}

void re::Vector4FSampledAnimationAssetData::~Vector4FSampledAnimationAssetData(re::Vector4FSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC0698;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0698;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FSampledAnimationAssetData::clone(re::Vector4FSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0698;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::Vector4<float>>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0628;
  return v4;
}

void re::QuaternionFSampledAnimationAssetData::~QuaternionFSampledAnimationAssetData(re::QuaternionFSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC0748;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0748;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFSampledAnimationAssetData::clone(re::QuaternionFSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0748;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::Vector3<float>>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC06D8;
  return v4;
}

void re::SRTSampledAnimationAssetData::~SRTSampledAnimationAssetData(re::SRTSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC07F8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC07F8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SRTSampledAnimationAssetData::clone(re::SRTSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC07F8;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::GenericSRT<float>>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0788;
  return v4;
}

void re::SkeletalPoseSampledAnimationAssetData::~SkeletalPoseSampledAnimationAssetData(re::SkeletalPoseSampledAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 152);
  re::AssetHandle::~AssetHandle((this + 128));
  *this = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::StringID>::deinit(this + 152);
  re::AssetHandle::~AssetHandle((this + 128));
  *this = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::SkeletalPoseSampledAnimationAssetData::clone(re::SkeletalPoseSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 200, 8);
  v5 = re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC08A8;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::SkeletalPoseAssetData>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0838;
  re::AssetHandle::AssetHandle((v4 + 128), (this + 128));
  re::DynamicArray<re::StringID>::DynamicArray(v4 + 152, this + 19);
  v7 = *(this + 96);
  *(v4 + 194) = *(this + 194);
  *(v4 + 192) = v7;
  return v4;
}

void re::BlendShapeWeightsSampledAnimationAssetData::~BlendShapeWeightsSampledAnimationAssetData(re::BlendShapeWeightsSampledAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 128);
  *this = &unk_1F5CC0958;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::StringID>::deinit(this + 128);
  *this = &unk_1F5CC0958;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::BlendShapeWeightsSampledAnimationAssetData::clone(re::BlendShapeWeightsSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 168, 8);
  v5 = re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0958;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::BlendShapeWeightsAssetData>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC08E8;
  re::DynamicArray<re::StringID>::DynamicArray((v4 + 16), this + 16);
  return v4;
}

void re::OrbitAnimationAssetData::~OrbitAnimationAssetData(re::OrbitAnimationAssetData *this)
{
  *this = &unk_1F5CC3608;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CC3608;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

__n128 re::OrbitAnimationAssetData::clone(re::OrbitAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 16);
  v5 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0998;
  *(v5 + 76) = *(this + 76);
  result = *(this + 92);
  v7 = *(this + 108);
  v8 = *(this + 124);
  *(v5 + 136) = *(this + 136);
  *(v5 + 124) = v8;
  *(v5 + 108) = v7;
  *(v5 + 92) = result;
  return result;
}

void re::AnimationStateTimelineAssetData::~AnimationStateTimelineAssetData(re::AnimationStateTimelineAssetData *this)
{
  *this = &unk_1F5CC3608;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CC3608;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationStateTimelineAssetData::clone(re::AnimationStateTimelineAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 96, 8);
  *v4 = &unk_1F5CC3608;
  v5 = *(this + 16);
  *(v4 + 8) = *(this + 1);
  *(v4 + 16) = v5;
  re::StringID::StringID((v4 + 24), (this + 24));
  re::DynamicString::DynamicString((v4 + 40), (this + 40));
  *(v4 + 72) = *(this + 72);
  *v4 = &unk_1F5CC09F0;
  *(v4 + 80) = *(this + 5);
  return v4;
}

void re::FloatAnimationBlendTreeAssetData::~FloatAnimationBlendTreeAssetData(re::FloatAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0AD0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0AD0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::FloatAnimationBlendTreeAssetData::clone(re::FloatAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<float>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0A60;
  return result;
}

void *re::AnimationBlendTreeAssetData<float>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<float>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<float>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<float>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0AD0;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

uint64_t re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::AnimationBlendTreeNodeDescription>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *>(&v15, *(a2 + 32), *(a2 + 32) + 88 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 88 * v9;
      v13 = 88 * v4;
      do
      {
        re::StringID::StringID((v11 + v12), (v10 + v12));
        re::StringID::StringID((v11 + v12 + 16), (v10 + v12 + 16));
        re::StringID::StringID((v11 + v12 + 32), (v10 + v12 + 32));
        re::StringID::StringID((v11 + v12 + 48), (v10 + v12 + 48));
        re::StringID::StringID((v11 + v12 + 64), (v10 + v12 + 64));
        *(v11 + v12 + 80) = *(v10 + v12 + 80);
        v10 += 88;
        v13 -= 88;
        v11 += 88;
      }

      while (v12 != v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *>(&v14, *(a2 + 32), *(a2 + 32) + 88 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4];
      v7 = 88 * v4;
      v8 = 88 * v5;
      do
      {
        re::StringID::destroyString((v6 + v7 + 64));
        re::StringID::destroyString((v6 + v7 + 48));
        re::StringID::destroyString((v6 + v7 + 32));
        re::StringID::destroyString((v6 + v7 + 16));
        re::StringID::destroyString((v6 + v7));
        v6 += 88;
        v8 -= 88;
      }

      while (v7 != v8);
    }
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::StringID::operator=((a4 + v7 + 16), (a2 + v7 + 16));
    re::StringID::operator=((a4 + v7 + 32), (a2 + v7 + 32));
    re::StringID::operator=((a4 + v7 + 48), (a2 + v7 + 48));
    re::StringID::operator=((a4 + v7 + 64), (a2 + v7 + 64));
    *(a4 + v7 + 80) = *(a2 + v7 + 80);
    v7 += 88;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::RigGraphConnection>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigGraphConnection>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::RigGraphConnection>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphConnection *,re::RigGraphConnection *,re::RigGraphConnection *>(&v11, *(a2 + 32), *(a2 + 32) + 160 * a1[2], a1[4]);
    v5 = a1[2];
    if (v5 != v4)
    {
      v6 = *(a2 + 32);
      v7 = a1[4];
      v8 = 160 * v5;
      v9 = 160 * v4;
      do
      {
        re::StringID::StringID((v7 + v8), (v6 + v8));
        re::StringID::StringID((v7 + v8 + 16), (v6 + v8 + 16));
        re::StringID::StringID((v7 + v8 + 32), (v6 + v8 + 32));
        re::StringID::StringID((v7 + v8 + 48), (v6 + v8 + 48));
        re::StringID::StringID((v7 + v8 + 64), (v6 + v8 + 64));
        re::StringID::StringID((v7 + v8 + 80), (v6 + v8 + 80));
        re::StringID::StringID((v7 + v8 + 96), (v6 + v8 + 96));
        re::StringID::StringID((v7 + v8 + 112), (v6 + v8 + 112));
        re::StringID::StringID((v7 + v8 + 128), (v6 + v8 + 128));
        re::StringID::StringID((v7 + v8 + 144), (v6 + v8 + 144));
        v6 += 160;
        v9 -= 160;
        v7 += 160;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphConnection *,re::RigGraphConnection *,re::RigGraphConnection *>(&v10, *(a2 + 32), *(a2 + 32) + 160 * v4, a1[4]);
    re::ObjectHelper::destroy<re::RigGraphConnection>(a1[4] + 160 * v4, a1[4] + 160 * a1[2]);
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RigGraphConnection *,re::RigGraphConnection *,re::RigGraphConnection *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::StringID::operator=((a4 + v7 + 16), (a2 + v7 + 16));
    re::StringID::operator=((a4 + v7 + 32), (a2 + v7 + 32));
    re::StringID::operator=((a4 + v7 + 48), (a2 + v7 + 48));
    re::StringID::operator=((a4 + v7 + 64), (a2 + v7 + 64));
    re::StringID::operator=((a4 + v7 + 80), (a2 + v7 + 80));
    re::StringID::operator=((a4 + v7 + 96), (a2 + v7 + 96));
    re::StringID::operator=((a4 + v7 + 112), (a2 + v7 + 112));
    re::StringID::operator=((a4 + v7 + 128), (a2 + v7 + 128));
    re::StringID::operator=((a4 + v7 + 144), (a2 + v7 + 144));
    v7 += 160;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::BlendSpaceAxisDefinition>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::BlendSpaceAxisDefinition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *>(&v14, *(a2 + 32), *(a2 + 32) + 48 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 48 * v8;
      v12 = 48 * v4;
      do
      {
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::StringID::StringID((v10 + v11 + 16), (v9 + v11 + 16));
        *(v10 + v11 + 32) = *(v9 + v11 + 32);
        v9 += 48;
        v12 -= 48;
        v10 += 48;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *>(&v13, *(a2 + 32), *(a2 + 32) + 48 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 48 * v4;
      v7 = 48 * v5 - 48 * v4;
      do
      {
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 48;
        v7 -= 48;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  v5 = a4 + 16;
  v6 = a2 + 16;
  do
  {
    re::StringID::operator=((v5 - 16), (v6 - 16));
    re::StringID::operator=(v5, v6);
    *(v5 + 16) = *(v6 + 16);
    v5 += 48;
    v7 = v6 + 32;
    v6 += 48;
  }

  while (v7 != v4);
  return v4;
}

uint64_t re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::BlendSpaceSampleDefinition>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::BlendSpaceSampleDefinition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *>(&v15, *(a2 + 32), (*(a2 + 32) + (a1[2] << 6)), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = v8 << 6;
      v12 = v4 << 6;
      do
      {
        v13 = re::StringID::StringID((v10 + v11), (v9 + v11));
        *(v13 + 4) = *(v9 + v11 + 16);
        re::DynamicArray<float>::DynamicArray(v13 + 24, (v9 + v11 + 24));
        v9 += 64;
        v12 -= 64;
        v10 += 64;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *>(&v14, *(a2 + 32), (*(a2 + 32) + (v4 << 6)), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + (v4 << 6));
      v7 = (v5 << 6) - (v4 << 6);
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 24);
        re::StringID::destroyString(v6);
        v6 = (v6 + 64);
        v7 -= 64;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  v5 = a4 + 24;
  v6 = a2 + 3;
  do
  {
    re::StringID::operator=((v5 - 24), v6 - 3);
    *(v5 - 8) = *(v6 - 2);
    re::DynamicArray<float>::operator=(v5, v6);
    v5 += 64;
    v7 = v6 + 5;
    v6 += 8;
  }

  while (v7 != v4);
  return v4;
}

void re::DoubleAnimationBlendTreeAssetData::~DoubleAnimationBlendTreeAssetData(re::DoubleAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0B80;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0B80;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::DoubleAnimationBlendTreeAssetData::clone(re::DoubleAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<double>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0B10;
  return result;
}

void *re::AnimationBlendTreeAssetData<double>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<double>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<double>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<double>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0B80;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::Vector2FAnimationBlendTreeAssetData::~Vector2FAnimationBlendTreeAssetData(re::Vector2FAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0C30;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0C30;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FAnimationBlendTreeAssetData::clone(re::Vector2FAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::Vector2<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0BC0;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector2<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector2<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::Vector2<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0C30;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::Vector3FAnimationBlendTreeAssetData::~Vector3FAnimationBlendTreeAssetData(re::Vector3FAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0CE0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0CE0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FAnimationBlendTreeAssetData::clone(re::Vector3FAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::Vector3<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0C70;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector3<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector3<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::Vector3<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0CE0;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::Vector4FAnimationBlendTreeAssetData::~Vector4FAnimationBlendTreeAssetData(re::Vector4FAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0D90;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0D90;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FAnimationBlendTreeAssetData::clone(re::Vector4FAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::Vector4<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0D20;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector4<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector4<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::Vector4<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0D90;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::QuaternionFAnimationBlendTreeAssetData::~QuaternionFAnimationBlendTreeAssetData(re::QuaternionFAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0E40;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0E40;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFAnimationBlendTreeAssetData::clone(re::QuaternionFAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::Quaternion<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0DD0;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::Quaternion<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::Quaternion<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::Quaternion<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0E40;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::SRTAnimationBlendTreeAssetData::~SRTAnimationBlendTreeAssetData(re::SRTAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0EF0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0EF0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SRTAnimationBlendTreeAssetData::clone(re::SRTAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::GenericSRT<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0E80;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::GenericSRT<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::GenericSRT<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::GenericSRT<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0EF0;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::SkeletalPoseAnimationBlendTreeAssetData::~SkeletalPoseAnimationBlendTreeAssetData(re::SkeletalPoseAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0FB8;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0FB8;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SkeletalPoseAnimationBlendTreeAssetData::clone(re::SkeletalPoseAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::SkeletalPose>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0F30;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::SkeletalPose>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::SkeletalPose>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::SkeletalPose>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *(a1 + 72) = *(a2 + 72);
  *a1 = &unk_1F5CC0FB8;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray(a1 + 80, (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void *re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v11 = 0uLL;
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 10;
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
    v10 = *(a2 + 16) + 40 * v6;
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
      if ((*(*(a2 + 16) + 40 * v6) & 0x80000000) != 0)
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

__n128 re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    *(v8 + 24) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 40 * v7 + 24) = *a3;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 40 * v4) & 0x80000000) != 0)
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
          v5 += 10;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 40 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 40 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<unsigned char>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<unsigned char>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<unsigned char>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<unsigned char>::init(uint64_t a1, void *a2, re *a3, int a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  re::FixedArray<BOOL>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    do
    {
      v11 = a2[1];
      if (v11 <= v10)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 468;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v11;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10++));
    }

    while (a5 != v10);
  }
}

unint64_t re::IntrospectionFixedArray<unsigned char>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
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

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
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

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + a3;
}

void *re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, uint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<BOOL>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v12);
    re::TypeInfo::TypeInfo(v11, &v13);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
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

unint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
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

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::FixedArray<unsigned char>>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 24 * v8);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 24 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::FixedArray<unsigned long>>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a1, a4);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::EventTimelineAssetData::EventTimelineAssetData(re::EventTimelineAssetData *this)
{
  v1 = re::TimelineAssetData::TimelineAssetData(this, 48);
  *(v1 + 72) = 0;
  *v1 = &unk_1F5CC11C8;
  *(v1 + 80) = 0;
  *(v1 + 88) = &str_67;
  *(v1 + 96) = 0;
  *(v1 + 120) = 0;
  *(v1 + 104) = 0u;
  result = 0.0;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 236) = 0u;
  *(v1 + 252) = 0x7FFFFFFFLL;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0;
  *(v1 + 544) = 0;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 332) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 380) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 428) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 476) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 524) = 0u;
  *(v1 + 552) = -1;
  *(v1 + 560) = 0u;
  *(v1 + 576) = 0u;
  *(v1 + 592) = 1;
  *(v1 + 632) = 0;
  *(v1 + 616) = 0;
  *(v1 + 624) = 0;
  *(v1 + 600) = 0u;
  return result;
}

void re::EventTimelineAssetData::~EventTimelineAssetData(re::EventTimelineAssetData *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 600);

  re::FixedArray<CoreIKTransform>::deinit(this + 70);
  re::DynamicArray<re::ObjCObject>::deinit(this + 512);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 464);
  re::DynamicArray<unsigned long>::deinit(this + 416);
  re::DynamicArray<re::StringID>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 27);
  re::DynamicArray<unsigned long>::deinit(this + 176);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::StringID::destroyString((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::EventTimelineAssetData::~EventTimelineAssetData(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::EventTimelineAssetData::clone(re::EventTimelineAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 640, 8);
  v5 = re::AnimationAssetData<float>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC11C8;
  re::TimelineEventData::TimelineEventData((v5 + 10), (this + 80));
  return v4;
}

_anonymous_namespace_ *re::DynamicArray<re::StringID>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::StringID>::copy(this, *a2, v4);
      re::DynamicArray<re::StringID>::resize(this, *(a2 + 8));
    }

    else
    {
      re::DynamicArray<re::StringID>::clear(this);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::StringID>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::StringID>::copy(this, *a2, *(a2 + 8));
  }

  return this;
}

unint64_t *re::DynamicArray<re::StringID>::copy(unint64_t *this, uint64_t *a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = this;
    v4 = this[2];
    if (v4 == -1)
    {
      v20 = 0;
      memset(v29, 0, sizeof(v29));
      v17 = MEMORY[0x1E69E9C10];
      v21 = 136315906;
      v22 = "copy";
      v23 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v24 = 643;
      v25 = 2048;
      v26 = 0;
      v27 = 2048;
      v28 = 0;
      _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      this = this[4];
      v12 = 16 * a3;
      do
      {
        v13 = re::StringID::operator=(this, a2);
        a2 += 2;
        this = v13 + 2;
        v12 -= 16;
      }

      while (v12);
    }

    else
    {
      re::DynamicArray<re::StringID>::growCapacity(this, a3);
      v7 = v3[2];
      this = v3[4];
      if (v7)
      {
        v8 = 16 * v7;
        v9 = a2;
        do
        {
          v10 = re::StringID::operator=(this, v9);
          v9 += 2;
          this = v10 + 2;
          v8 -= 16;
        }

        while (v8);
        this = v3[4];
        v11 = v3[2];
      }

      else
      {
        v11 = 0;
      }

      if (v7 != a3)
      {
        v14 = &a2[2 * v7];
        this += 2 * v11;
        v15 = 16 * a3 - 16 * v7;
        do
        {
          v16 = re::StringID::StringID(this, v14++);
          this = (v16 + 16);
          v15 -= 16;
        }

        while (v15);
      }

      v3[2] = a3;
    }

    ++*(v3 + 6);
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<float>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<float>::copy(this, 0, *a2, v4);
      re::DynamicArray<float>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<int>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<float>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<double>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<double>::copy(this, 0, *a2, v4);
      re::DynamicArray<double>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<float *>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<double>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<double>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<float *>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[8 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + 8 * v5), __src, 8 * v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 8 * v5), v13, 8 * (v4 - v12));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector2<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Vector2<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<unsigned long>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Vector2<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector2<float>>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<unsigned long>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[8 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + 8 * v5), __src, 8 * v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 8 * v5), v13, 8 * (v4 - v12));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector3<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Vector3<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::Vector3<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Vector3<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector3<float>>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 16 * a2), __src, 16 * a4);
  }

  else
  {
    re::DynamicArray<re::Vector3<float>>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[16 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + 16 * v5), __src, 16 * v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 16 * v5), v13, 16 * (v4 - v12));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector4<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Vector4<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::Vector4<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Vector4<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Vector4<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector4<float>>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 16 * a2), __src, 16 * a4);
  }

  else
  {
    re::DynamicArray<re::Vector4<float>>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[16 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + 16 * v5), __src, 16 * v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 16 * v5), v13, 16 * (v4 - v12));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Quaternion<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Vector3<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::Quaternion<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Vector3<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::GenericSRT<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::GenericSRT<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::GenericSRT<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::GenericSRT<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::GenericSRT<float>>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v23 = 0;
    memset(v29, 0, sizeof(v29));
    v16 = MEMORY[0x1E69E9C10];
    *v24 = 136315906;
    *&v24[4] = "copy";
    *&v24[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    *&v24[14] = 643;
    v25 = 2048;
    v26 = v5;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v17, &v23, v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v20, v22);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v23, *v24);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v18, v19, v21);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 48 * a2), __src, 48 * a4);
  }

  else
  {
    re::DynamicArray<re::Matrix3x3<float>>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v13 = v11 - v5;
    v12 = v11 == v5;
    v14 = 3 * (v11 - v5);
    v15 = &__src[16 * v14];
    if (!v12)
    {
      memmove((*(v6 + 4) + 48 * v5), __src, 16 * v14);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 48 * v5), v15, 48 * (v4 - v13));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

uint64_t re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AnimationBlendTreeNodeDescription>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 88 * v6;
          do
          {
            re::StringID::destroyString((v7 + 64));
            re::StringID::destroyString((v7 + 48));
            re::StringID::destroyString((v7 + 32));
            re::StringID::destroyString((v7 + 16));
            re::StringID::destroyString(v7);
            v7 += 88;
            v8 -= 88;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::RigGraphConnection>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigGraphConnection>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        re::ObjectHelper::destroy<re::RigGraphConnection>(*(a1 + 32), *(a1 + 32) + 160 * v6);
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigGraphConnection>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::BlendSpaceSampleDefinition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::BlendSpaceSampleDefinition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::BlendSpaceSampleDefinition>::copy(a1, a2);
    }
  }

  return a1;
}

void re::FloatAnimationClip::~FloatAnimationClip(re::FloatAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::DoubleAnimationClip::~DoubleAnimationClip(re::DoubleAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector2FAnimationClip::~Vector2FAnimationClip(re::Vector2FAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector3FAnimationClip::~Vector3FAnimationClip(re::Vector3FAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector4FAnimationClip::~Vector4FAnimationClip(re::Vector4FAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::QuaternionFAnimationClip::~QuaternionFAnimationClip(re::QuaternionFAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::SRTAnimationClip::~SRTAnimationClip(re::SRTAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::SkeletalPoseAnimationClip::~SkeletalPoseAnimationClip(re::SkeletalPoseAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::DoubleAnimation::~DoubleAnimation(re::DoubleAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector2FAnimation::~Vector2FAnimation(re::Vector2FAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector3FAnimation::~Vector3FAnimation(re::Vector3FAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector4FAnimation::~Vector4FAnimation(re::Vector4FAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::QuaternionFAnimation::~QuaternionFAnimation(re::QuaternionFAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::SRTAnimation::~SRTAnimation(re::SRTAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::SkeletalPoseAnimation::~SkeletalPoseAnimation(re::SkeletalPoseAnimation *this)
{
  *this = &unk_1F5CB1840;
  if (*(this + 280) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 288));
  }

  if (*(this + 184) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 192));
  }

  if (*(this + 88) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 96));
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB1840;
  if (*(this + 280) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 288));
  }

  if (*(this + 184) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 192));
  }

  if (*(this + 88) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 96));
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v4 >= v5)
  {
    v6 = v4 + 1;
    if (v5 < v4 + 1)
    {
      if (*result)
      {
        v7 = 2 * v5;
        if (!v5)
        {
          v7 = 8;
        }

        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        result = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(result, v8);
      }

      else
      {
        result = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *a2 = 0;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
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
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 8 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          *v11++ = *v12;
          *v12++ = 0;
          v10 -= 8;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

ArcSharedObject *re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 280, 8);
  v6 = *(a2 + 16);
  v8[0] = *(a2 + 32);
  v8[1] = v6;
  *a1 = v5;
  return result;
}

void re::FloatKeyframeAnimation::~FloatKeyframeAnimation(re::FloatKeyframeAnimation *this)
{
  *this = &unk_1F5CB0B00;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0B00;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::DoubleKeyframeAnimation::~DoubleKeyframeAnimation(re::DoubleKeyframeAnimation *this)
{
  *this = &unk_1F5CB0B98;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0B98;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::FixedArray<double>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::SkinningInfluence>::copy(a1, a2);
  }

  return a1;
}

void re::FixedArray<double>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
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
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void re::Vector2FKeyframeAnimation::~Vector2FKeyframeAnimation(re::Vector2FKeyframeAnimation *this)
{
  *this = &unk_1F5CB0C30;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0C30;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector3FKeyframeAnimation::~Vector3FKeyframeAnimation(re::Vector3FKeyframeAnimation *this)
{
  *this = &unk_1F5CB0CC8;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0CC8;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector4FKeyframeAnimation::~Vector4FKeyframeAnimation(re::Vector4FKeyframeAnimation *this)
{
  *this = &unk_1F5CB0D60;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0D60;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::FixedArray<re::Vector4<float>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Vector4<float>>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<re::Vector4<float>>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 16 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
  }

  return result;
}

void re::FixedArray<re::Vector4<float>>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 16);
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
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

void re::QuaternionFKeyframeAnimation::~QuaternionFKeyframeAnimation(re::QuaternionFKeyframeAnimation *this)
{
  *this = &unk_1F5CB0DF8;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0DF8;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::SRTKeyframeAnimation::~SRTKeyframeAnimation(re::SRTKeyframeAnimation *this)
{
  *this = &unk_1F5CB0E90;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0E90;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::SkeletalPoseKeyframeAnimation::~SkeletalPoseKeyframeAnimation(re::SkeletalPoseKeyframeAnimation *this)
{
  *this = &unk_1F5CB0F28;
  v2 = (this + 40);
  re::FixedArray<re::SkeletalPose>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0F28;
  v2 = (this + 40);
  re::FixedArray<re::SkeletalPose>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::FixedArray<re::SkeletalPose>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2E8BA2E8BA2E8BBLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 88 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 8) = &str_67;
      *(result + 64) = 0;
      *(result + 80) = 0;
      result += 88;
      --v6;
    }

    while (v6);
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 8) = &str_67;
  *(result + 64) = 0;
  *(result + 80) = 0;
  return result;
}

void re::FloatSampledAnimation::~FloatSampledAnimation(re::FloatSampledAnimation *this)
{
  *this = &unk_1F5CAEB80;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEB80;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::DoubleSampledAnimation::~DoubleSampledAnimation(re::DoubleSampledAnimation *this)
{
  *this = &unk_1F5CAEC18;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEC18;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector2FSampledAnimation::~Vector2FSampledAnimation(re::Vector2FSampledAnimation *this)
{
  *this = &unk_1F5CAECB0;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAECB0;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector3FSampledAnimation::~Vector3FSampledAnimation(re::Vector3FSampledAnimation *this)
{
  *this = &unk_1F5CAED48;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAED48;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector4FSampledAnimation::~Vector4FSampledAnimation(re::Vector4FSampledAnimation *this)
{
  *this = &unk_1F5CAEDE0;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEDE0;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::QuaternionFSampledAnimation::~QuaternionFSampledAnimation(re::QuaternionFSampledAnimation *this)
{
  *this = &unk_1F5CAEE78;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEE78;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::SRTSampledAnimation::~SRTSampledAnimation(re::SRTSampledAnimation *this)
{
  *this = &unk_1F5CAEF10;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEF10;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::AnimationBlendTreeBuilder<float>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  *(a1 + 8) = a3;
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity((a1 + 8), 0x40uLL);
  ++*(a1 + 32);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 48, a3, 64);
  *(a1 + 392) = 0;
  *(a1 + 400) = a2;
}

void *re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
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
        v10 = &v8[10 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v11[2] = 0;
          v11[3] = 0;
          v13 = (v8 + 1);
          v14 = v8[2];
          v11[1] = v8[1];
          v8[1] = 0;
          v11[2] = v14;
          v8[2] = 0;
          v15 = v11[3];
          v11[3] = v8[3];
          v8[3] = v15;
          v16 = v11[5];
          v11[5] = v8[5];
          v8[5] = v16;
          ++*(v8 + 8);
          ++*(v11 + 8);
          v17 = (v8 + 6);
          LOBYTE(v16) = v8[6];
          v11[6] = v11[6] & 0xFFFFFFFFFFFFFFFELL | v8[6] & 1;
          v11[6] = v8[6] & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v11[7] = v8[7];
          v8[7] = &str_67;
          v8[6] = 0;
          v19 = v8[8];
          v18 = (v8 + 8);
          v11[8] = v11[8] & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
          v11[8] = *v18 & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
          v11[9] = *(v18 + 1);
          *v18 = 0;
          *(v18 + 1) = &str_67;
          re::StringID::destroyString(v18);
          re::StringID::destroyString(v17);
          re::DynamicArray<unsigned long>::deinit(v13);
          v11 += 10;
          v8 = (v18 + 16);
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

BOOL re::AnimationBlendTreeNodeDescription::isBlend(re::AnimationBlendTreeNodeDescription *this)
{
  if (re::StringID::operator==(this + 2, re::AnimationBlendTreeNodeDescription::kBlend))
  {
    return 1;
  }

  return re::StringID::operator==(this + 2, re::AnimationBlendTreeNodeDescription::kBlendAdditive);
}

uint64_t re::AnimationBlendTreeBuilder<float>::buildRig(_anonymous_namespace_ *a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v108 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_141;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_145:
    v90 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v97 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(v6 + 14) = 797;
    v99 = 2048;
    *(v6 + 20) = v5;
    v101 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl(v66, &v90, &v103, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v67, v69);
    _os_crash_msg();
    __break(1u);
  }

  v68 = a1;
  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "AddFloat";
    }

    else
    {
      v14 = "LerpFloat";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v87);
    if ((v87[0] & 1) == 0)
    {
      v15 = v88;
      if (v88)
      {
        v16 = &v88;
        if ((v89 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v87;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v84);
    if ((v84[0] & 1) == 0)
    {
      v15 = v85;
      if (v85)
      {
        v16 = &v85;
        if ((v86 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v84;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v71 = a5;
    v70 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<float>::buildRig(v81, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v81[0] & 1) == 0 && v82)
      {
        if (BYTE8(v82))
        {
          (*(*v82 + 40))();
        }

        v83 = 0u;
        v82 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_117;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_121;
      }

      if (v6 <= v5)
      {
        goto LABEL_125;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_137;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v91)
            {
              v27 = v93;
            }

            else
            {
              v27 = v92;
            }

            re::DynamicString::operator+(&v103, &v90, "input3");
            if (v103.var1)
            {
              v28 = v104;
            }

            else
            {
              v28 = &v103.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            if (*&v103.var0 && (v103.var1 & 1) != 0)
            {
              (*(**&v103.var0 + 40))();
            }

            v5 = v70;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v103, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v103, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
            if (*&v103.var0)
            {
              if (*&v103.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v91)
        {
          v31 = v93;
        }

        else
        {
          v31 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v32 = v104;
        }

        else
        {
          v32 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v75);
        a5 = v71;
        if ((v75[0] & 1) == 0 && v76)
        {
          if (BYTE8(v76))
          {
            (*(*v76 + 40))();
          }

          v77 = 0u;
          v76 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        *&v103.var0 = 0;
        v103.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
        if (*&v103.var0)
        {
          if (*&v103.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v103);
        v7 = *v71;
        v6 = a3[45];
        if (v6 <= *v71)
        {
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v5 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v98 = 468;
          v99 = 2048;
          v100 = v7;
          v101 = 2048;
          v102 = v6;
          _os_log_send_and_compose_impl(v57, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_137:
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v98 = 797;
          v99 = 2048;
          v100 = v5;
          v101 = 2048;
          v102 = v7;
          _os_log_send_and_compose_impl(v60, &v94, &v103, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_141:
          v90 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          v61 = MEMORY[0x1E69E9C10];
          v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v97 = 1024;
          if (v62)
          {
            v63 = 3;
          }

          else
          {
            v63 = 2;
          }

          *(v6 + 14) = 789;
          v99 = 2048;
          *(v6 + 20) = v5;
          v101 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl(v63, &v90, &v103, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v6, 38, v67, v69);
          _os_crash_msg();
          __break(1u);
          goto LABEL_145;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v103.var1) + 24];
        ++*v71;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v91)
        {
          v35 = v93;
        }

        else
        {
          v35 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v36 = v104;
        }

        else
        {
          v36 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v72);
        a5 = v71;
        if ((v72[0] & 1) == 0 && v73)
        {
          if (BYTE8(v73))
          {
            (*(*v73 + 40))();
          }

          v74 = 0u;
          v73 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v91)
        {
          v38 = v93;
        }

        else
        {
          v38 = v92;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v103);
        if ((*&v103.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_129;
        }

        a5 = v71;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v19;
    v101 = 2048;
    v102 = v20;
    _os_log_send_and_compose_impl(v47, &v94, &v103, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v98 = 789;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v50, &v94, &v103, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v5 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v52, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v41 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v5;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v54, &v94, &v103, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    if (v105)
    {
      v55 = *(&v105 + 1);
    }

    else
    {
      v55 = &v105 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v55;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v105 + 1);
    v44 = v106;
    *v68 = 0;
    *(v68 + 8) = *(v41 + 56);
    *(v68 + 24) = v42;
    *(v68 + 5) = v43;
    *(v68 + 6) = v44;
  }

  else
  {
LABEL_106:
    *v68 = 1;
  }

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

void re::FixedArray<re::AnimationBlendTreeNode>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 4);
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
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t re::AnimationBlendTreeBuilder<float>::addChildren(void *a1, void *a2, unint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v8 = &v89;
  v94 = *MEMORY[0x1E69E9840];
  v9 = a1[3];
  if (v9 <= a3)
  {
    goto LABEL_68;
  }

  v11 = a2;
  v12 = a1;
  v72 = a3;
  v13 = 0;
  v75 = *(a1[5] + 80 * a3 + 24) + a4;
  v14 = 16 * a4;
  v15 = 8 * a4;
  v73 = a4;
  while (1)
  {
    v16 = v12[5];
    v17 = v16 + 80 * a3;
    if (*(v17 + 24) <= v13)
    {
      return v75;
    }

    v18 = v12[50];
    v19 = *(*(v17 + 40) + 8 * v13);
    v20 = *(v18 + 16);
    if (v20 <= v19)
    {
      v79 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v36 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v84 = 797;
      v85 = 2048;
      v86 = v19;
      v87 = 2048;
      v88 = v20;
      _os_log_send_and_compose_impl(v38, &v79, &v89, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v79 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v84 = 789;
      v85 = 2048;
      v86 = v19;
      v87 = 2048;
      v88 = v9;
      _os_log_send_and_compose_impl(v41, &v79, &v89, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_40:
      v79 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v42 = MEMORY[0x1E69E9C10];
      v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v43)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v84 = 468;
      v85 = 2048;
      v86 = v6;
      v87 = 2048;
      v88 = v7;
      _os_log_send_and_compose_impl(v44, &v79, &v89, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_44:
      v79 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v45 = MEMORY[0x1E69E9C10];
      v46 = a3;
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      v84 = 797;
      v85 = 2048;
      v86 = v46;
      v87 = 2048;
      v88 = v20;
      _os_log_send_and_compose_impl(v48, &v79, &v89, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v80 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      v84 = 789;
      v85 = 2048;
      v86 = v73 + v13;
      v87 = 2048;
      v88 = v7;
      _os_log_send_and_compose_impl(v51, &v80, &v89, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v79 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v52 = MEMORY[0x1E69E9C10];
      v53 = a3;
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v84 = 789;
      v85 = 2048;
      v86 = v53;
      v87 = 2048;
      v88 = v9;
      _os_log_send_and_compose_impl(v55, &v79, &v89, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_56:
      v79 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v56 = MEMORY[0x1E69E9C10];
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v57)
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v84 = 789;
      v85 = 2048;
      v86 = v72;
      v87 = 2048;
      v88 = v9;
      _os_log_send_and_compose_impl(v58, &v79, &v89, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_60:
      v79 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v59 = MEMORY[0x1E69E9C10];
      v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v60)
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      v84 = 468;
      v85 = 2048;
      v86 = v7;
      v87 = 2048;
      v88 = v11;
      _os_log_send_and_compose_impl(v61, &v79, &v89, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_64:
      v79 = 0;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      v84 = 789;
      v85 = 2048;
      v86 = v11;
      v87 = 2048;
      v88 = v19;
      _os_log_send_and_compose_impl(v64, &v79, &v89, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v79 = 0;
      v8[4] = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = a3;
      v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v81 = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      if (v67)
      {
        v68 = 3;
      }

      else
      {
        v68 = 2;
      }

      v84 = 789;
      v85 = 2048;
      v86 = v66;
      v87 = 2048;
      v88 = v9;
      _os_log_send_and_compose_impl(v68, &v79, &v89, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70);
      _os_crash_msg();
      __break(1u);
LABEL_72:
      re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Unknown blend tree leaf type", "!Unreachable code", "addChildren", 561);
      _os_crash("assertion failure: (!Unreachable code) Unknown blend tree leaf type");
      __break(1u);
    }

    if (v9 <= v19)
    {
      goto LABEL_36;
    }

    v6 = a4 + v13;
    v7 = *(v11 + 288);
    if (v7 <= a4 + v13)
    {
      goto LABEL_40;
    }

    v76 = a4 + v13;
    v77 = v14;
    v21 = v12;
    v22 = a6;
    v23 = *(v18 + 32);
    v24 = *(v11 + 296);
    v7 = v24 + v15;
    v25 = *(v16 + 80 * v19 + 24);
    *(v24 + v15 + 6) = v25;
    if (v20 <= a3)
    {
      goto LABEL_44;
    }

    v78 = v15;
    v26 = v23 + 88 * v19;
    v11 = a3;
    v27 = re::StringID::operator==((v23 + 88 * a3 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
    if (v13)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    *(v7 + 7) = v28;
    *v7 = *(v26 + 80);
    if (v25)
    {
      *(v24 + v78 + 4) = v75;
      if (v9 <= v11)
      {
        goto LABEL_56;
      }

      a6 = v22;
      v12 = v21;
      v11 = a2;
      v75 = re::AnimationBlendTreeBuilder<float>::addChildren(v21, a2, v19, v75, a5, a6);
    }

    else
    {
      a6 = v22;
      if (re::StringID::operator==((v26 + 16), re::AnimationBlendTreeNodeDescription::kClip))
      {
        v29 = 0xBF58476D1CE4E5B9 * ((*(v26 + 32) >> 31) ^ (*(v26 + 32) >> 1));
        v12 = v21;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((v21 + 51), (v26 + 32), (0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) ^ ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) >> 31), &v89);
        v7 = *a5;
        v11 = a2[45];
        if (v11 <= *a5)
        {
          goto LABEL_60;
        }

        *(a2[46] + 8 * v7) = *(v21[53] + 32 * HIDWORD(v89) + 24);
        v30 = (*a5)++;
        *(v24 + v78 + 4) = v30;
        v11 = a2;
      }

      else
      {
        if (!re::StringID::operator==((v26 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_72;
        }

        v11 = *v22;
        v19 = a2[54];
        if (v19 <= *v22)
        {
          goto LABEL_64;
        }

        re::StringID::operator=((a2[56] + 16 * v11), (v26 + 32));
        v32 = (*v22)++;
        *(v24 + v78 + 4) = v32;
        *(v7 + 7) |= 2u;
        v11 = a2;
        v12 = v21;
      }
    }

    v6 = v76;
    if (*(v26 + 64) <= 1uLL && (v33 = *(v26 + 72)) != 0 && !*v33)
    {
      re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v79, *(v26 + 8));
    }

    else
    {
      re::StringID::StringID(&v79, (v26 + 64));
    }

    v7 = *(v11 + 392);
    if (v7 <= v76)
    {
      goto LABEL_48;
    }

    v34 = re::StringID::operator=((*(v11 + 408) + v77), &v79);
    if (v79)
    {
      if (v79)
      {
      }
    }

    ++v13;
    v9 = v12[3];
    v14 = v77 + 16;
    v15 = v78 + 8;
    a3 = v72;
    a4 = v73;
    if (v9 <= v72)
    {
      goto LABEL_52;
    }
  }
}

uint64_t *re::AnimationBlendTree<float>::addClip(uint64_t a1, unint64_t a2, _anonymous_namespace_ *this)
{
  v5 = a2;
  v36 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (!*(a1 + 336))
    {
      goto LABEL_23;
    }

    **(a1 + 344) = 1;
  }

  v7 = *(a1 + 336);
  if (v7 <= a2)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v5;
    v29 = 2048;
    v30 = v7;
    _os_log_send_and_compose_impl(v12, &v22, &v31, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(*(a1 + 344) + 8 * a2);
  v7 = v5 + 1;
  v3 = *(a1 + 336);
  if (v3 <= v5 + 1)
  {
LABEL_15:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v3;
    _os_log_send_and_compose_impl(v14, &v22, &v31, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (v31)
  {
    v10 = SDWORD1(v31);
  }

  else
  {
    v10 = 0;
  }

  *(*(a1 + 344) + 8 * v7) = v10 + v8;
  v7 = *(a1 + 312);
  if (v7 <= v5)
  {
LABEL_19:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v5;
    v29 = 2048;
    v30 = v7;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = 0;
    v29 = 2048;
    v30 = 0;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 320) + 8 * v5) = this;
  return result;
}

void re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_1637, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 32;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::FloatAnimationBlendTree::~FloatAnimationBlendTree(re::FloatAnimationBlendTree *this)
{
  re::AnimationBlendTree<float>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<float>::child(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 312);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<float>::totalDuration(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            v11 = 0;
            memset(v20, 0, sizeof(v20));
            v8 = MEMORY[0x1E69E9C10];
            v12 = 136315906;
            v13 = "operator[]";
            v14 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v9 = 3;
            }

            else
            {
              v9 = 2;
            }

            v15 = 476;
            v16 = 2048;
            v17 = v3;
            v18 = 2048;
            v19 = v1;
            _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<float>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash("assertion failure: (!Unreachable code) Requires AnimationBlendTreeInstance");
  __break(1u);
}

void re::AnimationBlendTree<float>::~AnimationBlendTree(re::FloatAnimationBlendTree *a1)
{
  re::AnimationBlendTree<float>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<float>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2788;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<float>::weightPathFromName(re::StringID *a1, const char *a2)
{
  re::DynamicString::format(&v4, "KeyValue.keyValueStore[%s]", a2, a2);
  re::StringID::StringID(a1, &v4);
  result = v4;
  if (v4)
  {
    if (v5)
    {
      return (*(*v4 + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(uint64_t a1)
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
        v6 = (v3 + 64);
        do
        {
          re::StringID::destroyString(v6);
          re::StringID::destroyString((v6 - 16));
          re::DynamicArray<unsigned long>::deinit(v6 - 56);
          v6 = (v6 + 80);
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

uint64_t re::AnimationBlendTreeBuilder<double>::buildRig(_anonymous_namespace_ *a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v103 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_133;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_137:
    v85 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v92 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *(v6 + 14) = 797;
    v94 = 2048;
    *(v6 + 20) = v5;
    v96 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl(v64, &v85, &v98, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Unknown blend node type", "!Unreachable code", "blendNodeType", 349);
    _os_crash("assertion failure: (!Unreachable code) Unknown blend node type");
    __break(1u);
  }

  v6 = a2[5];
  v13 = *(v9 + 4) + 88 * a4;
  v14 = *(v13 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v13))
  {
    goto LABEL_141;
  }

  v67 = a1;
  if (!re::StringID::operator==((v13 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v13 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v13 + 24), *(v13 + 8), v82);
    if ((v82[0] & 1) == 0)
    {
      if (v83)
      {
        if (BYTE8(v83))
        {
          (*(*v83 + 40))();
        }

        v84 = 0u;
        v83 = 0u;
      }
    }
  }

  v16 = &v6[80 * v5];
  if (*(v16 + 3))
  {
    v17 = 0;
    v69 = a5;
    v68 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<double>::buildRig(v79, a2, a3, *(*(v16 + 5) + 8 * v17), a5);
      if ((v79[0] & 1) == 0 && v80)
      {
        if (BYTE8(v80))
        {
          (*(*v80 + 40))();
        }

        v81 = 0u;
        v80 = 0u;
      }

      v18 = *(v16 + 3);
      if (v18 <= v17)
      {
        break;
      }

      v18 = *(*(v16 + 5) + 8 * v17);
      v6 = a2[3];
      if (v6 <= v18)
      {
        goto LABEL_109;
      }

      v19 = a2[50];
      v6 = *(v19 + 2);
      if (v6 <= v18)
      {
        goto LABEL_113;
      }

      if (v6 <= v5)
      {
        goto LABEL_117;
      }

      v20 = &a2[5][80 * v18];
      v21 = *(v19 + 4);
      v6 = (v21 + 88 * v18);
      v22 = *(v20 + 9);
      v23 = *(v20 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v21 + 88 * v5)))
      {
        if (v17)
        {
          v24 = a2[50];
          v7 = *(v24 + 2);
          if (v7 <= v5)
          {
            goto LABEL_129;
          }

          v23 = "input2";
          if (!re::StringID::operator==((*(v24 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v86)
            {
              v25 = v88;
            }

            else
            {
              v25 = v87;
            }

            re::DynamicString::operator+(&v98, &v85, "input3");
            if (v98.var1)
            {
              v26 = v99;
            }

            else
            {
              v26 = &v98.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v25, "input3", v26, __str, 1, v76);
            if ((v76[0] & 1) == 0 && v77)
            {
              if (BYTE8(v77))
              {
                (*(*v77 + 40))();
              }

              v78 = 0u;
              v77 = 0u;
            }

            if (*&v98.var0 && (v98.var1 & 1) != 0)
            {
              (*(**&v98.var0 + 40))();
            }

            v5 = v68;
            if (*(v6 + 8) <= 1uLL && (v27 = *(v6 + 9)) != 0 && !*v27)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v98, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v98, v6 + 4);
            }

            v28 = re::DynamicArray<re::StringID>::add((a3 + 52), &v98);
            if (*&v98.var0)
            {
              if (*&v98.var0)
              {
              }
            }

            v23 = "input2";
          }
        }

        else
        {
          v23 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v86)
        {
          v29 = v88;
        }

        else
        {
          v29 = v87;
        }

        re::DynamicString::operator+(&v98, &v85, v23);
        if (v98.var1)
        {
          v30 = v99;
        }

        else
        {
          v30 = &v98.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v29, v23, v30, "", 1, v73);
        a5 = v69;
        if ((v73[0] & 1) == 0 && v74)
        {
          if (BYTE8(v74))
          {
            (*(*v74 + 40))();
          }

          v75 = 0u;
          v74 = 0u;
        }

        if (*&v98.var0 && (v98.var1 & 1) != 0)
        {
          (*(**&v98.var0 + 40))();
        }

        *&v98.var0 = 0;
        v98.var1 = "";
        v31 = re::DynamicArray<re::StringID>::add((a3 + 52), &v98);
        if (*&v98.var0)
        {
          if (*&v98.var0)
          {
          }
        }

        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v32 ^ (v32 >> 31), &v98);
        v7 = *v69;
        v6 = a3[45];
        if (v6 <= *v69)
        {
          v89 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v98 = 0;
          v5 = MEMORY[0x1E69E9C10];
          v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v91 = "operator[]";
          v92 = 1024;
          if (v54)
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          v93 = 468;
          v94 = 2048;
          v95 = v7;
          v96 = 2048;
          v97 = v6;
          _os_log_send_and_compose_impl(v55, &v89, &v98, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v65, v66);
          _os_crash_msg();
          __break(1u);
LABEL_129:
          v89 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v98 = 0;
          v56 = MEMORY[0x1E69E9C10];
          v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v91 = "operator[]";
          v92 = 1024;
          if (v57)
          {
            v58 = 3;
          }

          else
          {
            v58 = 2;
          }

          v93 = 797;
          v94 = 2048;
          v95 = v5;
          v96 = 2048;
          v97 = v7;
          _os_log_send_and_compose_impl(v58, &v89, &v98, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v65, v66);
          _os_crash_msg();
          __break(1u);
LABEL_133:
          v85 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v98 = 0;
          v59 = MEMORY[0x1E69E9C10];
          v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v92 = 1024;
          if (v60)
          {
            v61 = 3;
          }

          else
          {
            v61 = 2;
          }

          *(v6 + 14) = 789;
          v94 = 2048;
          *(v6 + 20) = v5;
          v96 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl(v61, &v85, &v98, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v6, 38, v65, v66);
          _os_crash_msg();
          __break(1u);
          goto LABEL_137;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v98.var1) + 24];
        ++*v69;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v86)
        {
          v33 = v88;
        }

        else
        {
          v33 = v87;
        }

        re::DynamicString::operator+(&v98, &v85, v23);
        if (v98.var1)
        {
          v34 = v99;
        }

        else
        {
          v34 = &v98.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v33, v23, v34, *(v6 + 7), 1, v70);
        a5 = v69;
        if ((v70[0] & 1) == 0 && v71)
        {
          if (BYTE8(v71))
          {
            (*(*v71 + 40))();
          }

          v72 = 0u;
          v71 = 0u;
        }

        if (*&v98.var0 && (v98.var1 & 1) != 0)
        {
          (*(**&v98.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v20 + 8) <= 1uLL)
        {
          v35 = *(v20 + 9);
          if (v35)
          {
            if (!*v35)
            {
              v22 = "output";
            }
          }
        }

        if (v86)
        {
          v36 = v88;
        }

        else
        {
          v36 = v87;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v22, v36, v23, 0, 0, &v98);
        if ((*&v98.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v37);
          v39 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_104;
          }

          goto LABEL_121;
        }

        a5 = v69;
      }

      if (*(v16 + 3) <= ++v17)
      {
        goto LABEL_98;
      }
    }

    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v93 = 797;
    v94 = 2048;
    v95 = v17;
    v96 = 2048;
    v97 = v18;
    _os_log_send_and_compose_impl(v45, &v89, &v98, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
LABEL_109:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v93 = 789;
    v94 = 2048;
    v95 = v18;
    v96 = 2048;
    v97 = v6;
    _os_log_send_and_compose_impl(v48, &v89, &v98, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0;
    v5 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v93 = 797;
    v94 = 2048;
    v95 = v18;
    v96 = 2048;
    v97 = v6;
    _os_log_send_and_compose_impl(v50, &v89, &v98, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0;
    v39 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v93 = 797;
    v94 = 2048;
    v95 = v5;
    v96 = 2048;
    v97 = v6;
    _os_log_send_and_compose_impl(v52, &v89, &v98, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    if (v100)
    {
      v53 = *(&v100 + 1);
    }

    else
    {
      v53 = &v100 + 1;
    }

    *__str = 136315138;
    *(v39 + 4) = v53;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_104:
    v40 = *(v39 + 72);
    v41 = *(&v100 + 1);
    v42 = v101;
    *v67 = 0;
    *(v67 + 8) = *(v39 + 56);
    *(v67 + 24) = v40;
    *(v67 + 5) = v41;
    *(v67 + 6) = v42;
  }

  else
  {
LABEL_98:
    *v67 = 1;
  }

  result = v85;
  if (v85)
  {
    if (v86)
    {
      return (*(*v85 + 40))();
    }
  }

  return result;
}

void re::DoubleAnimationBlendTree::~DoubleAnimationBlendTree(re::DoubleAnimationBlendTree *this)
{
  re::AnimationBlendTree<double>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<double>::child(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 312);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<double>::totalDuration(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            v11 = 0;
            memset(v20, 0, sizeof(v20));
            v8 = MEMORY[0x1E69E9C10];
            v12 = 136315906;
            v13 = "operator[]";
            v14 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v9 = 3;
            }

            else
            {
              v9 = 2;
            }

            v15 = 476;
            v16 = 2048;
            v17 = v3;
            v18 = 2048;
            v19 = v1;
            _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<double>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash("assertion failure: (!Unreachable code) Requires AnimationBlendTreeInstance");
  __break(1u);
}

void re::AnimationBlendTree<double>::~AnimationBlendTree(re::DoubleAnimationBlendTree *a1)
{
  re::AnimationBlendTree<double>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<double>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC28E8;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::Vector2<float>>::buildRig(_anonymous_namespace_ *a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v108 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_141;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_145:
    v90 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v97 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(v6 + 14) = 797;
    v99 = 2048;
    *(v6 + 20) = v5;
    v101 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl(v66, &v90, &v103, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v67, v69);
    _os_crash_msg();
    __break(1u);
  }

  v68 = a1;
  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "AddVector2";
    }

    else
    {
      v14 = "LerpVector2";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v87);
    if ((v87[0] & 1) == 0)
    {
      v15 = v88;
      if (v88)
      {
        v16 = &v88;
        if ((v89 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v87;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v84);
    if ((v84[0] & 1) == 0)
    {
      v15 = v85;
      if (v85)
      {
        v16 = &v85;
        if ((v86 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v84;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v71 = a5;
    v70 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::Vector2<float>>::buildRig(v81, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v81[0] & 1) == 0 && v82)
      {
        if (BYTE8(v82))
        {
          (*(*v82 + 40))();
        }

        v83 = 0u;
        v82 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_117;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_121;
      }

      if (v6 <= v5)
      {
        goto LABEL_125;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_137;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v91)
            {
              v27 = v93;
            }

            else
            {
              v27 = v92;
            }

            re::DynamicString::operator+(&v103, &v90, "input3");
            if (v103.var1)
            {
              v28 = v104;
            }

            else
            {
              v28 = &v103.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            if (*&v103.var0 && (v103.var1 & 1) != 0)
            {
              (*(**&v103.var0 + 40))();
            }

            v5 = v70;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v103, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v103, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
            if (*&v103.var0)
            {
              if (*&v103.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v91)
        {
          v31 = v93;
        }

        else
        {
          v31 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v32 = v104;
        }

        else
        {
          v32 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v75);
        a5 = v71;
        if ((v75[0] & 1) == 0 && v76)
        {
          if (BYTE8(v76))
          {
            (*(*v76 + 40))();
          }

          v77 = 0u;
          v76 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        *&v103.var0 = 0;
        v103.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
        if (*&v103.var0)
        {
          if (*&v103.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v103);
        v7 = *v71;
        v6 = a3[45];
        if (v6 <= *v71)
        {
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v5 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v98 = 468;
          v99 = 2048;
          v100 = v7;
          v101 = 2048;
          v102 = v6;
          _os_log_send_and_compose_impl(v57, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_137:
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v98 = 797;
          v99 = 2048;
          v100 = v5;
          v101 = 2048;
          v102 = v7;
          _os_log_send_and_compose_impl(v60, &v94, &v103, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_141:
          v90 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          v61 = MEMORY[0x1E69E9C10];
          v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v97 = 1024;
          if (v62)
          {
            v63 = 3;
          }

          else
          {
            v63 = 2;
          }

          *(v6 + 14) = 789;
          v99 = 2048;
          *(v6 + 20) = v5;
          v101 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl(v63, &v90, &v103, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v6, 38, v67, v69);
          _os_crash_msg();
          __break(1u);
          goto LABEL_145;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v103.var1) + 24];
        ++*v71;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v91)
        {
          v35 = v93;
        }

        else
        {
          v35 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v36 = v104;
        }

        else
        {
          v36 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v72);
        a5 = v71;
        if ((v72[0] & 1) == 0 && v73)
        {
          if (BYTE8(v73))
          {
            (*(*v73 + 40))();
          }

          v74 = 0u;
          v73 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v91)
        {
          v38 = v93;
        }

        else
        {
          v38 = v92;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v103);
        if ((*&v103.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_129;
        }

        a5 = v71;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v19;
    v101 = 2048;
    v102 = v20;
    _os_log_send_and_compose_impl(v47, &v94, &v103, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v98 = 789;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v50, &v94, &v103, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v5 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v52, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v41 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v5;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v54, &v94, &v103, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    if (v105)
    {
      v55 = *(&v105 + 1);
    }

    else
    {
      v55 = &v105 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v55;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v105 + 1);
    v44 = v106;
    *v68 = 0;
    *(v68 + 8) = *(v41 + 56);
    *(v68 + 24) = v42;
    *(v68 + 5) = v43;
    *(v68 + 6) = v44;
  }

  else
  {
LABEL_106:
    *v68 = 1;
  }

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

void re::Vector2FAnimationBlendTree::~Vector2FAnimationBlendTree(re::Vector2FAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::Vector2<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::Vector2<float>>::child(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 312);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::Vector2<float>>::totalDuration(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            v11 = 0;
            memset(v20, 0, sizeof(v20));
            v8 = MEMORY[0x1E69E9C10];
            v12 = 136315906;
            v13 = "operator[]";
            v14 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v9 = 3;
            }

            else
            {
              v9 = 2;
            }

            v15 = 476;
            v16 = 2048;
            v17 = v3;
            v18 = 2048;
            v19 = v1;
            _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::Vector2<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash("assertion failure: (!Unreachable code) Requires AnimationBlendTreeInstance");
  __break(1u);
}

void re::AnimationBlendTree<re::Vector2<float>>::~AnimationBlendTree(re::Vector2FAnimationBlendTree *a1)
{
  re::AnimationBlendTree<re::Vector2<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::Vector2<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2A48;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::Vector3<float>>::buildRig(_anonymous_namespace_ *a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v108 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_141;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_145:
    v90 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v97 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(v6 + 14) = 797;
    v99 = 2048;
    *(v6 + 20) = v5;
    v101 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl(v66, &v90, &v103, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v67, v69);
    _os_crash_msg();
    __break(1u);
  }

  v68 = a1;
  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "AddVector3";
    }

    else
    {
      v14 = "LerpVector3";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v87);
    if ((v87[0] & 1) == 0)
    {
      v15 = v88;
      if (v88)
      {
        v16 = &v88;
        if ((v89 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v87;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v84);
    if ((v84[0] & 1) == 0)
    {
      v15 = v85;
      if (v85)
      {
        v16 = &v85;
        if ((v86 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v84;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v71 = a5;
    v70 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::Vector3<float>>::buildRig(v81, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v81[0] & 1) == 0 && v82)
      {
        if (BYTE8(v82))
        {
          (*(*v82 + 40))();
        }

        v83 = 0u;
        v82 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_117;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_121;
      }

      if (v6 <= v5)
      {
        goto LABEL_125;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_137;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v91)
            {
              v27 = v93;
            }

            else
            {
              v27 = v92;
            }

            re::DynamicString::operator+(&v103, &v90, "input3");
            if (v103.var1)
            {
              v28 = v104;
            }

            else
            {
              v28 = &v103.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            if (*&v103.var0 && (v103.var1 & 1) != 0)
            {
              (*(**&v103.var0 + 40))();
            }

            v5 = v70;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v103, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v103, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
            if (*&v103.var0)
            {
              if (*&v103.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v91)
        {
          v31 = v93;
        }

        else
        {
          v31 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v32 = v104;
        }

        else
        {
          v32 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v75);
        a5 = v71;
        if ((v75[0] & 1) == 0 && v76)
        {
          if (BYTE8(v76))
          {
            (*(*v76 + 40))();
          }

          v77 = 0u;
          v76 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        *&v103.var0 = 0;
        v103.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
        if (*&v103.var0)
        {
          if (*&v103.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v103);
        v7 = *v71;
        v6 = a3[45];
        if (v6 <= *v71)
        {
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v5 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v98 = 468;
          v99 = 2048;
          v100 = v7;
          v101 = 2048;
          v102 = v6;
          _os_log_send_and_compose_impl(v57, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_137:
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v98 = 797;
          v99 = 2048;
          v100 = v5;
          v101 = 2048;
          v102 = v7;
          _os_log_send_and_compose_impl(v60, &v94, &v103, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_141:
          v90 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          v61 = MEMORY[0x1E69E9C10];
          v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v97 = 1024;
          if (v62)
          {
            v63 = 3;
          }

          else
          {
            v63 = 2;
          }

          *(v6 + 14) = 789;
          v99 = 2048;
          *(v6 + 20) = v5;
          v101 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl(v63, &v90, &v103, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v6, 38, v67, v69);
          _os_crash_msg();
          __break(1u);
          goto LABEL_145;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v103.var1) + 24];
        ++*v71;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v91)
        {
          v35 = v93;
        }

        else
        {
          v35 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v36 = v104;
        }

        else
        {
          v36 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v72);
        a5 = v71;
        if ((v72[0] & 1) == 0 && v73)
        {
          if (BYTE8(v73))
          {
            (*(*v73 + 40))();
          }

          v74 = 0u;
          v73 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v91)
        {
          v38 = v93;
        }

        else
        {
          v38 = v92;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v103);
        if ((*&v103.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_129;
        }

        a5 = v71;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v19;
    v101 = 2048;
    v102 = v20;
    _os_log_send_and_compose_impl(v47, &v94, &v103, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v98 = 789;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v50, &v94, &v103, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v5 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v52, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v41 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v5;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v54, &v94, &v103, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    if (v105)
    {
      v55 = *(&v105 + 1);
    }

    else
    {
      v55 = &v105 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v55;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v105 + 1);
    v44 = v106;
    *v68 = 0;
    *(v68 + 8) = *(v41 + 56);
    *(v68 + 24) = v42;
    *(v68 + 5) = v43;
    *(v68 + 6) = v44;
  }

  else
  {
LABEL_106:
    *v68 = 1;
  }

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