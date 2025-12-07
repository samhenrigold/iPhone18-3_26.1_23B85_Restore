void re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_211, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 120;
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

void re::TechniqueDefinitionBuilder::~TechniqueDefinitionBuilder(re::TechniqueDefinitionBuilder *this)
{
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 79);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 73);
  re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 67);
  if (*(this + 520) == 1)
  {
    *(this + 66) = 0;
  }

  re::DynamicArray<re::WeakStringID>::deinit(this + 60);
  re::DynamicArray<unsigned long>::deinit(this + 440);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(this + 376);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(this + 336);
  re::DynamicArray<unsigned long>::deinit(this + 296);
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 24);
  re::DynamicString::deinit((this + 144));
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 11);
  re::DynamicString::deinit((this + 40));
  re::DynamicString::deinit(this);
}

uint64_t *re::DynamicArray<re::WeakStringID>::deinit(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = result[4];
    if (v3)
    {
      v4 = result[2];
      if (v4)
      {
        bzero(result[4], 8 * v4);
      }

      result = (*(*v1 + 40))(v1, v3);
    }

    *(v2 + 32) = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 0;
    ++*(v2 + 24);
  }

  return result;
}

void *re::FixedArray<re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(v4);
        v4 += 5;
        v5 -= 40;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::FixedArray<re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>>::init<decltype(nullptr)>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  v3 = a3;
  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v8, v9);
    __break(1u);
LABEL_13:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  v5 = (*(*a2 + 32))(a2, 40 * a3, 8);
  a1[2] = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  for (i = v5; --v3; i += 40)
  {
    v10[0] = 0;
    re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::DynamicOverflowArray(i, v10, 1uLL);
    if (v10[0])
    {
    }
  }

  v10[0] = 0;
  re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::DynamicOverflowArray(i, v10, 1uLL);
  if (v10[0])
  {
  }
}

uint64_t re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  if (a3)
  {
    re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(a1, a3);
    v7 = *(a1 + 16);
    *(a1 + 16) = v7 + 2;
    v8 = *(a1 + 8);
    if (v8 == -1)
    {
      v26 = 0;
      memset(v35, 0, sizeof(v35));
      v23 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "copy";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v30 = 678;
      v31 = 2048;
      v32 = 0;
      v33 = 2048;
      v34 = 0;
      _os_log_send_and_compose_impl(v24, &v26, v35, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }

    if (v8 >= a3)
    {
      if ((v7 & 1) == 0)
      {
        v4 = *(a1 + 32);
      }

      v20 = 8 * a3;
      do
      {
        v21 = *a2++;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v4++, v21);
        v20 -= 8;
      }

      while (v20);
    }

    else
    {
      re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::growCapacity(a1, a3);
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v11 = v4;
      if ((v10 & 1) == 0)
      {
        v11 = *(a1 + 32);
      }

      if (v9)
      {
        v12 = 8 * v9;
        v13 = a2;
        do
        {
          v14 = *v13++;
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v11++, v14);
          v12 -= 8;
        }

        while (v12);
        v10 = *(a1 + 16);
      }

      if ((v10 & 1) == 0)
      {
        v4 = *(a1 + 32);
      }

      if (v9 != a3)
      {
        v15 = &a2[v9];
        v16 = &v4[*(a1 + 8)];
        v17 = 8 * a3 - 8 * v9;
        do
        {
          v18 = *v15;
          *v16 = *v15;
          if (v18)
          {
            v19 = (v18 + 8);
          }

          ++v15;
          ++v16;
          v17 -= 8;
        }

        while (v17);
      }

      *(a1 + 8) = a3;
    }

    *(a1 + 16) += 2;
  }

  return a1;
}

uint64_t *re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::growCapacity(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(v3, v2);
    *(v3 + 16) += 2;
    return result;
  }

  if (result[2])
  {
    if (a2 <= 1)
    {
      return result;
    }

    v5 = 2;
  }

  else
  {
    v4 = result[3];
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

  return re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(result, a2);
}

unint64_t *re::FixedArray<re::AttributeArgument>::FixedArray(unint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::AttributeArgument>::init<>(a1, v4, a2[1]);
    re::FixedArray<re::AttributeArgument>::copy(a1, a2);
  }

  return a1;
}

unint64_t *re::FixedArray<re::AttributeArgument>::copy(unint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = result[2];
      v4 = 24 * v2;
      do
      {
        v5 = re::StringID::operator=(result, v3);
        *(v5 + 4) = *(v3 + 16);
        v3 += 24;
        result = v5 + 3;
        v4 -= 24;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

double re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(*(a1 + 8) + 72 * v8 + 8);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v4, v5);
    re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v10 + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v4, v5);
    re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v10 + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void re::DynamicArray<re::TechniqueFunctionConstant>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 104 * v2;
    do
    {
      re::DynamicString::deinit(v3);
      v3 = (v3 + 104);
      v4 -= 104;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::DynamicArray<re::TechniqueFunctionConstant>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 104 * a2;
    v9 = a2;
    do
    {
      re::DynamicString::deinit((*(v3 + 4) + v8));
      ++v9;
      v8 += 104;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 84) = 0u;
        *(v7 + 68) = 0u;
        *(v7 + 52) = 0u;
        v6 += 104;
        *(v7 + 36) = 0u;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::TechniqueFunctionConstant>::copy(_anonymous_namespace_ *this, unint64_t a2, re::DynamicString *a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v39 = 0;
    memset(v45, 0, sizeof(v45));
    v32 = MEMORY[0x1E69E9C10];
    *v40 = 136315906;
    *&v40[4] = "copy";
    *&v40[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *&v40[14] = 643;
    v41 = 2048;
    v42 = a2;
    v43 = 2048;
    v44 = v8;
    _os_log_send_and_compose_impl(v33, &v39, v45, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v40, 38, v36, v38);
    _os_crash_msg();
    __break(1u);
LABEL_21:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v39, *v40);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v34, v35, v37);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_21;
  }

  if (v7 >= v9)
  {
    this = (*(this + 4) + 104 * a2);
    v27 = 104 * a4;
    do
    {
      v28 = re::DynamicString::operator=(this, a3);
      *(v28 + 2) = *(a3 + 2);
      v29 = *(a3 + 3);
      v30 = *(a3 + 4);
      v31 = *(a3 + 5);
      *(v28 + 24) = *(a3 + 24);
      *(v28 + 4) = v30;
      *(v28 + 5) = v31;
      *(v28 + 3) = v29;
      a3 = (a3 + 104);
      this = (v28 + 104);
      v27 -= 104;
    }

    while (v27);
  }

  else
  {
    this = re::DynamicArray<re::TechniqueFunctionConstant>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = *(v6 + 4);
    v13 = a2;
    v14 = v11 - a2;
    if (v11 != a2)
    {
      this = (v12 + 104 * a2);
      v15 = -104 * a2 + 104 * v11;
      v16 = a3;
      do
      {
        v17 = re::DynamicString::operator=(this, v16);
        *(v17 + 2) = *(v16 + 2);
        v18 = *(v16 + 3);
        v19 = *(v16 + 4);
        v20 = *(v16 + 5);
        *(v17 + 24) = *(v16 + 24);
        *(v17 + 4) = v19;
        *(v17 + 5) = v20;
        *(v17 + 3) = v18;
        v16 = (v16 + 104);
        this = (v17 + 104);
        v15 -= 104;
      }

      while (v15);
      v12 = *(v6 + 4);
      v13 = *(v6 + 2);
    }

    if (v14 != v4)
    {
      v21 = (a3 + 104 * v14);
      this = (v12 + 104 * v13);
      v22 = 104 * a2 + 104 * v4 - 104 * v11;
      do
      {
        v23 = re::DynamicString::DynamicString(this, v21);
        *(v23 + 2) = *(v21 + 2);
        v24 = *(v21 + 3);
        v25 = *(v21 + 4);
        v26 = *(v21 + 5);
        *(v23 + 24) = *(v21 + 24);
        *(v23 + 4) = v25;
        *(v23 + 5) = v26;
        *(v23 + 3) = v24;
        v21 = (v21 + 104);
        this = (v23 + 104);
        v22 -= 104;
      }

      while (v22);
    }

    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

void *re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(void *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 6), *(v7 + v5 + 8));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        result = re::FixedArray<unsigned int>::FixedArray((v8 + 16), (v9 + 16));
        *(v8 + 40) = *(v9 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

re *_ZNSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_17MaterialTechniqueEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EEclEOSF_(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result);
    v4 = *(v2 + 120);
    if (v4)
    {
      v5 = 0;
      v6 = *(v2 + 104);
      while (1)
      {
        v7 = *v6;
        v6 += 8;
        if (v7 < 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          LODWORD(v5) = *(v2 + 120);
          break;
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    v8 = v3[2];
LABEL_11:
    while (v5 != v4)
    {
      v9 = *(v2 + 104) + 32 * v5;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      v13 = v12[1];
      if (!v13 || ((v13 + 8), v10[1] = 0, (v10 = *v11) != 0))
      {
        v14 = re::globalAllocators(v3)[2];
        v15 = v10[1];
        if (v15)
        {

          v10[1] = 0;
        }

        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 45);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 39);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 33);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 27);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 21);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 15);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 9);
        v16.n128_f64[0] = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(v10 + 3);
        v17 = v10[1];
        if (v17)
        {

          v10[1] = 0;
        }

        v3 = (*(*v14 + 40))(v14, v10, v16);
      }

      v18 = *(v2 + 120);
      if (v18 <= v5 + 1)
      {
        v18 = v5 + 1;
      }

      while (v18 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(v2 + 104) + 32 * v5) & 0x80000000) != 0)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v5) = v18;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v2 + 88));
    if (*(v2 + 40) == 1)
    {
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit((v2 + 48));
    }

    re::FixedArray<re::TechniqueFunctionConstant>::deinit((v2 + 16));
    v19 = *(*v8 + 40);

    return v19(v8, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_17MaterialTechniqueEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 8));
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

void re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 96 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 80);
    if (v3)
    {

      *(v2 + 80) = 0;
    }
  }
}

uint64_t MetalEmulation::generateCubeMap(uint64_t a1, double a2)
{
  v3 = a1 + 224;
  v5 = *(a1 + 392);

  return v5(v3, LODWORD(a2), WORD2(a2), v4);
}

double MetalEmulation::anonymous namespace::computeCubeMapTexel(uint64_t a1, unsigned int a2, unsigned int a3, int a4, double a5)
{
  v8 = WORD1(a5);
  v9 = WORD2(a5);
  v10 = a2;
  v44 = LOWORD(a5);
  *v11.f32 = MetalEmulation::getCubeDir(LOWORD(a5), WORD1(a5), WORD2(a5), a2);
  v39 = v11;
  if (a3 == 1)
  {
    v12 = v11.f32[2];
    v13 = -v11.f32[2];
    if (a4)
    {
      v13 = v11.f32[2];
    }

    v14 = atan2f(v11.f32[0], v13);
    v15 = vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v39.f32[1], sqrtf(vmuls_lane_f32(v12, v39, 2) + (v39.f32[0] * v39.f32[0])))), LODWORD(v14)), 0x40490FDB40C90FDBLL);
    v16.n128_u32[0] = vadd_f32(v15, 0x3F0000003F000000).u32[0];
    v16.n128_u32[1] = vsub_f32(0x3F0000003F000000, v15).u32[1];
    (*(a1 + 160))(a1, v16);
  }

  else
  {
    v18 = v44;
    *v19.f32 = MetalEmulation::getCubeDir((v44 + 1), v8, v9, v10);
    v45 = v19;
    *v20.f32 = MetalEmulation::getCubeDir(v18, (v8 + 1), v9, v10);
    if (a3)
    {
      v21 = 0;
      v22 = vsubq_f32(v20, v39);
      v38 = vsubq_f32(v45, v39);
      v23.i64[0] = 0xBF000000BF000000;
      v23.i64[1] = 0xBF000000BF000000;
      v24 = vmlaq_f32(v39, v23, vaddq_f32(v38, v22));
      v25 = 1.0 / a3;
      v26 = v25 * 0.5;
      v27 = 0uLL;
      v40 = v24;
      v41 = v22;
      do
      {
        v28 = 0;
        v42 = vmlaq_n_f32(v24, v38, v26 + (v21 * v25));
        do
        {
          v46 = v27;
          v29 = vmlaq_n_f32(v42, v22, v26 + (v28 * v25));
          v43 = v29;
          v30 = v29.f32[2];
          v31 = -v29.f32[2];
          if (a4)
          {
            v31 = v29.f32[2];
          }

          v32 = atan2f(v29.f32[0], v31);
          v33 = vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v43.f32[1], sqrtf(vmuls_lane_f32(v30, v43, 2) + (v43.f32[0] * v43.f32[0])))), LODWORD(v32)), 0x40490FDB40C90FDBLL);
          v34.n128_u32[0] = vadd_f32(v33, 0x3F0000003F000000).u32[0];
          v34.n128_u32[1] = vsub_f32(0x3F0000003F000000, v33).u32[1];
          *v20.i64 = (*(a1 + 160))(a1, v34);
          v22 = v41;
          v27 = vaddq_f32(v46, v20);
          ++v28;
        }

        while (a3 != v28);
        ++v21;
        v24 = v40;
      }

      while (v21 != a3);
    }

    else
    {
      v27 = 0uLL;
    }

    v20.f32[0] = (a3 * a3);
    v17 = vdivq_f32(v27, vdupq_lane_s32(*v20.f32, 0));
  }

  v35 = vdupq_n_s32(0xC77FE000);
  v36 = vminnmq_f32(vmaxnmq_f32(v17, v35), vdupq_n_s32(0x477FE000u));
  *&result = vbslq_s8(vceqq_f32(v36, v36), v36, v35).u64[0];
  return result;
}

uint64_t MetalEmulation::generateCubeMapWithLinearToSRGB(uint64_t a1, double a2)
{
  v3 = a1 + 224;
  v11 = v4;
  v4.i32[3] = 0;
  v5 = vmulq_f32(_simd_log_f4(v4), vdupq_n_s32(0x3ED55555u));
  v5.i32[3] = 0;
  v6 = _simd_exp_f4(v5);
  v7 = vcgeq_f32(vdupq_n_s32(0x3B4739A2u), v11);
  v7.i32[3] = 0;
  v8 = vbslq_s8(vcltzq_s32(v7), vmulq_f32(v11, vdupq_n_s32(0x414EC57Au)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), v6));
  v8.n128_u32[3] = v11.u32[3];
  v9 = *(a1 + 392);

  return v9(v3, LODWORD(a2), WORD2(a2), v8);
}

uint64_t re::PrimitiveRenderingContext::addShape<unsigned long>(void *a1, unint64_t a2, _OWORD *a3, _OWORD *a4, __n128 a5)
{
  v8 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v9 = re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(a1, a2);
  v10 = 0;
  HIDWORD(v29) = 50462976;
  v31 = 0u;
  v32 = 0u;
  do
  {
    v11 = *(&v29 + v10 + 4);
    *(&v31 + v10) = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(v8, a2, v11);
    *(&v29 + v10++) = re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<unsigned long>(v8, a2, v11);
  }

  while (v10 != 4);
  re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(v8, a2, 0);
  v12 = v8[129];
  if (v12 <= a2)
  {
    v30 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = a2;
    v39 = 2048;
    v40 = v12;
    _os_log_send_and_compose_impl(v22, &v30, &v41, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v29);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v13 = re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingShapeAttribute>(&v29 + 4, &v31, &v29, *(v8[131] + 8 * a2), v8[149]);
  v10 = v8[129];
  if (v10 <= a2)
  {
LABEL_16:
    v30 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = a2;
    v39 = 2048;
    v40 = v10;
    _os_log_send_and_compose_impl(v25, &v30, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v29);
    _os_crash_msg();
    __break(1u);
LABEL_20:
    v30 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = a2;
    v39 = 2048;
    v40 = v8;
    _os_log_send_and_compose_impl(v28, &v30, &v41, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v29);
    _os_crash_msg();
    __break(1u);
  }

  v14 = v13;
  *(v8[131] + 8 * a2) = v13;
  v8 = v8[129];
  if (v8 <= a2)
  {
    goto LABEL_20;
  }

  if (v13 == 1)
  {
    if (BYTE2(v29) == 1)
    {
      re::fill<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(*(v32 + 32) + 32 * *(v32 + 16) - 32, 2);
    }

    if (BYTE3(v29) == 1)
    {
      re::fill<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(*(*(&v32 + 1) + 32) + 32 * *(*(&v32 + 1) + 16) - 32, 3);
    }
  }

  v15 = *(v31 + 32) + 32 * *(v31 + 16);
  v16 = [**(v15 - 8) contents] + *(v15 - 24);
  v17 = 16 * v14 - 16;
  *&v16[v17] = *a3;
  v18 = *(*(&v31 + 1) + 32) + 32 * *(*(&v31 + 1) + 16);
  *([**(v18 - 8) contents] + *(v18 - 24) + v17) = *a4;
  return v9;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a2, 0) + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 1032);
  if (v5 <= a2)
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

    v14 = 797;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 1048) + 8 * a2) + (v4 << 7) - 128;
}

unint64_t re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40 * a3;
  v5 = *(v4 + 552);
  if (v5 <= a2)
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

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(v4 + 568) + 40 * a2;
}

{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40 * a3;
  v5 = *(v4 + 552);
  if (v5 <= a2)
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

    v14 = 797;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(v4 + 568) + 40 * a2;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40 * a3;
  v5 = *(v4 + 872);
  if (v5 <= a2)
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

    v14 = 797;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v4 + 888) + a2);
}

uint64_t re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingShapeAttribute>(uint64_t a1, uint64_t a2, uint64_t a3, char a4, re *a5)
{
  v9 = 0;
  v10 = a4 & 0x7F;
  do
  {
    if (!v10 && (*(a3 + v9) & 1) != 0)
    {
      v11 = *(a2 + 8 * v9);
      re::attributeInfo(*(a1 + v9), a2);
      re::allocate(v13, a5, 0x10, 0x10uLL);
      re::DynamicArray<re::EvaluationRegister>::add(v11, v13);
    }

    ++v9;
  }

  while (v9 != 4);
  return v10 + 1;
}

double re::fill<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(&v7, a2);
  if (v8 != 2)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v3 = [**(a1 + 24) contents];
  v4 = 0;
  v5 = &v3[*(a1 + 8)];
  do
  {
    result = *&v7;
    *&v5[v4] = v7;
    v4 += 16;
  }

  while (v4 != 2048);
  return result;
}

char *re::fill<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(&v7, a2);
  if (v8 != 3)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v6 = v7;
  result = [**(a1 + 24) contents];
  v4 = 0;
  v5 = &result[*(a1 + 8)];
  do
  {
    *&v5[v4] = v6;
    v4 += 16;
  }

  while (v4 != 2048);
  return result;
}

