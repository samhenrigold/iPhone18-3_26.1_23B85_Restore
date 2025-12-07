uint64_t re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(uint64_t a1))(void)
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

void re::EvaluationContextManager::bindInputHandle<re::Matrix4x4<float>>(void *a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3[3])
  {
    v5 = *a3;
    v6 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    {
      v16 = a2;
      v6 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      a2 = v16;
      if (v15)
      {
        re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
        v6 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
        a2 = v16;
      }
    }

    if (v5 == *(v6 + 131))
    {
      v7 = *(a2 + 8);
      v20 = v7;
      if (v7 >= a1[113])
      {
        re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a1 + 111, v7 + 1);
      }

      else if (*(a1[115] + 56 * v7 + 24))
      {
        return;
      }

      re::DynamicArray<unsigned long>::add((a1 + 156), &v20);
      v17 = *a3;
      re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v18, a3 + 1);
      v19 = 0;
      v8 = v20;
      v9 = a1[113];
      if (v9 <= v20)
      {
        v21 = 0;
        memset(v30, 0, sizeof(v30));
        v11 = MEMORY[0x1E69E9C10];
        v12 = v9;
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v22 = 136315906;
        v23 = "operator[]";
        v24 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v25 = 789;
        v26 = 2048;
        v27 = v8;
        v28 = 2048;
        v29 = v12;
        _os_log_send_and_compose_impl(v14, &v21, v30, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v16, v17);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[115] + 56 * v20;
      *v10 = v17;
      re::DynamicArray<re::RigDataValue>::operator=(v10 + 8, v18);
      *(v10 + 48) = v19;
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v18);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v18);
    }
  }
}

uint64_t re::Slice<char>::operator[](uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return a1 + a3;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, a2, v3, v4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
  __break(1u);
  return result;
}

void *re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>::setCapacity(v5, a2);
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
        v10 = (v8 + 24 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v13 = *(v8 + 2);
          v11[1] = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = &str_67;
          v11[2] = v13;
          re::StringID::destroyString(v8);
          v8 = (v8 + 24);
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

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 24 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 24 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 16) = a3;
  ++*(a1 + 28);
  return v7 + 24 * v5;
}

void re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v9, v4, a2);
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
      re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v4, *(v7 + v5 + 16) % *(v4 + 24), *(v7 + v5 + 16));
        v7 = *(a2 + 16);
        *(result + 4) = *(v7 + v5 + 4);
        *(result + 8) = *(v7 + v5 + 8);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::RigHierarchy::RigHierarchy(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 60) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 24), a2 + 3);
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 108) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 72), a2 + 9);
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  v5 = *(a2 + 16);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = v5;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v6 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 17);
  *(a2 + 17) = v6;
  v7 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 19);
  *(a2 + 19) = v7;
  ++*(a2 + 36);
  ++*(a1 + 144);
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  v8 = *(a2 + 21);
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 168) = v8;
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  v9 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 22);
  *(a2 + 22) = v9;
  v10 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 24);
  *(a2 + 24) = v10;
  ++*(a2 + 46);
  ++*(a1 + 184);
  *(a1 + 232) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  v11 = *(a2 + 26);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 208) = v11;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  v12 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 27);
  *(a2 + 27) = v12;
  v13 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 29) = v13;
  ++*(a2 + 56);
  ++*(a1 + 224);
  *(a1 + 272) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  v14 = *(a2 + 31);
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 248) = v14;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  v15 = *(a1 + 256);
  *(a1 + 256) = *(a2 + 32);
  *(a2 + 32) = v15;
  v16 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 34);
  *(a2 + 34) = v16;
  ++*(a2 + 66);
  ++*(a1 + 264);
  *(a1 + 312) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0;
  v17 = *(a2 + 36);
  *(a1 + 280) = *(a2 + 35);
  *(a1 + 288) = v17;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  v18 = *(a1 + 296);
  *(a1 + 296) = *(a2 + 37);
  *(a2 + 37) = v18;
  v19 = *(a1 + 312);
  *(a1 + 312) = *(a2 + 39);
  *(a2 + 39) = v19;
  ++*(a2 + 76);
  ++*(a1 + 304);
  *(a1 + 352) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  v20 = *(a2 + 41);
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 328) = v20;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  v21 = *(a1 + 336);
  *(a1 + 336) = *(a2 + 42);
  *(a2 + 42) = v21;
  v22 = *(a1 + 352);
  *(a1 + 352) = *(a2 + 44);
  *(a2 + 44) = v22;
  ++*(a2 + 86);
  ++*(a1 + 344);
  return a1;
}

void re::introspect_ImageDimensionsMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1964E8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1964F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1964F0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE196568, "ImageDimensionsMode", 4, 4, 1, 1);
      qword_1EE196568 = &unk_1F5D0C658;
      qword_1EE1965A8 = &re::introspect_ImageDimensionsMode(BOOL)::enumTable;
      dword_1EE196578 = 9;
      __cxa_guard_release(&qword_1EE1964F0);
    }

    if (_MergedGlobals_77)
    {
      break;
    }

    _MergedGlobals_77 = 1;
    re::IntrospectionRegistry::add(&qword_1EE196568, a2);
    v35 = 0xFF96F997A9010256;
    v36 = "ImageDimensionsMode";
    v39 = 0x607DD0F01DCLL;
    v40 = "uint32_t";
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
      v6 = qword_1EE1965A8;
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
      xmmword_1EE196588 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE1964E8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "UseSource";
      qword_1EE196530 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "DownsampleFactor";
      qword_1EE196538 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "UseOverride";
      qword_1EE196540 = v33;
      __cxa_guard_release(&qword_1EE1964E8);
    }
  }
}

void re::introspect_TextureMipmapMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1964F8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE196500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196500))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1965B0, "TextureMipmapMode", 4, 4, 1, 1);
      qword_1EE1965B0 = &unk_1F5D0C658;
      qword_1EE1965F0 = &re::introspect_TextureMipmapMode(BOOL)::enumTable;
      dword_1EE1965C0 = 9;
      __cxa_guard_release(&qword_1EE196500);
    }

    if (byte_1EE1964E1)
    {
      break;
    }

    byte_1EE1964E1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1965B0, a2);
    v37 = 0xE21B701012C6474CLL;
    v38 = "TextureMipmapMode";
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
      v6 = qword_1EE1965F0;
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
      xmmword_1EE1965D0 = v39;
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
    if (__cxa_guard_acquire(&qword_1EE1964F8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 2;
      *(v29 + 16) = "None";
      qword_1EE196548 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "AllocateOnly";
      qword_1EE196550 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 0;
      *(v33 + 16) = "AllocateAndGenerateOnGPU";
      qword_1EE196558 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "AllocateAndGenerateOnCPU";
      qword_1EE196560 = v35;
      __cxa_guard_release(&qword_1EE1964F8);
    }
  }
}

void *re::allocInfo_TextureLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196508))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196640, "TextureLoadDescriptorParameters");
    __cxa_guard_release(&qword_1EE196508);
  }

  return &unk_1EE196640;
}

void re::initInfo_TextureLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v46[0] = 0x3CC0D7AC778599B4;
  v46[1] = "TextureLoadDescriptorParameters";
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  *(this + 2) = v47;
  if ((atomic_load_explicit(&qword_1EE196510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196510))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "bundle";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1965F8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "resource";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196600 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_TextureSemantic(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "semantic";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE196608 = v18;
    v19 = re::introspectionAllocator();
    re::introspect_ImageDimensionsMode(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "dimensionsMode";
    *(v21 + 16) = &qword_1EE196568;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4400000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE196610 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_int(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "downsampleFactor";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4800000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE196618 = v25;
    v26 = re::introspectionAllocator();
    re::introspect_TextureMipmapMode(v26, v27);
    v28 = (*(*v26 + 32))(v26, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "mipmapMode";
    *(v28 + 16) = &qword_1EE1965B0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x4C00000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE196620 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::IntrospectionInfo<re::DynamicString>::get(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "aliasName";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x5000000007;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE196628 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_TextureCompressionType(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "compressionType";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x7000000008;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE196630 = v36;
    v37 = re::introspectionAllocator();
    v43 = re::introspect_ASTCCompressionOptions(1, v38, v39, v40, v41, v42);
    v44 = (*(*v37 + 32))(v37, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "astcCompressionOptions";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x7400000009;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE196638 = v44;
    __cxa_guard_release(&qword_1EE196510);
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1965F8;
  *(this + 9) = re::internal::defaultConstruct<re::TextureLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TextureLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::TextureLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::TextureLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v45 = v47;
}

void *re::internal::defaultConstruct<re::TextureLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[3] = 0u;
  v3[2] = 0u;
  v5 = re::DynamicString::setCapacity(v3 + 4, 0);
  v3[5] = 0u;
  v3[6] = 0u;
  v3 += 5;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 12) = 0;
  *(v3 + 36) = 0;
  *(v3 + 44) = 0;
  return result;
}

double re::internal::defaultDestruct<re::TextureLoadDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 80));
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::TextureLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 3) = 0u;
  *(v1 + 2) = 0u;
  v3 = re::DynamicString::setCapacity(v1 + 4, 0);
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  v1 = (v1 + 80);
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 12) = 0;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::TextureLoadDescriptorParameters>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 80));
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

uint64_t re::TextureAssetProvider::TextureAssetProvider(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 40) = 0;
  v6 = (a1 + 40);
  *a1 = &unk_1F5CC4BF8;
  *(a1 + 48) = 0;
  v7 = (a1 + 48);
  *(a1 + 56) = 65793;
  *(a1 + 61) = 1;
  v8 = a1 + 61;
  *(a1 + 64) = 0;
  if ((atomic_load_explicit(&qword_1EE196528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196528))
  {
    qword_1EE196520 = re::internal::getOrCreateInfo("TextureLoadDescriptorParameters", re::allocInfo_TextureLoadDescriptorParameters, re::initInfo_TextureLoadDescriptorParameters, &unk_1EE196518, 0);
    v8 = a1 + 61;
    __cxa_guard_release(&qword_1EE196528);
  }

  re::TextureAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE196520;
  *(a1 + 24) = a3;
  *(a1 + 32) = a2;
  v9 = re::ServiceLocator::serviceOrNull<re::ImportGraphicsResources>(a3);
  if (v9)
  {
    re::ImportGraphicsContext::ImportGraphicsContext(&v15, v9);
    if (v6 != &v15)
    {
      v10 = v15;
      v15 = 0;
      v11 = *v6;
      *v6 = v10;
    }

    if (v7 != &v16)
    {
      v12 = v16;
      v16 = 0;
      v13 = *v7;
      *v7 = v12;
    }

    *(a1 + 56) = v17;
    *(a1 + 58) = v18;
    if (*(a1 + 59))
    {
      if ((v19 & 1) == 0)
      {
        *(a1 + 59) = 0;
LABEL_14:
        *v8 = *v21;
        *(v8 + 7) = *&v21[7];

        goto LABEL_15;
      }
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      *(a1 + 59) = 1;
    }

    *(a1 + 60) = v20;
    goto LABEL_14;
  }

  re::ServiceLocator::serviceOrNull<re::RenderManager>(a3);
LABEL_15:
  *(a1 + 72) = *(a2 + 2008);
  return a1;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ImportGraphicsResources>(re::StringID *a1)
{
  {
    re::introspect<re::ImportGraphicsResources>(BOOL)::info = re::introspect_ImportGraphicsResources(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ImportGraphicsResources>(BOOL)::info;
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

void re::TextureAssetProvider::~TextureAssetProvider(re::TextureAssetProvider *this)
{
  *this = &unk_1F5CC4BF8;
  *(this + 9) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::TextureAssetProvider::~TextureAssetProvider(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::TextureAssetProvider::makeDescriptor@<X0>(re::TextureAssetProvider *this@<X0>, const re::DynamicString *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v29 = "TextureImage";
  v30 = 12;
  v9 = re::DynamicString::operator=(a4, &v29);
  v10 = *re::TextureAsset::assetType(v9);
  v11 = strlen(v10);
  v29 = v10;
  v30 = v11;
  v12 = re::DynamicString::operator=((a4 + 112), &v29);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v13 = re::DynamicString::setCapacity(&v29, 0);
  *(&v33 + 1) = 0;
  v34 = 0uLL;
  v14 = re::DynamicString::setCapacity(&v33, 0);
  *(&v36 + 1) = 0;
  v37 = 0uLL;
  re::DynamicString::setCapacity(&v36, 0);
  *&v38[16] = 0;
  *&v38[4] = 0;
  v38[12] = 0;
  re::DynamicString::operator=(&v29, this);
  re::DynamicString::operator=(&v33, a2);
  v15 = *(a3 + 2);
  LODWORD(v35) = *(a3 + 14);
  DWORD1(v35) = v15;
  *(&v35 + 1) = *(a3 + 2);
  *v38 = *(a3 + 6);
  *&v38[4] = *(a3 + 28);
  re::DynamicString::DynamicString(v23, &v29);
  re::DynamicString::DynamicString(v24, &v33);
  v25 = v35;
  re::DynamicString::DynamicString(v26, &v36);
  v27 = *v38;
  v28 = *&v38[16];
  re::AssetLoadDescriptor::setIntrospectableData(a4, re::TextureAssetProvider::s_loadDescriptorParametersIntrospect, v23, 0);
  if (v26[0])
  {
    if (v26[1])
    {
      (*(*v26[0] + 40))();
    }

    memset(v26, 0, sizeof(v26));
  }

  if (v24[0])
  {
    if (v24[1])
    {
      (*(*v24[0] + 40))();
    }

    memset(v24, 0, sizeof(v24));
  }

  if (*&v23[0])
  {
    if (BYTE8(v23[0]))
    {
      (*(**&v23[0] + 40))();
    }

    memset(v23, 0, sizeof(v23));
  }

  if (v36)
  {
    if (BYTE8(v36))
    {
      (*(*v36 + 40))(v36, v37, v16, v17, v18, v19, v20, v21);
    }

    v36 = 0u;
    v37 = 0u;
  }

  if (v33)
  {
    if (BYTE8(v33))
    {
      (*(*v33 + 40))(v33, v34, v16, v17, v18, v19, v20, v21);
    }

    v33 = 0u;
    v34 = 0u;
  }

  result = v29;
  if (v29)
  {
    if (v30)
    {
      return (*(*v29 + 40))(v29, v31, v16, v17, v18, v19, v20, v21);
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::TextureLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString ***a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE196528, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE196528);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE196520 = re::internal::getOrCreateInfo("TextureLoadDescriptorParameters", re::allocInfo_TextureLoadDescriptorParameters, re::initInfo_TextureLoadDescriptorParameters, &unk_1EE196518, 0);
      __cxa_guard_release(&qword_1EE196528);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE196520;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

uint64_t *re::TextureAssetProvider::load@<X0>(os_unfair_lock_s **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v6 = re::DynamicString::setCapacity(&v69, 0);
  *(&v73 + 1) = 0;
  v74 = 0uLL;
  v7 = re::DynamicString::setCapacity(&v73, 0);
  *(&v78 + 1) = 0;
  v79 = 0uLL;
  re::DynamicString::setCapacity(&v78, 0);
  v82 = 0;
  v80 = 0;
  v81 = 0;
  if (*(a2 + 1))
  {
    v8 = *(a2 + 2);
  }

  else
  {
    v8 = a2 + 9;
  }

  v9 = strcmp(v8, "TextureImage");
  v10 = v9;
  v11 = *re::TextureAsset::assetType(v9);
  if (*(a2 + 15))
  {
    v12 = *(a2 + 16);
  }

  else
  {
    v12 = a2 + 121;
  }

  v13 = strcmp(v12, v11);
  if (v10 | v13)
  {
    v14 = "TextureAssetProvider called with invalid scheme name/type.";
LABEL_21:
    v67 = 0;
    *v68 = v58[0];
    *&v68[16] = v58[1];
LABEL_22:
    re::DynamicString::DynamicString(v58, v68);
    *a3 = 0;
    v20 = *(&v58[1] + 1);
    *(a3 + 8) = *&v58[0];
    *(a3 + 32) = v20;
    *(a3 + 16) = *(v58 + 8);
    goto LABEL_23;
  }

  v15 = re::AssetLoadDescriptor::getIntrospectableData<re::TextureLoadDescriptorParameters>(a2, &v69);
  if ((v15 & 1) == 0)
  {
    v14 = "Failed to deserialize parameters.";
    goto LABEL_21;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  re::DynamicString::setCapacity(&v41, 0);
  if (BYTE8(v78))
  {
    v16 = *(&v78 + 1) >> 1;
  }

  else
  {
    v16 = BYTE8(v78) >> 1;
  }

  if (v16)
  {
    v17 = this[9];
    re::DynamicString::DynamicString(&v48, &v78);
    re::NamedFileRegistry::tryGetFilePathFor(v17, &v48, v58);
    if (v48)
    {
      if (BYTE8(v48))
      {
        (*(*v48 + 40))();
      }

      v48 = 0u;
      v49 = 0u;
    }

    v19 = v58[0];
    if (v58[0])
    {
      re::DynamicString::operator=(&v41, (v58 + 8));
    }

    else
    {
      if (BYTE8(v78))
      {
        v26 = v79;
      }

      else
      {
        v26 = &v78 + 9;
      }

      re::DynamicString::format(v36, "No file found for Alias: '%s'", v18, v26);
      v67 = 0;
      *v68 = v36[0];
      *&v68[16] = v36[1];
    }

    if (LOBYTE(v58[0]) == 1 && *(&v58[0] + 1) && (v58[1] & 1) != 0)
    {
      (*(**(&v58[0] + 1) + 40))();
    }

    if (v19)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v22 = *&this[4][504]._os_unfair_lock_opaque;
    re::DynamicString::DynamicString(v35, &v69);
    re::BundleFilePathRegistry::findWithBundleID(v22, v35, &v83);
    v23 = *&v35[0];
    if (*&v35[0])
    {
      if (BYTE8(v35[0]))
      {
        v23 = (*(**&v35[0] + 40))();
      }

      memset(v35, 0, 32);
    }

    if (v83)
    {
      if (BYTE8(v73))
      {
        v24 = v74;
      }

      else
      {
        v24 = &v73 + 9;
      }

      v25 = re::Bundle::pathForResource(&v83, v24, &v41);
      if (v25)
      {

LABEL_57:
        re::DynamicString::DynamicString(v58, &v41);
        v67 = 1;
        *v68 = *&v58[0];
        *&v68[24] = *(&v58[1] + 1);
        *&v68[8] = *(v58 + 8);
        goto LABEL_64;
      }

      v27 = &v73;
    }

    else
    {
      v27 = &v69;
    }

    re::DynamicString::operator+(v58, v36, v27);
    v28 = v58[0];
    memset(v58, 0, 32);
    v67 = 0;
    *v68 = v28;
    *&v68[16] = v58[1];
    if (*&v36[0] && (BYTE8(v36[0]) & 1) != 0)
    {
      (*(**&v36[0] + 40))();
    }
  }

LABEL_64:
  if (v41 && (v42 & 1) != 0)
  {
    (*(*v41 + 40))();
  }

  if ((v67 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v68[8])
  {
    v29 = *&v68[16];
  }

  else
  {
    v29 = &v68[9];
  }

  re::FileTextureProvider::FileTextureProvider(v58, (this + 5), LOBYTE(this[4][544]._os_unfair_lock_opaque), v29);
  v48 = v58[3];
  v49 = v58[4];
  *v50 = v59[0];
  *&v50[12] = *(v59 + 12);
  v51 = v60;
  v52 = v61;
  v53 = v62;
  re::FixedArray<short>::FixedArray(&v54, v63);
  v57 = v64;
  DWORD2(v48) = v76;
  *&v49 = v77;
  *&v50[24] = v75;
  if (v75 == 6)
  {
    if (v48 == 2)
    {
      LODWORD(v48) = 0;
    }

    if (DWORD1(v48) == 3)
    {
      DWORD1(v48) = 0;
    }
  }

  else
  {
    *&v48 = 0x300000002;
  }

  re::TextureProvider::setOptions(v58, &v48);
  re::TextureAssetLoader::createTextureAssetDataFromProvider(v58, &v41);
  if (v41)
  {
    TextureAsset = re::TextureAsset::makeTextureAsset((this + 5), &v45, &v46, *(v47 + 88), *(v47 + 56));
    if (TextureAsset)
    {
      v31 = TextureAsset;
      memset(v36, 0, sizeof(v36));
      re::DynamicString::setCapacity(v36, 0);
      v39 = 0;
      v40 = 0;
      v37 = v31;
      v38 = 0;
      re::DynamicString::operator=(v36, (a2 + 112));
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v38, v47);
      re::types::Ok<re::AssetLoadResult>::Ok(v35, v36);
      *a3 = 1;
      *(a3 + 8) = *&v35[0];
      *(a3 + 32) = *(&v35[1] + 1);
      *(a3 + 16) = *(v35 + 8);
      v32 = v35[3];
      *(a3 + 40) = v35[2];
      *(a3 + 56) = v32;
      if (v38)
      {

        v38 = 0;
      }

      if (*&v36[0] && (BYTE8(v36[0]) & 1) != 0)
      {
        (*(**&v36[0] + 40))();
      }
    }

    else
    {
      v33 = v36[0];
      v34 = v36[1];
      *a3 = 0;
      *(a3 + 8) = v33;
      *(a3 + 24) = v34;
    }
  }

  else
  {
    re::DynamicString::DynamicString(v36, &v42);
    *a3 = 0;
    *(a3 + 8) = *&v36[0];
    *(a3 + 32) = *(&v36[1] + 1);
    *(a3 + 16) = *(v36 + 8);
  }

  if (v41 == 1)
  {
    (*v42)(&v42);
  }

  else if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))();
  }

  if (v54)
  {
    if (v55)
    {
      (*(*v54 + 40))();
      v55 = 0;
      v56 = 0;
    }

    v54 = 0;
  }

  *&v58[0] = &unk_1F5CC4C98;
  if (v65)
  {
    if (BYTE8(v65))
    {
      (*(*v65 + 40))();
    }

    v65 = 0u;
    v66 = 0u;
  }

  re::TextureProvider::~TextureProvider(v58);
LABEL_23:
  if (*v68 && (v68[8] & 1) != 0)
  {
    (*(**v68 + 40))();
  }

  if (v78)
  {
    if (BYTE8(v78))
    {
      (*(*v78 + 40))();
    }

    v78 = 0u;
    v79 = 0u;
  }

  if (v73)
  {
    if (BYTE8(v73))
    {
      (*(*v73 + 40))();
    }

    v73 = 0u;
    v74 = 0u;
  }

  result = v69;
  if (v69)
  {
    if (v70)
    {
      return (*(*v69 + 5))();
    }
  }

  return result;
}

__n128 re::TextureAssetProvider::resolveChild@<Q0>(re::TextureAssetProvider *this@<X0>, uint64_t a2@<X8>)
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

uint64_t *re::TextureAssetProvider::getDescription(re::TextureAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v5 = re::DynamicString::setCapacity(&v32, 0);
  *(&v36 + 1) = 0;
  v37 = 0uLL;
  v6 = re::DynamicString::setCapacity(&v36, 0);
  *(&v42 + 1) = 0;
  v43 = 0uLL;
  re::DynamicString::setCapacity(&v42, 0);
  v46 = 0;
  v44 = 0;
  v45 = 0;
  if (!re::AssetLoadDescriptor::getIntrospectableData<re::TextureLoadDescriptorParameters>(a2, &v32))
  {
    v30 = "mangled";
    v31[0] = 7;
    re::DynamicString::operator=(a3, &v30);
    goto LABEL_43;
  }

  if (BYTE8(v42))
  {
    v7 = *(&v42 + 1) >> 1;
  }

  else
  {
    v7 = BYTE8(v42) >> 1;
  }

  if (v7)
  {
    v30 = "AliasName:";
    v31[0] = 10;
    re::DynamicString::operator=(a3, &v30);
    v8 = &v42;
  }

  else
  {
    v9 = re::DynamicString::operator=(a3, &v32);
    re::DynamicString::append(v9, "/", 1uLL);
    v8 = &v36;
  }

  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = v8 + 9;
  v13 = (v10 & 1) == 0;
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v10 >> 1;
  v16 = v10 >> 1;
  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  re::DynamicString::append(a3, v14, v17);
  if (v38 <= 6)
  {
    v19 = strlen(off_1E871B0E0[v38]);
    re::DynamicString::append(a3, off_1E871B0E0[v38], v19);
  }

  if (v39 == 2)
  {
    v20 = "/override";
    v21 = a3;
    v22 = 9;
LABEL_31:
    re::DynamicString::append(v21, v20, v22);
    goto LABEL_32;
  }

  if (v39 != 1)
  {
    if (v39)
    {
      goto LABEL_32;
    }

    v20 = "/source";
    v21 = a3;
    v22 = 7;
    goto LABEL_31;
  }

  re::DynamicString::format(&v30, "/downsample=%d", v18, v40);
  v23 = v31[0] & 1;
  if (v31[0])
  {
    v24 = v31[1];
  }

  else
  {
    v24 = v31 + 1;
  }

  if (v31[0])
  {
    v25 = v31[0] >> 1;
  }

  else
  {
    v25 = LOBYTE(v31[0]) >> 1;
  }

  re::DynamicString::append(a3, v24, v25);
  if (v30 && v23)
  {
    (*(*v30 + 40))();
  }

LABEL_32:
  if (v41 <= 1)
  {
    if (v41)
    {
      if (v41 != 1)
      {
        goto LABEL_43;
      }

      v26 = "/allocate";
      v27 = a3;
      v28 = 9;
      goto LABEL_42;
    }

    v26 = "/GPU";
    goto LABEL_41;
  }

  if (v41 == 3)
  {
    v26 = "/CPU";
LABEL_41:
    v27 = a3;
    v28 = 4;
    goto LABEL_42;
  }

  if (v41 != 2)
  {
    goto LABEL_43;
  }

  v26 = "/-";
  v27 = a3;
  v28 = 2;
LABEL_42:
  re::DynamicString::append(v27, v26, v28);
LABEL_43:
  if (v42)
  {
    if (BYTE8(v42))
    {
      (*(*v42 + 40))();
    }

    v42 = 0u;
    v43 = 0u;
  }

  if (v36)
  {
    if (BYTE8(v36))
    {
      (*(*v36 + 40))();
    }

    v36 = 0u;
    v37 = 0u;
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 5))();
    }
  }

  return result;
}

void re::TextureProvider::~TextureProvider(re::TextureProvider *this)
{
  *this = &unk_1F5D0B348;
  re::internal::TextureProviderProperties::~TextureProviderProperties((this + 216));

  re::FixedArray<CoreIKTransform>::deinit(this + 18);
  v2 = *(this + 5);
  if (v2)
  {

    *(this + 5) = 0;
  }

  re::DynamicString::deinit((this + 8));
}

{
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::ResourceTextureProvider::~ResourceTextureProvider(re::ResourceTextureProvider *this)
{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

__n128 re::TextureProvider::tryReadHeaderBytes@<Q0>(re::TextureProvider *this@<X0>, uint64_t a2@<X8>)
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

const void *re::TextureProvider::tryCreateOrDetachImage(re::TextureProvider *this)
{
  v1 = (*(*this + 56))(this);
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

uint64_t re::TextureProvider::doneWithSource(re::TextureProvider *this)
{
  result = *(this + 22);
  if (result)
  {
    result = (*(result + 16))();
    *(this + 22) = 0;
  }

  return result;
}

uint64_t *re::ARReferenceObjectAsset::assetType(re::ARReferenceObjectAsset *this)
{
  {
    re::ARReferenceObjectAsset::assetType(void)::type = "ARReferenceObject";
    qword_1EE1C68A0 = 0;
    re::AssetType::generateCompiledExtension(&re::ARReferenceObjectAsset::assetType(void)::type);
  }

  return &re::ARReferenceObjectAsset::assetType(void)::type;
}

BOOL re::ARReferenceObjectAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (!v3)
  {
    return 1;
  }

  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(*(a3 + 8));
  v8 = (*(*a2 + 16))(a2, BytePtr, Length);
  return v8 == CFDataGetLength(*(a3 + 8));
}

re *re::ARReferenceObjectAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  memset(length, 0, sizeof(length));
  v4 = (*(*a3 + 16))(a3, &length[1], length);
  v5 = v4;
  if (v4)
  {
    *(a2 + 8) = CFDataCreate(*MEMORY[0x1E695E480], *&length[1], length[0]);
  }

  else
  {
    v6 = *re::assetTypesLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "ARReferenceObjectAsset: Empty input stream, failed to deserialize", v8, 2u);
    }
  }

  return v5;
}

uint64_t re::ARReferenceObjectAssetLoader::unloadAsset(re::ARReferenceObjectAssetLoader *this, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    CFRelease(v3);
    a2[1] = 0;
  }

  v4 = *(*re::globalAllocators(v3)[2] + 40);

  return v4();
}

uint64_t re::ARReferenceObjectAssetLoader::introspectionType(re::ARReferenceObjectAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1966F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1966F8))
  {
    qword_1EE1966F0 = re::internal::getOrCreateInfo("ARReferenceObjectAsset", re::allocInfo_ARReferenceObjectAsset, re::initInfo_ARReferenceObjectAsset, &unk_1EE1966E8, 0);
    __cxa_guard_release(&qword_1EE1966F8);
  }

  return qword_1EE1966F0;
}

