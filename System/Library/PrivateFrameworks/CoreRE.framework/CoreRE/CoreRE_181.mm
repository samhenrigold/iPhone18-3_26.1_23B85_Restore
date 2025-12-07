uint64_t re::DeformationBufferAllocator::allocWithExistingBuffer(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = *(a1 + 8);
  if (v7 <= a5)
  {
    v17 = 0;
    v27 = 0u;
    v28 = 0u;
    memset(v26, 0, sizeof(v26));
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

    v21 = 468;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(a1 + 16) + 72 * a5;
  v10 = *(v9 + 56);
  LOBYTE(v26[0]) = a2;
  *(v26 + 4) = a3;
  LOBYTE(v26[1]) = BYTE4(a4);
  HIDWORD(v26[0]) = a4;
  BYTE8(v26[1]) = 0;
  LODWORD(v27) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v26[1] + 8, a6);
  *(&v27 + 1) = *(a6 + 32);
  v11 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(v9 + 16);
  v12 = v26[1];
  *v11 = v26[0];
  *(v11 + 16) = v12;
  *(v11 + 24) = 0;
  *(v11 + 48) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11 + 24, &v26[1] + 8);
  *(v11 + 56) = *(&v27 + 1);
  if (v27 != -1)
  {
    (off_1F5D051B0[v27])(&v18, &v26[1] + 8);
  }

  return v10;
}

uint64_t re::FixedArray<re::DeformationBufferAllocator::DeformationStackAllocation>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x38E38E38E38E38FLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 72, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 72 * a3, 8);
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
      *result = 0xFFFFFFFFFFFFFFFLL;
      *(result + 24) = 0uLL;
      *(result + 40) = 0uLL;
      *(result + 56) = 0uLL;
      *(result + 8) = 0uLL;
      *(result + 32) = 1;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 64) = 0;
      *(result + 56) = 0;
      result += 72;
      --v6;
    }

    while (v6);
  }

  *result = 0xFFFFFFFFFFFFFFFLL;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 8) = 0u;
  *(result + 32) = 1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 64) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t re::FixedArray<re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x492492492492493)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 56 * a3, 8);
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
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *result = 0uLL;
      *(result + 16) = 1;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 48) = 0;
      result += 56;
      --v6;
    }

    while (v6);
  }

  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *result = 0u;
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 288, 0);
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

              result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, v13 + 1);
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
    re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 8 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

void *re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 256, 0);
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

              result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, v13 + 1);
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

void *std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>&,true>>(void *result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = result;
  if (a2 != a4 || a3 != a5)
  {
    v13 = a5 - 1;
    do
    {
      do
      {
        v14 = a3;
        v15 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a2, a3);
        v16 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a6, a7);
        v17 = *(v15 + 16);
        *v16 = *v15;
        *(v16 + 16) = v17;
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v16 + 24, v15 + 24);
        *(v16 + 56) = *(v15 + 56);
        a3 = v14 + 1;
        ++a7;
      }

      while (a2 != a4);
    }

    while (v13 != v14);
    a3 = a5;
  }

  *v12 = a2;
  v12[1] = a3;
  v12[2] = a6;
  v12[3] = a7;
  return result;
}

uint64_t re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(a1, v4);
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
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
  return v5 + ((v2 & 3) << 6);
}

void *re::ProbeManager::init(re::ProbeManager *this, const re::RenderManager *a2)
{
  *(this + 1) = a2;
  v4 = 7;
  re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(this + 17, 7uLL);
  ++*(this + 40);
  do
  {
    LOBYTE(v8[0]) = 0;
    v5 = re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::add((this + 136), v8);
    --v4;
  }

  while (v4);
  v6 = re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(this + 43, 0x25uLL);
  ++*(this + 92);
  result = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(this + 56, 2uLL);
  ++*(this + 118);
  *(this + 808) = *(a2 + 369);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::add(_anonymous_namespace_ *this, _OWORD *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 160 * v4;
  v6 = *a2;
  *v5 = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = a2[1];
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    *(v5 + 64) = a2[4];
    *(v5 + 80) = v9;
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    v10 = a2[6];
    v11 = a2[7];
    v12 = a2[9];
    *(v5 + 128) = a2[8];
    *(v5 + 144) = v12;
    *(v5 + 96) = v10;
    *(v5 + 112) = v11;
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void re::ProbeManager::ensureAllocations(re::ProbeManager *this)
{
  v1 = (this + 128);
  if (!*(this + 16))
  {
    v14 = *(*(this + 1) + 208);
    v3 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v3 setStorageMode_];
    [v3 setTextureType_];
    [v3 setWidth_];
    [v3 setHeight_];
    [v3 setPixelFormat_];
    [v3 setMipmapLevelCount_];
    [v3 setProtectionOptions_];
    re::mtl::Device::makeTexture(v42, v3, &v14);
    NS::SharedPtr<MTL::Texture>::operator=(this + 13, v42);
    if (v42[0])
    {
    }

    re::mtl::Device::makeTexture(v42, v3, &v14);
    NS::SharedPtr<MTL::Texture>::operator=(this + 14, v42);
    if (v42[0])
    {
    }

    if (v3)
    {
    }

    v4 = *(this + 808);
    v5 = *(*(this + 1) + 208);
    v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v6 setStorageMode_];
    if (v4 == 1)
    {
      [v6 setTextureType_];
      [v6 setWidth_];
      [v6 setHeight_];
    }

    else
    {
      [v6 setTextureType_];
      [v6 setWidth_];
      [v6 setHeight_];
    }

    [v6 setArrayLength_];
    [v6 &selRef:115 stringByAppendingString:? :?0];
    [v6 setMipmapLevelCount_];
    [v6 setProtectionOptions_];
    re::mtl::Device::makeTexture(&v14, v6, (*(this + 1) + 208));
    NS::SharedPtr<MTL::Texture>::operator=(this + 10, &v14);
    if (v14)
    {
    }

    if (v6)
    {
    }

    if (*(this + 808) == 1)
    {
      v7 = *(*(this + 1) + 208);
      v8 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
      [v8 setStorageMode_];
      [v8 setTextureType_];
      [v8 off_1E8723878];
      [v8 &selRef_array];
      [v8 setArrayLength_];
      [v8 &selRef:115 stringByAppendingString:? :?0];
      [v8 setMipmapLevelCount_];
      [v8 setUsage_];
      re::mtl::Device::makeTexture(&v14, v8, (*(this + 1) + 208));
      NS::SharedPtr<MTL::Texture>::operator=(this + 11, &v14);
      if (v14)
      {
      }

      if (v8)
      {
      }

      if (*(this + 808))
      {
        v9 = *(*(this + 1) + 208);
        v10 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
        [v10 setStorageMode_];
        [v10 setTextureType_];
        [v10 off_1E8723878];
        [v10 &selRef_array];
        [v10 &selRef:115 stringByAppendingString:? :?0];
        [v10 setMipmapLevelCount_];
        [v10 setUsage_];
        re::mtl::Device::makeTexture(&v14, v10, (*(this + 1) + 208));
        NS::SharedPtr<MTL::Texture>::operator=(this + 15, &v14);
        if (v14)
        {
        }

        if (v10)
        {
        }
      }
    }

    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = 1;
    v16 = 1065353216;
    v14 = 0;
    v11 = *MEMORY[0x1E69E9B10];
    v12 = *(MEMORY[0x1E69E9B10] + 16);
    v37 = 0u;
    v38 = v11;
    v39 = v12;
    v40 = *(MEMORY[0x1E69E9B10] + 32);
    v41 = 0;
    *(this + 824) = 0;
    v13 = *(*(this + 1) + 208);
    v42[0] = [v13 newBufferWithBytes:&v14 length:864 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(v1, v42);
    if (v42[0])
    {
    }

    *(this + 184) = 0;
  }
}

void re::ProbeManager::addProbe(uint64_t a1, id a2, id *a3, char a4, __int128 *a5, float a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = [*a3 hash];
  re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew((a1 + 16), &v12, &v13);
  v13 = v12;
  v14 = *a3;
  v11 = a5[1];
  v15 = *a5;
  v16 = v11;
  v17 = a5[2];
  v18 = a6;
  v19 = a4;
  re::DynamicArray<re::ProbeManager::ProbeAdd>::add((a1 + 600), &v13);
  if (v14)
  {
  }
}

double re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

__n128 re::DynamicArray<re::ProbeManager::ProbeAdd>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ProbeManager::ProbeAdd>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *(a2 + 8) = 0;
  result = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 61) = *(a2 + 61);
  *(v5 + 32) = v8;
  *(v5 + 48) = v9;
  *(v5 + 16) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::ProbeManager::updateProbe(uint64_t a1, size_t a2, id *a3, float a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v7 = [*a3 hash];
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 16), &v33);
  if (v8 != -1)
  {
    *(*(a1 + 24) + 16 * v8 + 8) = v7;
  }

  v9 = *(a1 + 616);
  if (v9)
  {
    v10 = (*(a1 + 632) + 8);
    while (*(v10 - 1) != v33)
    {
      v10 += 10;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }

    NS::SharedPtr<MTL::Buffer>::operator=(v10, a3);
  }

  else
  {
LABEL_7:
    v11 = *(a1 + 576);
    if (v11)
    {
      v12 = 0;
      for (i = 0; i < v11; ++i)
      {
        if (*(*(a1 + 592) + v12) == v33)
        {
          re::DynamicArray<re::ProbeManager::ProbeUpdate>::removeAt(a1 + 560, i);
          v11 = *(a1 + 576);
        }

        v12 += 24;
      }
    }

    v14 = *(a1 + 152);
    if (v14)
    {
      v15 = 0;
      v16 = v33;
      for (j = (*(a1 + 168) + 32); *(j - 32) != 1 || *(j - 1) != v33; j += 160)
      {
        if (v14 == ++v15)
        {
          return;
        }
      }

      if (v14 <= v15)
      {
        v34 = 0;
        memset(v43, 0, sizeof(v43));
        v29 = MEMORY[0x1E69E9C10];
        v30 = v15;
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v35 = 136315906;
        v36 = "operator[]";
        v37 = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v38 = 789;
        v39 = 2048;
        v40 = v30;
        v41 = 2048;
        v42 = v14;
        _os_log_send_and_compose_impl(v32, &v34, v43, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
        _os_crash_msg();
        __break(1u);
      }

      v18 = *a3;
      v19 = v18;
      v20 = *j;
      v21 = *(a1 + 576);
      v22 = *(a1 + 568);
      if (v21 >= v22)
      {
        v23 = v21 + 1;
        if (v22 < v21 + 1)
        {
          if (*(a1 + 560))
          {
            v24 = 2 * v22;
            v25 = v22 == 0;
            v26 = 8;
            if (!v25)
            {
              v26 = v24;
            }

            if (v26 <= v23)
            {
              v27 = v23;
            }

            else
            {
              v27 = v26;
            }

            re::DynamicArray<re::ProbeManager::ProbeUpdate>::setCapacity((a1 + 560), v27);
          }

          else
          {
            re::DynamicArray<re::ProbeManager::ProbeUpdate>::setCapacity((a1 + 560), v23);
            ++*(a1 + 584);
          }
        }

        v21 = *(a1 + 576);
      }

      v28 = *(a1 + 592) + 24 * v21;
      *v28 = v16;
      *(v28 + 8) = v19;
      *(v28 + 16) = a4;
      *(v28 + 20) = v20;
      ++*(a1 + 576);
      ++*(a1 + 584);
    }
  }
}

void re::DynamicArray<re::ProbeManager::ProbeUpdate>::removeAt(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "removeAt";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 931;
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
    v6 = v5 + 24 * v3;
    v7 = v5 + 24 * a2;
    *v7 = *(v6 - 24);
    NS::SharedPtr<MTL::Texture>::operator=((v7 + 8), (v6 - 16));
    v8 = *(v6 - 8);
    *(v7 + 20) = *(v6 - 4);
    *(v7 + 16) = v8;
    v3 = *(a1 + 16);
  }

  v9 = *(a1 + 32) + 24 * v3;
  v10 = *(v9 - 16);
  if (v10)
  {

    *(v9 - 16) = 0;
    v3 = *(a1 + 16);
  }

  *(a1 + 16) = v3 - 1;
  ++*(a1 + 24);
}

double re::ProbeManager::removeProbe(re::ProbeManager *this, unint64_t a2)
{
  v11 = a2;
  re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove(this + 16, &v11);
  v3 = *(this + 77);
  if (v3)
  {
    v4 = 0;
    for (i = 0; i < v3; ++i)
    {
      if (*(*(this + 79) + v4) == v11)
      {
        re::DynamicArray<re::ProbeManager::ProbeAdd>::removeAt(this + 600, i);
        v3 = *(this + 77);
      }

      v4 += 80;
    }
  }

  v6 = *(this + 72);
  if (v6)
  {
    v7 = 0;
    for (j = 0; j < v6; ++j)
    {
      if (*(*(this + 74) + v7) == v11)
      {
        re::DynamicArray<re::ProbeManager::ProbeUpdate>::removeAt(this + 560, j);
        v6 = *(this + 72);
      }

      v7 += 24;
    }
  }

  if ((*(this + 232) & 1) != 0 && *(this + 36) == v11)
  {
    re::ProbeManager::cancelSliceOperation(this);
    if (*(this + 768) == 1 && *(this + 98) == v11)
    {
      *(this + 768) = 0;
    }
  }

  v10 = 0;
  return re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew(this + 88, &v11, &v10);
}