uint64_t re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v6 = a2;
  v7 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v8 = *(re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a2, 0) + 16);
  if (v8)
  {
    v9 = v6;
    v10 = *(v7 + 1032);
    if (v10 <= v6)
    {
      goto LABEL_28;
    }

    v9 = *(*(v7 + 1048) + 8 * v6) + (v8 << 7) - 128;
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  HIDWORD(v33) = 50462976;
  v35 = 0u;
  v36 = 0u;
  do
  {
    v12 = *(&v33 + v11 + 4);
    *(&v35 + v11) = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(v7, v6, v12);
    *(&v33 + v11++) = re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<re::PrimitiveRenderingShape>(v7, v6, v12);
  }

  while (v11 != 4);
  re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(v7, v6, 0);
  v10 = v6;
  v13 = *(v7 + 1032);
  if (v13 <= v6)
  {
    v34 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v40 = 789;
    v41 = 2048;
    v42 = v6;
    v43 = 2048;
    v44 = v13;
    _os_log_send_and_compose_impl(v23, &v34, &v45, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v14 = re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingShapeAttribute>(&v33 + 4, &v35, &v33, *(*(v7 + 1048) + 8 * v6), *(v7 + 1192));
  v13 = *(v7 + 1032);
  if (v13 <= v6)
  {
LABEL_20:
    v34 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v40 = 789;
    v41 = 2048;
    v42 = v6;
    v43 = 2048;
    v44 = v13;
    _os_log_send_and_compose_impl(v26, &v34, &v45, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  *(*(v7 + 1048) + 8 * v10) = v14;
  v7 = *(v7 + 1032);
  if (v7 <= v10)
  {
LABEL_24:
    v34 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v40 = 789;
    v41 = 2048;
    v42 = v10;
    v43 = 2048;
    v44 = v7;
    _os_log_send_and_compose_impl(v29, &v34, &v45, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    *&v35 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v40 = 797;
    v41 = 2048;
    v42 = v9;
    v43 = 2048;
    v44 = v10;
    _os_log_send_and_compose_impl(v32, &v35, &v45, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
  }

  if (v14 == 1)
  {
    if (BYTE2(v33) == 1)
    {
      re::fill<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(*(v36 + 32) + 32 * *(v36 + 16) - 32, 2);
    }

    if (BYTE3(v33) == 1)
    {
      re::fill<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(*(*(&v36 + 1) + 32) + 32 * *(*(&v36 + 1) + 16) - 32, 3);
    }
  }

  v16 = *(v35 + 32) + 32 * *(v35 + 16);
  v17 = [**(v16 - 8) contents] + *(v16 - 24);
  v18 = 16 * v15 - 16;
  *&v17[v18] = *a3;
  v19 = *(*(&v35 + 1) + 32) + 32 * *(*(&v35 + 1) + 16);
  *([**(v19 - 8) contents] + *(v19 - 24) + v18) = *a4;
  return v9;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1 + 40 * a3;
  v5 = *(v4 + 552);
  if (v5 <= a2)
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

    v14 = 789;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(v4 + 568) + 40 * a2;
}

{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1 + 40 * a3;
  v5 = *(v4 + 552);
  if (v5 <= a2)
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

    v14 = 797;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(v4 + 568) + 40 * a2;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1 + 40 * a3;
  v5 = *(v4 + 872);
  if (v5 <= a2)
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

    v14 = 797;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v4 + 888) + a2);
}

float re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(uint64_t a1, unint64_t a2, float *a3, _anonymous_namespace_ *a4, _BYTE *a5, uint64_t a6, uint64_t a7, re *a8)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*a5 & 1) == 0)
  {
    v15 = re::attributeInfo(a1, a2);
    if (a6)
    {
      v17 = v15;
      v18 = v16;
      do
      {
        re::allocate(v35, a8, v17, v18);
        re::fill<float,re::PrimitiveRenderingAttribute>(v35, a1);
        re::DynamicArray<re::EvaluationRegister>::add(a4, v35);
        --a6;
      }

      while (a6);
    }

    *a5 = 1;
  }

  v19 = *(a4 + 2);
  if (v19 <= a2 >> 7)
  {
    v26 = 0;
    memset(v35, 0, sizeof(v35));
    v23 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = a2 >> 7;
    v33 = 2048;
    v34 = v19;
    _os_log_send_and_compose_impl(v24, &v26, v35, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
  }

  v20 = *(a4 + 4) + 32 * (a2 >> 7);
  v21 = [**(v20 + 24) contents];
  result = *a3;
  *&v21[4 * (a2 & 0x7F) + *(v20 + 8)] = *a3;
  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(uint64_t a1, unint64_t a2, __n128 *a3, _anonymous_namespace_ *a4, _BYTE *a5, uint64_t a6, uint64_t a7, re *a8)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*a5 & 1) == 0)
  {
    v15 = re::attributeInfo(a1, a2);
    if (a6)
    {
      v17 = v15;
      v18 = v16;
      do
      {
        re::allocate(v35, a8, v17, v18);
        re::fill<re::Vector4<float>,re::PrimitiveRenderingAttribute>(v35, a1);
        re::DynamicArray<re::EvaluationRegister>::add(a4, v35);
        --a6;
      }

      while (a6);
    }

    *a5 = 1;
  }

  v19 = *(a4 + 2);
  if (v19 <= a2 >> 7)
  {
    v26 = 0;
    memset(v35, 0, sizeof(v35));
    v23 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = a2 >> 7;
    v33 = 2048;
    v34 = v19;
    _os_log_send_and_compose_impl(v24, &v26, v35, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
  }

  v20 = *(a4 + 4) + 32 * (a2 >> 7);
  v21 = [**(v20 + 24) contents];
  result = *a3;
  *&v21[16 * (a2 & 0x7F) + *(v20 + 8)] = *a3;
  return result;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<re::PrimitiveRenderingShape>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a2, 0);
  v6 = *(a1 + 1032);
  if (v6 <= v2)
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

    v15 = 797;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v6;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  return *(v5 + 16);
}

uint64_t re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1 + 40 * a3;
  v5 = *(v4 + 872);
  if (v5 <= a2)
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

    v14 = 789;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(v4 + 888) + a2;
}

double re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  v10 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a3, a4);
  v11 = re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<re::PrimitiveRenderingShape>(a1, a3);
  v13 = v12;
  v14 = re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<re::PrimitiveRenderingShape>(a1, a3, a4);
  v15 = *(a1 + 1192);

  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(a4, a2, a5, v10, v14, v11, v13, v15).n128_u64[0];
  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(uint64_t a1, unint64_t a2, __n128 *a3, _anonymous_namespace_ *a4, _BYTE *a5, uint64_t a6, uint64_t a7, re *a8)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((*a5 & 1) == 0)
  {
    re::attributeInfo(a1, a2);
    for (; a6; --a6)
    {
      re::allocate(v31, a8, 0x10, 0x10uLL);
      re::fill<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(v31, a1);
      re::DynamicArray<re::EvaluationRegister>::add(a4, v31);
    }

    *a5 = 1;
  }

  v15 = *(a4 + 2);
  if (v15 <= a2 >> 7)
  {
    v22 = 0;
    memset(v31, 0, sizeof(v31));
    v19 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = a2 >> 7;
    v29 = 2048;
    v30 = v15;
    _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  v16 = *(a4 + 4) + 32 * (a2 >> 7);
  v17 = [**(v16 + 24) contents];
  result = *a3;
  *&v17[16 * (a2 & 0x7F) + *(v16 + 8)] = *a3;
  return result;
}

double re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  v10 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a3, a4);
  v11 = re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<re::PrimitiveRenderingShape>(a1, a3);
  v13 = v12;
  v14 = re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<re::PrimitiveRenderingShape>(a1, a3, a4);
  v15 = *(a1 + 1192);

  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(a4, a2, a5, v10, v14, v11, v13, v15).n128_u64[0];
  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::set<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(uint64_t a1, unint64_t a2, __n128 *a3, _anonymous_namespace_ *a4, _BYTE *a5, uint64_t a6, uint64_t a7, re *a8)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((*a5 & 1) == 0)
  {
    re::attributeInfo(a1, a2);
    for (; a6; --a6)
    {
      re::allocate(v31, a8, 0x10, 0x10uLL);
      re::fill<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(v31, a1);
      re::DynamicArray<re::EvaluationRegister>::add(a4, v31);
    }

    *a5 = 1;
  }

  v15 = *(a4 + 2);
  if (v15 <= a2 >> 7)
  {
    v22 = 0;
    memset(v31, 0, sizeof(v31));
    v19 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = a2 >> 7;
    v29 = 2048;
    v30 = v15;
    _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  v16 = *(a4 + 4) + 32 * (a2 >> 7);
  v17 = [**(v16 + 24) contents];
  result = *a3;
  *&v17[16 * (a2 & 0x7F) + *(v16 + 8)] = *a3;
  return result;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<unsigned long>(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a2, 0);
  v5 = *(a1 + 1032);
  if (v5 <= a2)
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

    v14 = 797;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(Attribute + 16);
}

unint64_t re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40 * a3;
  v5 = *(v4 + 872);
  if (v5 <= a2)
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

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(v4 + 888) + a2;
}

double re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,unsigned long>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, __n128 *a5)
{
  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a3, a4);
  v11 = re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<unsigned long>(a1, a3);
  v13 = v12;
  v14 = re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<unsigned long>(a1, a3, a4);
  v15 = *(a1 + 1192);

  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(a4, a2, a5, Attribute, v14, v11, v13, v15).n128_u64[0];
  return result;
}

double re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,unsigned long>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, __n128 *a5)
{
  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a3, a4);
  v11 = re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<unsigned long>(a1, a3);
  v13 = v12;
  v14 = re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<unsigned long>(a1, a3, a4);
  v15 = *(a1 + 1192);

  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(a4, a2, a5, Attribute, v14, v11, v13, v15).n128_u64[0];
  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector4<float>,re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3, __n128 *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1 + 40 * a3;
  v7 = *(v6 + 872);
  if (v7 <= a2)
  {
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v11 = v6 + 856;
  if (*(*(v6 + 888) + a2) == 1)
  {
    v12 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a2, a3);
    *(v12 + 16) = 0;
    ++*(v12 + 24);
    v7 = *(v11 + 16);
    if (v7 <= v5)
    {
      goto LABEL_18;
    }

    *(*(v11 + 32) + v5) = 0;
  }

  v13 = a1 + 40 * a3;
  v4 = *(v13 + 712);
  if (v4 <= v5)
  {
LABEL_14:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v4;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v14 = (*(v13 + 728) + 32 * v5);
  if (v14[1].n128_u32[0] == 3)
  {
    result = *a4;
    *v14 = *a4;
  }

  else
  {
    v14[1].n128_u32[0] = -1;
    result = *a4;
    *v14 = *a4;
    v14[1].n128_u32[0] = 3;
  }

  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector3<float>,re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3, __n128 *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1 + 40 * a3;
  v7 = *(v6 + 872);
  if (v7 <= a2)
  {
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v11 = v6 + 856;
  if (*(*(v6 + 888) + a2) == 1)
  {
    v12 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a2, a3);
    *(v12 + 16) = 0;
    ++*(v12 + 24);
    v7 = *(v11 + 16);
    if (v7 <= v5)
    {
      goto LABEL_18;
    }

    *(*(v11 + 32) + v5) = 0;
  }

  v13 = a1 + 40 * a3;
  v4 = *(v13 + 712);
  if (v4 <= v5)
  {
LABEL_14:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v4;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v14 = (*(v13 + 728) + 32 * v5);
  if (v14[1].n128_u32[0] == 2)
  {
    result = *a4;
    *v14 = *a4;
  }

  else
  {
    v14[1].n128_u32[0] = -1;
    result = *a4;
    *v14 = *a4;
    v14[1].n128_u32[0] = 2;
  }

  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector4<float>,unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3, __n128 *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40 * a3;
  v7 = *(v6 + 872);
  if (v7 <= a2)
  {
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v11 = v6 + 856;
  if (*(*(v6 + 888) + a2) == 1)
  {
    Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a2, a3);
    *(Attribute + 16) = 0;
    ++*(Attribute + 24);
    v7 = *(v11 + 16);
    if (v7 <= a2)
    {
      goto LABEL_18;
    }

    *(*(v11 + 32) + a2) = 0;
  }

  v13 = a1 + 40 * a3;
  v4 = *(v13 + 712);
  if (v4 <= a2)
  {
LABEL_14:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v4;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v14 = (*(v13 + 728) + 32 * a2);
  if (v14[1].n128_u32[0] == 3)
  {
    result = *a4;
    *v14 = *a4;
  }

  else
  {
    v14[1].n128_u32[0] = -1;
    result = *a4;
    *v14 = *a4;
    v14[1].n128_u32[0] = 3;
  }

  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector3<float>,unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3, __n128 *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40 * a3;
  v7 = *(v6 + 872);
  if (v7 <= a2)
  {
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v11 = v6 + 856;
  if (*(*(v6 + 888) + a2) == 1)
  {
    Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a2, a3);
    *(Attribute + 16) = 0;
    ++*(Attribute + 24);
    v7 = *(v11 + 16);
    if (v7 <= a2)
    {
      goto LABEL_18;
    }

    *(*(v11 + 32) + a2) = 0;
  }

  v13 = a1 + 40 * a3;
  v4 = *(v13 + 712);
  if (v4 <= a2)
  {
LABEL_14:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v4;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v14 = (*(v13 + 728) + 32 * a2);
  if (v14[1].n128_u32[0] == 2)
  {
    result = *a4;
    *v14 = *a4;
  }

  else
  {
    v14[1].n128_u32[0] = -1;
    result = *a4;
    *v14 = *a4;
    v14[1].n128_u32[0] = 2;
  }

  return result;
}

void re::PrimitiveRenderingContext::buildMeshScene(unint64_t a1, uint64_t a2, re::MaterialParameterTableBuilder *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, re::Allocator *a8, uint64_t a9, uint64_t a10)
{
  v133 = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v13 = (*(*a3 + 32))(a3, 24, 8);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  v14 = re::FixedArray<re::MeshPart>::init<>(v13, a3, a5);
  *(&v116 + 1) = re::globalAllocators(v14)[2];
  *&v115 = &unk_1F5D03DD0;
  *&v117 = &v115;
  v15 = (*(*a3 + 16))(a3, v13, &v115);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v115);
  v16 = (*(*a3 + 32))(a3, 32, 16);
  v17.i64[0] = 0x7F0000007FLL;
  v17.i64[1] = 0x7F0000007FLL;
  v96 = vnegq_f32(v17);
  *v16 = v96;
  *(v16 + 16) = v17;
  v89 = v16;
  v18 = (*(*a3 + 32))(a3, 24, 8);
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *v18 = 0;
  re::FixedArray<unsigned long>::init<>(v18, a3, a5);
  v19 = (*(*a3 + 32))(a3, 24, 8);
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *v19 = 0;
  v99 = a3;
  re::FixedArray<unsigned long>::init<>(v19, a3, a5);
  re::StackScratchAllocator::StackScratchAllocator(v111);
  v109 = 0uLL;
  v110 = 0;
  v20 = re::FixedArray<re::AABB>::init<>(&v109, v111, a5);
  v100 = v15;
  if (a5)
  {
    v21 = 0;
    v22 = 0;
    v93 = a5 - 1;
    v23 = 520;
    v91 = a5;
    v92 = v19;
    v90 = v18;
    do
    {
      if (v93 == v22)
      {
        v24 = a6;
      }

      else
      {
        v24 = 128;
      }

      v25 = 1;
      if (*(a7 + 16))
      {
        v25 = 2;
      }

      v18 = *(a7 + 80);
      v107 = 0;
      v108 = 0;
      if (v18)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = v25;
      }

      v106 = 0;
      LOWORD(v117) = 287;
      *(&v117 + 1) = *(a7 + 64);
      *v119 = 0;
      *&v119[8] = 0;
      *&v119[12] = [*(a7 + 64) length];
      *&v119[16] = 0xFFFFFFFF00000000;
      v29 = v107;
      if (!v107)
      {
        goto LABEL_68;
      }

      v30 = v108;
      re::DynamicString::operator=(v108, &v115);
      *(v30 + 16) = v117;
      v27 = &v115;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v30 + 40, &v117 + 8);
      *(v30 + 9) = *&v119[8];
      *(v30 + 10) = *&v119[16];
      if (*v119 != -1)
      {
        (off_1F5D03DA0[*v119])(v130, &v117 + 8);
      }

      *v119 = -1;
      v31 = v115;
      if (v115 && (BYTE8(v115) & 1) != 0)
      {
        v31 = (*(*v115 + 40))();
      }

      if (*(a7 + 16))
      {
        LOWORD(v117) = 49;
        *(&v117 + 1) = *(a7 + 72);
        *v119 = 0;
        *&v119[8] = 0;
        *&v119[12] = [*(a7 + 72) length];
        *&v119[16] = 0xFFFFFFFF00000000;
        if (v29 == 1)
        {
          goto LABEL_92;
        }

        re::DynamicString::operator=((v30 + 88), &v115);
        *(v30 + 60) = v117;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v30 + 128, &v117 + 8);
        *(v30 + 10) = *&v119[8];
        if (*v119 != -1)
        {
          (off_1F5D03DA0[*v119])(v130, &v117 + 8);
        }

        v19 = &v115;
        *v119 = -1;
        v31 = v115;
        if (v115 && (BYTE8(v115) & 1) != 0)
        {
          v31 = (*(*v115 + 40))();
        }

        v27 = 2;
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = &v115;
        v27 = 1;
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      LOWORD(v117) = 287;
      *(&v117 + 1) = *(a7 + 80);
      *v119 = 0;
      *&v119[8] = 0;
      *&v119[12] = [*(a7 + 80) length];
      *&v119[16] = 0xFFFFFFFF00000000;
      if (v29 <= v27)
      {
        goto LABEL_96;
      }

      v18 = v30 + 88 * v27;
      re::DynamicString::operator=(v18, &v115);
      *(v18 + 32) = v117;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18 + 40, &v117 + 8);
      *(v18 + 72) = *&v119[8];
      *(v18 + 80) = *&v119[16];
      if (*v119 != -1)
      {
        (off_1F5D03DA0[*v119])(v130, &v117 + 8);
      }

      v19 = &v115;
      *v119 = -1;
      if (v115 && (BYTE8(v115) & 1) != 0)
      {
        (*(*v115 + 40))();
      }

LABEL_33:
      *&v32 = 0x7F0000007FLL;
      *(&v32 + 1) = 0x7F0000007FLL;
      v105[0] = v96;
      v105[1] = v32;
      *&v115 = v22;
      v130[0] = v24;
      (*(**(a10 + 32) + 16))(v113);
      v27 = v109.u64[1];
      if (v109.i64[1] <= v22)
      {
        goto LABEL_72;
      }

      v33 = (v110 + v21);
      v34 = *&v113[16];
      *v33 = *v113;
      v33[1] = v34;
      if (*(a2 + 1184) == 1)
      {
        v35 = *v89;
        v36 = v89[1];
        v35.i32[3] = 0;
        v37 = *v33;
        v37.i32[3] = 0;
        *v89 = vminnmq_f32(v35, v37);
        v38 = v33[1];
        v36.i32[3] = 0;
        v38.i32[3] = 0;
        v89[1] = vmaxnmq_f32(v36, v38);
      }

      v103 = 0xD2E811B7E678E9E0;
      v104 = "PrimitiveRendering Instance";
      v39 = *(a7 + 16);
      v40 = *(a7 + 8);
      *v113 = xmmword_1E3047670;
      *&v113[16] = xmmword_1E3047680;
      *&v113[32] = xmmword_1E30476A0;
      v114 = xmmword_1E30474D0;
      v102 = 0;
      v101 = 0;
      re::MeshPart::MeshPart(&v115, &v103, v22, v30, v29, v39, v40, v24, v105, v22, v113, &v101, -1, 0);
      v15 = v100;
      v27 = *(v100 + 8);
      if (v27 <= v22)
      {
        goto LABEL_76;
      }

      v41 = re::MeshPart::operator=(*(v100 + 16) + v23 - 520, &v115);
      if (v121)
      {
        if (v121)
        {
        }
      }

      v122 = &str_67;
      v121 = 0;
      re::FixedArray<re::StringID>::deinit(v120);
      re::AttributeTable::~AttributeTable(&v115);
      v18 = v90;
      a5 = v91;
      if (v103)
      {
        if (v103)
        {
        }
      }

      v103 = 0;
      v104 = &str_67;
      v27 = *(v100 + 8);
      v19 = v92;
      if (v27 <= v22)
      {
        goto LABEL_80;
      }

      *(*(v100 + 16) + v23) = *a7;
      *&v115 = v22;
      (*(**(a9 + 32) + 16))(*(a9 + 32), &v115);
      v43 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(a8, v99);
      v27 = *(v90 + 8);
      if (v27 <= v22)
      {
        goto LABEL_84;
      }

      *(*(v90 + 16) + 8 * v22) = v43;
      v27 = *(v92 + 1);
      if (v27 <= v22)
      {
        goto LABEL_88;
      }

      *(*(v92 + 2) + 8 * v22) = a4;
      v20 = re::FixedArray<re::NamedVertexBuffer>::deinit(&v106);
      v23 += 544;
      v21 += 32;
      ++v22;
    }

    while (v91 != v22);
  }

  v29 = (*(*v99 + 32))(v99, 24, 8);
  v29[1] = 0;
  v29[2] = 0;
  *v29 = 0;
  re::FixedArray<re::MeshPart const*>::init<>(v29, v99, a5);
  if (a5)
  {
    v44 = 0;
    v22 = 0;
    v27 = *(v15 + 8);
    while (v27 != v22)
    {
      v15 = v29[1];
      if (v15 <= v22)
      {
        goto LABEL_64;
      }

      *(v29[2] + 8 * v22++) = *(v100 + 16) + v44;
      v44 += 544;
      if (a5 == v22)
      {
        goto LABEL_52;
      }
    }

    *v113 = 0;
    v118 = 0u;
    *v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v130[0]) = 136315906;
    *(v130 + 4) = "operator[]";
    WORD2(v130[1]) = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    *(&v130[1] + 6) = 468;
    WORD1(v130[2]) = 2048;
    *(&v130[2] + 4) = v27;
    WORD2(v130[3]) = 2048;
    *(&v130[3] + 6) = v27;
    _os_log_send_and_compose_impl(v59, v113, &v115, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_64:
    *v113 = 0;
    v118 = 0u;
    *v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v60 = MEMORY[0x1E69E9C10];
    v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v130[0]) = 136315906;
    *(v130 + 4) = "operator[]";
    WORD2(v130[1]) = 1024;
    if (v61)
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    *(&v130[1] + 6) = 468;
    WORD1(v130[2]) = 2048;
    *(&v130[2] + 4) = v22;
    WORD2(v130[3]) = 2048;
    *(&v130[3] + 6) = v15;
    _os_log_send_and_compose_impl(v62, v113, &v115, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_68:
    *v123 = 0;
    v131 = 0u;
    v132 = 0u;
    memset(v130, 0, sizeof(v130));
    v63 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    *&v113[14] = 468;
    *&v113[18] = 2048;
    *&v113[20] = 0;
    *&v113[28] = 2048;
    *&v113[30] = 0;
    _os_log_send_and_compose_impl(v65, v123, v130, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_72:
    *v123 = 0;
    v118 = 0u;
    *v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v130[0]) = 136315906;
    *(v130 + 4) = "operator[]";
    WORD2(v130[1]) = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    *(&v130[1] + 6) = 468;
    WORD1(v130[2]) = 2048;
    *(&v130[2] + 4) = v22;
    WORD2(v130[3]) = 2048;
    *(&v130[3] + 6) = v27;
    _os_log_send_and_compose_impl(v68, v123, &v115, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_76:
    v112 = 0;
    v131 = 0u;
    v132 = 0u;
    memset(v130, 0, sizeof(v130));
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    v124 = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    v125 = 468;
    v126 = 2048;
    v127 = v22;
    v128 = 2048;
    v129 = v27;
    _os_log_send_and_compose_impl(v71, &v112, v130, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_80:
    *v113 = 0;
    v118 = 0u;
    *v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v72 = MEMORY[0x1E69E9C10];
    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v130[0]) = 136315906;
    *(v130 + 4) = "operator[]";
    WORD2(v130[1]) = 1024;
    if (v73)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    *(&v130[1] + 6) = 468;
    WORD1(v130[2]) = 2048;
    *(&v130[2] + 4) = v22;
    WORD2(v130[3]) = 2048;
    *(&v130[3] + 6) = v27;
    _os_log_send_and_compose_impl(v74, v113, &v115, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_84:
    *v113 = 0;
    v118 = 0u;
    *v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v130[0]) = 136315906;
    *(v130 + 4) = "operator[]";
    WORD2(v130[1]) = 1024;
    if (v76)
    {
      v77 = 3;
    }

    else
    {
      v77 = 2;
    }

    *(&v130[1] + 6) = 468;
    WORD1(v130[2]) = 2048;
    *(&v130[2] + 4) = v22;
    WORD2(v130[3]) = 2048;
    *(&v130[3] + 6) = v27;
    _os_log_send_and_compose_impl(v77, v113, &v115, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_88:
    *v113 = 0;
    v118 = 0u;
    *v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v78 = MEMORY[0x1E69E9C10];
    v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v130[0]) = 136315906;
    *(v130 + 4) = "operator[]";
    WORD2(v130[1]) = 1024;
    if (v79)
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    *(&v130[1] + 6) = 468;
    WORD1(v130[2]) = 2048;
    *(&v130[2] + 4) = v22;
    WORD2(v130[3]) = 2048;
    *(&v130[3] + 6) = v27;
    _os_log_send_and_compose_impl(v80, v113, &v115, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_92:
    *v123 = 0;
    v131 = 0u;
    v132 = 0u;
    memset(v130, 0, sizeof(v130));
    v29 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v113[14] = 468;
    *&v113[18] = 2048;
    *&v113[20] = 1;
    *&v113[28] = 2048;
    *&v113[30] = 1;
    _os_log_send_and_compose_impl(v82, v123, v130, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_96:
    *v123 = 0;
    v131 = 0u;
    v132 = 0u;
    memset(v130, 0, sizeof(v130));
    v83 = MEMORY[0x1E69E9C10];
    v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    if (v84)
    {
      v85 = 3;
    }

    else
    {
      v85 = 2;
    }

    *&v113[14] = 468;
    *&v113[18] = 2048;
    *&v113[20] = v27;
    *&v113[28] = 2048;
    *&v113[30] = v29;
    _os_log_send_and_compose_impl(v85, v123, v130, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
  }

  else
  {
LABEL_52:
    v27 = a1;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 424) = 0;
    *(a1 + 440) = 0;
    *(a1 + 448) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 404) = 0u;
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once == -1)
    {
      goto LABEL_53;
    }
  }

  dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
LABEL_53:
  *(v27 + 464) = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  __asm { FMOV            V0.2S, #1.0 }

  *(v27 + 472) = _D0;
  *(v27 + 480) = 1065353216;
  *(v27 + 488) = 0u;
  *(v27 + 504) = 0u;
  *(v27 + 519) = 0;
  *(v27 + 524) = 0xFFFFFFFF00000001;
  *(v27 + 532) = 0;
  *(v27 + 544) = 0;
  *(v27 + 592) = 0;
  *(v27 + 608) = 0;
  *(v27 + 688) = 65537;
  *(v27 + 692) = 1;
  *(v27 + 696) = xmmword_1E3060D60;
  *(v27 + 712) = 16788070;
  *(v27 + 720) = 0;
  v50 = v29[1];
  *v27 = v29[2];
  *(v27 + 8) = v50;
  *&v115 = v89;
  *(&v115 + 1) = 1;
  v51 = (*(*v99 + 32))(v99, 72, 8);
  *(v27 + 112) = re::MeshBoundingBoxes::MeshBoundingBoxes(v51, v99, &v115, 1);
  *&v115 = v110;
  *(&v115 + 1) = v109.i64[1];
  v52 = (*(*v99 + 32))(v99, 72, 8);
  *(v27 + 120) = re::MeshBoundingBoxes::MeshBoundingBoxes(v52, v99, &v115, 1);
  v53 = v89[1];
  *(v27 + 80) = *v89;
  *(v27 + 96) = v53;
  *(v27 + 128) = xmmword_1E3047670;
  *(v27 + 144) = xmmword_1E3047680;
  *(v27 + 160) = xmmword_1E30476A0;
  *(v27 + 176) = xmmword_1E30474D0;
  v54 = *(v18 + 8);
  *(v27 + 280) = *(v18 + 16);
  *(v27 + 288) = v54;
  v55 = *(v19 + 1);
  *(v27 + 192) = *(v19 + 2);
  *(v27 + 200) = v55;
  if (*(a2 + 1184))
  {
    v56 = 8;
  }

  else
  {
    v56 = 0;
  }

  *(v27 + 504) = *(v27 + 504) & 0xFFFFFFF7 | v56;
  *(v27 + 508) |= 8u;
  if (v109.i64[0] && v109.i64[1])
  {
    (*(*v109.i64[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v111);
}

unint64_t *re::PrimitiveMeshAttribute::uniformCustomAttribute<float>@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  result = re::StringID::operator=(a3, a1);
  *(result + 8) = 256;
  *(result + 18) = 28;
  v5 = *a2;
  if (*(result + 12))
  {
    *(result + 12) = 0;
  }

  *(result + 8) = v5;
  return result;
}

unint64_t *re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector2<float>>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  result = re::StringID::operator=(a3, a1);
  *(result + 8) = 256;
  *(result + 18) = 29;
  v5 = *a2;
  if (*(result + 12) != 1)
  {
    *(result + 12) = 1;
  }

  result[4] = v5;
  return result;
}

unint64_t *re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector3<float>>@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  result = re::StringID::operator=(a3, a1);
  *(result + 8) = 256;
  *(result + 18) = 30;
  v5 = *(result + 12);
  *(result + 2) = *a2;
  if (v5 != 2)
  {
    *(result + 12) = 2;
  }

  return result;
}

unint64_t *re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  result = re::StringID::operator=(a3, a1);
  *(result + 8) = 256;
  *(result + 18) = 31;
  v5 = *(result + 12);
  *(result + 2) = *a2;
  if (v5 != 3)
  {
    *(result + 12) = 3;
  }

  return result;
}