void re::ARReferenceObjectAssetLoader::makeSharedResourcePayload(REReferenceObjectPayload **a1@<X8>)
{
  v2 = objc_alloc_init(REReferenceObjectPayload);

  *a1 = v2;
}

void *re::allocInfo_ARReferenceObjectAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196700, "ARReferenceObjectAsset");
    __cxa_guard_release(&_MergedGlobals_78);
  }

  return &unk_1EE196700;
}

void re::initInfo_ARReferenceObjectAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0x9C4150F1F6BA78EELL;
  v12[1] = "ARReferenceObjectAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1966E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1966E0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint8_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_version";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1966D8 = v10;
    __cxa_guard_release(&qword_1EE1966E0);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1966D8;
  *(this + 9) = re::internal::defaultConstruct<re::ARReferenceObjectAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARReferenceObjectAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARReferenceObjectAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARReferenceObjectAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

uint64_t re::internal::defaultConstructV2<re::ARReferenceObjectAsset>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void re::RenderGraphFile::~RenderGraphFile(re::RenderGraphFile *this)
{
  re::DynamicArray<re::RenderGraphTargetData>::deinit(this + 40);
  v2 = *(this + 17);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 90);
    v5 = v2 - 1;
    v6 = 24;
    do
    {
      v7 = v3 + 1;
      if (v3 + 1 < v2)
      {
        v8 = *(this + 19);
        v9 = v8 + 16 * v3;
        v10 = (v8 + v6);
        v11 = v5;
        do
        {
          if (*(v9 + 8) == *v10)
          {
            *v10 = 0;
          }

          v10 += 2;
          --v11;
        }

        while (v11);
      }

      if (v4)
      {
        v12 = *(*(this + 19) + 16 * v3 + 8);
        v13 = *(this + 91);
        v14 = v4;
        do
        {
          if (v12 == *v13)
          {
            *v13 = 0;
          }

          v13 += 16;
          --v14;
        }

        while (v14);
      }

      --v5;
      v6 += 16;
      v3 = v7;
    }

    while (v7 != v2);
  }

  v15 = *(this + 37);
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = v16++;
      if (v16 < v15)
      {
        v18 = v16;
        do
        {
          v19 = *(this + 39);
          if (*(v19 + 8 * v17) == *(v19 + 8 * v18))
          {
            *(v19 + 8 * v18) = 0;
          }

          ++v18;
        }

        while (v15 != v18);
      }
    }

    while (v16 != v15);
  }

  v20 = *(this + 90);
  if (v20)
  {
    v21 = 0;
    v22 = v20 - 1;
    v23 = 128;
    do
    {
      v24 = v21 + 1;
      if (v21 + 1 < v20)
      {
        v25 = *(this + 91);
        v26 = (v25 + (v21 << 7));
        v27 = (v25 + v23);
        v28 = v22;
        do
        {
          if (*v26 == *v27)
          {
            *v27 = 0;
          }

          v27 += 16;
          --v28;
        }

        while (v28);
      }

      --v22;
      v23 += 128;
      v21 = v24;
    }

    while (v24 != v20);
  }

  if (v2)
  {
    v29 = 16 * v2;
    v30 = (*(this + 19) + 8);
    do
    {
      re::internal::destroyPersistent<re::RenderGraphNode>(*v30);
      v30 += 2;
      v29 -= 16;
    }

    while (v29);
  }

  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(this + 160);
  v31 = re::DynamicArray<re::RenderGraphOutputData>::deinit(this + 240);
  v32 = *(this + 37);
  if (v32)
  {
    v33 = *(this + 39);
    v34 = 8 * v32;
    do
    {
      v35 = *v33;
      if (*v33)
      {
        v36 = re::globalAllocators(v31)[2];
        (**v35)(v35);
        v31 = (*(*v36 + 40))(v36, v35);
      }

      ++v33;
      v34 -= 8;
    }

    while (v34);
  }

  re::DynamicArray<unsigned long>::deinit(this + 280);
  v37 = *(this + 90);
  if (v37)
  {
    v38 = *(this + 91);
    v39 = v37 << 7;
    do
    {
      re::internal::destroyPersistent<re::RenderGraphNode>(*v38);
      v38 += 16;
      v39 -= 128;
    }

    while (v39);
  }

  re::FixedArray<re::RuntimeSettingsNodeCache>::deinit(this + 89);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(this + 824);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(this + 784);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 92);
  re::FixedArray<re::RuntimeSettingsNodeCache>::deinit(this + 89);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 81);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 75);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 69);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 63);
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 57);
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 51);
  re::DynamicString::deinit((this + 368));
  re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit(this + 320);
  re::DynamicArray<unsigned long>::deinit(this + 280);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(this + 240);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(this + 200);
  re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<re::RenderGraphBufferData>::deinit(this + 80);
  re::DynamicArray<re::RenderGraphTargetData>::deinit(this + 40);
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::RenderGraphFile::~RenderGraphFile(this);

  JUMPOUT(0x1E6906520);
}