BOOL re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 16 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v12 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v12;
    if (v9 >= 0x11 && v12.i64[0] < v9 >> 2)
    {
      re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

void re::DynamicArray<re::ProbeManager::ProbeAdd>::removeAt(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v13 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "removeAt";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 931;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v3;
    _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 80 * v3;
    v7 = v5 + 80 * a2;
    *v7 = *(v6 - 80);
    NS::SharedPtr<MTL::Texture>::operator=((v7 + 8), (v6 - 72));
    v8 = *(v6 - 64);
    v9 = *(v6 - 48);
    v10 = *(v6 - 32);
    *(v7 + 61) = *(v6 - 19);
    *(v7 + 32) = v9;
    *(v7 + 48) = v10;
    *(v7 + 16) = v8;
    v3 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 80 * v3;
  v12 = *(v11 - 72);
  if (v12)
  {

    *(v11 - 72) = 0;
    v3 = *(a1 + 16);
  }

  *(a1 + 16) = v3 - 1;
  ++*(a1 + 24);
}

uint64_t re::ProbeManager::cancelSliceOperation(re::ProbeManager *this)
{
  v9 = *MEMORY[0x1E69E9840];
  re::ProbeManager::freeSlice(this, *(this + 31));
  v3[0] = 0;
  re::Optional<re::ProbeManager::SliceOperation>::operator=(this + 232, v3);
  re::Optional<re::ProbeManager::SliceOperation>::~Optional(v3);
  if (*(this + 304) == 1)
  {
    *(this + 304) = 0;
  }

  if (*(this + 336) == 1)
  {
    *(this + 336) = 0;
  }

  *(this + 45) = 0;
  ++*(this + 92);
  if (*(this + 384) == 1)
  {
    *(this + 384) = 0;
  }

  *(this + 58) = 0;
  ++*(this + 118);
  v3[0] = 0;
  result = re::Optional<re::ProbeLatLongComputeWorkload>::operator=(this + 488, v3);
  if (v3[0] == 1)
  {
    if (v6)
    {
      if (v7)
      {
        (*(*v6 + 40))();
        v7 = 0;
        v8 = 0;
      }

      v6 = 0;
    }

    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

double re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew(uint64_t *a1, unint64_t *a2, _DWORD *a3)
{
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

double re::ProbeManager::addProbeCallBack(re::ProbeManager *this, unint64_t a2)
{
  v4 = a2;
  v3 = 0;
  return re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew(this + 80, &v4, &v3);
}

void re::ProbeManager::update(re::ProbeManager *this, float a2)
{
  re::ProbeManager::freeStaleTextureSlices(this);
  if ((*(this + 44) + *(this + 45)) <= 6)
  {
    re::ProbeManager::assignTextureSlices(this);
  }

  re::ProbeManager::updateWeights(this, a2);

  re::ProbeManager::regenerateBuffer(this);
}

uint64_t re::ProbeManager::freeStaleTextureSlices(uint64_t this)
{
  v1 = this;
  v25 = *MEMORY[0x1E69E9840];
  if (*(this + 768) == 1 && *(this + 800) >= 1.0)
  {
    v2 = *(this + 796);
    v3 = *(this + 152);
    if (v3 <= v2)
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

      v19 = 789;
      v20 = 2048;
      v21 = v2;
      v22 = 2048;
      v23 = v3;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v4 = *(this + 168) + 160 * v2;
    v5 = *(v4 + 144);
    if (*(v4 + 32) == 1)
    {
      *(v4 + 148) = v5;
    }

    else
    {
      *(v4 + 152) = v5;
    }

    this = re::ProbeManager::freeSlice(this, *(this + 792));
    if (*(v1 + 768) == 1)
    {
      *(v1 + 768) = 0;
    }
  }

  v6 = *(v1 + 152);
  if (v6)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = *(v1 + 168);
      if (*(v9 + v7) == 1)
      {
        v10 = v9 + v7;
        if (*(v10 + 32))
        {
          v11 = 116;
        }

        else
        {
          v11 = 120;
        }

        if (*(v10 + v11 + 16) <= 0.0)
        {
          this = re::ProbeManager::freeSlice(v1, i);
          v6 = *(v1 + 152);
        }
      }

      v7 += 160;
    }
  }

  return this;
}

void re::ProbeManager::assignTextureSlices(re::ProbeManager *this)
{
  v90 = *MEMORY[0x1E69E9840];
  if ((*(this + 768) & 1) == 0)
  {
    while (1)
    {
      v41 = *(this + 72);
      if (!v41)
      {
        goto LABEL_2;
      }

      v42 = 0;
      v43 = *(this + 74) + 16;
      while (1)
      {
        v44 = *(this + 45) > 3u;
        if (*(v43 + 4))
        {
          v44 = *(this + 44) > 2u;
        }

        if (!v44)
        {
          break;
        }

        ++v42;
        v43 += 24;
        if (v41 == v42)
        {
          goto LABEL_2;
        }
      }

      v45 = *(v43 - 16);
      v46 = *(v43 - 8);
      v72 = *v43;
      v73 = *(v43 + 4);
      re::DynamicArray<re::ProbeManager::ProbeUpdate>::removeAt(this + 560, v42);
      v47 = v46;
      v48 = v47;
      v71 = v47;
      v2 = *(this + 19);
      if (v2)
      {
        break;
      }

LABEL_36:
      if (v47)
      {
        goto LABEL_37;
      }

LABEL_38:
      if (v46)
      {
      }

      if (*(this + 768) == 1)
      {
        goto LABEL_2;
      }
    }

    v49 = 0;
    v50 = *(this + 21);
    v51 = v50 + 136;
    while (*(v51 - 136) != 1 || *(v51 - 14) != v45)
    {
      ++v49;
      v51 += 40;
      if (v2 == v49)
      {
        goto LABEL_36;
      }
    }

    v52 = 0;
    while (1)
    {
      v53 = *v50;
      v50 += 160;
      if ((v53 & 1) == 0)
      {
        break;
      }

      if (v2 == ++v52)
      {
        goto LABEL_47;
      }
    }

    v1 = v52;
LABEL_47:
    if ((*(this + 768) & 1) == 0)
    {
      *(this + 768) = 1;
    }

    *(this + 776) = 0;
    *(this + 98) = v45;
    *(this + 198) = v49;
    *(this + 199) = v1;
    *(this + 200) = 0;
    if (v2 <= v49)
    {
      v74 = 0;
      memset(__src, 0, 80);
      v64 = MEMORY[0x1E69E9C10];
      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v76 = 136315906;
      v77 = "operator[]";
      v78 = 1024;
      if (v65)
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      *v79 = 789;
      *&v79[4] = 2048;
      *&v79[6] = v49;
      *&v79[14] = 2048;
      *&v79[16] = v2;
      _os_log_send_and_compose_impl(v66, &v74, __src, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v67, v69);
      _os_crash_msg();
      __break(1u);
    }

    v54 = v72;
    v55 = *(v51 - 104);
    if (v55)
    {
      v56 = v51 + 5;
      v57 = v51 + 1;
      v58 = v51[2];
      v59 = 0;
      v60 = v1;
    }

    else
    {
      v56 = v51 + 2;
      v57 = v51 + 3;
      v59 = *v51;
      v60 = v72;
      v58 = v1;
      v54 = 0;
    }

    v61 = v51 - 103;
    v62 = *v57;
    v63 = *v56;
    __src[0] = v55;
    *&__src[49] = *(v61 + 3);
    *&__src[65] = *(v61 + 4);
    *&__src[81] = *(v61 + 5);
    *&__src[96] = *(v61 + 95);
    *&__src[1] = *v61;
    *&__src[17] = *(v61 + 1);
    *&__src[33] = *(v61 + 2);
    v84 = v59;
    v85 = v54;
    v86 = v60;
    v87 = v58;
    v88 = v62;
    v89 = v63;
    v82[0] = &unk_1F5D05210;
    v82[1] = re::ProbeManager::updateProbeCallBack;
    v82[2] = 0;
    v82[3] = v82;
    re::ProbeManager::assignSliceToProbe(this, v1, v45, &v71, __src, v82);
    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v82);
    if (!v48)
    {
      goto LABEL_38;
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_2:
  v4 = *(this + 77);
  if (v4)
  {
    __asm { FMOV            V0.2S, #1.0 }

    v70 = HIDWORD(_D0);
    v10 = &dword_1E304E510;
    v11 = vld1_dup_f32(v10);
    v68 = v11.i32[1];
    do
    {
      v12 = 0;
      for (i = *(this + 79); ; i += 10)
      {
        v14 = *(this + 45) > 3u;
        if (*(i + 68))
        {
          v14 = *(this + 44) > 2u;
        }

        if (!v14)
        {
          break;
        }

        if (v4 == ++v12)
        {
          return;
        }
      }

      v15 = *i;
      v16 = i[1];
      *&v79[18] = *(i + 1);
      v80 = *(i + 2);
      *v81 = *(i + 3);
      *&v81[13] = *(i + 61);
      re::DynamicArray<re::ProbeManager::ProbeAdd>::removeAt(this + 600, v12);
      LOBYTE(v76) = 1;
      *&v79[2] = v15;
      *&v79[10] = v16;
      v17 = *(this + 19);
      if (v17)
      {
        v18 = 0;
        v19 = *(this + 21);
        while (1)
        {
          v20 = *v19;
          v19 += 160;
          if ((v20 & 1) == 0)
          {
            break;
          }

          if (v17 == ++v18)
          {
            goto LABEL_17;
          }
        }

        v1 = v18;
      }

LABEL_17:
      v21 = *&v81[16];
      if (v81[20] == 1)
      {
        v22.i64[0] = 0x3F0000003F000000;
        v22.i64[1] = 0x3F0000003F000000;
        v23 = vmulq_f32(*&v79[18], v22);
        v24 = vmulq_f32(v23, v23);
        v25 = __PAIR64__(v70, COERCE_UNSIGNED_INT(sqrtf(v24.f32[2] + vaddv_f32(*v24.f32))));
        v26 = 1;
        v27 = v1;
        v28 = *&v81[16];
      }

      else
      {
        v26 = 0;
        v25 = __PAIR64__(v68, COERCE_UNSIGNED_INT(fminf(*&v79[18], fminf(*&v79[22], *&v79[26]))));
        LODWORD(v2) = *&v81[16];
        v27 = *&v81[16];
        v21 = 1065353216;
        v28 = v1;
      }

      v29 = *&v80 * (*&v80 + *&v80);
      v30 = *(&v80 + 1) * (*(&v80 + 1) + *(&v80 + 1));
      v31 = *(&v80 + 2) * (*(&v80 + 2) + *(&v80 + 2));
      v32 = (*&v80 + *&v80) * *(&v80 + 1);
      v33 = (*&v80 + *&v80) * *(&v80 + 2);
      v34 = (*(&v80 + 1) + *(&v80 + 1)) * *(&v80 + 2);
      v35 = (*&v80 + *&v80) * *(&v80 + 3);
      v36 = (*(&v80 + 1) + *(&v80 + 1)) * *(&v80 + 3);
      v37 = (*(&v80 + 2) + *(&v80 + 2)) * *(&v80 + 3);
      *&v38 = 1.0 - (v30 + v31);
      *&v39 = v32 + v37;
      *&v40 = v33 - v36;
      *(&v38 + 1) = v32 - v37;
      *(&v39 + 1) = 1.0 - (v29 + v31);
      *(&v40 + 1) = v34 + v35;
      *&__src[24] = v33 + v36;
      __src[0] = v26;
      *&__src[16] = v38;
      *&__src[28] = 0;
      *&__src[40] = v34 - v35;
      *&__src[32] = v39;
      *&__src[44] = 0;
      *&__src[56] = 1.0 - (v29 + v30);
      *&__src[48] = v40;
      *&__src[60] = 0;
      *&__src[64] = *v81;
      *&__src[80] = *&v79[18];
      *&__src[96] = v25;
      v84 = 1065353216;
      v85 = v21;
      v86 = v27;
      v87 = v1;
      v88 = v28;
      v89 = v2;
      v75[0] = &unk_1F5D05210;
      v75[1] = re::ProbeManager::addProbeCallBack;
      v75[2] = 0;
      v75[3] = v75;
      re::ProbeManager::assignSliceToProbe(this, v1, *&v79[2], &v79[10], __src, v75);
      std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v75);
      if (*&v79[10])
      {
      }

      v4 = *(this + 77);
    }

    while (v4);
  }
}

float *re::ProbeManager::updateWeights(float *this, float a2)
{
  v3 = this;
  v74 = *MEMORY[0x1E69E9840];
  if (*(this + 83) || *(this + 91) || *(this + 768) == 1)
  {
    if (*(this + 768) == 1 && *(this + 776) == 1)
    {
      v4 = this[200] + a2;
      if (v4 > 1.0)
      {
        v4 = 1.0;
      }

      if (v4 < 0.0)
      {
        v4 = 0.0;
      }

      this[200] = v4;
      v5 = *(this + 198);
      v6 = *(this + 19);
      if (v6 <= v5)
      {
        goto LABEL_87;
      }

      v7 = *(this + 21);
      v8 = (v7 + 160 * v5);
      if (*v8 == 1)
      {
        v5 = *(this + 199);
        if (v6 <= v5)
        {
          goto LABEL_91;
        }

        v9 = (v7 + 160 * v5);
        if (*v9 == 1)
        {
          v10 = 1.0 - v4;
          if (v8[32])
          {
            v11 = 120;
          }

          else
          {
            v11 = 124;
          }

          *&v8[v11 + 16] = v10;
          if (v9[32])
          {
            v12 = 120;
          }

          else
          {
            v12 = 124;
          }

          *&v9[v12 + 16] = this[200];
        }
      }
    }

    v6 = (this + 160);
    v13 = *(this + 19);
    if (v13)
    {
      v14 = *(this + 21) + 16;
      do
      {
        if (*(v14 - 16) == 1)
        {
          if (*(v14 + 16))
          {
            v15 = 116;
          }

          else
          {
            v15 = 120;
          }

          *(v14 + v15) = 1065353216;
        }

        v14 += 160;
        --v13;
      }

      while (v13);
    }

    v57 = this + 160;
    v16 = *(this + 82);
    if (v16 >= 0x10)
    {
      v17 = 0;
      v18 = *v6;
      v19 = v16 >> 4;
      while (1)
      {
        v20 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v18), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v58 = v20 ^ 0xFFFFLL;
        if (v20 != 0xFFFFLL)
        {
          break;
        }

        v17 -= 16;
        ++v18;
        if (!--v19)
        {
          goto LABEL_53;
        }
      }

      v21 = __clz(__rbit64(v20 ^ 0xFFFFLL));
      v22 = v21 - v17;
      v59 = v21 - v17;
      if (v21 + 1 != v17)
      {
        v5 = 120;
        do
        {
          v23 = v57[1] + 16 * v22;
          v24 = *v23;
          v56 = *v23;
          v25 = *(v23 + 8) + a2;
          *(v23 + 8) = v25;
          v26 = *(v3 + 19);
          if (!v26)
          {
            goto LABEL_51;
          }

          v27 = 0;
          v28 = *(v3 + 21) + 16;
          while (*(v28 - 16) != 1 || *(v28 + 8) != v24)
          {
            ++v27;
            v28 += 160;
            if (v26 == v27)
            {
              goto LABEL_51;
            }
          }

          if (v26 <= v27)
          {
            v60 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v43 = MEMORY[0x1E69E9C10];
            v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v61 = 136315906;
            v62 = "operator[]";
            v63 = 1024;
            if (v44)
            {
              v45 = 3;
            }

            else
            {
              v45 = 2;
            }

            v64 = 789;
            v65 = 2048;
            v66 = v27;
            v67 = 2048;
            v68 = v26;
            _os_log_send_and_compose_impl(v45, &v60, &v69, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v56);
            _os_crash_msg();
            __break(1u);
LABEL_83:
            v60 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v46 = MEMORY[0x1E69E9C10];
            v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v61 = 136315906;
            v62 = "operator[]";
            v63 = 1024;
            if (v47)
            {
              v48 = 3;
            }

            else
            {
              v48 = 2;
            }

            v64 = 789;
            v65 = 2048;
            v66 = v27;
            v67 = 2048;
            v68 = v26;
            _os_log_send_and_compose_impl(v48, &v60, &v69, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v56);
            _os_crash_msg();
            __break(1u);
LABEL_87:
            v57 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v49 = MEMORY[0x1E69E9C10];
            v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v61 = 136315906;
            v62 = "operator[]";
            v63 = 1024;
            if (v50)
            {
              v51 = 3;
            }

            else
            {
              v51 = 2;
            }

            v64 = 789;
            v65 = 2048;
            v66 = v5;
            v67 = 2048;
            v68 = v6;
            _os_log_send_and_compose_impl(v51, &v57, &v69, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v56);
            _os_crash_msg();
            __break(1u);
LABEL_91:
            v57 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v52 = MEMORY[0x1E69E9C10];
            v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v61 = 136315906;
            v62 = "operator[]";
            v63 = 1024;
            if (v53)
            {
              v54 = 3;
            }

            else
            {
              v54 = 2;
            }

            v64 = 789;
            v65 = 2048;
            v66 = v5;
            v67 = 2048;
            v68 = v6;
            _os_log_send_and_compose_impl(v54, &v57, &v69, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v56);
            _os_crash_msg();
            __break(1u);
          }

          if (v25 > 1.0)
          {
            v25 = 1.0;
          }

          if (v25 < 0.0)
          {
            v25 = 0.0;
          }

          v29 = *(v28 + 16) ? 116 : 120;
          *(v28 + v29) = v25 * *(v28 + v29);
          if (*(v23 + 8) >= 1.0)
          {
LABEL_51:
            re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove((v3 + 160), &v56);
          }

          this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v57);
          v22 = v59;
        }

        while (v59 != -1);
      }
    }

LABEL_53:
    v6 = (v3 + 176);
    v57 = v3 + 176;
    v30 = *(v3 + 90);
    if (v30 >= 0x10)
    {
      v31 = 0;
      v32 = *v6;
      v33 = v30 >> 4;
      while (1)
      {
        v34 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v32), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v58 = v34 ^ 0xFFFFLL;
        if (v34 != 0xFFFFLL)
        {
          break;
        }

        v31 -= 16;
        ++v32;
        if (!--v33)
        {
          goto LABEL_77;
        }
      }

      v35 = __clz(__rbit64(v34 ^ 0xFFFFLL));
      v36 = v35 - v31;
      v59 = v35 - v31;
      if (v35 + 1 != v31)
      {
        v5 = 120;
        do
        {
          v37 = v57[1] + 16 * v36;
          v38 = *v37;
          v56 = *v37;
          v39 = *(v37 + 8) + a2;
          *(v37 + 8) = v39;
          v26 = *(v3 + 19);
          if (!v26)
          {
            goto LABEL_75;
          }

          v27 = 0;
          v40 = *(v3 + 21) + 16;
          while (*(v40 - 16) != 1 || *(v40 + 8) != v38)
          {
            ++v27;
            v40 += 160;
            if (v26 == v27)
            {
              goto LABEL_75;
            }
          }

          if (v26 <= v27)
          {
            goto LABEL_83;
          }

          v41 = 1.0 - v39;
          if (v41 > 1.0)
          {
            v41 = 1.0;
          }

          if (v41 < 0.0)
          {
            v41 = 0.0;
          }

          v42 = *(v40 + 16) ? 116 : 120;
          *(v40 + v42) = v41 * *(v40 + v42);
          if (*(v37 + 8) >= 1.0)
          {
LABEL_75:
            re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove((v3 + 176), &v56);
          }

          this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v57);
          v36 = v59;
        }

        while (v59 != -1);
      }
    }

LABEL_77:
    *(v3 + 184) = 1;
  }

  return this;
}

void re::ProbeManager::regenerateBuffer(re::ProbeManager *this)
{
  if (*(this + 184) == 1)
  {
    v34 = v1;
    v35 = v2;
    *(this + 184) = 0;
    *(this + 824) = 0;
    v4 = *(*(this + 1) + 208);
    memset(v30, 0, 48);
    memset(&v30[7], 0, 48);
    memset(&v30[14], 0, 48);
    memset(&v30[21], 0, 48);
    memset(v31, 0, 48);
    memset(&v31[7], 0, 48);
    memset(&v31[14], 0, 48);
    v5 = *(this + 19);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = (*(this + 21) + 140);
      do
      {
        if (*(v9 - 140) == 1 && *(v9 - 124) == 1 && (*(this + 768) != 1 || *(this + 776) != 1 || v6 != *(this + 198)))
        {
          v10 = (v9 - 92);
          if (*(v9 - 108) == 1)
          {
            v11 = &v31[7 * v7++];
            v12 = *v10;
            v13 = *(v9 - 60);
            v11[1] = *(v9 - 76);
            v11[2] = v13;
            *v11 = v12;
            v14 = *(v9 - 44);
            v15 = *(v9 - 28);
            v16 = *(v9 - 12);
            *(v11 + 92) = *v9;
            v11[4] = v15;
            v11[5] = v16;
            v11[3] = v14;
            v17 = *(v9 - 1);
          }

          else
          {
            v18 = &v30[7 * v8++];
            v19 = *v10;
            v20 = *(v9 - 60);
            v18[1] = *(v9 - 76);
            v18[2] = v20;
            *v18 = v19;
            v21 = *(v9 - 44);
            v22 = *(v9 - 28);
            v23 = *(v9 + 4);
            v18[5] = *(v9 - 12);
            v18[6] = v23;
            v18[3] = v21;
            v18[4] = v22;
            v17 = *v9;
          }

          if (v17 != 1.0)
          {
            *(this + 824) = 1;
          }
        }

        ++v6;
        v9 += 10;
      }

      while (v5 != v6);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *(this + 24) = v8;
    *(this + 25) = v7;
    v27[0] = v8;
    v27[1] = v7;
    v28 = *(this + 809);
    v24 = 1.0;
    if (*(this + 810))
    {
      v24 = *(this + 203);
    }

    v29 = v24;
    v32 = *(this + 828);
    v25 = *(this + 54);
    v31[21] = *(this + 53);
    v31[22] = v25;
    v31[23] = *(this + 55);
    v33 = *(this + 896);
    v26 = [v4 newBufferWithBytes:v27 length:864 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(this + 16, &v26);
    if (v26)
    {
    }
  }
}

uint64_t re::ProbeManager::freeSlice(uint64_t this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 152);
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

  v4 = (*(this + 168) + 160 * a2);
  if (v4[32] == 1)
  {
    --*(this + 176);
  }

  else
  {
    --*(this + 180);
  }

  if (*v4 == 1)
  {
    *v4 = 0;
  }

  *(this + 184) = 1;
  return this;
}