void re::PrimitiveRenderer::~PrimitiveRenderer(re::PrimitiveRenderer *this)
{
  *this = 0;
  re::DynamicArray<re::PrimitiveRenderingContext>::deinit(this + 256);
  re::DynamicArray<re::PrimitiveShapeGeometry>::deinit(this + 208);
  v2 = *(this + 24);
  if (v2)
  {

    *(this + 24) = 0;
  }

  v3 = *(this + 23);
  if (v3)
  {

    *(this + 23) = 0;
  }

  v4 = *(this + 22);
  if (v4)
  {

    *(this + 22) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {

    *(this + 12) = 0;
  }

  v6 = *(this + 11);
  if (v6)
  {

    *(this + 11) = 0;
  }

  v7 = *(this + 10);
  if (v7)
  {

    *(this + 10) = 0;
  }
}

uint64_t re::PrimitiveRenderer::init(re::PrimitiveRenderer *this, id *a2)
{
  *(this + 31) = a2;
  re::createCube(this + 16, a2 + 26);
  re::createCylinder(4uLL, this + 112, (*(this + 31) + 208));
  re::PrimitiveRenderer::createUnitBox(this);
  re::PrimitiveRenderer::createRectangle(this);
  re::PrimitiveRenderer::createCylinder(this, 0x10uLL);
  re::PrimitiveRenderer::createUVSphere(this, 0x10uLL);
  re::PrimitiveRenderer::createCone(this, 0x10uLL);
  re::PrimitiveRenderer::createCapsule(this, 0x10uLL);
  re::PrimitiveRenderer::createBoneBipyramid(this);
  result = re::PrimitiveRenderer::createHemisphere(this, 0x10uLL);
  *this = 1;
  return result;
}

void re::PrimitiveRenderer::createUnitBox(re::PrimitiveRenderer *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 31);
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  v5 = vnegq_f32(v3);
  v6 = v3;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  re::createCube(v4, (v2 + 208));
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v4);
  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {

    v8 = 0;
  }

  if (v7)
  {
  }
}

void re::PrimitiveRenderer::createRectangle(re::PrimitiveRenderer *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 31);
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  v9 = vnegq_f32(v3);
  v10 = v3;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v17[0] = xmmword_1E30A2490;
  v17[1] = unk_1E30A24A0;
  v17[2] = xmmword_1E30A24B0;
  v17[3] = unk_1E30A24C0;
  v16[0] = xmmword_1E30A24D0;
  v16[1] = unk_1E30A24E0;
  v16[2] = xmmword_1E30A24F0;
  v16[3] = unk_1E30A2500;
  v15 = 3;
  v14 = 0x2000200010000;
  v7[0] = xmmword_1E30A23F0;
  v7[1] = xmmword_1E3060D60;
  v6[0] = v17;
  v6[1] = 4;
  v5[0] = &v14;
  v5[1] = 6;
  v4[0] = v16;
  v4[1] = 4;
  re::setShape(v6, v5, v4, v8, (v2 + 208), v7);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v8);
  if (v13)
  {

    v13 = 0;
  }

  if (v12)
  {

    v12 = 0;
  }

  if (v11)
  {
  }
}

void re::PrimitiveRenderer::createCylinder(re::PrimitiveRenderer *this, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(this + 31);
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v6 = vnegq_f32(v4);
  v7 = v4;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::createCylinder(a2, v5, (v3 + 208));
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v5);
  if (v10)
  {

    v10 = 0;
  }

  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {
  }
}

void re::PrimitiveRenderer::createUVSphere(re::PrimitiveRenderer *this, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(this + 31);
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v6 = vnegq_f32(v4);
  v7 = v4;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::createUVSphere(a2, v5, (v3 + 208), 0.0);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v5);
  if (v10)
  {

    v10 = 0;
  }

  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {
  }
}

uint64_t re::PrimitiveRenderer::createCone(re::PrimitiveRenderer *this, unint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v33[1] = 0;
  v34 = 0;
  v32 = 0;
  v33[0] = 0;
  v35 = 0;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v31 = 0;
  v28 = xmmword_1E3047690;
  if (a2)
  {
    v4 = 0;
    v5 = 6.2832 / a2;
    do
    {
      v6 = __sincosf_stret(v5 * v4++);
      v7 = __sincosf_stret(v5 * v4);
      v8.n128_u32[0] = 0;
      v8.n128_u32[1] = LODWORD(v6.__cosval);
      v8.n128_u64[1] = LODWORD(v6.__sinval);
      v37[0] = v8;
      v8.n128_u32[0] = 0;
      v8.n128_u32[1] = LODWORD(v7.__cosval);
      v8.n128_u64[1] = LODWORD(v7.__sinval);
      v23 = v8;
      v27 = xmmword_1E3047670;
      re::DynamicArray<re::Vector3<float>>::add(v33, &v27);
      re::DynamicArray<re::Vector3<float>>::add(v33, v37);
      re::DynamicArray<re::Vector3<float>>::add(v33, &v23);
      v9 = vaddq_f32(v37[0], xmmword_1E30661F0);
      v10 = vaddq_f32(v23, xmmword_1E30661F0);
      v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v9)), v10, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
      v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
      v13 = vmulq_f32(v11, v11);
      *&v14 = v13.f32[1] + (v13.f32[2] + v13.f32[0]);
      *v13.f32 = vrsqrte_f32(v14);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
      v27 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v27);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v27);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v27);
      v26 = 0uLL;
      re::DynamicArray<re::Vector3<float>>::add(v33, &v26);
      re::DynamicArray<re::Vector3<float>>::add(v33, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v33, v37);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v28);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v28);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v28);
    }

    while (a2 != v4);
    v15 = v36;
    v16 = v34;
    v17 = v32;
    v18 = v30;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  v19 = *(this + 31);
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  v37[2] = vnegq_f32(v20);
  v37[3] = v20;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v23 = xmmword_1E30A2400;
  v24 = 0x3F8000003F800000;
  v25 = 1065353216;
  v27.i64[0] = v15;
  v27.i64[1] = v16;
  v26 = 0uLL;
  v22[0] = v17;
  v22[1] = v18;
  re::setShape(&v27, &v26, v22, v37, (v19 + 208), &v23);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v37);
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
  }

  if (v29[0] && v32)
  {
    (*(*v29[0] + 40))();
  }

  result = v33[0];
  if (v33[0])
  {
    if (v36)
    {
      return (*(*v33[0] + 40))();
    }
  }

  return result;
}

void re::PrimitiveRenderer::createCapsule(re::PrimitiveRenderer *this, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(this + 31);
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v6 = vnegq_f32(v4);
  v7 = v4;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::createUVSphere(a2, v5, (v3 + 208), 2.0);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v5);
  if (v10)
  {

    v10 = 0;
  }

  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {
  }
}

uint64_t re::PrimitiveRenderer::createBoneBipyramid(re::PrimitiveRenderer *this)
{
  v2 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v30 = 0;
  v31[0] = 0;
  v33 = 0;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v3 = xmmword_1E3047670;
  v26 = xmmword_1E3047670;
  LODWORD(v3) = 1036831949;
  v19 = v3;
  v29 = 0;
  do
  {
    v4 = v2 + 1;
    v5 = v19;
    v6 = v19;
    *&v6.i32[1] = flt_1E30A2410[v2] * *&v19;
    *&v6.i32[2] = flt_1E30A2410[(v2 + 1) & 3] * *&v19;
    v35[0] = v6;
    v5.i32[1] = v6.i32[2];
    *&v5.i32[2] = flt_1E30A2410[v2 ^ 2] * *&v19;
    v20 = v5;
    v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vnegq_f32(v5)), v6, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
    v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v9 = vmulq_f32(v7, v7);
    *&v10 = v9.f32[1] + (v9.f32[2] + v9.f32[0]);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v25 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    v11 = vsubq_f32(v6, v26);
    v12 = vsubq_f32(v5, v26);
    v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v11)), v12, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v14 = vmulq_f32(v13, v13);
    *v5.i32 = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
    v15 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    *v13.i8 = vrsqrte_f32(v5.u32[0]);
    *v13.i8 = vmul_f32(*v13.i8, vrsqrts_f32(v5.u32[0], vmul_f32(*v13.i8, *v13.i8)));
    v24 = vmulq_n_f32(v15, vmul_f32(*v13.i8, vrsqrts_f32(v5.u32[0], vmul_f32(*v13.i8, *v13.i8))).f32[0]);
    v23 = 0uLL;
    re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
    re::DynamicArray<re::Vector3<float>>::add(v31, &v20);
    re::DynamicArray<re::Vector3<float>>::add(v31, v35);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
    re::DynamicArray<re::Vector3<float>>::add(v31, &v26);
    re::DynamicArray<re::Vector3<float>>::add(v31, v35);
    re::DynamicArray<re::Vector3<float>>::add(v31, &v20);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
    v2 = v4;
  }

  while (v4 != 4);
  v16 = *(this + 31);
  v17.i64[0] = 0x7F0000007FLL;
  v17.i64[1] = 0x7F0000007FLL;
  v35[2] = vnegq_f32(v17);
  v35[3] = v17;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v20.n128_u64[0] = 0xBF800000BF800000;
  v20.n128_u64[1] = 3212836864;
  v21 = 0x3F8000003F800000;
  v22 = 1065353216;
  v25.i64[0] = v34;
  v25.i64[1] = v32;
  v24 = 0uLL;
  v23.n128_u64[0] = v30;
  v23.n128_u64[1] = v28;
  re::setShape(&v25, &v24, &v23, v35, (v16 + 208), &v20);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v35);
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
  }

  if (v27[0] && v30)
  {
    (*(*v27[0] + 40))();
  }

  result = v31[0];
  if (v31[0])
  {
    if (v34)
    {
      return (*(*v31[0] + 40))();
    }
  }

  return result;
}

uint64_t re::PrimitiveRenderer::createHemisphere(re::PrimitiveRenderer *this, unint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v44[1] = 0;
  v45 = 0;
  v44[0] = 0;
  v46 = 0;
  v43 = 0;
  v40[1] = 0;
  v41 = 0;
  v40[0] = 0;
  v42 = 0;
  v39 = xmmword_1E3047670;
  if (a2)
  {
    v4 = 6.2832 / a2;
    v5 = 3.1416 / (a2 >> 1);
    v7 = __sincosf_stret(v5);
    *&v6 = v7.__cosval;
    v30 = v6;
    v8 = 0;
    do
    {
      v9 = __sincosf_stret(v4 * v8++);
      v10 = __sincosf_stret(v4 * v8);
      v11 = v30;
      v12 = v30;
      v12.n128_f32[1] = v7.__sinval * v9.__cosval;
      v12.n128_f32[2] = v7.__sinval * v9.__sinval;
      v48[0] = v12;
      *(&v11 + 1) = v7.__sinval * v10.__cosval;
      *(&v11 + 2) = v7.__sinval * v10.__sinval;
      v32 = v11;
      re::DynamicArray<re::Vector3<float>>::add(v44, &v39);
      re::DynamicArray<re::Vector3<float>>::add(v44, v48);
      re::DynamicArray<re::Vector3<float>>::add(v44, &v32);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v39);
      re::DynamicArray<re::Vector3<float>>::add(v40, v48);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v32);
      if (a2 >= 8)
      {
        v13 = 1;
        do
        {
          v15 = __sincosf_stret(v5 * v13);
          v14.f32[0] = v15.__cosval;
          v31 = v14;
          v17 = __sincosf_stret(v5 * ++v13);
          v16.n128_f32[0] = v17.__cosval;
          v18 = v31;
          v18.f32[1] = v9.__cosval * v15.__sinval;
          v18.f32[2] = v9.__sinval * v15.__sinval;
          v19 = v16;
          v19.n128_f32[1] = v9.__cosval * v17.__sinval;
          v19.n128_f32[2] = v9.__sinval * v17.__sinval;
          v37 = v19;
          v38 = v18;
          v16.n128_f32[1] = v10.__cosval * v17.__sinval;
          v16.n128_f32[2] = v10.__sinval * v17.__sinval;
          v36 = v16;
          v20 = v31;
          v20.n128_f32[1] = v10.__cosval * v15.__sinval;
          v20.n128_f32[2] = v10.__sinval * v15.__sinval;
          v35 = v20;
          re::DynamicArray<re::Vector3<float>>::add(v44, &v38);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v37);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v36);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v37);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v36);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v38);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v36);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v35);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v36);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v35);
        }

        while (a2 >> 2 != v13);
      }

      v21.n128_u32[0] = 0;
      v21.n128_u32[1] = LODWORD(v9.__cosval);
      v21.n128_u64[1] = LODWORD(v9.__sinval);
      LODWORD(v22) = 0;
      DWORD1(v22) = LODWORD(v10.__cosval);
      v48[0] = v21;
      *(&v22 + 1) = LODWORD(v10.__sinval);
      v32 = v22;
      v38 = 0uLL;
      re::DynamicArray<re::Vector3<float>>::add(v44, &v38);
      re::DynamicArray<re::Vector3<float>>::add(v44, &v32);
      re::DynamicArray<re::Vector3<float>>::add(v44, v48);
      v38 = vnegq_f32(v39);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
      v38 = vnegq_f32(v39);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
      v38 = vnegq_f32(v39);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
    }

    while (v8 != a2);
    v23 = v47;
    v24 = v45;
    v25 = v43;
    v26 = v41;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
  }

  v27 = *(this + 31);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v48[2] = vnegq_f32(v28);
  v48[3] = v28;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v32 = xmmword_1E30A2400;
  v33 = 0x3F8000003F800000;
  v34 = 1065353216;
  v38.i64[0] = v23;
  v38.i64[1] = v24;
  v37 = 0uLL;
  v36.n128_u64[0] = v25;
  v36.n128_u64[1] = v26;
  re::setShape(&v38, &v37, &v36, v48, (v27 + 208), &v32);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v48);
  if (v51)
  {

    v51 = 0;
  }

  if (v50)
  {

    v50 = 0;
  }

  if (v49)
  {
  }

  if (v40[0] && v43)
  {
    (*(*v40[0] + 40))();
  }

  result = v44[0];
  if (v44[0])
  {
    if (v47)
    {
      return (*(*v44[0] + 40))(v44[0]);
    }
  }

  return result;
}

