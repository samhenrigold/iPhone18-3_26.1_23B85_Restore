void re::DynamicArray<re::GeomDeformer::Attribute>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(a1 + 32) + 8);
    do
    {
      re::StringID::destroyString(v4);
      v4 = (v4 + 40);
      v3 -= 40;
    }

    while (v3);
  }

  ++*(a1 + 24);
}

void *re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(v5, a2);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = &str_67;
          *(v11 + 3) = *(v12 + 1);
          re::StringID::destroyString(v12);
          v11 += 5;
          v8 = v12 + 4;
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

void *re::DynamicArray<re::GeomDeformer::Affector>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::DynamicArray<re::GeomDeformer::Attribute>::operator=(v13, v11);
        v11 += 5;
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = &v11[v15];
      result = (v13 + 8 * v15);
      v17 = 40 * v4 - 8 * v15;
      do
      {
        v18 = re::DynamicArray<re::GeomDeformer::Attribute>::DynamicArray(result, v16);
        v16 += 5;
        result = (v18 + 40);
        v17 -= 40;
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
      v8 = 40 * v4;
      do
      {
        result = re::DynamicArray<re::GeomDeformer::Attribute>::operator=(v6, v7);
        v7 += 5;
        v6 += 40;
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<re::GeomDeformer::Attribute>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::GeomDeformer::Affector>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      result = re::DynamicArray<re::GeomDeformer::Attribute>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(v5, a2);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<re::GeomDeformer::Attribute>::deinit(v8);
          v8 += 40;
          v11 += 5;
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

uint64_t re::DynamicArray<re::GeomDeformer::Attribute>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::GeomDeformer::Attribute>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<int>,8ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::FixedArray<int>,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::FixedArray<int>,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::FixedArray<int>,8ul>::init(a1, v4, a2[1]);
      re::BucketArray<re::FixedArray<int>,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<float>,8ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::FixedArray<float>,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::FixedArray<int>,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::FixedArray<float>,8ul>::init(a1, v4, a2[1]);
      re::BucketArray<re::FixedArray<float>,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::FixedArray<int>,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::init(a1, v4, a2[1]);
      re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::init(a1, v4, a2[1]);
      re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::StringID,8ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::StringID,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::StringID,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::StringID,8ul>::init(a1, v4, a2[1]);
      re::BucketArray<re::StringID,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

unint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::operator=(unint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::Matrix4x4<float>,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::Matrix4x4<float>,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::Matrix4x4<float>,8ul>::init(a1, v4, a2[1]);
      re::BucketArray<re::Matrix4x4<float>,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

_anonymous_namespace_ *re::BucketArray<re::FixedArray<int>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FixedArray<int>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::FixedArray<int>,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::FixedArray<int>,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int>&,re::BucketArray<re::FixedArray<int>,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v28);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        v11 = v10 >> 3;
        v12 = *(a1 + 8);
        if (v12 <= v10 >> 3)
        {
          v19 = 0;
          memset(v28, 0, sizeof(v28));
          v16 = MEMORY[0x1E69E9C10];
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v23 = 858;
          v24 = 2048;
          v25 = v11;
          v26 = 2048;
          v27 = v12;
          _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
        }

        v13 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v13 = *(a1 + 32);
        }

        v14 = (*(v13 + 8 * v11) + 24 * (v10 & 7));
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a2, v10);
        re::FixedArray<int>::FixedArray(v14, v15);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int>&,re::BucketArray<re::FixedArray<int>,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v28);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a1, v5);
        re::FixedArray<CoreIKTransform>::deinit(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

uint64_t re::BucketArray<re::FixedArray<int>,8ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](v1, i);
      result = re::FixedArray<CoreIKTransform>::deinit(v4);
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::FixedArray<int>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 192, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

unint64_t re::BucketArray<re::FixedArray<int>,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 24 * (a2 & 7);
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int>&,re::BucketArray<re::FixedArray<int>,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a5, a6);
        re::FixedArray<int>::operator=(v16, v15);
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

_anonymous_namespace_ *re::BucketArray<re::FixedArray<float>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FixedArray<float>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::FixedArray<float>,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::FixedArray<float>,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float>&,re::BucketArray<re::FixedArray<float>,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v28);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        v11 = v10 >> 3;
        v12 = *(a1 + 8);
        if (v12 <= v10 >> 3)
        {
          v19 = 0;
          memset(v28, 0, sizeof(v28));
          v16 = MEMORY[0x1E69E9C10];
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v23 = 858;
          v24 = 2048;
          v25 = v11;
          v26 = 2048;
          v27 = v12;
          _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
        }

        v13 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v13 = *(a1 + 32);
        }

        v14 = (*(v13 + 8 * v11) + 24 * (v10 & 7));
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a2, v10);
        re::FixedArray<float>::FixedArray(v14, v15);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float>&,re::BucketArray<re::FixedArray<float>,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v28);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a1, v5);
        re::FixedArray<CoreIKTransform>::deinit(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

_anonymous_namespace_ *re::BucketArray<re::FixedArray<float>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 192, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float>&,re::BucketArray<re::FixedArray<float>,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a5, a6);
        re::FixedArray<float>::operator=(v16, v15);
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

_anonymous_namespace_ *re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3>&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v28);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        v11 = v10 >> 3;
        v12 = *(a1 + 8);
        if (v12 <= v10 >> 3)
        {
          v19 = 0;
          memset(v28, 0, sizeof(v28));
          v16 = MEMORY[0x1E69E9C10];
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v23 = 858;
          v24 = 2048;
          v25 = v11;
          v26 = 2048;
          v27 = v12;
          _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
        }

        v13 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v13 = *(a1 + 32);
        }

        v14 = (*(v13 + 8 * v11) + 24 * (v10 & 7));
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a2, v10);
        re::FixedArray<re::PackedFloat3>::FixedArray(v14, v15);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3>&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v28);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a1, v5);
        re::FixedArray<CoreIKTransform>::deinit(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

_anonymous_namespace_ *re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 192, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3>&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a5, a6);
        re::FixedArray<re::PackedFloat3>::operator=(v16, v15);
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

uint64_t *re::FixedArray<re::PackedFloat3>::operator=(uint64_t *a1, uint64_t *a2)
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
      re::FixedArray<re::PackedFloat3>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<re::PackedFloat3>::copy(a1, a2);
    }
  }

  return a1;
}

void re::FixedArray<re::PackedFloat3>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x1555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 12, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 12 * a3;
  v6 = (*(*a2 + 32))(a2, 12 * a3, 4);
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
    bzero(v6, v5 - 12);
    v8 += v5 - 12;
  }

  *v8 = 0;
  *(v8 + 2) = 0;
}

void *re::FixedArray<re::PackedFloat3>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 12 * v4);
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

uint64_t *re::FixedArray<re::PackedFloat3>::FixedArray(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::PackedFloat3>::init<>(a1, v4, a2[1]);
    re::FixedArray<re::PackedFloat3>::copy(a1, a2);
  }

  return a1;
}

_anonymous_namespace_ *re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v28);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        v11 = v10 >> 3;
        v12 = *(a1 + 8);
        if (v12 <= v10 >> 3)
        {
          v19 = 0;
          memset(v28, 0, sizeof(v28));
          v16 = MEMORY[0x1E69E9C10];
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v23 = 858;
          v24 = 2048;
          v25 = v11;
          v26 = 2048;
          v27 = v12;
          _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
        }

        v13 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v13 = *(a1 + 32);
        }

        v14 = *(v13 + 8 * v11) + 32 * (v10 & 7);
        v15 = re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator[](a2, v10);
        re::StringID::StringID(v14, v15);
        re::StringID::StringID((v14 + 16), v15 + 1);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v28);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](a1, v5);
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

void re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](a1, i);
      re::StringID::destroyString((v4 + 16));
      re::StringID::destroyString(v4);
    }
  }

  *(a1 + 40) = 0;
  ++*(a1 + 48);
}

_anonymous_namespace_ *re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 256, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

unint64_t re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 32 * (a2 & 7);
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](a5, a6);
        v17 = re::StringID::operator=(v16, v15);
        re::StringID::operator=(v17 + 2, v15 + 2);
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

_anonymous_namespace_ *re::BucketArray<re::StringID,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::StringID,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::StringID,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::StringID,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID&,re::BucketArray<re::StringID,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v28);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        v11 = v10 >> 3;
        v12 = *(a1 + 8);
        if (v12 <= v10 >> 3)
        {
          v19 = 0;
          memset(v28, 0, sizeof(v28));
          v16 = MEMORY[0x1E69E9C10];
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v23 = 858;
          v24 = 2048;
          v25 = v11;
          v26 = 2048;
          v27 = v12;
          _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
        }

        v13 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v13 = *(a1 + 32);
        }

        v14 = (*(v13 + 8 * v11) + 16 * (v10 & 7));
        v15 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a2, v10);
        re::StringID::StringID(v14, v15);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID&,re::BucketArray<re::StringID,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v28);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, v5);
        re::StringID::destroyString(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

void re::BucketArray<re::StringID,8ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, i);
      re::StringID::destroyString(v4);
    }
  }

  *(a1 + 40) = 0;
  ++*(a1 + 48);
}

_anonymous_namespace_ *re::BucketArray<re::StringID,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 128, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID&,re::BucketArray<re::StringID,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a5, a6);
        re::StringID::operator=(v16, v15);
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

_anonymous_namespace_ *re::BucketArray<re::Matrix4x4<float>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::Matrix4x4<float>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::Matrix4x4<float>,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::Matrix4x4<float>,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float>&,re::BucketArray<re::Matrix4x4<float>,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v30);
    v6 = *(a1 + 40);
    v7 = v4 - v6;
    if (v4 != v6)
    {
      v8 = 0;
      do
      {
        v9 = v8 + *(a1 + 40);
        v10 = v9 >> 3;
        v11 = *(a1 + 8);
        if (v11 <= v9 >> 3)
        {
          v21 = 0;
          memset(v30, 0, sizeof(v30));
          v18 = MEMORY[0x1E69E9C10];
          v22 = 136315906;
          v23 = "operator[]";
          v24 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          v25 = 858;
          v26 = 2048;
          v27 = v10;
          v28 = 2048;
          v29 = v11;
          _os_log_send_and_compose_impl(v19, &v21, v30, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
          _os_crash_msg();
          __break(1u);
        }

        v12 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v12 = *(a1 + 32);
        }

        v13 = (*(v12 + 8 * v10) + ((v9 & 7) << 6));
        v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a2, v9);
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v13[2] = v14[2];
        v13[3] = v15;
        *v13 = v17;
        v13[1] = v16;
        ++v8;
      }

      while (v7 != v8);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float>&,re::BucketArray<re::Matrix4x4<float>,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v30);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1, v5++);
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

unint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::clear(unint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      result = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v1, i);
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::Matrix4x4<float>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 512, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float>&,re::BucketArray<re::Matrix4x4<float>,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a5, a6);
        v17 = v15[3];
        v19 = *v15;
        v18 = v15[1];
        v16[2] = v15[2];
        v16[3] = v17;
        *v16 = v19;
        v16[1] = v18;
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

uint64_t re::DynamicArray<re::GeomDeformer::Affector>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::GeomDeformer::Affector>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<int>,8ul>::BucketArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::FixedArray<int>,8ul>::init(a1, v4, a2[1]);
    re::BucketArray<re::FixedArray<int>,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<float>,8ul>::BucketArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::FixedArray<float>,8ul>::init(a1, v4, a2[1]);
    re::BucketArray<re::FixedArray<float>,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::init(a1, v4, a2[1]);
    re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::init(a1, v4, a2[1]);
    re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::StringID,8ul>::BucketArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::StringID,8ul>::init(a1, v4, a2[1]);
    re::BucketArray<re::StringID,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::Matrix4x4<float>,8ul>::init(a1, v4, a2[1]);
    re::BucketArray<re::Matrix4x4<float>,8ul>::copy(a1, a2);
  }

  return a1;
}

re::DynamicString *re::make::shared::object<re::ShareableInternal<re::GeomModelDescriptor>,re::GeomModelDescriptor>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 240, 8);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *v5 = &unk_1F5CD00F8;
  *(v5 + 24) = *a2;
  *(v5 + 25) = *(a2 + 1);
  *(v5 + 28) = *(a2 + 4);
  v6 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v5 + 40) = v6;
  v7 = *(a2 + 32);
  *(v5 + 48) = *(a2 + 24);
  *(v5 + 56) = v7;
  *(a2 + 32) = 0;
  *(v5 + 64) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0;
  *(v8 + 72) = 0u;
  *(v5 + 108) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v8 + 72), (a2 + 48));
  *(v5 + 152) = 0;
  *(v5 + 144) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  v9 = *(a2 + 104);
  *(v5 + 120) = *(a2 + 96);
  *(v5 + 128) = v9;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v10 = *(v5 + 136);
  *(v5 + 136) = *(a2 + 112);
  *(a2 + 112) = v10;
  v11 = *(v5 + 152);
  *(v5 + 152) = *(a2 + 128);
  *(a2 + 128) = v11;
  ++*(a2 + 120);
  ++*(v5 + 144);
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0;
  *(v5 + 160) = 0u;
  *(v5 + 196) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v5 + 160), (a2 + 136));
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 232) = *(a2 + 208);
  v12 = *(a2 + 192);
  *(v5 + 208) = *(a2 + 184);
  *(a2 + 184) = 0;
  v13 = *(a2 + 200);
  *(a2 + 208) = 0;
  v15 = *(v5 + 216);
  v14 = *(v5 + 224);
  *(v5 + 216) = v12;
  *(v5 + 224) = v13;
  *(a2 + 192) = v15;
  *(a2 + 200) = v14;
  result = re::GeomModelDescriptor::reset(a2);
  *a1 = v5;
  return result;
}

uint64_t *re::ShareableInternal<re::GeomModelDescriptor>::~ShareableInternal(uint64_t *a1)
{
  *a1 = &unk_1F5CD00F8;
  re::DynamicString::deinit((a1 + 26));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 20);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit((a1 + 15));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 9);
  v2 = a1[8];
  if (v2)
  {

    a1[8] = 0;
  }

  v3 = a1[7];
  if (v3)
  {

    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {

    a1[4] = 0;
  }

  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ShareableInternal<re::GeomModelDescriptor>::~ShareableInternal(uint64_t *a1)
{
  *a1 = &unk_1F5CD00F8;
  re::DynamicString::deinit((a1 + 26));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 20);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit((a1 + 15));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 9);
  v2 = a1[8];
  if (v2)
  {

    a1[8] = 0;
  }

  v3 = a1[7];
  if (v3)
  {

    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {

    a1[4] = 0;
  }

  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::GeomModelDescriptor::reset(re::GeomModelDescriptor *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = 0;
  v2 = *(this + 1);
  if (v2)
  {

    *(this + 1) = 0;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  v4 = *(this + 5);
  if (v4)
  {

    *(this + 5) = 0;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(this + 48);
  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    v6 = *(this + 16);
    v7 = 56 * v5;
    do
    {
      v8 = *(v6 + 6);
      if (v8)
      {

        *(v6 + 6) = 0;
      }

      v9 = *(v6 + 5);
      if (v9)
      {

        *(v6 + 5) = 0;
      }

      re::DynamicString::deinit(v6);
      v6 = (v6 + 56);
      v7 -= 56;
    }

    while (v7);
  }

  ++*(this + 30);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(this + 136);
  v11[0] = "";
  v11[1] = 0;
  return re::DynamicString::operator=((this + 184), v11);
}

uint64_t re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(uint64_t a1)
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
          v6 = *(v3 + 6);
          if (v6)
          {

            *(v3 + 6) = 0;
          }

          v7 = *(v3 + 5);
          if (v7)
          {

            *(v3 + 5) = 0;
          }

          re::DynamicString::deinit(v3);
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

uint64_t re::BucketArray<unsigned long,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<unsigned long,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 3);
}

_anonymous_namespace_ *re::BucketArray<unsigned long,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 32, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<unsigned long,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,32ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<unsigned long,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
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

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 5;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x1F);
}

_anonymous_namespace_ *re::BucketArray<re::USDImportContextBlendShapeData,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 1216, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::USDImportContextBlendShapeData,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::USDImportContextSkeletonData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 1696, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 2240, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 3;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 80 * (v2 & 7);
}

_anonymous_namespace_ *re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 640, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 3;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 80 * (v2 & 7);
}

_anonymous_namespace_ *re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 640, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::MeshCompileOptions const&>(uint64_t a1, uint64_t a2, const char **a3, void *a4)
{
  v7 = re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v9 = *(a4 + 7);
  v7[5] = *a4;
  v7 += 5;
  *(v7 + 7) = v9;
  re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable((v7 + 2), (a4 + 2));
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_17;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_17:
    v8 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v9 = *(result + 16);
  v10 = *a2;
  v11 = v9 + 112 * v8;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = (v11 + 17);
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = strcmp(v15, *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v16 = *(v9 + 112 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 112 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 112 * v17) & 0x7FFFFFFF;
      v8 = v17;
      if (v16 == 0x7FFFFFFF)
      {
        v8 = v17;
        goto LABEL_18;
      }
    }

    v6 = v17;
  }

LABEL_18:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v34, v9, v8);
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
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v19[13] % *(a1 + 6), v19[13]);
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v34[16];
                v25 = *&v34[16] + v17;
                v26 = *(*&v34[16] + v17 + 40);
                v27 = *(*&v34[16] + v17 + 47);
                *(v20 + 56) = 0u;
                v20 += 56;
                *(v20 - 9) = v27;
                *(v20 - 16) = v26;
                *(v20 + 32) = 0;
                *(v20 + 16) = 0u;
                *(v20 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v20, (v25 + 56));
              }

              ++v18;
              v17 += 112;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v34);
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
    v29 = *(v28 + 112 * v5);
  }

  else
  {
    v28 = a1[2];
    v29 = *(v28 + 112 * v5);
    *(a1 + 9) = v29 & 0x7FFFFFFF;
  }

  v31 = v28 + 112 * v5;
  *v31 = v29 | 0x80000000;
  v32 = a1[1];
  *v31 = *(v32 + 4 * a2) | 0x80000000;
  *(v32 + 4 * a2) = v5;
  *(v31 + 104) = a3;
  ++*(a1 + 7);
  return v28 + 112 * v5;
}

void re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 112 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

BOOL re::importModelBlendShapes(_anonymous_namespace_ *a1)
{
  v1 = a1;
  v87 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 104);
  re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v1 + 14, v2);
  v63 = (v1 + 112);
  v64 = v2;
  ++*(v1 + 34);
  if (v2)
  {
    v3 = 0;
    v65 = v1;
    while (1)
    {
      v4 = *(v1 + 26);
      if (v4 <= v3)
      {
        goto LABEL_71;
      }

      v5 = *(v1 + 28) + (v3 << 8);
      v70 = 0;
      v67 = 0;
      v68 = 0;
      v66 = 0;
      v69 = 0;
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = *(v5 + 32);
        v10 = 80 * v6;
        do
        {
          if (*(v9 + 8))
          {
            v11 = *(v9 + 16);
          }

          else
          {
            v11 = (v9 + 9);
          }

          v12 = strlen(v11);
          if (v12 >= 0x16)
          {
            v13 = strcmp(&v11[v12 - 21], "|blendTargetPosDeltas");
            if (!v13)
            {
              v14 = *(v5 + 48);
              if (v8 >= v67)
              {
                v15 = v8 + 1;
                if (v67 < v15)
                {
                  if (v66)
                  {
                    v16 = 8;
                    if (v67)
                    {
                      v16 = 2 * v67;
                    }

                    if (v16 <= v15)
                    {
                      v17 = v15;
                    }

                    else
                    {
                      v17 = v16;
                    }

                    re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(&v66, v17);
                  }

                  else
                  {
                    re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(&v66, v15);
                    ++v69;
                  }
                }

                v8 = v68;
                v7 = v70;
              }

              v18 = v7 + 56 * v8;
              *v18 = 0u;
              *(v18 + 16) = 0u;
              *(v18 + 32) = v9;
              *(v18 + 40) = v14;
              v19 = WORD2(v82);
              *(v18 + 42) = v82;
              *(v18 + 46) = v19;
              *(v18 + 48) = 16;
              v8 = ++v68;
              ++v69;
            }
          }

          v9 += 80;
          v10 -= 80;
        }

        while (v10);
        if (v8 && *(v5 + 48))
        {
          break;
        }
      }

LABEL_50:
      if (v66 && v70)
      {
        (*(*v66 + 40))();
      }

      ++v3;
      v1 = v65;
      if (v3 == v2)
      {
        return *(v1 + 16) != 0;
      }
    }

    v20 = re::StringID::StringID(&v72, v65);
    memset(&v73[12], 0, 24);
    v4 = 0;
    v74 = 2;
    v75 = *(v5 + 48);
    v76 = v3;
    v21 = v70;
    while (1)
    {
      v22 = *&v73[20];
      if (*&v73[20] <= v4)
      {
        goto LABEL_67;
      }

      v23 = *(v21 + 56 * v4 + 32);
      if (*(v23 + 8))
      {
        v24 = *(v23 + 16);
      }

      else
      {
        v24 = (v23 + 9);
      }

      v25 = (*&v73[28] + 136 * v4);
      v26 = strlen(v24);
      v27 = v26 - 21;
      if (BYTE8(v82))
      {
        v29 = v83;
      }

      else
      {
        v29 = &v82 + 9;
      }

      *v77 = 0;
      *&v77[8] = &str_67;
      v30 = re::StringID::operator=(v25, v77);
      if (v77[0])
      {
        if (v77[0])
        {
        }
      }

      *v77 = 0;
      *&v77[8] = &str_67;
      v31 = v82;
      if (v82 && (BYTE8(v82) & 1) != 0)
      {
        v31 = (*(*v82 + 40))();
      }

      *(v25 + 3) = 0;
      *(v25 + 9) = 0;
      *(v25 + 12) = 0;
      *(v25 + 15) = 0;
      v35 = v21 + 56 * v4;
      v36 = *(v35 + 32);
      v37 = *(v35 + 40);
      v38 = 3 * v37;
      if (v37)
      {
        break;
      }

LABEL_46:
      v4 = (v4 + 1);
      if (v4 == v8)
      {
        re::DynamicArray<re::MeshAssetBlendShapeData>::add(v63, &v72);
        v46 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v73[12]);
        if (v72)
        {
          if (v72)
          {
          }
        }

        goto LABEL_50;
      }
    }

    v22 = 0;
    v40 = *(v36 + 64);
    v41 = *(v25 + 6);
    v42 = (v40 + 4);
    v43 = (*(v25 + 7) + 8);
    while (v41 > v22)
    {
      v45 = *v42;
      v44 = v42[1];
      *(v43 - 2) = *(v42 - 1);
      v25 = (v22 + 1);
      if (v41 <= v22 + 1)
      {
        goto LABEL_59;
      }

      *(v43 - 1) = v45;
      v25 = (v22 + 2);
      if (v41 <= v22 + 2)
      {
        goto LABEL_63;
      }

      *v43 = v44;
      v43 += 3;
      v22 += 3;
      v42 += 3;
      if (v38 == v22)
      {
        goto LABEL_46;
      }
    }

    v71 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *&v77[4] = "operator[]";
    *&v77[12] = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    *&v77[14] = 468;
    v78 = 2048;
    v79 = v22;
    v80 = 2048;
    v81 = v41;
    _os_log_send_and_compose_impl(v50, &v71, &v82, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v77, 38, v63, v2);
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v71 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *&v77[4] = "operator[]";
    *&v77[12] = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    *&v77[14] = 468;
    v78 = 2048;
    v79 = v25;
    v80 = 2048;
    v81 = v41;
    _os_log_send_and_compose_impl(v53, &v71, &v82, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v77, 38, v63, v64);
    _os_crash_msg();
    __break(1u);
LABEL_63:
    v71 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *&v77[4] = "operator[]";
    *&v77[12] = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    *&v77[14] = 468;
    v78 = 2048;
    v79 = v25;
    v80 = 2048;
    v81 = v41;
    _os_log_send_and_compose_impl(v56, &v71, &v82, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v77, 38, v63, v64);
    _os_crash_msg();
    __break(1u);
LABEL_67:
    v71 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *&v77[4] = "operator[]";
    *&v77[12] = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    *&v77[14] = 468;
    v78 = 2048;
    v79 = v4;
    v80 = 2048;
    v81 = v22;
    _os_log_send_and_compose_impl(v59, &v71, &v82, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v77, 38, v63, v64);
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v66 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v60 = MEMORY[0x1E69E9C10];
    v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    *v73 = "operator[]";
    *&v73[8] = 1024;
    if (v61)
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    *&v73[10] = 789;
    *&v73[14] = 2048;
    *&v73[16] = v3;
    *&v73[24] = 2048;
    *&v73[26] = v4;
    _os_log_send_and_compose_impl(v62, &v66, &v82, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v63, v64);
    _os_crash_msg();
    __break(1u);
  }

  return *(v1 + 16) != 0;
}

BOOL re::objectIsBlendShapeRoot(re *this, MDLObject *a2)
{
  v2 = this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = [(re *)v2 name];

  if (!v4)
  {
    v4 = &stru_1F5D319D0;
  }

  if (isKindOfClass)
  {
    v5 = [(__CFString *)v4 UTF8String];
    IsBlendShapeRoot = re::nameIsBlendShapeRoot(v5, v6);
  }

  else
  {
    IsBlendShapeRoot = 0;
  }

  return IsBlendShapeRoot;
}

BOOL re::uskNodeIsBlendShapeRoot(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  v3 = *MEMORY[0x1E69DEE70];

  v4 = [v1 name];

  v5 = [v4 stringValue];

  if (!v5)
  {
    v5 = &stru_1F5D319D0;
  }

  if (v2 == v3)
  {
    v7 = [(__CFString *)v5 UTF8String];
    IsBlendShapeRoot = re::nameIsBlendShapeRoot(v7, v8);
  }

  else
  {
    IsBlendShapeRoot = 0;
  }

  return IsBlendShapeRoot;
}