void re::ProbeManager::assignSliceToProbe(uint64_t a1, void *a2, uint64_t a3, id *a4, _OWORD *__src, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = __src[5];
  v36 = __src[4];
  v37 = v7;
  v8 = __src[7];
  v38 = __src[6];
  v39 = v8;
  v9 = __src[1];
  *v32 = *__src;
  v33 = v9;
  v10 = __src[3];
  v34 = __src[2];
  v35 = v10;
  v11 = *(a1 + 152);
  if (v11 <= a2)
  {
    v31 = 0;
    memset(v48, 0, 80);
    v28 = MEMORY[0x1E69E9C10];
    v40 = 136315906;
    v41 = "operator[]";
    v42 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v43 = 789;
    v44 = 2048;
    v45 = a2;
    v46 = 2048;
    v47 = v11;
    _os_log_send_and_compose_impl(v29, &v31, v48, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v30);
    _os_crash_msg();
    __break(1u);
  }

  v17 = *(a1 + 168) + 160 * a2;
  if (*v17)
  {
    memmove((v17 + 32), __src, 0x80uLL);
  }

  else
  {
    *v17 = 1;
    *(v17 + 96) = v36;
    *(v17 + 112) = v37;
    *(v17 + 128) = v38;
    *(v17 + 144) = v39;
    *(v17 + 32) = *v32;
    *(v17 + 48) = v33;
    *(v17 + 64) = v34;
    *(v17 + 80) = v35;
  }

  *(v17 + 16) = 0;
  *(v17 + 24) = a3;
  if (*__src == 1)
  {
    ++*(a1 + 176);
  }

  else
  {
    ++*(a1 + 180);
  }

  v32[0] = *a4;
  v32[1] = a2;
  v18 = std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](&v33, a6);
  *&v35 = a3;
  BYTE8(v35) = *__src;
  v19 = *(a1 + 200);
  v20 = *(a1 + 208);
  if (v20 >= v19)
  {
    v21 = v20 + 1;
    if (v19 < v20 + 1)
    {
      if (*(a1 + 192))
      {
        v22 = 2 * v19;
        v23 = v19 == 0;
        v24 = 8;
        if (!v23)
        {
          v24 = v22;
        }

        if (v24 <= v21)
        {
          v25 = v21;
        }

        else
        {
          v25 = v24;
        }

        re::DynamicArray<re::ProbeManager::SliceOperation>::setCapacity((a1 + 192), v25);
      }

      else
      {
        re::DynamicArray<re::ProbeManager::SliceOperation>::setCapacity((a1 + 192), v21);
        ++*(a1 + 216);
      }
    }

    v20 = *(a1 + 208);
  }

  v26 = *(a1 + 224) + (v20 << 6);
  *v26 = v32[0];
  *(v26 + 8) = v32[1];
  std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](v26 + 16, &v33);
  v27 = v35;
  *(v26 + 56) = BYTE8(v35);
  *(v26 + 48) = v27;
  ++*(a1 + 208);
  ++*(a1 + 216);
  std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](&v33);
  if (v32[0])
  {
  }
}

double re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 ? -1 : 0x80;
    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 16 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v4 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v4;
    if (v9 >= 0x11 && v4.i64[0] < v9 >> 2)
    {

      *v4.i64 = re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(a1, 0);
    }
  }

  return *v4.i64;
}

uint64_t re::Optional<re::ProbeManager::SliceOperation>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      NS::SharedPtr<MTL::Texture>::operator=((a1 + 8), (a2 + 8));
      *(a1 + 16) = *(a2 + 16);
      std::__function::__value_func<void ()(re::ProbeManager &,long long)>::operator=[abi:nn200100](a1 + 24, a2 + 24);
LABEL_6:
      v5 = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 56) = v5;
      return a1;
    }

    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](a1 + 24);
    v6 = *(a1 + 8);
    if (v6)
    {

      *(a1 + 8) = 0;
    }

    *a1 = 0;
  }

  else if (*a2)
  {
    *a1 = 1;
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 16) = v4;
    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](a1 + 24, a2 + 24);
    goto LABEL_6;
  }

  return a1;
}

uint64_t re::Optional<re::ProbeManager::SliceOperation>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](a1 + 24);
    v2 = *(a1 + 8);
    if (v2)
    {

      *(a1 + 8) = 0;
    }
  }

  return a1;
}