uint64_t re::createCylinder(unint64_t a1, uint64_t a2, id *a3)
{
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v33 = 0;
  v30 = 0;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v29 = 0;
  v26 = 0uLL;
  v25 = xmmword_1E3047670;
  if (a1)
  {
    v6 = 6.2832 / a1;
    for (i = 1; i <= a1; ++i)
    {
      v8 = __sincosf_stret(v6 * (i - 1));
      v9 = __sincosf_stret(v6 * i);
      v10.n128_u32[0] = 0;
      v10.n128_u32[1] = LODWORD(v8.__cosval);
      v10.n128_u64[1] = LODWORD(v8.__sinval);
      v22[0] = v10;
      v10.n128_u32[0] = 0;
      v10.n128_u32[1] = LODWORD(v9.__cosval);
      v10.n128_u64[1] = LODWORD(v9.__sinval);
      v24 = v10;
      re::DynamicArray<re::Vector3<float>>::add(v31, &v26);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v24);
      re::DynamicArray<re::Vector3<float>>::add(v31, v22);
      v23 = vnegq_f32(v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v23);
      v23 = vnegq_f32(v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v23);
      v23 = vnegq_f32(v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v25);
      v23 = vaddq_f32(v22[0], v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      v23 = vaddq_f32(v24, v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, v22);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v24);
      v23 = vaddq_f32(v22[0], v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v27, v22);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
      re::DynamicArray<re::Vector3<float>>::add(v27, v22);
      v23 = vaddq_f32(v24, v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      v23 = vaddq_f32(v22[0], v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v24);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
      re::DynamicArray<re::Vector3<float>>::add(v27, v22);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
    }

    v11 = v34;
    v12 = v32;
    v13 = v30;
    v14 = v28;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  __asm { FMOV            V1.4S, #1.0 }

  v22[0] = xmmword_1E30A2400;
  v22[1] = _Q1;
  v24.i64[0] = v11;
  v24.i64[1] = v12;
  v23 = 0uLL;
  v21[0] = v13;
  v21[1] = v14;
  re::setShape(&v24, &v23, v21, a2, a3, v22);
  if (v27[0] && v30)
  {
    (*(*v27[0] + 40))();
  }

  result = v31[0];
  if (v31[0])
  {
    if (v34)
    {
      return (*(*v31[0] + 40))(v31[0]);
    }
  }

  return result;
}

id re::DynamicArray<re::PrimitiveShapeGeometry>::add(_anonymous_namespace_ *this, id *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PrimitiveShapeGeometry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 96 * v4;
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  *(v5 + 32) = *(a2 + 2);
  *(v5 + 48) = v8;
  *v5 = v6;
  *(v5 + 16) = v7;
  *(v5 + 64) = a2[8];
  *(v5 + 72) = a2[9];
  result = a2[10];
  *(v5 + 80) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::createCube(uint64_t a1, id *a2)
{
  v35[72] = *MEMORY[0x1E69E9840];
  v4 = v33;
  bzero(v33, 0x240uLL);
  bzero(v32, 0x240uLL);
  v5 = 0;
  v6 = 0;
  v7 = &v34;
  v8 = v35;
  v9 = 1;
  v10 = 2;
  v11 = v32;
  do
  {
    v12 = -1;
    v13 = v10;
    v14 = v8;
    v15 = v9;
    v16 = v7;
    do
    {
      v17 = 0;
      v18 = v12;
      v19 = v12;
      v20 = &v11[v6];
      v21 = v16 + 16 * v6 - 12 * (v15 / 3);
      v22 = v14 + 16 * v6 - 12 * (v13 / 3);
      v23 = &v4[16 * v6];
      v24 = 5u;
      do
      {
        *&v23[1 * v17] = v19;
        *&v22[1 * v17] = dword_1E30A2474[v17];
        *&v21[1 * v17] = dword_1E30A2474[v24];
        v25 = &v32[v6];
        *v25 = 0;
        v25[1] = 0;
        *&v20[v17] = v19;
        ++v6;
        ++v17;
        --v24;
      }

      while (v17 != 6);
      v12 = v18 + 2;
      v16 += 4;
      v15 += 4;
      ++v14;
      v13 += 2;
    }

    while (v18 < 0);
    ++v5;
    v11 = (v11 + 4);
    ++v7;
    ++v9;
    v8 = (v8 + 4);
    ++v10;
    v4 += 4;
  }

  while (v5 != 3);
  v29.i64[0] = 0xBF800000BF800000;
  v29.i64[1] = 3212836864;
  v30 = 0x3F8000003F800000;
  v31 = 1065353216;
  v28[0] = v33;
  v28[1] = 36;
  v27[0] = 0;
  v27[1] = 0;
  v26[0] = v32;
  v26[1] = 36;
  re::setShape(v28, v27, v26, a1, a2, &v29);
}

uint64_t re::createUVSphere(unint64_t a1, uint64_t a2, id *a3, float a4)
{
  v37 = a4 * 0.5;
  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v50[0] = 0;
  v52 = 0;
  v49 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  v42 = COERCE_UNSIGNED_INT(-1.0 - (a4 * 0.5));
  re::DynamicArray<re::Vector3<float>>::add(v50, &v42);
  v42 = xmmword_1E3047690;
  re::DynamicArray<re::Vector3<float>>::add(v46, &v42);
  v42 = COERCE_UNSIGNED_INT(v37 + 1.0);
  re::DynamicArray<re::Vector3<float>>::add(v50, &v42);
  v42 = xmmword_1E3047670;
  re::DynamicArray<re::Vector3<float>>::add(v46, &v42);
  v8 = 2 * a1;
  if (2 * a1)
  {
    v9 = 0;
    v10 = 3.1416 / a1;
    v11 = a1 >> 1;
    do
    {
      if (a1 >= 2)
      {
        v12 = __sincosf_stret(v10 * v9);
        v13 = 1;
        do
        {
          v14 = __sincosf_stret((v10 * v13) + -1.5708);
          v15.f32[0] = v14.__sinval;
          v15.f32[1] = v14.__cosval * -v12.__sinval;
          v15.f32[2] = v12.__cosval * v14.__cosval;
          v42 = v15;
          if (v13 <= v11)
          {
            v16 = vsubq_f32(v15, LODWORD(v37));
          }

          else
          {
            v16 = vaddq_f32(LODWORD(v37), v15);
          }

          v41[0] = v16;
          re::DynamicArray<re::Vector3<float>>::add(v50, v41);
          re::DynamicArray<re::Vector3<float>>::add(v46, &v42);
          if (a4 != 0.0 && v11 == v13)
          {
            v41[0] = vaddq_f32(LODWORD(v37), v42);
            re::DynamicArray<re::Vector3<float>>::add(v50, v41);
            re::DynamicArray<re::Vector3<float>>::add(v46, &v42);
          }

          ++v13;
        }

        while (a1 != v13);
      }

      ++v9;
    }

    while (v9 != v8);
    v36 = a3;
    v17 = 0;
    v45 = 0;
    if (a4 != 0.0)
    {
      ++a1;
    }

    v18 = a1 - 1;
    v43 = 0;
    v42 = 0uLL;
    v44 = 0;
    v19 = 2;
    do
    {
      v20 = v17++;
      if (v17 == v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20 + 1;
      }

      v41[0].n128_u16[0] = 0;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v22 = v21 * v18;
      v23 = v22 + 2;
      v41[0].n128_u16[0] = v22 + 2;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v24 = v20 * v18;
      v41[0].n128_u16[0] = v24 + 2;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v41[0].n128_u16[0] = 1;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v41[0].n128_u16[0] = v24 + a1;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v41[0].n128_u16[0] = v22 + a1;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      if (v18 >= 2)
      {
        v25 = v19;
        v26 = a1 - 2;
        do
        {
          v41[0].n128_u16[0] = v25;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v23;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v25 + 1;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v23 + 1;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v25 + 1;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v23;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          ++v23;
          ++v25;
          --v26;
        }

        while (v26);
      }

      v19 += v18;
    }

    while (v17 != v8);
    v27 = v45;
    v28 = v43;
    a3 = v36;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v45 = 0;
    v43 = 0;
    v42 = 0uLL;
    v44 = 0;
  }

  __asm { FMOV            V2.4S, #-1.0 }

  _Q2.n128_f32[0] = -1.0 - (a4 * 0.5);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.n128_f32[0] = (a4 * 0.5) + 1.0;
  v41[0] = _Q2;
  v41[1] = _Q1;
  v40[0] = v53;
  v40[1] = v51;
  v39[0] = v27;
  v39[1] = v28;
  v38[0] = v49;
  v38[1] = v47;
  re::setShape(v40, v39, v38, a2, a3, v41);
  if (v42.i64[0])
  {
    if (v45)
    {
      (*(*v42.i64[0] + 40))();
    }

    v45 = 0;
  }

  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))();
  }

  result = v50[0];
  if (v50[0])
  {
    if (v53)
    {
      return (*(*v50[0] + 40))(v50[0]);
    }
  }

  return result;
}

void re::setShape(float32x4_t **a1, void *a2, void *a3, uint64_t a4, id *a5, float32x4_t *a6)
{
  if (a6)
  {
    v11 = *a6;
    v10 = a6[1];
    v12 = a1[1];
  }

  else
  {
    v12 = a1[1];
    if (v12)
    {
      v13 = *a1;
      v10.i64[0] = 0x7F0000007FLL;
      v10.i64[1] = 0x7F0000007FLL;
      v11 = vnegq_f32(v10);
      v14 = 16 * v12;
      do
      {
        v15 = *v13++;
        v16 = v15;
        v11.i32[3] = 0;
        v16.i32[3] = 0;
        v11 = vminnmq_f32(v11, v16);
        v10.i32[3] = 0;
        v10 = vmaxnmq_f32(v10, v16);
        v14 -= 16;
      }

      while (v14);
    }

    else
    {
      v10.i64[0] = 0x7F0000007FLL;
      v10.i64[1] = 0x7F0000007FLL;
      v11 = vnegq_f32(v10);
    }
  }

  *a4 = 3;
  *(a4 + 8) = v12;
  *(a4 + 16) = a2[1];
  *(a4 + 32) = v11;
  *(a4 + 48) = v10;
  v21 = [*a5 newBufferWithBytes:*a1 length:16 * a1[1] options:0];
  NS::SharedPtr<MTL::Texture>::operator=((a4 + 64), &v21);
  if (v21)
  {
  }

  *(a4 + 72) = 0;
  v17 = a2[1];
  if (v17)
  {
    v21 = [*a5 newBufferWithBytes:*a2 length:2 * v17 options:0];
    NS::SharedPtr<MTL::Texture>::operator=((a4 + 72), &v21);
    if (v21)
    {
    }
  }

  v19 = *(a4 + 80);
  v18 = (a4 + 80);

  *v18 = 0;
  v20 = a3[1];
  if (v20)
  {
    v21 = [*a5 newBufferWithBytes:*a3 length:16 * v20 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(v18, &v21);
    if (v21)
    {
    }
  }
}

uint64_t re::PrimitiveRenderer::addCustomShape(void *a1, float32x4_t **a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1[31];
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v10 = vnegq_f32(v6);
  v11 = v6;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  re::setShape(a2, a3, a4, v9, (v5 + 208), 0);
  v7 = a1[28];
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((a1 + 26), v9);
  if (v14)
  {

    v14 = 0;
  }

  if (v13)
  {

    v13 = 0;
  }

  if (v12)
  {
  }

  return v7;
}

uint64_t re::PrimitiveRenderer::submitContext(uint64_t a1, re::PrimitiveRenderingDynamicGeometry *a2)
{
  re::DynamicArray<re::PrimitiveRenderingContext>::add((a1 + 256), a2);
  re::PrimitiveRenderingDynamicGeometry::init(a2, *(a2 + 147));

  return re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::clear(a2 + 1056);
}

__n128 re::DynamicArray<re::PrimitiveRenderingContext>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PrimitiveRenderingContext>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::PrimitiveRenderingDynamicGeometry::PrimitiveRenderingDynamicGeometry(*(this + 4) + 1200 * v4, a2);
  *(v5 + 1088) = 0;
  *(v5 + 1080) = 0;
  *(v5 + 1072) = 0;
  *(v5 + 1064) = 0;
  *(v5 + 1056) = 0;
  *(v5 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = 0;
  *(v5 + 1064) = *(a2 + 1064);
  *(a2 + 1064) = 0;
  v6 = *(v5 + 1072);
  *(v5 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = v6;
  v7 = *(v5 + 1088);
  *(v5 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = v7;
  ++*(a2 + 1080);
  ++*(v5 + 1080);
  v8 = *(a2 + 1096);
  v9 = *(a2 + 1112);
  *(v5 + 1128) = *(a2 + 1128);
  *(v5 + 1096) = v8;
  *(v5 + 1112) = v9;
  *(v5 + 1168) = 0;
  *(v5 + 1136) = 0;
  *(v5 + 1152) = 0;
  *(v5 + 1144) = 0;
  *(v5 + 1160) = 0;
  *(v5 + 1136) = *(a2 + 1136);
  *(a2 + 1136) = 0;
  *(v5 + 1144) = *(a2 + 1144);
  *(a2 + 1144) = 0;
  v10 = *(v5 + 1152);
  *(v5 + 1152) = *(a2 + 1152);
  *(a2 + 1152) = v10;
  v11 = *(v5 + 1168);
  *(v5 + 1168) = *(a2 + 1168);
  *(a2 + 1168) = v11;
  ++*(a2 + 1160);
  ++*(v5 + 1160);
  result = *(a2 + 1176);
  *(v5 + 1192) = *(a2 + 1192);
  *(v5 + 1176) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result <= 2)
  {
    goto LABEL_6;
  }

  if ((result - 3) < 2)
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    v5 = 2;
    goto LABEL_12;
  }

  if (result == 5)
  {
LABEL_11:
    *a3 = 0x3F8000003F800000;
    *(a3 + 8) = 0x3F8000003F800000;
    v5 = 3;
    goto LABEL_12;
  }

  if (result != 6)
  {
    do
    {
      v6 = v3;
      v3 = &v6;
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) incorrect attribute", "!Unreachable code", "attributeDefaultValue", 562, v6, v4);
      result = _os_crash("assertion failure: (!Unreachable code) incorrect attribute");
      __break(1u);
LABEL_6:
      if (!result)
      {
        goto LABEL_10;
      }

      if (result == 1)
      {
        goto LABEL_11;
      }
    }

    while (result != 2);
  }

  v5 = 0;
  *a3 = 1065353216;
LABEL_12:
  *(a3 + 16) = v5;
  return result;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(uint64_t result, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v4 = 0x3F8000003F800000;
      v6 = 2;
      v5 = 1065353216;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = 0x3F8000003F800000;
      v6 = 3;
      v5 = 0x3F8000003F800000;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a2)
    {
      v4 = 0;
      v5 = 0;
      v6 = 2;
      goto LABEL_10;
    }

    if (a2 == 1)
    {
      v4 = 0;
      v5 = 0x3F80000000000000;
      v6 = 4;
LABEL_10:
      *result = v4;
      *(result + 8) = v5;
      *(result + 16) = v6;
      return result;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) incorrect attribute", "!Unreachable code", "attributeDefaultValue", 581, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) incorrect attribute");
  __break(1u);
  return result;
}

void re::PrimitiveRenderingDynamicGeometry::init(re::PrimitiveRenderingDynamicGeometry *this, unint64_t a2)
{
  v4 = 0;
  v53 = *MEMORY[0x1E69E9840];
  *(this + 517) = 0;
  *(this + 513) = 0;
  do
  {
    v5 = this + v4;
    *(v5 + 2) = 0;
    *(v5 + 6) = *(this + v4 + 24) + 1;
    v4 += 40;
  }

  while (v4 != 280);
  *(this + 512) = 1;
  *(this + 515) = 257;
  if (*(this + 84) != 3)
  {
    *(this + 84) = 3;
  }

  *(this + 40) = 0x3F8000003F800000;
  *(this + 41) = 0x3F8000003F800000;
  if (*(this + 92))
  {
    *(this + 92) = 0;
  }

  *(this + 88) = 1065353216;
  if (*(this + 116) != 3)
  {
    *(this + 116) = 3;
  }

  *(this + 56) = 0x3F8000003F800000;
  *(this + 57) = 0x3F8000003F800000;
  if (*(this + 124))
  {
    *(this + 124) = 0;
  }

  *(this + 120) = 1065353216;
  *(this + 520) = 0u;
  re::DynamicArray<unsigned long>::resize(this + 1016, a2);
  v6 = 0;
  v38 = a2 + 1;
  do
  {
    v7 = this + 40 * v6 + 536;
    v8 = *(v7 + 2);
    if (v8 >= a2)
    {
      if (v8 <= a2)
      {
        goto LABEL_23;
      }

      v12 = 40 * a2;
      v13 = a2;
      do
      {
        re::DynamicArray<unsigned long>::deinit(*(v7 + 4) + v12);
        ++v13;
        v12 += 40;
      }

      while (v13 < *(v7 + 2));
    }

    else
    {
      if (*(v7 + 1) < a2)
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(this + 5 * v6 + 67, a2);
        v8 = *(v7 + 2);
      }

      v9 = a2 - v8;
      if (a2 > v8)
      {
        v10 = 40 * v8;
        do
        {
          v11 = *(v7 + 4) + v10;
          *(v11 + 32) = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
          *v11 = 0;
          *(v11 + 24) = 0;
          v10 += 40;
          --v9;
        }

        while (v9);
      }
    }

    *(v7 + 2) = a2;
    ++*(v7 + 6);
LABEL_23:
    v14 = this + 40 * v6 + 696;
    v15 = *(v14 + 2);
    if (v15 >= a2)
    {
      if (v15 <= a2)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (*(v14 + 1) < a2)
      {
        re::DynamicArray<re::AABB>::setCapacity(this + 5 * v6 + 87, a2);
        v15 = *(v14 + 2);
      }

      if (a2 > v15 && (a2 - v15) >= 1)
      {
        v16 = (*(v14 + 4) + 32 * v15);
        v17 = v38 - v15;
        do
        {
          *v16 = 0;
          v16[4] = 0;
          v16 += 8;
          --v17;
        }

        while (v17 > 1);
      }
    }

    *(v14 + 2) = a2;
    ++*(v14 + 6);
LABEL_33:
    re::DynamicArray<BOOL>::resize(this + 40 * v6++ + 856, a2);
  }

  while (v6 != 4);
  if (!a2)
  {
    return;
  }

  v18 = 0;
  do
  {
    v19 = *(this + 129);
    if (v19 <= v18)
    {
      goto LABEL_53;
    }

    v20 = 0;
    *(*(this + 131) + 8 * v18) = 0;
    do
    {
      v21 = this + v20;
      v19 = *(this + v20 + 552);
      if (v19 <= v18)
      {
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v23 = MEMORY[0x1E69E9C10];
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v43 = 789;
        v44 = 2048;
        v45 = v18;
        v46 = 2048;
        v47 = v19;
        _os_log_send_and_compose_impl(v24, &v39, &v48, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_49:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v43 = 789;
        v44 = 2048;
        v45 = v18;
        v46 = 2048;
        v47 = v19;
        _os_log_send_and_compose_impl(v27, &v39, &v48, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_53:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v43 = 789;
        v44 = 2048;
        v45 = v18;
        v46 = 2048;
        v47 = v19;
        _os_log_send_and_compose_impl(v30, &v39, &v48, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_57:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v43 = 789;
        v44 = 2048;
        v45 = v18;
        v46 = 2048;
        v47 = v19;
        _os_log_send_and_compose_impl(v33, &v39, &v48, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_61:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v43 = 789;
        v44 = 2048;
        v45 = v18;
        v46 = 2048;
        v47 = v19;
        _os_log_send_and_compose_impl(v36, &v39, &v48, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
      }

      v22 = *(v21 + 71) + 40 * v18;
      *(v22 + 16) = 0;
      ++*(v22 + 24);
      v19 = *(v21 + 109);
      if (v19 <= v18)
      {
        goto LABEL_49;
      }

      *(*(this + v20 + 888) + v18) = 0;
      v20 += 40;
    }

    while (v20 != 160);
    v19 = *(this + 109);
    if (v19 <= v18)
    {
      goto LABEL_57;
    }

    *(*(this + 111) + v18) = 1;
    v19 = *(this + 114);
    if (v19 <= v18)
    {
      goto LABEL_61;
    }

    *(*(this + 116) + v18) = 1;
    v48.n128_u64[0] = 0x3F8000003F800000;
    v48.n128_u64[1] = 1065353216;
    LODWORD(v49) = 2;
    re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector3<float>,unsigned long>(this, v18, 2u, &v48);
    v48.n128_u64[0] = 0x3F8000003F800000;
    v48.n128_u64[1] = 0x3F8000003F800000;
    LODWORD(v49) = 3;
    re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector4<float>,unsigned long>(this, v18++, 3u, &v48);
  }

  while (v18 != a2);
}

re::PrimitiveRenderingContext *re::PrimitiveRenderingContext::PrimitiveRenderingContext(re::PrimitiveRenderingContext *this, unint64_t a2, re::RenderManager *a3)
{
  for (i = 0; i != 280; i += 40)
  {
    v7 = this + i;
    *(v7 + 4) = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = 0;
    *(v7 + 6) = 0;
  }

  for (j = 0; j != 224; j += 32)
  {
    v9 = this + j;
    *(v9 + 72) = 0;
    *(v9 + 76) = 0;
  }

  for (k = 0; k != 160; k += 40)
  {
    v11 = this + k;
    *(v11 + 71) = 0;
    *(v11 + 67) = 0;
    *(v11 + 69) = 0;
    *(v11 + 68) = 0;
    *(v11 + 140) = 0;
  }

  for (m = 0; m != 160; m += 40)
  {
    v13 = this + m;
    *(v13 + 91) = 0;
    *(v13 + 87) = 0;
    *(v13 + 89) = 0;
    *(v13 + 88) = 0;
    *(v13 + 180) = 0;
  }

  for (n = 0; n != 160; n += 40)
  {
    v15 = this + n;
    *(v15 + 111) = 0;
    *(v15 + 107) = 0;
    *(v15 + 109) = 0;
    *(v15 + 108) = 0;
    *(v15 + 220) = 0;
  }

  *(this + 260) = 0;
  *(this + 129) = 0;
  *(this + 1016) = 0u;
  *(this + 270) = 0;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 68) = 0u;
  *(this + 69) = 0u;
  *(this + 140) = 0;
  *(this + 282) = 16843009;
  *(this + 146) = 0;
  *(this + 142) = 0;
  *(this + 290) = 0;
  *(this + 1144) = 0u;
  *(this + 1184) = 1;
  re::PrimitiveRenderingDynamicGeometry::init(this, a2);
  *(this + 147) = a2;
  *(this + 149) = a3;
  return this;
}

uint64_t re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::clear(uint64_t result)
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
      result = re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(v3);
      v3 += 96;
      v4 -= 96;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

BOOL re::PrimitiveRenderingContext::isEmpty(re::PrimitiveRenderingContext *this)
{
  v2 = *(this + 2);
  if (v2 && (v2 << 7) - 128 + *(this + 65))
  {
    return 0;
  }

  v3 = *(this + 17);
  if (v3)
  {
    if ((v3 << 7) - 128 + *(this + 66))
    {
      return 0;
    }
  }

  if (*(this + 134))
  {
    return 0;
  }

  if (!*(this + 147))
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(this, v5);
    result = v6 == 0;
    if (v6)
    {
      break;
    }

    ++v5;
  }

  while (v5 < *(this + 147));
  return result;
}

uint64_t re::PrimitiveRenderingContext::addPoint(uint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 520) + (v4 << 7) - 128;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v13 = 2;
  v12 = 256;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v7 = *(&v12 + v6);
    *(&v14 + v6) = (a1 + 40 * v7);
    v11[v6++] = *(a1 + 512 + v7);
  }

  while (v6 != 3);
  v8 = re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingAttribute>(&v12, &v14, v11, 3, v4, *(a1 + 520), *(a1 + 1192));
  *(a1 + 520) = v8;
  if (v8 == 1)
  {
    if (v11[1] == 1)
    {
      re::fill<re::Vector4<float>,re::PrimitiveRenderingAttribute>(*(v15 + 32) + 32 * *(v15 + 16) - 32, HIBYTE(v12));
    }

    if (v11[2] == 1)
    {
      re::fill<float,re::PrimitiveRenderingAttribute>(*(v16 + 32) + 32 * *(v16 + 16) - 32, v13);
    }
  }

  v9 = *(v14 + 4) + 32 * *(v14 + 2);
  *([**(v9 - 8) contents] + 16 * *(a1 + 520) + *(v9 - 24) - 16) = *a2;
  return v5;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingAttribute>(unsigned __int8 *a1, _anonymous_namespace_ **a2, char *a3, uint64_t a4, uint64_t a5, char a6, re *a7)
{
  v7 = a6 & 0x7F;
  if (a4)
  {
    v9 = a4;
    v11 = a2;
    do
    {
      v14 = *a3++;
      v13 = v14;
      if (!v7 && (v13 & 1) != 0)
      {
        v15 = *v11;
        v16 = re::attributeInfo(*a1, a2);
        re::allocate(v19, a7, v16, v17);
        re::DynamicArray<re::EvaluationRegister>::add(v15, v19);
      }

      ++a1;
      ++v11;
      --v9;
    }

    while (v9);
  }

  return v7 + 1;
}

char *re::fill<re::Vector4<float>,re::PrimitiveRenderingAttribute>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(a2, a2, &v7);
  if (v8 != 3)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v6 = v7;
  result = [**(a1 + 24) contents];
  v4 = 0;
  v5 = &result[*(a1 + 8)];
  do
  {
    *&v5[v4] = v6;
    v4 += 16;
  }

  while (v4 != 2048);
  return result;
}