void sub_1E204ABD8(_Unwind_Exception *a1)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit((v1 + 103));
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit((v1 + 98));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v1 + 92);
  re::FixedArray<re::RuntimeSettingsNodeCache>::deinit(v1 + 89);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v1 + 81);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 75);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 69);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v1 + 63);
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v1 + 57);
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v1 + 51);
  re::DynamicString::deinit((v1 + 46));
  re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit((v1 + 40));
  re::DynamicArray<unsigned long>::deinit((v1 + 35));
  re::DynamicArray<re::RenderGraphOutputData>::deinit((v1 + 30));
  re::DynamicArray<re::RenderGraphOutputData>::deinit((v1 + 25));
  re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit((v1 + 20));
  re::DynamicArray<unsigned long>::deinit((v1 + 15));
  re::DynamicArray<re::RenderGraphBufferData>::deinit((v1 + 10));
  re::DynamicArray<re::RenderGraphTargetData>::deinit((v1 + 5));
  *v1 = &unk_1F5CC5700;
  re::DynamicString::deinit((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t re::DynamicArray<re::RenderGraphTargetData>::deinit(uint64_t a1)
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
        v5 = 160 * v4;
        do
        {
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v3 + 120);
          re::AssetHandle::~AssetHandle((v3 + 88));
          re::StringID::destroyString(v3);
          v3 += 160;
          v5 -= 160;
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

re *re::internal::destroyPersistent<re::RenderGraphNode>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphOutputData>::deinit(uint64_t a1)
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
        v5 = 48 * v4;
        do
        {
          re::StringID::destroyString((v3 + 32));
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 48;
          v5 -= 48;
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

void *re::FixedArray<re::RuntimeSettingsNodeCache>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = v2 << 7;
      v5 = (result[2] + 80);
      do
      {
        re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v5);
        re::DynamicArray<re::BindPointAndPath>::deinit((v5 - 5));
        v6 = re::BindNode::deinit((v5 - 9));
        v5 += 16;
        v4 -= 128;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::RenderGraphSpecifyLaneOperation::apply(uint64_t a1, re::RenderFrame *a2)
{
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    *&v7.var0 = 0;
    v7.var1 = &str_67;
    v6 = 0;
    re::RenderFrame::applyPropertiesToScopeLane(a2, v3, v8, 0);
    return 1;
  }

  if (*(a1 + 144) == 1)
  {
    v4 = *(a1 + 24);
    *&v7.var0 = 0;
    v7.var1 = &str_67;
    v6 = 0;
    re::RenderFrame::applyPropertiesToScopeLane(a2, v4, v8, 0);
    return 1;
  }

  return 0;
}

void sub_1E204B050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  re::StringID::destroyString(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::targetDescriptionFromData(uint64_t result, uint64_t a2, StringID *a3, void *a4)
{
  *(result + 4) = *(a2 + 4);
  *(result + 20) = vrev64_s32(*(a2 + 20));
  v5 = *(a2 + 56);
  *(result + 44) = *(a2 + 48);
  *result = 3;
  *(result + 76) = -1;
  *(result + 84) = -1;
  v6 = *(a2 + 68);
  *(result + 60) = *(a2 + 64);
  *(result + 64) = 1;
  *(result + 104) = 0;
  *(result + 52) = v5;
  *(result + 68) = v6;
  *(result + 72) = 32;
  *(result + 40) = *(a2 + 96);
  v7 = *(a2 + 32);
  *(result + 28) = *(a2 + 28);
  *(result + 32) = v7;
  *(result + 88) = *(a2 + 40);
  *(result + 96) = 0;
  if (*a2)
  {
    if (*a2 == 1)
    {
      *result = 2;
      v9 = re::StringID::StringID(&v11, a3);
      v10 = v11;
      *(result + 96) = (*a4 + (v11 >> 3) + (v11 >> 1 << 6) - 0x61C8864680B583E9) ^ (v11 >> 1);
      if (v10)
      {
        if (v11)
        {
        }
      }
    }

    else
    {
      *result = 3;
    }
  }

  else
  {
    *result = 0;
  }
}

void anonymous namespace::bufferDescriptionFromData(uint64_t result, uint64_t a2, StringID *a3, void *a4)
{
  v5 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 28);
  *(result + 32) = v5;
  *(result + 40) = 0;
  *(result + 20) = *(a2 + 24);
  *(result + 24) = 0xFFFFFFFF00000020;
  if (*a2)
  {
    if (*a2 == 1)
    {
      *result = 2;
      v7 = re::StringID::StringID(&v9, a3);
      v8 = v9;
      *(result + 40) = (*a4 + (v9 >> 3) + (v9 >> 1 << 6) - 0x61C8864680B583E9) ^ (v9 >> 1);
      if (v8)
      {
        if (v9)
        {
        }
      }
    }

    else
    {
      *result = 3;
    }
  }

  else
  {
    *result = 0;
  }
}

unint64_t re::RenderGraphFile::fillConnectionHashes(const char *a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(a1);
  if (v4)
  {
    MurmurHash3_x64_128(a1, v4, 0, v14);
    v5 = (v14[1] - 0x61C8864680B583E9 + (v14[0] << 6) + (v14[0] >> 2)) ^ v14[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = a2[2];
  if (v6)
  {
    v7 = a2[4];
    v8 = 32 * v6;
    do
    {
      v5 ^= (v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + re::Hash<re::DynamicString>::operator()(v14, v7);
      v7 += 4;
      v8 -= 32;
    }

    while (v8);
  }

  a2[15] = v5;
  result = re::Hash<re::DynamicString>::operator()(v14, a2 + 5);
  v10 = result;
  a2[14] = result;
  v11 = a2[11];
  if (v11)
  {
    v12 = a2[13];
    v13 = 32 * v11;
    do
    {
      result = re::Hash<re::DynamicString>::operator()(v14, v12);
      v10 ^= (v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + result;
      v12 += 4;
      v13 -= 32;
    }

    while (v13);
  }

  a2[16] = v10;
  return result;
}

uint64_t *re::RenderGraphFile::calculateValidity@<X0>(re::RenderGraphFile *this@<X0>, uint64_t a2@<X8>)
{
  v116 = *MEMORY[0x1E69E9840];
  v112 = 1;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  re::DynamicString::setCapacity(&v108, 0);
  if (*(this + 16))
  {
    v4 = *(this + 3);
  }

  else
  {
    v4 = this + 17;
  }

  re::DynamicString::appendf(&v108, "RenderGraph (%s) Errors: ", v4);
  v106 = 0;
  memset(v105, 0, sizeof(v105));
  v107 = 0x7FFFFFFFLL;
  v103 = 0;
  memset(v102, 0, sizeof(v102));
  v104 = 0x7FFFFFFFLL;
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  v101 = 0x7FFFFFFFLL;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v98 = 0x7FFFFFFFLL;
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v94 = 0x7FFFFFFFLL;
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + 9);
    v7 = v6 + 160 * v5;
    do
    {
      v113 = *v6 >> 1;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v105, &v113);
      v8 = *(v6 + 136);
      if (v8)
      {
        v9 = *(v6 + 152);
        v10 = 136 * v8;
        do
        {
          re::RenderGraphFile::fillConnectionHashes(*(v6 + 8), v9);
          v9 += 17;
          v10 -= 136;
        }

        while (v10);
      }

      v6 += 160;
    }

    while (v6 != v7);
  }

  v11 = *(this + 12);
  if (v11)
  {
    v12 = *(this + 14);
    v13 = v12 + 88 * v11;
    do
    {
      v113 = *v12 >> 1;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v102, &v113);
      v14 = *(v12 + 64);
      if (v14)
      {
        v15 = *(v12 + 80);
        v16 = 136 * v14;
        do
        {
          re::RenderGraphFile::fillConnectionHashes(*(v12 + 8), v15);
          v15 += 17;
          v16 -= 136;
        }

        while (v16);
      }

      v12 += 88;
    }

    while (v12 != v13);
  }

  v83 = a2;
  v89 = &v112;
  v90 = &v108;
  v17 = *(this + 22);
  if (v17)
  {
    v18 = (*(this + 24) + 24);
    v19 = 56 * v17;
    do
    {
      v20 = *(v18 - 1) >> 1;
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v105, v20) && !re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v102, v20))
      {
        v21 = v89;
        if ((*v89 & 1) == 0)
        {
          re::DynamicString::append(v90, "\n", 1uLL);
          v21 = v89;
        }

        *v21 = 0;
        re::DynamicString::appendf(&v108, "Input defined with no matching target or buffer (%s).", *v18);
      }

      v18 += 7;
      v19 -= 56;
    }

    while (v19);
  }

  v22 = *(this + 17);
  if (v22)
  {
    v84 = 0;
    v23 = 0;
    v85 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = *(this + 19);
    v28 = &v27[2 * v22];
    do
    {
      v86 = v23;
      v87 = v24;
      re::RenderGraphNodeRegistry::registryItem(&v88, re::RenderGraphNodeRegistry::m_instance, *v27);
      if (v88 == 1)
      {
        v115 = 0;
        operator new();
      }

      v29 = v89;
      if ((*v89 & 1) == 0)
      {
        re::DynamicString::append(v90, "\n", 1uLL);
        v29 = v89;
      }

      *v29 = 0;
      v30 = this + 17;
      if (*(this + 16))
      {
        v30 = *(this + 3);
      }

      re::DynamicString::appendf(&v108, "Node found with unregistered type in RenderGraph %s. Check log for error Skipping unknown polymorphic type. to find type name.", v30);
      v31 = v27[1];
      v24 = v87;
      v23 = v86;
      if (v26)
      {
        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
        for (i = *(v86 + 4 * ((v32 ^ (v32 >> 31)) % v26)); i != 0x7FFFFFFF; LODWORD(i) = *(v25 + 24 * i + 8) & 0x7FFFFFFF)
        {
          if (*(v25 + 24 * i + 16) == v31)
          {
            v34 = v89;
            if ((*v89 & 1) == 0)
            {
              re::DynamicString::append(v90, "\n", 1uLL);
              v34 = v89;
            }

            *v34 = 0;
            v35 = this + 17;
            if (*(this + 16))
            {
              v35 = *(this + 3);
            }

            re::DynamicString::appendf(&v108, "Found redundant RenderGraphNode pointer in RenderGraph %s.", v35);
            v31 = v27[1];
            v24 = v87;
            v23 = v86;
            break;
          }
        }
      }

      v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
      v37 = v36 ^ (v36 >> 31);
      if (v26)
      {
        v38 = v37 % v26;
        for (j = *(v23 + 4 * v38); j != 0x7FFFFFFF; LODWORD(j) = *(v25 + 24 * j + 8) & 0x7FFFFFFF)
        {
          if (*(v25 + 24 * j + 16) == v31)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v38 = 0;
      }

      v40 = v98;
      if (v98 == 0x7FFFFFFF)
      {
        v41 = v24;
        if (v24 == v26)
        {
          re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::setCapacity(&v95, (2 * v85));
          v26 = DWORD2(v96);
          v41 = v97;
          v38 = v37 % DWORD2(v96);
          v25 = v96;
          v84 = *(&v95 + 1);
          v31 = v27[1];
          v24 = v87;
        }

        v42 = v41 + 1;
        v97 = v42;
        v40 = v24;
        v43 = *(v25 + 24 * v24 + 8);
        v23 = v84;
      }

      else
      {
        v43 = *(v25 + 24 * v98 + 8);
        LODWORD(v98) = v43 & 0x7FFFFFFF;
        v42 = v24;
        v24 = v40;
      }

      v44 = 3 * v40;
      *(v25 + 8 * v44 + 8) = v43 | 0x80000000;
      v25 = v96;
      v45 = v96 + 8 * v44;
      *(v45 + 8) = *(v45 + 8) & 0x80000000 | *(v23 + 4 * v38);
      *v45 = v37;
      *(v45 + 16) = v31;
      *(v23 + 4 * v38) = v24;
      v85 = ++HIDWORD(v96);
      ++HIDWORD(v98);
      v24 = v42;
LABEL_54:
      v27 += 2;
    }

    while (v27 != v28);
  }

  v46 = *(this + 37);
  if (v46)
  {
    v47 = 0;
    v48 = *(this + 39);
    v49 = &v48[v46];
    do
    {
      v50 = *v48;
      (*(**v48 + 16))(&v113, *v48, v105, v102, v99);
      if ((v113 & 1) == 0)
      {
        v51 = v89;
        if ((*v89 & 1) == 0)
        {
          re::DynamicString::append(v90, "\n", 1uLL);
          v51 = v89;
        }

        *v51 = 0;
        if (BYTE8(v114))
        {
          v52 = v115;
        }

        else
        {
          v52 = &v114 + 9;
        }

        v53 = strlen(v52);
        re::DynamicString::append(&v108, v52, v53);
      }

      v54 = DWORD2(v92);
      v55 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
      v56 = v55 ^ (v55 >> 31);
      if (DWORD2(v92))
      {
        v57 = v56 % DWORD2(v92);
        v58 = *(v47 + 4 * v57);
        if (v58 != 0x7FFFFFFF)
        {
          while (*(v92 + 24 * v58 + 16) != v50)
          {
            LODWORD(v58) = *(v92 + 24 * v58 + 8) & 0x7FFFFFFF;
            if (v58 == 0x7FFFFFFF)
            {
              goto LABEL_75;
            }
          }

          v60 = v89;
          if ((*v89 & 1) == 0)
          {
            re::DynamicString::append(v90, "\n", 1uLL);
            v60 = v89;
          }

          *v60 = 0;
          v61 = this + 17;
          if (*(this + 16))
          {
            v61 = *(this + 3);
          }

          re::DynamicString::appendf(&v108, "Found redundant RenderGraphSpecifyOperationBase pointer in RenderGraph %s.", v61);
        }

LABEL_75:
        v59 = v57;
        v47 = *(&v91 + 1);
        v62 = *(*(&v91 + 1) + 4 * v57);
        if (v62 != 0x7FFFFFFF)
        {
          while (*(v92 + 24 * v62 + 16) != v50)
          {
            LODWORD(v62) = *(v92 + 24 * v62 + 8) & 0x7FFFFFFF;
            if (v62 == 0x7FFFFFFF)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_84;
        }
      }

      else
      {
        v59 = 0;
      }

LABEL_78:
      v63 = v94;
      if (v94 == 0x7FFFFFFF)
      {
        v63 = v93;
        v64 = v93;
        if (v93 == v54)
        {
          re::HashSetBase<re::RenderGraphSpecifyOperationBase *,re::RenderGraphSpecifyOperationBase *,re::internal::ValueAsKey<re::RenderGraphSpecifyOperationBase *>,re::Hash<re::RenderGraphSpecifyOperationBase *>,re::EqualTo<re::RenderGraphSpecifyOperationBase *>,true,false>::setCapacity(&v91, 2 * HIDWORD(v92));
          v64 = v93;
          v59 = v56 % DWORD2(v92);
        }

        v93 = v64 + 1;
        v65 = v92;
        v66 = *(v92 + 24 * v63 + 8);
      }

      else
      {
        v65 = v92;
        v66 = *(v92 + 24 * v94 + 8);
        LODWORD(v94) = v66 & 0x7FFFFFFF;
      }

      v67 = v65 + 24 * v63;
      *(v67 + 8) = v66 | 0x80000000;
      v47 = *(&v91 + 1);
      *(v67 + 8) = *(*(&v91 + 1) + 4 * v59) | 0x80000000;
      *v67 = v56;
      *(v67 + 16) = v50;
      *(v47 + 4 * v59) = v63;
      ++HIDWORD(v92);
      ++HIDWORD(v94);
LABEL_84:
      if (v113 & 1) == 0 && v114 && (BYTE8(v114))
      {
        (*(*v114 + 40))();
      }

      ++v48;
    }

    while (v48 != v49);
  }

  v68 = *(this + 32);
  if (v68)
  {
    v69 = (*(this + 34) + 24);
    v70 = 48 * v68;
    do
    {
      v71 = *(v69 - 1) >> 1;
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v105, v71) && !re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v102, v71))
      {
        v72 = v89;
        if ((*v89 & 1) == 0)
        {
          re::DynamicString::append(v90, "\n", 1uLL);
          v72 = v89;
        }

        *v72 = 0;
        re::DynamicString::appendf(&v108, "Output defined with no matching target or buffer (%s).", *v69);
      }

      v69 += 6;
      v70 -= 48;
    }

    while (v70);
  }

  v73 = *(this + 42);
  if (v73)
  {
    v74 = *(this + 44);
    v75 = v74 + 56 * v73;
    do
    {
      v76 = *(v74 + 32);
      if (v76)
      {
        v77 = *(v74 + 48);
        v78 = 136 * v76;
        do
        {
          re::RenderGraphFile::fillConnectionHashes(*(v74 + 8), v77);
          v77 += 17;
          v78 -= 136;
        }

        while (v78);
      }

      v74 += 56;
    }

    while (v74 != v75);
  }

  if (v112)
  {
    v79 = 1;
  }

  else
  {
    re::DynamicString::DynamicString(&v113, &v108);
    v79 = 0;
    v80 = v115;
    *(v83 + 8) = v113;
    *(v83 + 32) = v80;
    *(v83 + 16) = v114;
  }

  *v83 = v79;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v91);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v95);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v99);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v102);
  v81 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v105);
  result = v108;
  if (v108)
  {
    if (v109)
    {
      return (*(*v108 + 40))(v81);
    }
  }

  return result;
}

void sub_1E204C050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&a25);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&a31);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&a37);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(va);
  v44 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit((v42 - 240));
  v45 = *(v42 - 184);
  if (v45)
  {
    if (*(v42 - 176))
    {
      (*(*v45 + 40))(v45, *(v42 - 168), v44);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(uint64_t result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *(result + 24);
  if (v5)
  {
    v6 = v4 % v5;
    v7 = *(*(result + 8) + 4 * (v4 % v5));
    if (v7 != 0x7FFFFFFF)
    {
      v8 = *(result + 16);
      if (*(v8 + 16 * v7 + 8) == v4)
      {
        return result;
      }

      while (1)
      {
        v7 = *(v8 + 16 * v7) & 0x7FFFFFFF;
        if (v7 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v8 + 16 * v7 + 8) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addAsMove(result, v6, v4, a2);
  ++*(v3 + 40);
  return result;
}

BOOL re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(a1 + 8) + 4 * (a2 % v2));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (*(v5 + 16 * v3 + 8) == a2)
  {
    return 1;
  }

  do
  {
    v3 = *(v5 + 16 * v3) & 0x7FFFFFFF;
    result = v3 != 0x7FFFFFFF;
  }

  while (v3 != 0x7FFFFFFF && *(v5 + 16 * v3 + 8) != a2);
  return result;
}

void re::RenderGraphFile::initRuntimeNodeSettings(re::RenderGraphFile *this@<X0>, uint64_t a2@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = *(this + 17);
  *(this + 90) = v4;
  if (v4)
  {
    if (v4 >> 57)
    {
LABEL_49:
      re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 128, v4);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v40, v41);
      __break(1u);
LABEL_50:
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    *(this + 91) = v6;
    if (!v6)
    {
      goto LABEL_50;
    }

    v7 = (v4 - 1);
    if (v4 != 1)
    {
      do
      {
        *(v6 + 100) = 0uLL;
        *(v6 + 88) = 0uLL;
        *(v6 + 72) = 0uLL;
        *v6 = 0uLL;
        *(v6 + 16) = 0uLL;
        *(v6 + 32) = 0uLL;
        *(v6 + 48) = 0uLL;
        *(v6 + 64) = 0;
        *(v6 + 116) = 0x7FFFFFFFLL;
        v6 += 128;
        --v7;
      }

      while (v7);
    }

    *(v6 + 100) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0;
    *(v6 + 116) = 0x7FFFFFFFLL;
  }

  v49 = 0u;
  v48 = 0u;
  v47 = re::PassthroughAssetSerialization::instance(void)::instance;
  v46 = 0;
  if (!*(this + 17))
  {
LABEL_20:
    *a2 = 1;
    return;
  }

  v8 = 0;
  while (1)
  {
    v9 = (*(this + 19) + 16 * v8);
    if (!v9[1])
    {
      re::DynamicString::format(&v60, "Invalid node data %p", v5, v9);
      goto LABEL_25;
    }

    re::RenderGraphNodeRegistry::registryItem(&v44, re::RenderGraphNodeRegistry::m_instance, *v9);
    if ((v44 & 1) == 0)
    {
      if (*(this + 16))
      {
        v22 = *(this + 3);
      }

      else
      {
        v22 = this + 17;
      }

      re::DynamicString::format(&v60, "Node found with unregistered type in RenderGraph %s.", v11, v22);
      v23 = v60;
      goto LABEL_28;
    }

    v4 = v45;
    v12 = (**v45)(v45, 0);
    v14 = v46;
    v15 = *(this + 90);
    if (v15 <= v46)
    {
      v51[0] = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v14;
      v58 = 2048;
      v59 = v15;
      _os_log_send_and_compose_impl(v27, v51, &v60, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v51[0] = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v14;
      v58 = 2048;
      v59 = v15;
      _os_log_send_and_compose_impl(v30, v51, &v60, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v50 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v4;
      v58 = 2048;
      v59 = v15;
      _os_log_send_and_compose_impl(v33, &v50, &v60, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v50 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v4;
      v58 = 2048;
      v59 = v15;
      _os_log_send_and_compose_impl(v36, &v50, &v60, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
LABEL_45:
      v51[0] = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v55 = 789;
      v56 = 2048;
      v57 = v4;
      v58 = 2048;
      v59 = v15;
      _os_log_send_and_compose_impl(v39, v51, &v60, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
      goto LABEL_49;
    }

    *(*(this + 91) + (v46 << 7)) = v13;
    v16 = (**v4)(v4, 0);
    v14 = v46;
    v15 = *(this + 90);
    if (v15 <= v46)
    {
      goto LABEL_33;
    }

    v17 = v9[1];
    v18 = *(*(this + 91) + (v46 << 7));
    *(&v60 + 1) = 0;
    *&v61 = &v47;
    {
      break;
    }

    v20 = (**v4)(v4, 0);
    v4 = v46;
    v15 = *(this + 90);
    if (v15 <= v46)
    {
      goto LABEL_37;
    }

    re::makeBindNode(v51, v20, *(*(this + 91) + (v46 << 7)));
    v4 = v46;
    v15 = *(this + 90);
    if (v15 <= v46)
    {
      goto LABEL_41;
    }

    v21 = (*(this + 91) + (v46 << 7) + 8);
    if (v21 != v51)
    {
      re::BindNode::move(v21, v51);
    }

    re::BindNode::deinit(v51);
    v4 = v46;
    v15 = *(this + 17);
    if (v15 <= v46)
    {
      goto LABEL_45;
    }

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 736, (*(*(this + 19) + 16 * v46 + 8) + 8), &v46);
    v8 = ++v46;
    if (*(this + 17) <= v46)
    {
      goto LABEL_20;
    }
  }

  re::DynamicString::format(&v60, "Failed to perform deep copy into the node cache of %s.", v19, *(v9[1] + 16));
LABEL_25:
  v23 = v60;
LABEL_28:
  v24 = v61;
  *a2 = 0;
  *(a2 + 8) = v23;
  *(a2 + 24) = v24;
}

void sub_1E204CA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  re::BindNode::deinit(va);
  _Unwind_Resume(a1);
}

double re::RenderGraphFile::initConnectionSourceDataList(uint64_t this)
{
  v1 = this;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v36 = 0x7FFFFFFFLL;
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(this + 72);
    v4 = v3 + 160 * v2;
    do
    {
      v5 = *(v3 + 136);
      if (v5)
      {
        v6 = *(v3 + 152);
        v7 = 136 * v5;
        do
        {
          v8 = v6[8].n128_u64[0];
          this = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v34, v8);
          if ((this & 1) == 0)
          {
            *&v33[0] = v8;
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v34, v33);
            re::DynamicArray<re::RenderGraphDataStoreConnection>::add((v1 + 98), v6);
          }

          v6 = (v6 + 136);
          v7 -= 136;
        }

        while (v7);
      }

      v3 += 160;
    }

    while (v3 != v4);
  }

  v9 = v1[12];
  if (v9)
  {
    v10 = v1[14];
    v11 = v10 + 88 * v9;
    do
    {
      v12 = *(v10 + 64);
      if (v12)
      {
        v13 = *(v10 + 80);
        v14 = 136 * v12;
        do
        {
          v15 = v13[8].n128_u64[0];
          this = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v34, v15);
          if ((this & 1) == 0)
          {
            *&v33[0] = v15;
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v34, v33);
            re::DynamicArray<re::RenderGraphDataStoreConnection>::add((v1 + 98), v13);
          }

          v13 = (v13 + 136);
          v14 -= 136;
        }

        while (v14);
      }

      v10 += 88;
    }

    while (v10 != v11);
  }

  v16 = v1[42];
  memset(v33, 0, sizeof(v33));
  v17 = v1[42];
  if (v17)
  {
    v18 = v1[44];
    v19 = 56 * v17;
    do
    {
      v31[0] = *v18 >> 1;
      v32 = v18;
      v20 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(v33, v31[0]);
      if (v20 == -1)
      {
        re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(v33, v31, &v32);
      }

      else
      {
        *(*(&v33[0] + 1) + 16 * v20 + 8) = v18;
      }

      v18 += 7;
      v19 -= 56;
    }

    while (v19);
  }

  if (v1[17])
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = (v1[19] + 16 * v21);
      re::RenderGraphNodeRegistry::registryItem(v31, re::RenderGraphNodeRegistry::m_instance, *v23);
      v24 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(v33, *(v23[1] + 8) >> 1);
      if (v24 != -1)
      {
        v25 = *(*(&v33[0] + 1) + 16 * v24 + 8);
        v26 = *(v25 + 32);
        if (v26)
        {
          v27 = *(v25 + 48);
          v28 = 136 * v26;
          do
          {
            v29 = v27[8].n128_u64[0];
            if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v34, v29))
            {
              v32 = v29;
              re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v34, &v32);
              re::DynamicArray<re::RenderGraphDataStoreConnection>::add((v1 + 103), v27);
            }

            v27 = (v27 + 136);
            v28 -= 136;
          }

          while (v28);
        }
      }

      v21 = ++v22;
    }

    while (v1[17] > v22);
  }

  re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(v33);
  return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v34);
}