void *re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
            memcpy(v7, v5[4], 56 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::TextureCompatibility::updateLegacyTextureSemantic(re::TextureCompatibility *this, const re::AssetHandle *a2, os_unfair_lock_s *a3, const re::AssetManager *a4, const re::ImportGraphicsContext *a5, const re::RenderManager *a6, BOOL *a7, BOOL *a8)
{
  *a7 = 0;
  *a6 = 0;
  if (!*(this + 1))
  {
    return;
  }

  if (re::AssetManager::isDeviceAsset(a3, this, 15))
  {
    return;
  }

  if (!re::MaterialAsset::isColorTextureParameter(a2, v14))
  {
    return;
  }

  v15 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(this);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  isLegacyLinearFormatWithSRGBData = re::TextureAsset::isLegacyLinearFormatWithSRGBData(v15);
  v18 = isLegacyLinearFormatWithSRGBData;
  v19 = *(v16 + 344);
  if (isLegacyLinearFormatWithSRGBData)
  {
    v19 = re::translateLinearPixelFormatToSRGB(*(v16 + 344));
  }

  v20 = *(v16 + 356);
  if (v20 == 6)
  {
    goto LABEL_10;
  }

  if (v20 != 3)
  {
    if (v20)
    {
      return;
    }

LABEL_10:
    if (re::StringID::operator==(a2, re::MaterialAsset::isHdrColorTextureParameter(re::StringID const&)::textureEmissive))
    {
      v21 = 4;
    }

    else
    {
      v21 = 3;
    }

    *(v16 + 356) = v21;
  }

  v22 = *(v16 + 376);
  if (v22)
  {
    v23 = v22 >> 1;
  }

  else
  {
    v23 = v22 >> 1;
  }

  if (!v23)
  {
    CGColorSpaceNameForPixelFormat = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v19, 0);
    if (CGColorSpaceNameForPixelFormat)
    {
      re::TextureAsset::setColorSpace(v16, CGColorSpaceNameForPixelFormat);
    }
  }

  if (*(v16 + 120))
  {
    v25 = *(v16 + 176);

    v26 = v25;
  }

  else
  {
    v27 = *(v16 + 112);
    v28 = *(v16 + 176);
    if (v27)
    {
      LOBYTE(v38) = 0;
      if (v28 && re::ColorHelpers::getColorGamutFromCGColorSpaceName(v28, &v38))
      {
        v29 = *(a4 + 19) ? *(a4 + 20) : 0;
        if (v38 != v29)
        {
          *a6 = 1;
        }
      }

      if (v18)
      {
        isSupportedPixelFormat = re::isSupportedPixelFormat(*a4, v19, [v27 textureType]);
        if (([v27 isShareable] & 1) == 0 && isSupportedPixelFormat && (v31 = objc_msgSend(v27, sel_newTextureViewWithPixelFormat_, v19)) != 0)
        {
          v32 = v31;
          v38 = v31;
          v39 = 0;
          v37 = *(v16 + 360);
          v33 = *(v16 + 176);
          v34 = v33;
          v35 = *(v16 + 320);
          v36[0] = *(v16 + 336);
          v36[1] = v35;
          re::TextureAsset::setTexture(v16, a4, &v38, (v16 + 356), &v37, v33, v36);
          if (v39 != -1)
          {
            (off_1F5CD0130[v39])(v36, &v38);
          }
        }

        else
        {
          *a7 = 1;
          if ((*a6 & 1) == 0)
          {
            re::TextureAsset::addLegacyLinearFormatWithSRGBDataTexture(v16, a5);
          }
        }
      }
    }
  }
}

uint64_t re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>(re::ImageBasedLightAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::ImageBasedLightAsset::assetType(a1);
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

uint64_t re::TextureCompatibility::postProcessLoadedIBLAsset(re::TextureCompatibility *this, re::ImageBasedLightAsset *a2, const re::ImportGraphicsContext *a3)
{
  v4 = this;
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v5 = *(this + 13);
  v6 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    v6 = v5 >> 1;
  }

  if (v6)
  {
    if (v5)
    {
      v7 = *(this + 14);
    }

    else
    {
      v7 = this + 105;
    }

    v8 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v7, 0x8000100u, *MEMORY[0x1E695E498]);
    re::ColorHelpers::getColorGamutFromCGColorSpaceName(v8, &v26);
    CFRelease(v8);
    v9 = v26;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 19))
  {
    v10 = *(a2 + 20);
  }

  else
  {
    v10 = 0;
  }

  if (v9 == v10)
  {
    return 1;
  }

  if (*(v4 + 1))
  {
    this = re::TextureCompatibility::convertTextureAssetColorSpace(v4, a2, 4, 1, 0);
    v11 = this;
  }

  else
  {
    v11 = 1;
  }

  if (*(v4 + 4))
  {
    v12 = re::TextureCompatibility::convertTextureAssetColorSpace((v4 + 24), a2, 4, 1, 0);
    v11 &= v12;
  }

  else
  {
    v13 = *re::assetsLogObjects(this);
    v12 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Invalid ImageBasedLight asset: no diffuseTexture", buf, 2u);
    }
  }

  if (!*(v4 + 10))
  {
    v17 = *re::assetsLogObjects(v12);
    v14 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Invalid ImageBasedLight asset: no specularTexture", buf, 2u);
    }

    goto LABEL_25;
  }

  v14 = re::TextureCompatibility::convertTextureAssetColorSpace((v4 + 72), a2, 4, 1, 0);
  v15 = 0;
  if (v14)
  {
    v16 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v4 + 72));
    v14 = re::DynamicString::operator=((v4 + 96), (v16 + 368));
LABEL_25:
    v15 = v11;
  }

  if (*(v4 + 7))
  {
    v18 = re::TextureCompatibility::convertTextureAssetColorSpace((v4 + 48), a2, 4, 1, 0);
    if (v15 & v18)
    {
      return 1;
    }

    goto LABEL_32;
  }

  v19 = *re::assetsLogObjects(v14);
  v18 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Invalid ImageBasedLight asset: no sssDiffuseTexture", buf, 2u);
  }

  if ((v15 & 1) == 0)
  {
LABEL_32:
    v20 = *re::assetsLogObjects(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = re::ColorHelpers::getColorGamutSerializationLiteral(re::ColorGamut const&)::kGamutToLiterals[v9];
      if (*(a2 + 19))
      {
        v23 = *(a2 + 20);
      }

      else
      {
        v23 = 0;
      }

      v24 = re::ColorHelpers::getColorGamutSerializationLiteral(re::ColorGamut const&)::kGamutToLiterals[v23];
      *buf = 136315394;
      v28 = v22;
      v29 = 2080;
      v30 = v24;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Failed to convert ImageBasedLight asset gamut from %s to %s", buf, 0x16u);
    }
  }

  return 1;
}

uint64_t re::TextureCompatibility::convertTextureAssetColorSpace(re::TextureAsset *a1, uint64_t a2, int a3, int a4, int a5)
{
  v108 = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  v11 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(a1);
  if (!v11 || (v12 = v11, !re::TextureData::isValid((v11 + 112))))
  {
    v17 = 0;
LABEL_151:
    objc_autoreleasePoolPop(v10);
    return v17;
  }

  LOBYTE(v87) = 0;
  v88 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(&v87, v12 + 112);
  v89 = *(v12 + 128);
  v90[0] = *(v12 + 136);
  *(v90 + 12) = *(v12 + 148);
  v13 = *(v12 + 168);
  v91 = v13;
  if (v13)
  {
    v14 = (v13 + 8);
  }

  v92 = *(v12 + 176);
  v15 = re::DynamicArray<short>::DynamicArray(v93, (v12 + 184));
  v96 = *(v12 + 224);
  v79 = 0;
  v80 = 0;
  v81 &= 0xFC00u;
  memset(v82, 0, 24);
  v83 = 0u;
  memset(v84, 0, 28);
  v86 = 0;
  v85 = 0;
  if (a4)
  {
    memset(buf, 0, 12);
    v99 &= 0xFC00u;
    memset(v100, 0, 24);
    v101 = 0uLL;
    memset(v102, 0, 28);
    v103 = 0;
    v104 = 0;
    if (v88)
    {
      goto LABEL_7;
    }

    re::TextureHandle::unsynchronizedMetalTexture(&v78, (v12 + 96));
    v22 = v78;
    if (v78)
    {
      goto LABEL_40;
    }

    if (a5)
    {
      if (v88)
      {
        goto LABEL_152;
      }

      re::TextureAsset::createTextureSRGBAdaptor(a2, &v87, 0, &v58);
    }

    else
    {
      re::TextureHandle::unsynchronizedMetalTexture(&v58, (v12 + 8));
    }

    NS::SharedPtr<MTL::Texture>::operator=(&v78, &v58);
    if (v58)
    {
    }

    v22 = v78;
    if (v78)
    {
LABEL_40:
      if (v88)
      {
        goto LABEL_152;
      }

      v16 = &v87;
      if (v22 == v87)
      {
        goto LABEL_53;
      }

      v72[0] = v22;
      LODWORD(v72[1]) = 0;
      re::TextureImportData::TextureImportData(&v58, v72, &v89);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(buf, &v58);
      v99 = v60;
      *v100 = *v61;
      *&v100[12] = *&v61[12];
      v27 = *(&v101 + 1);
      v28 = v62;
      v62 = v101;
      v101 = v28;

      re::DynamicArray<short>::operator=(v102, &v63);
      v104 = v68;
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
        LODWORD(v66) = v66 + 1;
      }

      if (v62)
      {

        *&v62 = 0;
      }

      if (v59 != -1)
      {
        (off_1F5CD0130[v59])(&v97, &v58);
      }

      v59 = -1;
      if (LODWORD(v72[1]) != -1)
      {
        (off_1F5CD0130[LODWORD(v72[1])])(&v97, v72);
      }

      v22 = v78;
      v16 = buf;
      if (v78)
      {
LABEL_53:
      }
    }

    else
    {
LABEL_7:
      v16 = &v87;
    }

    if (!v16[8])
    {
      re::TextureImportData::setColorSpace(v16, *MEMORY[0x1E695F108]);
    }

    v29 = *(a2 + 20);
    if (!*(a2 + 19))
    {
      v29 = 0;
    }

    re::convertTextureColorSpace(v29, v16, &v58);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v79, &v58);
    v81 = v60;
    *v82 = *v61;
    *&v82[12] = *&v61[12];
    v30 = *(&v83 + 1);
    v31 = v62;
    v62 = v83;
    v83 = v31;

    re::DynamicArray<short>::operator=(v84, &v63);
    v86 = v68;
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
      LODWORD(v66) = v66 + 1;
    }

    if (v62)
    {

      *&v62 = 0;
    }

    if (v59 != -1)
    {
      (off_1F5CD0130[v59])(v72, &v58);
    }

    v32 = *(v12 + 168);
    if (v32)
    {

      *(v12 + 168) = 0;
    }

    if (*v102)
    {
      if (v103)
      {
        (*(**v102 + 40))();
      }

      v103 = 0;
      memset(v102, 0, 24);
      ++*&v102[24];
    }

    if (v101)
    {

      *&v101 = 0;
    }

    if (*&buf[8] != -1)
    {
      (off_1F5CD0130[*&buf[8]])(&v58, buf);
    }
  }

  else if (a5)
  {
    if (v88)
    {
      v18 = *re::assetsLogObjects(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = re::AssetHandle::assetInfo(a1);
        if (v20[17])
        {
          v21 = v20[18];
        }

        else
        {
          v21 = v20 + 137;
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Texture %s conversion to sRGB transfer is not supported without Metal.", buf, 0xCu);
      }
    }

    else
    {
      re::TextureAsset::createTextureSRGBAdaptor(a2, &v87, 1, v72);
      v58 = v72[0];
      v59 = 0;
      buf[0] = 0;
      *&buf[8] = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(buf, &v58);
      v99 = v89;
      *v100 = v90[0];
      *&v100[12] = *(v90 + 12);
      *&v101 = v91;
      if (v91)
      {
        v23 = (v91 + 8);
      }

      *(&v101 + 1) = v92;
      re::DynamicArray<short>::DynamicArray(v102, v93);
      v104 = v96;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v79, buf);
      v81 = v99;
      *v82 = *v100;
      *&v82[12] = *&v100[12];
      v24 = *(&v83 + 1);
      v25 = v101;
      v101 = v83;
      v83 = v25;

      re::DynamicArray<short>::operator=(v84, v102);
      v86 = v104;
      if (*v102)
      {
        if (v103)
        {
          (*(**v102 + 40))(*v102);
        }

        v103 = 0;
        memset(v102, 0, 24);
        ++*&v102[24];
      }

      if (v101)
      {

        *&v101 = 0;
      }

      if (*&buf[8] != -1)
      {
        (off_1F5CD0130[*&buf[8]])(&v78, buf);
      }

      *&buf[8] = -1;
      if (v59 != -1)
      {
        (off_1F5CD0130[v59])(&v78, &v58);
      }

      v59 = -1;
      if (v72[0])
      {
      }
    }

    v26 = *(v12 + 168);
    if (v26)
    {

      *(v12 + 168) = 0;
    }
  }

  if (!v80)
  {
    v33 = &v79;
    goto LABEL_81;
  }

  if (v80 == 1)
  {
    if (!*(v79 + 48))
    {
      goto LABEL_101;
    }

    v33 = (v79 + 24);
LABEL_81:
    if (*v33)
    {
      re::TextureAssetLoader::getOrCreateImportOptions(a1, v72);
      v73 = a3;
      re::TextureAssetData::TextureAssetData(buf);
      v34 = *(*(a1 + 1) + 264);
      if (v34)
      {
        v50 = v81;
        v51[0] = *v82;
        *(v51 + 12) = *&v82[12];
        v52 = v83;
        if (v83)
        {
          v35 = (v83 + 8);
        }

        v53 = *(&v83 + 1);
        re::DynamicArray<short>::DynamicArray(v54, v84);
        v57 = v86;
        re::TextureAssetLoader::createTextureAssetDataWithOptionsOverride(&v79, &v50, v34, v72, &v58);
        re::TextureAssetData::operator=(buf, &v58);
        v58 = &unk_1F5CC40A0;
        if (v71)
        {

          v71 = 0;
        }

        if (v66)
        {
          if (v70)
          {
            (*(*v66 + 40))();
          }

          v70 = 0;
          v67 = 0;
          v68 = 0;
          v66 = 0;
          ++v69;
        }

        if (v64)
        {

          v64 = 0;
        }

        if (*&v61[8] != -1)
        {
          (off_1F5CD0130[*&v61[8]])(&v78, v61);
        }

        *&v61[8] = -1;
        v58 = &unk_1F5CCF868;
        objc_destructInstance(&v59);
        if (v54[0])
        {
          if (v56)
          {
            (*(*v54[0] + 40))();
          }

          v56 = 0;
          memset(v54, 0, sizeof(v54));
          ++v55;
        }

        if (v52)
        {

          v52 = 0;
        }
      }

      else
      {
        v42 = v81;
        v43[0] = *v82;
        *(v43 + 12) = *&v82[12];
        v44 = v83;
        if (v83)
        {
          v37 = (v83 + 8);
        }

        v45 = *(&v83 + 1);
        re::DynamicArray<short>::DynamicArray(v46, v84);
        v49 = v86;
        re::TextureAssetLoader::createTextureAssetData(&v79, &v42, v72, &v58);
        re::TextureAssetData::operator=(buf, &v58);
        v58 = &unk_1F5CC40A0;
        if (v71)
        {

          v71 = 0;
        }

        if (v66)
        {
          if (v70)
          {
            (*(*v66 + 40))();
          }

          v70 = 0;
          v67 = 0;
          v68 = 0;
          v66 = 0;
          ++v69;
        }

        if (v64)
        {

          v64 = 0;
        }

        if (*&v61[8] != -1)
        {
          (off_1F5CD0130[*&v61[8]])(&v78, v61);
        }

        *&v61[8] = -1;
        v58 = &unk_1F5CCF868;
        objc_destructInstance(&v59);
        if (v46[0])
        {
          if (v48)
          {
            (*(*v46[0] + 40))();
          }

          v48 = 0;
          memset(v46, 0, sizeof(v46));
          ++v47;
        }

        if (v44)
        {

          v44 = 0;
        }
      }

      re::TextureAsset::setTexture_makeMutable(a2, a1, buf, v36);
      *buf = &unk_1F5CC40A0;
      if (v107)
      {

        v107 = 0;
      }

      if (*&v102[24])
      {
        if (v106)
        {
          (*(**&v102[24] + 40))();
        }

        v106 = 0;
        v103 = 0;
        v104 = 0;
        *&v102[24] = 0;
        ++v105;
      }

      if (*&v102[8])
      {

        *&v102[8] = 0;
      }

      if (*&v100[8] != -1)
      {
        (off_1F5CD0130[*&v100[8]])(&v58, v100);
      }

      *&v100[8] = -1;
      *buf = &unk_1F5CCF868;
      objc_destructInstance(&buf[8]);
      if (v75)
      {
        if (v76)
        {
          (*(*v75 + 40))();
          v76 = 0;
          v77 = 0;
        }

        v75 = 0;
      }

      v17 = 1;
      goto LABEL_135;
    }

LABEL_101:
    v17 = 0;
LABEL_135:
    if (v84[0])
    {
      if (v85)
      {
        (*(*v84[0] + 40))();
      }

      v85 = 0;
      memset(v84, 0, 24);
      ++LODWORD(v84[3]);
    }

    if (v83)
    {

      *&v83 = 0;
    }

    if (v80 != -1)
    {
      (off_1F5CD0130[v80])(buf, &v79);
    }

    if (v93[0])
    {
      if (v95)
      {
        (*(*v93[0] + 40))();
      }

      v95 = 0;
      memset(v93, 0, sizeof(v93));
      ++v94;
    }

    if (v91)
    {

      v91 = 0;
    }

    if (v88 != -1)
    {
      (off_1F5CD0130[v88])(buf, &v87);
    }

    goto LABEL_151;
  }

LABEL_152:
  v39 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureImportData::TextureImportData(v39, v40, v41);
}

uint64_t re::TextureImportData::TextureImportData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  *(a1 + 16) = *a3;
  v5 = *(a3 + 8);
  *(a1 + 36) = *(a3 + 20);
  *(a1 + 24) = v5;
  v6 = *(a3 + 40);
  *(a1 + 56) = v6;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  *(a1 + 64) = *(a3 + 48);
  re::DynamicArray<short>::DynamicArray(a1 + 72, (a3 + 56));
  *(a1 + 112) = *(a3 + 96);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  *(a1 + 16) = *a3;
  v5 = *(a3 + 8);
  *(a1 + 36) = *(a3 + 20);
  *(a1 + 24) = v5;
  *(a1 + 56) = *(a3 + 40);
  v6 = *(a3 + 48);
  *(a3 + 40) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0;
  v7 = *(a3 + 64);
  *(a1 + 72) = *(a3 + 56);
  *(a1 + 80) = v7;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v8 = *(a1 + 88);
  *(a1 + 88) = *(a3 + 72);
  *(a3 + 72) = v8;
  v9 = *(a1 + 104);
  *(a1 + 104) = *(a3 + 88);
  *(a3 + 88) = v9;
  ++*(a3 + 80);
  ++*(a1 + 96);
  *(a1 + 112) = *(a3 + 96);
  return a1;
}

void re::TextureImportData::setColorSpace(id *this, __CFString *a2)
{
  objc_storeStrong(this + 8, a2);
}

void re::TextureCompatibility::postProcessLoadedTextures(re::TextureCompatibility *this, os_unfair_lock_s *a2, const re::AssetManager *a3, const re::RenderManager *a4)
{
  v106 = a4;
  v150 = *MEMORY[0x1E69E9840];
  re::ImportGraphicsContext::createFromRenderManager(v132, a3);
  v131 = 0;
  v128[1] = 0;
  v129 = 0;
  v128[0] = 0;
  v130 = 0;
  LODWORD(v148) = 0;
  buf = 0u;
  v147 = 0u;
  *(&v148 + 4) = 0x7FFFFFFFLL;
  v136 = 0;
  memset(v135, 0, sizeof(v135));
  v137 = 0x7FFFFFFFLL;
  v104 = this;
  v7 = re::ecs2::SceneComponentTable::get((this + 200), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
  if (v7)
  {
    v8 = *(v7 + 384);
    if (v8)
    {
      v108 = 0;
      v112 = 0;
      v113 = 0;
      v109 = 0;
      v117 = 0;
      v115 = 0;
      v110 = 0;
      v9 = 0;
      v10 = *(v7 + 400);
      v105 = &v10[v8];
      while (1)
      {
        v107 = v10;
        v11 = *v10;
        v12 = *(v11 + 72);
        if (v12)
        {
          break;
        }

LABEL_78:
        v10 = v107 + 1;
        if (v107 + 1 == v105)
        {
          goto LABEL_79;
        }
      }

      v13 = *(v11 + 88);
      v14 = (v13 + 24 * v12);
      v111 = v14;
      while (1)
      {
        re::AssetHandle::AssetHandle(v119, v13);
        if (!v119[1])
        {
          goto LABEL_72;
        }

        v15 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v119);
        if (!v15)
        {
          goto LABEL_72;
        }

        v16 = v15;
        v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
        v18 = v17 ^ (v17 >> 31);
        if (v9)
        {
          v19 = v18 % v9;
          v20 = *(v113 + 4 * v19);
          if (v20 != 0x7FFFFFFF)
          {
            for (i = *(v110 + 24 * v20 + 16); i != v15; i = *(v110 + 24 * v36 + 16))
            {
              v36 = *(v110 + 24 * *(v113 + 4 * v19) + 8) & 0x7FFFFFFF;
              if (v36 == 0x7FFFFFFF)
              {
                v19 = v19;
                while (1)
                {
                  LODWORD(v20) = *(v110 + 24 * v20 + 8) & 0x7FFFFFFF;
                  if (v20 == 0x7FFFFFFF)
                  {
                    goto LABEL_12;
                  }

                  if (*(v110 + 24 * v20 + 16) == v15)
                  {
                    v114 = v9;
                    goto LABEL_18;
                  }
                }
              }
            }

            goto LABEL_71;
          }

          v19 = v19;
        }

        else
        {
          v19 = 0;
        }

LABEL_12:
        v21 = DWORD1(v148);
        if (DWORD1(v148) == 0x7FFFFFFF)
        {
          v22 = v117;
          if (v117 == v9)
          {
            re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(&buf, 2 * v109);
            v9 = DWORD2(v147);
            v22 = v148;
            v19 = v18 % DWORD2(v147);
            v115 = v147;
            v108 = *(&buf + 1);
          }

          v23 = v22 + 1;
          LODWORD(v148) = v23;
          v24 = v117;
          v21 = v117;
          v25 = v115;
          v26 = *(v115 + 24 * v117 + 8);
          v27 = v108;
        }

        else
        {
          v25 = v115;
          v26 = *(v115 + 24 * DWORD1(v148) + 8);
          DWORD1(v148) = v26 & 0x7FFFFFFF;
          v23 = v117;
          v24 = v21;
          v27 = v112;
        }

        v114 = v9;
        v28 = 3 * v21;
        *(v25 + 8 * v28 + 8) = v26 | 0x80000000;
        v29 = v147;
        v30 = v147 + 8 * v28;
        *(v30 + 8) = *(v30 + 8) & 0x80000000 | *(v27 + 4 * v19);
        *v30 = v18;
        *(v30 + 16) = v16;
        *(v27 + 4 * v19) = v24;
        v109 = ++HIDWORD(v147);
        ++DWORD2(v148);
        v117 = v23;
        v115 = v29;
        v110 = v29;
        v112 = v27;
        v113 = v27;
LABEL_18:
        v31 = *(v16 + 192);
        if (v31)
        {
          v32 = 0;
          v33 = *(v16 + 176);
          while (1)
          {
            v34 = *v33;
            v33 += 22;
            if (v34 < 0)
            {
              break;
            }

            if (v31 == ++v32)
            {
              LODWORD(v32) = *(v16 + 192);
              break;
            }
          }
        }

        else
        {
          LODWORD(v32) = 0;
        }

        v37 = *(v16 + 192);
LABEL_29:
        while (v32 != v31)
        {
          v38 = *(v16 + 176);
          v39 = v38 + 88 * v32;
          if (*(v39 + 72) == 1)
          {
            LOBYTE(v134) = 0;
            v133[0] = 0;
            re::StringID::StringID(&v139, (v38 + 88 * v32 + 8));
            re::TextureCompatibility::updateLegacyTextureSemantic((v39 + 40), &v139, a2, v132, a3, &v134, v133, v40);
            if (v139)
            {
              if (v139)
              {
              }
            }

            v42 = v134;
            if ((v134 & 1) != 0 || v133[0] == 1)
            {
              v138 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v39 + 40));
              if (!re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(v135, v138))
              {
                re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(v135, &v138);
                v140 = 0;
                v139 = 0;
                v141 = 0;
                re::AssetHandle::operator=(&v139, (v39 + 40));
                v142 = v42;
                v143 = v133[0];
                re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(v128, &v139);
                re::AssetHandle::~AssetHandle(&v139);
              }
            }

            v37 = *(v16 + 192);
          }

          if (v37 <= v32 + 1)
          {
            v43 = v32 + 1;
          }

          else
          {
            v43 = v37;
          }

          while (v43 - 1 != v32)
          {
            LODWORD(v32) = v32 + 1;
            if ((*(*(v16 + 176) + 88 * v32) & 0x80000000) != 0)
            {
              goto LABEL_29;
            }
          }

          LODWORD(v32) = v43;
        }

        v44 = *(v16 + 240);
        if (v44)
        {
          v45 = 0;
          v46 = *(v16 + 224);
          while (1)
          {
            v47 = *v46;
            v46 += 40;
            if (v47 < 0)
            {
              break;
            }

            if (v44 == ++v45)
            {
              LODWORD(v45) = *(v16 + 240);
              break;
            }
          }
        }

        else
        {
          LODWORD(v45) = 0;
        }

        v48 = *(v16 + 240);
LABEL_53:
        while (v45 != v44)
        {
          v49 = *(v16 + 224);
          v50 = v49 + 160 * v45;
          if (*(v50 + 72) == 1)
          {
            LOBYTE(v134) = 0;
            v133[0] = 0;
            re::StringID::StringID(&v139, (v49 + 160 * v45 + 8));
            re::TextureCompatibility::updateLegacyTextureSemantic((v50 + 40), &v139, a2, v132, a3, &v134, v133, v51);
            if (v139)
            {
              if (v139)
              {
              }
            }

            v53 = v134;
            if ((v134 & 1) != 0 || v133[0] == 1)
            {
              v138 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v50 + 40));
              if (!re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(v135, v138))
              {
                re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(v135, &v138);
                v140 = 0;
                v139 = 0;
                v141 = 0;
                re::AssetHandle::operator=(&v139, (v50 + 40));
                v142 = v53;
                v143 = v133[0];
                re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(v128, &v139);
                re::AssetHandle::~AssetHandle(&v139);
              }
            }

            v48 = *(v16 + 240);
          }

          if (v48 <= v45 + 1)
          {
            v54 = v45 + 1;
          }

          else
          {
            v54 = v48;
          }

          while (v54 - 1 != v45)
          {
            LODWORD(v45) = v45 + 1;
            if ((*(*(v16 + 224) + 160 * v45) & 0x80000000) != 0)
            {
              goto LABEL_53;
            }
          }

          LODWORD(v45) = v54;
        }

        v9 = v114;
