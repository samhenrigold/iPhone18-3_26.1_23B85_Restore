void *re::ConstantTable::setConstant(void *a1, void *a2, uint64_t a3, char a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 6, a2);
  if (v8 == -1)
  {
    v14 = *(a3 + 8);
    v15 = a1[3] + 3;
    LOWORD(v29[0]) = v15 & 0xFFFC;
    BYTE2(v29[0]) = v14;
    BYTE3(v29[0]) = a4;
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(a1 + 6, a2, v29);
    re::DynamicArray<BOOL>::resize((a1 + 1), (v15 & 0xFFFC) + v14);
    v16 = a1[3];
    if (v16 <= (v15 & 0xFFFCu))
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
      v26 = v15 & 0xFFFC;
      v27 = 2048;
      v28 = v16;
      _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
      _os_crash_msg();
      __break(1u);
    }

    return memcpy((a1[5] + (v15 & 0xFFFC)), *a3, v14);
  }

  else
  {
    v9 = a1[7] + 16 * v8;
    v10 = *a3;
    v11 = *(v9 + 10);
    v12 = (a1[5] + *(v9 + 8));

    return memcpy(v12, v10, v11);
  }
}

BOOL re::BufferTable::removeBuffer(re::BufferTable *this, const re::WeakStringID *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this, a2);
  v5 = v4;
  if (v4 != -1)
  {
    v6 = *(this + 1) + 16 * v4;
    v8 = *(v6 + 8);
    v7 = (v6 + 8);
    re::DynamicArray<re::BufferView>::removeStableAt(this + 8, v8);
    v9 = *v7;
    v10 = *(this + 23);
    if (v10 > v9)
    {
      re::BucketArray<re::BufferSlice,8ul>::removeStableAt(this + 144, v9);
      v10 = *(this + 23);
    }

    v11 = (*(this + 70) - 1);
    *(this + 70) = v11;
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = *v7;
    if (v12 > v13)
    {
      if (v11 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      v15 = 24 * v13;
      do
      {
        v16 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, v13);
        if (re::BufferSlice::isValid(v16))
        {
          v17 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, v13);
          v18 = *(this + 10);
          if (v18 <= v13)
          {
            v32 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            v25 = MEMORY[0x1E69E9C10];
            v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v33 = 136315906;
            v34 = "operator[]";
            v35 = 1024;
            if (v26)
            {
              v27 = 3;
            }

            else
            {
              v27 = 2;
            }

            v36 = 789;
            v37 = 2048;
            v38 = v13;
            v39 = 2048;
            v40 = v18;
            _os_log_send_and_compose_impl(v27, &v32, &v41, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
            _os_crash_msg();
            __break(1u);
LABEL_24:
            v32 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            v28 = MEMORY[0x1E69E9C10];
            v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v33 = 136315906;
            v34 = "operator[]";
            v35 = 1024;
            if (v29)
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            v36 = 789;
            v37 = 2048;
            v38 = v13;
            v39 = 2048;
            v40 = v18;
            _os_log_send_and_compose_impl(v30, &v32, &v41, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
            _os_crash_msg();
            __break(1u);
LABEL_28:
            std::__throw_bad_variant_access[abi:nn200100]();
          }

          v19 = *(v17 + 24);
          if (v19 == -1)
          {
            goto LABEL_28;
          }

          v20 = *(*(this + 12) + v15 + 16);
          *&v41 = &v33;
          v21 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v19])(&v41, v17);
          v18 = *(this + 10);
          if (v18 <= v13)
          {
            goto LABEL_24;
          }

          v23 = (*(this + 12) + v15);
          *v23 = v21;
          v23[1] = v22;
          v23[2] = v20;
        }

        ++v13;
        v15 += 24;
      }

      while (v14 != v13);
    }

    *&v41 = v7;
    _ZN2re9HashBrownINS_12WeakStringIDEhNS_4HashIS1_EENS_7EqualToIS1_EENS2_IhEELb0EE9mapValuesIZNS_11BufferTable12removeBufferERKS1_EUlRT_E_EEvOSC_(this, &v41);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::remove(this, a2);
    *&v41 = this;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::rehashKeysWith<re::BufferTable::rehashNames(void)::{lambda(unsigned char)#1}>(this, &v41);
    re::DynamicArray<re::FixedArray<unsigned long>>::removeStableAt(this + 200, *v7);
    re::DynamicArray<re::Allocator const*>::removeStableAt(this + 30, *v7);
  }

  return v5 != -1;
}

unint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addOrReplace(uint64_t *a1, void *a2, void *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateKvpsHash(a1, (a1[1] + 16 * v6));
    v8 = (a1[1] + 16 * v7);
    v8[1] = *a3;
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 16 * v7 + 8;
  }
}

BOOL re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateHashes(a1, (*(a1 + 8) + 16 * v3));
    v10 = (*(a1 + 8) + 16 * v4);
    *v10 = 0;
    v10[1] = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    v13 = *(a1 + 16);
    if (v13 >= 0x11 && v12.i64[0] < v13 >> 2)
    {
      re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

unint64_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addOrReplace(uint64_t *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(a1, a1[1] + 16 * v6);
    v8 = a1[1] + 16 * v7;
    *(v8 + 8) = *a3;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 16 * v7 + 8;
  }
}

void re::TextureTableImpl<re::TextureHandle>::setTexture(uint64_t *a1, void *a2, const re::TextureHandle *a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 1, a2);
  if (v8 == -1)
  {
    v18 = a1[11];
    re::TextureHandle::TextureHandle(v31, a3);
    LOBYTE(v32[0]) = 0;
    LOBYTE(v33) = 0;
    re::DynamicArray<re::TextureViews<re::TextureHandle>>::add((a1 + 9), v31);
    if (LOBYTE(v32[0]) == 1 && v32[1])
    {

      v32[1] = 0;
    }

    re::TextureHandle::invalidate(v31);
    LOBYTE(v31[0]) = a4;
    BYTE1(v31[0]) = v18;
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::addOrReplace(a1 + 1, a2, v31);
  }

  else
  {
    v9 = a1[2] + 16 * v8;
    v10 = *(v9 + 9);
    v11 = a1[11];
    if (v11 <= v10)
    {
      v22 = 0;
      v34 = 0u;
      v35 = 0u;
      *v32 = 0u;
      v33 = 0u;
      *v31 = 0u;
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
      v28 = v10;
      v29 = 2048;
      v30 = v11;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(v9 + 8);
    v13 = (a1[13] + 40 * *(v9 + 9));
    LOBYTE(v31[0]) = 0;
    re::Optional<NS::SharedPtr<MTL::Texture>>::operator=((v13 + 2), v31);
    if (LOBYTE(v31[0]) == 1 && v31[1])
    {
    }

    v14 = v13[1];
    v15 = *(a3 + 1);
    if (v14 != v15)
    {
      v17 = 1;
      if (v14 && v15 && *v13 && *a3 != 0)
      {
        v17 = 0;
      }

      re::TextureHandle::operator=(v13, a3);
      if (v12 != a4)
      {
        LOBYTE(v31[0]) = a4;
        BYTE1(v31[0]) = v10;
        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::replace(a1 + 1, a2, v31);
      }

      if (v17)
      {
        v31[0] = a1;
        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::rehashKeysWith<re::TextureTableImpl<re::TextureHandle>::rehashNames(void)::{lambda(re::IndexAndProtectionOptions)#1}>(a1 + 1, v31);
      }
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::TextureViews<re::TextureHandle>>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::TextureViews<re::TextureHandle>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 40 * v4;
  *v5 = 0;
  *(v5 + 8) = 0;
  v6 = *a2;
  if (a2[1])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *v5 = v6;
    *(v5 + 8) = a2[1];
    a2[1] = 0;
  }

  v8 = *(a2 + 16);
  *(v5 + 16) = v8;
  if (v8 == 1)
  {
    *(v5 + 24) = a2[3];
    a2[3] = 0;
  }

  v9 = *(a2 + 32);
  *(v5 + 32) = v9;
  if (v9 == 1)
  {
    *(v5 + 33) = *(a2 + 33);
  }

  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

int8x16_t **re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::rehashKeysWith<re::TextureTableImpl<re::TextureHandle>::rehashNames(void)::{lambda(re::IndexAndProtectionOptions)#1}>(int8x16_t **result, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  result[5] = 0;
  v19 = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v20 = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v21 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        i64 = v19[1][v10].i64;
        v12 = *(i64 + 8) >> 8;
        v13 = *(*a2 + 88);
        if (v13 <= v12)
        {
          v22 = 0;
          memset(v31, 0, sizeof(v31));
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v23 = 136315906;
          v24 = "operator[]";
          v25 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v26 = 789;
          v27 = 2048;
          v28 = v12;
          v29 = 2048;
          v30 = v13;
          _os_log_send_and_compose_impl(v18, &v22, v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v19, v20);
          _os_crash_msg();
          __break(1u);
        }

        v14 = (*(*a2 + 104) + 40 * v12);
        if (v14[1])
        {
          if (*v14)
          {
            v15 = 0xBF58476D1CE4E5B9 * (*i64 ^ (*i64 >> 30));
            v4[5] = (v4[5] ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))));
          }
        }

        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v19);
        v10 = v21;
      }

      while (v21 != -1);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TextureViews<re::TextureHandle>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 == a2)
  {
    return result;
  }

  v5 = result;
  if (result[2] > a2)
  {
    return result;
  }

  result = *result;
  if (!*v5)
  {
    result = re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(v5, a2);
    ++*(v5 + 6);
    return result;
  }

  if (a2)
  {
    if (is_mul_ok(a2, 0x28uLL))
    {
      v2 = 40 * a2;
      result = (*(*result + 32))(result, 40 * a2, 8);
      if (result)
      {
        v7 = result;
        if (!v5[1])
        {
          goto LABEL_28;
        }

        goto LABEL_11;
      }
    }

    else
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
      _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v22, v24);
      __break(1u);
    }

    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
    result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v23, v25);
    __break(1u);
    return result;
  }

  v7 = 0;
  if (!v3)
  {
    goto LABEL_28;
  }

LABEL_11:
  v8 = v5[4];
  v9 = v5[2];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 40 * v9;
  do
  {
    v12 = &v7[v10 / 8];
    v13 = v8 + v10;
    *v12 = 0;
    v12[1] = 0;
    v14 = *(v8 + v10);
    if (*(v8 + v10 + 8))
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      *v12 = v14;
      v12[1] = *(v13 + 8);
      *(v13 + 8) = 0;
    }

    v16 = *(v13 + 16);
    *(v12 + 16) = v16;
    v17 = &v7[v10 / 8];
    if (v16 == 1)
    {
      v17[3] = *(v8 + v10 + 24);
      *(v8 + v10 + 24) = 0;
      v18 = *(v8 + v10 + 32);
      *(v17 + 32) = v18;
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = *(v8 + v10 + 32);
      *(v17 + 32) = v19;
      if (v19 != 1)
      {
        goto LABEL_25;
      }
    }

    v20 = v8 + v10;
    *(&v7[v10 / 8 + 4] + 1) = *(v8 + v10 + 33);
    if (*(v13 + 16))
    {
      v21 = *(v20 + 24);
      if (v21)
      {

        *(v20 + 24) = 0;
      }
    }

LABEL_25:
    re::TextureHandle::invalidate((v8 + v10));
    v10 += 40;
  }

  while (v11 != v10);
  v8 = v5[4];
LABEL_27:
  result = (*(**v5 + 40))(*v5, v8);
LABEL_28:
  v5[4] = v7;
  v5[1] = a2;
  return result;
}

uint64_t re::TextureTableImpl<re::TextureHandle>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 8), (a2 + 8));
  }

  re::DynamicArray<re::TextureViews<re::TextureHandle>>::operator=((a1 + 72), (a2 + 72));
  return a1;
}

uint64_t *re::DynamicArray<re::TextureViews<re::TextureHandle>>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = result[1];
      v9 = a2[1];
      *result = v5;
      result[1] = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = result[2];
      result[2] = a2[2];
      a2[2] = v10;
      v11 = result[4];
      result[4] = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 6);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

void re::internal::Callable<re::MaterialParameterTable::buildPerFrameDestructor(re::Allocator *)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(*a2 + 768);
  if (v3)
  {
    v4 = v2[98];
    v5 = 40 * v3;
    do
    {
      if (*(v4 + 16) == 1)
      {
        v6 = *(v4 + 24);
        if (v6)
        {

          *(v4 + 24) = 0;
        }
      }

      re::TextureHandle::invalidate(v4);
      v4 += 40;
      v5 -= 40;
    }

    while (v5);
  }

  re::BufferTable::~BufferTable((v2 + 33));
  v7 = v2[109];
  if (v7)
  {
    v8 = v2[111];
    v9 = 8 * v7;
    do
    {
      if (*v8)
      {

        *v8 = 0;
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }
}

void *re::internal::Callable<re::MaterialParameterTable::buildPerFrameDestructor(re::Allocator *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03170;
  return result;
}

void *re::internal::Callable<re::MaterialParameterTable::buildPerFrameDestructor(re::Allocator *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03170;
  return result;
}

void *re::DynamicArray<re::BufferView>::removeStableAt(void *result, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = result[2];
  if (v3 <= a2)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "removeStableAt";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 969;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v4 = result;
  v5 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v6 = result[4];
    result = (v6 + 24 * a2);
    v7 = (v6 + 24 * v3);
    if (v7 != (result + 3))
    {
      result = memmove(result, result + 3, v7 - (result + 3));
      v5 = v4[2] - 1;
    }
  }

  v4[2] = v5;
  ++*(v4 + 6);
  return result;
}

unint64_t re::BucketArray<re::BufferSlice,8ul>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeStableAt", 884, a2, v3);
    result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  else
  {
    v5 = v3 - 1;
    if (v3 - 1 > a2)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>>(a1, a2 + 1, a1, v3, a1, a2, v11);
      v5 = *(a1 + 40) - 1;
    }

    result = re::BucketArray<re::BufferSlice,8ul>::operator[](a1, v5);
    v7 = result;
    v8 = *(result + 24);
    if (v8 != -1)
    {
      result = (off_1F5D03150[v8])(v11, result);
    }

    *(v7 + 24) = -1;
    --*(a1 + 40);
    ++*(a1 + 48);
  }

  return result;
}

int8x16_t **_ZN2re9HashBrownINS_12WeakStringIDEhNS_4HashIS1_EENS_7EqualToIS1_EENS2_IhEELb0EE9mapValuesIZNS_11BufferTable12removeBufferERKS1_EUlRT_E_EEvOSC_(int8x16_t **result, unsigned __int8 **a2)
{
  v17[0] = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v17[1] = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v18 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash(v4, v4[1][v10].i64);
        v11 = v4[1];
        v12 = v18;
        v13 = &v11[v18];
        v16 = v13->u8[8];
        v14 = &v13->i8[8];
        v15 = v16;
        if (v16 > **a2)
        {
          *v14 = v15 - 1;
          v11 = v4[1];
          v12 = v18;
        }

        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash(v4, v11[v12].i64);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v17);
        v10 = v18;
      }

      while (v18 != -1);
    }
  }

  return result;
}

BOOL re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateHashes(a1, *(a1 + 8) + 16 * v3);
    v10 = *(a1 + 16);
    *(*(a1 + 8) + 16 * v4) = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    if (v10 >= 0x11 && v12.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::DynamicArray<re::FixedArray<unsigned long>>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "removeStableAt";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 969;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 24 * a2);
    v7 = (v5 + 24 * v3);
    if (v6 + 3 != v7)
    {
      do
      {
        re::FixedArray<unsigned long>::operator=(v6, v6 + 3);
        v8 = v6 + 6;
        v6 += 3;
      }

      while (v8 != v7);
      v3 = *(a1 + 16);
    }
  }

  result = re::FixedArray<CoreIKTransform>::deinit((*(a1 + 32) + 24 * v3 - 24));
  --*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::BufferSlice,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::BufferSlice,8ul>::operator[](a5, a6);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v16, v15);
        *(v16 + 32) = *(v15 + 32);
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

void re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "removeStableAt";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 969;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v3;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 8 * a2);
    v7 = (v5 + 8 * v3);
    if (v6 + 1 != v7)
    {
      do
      {
        NS::SharedPtr<MTL::Texture>::operator=(v6, v6 + 1);
        v8 = v6 + 2;
        ++v6;
      }

      while (v8 != v7);
      v3 = *(a1 + 16);
    }
  }

  v9 = *(a1 + 32) + 8 * v3;
  v10 = *(v9 - 8);
  if (v10)
  {

    *(v9 - 8) = 0;
    v3 = *(a1 + 16);
  }

  *(a1 + 16) = v3 - 1;
  ++*(a1 + 24);
}

void *re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(int8x16_t **a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(a1);
  v18[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v18[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v19 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v18[0] + 8) + 40 * v11;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        v17 = *(v12 + 32);
        re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a1, &v13, &v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v18);
        v11 = v19;
      }

      while (v19 != -1);
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 5 * (v13 + 16 * v12);
  v17 = a1[1] + 40 * (v13 + 16 * v12);
  *v17 = *a2;
  *(v17 + 8) = *a3;
  *(v17 + 16) = *(a3 + 8);
  *(v17 + 24) = *(a3 + 16);
  *(v17 + 32) = *(a3 + 24);
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateHashes(a1, v17);
  return a1[1] + 8 * v16 + 8;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = 5 * v16;
  v18 = a1[1] + 40 * v16;
  *v18 = *a2;
  *(v18 + 8) = *a3;
  *(v18 + 16) = *(a3 + 8);
  *(v18 + 24) = *(a3 + 16);
  *(v18 + 32) = *(a3 + 24);
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v20);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateHashes(a1, v18);
  return a1[1] + 8 * v17 + 8;
}

double re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateHashes(uint64_t a1, re::WeakParameterBinding *this)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  *(a1 + 40) ^= v4;
  result = re::WeakParameterBinding::hash((this + 8));
  *(a1 + 48) ^= v4 ^ (result + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9);
  return result;
}

void *re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 41 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(v21, (*(v19[0] + 8) + 40 * v11), *(v19[0] + 8) + 40 * v11 + 8);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(v21);
}

uint64_t re::WeakParameterBinding::hash(re::WeakParameterBinding *this)
{
  v1 = 0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = 0xBF58476D1CE4E5B9 * (*(this + 1) ^ (*(this + 1) >> 30));
  v4 = (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31)) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 16)) ^ ((0xBF58476D1CE4E5B9 * *(this + 16)) >> 27));
  v6 = *(this + 3) ^ (*(this + 3) >> 30);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
  return ((v4 << 6) + (v4 >> 2) + ((((v5 ^ (v5 >> 31)) << 6) + ((v5 ^ (v5 >> 31)) >> 2) + (v7 ^ (v7 >> 31)) - 0x61C8864680B583E9) ^ v5 ^ (v5 >> 31)) - 0x61C8864680B583E9) ^ v4;
}