void sub_1E204CCE0(_Unwind_Exception *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(va);
  _Unwind_Resume(a1);
}

__n128 re::DynamicArray<re::RenderGraphDataStoreConnection>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphDataStoreConnection>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 136 * v4);
  re::DynamicArray<re::DynamicString>::DynamicArray(v5, a2);
  re::DynamicString::DynamicString(&v5[2].n128_i8[8], &a2[2].n128_i8[8]);
  re::DynamicArray<re::DynamicString>::DynamicArray(&v5[4].n128_i64[1], &a2[4].n128_i64[1]);
  result = a2[7];
  v5[8].n128_u64[0] = a2[8].n128_u64[0];
  v5[7] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

BOOL re::RenderGraphFile::fillIndexTable(re *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v62 = *MEMORY[0x1E69E9840];
  if (!a4 || !a5)
  {
    return v5 != 0;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = 0;
  v11 = 0;
  v46 = a1;
  v43 = a2;
  do
  {
    v12 = *(v5 + 16);
    if (v12 <= 3)
    {
      if (v12 != 2)
      {
        if (v12 == 3)
        {
          v13 = v7 + 32 * v10;
          if (*(v13 + 8))
          {
            v14 = *(v13 + 16);
          }

          else
          {
            v14 = (v13 + 9);
          }

          if (v10 < v9)
          {
LABEL_41:
            a1 = atoi(v14);
            *(v8 + 4 * v10) = a1;
            v27 = (v5 + 48);
            goto LABEL_42;
          }

LABEL_60:
          v48 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          *buf = 0u;
          v36 = MEMORY[0x1E69E9C10];
          v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          if (v37)
          {
            v38 = 3;
          }

          else
          {
            v38 = 2;
          }

          v52 = 468;
          v53 = 2048;
          v54 = v10;
          v55 = 2048;
          v56 = v9;
          _os_log_send_and_compose_impl(v38, &v48, buf, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v42, v43);
          _os_crash_msg();
          __break(1u);
LABEL_64:
          v48 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          *buf = 0u;
          v39 = MEMORY[0x1E69E9C10];
          v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          if (v40)
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          v52 = 468;
          v53 = 2048;
          v54 = v10;
          v55 = 2048;
          v56 = v9;
          _os_log_send_and_compose_impl(v41, &v48, buf, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v42, v43);
          _os_crash_msg();
          __break(1u);
        }

        v5 = 0;
        if (!v12)
        {
          return v5 != 0;
        }

LABEL_48:
        v28 = *re::graphicsLogObjects(a1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Connection source type isn't supported.", buf, 2u);
        }

LABEL_50:
        v5 = 0;
        return v5 != 0;
      }

      v24 = v7 + 32 * v10;
      if (*(v24 + 8))
      {
        v14 = *(v24 + 16);
      }

      else
      {
        v14 = (v24 + 9);
      }

      if (v10 < v9)
      {
        goto LABEL_41;
      }

LABEL_56:
      v48 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *buf = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v49 = 136315906;
      v50 = "operator[]";
      v51 = 1024;
      if (v34)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v52 = 468;
      v53 = 2048;
      v54 = v10;
      v55 = 2048;
      v56 = v9;
      _os_log_send_and_compose_impl(v35, &v48, buf, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
      goto LABEL_60;
    }

    if (v12 == 4)
    {
      v25 = v7 + 32 * v10;
      if (*(v25 + 8))
      {
        v14 = *(v25 + 16);
      }

      else
      {
        v14 = (v25 + 9);
      }

      if (v10 < v9)
      {
        goto LABEL_41;
      }

      v48 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *buf = 0u;
      v30 = MEMORY[0x1E69E9C10];
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v49 = 136315906;
      v50 = "operator[]";
      v51 = 1024;
      if (v31)
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v52 = 468;
      v53 = 2048;
      v54 = v10;
      v55 = 2048;
      v56 = v9;
      _os_log_send_and_compose_impl(v32, &v48, buf, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
      goto LABEL_56;
    }

    if (v12 != 8)
    {
      v5 = 0;
      if (v12 == 9)
      {
        return v5 != 0;
      }

      goto LABEL_48;
    }

    v47 = v11;
    v15 = 0;
    v16 = v7 + 32 * v10;
LABEL_12:
    v17 = *(v5 + 56);
    if (!v17)
    {
      goto LABEL_50;
    }

    v18 = 0;
    v19 = 0;
    v20 = *(v5 + 64);
    while (1)
    {
      while (1)
      {
        v21 = *(v20 + 8 * v18);
        if (*v21 == 1)
        {
          break;
        }

LABEL_19:
        if (v17 == ++v18)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_25:
          v15 += v17;
          if (!v5)
          {
            return v5 != 0;
          }

          goto LABEL_12;
        }
      }

      v22 = (v16 + 9);
      if (*(v16 + 8))
      {
        v22 = *(v16 + 16);
      }

      a1 = strcmp(*(v21 + 8), v22);
      if (!a1)
      {
        break;
      }

      if (*(v21 + 40) != 3)
      {
        goto LABEL_19;
      }

      v5 = *(v21 + 16);
      v19 = 1;
      if (v17 - 1 == v18++)
      {
        goto LABEL_25;
      }
    }

    v9 = v46;
    if (v10 >= v46)
    {
      goto LABEL_64;
    }

    v26 = v15 + v18;
    v8 = v43;
    v7 = a3;
    *(v43 + 4 * v10) = v26;
    v27 = (v21 + 16);
    v6 = a4;
    v11 = v47;
LABEL_42:
    v5 = *v27;
    v10 = (v11 + 1);
    if (v6 <= v10)
    {
      break;
    }

    ++v11;
  }

  while (v5);
  return v5 != 0;
}

uint64_t re::RenderGraphFile::getCachedConnection(re::RenderGraphFile *this, const re::IntrospectionBase *a2, const re::RenderGraphDataStoreConnection *a3, const re::RenderGraphData *a4, const re::IntrospectionStructure *a5)
{
  v9 = (a3 + 120);
  v10 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 408, *(a3 + 15));
  if (!v10)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v20 = 1;
    v11 = *(a3 + 2);
    v12 = *(a3 + 11);
    *&v16 = a3;
    if (re::RenderGraphFile::fillIndexTable(*(&v18 + 1), v19, *(a3 + 4), *(a3 + 2), a2) && re::RenderGraphFile::fillIndexTable(v17, *(&v17 + 1), *(a3 + 13), *(a3 + 11), a4))
    {
      re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(this + 408, v9, &v16);
      v10 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 408, *v9);
      v14 = 1;
    }

    else
    {
      v10 = 0;
      v14 = 0;
    }

    if (v18)
    {
      if (*(&v18 + 1))
      {
        (*(*v18 + 40))(v18);
        *(&v18 + 1) = 0;
        v19 = 0;
      }

      *&v18 = 0;
    }

    if (*(&v16 + 1) && v17)
    {
      (*(**(&v16 + 1) + 40))(*(&v16 + 1));
    }

    if (!v14)
    {
      return 0;
    }
  }

  return v10;
}

void sub_1E204D4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a13 && a14)
  {
    (*(*a13 + 40))();
  }

  if (a10)
  {
    if (a11)
    {
      (*(*a10 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v6 + 16;
  }
}

void *re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v11, v10);
    v9 = *a3;
    *(v8 + 8) = *a2;
    *(v8 + 16) = v9;
    re::FixedArray<unsigned int>::FixedArray((v8 + 24), a3 + 1);
    result = re::FixedArray<unsigned int>::FixedArray((v8 + 48), a3 + 4);
    *(v8 + 72) = *(a3 + 56);
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::RenderGraphFile::hashConnection(re::RenderGraphFile *this, re::RenderFrame *a2, uint64_t a3, const re::RenderGraphDataStoreConnection *a4, re::RenderFrame *a5)
{
  re::RenderGraphDataStore::tryGetIntrospectionByNameHash(&v22, (a3 + 32), *(a5 + 14));
  result = re::RenderGraphDataStore::tryGetByTypeNameHash((a3 + 32), a4, *(a5 + 14));
  if (!result || v22 != 1)
  {
    goto LABEL_21;
  }

  v11 = result;
  v12 = v23;
  v13 = (a5 + 128);
  result = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 456, *(a5 + 16));
  v14 = result;
  if (!result)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    *v24 = 0u;
    v28 = 1;
    v15 = *(a5 + 11);
    v24[0] = a5;
    v16 = re::RenderGraphFile::fillIndexTable(v25, *(&v25 + 1), *(a5 + 13), *(a5 + 11), v12);
    if (v16)
    {
      re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 456, v13, v24);
      v14 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 456, *v13);
    }

    else
    {
      v14 = 0;
    }

    if (v26)
    {
      if (*(&v26 + 1))
      {
        (*(*v26 + 40))();
        *(&v26 + 1) = 0;
        v27 = 0;
      }

      *&v26 = 0;
    }

    result = v24[1];
    if (v24[1] && v25)
    {
      result = (*(*v24[1] + 40))();
    }

    if (!v14 || !v16)
    {
      goto LABEL_21;
    }
  }

  if (*(v14 + 56))
  {
    v24[0] = (*(*v11 + 16))(v11);
    v21 = v23;
    result = re::scanForCopy(v14 + 8, v24, &v21);
    if (result)
    {
      *(this + 1) = result;
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    *this = v20;
  }

  else
  {
LABEL_21:
    *this = 0;
  }

  return result;
}

void sub_1E204D8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a17 && a18)
  {
    (*(*a17 + 40))();
  }

  if (a14)
  {
    if (a15)
    {
      (*(*a14 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::hashMembers(unint64_t this, re::RenderFrame *a2, const re::IntrospectionBase *a3, const void *a4)
{
  v5 = this;
  v39[3] = *MEMORY[0x1E69E9840];
  v6 = *(this + 16);
  if (v6 <= 3)
  {
    if (v6)
    {
      if (v6 == 2)
      {
        v32 = *(this + 48);
        v33 = *(v32 + 16);
        if (v33 != 9 && v33 != 0)
        {
          return 0;
        }

        v11 = *(this + 64) * *(v32 + 20);
        if (!v11)
        {
          return 0;
        }

        goto LABEL_56;
      }

      if (v6 == 3)
      {
        v9 = *(*(this + 48) + 16);
        if (v9 != 9 && v9 != 0)
        {
          return 0;
        }

        v11 = (*(*this + 88))(this, a2, a3, a4) * *(*(this + 48) + 20);
        if (!v11)
        {
          return 0;
        }

        goto LABEL_56;
      }

      goto LABEL_39;
    }
  }

  else
  {
    if (v6 <= 7)
    {
      if (v6 != 4)
      {
        if (v6 == 6)
        {
          v7 = *(a2 + 1);
          if (v7)
          {
            v8 = *(a2 + 2);
          }

          else
          {
            v8 = a2 + 9;
          }

          if (v7)
          {
            v35 = v7 >> 1;
          }

          else
          {
            v35 = v7 >> 1;
          }

          if (v35)
          {
            MurmurHash3_x64_128(v8, v35, 0, buf);
            return (*(&buf[0] + 1) - 0x61C8864680B583E9 + (*&buf[0] << 6) + (*&buf[0] >> 2)) ^ *&buf[0];
          }

          return 0;
        }

        goto LABEL_39;
      }

      v30 = *(*(this + 48) + 16);
      if (v30 != 9 && v30 != 0)
      {
        return 0;
      }

      v11 = (*(*this + 80))(this, a2, a3, a4) * *(*(this + 48) + 20);
      if (!v11)
      {
        return 0;
      }

LABEL_56:
      MurmurHash3_x64_128(a2, v11, 0, buf);
      return (*(&buf[0] + 1) - 0x61C8864680B583E9 + (*&buf[0] << 6) + (*&buf[0] >> 2)) ^ *&buf[0];
    }

    if (v6 != 9)
    {
      if (v6 == 8)
      {
        if (!*(this + 56))
        {
          return 0;
        }

        v12 = 0;
        v13 = 0;
        while (1)
        {
          v14 = *(*(v5 + 64) + 8 * v12);
          if (*v14 == 1)
          {
            v15 = *(v14 + 40);
            v16 = a2 + *(v14 + 36);
            if (v15 == 3)
            {
              goto LABEL_25;
            }

            if (v15 == 1)
            {
              v17 = *(v14 + 48);
              if (v17)
              {
                v18 = *(v14 + 64);
                *__dst = 0;
                memcpy(__dst, &v16[v18], *(v17 + 20));
                v19 = __dst[0];
              }

              else
              {
                v21 = *re::graphicsLogObjects(this);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v24 = *(v14 + 8);
                  LODWORD(buf[0]) = 136315138;
                  *(buf + 4) = v24;
                  _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Connection hashing failed to get array length for member '%s'.", buf, 0xCu);
                }

                v19 = 0;
              }

              re::IntrospectionCStyleArray::IntrospectionCStyleArray(buf, *(*(v14 + 16) + 48), v19);
              *&buf[0] = &unk_1F5CB0038;
              re::SerializedReference<re::IntrospectionBase const*>::reset(v39);
              *&buf[0] = &unk_1F5CCF868;
              this = objc_destructInstance(buf + 8);
              goto LABEL_34;
            }

            if (v15)
            {
              v20 = *re::graphicsLogObjects(this);
              this = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              if (this)
              {
                LOWORD(buf[0]) = 0;
                _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Connection source type isn't supported for hashing.", buf, 2u);
              }
            }

            else
            {
LABEL_25:
              v13 ^= (v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + this;
            }
          }

LABEL_34:
          if (++v12 >= *(v5 + 56))
          {
            return v13;
          }
        }
      }

LABEL_39:
      v26 = *re::graphicsLogObjects(this);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      LOWORD(buf[0]) = 0;
      v27 = "Connection source type isn't supported for hashing.";
      v28 = buf;
      goto LABEL_41;
    }
  }

  *&buf[0] = 0;
  v25 = *(this + 20);
  if (v25 >= 9)
  {
    v26 = *re::graphicsLogObjects(this);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    LOWORD(__dst[0]) = 0;
    v27 = "Connection hashing only supports basic types of up to 64 bits.";
    v28 = __dst;
LABEL_41:
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, v27, v28, 2u);
    return 0;
  }

  memcpy(buf, a2, v25);
  v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*&buf[0] ^ (*&buf[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*&buf[0] ^ (*&buf[0] >> 30))) >> 27));
  return v29 ^ (v29 >> 31);
}

void sub_1E204DE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  re::IntrospectionCStyleArray::~IntrospectionCStyleArray(va);
  _Unwind_Resume(a1);
}