char *re::fill<float,re::PrimitiveRenderingAttribute>(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(a2, a2, &v8);
  if (v9)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v7 = v8;
  result = [**(a1 + 24) contents];
  v4 = 0;
  v5 = &result[*(a1 + 8)];
  v6 = vdupq_lane_s32(v7, 0);
  do
  {
    *&v5[v4] = v6;
    v4 += 16;
  }

  while (v4 != 512);
  return result;
}

uint64_t re::PrimitiveRenderingContext::addLine(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = *(a1 + 528) + (v6 << 7) - 128;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v15 = 100992003;
  v16 = 0u;
  v17 = 0u;
  do
  {
    v9 = *(&v15 + v8);
    *(&v16 + v8) = a1 + 40 * v9;
    v14[v8++] = *(a1 + 512 + v9);
  }

  while (v8 != 4);
  v10 = re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingAttribute>(&v15, &v16, v14, 4, v6, *(a1 + 528), *(a1 + 1192));
  *(a1 + 528) = v10;
  if (v10 == 1)
  {
    if (v14[2] == 1)
    {
      re::fill<re::Vector4<float>,re::PrimitiveRenderingAttribute>(*(v17 + 32) + 32 * *(v17 + 16) - 32, BYTE2(v15));
    }

    if (v14[3] == 1)
    {
      re::fill<float,re::PrimitiveRenderingAttribute>(*(*(&v17 + 1) + 32) + 32 * *(*(&v17 + 1) + 16) - 32, HIBYTE(v15));
    }
  }

  v11 = *(v16 + 32) + 32 * *(v16 + 16);
  *([**(v11 - 8) contents] + 16 * *(a1 + 528) + *(v11 - 24) - 16) = *a2;
  v12 = *(*(&v16 + 1) + 32) + 32 * *(*(&v16 + 1) + 16);
  *([**(v12 - 8) contents] + 16 * *(a1 + 528) + *(v12 - 24) - 16) = *a3;
  return v7;
}

void re::PrimitiveRenderingContext::buildMeshSceneOfPoints(uint64_t *a1@<X0>, re::MaterialParameterTableBuilder *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = a1[149];
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v20, &v22);
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v20, a1);
  *&v21 = v22;
  if (v22)
  {
    v8 = v22 + 8;
  }

  *(&v21 + 1) = a1;
  v9 = re::DynamicArray<re::GPUAllocation>::DynamicArray(v19, a1);
  v10 = *(a1[149] + 88);
  v11 = a1[2];
  v12 = a1[65];
  v13 = v22;
  v14 = re::globalAllocators(v9)[2];
  v27 = v14;
  v28 = 0;
  if (v14)
  {
    v15 = (*(*v14 + 32))(v14, 64, 0);
  }

  else
  {
    v15 = 0;
  }

  *v15 = &unk_1F5D03E28;
  v16 = re::DynamicArray<re::GPUAllocation>::DynamicArray(v15 + 8, v20);
  v17 = v21;
  *&v21 = 0;
  *(v15 + 48) = v17;
  v28 = v15;
  v24 = re::globalAllocators(v16)[2];
  v18 = (*(*v24 + 32))(v24, 48, 0);
  *v18 = &unk_1F5D03E80;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((v18 + 1), v19);
  v25 = v18;
  re::PrimitiveRenderingContext::buildMeshScene(a4, a1, a2, a3, v11, v12, v10 + 16, v13, v26, v23);
  re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(v23);
  re::FunctionBase<24ul,void ()(unsigned long)>::destroyCallable(v26);
  if (v19[0] && v19[4])
  {
    (*(*v19[0] + 40))();
  }

  if (v21)
  {

    *&v21 = 0;
  }

  if (v20[0] && v20[4])
  {
    (*(*v20[0] + 40))();
  }

  if (v22)
  {
  }
}

void re::PrimitiveRenderingContext::buildMeshSceneOfLines(void *a1@<X0>, re::MaterialParameterTableBuilder *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v21[0] = a1[149];
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v21, &v27);
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v21, a1 + 15);
  v22 = v27;
  if (v27)
  {
    v8 = v27 + 8;
  }

  re::DynamicArray<re::GPUAllocation>::DynamicArray(v23, a1 + 20);
  v26 = a1;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v17, a1 + 15);
  v9 = re::DynamicArray<re::GPUAllocation>::DynamicArray(v18, a1 + 20);
  v10 = *(a1[149] + 88);
  v11 = a1[17];
  v12 = a1[66];
  v13 = v27;
  v14 = re::globalAllocators(v9)[2];
  v32 = v14;
  if (v14)
  {
    v14 = (*(*v14 + 32))(v14, 104, 0);
  }

  v33 = re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::Callable(v14, v21);
  v15 = re::globalAllocators(v33)[2];
  v29 = v15;
  v30 = 0;
  if (v15)
  {
    v16 = (*(*v15 + 32))(v15, 88, 0);
  }

  else
  {
    v16 = 0;
  }

  *v16 = &unk_1F5D03F30;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((v16 + 1), v17);
  re::DynamicArray<re::GPUAllocation>::DynamicArray((v16 + 6), v18);
  v30 = v16;
  re::PrimitiveRenderingContext::buildMeshScene(a4, a1, a2, a3, v11, v12, v10 + 112, v13, v31, v28);
  re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(v28);
  re::FunctionBase<24ul,void ()(unsigned long)>::destroyCallable(v31);
  if (v18[0])
  {
    if (v20)
    {
      (*(*v18[0] + 40))();
    }

    v20 = 0;
    memset(v18, 0, sizeof(v18));
    ++v19;
  }

  if (v17[0] && v17[4])
  {
    (*(*v17[0] + 40))();
  }

  if (v23[0])
  {
    if (v25)
    {
      (*(*v23[0] + 40))();
    }

    v25 = 0;
    memset(v23, 0, sizeof(v23));
    ++v24;
  }

  if (v22)
  {

    v22 = 0;
  }

  if (v21[0] && v21[4])
  {
    (*(*v21[0] + 40))();
  }

  if (v27)
  {
  }
}

void re::PrimitiveRenderingContext::buildMeshSceneOfShapes(void *a1@<X0>, re::MaterialParameterTableBuilder *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v135 = *MEMORY[0x1E69E9840];
  if (a1[147])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(a1, v7))
      {
        ++v6;
      }

      ++v7;
    }

    while (v7 < a1[147]);
  }

  else
  {
    v6 = 0;
  }

  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  v8 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = a2;
  re::DynamicArray<re::MeshScene>::setCapacity(a4, 0);
  ++*(a4 + 24);
  v9 = __src;
  bzero(__src, 0x2E0uLL);
  v10.i64[0] = 0x7F0000007FLL;
  v10.i64[1] = 0x7F0000007FLL;
  *&__src[80] = vnegq_f32(v10);
  *&__src[96] = v10;
  memset(&__src[112], 0, 161);
  memset(&__src[280], 0, 80);
  v101 = 0u;
  v102 = 0u;
  memset(v103, 0, 28);
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    *(&v107 + 1) = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
    __asm { FMOV            V0.2S, #1.0 }

    *&v108 = _D0;
    DWORD2(v108) = 1065353216;
    v109 = 0u;
    memset(v110, 0, 19);
    *&v110[20] = 0xFFFFFFFF00000001;
    v110[28] = 0;
    v111 = 0;
    v114 = 0;
    v115 = 0;
    *v120 = 65537;
    v120[4] = 1;
    *&v120[8] = xmmword_1E3060D60;
    *&v120[24] = 16788070;
    v121 = 0;
    v16 = *(a4 + 16);
    if (v16 >= v6)
    {
      if (v16 <= v6)
      {
        goto LABEL_26;
      }

      v37 = 736 * v6 + 352;
      v38 = v6;
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(*(a4 + 32) + v37);
        ++v38;
        v37 += 736;
      }

      while (v38 < *(a4 + 16));
    }

    else
    {
      if (*v8 < v6)
      {
        re::DynamicArray<re::MeshScene>::setCapacity(a4, v6);
        v16 = *(a4 + 16);
      }

      v17 = v6 - v16;
      if (v6 > v16)
      {
        v18 = v9 + 440;
        v19 = 736 * v16;
        do
        {
          v20 = *(a4 + 32);
          v21 = v20 + v19;
          memcpy((v20 + v19), __src, 0x160uLL);
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(v20 + v19 + 352, &__src[352]);
          *(v21 + 416) = v103[3];
          v22 = v104;
          *(v21 + 424) = v104;
          if (v22 == 1)
          {
            *(v21 + 432) = v105;
          }

          v23 = v18[1];
          *(v21 + 440) = *v18;
          *(v21 + 456) = v23;
          v24 = v18[2];
          v25 = v18[3];
          v26 = v18[4];
          *(v21 + 517) = *(v18 + 77);
          *(v21 + 488) = v25;
          *(v21 + 504) = v26;
          *(v21 + 472) = v24;
          v27 = v111;
          *(v21 + 544) = v111;
          if (v27 == 1)
          {
            v28 = v20 + v19;
            v29 = v113;
            *(v28 + 560) = v112;
            *(v28 + 576) = v29;
          }

          v30 = v20 + v19;
          *(v30 + 592) = v114;
          v31 = v115;
          *(v30 + 608) = v115;
          if (v31 == 1)
          {
            v32 = v116;
            v33 = v117;
            v34 = v119;
            *(v30 + 656) = v118;
            *(v30 + 672) = v34;
            *(v30 + 624) = v32;
            *(v30 + 640) = v33;
          }

          v35 = *v120;
          v36 = *&v120[16];
          *(v30 + 720) = v121;
          *(v30 + 688) = v35;
          *(v30 + 704) = v36;
          v19 += 736;
          --v17;
        }

        while (v17);
      }
    }

    *(a4 + 16) = v6;
    ++*(a4 + 24);
LABEL_26:
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&__src[352]);
    if (!a1[147])
    {
      break;
    }

    v9 = 0;
    v6 = 0;
    v39 = 0;
    v8 = *(a1[149] + 88);
    v80 = &v110[8];
    v81 = v8;
    while (!re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(a1, v6))
    {
LABEL_71:
      ++v6;
      v9 += 96;
      if (v6 >= a1[147])
      {
        return;
      }
    }

    Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, v6, 0);
    v41 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, v6, 1u);
    *__src = a1[149];
    re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(__src, &v92);
    re::DynamicArray<re::GPUAllocation>::DynamicArray(v85, Attribute);
    v86 = v92;
    if (v92)
    {
      v42 = v92 + 8;
    }

    re::DynamicArray<re::GPUAllocation>::DynamicArray(v87, v41);
    v90 = a1;
    v91 = v6;
    v43 = re::DynamicArray<re::GPUAllocation>::DynamicArray(v84, Attribute);
    v44 = a1[129];
    if (v44 > v6)
    {
      v44 = v8[28];
      if (v44 <= v6)
      {
        goto LABEL_77;
      }

      v45 = a4;
      v46 = Attribute[2];
      v47 = *(a1[131] + 8 * v6);
      a4 = v8[30];
      v48 = v92;
      v49 = re::globalAllocators(v43)[2];
      v98 = v49;
      v99 = 0;
      v8 = v39;
      if (v49)
      {
        v49 = (*(*v49 + 32))(v49, 112, 0);
      }

      v99 = re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::Callable(v49, v85);
      v95 = re::globalAllocators(v99)[2];
      v96 = 0;
      v50 = (*(*v95 + 32))(v95, 48, 0);
      *v50 = &unk_1F5D03FE0;
      re::DynamicArray<re::GPUAllocation>::DynamicArray((v50 + 1), v84);
      v96 = v50;
      re::PrimitiveRenderingContext::buildMeshScene(__src, a1, a2, a3, v46, v47, &v9[a4], v48, v97, v94);
      Attribute = *(v45 + 16);
      v39 = v8;
      if (Attribute <= v8)
      {
        goto LABEL_81;
      }

      a4 = v45;
      v51 = *(v45 + 32) + 736 * v8;
      memcpy(v51, __src, 0x160uLL);
      if (v51 != __src)
      {
        v52 = *(v51 + 408);
        *(v51 + 408) = v103[2];
        v103[2] = v52;
        v53 = *(v51 + 352);
        *(v51 + 352) = *&__src[352];
        *&__src[352] = v53;
        v54 = *(v51 + 360);
        *(v51 + 360) = v101;
        *&v101 = v54;
        v55 = *(v51 + 368);
        *(v51 + 368) = *(&v101 + 1);
        *(&v101 + 1) = v55;
        v56 = *(v51 + 392);
        *(v51 + 392) = v103[0];
        v103[0] = v56;
        v57 = *(v51 + 400);
        *(v51 + 400) = v103[1];
        v103[1] = v57;
        v58 = *(v51 + 376);
        *(v51 + 376) = v102;
        *&v102 = v58;
        v59 = *(v51 + 384);
        *(v51 + 384) = *(&v102 + 1);
        *(&v102 + 1) = v59;
      }

      *(v51 + 416) = v103[3];
      v8 = v81;
      if (*(v51 + 424))
      {
        if ((v104 & 1) == 0)
        {
          *(v51 + 424) = 0;
          goto LABEL_44;
        }

LABEL_43:
        *(v51 + 432) = v105;
      }

      else if (v104)
      {
        *(v51 + 424) = 1;
        goto LABEL_43;
      }

LABEL_44:
      v60 = v106;
      v61 = v107;
      v62 = v109;
      *(v51 + 472) = v108;
      *(v51 + 488) = v62;
      *(v51 + 440) = v60;
      *(v51 + 456) = v61;
      *(v51 + 504) = *v110;
      v63 = *&v110[8];
      *(v51 + 525) = *&v110[21];
      *(v51 + 512) = v63;
      if (*(v51 + 544))
      {
        if ((v111 & 1) == 0)
        {
          *(v51 + 544) = 0;
          goto LABEL_50;
        }

LABEL_49:
        v64 = v113;
        *(v51 + 560) = v112;
        *(v51 + 576) = v64;
      }

      else if (v111)
      {
        *(v51 + 544) = 1;
        goto LABEL_49;
      }

LABEL_50:
      *(v51 + 592) = v114;
      if (*(v51 + 608))
      {
        if ((v115 & 1) == 0)
        {
          *(v51 + 608) = 0;
          goto LABEL_56;
        }

LABEL_55:
        v65 = v116;
        v66 = v117;
        v67 = v119;
        *(v51 + 656) = v118;
        *(v51 + 672) = v67;
        *(v51 + 624) = v65;
        *(v51 + 640) = v66;
      }

      else if (v115)
      {
        *(v51 + 608) = 1;
        goto LABEL_55;
      }

LABEL_56:
      v68 = *v120;
      v69 = *&v120[16];
      *(v51 + 720) = v121;
      *(v51 + 688) = v68;
      *(v51 + 704) = v69;
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&__src[352]);
      re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(v94);
      re::FunctionBase<24ul,void ()(unsigned long)>::destroyCallable(v97);
      if (v84[0] && v84[4])
      {
        (*(*v84[0] + 40))();
      }

      if (v87[0])
      {
        if (v89)
        {
          (*(*v87[0] + 40))();
        }

        v89 = 0;
        memset(v87, 0, sizeof(v87));
        ++v88;
      }

      if (v86)
      {

        v86 = 0;
      }

      if (v85[0] && v85[4])
      {
        (*(*v85[0] + 40))();
      }

      if (v92)
      {
      }

      v39 = (v39 + 1);
      goto LABEL_71;
    }

    v93 = 0;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v130 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122 = 136315906;
    v123 = "operator[]";
    v124 = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v125 = 797;
    v126 = 2048;
    v127 = v6;
    v128 = 2048;
    v129 = v44;
    _os_log_send_and_compose_impl(v72, &v93, &v130, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v122, 38, v79, &v110[8]);
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v93 = 0;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v130 = 0u;
    v73 = MEMORY[0x1E69E9C10];
    v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122 = 136315906;
    v123 = "operator[]";
    v124 = 1024;
    if (v74)
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    v125 = 797;
    v126 = 2048;
    v127 = v6;
    v128 = 2048;
    v129 = v44;
    _os_log_send_and_compose_impl(v75, &v93, &v130, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v122, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_81:
    v93 = 0;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v130 = 0u;
    v76 = MEMORY[0x1E69E9C10];
    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122 = 136315906;
    v123 = "operator[]";
    v124 = 1024;
    if (v77)
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    v125 = 789;
    v126 = 2048;
    v127 = v39;
    v128 = 2048;
    v129 = Attribute;
    _os_log_send_and_compose_impl(v78, &v93, &v130, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v122, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_85:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }
}