uint64_t re::Optional<re::ProbeLatLongComputeWorkload>::operator=(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      *a1 = 1;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v8 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v8;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      v9 = *(a1 + 40);
      *(a1 + 40) = *(a2 + 40);
      *(a2 + 40) = v9;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v10 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v10;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      v11 = *(a1 + 64);
      *(a1 + 64) = *(a2 + 64);
      *(a2 + 64) = v11;
    }

    return a1;
  }

  if ((*a2 & 1) == 0)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 48));
    re::FixedArray<CoreIKTransform>::deinit((a1 + 24));
    *a1 = 0;
    return a1;
  }

  *(a1 + 8) = *(a2 + 8);
  if (a1 == a2)
  {
LABEL_7:
    re::FixedArray<float>::operator=((a1 + 48), (a2 + 48));
    return a1;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (!v3 || v3 == v4)
  {
    *(a1 + 24) = v4;
    *(a2 + 24) = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v7;
    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
    goto LABEL_7;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
  result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
  __break(1u);
  return result;
}

void re::ProbeManager::generateWorkload(re::ProbeManager *this@<X0>, uint64_t a2@<X8>)
{
  v150 = *MEMORY[0x1E69E9840];
  v6 = (this + 420);
  if (!*(this + 26))
  {
    goto LABEL_61;
  }

  v7 = this + 232;
  if (*(this + 232))
  {
    goto LABEL_61;
  }

  v8 = *(this + 28);
  v131[0] = 1;
  *&v131[8] = *v8;
  *&v131[16] = *(v8 + 8);
  std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](&v131[24], v8 + 16);
  v9 = *(v8 + 48);
  v131[64] = *(v8 + 56);
  *&v131[56] = v9;
  re::Optional<re::ProbeManager::SliceOperation>::operator=(this + 232, v131);
  re::Optional<re::ProbeManager::SliceOperation>::~Optional(v131);
  v10 = *(this + 26);
  if (v10 != 1)
  {
    if (!v10)
    {
LABEL_170:
      *v127 = 0;
      memset(v131, 0, 80);
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v124 = 136315906;
      *&v124[4] = "removeAt";
      *&v124[12] = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      *&v124[14] = 931;
      *&v124[18] = 2048;
      *&v124[20] = 0;
      *&v124[28] = 2048;
      *&v124[30] = 0;
      _os_log_send_and_compose_impl(v82, v127, v131, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v119, v120);
      _os_crash_msg();
      __break(1u);
LABEL_174:
      v123 = 0;
      memset(v131, 0, 80);
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v127 = 136315906;
      *&v127[4] = "operator[]";
      *&v127[12] = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      *&v127[14] = 468;
      *&v127[18] = 2048;
      *&v127[20] = 0;
      *&v127[28] = 2048;
      *&v127[30] = 0;
      _os_log_send_and_compose_impl(v85, &v123, v131, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
      _os_crash_msg();
      __break(1u);
      goto LABEL_178;
    }

    v7 = *(this + 28);
    v11 = &v7[64 * v10];
    NS::SharedPtr<MTL::Texture>::operator=(v7, v11 - 8);
    *(v7 + 1) = *(v11 - 7);
    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::operator=[abi:nn200100]((v7 + 16), (v11 - 48));
    v12 = *(v11 - 2);
    v7[56] = *(v11 - 8);
    *(v7 + 6) = v12;
    v10 = *(this + 26);
  }

  v13 = *(this + 28) + (v10 << 6);
  std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v13 - 48);
  v14 = *(v13 - 64);
  if (v14)
  {

    *(v13 - 64) = 0;
  }

  --*(this + 26);
  ++*(this + 54);
  v15 = *(this + 31);
  if (*(this + 808) == 1)
  {
    if ((*(this + 304) & 1) == 0)
    {
      *(this + 304) = 1;
    }

    v120 = v15;
    v121 = v6;
    *(this + 39) = 0x6000000000000;
    *(this + 80) = 256;
    *(this + 41) = 0x4180000000000000;
    if ((*(this + 336) & 1) == 0)
    {
      *(this + 336) = 1;
    }

    v16 = 0;
    *(this + 85) = 393216;
    v17 = 256;
    v18 = xmmword_1E30A4080;
    v19 = xmmword_1E30A4090;
    do
    {
      if (v17 < 0x80)
      {
        *v131 = 0x600000000;
        memset(&v131[8], 0, 24);
        *&v131[32] = v17;
        *&v131[40] = v17;
        *&v131[48] = 1;
        *&v131[56] = v16;
        *&v131[60] = 9;
        *&v131[64] = v17;
        re::DynamicArray<re::ProbeSpecularWorkload>::add(this + 344, v131);
        v19 = xmmword_1E30A4090;
        v18 = xmmword_1E30A4080;
      }

      else
      {
        v20 = 0;
        v122 = (v17 + 127) >> 7;
        do
        {
          v21 = 0;
          do
          {
            v22 = 0;
            do
            {
              *v131 = v20;
              *&v131[4] = 1;
              *&v131[8] = v21 << 7;
              *&v131[16] = v22;
              *&v131[24] = v18;
              *&v131[40] = v19;
              *&v131[56] = v16;
              *&v131[60] = 9;
              *&v131[64] = v17;
              re::DynamicArray<re::ProbeSpecularWorkload>::add(this + 344, v131);
              v19 = xmmword_1E30A4090;
              v18 = xmmword_1E30A4080;
              v22 += 128;
            }

            while (v122 << 7 != v22);
            ++v21;
          }

          while (v21 != v122);
          ++v20;
        }

        while (v20 != 6);
      }

      v17 >>= 1;
      ++v16;
    }

    while (v16 != 9);
    if (*(this + 296) == 1)
    {
      v6 = v121;
      v23 = v120;
      if ((*(this + 384) & 1) == 0)
      {
        *(this + 384) = 1;
      }

      *(this + 404) = 0;
      *(this + 396) = 0;
      *(this + 412) = 0;
      *(this + 388) = 0x600000000;
      *v121 = vdupq_n_s64(8uLL);
      v121[1].i64[0] = 1;
      v24 = (this + 448);
      *v131 = v120;
      *&v131[4] = 0x100000008;
      re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((this + 448), v131);
    }

    else
    {
      v24 = (this + 448);
      v6 = v121;
      v23 = v120;
    }

    *v131 = v23;
    *&v131[4] = 256;
    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(v24, v131);
    goto LABEL_61;
  }

  v125 = 0u;
  memset(&v124[16], 0, 32);
  *v124 = v15;
  *&v124[8] = 0x5555400000000;
  if (!*&v124[24])
  {
    goto LABEL_174;
  }

  **&v124[32] = 0x20000000200;
  v7 = *&v124[24];
  if (*&v124[24] <= 1uLL)
  {
LABEL_178:
    v123 = 0;
    memset(v131, 0, 80);
    v86 = MEMORY[0x1E69E9C10];
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 1;
    *&v127[28] = 2048;
    *&v127[30] = v7;
    _os_log_send_and_compose_impl(v88, &v123, v131, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_182;
  }

  *(*&v124[32] + 8) = 0x10000000100;
  v7 = *&v124[24];
  if (*&v124[24] <= 2uLL)
  {
LABEL_182:
    v123 = 0;
    memset(v131, 0, 80);
    v89 = MEMORY[0x1E69E9C10];
    v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v90)
    {
      v91 = 3;
    }

    else
    {
      v91 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 2;
    *&v127[28] = 2048;
    *&v127[30] = v7;
    _os_log_send_and_compose_impl(v91, &v123, v131, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_186;
  }

  *(*&v124[32] + 16) = 0x8000000080;
  v7 = *&v124[24];
  if (*&v124[24] <= 3uLL)
  {
LABEL_186:
    v123 = 0;
    memset(v131, 0, 80);
    v92 = MEMORY[0x1E69E9C10];
    v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v93)
    {
      v94 = 3;
    }

    else
    {
      v94 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 3;
    *&v127[28] = 2048;
    *&v127[30] = v7;
    _os_log_send_and_compose_impl(v94, &v123, v131, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_190;
  }

  *(*&v124[32] + 24) = 0x4000000040;
  v7 = *&v124[24];
  if (*&v124[24] <= 4uLL)
  {
LABEL_190:
    v123 = 0;
    memset(v131, 0, 80);
    v95 = MEMORY[0x1E69E9C10];
    v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v96)
    {
      v97 = 3;
    }

    else
    {
      v97 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 4;
    *&v127[28] = 2048;
    *&v127[30] = v7;
    _os_log_send_and_compose_impl(v97, &v123, v131, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_194;
  }

  *(*&v124[32] + 32) = 0x2000000020;
  if (v7 == 5)
  {
LABEL_194:
    v123 = 0;
    memset(v131, 0, 80);
    v98 = MEMORY[0x1E69E9C10];
    v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v99)
    {
      v100 = 3;
    }

    else
    {
      v100 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 5;
    *&v127[28] = 2048;
    *&v127[30] = 5;
    _os_log_send_and_compose_impl(v100, &v123, v131, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_198;
  }

  v26 = *&v124[32];
  *(*&v124[32] + 40) = 0x1000000010;
  if (v7 <= 6)
  {
LABEL_198:
    v123 = 0;
    memset(v131, 0, 80);
    v101 = MEMORY[0x1E69E9C10];
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 6;
    *&v127[28] = 2048;
    *&v127[30] = 6;
    _os_log_send_and_compose_impl(v103, &v123, v131, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_202;
  }

  v26[6] = 0x800000008;
  if (v7 == 7)
  {
LABEL_202:
    v123 = 0;
    memset(v131, 0, 80);
    v104 = MEMORY[0x1E69E9C10];
    v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v105)
    {
      v106 = 3;
    }

    else
    {
      v106 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 7;
    *&v127[28] = 2048;
    *&v127[30] = 7;
    _os_log_send_and_compose_impl(v106, &v123, v131, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_206;
  }

  v26[7] = 0x400000004;
  if (v7 <= 8)
  {
LABEL_206:
    v123 = 0;
    memset(v131, 0, 80);
    v107 = MEMORY[0x1E69E9C10];
    v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v108)
    {
      v109 = 3;
    }

    else
    {
      v109 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 8;
    *&v127[28] = 2048;
    *&v127[30] = 8;
    _os_log_send_and_compose_impl(v109, &v123, v131, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_210;
  }

  v26[8] = 0x200000002;
  if (v7 == 9)
  {
LABEL_210:
    v123 = 0;
    memset(v131, 0, 80);
    v110 = MEMORY[0x1E69E9C10];
    v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v111)
    {
      v112 = 3;
    }

    else
    {
      v112 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 9;
    *&v127[28] = 2048;
    *&v127[30] = 9;
    _os_log_send_and_compose_impl(v112, &v123, v131, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_214;
  }

  v26[9] = 0x100000001;
  v7 = v124;
  v2 = v125;
  if (!v125)
  {
LABEL_214:
    v123 = 0;
    memset(v131, 0, 80);
    v113 = MEMORY[0x1E69E9C10];
    v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    *&v127[12] = 1024;
    if (v114)
    {
      v115 = 3;
    }

    else
    {
      v115 = 2;
    }

    *&v127[14] = 468;
    *&v127[18] = 2048;
    *&v127[20] = 0;
    *&v127[28] = 2048;
    *&v127[30] = 0;
    _os_log_send_and_compose_impl(v115, &v123, v131, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
    goto LABEL_218;
  }

  v27 = 0;
  v28 = 0;
  v29 = *(&v125 + 1);
  v30 = *(&v125 + 1);
  **(&v125 + 1) = 0;
  v31 = v30 + 4;
  v3 = *&v124[24];
  v32 = *&v124[32];
  do
  {
    if (v3 == v27)
    {
      v123 = 0;
      memset(v131, 0, 80);
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v127 = 136315906;
      *&v127[4] = "operator[]";
      *&v127[12] = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      *&v127[14] = 468;
      *&v127[18] = 2048;
      *&v127[20] = v27;
      *&v127[28] = 2048;
      *&v127[30] = v3;
      _os_log_send_and_compose_impl(v76, &v123, v131, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
      _os_crash_msg();
      __break(1u);
LABEL_166:
      v123 = 0;
      memset(v131, 0, 80);
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v127 = 136315906;
      *&v127[4] = "operator[]";
      *&v127[12] = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      *&v127[14] = 468;
      *&v127[18] = 2048;
      *&v127[20] = v2;
      *&v127[28] = 2048;
      *&v127[30] = v2;
      _os_log_send_and_compose_impl(v79, &v123, v131, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v119, v120);
      _os_crash_msg();
      __break(1u);
      goto LABEL_170;
    }

    if (v2 - 1 == v27)
    {
      goto LABEL_166;
    }

    v28 += vmul_lane_s32(*(v32 + 8 * v27), *(v32 + 8 * v27), 1).u32[0];
    *(v31 + 4 * v27++) = v28;
  }

  while (v27 != 9);
  v131[0] = 1;
  *&v131[8] = *v124;
  *&v131[24] = *&v124[16];
  *&v131[32] = v3;
  *&v131[40] = v32;
  *&v131[48] = *&v124[40];
  memset(&v124[16], 0, 32);
  v125 = 0u;
  *&v131[56] = v2;
  *&v131[64] = v29;
  re::Optional<re::ProbeLatLongComputeWorkload>::operator=(this + 488, v131);
  if (v131[0] == 1)
  {
    if (*&v131[48])
    {
      if (*&v131[56])
      {
        (*(**&v131[48] + 40))();
        *&v131[56] = 0;
        *&v131[64] = 0;
      }

      *&v131[48] = 0;
    }

    if (*&v131[24])
    {
      if (*&v131[32])
      {
        (*(**&v131[24] + 40))();
        *&v131[32] = 0;
        *&v131[40] = 0;
      }

      *&v131[24] = 0;
    }
  }

  if (*&v124[40])
  {
    if (v125)
    {
      (*(**&v124[40] + 40))();
      v125 = 0uLL;
    }

    *&v124[40] = 0;
  }

  if (*&v124[16] && *&v124[24])
  {
    (*(**&v124[16] + 40))();
  }

LABEL_61:
  if (*(this + 232) != 1)
  {
    goto LABEL_161;
  }

  if ((*(this + 304) & 1) == 0 && (*(this + 336) & 1) == 0 && (*(this + 384) & 1) == 0 && !*(this + 45) && !*(this + 58) && (*(this + 488) & 1) == 0)
  {
    v2 = *(this + 31);
    v3 = *(this + 19);
    if (v3 > v2)
    {
      *(*(this + 21) + 160 * v2 + 16) = 1;
      std::function<void ()(re::ProbeManager &,long long)>::operator()(*(this + 35), this, *(this + 36));
      *(this + 184) = 1;
      v131[0] = 0;
      re::Optional<re::ProbeManager::SliceOperation>::operator=(this + 232, v131);
      re::Optional<re::ProbeManager::SliceOperation>::~Optional(v131);
LABEL_161:
      *a2 = 0;
      return;
    }

LABEL_218:
    *v127 = 0;
    memset(v131, 0, 80);
    v116 = MEMORY[0x1E69E9C10];
    v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v117)
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    *&v124[14] = 789;
    *&v124[18] = 2048;
    *&v124[20] = v2;
    *&v124[28] = 2048;
    *&v124[30] = v3;
    _os_log_send_and_compose_impl(v118, v127, v131, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v119, v120);
    _os_crash_msg();
    __break(1u);
  }

  *v131 = &unk_1F5D051D0;
  v131[8] = 0;
  v131[40] = 0;
  v131[48] = 0;
  v134 = 0uLL;
  v133 = 0;
  v139 = 0;
  v140[0] = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v138 = 0;
  v147 = 0u;
  v149 = 0u;
  v148 = 0u;
  NS::SharedPtr<MTL::Buffer>::operator=(&v147, this + 10);
  NS::SharedPtr<MTL::Buffer>::operator=(&v147 + 1, this + 11);
  NS::SharedPtr<MTL::Buffer>::operator=(&v148, this + 13);
  NS::SharedPtr<MTL::Buffer>::operator=(&v148 + 1, this + 14);
  NS::SharedPtr<MTL::Buffer>::operator=(&v149, this + 15);
  NS::SharedPtr<MTL::Buffer>::operator=(&v149 + 1, this + 30);
  if (*(this + 808) == 1)
  {
    if (*(this + 296))
    {
      v33 = 300714;
    }

    else
    {
      v33 = 299589;
    }

    if (*(this + 304) != 1)
    {
      v36 = 0;
      v37 = 0;
      goto LABEL_110;
    }

    v34 = *(this + 78);
    v35 = *(this + 79);
    if (v33 >= v35)
    {
      v36 = *(this + 79);
    }

    else
    {
      v36 = v33;
    }

    if ((v131[8] & 1) == 0)
    {
      v131[8] = 1;
    }

    *&v131[24] = *(this + 20);
    *&v131[16] = v34;
    *&v131[20] = v36;
    *(this + 79) = v35 - v36;
    v37 = v35 > v36;
    if (v35 <= v36)
    {
      *(this + 304) = 0;
    }

    else
    {
      *(this + 78) = v36 + v34;
    }

    if (v35 < v33)
    {
LABEL_110:
      v43 = *(this + 336);
      v44 = v131[40];
      do
      {
        if ((!v37 & v43) != 1)
        {
          break;
        }

        v45 = *(this + 85);
        *(this + 336) = 0;
        if ((v44 & 1) == 0)
        {
          v131[40] = 1;
        }

        v43 = 0;
        *&v131[44] = v45;
        v36 += 2 * v45;
        v44 = 1;
      }

      while (v36 < v33);
    }

    if (v36 < v33)
    {
      if (v37)
      {
        v46 = (this + 360);
        goto LABEL_138;
      }

      v47 = v131[48];
      v48 = *(this + 336) ^ 1;
      v49 = *(this + 384);
      do
      {
        if ((v48 & v49 & 1) == 0)
        {
          break;
        }

        v50 = *(this + 97);
        v51 = *(this + 98);
        v52 = v6->i64[0];
        v53 = *(v6 + 8);
        *(this + 384) = 0;
        if ((v47 & 1) == 0)
        {
          v131[48] = 1;
        }

        v49 = 0;
        *&v131[76] = *(this + 412);
        *&v131[52] = v50;
        *&v131[56] = v51;
        *&v131[60] = *(this + 396);
        *v132 = v52;
        *&v132[8] = v53;
        v36 += 40 * v51 * v52 * v53;
        v47 = 1;
      }

      while (v36 < v33);
      v46 = (this + 360);
      do
      {
LABEL_126:
        if (*(this + 336))
        {
          break;
        }

        if (*(this + 384))
        {
          break;
        }

        v54 = *(this + 45);
        if (!v54)
        {
          break;
        }

        v55 = *(this + 47);
        if (v36)
        {
          v56 = v55 + 68 * v54;
          v57 = *(v56 - 64);
          v58 = *(v56 - 36);
          v59 = *(v56 - 12) ? 20 * v58 * v57 * *(v56 - 28) : v58 * v57 * *(v56 - 28);
          if (v59 + v36 >= v33)
          {
            break;
          }
        }

        v60 = v55 + 68 * v54;
        *&v124[16] = *(v60 - 52);
        *&v124[32] = *(v60 - 36);
        v125 = *(v60 - 20);
        LODWORD(v126) = *(v60 - 4);
        *v124 = *(v60 - 68);
        *(this + 45) = v54 - 1;
        ++*(this + 92);
        re::DynamicArray<re::ProbeSpecularWorkload>::add(&v133, v124);
        v61 = DWORD2(v125) ? 20 * *&v124[32] * *&v124[4] * *&v124[40] : *&v124[32] * *&v124[4] * *&v124[40];
        v36 += v61;
      }

      while (*(this + 304) != 1);
      goto LABEL_138;
    }

    v46 = (this + 360);
    if (!v37)
    {
      goto LABEL_126;
    }

LABEL_138:
    if ((v131[8] & 1) == 0 && (v131[40] & 1) == 0 && (v131[48] & 1) == 0 && !*(&v134 + 1) && v36 < v33)
    {
      do
      {
        if (*(this + 304))
        {
          break;
        }

        if (*(this + 336))
        {
          break;
        }

        if (*(this + 384))
        {
          break;
        }

        if (*v46)
        {
          break;
        }

        v72 = *(this + 58);
        if (!v72)
        {
          break;
        }

        v73 = *(this + 60) + 12 * v72;
        *v124 = *(v73 - 12);
        *&v124[8] = *(v73 - 4);
        *(this + 58) = v72 - 1;
        ++*(this + 118);
        re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((&v136 + 8), v124);
        v36 += 24 * *&v124[4] * *&v124[4] / 3u;
      }

      while (v36 < v33);
    }
  }

  else
  {
    *v127 = *(this + 31);
    _ZN2re10FixedArrayIDv2_jEC2ERKS2_(&v127[16], this + 64);
    re::FixedArray<unsigned int>::FixedArray(&v128, this + 67);
    v38 = *&v127[12];
    if (*&v127[12] >= 29127)
    {
      v38 = 29127;
    }

    *&v127[12] = v38;
    v124[0] = 1;
    *&v124[8] = *v127;
    _ZN2re10FixedArrayIDv2_jEC2ERKS2_(&v124[24], &v127[16]);
    re::FixedArray<unsigned int>::FixedArray(&v125, &v128);
    re::Optional<re::ProbeLatLongComputeWorkload>::operator=(v140, v124);
    if (v124[0] == 1)
    {
      if (v125)
      {
        if (*(&v125 + 1))
        {
          (*(*v125 + 40))();
          *(&v125 + 1) = 0;
          v126 = 0;
        }

        *&v125 = 0;
      }

      if (*&v124[24] && *&v124[32])
      {
        (*(**&v124[24] + 40))();
      }
    }

    v39 = *&v127[12];
    v40 = *(this + 127);
    v41 = __OFSUB__(v40, *&v127[12]);
    v42 = v40 - *&v127[12];
    *(this + 127) = v42;
    if ((v42 < 0) ^ v41 | (v42 == 0))
    {
      v124[0] = 0;
      re::Optional<re::ProbeLatLongComputeWorkload>::operator=(this + 488, v124);
      if (v124[0] == 1)
      {
        if (v125)
        {
          if (*(&v125 + 1))
          {
            (*(*v125 + 40))();
            *(&v125 + 1) = 0;
            v126 = 0;
          }

          *&v125 = 0;
        }

        if (*&v124[24] && *&v124[32])
        {
          (*(**&v124[24] + 40))();
        }
      }
    }

    else
    {
      *(this + 126) += v39;
    }

    if (v128)
    {
      if (v129)
      {
        (*(*v128 + 40))();
        v129 = 0;
        v130 = 0;
      }

      v128 = 0;
    }

    if (*&v127[16] && *&v127[24])
    {
      (*(**&v127[16] + 40))();
    }
  }

  *a2 = 1;
  *(a2 + 8) = &unk_1F5D051D0;
  v62 = v131[8];
  *(a2 + 16) = v131[8];
  if (v62 == 1)
  {
    *(a2 + 24) = *&v131[16];
    *(a2 + 40) = *&v131[32];
  }

  v63 = v131[40];
  *(a2 + 48) = v131[40];
  if (v63 == 1)
  {
    *(a2 + 52) = *&v131[44];
  }

  v64 = v131[48];
  *(a2 + 56) = v131[48];
  if (v64 == 1)
  {
    *(a2 + 60) = *&v131[52];
    *(a2 + 76) = *&v131[68];
    *(a2 + 92) = *v132;
    *(a2 + 108) = *&v132[16];
  }

  *(a2 + 120) = v133;
  v133 = 0;
  *(a2 + 128) = v134;
  v65 = v137;
  *(a2 + 152) = v136;
  v134 = 0u;
  v66 = v138;
  v67 = v135 + 1;
  *(a2 + 192) = v139;
  *(a2 + 144) = 1;
  *(a2 + 168) = v65;
  v136 = 0u;
  v137 = 0u;
  v139 = 0;
  v135 = v67;
  v138 = v66 + 1;
  *(a2 + 184) = 1;
  v68 = v140[0];
  *(a2 + 200) = v140[0];
  if (v68 == 1)
  {
    *(a2 + 208) = v141;
    v69 = v143;
    *(a2 + 224) = v142;
    *(a2 + 232) = v69;
    v142 = 0;
    v143 = 0;
    *(a2 + 240) = v144;
    v144 = 0uLL;
    v70 = v146;
    *(a2 + 256) = v145;
    *(a2 + 264) = v70;
    v145 = 0;
    v146 = 0;
  }

  v71 = v148;
  *(a2 + 272) = v147;
  *(a2 + 288) = v71;
  v147 = 0uLL;
  v148 = 0uLL;
  *(a2 + 304) = v149;
  v149 = 0uLL;
  re::ProbeWriteContext::~ProbeWriteContext(v131);
}

double std::function<void ()(re::ProbeManager &,long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, a2, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    *&result = re::DynamicArray<re::ProbeSpecularWorkload>::add(v4, v5).n128_u64[0];
  }

  return result;
}

__n128 re::DynamicArray<re::ProbeSpecularWorkload>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 68 * v5;
  *v11 = *a2;
  result = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  *(v11 + 64) = *(a2 + 64);
  *(v11 + 32) = v13;
  *(v11 + 48) = v14;
  *(v11 + 16) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void _ZN2re10FixedArrayIDv2_jE4initIJEEEvPNS_9AllocatorEmDpOT_(uint64_t *a1, uint64_t a2, unint64_t a3)
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

void re::ProbeWriteContext::~ProbeWriteContext(re::ProbeWriteContext *this)
{
  re::ProbeWriteContext::~ProbeWriteContext(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D051D0;
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

  v5 = *(this + 35);
  if (v5)
  {

    *(this + 35) = 0;
  }

  v6 = *(this + 34);
  if (v6)
  {

    *(this + 34) = 0;
  }

  v7 = *(this + 33);
  if (v7)
  {

    *(this + 33) = 0;
  }

  if (*(this + 192) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit(this + 30);
    re::FixedArray<CoreIKTransform>::deinit(this + 27);
  }

  re::DynamicArray<unsigned long>::deinit(this + 152);
  re::DynamicArray<unsigned long>::deinit(this + 112);
}

uint64_t *_ZN2re10FixedArrayIDv2_jEC2ERKS2_(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    _ZN2re10FixedArrayIDv2_jE4initIJEEEvPNS_9AllocatorEmDpOT_(a1, v4, a2[1]);
    re::FixedArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x44uLL))
        {
          v2 = 68 * a2;
          result = (*(*result + 32))(result, 68 * a2, 4);
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
            memcpy(v7, v5[4], 68 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 68, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
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
        v10 = v7 + 2;
        v11 = 160 * v9;
        v12 = (v8 + 16);
        do
        {
          v13 = *(v12 - 16);
          *(v10 - 16) = v13;
          if (v13 == 1)
          {
            *v10 = *v12;
            v14 = v12[1];
            v15 = v12[2];
            v16 = v12[4];
            v10[3] = v12[3];
            v10[4] = v16;
            v10[1] = v14;
            v10[2] = v15;
            v17 = v12[5];
            v18 = v12[6];
            v19 = v12[8];
            v10[7] = v12[7];
            v10[8] = v19;
            v10[5] = v17;
            v10[6] = v18;
          }

          v10 += 10;
          v12 += 10;
          v11 -= 160;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

int64x2_t re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(a1, 1);
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
  v16 = (a1[1] + 16 * (v13 + 16 * v11));
  v17 = *a2;
  *v16 = *a2;
  v16[1] = *a3;
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
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
  a1[5] ^= (v21 >> 31) ^ v21;
  return result;
}

double re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::doResize(a1, v3);
}

double re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::doResize(uint64_t a1, uint64_t a2)
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
        re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
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
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

_anonymous_namespace_ *re::DynamicArray<re::ProbeManager::ProbeAdd>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ProbeManager::ProbeAdd>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ProbeManager::ProbeAdd>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ProbeManager::ProbeAdd>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ProbeManager::ProbeAdd>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
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
        v10 = 80 * v9;
        v11 = v8 + 8;
        v12 = v7;
        do
        {
          v13 = *v11;
          *v12 = *(v11 - 8);
          v12[1] = v13;
          *v11 = 0;
          v14 = *(v11 + 8);
          v15 = *(v11 + 24);
          v16 = *(v11 + 40);
          *(v12 + 61) = *(v11 + 53);
          *(v12 + 2) = v15;
          *(v12 + 3) = v16;
          *(v12 + 1) = v14;
          if (*v11)
          {

            *v11 = 0;
          }

          v12 += 10;
          v11 += 80;
          v10 -= 80;
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

void *re::DynamicArray<re::ProbeManager::ProbeUpdate>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ProbeManager::ProbeUpdate>::setCapacity(v5, a2);
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
              goto LABEL_18;
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
        v10 = 24 * v9;
        v11 = v8 + 8;
        v12 = v7;
        do
        {
          v13 = *v11;
          *v12 = *(v11 - 8);
          v12[1] = v13;
          *v11 = 0;
          v14 = *(v11 + 8);
          *(v12 + 20) = *(v11 + 12);
          *(v12 + 4) = v14;
          if (*v11)
          {

            *v11 = 0;
          }

          v12 += 3;
          v11 += 24;
          v10 -= 24;
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

int64x2_t re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(uint64_t *a1, unint64_t *a2, _DWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(a1, 1u);
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
  v16 = a1[1] + 16 * (v13 + 16 * v11);
  v17 = *a2;
  *v16 = *a2;
  *(v16 + 8) = *a3;
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
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
  a1[5] ^= (v21 >> 31) ^ v21;
  return result;
}

double re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v26, 0, sizeof(v26));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v26, v9, v4);
  v24[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v24[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v25 = v15 - v11;
    if (v15 + 1 != v11)
    {
      do
      {
        re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(v26, (*(v24[0] + 8) + 16 * v16), (*(v24[0] + 8) + 16 * v16 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v24);
        v16 = v25;
      }

      while (v25 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_13:
  v17 = *(&v26[3] + 1);
  *(&v26[3] + 1) = *(a1 + 56);
  v18 = v26[0];
  v19 = v26[1];
  v26[0] = *a1;
  *&v26[1] = v10;
  v20 = v26[2];
  v21 = *(a1 + 40);
  *(a1 + 48) = *&v26[3];
  *(a1 + 56) = v17;
  *(&v26[2] + 8) = v21;
  v22 = *(a1 + 24);
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(&v26[1] + 8) = v22;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v26);
}

__n128 std::__function::__func<void (re::ProbeManager::*)(long long),std::allocator<void (re::ProbeManager::*)(long long)>,void ()(re::ProbeManager&,long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D05210;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void (re::ProbeManager::*)(long long),std::allocator<void (re::ProbeManager::*)(long long)>,void ()(re::ProbeManager&,long long)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, *a3);
}

uint64_t std::__function::__func<void (re::ProbeManager::*)(long long),std::allocator<void (re::ProbeManager::*)(long long)>,void ()(re::ProbeManager&,long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::ProbeManager &,long long)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *re::DynamicArray<re::ProbeManager::SliceOperation>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ProbeManager::SliceOperation>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = (v7 + 2);
        v11 = v9 << 6;
        do
        {
          v12 = *(v8 + 8);
          *(v10 - 16) = *v8;
          *v8 = 0;
          *(v10 - 8) = v12;
          std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](v10, v8 + 16);
          v13 = *(v8 + 48);
          *(v10 + 40) = *(v8 + 56);
          *(v10 + 32) = v13;
          std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v8 + 16);
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 64;
          v10 += 64;
          v11 -= 64;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void ___ZN2re18PortalUserDefaults18maximumPortalCountEv_block_invoke(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::intValue(&v4, "maximumPortalCount", a2);
  if (v4 == 1 && (v4 & 0x8000000000000000) == 0)
  {
    re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount = HIDWORD(v4);
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "The maximum portal count is now %u.", buf, 8u);
  }
}

float ___ZN2re18PortalUserDefaults27portalLightingBlendDistanceEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue(&v3, "portalLightingBlendDistance", a2);
  if (v3 == 1)
  {
    result = *(&v3 + 1);
    re::PortalUserDefaults::portalLightingBlendDistance(void)::portalLightingBlendDistance = HIDWORD(v3);
  }

  return result;
}

void ___ZN2re18PortalUserDefaults30enablePortalEmbeddedInMeshNodeEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v5, "enablePortalEmbeddedInMeshNode", a2);
  if (v5[0] == 1)
  {
    re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Portal embedded render is now %s", buf, 0xCu);
  }
}

uint64_t *re::introspect_MaterialParameterType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1B8938, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B8940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8940))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B8FB0, "MaterialParameterType", 1, 1, 1, 1);
      qword_1EE1B8FB0 = &unk_1F5D0C658;
      qword_1EE1B8FF0 = &re::introspect_MaterialParameterType(BOOL)::enumTable;
      dword_1EE1B8FC0 = 9;
      __cxa_guard_release(&qword_1EE1B8940);
    }

    if (v2)
    {
      if (_MergedGlobals_445)
      {
        return &qword_1EE1B8FB0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v82);
      v3 = _MergedGlobals_445;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v82);
      if (v3)
      {
        return &qword_1EE1B8FB0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_445)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_445 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B8FB0, a2);
    v79 = 0x713A1216588B58F8;
    v80 = "MaterialParameterType";
    v83 = 0x31CD534126;
    v84 = "uint8_t";
    v9 = v82[0];
    v10 = v82[1];
    if (v83)
    {
      if (v83)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v80);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v78);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1B8938))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 1;
      *(v35 + 16) = "Float";
      qword_1EE18D968 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 32;
      *(v37 + 16) = "Vector2";
      qword_1EE18D970 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 33;
      *(v39 + 16) = "Vector3";
      qword_1EE18D978 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 34;
      *(v41 + 16) = "Vector4";
      qword_1EE18D980 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 48;
      *(v43 + 16) = "Matrix2x2";
      qword_1EE18D988 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 49;
      *(v45 + 16) = "Matrix3x3";
      qword_1EE18D990 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 50;
      *(v47 + 16) = "Matrix4x4";
      qword_1EE18D998 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 64;
      *(v49 + 16) = "Texture";
      qword_1EE18D9A0 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 128;
      *(v51 + 16) = "Buffer";
      qword_1EE18D9A8 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 192;
      *(v53 + 16) = "Sampler";
      qword_1EE18D9B0 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 0;
      *(v55 + 16) = "Invalid";
      qword_1EE18D9B8 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 2;
      *(v57 + 16) = "Bool";
      qword_1EE18D9C0 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 1;
      *(v59 + 8) = 3;
      *(v59 + 16) = "Int";
      qword_1EE18D9C8 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 1;
      *(v61 + 8) = 4;
      *(v61 + 16) = "Int2";
      qword_1EE18D9D0 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 1;
      *(v63 + 8) = 5;
      *(v63 + 16) = "Int3";
      qword_1EE18D9D8 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 1;
      *(v65 + 8) = 6;
      *(v65 + 16) = "Int4";
      qword_1EE18D9E0 = v65;
      v66 = re::introspectionAllocator();
      v67 = (*(*v66 + 32))(v66, 24, 8);
      *v67 = 1;
      *(v67 + 8) = 7;
      *(v67 + 16) = "UInt";
      qword_1EE18D9E8 = v67;
      v68 = re::introspectionAllocator();
      v69 = (*(*v68 + 32))(v68, 24, 8);
      *v69 = 1;
      *(v69 + 8) = 8;
      *(v69 + 16) = "UInt2";
      qword_1EE18D9F0 = v69;
      v70 = re::introspectionAllocator();
      v71 = (*(*v70 + 32))(v70, 24, 8);
      *v71 = 1;
      *(v71 + 8) = 9;
      *(v71 + 16) = "UInt3";
      qword_1EE18D9F8 = v71;
      v72 = re::introspectionAllocator();
      v73 = (*(*v72 + 32))(v72, 24, 8);
      *v73 = 1;
      *(v73 + 8) = 10;
      *(v73 + 16) = "UInt4";
      qword_1EE18DA00 = v73;
      v74 = re::introspectionAllocator();
      v75 = (*(*v74 + 32))(v74, 24, 8);
      *v75 = 1;
      *(v75 + 8) = 20;
      *(v75 + 16) = "Color3";
      qword_1EE18DA08 = v75;
      v76 = re::introspectionAllocator();
      v77 = (*(*v76 + 32))(v76, 24, 8);
      *v77 = 1;
      *(v77 + 8) = 21;
      *(v77 + 16) = "Color4";
      qword_1EE18DA10 = v77;
      __cxa_guard_release(&qword_1EE1B8938);
    }
  }

  v11 = qword_1EE1B8FF0;
  v83 = v9;
  v84 = v10;
  re::TypeBuilder::beginEnumType(v82, &v79, 1, 1, &v83);
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
        *&v81.var0 = 2 * v16;
        v81.var1 = v15;
        re::TypeBuilder::addEnumConstant(v82, v20, &v81);
        if (*&v81.var0)
        {
          if (*&v81.var0)
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
          *&v81.var0 = 2 * v25;
          v81.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v82, v29, &v81);
          if (*&v81.var0)
          {
            if (*&v81.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v82, v31);
  xmmword_1EE1B8FD0 = v81;
  if (v79)
  {
    if (v79)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1B8FB0;
}

void re::introspect_MaterialTextureParam(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8948))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B9360, "MaterialTextureParam", 40, 8, 0, 0);
    qword_1EE1B9360 = &unk_1F5D0C698;
    qword_1EE1B93A0 = re::internal::defaultConstruct<re::MaterialTextureParam>;
    dword_1EE1B9370 = 11;
    __cxa_guard_release(&qword_1EE1B8948);
  }

  if ((byte_1EE1B8921 & 1) == 0)
  {
    byte_1EE1B8921 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B9360, a2);
    v3[0] = 0x8270B19F5FE36E32;
    v3[1] = "MaterialTextureParam";
    xmmword_1EE1B9380 = v4;
    if (v3[0])
    {
      if (v3[0])
      {
      }
    }
  }
}