uint64_t re::RenderGraphFile::connectionWalker(uint64_t result, uint64_t a2, uint64_t a3, const re::IntrospectionBase *a4, re::DynamicString ***a5, uint64_t a6)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(a6 + 16))
  {
    v11 = result;
    v12 = 0;
    v13 = 1;
    while (1)
    {
      re::RenderGraphDataStore::tryGetIntrospectionByNameHash(&v32, (a2 + 32), *(*(a6 + 32) + 136 * v12 + 112));
      v14 = *(a6 + 16);
      if (v14 <= v12)
      {
        break;
      }

      result = re::RenderGraphDataStore::tryGetByTypeNameHash((a2 + 32), a3, *(*(a6 + 32) + 136 * v12 + 112));
      v16 = result;
      if (result && v32 == 1)
      {
        v6 = *(a6 + 16);
        if (v6 <= v12)
        {
          goto LABEL_18;
        }

        result = re::RenderGraphFile::getCachedConnection(v11, a4, (*(a6 + 32) + 136 * v12), v33, v15);
        v17 = result;
        if (result)
        {
          if (*(result + 56) == 1)
          {
            v18 = (*(*v16 + 16))(v16);
            v34 = v33;
            *v35 = v18;
            v30 = a4;
            v31 = a5;
            result = re::scanForCopy(v17 + 8, v35, &v34);
            if (result)
            {
              result = re::scanForCopy(v17 + 32, &v31, &v30);
              if (result)
              {
                *(&v42 + 1) = 0;
                *&v43 = 0;
                if ((result & 1) == 0)
                {
                  goto LABEL_22;
                }
              }
            }
          }
        }
      }

      v12 = v13;
      if (*(a6 + 16) <= v13++)
      {
        return result;
      }
    }

    v34 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v35 = 136315906;
    *&v35[4] = "operator[]";
    v36 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v12;
    v40 = 2048;
    v41 = v14;
    _os_log_send_and_compose_impl(v23, &v34, &v42, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v34 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v35 = 136315906;
    *&v35[4] = "operator[]";
    v36 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v12;
    v40 = 2048;
    v41 = v6;
    _os_log_send_and_compose_impl(v26, &v34, &v42, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
LABEL_22:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Failed to perform introspection deep copy when setting RenderGraphFile connections.", "copyResult", "connectionWalker", 704);
    _os_crash("assertion failure: (copyResult) Failed to perform introspection deep copy when setting RenderGraphFile connections.");
    __break(1u);
  }

  return result;
}

unint64_t re::RenderGraphFile::prepareFrame(re::RenderGraphFile *this, char *__s, const char *a3, re::RenderFrame *a4)
{
  v5 = a3;
  v122 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = *a3;
    if (*a3)
    {
      v9 = a3[1];
      if (v9)
      {
        v10 = a3 + 2;
        do
        {
          v8 = 31 * v8 + v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
      }

      v8 &= ~0x8000000000000000;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v112 = v8;
  v12 = *(this + 7);
  if (v12)
  {
    v13 = (*(this + 9) + 88);
    v14 = 160 * v12;
    do
    {
      if (*(v13 - 18) == 1)
      {
        v15 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v13);
        if (*(v15 + 120))
        {
          goto LABEL_127;
        }

        v16 = *(v15 + 112);
        v111 = v16;
        *&v116[0] = *(v13 - 11) >> 1;
        re::RenderFrame::registerExternalTexture(a4, &v111, v116, &v112, 0);
        if (v16)
        {

          v111 = 0;
        }
      }

      v13 = (v13 + 160);
      v14 -= 160;
    }

    while (v14);
  }

  *&v116[0] = 0x51E0F8031ADFD2D4;
  *(&v116[0] + 1) = "RenderGraphFile";
  ScopeHash = re::RenderGraphProviderBase::generateScopeHash(v116, __s, v5);
  v99 = __s;
  v100 = v5;
  if ((*(a4 + 449) & 1) == 0)
  {
    if (*(this + 704))
    {
      v18 = re::Hash<re::DynamicString>::operator()(v116, this + 46) - 0x61C8864680B583E9;
      v19 = *(this + 90);
      if (v19)
      {
        v20 = *(this + 91);
        v21 = v20 + (v19 << 7);
        do
        {
          v22 = *(v20 + 56);
          if (v22)
          {
            v23 = *(v20 + 72);
            v24 = (v23 + 64 * v22);
            do
            {
              v25 = re::BindPoint::valueUntyped(v23);
              v26 = *(*v23 + 20);
              if (v26)
              {
                MurmurHash3_x64_128(v25, v26, 0, v116);
                v27 = (*(&v116[0] + 1) - 0x61C8864680B583E9 + (*&v116[0] << 6) + (*&v116[0] >> 2)) ^ *&v116[0];
              }

              else
              {
                v27 = 0;
              }

              v18 ^= (v18 << 6) - 0x61C8864680B583E9 + (v18 >> 2) + (((v27 << 6) - 0x61C8864680B583E9 + (v27 >> 2) + (*(v23 + 6) >> 1)) ^ v27);
              v23 = (v23 + 64);
            }

            while (v23 != v24);
          }

          v20 += 128;
        }

        while (v20 != v21);
      }

      *(this + 87) = v18;
      *(this + 704) = 0;
    }

    else
    {
      v18 = *(this + 87);
    }

    v28 = strlen(__s);
    if (v28)
    {
      MurmurHash3_x64_128(__s, v28, 0, v116);
      v29 = (*(&v116[0] + 1) - 0x61C8864680B583E9 + (*&v116[0] << 6) + (*&v116[0] >> 2)) ^ *&v116[0];
    }

    else
    {
      v29 = 0;
    }

    v30 = strlen(v5);
    if (v30)
    {
      v30 = MurmurHash3_x64_128(v5, v30, 0, v116);
      v31 = ((*(&v116[0] + 1) - 0x61C8864680B583E9 + (*&v116[0] << 6) + (*&v116[0] >> 2)) ^ *&v116[0]) - 0x61C8864680B583E9;
    }

    else
    {
      v31 = 0x9E3779B97F4A7C17;
    }

    ScopeHash ^= (ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + v18;
    v105 = ((v29 >> 2) + (v29 << 6) + v31) ^ v29;
    v32 = *(this + 100);
    if (v32)
    {
      v33 = *(this + 102);
      v34 = 136 * v32;
      do
      {
        v30 = re::RenderGraphFile::hashConnection(v116, this, a4, v105, v33);
        if (LOBYTE(v116[0]) == 1)
        {
          ScopeHash ^= (ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + *(&v116[0] + 1);
        }

        v33 = (v33 + 136);
        v34 -= 136;
      }

      while (v34);
    }

    v35 = "N2re28RenderGraphNodeExecutionDataE";
    v36 = "N2re28RenderGraphNodeExecutionDataE";
    if (("N2re28RenderGraphNodeExecutionDataE" & 0x8000000000000000) != 0)
    {
      v37 = ("N2re28RenderGraphNodeExecutionDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    v40 = (((v105 << 6) - 0x61C8864680B583E9 + (v105 >> 2) + *(this + 50)) ^ v105) - 0x61C8864680B583E9;
    if (!*(a4 + 6))
    {
      goto LABEL_49;
    }

    v41 = (v40 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v42 = *(*(a4 + 7) + 4 * (v41 % *(a4 + 18)));
    if (v42 == 0x7FFFFFFF)
    {
      goto LABEL_49;
    }

    v43 = *(a4 + 8);
    while (*(v43 + 24 * v42 + 8) != v41)
    {
      v42 = *(v43 + 24 * v42) & 0x7FFFFFFF;
      if (v42 == 0x7FFFFFFF)
      {
        goto LABEL_49;
      }
    }

    if (!*(v43 + 24 * v42 + 16))
    {
LABEL_49:
      v44 = &unk_1F5CC4F48;
      memset(v116 + 8, 0, 32);
      *&v116[0] = &unk_1F5CC4F48;
      *(&v116[2] + 1) = 0x7FFFFFFF00000000;
      *&v117 = 0;
      if (("N2re28RenderGraphNodeExecutionDataE" & 0x8000000000000000) != 0)
      {
        v45 = ("N2re28RenderGraphNodeExecutionDataE" & 0x7FFFFFFFFFFFFFFFLL);
        v46 = 5381;
        do
        {
          v35 = v46;
          v47 = *v45++;
          v46 = (33 * v46) ^ v47;
        }

        while (v47);
      }

      *v113 = (v40 + (v35 << 6) + (v35 >> 2)) ^ v35;
      v48 = re::globalAllocators(v30);
      v49 = (*(*v48[2] + 32))(v48[2], 56, 8);
      *v49 = &unk_1F5CC4F48;
      *(v49 + 8) = 0u;
      *(v49 + 24) = 0u;
      *(v49 + 40) = 0;
      *(v49 + 8) = *(&v116[0] + 1);
      *(v49 + 16) = *&v116[1];
      *(&v116[0] + 1) = 0;
      *&v116[1] = 0;
      *(v49 + 24) = *(&v116[1] + 1);
      *(&v116[1] + 1) = 0;
      *(v49 + 32) = *&v116[2];
      *(v49 + 40) = DWORD2(v116[2]);
      *(v49 + 44) = 0x17FFFFFFFLL;
      *(v49 + 44) = HIDWORD(v116[2]);
      v116[2] = xmmword_1E3058120;
      v119 = v49;
      v102 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 48, v113, &v119);
      *&v116[0] = &unk_1F5CC4F48;
      re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v116 + 1);
      v50 = *(this + 105);
      if (v50)
      {
        v51 = *(this + 107);
        v101 = (v51 + 136 * v50);
        while (1)
        {
          re::RenderGraphFile::hashConnection(v109, this, a4, v105, v51);
          if (v109[0] != 1)
          {
            goto LABEL_107;
          }

          MurmurHash3_x64_128("Enabled", 7uLL, 0, v116);
          if (*(v51 + 2) == 1)
          {
            v52 = *(v51 + 4);
            v53 = (*(v52 + 8) & 1) != 0 ? *(v52 + 16) : (v52 + 9);
            v54 = v116[0];
            v55 = strlen(v53);
            if (v55)
            {
              MurmurHash3_x64_128(v53, v55, 0, v116);
              v56 = (*(&v116[0] + 1) - 0x61C8864680B583E9 + (*&v116[0] << 6) + (*&v116[0] >> 2)) ^ *&v116[0];
            }

            else
            {
              v56 = 0;
            }

            if (v56 == ((*(&v54 + 1) - 0x61C8864680B583E9 + (v54 << 6) + (v54 >> 2)) ^ v54))
            {
              ScopeHash ^= (ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + v110;
              goto LABEL_107;
            }
          }

          v57 = *(this + 42);
          if (v57)
          {
            break;
          }

LABEL_107:
          v51 = (v51 + 136);
          if (v51 == v101)
          {
            goto LABEL_108;
          }
        }

        v58 = *(this + 44);
        v104 = v58 + 56 * v57;
LABEL_66:
        v59 = *(v58 + 32);
        if (!v59)
        {
          goto LABEL_105;
        }

        v60 = 0;
        v61 = 136 * v59;
        v62 = (*(v58 + 48) + 120);
        while (1)
        {
          v63 = *v62;
          v62 += 17;
          if (v63 != *(v51 + 15))
          {
            goto LABEL_103;
          }

          v64 = 0xBF58476D1CE4E5B9 * ((*v58 >> 31) ^ (*v58 >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 736, v58, (0x94D049BB133111EBLL * (v64 ^ (v64 >> 27))) ^ ((0x94D049BB133111EBLL * (v64 ^ (v64 >> 27))) >> 31), v116);
          v65 = *(*(this + 94) + 32 * HIDWORD(v116[0]) + 24);
          v66 = *(this + 17);
          if (v66 <= v65)
          {
            v119 = 0;
            v117 = 0u;
            v118 = 0u;
            memset(v116, 0, sizeof(v116));
            v93 = MEMORY[0x1E69E9C10];
            v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v113 = 136315906;
            *&v113[4] = "operator[]";
            *&v113[12] = 1024;
            if (v94)
            {
              v95 = 3;
            }

            else
            {
              v95 = 2;
            }

            *&v113[14] = 797;
            *&v113[18] = 2048;
            *&v113[20] = v65;
            v114 = 2048;
            *v115 = v66;
            _os_log_send_and_compose_impl(v95, &v119, v116, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v99, v100);
            _os_crash_msg();
            __break(1u);
            goto LABEL_123;
          }

          re::RenderGraphNodeRegistry::registryItem(v108, re::RenderGraphNodeRegistry::m_instance, *(*(this + 19) + 16 * v65));
          v44 = (**v108[1])();
          *&v117 = 0;
          memset(v116, 0, sizeof(v116));
          re::RenderGraphDataStore::tryGetIntrospectionByNameHash(&v119, a4 + 4, *(v51 + 14));
          v68 = re::RenderGraphDataStore::tryGetByTypeNameHash((a4 + 32), v105, *(v51 + 14));
          if (v68 && v119 == 1)
          {
            CachedConnection = re::RenderGraphFile::getCachedConnection(this, v44, v51, v120, v67);
            v70 = CachedConnection;
            if (!CachedConnection || (*(CachedConnection + 56) & 1) == 0 || (v106[0] = (*(*v68 + 16))(v68), v107 = v120, !(v71 = re::scanForCopy(v70 + 8, v106, &v107))))
            {
              v78 = 1;
              goto LABEL_95;
            }

            v72 = *(v107 + 5);
            v73 = *&v116[1];
            *&v113[8] = 0uLL;
          }

          re::RenderGraphDataStore::tryGetIntrospectionByNameHash(v106, a4 + 4, *(v51 + 14));
          if (!re::RenderGraphDataStore::tryGetByTypeNameHash((a4 + 32), v105, *(v51 + 14)) || LOBYTE(v106[0]) != 1)
          {
            goto LABEL_93;
          }

          v75 = re::RenderGraphFile::getCachedConnection(this, v44, v51, v106[1], v17);
          if (v75)
          {
            if (*(v75 + 56))
            {
              break;
            }
          }

          v79 = 0;
          v80 = 1;
LABEL_94:
          v60 |= v79;
          v78 = v80 & (v79 ^ 1);
LABEL_95:
          if (*(&v116[1] + 1))
          {
            if (*&v116[2])
            {
              (*(**(&v116[1] + 1) + 40))();
              v116[2] = 0uLL;
            }

            *(&v116[1] + 1) = 0;
          }

          if (*&v116[0] && *(&v116[0] + 1))
          {
            (*(**&v116[0] + 40))();
          }

          if (!v78)
          {
LABEL_104:
            if (v60)
            {
              goto LABEL_106;
            }

LABEL_105:
            v58 += 56;
            if (v58 == v104)
            {
LABEL_106:
              __s = v99;
              v5 = v100;
              goto LABEL_107;
            }

            goto LABEL_66;
          }

LABEL_103:
          v61 -= 136;
          if (!v61)
          {
            goto LABEL_104;
          }
        }

        re::FixedArray<unsigned int>::operator=(&v116[1] + 1, (v75 + 32));
        *&v117 = v44;
        v76 = strlen(*(v58 + 8));
        if (v76)
        {
          MurmurHash3_x64_128(*(v58 + 8), v76, 0, v113);
          v77 = (*&v113[8] - 0x61C8864680B583E9 + (*v113 << 6) + (*v113 >> 2)) ^ *v113;
        }

        else
        {
          v77 = 0;
        }

        v119 = v77;
        v81 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v102 + 8, &v119);
        if (v81)
        {
          re::DynamicArray<re::NodePatchData>::add(v81, v116);
        }

        else
        {
          *&v115[2] = 0;
          memset(v113, 0, sizeof(v113));
          re::DynamicArray<re::NodePatchData>::add(v113, v116);
          v82 = strlen(*(v58 + 8));
          if (v82)
          {
            MurmurHash3_x64_128(*(v58 + 8), v82, 0, &v119);
            v83 = (v120 + 64 * v119 + (v119 >> 2) - 0x61C8864680B583E9) ^ v119;
          }

          else
          {
            v83 = 0;
          }

          v107 = v83;
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v84 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v83 ^ (v83 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v83 ^ (v83 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v102 + 8, &v107, v84 ^ (v84 >> 31), &v119);
          if (HIDWORD(v120) == 0x7FFFFFFF)
          {
            v85 = re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry((v102 + 8), v120, v119);
            v86 = *v113;
            *(v85 + 8) = v107;
            *(v85 + 16) = v86;
            *(v85 + 24) = *&v113[8];
            memset(v113, 0, 24);
            *(v85 + 48) = *&v115[2];
            *&v115[2] = 0;
            ++*&v113[24];
            *(v85 + 40) = 1;
            ++*(v102 + 48);
          }

          re::DynamicArray<re::NodePatchData>::deinit(v113);
        }

LABEL_93:
        v80 = 0;
        v79 = 1;
        goto LABEL_94;
      }
    }
  }

LABEL_108:
  if (*(this + 17))
  {
    v65 = 0;
    v87 = 1;
    while (1)
    {
      if ((atomic_load_explicit(&qword_1EE1967A8, memory_order_acquire) & 1) == 0)
      {
        v90 = __cxa_guard_acquire(&qword_1EE1967A8);
        if (v90)
        {
          qword_1EE1967A0 = re::hashStringWithLength(v90, v91);
          __cxa_guard_release(&qword_1EE1967A8);
          __s = v99;
          v5 = v100;
        }
      }

      v44 = *(this + 17);
      if (v44 <= v65)
      {
        break;
      }

      v88 = (*(this + 19) + 16 * v65);
      if (*v88 == qword_1EE1967A0)
      {
        ScopeHash ^= (ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + re::RenderGraphUpdateMaterialTextureSource::prepareFrame(__s, v5, a4, (v88[1] + 264), v17);
        v44 = *(this + 17);
      }

      v65 = v87;
      if (v44 <= v87++)
      {
        return ScopeHash;
      }
    }

LABEL_123:
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    memset(v116, 0, sizeof(v116));
    v96 = MEMORY[0x1E69E9C10];
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    *&v113[14] = 797;
    *&v113[18] = 2048;
    *&v113[20] = v65;
    v114 = 2048;
    *v115 = v44;
    _os_log_send_and_compose_impl(v98, &v119, v116, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  return ScopeHash;
}

uint64_t re::RenderGraphProviderBase::generateScopeHash(unint64_t *a1, char *__s, const char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, &v11);
    v7 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  }

  else
  {
    v7 = 0;
  }

  v8 = strlen(a3);
  if (v8)
  {
    MurmurHash3_x64_128(a3, v8, 0, &v11);
    v9 = ((v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11) - 0x61C8864680B583E9;
  }

  else
  {
    v9 = 0x9E3779B97F4A7C17;
  }

  return ((v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + (((v7 >> 2) + (v7 << 6) + v9) ^ v7)) ^ v5;
}

void re::RenderGraphNodeExecutionData::~RenderGraphNodeExecutionData(re::RenderGraphNodeExecutionData *this)
{
  *this = &unk_1F5CC4F48;
  re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 1);
}

{
  *this = &unk_1F5CC4F48;
  re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::DynamicArray<re::NodePatchData>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::NodePatchData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::NodePatchData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = (*(v3 + 4) + 56 * v5);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v12 = a2[1];
  *v11 = *a2;
  v11[1] = v12;
  *a2 = 0;
  a2[1] = 0;
  v13 = v11[2];
  v11[2] = a2[2];
  a2[2] = v13;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = 0;
  v14 = a2[4];
  v11[3] = a2[3];
  v11[4] = v14;
  a2[3] = 0;
  a2[4] = 0;
  v15 = v11[5];
  v11[5] = a2[5];
  a2[5] = v15;
  v11[6] = a2[6];
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void re::RenderGraphFile::provide(re::RenderGraphFile *this, const char *a2, char *a3, re::RenderFrame *a4)
{
  v4 = a4;
  v105 = *MEMORY[0x1E69E9840];
  re::RenderFrame::makeRenderGraph(a4, a3, *(this + 17));
  if (a3)
  {
    v8 = *a3;
    if (*a3)
    {
      v9 = a3[1];
      if (v9)
      {
        v10 = a3 + 2;
        do
        {
          v8 = 31 * v8 + v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
      }

      v8 &= ~0x8000000000000000;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = 0x9E3779B97F4A7C17;
  v97[0] = v8;
  v13 = strlen(a2);
  if (v13)
  {
    MurmurHash3_x64_128(a2, v13, 0, &v100);
    v84 = (v101 - 0x61C8864680B583E9 + (v100 << 6) + (v100 >> 2)) ^ v100;
  }

  else
  {
    v84 = 0;
  }

  v14 = strlen(a3);
  if (v14)
  {
    MurmurHash3_x64_128(a3, v14, 0, &v100);
    v12 = ((v101 - 0x61C8864680B583E9 + (v100 << 6) + (v100 >> 2)) ^ v100) - 0x61C8864680B583E9;
  }

  if (*(this + 133))
  {
    v15 = *(this + 132);
    if (v15)
    {
      memset_pattern16(*(this + 64), &memset_pattern_231, 4 * v15);
    }

    v16 = *(this + 134);
    if (v16)
    {
      v17 = *(this + 65);
      do
      {
        if ((*v17 & 0x80000000) != 0)
        {
          *v17 &= ~0x80000000;
        }

        v17 += 6;
        --v16;
      }

      while (v16);
    }

    *(this + 135) = 0x7FFFFFFF;
    *(this + 532) = 0;
    ++*(this + 136);
  }

  re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(this + 63, *(this + 34));
  v87 = (this + 552);
  if (*(this + 145))
  {
    v18 = *(this + 144);
    if (v18)
    {
      memset_pattern16(*(this + 70), &memset_pattern_231, 4 * v18);
    }

    v19 = *(this + 146);
    if (v19)
    {
      v20 = *(this + 71);
      do
      {
        if ((*v20 & 0x80000000) != 0)
        {
          *v20 &= ~0x80000000;
        }

        v20 += 8;
        --v19;
      }

      while (v19);
    }

    *(this + 147) = 0x7FFFFFFF;
    *(this + 580) = 0;
    ++*(this + 148);
  }

  re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(v87, *(this + 14));
  v86 = (this + 600);
  if (*(this + 157))
  {
    v21 = *(this + 156);
    if (v21)
    {
      memset_pattern16(*(this + 76), &memset_pattern_231, 4 * v21);
    }

    v22 = *(this + 158);
    if (v22)
    {
      v23 = *(this + 77);
      do
      {
        if ((*v23 & 0x80000000) != 0)
        {
          *v23 &= ~0x80000000;
        }

        v23 += 8;
        --v22;
      }

      while (v22);
    }

    *(this + 159) = 0x7FFFFFFF;
    *(this + 628) = 0;
    ++*(this + 160);
  }

  re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(v86, *(this + 24));
  v24 = (this + 648);
  if (*(this + 169))
  {
    v25 = *(this + 168);
    if (v25)
    {
      memset_pattern16(*(this + 82), &memset_pattern_231, 4 * v25);
    }

    v26 = *(this + 170);
    if (v26)
    {
      v27 = *(this + 83);
      do
      {
        if ((*v27 & 0x80000000) != 0)
        {
          *v27 &= ~0x80000000;
        }

        v27 += 6;
        --v26;
      }

      while (v26);
    }

    *(this + 171) = 0x7FFFFFFF;
    *(this + 676) = 0;
    ++*(this + 172);
  }

  re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(this + 81, *(this + 44));
  v28 = *(this + 22);
  if (v28)
  {
    v29 = *(this + 24);
    v30 = v29 + 56 * v28;
    do
    {
      v31 = *(v29 + 16) >> 1;
      if (*v24)
      {
        v32 = v31 % *(this + 168);
        v33 = *(*(this + 82) + 4 * v32);
        if (v33 != 0x7FFFFFFF)
        {
          v34 = *(this + 83);
          while (*(v34 + 24 * v33 + 8) != v31)
          {
            LODWORD(v33) = *(v34 + 24 * v33) & 0x7FFFFFFF;
            if (v33 == 0x7FFFFFFF)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_59;
        }
      }

      else
      {
        LODWORD(v32) = 0;
      }

LABEL_58:
      v35 = re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(this + 648, v32, *(v29 + 16) >> 1);
      *(v35 + 8) = v31;
      *(v35 + 16) = v29;
      ++*(this + 172);
LABEL_59:
      v29 += 56;
    }

    while (v29 != v30);
  }

  v83 = (v84 >> 2) + (v84 << 6) + v12;
  v36 = *(this + 7);
  v85 = v4;
  if (v36)
  {
    v37 = *(this + 9);
    v81 = v37 + 160 * v36;
    do
    {
      v38 = *(v37 + 48);
      v92 = *(v37 + 32);
      v93 = v38;
      v94 = *(v37 + 64);
      v95 = *(v37 + 80);
      v91 = *(v37 + 16);
      re::AssetHandle::AssetHandle(v96, (v37 + 88));
      v96[24] = *(v37 + 112);
      if ((atomic_load_explicit(&qword_1EE196918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196918))
      {
        qword_1EE196910 = re::internal::getOrCreateInfo("RenderGraphTargetDescriptionData", re::allocInfo_RenderGraphTargetDescriptionData, re::initInfo_RenderGraphTargetDescriptionData, &qword_1EE196880, 0);
        __cxa_guard_release(&qword_1EE196918);
      }

      re::RenderGraphFile::connectionWalker(this, v4, v83 ^ v84, qword_1EE196910, &v91, v37 + 120);
      if (!*v24)
      {
        goto LABEL_68;
      }

      v39 = *v37 >> 1;
      v40 = *(*(this + 82) + 4 * (v39 % *(this + 168)));
      if (v40 == 0x7FFFFFFF)
      {
        goto LABEL_68;
      }

      v41 = *(this + 83);
      while (*(v41 + 24 * v40 + 8) != v39)
      {
        v40 = *(v41 + 24 * v40) & 0x7FFFFFFF;
        if (v40 == 0x7FFFFFFF)
        {
          goto LABEL_68;
        }
      }

      v52 = v4;
      v53 = v41 + 24 * v40;
      v55 = *(v53 + 16);
      v54 = v53 + 16;
      v56 = *(v55 + 8);
      v57 = *(v55 + 48);
      v58 = *v57 ? v57 : a3;
      re::RenderFrame::tryGetInputTarget(&v98, v52, v56, v58);
      v43 = v98;
      v44 = v99;
      v45 = HIDWORD(v99);
      if ((*(*v54 + 32) & 1) == 0 && (v99 == -1 || HIDWORD(v99) == -1))
      {
LABEL_68:
        v42 = v102;
        if ((v102 - 2) > 0xFFFFFFFC)
        {
          re::RenderFrame::createTarget(&v98, v85, &v100, *(v37 + 8));
          v43 = v98;
          v44 = v99;
          v45 = HIDWORD(v99);
        }

        else
        {
          v102 = 1;
          re::RenderFrame::createTarget(&v98, v85, &v100, *(v37 + 8));
          v43 = v98;
          v44 = v99;
          v45 = HIDWORD(v99);
          v102 = v42;
          re::InlineString<64ul>::format(&v98, *(v37 + 8));
          re::RenderFrame::createTarget(&v103, v85, &v100, &v99);
          v88 = v43;
          v89 = v44;
          v90 = v45;
          v46 = v104;
          *(re::RenderGraphResourceDescriptions::targetDescription((v85 + 3672), &v88) + 84) = v46;
        }
      }

      v47 = *v37 >> 1;
      if (*v87)
      {
        v48 = v47 % *(this + 144);
        v49 = *(*(this + 70) + 4 * v48);
        if (v49 != 0x7FFFFFFF)
        {
          v50 = *(this + 71);
          while (*(v50 + 32 * v49 + 8) != v47)
          {
            v49 = *(v50 + 32 * v49) & 0x7FFFFFFF;
            if (v49 == 0x7FFFFFFF)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_79;
        }
      }

      else
      {
        LODWORD(v48) = 0;
      }

LABEL_78:
      v51 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(v87, v48, *v37 >> 1);
      *(v51 + 8) = v47;
      *(v51 + 16) = v43;
      *(v51 + 24) = v44;
      *(v51 + 28) = v45;
      ++*(this + 148);
LABEL_79:
      re::AssetHandle::~AssetHandle(v96);
      v37 += 160;
      v4 = v85;
    }

    while (v37 != v81);
  }

  v59 = *(this + 12);
  if (!v59)
  {
LABEL_118:
    if ((atomic_load_explicit(&qword_1EE196938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196938))
    {
      qword_1EE196930 = re::introspect_RenderGraphTargetHandle(0, v78);
      __cxa_guard_release(&qword_1EE196938);
    }

    if ((atomic_load_explicit(&qword_1EE196948, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1EE196948))
      {
        qword_1EE196940 = re::introspect_RenderGraphBufferHandle(0, v79);
        __cxa_guard_release(&qword_1EE196948);
      }
    }

    v97[7] = 0;
    operator new();
  }

  v60 = *(this + 14);
  v61 = v60 + 88 * v59;
  while (1)
  {
    v62 = *(v60 + 32);
    v91 = *(v60 + 16);
    v92 = v62;
    if ((atomic_load_explicit(&qword_1EE196928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196928))
    {
      qword_1EE196920 = re::internal::getOrCreateInfo("RenderGraphBufferDescriptionData", re::allocInfo_RenderGraphBufferDescriptionData, re::initInfo_RenderGraphBufferDescriptionData, &qword_1EE1967C0, 0);
      __cxa_guard_release(&qword_1EE196928);
    }

    re::RenderGraphFile::connectionWalker(this, v4, v83 ^ v84, qword_1EE196920, &v91, v60 + 48);
    if (!*v24)
    {
      goto LABEL_98;
    }

    v63 = *v60 >> 1;
    v64 = *(*(this + 82) + 4 * (v63 % *(this + 168)));
    if (v64 == 0x7FFFFFFF)
    {
      goto LABEL_98;
    }

    v65 = *(this + 83);
    while (*(v65 + 24 * v64 + 8) != v63)
    {
      v64 = *(v65 + 24 * v64) & 0x7FFFFFFF;
      if (v64 == 0x7FFFFFFF)
      {
        goto LABEL_98;
      }
    }

    v72 = v65 + 24 * v64;
    v74 = *(v72 + 16);
    v73 = v72 + 16;
    v75 = *(v74 + 8);
    v76 = *(v74 + 48);
    v77 = *v76 ? v76 : a3;
    re::RenderFrame::tryGetInputBuffer(&v98, v85, v75, v77);
    v66 = v98;
    v82 = v99;
    if ((*(*v73 + 32) & 1) == 0 && (v99 == -1 || HIDWORD(v99) == -1))
    {
LABEL_98:
      re::RenderFrame::createBuffer(&v98, v85, &v100, *(v60 + 8));
      v66 = v98;
      v82 = v99;
    }

    v67 = *v60 >> 1;
    if (*v86)
    {
      v68 = v67 % *(this + 156);
      v69 = *(*(this + 76) + 4 * v68);
      if (v69 != 0x7FFFFFFF)
      {
        v70 = *(this + 77);
        while (*(v70 + 32 * v69 + 8) != v67)
        {
          v69 = *(v70 + 32 * v69) & 0x7FFFFFFF;
          if (v69 == 0x7FFFFFFF)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_107;
      }
    }

    else
    {
      LODWORD(v68) = 0;
    }

LABEL_106:
    v71 = re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(v86, v68, *v60 >> 1);
    v71[1] = v67;
    v71[2] = v66;
    v71[3] = v82;
    ++*(this + 160);
LABEL_107:
    v60 += 88;
    v4 = v85;
    if (v60 == v61)
    {
      goto LABEL_118;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v15, v4, v2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      v7 = a1[2];
      *&v15[16] = v7;
      a1[2] = v6;
      v9 = *&v15[24];
      *&v15[24] = *(a1 + 3);
      v8 = *&v15[32];
      *(a1 + 3) = v9;
      ++*&v15[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 8);
        do
        {
          if ((*(v11 - 1) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *v11 % *(a1 + 6), *v11);
            v13 = v11[1];
            *(v12 + 8) = *v11;
            *(v12 + 16) = v13;
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v15);
    }
  }

  else
  {
    if (v2)
    {
      v14 = v2;
    }

    else
    {
      v14 = 3;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v14, v4, v2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = a1[2];
      *&v14[16] = v7;
      a1[2] = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 3);
      v8 = *&v14[32];
      *(a1 + 3) = v9;
      ++*&v14[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 2) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v11 - 1) % *(a1 + 6), *(v11 - 1));
            v12[1] = *(v11 - 1);
            v12[2] = 0;
            v12[3] = -1;
            v12[2] = *v11;
            v12[3] = v11[1];
          }

          v11 += 4;
          --v10;
        }

        while (v10);
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (v2)
    {
      v13 = v2;
    }

    else
    {
      v13 = 3;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v14, v4, v2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = a1[2];
      *&v14[16] = v7;
      a1[2] = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 3);
      v8 = *&v14[32];
      *(a1 + 3) = v9;
      ++*&v14[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 2) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v11 - 1) % *(a1 + 6), *(v11 - 1));
            v12[1] = *(v11 - 1);
            v12[2] = 0;
            v12[3] = -1;
            v12[2] = *v11;
            v12[3] = v11[1];
          }

          v11 += 4;
          --v10;
        }

        while (v10);
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (v2)
    {
      v13 = v2;
    }

    else
    {
      v13 = 3;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v15, v4, v2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      v7 = a1[2];
      *&v15[16] = v7;
      a1[2] = v6;
      v9 = *&v15[24];
      *&v15[24] = *(a1 + 3);
      v8 = *&v15[32];
      *(a1 + 3) = v9;
      ++*&v15[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 8);
        do
        {
          if ((*(v11 - 1) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *v11 % *(a1 + 6), *v11);
            v13 = v11[1];
            *(v12 + 8) = *v11;
            *(v12 + 16) = v13;
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v15);
    }
  }

  else
  {
    if (v2)
    {
      v14 = v2;
    }

    else
    {
      v14 = 3;
    }
  }
}

uint64_t re::InlineString<64ul>::format@<X0>(uint64_t a1@<X8>, ...)
{
  va_start(va, a1);
  *(a1 + 8) = 0u;
  v2 = a1 + 8;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = 0;
  result = vsnprintf((a1 + 8), 0x40uLL, "%s[MSAA]", va);
  if ((result & 0x80000000) != 0)
  {
    *(v2 + *a1) = 0;
  }

  else
  {
    v5 = *a1 + result;
    if (v5 >= 0x40)
    {
      re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "m_length + result < m_capacity", "vappendf", 446);
      result = _os_crash("assertion failure: (m_length + result < m_capacity) ");
      __break(1u);
    }

    else
    {
      *a1 = v5;
    }
  }

  return result;
}

uint64_t re::RenderFrame::addError(uint64_t a1, uint64_t a2)
{
  v4.n128_u64[0] = 2000;
  v4.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
  v5 = *a2;
  v7 = *(a2 + 24);
  v6 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = re::DynamicArray<re::DetailedError>::add((a1 + 3376), &v4);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))(v2);
    }
  }

  return result;
}

void sub_1E2051190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a11)
  {
    if (a12)
    {
      (*(*a11 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::RenderGraphFile::setRuntimeNodeSetting(re::RenderGraphFile *this, const re::StringID *a2, const re::IntrospectionBase *a3, const char *a4, void *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = 0xBF58476D1CE4E5B9;
  v11 = 0x94D049BB133111EBLL;
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  v13 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 736, a2, v12 ^ (v12 >> 31), buf);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v14 = *re::graphicsLogObjects(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a2 + 1);
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Failed to find node with name [%s].", buf, 0xCu);
    }

    return 0;
  }

  v16 = *(*(this + 94) + 32 * *&buf[12] + 24);
  v17 = *(this + 90);
  if (v17 <= v16)
  {
    v48[0] = 0;
    v53 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    v42 = MEMORY[0x1E69E9C10];
    *v49 = 136315906;
    *&v49[4] = "operator[]";
    *&v49[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    *&v49[14] = 468;
    *&v49[18] = 2048;
    *&v49[20] = v16;
    v50 = 2048;
    v51 = v17;
    _os_log_send_and_compose_impl(v43, v48, buf, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v49, 38, v47, *(&v47 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_50;
  }

  v18 = *(this + 91) + (v16 << 7);
  if (a4)
  {
    v19 = *a4;
    if (*a4)
    {
      v20 = a4[1];
      if (v20)
      {
        v21 = a4 + 2;
        do
        {
          v19 = 31 * v19 + v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  *v49 = 2 * v19;
  *&v49[8] = a4;
  v23 = 0xBF58476D1CE4E5B9 * (v19 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v19) >> 31));
  v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v18 + 80, v49, (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31), buf);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    if (v49[0])
    {
      if (v49[0])
      {
      }
    }

    v48[0] = 0;
    v48[1] = &str_67;
    memset(buf, 0, 36);
    *&buf[40] = 0;
    *&v53 = 0;
    *(&v53 + 1) = &str_67;
    *&v47 = a4;
    *(&v47 + 1) = strlen(a4);
    re::BindNode::bindPoint(v49, (v18 + 8), a3, &v47);
    *buf = *v49;
    re::DynamicArray<re::RigDataValue>::operator=(&buf[8], &v49[8]);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v49[8]);
    v25 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v49[8]);
    v26 = *&buf[24];
    if (*&buf[24])
    {
      re::StringID::operator=(&v53, v48);
      re::DynamicArray<re::BindPointAndPath>::add((v18 + 40), buf);
      *v49 = *(v18 + 56) - 1;
      v27 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v18 + 80, v48, v49);
      v28 = v27;
    }

    else
    {
      v29 = *re::graphicsLogObjects(v25);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a2 + 1);
        *v49 = 136315394;
        *&v49[4] = v30;
        *&v49[12] = 2080;
        *&v49[14] = a4;
        _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Failed to find binding path [node].[binding path]: [%s].[%s].", v49, 0x16u);
      }

      v28 = 0;
    }

    if (v53)
    {
      if (v53)
      {
      }
    }

    *&v53 = 0;
    *(&v53 + 1) = &str_67;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
    v24 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
    if (v48[0])
    {
      if (v48[0])
      {
      }
    }

    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    v28 = (*(v18 + 96) + 32 * *&buf[12] + 24);
    if (v49[0])
    {
      if (v49[0])
      {
      }
    }
  }

  v11 = *v28;
  v10 = *(v18 + 56);
  if (v10 <= v11)
  {
LABEL_50:
    v48[0] = 0;
    v53 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v49 = 136315906;
    *&v49[4] = "operator[]";
    *&v49[12] = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    *&v49[14] = 789;
    *&v49[18] = 2048;
    *&v49[20] = v11;
    v50 = 2048;
    v51 = v10;
    _os_log_send_and_compose_impl(v46, v48, buf, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v49, 38, v47, *(&v47 + 1));
    _os_crash_msg();
    __break(1u);
  }

  v31 = (*(v18 + 72) + (v11 << 6));
  if (*v31 != a3)
  {
    v32 = *re::graphicsLogObjects(v24);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a2 + 1);
      *buf = 136315394;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = a4;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Binding path does not match expected type [node].[binding path]: [%s].[%s].", buf, 0x16u);
    }

    return 0;
  }

  v36 = re::BindPoint::valueUntyped((*(v18 + 72) + (v11 << 6)));
  v37 = (*(*a3 + 32))(a3);
  if (!v37)
  {
    v37 = memcmp(v36, a5, *(a3 + 5));
    if (!v37)
    {
      return 1;
    }
  }

  *(this + 704) = 1;
  memset(&buf[8], 0, 32);
  *buf = re::PassthroughAssetSerialization::instance(void)::instance;
  v38 = *v31;
  *&v49[8] = 0;
  *&v49[16] = buf;
  v34 = v39;
  if ((v39 & 1) == 0)
  {
    v40 = *re::graphicsLogObjects(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a2 + 1);
      *v49 = 136315394;
      *&v49[4] = v41;
      *&v49[12] = 2080;
      *&v49[14] = a4;
      _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Failed to perform deep copy into [node].[binding path]: [%s].[%s]", v49, 0x16u);
    }
  }

  return v34;
}

void sub_1E2051918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  re::StringID::destroyString((v9 + 48));
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v9 | 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v9 | 8);
  re::StringID::destroyString(va);
  _Unwind_Resume(a1);
}

_anonymous_namespace_ *re::DynamicArray<re::BindPointAndPath>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::BindPointAndPath>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + (v4 << 6);
  v6 = *a2;
  *(v5 + 40) = 0;
  *v5 = v6;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[2];
  *(v5 + 8) = a2[1];
  *(v5 + 16) = v7;
  a2[1] = 0;
  a2[2] = 0;
  v8 = *(v5 + 24);
  *(v5 + 24) = a2[3];
  a2[3] = v8;
  v9 = *(v5 + 40);
  *(v5 + 40) = a2[5];
  a2[5] = v9;
  ++*(a2 + 8);
  ++*(v5 + 32);
  v10 = a2[6];
  *(v5 + 48) = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 48) = a2[6] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 56) = a2[7];
  a2[6] = 0;
  a2[7] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void *re::allocInfo_RenderGraphBufferDescriptionData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1967B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196F70, "RenderGraphBufferDescriptionData");
    __cxa_guard_release(&qword_1EE1967B0);
  }

  return &unk_1EE196F70;
}