void re::PrimitiveRenderingContext::buildMeshSceneOfMeshes(re *a1@<X0>, re::MaterialParameterTableBuilder *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v166 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 134);
  re::globalAllocators(a1);
  v8 = (*(*a2 + 32))(a2, 24, 8);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v9 = re::FixedArray<re::MeshPart>::init<>(v8, a2, v7);
  v10 = re::globalAllocators(v9)[2];
  *&buf = &unk_1F5D04038;
  *(&v148 + 1) = v10;
  *&v149 = &buf;
  v131 = (*(*a2 + 16))(a2, v8, &buf);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&buf);
  v11 = (*(*a2 + 32))(a2, 32, 16);
  v12.i64[0] = 0x7F0000007FLL;
  v12.i64[1] = 0x7F0000007FLL;
  *v11 = vnegq_f32(v12);
  v11[1] = v12;
  v130 = v11;
  v13 = (*(*a2 + 32))(a2, 24, 8);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  re::FixedArray<unsigned long>::init<>(v13, a2, v7);
  v14 = (*(*a2 + 32))(a2, 24, 8);
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  v133 = a2;
  re::FixedArray<unsigned long>::init<>(v14, a2, v7);
  *&buf = *(a1 + 149);
  v15 = re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(&buf, &v141);
  v139 = 0uLL;
  v140 = 0;
  v132 = a1;
  v17 = *(a1 + 144);
  if (v17)
  {
    v18 = *(a1 + 146);
    v19 = &v18[2 * v17];
    do
    {
      v20 = v141;
      v21 = *v18;
      v4 = v18[1];
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      v16 = re::MaterialParameterBlock::addPassTechniqueMapping(v20, v21, v4, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v18 += 2;
    }

    while (v18 != v19);
  }

  v22 = v132;
  if (v7)
  {
    v23 = 0;
    v127 = v14;
    v128 = v13;
    v126 = v7;
    while (1)
    {
      v4 = *(v22 + 134);
      if (v4 <= v23)
      {
        goto LABEL_84;
      }

      v24 = *(v22 + 136) + 96 * v23;
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = 0;
        v27 = v25 << 6;
        v28 = (*(v24 + 32) + 16);
        do
        {
          v29 = *v28;
          v28 += 64;
          v26 += v29;
          v27 -= 64;
        }

        while (v27);
      }

      else
      {
        v26 = 0;
      }

      v30 = v141;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v32 = *(v24 + 16);
      if (v32)
      {
        break;
      }

LABEL_45:
      v22 = v132;
      v4 = *(v132 + 134);
      if (v4 <= v23)
      {
        goto LABEL_88;
      }

      v4 = v139.u64[1];
      if (v139.i64[1] <= v23)
      {
        goto LABEL_92;
      }

      v61 = *(v132 + 136) + 96 * v23;
      v62 = (v140 + 32 * v23);
      v63 = *(v61 + 64);
      *v62 = *(v61 + 48);
      v62[1] = v63;
      v4 = *(v132 + 134);
      if (v4 <= v23)
      {
        goto LABEL_96;
      }

      v64 = *(v132 + 136) + 96 * v23;
      v65 = *(v64 + 48);
      v66 = *v130;
      v67 = v130[1];
      v66.i32[3] = 0;
      v65.i32[3] = 0;
      *v130 = vminnmq_f32(v66, v65);
      v68 = *(v64 + 64);
      v67.i32[3] = 0;
      v68.i32[3] = 0;
      v130[1] = vmaxnmq_f32(v67, v68);
      v134 = 0x4B61EB17F5807C1ALL;
      v135 = "PrimitiveRendering Mesh Instance";
      v4 = *(v132 + 134);
      if (v4 <= v23)
      {
        goto LABEL_100;
      }

      v69 = *(v132 + 136) + 96 * v23;
      v70 = *(v69 + 88);
      v71 = *(v69 + 80);
      *v145 = xmmword_1E3047670;
      *&v145[16] = xmmword_1E3047680;
      *&v145[32] = xmmword_1E30476A0;
      v146 = xmmword_1E30474D0;
      WORD2(v144) = 0;
      LODWORD(v144) = 0;
      re::MeshPart::MeshPart(&buf, &v134, v23, v138, v137, v70, v71, 1, (v69 + 48), v23, v145, &v144, -1, 0);
      v4 = *(v131 + 8);
      if (v4 <= v23)
      {
        goto LABEL_104;
      }

      v72 = re::MeshPart::operator=(*(v131 + 16) + 544 * v23, &buf);
      if (v154)
      {
        if (v154)
        {
        }
      }

      v155 = &str_67;
      v154 = 0;
      re::FixedArray<re::StringID>::deinit(v153);
      re::AttributeTable::~AttributeTable(&buf);
      v14 = v127;
      v13 = v128;
      v7 = v126;
      if (v134)
      {
        if (v134)
        {
        }
      }

      v134 = 0;
      v135 = &str_67;
      v4 = *(v131 + 8);
      if (v4 <= v23)
      {
        goto LABEL_108;
      }

      *(*(v131 + 16) + 544 * v23 + 520) = 3;
      v74 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v141, v133);
      v4 = v128[1];
      if (v4 <= v23)
      {
        goto LABEL_112;
      }

      *(v128[2] + 8 * v23) = v74;
      v4 = v127[1];
      if (v4 <= v23)
      {
        goto LABEL_116;
      }

      *(v127[2] + 8 * v23) = a3;
      v16 = re::FixedArray<re::NamedVertexBuffer>::deinit(&v136);
      if (++v23 == v126)
      {
        goto LABEL_60;
      }
    }

    v33 = 0;
    v34 = 0;
    v14 = *(v24 + 32);
    v13 = (v32 << 6);
    while (1)
    {
      v35 = (v33 + v14);
      if (*(v33 + v14 + 16) == 1)
      {
        v36 = re::StringID::operator==((v33 + v14), re::MeshAttributeNames::kIndexTriangles);
        v37 = v36 ^ 1;
        v38 = v35[1];
        LOBYTE(v149) = *(v35 + 18);
        BYTE1(v149) = v37;
        *(&v149 + 1) = v35[3];
        LODWORD(v151) = 0;
        DWORD2(v151) = 0;
        HIDWORD(v151) = [v35[3] length];
        v152 = 0xFFFFFFFF00000000;
        v4 = v137;
        if (v137 <= v34)
        {
          v144 = 0;
          v23 = v156;
          v164 = 0u;
          v165 = 0u;
          memset(v163, 0, sizeof(v163));
          v88 = MEMORY[0x1E69E9C10];
          v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v156 = 136315906;
          *&v156[4] = "operator[]";
          v157 = 1024;
          if (v89)
          {
            v90 = 3;
          }

          else
          {
            v90 = 2;
          }

          v158 = 468;
          v159 = 2048;
          v160 = v34;
          v161 = 2048;
          v162 = v4;
          _os_log_send_and_compose_impl(v90, &v144, v163, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v156, 38, v123, v124);
          _os_crash_msg();
          __break(1u);
          goto LABEL_76;
        }

        v39 = v138 + 88 * v34;
        re::DynamicString::operator=(v39, &buf);
        *(v39 + 32) = v149;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v39 + 40, &v149 + 8);
        *(v39 + 72) = *(&v151 + 1);
        *(v39 + 80) = v152;
        if (v151 != -1)
        {
          (off_1F5D03DA0[v151])(v163, &v149 + 8);
        }

        LODWORD(v151) = -1;
        v31 = buf;
        if (buf && (BYTE8(buf) & 1) != 0)
        {
          v31 = (*(*buf + 40))();
        }

        ++v34;
      }

      else
      {
        if (*(v35 + 17) != 1)
        {
          v142 = *(v33 + v14) >> 1;
          *v145 = *(v33 + v14 + 24);
          *&v145[24] = 0;
          *&v145[32] = 0;
          *&v145[36] = [*(v33 + v14 + 24) length];
          v48 = re::MaterialParameterBlock::setBuffer(v30, &v142, v145, v143);
          v143[0] = 0;
          if (*&v145[24] != -1)
          {
            v31 = (off_1F5D03DA0[*&v145[24]])(&buf, v145, v48);
          }

          *&v145[24] = -1;
          v142 = 0;
          goto LABEL_44;
        }

        v40 = *(v33 + v14 + 18);
        if (v40 > 0x1D)
        {
          if (v40 == 30)
          {
            v57 = (v33 + v14);
            if (*(v33 + v14 + 48) != 2)
            {
LABEL_121:
              std::__throw_bad_variant_access[abi:nn200100]();
            }

            v58 = *v57 >> 1;
            v60 = v57[4];
            v59 = v57[5];
            v163[0] = v60;
            v163[1] = v59;
            *v156 = v58;
            v43 = v156;
            v44 = v163;
            v45 = v30;
            v46 = 16;
            v47 = 33;
          }

          else
          {
            if (v40 != 31)
            {
LABEL_37:
              v53 = *re::graphicsLogObjects(v31);
              v31 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
              if (v31)
              {
                v54 = *(v33 + v14 + 18);
                LODWORD(buf) = 67109120;
                DWORD1(buf) = v54;
                _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "Format %d is not supported in PrimitiveRenderer", &buf, 8u);
              }

              goto LABEL_44;
            }

            v49 = (v33 + v14);
            if (*(v33 + v14 + 48) != 3)
            {
              goto LABEL_121;
            }

            v50 = *v49 >> 1;
            v52 = v49[4];
            v51 = v49[5];
            v163[0] = v52;
            v163[1] = v51;
            *v156 = v50;
            v43 = v156;
            v44 = v163;
            v45 = v30;
            v46 = 16;
            v47 = 34;
          }
        }

        else if (v40 == 28)
        {
          v55 = (v33 + v14);
          if (*(v33 + v14 + 48))
          {
            goto LABEL_121;
          }

          v56 = *v55 >> 1;
          *v156 = *(v55 + 8);
          v163[0] = v56;
          v43 = v163;
          v44 = v156;
          v45 = v30;
          v46 = 4;
          v47 = 1;
        }

        else
        {
          if (v40 != 29)
          {
            goto LABEL_37;
          }

          v41 = (v33 + v14);
          if (*(v33 + v14 + 48) != 1)
          {
            goto LABEL_121;
          }

          v42 = *v41 >> 1;
          v163[0] = v41[4];
          *v156 = v42;
          v43 = v156;
          v44 = v163;
          v45 = v30;
          v46 = 8;
          v47 = 32;
        }

        re::MaterialParameterBlock::setConstant(v45, v43, v46, v44, v47, &buf);
      }

LABEL_44:
      v33 += 8;
      if (v13 == v33)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_60:
  v75 = (*(*v133 + 32))(v133, 24, 8);
  v75[1] = 0;
  v75[2] = 0;
  *v75 = 0;
  re::FixedArray<re::MeshPart const*>::init<>(v75, v133, v7);
  if (v7)
  {
    v76 = 0;
    v37 = 0;
    v23 = *(v131 + 8);
    while (v23 != v37)
    {
      v4 = v75[1];
      if (v4 <= v37)
      {
        goto LABEL_80;
      }

      *(v75[2] + 8 * v37++) = *(v131 + 16) + v76;
      v76 += 544;
      if (v7 == v37)
      {
        goto LABEL_65;
      }
    }

LABEL_76:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v91 = MEMORY[0x1E69E9C10];
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    *(&v163[1] + 6) = 468;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v23;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v23;
    _os_log_send_and_compose_impl(v93, v145, &buf, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_80:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v95)
    {
      v96 = 3;
    }

    else
    {
      v96 = 2;
    }

    *(&v163[1] + 6) = 468;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v37;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v4;
    _os_log_send_and_compose_impl(v96, v145, &buf, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_84:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v97 = MEMORY[0x1E69E9C10];
    v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v98)
    {
      v99 = 3;
    }

    else
    {
      v99 = 2;
    }

    *(&v163[1] + 6) = 797;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v23;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v4;
    _os_log_send_and_compose_impl(v99, v145, &buf, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_88:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v100 = MEMORY[0x1E69E9C10];
    v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v101)
    {
      v102 = 3;
    }

    else
    {
      v102 = 2;
    }

    *(&v163[1] + 6) = 797;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v23;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v4;
    _os_log_send_and_compose_impl(v102, v145, &buf, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_92:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v103 = MEMORY[0x1E69E9C10];
    v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v104)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }

    *(&v163[1] + 6) = 468;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v23;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v4;
    _os_log_send_and_compose_impl(v105, v145, &buf, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_96:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v106 = MEMORY[0x1E69E9C10];
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    *(&v163[1] + 6) = 797;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v23;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v4;
    _os_log_send_and_compose_impl(v108, v145, &buf, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_100:
    *v156 = 0;
    v164 = 0u;
    v165 = 0u;
    memset(v163, 0, sizeof(v163));
    v109 = MEMORY[0x1E69E9C10];
    v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    *&v145[12] = 1024;
    if (v110)
    {
      v111 = 3;
    }

    else
    {
      v111 = 2;
    }

    *&v145[14] = 797;
    *&v145[18] = 2048;
    *&v145[20] = v23;
    *&v145[28] = 2048;
    *&v145[30] = v4;
    _os_log_send_and_compose_impl(v111, v156, v163, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_104:
    v143[0] = 0;
    v164 = 0u;
    v165 = 0u;
    memset(v163, 0, sizeof(v163));
    v112 = MEMORY[0x1E69E9C10];
    v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v156 = 136315906;
    *&v156[4] = "operator[]";
    v157 = 1024;
    if (v113)
    {
      v114 = 3;
    }

    else
    {
      v114 = 2;
    }

    v158 = 468;
    v159 = 2048;
    v160 = v23;
    v161 = 2048;
    v162 = v4;
    _os_log_send_and_compose_impl(v114, v143, v163, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v156, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_108:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v115 = MEMORY[0x1E69E9C10];
    v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v116)
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    *(&v163[1] + 6) = 468;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v23;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v4;
    _os_log_send_and_compose_impl(v117, v145, &buf, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_112:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v118 = MEMORY[0x1E69E9C10];
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    *(&v163[1] + 6) = 468;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v23;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v4;
    _os_log_send_and_compose_impl(v120, v145, &buf, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
LABEL_116:
    *v145 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    buf = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v163[0]) = 136315906;
    *(v163 + 4) = "operator[]";
    WORD2(v163[1]) = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *(&v163[1] + 6) = 468;
    WORD1(v163[2]) = 2048;
    *(&v163[2] + 4) = v23;
    WORD2(v163[3]) = 2048;
    *(&v163[3] + 6) = v4;
    _os_log_send_and_compose_impl(v122, v145, &buf, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v163, 38, v123, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_120;
  }

LABEL_65:
  v23 = a4;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 424) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 328) = 0u;
  *(a4 + 344) = 0u;
  *(a4 + 360) = 0u;
  *(a4 + 376) = 0u;
  *(a4 + 392) = 0u;
  *(a4 + 404) = 0u;
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
LABEL_120:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  *(v23 + 464) = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  __asm { FMOV            V0.2S, #1.0 }

  *(v23 + 472) = _D0;
  *(v23 + 480) = 1065353216;
  *(v23 + 488) = 0u;
  *(v23 + 504) = 0u;
  *(v23 + 519) = 0;
  *(v23 + 524) = 0xFFFFFFFF00000001;
  *(v23 + 532) = 0;
  *(v23 + 544) = 0;
  *(v23 + 592) = 0;
  *(v23 + 608) = 0;
  *(v23 + 688) = 65537;
  *(v23 + 692) = 1;
  *(v23 + 696) = xmmword_1E3060D60;
  *(v23 + 712) = 16788070;
  *(v23 + 720) = 0;
  v82 = v75[1];
  *v23 = v75[2];
  *(v23 + 8) = v82;
  *&buf = v130;
  *(&buf + 1) = 1;
  v83 = (*(*v133 + 32))(v133, 72, 8);
  *(v23 + 112) = re::MeshBoundingBoxes::MeshBoundingBoxes(v83, v133, &buf, 1);
  *&buf = v140;
  *(&buf + 1) = v139.i64[1];
  v84 = (*(*v133 + 32))(v133, 72, 8);
  *(v23 + 120) = re::MeshBoundingBoxes::MeshBoundingBoxes(v84, v133, &buf, 1);
  v85 = v130[1];
  *(v23 + 80) = *v130;
  *(v23 + 96) = v85;
  *(v23 + 128) = xmmword_1E3047670;
  *(v23 + 144) = xmmword_1E3047680;
  *(v23 + 160) = xmmword_1E30476A0;
  *(v23 + 176) = xmmword_1E30474D0;
  v86 = v13[1];
  *(v23 + 280) = v13[2];
  *(v23 + 288) = v86;
  v87 = v14[1];
  *(v23 + 192) = v14[2];
  *(v23 + 200) = v87;
  if (v139.i64[0] && v139.i64[1])
  {
    (*(*v139.i64[0] + 40))();
  }

  if (v141)
  {
  }
}

void re::populateAttribute<re::Vector3<float>,unsigned long>(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4, re::MaterialParameterBlock *a5, unint64_t a6)
{
  v10 = a2;
  v53 = *MEMORY[0x1E69E9840];
  isAttribute = re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<unsigned long>(a1, a2, 2u);
  v13 = *a4;
  v43[0] = isAttribute ^ 1;
  *&v48 = v13;
  re::MaterialParameterBlock::setConstant(a5, &v48, 1uLL, v43, 2, v41);
  v41[0] = 0;
  if ((isAttribute & 1) == 0)
  {
    a6 = *(a1 + 792);
    if (a6 > v10)
    {
      v19 = *(a1 + 808) + 32 * v10;
      if (*(v19 + 16) == 2)
      {
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *a3;
        *v43 = v21;
        *&v43[8] = v20;
        v42 = v22;
        re::MaterialParameterBlock::setConstant(a5, &v42, 0x10uLL, v43, 33, &v48);
      }

      else
      {
        v29 = std::__throw_bad_variant_access[abi:nn200100]();
        re::populateAttribute<re::Vector4<float>,unsigned long>(v29, v30, v31, v32, v33, v34);
      }

      return;
    }

LABEL_15:
    v42 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v43 = 136315906;
    *&v43[4] = "operator[]";
    *&v43[12] = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    *&v43[14] = 797;
    v44 = 2048;
    v45 = v10;
    v46 = 2048;
    v47 = a6;
    _os_log_send_and_compose_impl(v28, &v42, &v48, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v43, 38, v35, v36[0]);
    _os_crash_msg();
    __break(1u);
  }

  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, v10, 2u);
  v10 = *(Attribute + 16);
  if (v10 <= a6)
  {
    v42 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v43 = 136315906;
    *&v43[4] = "operator[]";
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    *&v43[12] = 1024;
    *&v43[14] = 797;
    v44 = 2048;
    v45 = a6;
    v46 = 2048;
    v47 = v10;
    _os_log_send_and_compose_impl(v25, &v42, &v48, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v43, 38, v35, v36[0]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v15 = *(Attribute + 32) + 32 * a6;
  v16 = *(v15 + 16);
  v17 = *(v15 + 8);
  *&v48 = **(v15 + 24);
  DWORD2(v49) = 0;
  *&v50 = __PAIR64__(v16, v17);
  v39 = *a3;
  LOBYTE(v36[0]) = 0;
  v37 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v36, &v48);
  v38 = v50;
  v18 = re::MaterialParameterBlock::setBuffer(a5, &v39, v36, v40);
  v40[0] = 0;
  if (v37 != -1)
  {
    (off_1F5D03DA0[v37])(v43, v36, v18);
  }

  v37 = -1;
  if (DWORD2(v49) != -1)
  {
    (off_1F5D03DA0[DWORD2(v49)])(v43, &v48);
  }
}

void re::populateAttribute<re::Vector4<float>,unsigned long>(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4, re::MaterialParameterBlock *a5, unint64_t a6)
{
  v10 = a2;
  v48 = *MEMORY[0x1E69E9840];
  isAttribute = re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<unsigned long>(a1, a2, 3u);
  v13 = *a4;
  v38[0] = isAttribute ^ 1;
  *&v43 = v13;
  re::MaterialParameterBlock::setConstant(a5, &v43, 1uLL, v38, 2, v36);
  v36[0] = 0;
  if ((isAttribute & 1) == 0)
  {
    a6 = *(a1 + 832);
    if (a6 > v10)
    {
      v19 = *(a1 + 848) + 32 * v10;
      if (*(v19 + 16) == 3)
      {
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *a3;
        *v38 = v21;
        *&v38[8] = v20;
        v37 = v22;
        re::MaterialParameterBlock::setConstant(a5, &v37, 0x10uLL, v38, 34, &v43);
      }

      else
      {
        v29 = std::__throw_bad_variant_access[abi:nn200100]();
        re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(v29);
      }

      return;
    }

LABEL_15:
    v37 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v38 = 136315906;
    *&v38[4] = "operator[]";
    *&v38[12] = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    *&v38[14] = 797;
    v39 = 2048;
    v40 = v10;
    v41 = 2048;
    v42 = a6;
    _os_log_send_and_compose_impl(v28, &v37, &v43, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v30, v31[0]);
    _os_crash_msg();
    __break(1u);
  }

  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, v10, 3u);
  v10 = *(Attribute + 16);
  if (v10 <= a6)
  {
    v37 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v38 = 136315906;
    *&v38[4] = "operator[]";
    *&v38[12] = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    *&v38[14] = 797;
    v39 = 2048;
    v40 = a6;
    v41 = 2048;
    v42 = v10;
    _os_log_send_and_compose_impl(v25, &v37, &v43, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v30, v31[0]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v15 = *(Attribute + 32) + 32 * a6;
  v16 = *(v15 + 16);
  v17 = *(v15 + 8);
  *&v43 = **(v15 + 24);
  DWORD2(v44) = 0;
  *&v45 = __PAIR64__(v16, v17);
  v34 = *a3;
  LOBYTE(v31[0]) = 0;
  v32 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v31, &v43);
  v33 = v45;
  v18 = re::MaterialParameterBlock::setBuffer(a5, &v34, v31, v35);
  v35[0] = 0;
  if (v32 != -1)
  {
    (off_1F5D03DA0[v32])(v38, v31, v18);
  }

  v32 = -1;
  if (DWORD2(v44) != -1)
  {
    (off_1F5D03DA0[DWORD2(v44)])(v38, &v43);
  }
}

uint64_t (***re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,void ()(unsigned long)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshScene(re::PerFrameAllocator *,re::MaterialInstance const*,unsigned long,unsigned long,re::PrimitiveShapeGeometry const&,re::MaterialParameterBlock const*,re::Function<void ()(unsigned long)>,re::Function<re::AABB ()(unsigned long,unsigned long)>)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03DD0;
  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshScene(re::PerFrameAllocator *,re::MaterialInstance const*,unsigned long,unsigned long,re::PrimitiveShapeGeometry const&,re::MaterialParameterBlock const*,re::Function<void ()(unsigned long)>,re::Function<re::AABB ()(unsigned long,unsigned long)>)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03DD0;
  return result;
}

uint64_t *re::FixedArray<re::NamedVertexBuffer>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2E8BA2E8BA2E8BBLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 88 * a3, 8);
  v4[2] = v5;
  if (!v5)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v7 = v5;
  for (i = a3 - 1; i; --i)
  {
    *v7 = 0u;
    *(v7 + 1) = 0u;
    v5 = re::DynamicString::setCapacity(v7, 0);
    *(v7 + 16) = 256;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 68) = 0u;
    *(v7 + 21) = -1;
    v7 = (v7 + 88);
  }

  *v7 = 0u;
  *(v7 + 1) = 0u;
  result = re::DynamicString::setCapacity(v7, 0);
  *(v7 + 16) = 256;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 68) = 0u;
  *(v7 + 21) = -1;
  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03E28;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03E28;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::operator()(void *a1, unint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a1[3];
  if (v3 <= *a2)
  {
    v14[0] = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v2;
    v22 = 2048;
    *v23 = v3;
    _os_log_send_and_compose_impl(v12, v14, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  v6 = a1[5] + 32 * v2;
  v7 = *(v6 + 16);
  v8 = *(v6 + 8);
  *&v24 = **(v6 + 24);
  DWORD2(v25) = 0;
  *&v26 = __PAIR64__(v7, v8);
  v9 = a1[6];
  v13 = 0x70A66CC11824C2D9;
  LOBYTE(v16) = 0;
  HIDWORD(v21) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v16, &v24);
  *&v23[2] = v26;
  v10 = re::MaterialParameterBlock::setBuffer(v9, &v13, &v16, v14);
  v14[0] = 0;
  if (HIDWORD(v21) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v21)])(&v15, &v16, v10);
  }

  HIDWORD(v21) = -1;
  if (DWORD2(v25) != -1)
  {
    (off_1F5D03DA0[DWORD2(v25)])(&v15, &v24);
  }

  *&v24 = 0xADE0D49ECE3B3;
  re::populateAttribute<re::Vector4<float>>(v5, 1u, &v24, 0x2A5B4409271D7A77, a1[6], v2);
  *&v24 = 0x59BE5D4061B1;
  re::populateAttribute<float>(v5, 2u, &v24, 0x4BDE6E805B77B40DLL, a1[6], v2);
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::cloneInto(uint64_t *a1, void *a2)
{
  *a2 = &unk_1F5D03E28;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), a1 + 1);
  v4 = a1[6];
  a2[6] = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  a2[7] = a1[7];
  return a2;
}