void *re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::copy(int8x16_t **a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::clear(a1);
  v15[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v16 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = (*(v15[0] + 8) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(a1, &v13, &v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

unint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(uint64_t *a1, void *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = (a1[1] + 16 * v16);
  *v17 = *a2;
  v17[1] = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateHashes(a1, v17);
  return a1[1] + 16 * v16 + 8;
}

double re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateHashes(uint64_t result, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  v5 = v3 ^ *(result + 40);
  v6 = *(result + 48) ^ v3 ^ ((v3 << 6) + (v3 >> 2) + ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) - 0x61C8864680B583E9);
  *(result + 40) = v5;
  *(result + 48) = v6;
  return result;
}

double re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(v21);
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(void *a1, unint64_t *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 40 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 6), *(v7 + v5 + 64));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(v8 + 16) = 0u;
        v8 += 16;
        *(v8 - 8) = v10;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addInternal<unsigned long const&,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a4);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, a2);
      }
    }
  }

  return a1;
}

void re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_75, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 6;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(a1, v4, v5);
    re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, a2);
  }

  return a1;
}

BOOL re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(a1 + 16);
    v5 = *(v4 + 24 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v5;
      v6 = a2[3];
      v7 = v6;
    }

    else
    {
      *(v4 + 24 * v3) = *(v4 + 24 * v3) & 0x80000000 | v5;
      v6 = v2;
      v7 = v2;
    }

    v8 = *(a1 + 40);
    *(v4 + 24 * v6) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v8 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = v8 + 16 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 8);
          *(v11 + 8) = v12;
          if (v12 == 1)
          {
            *(v11 + 10) = *(v8 + 10);
          }

          *v8 = 0;
          v8 += 16;
          v11 += 2;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_21;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
LABEL_21:
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
        v11 = 56 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          *v12 = *(v8 + v10);
          v14 = *(v8 + v10 + 8);
          *(v12 + 8) = v14;
          if (v14 == 1)
          {
            *(v12 + 16) = 0;
            v15 = (v12 + 2);
            *(v15 + 24) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v15, v13 + 16);
            *(v15 + 32) = *(v13 + 48);
            if (*(v13 + 8))
            {
              v16 = *(v8 + v10 + 40);
              if (v16 != -1)
              {
                (off_1F5D03150[v16])(&v21, v13 + 16);
              }

              *(v8 + v10 + 40) = -1;
            }
          }

          *(v8 + v10) = 0;
          v10 += 56;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_21;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
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
              goto LABEL_24;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_24:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16);
        v11 = v7 + 2;
        v12 = 32 * v9;
        do
        {
          *(v11 - 2) = *(v10 - 2);
          v13 = *(v10 - 8);
          *(v11 - 8) = v13;
          if (v13 == 1)
          {
            *v11 = 0;
            v11[1] = 0;
            v14 = *v10;
            if (v10[1])
            {
              v15 = v14 == 0;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              *v11 = v14;
              v11[1] = v10[1];
              v10[1] = 0;
            }

            if (*(v10 - 1))
            {
              re::TextureHandle::invalidate(v10);
            }
          }

          *(v10 - 2) = 0;
          v10 += 4;
          v11 += 4;
          v12 -= 32;
        }

        while (v12);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_24;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity(v5, a2);
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
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_17:
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
        v11 = v7 + 2;
        v12 = (v8 + 16);
        do
        {
          v13 = v12 - 2;
          *(v11 - 2) = *(v12 - 2);
          v14 = *(v12 - 8);
          *(v11 - 8) = v14;
          if (v14 == 1)
          {
            *v11 = *v12;
            *v12 = 0;
          }

          *(v12 - 2) = 0;
          v11 += 3;
          v12 += 3;
        }

        while (v13 + 3 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_17:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 48 * v9);
        v11 = (v8 + 40);
        v12 = v7 + 3;
        do
        {
          v13 = v11 - 5;
          *(v12 - 3) = *(v11 - 5);
          v14 = *(v11 - 32);
          *(v12 - 16) = v14;
          if (v14 == 1)
          {
            *(v12 - 2) = *(v11 - 6);
            *v12 = *(v11 - 2);
            *(v12 + 8) = *(v11 - 8);
            v12[2] = *v11;
            *v11 = 0;
            *(v11 - 2) = 0;
          }

          *(v11 - 5) = 0;
          v11 += 6;
          v12 += 6;
        }

        while (v13 + 6 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_17;
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
LABEL_17:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 16 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          *v11 = *v12;
          v13 = *(v12 + 8);
          *(v11 + 8) = v13;
          if (v13 == 1)
          {
            *(v11 + 3) = *(v12 + 12);
          }

          *v12 = 0;
          v12 += 16;
          v11 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = v8 + 16 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 8);
          *(v11 + 8) = v12;
          if (v12 == 1)
          {
            *(v11 + 9) = *(v8 + 9);
          }

          *v8 = 0;
          v8 += 16;
          v11 += 2;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = v8 + 40 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 16);
          *(v11 + 16) = v12;
          if (v12 == 1)
          {
            v11[3] = *(v8 + 24);
          }

          *(v11 + 32) = *(v8 + 32);
          v8 += 40;
          v11 += 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(uint64_t a1, re::WeakParameterBinding *this)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  result = re::WeakParameterBinding::hash((this + 8));
  *(a1 + 48) ^= v4 ^ (result + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9);
  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateKvpsHash(uint64_t result, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  *(result + 48) ^= v3 ^ (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9);
  return result;
}

__n128 re::RenderCamera::computeLocalTransform@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RenderCamera *this@<X0>)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = v2 + v2;
  v5 = v3 + v3;
  v6 = *(this + 6);
  v7 = *(this + 7);
  v8 = v6 + v6;
  v9 = v2 * (v2 + v2);
  v10 = v3 * (v3 + v3);
  v11 = v6 * (v6 + v6);
  v12 = v4 * v3;
  v13 = v4 * v6;
  v14 = v5 * v6;
  v15 = v5 * v7;
  v16 = v8 * v7;
  HIDWORD(v17) = 0;
  *&v17 = 1.0 - (v10 + v11);
  *(&v17 + 1) = v12 + v16;
  *(&v17 + 2) = v13 - v15;
  v18 = v4 * v7;
  v19 = 1.0 - (v9 + v11);
  HIDWORD(v20) = 0;
  *&v20 = v12 - v16;
  *(&v20 + 1) = v19;
  *(&v20 + 2) = v14 + v18;
  HIDWORD(v21) = 0;
  *&v21 = v13 + v15;
  *(&v21 + 1) = v14 - v18;
  *(&v21 + 2) = 1.0 - (v9 + v10);
  *a1 = v17;
  *(a1 + 1) = v20;
  result = *this;
  result.n128_u32[3] = 1.0;
  *(a1 + 2) = v21;
  *(a1 + 3) = result;
  return result;
}

__n128 re::RenderCamera::computeInverseTransform@<Q0>(uint64_t *__return_ptr a1@<X8>, float32x4_t *this@<X0>)
{
  v2 = this[1];
  v3 = vnegq_f32(v2);
  v4 = vnegq_f32(*this);
  v5 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v6 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v2), v5, *this);
  v7 = vaddq_f32(v6, v6);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v2), v8, v5);
  result = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v8, v2, 3), *this), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  *v8.i32 = *v3.i32 + *v3.i32;
  v10 = (*v3.i32 + *v3.i32) * *v3.i32;
  v11 = vmuls_lane_f32(*&v3.i32[1] + *&v3.i32[1], *v3.i8, 1);
  v12 = vmuls_lane_f32(*&v3.i32[2] + *&v3.i32[2], v3, 2);
  v13 = vmuls_lane_f32(*v3.i32 + *v3.i32, *v3.i8, 1);
  v14 = vmuls_lane_f32(*v3.i32 + *v3.i32, v3, 2);
  *v3.i32 = vmuls_lane_f32(*&v3.i32[1] + *&v3.i32[1], v3, 2);
  *v8.i32 = vmuls_lane_f32(*v8.i32, v2, 3);
  v5.f32[0] = vmuls_lane_f32(*&v3.i32[1] + *&v3.i32[1], v2, 3);
  v2.f32[0] = vmuls_lane_f32(*&v3.i32[2] + *&v3.i32[2], v2, 3);
  HIDWORD(v15) = 0;
  *&v15 = 1.0 - (v11 + v12);
  *(&v15 + 1) = v13 + v2.f32[0];
  v9.i32[3] = 0;
  *(&v15 + 2) = v14 - v5.f32[0];
  HIDWORD(v16) = 0;
  *&v16 = v13 - v2.f32[0];
  *(&v16 + 1) = 1.0 - (v10 + v12);
  *(&v16 + 2) = *v3.i32 + *v8.i32;
  *v9.i32 = v14 + v5.f32[0];
  *&v9.i32[1] = *v3.i32 - *v8.i32;
  *&v9.i32[2] = 1.0 - (v10 + v11);
  *a1 = v15;
  *(a1 + 1) = v16;
  result.n128_u32[3] = 1.0;
  *(a1 + 2) = v9;
  *(a1 + 3) = result;
  return result;
}

double re::RenderCamera::computeWorldToScreenMatrix@<D0>(float32x4_t *this@<X0>, const re::Projection *a2@<X1>, float32x4_t *a3@<X8>)
{
  re::RenderCamera::computeInverseTransform(v30, this);
  if (*(a2 + 80) == 1)
  {
    v5 = *(a2 + 7);
    v26 = *(a2 + 6);
    v27 = v5;
    v6 = *(a2 + 9);
    v28 = *(a2 + 8);
    v29 = v6;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(&v26, a2);
  }

  if ((atomic_load_explicit(&_MergedGlobals_425, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_425))
  {
    xmmword_1EE1B7A90 = xmmword_1E3047670;
    unk_1EE1B7AA0 = xmmword_1E3047680;
    xmmword_1EE1B7AB0 = xmmword_1E30476A0;
    unk_1EE1B7AC0 = xmmword_1E30A1180;
    __cxa_guard_release(&_MergedGlobals_425);
  }

  if ((atomic_load_explicit(&qword_1EE1B7A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7A88))
  {
    xmmword_1EE1B7AD0 = 0u;
    unk_1EE1B7AE0 = 0u;
    xmmword_1EE1B7AF0 = 0u;
    unk_1EE1B7B00 = 0u;
    LODWORD(xmmword_1EE1B7AD0) = 1056964608;
    dword_1EE1B7AE4 = -1090519040;
    DWORD2(xmmword_1EE1B7AF0) = 1065353216;
    dword_1EE1B7B0C = 1065353216;
    __cxa_guard_release(&qword_1EE1B7A88);
  }

  v7 = 0;
  v8 = xmmword_1EE1B7A90;
  v9 = unk_1EE1B7AA0;
  v10 = xmmword_1EE1B7AB0;
  v11 = unk_1EE1B7AC0;
  v31 = xmmword_1EE1B7AD0;
  v32 = unk_1EE1B7AE0;
  v33 = xmmword_1EE1B7AF0;
  v34 = unk_1EE1B7B00;
  do
  {
    *(&v35 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*(&v31 + v7))), v9, *(&v31 + v7), 1), v10, *(&v31 + v7), 2), v11, *(&v31 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  v12 = 0;
  v13 = v35;
  v14 = v36;
  v15 = v37;
  v16 = v38;
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  do
  {
    *(&v35 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v31 + v12))), v14, *(&v31 + v12), 1), v15, *(&v31 + v12), 2), v16, *(&v31 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  v17 = 0;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v31 = v30[0];
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  do
  {
    *(&v35 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v31 + v17))), v19, *(&v31 + v17), 1), v20, *(&v31 + v17), 2), v21, *(&v31 + v17), 3);
    v17 += 16;
  }

  while (v17 != 64);
  result = *v35.i64;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  *a3 = v35;
  a3[1] = v23;
  a3[2] = v24;
  a3[3] = v25;
  return result;
}

float32x4_t re::RenderCamera::transformWorldBoundsToScreen@<Q0>(float32x4_t *this@<X0>, const AABB *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  re::RenderCamera::computeInverseTransform(v26, this);
  if (a3[5].i8[0] == 1)
  {
    v7 = a3[7];
    v22 = a3[6];
    v23 = v7;
    v8 = a3[9];
    v24 = a3[8];
    v25 = v8;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(&v22, a3);
  }

  v9 = 0;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v27[0] = v26[0];
  v27[1] = v26[1];
  v27[2] = v26[2];
  v27[3] = v26[3];
  do
  {
    *(&v28 + v9 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v27[v9])), v11, *&v27[v9], 1), v12, v27[v9], 2), v13, v27[v9], 3);
    ++v9;
  }

  while (v9 != 4);
  re::AABB::transform(a2, &v28, a4);
  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  v15 = vaddq_f32(vmulq_f32(*a4, v14), v14);
  v16 = vaddq_f32(vmulq_f32(a4[1], v14), v14);
  *a4 = v15;
  a4[1] = v16;
  a4->f32[1] = 1.0 - v16.f32[1];
  a4[1].f32[1] = 1.0 - v15.f32[1];
  v17 = *a4;
  v18 = a4[1];
  v17.i32[3] = 0;
  v19 = vmaxnmq_f32(v17, 0);
  v19.i32[3] = 0;
  v18.i32[3] = 0;
  v20 = vmaxnmq_f32(v18, 0);
  result = vminnmq_f32(v19, xmmword_1E304F3C0);
  v20.i32[3] = 0;
  *a4 = result;
  a4[1] = vminnmq_f32(v20, xmmword_1E304F3C0);
  return result;
}

void re::PerFrameAllocatorGPU::allocInternal(re::PerFrameAllocatorGPU *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (!a2)
  {
    goto LABEL_45;
  }

  do
  {
    if (*(this + 96))
    {
      goto LABEL_45;
    }

    v9 = a4;
    v10 = this;
    if (pthread_self() == *(this + 10))
    {
      break;
    }

    this = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(*(this + 9), *this);
    v11 = *(this + 10);
    v12 = pthread_self();
    a4 = 0;
  }

  while (v11 == v12);
  v13 = 16;
  if (a3 > 0x10)
  {
    v13 = a3;
  }

  v14 = v10 + 8;
  v15 = v13 - 1;
  v16 = -v13;
  for (i = 8; i != 32; i += 8)
  {
    v18 = *(v10 + i);
    if (v18)
    {
      if (v9)
      {
        v19 = v18[7];
        v20 = (v18[8] - a2) & v16;
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if ((v22 < 0) ^ v21 | (v22 == 0))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v23 = v18[8];
        v24 = ((v18[7] + v15) & v16) + a2;
        v25 = v24 <= v23;
        v22 = v24 - v23;
        if (v25)
        {
          goto LABEL_29;
        }
      }

      if (!v22)
      {
LABEL_29:
        v50 = *(v10 + i);
        if (v9)
        {
          goto LABEL_30;
        }

LABEL_36:
        v43 = (v18[7] + v15) & v16;
        if ((v43 + a2) <= v18[8])
        {
          v18[7] = v43 + a2;
          if (v43)
          {
            goto LABEL_38;
          }
        }

LABEL_45:
        *a5 = 0u;
        *(a5 + 16) = 0u;
        return;
      }
    }
  }

  v26 = *(v10 + 9);
  if (a2 <= 0x10000)
  {
    v27 = 0x10000;
  }

  else
  {
    v27 = a2;
  }

  v28 = *v10;
  os_unfair_lock_lock((v26 + 80));
  v30 = re::PerFrameAllocatorGPUManager::sizeToIndex(v29, v27);
  v31 = *(v26 + 104);
  if (v30 >= v31)
  {
LABEL_44:
    os_unfair_lock_unlock((v26 + 80));
    goto LABEL_45;
  }

  v32 = *(v26 + 120);
  v33 = v32 + 88 * v30;
  v34 = *(v33 + 24);
  if (v34)
  {
    v35 = v33 + 8;
    goto LABEL_22;
  }

  v46 = 0x10000 << v30;
  if (v30 >= v31 - 1 || v46 >= 2 * v27 || (v47 = v32 + 88 * v30, v34 = *(v47 + 112), v34 <= 1))
  {
    NewChunk = re::PerFrameAllocatorGPUManager::allocateNewChunk(v26, v46);
    if (NewChunk)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  v35 = v47 + 96;
LABEL_22:
  NewChunk = *(*(v35 + 32) + 8 * v34 - 8);
  *(v35 + 16) = v34 - 1;
  ++*(v35 + 24);
LABEL_23:
  *(NewChunk + 136) = v28;
  *(NewChunk + 56) = *(NewChunk + 40);
  os_unfair_lock_unlock((v26 + 80));
  v50 = NewChunk;
  re::DynamicArray<re::TransitionCondition *>::add((v10 + 32), &v50);
  v38 = 0;
  v39 = 0;
  v40 = -1;
  while (1)
  {
    v41 = *&v14[8 * v38];
    if (!v41)
    {
      break;
    }

    v42 = *(v41 + 64) - *(v41 + 56);
    if (v42 < v40)
    {
      v39 = v38;
      v40 = v42;
    }

    if (++v38 == 3)
    {
      goto LABEL_34;
    }
  }

  v39 = v38;
LABEL_34:
  v44 = v39;
  if (v39 < 3)
  {
    v18 = v50;
    *&v14[8 * v44] = v50;
    if ((v9 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_30:
    v43 = (v18[8] - a2) & v16;
    if (v18[7] > v43)
    {
      goto LABEL_45;
    }

    v18[8] = v43;
    if (!v43)
    {
      goto LABEL_45;
    }

LABEL_38:
    v45 = *v18;
    *(a5 + 16) = a2;
    *(a5 + 24) = v18 + 18;
    *a5 = v45;
    *(a5 + 8) = v43 - v45;
    return;
  }

  re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v39, 3);
  _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v48, v49);
  __break(1u);
}

uint64_t re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v4 = pthread_getspecific(*(a1 + 8));
  if (v4)
  {
    v5 = re::DataArray<re::PerFrameAllocatorGPU>::tryGet(a1 + 16, v4);
    if (v5)
    {
      v6 = v5;
      if (((*v5 ^ a2) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        return v6;
      }

      *(v5 + 104) = 1;
    }
  }

  os_unfair_lock_lock((a1 + 80));
  v7 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(re::FrameCount)::kAllocationName();
  if (*v7)
  {
    v14 = 0;
    *v13 = 0;
    v8 = pthread_self();
    pthread_getname_np(v8, v13, 0xAuLL);
    snprintf(v7, 0x200uLL, "PerThreadAllocatorGPU.%s", v13);
  }

  *v13 = a1;
  v9 = re::DataArray<re::PerFrameAllocatorGPU>::create<char (&)[512],re::FrameCount &,re::PerFrameAllocatorGPUManager *>(a1 + 16, v7, &v12, v13);
  v10 = v9;
  pthread_setspecific(*(a1 + 8), v9);
  v6 = re::DataArray<re::PerFrameAllocatorGPU>::get(a1 + 16, v10);
  os_unfair_lock_unlock((a1 + 80));
  return v6;
}

void re::PerFrameAllocatorGPUManager::init(pthread_key_t *this, re::RenderManager *a2)
{
  if ((*this & 1) == 0)
  {
    this[16] = a2;
    *this = 1;
    v4 = pthread_key_create(this + 1, 0);
    if (v4)
    {
      re::internal::assertLog(5, v5, "assertion failure: '%s' (%s:line %i) pthread_key_create failed: %d", "result == 0", "init", 200, v4);
      _os_crash("assertion failure: (result == 0) pthread_key_create failed: %d", v16);
      __break(1u);
    }

    else
    {
      v6 = re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::resize(this + 11, 0xFuLL);
      v7 = this[13];
      if (v7)
      {
        v8 = 0;
        v9 = this[15];
        v10 = vdupq_n_s64(v7 - 1);
        v11 = xmmword_1E3049620;
        v12 = vdupq_n_s64(2uLL);
        do
        {
          v13 = vmovn_s64(vcgeq_u64(v10, v11));
          if (v13.i8[0])
          {
            *v9 = 0x10000 << v8;
          }

          if (v13.i8[4])
          {
            v9[11] = 0x20000 << v8;
          }

          v8 += 2;
          v11 = vaddq_s64(v11, v12);
          v9 += 22;
        }

        while (((v7 + 1) & 0xFFFFFFFFFFFFFFFELL) != v8);
      }

      if (*(a2 + 326) == 1)
      {
        v14 = *(a2 + 33);
        re::PerFrameAllocatorGPUManager::addChunks(this, 0x10000, 8 * v14);
        v6 = re::PerFrameAllocatorGPUManager::addChunks(this, 0x20000, 4 * v14);
      }

      v15 = this + 2;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(v15, 0);
      ++*(v15 + 6);
      *(v15 + 11) = 8;

      re::DataArray<re::PerFrameAllocatorGPU>::allocBlock(v15);
    }
  }
}

uint64_t re::PerFrameAllocatorGPUManager::sizeToIndex(re::PerFrameAllocatorGPUManager *this, uint64_t a2)
{
  if (a2)
  {
    v4 = 16 - __clz(a2 - 1);
    return v4 & ~(v4 >> 31);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "size > 0", "sizeToIndex", 495, v2, v3);
    result = _os_crash("assertion failure: (size > 0) ");
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 80) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0;
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

unint64_t re::PerFrameAllocatorGPUManager::addChunks(re::PerFrameAllocatorGPUManager *this, uint64_t a2, uint64_t a3)
{
  result = re::PerFrameAllocatorGPUManager::sizeToIndex(this, a2);
  if (a3 && result < *(this + 13))
  {
    do
    {
      NewChunk = re::PerFrameAllocatorGPUManager::allocateNewChunk(this, a2);
      result = re::PerFrameAllocatorGPUManager::reuseChunk(this, NewChunk);
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t re::PerFrameAllocatorGPUManager::deinit(uint64_t this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*this == 1)
  {
    v1 = this;
    v2 = re::DataArray<re::PerFrameAllocatorGPU>::deinit(this + 16);
    v3 = *(v1 + 104);
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = 0;
    while (1)
    {
      v5 = *(v1 + 120) + 88 * v4;
      v6 = *(v5 + 64);
      if (!v6)
      {
        goto LABEL_13;
      }

      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v5 + 80) + 8 * i);
        if (v8)
        {
          v9 = re::globalAllocators(v2)[2];
          v10 = *(v8 + 144);
          if (v10)
          {

            *(v8 + 144) = 0;
          }

          *(v8 + 56) = 0u;
          *(v8 + 40) = 0u;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v8 + 80));
          re::Allocator::~Allocator((v8 + 16));
          v2 = (*(*v9 + 40))(v9, v8);
          v6 = *(v5 + 64);
        }

        if (v6 <= i)
        {
          v17 = 0;
          memset(v23, 0, sizeof(v23));
          v12 = MEMORY[0x1E69E9C10];
          *v18 = 136315906;
          *&v18[4] = "operator[]";
          *&v18[12] = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v13 = 3;
          }

          else
          {
            v13 = 2;
          }

          *&v18[14] = 789;
          v19 = 2048;
          v20 = i;
          v21 = 2048;
          v22 = v6;
          _os_log_send_and_compose_impl(v13, &v17, v23, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v18, 38, v15, v16);
          this = _os_crash_msg();
          __break(1u);
          goto LABEL_21;
        }

        *(*(v5 + 80) + 8 * i) = 0;
      }

      v3 = *(v1 + 104);