void *re::internal::defaultConstruct<re::MaterialTextureParam>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  return result;
}

uint64_t anonymous namespace::introspectionWalkerMember(_anonymous_namespace_ *this, uint64_t a2, const void *a3)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    {
      v4 = &re::introspect<re::DynamicString>(BOOL)::info;
      return *v4;
    }

    v4 = &re::introspect<re::DynamicString>(BOOL)::info;
    v11 = &re::introspect<re::DynamicString>(BOOL)::info;
    if (!v9)
    {
      return *v4;
    }

    re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v10);
LABEL_14:
    __cxa_guard_release(v8);
    v4 = v11;
    return *v4;
  }

  if (v3 != 1)
  {
LABEL_9:
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString", "false", "introspectionWalkerMember", 53);
    _os_crash("assertion failure: (false) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString");
    __break(1u);
    goto LABEL_10;
  }

  {
LABEL_10:
    v4 = &re::introspect<re::AssetHandle>(BOOL)::info;
    v11 = &re::introspect<re::AssetHandle>(BOOL)::info;
    if (!v6)
    {
      return *v4;
    }

    re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v7);
    goto LABEL_14;
  }

  v4 = &re::introspect<re::AssetHandle>(BOOL)::info;
  return *v4;
}

void *re::internal::defaultConstructV2<re::MaterialTextureParam>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  return result;
}

re::DynamicString *re::internal::defaultDestructV2<re::MaterialTextureParam>(re::DynamicString *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = off_1F5D05328[v2](&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

void *re::allocInfo_MaterialTextureBlockData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8950))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B94B0, "MaterialTextureBlockData");
    __cxa_guard_release(&qword_1EE1B8950);
  }

  return &unk_1EE1B94B0;
}

void re::initInfo_MaterialTextureBlockData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x9175FC30469124C6;
  v23[1] = "MaterialTextureBlockData";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1B8958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8958))
  {
    v7 = re::introspectionAllocator();
    re::introspect_MaterialTextureParam(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "texture";
    *(v9 + 16) = &qword_1EE1B9360;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1B8BC8 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "sampler";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x2800000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1B8BD0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::IntrospectionInfo<re::DynamicString>::get(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "samplerArray";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B8BD8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::IntrospectionInfo<re::Optional<unsigned int>>::get(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "uvIndex";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x6800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B8BE0 = v21;
    __cxa_guard_release(&qword_1EE1B8958);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B8BC8;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialTextureBlockData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialTextureBlockData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialTextureBlockData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialTextureBlockData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}

void *re::internal::defaultConstruct<re::MaterialTextureBlockData>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 8) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  v5 = re::DynamicString::setCapacity(v3 + 5, 0);
  *(v3 + 72) = 0u;
  v3 = (v3 + 72);
  v3[1] = 0u;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 32) = 0;
  return result;
}

void re::internal::defaultDestruct<re::MaterialTextureBlockData>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  re::DynamicString::deinit((a3 + 18));
  v4 = re::DynamicString::deinit((a3 + 10));
  v5 = a3[8];
  if (v5 != -1)
  {
    (off_1F5D05328[v5])(&v6, a3, v4);
  }

  a3[8] = -1;
}

void *re::internal::defaultConstructV2<re::MaterialTextureBlockData>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 8) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  v3 = re::DynamicString::setCapacity(v1 + 5, 0);
  *(v1 + 72) = 0u;
  v1 = (v1 + 72);
  *(v1 + 1) = 0u;
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 32) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MaterialTextureBlockData>(unsigned int *a1)
{
  re::DynamicString::deinit((a1 + 18));
  v2 = re::DynamicString::deinit((a1 + 10));
  v3 = a1[8];
  if (v3 != -1)
  {
    (off_1F5D05328[v3])(&v4, a1, v2);
  }

  a1[8] = -1;
}

void re::introspect_MaterialSamplerBaseType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8968, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B8970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8970))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B8FF8, "MaterialSamplerBaseType", 1, 1, 1, 1);
      qword_1EE1B8FF8 = &unk_1F5D0C658;
      qword_1EE1B9038 = &re::introspect_MaterialSamplerBaseType(BOOL)::enumTable;
      dword_1EE1B9008 = 9;
      __cxa_guard_release(&qword_1EE1B8970);
    }

    if (byte_1EE1B8922)
    {
      break;
    }

    byte_1EE1B8922 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B8FF8, a2);
    v51 = 0xDC7B28CF926F5B18;
    v52 = "MaterialSamplerBaseType";
    v55 = 0x31CD534126;
    v56 = "uint8_t";
    v4 = v54[0];
    v5 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B9038;
      v55 = v4;
      v56 = v5;
      re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
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
            *&v53.var0 = 2 * v11;
            v53.var1 = v10;
            re::TypeBuilder::addEnumConstant(v54, v15, &v53);
            if (*&v53.var0)
            {
              if (*&v53.var0)
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
              *&v53.var0 = 2 * v20;
              v53.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v54, v24, &v53);
              if (*&v53.var0)
              {
                if (*&v53.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v54, v26);
      xmmword_1EE1B9018 = v53;
      if (v51)
      {
        if (v51)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v50);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B8968))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Nearest";
      qword_1EE1B9308 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Bilinear";
      qword_1EE1B9310 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Trilinear";
      qword_1EE1B9318 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Anisotropic4x";
      qword_1EE1B9320 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "NearestClamp";
      qword_1EE1B9328 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "BilinearClamp";
      qword_1EE1B9330 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "TrilinearClamp";
      qword_1EE1B9338 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 7;
      *(v43 + 16) = "NearestClampToZero";
      qword_1EE1B9340 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 8;
      *(v45 + 16) = "BilinearClampToZero";
      qword_1EE1B9348 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 9;
      *(v47 + 16) = "TrilinearClampToZero";
      qword_1EE1B9350 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 10;
      *(v49 + 16) = "SamplerBaseTypeCount";
      qword_1EE1B9358 = v49;
      __cxa_guard_release(&qword_1EE1B8968);
    }
  }
}

void *re::allocInfo_OptionalMaterialSamplerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8978))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9540, "OptionalMaterialSamplerData");
    __cxa_guard_release(&qword_1EE1B8978);
  }

  return &unk_1EE1B9540;
}