uint64_t re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03E28;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(a2 + 8, (a1 + 8));
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = 0;
  return a2;
}

void re::populateAttribute<re::Vector4<float>>(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4, re::MaterialParameterBlock *a5, unint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = *(a1 + a2 + 512);
  v39[0] = v11 ^ 1;
  *&v44 = a4;
  re::MaterialParameterBlock::setConstant(a5, &v44, 1uLL, v39, 2, v37);
  v37[0] = 0;
  if (v11)
  {
    v12 = a1 + 40 * v10;
    v13 = *(v12 + 16);
    if (v13 <= a6)
    {
      v38 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v39 = 136315906;
      *&v39[4] = "operator[]";
      *&v39[12] = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      *&v39[14] = 797;
      v40 = 2048;
      v41 = a6;
      v42 = 2048;
      v43 = v13;
      _os_log_send_and_compose_impl(v24, &v38, &v44, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v31, v32[0]);
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(v12 + 32) + 32 * a6;
    v15 = *(v14 + 16);
    v16 = *(v14 + 8);
    *&v44 = **(v14 + 24);
    DWORD2(v45) = 0;
    *&v46 = __PAIR64__(v15, v16);
    v35 = *a3;
    LOBYTE(v32[0]) = 0;
    v33 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v32, &v44);
    v34 = v46;
    v17 = re::MaterialParameterBlock::setBuffer(a5, &v35, v32, v36);
    v36[0] = 0;
    if (v33 != -1)
    {
      (off_1F5D03DA0[v33])(v39, v32, v17);
    }

    v33 = -1;
    if (DWORD2(v45) != -1)
    {
      (off_1F5D03DA0[DWORD2(v45)])(v39, &v44);
    }
  }

  else
  {
    v18 = a1 + 32 * v10;
    if (*(v18 + 304) == 3)
    {
      v20 = *(v18 + 288);
      v19 = *(v18 + 296);
      v21 = *a3;
      *v39 = v20;
      *&v39[8] = v19;
      v38 = v21;
      re::MaterialParameterBlock::setConstant(a5, &v38, 0x10uLL, v39, 34, &v44);
    }

    else
    {
      v25 = std::__throw_bad_variant_access[abi:nn200100]();
      re::populateAttribute<float>(v25, v26, v27, v28, v29, v30);
    }
  }
}

void re::populateAttribute<float>(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4, re::MaterialParameterBlock *a5, unint64_t a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = *(a1 + a2 + 512);
  v33[0] = v11 ^ 1;
  *&v40 = a4;
  re::MaterialParameterBlock::setConstant(a5, &v40, 1uLL, v33, 2, v31);
  v31[0] = 0;
  if (v11)
  {
    v12 = a1 + 40 * v10;
    v13 = *(v12 + 16);
    if (v13 <= a6)
    {
      v32 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v33 = 136315906;
      *&v33[4] = "operator[]";
      v34 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v35 = 797;
      v36 = 2048;
      v37 = a6;
      v38 = 2048;
      v39 = v13;
      _os_log_send_and_compose_impl(v23, &v32, &v40, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v33, 38, v25, v26[0]);
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(v12 + 32) + 32 * a6;
    v15 = *(v14 + 16);
    v16 = *(v14 + 8);
    *&v40 = **(v14 + 24);
    DWORD2(v41) = 0;
    *&v42 = __PAIR64__(v15, v16);
    v29 = *a3;
    LOBYTE(v26[0]) = 0;
    v27 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v26, &v40);
    v28 = v42;
    v17 = re::MaterialParameterBlock::setBuffer(a5, &v29, v26, v30);
    v30[0] = 0;
    if (v27 != -1)
    {
      (off_1F5D03DA0[v27])(v33, v26, v17);
    }

    v27 = -1;
    if (DWORD2(v41) != -1)
    {
      (off_1F5D03DA0[DWORD2(v41)])(v33, &v40);
    }
  }

  else
  {
    v18 = a1 + 32 * v10;
    if (*(v18 + 304))
    {
      v24 = std::__throw_bad_variant_access[abi:nn200100]();
      re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(v24);
    }

    else
    {
      v19 = *(v18 + 288);
      v20 = *a3;
      LODWORD(v32) = v19;
      *v33 = v20;
      re::MaterialParameterBlock::setConstant(a5, v33, 4uLL, &v32, 1, &v40);
    }
  }
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03E80;
  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03E80;
  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

char *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::operator()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *(a1 + 24);
  if (v6 <= *a2)
  {
    v21 = 0;
    memset(v30, 0, sizeof(v30));
    v16 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v6;
    _os_log_send_and_compose_impl(v17, &v21, v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *a3;
  v8 = *(a1 + 40) + 32 * v5;
  v9.i64[0] = 0x7F0000007FLL;
  v9.i64[1] = 0x7F0000007FLL;
  v19 = vnegq_f32(v9);
  *a4 = v19;
  a4[1] = v9;
  result = [**(v8 + 24) contents];
  if (v7)
  {
    v11 = &result[*(v8 + 8)];
    v12.i64[0] = 0x7F0000007FLL;
    v12.i32[2] = 127;
    v13 = v19;
    do
    {
      v14 = *v11;
      v11 += 16;
      v15 = v14;
      v13.i32[3] = 0;
      v15.i32[3] = 0;
      v13 = vminnmq_f32(v13, v15);
      v12.i32[3] = 0;
      v12 = vmaxnmq_f32(v12, v15);
      --v7;
    }

    while (v7);
    *a4 = v13;
    a4[1] = v12;
  }

  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03E80;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03E80;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::Callable(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F5D03ED8;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a1 + 1), a2);
  a1[6] = a2[5];
  a2[5] = 0;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a1 + 7), a2 + 6);
  a1[12] = a2[11];
  return a1;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03ED8;
  re::DynamicArray<unsigned long>::deinit((a1 + 7));
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03ED8;
  re::DynamicArray<unsigned long>::deinit((a1 + 7));
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::operator()(void *a1, unint64_t *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a1[3];
  if (v4 <= *a2)
  {
    *v28 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v38 = 797;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    *v42 = v4;
    _os_log_send_and_compose_impl(v18, v28, &v43, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v6 = a1[12];
  v7 = a1[5] + 32 * v3;
  v8 = *(v7 + 16);
  v9 = *(v7 + 8);
  *&v43 = **(v7 + 24);
  DWORD2(v44) = 0;
  *&v45 = __PAIR64__(v8, v9);
  v10 = a1[6];
  v25 = 0x42DD0EA8FF94AE93;
  LOBYTE(v35) = 0;
  HIDWORD(v40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v35, &v43);
  *&v42[2] = v45;
  v11 = re::MaterialParameterBlock::setBuffer(v10, &v25, &v35, v26);
  v26[0] = 0;
  if (HIDWORD(v40) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v40)])(v28, &v35, v11);
  }

  HIDWORD(v40) = -1;
  if (DWORD2(v44) != -1)
  {
    (off_1F5D03DA0[DWORD2(v44)])(v28, &v43);
  }

  v2 = a1[9];
  if (v2 <= v3)
  {
LABEL_16:
    v24[0] = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v28 = 136315906;
    *&v28[4] = "operator[]";
    v29 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v30 = 797;
    v31 = 2048;
    v32 = v3;
    v33 = 2048;
    *v34 = v2;
    _os_log_send_and_compose_impl(v21, v24, &v43, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v28, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
  }

  v12 = a1[11] + 32 * v3;
  v13 = *(v12 + 16);
  v14 = *(v12 + 8);
  *&v43 = **(v12 + 24);
  DWORD2(v44) = 0;
  *&v45 = __PAIR64__(v13, v14);
  v15 = a1[6];
  v23 = 0x42DD0EA8FF94AE94;
  v28[0] = 0;
  HIDWORD(v32) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v28, &v43);
  *&v34[2] = v45;
  v16 = re::MaterialParameterBlock::setBuffer(v15, &v23, v28, v24);
  v24[0] = 0;
  if (HIDWORD(v32) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v32)])(&v27, v28, v16);
  }

  HIDWORD(v32) = -1;
  if (DWORD2(v44) != -1)
  {
    (off_1F5D03DA0[DWORD2(v44)])(&v27, &v43);
  }

  *&v43 = 0x567E936567CFLL;
  re::populateAttribute<re::Vector4<float>>(v6, 5u, &v43, 0xAE343F25523302FLL, a1[6], v3);
  *&v43 = 0x567E947C6632;
  re::populateAttribute<float>(v6, 6u, &v43, 0x11DE7004A5E6CC6CLL, a1[6], v3);
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::cloneInto(uint64_t *a1, void *a2)
{
  *a2 = &unk_1F5D03ED8;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), a1 + 1);
  v4 = a1[6];
  a2[6] = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 7), a1 + 7);
  a2[12] = a1[12];
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03F30;
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03F30;
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

char *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::operator()@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = a1[3];
  if (v7 <= *a2)
  {
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v38 = 797;
    v39 = 2048;
    v40 = v6;
    v41 = 2048;
    v42 = v7;
    _os_log_send_and_compose_impl(v26, &v34, &v43, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v30, v32);
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v38 = 797;
    v39 = 2048;
    v40 = v6;
    v41 = 2048;
    v42 = v4;
    _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v30, v32);
    _os_crash_msg();
    __break(1u);
  }

  v9 = *a3;
  v10 = a1[5] + 32 * v6;
  v11 = [**(v10 + 24) contents];
  if (v9)
  {
    v12 = &v11[*(v10 + 8)];
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    v14 = vnegq_f32(v13);
    v15 = v9;
    do
    {
      v16 = *v12++;
      v17 = v16;
      v14.i32[3] = 0;
      v17.i32[3] = 0;
      v14 = vminnmq_f32(v14, v17);
      v13.i32[3] = 0;
      v13 = vmaxnmq_f32(v13, v17);
      --v15;
    }

    while (v15);
  }

  else
  {
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    v14 = vnegq_f32(v13);
  }

  v4 = a1[8];
  if (v4 <= v6)
  {
    goto LABEL_17;
  }

  v18 = a1[10] + 32 * v6;
  v31 = v14;
  v33 = v13;
  *a4 = v14;
  a4[1] = v13;
  result = [**(v18 + 24) contents];
  if (v9)
  {
    v20 = &result[*(v18 + 8)];
    v22 = v31;
    v21 = v33;
    do
    {
      v23 = *v20;
      v20 += 16;
      v24 = v23;
      v22.i32[3] = 0;
      v24.i32[3] = 0;
      v22 = vminnmq_f32(v22, v24);
      v21.i32[3] = 0;
      v21 = vmaxnmq_f32(v21, v24);
      --v9;
    }

    while (v9);
    *a4 = v22;
    a4[1] = v21;
  }

  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03F30;
  v4 = a2 + 6;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v4, (a1 + 48));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03F30;
  v4 = a2 + 6;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v4, (a1 + 48));
  return a2;
}

uint64_t re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D03F88;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(a1 + 8, a2);
  *(a1 + 48) = *(a2 + 40);
  *(a2 + 40) = 0;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(a1 + 56, (a2 + 48));
  *(a1 + 96) = *(a2 + 88);
  return a1;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03F88;
  re::DynamicArray<unsigned long>::deinit((a1 + 7));
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03F88;
  re::DynamicArray<unsigned long>::deinit((a1 + 7));
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::operator()(void *a1, unint64_t *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a1[3];
  if (v4 <= *a2)
  {
    *v30 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v40 = 797;
    v41 = 2048;
    v42 = v3;
    v43 = 2048;
    *v44 = v4;
    _os_log_send_and_compose_impl(v20, v30, &v45, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v24, v25);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v6 = a1[12];
  v7 = a1[5] + 32 * v3;
  v8 = *(v7 + 16);
  v9 = *(v7 + 8);
  *&v45 = **(v7 + 24);
  DWORD2(v46) = 0;
  *&v47 = __PAIR64__(v8, v9);
  v10 = a1[6];
  v28 = 0xEE268E43F3D1BEALL;
  LOBYTE(v37) = 0;
  HIDWORD(v42) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v37, &v45);
  *&v44[2] = v47;
  v11 = re::MaterialParameterBlock::setBuffer(v10, &v28, &v37, v29);
  v29[0] = 0;
  if (HIDWORD(v42) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v42)])(v30, &v37, v11);
  }

  HIDWORD(v42) = -1;
  if (DWORD2(v46) != -1)
  {
    (off_1F5D03DA0[DWORD2(v46)])(v30, &v45);
  }

  v2 = a1[9];
  if (v2 <= v3)
  {
LABEL_16:
    v27[0] = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v30 = 136315906;
    *&v30[4] = "operator[]";
    v31 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v32 = 797;
    v33 = 2048;
    v34 = v3;
    v35 = 2048;
    *v36 = v2;
    _os_log_send_and_compose_impl(v23, v27, &v45, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v30, 38, v24, v25);
    _os_crash_msg();
    __break(1u);
  }

  v12 = a1[11] + 32 * v3;
  v13 = *(v12 + 16);
  v14 = *(v12 + 8);
  *&v45 = **(v12 + 24);
  DWORD2(v46) = 0;
  *&v47 = __PAIR64__(v13, v14);
  v15 = a1[6];
  v26 = 0x1D89B02FDAB8EF6FLL;
  v30[0] = 0;
  HIDWORD(v34) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v30, &v45);
  *&v36[2] = v47;
  v16 = re::MaterialParameterBlock::setBuffer(v15, &v26, v30, v27);
  v27[0] = 0;
  if (HIDWORD(v34) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v34)])(&v25, v30, v16);
  }

  HIDWORD(v34) = -1;
  if (DWORD2(v46) != -1)
  {
    (off_1F5D03DA0[DWORD2(v46)])(&v25, &v45);
  }

  v17 = a1[13];
  *&v45 = 0xB20902AF06629;
  v25 = 0x19A8EF0EE74E6741;
  re::populateAttribute<re::Vector3<float>,unsigned long>(v6, v17, &v45, &v25, a1[6], v3);
  v18 = a1[13];
  *&v45 = 0xB20902A148C42;
  v25 = 0x14289D97E950E308;
  re::populateAttribute<re::Vector4<float>,unsigned long>(v6, v18, &v45, &v25, a1[6], v3);
}

uint64_t re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03F88;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(a2 + 8, (a1 + 8));
  v4 = *(a1 + 48);
  *(a2 + 48) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  re::DynamicArray<re::GPUAllocation>::DynamicArray(a2 + 56, (a1 + 56));
  *(a2 + 96) = *(a1 + 96);
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03FE0;
  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03FE0;
  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

char *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::operator()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *(a1 + 24);
  if (v6 <= *a2)
  {
    v21 = 0;
    memset(v30, 0, sizeof(v30));
    v16 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v6;
    _os_log_send_and_compose_impl(v17, &v21, v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *a3;
  v8 = *(a1 + 40) + 32 * v5;
  v9.i64[0] = 0x7F0000007FLL;
  v9.i64[1] = 0x7F0000007FLL;
  v19 = vnegq_f32(v9);
  *a4 = v19;
  a4[1] = v9;
  result = [**(v8 + 24) contents];
  if (v7)
  {
    v11 = &result[*(v8 + 8)];
    v12.i64[0] = 0x7F0000007FLL;
    v12.i32[2] = 127;
    v13 = v19;
    do
    {
      v14 = *v11;
      v11 += 16;
      v15 = v14;
      v13.i32[3] = 0;
      v15.i32[3] = 0;
      v13 = vminnmq_f32(v13, v15);
      v12.i32[3] = 0;
      v12 = vmaxnmq_f32(v12, v15);
      --v7;
    }

    while (v7);
    *a4 = v13;
    a4[1] = v12;
  }

  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03FE0;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03FE0;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfMeshes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04038;
  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfMeshes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04038;
  return result;
}

uint64_t re::DynamicArray<re::PrimitiveShapeGeometry>::deinit(uint64_t a1)
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
        v6 = (v3 + 80);
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v7 = *(v6 - 1);
          if (v7)
          {

            *(v6 - 1) = 0;
          }

          v8 = *(v6 - 2);
          if (v8)
          {

            *(v6 - 2) = 0;
          }

          v6 += 12;
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

uint64_t re::DynamicArray<re::PrimitiveRenderingContext>::deinit(uint64_t a1)
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
        v5 = v3 + 1200 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 1136);
          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v3 + 1056);
          re::DynamicArray<unsigned long>::deinit(v3 + 1016);
          for (i = 976; i != 816; i -= 40)
          {
            re::DynamicArray<unsigned long>::deinit(v3 + i);
          }

          do
          {
            re::DynamicArray<unsigned long>::deinit(v3 + i);
            i -= 40;
          }

          while (i != 656);
          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v3 + i);
            i -= 40;
          }

          while (i != 496);
          for (j = 240; j != -40; j -= 40)
          {
            re::DynamicArray<unsigned long>::deinit(v3 + j);
          }

          v3 += 1200;
        }

        while (v3 != v5);
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

_anonymous_namespace_ *re::DynamicArray<re::PrimitiveShapeGeometry>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::PrimitiveShapeGeometry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PrimitiveShapeGeometry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PrimitiveShapeGeometry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PrimitiveShapeGeometry>::setCapacity(v5, a2);
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
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v17, v19);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v18, v20);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 96 * v9;
        v11 = v8 + 64;
        v12 = v7;
        do
        {
          v13 = *(v11 - 64);
          v14 = *(v11 - 48);
          v15 = *(v11 - 16);
          *(v12 + 2) = *(v11 - 32);
          *(v12 + 3) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12[8] = *v11;
          *v11 = 0;
          v12[9] = *(v11 + 8);
          *(v11 + 8) = 0;
          v12[10] = *(v11 + 16);
          *(v11 + 16) = 0;
          v16 = *(v11 + 8);
          if (v16)
          {

            *(v11 + 8) = 0;
          }

          if (*v11)
          {

            *v11 = 0;
          }

          v12 += 12;
          v11 += 96;
          v10 -= 96;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::PrimitiveRenderingContext>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::PrimitiveRenderingContext>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PrimitiveRenderingContext>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PrimitiveRenderingContext>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PrimitiveRenderingContext>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x4B0uLL))
        {
          v2 = 1200 * a2;
          result = (*(*result + 32))(result, 1200 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1200, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
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
        v10 = 1200 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::PrimitiveRenderingContext>(v8, v11);
          v8 += 1200;
          v11 += 1200;
          v10 -= 1200;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::ObjectHelper::move<re::PrimitiveRenderingContext>(uint64_t a1, uint64_t a2)
{
  re::PrimitiveRenderingDynamicGeometry::PrimitiveRenderingDynamicGeometry(a2, a1);
  *(a2 + 1088) = 0;
  *(a2 + 1080) = 0;
  *(a2 + 1072) = 0;
  *(a2 + 1064) = 0;
  *(a2 + 1056) = 0;
  *(a2 + 1056) = *(a1 + 1056);
  *(a1 + 1056) = 0;
  *(a2 + 1064) = *(a1 + 1064);
  *(a1 + 1064) = 0;
  v4 = *(a2 + 1072);
  *(a2 + 1072) = *(a1 + 1072);
  *(a1 + 1072) = v4;
  v5 = *(a2 + 1088);
  *(a2 + 1088) = *(a1 + 1088);
  *(a1 + 1088) = v5;
  ++*(a1 + 1080);
  ++*(a2 + 1080);
  v6 = *(a1 + 1096);
  v7 = *(a1 + 1112);
  *(a2 + 1128) = *(a1 + 1128);
  *(a2 + 1096) = v6;
  *(a2 + 1112) = v7;
  *(a2 + 1168) = 0;
  *(a2 + 1136) = 0;
  *(a2 + 1152) = 0;
  *(a2 + 1144) = 0;
  *(a2 + 1160) = 0;
  *(a2 + 1136) = *(a1 + 1136);
  *(a1 + 1136) = 0;
  *(a2 + 1144) = *(a1 + 1144);
  *(a1 + 1144) = 0;
  v8 = *(a2 + 1152);
  *(a2 + 1152) = *(a1 + 1152);
  *(a1 + 1152) = v8;
  v9 = *(a2 + 1168);
  *(a2 + 1168) = *(a1 + 1168);
  *(a1 + 1168) = v9;
  ++*(a1 + 1160);
  ++*(a2 + 1160);
  v10 = *(a1 + 1176);
  *(a2 + 1192) = *(a1 + 1192);
  *(a2 + 1176) = v10;
  re::DynamicArray<unsigned long>::deinit(a1 + 1136);
  re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(a1 + 1056);
  re::DynamicArray<unsigned long>::deinit(a1 + 1016);
  v11 = a1 + 976;
  v12 = -160;
  do
  {
    re::DynamicArray<unsigned long>::deinit(v11);
    v11 -= 40;
    v12 += 40;
  }

  while (v12);
  v13 = a1 + 816;
  v14 = -160;
  do
  {
    re::DynamicArray<unsigned long>::deinit(v13);
    v13 -= 40;
    v14 += 40;
  }

  while (v14);
  v15 = a1 + 656;
  v16 = -160;
  do
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v15);
    v15 -= 40;
    v16 += 40;
  }

  while (v16);
  v17 = a1 + 240;
  v18 = -280;
  do
  {
    result = re::DynamicArray<unsigned long>::deinit(v17);
    v17 -= 40;
    v18 += 40;
  }

  while (v18);
  return result;
}