LABEL_13:
      *(v5 + 64) = 0;
      ++*(v5 + 72);
      *(v5 + 24) = 0;
      ++*(v5 + 32);
      if (v3 <= ++v4)
      {
LABEL_14:
        this = pthread_key_delete(*(v1 + 8));
        if (!this)
        {
          *v1 = 0;
          return this;
        }

LABEL_21:
        re::internal::assertLog(5, v11, "assertion failure: '%s' (%s:line %i) pthread_key_delete failed: %d", "result == 0", "deinit", 247, this, v17, *v18);
        _os_crash("assertion failure: (result == 0) pthread_key_delete failed: %d", v14);
        __break(1u);
      }
    }
  }

  return this;
}

unint64_t re::DataArray<re::PerFrameAllocatorGPU>::create<char (&)[512],re::FrameCount &,re::PerFrameAllocatorGPUManager *>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 56);
  if ((v8 + 1) >> 24)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 + 1;
  }

  *(a1 + 56) = v9;
  v10 = *(a1 + 52);
  v11 = *(a1 + 54);
  if (v10 == 0xFFFF && v11 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::PerFrameAllocatorGPU>::allocBlock(a1);
    }

    v16 = *(a1 + 16);
    v11 = (v16 - 1);
    if (v16)
    {
      v10 = *(a1 + 48);
      if (v10 < 0x10000)
      {
        v17 = (*(a1 + 32) + 16 * v11);
        *(a1 + 48) = v10 + 1;
        *(v17[1] + 4 * v10) = *(a1 + 56);
        v15 = *v17 + 112 * v10;
        goto LABEL_15;
      }

LABEL_24:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v10);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v26);
      __break(1u);
    }

LABEL_20:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v11;
    v36 = 2048;
    v37 = 0;
    _os_log_send_and_compose_impl(v25, &v29, &v38, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v13 = *(a1 + 16);
  if (v13 <= v11)
  {
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v11;
    v36 = 2048;
    v37 = v13;
    _os_log_send_and_compose_impl(v22, &v29, &v38, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v14 = (*(a1 + 32) + 16 * v11);
  *(v14[1] + 4 * v10) = v9;
  v15 = *v14 + 112 * v10;
  *(a1 + 52) = *v15;
LABEL_15:
  ++*(a1 + 40);
  v18 = *a3;
  v19 = *a4;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = v19;
  *(v15 + 88) = a2;
  *(v15 + 96) = 0;
  *(v15 + 100) = 3;
  *(v15 + 104) = 0;
  *v15 = v18;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 80) = pthread_self();
  return ((v11 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v10;
}

uint64_t re::DataArray<re::PerFrameAllocatorGPU>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 112 * a2;
}

uint64_t re::PerFrameAllocatorGPUManager::allocateNewChunk(re::PerFrameAllocatorGPUManager *this, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = re::PerFrameAllocatorGPUManager::sizeToIndex(this, a2);
  if (v4 >= *(this + 13))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 16);
  v7 = re::globalAllocators(v4);
  v8 = (*(*v7[2] + 32))(v7[2], 152, 8);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = &unk_1F5CCF5B8;
  *(v8 + 24) = "PerFrameAllocatorGPUChunk-Linear";
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0;
  *(v8 + 116) = 0x7FFFFFFFLL;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0xFFFFFFFFFFFFFFFLL;
  *(v8 + 144) = 0;
  v16 = v8;
  v26[0] = [*(v6 + 208) newBufferWithLength:a2 options:0];
  NS::SharedPtr<MTL::Texture>::operator=((v8 + 144), v26);
  if (v26[0])
  {
  }

  *v8 = [*(v8 + 144) contents];
  v9 = [*(v8 + 144) length];
  *(v8 + 8) = v9;
  v10 = *v8;
  v11 = &v9[*v8];
  *(v8 + 40) = *v8;
  *(v8 + 48) = v11;
  *(v8 + 56) = v10;
  *(v8 + 64) = v11;
  v12 = *(this + 13);
  if (v12 <= v5)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *v26 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 789;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v12;
    _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::TransitionCondition *>::add((*(this + 15) + 88 * v5 + 48), &v16);
  return v16;
}

unint64_t re::PerFrameAllocatorGPUManager::reuseChunk(re::PerFrameAllocatorGPUManager *a1, uint64_t a2)
{
  v4 = a2;
  result = re::PerFrameAllocatorGPUManager::sizeToIndex(a1, *(a2 + 8));
  if (result < *(a1 + 13))
  {
    return re::DynamicArray<re::TransitionCondition *>::add((*(a1 + 15) + 88 * result + 8), &v4);
  }

  return result;
}

void re::PerFrameAllocatorGPUManager::freeAllocatorsWithPredicate(os_unfair_lock_s *a1, os_unfair_lock_s *a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  v29 = 0;
  v26[1] = 0;
  v27 = 0;
  v25 = 0;
  v26[0] = 0;
  v28 = 0;
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v24 = 0;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v30, &a1[4], 0);
  v20 = v30;
  v21 = v31;
  if (&a1[4] == v30 && v31 == 0xFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v7 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
      v8 = re::DataArray<re::PerFrameAllocatorGPU>::get(&a1[4], v7);
      v9 = *v8;
      v30 = a2;
      v32 = v9;
      if ((*(**(a3 + 32) + 16))(*(a3 + 32), &v30, &v32))
      {
        v30 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v26, &v30);
      }

      if (*(v8 + 96) == 1)
      {
        v10 = *(v8 + 100);
        if (v10 >= 1)
        {
          *(v8 + 100) = --v10;
        }

        if (!v10 && *(v8 + 104) == 1)
        {
          v30 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
          re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v22, &v30);
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != &a1[4] || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
    v6 = v29;
    if (v27)
    {
      v11 = &v29[v27];
      v12 = v29;
      do
      {
        v13 = re::DataArray<re::PerFrameAllocatorGPU>::get(&a1[4], *v12);
        if (*(v13 + 48))
        {
          v14 = 0;
          do
          {
            re::PerFrameAllocatorGPUManager::reuseChunk(a1, *(*(v13 + 64) + 8 * v14++));
          }

          while (*(v13 + 48) > v14);
        }

        *(v13 + 48) = 0;
        ++*(v13 + 56);
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 8) = 0;
        *(v13 + 96) = 1;
        ++v12;
      }

      while (v12 != v11);
    }
  }

  v15 = v25;
  if (v23)
  {
    v16 = 8 * v23;
    v17 = v25;
    do
    {
      v18 = *v17++;
      re::DataArray<re::PerFrameAllocatorGPU>::destroy(&a1[4], v18);
      v16 -= 8;
    }

    while (v16);
  }

  if (v22[0])
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    (*(*v22[0] + 40))();
  }

  if (v26[0] && v6)
  {
    (*(*v26[0] + 40))();
  }

  os_unfair_lock_unlock(a1 + 20);
}

uint64_t (***re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(re *a1, os_unfair_lock_s *a2))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v6[0] = &unk_1F5D031C8;
  v6[3] = v4;
  v6[4] = v6;
  re::PerFrameAllocatorGPUManager::freeAllocatorsWithPredicate(a1, a2, v6);
  return re::FunctionBase<24ul,BOOL ()(re::FrameCount,re::FrameCount)>::destroyCallable(v6);
}

uint64_t (***re::PerFrameAllocatorGPUManager::freeAllocatorsForFrame(re *a1, os_unfair_lock_s *a2))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v6[0] = &unk_1F5D03220;
  v6[3] = v4;
  v6[4] = v6;
  re::PerFrameAllocatorGPUManager::freeAllocatorsWithPredicate(a1, a2, v6);
  return re::FunctionBase<24ul,BOOL ()(re::FrameCount,re::FrameCount)>::destroyCallable(v6);
}

void *re::internal::Callable<re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D031C8;
  return result;
}

void *re::internal::Callable<re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D031C8;
  return result;
}

void *re::internal::Callable<re::PerFrameAllocatorGPUManager::freeAllocatorsForFrame(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03220;
  return result;
}

void *re::internal::Callable<re::PerFrameAllocatorGPUManager::freeAllocatorsForFrame(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03220;
  return result;
}

void *re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v22, v24);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v23, v25);
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
        v10 = v8 + 88 * v9;
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
          v13 = v8 + 8;
          v14 = *(v8 + 16);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[2] = v14;
          *(v8 + 16) = 0;
          v15 = v11[3];
          v11[3] = *(v8 + 24);
          *(v8 + 24) = v15;
          v16 = v11[5];
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v16;
          ++*(v8 + 32);
          ++*(v11 + 8);
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v17 = *(v8 + 48);
          v18 = *(v8 + 56);
          v19 = v8 + 48;
          v11[6] = v17;
          v11[7] = v18;
          *v19 = 0;
          *(v19 + 8) = 0;
          v20 = v11[8];
          v11[8] = *(v19 + 16);
          *(v19 + 16) = v20;
          v21 = v11[10];
          v11[10] = *(v19 + 32);
          *(v19 + 32) = v21;
          ++*(v19 + 24);
          ++*(v11 + 18);
          re::DynamicArray<unsigned long>::deinit(v19);
          re::DynamicArray<unsigned long>::deinit(v13);
          v11 += 11;
          v8 = v19 + 40;
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

void re::DataArray<re::PerFrameAllocatorGPU>::allocBlock(_anonymous_namespace_ *a1)
{
  v2 = 112 * *(a1 + 11);
  v9.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v9.n128_u64[0])
  {
    v2 = 4 * *(a1 + 11);
    v9.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v9.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v9);
      *(a1 + 12) = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v5, v7);
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v6, v8);
  __break(1u);
}

unint64_t re::generateFunctionVariantHash(uint64_t *a1, const char *a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = 0x9E3779B97F4A7C17;
  v4 = re::TechniqueDefinitionBuilder::hashFunctionConstants(*a1, a1[1], 0);
  v5 = strlen(a2);
  if (v5)
  {
    MurmurHash3_x64_128(a2, v5, 0, v7);
    v3 = ((v7[1] - 0x61C8864680B583E9 + (v7[0] << 6) + (v7[0] >> 2)) ^ v7[0]) - 0x61C8864680B583E9;
  }

  return ((v4 >> 2) + (v4 << 6) + v3) ^ v4;
}

void re::FunctionReflectionCache::~FunctionReflectionCache(re::FunctionReflectionCache *this, double a2, __n128 a3)
{
  v4 = (this + 120);
  v12[0] = this + 120;
  v5 = *(this + 17);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *v4;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v12[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v13 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::internal::destroyPersistent<re::FunctionReflectionResult>("~FunctionReflectionCache", 59, *(*(v12[0] + 8) + 16 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
        v11 = v13;
      }

      while (v13 != -1);
    }
  }

LABEL_8:
  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(v4);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v4);
  re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::deinit(this + 72);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::FunctionReflectionCache::~FunctionReflectionCache(this, a2, a3);

  JUMPOUT(0x1E6906520);
}

re *re::internal::destroyPersistent<re::FunctionReflectionResult>(re *result, uint64_t a2, id *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::FunctionReflectionResult::~FunctionReflectionResult(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::FunctionReflectionCache::tryGetCachedFunction(os_unfair_lock_s *this, uint64_t a2)
{
  v6 = a2;
  os_unfair_lock_lock(this + 28);
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&this[30]._os_unfair_lock_opaque, &v6);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*&this[32]._os_unfair_lock_opaque + 16 * v3 + 8);
  }

  os_unfair_lock_unlock(this + 28);
  return v4;
}

void re::FunctionReflectionCache::scheduleAllFunctionBuildTasks(void *a1, uint64_t a2, id *a3, char a4, uint64_t a5, __n128 a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a1[11];
  if (v6 >= 1)
  {
    a6.n128_u64[0] = 136315138;
    v33 = a6;
    if (a1[11] > (a1[11] & 0x7FFFFFFFuLL) - 1)
    {
      v8 = (a1[13] + 88 * ((a1[11] & 0x7FFFFFFFLL) - 1));
      v9 = v8[4];
      v10 = v8[2];
      v11 = v8[9];
      v12 = *a3;
      if (v8[6])
      {
        v13 = v8[7];
      }

      else
      {
        v13 = (v8 + 49);
      }

      if ((atomic_load_explicit(&qword_1EE1B7B18, memory_order_acquire) & 1) == 0)
      {
        v12 = __cxa_guard_acquire(&qword_1EE1B7B18);
        if (v12)
        {
          re::Defaults::BOOLValue(&v42, "enableShaderDebugLogs", v29);
          if (v42)
          {
            v30 = BYTE1(v42);
          }

          else
          {
            v30 = 0;
          }

          _MergedGlobals_426 = v30;
          __cxa_guard_release(&qword_1EE1B7B18);
        }
      }

      if (_MergedGlobals_426)
      {
        *&v49[2] = 0;
        memset(&v47[8], 0, 20);
        re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v47, v10);
        ++*&v47[24];
        v34 = v13;
        re::ShaderManager::makeFunction(*(a2 + 48), v11, v13, 0, &v41);
        v14 = [v41 functionConstantsDictionary];
        v42 = 0u;
        v43 = 0u;
        LODWORD(v44) = 0;
        *(&v44 + 4) = 0x7FFFFFFFLL;
        v15 = [v14 keyEnumerator];
        v16 = [v15 nextObject];
        if (v16)
        {
          v17 = v16;
          do
          {
            v37 = [(_anonymous_namespace_ *)v17 UTF8String];
            *&buf = [v14 objectForKey_];
            re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(&v42, &v37, &buf);
            if (buf)
            {
            }

            v16 = [v15 nextObject];
            v17 = v16;
          }

          while (v16);
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        re::DynamicString::setCapacity(&v37, 0x1F4uLL);
        if (v10)
        {
          v18 = 104 * v10;
          do
          {
            if (*(v9 + 8))
            {
              v19 = *(v9 + 16);
            }

            else
            {
              v19 = (v9 + 9);
            }

            v36 = v19;
            re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(&v42, &v36, &buf);
            if (HIDWORD(buf) != 0x7FFFFFFF)
            {
              re::DynamicArray<re::TechniqueFunctionConstant>::add(v47, v9);
            }

            v9 += 104;
            v18 -= 104;
          }

          while (v18);
        }

        *&buf = *&v49[2];
        *(&buf + 1) = *&v47[16];
        FunctionVariantHash = re::generateFunctionVariantHash(&buf, v34);
        v21 = re::DynamicString::appendf(&v37, "Compiling shader %s (%zu) with function constants ", v34, FunctionVariantHash);
        if (*&v47[16])
        {
          v22 = (*&v49[2] + 36);
          v23 = 104 * *&v47[16];
          do
          {
            if (*(v22 - 28))
            {
              v24 = *(v22 - 20);
            }

            else
            {
              v24 = v22 - 27;
            }

            v25 = *v22;
            v22 += 13;
            v21 = re::DynamicString::appendf(&v37, "%s=%llu ", v24, v25);
            v23 -= 104;
          }

          while (v23);
        }

        v26 = *re::graphicsLogObjects(v21);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = &v38 + 1;
          if (v38)
          {
            v28 = v39;
          }

          LODWORD(buf) = v33.n128_u32[0];
          *(&buf + 4) = v28;
          _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "%s\n", &buf, 0xCu);
        }

        if (v37 && (v38 & 1) != 0)
        {
          (*(*v37 + 40))();
        }

        re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v42);
        if (v41)
        {
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v47);
        LOBYTE(v37) = 0;
      }

      else
      {
        LOBYTE(v37) = 0;
      }

      *v47 = a1;
      v27 = a1 + 1;
      operator new();
    }

    v37 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *&v47[14] = 789;
    *&v47[18] = 2048;
    *&v47[20] = (v6 & 0x7FFFFFFF) - 1;
    v48 = 2048;
    *v49 = v6;
    _os_log_send_and_compose_impl(v32, &v37, &v42, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v47, 38, v33.n128_u64[0], v33.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }
}