void re::initInfo_RenderGraphBufferDescriptionData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0x761AC20EE8B6461CLL;
  v27[1] = "RenderGraphBufferDescriptionData";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1967B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967B8))
  {
    v7 = re::introspectionAllocator();
    re::introspect_RenderGraphResourceDescriptionType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "type";
    *(v9 + 16) = &qword_1EE196EE0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE196A88 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::introspect_size_t(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "length";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x800000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE196A90 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "exposeToMaterial";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1C00000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE196A98 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_uint64_t(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "protectionOptions";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1000000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE196AA0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "lengthMultiplier";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x1800000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE196AA8 = v25;
    __cxa_guard_release(&qword_1EE1967B8);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE196A88;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphBufferDescriptionData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphBufferDescriptionData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphBufferDescriptionData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphBufferDescriptionData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void re::internal::defaultConstruct<re::RenderGraphBufferDescriptionData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 2;
  *(a3 + 8) = -1;
  *(a3 + 16) = -1;
  *(a3 + 24) = 1065353216;
  *(a3 + 28) = 0;
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphBufferDescriptionData>(uint64_t result)
{
  *result = 2;
  *(result + 8) = -1;
  *(result + 16) = -1;
  *(result + 24) = 1065353216;
  *(result + 28) = 0;
  return result;
}

void *re::allocInfo_RenderGraphBufferData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1967C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197000, "RenderGraphBufferData");
    __cxa_guard_release(&qword_1EE1967C8);
  }

  return &unk_1EE197000;
}