void re::initInfo_OptionalMaterialSamplerData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0x2A51EC199F473916;
  v55[1] = "OptionalMaterialSamplerData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE1B8980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8980))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "normalizedCoordinates";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x100000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B93D0 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::mtl::SamplerAddressMode>>::get(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "wrapR";
    *(v13 + 16) = &qword_1EE1B8CB0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x800000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1B93D8 = v13;
    v14 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::mtl::SamplerAddressMode>>::get(v14, v15);
    v16 = (*(*v14 + 32))(v14, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "wrapS";
    *(v16 + 16) = &qword_1EE1B8CB0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x1000000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1B93E0 = v16;
    v17 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::mtl::SamplerAddressMode>>::get(v17, v18);
    v19 = (*(*v17 + 32))(v17, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "wrapT";
    *(v19 + 16) = &qword_1EE1B8CB0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x1800000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1B93E8 = v19;
    v20 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::mtl::SamplerBorderColor>>::get(v20, v21);
    v22 = (*(*v20 + 32))(v20, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "borderColor";
    *(v22 + 16) = &qword_1EE1B8CF0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B93F0 = v22;
    v23 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::mtl::SamplerMinMagFilter>>::get(v23, v24);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "minFilter";
    *(v25 + 16) = &qword_1EE1B8D30;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x2800000006;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1B93F8 = v25;
    v26 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::mtl::SamplerMinMagFilter>>::get(v26, v27);
    v28 = (*(*v26 + 32))(v26, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "magFilter";
    *(v28 + 16) = &qword_1EE1B8D30;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x3000000007;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1B9400 = v28;
    v29 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::mtl::SamplerMipFilter>>::get(v29, v30);
    v31 = (*(*v29 + 32))(v29, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "mipFilter";
    *(v31 + 16) = &qword_1EE1B8D70;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x3800000008;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1B9408 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::IntrospectionInfo<re::Optional<float>>::get(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "minLOD";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x4800000009;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1B9410 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::IntrospectionInfo<re::Optional<float>>::get(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "maxLOD";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x500000000ALL;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1B9418 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "useAverageLOD";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x30000000BLL;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1B9420 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::IntrospectionInfo<re::Optional<unsigned long long>>::get(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "maxAnisoSamples";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x580000000CLL;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1B9428 = v47;
    v48 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::mtl::SamplerCompareFunction>>::get(v48, v49);
    v50 = (*(*v48 + 32))(v48, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "compareFunction";
    *(v50 + 16) = &qword_1EE1B8DB0;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x400000000DLL;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE1B9430 = v50;
    v51 = re::introspectionAllocator();
    re::introspect_MaterialSamplerBaseType(v51, v52);
    v53 = (*(*v51 + 32))(v51, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "baseFilter";
    *(v53 + 16) = &qword_1EE1B8FF8;
    *(v53 + 24) = 0;
    *(v53 + 32) = 14;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE1B9438 = v53;
    __cxa_guard_release(&qword_1EE1B8980);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE1B93D0;
  *(this + 9) = re::internal::defaultConstruct<re::OptionalMaterialSamplerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::OptionalMaterialSamplerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::OptionalMaterialSamplerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::OptionalMaterialSamplerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerAddressMode>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AC8))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8CB0);
    qword_1EE1B8CB0 = &unk_1F5D05348;
    __cxa_guard_release(&qword_1EE1B8AC8);
  }

  if ((byte_1EE1B8924 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerAddressMode(1, a2);
    if ((byte_1EE1B8924 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8924 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8CB0, 0);
      qword_1EE1B8CC0 = 0x80000000DLL;
      dword_1EE1B8CC8 = v4;
      word_1EE1B8CCC = 0;
      *&xmmword_1EE1B8CD0 = 0;
      *(&xmmword_1EE1B8CD0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8CE0 = v3;
      qword_1EE1B8CE8 = 0;
      qword_1EE1B8CB0 = &unk_1F5D05348;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1B8CB0);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerAddressMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerAddressMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8CD0 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerBorderColor>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AD0))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8CF0);
    qword_1EE1B8CF0 = &unk_1F5D053C8;
    __cxa_guard_release(&qword_1EE1B8AD0);
  }

  if ((byte_1EE1B8925 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerBorderColor(1, a2);
    if ((byte_1EE1B8925 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8925 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8CF0, 0);
      qword_1EE1B8D00 = 0x80000000DLL;
      dword_1EE1B8D08 = v4;
      word_1EE1B8D0C = 0;
      *&xmmword_1EE1B8D10 = 0;
      *(&xmmword_1EE1B8D10 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8D20 = v3;
      qword_1EE1B8D28 = 0;
      qword_1EE1B8CF0 = &unk_1F5D053C8;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1B8CF0);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerBorderColor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerBorderColor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8D10 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerMinMagFilter>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AD8))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8D30);
    qword_1EE1B8D30 = &unk_1F5D05448;
    __cxa_guard_release(&qword_1EE1B8AD8);
  }

  if ((byte_1EE1B8926 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerMinMagFilter(1, a2);
    if ((byte_1EE1B8926 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8926 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8D30, 0);
      qword_1EE1B8D40 = 0x80000000DLL;
      dword_1EE1B8D48 = v4;
      word_1EE1B8D4C = 0;
      *&xmmword_1EE1B8D50 = 0;
      *(&xmmword_1EE1B8D50 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8D60 = v3;
      qword_1EE1B8D68 = 0;
      qword_1EE1B8D30 = &unk_1F5D05448;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1B8D30);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMinMagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMinMagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8D50 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerMipFilter>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AE0))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8D70);
    qword_1EE1B8D70 = &unk_1F5D054C8;
    __cxa_guard_release(&qword_1EE1B8AE0);
  }

  if ((byte_1EE1B8927 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerMipFilter(1, a2);
    if ((byte_1EE1B8927 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8927 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8D70, 0);
      qword_1EE1B8D80 = 0x80000000DLL;
      dword_1EE1B8D88 = v4;
      word_1EE1B8D8C = 0;
      *&xmmword_1EE1B8D90 = 0;
      *(&xmmword_1EE1B8D90 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8DA0 = v3;
      qword_1EE1B8DA8 = 0;
      qword_1EE1B8D70 = &unk_1F5D054C8;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1B8D70);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMipFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMipFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8D90 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerCompareFunction>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AE8))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8DB0);
    qword_1EE1B8DB0 = &unk_1F5D05548;
    __cxa_guard_release(&qword_1EE1B8AE8);
  }

  if ((byte_1EE1B8928 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerCompareFunction(1, a2);
    if ((byte_1EE1B8928 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8928 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8DB0, 0);
      qword_1EE1B8DC0 = 0x80000000DLL;
      dword_1EE1B8DC8 = v4;
      word_1EE1B8DCC = 0;
      *&xmmword_1EE1B8DD0 = 0;
      *(&xmmword_1EE1B8DD0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8DE0 = v3;
      qword_1EE1B8DE8 = 0;
      qword_1EE1B8DB0 = &unk_1F5D05548;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1B8DB0);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerCompareFunction>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerCompareFunction>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8DD0 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::OptionalMaterialSamplerData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 10;
  *(a3 + 3) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

uint64_t re::internal::defaultConstructV2<re::OptionalMaterialSamplerData>(uint64_t result)
{
  *result = 10;
  *(result + 3) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

void *re::allocInfo_DebugMapping(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8990))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B95D0, "DebugMapping");
    __cxa_guard_release(&qword_1EE1B8990);
  }

  return &unk_1EE1B95D0;
}

void re::initInfo_DebugMapping(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x3253EF60E3187636;
  v15[1] = "DebugMapping";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1B8998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8998))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
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
    qword_1EE1B8B60 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "mappings";
    *(v13 + 16) = &qword_1EE1B90D8;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x2000000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1B8B68 = v13;
    __cxa_guard_release(&qword_1EE1B8998);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8B60;
  *(this + 9) = re::internal::defaultConstruct<re::DebugMapping>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DebugMapping>;
  *(this + 13) = re::internal::defaultConstructV2<re::DebugMapping>;
  *(this + 14) = re::internal::defaultDestructV2<re::DebugMapping>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AF0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B90D8);
    qword_1EE1B90D8 = &unk_1F5D055C8;
    __cxa_guard_release(&qword_1EE1B8AF0);
  }

  if ((byte_1EE1B8929 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_int(1, v3);
    if ((byte_1EE1B8929 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1B8929 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B90D8, 0);
      qword_1EE1B90E8 = 0x3000000007;
      dword_1EE1B90F0 = v6;
      word_1EE1B90F4 = 0;
      *&xmmword_1EE1B90F8 = 0;
      *(&xmmword_1EE1B90F8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9108 = v2;
      qword_1EE1B9110 = 0;
      qword_1EE1B9118 = v5;
      qword_1EE1B9120 = 0;
      qword_1EE1B90D8 = &unk_1F5D055C8;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1B90D8);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1B90F8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::DebugMapping>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 68) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultDestruct<re::DebugMapping>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 4);

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::DebugMapping>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 68) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultDestructV2<re::DebugMapping>(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 4);

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_OptionalMaterialParameterProperties(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B89A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9660, "OptionalMaterialParameterProperties");
    __cxa_guard_release(&qword_1EE1B89A8);
  }

  return &unk_1EE1B9660;
}

void re::initInfo_OptionalMaterialParameterProperties(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xEC26075C392FA2EALL;
  v16[1] = "OptionalMaterialParameterProperties";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B89B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89B0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "displayName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B8B70 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "isHidden";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B8B78 = v14;
    __cxa_guard_release(&qword_1EE1B89B0);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8B70;
  *(this + 9) = re::internal::defaultConstruct<re::OptionalMaterialParameterProperties>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::OptionalMaterialParameterProperties>;
  *(this + 13) = re::internal::defaultConstructV2<re::OptionalMaterialParameterProperties>;
  *(this + 14) = re::internal::defaultDestructV2<re::OptionalMaterialParameterProperties>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultDestruct<re::OptionalMaterialParameterProperties>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 1)
  {
    return re::DynamicString::deinit((a3 + 8));
  }

  return result;
}

_BYTE *re::internal::defaultConstructV2<re::OptionalMaterialParameterProperties>(_BYTE *result)
{
  *result = 0;
  result[40] = 0;
  return result;
}

double re::internal::defaultDestructV2<re::OptionalMaterialParameterProperties>(_BYTE *a1)
{
  if (*a1 == 1)
  {
    return re::DynamicString::deinit((a1 + 8));
  }

  return result;
}

void *re::allocInfo_MaterialShaderData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B89C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B96F0, "MaterialShaderData");
    __cxa_guard_release(&qword_1EE1B89C0);
  }

  return &unk_1EE1B96F0;
}

void re::initInfo_MaterialShaderData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xCBEC3AED4BA4B3ACLL;
  v16[1] = "MaterialShaderData";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B89C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89C8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_AssetHandle(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "library";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B8B80 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "entry";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B8B88 = v14;
    __cxa_guard_release(&qword_1EE1B89C8);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8B80;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialShaderData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialShaderData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialShaderData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialShaderData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::MaterialShaderData>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;

  return re::DynamicString::setCapacity((a3 + 24), 0);
}

void re::internal::defaultDestruct<re::MaterialShaderData>(int a1, int a2, re::DynamicString *this)
{
  v4 = (this + 24);
  if (*(this + 3))
  {
    re::DynamicString::deinit((this + 24));
  }

  re::DynamicString::deinit(v4);

  re::AssetHandle::~AssetHandle(this);
}

void *re::internal::defaultConstructV2<re::MaterialShaderData>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;

  return re::DynamicString::setCapacity((a1 + 24), 0);
}

void re::internal::defaultDestructV2<re::MaterialShaderData>(re::DynamicString *this)
{
  v2 = (this + 24);
  if (*(this + 3))
  {
    re::DynamicString::deinit((this + 24));
  }

  re::DynamicString::deinit(v2);

  re::AssetHandle::~AssetHandle(this);
}

void *re::allocInfo_RenderAttachmentState(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B89D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9780, "RenderAttachmentState");
    __cxa_guard_release(&qword_1EE1B89D8);
  }

  return &unk_1EE1B9780;
}