LABEL_71:
        v14 = v111;
LABEL_72:
        re::AssetHandle::~AssetHandle(v119);
        v13 = (v13 + 24);
        if (v13 == v14)
        {
          goto LABEL_78;
        }
      }
    }
  }

LABEL_79:
  v55 = re::ecs2::SceneComponentTable::get((v104 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v55)
  {
    v56 = *(v55 + 384);
    if (v56)
    {
      v57 = *(v55 + 400);
      v118 = &v57[v56];
      do
      {
        v58 = *v57;
        re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(*v57);
        v59 = *(v58 + 6);
        if (v59)
        {
          v60 = *(v58 + 8);
          v61 = &v60[4 * v59];
          do
          {
            v62 = *v60;
            if (!*v60)
            {
              v62 = v60[1];
            }

            v63 = *(v62 + 336);
            if (v63)
            {
              v64 = 0;
              v65 = *(v62 + 320);
              while ((*v65 & 0x80000000) == 0)
              {
                v65 += 80;
                if (v63 == ++v64)
                {
                  LODWORD(v64) = *(v62 + 336);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v64) = 0;
            }

            v66 = *(v62 + 336);
LABEL_93:
            while (v64 != v63)
            {
              v67 = *(v62 + 320);
              v68 = v67 + 320 * v64;
              v70 = *(v68 + 32);
              v69 = v68 + 32;
              if (v70 == 64)
              {
                v71 = v67 + 320 * v64;
                re::AssetHandle::AssetHandle(v119, (v69 + 80));
                LOBYTE(v134) = 0;
                v133[0] = 0;
                re::TextureCompatibility::updateLegacyTextureSemantic(v119, (v71 + 8), a2, v132, a3, &v134, v133, v72);
                v73 = v134;
                if ((v134 & 1) != 0 || v133[0] == 1)
                {
                  v138 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v119);
                  if (!re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(v135, v138))
                  {
                    re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(v135, &v138);
                    v140 = 0;
                    v139 = 0;
                    v141 = 0;
                    re::AssetHandle::operator=(&v139, v119);
                    v142 = v73;
                    v143 = v133[0];
                    re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(v128, &v139);
                    re::AssetHandle::~AssetHandle(&v139);
                  }
                }

                re::AssetHandle::~AssetHandle(v119);
                v66 = *(v62 + 336);
              }

              if (v66 <= v64 + 1)
              {
                v74 = v64 + 1;
              }

              else
              {
                v74 = v66;
              }

              while (v74 - 1 != v64)
              {
                LODWORD(v64) = v64 + 1;
                if ((*(*(v62 + 320) + 320 * v64) & 0x80000000) != 0)
                {
                  goto LABEL_93;
                }
              }

              LODWORD(v64) = v74;
            }

            v60 += 4;
          }

          while (v60 != v61);
        }

        ++v57;
      }

      while (v57 != v118);
    }
  }

  v75 = re::ecs2::SceneComponentTable::get((v104 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v75)
  {
    v76 = *(v75 + 384);
    if (v76)
    {
      v77 = *(v75 + 400);
      v78 = 8 * v76;
      do
      {
        v79 = *v77;
        if (*(*v77 + 96))
        {
          v80 = re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>((v79 + 11));
          re::TextureCompatibility::postProcessLoadedIBLAsset(v80, v132, v81);
        }

        if (v79[15])
        {
          v82 = re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>((v79 + 14));
          re::TextureCompatibility::postProcessLoadedIBLAsset(v82, v132, v83);
        }

        v77 += 8;
        v78 -= 8;
      }

      while (v78);
    }
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v135);
  v84.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&buf);
  v116 = v129;
  if (v129)
  {
    v85 = v131;
    v86 = (v131 + 32 * v129);
    v87 = v131;
    do
    {
      re::AssetHandle::AssetHandle(&buf, v87);
      WORD4(v147) = *(v87 + 12);
      v88 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&buf);
      re::TextureHandle::unsafeReleaseMetalTextures((v88 + 8));
      if (BYTE8(v147) != 1 || (BYTE9(v147) & 1) == 0)
      {
        re::TextureHandle::unsafeReleaseMetalTextures((v88 + 96));
      }

      re::AssetHandle::~AssetHandle(&buf);
      v87 = (v87 + 32);
    }

    while (v87 != v86);
    while (1)
    {
      re::AssetHandle::AssetHandle(v126, v85);
      v127 = *(v85 + 12);
      v89 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v126);
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      buf = 0u;
      MTLPixelFormatGetInfoForDevice();
      if (*(v89 + 120))
      {
        break;
      }

      v90 = WORD4(buf);
      v91 = *(v89 + 112);
      re::TextureCompatibility::convertTextureAssetColorSpace(v126, v132, *(v89 + 356), v127, HIBYTE(v127));
      if (v91)
      {
      }

      re::TextureAssetLoader::getOrCreateImportOptions(v126, v119);
      if ((v90 & 0x400) != 0 && v106 && re::shouldASTCCompress((v89 + 112), v120, v121))
      {
        v92 = *(v89 + 168);
        if (v92)
        {

          *(v89 + 168) = 0;
        }

        if (*(v89 + 120))
        {
          break;
        }

        v93 = *(v89 + 112);
        isValid = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v126);
        v145 = isValid;
        if (isValid)
        {
          isValid = re::TextureData::isValid((isValid + 112));
          if (isValid)
          {
            v144 = 0;
            operator new();
          }
        }

        v95 = *re::assetsLogObjects(isValid);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = v95;
          v97 = re::AssetHandle::assetInfo(v126);
          if (v97[17])
          {
            v98 = v97[18];
          }

          else
          {
            v98 = v97 + 137;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v98;
          _os_log_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_DEFAULT, "Failed to recompress  %s", &buf, 0xCu);
        }

        if (v93)
        {
        }
      }

      if (v123)
      {
        if (v124)
        {
          (*(*v123 + 40))();
          v124 = 0;
          v125 = 0;
        }

        v123 = 0;
      }

      re::AssetHandle::~AssetHandle(v126);
      v85 = (v85 + 32);
      if (v85 == v86)
      {
        goto LABEL_147;
      }
    }

    std::__throw_bad_variant_access[abi:nn200100]();
  }

LABEL_147:
  v99 = v128[0];
  if (v128[0])
  {
    v100 = v131;
    if (v131)
    {
      if (v116)
      {
        v101 = 32 * v116;
        v102 = v131;
        do
        {
          re::AssetHandle::~AssetHandle(v102);
          v102 = (v103 + 32);
          v101 -= 32;
        }

        while (v101);
      }

      (*(*v99 + 40))(v99, v100, v84);
    }
  }
}

uint64_t re::TextureImportData::ImportReport::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 8) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  if (a1 != a2)
  {
    v6 = *(a2 + 48);
    *(a2 + 48) = 0;
    v7 = *(a1 + 48);
    *(a1 + 48) = v6;
  }

  re::DynamicArray<short>::operator=(a1 + 56, (a2 + 56));
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

__n128 std::__function::__func<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0,std::allocator<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD0150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0,std::allocator<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(*(a1 + 8) + 56) + 24);
  v4 = *(a1 + 24);
  v5 = **(a1 + 16);
  v14 = v3;
  v15 = 0;
  v6 = **(a1 + 16);
  v13 = *(v6 + 360);
  v7 = *(v6 + 176);
  v8 = v7;
  v9 = **(a1 + 16);
  v10 = *(v9 + 336);
  v11 = *(v9 + 320);
  v12[0] = v10;
  v12[1] = v11;
  re::TextureAsset::setTexture(v5, v4, &v14, (v6 + 356), &v13, v7, v12);
  if (v15 != -1)
  {
    (off_1F5CD0130[v15])(v12, &v14);
  }

  **(a1 + 32) = 1;
  if (v3)
  {
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t std::__function::__func<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0,std::allocator<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::Result<re::TextureData,re::DynamicString>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 16);
    if (v2 != -1)
    {
      (off_1F5CD0130[v2])(&v4, a1 + 8);
    }

    *(a1 + 16) = -1;
  }

  else
  {
    re::DynamicString::deinit((a1 + 8));
  }

  return a1;
}

re::DynamicString *re::FontCompiler::getCurrentCompiledAssetInfo@<X0>(re::FontCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::FontAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

_anonymous_namespace_ *re::FontCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::FontCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

uint64_t re::FontCompiler::assetIntrospectionType(re::FontCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::FontAsset>(BOOL)::info = re::introspect_FontAsset(0, v4, v5, v6, v7, v8);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 260);
}

void *re::FontCompiler::compile@<X0>(re::FontCompiler *this@<X0>, re::AssetUtilities *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = re::globalAllocators(this);
  v8 = (*(*v7[2] + 32))(v7[2], 80, 8);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  re::DynamicString::setCapacity(v8, 0);
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  if ((atomic_load_explicit(&qword_1EE19DA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DA88))
  {
    _MergedGlobals_136 = re::introspect_FontFile(0, v13, v14, v15, v16, v17);
    __cxa_guard_release(&qword_1EE19DA88);
  }

  result = re::AssetUtilities::readSourceJson(&v22, a2, v8, _MergedGlobals_136, a3);
  if (v22 == 1)
  {
    *a4 = v22;
    *(a4 + 8) = v8;
  }

  else
  {
    re::internal::destroyPersistent<re::FontAsset>("compile", 58, v8);
    *&v18 = 100;
    *(&v18 + 1) = re::AssetErrorCategory(void)::instance;
    result = re::DynamicString::DynamicString(&v19, &v23);
    v10 = v19;
    *(a4 + 8) = v18;
    v11 = v20;
    v12 = v21;
    *a4 = 0;
    *(a4 + 24) = v10;
    *(a4 + 40) = v11;
    *(a4 + 48) = v12;
    if ((v22 & 1) == 0)
    {
      result = v23;
      if (v23)
      {
        if (v24)
        {
          return (*(*v23 + 40))();
        }
      }
    }
  }

  return result;
}

re::DynamicString *re::FontLayoutCompiler::getCurrentCompiledAssetInfo@<X0>(re::FontLayoutCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::FontLayoutAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::FontLayoutCompiler::assetIntrospectionType(re::FontLayoutCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::FontLayoutAsset>(BOOL)::info = re::introspect_FontLayoutAsset(0, v4, v5, v6, v7, v8);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 262);
}

_anonymous_namespace_ *re::FontLayoutCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::FontLayoutCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

FILE *re::FontLayoutCompiler::compile@<X0>(re *a1@<X0>, re::FileStreamReader *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 128, 8);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  result = re::parseFontLayout(a2, v6, &v8);
  if ((v8 & 1) == 0)
  {
    result = v9;
    if (v9)
    {
      if (v10)
      {
        result = (*(v9->_p + 5))();
      }
    }
  }

  *a3 = 1;
  *(a3 + 8) = v6;
  return result;
}

re::DynamicString *re::ShaderLibraryCompiler::getCurrentCompiledAssetInfo@<X0>(re::ShaderLibraryCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::ShaderLibraryAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::ShaderLibraryCompiler::assetIntrospectionType(re::ShaderLibraryCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ShaderLibraryAsset>(BOOL)::info = re::introspect_ShaderLibraryAsset(0, v4, v5, v6, v7, v8);
      v1 = &unk_1EE187000;
    }
  }

  return v1[208];
}

_anonymous_namespace_ *re::ShaderLibraryCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::ShaderLibraryCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

void *re::ShaderLibraryCompiler::compile@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = stat(a1, &v15);
  if (v4)
  {
    result = re::DynamicString::format(&v15, "failed to load shader library %s", v5, a1);
    v7 = 0;
    v8 = *&v15.st_dev;
    v9 = *&v15.st_uid;
    v10 = *&v15.st_rdev;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    *(a2 + 48) = v10;
    v11 = 100;
  }

  else
  {
    v12 = re::globalAllocators(v4);
    v11 = (*(*v12[2] + 32))(v12[2], 88, 8);
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 40) = 0u;
    *v11 = &unk_1F5CBE448;
    *(v11 + 24) = 0u;
    *(v11 + 8) = 0u;
    v13 = re::DynamicString::setCapacity((v11 + 8), 0);
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    re::DynamicString::setCapacity((v11 + 40), 0);
    *(v11 + 80) = 0;
    v14 = strlen(a1);
    *&v15.st_dev = a1;
    v15.st_ino = v14;
    result = re::DynamicString::operator=((v11 + 40), &v15);
    v7 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v11;
  return result;
}

BOOL re::isPackageRelativePath(char *a1, size_t __n)
{
  if (!__n)
  {
    return 0;
  }

  v2 = &a1[__n];
  if (a1[__n - 1] != 93)
  {
    return 0;
  }

  v3 = memchr(a1, 91, __n);
  if (v3)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

uint64_t re::innerPathFromPackageRelativePath(uint64_t result, unint64_t a2)
{
  if (a2 && *(result + a2 - 1) == 93)
  {
    v2 = 0;
    v3 = (a2 - 1);
    v4 = 1;
    while (1)
    {
      v5 = v3 + v2;
      if (v3 + v2 < 1)
      {
        break;
      }

      v6 = v5 - 1;
      if (a2 <= v5 - 1)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3 + v2 - 1, a2);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v14);
        __break(1u);
LABEL_16:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
        result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
        __break(1u);
        return result;
      }

      v7 = *(v3 + result - 1 + v2);
      if (v6)
      {
        v8 = (a2 - 3 + v2);
        if (a2 <= v8)
        {
          goto LABEL_16;
        }

        v9 = *(result + v8) != 92;
      }

      else
      {
        v9 = 1;
      }

      v10 = v7 == 93;
      v11 = ((v7 == 91) & v9) << 31 >> 31;
      if (v10 && v9)
      {
        v11 = 1;
      }

      --v2;
      v4 += v11;
      if (!v4)
      {
        result += v3 + v2 + 1;
        return result;
      }
    }
  }

  return result;
}

char *re::fixAssetName@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  re::replaceChar(a4, *a1, *(a1 + 8), 0x2Fu);
  if (*(a4 + 8))
  {
    result = *(a4 + 16);
  }

  else
  {
    result = (a4 + 9);
  }

  if (result)
  {
    result = strpbrk(result, ":<>|?*");
    if (result)
    {
      for (i = 0; i != 7; ++i)
      {
        v7 = *(a4 + 8);
        if (v7)
        {
          v8 = *(a4 + 16);
        }

        else
        {
          v8 = (a4 + 9);
        }

        v9 = (v7 >> 1);
        v10 = (v7 >> 1);
        if (*(a4 + 8))
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        re::replaceChar(&v12, v8, v11, re::AssetPath::invalidNameChars[i]);
        re::DynamicString::operator=(a4, &v12);
        result = v12;
        if (v12)
        {
          if (v13)
          {
            result = (*(*v12 + 40))();
          }
        }
      }
    }
  }

  return result;
}

uint64_t *re::replaceChar@<X0>(uint64_t *__return_ptr a1@<X8>, re *this@<X0>, const char *a3@<X1>, unsigned __int8 a4@<W2>)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  re::DynamicString::setCapacity(a1, 0);
  result = re::DynamicString::resize(a1, a3, 0);
  if (a3)
  {
    v9 = 0;
    do
    {
      v10 = v9[this];
      result = re::DynamicString::operator[](a1, v9);
      if (v10 == a4)
      {
        v11 = 95;
      }

      else
      {
        v11 = v10;
      }

      *result = v11;
      ++v9;
    }

    while (a3 != v9);
  }

  return result;
}

uint64_t re::ImportAssetTable::compiledAssetPath@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, re **a3@<X2>, re::DynamicString *a4@<X8>)
{
  v15[0] = a1;
  v15[1] = a2;
  re::stringToLowerCase(&v12, *a3);
  re::fixAssetName(v15, &v9);
  if (v10)
  {
    v6 = *&v11[7];
  }

  else
  {
    v6 = v11;
  }

  if (v13)
  {
    v7 = *&v14[7];
  }

  else
  {
    v7 = v14;
  }

  re::DynamicString::format(a4, "%s.compiled%s", v5, v6, v7);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::setFunctionConstantsFromScene(re::DynamicString *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 50);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 23);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(result + 50);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(result + 23);
    do
    {
      result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2 + 296, (v8 + 80 * v5 + 8), (v8 + 80 * v5 + 40));
      v9 = *(v3 + 50);
      if (v9 <= v5 + 1)
      {
        v10 = v5 + 1;
      }

      else
      {
        v10 = *(v3 + 50);
      }

      v8 = *(v3 + 23);
      while (v10 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v10;
LABEL_17:
      ;
    }

    while (v5 != v9);
  }

  return result;
}

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, const re::DynamicString *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v9, a2);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicString const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicString::operator=((*(a1 + 16) + 80 * v7 + 40), a3);
}

uint64_t re::setFunctionConstantsFromMaterial(uint64_t a1, int a2)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableBaseColorMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableNormalMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableEmissiveMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableRoughnessMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableMetallicMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableAOMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableSpecularMap", &v73);
  v4 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableClearcoat", &v73);
  if (a2)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1 + 296, "UseBaseColorMapAsTintMask", &v69);
  v6 = v69;
  if (v69 && (BYTE8(v69) & 1) != 0)
  {
    v6 = (*(*v69 + 40))();
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v72 = 0x7FFFFFFFLL;
  v7 = *(a1 + 184);
  if (v7)
  {
    v8 = 0;
    v9 = *(a1 + 168);
    while (1)
    {
      v10 = *v9;
      v9 += 22;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(a1 + 184);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 != v7)
  {
    v11 = *(a1 + 168);
    do
    {
      v6 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v69, (v11 + 88 * v8 + 8));
      if (*(a1 + 184) <= (v8 + 1))
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = *(a1 + 184);
      }

      v11 = *(a1 + 168);
      while (v12 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v11 + 88 * v8) & 0x80000000) != 0)
        {
          goto LABEL_23;
        }
      }

      LODWORD(v8) = v12;
LABEL_23:
      ;
    }

    while (v8 != v7);
  }

  v13 = *(a1 + 232);
  if (v13)
  {
    v14 = 0;
    v15 = *(a1 + 216);
    while (1)
    {
      v16 = *v15;
      v15 += 40;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(a1 + 232);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  v17 = "false";
  if (v14 != v13)
  {
    LOBYTE(v18) = 0;
    v19 = *(a1 + 216);
    do
    {
      v6 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v69, (v19 + 160 * v14 + 8));
      if (v18)
      {
        v18 = 1;
      }

      else
      {
        v20 = v19 + 160 * v14;
        v22 = *(v20 + 144);
        v21 = v20 + 144;
        v18 = v22 == 1 && *(v21 + 4) != 0;
      }

      v23 = *(a1 + 232);
      if (v23 <= v14 + 1)
      {
        v23 = v14 + 1;
      }

      v19 = *(a1 + 216);
      while (v23 - 1 != v14)
      {
        LODWORD(v14) = v14 + 1;
        if ((*(v19 + 160 * v14) & 0x80000000) != 0)
        {
          goto LABEL_44;
        }
      }

      LODWORD(v14) = v23;
LABEL_44:
      ;
    }

    while (v14 != v13);
    if (v18)
    {
      v17 = "true";
    }
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1 + 296, "EnableMultiUVs", &v66);
  if (v66 && (v67 & 1) != 0)
  {
    (*(*v66 + 40))();
  }

  v24 = v71;
  if (v71)
  {
    v25 = 0;
    v26 = (v70 + 8);
    while (1)
    {
      v27 = *v26;
      v26 += 12;
      if (v27 < 0)
      {
        break;
      }

      if (v71 == ++v25)
      {
        LODWORD(v25) = v71;
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 != v71)
  {
    v28 = v70;
    do
    {
      re::DynamicString::DynamicString(&v66, (v28 + 48 * v25 + 16));
      if (v67)
      {
        v29 = *&v68[7];
      }

      else
      {
        v29 = v68;
      }

      v30 = strcmp(v29, "textureBaseColor");
      if (v30)
      {
        v31 = strcmp(v29, "textureNormal");
        if (v31)
        {
          v32 = strcmp(v29, "textureEmissive");
          if (v32)
          {
            v33 = strcmp(v29, "textureRoughness");
            if (v33)
            {
              v34 = strcmp(v29, "textureMetallic");
              if (v34)
              {
                v35 = strcmp(v29, "textureAmbientOcclusion");
                if (v35)
                {
                  v36 = strcmp(v29, "textureSpecular");
                  if (v36)
                  {
                    v37 = strcmp(v29, "textureOpacity");
                    if (v37)
                    {
                      v38 = strcmp(v29, "textureClearcoatRoughness");
                      if (v38 && (v38 = strcmp(v29, "textureClearcoat"), v38))
                      {
                        v39 = strcmp(v29, "textureRMAS");
                        if (v39)
                        {
                          goto LABEL_88;
                        }

                        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 296, "EnableSeparateRMAS", &v64);
                        v40 = v64;
                        if (v64 && (v65 & 1) != 0)
                        {
                          v40 = (*(*v64 + 40))();
                        }

                        v41 = a1 + 296;
                        v42 = "EnableSingleRMAS";
                      }

                      else
                      {
                        v41 = a1 + 296;
                        v42 = "EnableClearcoat";
                      }
                    }

                    else
                    {
                      v41 = a1 + 296;
                      v42 = "EnableOpacityMap";
                    }
                  }

                  else
                  {
                    v41 = a1 + 296;
                    v42 = "EnableSpecularMap";
                  }
                }

                else
                {
                  v41 = a1 + 296;
                  v42 = "EnableAOMap";
                }
              }

              else
              {
                v41 = a1 + 296;
                v42 = "EnableMetallicMap";
              }
            }

            else
            {
              v41 = a1 + 296;
              v42 = "EnableRoughnessMap";
            }
          }

          else
          {
            v41 = a1 + 296;
            v42 = "EnableEmissiveMap";
          }
        }

        else
        {
          v41 = a1 + 296;
          v42 = "EnableNormalMap";
        }
      }

      else
      {
        v41 = a1 + 296;
        v42 = "EnableBaseColorMap";
      }

      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v41, v42, &v64);
      if (v64 && (v65 & 1) != 0)
      {
        (*(*v64 + 40))();
      }

LABEL_88:
      if (v66 && (v67 & 1) != 0)
      {
        (*(*v66 + 40))();
      }

      v28 = v70;
      if (v71 <= v25 + 1)
      {
        v43 = v25 + 1;
      }

      else
      {
        v43 = v71;
      }

      while (v43 - 1 != v25)
      {
        LODWORD(v25) = v25 + 1;
        if ((*(v70 + 48 * v25 + 8) & 0x80000000) != 0)
        {
          goto LABEL_98;
        }
      }

      LODWORD(v25) = v43;
LABEL_98:
      ;
    }

    while (v25 != v24);
  }

  v44 = *(a1 + 88);
  if (v44)
  {
    v45 = 0;
    v46 = *(a1 + 72);
    while (1)
    {
      v47 = *v46;
      v46 += 20;
      if (v47 < 0)
      {
        break;
      }

      if (v44 == ++v45)
      {
        LODWORD(v45) = *(a1 + 88);
        break;
      }
    }
  }

  else
  {
    LODWORD(v45) = 0;
  }

  if (v45 != v44)
  {
    v48 = *(a1 + 72);
    do
    {
      v49 = v48 + 80 * v45;
      v50 = v49 + 40;
      v51 = *(v49 + 16);
      v52 = *(v49 + 24);
      v53 = (v49 + 17);
      if (v51)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      if (!strcmp(v54, "clearcoatScale") || !strcmp(v54, "clearcoatRoughnessScale"))
      {
        if (*(v50 + 8))
        {
          v56 = *(v50 + 16);
        }

        else
        {
          v56 = (v50 + 9);
        }

        if (strtof(v56, 0) <= 0.0)
        {
          goto LABEL_126;
        }

        v58 = a1 + 296;
        v59 = "EnableClearcoat";
      }

      else
      {
        if (strcmp(v54, "opacityThreshold"))
        {
          goto LABEL_126;
        }

        v55 = (*(v50 + 8) & 1) != 0 ? *(v50 + 16) : (v50 + 9);
        if (strtof(v55, 0) <= 0.0)
        {
          goto LABEL_126;
        }

        v58 = a1 + 296;
        v59 = "EnableOpacityThreshold";
      }

      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v58, v59, &v66);
      if (v66 && (v67 & 1) != 0)
      {
        (*(*v66 + 40))();
      }

LABEL_126:
      if (*(a1 + 88) <= (v45 + 1))
      {
        v61 = v45 + 1;
      }

      else
      {
        v61 = *(a1 + 88);
      }

      v48 = *(a1 + 72);
      while (v61 - 1 != v45)
      {
        LODWORD(v45) = v45 + 1;
        if ((*(v48 + 80 * v45) & 0x80000000) != 0)
        {
          goto LABEL_134;
        }
      }

      LODWORD(v45) = v61;
LABEL_134:
      ;
    }

    while (v45 != v44);
  }

  v62 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v69);
  result = v73;
  if (v73)
  {
    if (v74)
    {
      return (*(*v73 + 40))(v62);
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, const re::DynamicString *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicString const&>(a1, &v7, &v10, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v8) + 40;
  }
}