void re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(uint64_t a1, uint64_t a2, dispatch_group_t *a3, int a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 112));
  dispatch_group_enter(*a3);
  if (a1)
  {
    v10 = (a1 + 8);
  }

  v28[0] = a1 + 120;
  v11 = *(a1 + 136);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *(a1 + 120);
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v28[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v12;
    v29 = v16 - v12;
    if (v16 + 1 != v12)
    {
      do
      {
        v18 = *(*(v28[0] + 8) + 16 * v17 + 8);
        if (*(v18 + 48) == 1)
        {
          dispatch_group_enter(*a3);
          v19 = [objc_msgSend(*v18 name)];
          v20 = *(a2 + 48);
          v21 = *a3;
          v26.var1 = &str_67;
          v27 = v21;
          *&v26.var0 = 0;
          if (a1)
          {
            v22 = (a1 + 8);
          }

          v23 = *a3;
          v31 = re::globalAllocators(v23)[2];
          v32 = 0;
          v24 = (*(*v31 + 32))(v31, 48, 0);
          *v24 = &unk_1F5D032A8;
          *(v24 + 8) = a1;
          *(v24 + 16) = v18;
          *(v24 + 24) = v23;
          *(v24 + 32) = a5;
          *(v24 + 40) = a4;
          v32 = v24;
          re::ShaderManager::scheduleAsyncGroupFuncOnCompilationQueue(v20, a4, a5, &v27, 2, &v26, v30);
          v25 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v30);
          if (*&v26.var0)
          {
            if (*&v26.var0)
            {
            }
          }

          *&v26.var0 = 0;
          v26.var1 = &str_67;
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v28);
        v17 = v29;
      }

      while (v29 != -1);
    }
  }

LABEL_17:
  dispatch_group_leave(*a3);
  if (a1)
  {
  }

  os_unfair_lock_unlock((a1 + 112));
}

BOOL re::FunctionReflectionCache::addTask(uint64_t a1, uint64_t a2)
{
  v4 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 24, (a2 + 80));
  if (v4)
  {
    return !v4;
  }

  re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::add((a1 + 72), a2);
  v5 = *(a2 + 80);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  v8 = *(a1 + 48);
  if (!v8)
  {
    LODWORD(v9) = 0;
    goto LABEL_9;
  }

  v9 = v7 % v8;
  v10 = *(*(a1 + 32) + 4 * (v7 % v8));
  if (v10 == 0x7FFFFFFF)
  {
LABEL_9:
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(a1 + 24, v9, v7, a2 + 80, (a2 + 80));
    ++*(a1 + 64);
    return !v4;
  }

  v11 = *(a1 + 40);
  if (*(v11 + 24 * v10 + 16) != v5)
  {
    while (1)
    {
      LODWORD(v10) = *(v11 + 24 * v10 + 8) & 0x7FFFFFFF;
      if (v10 == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v11 + 24 * v10 + 16) == v5)
      {
        return !v4;
      }
    }

    goto LABEL_9;
  }

  return !v4;
}

__n128 re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 88 * v4;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v5, a2);
  re::DynamicString::DynamicString((v5 + 40), (a2 + 40));
  result = *(a2 + 72);
  *(v5 + 72) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

unint64_t re::FunctionReflectionCache::hashFunction(uint64_t a1, uint64_t a2, re::FunctionConstantUsageMask *a3, const char *a4, unint64_t a5)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v7 = re::TechniqueDefinitionBuilder::hashFunctionConstants(a1, a2, a3);
  v8 = strlen(a4);
  if (v8)
  {
    MurmurHash3_x64_128(a4, v8, 0, v11);
    v9 = ((v11[1] - 0x61C8864680B583E9 + (v11[0] << 6) + (v11[0] >> 2)) ^ v11[0]) - 0x61C8864680B583E9;
  }

  else
  {
    v9 = 0x9E3779B97F4A7C17;
  }

  return ((v7 << 6) - 0x61C8864680B583E9 + (v7 >> 2) + (((a5 >> 2) + (a5 << 6) + v9) ^ a5)) ^ v7;
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D032A8;

  v2 = *(a1 + 8);
  if (v2)
  {

    *(a1 + 8) = 0;
  }

  return a1;
}

void re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D032A8;

  v2 = *(a1 + 8);
  if (v2)
  {

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if ([**(a1 + 16) functionType] == 5)
  {
    v2 = **(a1 + 16);
  }

  else
  {
    v2 = [**(a1 + 16) reflectionWithOptions_];
  }

  re::mtl::retainedArray<MTL::Argument>(v3, [v2 arguments]);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(*(a1 + 16) + 8, v3);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v3);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  *(*(a1 + 16) + 48) = 0;
  dispatch_group_leave(*(a1 + 24));
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5D032A8;
  *(a2 + 8) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  v6 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v6;
  v7 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v7;
  return a2;
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D032A8;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 8) = 0;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  *(a2 + 24) = v2;
  v3 = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 32) = v3;
  return a2;
}

void re::mtl::retainedArray<MTL::Argument>(uint64_t a1, id a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v4 = [a2 count];
  if (v4)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v4);
  }

  v5 = [a2 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [a2 objectAtIndex_];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(a1, &v8);
      if (v8)
      {
      }
    }
  }
}

uint64_t re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7)
  {
    MurmurHash3_x64_128(v6, v7, 0, v10);
    v8 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  }

  else
  {
    v8 = 0;
  }

  return re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(a1, a2, v8, a3);
}

void re::FunctionReflectionResult::~FunctionReflectionResult(id *this)
{
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit((this + 1));
  if (*this)
  {

    *this = 0;
  }
}

uint64_t re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::deinit(uint64_t a1)
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
        do
        {
          re::DynamicString::deinit((v3 + 40));
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v3);
          v3 += 88;
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

void re::HashBrown<unsigned long,re::FunctionReflectionResult *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  v8 = *(a1 + 56);
  memset(v46, 0, sizeof(v46));
  v9 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v46, v8, v3);
  v44[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v44[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_29;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v45 = v15 - v11;
    if (v15 + 1 != v11)
    {
      v43 = vdupq_n_s64(1uLL).u64[0];
      do
      {
        v17 = *(v44[0] + 8);
        if (*(&v46[3] + 1))
        {
          v18 = *&v46[2];
        }

        else
        {
          *&v46[1] = 16;
          *&v36 = -1;
          *(&v36 + 1) = -1;
          **&v46[0] = v36;
          v18 = *&v46[1];
          *(&v46[0] + 1) = *&v46[0] + 16;
          *(&v46[1] + 1) = 0;
          v46[2] = *&v46[1];
          *&v46[3] = 0;
        }

        v19 = xmmword_1E304FAD0;
        if (!v18 || (v20 = *&v46[1], *&v46[1] > (8 * v18)))
        {
          re::HashBrown<unsigned long,re::FunctionReflectionResult *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(v46);
          v19 = xmmword_1E304FAD0;
          v20 = *&v46[1];
        }

        v21 = (v17 + 16 * v16);
        v22 = 0xBF58476D1CE4E5B9 * (*v21 ^ (*v21 >> 30));
        v23 = (0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) ^ ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) >> 31);
        v24 = v20 >> 4;
        v25 = v23 % (v20 >> 4);
        v26 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v46[0] + 16 * v25)), v19)))), 0x3830282018100800)));
        if (v26 >= 0x40)
        {
          do
          {
            if (v25 + 1 == v24)
            {
              v25 = 0;
            }

            else
            {
              ++v25;
            }

            v26 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v46[0] + 16 * v25)), v19)))), 0x3830282018100800)));
          }

          while (v26 > 0x3F);
        }

        v27 = *&v46[0] + 16 * v25;
        v28 = *(v27 + v26);
        *(v27 + v26) = v23 & 0x7F;
        v29 = 16 * (v26 + 16 * v25);
        v30 = (*(&v46[0] + 1) + v29);
        v32 = *v21;
        v31 = v21[1];
        *v30 = v32;
        v30[1] = v31;
        if (v28 == 255)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v34.i64[0] = v43;
        v34.i64[1] = v33;
        *(&v46[1] + 8) = vaddq_s64(*(&v46[1] + 8), v34);
        v35 = 0xBF58476D1CE4E5B9 * (*(*(&v46[0] + 1) + v29) ^ (*(*(&v46[0] + 1) + v29) >> 30));
        *(&v46[2] + 1) ^= ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v35 ^ (v35 >> 27)));
        v9 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v44);
        v16 = v45;
      }

      while (v45 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_29:
  v37 = *(&v46[3] + 1);
  *(&v46[3] + 1) = *(a1 + 56);
  v38 = v46[0];
  v39 = v46[1];
  v46[0] = *a1;
  *&v46[1] = v10;
  v40 = v46[2];
  v41 = *(a1 + 40);
  *(a1 + 48) = *&v46[3];
  *(a1 + 56) = v37;
  *(&v46[2] + 8) = v41;
  v42 = *(a1 + 24);
  *a1 = v38;
  *(a1 + 16) = v39;
  *(a1 + 32) = v40;
  *(&v46[1] + 8) = v42;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v46);
}

_anonymous_namespace_ *re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
        v11 = v8 + 88 * v9;
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
          *(v13 + 5) = 0u;
          *(v13 + 7) = 0u;
          v17 = (v8 + v10 + 40);
          v13[5] = *v17;
          *v17 = 0;
          v13[8] = *(v8 + v10 + 64);
          *(v12 + 64) = 0;
          v19 = v7[v10 / 8 + 6];
          v18 = v7[v10 / 8 + 7];
          v20 = *(v8 + v10 + 56);
          v13[6] = *(v8 + v10 + 48);
          v13[7] = v20;
          *(v12 + 48) = v19;
          *(v12 + 56) = v18;
          *(v13 + 9) = *(v8 + v10 + 72);
          re::DynamicString::deinit(v17);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v8 + v10);
          v10 += 88;
        }

        while (v12 + 88 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::TechniqueFunctionConstant>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::TechniqueFunctionConstant>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a1, *(a2 + 16));
    v15 = *(a2 + 32);
    v16 = a1[2];
    v17 = a1[4];
    if (v16)
    {
      v18 = 104 * v16;
      do
      {
        v19 = re::DynamicString::operator=(v17, v15);
        *(v19 + 2) = *(v15 + 32);
        v20 = *(v15 + 48);
        v21 = *(v15 + 64);
        v22 = *(v15 + 80);
        *(v19 + 24) = *(v15 + 96);
        *(v19 + 4) = v21;
        *(v19 + 5) = v22;
        *(v19 + 3) = v20;
        v15 += 104;
        v17 = (v19 + 104);
        v18 -= 104;
      }

      while (v18);
      v17 = a1[4];
      v16 = a1[2];
      v15 = *(a2 + 32);
    }

    if (v16 != v4)
    {
      v23 = 104 * v16;
      v24 = v15 + v23;
      v25 = (v17 + v23);
      v26 = 104 * v4 - v23;
      do
      {
        v27 = re::DynamicString::DynamicString(v25, v24);
        *(v27 + 2) = *(v24 + 32);
        v28 = *(v24 + 48);
        v29 = *(v24 + 64);
        v30 = *(v24 + 80);
        *(v27 + 24) = *(v24 + 96);
        *(v27 + 4) = v29;
        *(v27 + 5) = v30;
        *(v27 + 3) = v28;
        v24 += 104;
        v25 = (v27 + 104);
        v26 -= 104;
      }

      while (v26);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 104 * v4;
      do
      {
        v9 = re::DynamicString::operator=(v6, v7);
        *(v9 + 2) = *(v7 + 32);
        v10 = *(v7 + 48);
        v11 = *(v7 + 64);
        v12 = *(v7 + 80);
        *(v9 + 24) = *(v7 + 96);
        *(v9 + 4) = v11;
        *(v9 + 5) = v12;
        *(v9 + 3) = v10;
        v7 += 104;
        v6 = (v9 + 104);
        v8 -= 104;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v13 = (v6 + 104 * v4);
      v14 = 104 * v5 - 104 * v4;
      do
      {
        re::DynamicString::deinit(v13);
        v13 = (v13 + 104);
        v14 -= 104;
      }

      while (v14);
    }
  }

  a1[2] = v4;
}

__n128 std::__function::__func<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0,std::allocator<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03300;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0,std::allocator<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E6974060] alloc)];
  v20 = v2;
  v3 = *(a1 + 8);
  v4 = v3[1];
  if (v4)
  {
    v5 = 104 * v4;
    v6 = *v3 + 36;
    do
    {
      [v2 setConstantValue:v6 type:*(v6 - 4) atIndex:{*(v6 - 2), v20}];
      v6 += 104;
      v5 -= 104;
    }

    while (v5);
  }

  v7 = **(a1 + 16);
  v8 = **(a1 + 24);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  v10 = **(a1 + 32);
  v11 = *(a1 + 40);
  v12 = re::globalAllocators(v10)[2];
  v25 = v12;
  if (v12)
  {
    v13 = (*(*v12 + 32))(v12, 40, 0);
  }

  else
  {
    v13 = 0;
  }

  *v13 = &unk_1F5D03370;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v10;
  v13[4] = v11;
  v26 = v13;
  dispatch_group_enter(**(a1 + 32));
  v14 = *(*(a1 + 40) + 48);
  v15 = *(a1 + 64);
  v16 = **(a1 + 56);
  if (*(v15 + 8))
  {
    v17 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 9);
  }

  v18 = **(a1 + 72);
  v19 = **(a1 + 80);
  v22 = v12;
  v23 = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(v21, v24);
  **(a1 + 48) = re::ShaderManager::tryRequestFunctionReflection(v14, v16, v17, &v20, v18, v19, v21);
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(v21);
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(v24);
  if (v2)
  {
  }
}

uint64_t std::__function::__func<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0,std::allocator<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D03370;

  v2 = *(a1 + 16);
  if (v2)
  {

    *(a1 + 16) = 0;
  }

  return a1;
}

void re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D03370;

  v2 = *(a1 + 16);
  if (v2)
  {

    *(a1 + 16) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator()(uint64_t a1, void **a2)
{
  if (*a2)
  {
    v29 = 0;
    v30 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    NS::SharedPtr<MTL::Buffer>::operator=(&v26, a2);
    v30 = 1;
    v3 = *(a1 + 16);
    v31 = *(a1 + 8);
    os_unfair_lock_lock((v3 + 112));
    if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 120), &v31) == -1)
    {
      v4 = re::globalAllocators(0xFFFFFFFFFFFFFFFFLL);
      v5 = (*(*v4[2] + 32))(v4[2], 56, 8);
      *(v5 + 32) = 0;
      *(v5 + 16) = 0u;
      *(v5 + 8) = 0;
      v6 = v27;
      *v5 = v26;
      *(v5 + 16) = v6;
      v7 = *(&v27 + 1);
      *(v5 + 8) = *(&v26 + 1);
      *(v5 + 40) = 0;
      *(v5 + 24) = v7;
      v26 = 0u;
      v27 = 0u;
      *(v5 + 40) = v29;
      v29 = 0;
      ++v28;
      ++*(v5 + 32);
      *(v5 + 48) = v30;
      if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 120), &v31) == -1)
      {
        if (!*(v3 + 176))
        {
        }

        v9 = *(v3 + 152);
        if (!v9 || (v10 = *(v3 + 136), v10 > 8 * v9))
        {
          re::HashBrown<unsigned long,re::FunctionReflectionResult *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(v3 + 120);
          v10 = *(v3 + 136);
        }

        v11 = 0xBF58476D1CE4E5B9;
        v12 = 0x94D049BB133111EBLL;
        v13 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27))) >> 31);
        v14 = v10 >> 4;
        v15 = *(v3 + 120);
        v16 = v13 % v14;
        while (1)
        {
          v17 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v15 + 16 * v16)), xmmword_1E304FAD0)))), 0x3830282018100800)));
          if (v17 < 0x40)
          {
            break;
          }

          if (v16 + 1 == v14)
          {
            v16 = 0;
          }

          else
          {
            ++v16;
          }

          if (v16 == v13 % v14)
          {
            re::internal::assertLog(4, v8, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
            _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
            __break(1u);
            break;
          }
        }

        v18 = v15 + 16 * v16;
        v19 = *(v18 + v17);
        *(v18 + v17) = v13 & 0x7F;
        v20 = 16 * (v17 + 16 * v16);
        v21 = (*(v3 + 128) + v20);
        *v21 = v31;
        v21[1] = v5;
        if (v19 == 255)
        {
          v22 = -1;
        }

        else
        {
          v22 = 0;
        }

        v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v23.i64[1] = v22;
        *(v3 + 144) = vaddq_s64(*(v3 + 144), v23);
        v24 = *(*(v3 + 128) + v20) ^ (*(*(v3 + 128) + v20) >> 30);
        v25 = ((v24 * v11) ^ ((v24 * v11) >> 27)) * v12;
        *(v3 + 160) ^= (v25 >> 31) ^ v25;
      }
    }

    os_unfair_lock_unlock((v3 + 112));
    re::FunctionReflectionResult::~FunctionReflectionResult(&v26);
  }

  dispatch_group_leave(*(a1 + 24));
}

void *re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::cloneInto(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5D03370;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  a2[3] = v7;
  a2[4] = v8;
  return a2;
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_1F5D03370;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a2 + 24) = v4;
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a1);
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
    re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a1);
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
        re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a2);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(uint64_t a1))(void)
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

re::mtl *re::mtl::convertToNSString(re::mtl *this, const char *a2)
{
  if (this)
  {
    this = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
    v2 = vars8;
  }

  return this;
}