void re::initInfo_RenderAttachmentState(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v46[0] = 0xA6BA137CEBA0C130;
  v46[1] = "RenderAttachmentState";
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  *(this + 2) = v47;
  if ((atomic_load_explicit(&qword_1EE1B89E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89E0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_BOOL(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "alphaBlend";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B9088 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_BOOL(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "preferProgrammableBlending";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x100000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B9090 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 5;
    *(v16 + 8) = "programmableBlending";
    *(v16 + 16) = "preferProgrammableBlending";
    qword_1EE1B9098 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::mtl::introspect_BlendFactor(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "rgbSourceFactor";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x400000003;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1B90A0 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::mtl::introspect_BlendFactor(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "rgbDestinationFactor";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x800000004;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1B90A8 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::mtl::introspect_BlendOperation(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "rgbBlendOperation";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0xC00000005;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1B90B0 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::mtl::introspect_BlendFactor(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "alphaSourceFactor";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x1000000006;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1B90B8 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::mtl::introspect_BlendFactor(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "alphaDestinationFactor";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x1400000007;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1B90C0 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::mtl::introspect_BlendOperation(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "alphaBlendOperation";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x1800000008;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1B90C8 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::mtl::introspect_ColorWriteMask(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "colorWriteMask";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x1C00000009;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1B90D0 = v44;
    __cxa_guard_release(&qword_1EE1B89E0);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1B9088;
  *(this + 9) = re::internal::defaultConstruct<re::RenderAttachmentState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderAttachmentState>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderAttachmentState>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderAttachmentState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v45 = v47;
}

double re::internal::defaultConstruct<re::RenderAttachmentState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 4) = xmmword_1E30A1FE0;
  *&result = 5;
  *(a3 + 20) = 5;
  *(a3 + 28) = 15;
  return result;
}

double re::internal::defaultConstructV2<re::RenderAttachmentState>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = xmmword_1E30A1FE0;
  *&result = 5;
  *(a1 + 20) = 5;
  *(a1 + 28) = 15;
  return result;
}

void *re::allocInfo_TechniqueState(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B89F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9810, "TechniqueState");
    __cxa_guard_release(&qword_1EE1B89F0);
  }

  return &unk_1EE1B9810;
}

void re::initInfo_TechniqueState(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v82[0] = 0x49118B545AE53882;
  v82[1] = "TechniqueState";
  if (v82[0])
  {
    if (v82[0])
    {
    }
  }

  *(this + 2) = v83;
  if ((atomic_load_explicit(&qword_1EE1B89F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89F8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_BOOL(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "alphaBlend";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE18D838 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_BOOL(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "writeDepth";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE18D840 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint8_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "stencilReferenceValue";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x600000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE18D848 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::mtl::introspect_CompareFunction(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "depthCompareFunction";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xA00000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE18D850 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::mtl::introspect_BlendFactor(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "rgbSourceFactor";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xC00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE18D858 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::mtl::introspect_BlendFactor(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "rgbDestinationFactor";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1000000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE18D860 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::mtl::introspect_BlendOperation(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "rgbBlendOperation";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1400000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE18D868 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::mtl::introspect_BlendFactor(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "alphaSourceFactor";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x1800000008;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE18D870 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::mtl::introspect_BlendFactor(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "alphaDestinationFactor";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x1C00000009;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE18D878 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::mtl::introspect_BlendOperation(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "alphaBlendOperation";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x200000000ALL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE18D880 = v46;
    v47 = re::introspectionAllocator();
    v49 = re::introspect_BOOL(1, v48);
    v50 = (*(*v47 + 32))(v47, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "alphaToCoverage";
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x30000000BLL;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE18D888 = v50;
    v51 = re::introspectionAllocator();
    v53 = re::introspect_BOOL(1, v52);
    v54 = (*(*v51 + 32))(v51, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "alphaToOne";
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x40000000CLL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE18D890 = v54;
    v55 = re::introspectionAllocator();
    v57 = re::mtl::introspect_ColorWriteMask(1, v56);
    v58 = (*(*v55 + 32))(v55, 72, 8);
    *v58 = 1;
    *(v58 + 8) = "colorWriteMask";
    *(v58 + 16) = v57;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0x240000000DLL;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    qword_1EE18D898 = v58;
    v59 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RenderAttachmentState>>::get(v59);
    v60 = (*(*v59 + 32))(v59, 72, 8);
    *v60 = 1;
    *(v60 + 8) = "renderAttachmentState";
    *(v60 + 16) = &qword_1EE1B8DF0;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0x380000000ELL;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    *(v60 + 56) = 0;
    *(v60 + 64) = 0;
    qword_1EE18D8A0 = v60;
    v61 = re::introspectionAllocator();
    v63 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(1, v62);
    v64 = (*(*v61 + 32))(v61, 72, 8);
    *v64 = 1;
    *(v64 + 8) = "cullMode";
    *(v64 + 16) = v63;
    *(v64 + 24) = 0;
    *(v64 + 32) = 0x340000000FLL;
    *(v64 + 40) = 0;
    *(v64 + 48) = 0;
    *(v64 + 56) = 0;
    *(v64 + 64) = 0;
    qword_1EE18D8A8 = v64;
    v65 = re::introspectionAllocator();
    v67 = re::introspect_float(1, v66);
    v68 = (*(*v65 + 32))(v65, 72, 8);
    *v68 = 1;
    *(v68 + 8) = "depthBias";
    *(v68 + 16) = v67;
    *(v68 + 24) = 0;
    *(v68 + 32) = 0x2800000010;
    *(v68 + 40) = 0;
    *(v68 + 48) = 0;
    *(v68 + 56) = 0;
    *(v68 + 64) = 0;
    qword_1EE18D8B0 = v68;
    v69 = re::introspectionAllocator();
    v71 = re::introspect_float(1, v70);
    v72 = (*(*v69 + 32))(v69, 72, 8);
    *v72 = 1;
    *(v72 + 8) = "depthSlopeScale";
    *(v72 + 16) = v71;
    *(v72 + 24) = 0;
    *(v72 + 32) = 0x2C00000011;
    *(v72 + 40) = 0;
    *(v72 + 48) = 0;
    *(v72 + 56) = 0;
    *(v72 + 64) = 0;
    qword_1EE18D8B8 = v72;
    v73 = re::introspectionAllocator();
    v75 = re::introspect_float(1, v74);
    v76 = (*(*v73 + 32))(v73, 72, 8);
    *v76 = 1;
    *(v76 + 8) = "depthClamp";
    *(v76 + 16) = v75;
    *(v76 + 24) = 0;
    *(v76 + 32) = 0x3000000012;
    *(v76 + 40) = 0;
    *(v76 + 48) = 0;
    *(v76 + 56) = 0;
    *(v76 + 64) = 0;
    qword_1EE18D8C0 = v76;
    v77 = re::introspectionAllocator();
    v79 = re::introspect_BOOL(1, v78);
    v80 = (*(*v77 + 32))(v77, 72, 8);
    *v80 = 1;
    *(v80 + 8) = "preferProgrammableBlending";
    *(v80 + 16) = v79;
    *(v80 + 24) = 0;
    *(v80 + 32) = 0x100000013;
    *(v80 + 40) = 0;
    *(v80 + 48) = 0;
    *(v80 + 56) = 0;
    *(v80 + 64) = 0;
    qword_1EE18D8C8 = v80;
    __cxa_guard_release(&qword_1EE1B89F8);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 19;
  *(this + 8) = &qword_1EE18D838;
  *(this + 9) = re::internal::defaultConstruct<re::TechniqueState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TechniqueState>;
  *(this + 13) = re::internal::defaultConstructV2<re::TechniqueState>;
  *(this + 14) = re::internal::defaultDestructV2<re::TechniqueState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v81 = v83;
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderAttachmentState>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8AF8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8AF8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8DF0);
      qword_1EE1B8DF0 = &unk_1F5D05668;
      __cxa_guard_release(&qword_1EE1B8AF8);
    }
  }

  if ((byte_1EE1B892A & 1) == 0)
  {
    v1 = qword_1EE1B89E8;
    if (qword_1EE1B89E8 || (v1 = re::allocInfo_RenderAttachmentState(a1), qword_1EE1B89E8 = v1, re::initInfo_RenderAttachmentState(v1, v2, v3, v4), (byte_1EE1B892A & 1) == 0))
    {
      byte_1EE1B892A = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8DF0, 0);
      qword_1EE1B8E00 = 0x2800000003;
      dword_1EE1B8E08 = v5;
      word_1EE1B8E0C = 0;
      *&xmmword_1EE1B8E10 = 0;
      *(&xmmword_1EE1B8E10 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8E20 = v1;
      qword_1EE1B8E28 = 0;
      qword_1EE1B8DF0 = &unk_1F5D05668;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B8DF0);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B8E10 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::TechniqueState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0xFFFF000100010000;
  *(a3 + 8) = 1792;
  *(a3 + 10) = 4;
  *(a3 + 12) = xmmword_1E30A1FE0;
  *&result = 5;
  *(a3 + 28) = 5;
  *(a3 + 36) = 15;
  *(a3 + 88) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 40) = 0;
  *(a3 + 45) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::TechniqueState>(uint64_t a1)
{
  *a1 = 0xFFFF000100010000;
  *(a1 + 8) = 1792;
  *(a1 + 10) = 4;
  *(a1 + 12) = xmmword_1E30A1FE0;
  *&result = 5;
  *(a1 + 28) = 5;
  *(a1 + 36) = 15;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 45) = 0;
  return result;
}

void *re::allocInfo_MaterialTechniqueData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_266, "MaterialTechniqueData");
    __cxa_guard_release(&qword_1EE1B8A08);
  }

  return &_MergedGlobals_266;
}

void re::initInfo_MaterialTechniqueData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v93[0] = 0xCB28E91752B24826;
  v93[1] = "MaterialTechniqueData";
  if (v93[0])
  {
    if (v93[0])
    {
    }
  }

  *(this + 2) = v94;
  if ((atomic_load_explicit(&qword_1EE1B8A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A10))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
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
    qword_1EE18D8D0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_AssetHandle(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "library";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x4000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE18D8D8 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE1B89D0;
    if (!qword_1EE1B89D0)
    {
      v17 = re::allocInfo_MaterialShaderData(v15);
      qword_1EE1B89D0 = v17;
      re::initInfo_MaterialShaderData(v17, v18, v19, v20);
    }

    v21 = (*(*v16 + 32))(v16, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "vertexShader";
    *(v21 + 16) = v17;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5800000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18D8E0 = v21;
    v22 = re::introspectionAllocator();
    v23 = v22;
    v24 = qword_1EE1B89D0;
    if (!qword_1EE1B89D0)
    {
      v24 = re::allocInfo_MaterialShaderData(v22);
      qword_1EE1B89D0 = v24;
      re::initInfo_MaterialShaderData(v24, v25, v26, v27);
    }

    v28 = (*(*v23 + 32))(v23, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "pixelShader";
    *(v28 + 16) = v24;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x9000000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE18D8E8 = v28;
    v29 = re::introspectionAllocator();
    v30 = v29;
    v31 = qword_1EE1B8A00;
    if (!qword_1EE1B8A00)
    {
      v31 = re::allocInfo_TechniqueState(v29);
      qword_1EE1B8A00 = v31;
      re::initInfo_TechniqueState(v31, v32, v33, v34);
    }

    v35 = (*(*v30 + 32))(v30, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "state";
    *(v35 + 16) = v31;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0xC800000005;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE18D8F0 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::IntrospectionInfo<re::DynamicString>::get(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "debugMapping";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x12800000006;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE18D8F8 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "functionConstants";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x14800000007;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE18D900 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "variations";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x17800000008;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE18D908 = v47;
    v48 = re::introspectionAllocator();
    v50 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v49);
    v51 = (*(*v48 + 32))(v48, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "defaultVariations";
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0x1A800000009;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE18D910 = v51;
    v52 = re::introspectionAllocator();
    v54 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v53);
    v55 = (*(*v52 + 32))(v52, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "tags";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0x1D00000000ALL;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE18D918 = v55;
    v56 = re::introspectionAllocator();
    v58 = re::introspect_BOOL(1, v57);
    v59 = (*(*v56 + 32))(v56, 72, 8);
    *v59 = 1;
    *(v59 + 8) = "inheritState";
    *(v59 + 16) = v58;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0x2280000000BLL;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    qword_1EE18D920 = v59;
    v60 = re::introspectionAllocator();
    v62 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v61);
    v63 = (*(*v60 + 32))(v60, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "instancedArguments";
    *(v63 + 16) = v62;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x2000000000CLL;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE18D928 = v63;
    v64 = re::introspectionAllocator();
    v66 = re::introspect_BOOL(1, v65);
    v67 = (*(*v64 + 32))(v64, 72, 8);
    *v67 = 1;
    *(v67 + 8) = "supportsRuntimeFunctionConstants";
    *(v67 + 16) = v66;
    *(v67 + 24) = 0;
    *(v67 + 32) = 0x2290000000DLL;
    *(v67 + 40) = 0;
    *(v67 + 48) = 0;
    *(v67 + 56) = 0;
    *(v67 + 64) = 0;
    qword_1EE18D930 = v67;
    v68 = re::introspectionAllocator();
    v70 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v69);
    v71 = (*(*v68 + 32))(v68, 72, 8);
    *v71 = 1;
    *(v71 + 8) = "runtimeFunctionConstantDefaults";
    *(v71 + 16) = v70;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0x2300000000ELL;
    *(v71 + 40) = 0;
    *(v71 + 48) = 0;
    *(v71 + 56) = 0;
    *(v71 + 64) = 0;
    qword_1EE18D938 = v71;
    v72 = re::introspectionAllocator();
    v74 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v73);
    v75 = (*(*v72 + 32))(v72, 72, 8);
    *v75 = 1;
    *(v75 + 8) = "preloadOptions";
    *(v75 + 16) = v74;
    *(v75 + 24) = 0;
    *(v75 + 32) = 0x2600000000FLL;
    *(v75 + 40) = 0;
    *(v75 + 48) = 0;
    *(v75 + 56) = 0;
    *(v75 + 64) = 0;
    qword_1EE18D940 = v75;
    v76 = re::introspectionAllocator();
    v78 = re::IntrospectionInfo<re::DynamicString>::get(1, v77);
    v79 = (*(*v76 + 32))(v76, 72, 8);
    *v79 = 1;
    *(v79 + 8) = "inheritFromTechnique";
    *(v79 + 16) = v78;
    *(v79 + 24) = 0;
    *(v79 + 32) = 0x2000000010;
    *(v79 + 40) = 0;
    *(v79 + 48) = 0;
    *(v79 + 56) = 0;
    *(v79 + 64) = 0;
    qword_1EE18D948 = v79;
    v80 = re::introspectionAllocator();
    v82 = re::introspect_BOOL(1, v81);
    v83 = (*(*v80 + 32))(v80, 72, 8);
    *v83 = 1;
    *(v83 + 8) = "useDynamicAttributeStride";
    *(v83 + 16) = v82;
    *(v83 + 24) = 0;
    *(v83 + 32) = 0x29000000011;
    *(v83 + 40) = 0;
    *(v83 + 48) = 0;
    *(v83 + 56) = 0;
    *(v83 + 64) = 0;
    qword_1EE18D950 = v83;
    v84 = re::introspectionAllocator();
    v86 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v85);
    v87 = (*(*v84 + 32))(v84, 72, 8);
    *v87 = 1;
    *(v87 + 8) = "allowRuntimeTechniqueStateOverride";
    *(v87 + 16) = v86;
    *(v87 + 24) = 0;
    *(v87 + 32) = 0x29100000012;
    *(v87 + 40) = 0;
    *(v87 + 48) = 0;
    *(v87 + 56) = 0;
    *(v87 + 64) = 0;
    qword_1EE18D958 = v87;
    v88 = re::introspectionAllocator();
    v90 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v89);
    v91 = (*(*v88 + 32))(v88, 72, 8);
    *v91 = 1;
    *(v91 + 8) = "isPrecompiled";
    *(v91 + 16) = v90;
    *(v91 + 24) = 0;
    *(v91 + 32) = 0x29300000013;
    *(v91 + 40) = 0;
    *(v91 + 48) = 0;
    *(v91 + 56) = 0;
    *(v91 + 64) = 0;
    qword_1EE18D960 = v91;
    __cxa_guard_release(&qword_1EE1B8A10);
  }

  *(this + 2) = 0x29800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 19;
  *(this + 8) = &qword_1EE18D8D0;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialTechniqueData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialTechniqueData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialTechniqueData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialTechniqueData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v92 = v94;
}

void *re::allocInfo_MaterialTechniqueGroupData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D448, "MaterialTechniqueGroupData");
    __cxa_guard_release(&qword_1EE1B8A20);
  }

  return &unk_1EE18D448;
}

void re::initInfo_MaterialTechniqueGroupData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xAECD50652FAE5000;
  v16[1] = "MaterialTechniqueGroupData";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B8A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A28))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
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
    qword_1EE1B8B90 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "techniques";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B8B98 = v14;
    __cxa_guard_release(&qword_1EE1B8A28);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8B90;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialTechniqueGroupData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialTechniqueGroupData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialTechniqueGroupData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialTechniqueGroupData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::MaterialTechniqueGroupData>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 64) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  return result;
}

double re::internal::defaultDestruct<re::MaterialTechniqueGroupData>(int a1, int a2, const re::DynamicString **this)
{
  re::MaterialTechniqueGroupData::deinit(this);
  re::DynamicArray<re::DynamicString>::deinit((this + 4));

  return re::DynamicString::deinit(this);
}

void *re::internal::defaultConstructV2<re::MaterialTechniqueGroupData>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::MaterialTechniqueGroupData>(const re::DynamicString **a1)
{
  re::MaterialTechniqueGroupData::deinit(a1);
  re::DynamicArray<re::DynamicString>::deinit((a1 + 4));

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_MaterialTechniqueQualityLevelSetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D4D8, "MaterialTechniqueQualityLevelSetData");
    __cxa_guard_release(&qword_1EE1B8A38);
  }

  return &unk_1EE18D4D8;
}

void re::initInfo_MaterialTechniqueQualityLevelSetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xA79299F1B003743CLL;
  v20[1] = "MaterialTechniqueQualityLevelSetData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B8A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A40))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
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
    qword_1EE1B8BB0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "techniqueSetBaseline";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B8BB8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "techniques";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B8BC0 = v18;
    __cxa_guard_release(&qword_1EE1B8A40);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B8BB0;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialTechniqueQualityLevelSetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialTechniqueQualityLevelSetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialTechniqueQualityLevelSetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialTechniqueQualityLevelSetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::internal::defaultConstruct<re::MaterialTechniqueQualityLevelSetData>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[2] = 0u;
  v3[3] = 0u;
  v3 += 2;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 8) = 0;
  *(v3 + 5) = 0;
  *(v3 + 6) = 0;
  *(v3 + 4) = 0;
  *(v3 + 14) = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::MaterialTechniqueQualityLevelSetData>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 8) = 0;
  *(v1 + 5) = 0;
  *(v1 + 6) = 0;
  *(v1 + 4) = 0;
  *(v1 + 14) = 0;
  return result;
}

void *re::allocInfo_MaterialParameterData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D568, "MaterialParameterData");
    __cxa_guard_release(&qword_1EE1B8A50);
  }

  return &unk_1EE18D568;
}

void re::initInfo_MaterialParameterData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v25[0] = 0x713A1216587C19D8;
  v25[1] = "MaterialParameterData";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1B8A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A58))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "constants";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B8BE8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "buffers";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B8BF0 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "textures";
    *(v17 + 16) = &qword_1EE1B9128;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x6000000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B8BF8 = v17;
    v18 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v18, v19);
    v20 = (*(*v18 + 32))(v18, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "textureBlocks";
    *(v20 + 16) = &qword_1EE1B9178;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x9000000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1B8C00 = v20;
    v21 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v21, v22);
    v23 = (*(*v21 + 32))(v21, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "samplers";
    *(v23 + 16) = &qword_1EE1B91C8;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0xC000000005;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1B8C08 = v23;
    __cxa_guard_release(&qword_1EE1B8A58);
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B8BE8;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialParameterData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialParameterData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialParameterData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialParameterData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v24 = v26;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B00))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B9128);
    qword_1EE1B9128 = &unk_1F5D05700;
    __cxa_guard_release(&qword_1EE1B8B00);
  }

  if ((byte_1EE1B892B & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    re::introspect_MaterialTextureParam(v2, v3);
    if ((byte_1EE1B892B & 1) == 0)
    {
      byte_1EE1B892B = 1;
      v4 = dword_1EE1B9378;
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9128, 0);
      qword_1EE1B9138 = 0x3000000007;
      dword_1EE1B9140 = v4;
      word_1EE1B9144 = 0;
      *&xmmword_1EE1B9148 = 0;
      *(&xmmword_1EE1B9148 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9158 = v2;
      qword_1EE1B9160 = 0;
      qword_1EE1B9168 = &qword_1EE1B9360;
      qword_1EE1B9170 = 0;
      qword_1EE1B9128 = &unk_1F5D05700;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v21, &qword_1EE1B9128);
      if (BYTE8(v21))
      {
        v7 = v22;
      }

      else
      {
        v7 = &v21 + 9;
      }

      if (v21 && (BYTE8(v21) & 1) != 0)
      {
        (*(*v21 + 40))();
      }

      v8 = *(v2 + 2);
      v16 = xmmword_1EE1B9380;
      v17 = v8;
      if (v28)
      {
        v15 = v28;
      }

      else
      {
        *&v21 = 0x449AD97C4B77BED4;
        *(&v21 + 1) = "_CompareFunc";
        if (v21)
        {
          if (v21)
          {
          }
        }

        if (!v27)
        {
          v23[0] = 0x449AD97C4B77BED4;
          v23[1] = "_CompareFunc";
          v27 = v21;
          if (v23[0])
          {
            if (v23[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v26, &v21 + 8);
        if (!v27 || (v12 = *v26[2], *&v21 = *(&v27 + 1), *(&v21 + 1) = v12, LODWORD(v22) = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v26[0] + 768, &v21)) == 0) || !*v13)
        {
          v24 = v27;
          v25 = v17;
        }

        re::StackScratchAllocator::StackScratchAllocator(v23);
        re::TypeBuilder::TypeBuilder(&v21, v23);
        v19 = v16;
        v20 = v17;
        re::TypeBuilder::beginDictionaryType(&v21, &v18, 1, 0x30uLL, 8uLL, &v20, &v19);
        re::TypeBuilder::setConstructor(&v21, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v21, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v21, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v21, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v21, v14);
        re::StackScratchAllocator::~StackScratchAllocator(v23);
      }

      xmmword_1EE1B9148 = v15;
      if (v18)
      {
        if (v18)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B08))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B9178);
    qword_1EE1B9178 = &unk_1F5D057A0;
    __cxa_guard_release(&qword_1EE1B8B08);
  }

  if ((byte_1EE1B892C & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B8960;
    if (!qword_1EE1B8960)
    {
      v4 = re::allocInfo_MaterialTextureBlockData(v2);
      qword_1EE1B8960 = v4;
      re::initInfo_MaterialTextureBlockData(v4, v5, v6, v7);
    }

    if ((byte_1EE1B892C & 1) == 0)
    {
      byte_1EE1B892C = 1;
      v8 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9178, 0);
      qword_1EE1B9188 = 0x3000000007;
      dword_1EE1B9190 = v8;
      word_1EE1B9194 = 0;
      *&xmmword_1EE1B9198 = 0;
      *(&xmmword_1EE1B9198 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B91A8 = v3;
      qword_1EE1B91B0 = 0;
      qword_1EE1B91B8 = v4;
      qword_1EE1B91C0 = 0;
      qword_1EE1B9178 = &unk_1F5D057A0;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v25, &qword_1EE1B9178);
      if (BYTE8(v25))
      {
        v11 = v26;
      }

      else
      {
        v11 = &v25 + 9;
      }

      if (v25 && (BYTE8(v25) & 1) != 0)
      {
        (*(*v25 + 40))();
      }

      v12 = *(v3 + 32);
      v20 = *(v4 + 2);
      v21 = v12;
      if (v32)
      {
        v19 = v32;
      }

      else
      {
        *&v25 = 0x449AD97C4B77BED4;
        *(&v25 + 1) = "_CompareFunc";
        if (v25)
        {
          if (v25)
          {
          }
        }

        if (!v31)
        {
          v27[0] = 0x449AD97C4B77BED4;
          v27[1] = "_CompareFunc";
          v31 = v25;
          if (v27[0])
          {
            if (v27[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v30, &v25 + 8);
        if (!v31 || (v16 = *v30[2], *&v25 = *(&v31 + 1), *(&v25 + 1) = v16, LODWORD(v26) = -1, (v17 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v30[0] + 768, &v25)) == 0) || !*v17)
        {
          v28 = v31;
          v29 = v21;
        }

        re::StackScratchAllocator::StackScratchAllocator(v27);
        re::TypeBuilder::TypeBuilder(&v25, v27);
        v23 = v20;
        v24 = v21;
        re::TypeBuilder::beginDictionaryType(&v25, &v22, 1, 0x30uLL, 8uLL, &v24, &v23);
        re::TypeBuilder::setConstructor(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v25, v18);
        re::StackScratchAllocator::~StackScratchAllocator(v27);
      }

      xmmword_1EE1B9198 = v19;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B10))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B91C8);
    qword_1EE1B91C8 = &unk_1F5D05840;
    __cxa_guard_release(&qword_1EE1B8B10);
  }

  if ((byte_1EE1B892D & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B8988;
    if (!qword_1EE1B8988)
    {
      v4 = re::allocInfo_OptionalMaterialSamplerData(v2);
      qword_1EE1B8988 = v4;
      re::initInfo_OptionalMaterialSamplerData(v4, v5, v6, v7);
    }

    if ((byte_1EE1B892D & 1) == 0)
    {
      byte_1EE1B892D = 1;
      v8 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B91C8, 0);
      qword_1EE1B91D8 = 0x3000000007;
      dword_1EE1B91E0 = v8;
      word_1EE1B91E4 = 0;
      *&xmmword_1EE1B91E8 = 0;
      *(&xmmword_1EE1B91E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B91F8 = v3;
      qword_1EE1B9200 = 0;
      qword_1EE1B9208 = v4;
      qword_1EE1B9210 = 0;
      qword_1EE1B91C8 = &unk_1F5D05840;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v25, &qword_1EE1B91C8);
      if (BYTE8(v25))
      {
        v11 = v26;
      }

      else
      {
        v11 = &v25 + 9;
      }

      if (v25 && (BYTE8(v25) & 1) != 0)
      {
        (*(*v25 + 40))();
      }

      v12 = *(v3 + 32);
      v20 = *(v4 + 2);
      v21 = v12;
      if (v32)
      {
        v19 = v32;
      }

      else
      {
        *&v25 = 0x449AD97C4B77BED4;
        *(&v25 + 1) = "_CompareFunc";
        if (v25)
        {
          if (v25)
          {
          }
        }

        if (!v31)
        {
          v27[0] = 0x449AD97C4B77BED4;
          v27[1] = "_CompareFunc";
          v31 = v25;
          if (v27[0])
          {
            if (v27[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v30, &v25 + 8);
        if (!v31 || (v16 = *v30[2], *&v25 = *(&v31 + 1), *(&v25 + 1) = v16, LODWORD(v26) = -1, (v17 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v30[0] + 768, &v25)) == 0) || !*v17)
        {
          v28 = v31;
          v29 = v21;
        }

        re::StackScratchAllocator::StackScratchAllocator(v27);
        re::TypeBuilder::TypeBuilder(&v25, v27);
        v23 = v20;
        v24 = v21;
        re::TypeBuilder::beginDictionaryType(&v25, &v22, 1, 0x30uLL, 8uLL, &v24, &v23);
        re::TypeBuilder::setConstructor(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v25, v18);
        re::StackScratchAllocator::~StackScratchAllocator(v27);
      }

      xmmword_1EE1B91E8 = v19;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MaterialParameterData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 0x7FFFFFFFLL;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0x7FFFFFFFLL;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 132) = 0x7FFFFFFFLL;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 180) = 0x7FFFFFFFLL;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0;
  *(a3 + 228) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultDestruct<re::MaterialParameterData>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 24);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 18);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 12);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 6);

  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MaterialParameterData>(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0x7FFFFFFFLL;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultDestructV2<re::MaterialParameterData>(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 24);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 18);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 12);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 6);

  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void *re::allocInfo_MaterialDefinitionFile(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D5F8, "MaterialDefinitionFile");
    __cxa_guard_release(&qword_1EE1B8A68);
  }

  return &unk_1EE18D5F8;
}