void re::createMaterialAssetsFromMaterialTable(void *a1, uint64_t a2, _anonymous_namespace_ *a3)
{
  v3 = a2;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v44 = (a1 + 57);
    v8 = *(a2 + 16);
    v45 = *(a2 + 32);
    do
    {
      v9 = v8 + 72 * v5;
      v11 = *(v9 + 48);
      v10 = v9 + 48;
      v12 = v11;
      v13 = v12;
      if (v12)
      {
        v52 = 0u;
        v53 = 0u;
        re::DynamicString::setCapacity(&v52, 0);
        memset(v54, 0, sizeof(v54));
        v55 = 0x7FFFFFFFLL;
        memset(v56, 0, sizeof(v56));
        v57 = 0;
        v58 = 0x7FFFFFFFLL;
        memset(v59, 0, sizeof(v59));
        v60 = 0;
        v61 = 0x7FFFFFFFLL;
        memset(v62, 0, sizeof(v62));
        v63 = 0;
        v64 = 0x7FFFFFFFLL;
        v66 = 0;
        memset(v65, 0, sizeof(v65));
        v67 = 0x7FFFFFFFLL;
        memset(v68, 0, sizeof(v68));
        v69 = 0;
        v70 = 0x7FFFFFFFLL;
        v71[0] = 0;
        v71[2] = 0;
        v71[4] = 0;
        v71[6] = 0;
        v71[8] = 0;
        v71[10] = 0;
        v71[12] = 0;
        v71[14] = 0;
        v71[16] = 0;
        v71[18] = 0;
        v74 = 0;
        v73 = 0;
        memset(v72, 0, sizeof(v72));
        v75 = 0;
        v14 = *(v10 + 12);
        v15 = v13;
        v16 = [(_anonymous_namespace_ *)v15 name];
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = &stru_1F5D319D0;
        }

        if (v14 == 1)
        {
          v18 = [(__CFString *)v17 stringByAppendingString:@"/subd"];

          v17 = v18;
        }

        v19 = [(__CFString *)v17 UTF8String];
        v20 = strlen(v19);
        v49 = v19;
        v50 = v20;
        re::DynamicString::operator=(&v52, &v49);
        re::gatherMaterialConstants(&v54[24], v15);
        v21 = a1;
        re::setFunctionConstantsFromScene(a1, &v52);
        re::setFunctionConstantsFromMaterial(&v52, 0);
        isMaterialTransparent = re::isMaterialTransparent(v15, v22);

        v25 = a1[7];
        if (v25)
        {
          v26 = v25 >> 1;
        }

        else
        {
          v26 = v25 >> 1;
        }

        if (v26)
        {
          if (a1[7])
          {
            v27 = a1[8];
          }

          else
          {
            v27 = v44;
          }
        }

        else
        {
          if (v14)
          {
            if (isMaterialTransparent)
            {
              v28 = "engine:transparentPbrOpenSubdiv.rematerialdefinition";
            }

            else
            {
              v28 = "engine:pbrOpenSubdiv.rematerialdefinition";
            }
          }

          else if (isMaterialTransparent)
          {
            v28 = "engine:transparentPbr.rematerialdefinition";
          }

          else
          {
            v28 = "engine:pbr.rematerialdefinition";
          }

          v21 = a1;
        }

        v30 = v21[13];
        if (BYTE8(v52))
        {
          v31 = v53;
        }

        else
        {
          v31 = &v52 + 9;
        }

        if (BYTE8(v52))
        {
          v32 = (*(&v52 + 1) >> 1);
        }

        else
        {
          v32 = (BYTE8(v52) >> 1);
        }

        v33 = re::MaterialAsset::assetType(v29);
        v34 = re::ImportAssetTable::importedAsset(v30, v31, v32, v33);
        if (!v34)
        {
          v35 = re::globalAllocators(0);
          v36 = (*(*v35[2] + 32))(v35[2], 1992, 8);
          bzero(v36, 0x7C8uLL);
          re::MaterialAsset::MaterialAsset(v36);
          re::DynamicString::operator=((v36 + 8), &v52);
          re::AssetHandle::operator=((v36 + 40), v54);
          re::MaterialParameterData::operator=((v36 + 64), &v54[24]);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v36 + 304), v68);
          re::MaterialRenderFlags::operator=(v36 + 352, v71);
          v37 = re::DynamicArray<re::FunctionLink>::operator=((v36 + 376), v72);
          v36[416] = v75;
          v38 = v21[13];
          if (BYTE8(v52))
          {
            v39 = v53;
          }

          else
          {
            v39 = &v52 + 9;
          }

          if (BYTE8(v52))
          {
            v40 = *(&v52 + 1) >> 1;
          }

          else
          {
            v40 = BYTE8(v52) >> 1;
          }

          v41 = re::MaterialAsset::assetType(v37);
          v34 = re::ImportAssetTable::addAsset(v38, v39, v40, v36, v41);
        }

        v50 = 0;
        v51 = 0;
        v49 = 0;
        if (*(v34 + 8))
        {
          v42 = *(v34 + 16);
        }

        else
        {
          v42 = (v34 + 9);
        }

        LODWORD(v4) = v45;
        v3 = a2;
        re::DynamicArray<re::AssetHandle>::add(a3, &v49);
        re::AssetHandle::~AssetHandle(&v49);
        re::DynamicArray<re::FunctionLink>::deinit(v72);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v68);
        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v65);
        re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v62);
        re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v59);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v56);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v54[24]);
        re::AssetHandle::~AssetHandle(v54);
        if (v52 && (BYTE8(v52) & 1) != 0)
        {
          (*(*v52 + 40))();
        }
      }

      if (*(v3 + 32) <= (v5 + 1))
      {
        v43 = v5 + 1;
      }

      else
      {
        v43 = *(v3 + 32);
      }

      v8 = *(v3 + 16);
      while (v43 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 72 * v5) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }
      }

      LODWORD(v5) = v43;
LABEL_59:
      ;
    }

    while (v5 != v4);
  }
}

uint64_t re::ImportAssetTable::importedAsset(uint64_t a1, uint64_t a2, const char *a3, re **a4)
{
  re::ImportAssetTable::compiledAssetPath(a2, a3, a4, &v8);
  v5 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 56, &v8);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return v6;
}

unint64_t re::ImportAssetTable::addAsset(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, re **a5)
{
  v27[0] = a2;
  v27[1] = a3;
  v25 = 0;
  v26 = 0;
  if (a3)
  {
    v9 = a3 + 1;
  }

  else
  {
    v9 = 0;
  }

  v24 = 0;
  re::DynamicString::setCapacity(&v23, v9);
  re::DynamicString::operator=(&v23, v27);
  if (v24)
  {
    v10 = v25;
  }

  else
  {
    v10 = &v24 + 1;
  }

  if (v24)
  {
    v11 = (v24 >> 1);
  }

  else
  {
    v11 = (v24 >> 1);
  }

  re::ImportAssetTable::compiledAssetPath(v10, v11, a5, &v21);
  re::DynamicString::operator=(&v23, &v21);
  if (v21 && (v22[0] & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  if (re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 56, &v23))
  {
    v12 = 1;
    do
    {
      re::DynamicString::operator=(&v23, v27);
      re::DynamicString::format(&v21, "_%02d", v13, v12);
      v14 = v22[0] & 1;
      if (v22[0])
      {
        v15 = v22[1];
      }

      else
      {
        v15 = v22 + 1;
      }

      if (v22[0])
      {
        v16 = v22[0] >> 1;
      }

      else
      {
        v16 = LOBYTE(v22[0]) >> 1;
      }

      re::DynamicString::append(&v23, v15, v16);
      if (v21 && v14)
      {
        (*(*v21 + 40))();
      }

      if (v24)
      {
        v17 = v25;
      }

      else
      {
        v17 = &v24 + 1;
      }

      if (v24)
      {
        v18 = (v24 >> 1);
      }

      else
      {
        v18 = (v24 >> 1);
      }

      re::ImportAssetTable::compiledAssetPath(v17, v18, a5, &v21);
      re::DynamicString::operator=(&v23, &v21);
      if (v21 && (v22[0] & 1) != 0)
      {
        (*(*v21 + 40))();
      }

      v12 = (v12 + 1);
    }

    while (re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 56, &v23));
  }

  v19 = re::ImportAssetTable::addAssetWithPath(a1, &v23, a4, a5);
  if (v23 && (v24 & 1) != 0)
  {
    (*(*v23 + 40))();
  }

  return v19;
}

void re::createMaterialAssetsFromMaterialTableUSK(uint64_t a1, uint64_t a2, _anonymous_namespace_ *a3)
{
  v3 = a2;
  v4 = a1;
  v346 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
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

  if (v6 != v5)
  {
    v259 = *MEMORY[0x1E69DEEC8];
    v234 = (a1 + 57);
    v9 = *(a2 + 16);
    __asm
    {
      FMOV            V11.2S, #1.0
      FMOV            V3.4S, #1.0
    }

    v239 = vdupq_lane_s32(0, 0);
    v240 = *(&_Q3 + 1);
    v235 = *(a2 + 32);
    while (1)
    {
      v16 = v9 + 72 * v6;
      v18 = *(v16 + 48);
      v17 = v16 + 48;
      v19 = v18;
      if (v19)
      {
        break;
      }

LABEL_319:

      if (*(v3 + 32) <= (v6 + 1))
      {
        v232 = v6 + 1;
      }

      else
      {
        v232 = *(v3 + 32);
      }

      v9 = *(v3 + 16);
      while (v232 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v9 + 72 * v6) & 0x80000000) != 0)
        {
          goto LABEL_327;
        }
      }

      LODWORD(v6) = v232;
LABEL_327:
      if (v6 == v5)
      {
        return;
      }
    }

    v266 = 0u;
    v267 = 0u;
    v20 = v19;
    re::DynamicString::setCapacity(&v266, 0);
    memset(v268, 0, sizeof(v268));
    v269 = 0x7FFFFFFFLL;
    v270 = 0u;
    v271 = 0u;
    v272 = 0;
    v273 = 0x7FFFFFFFLL;
    memset(v274, 0, sizeof(v274));
    v275 = 0;
    v276 = 0x7FFFFFFFLL;
    memset(v277, 0, sizeof(v277));
    v278 = 0;
    v279 = 0x7FFFFFFFLL;
    v281 = 0;
    memset(v280, 0, sizeof(v280));
    v282 = 0x7FFFFFFFLL;
    memset(v283, 0, sizeof(v283));
    v284 = 0;
    v285 = 0x7FFFFFFFLL;
    v286[0] = 0;
    v286[2] = 0;
    v286[4] = 0;
    v286[6] = 0;
    v286[8] = 0;
    v286[10] = 0;
    v286[12] = 0;
    v286[14] = 0;
    v286[16] = 0;
    v286[18] = 0;
    v289 = 0;
    v288 = 0;
    memset(v287, 0, sizeof(v287));
    v290 = 0;
    v21 = *(v17 + 12);
    v242 = v20;
    v247 = v20;
    v22 = [v247 path];
    v23 = [v22 stringValue];

    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = &stru_1F5D319D0;
    }

    v238 = v21;
    if (v21 == 1)
    {
      v25 = [(__CFString *)v24 stringByAppendingString:@"/subd"];
      v26 = v24;
      v24 = v25;
    }

    v243 = v24;
    v27 = [(__CFString *)v24 UTF8String];
    v28 = strlen(v27);
    *v325 = v27;
    *&v325[8] = v28;
    re::DynamicString::operator=(&v266, v325);
    re::gatherMaterialTextureProperties(v247, v306);
    v304 = 0;
    memset(v303, 0, sizeof(v303));
    v305 = 0x7FFFFFFFLL;
    v30 = [MEMORY[0x1E69DED88] firstUVMeshAttributeNameInMaterial:v247];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 UTF8String];
      v33 = strlen(v32);
      *v325 = v32;
      *&v325[8] = v33;
      re::DynamicString::operator=(&v300, v325);
    }

    v241 = v31;
    v34 = v308;
    if (v308)
    {
      v35 = 0;
      v36 = v307;
      do
      {
        v37 = *v36;
        v36 += 14;
        if (v37 < 0)
        {
          goto LABEL_23;
        }

        ++v35;
      }

      while (v308 != v35);
      LODWORD(v35) = v308;
    }

    else
    {
      LODWORD(v35) = 0;
    }

LABEL_23:
    if (v35 == v308)
    {
      v252 = 0;
      goto LABEL_25;
    }

    v257 = 0;
    v252 = 0;
    v45 = v307;
    v256 = v308;
LABEL_28:
    v264 = &v45[14 * v35];
    v46 = v264[5];
    ResourcePathAndColorSpaceForTextureProperty = re::getResourcePathAndColorSpaceForTextureProperty(v46);
    if (!ResourcePathAndColorSpaceForTextureProperty)
    {
      goto LABEL_209;
    }

    v258 = v46;
    v265 = ResourcePathAndColorSpaceForTextureProperty;
    if (*(v4 + 162))
    {
      goto LABEL_76;
    }

    v48 = [ResourcePathAndColorSpaceForTextureProperty path];
    v49 = [v48 pathExtension];
    v50 = [v49 UTF8String];
    v51 = strlen(v50);
    if (v51 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v52 = v51;
    if (v51 >= 0x17)
    {
      operator new();
    }

    __dst[23] = v51;
    if (v51)
    {
      memmove(__dst, v50, v51);
    }

    __dst[v52] = 0;

    v53 = __dst[23];
    v54 = *&__dst[8];
    if (__dst[23] >= 0)
    {
      v55 = __dst[23];
    }

    else
    {
      v55 = *&__dst[8];
    }

    if (v55)
    {
      v56 = 0;
      v57 = __dst[23] >> 63;
      do
      {
        v58 = *__dst;
        if (v57)
        {
          v59 = *__dst;
        }

        else
        {
          v59 = __dst;
        }

        ResourcePathAndColorSpaceForTextureProperty = __tolower(v59[v56]);
        if ((v53 & 0x80u) == 0)
        {
          v60 = __dst;
        }

        else
        {
          v60 = v58;
        }

        v60[v56++] = ResourcePathAndColorSpaceForTextureProperty;
        v53 = __dst[23];
        v57 = __dst[23] >> 63;
        v54 = *&__dst[8];
        if (__dst[23] >= 0)
        {
          v61 = __dst[23];
        }

        else
        {
          v61 = *&__dst[8];
        }
      }

      while (v61 > v56);
    }

    if ((v53 & 0x80000000) == 0)
    {
      v62 = v53;
    }

    else
    {
      v62 = v54;
    }

    v63 = *__dst;
    if ((v53 & 0x80000000) == 0)
    {
      v64 = __dst;
    }

    else
    {
      v64 = *__dst;
    }

    v65 = &qword_1E871BE20;
    v66 = 64;
    do
    {
      if (*v65 == v62)
      {
        ResourcePathAndColorSpaceForTextureProperty = memcmp(*(v65 - 1), v64, v62);
        if (!ResourcePathAndColorSpaceForTextureProperty)
        {
          goto LABEL_73;
        }
      }

      v65 += 2;
      v66 -= 16;
    }

    while (v66);
    v67 = 0;
    v68 = &qword_1E871BE20;
    while (1)
    {
      v69 = re::DynamicString::append(v325, *(v68 - 1), *v68);
      if (v67 == 2)
      {
        break;
      }

      if (v67 != 3)
      {
        v70 = ", ";
LABEL_66:
        v71 = strlen(v70);
        v69 = re::DynamicString::append(v325, v70, v71);
      }

      v68 += 2;
      if (++v67 == 4)
      {
        v72 = *re::pipelineLogObjects(v69);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v200 = [v265 path];
          v201 = [v200 UTF8String];
          v202 = &v325[9];
          if (v325[8])
          {
            v202 = *&v325[16];
          }

          *buf = 136315394;
          *&buf[4] = v201;
          v334 = 2080;
          *v335 = v202;
          _os_log_error_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_ERROR, "%s is an invalid USDZ texture format. Only %s textures are supported.", buf, 0x16u);
        }

        ResourcePathAndColorSpaceForTextureProperty = *v325;
        if (*v325 && (v325[8] & 1) != 0)
        {
          ResourcePathAndColorSpaceForTextureProperty = (*(**v325 + 40))();
        }

        v252 = 1;
LABEL_73:
        if ((v53 & 0x80000000) != 0)
        {
          operator delete(v63);
        }

        v46 = v258;
LABEL_76:
        v299 = 0u;
        v298 = 0u;
        re::DynamicString::setCapacity(&v298, 0);
        v73 = [v46 parentNode];
        v74 = [MEMORY[0x1E69DED88] shaderNodeType:v73];
        v75 = [v74 isEqualToString:v259];

        v260 = 0;
        v261 = xmmword_1E3060D30;
        if (v75)
        {
          v76 = [v73 property:@"inputs:st"];
          v77 = [MEMORY[0x1E69DED88] targetPropertyWithProperty:v76];
          v78 = [v77 parentNode];
          v79 = [v78 property:@"info:id"];
          v80 = v79;
          if (v79)
          {
            v254 = v76;
            v81 = [v79 stringValue];
            v82 = [v81 isEqualToString:@"UsdTransform2d"];

            if (!v82)
            {
              v260 = 0;
              v261 = xmmword_1E3060D30;
              goto LABEL_100;
            }

            v83 = [v78 property:@"inputs:scale"];
            v84 = v83;
            v85 = _D11;
            if (v83)
            {
              [v83 float2Value];
            }

            v262 = v85;
            v86 = [v78 property:@"inputs:rotation"];
            v248 = v86;
            v250 = v84;
            if (v86)
            {
              [v86 floatValue];
              v88 = v87;
            }

            else
            {
              v88 = 0.0;
            }

            v89 = [v78 property:@"inputs:translation"];
            v90 = v89;
            if (v89)
            {
              [v89 float2Value];
            }

            else
            {
              v91 = 0;
            }

            v92 = 0;
            v93.i64[1] = v240;
            v93.i32[0] = v91;
            *__dst = xmmword_1E3047670;
            *&__dst[16] = xmmword_1E3047680;
            *&__dst[32] = xmmword_1E3068120;
            do
            {
              v93.f32[1] = -*(&v91 + 1);
              *&v325[v92] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&__dst[v92])), xmmword_1E3047680, *&__dst[v92], 1), v93, *&__dst[v92], 2);
              v92 += 16;
            }

            while (v92 != 48);
            v94 = v88 / 180.0 * 3.14159265;
            v95 = __sincosf_stret(v94);
            v96 = 0;
            *&v97 = v95.__cosval;
            *(&v97 + 1) = -v95.__sinval;
            v98 = *v325;
            v99 = *&v325[16];
            v100 = *v326;
            *__dst = v97;
            *&__dst[16] = v95;
            *&__dst[32] = xmmword_1E30476A0;
            do
            {
              *&v325[v96] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*&__dst[v96])), v99, *&__dst[v96], 1), v100, *&__dst[v96], 2);
              v96 += 16;
            }

            while (v96 != 48);
            v101 = 0;
            v102 = v239;
            v103 = v239;
            v102.i32[1] = HIDWORD(v262);
            v103.i32[0] = LODWORD(v262);
            v104 = *v325;
            v105 = *&v325[16];
            v106 = *v326;
            *__dst = v103;
            *&__dst[16] = v102;
            *&__dst[32] = xmmword_1E30476A0;
            do
            {
              *&v325[v101] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*&__dst[v101])), v105, *&__dst[v101], 1), v106, *&__dst[v101], 2);
              v101 += 16;
            }

            while (v101 != 48);
            v107 = 0;
            v108 = *v325;
            v109 = *&v325[16];
            v110 = *v326;
            *__dst = xmmword_1E3047670;
            *&__dst[16] = xmmword_1E3047680;
            *&__dst[32] = xmmword_1E3068130;
            do
            {
              *&v325[v107] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, COERCE_FLOAT(*&__dst[v107])), v109, *&__dst[v107], 1), v110, *&__dst[v107], 2);
              v107 += 16;
            }

            while (v107 != 48);
            log = *&v325[16];
            v260 = *v326;
            v263 = *v325;
            v111 = [v78 property:@"inputs:in"];
            v112 = [MEMORY[0x1E69DED88] targetPropertyWithProperty:v111];
            v113 = v112;
            if (v112)
            {
              v114 = [v112 parentNode];

              v115 = [v114 property:@"info:id"];

              v80 = v115;
              v78 = v114;
            }

            *&v116 = v263;
            *(&v116 + 1) = log;
            v261 = v116;

            if (v80)
            {
LABEL_100:
              v4 = a1;
              v117 = [v80 stringValue];
              v118 = [v117 isEqualToString:@"UsdPrimvarReader_float2"];

              if (v118)
              {
                v119 = [v78 property:@"inputs:varname"];
                v120 = v119;
                if (v119)
                {
                  v121 = [v119 stringValue];
                  v122 = v121;
                  if (v121)
                  {
                    v123 = [v121 UTF8String];
                    v124 = strlen(v123);
                    *v325 = v123;
                    *&v325[8] = v124;
                    re::DynamicString::operator=(&v298, v325);
                  }

                  v4 = a1;
                }
              }
            }

            else
            {
              v4 = a1;
            }

            v76 = v254;
          }

          else
          {
            v260 = 0;
            v261 = xmmword_1E3060D30;
          }

          v46 = v258;
        }

        v125 = *(&v298 + 1) >> 1;
        if ((BYTE8(v298) & 1) == 0)
        {
          v125 = BYTE8(v298) >> 1;
        }

        if (v125)
        {
          if (BYTE8(v298))
          {
            v126 = v299;
          }

          else
          {
            v126 = &v298 + 9;
          }

          if (v301)
          {
            v127 = *&v302[7];
          }

          else
          {
            v127 = v302;
          }

          v128 = strcmp(v126, v127);
          v129 = v128 != 0;
          if ((v128 == 0) | v257 & 1)
          {
            v257 |= v129;
          }

          else
          {
            re::DynamicString::operator+(__dst, v131, &v298);
            v296 = 0;
            v295 = 0;
            v297 = 0;
            v132 = re::Hash<re::DynamicString>::operator()(v294, v325);
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v270, v132, &v295, v325);
            if (HIDWORD(v296) == 0x7FFFFFFF)
            {
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString,re::DynamicString>(&v270, &v295, v325, __dst);
            }

            else
            {
              ++HIDWORD(v273);
              re::DynamicString::operator=((v271 + 80 * HIDWORD(v296) + 40), __dst);
            }

            if (*__dst)
            {
              if (__dst[8])
              {
                (*(**__dst + 40))();
              }

              memset(__dst, 0, 32);
            }

            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))();
            }

            if (*v325 && (v325[8] & 1) != 0)
            {
              (*(**v325 + 40))();
            }

            v129 = 1;
            v257 = 1;
          }
        }

        else
        {
          v129 = 0;
        }

        buf[3] = 0;
        buf[8] = 0;
        v338 = 0;
        v339 = 0;
        v340 = 0;
        v341 = 0;
        v342 = 0;
        v343 = 0;
        v344 = 0;
        v345 = 0;
        *buf = 2;
        v335[2] = 1;
        *&v335[6] = 2;
        v336 = 1;
        v337 = 2;
        v133 = [v46 parentNode];
        v134 = [MEMORY[0x1E69DED88] shaderNodeType:v133];
        v135 = [v134 isEqualToString:v259];

        if (v135)
        {
          v255 = v129;
          v136 = v46;
          v137 = [v133 property:@"inputs:st"];
          v138 = [v137 parentNode];
          v139 = [v138 property:@"info:id"];
          v140 = v139;
          if (v139)
          {
            v141 = [v139 stringValue];
            v142 = [v141 isEqualToString:@"UsdUVTexture"];

            if (v142)
            {
              v249 = *&v335[6];
              v251 = v337;
              v143 = [v138 property:@"inputs:wrapS"];
              v144 = v143;
              if (v143)
              {
                v145 = [v143 stringValue];
                if ([v145 isEqualToString:@"black"])
                {
                  v146 = 4;
                  goto LABEL_141;
                }

                if ([v145 isEqualToString:@"clamp"])
                {
                  v249 = 0;
                  goto LABEL_144;
                }

                if ([v145 isEqualToString:@"repeat"])
                {
                  v146 = 2;
LABEL_141:
                  v249 = v146;
                  goto LABEL_144;
                }

                if ([v145 isEqualToString:@"mirror"])
                {
                  v146 = 3;
                  goto LABEL_141;
                }

                v204 = [v145 isEqualToString:@"useMetadata"];
                v205 = v204;
                loga = *re::pipelineLogObjects(v204);
                v206 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
                if (v205)
                {
                  v4 = a1;
                  if (v206)
                  {
                    *v325 = 0;
                    v207 = loga;
                    v208 = "Reading wrap mode from image metadata is currently not supported; defaulting to black";
                    goto LABEL_280;
                  }
                }

                else
                {
                  v4 = a1;
                  if (v206)
                  {
                    *v325 = 0;
                    v207 = loga;
                    v208 = "Wrap mode for imported USD was an invalid option; defaulting to black";
LABEL_280:
                    _os_log_impl(&dword_1E1C61000, v207, OS_LOG_TYPE_DEFAULT, v208, v325, 2u);
                  }
                }

LABEL_144:
              }

              v147 = [v138 property:@"inputs:wrapT"];
              v148 = v147;
              if (v147)
              {
                v149 = [v147 stringValue];
                if ([v149 isEqualToString:@"black"])
                {
                  v150 = 4;
                  goto LABEL_148;
                }

                if ([v149 isEqualToString:@"clamp"])
                {
                  v251 = 0;
                  goto LABEL_151;
                }

                if ([v149 isEqualToString:@"repeat"])
                {
                  v150 = 2;
LABEL_148:
                  v251 = v150;
                  goto LABEL_151;
                }

                if ([v149 isEqualToString:@"mirror"])
                {
                  v150 = 3;
                  goto LABEL_148;
                }

                v209 = [v149 isEqualToString:@"useMetadata"];
                logb = v209;
                v233 = *re::pipelineLogObjects(v209);
                v210 = os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT);
                if (logb)
                {
                  if (v210)
                  {
                    *v325 = 0;
                    v211 = v233;
                    v212 = "Reading wrap mode from image metadata is currently not supported; defaulting to black";
                    goto LABEL_283;
                  }
                }

                else if (v210)
                {
                  *v325 = 0;
                  v211 = v233;
                  v212 = "Wrap mode for imported USD was an invalid option; defaulting to black";
LABEL_283:
                  _os_log_impl(&dword_1E1C61000, v211, OS_LOG_TYPE_DEFAULT, v212, v325, 2u);
                }

LABEL_151:

                v4 = a1;
              }

              if ((v335[2] & 1) == 0)
              {
                v335[2] = 1;
              }

              *&v335[6] = v249;
              if ((v336 & 1) == 0)
              {
                v336 = 1;
              }

              v337 = v251;
            }
          }

          v46 = v136;
          v129 = v255;
        }

        v151 = [v265 path];
        v152 = [v151 UTF8String];

        v153 = strlen(v152);
        v154 = re::TextureAsset::assetType(v153);
        v155 = re::ImportAssetTable::compiledAssetPath(v152, v153, v154, &v295);
        memset(v294, 0, sizeof(v294));
        re::DynamicString::setCapacity(v294, 0);
        v156 = *(v4 + 104);
        v157 = strlen(v152);
        v158 = re::TextureAsset::assetType(v157);
        v159 = re::ImportAssetTable::importedAsset(v156, v152, v157, v158);
        if (v159)
        {
          re::DynamicString::operator=(v294, v159);
          v160 = v264;
        }

        else
        {
          isPackageRelativePath = re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v4 + 112, &v295);
          if (isPackageRelativePath)
          {
            v181 = isPackageRelativePath;
            re::loadTextureDataWithProvider(v325, isPackageRelativePath, *v4, v180);
            if (v325[0] == 1)
            {
              __dst[0] = 0;
              *&__dst[8] = -1;
              std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(__dst, &v325[8]);
              *&__dst[16] = *&v325[24];
              *&__dst[24] = *v326;
              *&__dst[36] = *&v326[12];
              v319 = *&v326[32];
              if (*&v326[32])
              {
                v183 = (*&v326[32] + 8);
              }

              v320 = v327;
              re::DynamicArray<short>::DynamicArray(v321, &v327 + 1);
              v324 = v332;
              TextureAsset = re::TextureAsset::makeTextureAsset((v181 + 46), __dst, &__dst[16], v181[26], v181[18]);
              v185 = *(v4 + 104);
              v186 = re::TextureAsset::assetType(TextureAsset);
              v187 = re::ImportAssetTable::addAssetWithPath(v185, &v295, TextureAsset, v186);
              re::DynamicString::operator=(v294, v187);
              v160 = v264;
              if (v321[0])
              {
                if (v323)
                {
                  (*(*v321[0] + 40))();
                }

                v323 = 0;
                memset(v321, 0, sizeof(v321));
                ++v322;
              }

              if (v319)
              {

                v319 = 0;
              }

              if (*&__dst[8] != -1)
              {
                (off_1F5CD0328[*&__dst[8]])(&v292, __dst);
              }
            }

            else
            {
              v193 = *re::pipelineLogObjects(v182);
              if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
              {
                v203 = [v265 path];
                *__dst = 138412546;
                *&__dst[4] = v203;
                *&__dst[12] = 2112;
                *&__dst[14] = v243;
                _os_log_debug_impl(&dword_1E1C61000, v193, OS_LOG_TYPE_DEBUG, "Texture '%@' failed to load (referenced by material '%@'); removing associated texture provider", __dst, 0x16u);
              }

              v194 = re::Hash<re::DynamicString>::operator()(__dst, &v295);
              re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(__dst, v4 + 112, &v295, v194);
              v195 = *&__dst[12];
              if (*&__dst[12] != 0x7FFFFFFF)
              {
                v196 = *(v4 + 128);
                v197 = (v196 + 328 * *&__dst[12]);
                v198 = *v197 & 0x7FFFFFFF;
                if (*&__dst[16] == 0x7FFFFFFF)
                {
                  *(*(v4 + 120) + 4 * *&__dst[8]) = v198;
                }

                else
                {
                  *(v196 + 328 * *&__dst[16]) = *(v196 + 328 * *&__dst[16]) & 0x80000000 | v198;
                }

                re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v197);
                *(*(v4 + 128) + 328 * v195) = *(*(v4 + 128) + 328 * v195) & 0x80000000 | *(v4 + 148);
                --*(v4 + 140);
                v199 = *(v4 + 152) + 1;
                *(v4 + 148) = v195;
                *(v4 + 152) = v199;
              }

              v160 = v264;
            }

            if (v325[0] == 1)
            {
              if (*(&v327 + 1))
              {
                if (v331)
                {
                  (*(**(&v327 + 1) + 40))();
                }

                v331 = 0;
                v328 = 0uLL;
                *(&v327 + 1) = 0;
                ++v329;
              }

              if (*&v326[32])
              {

                *&v326[32] = 0;
              }

              if (*&v325[16] != -1)
              {
                (off_1F5CD0328[*&v325[16]])(__dst, &v325[8]);
              }
            }

            else if (*&v325[8] && (v325[16] & 1) != 0)
            {
              (*(**&v325[8] + 40))();
            }
          }

          else
          {
            if (*(v4 + 82) == 1)
            {
              v188 = [v265 resolvedPath];
              v189 = [v188 UTF8String];

              v190 = strlen(v189);
              isPackageRelativePath = re::isPackageRelativePath(v189, v190);
              if ((isPackageRelativePath & 1) == 0)
              {
                isPackageRelativePath = re::DynamicString::assignf(v294, "sourcepath:%s", v189);
              }
            }

            if (BYTE8(v294[0]))
            {
              v191 = *(&v294[0] + 1) >> 1;
            }

            else
            {
              v191 = BYTE8(v294[0]) >> 1;
            }

            v160 = v264;
            if (!v191)
            {
              v192 = *re::pipelineLogObjects(isPackageRelativePath);
              if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
              {
                v213 = [v265 path];
                *v325 = 138412546;
                *&v325[4] = v243;
                *&v325[12] = 2112;
                *&v325[14] = v213;
                _os_log_debug_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_DEBUG, "Material '%@' references texture '%@' which could not be found during loading", v325, 0x16u);

                v160 = v264;
              }
            }
          }
        }

        if (BYTE8(v294[0]))
        {
          v161 = *(&v294[0] + 1) >> 1;
        }

        else
        {
          v161 = BYTE8(v294[0]) >> 1;
        }

        if (v161)
        {
          re::MaterialTextureParam::MaterialTextureParam(__dst, v294);
          memset(v325, 0, 24);
          v162 = re::Hash<re::DynamicString>::operator()(&v292, v160 + 1);
          v163 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v274, v162, v325, (v160 + 1));
          if (*&v325[12] == 0x7FFFFFFF)
          {
            v163 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureParam const&>(v274, v325, (v160 + 1), __dst);
          }

          memset(v325, 0, sizeof(v325));
          v164 = re::DynamicString::setCapacity(v325, 0);
          *v326 = 0;
          memset(&v326[8], 0, 32);
          v165 = re::DynamicString::setCapacity(&v326[8], 0);
          v328 = 0u;
          v327 = 0u;
          re::DynamicString::setCapacity(&v327, 0);
          LOBYTE(v329) = 0;
          re::MaterialTextureParam::setString(v325, v294);
          re::DynamicString::operator=(&v326[8], (v160 + 1));
          if ((v329 & 1) == 0)
          {
            LOBYTE(v329) = 1;
          }

          v330 = v129;
          v292 = 0uLL;
          *&v293 = 0;
          v166 = re::Hash<re::DynamicString>::operator()(v291, v160 + 1);
          v167 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v277, (v160 + 1), v166, &v292);
          if (HIDWORD(v292) == 0x7FFFFFFF)
          {
            v167 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureBlockData const&>(v277, &v292, (v160 + 1), v325);
          }

          v292 = 0u;
          v293 = 0u;
          re::DynamicString::setCapacity(&v292, 0);
          v168 = re::DynamicString::appendf(&v292, "%f, %f, %f, %f", *&v261, *(&v261 + 1), *(&v261 + 2), *(&v261 + 3));
          memset(v291, 0, sizeof(v291));
          re::DynamicString::setCapacity(v291, 0);
          re::DynamicString::appendf(v291, "%f, %f", *&v260, *(&v260 + 1));
          if (v129)
          {
            v169 = "uvTransform1";
          }

          else
          {
            v169 = "uvTransform";
          }

          if (v129)
          {
            v170 = "uvOffset1";
          }

          else
          {
            v170 = "uvOffset";
          }

          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(&v268[24], v169, &v292);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(&v268[24], v170, v291);
          v315 = 0;
          v314 = 0;
          v316 = 0;
          v171 = re::Hash<re::DynamicString>::operator()(&v317, v160 + 1);
          re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v280, (v160 + 1), v171, &v314);
          if (HIDWORD(v315) == 0x7FFFFFFF)
          {
            re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::OptionalMaterialSamplerData const&>(v280, &v314, (v160 + 1), buf);
          }

          v172 = re::Hash<re::DynamicString>::operator()(&v314, v160 + 1);
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v303, v172, &v314, (v160 + 1));
          if (HIDWORD(v315) == 0x7FFFFFFF)
          {
            v173 = re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v4 + 112, &v295);
            v315 = 0;
            v314 = 0;
            v316 = 0;
            v174 = re::Hash<re::DynamicString>::operator()(&v317, v160 + 1);
            re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v303, v174, &v314, (v160 + 1));
            if (HIDWORD(v315) == 0x7FFFFFFF)
            {
              v175 = re::HashTable<re::DynamicString,re::AssetHandle const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v303, v315, v314);
              v176 = v160;
              v177 = v175;
              re::DynamicString::DynamicString((v175 + 8), (v176 + 1));
              *(v177 + 40) = v173;
              ++HIDWORD(v305);
            }
          }

          if (*&v291[0] && (BYTE8(v291[0]) & 1) != 0)
          {
            (*(**&v291[0] + 40))();
          }

          if (v292 && (BYTE8(v292) & 1) != 0)
          {
            (*(*v292 + 40))();
          }

          if (v327)
          {
            if (BYTE8(v327))
            {
              (*(*v327 + 40))();
            }

            v328 = 0u;
            v327 = 0u;
          }

          if (*&v326[8])
          {
            if (v326[16])
            {
              (*(**&v326[8] + 40))();
            }

            memset(&v326[8], 0, 32);
          }

          if (*v326 != -1)
          {
            off_1F5CD02F8[*v326](&v292, v325);
          }

          if (*&__dst[32] != -1)
          {
            off_1F5CD02F8[*&__dst[32]](v325, __dst);
          }
        }

        if (*&v294[0] && (BYTE8(v294[0]) & 1) != 0)
        {
          (*(**&v294[0] + 40))();
        }

        v34 = v256;
        if (v295 && (v296 & 1) != 0)
        {
          (*(*v295 + 40))();
        }

        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          (*(*v298 + 40))();
        }

        ResourcePathAndColorSpaceForTextureProperty = v265;