void re::mtl::makeDefaultDevice(uint64_t *__return_ptr a1@<X8>)
{
  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    v4 = v2;
    *a1 = v4;
  }

  else
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Unable to create default system Metal device.", "(mtlDevice != nullptr)", "makeDefaultDevice", 241);
    _os_crash("assertion failure: ((mtlDevice != nullptr)) Unable to create default system Metal device.");
    __break(1u);
  }
}

uint64_t re::mtl::getTextureTypeName(int a1)
{
  v1 = MTLTextureTypeString();
  v2 = [v1 UTF8String];

  return v2;
}

uint64_t re::mtl::getTextureCompressionType(id *a1, void *a2, int *a3, void *a4, void *a5)
{
  {
    v18 = a1;
    v11 = a4;
    a4 = v11;
    v14 = v12;
    a1 = v18;
    if (v14)
    {
      re::Defaults::BOOLValue(&v20, "disableLossy", v13);
      if (v20)
      {
        v15 = BYTE1(v20);
      }

      else
      {
        v15 = 0;
      }

      re::mtl::getTextureCompressionType(re::mtl::Device const&,MTL::StorageMode const&,MTL::PixelFormat const&,unsigned long const&,MTL::TextureType const&)::disableLossyDefault = v15;
      a1 = v18;
      a4 = v11;
    }
  }

  {
    v16 = a1;
    v19 = a4;
    a4 = v19;
    if (v17)
    {
      re::mtl::getTextureCompressionType(re::mtl::Device const&,MTL::StorageMode const&,MTL::PixelFormat const&,unsigned long const&,MTL::TextureType const&)::lossyIsNotSupported = [*v16 supportsFamily:{1008, v19}] ^ 1;
      a4 = v19;
    }
  }

  if ((*a4 & 0x4002) == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*a4 >> 4) & 1;
  }

  if (*a3 == 32 || (v23 = 0, v21 = 0u, v22 = 0u, v20 = 0u, MTLPixelFormatGetInfoForDevice(), (WORD4(v20) & 0x400) != 0))
  {
    v9 = 1;
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v9 = (DWORD2(v20) & 0x4000000) == 0;
  }

  if (re::mtl::getTextureCompressionType(re::mtl::Device const&,MTL::StorageMode const&,MTL::PixelFormat const&,unsigned long const&,MTL::TextureType const&)::disableLossyDefault)
  {
    return 0;
  }

  else
  {
    return ~((*a5 < 0xAuLL) & (0x203u >> *a5) | v8 | re::mtl::getTextureCompressionType(re::mtl::Device const&,MTL::StorageMode const&,MTL::PixelFormat const&,unsigned long const&,MTL::TextureType const&)::lossyIsNotSupported | v9 | (*a2 != 2)) & 1;
  }
}

uint64_t re::mtl::Device::isPhysicalHardware(re::mtl::Device *this)
{
  if (qword_1EE1B7B28 != -1)
  {
    dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
  }

  return re::mtl::Device::isPhysicalHardware(void)const::result;
}

uint64_t ___ZNK2re3mtl6Device18isPhysicalHardwareEv_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    re::mtl::Device::isPhysicalHardware(void)const::result = v2 == 0;
  }

  return result;
}

uint64_t re::mtl::Device::isFrameCaptureEnabled(re::mtl::Device *this)
{
  v1 = [MEMORY[0x1E6974000] sharedCaptureManager];
  v2 = [v1 supportsDestination:2];

  return v2;
}

uint64_t re::mtl::Device::needsArgumentBufferTextureEmulation(id *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B30))
  {
    re::Defaults::BOOLValue(&byte_1EE1B7B22, "needsArgumentBufferTextureEmulation", v4);
    __cxa_guard_release(&qword_1EE1B7B30);
  }

  if (byte_1EE1B7B22 == 1)
  {
    v2 = byte_1EE1B7B23;
  }

  else
  {
    if (qword_1EE1B7B28 != -1)
    {
      dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
    }

    if (re::mtl::Device::isPhysicalHardware(void)const::result == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1B7B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B40))
      {
        qword_1EE1B7B38 = [*this argumentBuffersSupport];
        __cxa_guard_release(&qword_1EE1B7B40);
      }

      v2 = qword_1EE1B7B38 == 0;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t re::mtl::Device::supportsArgumentBuffers(void **this, const char *a2)
{
  if (qword_1EE1B7B28 != -1)
  {
    dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
  }

  if (re::mtl::Device::isPhysicalHardware(void)const::result)
  {
    return 1;
  }

  re::Defaults::BOOLValue(&v5, "enableArgumentBuffersInVMs", a2);
  result = 0;
  if (v5 == 1 && (v5 & 0x100) != 0)
  {
    v4 = *this;

    return [v4 supportsArgumentBuffers];
  }

  return result;
}

uint64_t re::mtl::Device::supportsPrimitiveIdentifier(id *this)
{
  if ([*this supportsFamily:5001] & 1) != 0 || (objc_msgSend(*this, "supportsFamily:", 1007))
  {
    return 1;
  }

  v3 = *this;

  return [v3 supportsFamily:2002];
}

uint64_t re::mtl::Device::supportsDynamicAttributeStride(void **this)
{
  if (qword_1EE1B7B28 != -1)
  {
    dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
  }

  if (re::mtl::Device::isPhysicalHardware(void)const::result != 1)
  {
    return 0;
  }

  v2 = *this;

  return [v2 supportsDynamicAttributeStride];
}

void re::mtl::Device::makeCommandQueue(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v3 = [*this newCommandQueue];
  *a1 = v3;
}

uint64_t re::mtl::Device::makeCommandQueue@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 newCommandQueueWithDescriptor_];
  *a3 = v4;

  return [v4 setBackgroundGPUPriority:2];
}

void re::mtl::Device::newLibraryWithURL(uint64_t *__return_ptr a1@<X8>, void **this@<X0>, re::mtl *a3@<X1>)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  v7 = MEMORY[0x1E695DFF8];
  v9 = re::mtl::convertToNSString(a3, v8);
  v10 = [v7 fileURLWithPath:v9 isDirectory:0];

  v11 = *this;
  v28 = 0;
  v12 = [v11 newLibraryWithURL:v10 error:&v28];
  v13 = v28;
  v14 = v13;
  if (v12)
  {
    *a1 = v12;
  }

  else
  {
    v15 = *re::graphicsLogObjects(v13);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        v17 = v15;
        v18 = [(re *)v14 localizedDescription];
        v19 = [v18 UTF8String];
        *buf = 136315138;
        v30 = v19;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "newLibraryWithURL failed [%s].", buf, 0xCu);
      }
    }

    else if (v16)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "newLibraryWithURL failed.", buf, 2u);
    }

    *a1 = 0;
    v20 = *re::graphicsLogObjects(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "newLibraryWithURL failed.", buf, 2u);
    }
  }

  v21 = mach_absolute_time();
  v22 = v21;
  v23 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v21 = mach_timebase_info(buf);
    if (v21)
    {
      v26 = NAN;
      goto LABEL_15;
    }

    LODWORD(v24) = *buf;
    LODWORD(v25) = v30;
    v23 = v24 / v25;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v23;
  }

  v26 = v23 * (v22 - v6);
LABEL_15:
  v27 = *re::graphicsLogObjects(v21);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = a3;
    v31 = 1024;
    v32 = (v26 / 1000000.0);
    _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "MTLLibrary %s newLibraryWithURL %dms", buf, 0x12u);
  }
}

void re::mtl::Device::newLibraryWithData(void **this@<X0>, re::mtl *a2@<X1>, re **a3@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  v9 = re::mtl::convertToNSString(a2, v8);
  v39 = 0;
  v10 = [v7 initWithContentsOfFile:v9 options:1 error:&v39];
  v11 = v39;

  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZNK2re3mtl6Device18newLibraryWithDataEPKc_block_invoke;
    aBlock[3] = &unk_1E871AA90;
    v13 = v10;
    v38 = v13;
    v14 = _Block_copy(aBlock);
    v15 = dispatch_data_create([v13 bytes], objc_msgSend(v13, "length"), 0, v14);
    v16 = *this;
    v36 = 0;
    v17 = [v16 newLibraryWithData:v15 error:&v36];
    v18 = v36;
    v19 = v18;
    if (v17)
    {

      v20 = v17;
      *a3 = v20;
      goto LABEL_16;
    }

    v22 = *re::graphicsLogObjects(v18);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v23)
      {
        log = v22;
        v35 = [(re *)v19 localizedDescription];
        v24 = [v35 UTF8String];
        *buf = 136315138;
        v41 = v24;
        _os_log_error_impl(&dword_1E1C61000, log, OS_LOG_TYPE_ERROR, "newLibraryWithData failed [%s].", buf, 0xCu);
      }
    }

    else if (v23)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "newLibraryWithData failed.", buf, 2u);
    }
  }

  else
  {
    v21 = *re::graphicsLogObjects(v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v41 = a2;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "newLibraryWithData failed to open the file [%s].", buf, 0xCu);
    }
  }

  v25 = 0;
  *a3 = v25;
  v26 = *re::graphicsLogObjects(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "newLibraryWithData failed.", buf, 2u);
  }

  v20 = 0;
LABEL_16:
  v27 = mach_absolute_time();
  v28 = v27;
  v29 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v27 = mach_timebase_info(buf);
    if (v27)
    {
      v32 = NAN;
      goto LABEL_21;
    }

    LODWORD(v30) = *buf;
    LODWORD(v31) = v41;
    v29 = v30 / v31;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v29;
  }

  v32 = v29 * (v28 - v6);
LABEL_21:
  v33 = *re::graphicsLogObjects(v27);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = a2;
    v42 = 1024;
    v43 = (v32 / 1000000.0);
    _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "MTLLibrary %s newLibraryWithData %dms", buf, 0x12u);
  }
}

uint64_t re::mtl::Device::setMPSBinaryArchives(id *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a2 + 16)];
  if (*(a2 + 16))
  {
    v6 = 0;
    do
    {
      [v5 addObject:*(*(a2 + 32) + 8 * v6++)];
    }

    while (*(a2 + 16) > v6);
  }

  re::Defaults::BOOLValue(&v9, "mpsFailOnMiss", v4);
  v7 = MPSSetBinaryArchives();

  return v7;
}

void re::mtl::Device::makeComputePipelineState(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [*a1 newComputePipelineStateWithDescriptor:*a2 options:0 reflection:0 error:&v11];
  *a3 = v4;
  if (!v4)
  {
    v5 = v11;
    v6 = *re::graphicsLogObjects(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        v8 = v11;
        v9 = v6;
        v10 = [objc_msgSend(v8 localizedDescription)];
        *buf = 136315138;
        v13 = v10;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "makeComputePipelineState failed [%s].", buf, 0xCu);
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "makeComputePipelineState failed.", buf, 2u);
    }
  }
}

void re::mtl::Device::makeRenderPipelineState(id *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = 0;
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (a3)
  {
    if (qword_1EE1B7B28 != -1)
    {
      dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
    }

    if (re::mtl::Device::isPhysicalHardware(void)const::result)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = [*a1 newRenderPipelineStateWithDescriptor:a2 options:v7 reflection:0 error:&v15];
  *a4 = v8;
  if (!v8)
  {
    v9 = v15;
    v10 = *re::graphicsLogObjects(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v11)
      {
        v12 = v15;
        v13 = v10;
        v14 = [objc_msgSend(v12 localizedDescription)];
        *buf = 136315138;
        v17 = v14;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "makeRenderPipelineState failed [%s].", buf, 0xCu);
      }
    }

    else if (v11)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "makeRenderPipelineState failed.", buf, 2u);
    }
  }
}

void re::mtl::Device::makeBinaryArchive(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [*a1 newBinaryArchiveWithDescriptor:*a2 error:&v11];
  if (!v4)
  {
    v5 = v11;
    v6 = *re::graphicsLogObjects(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        v8 = v11;
        v9 = v6;
        v10 = [objc_msgSend(v8 localizedDescription)];
        *buf = 136315138;
        v13 = v10;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "makeBinaryArchive failed [%s].", buf, 0xCu);
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "makeBinaryArchive failed.", buf, 2u);
    }
  }

  *a3 = v4;
}

void re::mtl::Device::makeRenderPipelineState(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [*a1 newRenderPipelineStateWithTileDescriptor:a2 options:0 reflection:0 error:&v11];
  *a3 = v4;
  if (!v4)
  {
    v5 = v11;
    v6 = *re::graphicsLogObjects(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        v8 = v11;
        v9 = v6;
        v10 = [objc_msgSend(v8 localizedDescription)];
        *buf = 136315138;
        v13 = v10;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "makeRenderPipelineState failed [%s].", buf, 0xCu);
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "makeRenderPipelineState failed.", buf, 2u);
    }
  }
}

uint64_t *re::mtl::Device::makeTexture@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, id *a3@<X0>)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EE1B7B28 != -1)
  {
    dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
  }

  if ((re::mtl::Device::isPhysicalHardware(void)const::result & 1) == 0)
  {
    [a2 pixelFormat];
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    MTLPixelFormatGetInfoForDevice();
  }

  v6 = [a2 width];
  if (v6 <= 0x4000 && (v6 = [a2 height], v6 <= 0x4000))
  {
    result = [*a3 newTextureWithDescriptor_];
  }

  else
  {
    v7 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = [a2 width];
      v11 = [a2 height];
      LODWORD(v12[0]) = 134218240;
      *(v12 + 4) = v10;
      WORD6(v12[0]) = 2048;
      *(v12 + 14) = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Texture too large with dimensions %zu x %zu", v12, 0x16u);
    }

    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t *re::mtl::Device::makeTextureWithIOSurface@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, id *a3@<X0>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = [a2 width];
  if (v10 <= 0x4000 && (v10 = [a2 height], v10 <= 0x4000))
  {
    result = [*a3 newTextureWithDescriptor:a2 iosurface:a4 plane:a5];
  }

  else
  {
    v11 = *re::graphicsLogObjects(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      v14 = 134218240;
      v15 = [a2 width];
      v16 = 2048;
      v17 = [a2 height];
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Texture too large with dimensions %zu x %zu", &v14, 0x16u);
    }

    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t *re::mtl::Device::makeSharedTexture@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, id *a3@<X0>)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a2 width];
  if (v6 <= 0x4000 && (v6 = [a2 height], v6 <= 0x4000))
  {
    result = [*a3 newSharedTextureWithDescriptor_];
  }

  else
  {
    v7 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = 134218240;
      v11 = [a2 width];
      v12 = 2048;
      v13 = [a2 height];
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Texture too large with dimensions %zu x %zu", &v10, 0x16u);
    }

    result = 0;
  }

  *a1 = result;
  return result;
}

void re::mtl::Device::makeArgumentEncoder(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
  *a3 = [*a1 newArgumentEncoderWithArguments_];
  if (v5)
  {
  }
}

id re::mtl::Device::areProgrammableSamplePositionsSupported(id *this)
{
  v1 = *this;
  if (([*this respondsToSelector_] & 1) != 0 || (result = objc_msgSend(v1, sel_methodSignatureForSelector_, sel_areProgrammableSamplePositionsSupported)) != 0)
  {

    return [v1 areProgrammableSamplePositionsSupported];
  }

  return result;
}

void re::mtl::Device::newCounterSampleBufferWithDescriptor(void **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  v6 = v5;
  v7 = [v4 newCounterSampleBufferWithDescriptor:v6 error:&v15];
  v8 = v15;

  if (v8)
  {
    v10 = *re::graphicsLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = [v8 localizedDescription];
      v14 = [v13 UTF8String];
      *buf = 136315138;
      v17 = v14;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "newCounterSampleBufferWithDescriptor failed: %s", buf, 0xCu);
    }

    *a3 = 0;
  }

  else
  {
    *a3 = v7;
    v11 = v7;
  }
}

void re::mtl::Device::getCounterSet(id *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 1:
      v5 = MEMORY[0x1E6973F88];
      goto LABEL_7;
    case 4:
      v5 = MEMORY[0x1E6973F80];
      goto LABEL_7;
    case 2:
      v5 = MEMORY[0x1E6973F78];
LABEL_7:
      v6 = *v5;
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [*a1 counterSets];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 name];

        if (v13 == v6)
        {
          *a3 = v12;
          v14 = v12;

          goto LABEL_19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  *a3 = 0;
LABEL_19:
}

void re::mtl::CommandQueue::makeCommandBuffer(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v3 = [*this commandBuffer];
  *a1 = v3;
}

void re::mtl::CommandQueue::makeCommandBufferWithUnretainedReferences(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this commandBufferWithUnretainedReferences];
  *a2 = v3;
}

void re::mtl::CommandQueue::makeCommandBufferWithDescriptor(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 commandBufferWithDescriptor:a2];
  *a3 = v4;
}

void re::mtl::CommandQueue::device(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this device];
  *a2 = v3;
}

uint64_t re::mtl::CommandBuffer::getLabel(id *this)
{
  v2 = *this;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*this label];
    v4 = [v3 UTF8String];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t (***re::mtl::CommandBuffer::addCompletionHandler(void **a1, uint64_t a2))(void)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZNK2re3mtl13CommandBuffer20addCompletionHandlerENS_8FunctionIFvRKS1_EEE_block_invoke;
  v4[3] = &__block_descriptor_72_a8_32c48_ZTSN2re8FunctionIFvRKNS_3mtl13CommandBufferEEEE_e28_v16__0___MTLCommandBuffer__8l;
  v5[3] = *(a2 + 24);
  v5[4] = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v5, a2);
  [v2 addCompletedHandler:v4];
  return re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v5);
}

void ___ZNK2re3mtl13CommandBuffer20addCompletionHandlerENS_8FunctionIFvRKS1_EEE_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 64);
  v4 = *(*v3 + 16);

  v4(v3, &v5);
}

uint64_t __copy_helper_block_a8_32c48_ZTSN2re8FunctionIFvRKNS_3mtl13CommandBufferEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  return re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a1 + 32, a2 + 32);
}

void ___ZNK2re3mtl13CommandBuffer38addCompletionHandlerPrintLabelForDebugEv_block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v7 = v2;
  v3 = [v2 status];
  if (v3 == 5)
  {
    v4 = *re::graphicsLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      Label = re::mtl::CommandBuffer::getLabel(&v7);
      *buf = 136315138;
      v9 = Label;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed CB %s!\n", buf, 0xCu);
    }
  }
}

uint64_t (***re::mtl::CommandBuffer::addScheduledHandler(void **a1, uint64_t a2))(void)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZNK2re3mtl13CommandBuffer19addScheduledHandlerENS_8FunctionIFvRKS1_EEE_block_invoke;
  v4[3] = &__block_descriptor_72_a8_32c48_ZTSN2re8FunctionIFvRKNS_3mtl13CommandBufferEEEE_e28_v16__0___MTLCommandBuffer__8l;
  v5[3] = *(a2 + 24);
  v5[4] = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v5, a2);
  [v2 addScheduledHandler:v4];
  return re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v5);
}