void re::initInfo_MaterialDefinitionFile(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v56[0] = 0x40860A7DC02A152CLL;
  v56[1] = "MaterialDefinitionFile";
  if (v56[0])
  {
    if (v56[0])
    {
    }
  }

  *(this + 2) = v57;
  if ((atomic_load_explicit(&qword_1EE1B8A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A70))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
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
    qword_1EE1B9440 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "deprecationMessage";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x4000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B9448 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "library";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x6000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B9450 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_AssetHandle(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "overrideMaterial";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x7800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B9458 = v22;
    v23 = re::introspectionAllocator();
    v24 = v23;
    v25 = qword_1EE1B8A60;
    if (!qword_1EE1B8A60)
    {
      v25 = re::allocInfo_MaterialParameterData(v23);
      qword_1EE1B8A60 = v25;
      re::initInfo_MaterialParameterData(v25, v26, v27, v28);
    }

    v29 = (*(*v24 + 32))(v24, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "parameters";
    *(v29 + 16) = v25;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x9000000005;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1B9460 = v29;
    v30 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueData>>::get(v30);
    v31 = (*(*v30 + 32))(v30, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "techniques";
    *(v31 + 16) = &qword_1EE1B8E30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x18000000006;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1B9468 = v31;
    v32 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueGroupData>>::get(v32);
    v33 = (*(*v32 + 32))(v32, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "techniqueGroups";
    *(v33 + 16) = &qword_1EE1B8E70;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x1A800000007;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1B9470 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "techniqueMapping";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x1D000000008;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1B9478 = v37;
    v38 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::DebugMapping>>::get(v38);
    v39 = (*(*v38 + 32))(v38, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "debugMappings";
    *(v39 + 16) = &qword_1EE1B8EB0;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x23000000009;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1B9480 = v39;
    v40 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v40, v41);
    v42 = (*(*v40 + 32))(v40, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "parameterProperties";
    *(v42 + 16) = &qword_1EE1B9218;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x2580000000ALL;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1B9488 = v42;
    v43 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>>::get(v43);
    v44 = (*(*v43 + 32))(v43, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "techniqueQualityLevelSet";
    *(v44 + 16) = &qword_1EE1B8EF0;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x2880000000BLL;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1B9490 = v44;
    v45 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v45, v46);
    v47 = (*(*v45 + 32))(v45, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "techniqueMappingOverrides";
    *(v47 + 16) = &qword_1EE1B9268;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x2000000000CLL;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1B9498 = v47;
    v48 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v48, v49);
    v50 = (*(*v48 + 32))(v48, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "shaderCompilationMode";
    *(v50 + 16) = &qword_1EE1B90D8;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x2B00000000DLL;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE1B94A0 = v50;
    v51 = re::introspectionAllocator();
    v53 = re::IntrospectionInfo<re::DynamicString>::get(1, v52);
    v54 = (*(*v51 + 32))(v51, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "profilingCategory";
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x200000000ELL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE1B94A8 = v54;
    __cxa_guard_release(&qword_1EE1B8A70);
  }

  *(this + 2) = 0x2E000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE1B9440;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialDefinitionFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialDefinitionFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialDefinitionFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialDefinitionFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v55 = v57;
}

void re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B18, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B18);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8E30);
      qword_1EE1B8E30 = &unk_1F5D058E0;
      __cxa_guard_release(&qword_1EE1B8B18);
    }
  }

  if ((byte_1EE1B892E & 1) == 0)
  {
    v1 = qword_1EE1B8A18;
    if (qword_1EE1B8A18 || (v1 = re::allocInfo_MaterialTechniqueData(a1), qword_1EE1B8A18 = v1, re::initInfo_MaterialTechniqueData(v1, v2, v3, v4), (byte_1EE1B892E & 1) == 0))
    {
      byte_1EE1B892E = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8E30, 0);
      qword_1EE1B8E40 = 0x2800000003;
      dword_1EE1B8E48 = v5;
      word_1EE1B8E4C = 0;
      *&xmmword_1EE1B8E50 = 0;
      *(&xmmword_1EE1B8E50 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8E60 = v1;
      qword_1EE1B8E68 = 0;
      qword_1EE1B8E30 = &unk_1F5D058E0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B8E30);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B8E50 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueGroupData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B20, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B20);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8E70);
      qword_1EE1B8E70 = &unk_1F5D05978;
      __cxa_guard_release(&qword_1EE1B8B20);
    }
  }

  if ((byte_1EE1B892F & 1) == 0)
  {
    v1 = qword_1EE1B8A30;
    if (qword_1EE1B8A30 || (v1 = re::allocInfo_MaterialTechniqueGroupData(a1), qword_1EE1B8A30 = v1, re::initInfo_MaterialTechniqueGroupData(v1, v2, v3, v4), (byte_1EE1B892F & 1) == 0))
    {
      byte_1EE1B892F = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8E70, 0);
      qword_1EE1B8E80 = 0x2800000003;
      dword_1EE1B8E88 = v5;
      word_1EE1B8E8C = 0;
      *&xmmword_1EE1B8E90 = 0;
      *(&xmmword_1EE1B8E90 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8EA0 = v1;
      qword_1EE1B8EA8 = 0;
      qword_1EE1B8E70 = &unk_1F5D05978;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B8E70);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B8E90 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::DebugMapping>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B28, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B28);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8EB0);
      qword_1EE1B8EB0 = &unk_1F5D05A10;
      __cxa_guard_release(&qword_1EE1B8B28);
    }
  }

  if ((byte_1EE1B8930 & 1) == 0)
  {
    v1 = qword_1EE1B89A0;
    if (qword_1EE1B89A0 || (v1 = re::allocInfo_DebugMapping(a1), qword_1EE1B89A0 = v1, re::initInfo_DebugMapping(v1, v2, v3, v4), (byte_1EE1B8930 & 1) == 0))
    {
      byte_1EE1B8930 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8EB0, 0);
      qword_1EE1B8EC0 = 0x2800000003;
      dword_1EE1B8EC8 = v5;
      word_1EE1B8ECC = 0;
      *&xmmword_1EE1B8ED0 = 0;
      *(&xmmword_1EE1B8ED0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8EE0 = v1;
      qword_1EE1B8EE8 = 0;
      qword_1EE1B8EB0 = &unk_1F5D05A10;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B8EB0);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B8ED0 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B30))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B9218);
    qword_1EE1B9218 = &unk_1F5D05AA8;
    __cxa_guard_release(&qword_1EE1B8B30);
  }

  if ((byte_1EE1B8931 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B89B8;
    if (!qword_1EE1B89B8)
    {
      v4 = re::allocInfo_OptionalMaterialParameterProperties(v2);
      qword_1EE1B89B8 = v4;
      re::initInfo_OptionalMaterialParameterProperties(v4, v5, v6, v7);
    }

    if ((byte_1EE1B8931 & 1) == 0)
    {
      byte_1EE1B8931 = 1;
      v8 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9218, 0);
      qword_1EE1B9228 = 0x3000000007;
      dword_1EE1B9230 = v8;
      word_1EE1B9234 = 0;
      *&xmmword_1EE1B9238 = 0;
      *(&xmmword_1EE1B9238 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9248 = v3;
      qword_1EE1B9250 = 0;
      qword_1EE1B9258 = v4;
      qword_1EE1B9260 = 0;
      qword_1EE1B9218 = &unk_1F5D05AA8;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v25, &qword_1EE1B9218);
      if (BYTE8(v25))
      {
        v11 = v26;
      }

      else
      {
        v11 = &v25 + 9;
      }

      if (v25 && (BYTE8(v25) & 1) != 0)
      {
        (*(*v25 + 40))();
      }

      v12 = *(v3 + 32);
      v20 = *(v4 + 2);
      v21 = v12;
      if (v32)
      {
        v19 = v32;
      }

      else
      {
        *&v25 = 0x449AD97C4B77BED4;
        *(&v25 + 1) = "_CompareFunc";
        if (v25)
        {
          if (v25)
          {
          }
        }

        if (!v31)
        {
          v27[0] = 0x449AD97C4B77BED4;
          v27[1] = "_CompareFunc";
          v31 = v25;
          if (v27[0])
          {
            if (v27[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v30, &v25 + 8);
        if (!v31 || (v16 = *v30[2], *&v25 = *(&v31 + 1), *(&v25 + 1) = v16, LODWORD(v26) = -1, (v17 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v30[0] + 768, &v25)) == 0) || !*v17)
        {
          v28 = v31;
          v29 = v21;
        }

        re::StackScratchAllocator::StackScratchAllocator(v27);
        re::TypeBuilder::TypeBuilder(&v25, v27);
        v23 = v20;
        v24 = v21;
        re::TypeBuilder::beginDictionaryType(&v25, &v22, 1, 0x30uLL, 8uLL, &v24, &v23);
        re::TypeBuilder::setConstructor(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v25, v18);
        re::StackScratchAllocator::~StackScratchAllocator(v27);
      }

      xmmword_1EE1B9238 = v19;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B38, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B38);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8EF0);
      qword_1EE1B8EF0 = &unk_1F5D05B48;
      __cxa_guard_release(&qword_1EE1B8B38);
    }
  }

  if ((byte_1EE1B8932 & 1) == 0)
  {
    v1 = qword_1EE1B8A48;
    if (qword_1EE1B8A48 || (v1 = re::allocInfo_MaterialTechniqueQualityLevelSetData(a1), qword_1EE1B8A48 = v1, re::initInfo_MaterialTechniqueQualityLevelSetData(v1, v2, v3, v4), (byte_1EE1B8932 & 1) == 0))
    {
      byte_1EE1B8932 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8EF0, 0);
      qword_1EE1B8F00 = 0x2800000003;
      dword_1EE1B8F08 = v5;
      word_1EE1B8F0C = 0;
      *&xmmword_1EE1B8F10 = 0;
      *(&xmmword_1EE1B8F10 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8F20 = v1;
      qword_1EE1B8F28 = 0;
      qword_1EE1B8EF0 = &unk_1F5D05B48;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B8EF0);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B8F10 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B40))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B9268);
    qword_1EE1B9268 = &unk_1F5D05BE0;
    __cxa_guard_release(&qword_1EE1B8B40);
  }

  if ((byte_1EE1B8933 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v3);
    if ((byte_1EE1B8933 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1B8933 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9268, 0);
      qword_1EE1B9278 = 0x3000000007;
      dword_1EE1B9280 = v6;
      word_1EE1B9284 = 0;
      *&xmmword_1EE1B9288 = 0;
      *(&xmmword_1EE1B9288 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9298 = v2;
      qword_1EE1B92A0 = 0;
      qword_1EE1B92A8 = v5;
      qword_1EE1B92B0 = 0;
      qword_1EE1B9268 = &unk_1F5D05BE0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1B9268);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1B9288 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::introspect_ShaderStage(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8A78, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B8A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A80))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B9040, "ShaderStage", 1, 1, 1, 1);
      qword_1EE1B9040 = &unk_1F5D0C658;
      qword_1EE1B9080 = &re::introspect_ShaderStage(BOOL)::enumTable;
      dword_1EE1B9050 = 9;
      __cxa_guard_release(&qword_1EE1B8A80);
    }

    if (byte_1EE1B8923)
    {
      break;
    }

    byte_1EE1B8923 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B9040, a2);
    v39 = 0x1F785ABD80A53F2;
    v40 = "ShaderStage";
    v43 = 0x31CD534126;
    v44 = "uint8_t";
    v4 = v42[0];
    v5 = v42[1];
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B9080;
      v43 = v4;
      v44 = v5;
      re::TypeBuilder::beginEnumType(v42, &v39, 1, 1, &v43);
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
            *&v41.var0 = 2 * v11;
            v41.var1 = v10;
            re::TypeBuilder::addEnumConstant(v42, v15, &v41);
            if (*&v41.var0)
            {
              if (*&v41.var0)
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
              *&v41.var0 = 2 * v20;
              v41.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v42, v24, &v41);
              if (*&v41.var0)
              {
                if (*&v41.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v42, v26);
      xmmword_1EE1B9060 = v41;
      if (v39)
      {
        if (v39)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v40);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v38);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B8A78))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Unknown";
      qword_1EE1B8C10 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Vertex";
      qword_1EE1B8C18 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Fragment";
      qword_1EE1B8C20 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "GeometryModifier";
      qword_1EE1B8C28 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "SurfaceShader";
      qword_1EE1B8C30 = v37;
      __cxa_guard_release(&qword_1EE1B8A78);
    }
  }
}

void *re::allocInfo_FunctionLink(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D688, "FunctionLink");
    __cxa_guard_release(&qword_1EE1B8A88);
  }

  return &unk_1EE18D688;
}

void re::initInfo_FunctionLink(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v37[0] = 0x341C5717FA628024;
  v37[1] = "FunctionLink";
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  *(this + 2) = v38;
  if ((atomic_load_explicit(&qword_1EE1B8A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A90))
  {
    v7 = re::introspectionAllocator();
    re::introspect_ShaderStage(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "stage";
    *(v9 + 16) = &qword_1EE1B9040;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1B8C70 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "shaderFunctionName";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x800000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1B8C78 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::IntrospectionInfo<re::DynamicString>::get(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "linkedFunctionName";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B8C80 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "linkedFunctionLibrary";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B8C88 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ShaderAPIFlags::Values>>::get(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "linkedShaderAPIs";
    *(v24 + 16) = &qword_1EE1B8F30;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x6000000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1B8C90 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "functionConstants";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x8800000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1B8C98 = v28;
    v29 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v29, v30);
    v31 = (*(*v29 + 32))(v29, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "functionConstantDataMap";
    *(v31 + 16) = &qword_1EE1B92B8;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0xB800000007;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1B8CA0 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "functionConstantData";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0xE800000008;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1B8CA8 = v35;
    __cxa_guard_release(&qword_1EE1B8A90);
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1B8C70;
  *(this + 9) = re::internal::defaultConstruct<re::FunctionLink>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FunctionLink>;
  *(this + 13) = re::internal::defaultConstructV2<re::FunctionLink>;
  *(this + 14) = re::internal::defaultDestructV2<re::FunctionLink>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v36 = v38;
}