LABEL_209:

        if (v308 <= v35 + 1)
        {
          v178 = v35 + 1;
        }

        else
        {
          v178 = v308;
        }

        v45 = v307;
        while (v178 - 1 != v35)
        {
          LODWORD(v35) = v35 + 1;
          if (v307[14 * v35] < 0)
          {
            goto LABEL_217;
          }
        }

        LODWORD(v35) = v178;
LABEL_217:
        if (v35 == v34)
        {
LABEL_25:
          v38 = [MEMORY[0x1E69DED88] constantMaterialPropertiesWithMaterial:v247];
          re::setFunctionConstantsFromScene(v4, &v266);
          re::gatherMaterialConstants(&v268[24], v247, v38, v306, v303);
          re::setFunctionConstantsFromMaterial(&v266, v313);
          isMaterialAlphaCutout = re::isMaterialAlphaCutout(v38, v39, v40, v41);
          v43 = isMaterialAlphaCutout;
          if (isMaterialAlphaCutout)
          {
            v44 = 1;
          }

          else
          {
            isMaterialAlphaCutout = re::isMaterialTransparent(v38, v306, v303);
            v44 = isMaterialAlphaCutout;
          }

          LODWORD(v5) = v235;
          if (v252)
          {
            v214 = "engine:missingMaterial.rematerialdefinition";
          }

          else
          {
            v215 = *(v4 + 56);
            if (v215)
            {
              v216 = v215 >> 1;
            }

            else
            {
              v216 = v215 >> 1;
            }

            if (v216)
            {
              if (*(v4 + 56))
              {
                v217 = *(v4 + 64);
              }

              else
              {
                v217 = v234;
              }

              v214 = v217;
            }

            else
            {
              if (v238)
              {
                if (v43)
                {
                  v214 = "engine:alphaCutoutPbrOpenSubdiv.rematerialdefinition";
                }

                else if (v44)
                {
                  v214 = "engine:transparentPbrOpenSubdiv.rematerialdefinition";
                }

                else
                {
                  v214 = "engine:pbrOpenSubdiv.rematerialdefinition";
                }
              }

              else if (v43)
              {
                v214 = "engine:alphaCutoutPbr.rematerialdefinition";
              }

              else if (v44)
              {
                v214 = "engine:transparentPbr.rematerialdefinition";
              }

              else
              {
                v214 = "engine:pbr.rematerialdefinition";
              }
            }
          }

          if (v300 && (v301 & 1) != 0)
          {
            (*(*v300 + 40))();
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v303);

          re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v306);
          v219 = *(v4 + 104);
          if (BYTE8(v266))
          {
            v220 = v267;
          }

          else
          {
            v220 = &v266 + 9;
          }

          if (BYTE8(v266))
          {
            v221 = (*(&v266 + 1) >> 1);
          }

          else
          {
            v221 = (BYTE8(v266) >> 1);
          }

          v222 = re::MaterialAsset::assetType(v218);
          v223 = re::ImportAssetTable::importedAsset(v219, v220, v221, v222);
          if (!v223)
          {
            v224 = re::globalAllocators(0);
            v225 = (*(*v224[2] + 32))(v224[2], 1992, 8);
            bzero(v225, 0x7C8uLL);
            re::MaterialAsset::MaterialAsset(v225);
            re::DynamicString::operator=((v225 + 8), &v266);
            re::AssetHandle::operator=((v225 + 40), v268);
            re::MaterialParameterData::operator=((v225 + 64), &v268[24]);
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v225 + 304), v283);
            re::MaterialRenderFlags::operator=(v225 + 352, v286);
            v226 = re::DynamicArray<re::FunctionLink>::operator=((v225 + 376), v287);
            v225[416] = v290;
            v227 = *(v4 + 104);
            if (BYTE8(v266))
            {
              v228 = v267;
            }

            else
            {
              v228 = &v266 + 9;
            }

            if (BYTE8(v266))
            {
              v229 = *(&v266 + 1) >> 1;
            }

            else
            {
              v229 = BYTE8(v266) >> 1;
            }

            v230 = re::MaterialAsset::assetType(v226);
            v223 = re::ImportAssetTable::addAsset(v227, v228, v229, v225, v230);
          }

          memset(v325, 0, 24);
          if (*(v223 + 8))
          {
            v231 = *(v223 + 16);
          }

          else
          {
            v231 = (v223 + 9);
          }

          v3 = a2;
          re::DynamicArray<re::AssetHandle>::add(a3, v325);
          re::AssetHandle::~AssetHandle(v325);
          re::DynamicArray<re::FunctionLink>::deinit(v287);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v283);
          re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v280);
          re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v277);
          re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v274);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v270);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v268[24]);
          re::AssetHandle::~AssetHandle(v268);
          if (v266 && (BYTE8(v266) & 1) != 0)
          {
            (*(*v266 + 40))();
          }

          v19 = v242;
          goto LABEL_319;
        }

        goto LABEL_28;
      }
    }

    v70 = " and ";
    goto LABEL_66;
  }
}

uint64_t re::usdimport::createFloatKeyframeAnimationFromProperty(id *a1, float a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = [v3 isAnimated];
  if (v4)
  {
    v5 = re::globalAllocators(v4);
    v6 = (*(*v5[2] + 32))(v5[2], 128, 8);
    v7 = re::Timeline::Timeline(v6, 19);
    *(v7 + 72) = 256;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 80) = 0u;
    v8 = (v7 + 80);
    *v7 = &unk_1F5CC1C70;
    v9 = [v3 timeSamples];
    v10 = [v9 arraySize];
    [v9 floatArray:*(v6 + 96) maxCount:v10];
    if (v10)
    {
      v12 = 0;
      v13 = *(v6 + 88);
      while (v13 > v12)
      {
        [v3 floatValueAtTime:*(*(v6 + 96) + 4 * v12)];
        v13 = *(v6 + 112);
        if (v13 <= v12)
        {
          goto LABEL_15;
        }

        *(*(v6 + 120) + 4 * v12) = v14;
        v13 = *(v6 + 88);
        if (v13 <= v12)
        {
          goto LABEL_19;
        }

        *(*(v6 + 96) + 4 * v12) = *(*(v6 + 96) + 4 * v12) * a2;
        if (v10 == ++v12)
        {
          goto LABEL_8;
        }
      }

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

      v29 = 468;
      v30 = 2048;
      v31 = v12;
      v32 = 2048;
      v33 = v13;
      _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_15:
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

      v29 = 468;
      v30 = 2048;
      v31 = v12;
      v32 = 2048;
      v33 = v13;
      _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_19:
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

      v29 = 468;
      v30 = 2048;
      v31 = v12;
      v32 = 2048;
      v33 = v13;
      _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
    }

LABEL_8:
    *(v6 + 16) = 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id re::variantNamesInLodVariantSet(void *a1)
{
  v1 = a1;
  if ([v1 hasVariantSets])
  {
    v2 = [v1 variantsWithVariantSet:@"lodVariant"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void re::appendUsedMaterialsByMeshNodeToTableForHelper(void *a1, int a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    isCatmullClarkSurface = re::isCatmullClarkSurface(v5);
  }

  else
  {
    isCatmullClarkSurface = 0;
  }

  v8 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v6];
  if ([v8 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = v8;
      v12 = *v24;
      obj = v9;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v23 + 1) + 8 * i) inheritedMaterialBinding];
          if (v14)
          {
            v32 = 0;
            v34 = 0;
            re::ObjCObject::operator=(&v32, v14);
            v33 = *(a3 + 28);
            v34 = isCatmullClarkSurface;
            v15 = [v14 path];
            v16 = [v15 stringValue];
            v17 = [v16 UTF8String];
            v29[0] = isCatmullClarkSurface;
            re::DynamicString::DynamicString(&v30, &v27);
            re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(a3, v29, &v32);
            if (v30)
            {
              if (BYTE8(v30))
              {
                (*(*v30 + 40))();
              }

              v31 = 0u;
              v30 = 0u;
            }

            if (v27)
            {
              if (BYTE8(v27))
              {
                (*(*v27 + 40))();
              }

              v27 = 0u;
              v28 = 0u;
            }
          }
        }

        v9 = obj;
        v11 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v11);
      v8 = v21;
    }
  }

  else
  {
    v9 = [v6 inheritedMaterialBinding];
    if (v9)
    {
      v32 = 0;
      v34 = 0;
      re::ObjCObject::operator=(&v32, v9);
      v33 = *(a3 + 28);
      v34 = isCatmullClarkSurface;
      v18 = [v9 path];
      v19 = [v18 stringValue];
      v20 = [v19 UTF8String];
      v29[0] = isCatmullClarkSurface;
      re::DynamicString::DynamicString(&v30, &v27);
      re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(a3, v29, &v32);
      if (v30)
      {
        if (BYTE8(v30))
        {
          (*(*v30 + 40))();
        }

        v31 = 0u;
        v30 = 0u;
      }

      if (v27)
      {
        if (BYTE8(v27))
        {
          (*(*v27 + 40))();
        }

        v27 = 0u;
        v28 = 0u;
      }
    }
  }
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::ImportMaterialSignature>::operator()(&v11, a2);
  re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::findEntry<re::ImportMaterialSignature>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::addInternal<re::ImportMaterialSignature,re::MaterialInfoUSK const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 48;
  }
}

void re::findSkeletonAndSkeletalAnimationIndices(uint64_t a1, void *a2, re::USDImportContext *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 inheritedSkeletonBinding];
  v7 = v6;
  if (!v6)
  {
LABEL_26:
    *a1 = 1;
    *(a1 + 8) = 0;
    goto LABEL_27;
  }

  v8 = [v6 path];
  v9 = [v8 stringValue];
  v10 = [v9 UTF8String];
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

  v46 = 2 * v11;
  v47 = v10;

  v15 = re::USDImportContext::skeletonIndex(a3, &v46, v44);
  if ((v44[0] & 1) == 0)
  {
    v26 = *re::pipelineLogObjects(v15);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      v34 = v26;
      v35 = [v5 path];
      v36 = [v35 stringValue];
      v37 = [v36 UTF8String];
      v38 = [v7 path];
      v39 = [v38 stringValue];
      v40 = [v39 UTF8String];
      *buf = 136315394;
      *v49 = v37;
      *&v49[8] = 2080;
      *&v49[10] = v40;
      _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Mesh (%s) could not find to skeleton: %s.", buf, 0x16u);
    }

    if (v46)
    {
      if (v46)
      {
      }
    }

    goto LABEL_26;
  }

  v16 = v45;
  v17 = [v5 inheritedSkeletonAnimationBinding];
  v41 = v16;
  if (!v17)
  {
    v17 = [v7 inheritedSkeletonAnimationBinding];
    if (!v17)
    {
      v28 = [v5 childIterator];
      v29 = [v28 nextObject];
      if (v29)
      {
        v18 = v29;
        v30 = *MEMORY[0x1E69DEE78];
        while (1)
        {
          v31 = [v18 type];

          if (v31 == v30)
          {
            break;
          }

          v32 = [v28 nextObject];

          v18 = v32;
          if (!v32)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_13;
      }

LABEL_33:

      if (v46)
      {
        if (v46)
        {
        }
      }

      *a1 = 1;
      *(a1 + 8) = 1;
      *(a1 + 16) = v16;
LABEL_27:
      *(a1 + 24) = 0;
      goto LABEL_28;
    }
  }

  v18 = v17;
LABEL_13:
  v19 = [v18 path];
  v20 = [v19 stringValue];
  v21 = [v20 UTF8String];
  v42 = 0;
  v43 = &str_67;
  v22 = re::USDImportContext::skeletalAnimationIndex(a3, &v42, buf);
  v23 = buf[0];
  v24 = *&v49[4];
  if (v42)
  {
    if (v42)
    {
    }
  }

  v42 = 0;
  v43 = &str_67;

  if (v46)
  {
    if (v46)
    {
    }
  }

  *a1 = 1;
  *(a1 + 8) = 1;
  *(a1 + 16) = v41;
  *(a1 + 24) = v23;
  if (v23)
  {
    *(a1 + 32) = v24;
  }

LABEL_28:
}

void re::loadModelFromMeshNode(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = *(a5 + 40);
  v11 = v9;
  v12 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v11];
  v38 = a5;
  if ([(_anonymous_namespace_ *)v12 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = v12;
    v14 = [(_anonymous_namespace_ *)v13 countByEnumeratingWithState:&v41 objects:&v46 count:16];
    if (v14)
    {
      v15 = v14;
      v35 = a4;
      v36 = a3;
      v37 = a1;
      v16 = *v42;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v41 + 1) + 8 * i) inheritedMaterialBinding];
          v19 = [MEMORY[0x1E69DED88] firstUVMeshAttributeNameInMaterial:v18];
          if (v19)
          {
            v20 = v19;
            v45[0] = "primvars:";
            v45[1] = 9;
            re::DynamicString::operator=(&v39, v45);
            v21 = [v20 UTF8String];
            v22 = strlen(v21);
            re::DynamicString::append(&v39, v21, v22);

            a3 = v36;
            a1 = v37;
            a4 = v35;
            goto LABEL_14;
          }
        }

        v15 = [(_anonymous_namespace_ *)v13 countByEnumeratingWithState:&v41 objects:&v46 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      a3 = v36;
      a1 = v37;
      a4 = v35;
    }
  }

  else
  {
    v13 = [v11 inheritedMaterialBinding];
    v18 = [MEMORY[0x1E69DED88] firstUVMeshAttributeNameInMaterial:v13];
    if (v18)
    {
      *&v46 = "primvars:";
      *(&v46 + 1) = 9;
      re::DynamicString::operator=(&v39, &v46);
      v23 = [v18 UTF8String];
      v24 = strlen(v23);
      re::DynamicString::append(&v39, v23, v24);
    }

LABEL_14:
  }

  v25 = [v11 inheritedSkeletonBinding];
  v26 = v25;
  v41 = 0uLL;
  if (v25)
  {
    if (a4 == -1)
    {
      v32 = v46;
      v33 = v47;
      v34 = v48;
      *a1 = 0;
      *(a1 + 8) = 100;
      *(a1 + 16) = re::AssetErrorCategory(void)::instance;
      *(a1 + 24) = v32;
      *(a1 + 40) = v33;
      *(a1 + 48) = v34;
      goto LABEL_21;
    }

    v27 = [(_anonymous_namespace_ *)v25 path];
    v28 = [v27 stringValue];
    v29 = [v28 UTF8String];

    v30 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v38 + 56, a4) + 16;
    v31 = strlen(v29);
    *&v41 = v29;
    *(&v41 + 1) = v31;
  }

  else
  {
    v30 = 0;
  }

  re::makeGeomModelDescriptorFromUSKNode(v11, &v39, a3, v10[164], v10[165], v10[163], &v41, v30, a1);
LABEL_21:

  if (v39 && (v40 & 1) != 0)
  {
    (*(*v39 + 40))();
  }
}