void ___ZNK2re3mtl13CommandBuffer19addScheduledHandlerENS_8FunctionIFvRKS1_EEE_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 64);
  v4 = *(*v3 + 16);

  v4(v3, &v5);
}

void re::mtl::CommandBuffer::makeRenderCommandEncoder(id *a1@<X0>, uint64_t a2@<X1>, re **a3@<X8>)
{
  v4 = [*a1 renderCommandEncoderWithDescriptor:a2];
  re::mtl::RenderCommandEncoder::RenderCommandEncoder(a3, v4);
}

void re::mtl::CommandBuffer::makeParallelRenderCommandEncoder(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 parallelRenderCommandEncoderWithDescriptor:a2];
  *a3 = v4;
}

void re::mtl::CommandBuffer::makeBlitCommandEncoder(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v3 = [*this blitCommandEncoder];
  *a1 = v3;
}

void re::mtl::CommandBuffer::makeComputeCommandEncoder(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v3 = [*this computeCommandEncoder];
  *a1 = v3;
}

void re::mtl::CommandBuffer::makeComputeCommandEncoder(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 computeCommandEncoderWithDescriptor:a2];
  *a3 = v4;
}

void re::mtl::CommandBuffer::commandQueue(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this commandQueue];
  *a2 = v3;
}

void re::mtl::CommandBuffer::error(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v3 = [*this error];
  *a1 = v3;
}

re **re::mtl::RenderCommandEncoder::RenderCommandEncoder(re **a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  v4 = re::globalAllocators(v3);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  v6 = v5;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 16) = 0u;
  if (v3)
  {
    re::mtl::RenderEncoderImpCache::build(v5, v3);
  }

  a1[1] = v6;

  return a1;
}

re::mtl::RenderCommandEncoder *re::mtl::RenderCommandEncoder::RenderCommandEncoder(re::mtl::RenderCommandEncoder *this, id *a2)
{
  v4 = *a2;
  *this = v4;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 272, 8);
  v7 = a2[1];
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[13] = 0u;
  v6[14] = 0u;
  v6[15] = 0u;
  v6[16] = 0u;
  memcpy(v6, v7, 0x110uLL);
  *(this + 1) = v6;
  return this;
}

void re::mtl::RenderCommandEncoder::~RenderCommandEncoder(re::mtl::RenderCommandEncoder *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v2);
  }
}

id *re::mtl::RenderCommandEncoder::operator=(id *location, id *a2)
{
  if (location != a2)
  {
    re::ObjCObject::operator=(location, a2);
    re::mtl::RenderEncoderImpCache::build(location[1], *location);
  }

  return location;
}

int *re::mtl::RenderCommandEncoder::setLabel(uint64_t **this, void **a2)
{
  result = re::AppleBuild::get(this);
  if (*result == 1)
  {
    v5 = this[1];
    v6 = *a2;
    v7 = v6;
    v8 = *v5;
    v9 = v5[32];

    return v9(v8, sel_setLabel_, v6);
  }

  return result;
}

void re::mtl::RenderCommandEncoder::insertDebugSignpost(void **this, re::mtl *a2)
{
  v2 = *this;
  v3 = re::mtl::convertToNSString(a2, a2);
  [v2 insertDebugSignpost:v3];
}

uint64_t re::mtl::RenderCommandEncoder::setViewports(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5.f64[0] = MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    v6 = &v13[-2 * v4 + 4];
    v7 = v2 + 2;
    v8 = 1;
    do
    {
      v9 = vcvtq_f64_f32(v7[-1]);
      v6[-2] = vcvtq_f64_f32(v7[-2]);
      v6[-1] = v9;
      v10 = *v7;
      v7 += 3;
      v11 = v8;
      v5 = vcvtq_f64_f32(v10);
      *v6 = v5;
      v6 += 3;
      ++v8;
    }

    while (v11 < v3);
  }

  return [*v1 setViewports:v5.f64[0] count:?];
}

int *re::mtl::ParallelRenderCommandEncoder::setLabel(re::mtl::ParallelRenderCommandEncoder *this, const re::ns::String *a2)
{
  result = re::AppleBuild::get(this);
  if (*result == 1)
  {
    v5 = *this;
    v6 = *a2;

    return [v5 setLabel:v6];
  }

  return result;
}

void re::mtl::ParallelRenderCommandEncoder::makeRenderCommandEncoder(id *this@<X0>, re **a2@<X8>)
{
  v3 = [*this renderCommandEncoder];
  re::mtl::RenderCommandEncoder::RenderCommandEncoder(a2, v3);
}

void re::mtl::BlitCommandEncoder::generateMipmaps(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = mach_absolute_time();
  [*a1 generateMipmapsForTexture:a2];
  v5 = mach_absolute_time();
  v6 = v5;
  v7 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v5 = mach_timebase_info(&v21);
    if (v5)
    {
      v10 = NAN;
      goto LABEL_6;
    }

    LODWORD(v8) = v21;
    LODWORD(v9) = v22;
    v7 = v8 / v9;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v7;
  }

  v10 = v7 * (v6 - v4);
LABEL_6:
  v11 = (v10 / 1000000.0);
  if (v11 >= 11)
  {
    v12 = *re::graphicsLogObjects(v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [a2 pixelFormat];
      v15 = [a2 sampleCount];
      v16 = [a2 width];
      v17 = [a2 height];
      v18 = [a2 depth];
      v19 = [a2 arrayLength];
      v20 = [a2 textureType];
      v21 = 134219776;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      v31 = 2048;
      v32 = v19;
      v33 = 2048;
      v34 = v20;
      v35 = 1024;
      v36 = v11;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader generateMipmaps p=%zu sc=%zu w=%zu h=%zu d=%zu ar=%zu t=%zu in %d", &v21, 0x4Eu);
    }
  }
}

void re::mtl::BlitCommandEncoder::bufferCopy(id *this, Buffer *a2, uint64_t a3, Buffer *a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = mach_absolute_time();
  [*this copyFromBuffer:a2 sourceOffset:a3 toBuffer:a4 destinationOffset:a5 size:a6];
  v13 = mach_absolute_time();
  v14 = v13;
  v15 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v13 = mach_timebase_info(&v21);
    if (v13)
    {
      v18 = NAN;
      goto LABEL_6;
    }

    LODWORD(v16) = v21;
    LODWORD(v17) = v22;
    v15 = v16 / v17;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v15;
  }

  v18 = v15 * (v14 - v12);
LABEL_6:
  v19 = (v18 / 1000000.0);
  if (v19 >= 11)
  {
    v20 = *re::graphicsLogObjects(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 134218496;
      v22 = a3;
      v23 = 2048;
      v24 = a5;
      v25 = 1024;
      v26 = v19;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader bufferCopy s=%zu d=%zu in %d", &v21, 0x1Cu);
    }
  }
}

void re::mtl::BlitCommandEncoder::textureCopy(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  [*a1 copyFromTexture:a2 toTexture:a3];
  v7 = mach_absolute_time();
  v8 = v7;
  v9 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v7 = mach_timebase_info(&v20);
    if (v7)
    {
      v12 = NAN;
      goto LABEL_6;
    }

    LODWORD(v10) = v20;
    LODWORD(v11) = v21;
    v9 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v9;
  }

  v12 = v9 * (v8 - v6);
LABEL_6:
  v13 = (v12 / 1000000.0);
  if (v13 >= 11)
  {
    v14 = *re::graphicsLogObjects(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [a2 pixelFormat];
      v17 = [a2 sampleCount];
      v18 = [a3 pixelFormat];
      v19 = [a3 sampleCount];
      v20 = 134219008;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      v24 = 2048;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      v28 = 1024;
      v29 = v13;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader textureCopy sp=%zu ssc=%zu dp=%zu dsc=%zu in %d", &v20, 0x30u);
    }
  }
}

void re::mtl::BlitCommandEncoder::textureCopy(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v74 = *MEMORY[0x1E69E9840];
  v36 = mach_absolute_time();
  v21 = *a1;
  v34 = a5;
  v35 = a6;
  *info = a5;
  *&info[8] = a6;
  *&info[16] = a7;
  v41[3] = a8;
  v41[4] = a9;
  v41[5] = a10;
  v41[0] = a14;
  v41[1] = a15;
  v41[2] = a16;
  [v21 copyFromTexture:a12 sourceSlice:a13 sourceLevel:v41 sourceOrigin:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  v22 = mach_absolute_time();
  v23 = v22;
  v24 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v22 = mach_timebase_info(info);
    if (v22)
    {
      v27 = NAN;
      goto LABEL_6;
    }

    LODWORD(v25) = *info;
    LODWORD(v26) = *&info[4];
    v24 = v25 / v26;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v24;
  }

  v27 = v24 * (v23 - v36);
LABEL_6:
  v28 = (v27 / 1000000.0);
  if (v28 >= 11)
  {
    v29 = *re::graphicsLogObjects(v22);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v37 = v29;
      v33 = [a2 pixelFormat];
      v30 = [a2 sampleCount];
      v31 = [a11 pixelFormat];
      v32 = [a11 sampleCount];
      *info = 134222336;
      *&info[4] = v33;
      *&info[12] = 2048;
      *&info[14] = v30;
      *&info[22] = 2048;
      v43 = a3;
      v44 = 2048;
      v45 = a4;
      v46 = 2048;
      v47 = v34;
      v48 = 2048;
      v49 = v35;
      v50 = 2048;
      v51 = a7;
      v52 = 2048;
      v53 = a8;
      v54 = 2048;
      v55 = a9;
      v56 = 2048;
      v57 = a10;
      v58 = 2048;
      v59 = v31;
      v60 = 2048;
      v61 = v32;
      v62 = 2048;
      v63 = a12;
      v64 = 2048;
      v65 = a13;
      v66 = 2048;
      v67 = a14;
      v68 = 2048;
      v69 = a15;
      v70 = 2048;
      v71 = a16;
      v72 = 1024;
      v73 = v28;
      _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader textureCopy sp=%zu ssc=%zu ss=%zu sl=%zu so=(%zu %zu %zu) ss=(%zu %zu %zu) dp=%zu dsc=%zu do=(%zu %zu %zu) ds=%zu dl=%zu in %d", info, 0xB2u);
    }
  }
}

void re::mtl::BlitCommandEncoder::copyFromBufferToTexture(void **a1, void **a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v77 = *MEMORY[0x1E69E9840];
  v16 = mach_absolute_time();
  v17 = *a1;
  v18 = *a2;
  v19 = *a3;
  v20 = a3[1];
  v45 = a3;
  v47 = a4;
  v21 = a3[2];
  v22 = a4[2];
  *info = *a4;
  *&info[16] = v22;
  v23 = v18;
  v24 = a8[2];
  v49 = a8;
  v50 = a7;
  v51 = *a8;
  v52 = v24;
  v43 = a7;
  v25 = a6;
  [v17 copyFromBuffer:v23 sourceOffset:v19 sourceBytesPerRow:v20 sourceBytesPerImage:v21 sourceSize:info toTexture:a5 destinationSlice:a6 destinationLevel:v43 destinationOrigin:&v51];

  v26 = mach_absolute_time();
  v27 = v26;
  v28 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v26 = mach_timebase_info(info);
    if (v26)
    {
      v31 = NAN;
      goto LABEL_6;
    }

    LODWORD(v29) = *info;
    LODWORD(v30) = *&info[4];
    v28 = v29 / v30;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v28;
  }

  v31 = v28 * (v27 - v16);
LABEL_6:
  v32 = (v31 / 1000000.0);
  if (v32 >= 11)
  {
    v33 = *re::graphicsLogObjects(v26);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v35 = *v45;
      v34 = v45[1];
      v36 = v45[2];
      v44 = *v47;
      v46 = v47[1];
      v48 = v47[2];
      v37 = v33;
      v38 = [a5 pixelFormat];
      v39 = [a5 sampleCount];
      v40 = *v49;
      v41 = v49[1];
      v42 = v49[2];
      *info = 134221312;
      *&info[4] = v35;
      *&info[12] = 2048;
      *&info[14] = v34;
      *&info[22] = 2048;
      v54 = v36;
      v55 = 2048;
      v56 = v44;
      v57 = 2048;
      v58 = v46;
      v59 = 2048;
      v60 = v48;
      v61 = 2048;
      v62 = v38;
      v63 = 2048;
      v64 = v39;
      v65 = 2048;
      v66 = v25;
      v67 = 2048;
      v68 = v50;
      v69 = 2048;
      v70 = v40;
      v71 = 2048;
      v72 = v41;
      v73 = 2048;
      v74 = v42;
      v75 = 1024;
      v76 = v32;
      _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader copyFromBufferToTexture so=%llu sbpr=%llu sbpi=%llu ss=(%zu, %zu, %zu) p=%zu sc=%zu ds=%zu dl=%zu do=(%zu, %zu, %zu) in %d", info, 0x8Au);
    }
  }
}

void re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int128 *a6, id *a7, void *a8)
{
  v86 = *MEMORY[0x1E69E9840];
  v16 = mach_absolute_time();
  v17 = *a1;
  v18 = a5[2];
  *info = *a5;
  *&info[16] = v18;
  v19 = *(a6 + 2);
  v48 = *a6;
  v49 = v19;
  [v17 copyFromTexture:a2 sourceSlice:a3 sourceLevel:a4 sourceOrigin:info sourceSize:&v48 toBuffer:*a7 destinationOffset:*a8 destinationBytesPerRow:a8[1] destinationBytesPerImage:a8[2]];
  v20 = mach_absolute_time();
  v21 = v20;
  v22 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v20 = mach_timebase_info(info);
    if (v20)
    {
      v25 = NAN;
      goto LABEL_6;
    }

    LODWORD(v23) = *info;
    LODWORD(v24) = *&info[4];
    v22 = v23 / v24;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v22;
  }

  v25 = v22 * (v21 - v16);
LABEL_6:
  v26 = (v25 / 1000000.0);
  if (v26 >= 11)
  {
    v27 = *re::graphicsLogObjects(v20);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      v46 = [a2 pixelFormat];
      v45 = [a2 sampleCount];
      v44 = [a2 textureType];
      v43 = [a2 arrayLength];
      v42 = [a2 width];
      v28 = [a2 height];
      v29 = [a2 usage];
      v31 = *a5;
      v30 = a5[1];
      v32 = a5[2];
      v33 = *(a6 + 1);
      v37 = v30;
      v38 = *a6;
      v34 = *(a6 + 2);
      v39 = v33;
      v40 = *a8;
      v41 = a8[1];
      v35 = a8[2];
      v36 = [*a7 length];
      *info = 134222848;
      *&info[4] = v46;
      *&info[12] = 2048;
      *&info[14] = v45;
      *&info[22] = 2048;
      v51 = v44;
      v52 = 2048;
      v53 = v43;
      v54 = 2048;
      v55 = v42;
      v56 = 2048;
      v57 = v28;
      v58 = 2048;
      v59 = v29;
      v60 = 2048;
      v61 = a3;
      v62 = 2048;
      v63 = a4;
      v64 = 2048;
      v65 = v31;
      v66 = 2048;
      v67 = v37;
      v68 = 2048;
      v69 = v32;
      v70 = 2048;
      v71 = v38;
      v72 = 2048;
      v73 = v39;
      v74 = 2048;
      v75 = v34;
      v76 = 2048;
      v77 = v40;
      v78 = 2048;
      v79 = v41;
      v80 = 2048;
      v81 = v35;
      v82 = 2048;
      v83 = v36;
      v84 = 1024;
      v85 = v26;
      _os_log_error_impl(&dword_1E1C61000, log, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader copyFromTextureToBuffer p=%zu sc=%zu t=%zu al=%zu w=%zu h=%zu u=%zu ss=%zu sl=%zu so=(%zu, %zu, %zu) ss=(%zu, %zu, %zu) do=%llu dbpr=%llu dbpi=%llu l=%zu in %d", info, 0xC6u);
    }
  }
}

void re::mtl::BlitCommandEncoder::fillBuffer(id *this, Buffer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = mach_absolute_time();
  [*this fillBuffer:a2 range:a3 value:{a4, a5}];
  v11 = mach_absolute_time();
  v12 = v11;
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v11 = mach_timebase_info(&v19);
    if (v11)
    {
      v16 = NAN;
      goto LABEL_6;
    }

    LODWORD(v14) = v19;
    LODWORD(v15) = v20;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v16 = v13 * (v12 - v10);
LABEL_6:
  v17 = (v16 / 1000000.0);
  if (v17 >= 11)
  {
    v18 = *re::graphicsLogObjects(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218752;
      v20 = a3;
      v21 = 2048;
      v22 = a4;
      v23 = 1024;
      v24 = a5;
      v25 = 1024;
      v26 = v17;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader fillBuffer o=%zu s=%zu v=%hhu in %d", &v19, 0x22u);
    }
  }
}

void re::mtl::ComputeCommandEncoder::pushDebugGroup(void **this, re::mtl *a2)
{
  v2 = *this;
  v3 = re::mtl::convertToNSString(a2, a2);
  [v2 pushDebugGroup:v3];
}

void re::mtl::Drawable::texture(id *this@<X0>, void *a2@<X8>)
{
  v4 = [*this texture];
  *a2 = v4;
  v3 = v4;
}

uint64_t (***re::mtl::Drawable::addPresentedHandler(void **a1, uint64_t a2))(void)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZNK2re3mtl8Drawable19addPresentedHandlerENS_8FunctionIFvRKS1_EEE_block_invoke;
  v4[3] = &__block_descriptor_72_a8_32c42_ZTSN2re8FunctionIFvRKNS_3mtl8DrawableEEEE_e23_v16__0___MTLDrawable__8l;
  v5[3] = *(a2 + 24);
  v5[4] = 0;
  re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::operator=<24ul>(v5, a2);
  [v2 addPresentedHandler:v4];
  return re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(v5);
}

void ___ZNK2re3mtl8Drawable19addPresentedHandlerENS_8FunctionIFvRKS1_EEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  (*(**(a1 + 64) + 16))(*(a1 + 64), &v1);
}

uint64_t __copy_helper_block_a8_32c42_ZTSN2re8FunctionIFvRKNS_3mtl8DrawableEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  return re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::operator=<24ul>(a1 + 32, a2 + 32);
}

void re::mtl::Layer::nextDrawable(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this nextDrawable];
  *a2 = v3;
}

void re::mtl::Library::makeFunction(uint64_t *__return_ptr a1@<X8>, void **this@<X0>, re::mtl *a3@<X1>)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = re::mtl::convertToNSString(a3, a3);
  v7 = [v5 newFunctionWithName:v6];
  *a1 = v7;
  v8 = v7;

  if (!v7)
  {
    v10 = *re::graphicsLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = a3;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "makeFunction failed for function name: %s.", &v11, 0xCu);
    }
  }
}