void re::initInfo_RenderGraphBufferData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v21[0] = 0x2F0DE9BEFAA4A6C4;
  v21[1] = "RenderGraphBufferData";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1967D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967D0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196A08 = v10;
    v11 = re::introspectionAllocator();
    v12 = v11;
    v13 = qword_1EE1967C0;
    if (!qword_1EE1967C0)
    {
      v13 = re::allocInfo_RenderGraphBufferDescriptionData(v11);
      qword_1EE1967C0 = v13;
      re::initInfo_RenderGraphBufferDescriptionData(v13, v14, v15, v16);
    }

    v17 = (*(*v12 + 32))(v12, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "description";
    *(v17 + 16) = v13;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE196A10 = v17;
    v18 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataStoreConnection>>::get(v18);
    v19 = (*(*v18 + 32))(v18, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "connections";
    *(v19 + 16) = &qword_1EE196B58;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x3000000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE196A18 = v19;
    __cxa_guard_release(&qword_1EE1967D0);
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE196A08;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphBufferData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphBufferData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphBufferData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphBufferData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v20 = v22;
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataStoreConnection>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196960, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196960);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196B58);
      qword_1EE196B58 = &unk_1F5CC5088;
      __cxa_guard_release(&qword_1EE196960);
    }
  }

  if ((byte_1EE196793 & 1) == 0)
  {
    v1 = qword_1EE196808;
    if (qword_1EE196808 || (v1 = re::allocInfo_RenderGraphDataStoreConnection(a1), qword_1EE196808 = v1, re::initInfo_RenderGraphDataStoreConnection(v1, v2, v3, v4), (byte_1EE196793 & 1) == 0))
    {
      byte_1EE196793 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196B58, 0);
      qword_1EE196B68 = 0x2800000003;
      dword_1EE196B70 = v5;
      word_1EE196B74 = 0;
      *&xmmword_1EE196B78 = 0;
      *(&xmmword_1EE196B78 + 1) = 0xFFFFFFFFLL;
      qword_1EE196B88 = v1;
      qword_1EE196B90 = 0;
      qword_1EE196B58 = &unk_1F5CC5088;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196B58);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196B78 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::RenderGraphBufferData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 2;
  *(a3 + 24) = -1;
  *(a3 + 32) = -1;
  *(a3 + 40) = 1065353216;
  *(a3 + 44) = 0;
  *(a3 + 80) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  *(a3 + 72) = 0;
}

void re::internal::defaultDestruct<re::RenderGraphBufferData>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a3 + 48);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphBufferData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 2;
  *(result + 24) = -1;
  *(result + 32) = -1;
  *(result + 40) = 1065353216;
  *(result + 44) = 0;
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphBufferData>(re::StringID *a1)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a1 + 48);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphDataNodeConnection(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1967E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197090, "RenderGraphDataNodeConnection");
    __cxa_guard_release(&qword_1EE1967E0);
  }

  return &unk_1EE197090;
}

void re::initInfo_RenderGraphDataNodeConnection(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v14[0] = 0x5BFF1C4CD5873844;
  v14[1] = "RenderGraphDataNodeConnection";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1967E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967E8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1969C8 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataStoreConnection>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "connections";
    *(v12 + 16) = &qword_1EE196B58;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1969D0 = v12;
    __cxa_guard_release(&qword_1EE1967E8);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1969C8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDataNodeConnection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDataNodeConnection>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDataNodeConnection>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDataNodeConnection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v13 = v15;
}

void re::internal::defaultConstruct<re::RenderGraphDataNodeConnection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 48) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::RenderGraphDataNodeConnection>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a3 + 16);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphDataNodeConnection>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphDataNodeConnection>(re::StringID *a1)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a1 + 16);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphDataStoreConnection(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1967F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197120, "RenderGraphDataStoreConnection");
    __cxa_guard_release(&qword_1EE1967F8);
  }

  return &unk_1EE197120;
}

void re::initInfo_RenderGraphDataStoreConnection(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xB1F8E4E1F120EA7ALL;
  v20[1] = "RenderGraphDataStoreConnection";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE196800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196800))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "toMember";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196A20 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "fromType";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196A28 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "fromMember";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE196A30 = v18;
    __cxa_guard_release(&qword_1EE196800);
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE196A20;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDataStoreConnection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDataStoreConnection>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDataStoreConnection>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDataStoreConnection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

double re::internal::defaultConstruct<re::RenderGraphDataStoreConnection>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  v3 += 40;
  re::DynamicString::setCapacity(v3, 0);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 56) = 0;
  *(v3 + 48) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RenderGraphDataStoreConnection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicString>::deinit(a3 + 72);
  re::DynamicString::deinit((a3 + 40));

  return re::DynamicArray<re::DynamicString>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RenderGraphDataStoreConnection>(uint64_t a1)
{
  v1 = a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v1 += 40;
  re::DynamicString::setCapacity(v1, 0);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RenderGraphDataStoreConnection>(uint64_t a1)
{
  re::DynamicArray<re::DynamicString>::deinit(a1 + 72);
  re::DynamicString::deinit((a1 + 40));

  return re::DynamicArray<re::DynamicString>::deinit(a1);
}

void re::introspect_RenderGraphSpecifyOperationBaseType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE196818, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE196820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196820))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE196E98, "RenderGraphSpecifyOperationBaseType", 4, 4, 1, 1);
      qword_1EE196E98 = &unk_1F5D0C658;
      qword_1EE196ED8 = &re::introspect_RenderGraphSpecifyOperationBaseType(BOOL)::enumTable;
      dword_1EE196EA8 = 9;
      __cxa_guard_release(&qword_1EE196820);
    }

    if (_MergedGlobals_79)
    {
      break;
    }

    _MergedGlobals_79 = 1;
    re::IntrospectionRegistry::add(&qword_1EE196E98, a2);
    v31 = 0x2209C4ED1E795452;
    v32 = "RenderGraphSpecifyOperationBaseType";
    v36 = 208862;
    v37 = "int";
    v4 = v35[0];
    v5 = v35[1];
    if (v36)
    {
      if (v36)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE196ED8;
      v36 = v4;
      v37 = v5;
      re::TypeBuilder::beginEnumType(v35, &v31, 1, 1, &v36);
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
            *&v34.var0 = 2 * v11;
            v34.var1 = v10;
            re::TypeBuilder::addEnumConstant(v35, v15, &v34);
            if (*&v34.var0)
            {
              if (*&v34.var0)
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
              *&v34.var0 = 2 * v20;
              v34.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v35, v24, &v34);
              if (*&v34.var0)
              {
                if (*&v34.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v35, v26);
      xmmword_1EE196EB8 = v33;
      if (v31)
      {
        if (v31)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v32);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v30);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE196818))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 1;
      *(v29 + 16) = "SpecifyLane";
      qword_1EE196810 = v29;
      __cxa_guard_release(&qword_1EE196818);
    }
  }
}

void re::introspectionTable_RenderGraphSpecifyOperationBase(re *this)
{
  if ((byte_1EE196791 & 1) == 0)
  {
    byte_1EE196791 = 1;
    if ((atomic_load_explicit(&qword_1EE196828, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE196828);
      if (v1)
      {
        qword_1EE196AB0 = "RenderGraphSpecifyLaneOperation";
        v2 = qword_1EE196840;
        if (!qword_1EE196840)
        {
          v2 = re::allocInfo_RenderGraphSpecifyLaneOperation(v1);
          qword_1EE196840 = v2;
          re::initInfo_RenderGraphSpecifyLaneOperation(v2, v3, v4, v5);
        }

        qword_1EE196AB8 = v2;
        qword_1EE196AC0 = 0;
        qword_1EE196AC8 = 1;
        dword_1EE196AD0 = 0;
        __cxa_guard_release(&qword_1EE196828);
      }
    }

    dword_1EE1969D8 = 1;
    qword_1EE1969E0 = &qword_1EE196AB0;
  }
}

void *re::allocInfo_RenderGraphSpecifyLaneOperation(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196830))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1971B0, "RenderGraphSpecifyLaneOperation");
    __cxa_guard_release(&qword_1EE196830);
  }

  return &unk_1EE1971B0;
}

void re::initInfo_RenderGraphSpecifyLaneOperation(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0xEEB686440C99DCA4;
  v27[1] = "RenderGraphSpecifyLaneOperation";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE196838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196838))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE196858;
    if (!qword_1EE196858)
    {
      v9 = re::allocInfo_RenderGraphSpecifyOperationBase(v7);
      qword_1EE196858 = v9;
      re::initInfo_RenderGraphSpecifyOperationBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "RenderGraphSpecifyOperationBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE196AD8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "lane";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE196AE0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::IntrospectionInfo<re::StringID>::get(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "graphScopeOverride";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0xB800000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE196AE8 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::RenderGraphTargetDescriptionData>>::get(v22);
    v23 = (*(*v22 + 32))(v22, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "targetDescription";
    *(v23 + 16) = &qword_1EE196B98;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x2000000004;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE196AF0 = v23;
    v24 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::RenderGraphBufferDescriptionData>>::get(v24);
    v25 = (*(*v24 + 32))(v24, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "bufferDescription";
    *(v25 + 16) = &qword_1EE196BD8;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x9000000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE196AF8 = v25;
    __cxa_guard_release(&qword_1EE196838);
  }

  *(this + 2) = 0xC800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE196AD8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSpecifyLaneOperation>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSpecifyLaneOperation>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSpecifyLaneOperation>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSpecifyLaneOperation>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void re::IntrospectionInfo<re::Optional<re::RenderGraphTargetDescriptionData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196968, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196968);
    if (a1)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE196B98);
      qword_1EE196B98 = &unk_1F5CC5120;
      __cxa_guard_release(&qword_1EE196968);
    }
  }

  if ((byte_1EE196794 & 1) == 0)
  {
    v1 = qword_1EE196880;
    if (qword_1EE196880 || (v1 = re::allocInfo_RenderGraphTargetDescriptionData(a1), qword_1EE196880 = v1, re::initInfo_RenderGraphTargetDescriptionData(v1, v2, v3, v4), (byte_1EE196794 & 1) == 0))
    {
      byte_1EE196794 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196B98, 0);
      qword_1EE196BA8 = 0x700000000DLL;
      dword_1EE196BB0 = v5;
      word_1EE196BB4 = 0;
      *&xmmword_1EE196BB8 = 0;
      *(&xmmword_1EE196BB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196BC8 = v1;
      qword_1EE196BD0 = 0;
      qword_1EE196B98 = &unk_1F5CC5120;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196B98);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginOptionalType(&v15, &v13, 0x70uLL, 8uLL, &v14);
        re::TypeBuilder::setOptionalAccessors(&v15, re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196BB8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::RenderGraphBufferDescriptionData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196970, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196970);
    if (a1)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE196BD8);
      qword_1EE196BD8 = &unk_1F5CC51A0;
      __cxa_guard_release(&qword_1EE196970);
    }
  }

  if ((byte_1EE196795 & 1) == 0)
  {
    v1 = qword_1EE1967C0;
    if (qword_1EE1967C0 || (v1 = re::allocInfo_RenderGraphBufferDescriptionData(a1), qword_1EE1967C0 = v1, re::initInfo_RenderGraphBufferDescriptionData(v1, v2, v3, v4), (byte_1EE196795 & 1) == 0))
    {
      byte_1EE196795 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196BD8, 0);
      qword_1EE196BE8 = 0x280000000DLL;
      dword_1EE196BF0 = v5;
      word_1EE196BF4 = 0;
      *&xmmword_1EE196BF8 = 0;
      *(&xmmword_1EE196BF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196C08 = v1;
      qword_1EE196C10 = 0;
      qword_1EE196BD8 = &unk_1F5CC51A0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196BD8);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginOptionalType(&v15, &v13, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setOptionalAccessors(&v15, re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196BF8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::RenderGraphSpecifyLaneOperation>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC4EF0;
  *(a3 + 16) = 0;
  *(a3 + 24) = &str_67;
  *(a3 + 32) = 0;
  *(a3 + 144) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = &str_67;
}

void re::internal::defaultDestruct<re::RenderGraphSpecifyLaneOperation>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  re::StringID::destroyString((a3 + 184));
  if (a3[32] == 1)
  {
    re::AssetHandle::~AssetHandle((a3 + 112));
  }

  re::StringID::destroyString((a3 + 16));
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphSpecifyLaneOperation>(uint64_t result)
{
  *result = &unk_1F5CC4EF0;
  *(result + 16) = 0;
  *(result + 24) = &str_67;
  *(result + 32) = 0;
  *(result + 144) = 0;
  *(result + 184) = 0;
  *(result + 192) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphSpecifyLaneOperation>(_BYTE *a1)
{
  re::StringID::destroyString((a1 + 184));
  if (a1[32] == 1)
  {
    re::AssetHandle::~AssetHandle((a1 + 112));
  }

  re::StringID::destroyString((a1 + 16));
}

void *re::allocInfo_RenderGraphSpecifyOperationBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196848))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197240, "RenderGraphSpecifyOperationBase");
    __cxa_guard_release(&qword_1EE196848);
  }

  return &unk_1EE197240;
}

void re::initInfo_RenderGraphSpecifyOperationBase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v13[0] = 0x3AAEC69498BCCC9ELL;
  v13[1] = "RenderGraphSpecifyOperationBase";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE196850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196850))
  {
    v7 = re::introspectionAllocator();
    re::introspect_RenderGraphSpecifyOperationBaseType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 32, 8);
    *v9 = 3;
    *(v9 + 8) = &qword_1EE196E98;
    *(v9 + 16) = 0;
    *(v9 + 24) = 8;
    qword_1EE1969E8 = v9;
    v10 = re::introspectionAllocator();
    re::introspectionTable_RenderGraphSpecifyOperationBase(v10);
    v11 = (*(*v10 + 32))(v10, 16, 8);
    *v11 = 2;
    *(v11 + 8) = &dword_1EE1969D8;
    qword_1EE1969F0 = v11;
    __cxa_guard_release(&qword_1EE196850);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1969E8;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v12 = v14;
}

void re::introspect_RenderGraphResourceDescriptionType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE196860, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE196868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196868))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE196EE0, "RenderGraphResourceDescriptionType", 4, 4, 1, 1);
      qword_1EE196EE0 = &unk_1F5D0C658;
      qword_1EE196F20 = &re::introspect_RenderGraphResourceDescriptionType(BOOL)::enumTable;
      dword_1EE196EF0 = 9;
      __cxa_guard_release(&qword_1EE196868);
    }

    if (byte_1EE196792)
    {
      break;
    }

    byte_1EE196792 = 1;
    re::IntrospectionRegistry::add(&qword_1EE196EE0, a2);
    v35 = 0x56001466E58CE620;
    v36 = "RenderGraphResourceDescriptionType";
    v40 = 208862;
    v41 = "int";
    v4 = v39[0];
    v5 = v39[1];
    if (v40)
    {
      if (v40)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE196F20;
      v40 = v4;
      v41 = v5;
      re::TypeBuilder::beginEnumType(v39, &v35, 1, 1, &v40);
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
            *&v38.var0 = 2 * v11;
            v38.var1 = v10;
            re::TypeBuilder::addEnumConstant(v39, v15, &v38);
            if (*&v38.var0)
            {
              if (*&v38.var0)
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
              *&v38.var0 = 2 * v20;
              v38.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v39, v24, &v38);
              if (*&v38.var0)
              {
                if (*&v38.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v39, v26);
      xmmword_1EE196F00 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE196860))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "MemoryManaged";
      qword_1EE196A38 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "External";
      qword_1EE196A40 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Unspecified";
      qword_1EE196A48 = v33;
      __cxa_guard_release(&qword_1EE196860);
    }
  }
}

void *re::allocInfo_RenderGraphTargetDescriptionData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196870))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1972D0, "RenderGraphTargetDescriptionData");
    __cxa_guard_release(&qword_1EE196870);
  }

  return &unk_1EE1972D0;
}

void re::initInfo_RenderGraphTargetDescriptionData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v79[0] = 0xBE1FA06AD453B33ALL;
  v79[1] = "RenderGraphTargetDescriptionData";
  if (v79[0])
  {
    if (v79[0])
    {
    }
  }

  *(this + 2) = v80;
  if ((atomic_load_explicit(&qword_1EE196878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196878))
  {
    v7 = re::introspectionAllocator();
    re::introspect_RenderGraphResourceDescriptionType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "type";
    *(v9 + 16) = &qword_1EE196EE0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE197360 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::mtl::introspect_PixelFormat(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "format";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x400000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE197368 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_uint32_t(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "width";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0xC00000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE197370 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_uint32_t(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "height";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1000000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE197378 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_uint32_t(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "sampleCount";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x1800000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE197380 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "widthMultiplier";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x3000000006;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE197388 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "heightMultiplier";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x3400000007;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE197390 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_RenderGraphTargetDimensionRoundingMode(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "widthRoundingMode";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x3800000008;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE197398 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_RenderGraphTargetDimensionRoundingMode(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "heightRoundingMode";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x3C00000009;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1973A0 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::introspect_uint32_t(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "mipLevelCount";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x1C0000000ALL;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1973A8 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_BOOL(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "exposeToMaterial";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0x600000000BLL;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE1973B0 = v49;
    v50 = re::introspectionAllocator();
    Action = re::mtl::introspect_LoadAction(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "initialLoadAction";
    *(v53 + 16) = Action;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0x400000000CLL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE1973B8 = v53;
    v54 = re::introspectionAllocator();
    v56 = re::mtl::introspect_TextureUsage(1, v55);
    v57 = (*(*v54 + 32))(v54, 72, 8);
    *v57 = 1;
    *(v57 + 8) = "initialUsageFlags";
    *(v57 + 16) = v56;
    *(v57 + 24) = 0;
    *(v57 + 32) = 0x440000000DLL;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0;
    *(v57 + 56) = 0;
    *(v57 + 64) = 0;
    qword_1EE1973C0 = v57;
    v58 = re::introspectionAllocator();
    v60 = re::introspect_uint32_t(1, v59);
    v61 = (*(*v58 + 32))(v58, 72, 8);
    *v61 = 1;
    *(v61 + 8) = "tonemapInPlace";
    *(v61 + 16) = v60;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0x200000000ELL;
    *(v61 + 40) = 0;
    *(v61 + 48) = 0;
    *(v61 + 56) = 0;
    *(v61 + 64) = 0;
    qword_1EE1973C8 = v61;
    v62 = re::introspectionAllocator();
    v64 = re::introspect_AssetHandle(1, v63);
    v65 = (*(*v62 + 32))(v62, 72, 8);
    *v65 = 1;
    *(v65 + 8) = "externalTarget";
    *(v65 + 16) = v64;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0x480000000FLL;
    *(v65 + 40) = 0;
    *(v65 + 48) = 0;
    *(v65 + 56) = 0;
    *(v65 + 64) = 0;
    qword_1EE1973D0 = v65;
    v66 = re::introspectionAllocator();
    v68 = re::introspect_uint32_t(1, v67);
    v69 = (*(*v66 + 32))(v66, 72, 8);
    *v69 = 1;
    *(v69 + 8) = "arrayLength";
    *(v69 + 16) = v68;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0x1400000010;
    *(v69 + 40) = 0;
    *(v69 + 48) = 0;
    *(v69 + 56) = 0;
    *(v69 + 64) = 0;
    qword_1EE1973D8 = v69;
    v70 = re::introspectionAllocator();
    v72 = re::introspect_uint64_t(1, v71);
    v73 = (*(*v70 + 32))(v70, 72, 8);
    *v73 = 1;
    *(v73 + 8) = "protectionOptions";
    *(v73 + 16) = v72;
    *(v73 + 24) = 0;
    *(v73 + 32) = 0x2800000011;
    *(v73 + 40) = 0;
    *(v73 + 48) = 0;
    *(v73 + 56) = 0;
    *(v73 + 64) = 0;
    qword_1EE1973E0 = v73;
    v74 = re::introspectionAllocator();
    v76 = re::mtl::introspect_TextureType(1, v75);
    v77 = (*(*v74 + 32))(v74, 72, 8);
    *v77 = 1;
    *(v77 + 8) = "textureType";
    *(v77 + 16) = v76;
    *(v77 + 24) = 0;
    *(v77 + 32) = 18;
    *(v77 + 36) = 8;
    *(v77 + 48) = 0;
    *(v77 + 56) = 0;
    *(v77 + 64) = 0;
    qword_1EE1973E8 = v77;
    __cxa_guard_release(&qword_1EE196878);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 18;
  *(this + 8) = &qword_1EE197360;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTargetDescriptionData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTargetDescriptionData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTargetDescriptionData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTargetDescriptionData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v78 = v80;
}

double re::internal::defaultConstruct<re::RenderGraphTargetDescriptionData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 2;
  *(a3 + 8) = 2;
  *(a3 + 40) = -1;
  *(a3 + 12) = -1;
  *(a3 + 20) = -1;
  *(a3 + 28) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *(a3 + 64) = 2;
  *(a3 + 68) = 0;
  *(a3 + 84) = 0;
  *(a3 + 76) = 0;
  *(a3 + 89) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphTargetDescriptionData>(uint64_t a1)
{
  *a1 = 2;
  *(a1 + 8) = 2;
  *(a1 + 40) = -1;
  *(a1 + 12) = -1;
  *(a1 + 20) = -1;
  *(a1 + 28) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 2;
  *(a1 + 68) = 0;
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 89) = 0;
  return result;
}

void *re::allocInfo_RenderGraphTargetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196888))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1973F0, "RenderGraphTargetData");
    __cxa_guard_release(&qword_1EE196888);
  }

  return &unk_1EE1973F0;
}

void re::initInfo_RenderGraphTargetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v21[0] = 0x2F112D0051684066;
  v21[1] = "RenderGraphTargetData";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE196890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196890))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196A50 = v10;
    v11 = re::introspectionAllocator();
    v12 = v11;
    v13 = qword_1EE196880;
    if (!qword_1EE196880)
    {
      v13 = re::allocInfo_RenderGraphTargetDescriptionData(v11);
      qword_1EE196880 = v13;
      re::initInfo_RenderGraphTargetDescriptionData(v13, v14, v15, v16);
    }

    v17 = (*(*v12 + 32))(v12, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "description";
    *(v17 + 16) = v13;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE196A58 = v17;
    v18 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataStoreConnection>>::get(v18);
    v19 = (*(*v18 + 32))(v18, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "connections";
    *(v19 + 16) = &qword_1EE196B58;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x7800000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE196A60 = v19;
    __cxa_guard_release(&qword_1EE196890);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE196A50;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTargetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTargetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTargetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTargetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v20 = v22;
}

double re::internal::defaultConstruct<re::RenderGraphTargetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 2;
  *(a3 + 24) = 2;
  *(a3 + 56) = -1;
  *(a3 + 28) = -1;
  *(a3 + 36) = -1;
  *(a3 + 44) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 64) = result;
  *(a3 + 72) = 0;
  *(a3 + 80) = 2;
  *(a3 + 152) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = 0;
  *(a3 + 144) = 0;
  *(a3 + 84) = 0;
  *(a3 + 100) = 0;
  *(a3 + 92) = 0;
  *(a3 + 105) = 0;
  return result;
}

void re::internal::defaultDestruct<re::RenderGraphTargetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a3 + 120);
  re::AssetHandle::~AssetHandle((a3 + 88));

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::RenderGraphTargetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 2;
  *(a1 + 24) = 2;
  *(a1 + 56) = -1;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  *(a1 + 44) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 64) = result;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 152) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 84) = 0;
  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  *(a1 + 105) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphTargetData>(uint64_t a1)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a1 + 120);
  re::AssetHandle::~AssetHandle((a1 + 88));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphNodeDataPointer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1968A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197480, "RenderGraphNodeDataPointer");
    __cxa_guard_release(&qword_1EE1968A0);
  }

  return &unk_1EE197480;
}