void re::loadAllLodModelsForModelPathHelper(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v93 = *MEMORY[0x1E69E9840];
  v75 = a2;
  v76 = a3;
  v74 = a4;
  v14 = a7;
  v86 = 0;
  v84 = 0uLL;
  v83 = 0;
  v85 = 0;
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 isEqualToString:@"card"];

  v17 = [v14 count];
  if (v17)
  {
    re::DynamicArray<re::GeomModelDescriptor>::setCapacity(&v83, v17);
  }

  v18 = &v83;
  [v76 selectVariant:@"default" variantSet:@"lodVariant"];
  v19 = [v75 nodeAtPath:v74];
  if (!*(a8 + 16))
  {
    goto LABEL_70;
  }

  v20 = v19;
  re::loadModelFromMeshNode(&v78, v19, a6, **(a8 + 32), a5);
  if (v78 == 1)
  {
    v67 = v17;
    v65 = v16;
    v71 = v14;
    v21 = [v20 name];
    v22 = [v21 stringValue];
    v24 = [v22 UTF8String];
    if (v24)
    {
      v8 = [v20 name];
      v14 = [v8 stringValue];
      v25 = [v14 UTF8String];
    }

    else
    {
      v25 = "";
    }

    re::DynamicString::format(&v89, "%s-default", v23, v25);
    re::DynamicString::operator=(v82, &v89);
    if (v89)
    {
      if (BYTE8(v89))
      {
        (*(*v89 + 40))(v89, *&v90[0]);
      }

      v89 = 0u;
      v90[0] = 0u;
    }

    v64 = a1;
    if (v24)
    {
    }

    re::DynamicArray<re::GeomModelDescriptor>::add(&v83, &v79);
    re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v78);

    if (v65)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v14 = v71;
    if (v27 >= v17)
    {
LABEL_44:
      if (v65)
      {
        [v76 selectVariant:@"card" variantSet:@"lodVariant"];
        v42 = [v75 nodeAtPath:v74];
        re::loadModelFromMeshNode(&v78, v42, a6, *(*(a8 + 32) + 8 * *(a8 + 16) - 8), a5);
        if (v78 != 1)
        {
          v89 = v79;
          re::DynamicString::DynamicString(v90, &v80);
          *v64 = 0;
          *(v64 + 8) = v89;
          v49 = *(&v90[1] + 1);
          *(v64 + 24) = *&v90[0];
          *(v64 + 48) = v49;
          *(v64 + 32) = *(v90 + 8);
          re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v78);

          goto LABEL_65;
        }

        v43 = [v42 name];
        v44 = [v43 stringValue];
        v46 = [v44 UTF8String];
        if (v46)
        {
          v24 = [v42 name];
          v8 = [v24 stringValue];
          v47 = [v8 UTF8String];
        }

        else
        {
          v47 = "";
        }

        v50 = re::DynamicString::format(v88, "%s-card", v45, v47);
        v51 = v88[8];
        if (v88[8])
        {
          v52 = *&v88[16];
        }

        else
        {
          v52 = &v88[9];
        }

        re::DynamicString::operator=(v82, &v89);
        if (v89)
        {
          if (BYTE8(v89))
          {
            (*(*v89 + 40))();
          }

          v89 = 0u;
          v90[0] = 0u;
        }

        if (*v88 && (v51 & 1) != 0)
        {
          (*(**v88 + 40))();
        }

        if (v46)
        {
        }

        re::DynamicArray<re::GeomModelDescriptor>::add(&v83, &v79);
        re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v78);

        v14 = v71;
      }

      [v76 selectVariant:@"default" variantSet:@"lodVariant"];
      v53 = v83;
      v83 = 0;
      v54 = v86;
      v86 = 0;
      ++v85;
      *v64 = 1;
      *(v64 + 8) = v53;
      v78 = 0;
      v55 = v84;
      v84 = 0u;
      *(v64 + 16) = v55;
      v79 = 0u;
      *(v64 + 40) = v54;
      v81 = 0;
      v80 = 2;
      *(v64 + 32) = 1;
      re::DynamicArray<re::GeomModelDescriptor>::deinit(&v78);
      goto LABEL_65;
    }

    v66 = a8;
    v28 = 1;
    while (1)
    {
      v29 = [v14 objectAtIndexedSubscript:v27];
      [v76 selectVariant:v29 variantSet:@"lodVariant"];

      v30 = [v75 nodeAtPath:v74];
      v31 = v28;
      v18 = *(a8 + 16);
      if (v18 <= v28)
      {
        break;
      }

      v8 = v30;
      re::loadModelFromMeshNode(&v78, v30, a6, *(*(a8 + 32) + 8 * v28), a5);
      if (v78 != 1)
      {
        v89 = v79;
        re::DynamicString::DynamicString(v90, &v80);
        *v64 = 0;
        *(v64 + 8) = v89;
        v48 = *(&v90[1] + 1);
        *(v64 + 24) = *&v90[0];
        *(v64 + 48) = v48;
        *(v64 + 32) = *(v90 + 8);
        re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v78);

        goto LABEL_65;
      }

      v77 = [v8 name];
      v32 = [v77 stringValue];
      v33 = [v32 UTF8String];
      if (v33)
      {
        v69 = [v8 name];
        v68 = [v69 stringValue];
        v34 = [v68 UTF8String];
      }

      else
      {
        v34 = "";
      }

      v35 = [v14 objectAtIndexedSubscript:v28];
      v37 = [v35 length];
      if (v37)
      {
        v70 = [v14 objectAtIndexedSubscript:v28];
        v38 = [v70 UTF8String];
      }

      else
      {
        v38 = "";
      }

      v39 = re::DynamicString::format(v88, "%s-%s", v36, v34, v38);
      v40 = v88[8];
      v24 = *&v88[16];
      if (v88[8])
      {
        v41 = *&v88[16];
      }

      else
      {
        v41 = &v88[9];
      }

      re::DynamicString::operator=(v82, &v89);
      if (v89)
      {
        if (BYTE8(v89))
        {
          (*(*v89 + 40))(v89, *&v90[0]);
        }

        v89 = 0u;
        v90[0] = 0u;
      }

      if (*v88)
      {
        if (v40)
        {
          (*(**v88 + 40))(*v88, v24);
        }

        memset(v88, 0, 32);
      }

      if (v37)
      {
      }

      v14 = v71;
      if (v33)
      {
      }

      re::DynamicArray<re::GeomModelDescriptor>::add(&v83, &v79);
      re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v78);

      ++v27;
      v28 = v31 + 1;
      a8 = v66;
      if (v67 == v27)
      {
        goto LABEL_44;
      }
    }

    v87 = 0;
    v91 = 0u;
    v92 = 0u;
    memset(v90, 0, sizeof(v90));
    v89 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v88[14] = 797;
    *&v88[18] = 2048;
    *&v88[20] = v31;
    *&v88[28] = 2048;
    *&v88[30] = v18;
    _os_log_send_and_compose_impl(v58, &v87, &v89, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v62, v64);
    _os_crash_msg();
    __break(1u);
LABEL_70:
    v87 = 0;
    v91 = 0u;
    v92 = 0u;
    memset(v90, 0, sizeof(v90));
    v89 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *(v18 + 52) = "operator[]";
    *&v88[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *(v18 + 62) = 797;
    *&v88[18] = 2048;
    *(v18 + 68) = 0;
    *&v88[28] = 2048;
    *(v18 + 78) = 0;
    _os_log_send_and_compose_impl(v61, &v87, &v89, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
  }

  v89 = v79;
  re::DynamicString::DynamicString(v90, &v80);
  *a1 = 0;
  *(a1 + 8) = v89;
  v26 = *(&v90[1] + 1);
  *(a1 + 24) = *&v90[0];
  *(a1 + 48) = v26;
  *(a1 + 32) = *(v90 + 8);
  re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v78);

LABEL_65:
  re::DynamicArray<re::GeomModelDescriptor>::deinit(&v83);
}