uint64_t re::attributeInfo(unsigned int a1, uint64_t a2)
{
  if (a1 < 7)
  {
    return qword_1E30A2A08[a1];
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) incorrect attribute", "!Unreachable code", "attributeInfo", 32, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) incorrect attribute");
  __break(1u);
  return result;
}

void re::allocate(uint64_t *__return_ptr a1@<X8>, re *this@<X0>, const re::RenderManager *a3@<X1>, unint64_t a4@<X2>)
{
  v7 = *(this + 14);
  if (v7)
  {
    v7 = *(v7 + 320);
  }

  v8 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v7, *(*(this + 18) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(this + 18) + 16) << 60));

  re::PerFrameAllocatorGPU::allocInternal(v8, a3 << 7, a4, 0, a1);
}

uint64_t re::attributeInfo(uint64_t result, uint64_t a2)
{
  if (result >= 4)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) incorrect attribute", "!Unreachable code", "attributeInfo", 51, v2, v3);
    result = _os_crash("assertion failure: (!Unreachable code) incorrect attribute");
    __break(1u);
  }

  return result;
}

void *re::FixedArray<re::NamedVertexBuffer>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2] + 40;
      v5 = 88 * v2;
      do
      {
        v6 = *(v4 + 24);
        if (v6 != -1)
        {
          (off_1F5D03DA0[v6])(&v8, v4);
        }

        *(v4 + 24) = -1;
        v7 = re::DynamicString::deinit((v4 - 40));
        v4 += 88;
        v5 -= 88;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v7);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::GPUAllocation>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, a2[2]);
      v7 = *(a1 + 16);
      if (v7)
      {
        memmove(*(a1 + 32), a2[4], 32 * v7);
        v7 = *(a1 + 16);
      }

      memcpy((*(a1 + 32) + 32 * v7), (a2[4] + 32 * v7), 32 * (v6 - v7));
    }

    else if (v6)
    {
      memmove(*(a1 + 32), a2[4], 32 * v6);
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

re::DynamicString *re::renderGraphEncoderSplitReasonToString(_anonymous_namespace_ *a1, int a2)
{
  v4 = off_1E871E8C0[a2];
}

re::DynamicString *re::multisampleDepthResolveFilterToString(_anonymous_namespace_ *a1, int a2)
{
  v4 = off_1E871E940[a2];
}

re::DynamicString *re::multisampleStencilResolveFilterToString(_anonymous_namespace_ *a1, int a2)
{
  if (a2)
  {
    v4 = "kDepthResolvedSample";
  }

  else
  {
    v4 = "kSample0";
  }
}

uint64_t re::RenderGraphEncoderSplitLogBuffer::clear(uint64_t this)
{
  if (*(this + 16))
  {
    v1 = 0;
    v2 = 0;
    do
    {
      v3 = *(this + 32);
      v4 = v3 + v1;
      if (*(v3 + v1 + 8))
      {
        *(v4 + 8) = 1;
        v5 = *(v3 + v1 + 16);
      }

      else
      {
        *(v4 + 8) = 0;
        v5 = (v3 + v1 + 9);
      }

      *v5 = 0;
      ++v2;
      v1 += 32;
    }

    while (*(this + 16) > v2);
  }

  *(this + 40) = 0;
  return this;
}

void re::RenderGraphEncoderSplitLogManager::save(re::RenderGraphEncoderSplitLogManager *this, char a2)
{
  v4 = re::RenderGraphEncoderSplitLogBuffer::calculateHash((this + 24));
  v6 = v4;
  if ((a2 & 1) != 0 || *(this + 16) != 1 || v4 != *(this + 1))
  {
    re::RenderGraphEncoderSplitLogBuffer::logBuffer(this + 24, v5);
    *(this + 16) = 1;
  }

  *(this + 1) = v6;
}

unint64_t re::RenderGraphEncoderSplitLogBuffer::calculateHash(re::RenderGraphEncoderSplitLogBuffer *this)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(this + 4) + v3;
    v7 = *(v6 + 8);
    v8 = v7 >> 1;
    if (v7)
    {
      v8 = v7 >> 1;
    }

    if (v8 >= 100)
    {
      v9 = 100;
    }

    else
    {
      v9 = v8;
    }

    if (v7)
    {
      v10 = *(v6 + 16);
    }

    else
    {
      v10 = v6 + 9;
    }

    v11 = 0x9E3779B97F4A7C17;
    if (v8)
    {
      MurmurHash3_x64_128(v10, v9, 0, v13);
      v11 = ((v13[1] - 0x61C8864680B583E9 + (v13[0] << 6) + (v13[0] >> 2)) ^ v13[0]) - 0x61C8864680B583E9;
      v1 = *(this + 2);
    }

    v5 ^= (v5 >> 2) + (v5 << 6) + v11;
    ++v4;
    v3 += 32;
  }

  while (v1 > v4);
  return v5;
}

void re::RenderGraphEncoderSplitLogBuffer::logBuffer(_BOOL8 this, __n128 a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(this + 40) >= 1)
  {
    v2 = this;
    v3 = 0;
    v4 = 0;
    a2.n128_u64[0] = 136315138;
    v11 = a2;
    do
    {
      v5 = *re::graphicsLogObjects(this);
      this = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (this)
      {
        v6 = *(v2 + 2);
        if (v6 <= v4)
        {
          v12 = 0;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          *buf = 0u;
          v9 = MEMORY[0x1E69E9C10];
          v13 = 136315906;
          v14 = "operator[]";
          v15 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v10 = 3;
          }

          else
          {
            v10 = 2;
          }

          v16 = 789;
          v17 = 2048;
          v18 = v4;
          v19 = 2048;
          v20 = v6;
          _os_log_send_and_compose_impl(v10, &v12, buf, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11.n128_u64[0], v11.n128_u64[1]);
          _os_crash_msg();
          __break(1u);
        }

        v7 = *(v2 + 4) + v3;
        if (*(v7 + 8))
        {
          v8 = *(v7 + 16);
        }

        else
        {
          v8 = v7 + 9;
        }

        *buf = v11.n128_u32[0];
        *&buf[4] = v8;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      ++v4;
      v3 += 32;
    }

    while (v4 < v2[10]);
  }
}

unint64_t re::RenderGraphEncoderSplitLogManager::logEntry(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int *a7)
{
  v105 = *MEMORY[0x1E69E9840];
  if (*result == 1)
  {
    v13 = result;
    v14 = *(result + 64);
    v15 = *(result + 40);
    if (v15 <= v14)
    {
      *(&v100 + 1) = 0;
      v101 = 0uLL;
      re::DynamicString::setCapacity(&v100, 0);
      re::DynamicString::setCapacity(&v100, 0x400uLL);
      re::DynamicArray<re::DynamicString>::add((v13 + 24), &v100);
      result = v100;
      if (v100 && (BYTE8(v100) & 1) != 0)
      {
        result = (*(*v100 + 40))(v100, v101);
      }

      v14 = *(v13 + 64);
      v15 = *(v13 + 40);
      v16 = v14;
    }

    else
    {
      v16 = v14;
    }

    if (v15 <= v16)
    {
      *&v92 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      *&v95[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      *&v95[14] = 789;
      v96 = 2048;
      v97 = v16;
      v98 = 2048;
      v99 = v15;
      _os_log_send_and_compose_impl(v69, &v92, &v100, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v84, v85);
      _os_crash_msg();
      __break(1u);
LABEL_170:
      v87[0] = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v70 = MEMORY[0x1E69E9C10];
      v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      *&v95[12] = 1024;
      if (v71)
      {
        v72 = 3;
      }

      else
      {
        v72 = 2;
      }

      *&v95[14] = 789;
      v96 = 2048;
      v97 = a6;
      v98 = 2048;
      v99 = a2;
      _os_log_send_and_compose_impl(v72, v87, &v100, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v84, v85);
      _os_crash_msg();
      __break(1u);
LABEL_174:
      v87[0] = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v73 = MEMORY[0x1E69E9C10];
      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      *&v95[12] = 1024;
      if (v74)
      {
        v75 = 3;
      }

      else
      {
        v75 = 2;
      }

      *&v95[14] = 789;
      v96 = 2048;
      v97 = a6;
      v98 = 2048;
      v99 = a2;
      _os_log_send_and_compose_impl(v75, v87, &v100, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v84, v85);
      _os_crash_msg();
      __break(1u);
LABEL_178:
      v87[0] = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v76 = MEMORY[0x1E69E9C10];
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      *&v95[12] = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      *&v95[14] = 789;
      v96 = 2048;
      v97 = a2;
      v98 = 2048;
      v99 = v13;
      _os_log_send_and_compose_impl(v78, v87, &v100, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v84, v85);
      _os_crash_msg();
      __break(1u);
LABEL_182:
      v94 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v79 = MEMORY[0x1E69E9C10];
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      *&v95[12] = 1024;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }

      *&v95[14] = 789;
      v96 = 2048;
      v97 = a2;
      v98 = 2048;
      v99 = v13;
      _os_log_send_and_compose_impl(v81, &v94, &v100, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v84, v85);
      _os_crash_msg();
      __break(1u);
    }

    v17 = (*(v13 + 56) + 32 * v16);
    *(v13 + 64) = v14 + 1;
    if (a7)
    {
      re::renderGraphResourceOperationTypeToString((a7 + 1), &v92);
      re::renderGraphEncoderSplitReasonToString(&v88, a2);
      if (v89)
      {
        v19 = v91;
      }

      else
      {
        v19 = v90;
      }

      if (BYTE8(v92))
      {
        v20 = v93;
      }

      else
      {
        v20 = &v92 + 9;
      }

      re::DynamicString::format(&v100, "Encoder Split: %s for %s.\n", v18, v19, v20);
    }

    else
    {
      v92 = 0u;
      v93 = 0u;
      re::DynamicString::setCapacity(&v92, 0);
      re::renderGraphEncoderSplitReasonToString(&v88, a2);
      if (v89)
      {
        v22 = v91;
      }

      else
      {
        v22 = v90;
      }

      re::DynamicString::format(&v100, "Encoder Split: %s.\n", v21, v22);
    }

    v13 = v101;
    v23 = BYTE8(v100) & 1;
    if (BYTE8(v100))
    {
      v24 = v101;
    }

    else
    {
      v24 = &v100 + 9;
    }

    if (BYTE8(v100))
    {
      v25 = *(&v100 + 1) >> 1;
    }

    else
    {
      v25 = BYTE8(v100) >> 1;
    }

    re::DynamicString::append(v17, v24, v25);
    if (v100 && v23)
    {
      (*(*v100 + 40))(v100, v13);
    }

    switch(a2)
    {
      case 0:
        v27 = *(a3 + 296);
        a6 = a7[13];
        a2 = *(v27 + 16);
        if (a2 <= a6)
        {
          goto LABEL_174;
        }

        re::StringID::StringID(v95, (*(v27 + 32) + 48 * a6 + 8));
        re::DynamicString::format(&v100, "The new setup is trying a force clear for %s resource index %d.\n", v28, *&v95[8], a7[13]);
        goto LABEL_48;
      case 1:
        v42 = *(a3 + 296);
        a2 = a7[13];
        v13 = *(v42 + 16);
        if (v13 <= a2)
        {
          goto LABEL_178;
        }

        re::StringID::StringID(v87, (*(v42 + 32) + 48 * a2 + 8));
        v43 = *(a3 + 296);
        a2 = a6[13];
        v13 = *(v43 + 16);
        if (v13 <= a2)
        {
          goto LABEL_182;
        }

        v44 = v87[1];
        v45 = a7[13];
        v46 = *a7;
        re::StringID::StringID(v95, (*(v43 + 32) + 48 * a2 + 8));
        re::DynamicString::format(&v100, "The new setup is trying to bind %s resource index %d at attachment index %d but old setup has already bound %s resource index %d at same attachment index %d.\n", v47, v44, v45, v46, *&v95[8], a6[13], *a6);
        v48 = v101;
        v49 = BYTE8(v100) & 1;
        if (BYTE8(v100))
        {
          v50 = v101;
        }

        else
        {
          v50 = &v100 + 9;
        }

        if (BYTE8(v100))
        {
          v51 = *(&v100 + 1) >> 1;
        }

        else
        {
          v51 = BYTE8(v100) >> 1;
        }

        re::DynamicString::append(v17, v50, v51);
        v52 = v100;
        if (v100 && v49)
        {
          v52 = (*(*v100 + 40))(v100, v48);
        }

        if (v95[0])
        {
          if (v95[0])
          {
          }
        }

        if (v87[0])
        {
          if (v87[0])
          {
            goto LABEL_87;
          }
        }

        goto LABEL_133;
      case 2:
        v32 = *(a3 + 296);
        a6 = a7[13];
        a2 = *(v32 + 16);
        if (a2 <= a6)
        {
          goto LABEL_170;
        }

        re::StringID::StringID(v95, (*(v32 + 32) + 48 * a6 + 8));
        re::DynamicString::format(&v100, "The new setup is trying to bind %s resource index %d at attachment index %d but resource is not included in old setup encoder.\n", v33, *&v95[8], a7[13], *a7);
LABEL_48:
        v34 = v101;
        v35 = BYTE8(v100) & 1;
        if (BYTE8(v100))
        {
          v36 = v101;
        }

        else
        {
          v36 = &v100 + 9;
        }

        if (BYTE8(v100))
        {
          v37 = *(&v100 + 1) >> 1;
        }

        else
        {
          v37 = BYTE8(v100) >> 1;
        }

        re::DynamicString::append(v17, v36, v37);
        v38 = v100;
        if (v100 && v35)
        {
          v38 = (*(*v100 + 40))(v100, v34);
        }

        if ((v95[0] & 1) == 0)
        {
          goto LABEL_133;
        }

        if ((v95[0] & 1) == 0)
        {
          goto LABEL_133;
        }

LABEL_87:
        goto LABEL_132;
      case 3:
        if (BYTE8(v92))
        {
          v39 = v93;
        }

        else
        {
          v39 = &v92 | 9;
        }

        re::DynamicString::format(&v100, "The new setup contains %s but old setup doesn't.\n", v26, v39, v83);
        goto LABEL_123;
      case 4:
        v30 = a7[1];
        if (v30 == 8)
        {
          re::multisampleStencilResolveFilterToString(&v100, a6[10]);
          if (BYTE8(v100))
          {
            v31 = v101;
          }

          else
          {
            v31 = &v100 + 9;
          }

          if (v100 && (BYTE8(v100) & 1) != 0)
          {
            (*(*v100 + 40))(v100);
          }

          re::multisampleStencilResolveFilterToString(&v100, a7[10]);
        }

        else
        {
          if (v30 != 7)
          {
            v31 = "n/a";
            v58 = "n/a";
            goto LABEL_118;
          }

          re::multisampleDepthResolveFilterToString(&v100, a6[9]);
          if (BYTE8(v100))
          {
            v31 = v101;
          }

          else
          {
            v31 = &v100 + 9;
          }

          if (v100 && (BYTE8(v100) & 1) != 0)
          {
            (*(*v100 + 40))(v100);
          }

          re::multisampleDepthResolveFilterToString(&v100, a7[9]);
        }

        v26 = v101;
        if (BYTE8(v100))
        {
          v58 = v101;
        }

        else
        {
          v58 = &v100 + 9;
        }

        if (v100 && (BYTE8(v100) & 1) != 0)
        {
          (*(*v100 + 40))(v100);
        }

LABEL_118:
        if (BYTE8(v92))
        {
          v59 = v93;
        }

        else
        {
          v59 = &v92 | 9;
        }

        v83 = v58;
        v84 = v31;
        v82 = v59;
        v29 = "The new step has a %s filter of %s but the old step has a resolve filter of %s.\n";
LABEL_122:
        re::DynamicString::format(&v100, v29, v26, v82, v83, v84);
LABEL_123:
        v60 = BYTE8(v100) & 1;
        if (BYTE8(v100))
        {
          v61 = v101;
        }

        else
        {
          v61 = &v100 + 9;
        }

        if (BYTE8(v100))
        {
          v62 = *(&v100 + 1) >> 1;
        }

        else
        {
          v62 = BYTE8(v100) >> 1;
        }

        re::DynamicString::append(v17, v61, v62);
        if (v100 && v60)
        {
          v53 = *(*v100 + 40);
LABEL_132:
          v53();
        }

LABEL_133:
        re::DynamicString::format(v95, "Old Setup:\n", v26);
        LOBYTE(v87[0]) = 1;
        LOBYTE(v94) = 1;
        v86 = 1;
        re::renderGraphResourceSetupToString(v95, a3, a4, v87, &v94, &v86, &v100);
        if (BYTE8(v100))
        {
          v63 = v101;
        }

        else
        {
          v63 = &v100 + 9;
        }

        if (BYTE8(v100))
        {
          v64 = *(&v100 + 1) >> 1;
        }

        else
        {
          v64 = BYTE8(v100) >> 1;
        }

        re::DynamicString::append(v17, v63, v64);
        if (v100)
        {
          if (BYTE8(v100))
          {
            (*(*v100 + 40))(v100, v101);
          }

          v100 = 0u;
          v101 = 0u;
        }

        if (*v95 && (v95[8] & 1) != 0)
        {
          (*(**v95 + 40))();
        }

        re::DynamicString::format(v95, "New Setup:\n", v65);
        LOBYTE(v87[0]) = 1;
        LOBYTE(v94) = 1;
        v86 = 1;
        re::renderGraphResourceSetupToString(v95, a3, a5, v87, &v94, &v86, &v100);
        if (BYTE8(v100))
        {
          v66 = v101;
        }

        else
        {
          v66 = &v100 + 9;
        }

        if (BYTE8(v100))
        {
          v67 = *(&v100 + 1) >> 1;
        }

        else
        {
          v67 = BYTE8(v100) >> 1;
        }

        re::DynamicString::append(v17, v66, v67);
        if (v100)
        {
          if (BYTE8(v100))
          {
            (*(*v100 + 40))(v100, v101);
          }

          v100 = 0u;
          v101 = 0u;
        }

        if (*v95 && (v95[8] & 1) != 0)
        {
          (*(**v95 + 40))();
        }

        if (v88 && (v89 & 1) != 0)
        {
          (*(*v88 + 40))();
        }

        result = v92;
        if (v92)
        {
          if (BYTE8(v92))
          {
            result = (*(*v92 + 40))();
          }
        }

        break;
      case 5:
        re::DynamicString::format(&v100, "The new setup has a threadgroup memory length of %zu but the old setup has a threadgroup memory length of %zu.\n", v26, *(a5 + 176), *(a4 + 176));
        goto LABEL_123;
      case 6:
        if (*(a5 + 192) - 1 > 2)
        {
          v54 = "Automatic";
        }

        else
        {
          v54 = off_1E871E958[(*(a5 + 192) - 1)];
        }

        if (*(a4 + 192) - 1 > 2)
        {
          v57 = "Automatic";
        }

        else
        {
          v57 = off_1E871E958[(*(a4 + 192) - 1)];
        }

        re::DynamicString::format(&v100, "The new setup has tile size overridden to %s but the old setup has a tile sizeoverridden to %s.\n", v26, v54, v57);
        goto LABEL_123;
      case 7:
        v40 = " doesn't have";
        if (*(a5 + 171))
        {
          v41 = " has";
        }

        else
        {
          v41 = " doesn't have";
        }

        if (*(a4 + 171))
        {
          v40 = " has";
        }

        re::DynamicString::format(&v100, "The new setup%s VRR enabled but the old setup%s VRR enabled.\n", v26, v41, v40);
        goto LABEL_123;
      case 8:
        v55 = " doesn't have";
        if (*(a5 + 169))
        {
          v56 = " has";
        }

        else
        {
          v56 = " doesn't have";
        }

        if (*(a4 + 169))
        {
          v55 = " has";
        }

        re::DynamicString::format(&v100, "The new setup%s custom encoders but the old setup%s custom encoders.\n", v26, v56, v55);
        goto LABEL_123;
      case 9:
        v29 = "The old setup has a depth step but the new setup doesn't.\n";
        goto LABEL_122;
      case 10:
        v29 = "The old setup has a stencil step but the new setup doesn't.\n";
        goto LABEL_122;
      case 11:
        re::DynamicString::format(&v100, "The old setup writes to the resource at attachment index %d and the new setup is trying to read from the same attachment index so the nodes can't be combined. This is because waits happen before an encoder and fence updates happen at the end of an encoder.\n", v26, *a7, v83);
        goto LABEL_123;
      case 12:
        v29 = "The old setup and the new setup have mismatched visibility buffers.\n";
        goto LABEL_122;
      case 13:
        v29 = "The old setup and the new setup have mismatched encoder types.\n";
        goto LABEL_122;
      case 14:
        v29 = "The old setup and the new setup have mismatched write protection options.\n";
        goto LABEL_122;
      case 15:
        re::DynamicString::format(&v100, "The new setup has imageBlockSampleLength overridden to %zu but the old setup has a imageBlockSampleLength overridden to %zu.\n", v26, *(a5 + 184), *(a4 + 184));
        goto LABEL_123;
      default:
        goto LABEL_133;
    }
  }

  return result;
}