void re::mtl::Library::makeFunctionWithDescriptor(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v6 = [*a1 newFunctionWithDescriptor:a2 error:&v40];
  if (v6)
  {
    if ([a2 constantValues])
    {
      v7 = [a2 name];
      v8 = [*a1 newFunctionWithName_];
      v9 = [a2 constantValues];
      if ((atomic_load_explicit(&qword_1EE1B7B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B48))
      {
        re::Defaults::BOOLValue(buf, "enableFunctionConstantLabels", v34);
        if (buf[0])
        {
          v35 = buf[1];
        }

        else
        {
          v35 = 0;
        }

        _MergedGlobals_427 = v35;
        __cxa_guard_release(&qword_1EE1B7B48);
      }

      if (_MergedGlobals_427)
      {
        v37 = v6;
        v38 = a3;
        v10 = [v8 functionConstantsDictionary];
        v36 = v8;
        std::string::basic_string[abi:nn200100]<0>(&v39, [objc_msgSend(v8 name)]);
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v42 objects:buf count:16];
        if (!v12)
        {
          goto LABEL_33;
        }

        v13 = v12;
        v14 = *v43;
        while (1)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v42 + 1) + 8 * i);
            v17 = [v11 objectForKeyedSubscript:v16];
            if (!v9 || (v18 = [v9 constantValueWithFunctionConstant:v17]) == 0)
            {
              if ([v17 type] != 53)
              {
                goto LABEL_31;
              }

              v21 = &off_1E871E7E8;
              v22 = 176;
              while (1)
              {
                v23 = *(v21 - 2);
                if ([v17 index] == v23)
                {
                  break;
                }

                v21 += 2;
                v22 -= 16;
                if (!v22)
                {
                  goto LABEL_31;
                }
              }

              v26 = *v21;
              std::string::append(&v39, "-");
              v20 = v26;
              goto LABEL_30;
            }

            v19 = v18;
            if ([v17 type] == 53)
            {
              if ([v17 type] == 53 && *v19 == 1)
              {
                std::string::append(&v39, "-");
                v20 = [v16 UTF8String];
LABEL_30:
                std::string::append(&v39, v20);
              }
            }

            else
            {
              std::string::append(&v39, "-");
              std::string::append(&v39, [v16 UTF8String]);
              std::string::append(&v39, ":");
              std::to_string(&v41, *v19);
              if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v24 = &v41;
              }

              else
              {
                v24 = v41.__r_.__value_.__r.__words[0];
              }

              if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v41.__r_.__value_.__l.__size_;
              }

              std::string::append(&v39, v24, size);
              if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v41.__r_.__value_.__l.__data_);
              }
            }

LABEL_31:
          }

          v13 = [v11 countByEnumeratingWithState:&v42 objects:buf count:16];
          if (!v13)
          {
LABEL_33:

            v6 = v37;
            a3 = v38;
            v8 = v36;
            goto LABEL_38;
          }
        }
      }

      std::string::basic_string[abi:nn200100]<0>(&v39, "");
LABEL_38:
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v39;
      }

      else
      {
        v32 = v39.__r_.__value_.__r.__words[0];
      }

      v33 = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:4];
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      [v6 setLabel_];
      if (v33)
      {
      }

      if (v8)
      {
      }

      if (v7)
      {
      }
    }
  }

  else
  {
    v27 = [v40 code];
    if (v27 != 5)
    {
      v28 = *re::graphicsLogObjects(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = v40;
        v30 = v28;
        v31 = [objc_msgSend(v29 localizedDescription)];
        *buf = 136315138;
        v47 = v31;
        _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "makeFunctionWithDescriptor error [%s].", buf, 0xCu);
      }
    }
  }

  *a3 = v6;
}

void re::mtl::Library::functionNames(id *this@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*this functionNames];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) UTF8String];
        v9 = re::DynamicArray<re::DynamicString>::add(a2, &v10);
        if (v10 && (v11 & 1) != 0)
        {
          (*(*v10 + 40))(v9);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:{16, v9}];
    }

    while (v5);
  }
}

void re::mtl::reflectionArguments(re::mtl *this@<X0>, uint64_t a2@<X8>)
{
  v3 = [-[re::mtl reflectionWithOptions:](this reflectionWithOptions_];
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = [v3 count];
  if (v4)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a2, v4);
  }

  v5 = [v3 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [v3 objectAtIndex_];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(a2, &v8);
      if (v8)
      {
      }
    }
  }
}

uint64_t re::mtl::commandQueueSupportsDisableAsyncCompletionDispatch(re::mtl *this)
{
  if (qword_1EE1B7B50 != -1)
  {
    dispatch_once(&qword_1EE1B7B50, &__block_literal_global_54_1);
  }

  return byte_1EE1B7B21;
}

void ___ZN2re3mtl50commandQueueSupportsDisableAsyncCompletionDispatchEv_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E6974018] alloc)];
  byte_1EE1B7B21 = [v0 respondsToSelector_];
  if (v0)
  {
  }
}

__n128 re::mtl::getTextureLevelInfo@<Q0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  MTLGetTextureLevelInfoForDeviceWithOptions();
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;

  result = v11;
  *(a2 + 88) = v11;
  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::MeshVisitor::visitVFXScene(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1010))
  {
    return 0;
  }

  else
  {
    return (*(a2 + 472) != 0.0) & (*(a2 + 716) ^ 1u);
  }
}

uint64_t re::MeshVisitor::visitMeshInstance(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a1 + 292) == 1 && *(a2 + 128) != 1)
  {
    return 0;
  }

  v5 = *(a2 + 56);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = (*v5 ^ 0x180197E) & ~*(*(a2 + 56) + 4) | *v5 & *(*(a2 + 56) + 4);
  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if ((v6 & 8) != 0)
  {
LABEL_6:
    v7 = *(a1 + 192);
    if (!*v7 || re::boundingBoxIntersectFrustums(*(a2 + 32), *(a2 + 24), v7))
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v8 = &v63;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 184);
    v12 = *(a2 + 24);
    v13 = *v11;
    v14 = v11[1];
    v15 = v11[2];
    v16 = v11[3];
    v17 = v12[1];
    v18 = v12[2];
    v19 = v12[3];
    *v54 = *v12;
    *&v54[16] = v17;
    *&v54[32] = v18;
    v55 = v19;
    do
    {
      *(&v63 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&v54[v10])), v14, *&v54[v10], 1), v15, *&v54[v10], 2), v16, *&v54[v10], 3);
      v10 += 16;
    }

    while (v10 != 64);
    *v54 = v63;
    *&v54[16] = v64;
    *&v54[32] = v65;
    v55 = v66;
    v20 = v9[2].i64[1];
    if (!v20)
    {
      *(a1 + 288) = 1;
      *(a1 + 280) = -65280;
      goto LABEL_36;
    }

    v21 = v9[3].i64[0];
    v22 = 48 * v20 - 48;
    v23 = v21;
    do
    {
      v24 = *v23;
      v23 += 12;
      v25 = vabds_f32(v24, *v21);
      v26 = v25 > 0.00001 || v22 == 0;
      v22 -= 48;
    }

    while (!v26);
    v28 = *(v21 + 4);
    v27 = (v21 + 4);
    v29 = v28;
    v30 = 48 * v20;
    while (vabds_f32(*v27, v29) <= 0.00001)
    {
      v27 += 12;
      v30 -= 48;
      if (!v30)
      {
        goto LABEL_33;
      }
    }

    if (v25 > 0.00001)
    {
LABEL_33:
      v34 = re::selectMeshLodByScreenArea(v9, v54, v11[4].f32, a1 + 280, 2);
      goto LABEL_35;
    }

    v34 = re::selectMeshLodByViewDepth(v9, v54, a1 + 280, 2);
LABEL_35:
    *(a1 + 288) = v34;
    if (v34)
    {
LABEL_36:
      v35 = 0;
      v36 = a1 + 200;
      while (1)
      {
        if (v35 == 2)
        {
          goto LABEL_52;
        }

        v8 = v9[2].i64[1];
        if (v8)
        {
          v2 = *(a1 + 280 + 4 * v35);
          if (v8 <= v2)
          {
            goto LABEL_53;
          }

          re::DynamicArray<unsigned long long>::operator=(v36 + 40 * v35, (v9[3].i64[0] + 48 * *(a1 + 280 + 4 * v35) + 8));
        }

        else
        {
          v8 = (v36 + 40 * v35);
          re::DynamicArray<double>::resize(v8, *(a2 + 8));
          v37 = *(a2 + 8);
          if (v37)
          {
            v38 = 0;
            v2 = *(v8 + 2);
            while (v2 != v38)
            {
              *(*(v8 + 4) + 8 * v38) = v38;
              if (v37 == ++v38)
              {
                goto LABEL_45;
              }
            }

            v53 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v40 = MEMORY[0x1E69E9C10];
            v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v56 = 136315906;
            *&v56[4] = "operator[]";
            v57 = 1024;
            if (v41)
            {
              v42 = 3;
            }

            else
            {
              v42 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = v2;
            v61 = 2048;
            v62 = v2;
            _os_log_send_and_compose_impl(v42, &v53, &v63, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v51, v52);
            _os_crash_msg();
            __break(1u);
LABEL_52:
            re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, 2, 2);
            _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v49, v50);
            __break(1u);
LABEL_53:
            v53 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v43 = MEMORY[0x1E69E9C10];
            v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v56 = 136315906;
            *&v56[4] = "operator[]";
            v57 = 1024;
            if (v44)
            {
              v45 = 3;
            }

            else
            {
              v45 = 2;
            }

            v58 = 476;
            v59 = 2048;
            v60 = v2;
            v61 = 2048;
            v62 = v8;
            _os_log_send_and_compose_impl(v45, &v53, &v63, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v51, v52);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            *v56 = 0;
            v8[3] = 0u;
            v8[4] = 0u;
            v8[1] = 0u;
            v8[2] = 0u;
            v63 = 0u;
            v46 = MEMORY[0x1E69E9C10];
            v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v54 = 136315906;
            *&v54[4] = "operator[]";
            *&v54[12] = 1024;
            if (v47)
            {
              v48 = 3;
            }

            else
            {
              v48 = 2;
            }

            *&v54[14] = 789;
            *&v54[18] = 2048;
            *&v54[20] = v9;
            *&v54[28] = 2048;
            *&v54[30] = v9;
            _os_log_send_and_compose_impl(v48, v56, &v63, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v54, 38, v51, v52);
            _os_crash_msg();
            __break(1u);
          }
        }

LABEL_45:
        if (++v35 >= *(a1 + 288))
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v31 = 1;
  *(a1 + 288) = 1;
  *(a1 + 280) = -65280;
  if (*(a2 + 8))
  {
    v32 = *(a2 + 8);
  }

  else
  {
    v32 = *(a2 + 120);
  }

  re::DynamicArray<double>::resize(a1 + 200, v32);
  if (v32)
  {
    v33 = 0;
    v9 = *(a1 + 216);
    do
    {
      if (v9 == v33)
      {
        goto LABEL_57;
      }

      *(*(a1 + 232) + 8 * v33) = v33;
      v33 = (v33 + 1);
    }

    while (v32 != v33);
    return 1;
  }

  return v31;
}

uint64_t re::MeshVisitor::findLevelIndex(re::MeshVisitor *this, uint64_t a2)
{
  v2 = *(this + 72);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = this + 200;
  while (1)
  {
    if (result == 2)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, 2, 2);
      result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v10, v11);
      __break(1u);
      return result;
    }

    v6 = &v5[40 * result];
    v7 = *(v6 + 2);
    if (v7)
    {
      break;
    }

LABEL_8:
    if (++result == v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8 = *(v6 + 4);
  v9 = 8 * v7;
  while (*v8 != a2)
  {
    ++v8;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (***re::PatchHandler::setHandler(void *a1, void *a2))(void)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(**a1 + 32);
  v5 = a2;
  v6 = v4(v3, 8, 8);
  *v6 = 0;
  v7 = _Block_copy(v5);
  v8 = *v6;
  *v6 = v7;

  a1[1] = v6;
  v9 = *a1;
  v11 = re::globalAllocators(v10)[2];
  v14[0] = &unk_1F5D03518;
  v14[3] = v11;
  v14[4] = v14;
  v12 = *(*v9 + 16);

  v12(v9, v6, v14);
  return re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v14);
}

void *_ZNK2re8internal8CallableIZNS_12PatchHandler10setHandlerEU13block_pointerFvPK13simd_float4x4iDv3_fEE3__0FvPvEJEE9cloneIntoESA_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03518;
  return result;
}

void *_ZN2re8internal8CallableIZNS_12PatchHandler10setHandlerEU13block_pointerFvPK13simd_float4x4iDv3_fEE3__0FvPvEJEE8moveIntoESA_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03518;
  return result;
}

void *re::allocInfo_StencilInfoData(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_428))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7D20, "StencilInfoData");
    __cxa_guard_release(&_MergedGlobals_428);
  }

  return &unk_1EE1B7D20;
}

void re::initInfo_StencilInfoData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xAD42BCD4890DDE68;
  v16[1] = "StencilInfoData";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B7B68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B68))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7B60 = v14;
    __cxa_guard_release(&qword_1EE1B7B68);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000020;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B7B60;
  *(this + 9) = re::internal::defaultConstruct<re::StencilInfoData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StencilInfoData>;
  *(this + 13) = re::internal::defaultConstructV2<re::StencilInfoData>;
  *(this + 14) = re::internal::defaultDestructV2<re::StencilInfoData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::StencilInfoData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5D03570;
  *&result = 134217472;
  a3[1] = 134217472;
  a3[2] = 134217472;
  return result;
}

double re::internal::defaultConstructV2<re::StencilInfoData>(void *a1)
{
  *a1 = &unk_1F5D03570;
  *&result = 134217472;
  a1[1] = 134217472;
  a1[2] = 134217472;
  return result;
}

void *re::allocInfo_ViewportData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7B70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7DB0, "ViewportData");
    __cxa_guard_release(&qword_1EE1B7B70);
  }

  return &unk_1EE1B7DB0;
}

void re::initInfo_ViewportData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x3F1D7E5A3F4DDB20;
  v24[1] = "ViewportData";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1B7B78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B78))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7BF0 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::mtl::introspect_Viewport(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "viewport";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x800000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7BF8 = v22;
    __cxa_guard_release(&qword_1EE1B7B78);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B7BF0;
  *(this + 9) = re::internal::defaultConstruct<re::ViewportData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ViewportData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ViewportData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ViewportData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::ViewportData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5D035B0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0x3F80000000000000;
}

void *re::internal::defaultConstructV2<re::ViewportData>(void *result)
{
  *result = &unk_1F5D035B0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  return result;
}

void *re::allocInfo_VRRData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7E40, "VRRData");
    __cxa_guard_release(&qword_1EE1B7B80);
  }

  return &unk_1EE1B7E40;
}

void re::initInfo_VRRData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x24ABD26BC0;
  v20[1] = "VRRData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B7B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B88))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7C00 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "vrrEnabled";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0xC00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7C08 = v18;
    __cxa_guard_release(&qword_1EE1B7B88);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B7C00;
  *(this + 9) = re::internal::defaultConstruct<re::VRRData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VRRData>;
  *(this + 13) = re::internal::defaultConstructV2<re::VRRData>;
  *(this + 14) = re::internal::defaultDestructV2<re::VRRData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::VRRData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D035F0;
  *(a3 + 8) = -1;
  *(a3 + 12) = 0;
}

uint64_t re::internal::defaultConstructV2<re::VRRData>(uint64_t result)
{
  *result = &unk_1F5D035F0;
  *(result + 8) = -1;
  *(result + 12) = 0;
  return result;
}

void *re::allocInfo_ThreadGroupMemoryData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7ED0, "ThreadGroupMemoryData");
    __cxa_guard_release(&qword_1EE1B7B90);
  }

  return &unk_1EE1B7ED0;
}

void re::initInfo_ThreadGroupMemoryData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0xED88CD191AFD3940;
  v24[1] = "ThreadGroupMemoryData";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1B7B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B98))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7C20 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_size_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "totalBytes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7C28 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "threadgroupMemoryEnabled";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x800000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7C30 = v22;
    __cxa_guard_release(&qword_1EE1B7B98);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B7C20;
  *(this + 9) = re::internal::defaultConstruct<re::ThreadGroupMemoryData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ThreadGroupMemoryData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ThreadGroupMemoryData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ThreadGroupMemoryData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::ThreadGroupMemoryData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D03630;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ThreadGroupMemoryData>(uint64_t result)
{
  *result = &unk_1F5D03630;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::allocInfo_TriangleFillModeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7F60, "TriangleFillModeData");
    __cxa_guard_release(&qword_1EE1B7BA0);
  }

  return &unk_1EE1B7F60;
}

void re::initInfo_TriangleFillModeData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x5E010951CB0401B0;
  v20[1] = "TriangleFillModeData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B7BA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BA8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7C10 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::mtl::introspect_TriangleFillMode(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "triangleFillMode";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7C18 = v18;
    __cxa_guard_release(&qword_1EE1B7BA8);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B7C10;
  *(this + 9) = re::internal::defaultConstruct<re::TriangleFillModeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TriangleFillModeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::TriangleFillModeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::TriangleFillModeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::introspect_ViewMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Mono";
    re::introspect_ViewMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "SinglePass";
    qword_1EE1C6B58 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "DualPass";
    qword_1EE1C6B60 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_ViewMode(BOOL)::info, "ViewMode", 1, 1, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::introspect_ViewMode(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_ViewMode(BOOL)::isInitialized)
    {
      return &re::introspect_ViewMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::introspect_ViewMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::introspect_ViewMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_ViewMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_ViewMode(BOOL)::info;
    }
  }

  re::introspect_ViewMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_ViewMode(BOOL)::info, a2);
  v16[0] = 0x47A963CE410;
  v16[1] = "ViewMode";
  xmmword_1EE1C6B28 = v17;
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

  return &re::introspect_ViewMode(BOOL)::info;
}

void *re::allocInfo_FilterMapAtlasData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7FF0, "FilterMapAtlasData");
    __cxa_guard_release(&qword_1EE1B7BB0);
  }

  return &unk_1EE1B7FF0;
}

void re::initInfo_FilterMapAtlasData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x4F2768EAB2372922;
  v32[1] = "FilterMapAtlasData";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B7BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BB8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7C58 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "atlasWidth";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7C60 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_uint32_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "atlasHeight";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xC00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7C68 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::mtl::introspect_PixelFormat(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "format";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B7C70 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_uint64_t(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "protectionOptions";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1800000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B7C78 = v30;
    __cxa_guard_release(&qword_1EE1B7BB8);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B7C58;
  *(this + 9) = re::internal::defaultConstruct<re::FilterMapAtlasData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FilterMapAtlasData>;
  *(this + 13) = re::internal::defaultConstructV2<re::FilterMapAtlasData>;
  *(this + 14) = re::internal::defaultDestructV2<re::FilterMapAtlasData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void re::internal::defaultConstruct<re::FilterMapAtlasData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D036D0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 115;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::FilterMapAtlasData>(uint64_t result)
{
  *result = &unk_1F5D036D0;
  *(result + 8) = 0;
  *(result + 16) = 115;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_ShadowMapAtlasData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B8080, "ShadowMapAtlasData");
    __cxa_guard_release(&qword_1EE1B7BC0);
  }

  return &unk_1EE1B8080;
}