re::DynamicString *re::DynamicArray<re::GeomModelDescriptor>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::GeomModelDescriptor>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::GeomModelDescriptor>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 216 * v5;
  *v11 = *a2;
  *(v11 + 1) = *(a2 + 1);
  *(v11 + 4) = *(a2 + 4);
  v12 = *(a2 + 16);
  *(v11 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v11 + 16) = v12;
  v13 = *(a2 + 32);
  *(v11 + 24) = *(a2 + 24);
  *(v11 + 32) = v13;
  *(a2 + 32) = 0;
  *(v11 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0;
  *(v11 + 48) = 0u;
  *(v11 + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v11 + 48), (a2 + 48));
  *(v11 + 128) = 0;
  *(v11 + 120) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 96) = 0;
  v14 = *(a2 + 104);
  *(v11 + 96) = *(a2 + 96);
  *(v11 + 104) = v14;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v15 = *(v11 + 112);
  *(v11 + 112) = *(a2 + 112);
  *(a2 + 112) = v15;
  v16 = *(v11 + 128);
  *(v11 + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  ++*(a2 + 120);
  ++*(v11 + 120);
  *(v11 + 136) = 0u;
  v11 += 136;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v11 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11, (a2 + 136));
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 72) = *(a2 + 208);
  v17 = *(a2 + 192);
  *(v11 + 48) = *(a2 + 184);
  *(a2 + 184) = 0;
  v18 = *(a2 + 200);
  *(a2 + 208) = 0;
  v20 = *(v11 + 56);
  v19 = *(v11 + 64);
  *(v11 + 56) = v17;
  *(v11 + 64) = v18;
  *(a2 + 192) = v20;
  *(a2 + 200) = v19;
  result = re::GeomModelDescriptor::reset(a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 192));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 144));
    re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(a1 + 104);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 56));
    v2 = *(a1 + 48);
    if (v2)
    {

      *(a1 + 48) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {

      *(a1 + 40) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {

      *(a1 + 16) = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void re::loadTransformAndMeshNodes(void *a1, void *a2, re::USDImportContext *a3, char a4)
{
  v608 = *MEMORY[0x1E69E9840];
  v526 = a1;
  v7 = a2;
  v8 = *(a3 + 5);
  obj = v8[96];
  v9 = [v7 type];
  v535 = v7;
  v555 = a3;
  v556 = v8;
  v519 = v9;
  if ([MEMORY[0x1E69DED88] isSceneGraphNode:v7] && (objc_msgSend(MEMORY[0x1E69DED88], "isTransformNode:", v7) & 1) != 0)
  {
    goto LABEL_9;
  }

  v10 = [v7 typeName];
  v11 = [v10 stringValue];
  if ([v11 isEqualToString:@"Preliminary_Text"])
  {
LABEL_8:

    v9 = v519;
    goto LABEL_9;
  }

  v12 = [v535 typeName];
  v13 = [v12 stringValue];
  if ([v13 isEqualToString:@"Preliminary_InfiniteColliderPlane"])
  {
LABEL_7:

    a3 = v555;
    goto LABEL_8;
  }

  v14 = [v535 typeName];
  v15 = [v14 stringValue];
  if ([v15 isEqualToString:@"Preliminary_DeformerStack"])
  {

    v8 = v556;
    goto LABEL_7;
  }

  v118 = [v535 typeName];
  v119 = [v118 stringValue];
  v120 = [v119 isEqualToString:@"DeformerStack"];

  a3 = v555;
  v8 = v556;
  v9 = v519;
  if (v120)
  {
LABEL_9:
    if (a4)
    {
      v516 = 0;
      v16 = v535;
      goto LABEL_17;
    }

    v16 = v535;
    v17 = [v535 typeName];
    v18 = [v17 stringValue];
    v19 = [v18 isEqualToString:@"Preliminary_DeformerStack"];
    if ((v19 & 1) == 0)
    {
      v20 = [v535 typeName];
      v21 = [v20 stringValue];
      v22 = [v21 isEqualToString:@"DeformerStack"];

      if (v22)
      {
        v516 = 0;
        a3 = v555;
        v8 = v556;
LABEL_16:
        v9 = v519;
LABEL_17:
        v28 = 0x1E69DE000uLL;
        v29 = [v16 property:@"purpose"];
        v536 = v29;
        if (v29)
        {
          v30 = [v29 stringValue];
          v31 = [v30 isEqualToString:@"guide"];
        }

        else
        {
          v31 = 0;
        }

        v543 = [v16 inheritedSkeletonBinding];
        if (!v543)
        {
          [MEMORY[0x1E69DED88] localTransformWithNode:v16 time:0.0];
          v547 = v35;
          v36 = vmulq_f32(v32, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL))), vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL)));
          v37 = vaddv_f32(*v36.f32);
          v38 = -1.0;
          v39 = vmulq_f32(v32, v32);
          v40 = vmulq_f32(v33, v33);
          v41 = vadd_f32(vzip1_s32(*v39.i8, *v40.i8), vzip2_s32(*v39.i8, *v40.i8));
          v43 = vextq_s8(v39, v39, 8uLL);
          *v43.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v43.f32, *&vextq_s8(v40, v40, 8uLL)), v41));
          v42 = vmulq_f32(v34, v34);
          v43.i32[2] = sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
          if ((v36.f32[2] + v37) > 0.0)
          {
            v38 = 1.0;
          }

          v538 = vmulq_n_f32(v43, v38);
          v44 = vdivq_f32(v32, vdupq_lane_s32(*&v538, 0));
          v45 = vdivq_f32(v33, vdupq_lane_s32((v538 >> 32), 0));
          v46 = vdivq_f32(v34, vdupq_laneq_s32(v538, 2));
          v47 = vmulq_f32(v44, v44);
          *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
          v49 = vrsqrte_f32(v48);
          v50 = vmul_f32(v49, vrsqrts_f32(v48, vmul_f32(v49, v49)));
          v609.columns[0] = vmulq_n_f32(v44, vmul_f32(v50, vrsqrts_f32(v48, vmul_f32(v50, v50))).f32[0]);
          v51 = vmulq_f32(v609.columns[0], v45);
          v52 = vmulq_f32(v609.columns[0], v609.columns[0]);
          v53 = vmulq_f32(v609.columns[0], v46);
          *v52.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v52, v52, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v52.i8), vzip2_s32(*v53.i8, *v52.i8)));
          v54 = vsubq_f32(v45, vmulq_n_f32(v609.columns[0], (v51.f32[2] + vaddv_f32(*v51.f32)) / *&v52.i32[1]));
          v55 = vmulq_f32(v54, v54);
          *&v56 = v55.f32[2] + vaddv_f32(*v55.f32);
          *v55.f32 = vrsqrte_f32(v56);
          *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
          v609.columns[1] = vmulq_n_f32(v54, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]);
          v57 = vmulq_n_f32(v609.columns[0], *v52.i32 / *&v52.i32[1]);
          v58 = vmulq_f32(v46, v609.columns[1]);
          v59 = vmulq_f32(v609.columns[1], v609.columns[1]);
          *v58.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v59, v59, 8uLL)), vadd_f32(vzip1_s32(*v58.i8, *v59.i8), vzip2_s32(*v58.i8, *v59.i8)));
          v609.columns[3] = vsubq_f32(vsubq_f32(v46, v57), vmulq_n_f32(v609.columns[1], vdiv_f32(*v58.i8, vdup_lane_s32(*v58.i8, 1)).f32[0]));
          v60 = vmulq_f32(v609.columns[3], v609.columns[3]);
          v47.f32[0] = v60.f32[2] + vaddv_f32(*v60.f32);
          *v60.f32 = vrsqrte_f32(v47.u32[0]);
          *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v60.f32, *v60.f32)));
          v609.columns[2] = vmulq_n_f32(v609.columns[3], vmul_f32(*v60.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v60.f32, *v60.f32))).f32[0]);
          *v61.i64 = simd_quaternion(v609);
          v62 = v61.i64[1];
          v63 = vextq_s8(v61, v61, 8uLL).u64[0];
          v64 = vmvn_s8(vceq_f32(v63, v63));
          v65 = (v64.i8[0] | v64.i8[4]);
          v66 = (v65 & 1) == 0;
          if (v65)
          {
            v67 = 0;
          }

          else
          {
            v67 = v61.i64[0];
          }

          *v580 = v538;
          if (!v66)
          {
            v62 = 0x3F80000000000000;
          }

          *&v580[24] = v62;
          *&v580[16] = v67;
          *&v580[32] = v547;
          v68 = [MEMORY[0x1E69DED88] transformKeyTimesWithNode:{v16, *re::USDImportContext::concatenateLocalTransform(a3, v580).i64}];
          if ([v68 arraySize] >= 2 && *(*(a3 + 5) + 97) == 1)
          {

            if (obj)
            {
              re::TimelineAssetData::TimelineAssetData(v580, 33);
              LOWORD(v582) = 256;
              v586 = 0;
              v583 = 0u;
              v584 = 0u;
              v585 = 0;
              *v580 = &unk_1F5CC0788;
              buf[0] = 1;
              v69 = *a3;
              *(&v582 + 1) = v69;
              if (v69 <= 0.0016667 || fabsf(v69 + -0.0016667) < (((fabsf(v69) + 0.0016667) + 1.0) * 0.00001) || (*(a3 + 32) & 1) == 0)
              {
                BYTE1(v582) = 0;
              }

              re::importSRTSampledAnimationFromUSKNode(v16, v580, v603);
              data = re::Result<re::Unit,re::DetailedError>::operator=(buf, v603);
              if ((v603[0].__r_.__value_.__s.__data_[0] & 1) == 0)
              {
                data = v603[1].__r_.__value_.__l.__data_;
                if (v603[1].__r_.__value_.__r.__words[0])
                {
                  if (v603[1].__r_.__value_.__s.__data_[8])
                  {
                    data = (*(*v603[1].__r_.__value_.__l.__data_ + 40))();
                  }
                }
              }

              if (buf[0] == 1)
              {
                if (*(*(a3 + 5) + 160) == 1)
                {
                  v71 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a3 + 624, *(*(a3 + 106) + 8 * *(a3 + 104) - 8));
                  re::SampledAnimationAssetData<re::GenericSRT<float>>::makeAdditive(v580, v71 + 432);
                }

                re::USDImportContext::setTransformAnimation(a3, v580);
              }

              else
              {
                v380 = *re::pipelineLogObjects(data);
                if (os_log_type_enabled(v380, OS_LOG_TYPE_ERROR))
                {
                  std::error_code::message(v603, &buf[8]);
                  if ((v603[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v470 = v603;
                  }

                  else
                  {
                    v470 = v603[0].__r_.__value_.__r.__words[0];
                  }

                  if (buf[32])
                  {
                    v471 = *&buf[40];
                  }

                  else
                  {
                    v471 = &buf[33];
                  }

                  LODWORD(v605[0]) = 136315394;
                  *(v605 + 4) = v470;
                  WORD2(v605[1]) = 2080;
                  *(&v605[1] + 6) = v471;
                  _os_log_error_impl(&dword_1E1C61000, v380, OS_LOG_TYPE_ERROR, "Error: %s\nDetails:\n%s", v605, 0x16u);
                  if (SHIBYTE(v603[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v603[0].__r_.__value_.__l.__data_);
                  }

                  v9 = v519;
                  v28 = 0x1E69DE000;
                }
              }

              if (buf[0] & 1) == 0 && *&buf[24] && (buf[32])
              {
                (*(**&buf[24] + 40))();
              }

              *v580 = &unk_1F5CC07F8;
              if (*(&v583 + 1))
              {
                if (v586)
                {
                  (*(**(&v583 + 1) + 40))();
                }

                v586 = 0;
                v584 = 0uLL;
                *(&v583 + 1) = 0;
                ++v585;
              }

              *v580 = &unk_1F5CC3608;
              v381 = *&v580[40];
              if (*&v580[40])
              {
                if (v580[48])
                {
                  v381 = (*(**&v580[40] + 40))();
                }

                v581 = 0u;
                *&v580[40] = 0u;
              }

              if (v580[24])
              {
                if (v580[24])
                {
                }
              }
            }
          }

          else
          {
          }
        }

        if ([v9 isEqualToString:*MEMORY[0x1E69DEE70]])
        {
          v530 = [v16 property:@"visibility"];
          if (v530)
          {
            v72 = [v530 tokenValue];
            if (v72)
            {
              v73 = v72;
              v74 = [v72 stringValue];
              v75 = [v74 isEqualToString:@"invisible"];

              v28 = 0x1E69DE000uLL;
              if (v75)
              {
LABEL_268:

LABEL_269:
                v9 = v519;
                goto LABEL_270;
              }
            }
          }

          v593 = 0;
          memset(v591, 0, sizeof(v591));
          v592 = 0;
          v570[0] = 0;
          v568 = 0u;
          v569 = 0u;
          *&v570[1] = 0x7FFFFFFFLL;
          if (obj)
          {
            v76 = v8[164] == 1 && re::isCatmullClarkSurface(v16);
            v108 = [*(v28 + 3464) meshGroupsWithNode:v16];
            v548 = v108;
            if ([v108 count])
            {
              v539 = v31;
              v566 = 0u;
              v567 = 0u;
              v564 = 0u;
              v565 = 0u;
              v109 = v108;
              v110 = [v109 countByEnumeratingWithState:&v564 objects:v590 count:16];
              if (v110)
              {
                v111 = v110;
                v112 = *v565;
                do
                {
                  for (i = 0; i != v111; ++i)
                  {
                    if (*v565 != v112)
                    {
                      objc_enumerationMutation(v109);
                    }

                    v114 = [*(*(&v564 + 1) + 8 * i) inheritedMaterialBinding];
                    if (v114)
                    {
                      v603[0].__r_.__value_.__r.__words[0] = 0;
                      v603[0].__r_.__value_.__s.__data_[12] = 0;
                      re::ObjCObject::operator=(&v603[0].__r_.__value_.__l.__data_, v114);
                      LODWORD(v603[0].__r_.__value_.__r.__words[1]) = HIDWORD(v569);
                      v603[0].__r_.__value_.__s.__data_[12] = v76;
                      v115 = [v114 path];
                      v116 = [v115 stringValue];
                      v117 = [v116 UTF8String];
                      v580[0] = v76;
                      re::DynamicString::DynamicString(&v580[8], buf);
                      re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(&v568, v580, v603);
                      if (*&v580[8])
                      {
                        if (v580[16])
                        {
                          (*(**&v580[8] + 40))();
                        }

                        memset(&v580[8], 0, 32);
                      }

                      if (*buf)
                      {
                        if (buf[8])
                        {
                          (*(**buf + 40))();
                        }

                        memset(buf, 0, 32);
                      }
                    }
                  }

                  v111 = [v109 countByEnumeratingWithState:&v564 objects:v590 count:16];
                }

                while (v111);
              }

              re::createMaterialAssetsFromMaterialTableUSK(v556, &v568, v591);
              a3 = v555;
              v16 = v535;
              LOBYTE(v31) = v539;
            }

            else
            {
              v137 = [v16 inheritedMaterialBinding];
              if (v137)
              {
                v138 = v31;
                v603[0].__r_.__value_.__r.__words[0] = 0;
                v603[0].__r_.__value_.__s.__data_[12] = 0;
                re::ObjCObject::operator=(&v603[0].__r_.__value_.__l.__data_, v137);
                LODWORD(v603[0].__r_.__value_.__r.__words[1]) = HIDWORD(v569);
                v603[0].__r_.__value_.__s.__data_[12] = v76;
                v139 = [v137 path];
                v31 = [v139 stringValue];
                v140 = [v31 UTF8String];
                v580[0] = v76;
                re::DynamicString::DynamicString(&v580[8], buf);
                re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(&v568, v580, v603);
                if (*&v580[8])
                {
                  if (v580[16])
                  {
                    (*(**&v580[8] + 40))();
                  }

                  memset(&v580[8], 0, 32);
                }

                v8 = v556;
                if (*buf)
                {
                  if (buf[8])
                  {
                    (*(**buf + 40))();
                  }

                  memset(buf, 0, 32);
                }

                a3 = v555;
                LOBYTE(v31) = v138;
              }

              re::createMaterialAssetsFromMaterialTableUSK(v8, &v568, v591);
              re::addPhysicsMaterialAsset(v137, a3, v8, &v568);
            }

            memset(buf, 0, 32);
            re::importVertexCacheAnimationFromUSKNode(v16, buf, v580, *a3);
            if (v580[0])
            {
              v142 = v548;
              if (*&buf[16])
              {
                re::USDImportContext::setVertexCacheAnimation(a3, buf);
              }
            }

            else
            {
              v143 = *re::pipelineLogObjects(v141);
              if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
              {
                v426 = [v16 path];
                v427 = [v426 stringValue];
                v428 = [v427 UTF8String];
                if (v580[32])
                {
                  v429 = *&v580[40];
                }

                else
                {
                  v429 = &v580[33];
                }

                LODWORD(v603[0].__r_.__value_.__l.__data_) = 136315394;
                *(v603[0].__r_.__value_.__r.__words + 4) = v428;
                WORD2(v603[0].__r_.__value_.__r.__words[1]) = 2080;
                *(&v603[0].__r_.__value_.__r.__words[1] + 6) = v429;
                _os_log_error_impl(&dword_1E1C61000, v143, OS_LOG_TYPE_ERROR, "Mesh (%s) failed to import vertex cache: %s.", v603, 0x16u);

                a3 = v555;
              }

              v142 = v548;
            }

            if (v580[0] & 1) == 0 && *&v580[24] && (v580[32])
            {
              (*(**&v580[24] + 40))();
            }

            re::FixedArray<re::VertexCacheAnimationData::FrameData>::deinit(&buf[8]);
          }

          v562 = 0;
          v563 = 0;
          v144 = v543;
          if (!v543)
          {
            v152 = 0;
LABEL_179:
            v164 = v31;
            v165 = v570[0];
            if (v570[0])
            {
              v166 = 0;
              v167 = v569;
              while (1)
              {
                v168 = *v167;
                v167 += 18;
                if (v168 < 0)
                {
                  break;
                }

                if (v570[0] == ++v166)
                {
                  LODWORD(v166) = v570[0];
                  break;
                }
              }
            }

            else
            {
              LODWORD(v166) = 0;
            }

            if (v166 != v570[0])
            {
              v169 = v569;
              while (1)
              {
                v170 = MEMORY[0x1E69DED88];
                v171 = *(v169 + 72 * v166 + 48);
                v172 = [v170 firstUVMeshAttributeNameInMaterial:v171];

                if (v172)
                {
                  break;
                }

                if (v570[0] <= v166 + 1)
                {
                  v173 = v166 + 1;
                }

                else
                {
                  v173 = v570[0];
                }

                v169 = v569;
                a3 = v555;
                while (v173 - 1 != v166)
                {
                  LODWORD(v166) = v166 + 1;
                  if ((*(v569 + 72 * v166) & 0x80000000) != 0)
                  {
                    goto LABEL_196;
                  }
                }

                LODWORD(v166) = v173;
LABEL_196:
                if (v166 == v165)
                {
                  goto LABEL_199;
                }
              }

              *v580 = "primvars:";
              *&v580[8] = 9;
              re::DynamicString::operator=(&v560, v580);
              v174 = [v172 UTF8String];
              v175 = strlen(v174);
              re::DynamicString::append(&v560, v174, v175);

              a3 = v555;
            }

LABEL_199:
            if (!(v164 & 1 | ((obj & 1) == 0)))
            {
              v176 = *(v556 + 163);
              v177 = [v16 customMetadataWithKey:@"RE:mesh:v1:importAllMeshAttributes"];
              v178 = v177;
              if (v177)
              {
                v176 = [v177 BOOLValue];
              }

              re::makeGeomModelDescriptorFromUSKNode(v16, &v560, &v568, *(v556 + 164), *(v556 + 165), v176 & 1, &v562, v152, v580);
              if (v580[0] == 1)
              {
                v540 = v16;
                v180 = [v540 property:@"skel:blendShapeTargets"];
                if (v180)
                {
                  v521 = v180;
                  v524 = v178;
                  obja = [v180 objectPathArray];
                  if (obja)
                  {
                    v604 = 0u;
                    memset(v603, 0, sizeof(v603));
                    v181 = [obja countByEnumeratingWithState:v603 objects:buf count:16];
                    if (v181)
                    {
                      v182 = v181;
                      v183 = *v603[0].__r_.__value_.__r.__words[2];
                      do
                      {
                        v184 = 0;
                        do
                        {
                          if (*v603[0].__r_.__value_.__r.__words[2] != v183)
                          {
                            objc_enumerationMutation(obja);
                          }

                          v185 = *(v603[0].__r_.__value_.__l.__size_ + 8 * v184);
                          v186 = v185;
                          if (v185)
                          {
                            v187 = [v185 stringValue];
                            v188 = [v187 UTF8String];
                            if (v188)
                            {
                              v189 = *v188;
                              if (*v188)
                              {
                                v190 = v188[1];
                                if (v190)
                                {
                                  v191 = (v188 + 2);
                                  do
                                  {
                                    v189 = 31 * v189 + v190;
                                    v192 = *v191++;
                                    v190 = v192;
                                  }

                                  while (v192);
                                }
                              }
                            }

                            else
                            {
                              v189 = 0;
                            }

                            v605[0] = 2 * v189;
                            v605[1] = v188;
                            v193 = re::USDImportContext::blendShapeIndex(a3, v605, v578);
                            if (v605[0])
                            {
                              if (v605[0])
                              {
                              }
                            }

                            v605[0] = 0;
                            v605[1] = &str_67;

                            if (v578[0] == 1)
                            {
                              v194 = re::BucketArray<re::USDImportContextBlendShapeData,8ul>::operator[](a3 + 264, v579);
                              v195 = *(v194 + 40);
                              v196 = *&v580[24];
                              if (v195 >= *&v580[24])
                              {
                                v197 = [MEMORY[0x1E695DF88] dataWithLength:12 * v195];
                                memcpy([v197 mutableBytes], *(v194 + 48), 12 * *(v194 + 40));
                                v199 = *(v194 + 40);
                              }

                              else
                              {
                                v197 = [MEMORY[0x1E695DF88] dataWithLength:12 * v195 + 12];
                                memcpy([v197 mutableBytes], *(v194 + 48), 12 * v195);
                                v198 = [v197 mutableBytes] + 12 * *(v194 + 40);
                                *v198 = 0;
                                *(v198 + 8) = 0;
                                v199 = *(v194 + 40) + 1;
                              }

                              v200 = v197;
                              v202 = v200;
                              v574 = v200;
                              LOBYTE(v575) = 11;
                              v576 = v199;
                              v577 = xmmword_1E3068140;
                              v203 = *(v194 + 88);
                              if (v203 == *&v580[24])
                              {
                                if (v203)
                                {
                                  v204 = [MEMORY[0x1E695DF88] dataWithLength:4 * v203];
                                  if (v195 < v196 && *&v580[24])
                                  {
                                    v205 = 0;
                                    v206 = v199 - 1;
                                    do
                                    {
                                      *([v204 mutableBytes] + 4 * v205++) = v206;
                                    }

                                    while (v205 < *&v580[24]);
                                  }

                                  memcpy([v204 mutableBytes], *(v194 + 96), 4 * *(v194 + 88));
                                  v207 = v204;
                                  v572.__r_.__value_.__r.__words[0] = v207;
                                  v572.__r_.__value_.__s.__data_[8] = 5;
                                  v572.__r_.__value_.__r.__words[2] = *&v580[24];
                                  v573 = xmmword_1E3068150;
                                  re::DynamicString::format(v594, "%s|blendTargetPosDeltas", v208, *(v194 + 24));
                                  re::GeomModelDescriptor::setAttribute(&v580[8], v594, 1, &v574, &v572, v605);
                                  v209 = *v594;
                                  v16 = v535;
                                  if (*v594 && (v594[8] & 1) != 0)
                                  {
                                    v209 = (*(**v594 + 40))();
                                  }

                                  a3 = v555;
                                  if ((v605[0] & 1) == 0)
                                  {
                                    v210 = *re::pipelineLogObjects(v209);
                                    if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
                                    {
                                      v218 = v210;
                                      v528 = *(v194 + 24);
                                      if (v588[40])
                                      {
                                        v219 = *&v589[7];
                                      }

                                      else
                                      {
                                        v219 = v589;
                                      }

                                      v220 = [v540 name];
                                      v221 = [v220 stringValue];
                                      v222 = [v221 UTF8String];
                                      *v594 = 136315650;
                                      *&v594[4] = v528;
                                      v595 = 2080;
                                      v596 = v219;
                                      v16 = v535;
                                      v597 = 2080;
                                      v598 = v222;
                                      _os_log_error_impl(&dword_1E1C61000, v218, OS_LOG_TYPE_ERROR, "Could not store blend shape '%s' in geomModel '%s' for node '%s'\n", v594, 0x20u);

                                      a3 = v555;
                                    }

                                    if (v605[0] & 1) == 0 && v605[3] && (v606)
                                    {
                                      (*(*v605[3] + 40))();
                                    }
                                  }

LABEL_251:
                                  goto LABEL_252;
                                }
                              }

                              else
                              {
                                v211 = *re::pipelineLogObjects(v200);
                                if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                                {
                                  v212 = v211;
                                  v213 = *(v194 + 24);
                                  v214 = [v540 name];
                                  v215 = [v214 stringValue];
                                  v216 = [v215 UTF8String];
                                  v217 = *(v194 + 88);
                                  LODWORD(v605[0]) = 136315906;
                                  *(v605 + 4) = v213;
                                  WORD2(v605[1]) = 2080;
                                  *(&v605[1] + 6) = v216;
                                  HIWORD(v605[2]) = 2048;
                                  v605[3] = v217;
                                  v606 = 2048;
                                  *v607 = *&v580[24];
                                  _os_log_impl(&dword_1E1C61000, v212, OS_LOG_TYPE_DEFAULT, "Blend shape '%s' in node '%s' has %zu indices but model has %zu vertices. Point indices will be ignored.", v605, 0x2Au);
                                }
                              }

                              re::DynamicString::format(v605, "%s|blendTargetPosDeltas", v201, *(v194 + 24));
                              re::GeomModelDescriptor::setAttribute(&v580[8], v605, 1, &v574, 0, v571);
                              a3 = v555;
                              v16 = v535;
                              if ((v571[0] & 1) == 0 && *(&v571[1] + 1))
                              {
                                if (v571[2])
                                {
                                  (*(**(&v571[1] + 1) + 40))();
                                }

                                memset(&v571[1] + 8, 0, 32);
                              }

                              if (v605[0] && (v605[1] & 1) != 0)
                              {
                                (*(*v605[0] + 40))();
                              }

                              goto LABEL_251;
                            }
                          }

LABEL_252:

                          ++v184;
                        }

                        while (v184 != v182);
                        v223 = [obja countByEnumeratingWithState:v603 objects:buf count:16];
                        v182 = v223;
                      }

                      while (v223);
                    }
                  }

                  v180 = v521;
                  v178 = v524;
                }

                re::USDImportContext::setModel(a3, &v580[8]);
                v224 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a3 + 624, *(*(a3 + 106) + 8 * *(a3 + 104) - 8));
                re::DynamicArray<re::AssetHandle>::operator=((v224 + 808), v591);
              }

              else
              {
                v225 = *re::pipelineLogObjects(v179);
                if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
                {
                  std::error_code::message(buf, &v580[8]);
                  v430 = buf[23] >= 0 ? buf : *buf;
                  v431 = (v580[32] & 1) != 0 ? *&v580[40] : &v580[33];
                  LODWORD(v603[0].__r_.__value_.__l.__data_) = 136315394;
                  *(v603[0].__r_.__value_.__r.__words + 4) = v430;
                  WORD2(v603[0].__r_.__value_.__r.__words[1]) = 2080;
                  *(&v603[0].__r_.__value_.__r.__words[1] + 6) = v431;
                  _os_log_error_impl(&dword_1E1C61000, v225, OS_LOG_TYPE_ERROR, "Error: %s\nDetails:\n%s", v603, 0x16u);
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }
                }
              }

              re::updateMeshOverrideCompileOptions(a3, v16);
              re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(v580);
            }

            if (v560 && (v561 & 1) != 0)
            {
              (*(*v560 + 40))();
            }

            re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(&v568);
            re::DynamicArray<re::AssetHandle>::deinit(v591);
            goto LABEL_268;
          }

          v145 = [(_anonymous_namespace_ *)v543 path];
          v146 = [v145 stringValue];
          v147 = [v146 UTF8String];
          if (v147)
          {
            v148 = *v147;
            if (*v147)
            {
              v149 = v147[1];
              if (v149)
              {
                v150 = (v147 + 2);
                do
                {
                  v148 = 31 * v148 + v149;
                  v151 = *v150++;
                  v149 = v151;
                }

                while (v151);
              }
            }
          }

          else
          {
            v148 = 0;
          }

          *&buf[8] = v147;
          *buf = 2 * v148;

          v153 = re::USDImportContext::skeletonIndex(a3, buf, v603);
          if (v603[0].__r_.__value_.__s.__data_[0])
          {
            size = v603[0].__r_.__value_.__l.__size_;
            re::USDImportContext::setSkeletonReference(a3, v603[0].__r_.__value_.__l.__size_);
            v152 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](a3 + 56, size) + 16;
            v562 = *&buf[8];
            v563 = strlen(*&buf[8]);
            v155 = [v16 inheritedSkeletonAnimationBinding];
            if (v155 || ([(_anonymous_namespace_ *)v543 inheritedSkeletonAnimationBinding], (v155 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v156 = v155;
            }

            else
            {
              v387 = [v16 childIterator];
              v156 = [v387 nextObject];
              if (v156)
              {
                v388 = v31;
                v389 = *MEMORY[0x1E69DEE78];
                while (1)
                {
                  v390 = [v156 type];

                  if (v390 == v389)
                  {
                    break;
                  }

                  v391 = [v387 nextObject];

                  v156 = v391;
                  if (!v391)
                  {
                    goto LABEL_520;
                  }
                }

                v156 = v156;

LABEL_520:
                a3 = v555;
                LOBYTE(v31) = v388;
              }

              if (!v156)
              {
                goto LABEL_176;
              }
            }

            if (obj)
            {
              v157 = v31;
              v158 = [v156 path];
              [v158 stringValue];
              v160 = v159 = a3;
              v161 = [v160 UTF8String];
              *v580 = 0;
              *&v580[8] = &str_67;
              v162 = re::USDImportContext::skeletalAnimationIndex(v159, v580, v605);
              if (v580[0])
              {
                if (v580[0])
                {
                }
              }

              *&v580[8] = &str_67;
              *v580 = 0;

              if (v605[0])
              {
                a3 = v555;
                re::USDImportContext::setSkeletalAnimationReference(v555, v605[1]);
                v16 = v535;
              }

              else
              {
                v377 = *re::pipelineLogObjects(v163);
                a3 = v555;
                v16 = v535;
                if (os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
                {
                  v465 = [v535 path];
                  v31 = [v465 stringValue];
                  v466 = [v31 UTF8String];
                  v467 = [v156 path];
                  v468 = [v467 stringValue];
                  v469 = [v468 UTF8String];
                  *v580 = 136315394;
                  *&v580[4] = v466;
                  *&v580[12] = 2080;
                  *&v580[14] = v469;
                  _os_log_error_impl(&dword_1E1C61000, v377, OS_LOG_TYPE_ERROR, "Mesh (%s) could not find to skeletal animation: %s.", v580, 0x16u);

                  v16 = v535;
                  LOBYTE(v31) = v157;

                  a3 = v555;
                }
              }
            }
          }

          else
          {
            v156 = *re::pipelineLogObjects(v153);
            if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
            {
              v420 = [v16 path];
              v421 = [v420 stringValue];
              v422 = [v421 UTF8String];
              [(_anonymous_namespace_ *)v543 path];
              v31 = v423 = v31;
              v424 = [v31 stringValue];
              v425 = [v424 UTF8String];
              *v580 = 136315394;
              *&v580[4] = v422;
              a3 = v555;
              *&v580[12] = 2080;
              *&v580[14] = v425;
              _os_log_error_impl(&dword_1E1C61000, v156, OS_LOG_TYPE_ERROR, "Mesh (%s) could not find to skeleton: %s.", v580, 0x16u);

              LOBYTE(v31) = v423;
            }

            v152 = 0;
          }

LABEL_176:

          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          goto LABEL_179;
        }

        if ([v9 isEqualToString:*MEMORY[0x1E69DEE80]])
        {
          v77 = [v16 path];
          v78 = [v77 stringValue];
          v79 = [v78 UTF8String];
          *buf = 0;
          *&buf[8] = &str_67;
          v80 = v79;
          a3 = v555;
          v81 = re::USDImportContext::skeletonIndex(v555, buf, v580);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          *&buf[8] = &str_67;
          *buf = 0;

          if (v580[0])
          {
            v83 = *(*(v555 + 106) + 8 * *(v555 + 104) - 8);
            v84 = *(re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v555 + 624, v83) + 872);
            v9 = v519;
            if (v84 == -1)
            {
              v84 = v83;
            }

            re::USDImportContext::setSkeletonEntity(v555, v84, *&v580[8]);
          }

          else
          {
            v103 = *re::pipelineLogObjects(v82);
            v9 = v519;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              v104 = v103;
              v105 = [v16 path];
              v106 = [v105 stringValue];
              v107 = [v106 UTF8String];
              *buf = 136315138;
              *&buf[4] = v107;
              _os_log_error_impl(&dword_1E1C61000, v104, OS_LOG_TYPE_ERROR, "Skeleton entity (%s) does not have a valid skeleton index.", buf, 0xCu);

              v9 = v519;
            }
          }

          goto LABEL_270;
        }

        v85 = *MEMORY[0x1E69DEE58];
        if (([v9 isEqualToString:*MEMORY[0x1E69DEE58]] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69DEE50]) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69DEE90]) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69DEE48]) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69DEE60]) & 1) == 0 && !re::importPhysicsIsSceneGroundPlane(v16))
        {
          v453 = [v9 isEqualToString:*MEMORY[0x1E69DEE88]];
          if (v453)
          {
            v454 = re::globalAllocators(v453);
            v455 = (*(*v454[2] + 32))(v454[2], 72, 8);
            *v455 = 0u;
            *(v455 + 16) = 0u;
            *(v455 + 32) = 0u;
            *(v455 + 20) = 0x13F800000;
            *(v455 + 56) = 0;
            *(v455 + 64) = 0;
            *(v455 + 48) = 0;
            *v580 = v455;
            operator new();
          }

          v460 = [v16 typeName];
          v461 = [v460 stringValue];
          v462 = [v461 isEqualToString:@"Preliminary_Text"];

          if (!v462)
          {
            v9 = v519;
            if ([MEMORY[0x1E69DED88] isTransformNode:v16] && obj)
            {
              v472 = [v16 inheritedMaterialBinding];
              memset(v580, 0, 36);
              *&v580[36] = 0x7FFFFFFFLL;
              if (v472)
              {
                v605[0] = 0;
                BYTE4(v605[1]) = 0;
                re::ObjCObject::operator=(v605, v472);
                LODWORD(v605[1]) = *&v580[28];
                BYTE4(v605[1]) = 0;
                v473 = [v472 path];
                v474 = [v473 stringValue];
                v475 = [v474 UTF8String];
                buf[0] = 0;
                re::DynamicString::DynamicString(&buf[8], v603);
                re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(v580, buf, v605);
                if (*&buf[8])
                {
                  if (buf[16])
                  {
                    (*(**&buf[8] + 40))();
                  }

                  memset(&buf[8], 0, 32);
                }

                a3 = v555;
                if (v603[0].__r_.__value_.__r.__words[0])
                {
                  if (v603[0].__r_.__value_.__s.__data_[8])
                  {
                    (*(*v603[0].__r_.__value_.__l.__data_ + 40))();
                  }

                  memset(v603, 0, 32);
                }

                re::addPhysicsMaterialAsset(v472, v555, v8, v580);
                v9 = v519;
              }

              re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v580);
            }

            goto LABEL_270;
          }

          v463 = [v16 property:@"content"];
          objb = v463;
          if (v463)
          {
            v527 = [v16 property:@"content"];
            v523 = [v527 stringValue];
            v463 = [v523 UTF8String];
            v464 = v463;
          }

          else
          {
            v464 = "";
          }

          v479 = [v16 property:@"font"];
          v554 = v479;
          if (v479)
          {
            v520 = [v16 property:@"font"];
            v517 = [v520 stringArray];
            v514 = [v517 objectAtIndex:0];
            v479 = [v514 UTF8String];
            v480 = v479;
          }

          else
          {
            v480 = "Helvetica";
          }

          v481 = [v16 property:@"pointSize"];
          if (v481)
          {
            v512 = [v16 property:@"pointSize"];
            [v512 doubleValue];
            v483 = v482 * 0.00035277723;
          }

          else
          {
            v483 = 0.0507999211;
          }

          *(&v581 + 1) = v483;
          v484 = [v16 property:@"width"];
          if (v484)
          {
            v511 = [v16 property:@"width"];
            [v511 doubleValue];
          }

          else
          {
            v485 = 0x3FE3333333333333;
          }

          v582 = v485;
          [v16 property:@"height"];
          v532 = v542 = v481;
          if (v532)
          {
            v510 = [v16 property:@"height"];
            [v510 doubleValue];
          }

          else
          {
            v486 = 0x3FC3333333333333;
          }

          *&v583 = v486;
          v487 = [v16 property:@"depth"];
          if (v487)
          {
            v509 = [v16 property:@"depth"];
            [v509 doubleValue];
          }

          else
          {
            v488 = 0x3FC999999999999ALL;
          }

          *(&v583 + 1) = v488;
          v489 = v580;
          v490 = [v16 property:@"wrapMode"];
          v491 = v490;
          v534 = v484;
          if (v490)
          {
            v508 = [v16 property:@"wrapMode"];
            v507 = [v508 stringValue];
            v490 = [v507 UTF8String];
            v492 = v490;
          }

          else
          {
            v492 = "flowing";
          }

          v493 = [v16 property:@"horizontalAlignment"];
          v494 = v16;
          v495 = v493;
          if (v493)
          {
            v31 = [v494 property:@"horizontalAlignment"];
            v484 = [v31 stringValue];
            v493 = [v484 UTF8String];
            v496 = v493;
          }

          else
          {
            v496 = "center";
          }

          v497 = [v494 property:@"verticalAlignment"];
          v498 = v497;
          if (v497)
          {
            v494 = [v494 property:@"verticalAlignment"];
            v489 = [v494 stringValue];
            v497 = [v489 UTF8String];
            v499 = v497;
          }

          else
          {
            v499 = "center";
          }

          re::USDImportContext::setText3D(v555, v580);
          re::USDImportContext::GeomText3D::~GeomText3D(v580);
          if (v498)
          {
          }

          if (v495)
          {
          }

          if (v491)
          {
          }

          a3 = v555;
          v16 = v535;
          if (v487)
          {
          }

          if (v532)
          {
          }

          if (v534)
          {
          }

          if (v542)
          {
          }

          if (v554)
          {
          }

          if (objb)
          {
          }

          v500 = [v535 inheritedMaterialBinding];
          if (v500)
          {
            *&v571[0] = 0;
            BYTE12(v571[0]) = 0;
            re::ObjCObject::operator=(v571, v500);
            *&buf[32] = 0;
            memset(buf, 0, 28);
            memset(v580, 0, 36);
            *&v580[36] = 0x7FFFFFFFLL;
            v501 = [v500 path];
            v502 = [v501 stringValue];
            v503 = [v502 UTF8String];
            v603[0].__r_.__value_.__s.__data_[0] = 0;
            re::DynamicString::DynamicString(&v603[0].__r_.__value_.__r.__words[1], v605);
            re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(v580, v603, v571);
            if (v603[0].__r_.__value_.__l.__size_)
            {
              if (v603[0].__r_.__value_.__s.__data_[16])
              {
                (*(*v603[0].__r_.__value_.__l.__size_ + 40))();
              }

              memset(&v603[0].__r_.__value_.__r.__words[1], 0, 32);
            }

            a3 = v555;
            if (v605[0])
            {
              if (v605[1])
              {
                (*(*v605[0] + 40))();
              }

              memset(v605, 0, sizeof(v605));
            }

            re::createMaterialAssetsFromMaterialTableUSK(v556, v580, buf);
            re::USDImportContext::setMeshMaterials(v555, buf);
            re::addPhysicsMaterialAsset(v500, v555, v556, v580);
            re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v580);
            re::DynamicArray<re::AssetHandle>::deinit(buf);
          }

          goto LABEL_269;
        }

        if (!obj)
        {
LABEL_270:

          goto LABEL_271;
        }

        v603[1].__r_.__value_.__l.__size_ = 0;
        memset(v603, 0, 28);
        memset(v580, 0, 36);
        *&v580[36] = 0x7FFFFFFFLL;
        v86 = [v16 inheritedMaterialBinding];
        if (v86)
        {
          v87 = v31;
          *&v571[0] = 0;
          BYTE12(v571[0]) = 0;
          re::ObjCObject::operator=(v571, v86);
          DWORD2(v571[0]) = *&v580[28];
          BYTE12(v571[0]) = 0;
          v88 = [v86 path];
          v89 = [v88 stringValue];
          v90 = [v89 UTF8String];
          buf[0] = 0;
          re::DynamicString::DynamicString(&buf[8], v605);
          re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(v580, buf, v571);
          if (*&buf[8])
          {
            if (buf[16])
            {
              (*(**&buf[8] + 40))();
            }

            memset(&buf[8], 0, 32);
          }

          LOBYTE(v31) = v87;
          if (v605[0])
          {
            if (v605[1])
            {
              (*(*v605[0] + 40))();
            }

            memset(v605, 0, sizeof(v605));
          }

          a3 = v555;
          v9 = v519;
        }

        re::createMaterialAssetsFromMaterialTableUSK(v8, v580, v603);
        if (v31)
        {
LABEL_518:

          re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v580);
          re::DynamicArray<re::AssetHandle>::deinit(v603);
          goto LABEL_270;
        }

        v91 = v16;
        *&buf[40] = 0x3F80000000000000;
        *&buf[32] = 0;
        v92 = [v91 type];

        if (v92 == v85)
        {
          v382 = [v91 property:@"size"];
          v383 = v382;
          v384 = 2.0;
          if (v382)
          {
            v385 = [v382 data];

            if (v385)
            {
              [v383 floatValue];
              v384 = v386;
            }
          }

          buf[0] = 0;
          *&buf[4] = 0x1000100010001;
          *&buf[12] = 0;
          *&buf[16] = v384;
          *&buf[20] = v384;
          *&buf[24] = v384;
          *&buf[28] = 257;
          buf[30] = 0;
          goto LABEL_516;
        }

        v93 = [v91 type];
        v94 = *MEMORY[0x1E69DEE50];

        if (v93 == v94)
        {
          v392 = [v91 property:@"radius"];
          v383 = v392;
          v393 = 1.0;
          if (v392)
          {
            v394 = [v392 data];

            if (v394)
            {
              [v383 floatValue];
              v393 = v395;
            }
          }

          v396 = [v91 property:@"height"];
          v397 = v396;
          v398 = 2.0;
          if (v396)
          {
            v399 = [v396 data];

            if (v399)
            {
              v396 = [v397 floatValue];
              v398 = v400;
            }
          }

          buf[0] = 1;
          *&buf[4] = 65544;
          *&buf[8] = v398;
          *&buf[12] = v393;
          *&buf[16] = 65793;
          v401 = [v91 property:@"axis"];
          v402 = v401;
          if (v401)
          {
            v403 = [v401 data];

            if (v403)
            {
              v404 = [v402 stringValue];
              v405 = [v404 UTF8String];
              v406 = strlen(v405);
              *&v571[0] = v405;
              *(&v571[0] + 1) = v406;
              re::DynamicString::operator=(v605, v571);
            }
          }
        }

        else
        {
          v95 = [v91 type];
          v96 = *MEMORY[0x1E69DEE60];

          if (v95 == v96)
          {
            v407 = [v91 property:@"radius"];
            v383 = v407;
            v408 = 1.0;
            if (v407)
            {
              v409 = [v407 data];

              if (v409)
              {
                [v383 floatValue];
                v408 = v410;
              }
            }

            v411 = [v91 property:@"height"];
            v397 = v411;
            v412 = 2.0;
            if (v411)
            {
              v413 = [v411 data];

              if (v413)
              {
                v411 = [v397 floatValue];
                v412 = v414;
              }
            }

            v415 = [v91 property:@"axis"];
            v402 = v415;
            if (v415)
            {
              v416 = [v415 data];

              if (v416)
              {
                v417 = [v402 stringValue];
                v418 = [v417 UTF8String];
                v419 = strlen(v418);
                *&v571[0] = v418;
                *(&v571[0] + 1) = v419;
                re::DynamicString::operator=(v605, v571);
              }
            }

            buf[0] = 2;
            *&buf[4] = 65544;
            *&buf[8] = v412;
            *&buf[12] = v408;
            *&buf[16] = v408;
            *&buf[20] = 16843009;
            buf[24] = 0;
          }

          else
          {
            v97 = [v91 type];
            v98 = *MEMORY[0x1E69DEE48];

            if (v97 != v98)
            {
              v99 = [v91 type];
              v100 = *MEMORY[0x1E69DEE90];

              if (v99 != v100)
              {

                v102 = *re::pipelineLogObjects(v101);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                {
                  v504 = [v91 name];
                  v505 = [v504 stringValue];
                  if (v505)
                  {
                    v91 = [v91 name];
                    v8 = [v91 stringValue];
                    v506 = [v8 UTF8String];
                  }

                  else
                  {
                    v506 = "unnamed";
                  }

                  LODWORD(v605[0]) = 136315138;
                  *(v605 + 4) = v506;
                  _os_log_error_impl(&dword_1E1C61000, v102, OS_LOG_TYPE_ERROR, "Unsupported primitive for node '%s'", v605, 0xCu);
                  if (v505)
                  {
                  }
                }

                a3 = v555;
                goto LABEL_517;
              }

              v456 = [v91 property:@"radius"];
              v383 = v456;
              v457 = 1.0;
              if (v456)
              {
                v458 = [v456 data];

                if (v458)
                {
                  [v383 floatValue];
                  v457 = v459;
                }
              }

              buf[0] = 3;
              *&buf[4] = 8;
              *&buf[8] = v457;
              *&buf[12] = 257;
              buf[14] = 0;
LABEL_516:

              a3 = v555;
              re::USDImportContext::setPrimitiveShape(v555, buf);
              v452 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a3 + 624, *(*(a3 + 106) + 8 * *(a3 + 104) - 8));
              re::DynamicArray<re::AssetHandle>::operator=((v452 + 808), v603);
              re::addPhysicsMaterialAsset(v86, v555, v8, v580);
LABEL_517:
              v9 = v519;
              goto LABEL_518;
            }

            v432 = [v91 property:@"radius"];
            v383 = v432;
            v433 = 0.5;
            if (v432)
            {
              v434 = [v432 data];

              if (v434)
              {
                [v383 floatValue];
                v433 = v435;
              }
            }

            v436 = [v91 property:@"height"];
            v397 = v436;
            v437 = 1.0;
            if (v436)
            {
              v438 = [v436 data];

              if (v438)
              {
                v436 = [v397 floatValue];
                v437 = v439;
              }
            }

            v440 = v437 + v433 * 2.0;
            v441 = [v91 property:@"axis"];
            v402 = v441;
            if (v441)
            {
              v442 = [v441 data];

              if (v442)
              {
                v443 = [v402 stringValue];
                v444 = [v443 UTF8String];
                v445 = strlen(v444);
                *&v571[0] = v444;
                *(&v571[0] + 1) = v445;
                re::DynamicString::operator=(v605, v571);
              }
            }

            buf[0] = 4;
            *&buf[4] = 65544;
            *&buf[8] = 4;
            *&buf[12] = v433;
            *&buf[16] = v440;
            *&buf[20] = 257;
            buf[22] = 0;
          }
        }

        v446 = &v605[1] + 1;
        if (v605[1])
        {
          v446 = v605[2];
        }

        v447 = *v446;
        if (v447 == 90)
        {
          if (v605[1])
          {
            v451 = (v605[2] + 1);
          }

          else
          {
            v451 = &v605[1] + 2;
          }

          v16 = v535;
          v8 = v556;
          if (*v451)
          {
            goto LABEL_512;
          }

          v450 = 0x3F3504F300000000;
          v449 = 1060439283;
        }

        else
        {
          v16 = v535;
          v8 = v556;
          if (v447 != 88)
          {
            goto LABEL_512;
          }

          v448 = (v605[1] & 1) != 0 ? (v605[2] + 1) : &v605[1] + 2;
          if (*v448)
          {
            goto LABEL_512;
          }

          v449 = 0;
          v450 = 0x3F3504F33F3504F3;
        }

        *&buf[32] = v449;
        *&buf[40] = v450;