void re::initInfo_RenderGraphNodeDataPointer(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0xD192579ECB7666F2;
  v15[1] = "RenderGraphNodeDataPointer";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1968A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968A8))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::RenderGraphNode *>::get(v7, v8);
    v10 = re::introspect_size_t(1, v9);
    v11 = (*(*v7 + 32))(v7, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "data";
    *(v11 + 16) = &qword_1EE196C18;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x800000001;
    *(v11 + 40) = 2;
    *(v11 + 48) = v10;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1969F8 = v11;
    v12 = re::introspectionAllocator();
    v13 = (*(*v12 + 32))(v12, 8, 4);
    *v13 = 0x100000004;
    qword_1EE196A00 = v13;
    __cxa_guard_release(&qword_1EE1968A8);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1969F8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphNodeDataPointer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphNodeDataPointer>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphNodeDataPointer>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphNodeDataPointer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::IntrospectionInfo<re::RenderGraphNode *>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE196978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196978))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE196C18);
    __cxa_guard_release(&qword_1EE196978);
  }

  if ((byte_1EE196796 & 1) == 0)
  {
    byte_1EE196796 = 1;
    v2 = re::introspect_RenderGraphNode(1);
    ArcSharedObject::ArcSharedObject(&qword_1EE196C18, 0);
    qword_1EE196C28 = 0x800000001;
    dword_1EE196C30 = 8;
    word_1EE196C34 = 0;
    *&xmmword_1EE196C38 = 0;
    *(&xmmword_1EE196C38 + 1) = 0xFFFFFFFFLL;
    qword_1EE196C18 = &unk_1F5CBD2C0;
    qword_1EE196C48 = v2;
    qword_1EE196C50 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v9, &qword_1EE196C18);
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
      v9 = *(v2 + 32);
      v7 = v8;
    }

    xmmword_1EE196C38 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

void *re::internal::defaultConstructV2<re::RenderGraphNodeDataPointer>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *re::allocInfo_RenderGraphInputData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1968B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197510, "RenderGraphInputData");
    __cxa_guard_release(&qword_1EE1968B8);
  }

  return &unk_1EE197510;
}

void re::initInfo_RenderGraphInputData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x228CE084AB270078;
  v32[1] = "RenderGraphInputData";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1968C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968C0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "lane";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196B28 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "resource";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196B30 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "Target";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE196B38 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::StringID>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "Buffer";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE196B40 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "inputOnly";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE196B48 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::IntrospectionInfo<re::StringID>::get(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "graphScopeOverride";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2800000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE196B50 = v30;
    __cxa_guard_release(&qword_1EE1968C0);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE196B28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphInputData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphInputData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphInputData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphInputData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void re::internal::defaultConstruct<re::RenderGraphInputData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = &str_67;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
}

void re::internal::defaultDestruct<re::RenderGraphInputData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 40));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphInputData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 24) = &str_67;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphInputData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 40));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphOutputData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1968D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968D0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1975A0, "RenderGraphOutputData");
    __cxa_guard_release(&qword_1EE1968D0);
  }

  return &unk_1EE1975A0;
}

void re::initInfo_RenderGraphOutputData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0x2F105BAD7F8B1F46;
  v28[1] = "RenderGraphOutputData";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1968D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968D8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "lane";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196B00 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "graphScopeOverride";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000003;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196B08 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "resource";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1000000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE196B10 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::StringID>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "Target";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1000000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE196B18 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::StringID>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "Buffer";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1000000006;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE196B20 = v26;
    __cxa_guard_release(&qword_1EE1968D8);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE196B00;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphOutputData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphOutputData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphOutputData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphOutputData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v27 = v29;
}

void re::internal::defaultConstruct<re::RenderGraphOutputData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = &str_67;
}

void re::internal::defaultDestruct<re::RenderGraphOutputData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::RenderGraphOutputData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphOutputData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphInheritanceData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1968E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197630, "RenderGraphInheritanceData");
    __cxa_guard_release(&qword_1EE1968E8);
  }

  return &unk_1EE197630;
}

void re::initInfo_RenderGraphInheritanceData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x2D46A26BFC724E78;
  v24[1] = "RenderGraphInheritanceData";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1968F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968F0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "lane";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196A68 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Target";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196A70 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "Buffer";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE196A78 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::StringID>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "graphScopeOverride";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE196A80 = v22;
    __cxa_guard_release(&qword_1EE1968F0);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE196A68;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphInheritanceData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphInheritanceData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphInheritanceData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphInheritanceData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::RenderGraphInheritanceData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = &str_67;
}

void re::internal::defaultDestruct<re::RenderGraphInheritanceData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::RenderGraphInheritanceData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphInheritanceData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphFile(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196900))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1976C0, "RenderGraphFile");
    __cxa_guard_release(&qword_1EE196900);
  }

  return &unk_1EE1976C0;
}

void re::initInfo_RenderGraphFile(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0xA3C1F00635BFA5A8;
  v28[1] = "RenderGraphFile";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE196908, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196908))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196F28 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphTargetData>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "targets";
    *(v12 + 16) = &qword_1EE196C58;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x2800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE196F30 = v12;
    v13 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphBufferData>>::get(v13);
    v14 = (*(*v13 + 32))(v13, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "buffers";
    *(v14 + 16) = &qword_1EE196C98;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x5000000003;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196F38 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphNodeDataPointer>>::get(v15);
    v16 = (*(*v15 + 32))(v15, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "nodes";
    *(v16 + 16) = &qword_1EE196CD8;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x7800000004;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE196F40 = v16;
    v17 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphInputData>>::get(v17);
    v18 = (*(*v17 + 32))(v17, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "inputs";
    *(v18 + 16) = &qword_1EE196D18;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0xA000000005;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE196F48 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphOutputData>>::get(v19);
    v20 = (*(*v19 + 32))(v19, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "outputs";
    *(v20 + 16) = &qword_1EE196D58;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xF000000006;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE196F50 = v20;
    v21 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphSpecifyOperationBase *>>::get(v21);
    v22 = (*(*v21 + 32))(v21, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "operations";
    *(v22 + 16) = &qword_1EE196D98;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x11800000007;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE196F58 = v22;
    v23 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataNodeConnection>>::get(v23);
    v24 = (*(*v23 + 32))(v23, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "connections";
    *(v24 + 16) = &qword_1EE196E18;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x14000000008;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE196F60 = v24;
    v25 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderGraphInheritanceData>>::get(v25);
    v26 = (*(*v25 + 32))(v25, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "propertyInheritance";
    *(v26 + 16) = &qword_1EE196E58;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xC800000009;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE196F68 = v26;
    __cxa_guard_release(&qword_1EE196908);
  }

  *(this + 2) = 0x36000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE196F28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v27 = v29;
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphTargetData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196980, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196980);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196C58);
      qword_1EE196C58 = &unk_1F5CC5220;
      __cxa_guard_release(&qword_1EE196980);
    }
  }

  if ((byte_1EE196797 & 1) == 0)
  {
    v1 = qword_1EE196898;
    if (qword_1EE196898 || (v1 = re::allocInfo_RenderGraphTargetData(a1), qword_1EE196898 = v1, re::initInfo_RenderGraphTargetData(v1, v2, v3, v4), (byte_1EE196797 & 1) == 0))
    {
      byte_1EE196797 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196C58, 0);
      qword_1EE196C68 = 0x2800000003;
      dword_1EE196C70 = v5;
      word_1EE196C74 = 0;
      *&xmmword_1EE196C78 = 0;
      *(&xmmword_1EE196C78 + 1) = 0xFFFFFFFFLL;
      qword_1EE196C88 = v1;
      qword_1EE196C90 = 0;
      qword_1EE196C58 = &unk_1F5CC5220;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196C58);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196C78 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphBufferData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196988, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196988);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196C98);
      qword_1EE196C98 = &unk_1F5CC52B8;
      __cxa_guard_release(&qword_1EE196988);
    }
  }

  if ((byte_1EE196798 & 1) == 0)
  {
    v1 = qword_1EE1967D8;
    if (qword_1EE1967D8 || (v1 = re::allocInfo_RenderGraphBufferData(a1), qword_1EE1967D8 = v1, re::initInfo_RenderGraphBufferData(v1, v2, v3, v4), (byte_1EE196798 & 1) == 0))
    {
      byte_1EE196798 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196C98, 0);
      qword_1EE196CA8 = 0x2800000003;
      dword_1EE196CB0 = v5;
      word_1EE196CB4 = 0;
      *&xmmword_1EE196CB8 = 0;
      *(&xmmword_1EE196CB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196CC8 = v1;
      qword_1EE196CD0 = 0;
      qword_1EE196C98 = &unk_1F5CC52B8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196C98);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196CB8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphNodeDataPointer>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196990, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196990);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196CD8);
      qword_1EE196CD8 = &unk_1F5CC5350;
      __cxa_guard_release(&qword_1EE196990);
    }
  }

  if ((byte_1EE196799 & 1) == 0)
  {
    v1 = qword_1EE1968B0;
    if (qword_1EE1968B0 || (v1 = re::allocInfo_RenderGraphNodeDataPointer(a1), qword_1EE1968B0 = v1, re::initInfo_RenderGraphNodeDataPointer(v1, v2, v3, v4), (byte_1EE196799 & 1) == 0))
    {
      byte_1EE196799 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196CD8, 0);
      qword_1EE196CE8 = 0x2800000003;
      dword_1EE196CF0 = v5;
      word_1EE196CF4 = 0;
      *&xmmword_1EE196CF8 = 0;
      *(&xmmword_1EE196CF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196D08 = v1;
      qword_1EE196D10 = 0;
      qword_1EE196CD8 = &unk_1F5CC5350;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196CD8);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196CF8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphInputData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196998, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196998);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196D18);
      qword_1EE196D18 = &unk_1F5CC53E8;
      __cxa_guard_release(&qword_1EE196998);
    }
  }

  if ((byte_1EE19679A & 1) == 0)
  {
    v1 = qword_1EE1968C8;
    if (qword_1EE1968C8 || (v1 = re::allocInfo_RenderGraphInputData(a1), qword_1EE1968C8 = v1, re::initInfo_RenderGraphInputData(v1, v2, v3, v4), (byte_1EE19679A & 1) == 0))
    {
      byte_1EE19679A = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196D18, 0);
      qword_1EE196D28 = 0x2800000003;
      dword_1EE196D30 = v5;
      word_1EE196D34 = 0;
      *&xmmword_1EE196D38 = 0;
      *(&xmmword_1EE196D38 + 1) = 0xFFFFFFFFLL;
      qword_1EE196D48 = v1;
      qword_1EE196D50 = 0;
      qword_1EE196D18 = &unk_1F5CC53E8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196D18);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196D38 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphOutputData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1969A0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1969A0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196D58);
      qword_1EE196D58 = &unk_1F5CC5480;
      __cxa_guard_release(&qword_1EE1969A0);
    }
  }

  if ((byte_1EE19679B & 1) == 0)
  {
    v1 = qword_1EE1968E0;
    if (qword_1EE1968E0 || (v1 = re::allocInfo_RenderGraphOutputData(a1), qword_1EE1968E0 = v1, re::initInfo_RenderGraphOutputData(v1, v2, v3, v4), (byte_1EE19679B & 1) == 0))
    {
      byte_1EE19679B = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196D58, 0);
      qword_1EE196D68 = 0x2800000003;
      dword_1EE196D70 = v5;
      word_1EE196D74 = 0;
      *&xmmword_1EE196D78 = 0;
      *(&xmmword_1EE196D78 + 1) = 0xFFFFFFFFLL;
      qword_1EE196D88 = v1;
      qword_1EE196D90 = 0;
      qword_1EE196D58 = &unk_1F5CC5480;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196D58);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196D78 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphSpecifyOperationBase *>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1969A8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1969A8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196D98);
      qword_1EE196D98 = &unk_1F5CC5518;
      __cxa_guard_release(&qword_1EE1969A8);
    }
  }

  if ((byte_1EE19679C & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1969B0, memory_order_acquire) & 1) == 0)
    {
      a1 = __cxa_guard_acquire(&qword_1EE1969B0);
      if (a1)
      {
        re::IntrospectionPointer::IntrospectionPointer(&qword_1EE196DD8);
        __cxa_guard_release(&qword_1EE1969B0);
      }
    }

    if ((byte_1EE19679D & 1) == 0)
    {
      byte_1EE19679D = 1;
      v1 = qword_1EE196858;
      if (!qword_1EE196858)
      {
        v1 = re::allocInfo_RenderGraphSpecifyOperationBase(a1);
        qword_1EE196858 = v1;
        re::initInfo_RenderGraphSpecifyOperationBase(v1, v2, v3, v4);
      }

      ArcSharedObject::ArcSharedObject(&qword_1EE196DD8, 0);
      qword_1EE196DE8 = 0x800000001;
      dword_1EE196DF0 = 8;
      word_1EE196DF4 = 0;
      *&xmmword_1EE196DF8 = 0;
      *(&xmmword_1EE196DF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196DD8 = &unk_1F5CBD2C0;
      qword_1EE196E08 = v1;
      unk_1EE196E10 = 0;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v20, &qword_1EE196DD8);
      if (BYTE8(v20))
      {
        v7 = v21;
      }

      else
      {
        v7 = &v20 + 9;
      }

      if (v20 && (BYTE8(v20) & 1) != 0)
      {
        (*(*v20 + 40))();
      }

      if (v22 >> 1 == 94623636 && (v23 == "char*" || !strcmp(v23, "char*")))
      {
        v9 = v20;
      }

      else
      {
        v20 = *(v1 + 2);
        v9 = v24;
      }

      xmmword_1EE196DF8 = v9;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }

    if ((byte_1EE19679C & 1) == 0)
    {
      byte_1EE19679C = 1;
      v10 = dword_1EE196DF0;
      ArcSharedObject::ArcSharedObject(&qword_1EE196D98, 0);
      qword_1EE196DA8 = 0x2800000003;
      dword_1EE196DB0 = v10;
      word_1EE196DB4 = 0;
      *&xmmword_1EE196DB8 = 0;
      *(&xmmword_1EE196DB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196DC8 = &qword_1EE196DD8;
      qword_1EE196DD0 = 0;
      qword_1EE196D98 = &unk_1F5CC5518;
      re::IntrospectionRegistry::add(v11, v12);
      re::getPrettyTypeName(&v20, &qword_1EE196D98);
      if (BYTE8(v20))
      {
        v13 = v21;
      }

      else
      {
        v13 = &v20 + 9;
      }

      if (v20 && (BYTE8(v20) & 1) != 0)
      {
        (*(*v20 + 40))();
      }

      v17 = xmmword_1EE196DF8;
      if (v24)
      {
        v16 = v24;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(&v22);
        re::TypeBuilder::TypeBuilder(&v20, &v22);
        v19 = v17;
        re::TypeBuilder::beginListType(&v20, &v18, 1, 0x28uLL, 8uLL, &v19);
        re::TypeBuilder::setConstructor(&v20, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v20, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v20, 1);
        re::TypeBuilder::setListAccessors(&v20, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v20, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v20, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v20, v15);
        re::StackScratchAllocator::~StackScratchAllocator(&v22);
      }

      xmmword_1EE196DB8 = v16;
      if (v18)
      {
        if (v18)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataNodeConnection>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1969B8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1969B8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196E18);
      qword_1EE196E18 = &unk_1F5CC55B0;
      __cxa_guard_release(&qword_1EE1969B8);
    }
  }

  if ((byte_1EE19679E & 1) == 0)
  {
    v1 = qword_1EE1967F0;
    if (qword_1EE1967F0 || (v1 = re::allocInfo_RenderGraphDataNodeConnection(a1), qword_1EE1967F0 = v1, re::initInfo_RenderGraphDataNodeConnection(v1, v2, v3, v4), (byte_1EE19679E & 1) == 0))
    {
      byte_1EE19679E = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196E18, 0);
      qword_1EE196E28 = 0x2800000003;
      dword_1EE196E30 = v5;
      word_1EE196E34 = 0;
      *&xmmword_1EE196E38 = 0;
      *(&xmmword_1EE196E38 + 1) = 0xFFFFFFFFLL;
      qword_1EE196E48 = v1;
      qword_1EE196E50 = 0;
      qword_1EE196E18 = &unk_1F5CC55B0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196E18);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196E38 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}