void re::initInfo_ShadowMapAtlasData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0xD3AD1B4260300C72;
  v28[1] = "ShadowMapAtlasData";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1B7BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BC8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7C38 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "atlasWidth";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7C40 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_uint32_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "atlasHeight";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xC00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7C48 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::mtl::introspect_PixelFormat(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "format";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B7C50 = v26;
    __cxa_guard_release(&qword_1EE1B7BC8);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B7C38;
  *(this + 9) = re::internal::defaultConstruct<re::ShadowMapAtlasData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ShadowMapAtlasData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ShadowMapAtlasData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ShadowMapAtlasData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v27 = v29;
}

void re::internal::defaultConstruct<re::ShadowMapAtlasData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D03710;
  *(a3 + 8) = 0;
  *(a3 + 16) = 252;
}

uint64_t re::internal::defaultConstructV2<re::ShadowMapAtlasData>(uint64_t result)
{
  *result = &unk_1F5D03710;
  *(result + 8) = 0;
  *(result + 16) = 252;
  return result;
}

void *re::allocInfo_CameraData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BD0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B8110, "CameraData");
    __cxa_guard_release(&qword_1EE1B7BD0);
  }

  return &unk_1EE1B8110;
}

void re::initInfo_CameraData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v71[0] = 0xD325DFDB7D11ELL;
  v71[1] = "CameraData";
  if (v71[0])
  {
    if (v71[0])
    {
    }
  }

  *(this + 2) = v72;
  if ((atomic_load_explicit(&qword_1EE1B7BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BD8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7CA8 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector4F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "clearColor";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x33000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B7CB0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clearDepth";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x34000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B7CB8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_BOOL(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "loadDepth";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x35800000004;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1B7CC0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_BOOL(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "saveDepth";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x35900000005;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1B7CC8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_BOOL(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "loadStencil";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x35A00000006;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1B7CD0 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "saveStencil";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x35B00000007;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1B7CD8 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_BOOL(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "drawDebug";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x35C00000008;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1B7CE0 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::introspect_BOOL(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "enableUnwarp";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x35D0000000ALL;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1B7CE8 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_uint32_t(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "msaaSamples";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0x3740000000BLL;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE1B7CF0 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::mtl::introspect_MultisampleDepthResolveFilter(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "depthResolveFilter";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0x37C0000000CLL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE1B7CF8 = v53;
    v54 = re::introspectionAllocator();
    v56 = re::mtl::introspect_MultisampleStencilResolveFilter(1, v55);
    v57 = (*(*v54 + 32))(v54, 72, 8);
    *v57 = 1;
    *(v57 + 8) = "stencilResolveFilter";
    *(v57 + 16) = v56;
    *(v57 + 24) = 0;
    *(v57 + 32) = 0x3800000000DLL;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0;
    *(v57 + 56) = 0;
    *(v57 + 64) = 0;
    qword_1EE1B7D00 = v57;
    v58 = re::introspectionAllocator();
    Action = re::mtl::introspect_LoadAction(1, v59);
    v61 = (*(*v58 + 32))(v58, 72, 8);
    *v61 = 1;
    *(v61 + 8) = "colorLoadAction";
    *(v61 + 16) = Action;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0x3840000000ELL;
    *(v61 + 40) = 0;
    *(v61 + 48) = 0;
    *(v61 + 56) = 0;
    *(v61 + 64) = 0;
    qword_1EE1B7D08 = v61;
    v62 = re::introspectionAllocator();
    v64 = re::introspect_uint32_t(1, v63);
    v65 = (*(*v62 + 32))(v62, 72, 8);
    *v65 = 1;
    *(v65 + 8) = "clearStencil";
    *(v65 + 16) = v64;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0x38C0000000FLL;
    *(v65 + 40) = 0;
    *(v65 + 48) = 0;
    *(v65 + 56) = 0;
    *(v65 + 64) = 0;
    qword_1EE1B7D10 = v65;
    v66 = re::introspectionAllocator();
    v68 = re::introspect_BOOL(1, v67);
    v69 = (*(*v66 + 32))(v66, 72, 8);
    *v69 = 1;
    *(v69 + 8) = "skipManagedForceClear";
    *(v69 + 16) = v68;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0x35E00000010;
    *(v69 + 40) = 0;
    *(v69 + 48) = 0;
    *(v69 + 56) = 0;
    *(v69 + 64) = 0;
    qword_1EE1B7D18 = v69;
    __cxa_guard_release(&qword_1EE1B7BD8);
  }

  *(this + 2) = 0x3C000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE1B7CA8;
  *(this + 9) = re::internal::defaultConstruct<re::CameraData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CameraData>;
  *(this + 13) = re::internal::defaultConstructV2<re::CameraData>;
  *(this + 14) = re::internal::defaultDestructV2<re::CameraData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v70 = v72;
}

double re::internal::defaultDestruct<re::CameraData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(a3 + 920);
  *(a3 + 768) = 0;
  ++*(a3 + 776);
  *(a3 + 624) = 0;
  ++*(a3 + 632);
  *(a3 + 128) = 0;
  ++*(a3 + 136);
  *(a3 + 48) = 0;
  ++*(a3 + 56);

  return re::DynamicString::deinit((a3 + 8));
}

double re::internal::defaultDestructV2<re::CameraData>(uint64_t a1)
{
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(a1 + 920);
  *(a1 + 768) = 0;
  ++*(a1 + 776);
  *(a1 + 624) = 0;
  ++*(a1 + 632);
  *(a1 + 128) = 0;
  ++*(a1 + 136);
  *(a1 + 48) = 0;
  ++*(a1 + 56);

  return re::DynamicString::deinit((a1 + 8));
}

void *re::allocInfo_CameraMatrices(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B81A0, "CameraMatrices");
    __cxa_guard_release(&qword_1EE1B7BE0);
  }

  return &unk_1EE1B81A0;
}

void re::initInfo_CameraMatrices(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0xF750B3A91D24CF7ELL;
  v32[1] = "CameraMatrices";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B7BE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BE8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_RenderGraphData(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "RenderGraphData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7C80 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "worldToView";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7C88 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "viewToProjRender";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3000000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7C90 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint8_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "viewportCount";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xA000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B7C98 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "viewToProjCulling";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x5800000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B7CA0 = v30;
    __cxa_guard_release(&qword_1EE1B7BE8);
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B7C80;
  *(this + 9) = re::internal::defaultConstruct<re::CameraMatrices>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CameraMatrices>;
  *(this + 13) = re::internal::defaultConstructV2<re::CameraMatrices>;
  *(this + 14) = re::internal::defaultDestructV2<re::CameraMatrices>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

double re::internal::defaultConstruct<re::CameraMatrices>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D03790;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  *(a3 + 160) = 1;
  return result;
}

uint64_t re::internal::defaultDestruct<re::CameraMatrices>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 88);
  re::DynamicArray<unsigned long>::deinit(a3 + 48);

  return re::DynamicArray<unsigned long>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::CameraMatrices>(uint64_t a1)
{
  *a1 = &unk_1F5D03790;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 160) = 1;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::CameraMatrices>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 88);
  re::DynamicArray<unsigned long>::deinit(a1 + 48);

  return re::DynamicArray<unsigned long>::deinit(a1 + 8);
}

unint64_t re::ThreadGroupMemoryData::hash(re::ThreadGroupMemoryData *this)
{
  v1 = *(this + 2) * *(this + 8);
  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v1 ^ (v1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v1 ^ (v1 >> 30))) >> 27));
  return v2 ^ (v2 >> 31);
}

re::CameraData *re::CameraData::CameraData(re::CameraData *this)
{
  *this = &unk_1F5D03750;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = (this + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(this + 51) = 0u;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 78) = 0;
  *(this + 158) = 0;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 208) = 0;
  *(this + 840) = 0u;
  *(this + 214) = 0;
  *(this + 860) = 0x10101000001;
  *(this + 217) = 1065353216;
  *(this + 436) = 1;
  *(this + 876) = 0;
  *(this + 221) = 1;
  *(this + 890) = 1;
  *(this + 225) = 2;
  *(this + 113) = 0xFFFFFFFFLL;
  *(this + 912) = 0;
  *(this + 118) = re::globalAllocators(v3)[2];
  *(this + 119) = 0;
  return this;
}

void re::CameraData::~CameraData(re::CameraData *this)
{
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(this + 920);
  *(this + 96) = 0;
  ++*(this + 194);
  *(this + 78) = 0;
  ++*(this + 158);
  *(this + 16) = 0;
  ++*(this + 34);
  *(this + 6) = 0;
  ++*(this + 14);
  re::DynamicString::deinit((this + 8));
}

{
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(this + 920);
  *(this + 96) = 0;
  ++*(this + 194);
  *(this + 78) = 0;
  ++*(this + 158);
  *(this + 16) = 0;
  ++*(this + 34);
  *(this + 6) = 0;
  ++*(this + 14);
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::CameraMatrices::~CameraMatrices(re::CameraMatrices *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::MetalFunctionConfiguration::generateKey(re::MetalFunctionConfiguration *this)
{
  if (*this == 1)
  {
    v2 = re::Hash<re::DynamicString>::operator()(&v6, this + 1);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 40) == 1)
  {
    v3 = re::Hash<re::DynamicString>::operator()(&v7, this + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = re::TechniqueDefinitionBuilder::hashFunctionConstants(*(this + 14), *(this + 12), 1);
  return ((((((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
}

void *re::MetalFunctionConfiguration::permutationString@<X0>(re::MetalFunctionConfiguration *this@<X0>, re::DynamicString *a2@<X8>)
{
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  result = re::DynamicString::setCapacity(a2, 0x80uLL);
  v5 = *(this + 12);
  if (v5)
  {
    v6 = (*(this + 14) + 36);
    v7 = 104 * v5;
    do
    {
      if (*(v6 - 28))
      {
        v8 = *(v6 - 20);
      }

      else
      {
        v8 = v6 - 27;
      }

      v9 = *v6;
      v6 += 13;
      result = re::DynamicString::appendf(a2, "%s=%llu ", v8, v9);
      v7 -= 104;
    }

    while (v7);
  }

  return result;
}

uint64_t re::getOrCreateMetalFunction(re *this, const re::RenderManager *a2, const re::DynamicString *a3, const re::MetalFunctionConfiguration *a4)
{
  v75 = *MEMORY[0x1E69E9840];
  Key = re::MetalFunctionConfiguration::generateKey(a3);
  v62 = ((Key << 6) + (Key >> 2) + re::Hash<re::DynamicString>::operator()(v71, a2) - 0x61C8864680B583E9) ^ Key;
  v8 = *(this + 6);
  v9 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v8 + 56, &v62);
  if (!v9)
  {
    if ((*(a3 + 128) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_1EE1B8238, memory_order_acquire) & 1) == 0)
      {
        v56 = __cxa_guard_acquire(&qword_1EE1B8238);
        if (v56)
        {
          _MergedGlobals_429 = *re::AppleBuild::get(v56) == 1;
          __cxa_guard_release(&qword_1EE1B8238);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1B8240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8240))
      {
        re::Defaults::BOOLValue(v71, "shouldCrashOnRuntimeCompilation", v57);
        if (LOBYTE(v71[0]))
        {
          v58 = v71 + 1;
        }

        else
        {
          v58 = &_MergedGlobals_429;
        }

        byte_1EE1B8231 = *v58;
        __cxa_guard_release(&qword_1EE1B8240);
      }
    }

    v10 = mach_absolute_time();
    if (*(a3 + 15))
    {
      v11 = *(this + 6);
      v71[0] = *(a3 + 15);
      v12 = v11 + 376;
    }

    else
    {
      v13 = *(this + 6);
      if (*a3 != 1)
      {
        v16 = (v13 + 360);
        goto LABEL_15;
      }

      if (*(a3 + 2))
      {
        v14 = *(a3 + 3);
      }

      else
      {
        v14 = a3 + 17;
      }

      v71[0] = re::ShaderManager::getLibraryHash(*(this + 6), v14);
      v12 = v13 + 376;
    }

    result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v12, v71);
    if (!result)
    {
      return result;
    }

    v16 = (result + 8);
LABEL_15:
    v61 = [objc_msgSend(MEMORY[0x1E6974060] alloc)];
    v17 = *(a3 + 12);
    if (v17)
    {
      v18 = 104 * v17;
      v19 = *(a3 + 14) + 36;
      do
      {
        [v61 setConstantValue:v19 type:*(v19 - 4) atIndex:*(v19 - 2)];
        v19 += 104;
        v18 -= 104;
      }

      while (v18);
    }

    v20 = *(this + 6);
    if (*a3)
    {
      if (*(a3 + 2))
      {
        v21 = *(a3 + 3);
      }

      else
      {
        v21 = a3 + 17;
      }

      LibraryHash = re::ShaderManager::getLibraryHash(v20, v21);
      v20 = *(this + 6);
    }

    else
    {
      LibraryHash = *(v20 + 46);
    }

    if (*(a3 + 15))
    {
      v23 = *(a3 + 15);
    }

    else
    {
      v23 = LibraryHash;
    }

    if (*(a2 + 1))
    {
      v24 = *(a2 + 2);
    }

    else
    {
      v24 = a2 + 9;
    }

    re::ShaderManager::makeFunctionDescriptor(v20, v24, &v61, v16, v23, &v60);
    if (*(a3 + 40) == 1)
    {
      if (*(a3 + 7))
      {
        v25 = *(a3 + 8);
      }

      else
      {
        v25 = a3 + 57;
      }

      [v60 setSpecializedName_];
    }

    v59 = 0;
    re::mtl::Library::makeFunctionWithDescriptor(v16, v60, v71);
    NS::SharedPtr<MTL::Texture>::operator=(&v59, v71);
    if (v71[0])
    {
    }

    v26 = mach_absolute_time();
    v27 = v26;
    v28 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v26 = mach_timebase_info(v71);
      if (v26)
      {
        v31 = NAN;
LABEL_42:
        v32 = (v31 / 1000000.0);
        v33 = *re::graphicsLogObjects(v26);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 1))
          {
            v34 = *(a2 + 2);
          }

          else
          {
            v34 = a2 + 9;
          }

          LODWORD(v71[0]) = 136446466;
          *(v71 + 4) = v34;
          WORD2(v71[1]) = 1024;
          *(&v71[1] + 6) = v32;
          _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "Function specialization completed for function %{public}s in %d", v71, 0x12u);
        }

        v35 = *(v8 + 40);
        v36 = *(v8 + 8);
        if (v35 + 1 > v36 << 6)
        {
          re::BucketArray<re::CachedMetalFunction,64ul>::setBucketsCapacity(v8, (v35 + 64) >> 6);
          v36 = *(v8 + 8);
        }

        if (v36 <= v35 >> 6)
        {
          *buf = 0;
          v73 = 0u;
          v74 = 0u;
          v72 = 0u;
          memset(v71, 0, sizeof(v71));
          v51 = MEMORY[0x1E69E9C10];
          v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v66 = 136315906;
          *&v66[4] = "operator[]";
          v67 = 1024;
          if (v52)
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          *v68 = 858;
          *&v68[4] = 2048;
          *&v68[6] = v35 >> 6;
          v69 = 2048;
          v70 = v36;
          _os_log_send_and_compose_impl(v53, buf, v71, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v59, v60);
          _os_crash_msg();
          __break(1u);
        }

        if (*(v8 + 16))
        {
          v37 = v8 + 24;
        }

        else
        {
          v37 = *(v8 + 32);
        }

        v38 = *(v37 + 8 * (v35 >> 6));
        v39 = *(v8 + 40);
        *(v8 + 40) = v39 + 1;
        ++*(v8 + 48);
        *(v38 + 8 * (v35 & 0x3F)) = v59;
        v59 = 0;
        memset(v71, 0, 24);
        v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v62 ^ (v62 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v62 ^ (v62 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v8 + 56, &v62, v40 ^ (v40 >> 31), v71);
        if (HIDWORD(v71[1]) == 0x7FFFFFFF)
        {
          v41 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v8 + 56, v71[1], v71[0]);
          v42 = v62;
          *(v41 + 16) = v39;
          v9 = (v41 + 16);
          *(v41 + 8) = v42;
          ++*(v8 + 96);
        }

        else
        {
          v9 = (*(v8 + 72) + 32 * HIDWORD(v71[1]) + 16);
        }

        if ((atomic_load_explicit(&qword_1EE1B8248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8248))
        {
          re::Defaults::BOOLValue(v71, "enableShaderDebugLogs", v54);
          if (LOBYTE(v71[0]))
          {
            v55 = BYTE1(v71[0]);
          }

          else
          {
            v55 = 0;
          }

          byte_1EE1B8232 = v55;
          __cxa_guard_release(&qword_1EE1B8248);
        }

        if (v32 > 10 || byte_1EE1B8232 == 1)
        {
          re::MetalFunctionConfiguration::permutationString(a3, v71);
          if (*(a2 + 1))
          {
            v44 = *(a2 + 2);
          }

          else
          {
            v44 = a2 + 9;
          }

          if (v71[1])
          {
            v45 = v71[2];
          }

          else
          {
            v45 = &v71[1] + 1;
          }

          re::DynamicString::format(v66, "name=%s fc=%s", v43, v44, v45);
          isFrameCaptureEnabled = re::mtl::Device::isFrameCaptureEnabled((this + 208));
          v47 = isFrameCaptureEnabled;
          v48 = *re::graphicsLogObjects(isFrameCaptureEnabled);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = *&v68[2];
            v50 = "";
            if ((v66[8] & 1) == 0)
            {
              v49 = &v66[9];
            }

            if (v47)
            {
              v50 = "(frame capture enabled)";
            }

            *buf = 136446466;
            *&buf[4] = v49;
            v64 = 2080;
            v65 = v50;
            _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "Compiling PSO RT %{public}s %s", buf, 0x16u);
          }

          if (*v66 && (v66[8] & 1) != 0)
          {
            (*(**v66 + 40))();
          }

          if (v71[0] && (v71[1] & 1) != 0)
          {
            (*(*v71[0] + 40))();
          }
        }

        if (v59)
        {
        }

        if (v60)
        {
        }

        if (v61)
        {
        }

        return re::BucketArray<re::CachedMetalFunction,64ul>::operator[](v8, *v9);
      }

      LODWORD(v30) = HIDWORD(v71[0]);
      LODWORD(v29) = v71[0];
      v28 = v29 / v30;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v28;
    }

    v31 = v28 * (v27 - v10);
    goto LABEL_42;
  }

  return re::BucketArray<re::CachedMetalFunction,64ul>::operator[](v8, *v9);
}