LABEL_512:

        if (v605[0] && (v605[1] & 1) != 0)
        {
          (*(*v605[0] + 40))();
        }

        goto LABEL_516;
      }

      v17 = [v535 name];
      v18 = [v17 stringValue];
      v23 = [v18 UTF8String];
      v24 = [v535 path];
      v25 = [v24 stringValue];
      v26 = [v25 UTF8String];
      v27 = v23;
      a3 = v555;
      re::USDImportContext::pushNodePath(v555, v27, "(default)", v26);

      v8 = v556;
    }

    v516 = v19 ^ 1;

    goto LABEL_16;
  }

  v16 = v535;
  v121 = [v535 typeName];
  v122 = [v121 stringValue];
  v123 = [v122 isEqualToString:@"Preliminary_Action"];

  if (v123)
  {
    v124 = [v535 property:@"audio"];
    v125 = [v124 resourcePath];
    v126 = [v535 property:@"affectedObjects"];

    v127 = [v126 stringValue];
    v128 = v127;
    if (v125 && v127)
    {
      re::usdimport::createAudioFileAssetForResourcePath(*(v556 + 104), v125, v605);
      v129 = [v535 path];
      v130 = [v129 stringValue];
      v131 = [v130 UTF8String];
      re::AssetHandle::serializationString(v605, buf);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v556 + 264, v580, buf);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (*v580)
      {
        if (v580[8])
        {
          (*(**v580 + 40))();
        }

        memset(v580, 0, 32);
      }

      v132 = [v128 UTF8String];
      if (buf[8])
      {
        v133 = *&buf[16];
      }

      else
      {
        v133 = &buf[9];
      }

      if (buf[8])
      {
        v134 = *&buf[8] >> 1;
      }

      else
      {
        v134 = buf[8] >> 1;
      }

      *&v571[0] = re::innerPathFromPackageRelativePath(v133, v134);
      *(&v571[0] + 1) = v135;
      v136 = re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v556 + 312, v603);
      if (!v136)
      {
        *&v580[32] = 0;
        memset(v580, 0, 28);
        v136 = re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v556 + 312, v603, v580);
        re::DynamicArray<re::AssetHandle>::deinit(v580);
      }

      re::DynamicArray<re::AssetHandle>::add(v136, v605);
      if (v603[0].__r_.__value_.__r.__words[0] && (v603[0].__r_.__value_.__s.__data_[8] & 1) != 0)
      {
        (*(*v603[0].__r_.__value_.__l.__data_ + 40))();
      }

      a3 = v555;
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      re::AssetHandle::~AssetHandle(v605);
    }

    v516 = 0;
    v9 = v519;
  }

  else
  {
    v9 = v519;
    v378 = [v519 isEqualToString:*MEMORY[0x1E69DEEA0]];
    if (v378)
    {
      v379 = *re::pipelineLogObjects(v378);
      if (os_log_type_enabled(v379, OS_LOG_TYPE_DEBUG))
      {
        v476 = v379;
        v477 = [v535 typeName];
        v478 = [v477 stringValue];
        *v580 = 136315138;
        *&v580[4] = [v478 UTF8String];
        _os_log_debug_impl(&dword_1E1C61000, v476, OS_LOG_TYPE_DEBUG, "USD import discovered unknown node, type = %s", v580, 0xCu);

        v9 = v519;
      }
    }

    v516 = 0;
  }

LABEL_271:
  v226 = re::variantNamesInLodVariantSet(v16);
  v227 = [v226 count];

  if (v227)
  {
    v228 = v526;
    v229 = v16;
    v230 = re::variantNamesInLodVariantSet(v229);
    if ([v230 count])
    {
      v231 = [v230 objectAtIndexedSubscript:0];
      v232 = [v231 isEqualToString:@"card"];

      v233 = [v230 objectAtIndexedSubscript:v232];
      v234 = [v233 isEqualToString:@"default"];

      v235 = *(a3 + 5);
      v515 = *(v235 + 164);
      v518 = v235;
      v236 = *(v235 + 96);
      v575 = 0;
      v574 = 0;
      v576 = 0;
      v237 = [v229 dictionaryMetadataWithKey:@"assetInfo" dictionaryKey:@"lodComplexityThresholds"];
      v238 = v237;
      if (v237)
      {
        v239 = [v237 arraySize];
        v240 = v239;
        if (v239)
        {
          [v238 floatArray:v576 maxCount:v240];
        }
      }

      v531 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v241 = [v229 childIterator];
      v242 = [v241 nextObject];
      if (v242)
      {
        v243 = v242;
        v529 = v230;
        v244 = 0;
        v245 = *MEMORY[0x1E69DEE70];
        do
        {
          v246 = [v243 type];
          if (([v246 isEqualToString:v245] & v234) != 1 || v236 == 0)
          {
            re::loadTransformAndMeshNodes(v228, v243, v555, 0);
          }

          else
          {
            v248 = [v243 path];
            [v531 addObject:v248];

            ++v244;
          }

          v249 = [v241 nextObject];

          v243 = v249;
        }

        while (v249);

        a3 = v555;
        v230 = v529;
        if (v244)
        {
          v250 = 0;
          v513 = v228;
          v522 = v229;
          v525 = v244;
          do
          {
            v251 = [v531 objectAtIndexedSubscript:v250];
            v252 = [v228 nodeAtPath:v251];
            v253 = [v252 property:@"purpose"];
            v254 = v253;
            v533 = v250;
            if (v253)
            {
              v255 = [v253 stringValue];
              v256 = [v255 isEqualToString:@"guide"];

              v230 = v529;
            }

            else
            {
              v256 = 0;
            }

            v257 = v228;
            v258 = v229;
            v259 = v251;
            v260 = v230;
            v261 = [v257 nodeAtPath:v259];
            v262 = [v261 inheritedSkeletonBinding];

            if (v262)
            {
              v263 = [v260 count];
              if (v263)
              {
                while (1)
                {
                  v264 = [v260 objectAtIndexedSubscript:0];
                  [v258 selectVariant:v264 variantSet:@"lodVariant"];

                  v265 = [v257 nodeAtPath:v259];
                  v266 = [v265 inheritedSkeletonBinding];

                  if (!v266)
                  {
                    break;
                  }

                  if (!--v263)
                  {
                    goto LABEL_299;
                  }
                }

LABEL_331:
                [v258 selectVariant:@"default" variantSet:@"lodVariant"];

                goto LABEL_332;
              }
            }

            else
            {
              v267 = MEMORY[0x1E69DED88];
              v268 = [v257 nodeAtPath:v259];
              [v267 localTransformWithNode:v268 time:0.0];
              v544 = v270;
              v549 = v269;
              v537 = v272;
              v541 = v271;

              v273 = [v260 count];
              if (v273)
              {
                while (1)
                {
                  v274 = [v260 objectAtIndexedSubscript:0];
                  [v258 selectVariant:v274 variantSet:@"lodVariant"];

                  v275 = [v257 nodeAtPath:v259];
                  v276 = [MEMORY[0x1E69DED88] transformKeyTimesWithNode:v275];
                  if ([v276 arraySize] >= 2)
                  {
                    break;
                  }

                  [MEMORY[0x1E69DED88] localTransformWithNode:v275 time:0.0];
                  v281 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v549, v277), vceqq_f32(v544, v278)), vandq_s8(vceqq_f32(v541, v279), vceqq_f32(v537, v280))));

                  if ((v281 & 0x80000000) == 0)
                  {
                    goto LABEL_331;
                  }

                  if (!--v273)
                  {
                    goto LABEL_299;
                  }
                }

                goto LABEL_331;
              }
            }

LABEL_299:
            [v258 selectVariant:@"default" variantSet:@"lodVariant"];

            if ((v256 & 1) == 0)
            {
              v283 = [v257 nodeAtPath:v259];
              v284 = [v283 name];
              v285 = [v284 stringValue];
              v286 = [v285 UTF8String];
              v287 = [v259 stringValue];
              re::USDImportContext::pushNodePath(v555, v286, "(default)", [v287 UTF8String]);

              v288 = [v283 inheritedSkeletonBinding];

              if (!v288)
              {
                [MEMORY[0x1E69DED88] localTransformWithNode:v283 time:0.0];
                v550 = v292;
                v293 = vmulq_f32(v289, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v291, v291, 0xCuLL), v291, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v290, v290), v290, 0xCuLL))), vextq_s8(vuzp1q_s32(v291, v291), v291, 0xCuLL), vextq_s8(vextq_s8(v290, v290, 0xCuLL), v290, 8uLL)));
                v294 = (v293.f32[2] + vaddv_f32(*v293.f32)) <= 0.0;
                v295 = vmulq_f32(v289, v289);
                v296 = vmulq_f32(v290, v290);
                v297 = vadd_f32(vzip1_s32(*v295.i8, *v296.i8), vzip2_s32(*v295.i8, *v296.i8));
                v299 = vextq_s8(v295, v295, 8uLL);
                *v299.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v299.f32, *&vextq_s8(v296, v296, 8uLL)), v297));
                v298 = vmulq_f32(v291, v291);
                v299.i32[2] = sqrtf(v298.f32[2] + vaddv_f32(*v298.f32));
                if (v294)
                {
                  v300 = -1.0;
                }

                else
                {
                  v300 = 1.0;
                }

                v545 = vmulq_n_f32(v299, v300);
                v301 = vdivq_f32(v289, vdupq_lane_s32(*&v545, 0));
                v302 = vdivq_f32(v290, vdupq_lane_s32((v545 >> 32), 0));
                v303 = vdivq_f32(v291, vdupq_laneq_s32(v545, 2));
                v304 = vmulq_f32(v301, v301);
                *&v305 = v304.f32[2] + vaddv_f32(*v304.f32);
                *v304.f32 = vrsqrte_f32(v305);
                *v304.f32 = vmul_f32(*v304.f32, vrsqrts_f32(v305, vmul_f32(*v304.f32, *v304.f32)));
                v610.columns[0] = vmulq_n_f32(v301, vmul_f32(*v304.f32, vrsqrts_f32(v305, vmul_f32(*v304.f32, *v304.f32))).f32[0]);
                v306 = vmulq_f32(v610.columns[0], v302);
                v307 = vmulq_f32(v610.columns[0], v610.columns[0]);
                v308 = vmulq_f32(v610.columns[0], v303);
                *v307.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v308, v308, 8uLL), *&vextq_s8(v307, v307, 8uLL)), vadd_f32(vzip1_s32(*v308.i8, *v307.i8), vzip2_s32(*v308.i8, *v307.i8)));
                v309 = vsubq_f32(v302, vmulq_n_f32(v610.columns[0], (v306.f32[2] + vaddv_f32(*v306.f32)) / *&v307.i32[1]));
                v310 = vmulq_f32(v309, v309);
                *&v311 = v310.f32[2] + vaddv_f32(*v310.f32);
                *v310.f32 = vrsqrte_f32(v311);
                *v310.f32 = vmul_f32(*v310.f32, vrsqrts_f32(v311, vmul_f32(*v310.f32, *v310.f32)));
                v610.columns[1] = vmulq_n_f32(v309, vmul_f32(*v310.f32, vrsqrts_f32(v311, vmul_f32(*v310.f32, *v310.f32))).f32[0]);
                v312 = vsubq_f32(v303, vmulq_n_f32(v610.columns[0], *v307.i32 / *&v307.i32[1]));
                v313 = vmulq_f32(v303, v610.columns[1]);
                v314 = vmulq_f32(v610.columns[1], v610.columns[1]);
                *v313.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v313, v313, 8uLL), *&vextq_s8(v314, v314, 8uLL)), vadd_f32(vzip1_s32(*v313.i8, *v314.i8), vzip2_s32(*v313.i8, *v314.i8)));
                v315 = vsubq_f32(v312, vmulq_n_f32(v610.columns[1], vdiv_f32(*v313.i8, vdup_lane_s32(*v313.i8, 1)).f32[0]));
                v610.columns[3] = vmulq_f32(v315, v315);
                *v314.i32 = v610.columns[3].f32[2] + vaddv_f32(*v610.columns[3].f32);
                *v610.columns[3].f32 = vrsqrte_f32(v314.u32[0]);
                *v610.columns[3].f32 = vmul_f32(*v610.columns[3].f32, vrsqrts_f32(v314.u32[0], vmul_f32(*v610.columns[3].f32, *v610.columns[3].f32)));
                *v610.columns[3].f32 = vmul_f32(*v610.columns[3].f32, vrsqrts_f32(v314.u32[0], vmul_f32(*v610.columns[3].f32, *v610.columns[3].f32)));
                v610.columns[2] = vmulq_n_f32(v315, v610.columns[3].f32[0]);
                *v316.i64 = simd_quaternion(v610);
                v317 = v316.i64[1];
                v318 = vextq_s8(v316, v316, 8uLL).u64[0];
                v319 = vmvn_s8(vceq_f32(v318, v318));
                if ((v319.i8[0] | v319.i8[4]))
                {
                  v320 = 0;
                }

                else
                {
                  v320 = v316.i64[0];
                }

                *buf = v545;
                if ((v319.i8[0] | v319.i8[4]))
                {
                  v317 = 0x3F80000000000000;
                }

                *&buf[24] = v317;
                *&buf[16] = v320;
                *&buf[32] = v550;
                re::USDImportContext::concatenateLocalTransform(v555, buf);
              }

              v321 = v257;
              v322 = v258;
              v323 = v259;
              v324 = v260;
              memset(v571, 0, 36);
              *(&v571[2] + 4) = 0x7FFFFFFFLL;
              v325 = [v324 objectAtIndexedSubscript:0];
              v326 = [v325 isEqualToString:@"card"];

              v327 = [v324 count];
              [v322 selectVariant:@"default" variantSet:@"lodVariant"];
              v328 = [v321 nodeAtPath:v323];
              re::appendUsedMaterialsByMeshNodeToTableForHelper(v328, v515, v571);

              v551 = v326;
              if (v326)
              {
                v329 = 2;
              }

              else
              {
                v329 = 1;
              }

              if (v329 < v327)
              {
                do
                {
                  v330 = [v324 objectAtIndexedSubscript:v329];
                  [v322 selectVariant:v330 variantSet:@"lodVariant"];

                  v331 = [v321 nodeAtPath:v323];
                  re::appendUsedMaterialsByMeshNodeToTableForHelper(v331, v515, v571);

                  ++v329;
                }

                while (v327 != v329);
              }

              if (v551)
              {
                [v322 selectVariant:@"card" variantSet:@"lodVariant"];
                v332 = [v321 nodeAtPath:v323];
                re::appendUsedMaterialsByMeshNodeToTableForHelper(v332, v515, v571);
              }

              [v322 selectVariant:@"default" variantSet:@"lodVariant"];

              *v570 = 0;
              *&v569 = 0;
              v568 = 0uLL;
              DWORD2(v569) = 0;
              re::createMaterialAssetsFromMaterialTableUSK(v518, v571, &v568);
              v333 = [v321 nodeAtPath:v323];
              v334 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v333];
              if ([v334 count])
              {
                v604 = 0u;
                memset(v603, 0, sizeof(v603));
                v335 = v334;
                v336 = [v335 countByEnumeratingWithState:v603 objects:v580 count:16];
                if (v336)
                {
                  v337 = v336;
                  v546 = v334;
                  v552 = v333;
                  v338 = *v603[0].__r_.__value_.__r.__words[2];
                  while (2)
                  {
                    for (j = 0; j != v337; ++j)
                    {
                      if (*v603[0].__r_.__value_.__r.__words[2] != v338)
                      {
                        objc_enumerationMutation(v335);
                      }

                      v340 = [*(v603[0].__r_.__value_.__l.__size_ + 8 * j) inheritedMaterialBinding];
                      if (v340)
                      {
                        v341 = v340;
                        goto LABEL_328;
                      }
                    }

                    v337 = [v335 countByEnumeratingWithState:v603 objects:v580 count:16];
                    if (v337)
                    {
                      continue;
                    }

                    break;
                  }

                  v341 = 0;
LABEL_328:
                  v333 = v552;
                  v334 = v546;
                }

                else
                {
                  v341 = 0;
                }
              }

              else
              {
                v341 = [v333 inheritedMaterialBinding];
              }

              a3 = v555;
              re::addPhysicsMaterialAsset(v341, v555, v518, v571);

              v345 = v321;
              v346 = v322;
              v347 = v323;
              v348 = v324;
              v349 = [v348 objectAtIndexedSubscript:0];
              v350 = [v349 isEqualToString:@"card"];

              v351 = [v348 count];
              memset(buf, 0, 28);
              v602 = 0;
              *&buf[32] = 0u;
              v600 = 0u;
              v601 = 0;
              if (v351)
              {
                re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(buf, v351);
                v352 = v600;
              }

              else
              {
                v352 = 0;
              }

              if (v352 < v351)
              {
                re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&buf[40], v351);
              }

              [v346 selectVariant:@"default" variantSet:@"lodVariant"];
              v353 = [v345 nodeAtPath:v347];
              re::findSkeletonAndSkeletalAnimationIndices(v605, v353, v555);
              if (v605[0] & LOBYTE(v605[1]))
              {
                v354 = &v605[2];
              }

              else
              {
                v354 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
              }

              re::DynamicArray<unsigned long>::add(buf, v354);
              if (v605[0] & LOBYTE(v605[3]))
              {
                v355 = &v606;
              }

              else
              {
                v355 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
              }

              re::DynamicArray<unsigned long>::add(&buf[40], v355);
              if (v605[0] & 1) == 0 && v605[3] && (v606)
              {
                (*(*v605[3] + 40))();
              }

              v553 = v350;
              if (v350)
              {
                v356 = 2;
              }

              else
              {
                v356 = 1;
              }

              if (v356 < v351)
              {
                do
                {
                  v357 = [v348 objectAtIndexedSubscript:v356];
                  [v346 selectVariant:v357 variantSet:@"lodVariant"];

                  v358 = [v345 nodeAtPath:v347];
                  re::findSkeletonAndSkeletalAnimationIndices(v605, v358, v555);
                  if (v605[0] & LOBYTE(v605[1]))
                  {
                    v359 = &v605[2];
                  }

                  else
                  {
                    v359 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
                  }

                  re::DynamicArray<unsigned long>::add(buf, v359);
                  if (v605[0] & LOBYTE(v605[3]))
                  {
                    v360 = &v606;
                  }

                  else
                  {
                    v360 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
                  }

                  re::DynamicArray<unsigned long>::add(&buf[40], v360);
                  if (v605[0] & 1) == 0 && v605[3] && (v606)
                  {
                    (*(*v605[3] + 40))();
                  }

                  ++v356;
                }

                while (v351 != v356);
              }

              v228 = v513;
              if (v553)
              {
                [v346 selectVariant:@"card" variantSet:@"lodVariant"];
                v361 = [v345 nodeAtPath:v347];
                re::findSkeletonAndSkeletalAnimationIndices(v605, v361, v555);
                if (v605[0] & LOBYTE(v605[1]))
                {
                  v362 = &v605[2];
                }

                else
                {
                  v362 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
                }

                re::DynamicArray<unsigned long>::add(buf, v362);
                if (v605[0] & LOBYTE(v605[3]))
                {
                  v363 = &v606;
                }

                else
                {
                  v363 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
                }

                re::DynamicArray<unsigned long>::add(&buf[40], v363);
                if (v605[0] & 1) == 0 && v605[3] && (v606)
                {
                  (*(*v605[3] + 40))();
                }
              }

              [v346 selectVariant:@"default" variantSet:@"lodVariant"];

              re::loadAllLodModelsForModelPathHelper(v605, v345, v346, v347, v555, v571, v348, buf);
              if (LOBYTE(v605[0]) == 1)
              {
                re::FixedArray<float>::FixedArray(&v572, &v574);
                re::USDImportContext::setModelsWithLods(v555, &v605[1], buf, &buf[40], &v572);
                v365 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v555 + 624, *(*(v555 + 106) + 8 * *(v555 + 104) - 8));
                re::DynamicArray<re::AssetHandle>::operator=((v365 + 808), &v568);
                v229 = v522;
                v230 = v529;
                if (v572.__r_.__value_.__r.__words[0] && v572.__r_.__value_.__l.__size_)
                {
                  (*(*v572.__r_.__value_.__l.__data_ + 40))();
                }
              }

              else
              {
                v366 = *re::pipelineLogObjects(v364);
                v229 = v522;
                v230 = v529;
                if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
                {
                  std::error_code::message(&v572, &v605[1]);
                  v368 = &v572;
                  if ((v572.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v368 = v572.__r_.__value_.__r.__words[0];
                  }

                  v369 = &v606 + 1;
                  if (v606)
                  {
                    v369 = *&v607[6];
                  }

                  *v591 = 136315394;
                  *&v591[4] = v368;
                  *&v591[12] = 2080;
                  *&v591[14] = v369;
                  _os_log_error_impl(&dword_1E1C61000, v366, OS_LOG_TYPE_ERROR, "Error: %s\nDetails:\n%s", v591, 0x16u);
                  if (SHIBYTE(v572.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v572.__r_.__value_.__l.__data_);
                  }
                }
              }

              v367 = [v345 nodeAtPath:v347];
              re::updateMeshOverrideCompileOptions(v555, v367);

              if (LOBYTE(v605[0]) == 1)
              {
                re::DynamicArray<re::GeomModelDescriptor>::deinit(&v605[1]);
                v344 = v533;
              }

              else
              {
                v344 = v533;
                if (v605[3] && (v606 & 1) != 0)
                {
                  (*(*v605[3] + 40))();
                }
              }

              if (*&buf[40])
              {
                if (v602)
                {
                  (*(**&buf[40] + 40))();
                }

                v602 = 0;
                v600 = 0uLL;
                *&buf[40] = 0;
                ++v601;
              }

              if (*buf && *&buf[32])
              {
                (*(**buf + 40))();
              }

              re::DynamicArray<re::AssetHandle>::deinit(&v568);
              re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v571);
              re::USDImportContext::popNodePath(v555);
              goto LABEL_398;
            }

LABEL_332:
            v342 = *re::pipelineLogObjects(v282);
            if (os_log_type_enabled(v342, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v342, OS_LOG_TYPE_DEFAULT, "Lods specified, but leaf level mesh nodes have inconsistent transforms and/or possess animations.  Lods will be ignored.", buf, 2u);
            }

            v230 = v529;

            v343 = [v257 nodeAtPath:v259];
            a3 = v555;
            re::loadTransformAndMeshNodes(v257, v343, v555, v529 != 0);

            v229 = v522;
            v344 = v533;
LABEL_398:

            v250 = v344 + 1;
          }

          while (v250 != v525);
        }
      }

      else
      {
      }

      if (v574 && v575)
      {
        (*(*v574 + 40))();
      }

      v16 = v535;
      v9 = v519;
    }
  }

  else if (!re::uskNodeIsBlendShapeRoot(v16) || (*(*(a3 + 5) + 165) & 1) == 0)
  {
    v370 = [v16 childIterator];
    v371 = [v370 nextObject];
    if (v371)
    {
      v372 = v371;
      do
      {
        v373 = [v16 metadataWithKey:@"kind"];
        v374 = [v373 stringValue];
        v375 = [v374 isEqual:@"sceneLibrary"];

        if ((v375 & 1) == 0)
        {
          re::loadTransformAndMeshNodes(v526, v372, v555, 0);
        }

        v376 = [v370 nextObject];

        v372 = v376;
      }

      while (v376);
    }

    a3 = v555;
    v9 = v519;
  }

  if (v516)
  {
    re::USDImportContext::popNodePath(a3);
  }
}