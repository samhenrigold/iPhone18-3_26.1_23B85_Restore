uint64_t re::internal::anonymous namespace::RegexBasicToken::match(uint64_t (***a1)(void, uint64_t), char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 24);
  v11 = *(a3 + 4);
  if (v11 < 1)
  {
LABEL_5:
    if (*a3 == 1)
    {
      while (v11 < *(a3 + 8) && ((**a1)(a1, a4) & 1) != 0)
      {
        ++v11;
      }
    }

    v15[0] = a2;
    v13 = *(a4 + 24) - v10;
    v16 = -1;
    v17 = v10;
    v18 = v13;
    return 1;
  }

  else
  {
    v12 = 0;
    while (((**a1)(a1, a4) & 1) != 0)
    {
      ++v12;
      v11 = *(a3 + 4);
      if (v12 >= v11)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *(a4 + 24) = v10;
  }

  return result;
}

__n128 re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>::add(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > v5 << 6)
  {
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 6)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 858;
    v19 = 2048;
    v20 = v4 >> 6;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 6));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 32 * (v4 & 0x3F));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 6)
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
          result = (*(**v3 + 32))(*v3, 2048, 0);
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
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,8ul>::add(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 8 * v5)
  {
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 3)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 858;
    v19 = 2048;
    v20 = v4 >> 3;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v12, &v14, &v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = v7 + 56 * (v4 & 7);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = 0;
  *(v8 + 48) = 0;
  *(&v24 + 1) = 0;
  *&v25 = 0;
  v23 = 0uLL;
  *(v8 + 16) = 3;
  LODWORD(v24) = 3;
  result = v23;
  if (v23 && (v24 & 1) == 0)
  {
    result = (*(*v23 + 40))();
  }

  v10 = *(v8 + 40);
  *(v8 + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  ++*(v8 + 48);
  ++*(a2 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 448, 0);
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
    ++*(v3 + 12);
  }

  return result;
}

uint64_t *re::DynamicOverflowArray<re::internal::anonymous namespace::MatchStackItem *,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a1;
  if (*a1)
  {
    if (*a2 && v4 != *a2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
      return result;
    }
  }

  if (a2[2])
  {
    v10 = a2[1];
    if (v10)
    {
      *a1 = *a2;
      if (v10 >= a1[1])
      {
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, v10);
        if (a2[2])
        {
          v13 = a2 + 3;
        }

        else
        {
          v13 = a2[4];
        }

        v14 = a1[1];
        v15 = *(a1 + 4);
        if (v15)
        {
          v16 = a1 + 3;
        }

        else
        {
          v16 = a1[4];
        }

        if (v14)
        {
          memmove(v16, v13, 8 * v14);
          v15 = *(a1 + 4);
        }

        if (v15)
        {
          v17 = a1 + 3;
        }

        else
        {
          v17 = a1[4];
        }

        v18 = a1[1];
        v19 = &v17[v18];
        if (a2[2])
        {
          v20 = a2 + 3;
        }

        else
        {
          v20 = a2[4];
        }

        memcpy(v19, &v20[v18], 8 * (v10 - v18));
      }

      else
      {
        if (a2[2])
        {
          v11 = a2 + 3;
        }

        else
        {
          v11 = a2[4];
        }

        if (a1[2])
        {
          v12 = a1 + 3;
        }

        else
        {
          v12 = a1[4];
        }

        memmove(v12, v11, 8 * v10);
      }

      a1[1] = v10;
      a2[1] = 0;
      *(a2 + 4) += 4;
      v6 = a1 + 2;
      goto LABEL_37;
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
    *a1 = *a2;
    v6 = a1 + 2;
  }

  else
  {
    a1[1] = 0;
    v6 = a1 + 2;
    *(a1 + 4) += 2;
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
    *a2 = v4;
    a2[1] = 0;
    v8 = a1[4];
    a1[4] = a2[4];
    a2[4] = v8;
    *(a2 + 4) = a2[2] & 0xFFFFFFFE | a1[2] & 1;
    *(a1 + 4) &= ~1u;
    v9 = a1[3];
    a1[3] = a2[3];
    a2[3] = v9;
  }

  *(a2 + 4) += 2;
LABEL_37:
  *v6 += 2;
  return a1;
}

uint64_t re::BucketArray<unsigned long,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<unsigned long,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
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
  return v5 + 8 * (v2 & 7);
}

uint64_t *re::BucketArray<unsigned long,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 64, 0);
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

uint64_t *re::BucketArray<unsigned long,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned long,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::internal::anonymous namespace::RegexTokenGroup::RegexTokenGroupState,64ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 6)
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
          result = (*(**v3 + 32))(*v3, 7680, 0);
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
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned long,8ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<unsigned long,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
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

    v17 = 858;
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

  return *(v5 + 8 * v2) + 8 * (a2 & 7);
}

unint64_t re::BucketArray<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,8ul>::BucketArrayIterator<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>&,re::BucketArray<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,8ul>&,true>::operator*(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
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

    v17 = 858;
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

  return *(v5 + 8 * v2) + 56 * (a2 & 7);
}

uint64_t re::internal::anonymous namespace::RegexTokenCharacterRange::tryMatch(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if ((*(a2 + 16) - v2) < 1)
  {
    return 0;
  }

  v3 = *v2;
  if (v3 < *(a1 + 8) || v3 > *(a1 + 9))
  {
    return 0;
  }

  *(a2 + 24) = v2 + 1;
  return 1;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenCharacterRange>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
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
        v10 = 16 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        v13 = v7;
        do
        {
          *v13 = &unk_1F5CCF140;
          v14 = *v11;
          v11 += 8;
          *(v13 + 4) = v14;
          v13 += 2;
          v12 += 2;
          v10 -= 16;
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

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenCharacterSet>::setCapacity(void *result, unint64_t a2)
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
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
        v11 = 48 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v12[5] = 0;
          *v12 = &unk_1F5CCF100;
          v12[1] = 0;
          v12[2] = 0;
          v12[3] = 0;
          *(v12 + 8) = 0;
          v14 = (v8 + v10 + 8);
          v15 = *(v8 + v10 + 16);
          v12[1] = *v14;
          *v14 = 0;
          v12[2] = v15;
          *(v13 + 16) = 0;
          v16 = v7[v10 / 8 + 3];
          v12[3] = *(v8 + v10 + 24);
          *(v13 + 24) = v16;
          v17 = v7[v10 / 8 + 5];
          v12[5] = *(v8 + v10 + 40);
          *(v13 + 40) = v17;
          *(v13 + 32) = *(v8 + v10 + 32) + 1;
          *(v12 + 8) = LODWORD(v7[v10 / 8 + 4]) + 1;
          *v13 = &unk_1F5CCF100;
          re::DynamicArray<unsigned long>::deinit(v14);
          v10 += 48;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::internal::anonymous namespace::RegexTokenMarker::tryMatch(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  switch(v4)
  {
    case 3:
      v7 = a2[2];
      v6 = a2[3];
      return v6 == v7;
    case 2:
      v6 = a2[3];
      v7 = a2[1];
      return v6 == v7;
    case 1:
      v5 = a2[3];
      if (v5 != a2[2])
      {
        a2[3] = v5 + 1;
        return 1;
      }

      return 0;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid token marker type.", "!Unreachable code", "tryMatch", 511, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid token marker type.");
  __break(1u);
  return result;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenMarker>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
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
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = 16 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        v13 = v7;
        do
        {
          *v13 = &unk_1F5CCF170;
          v14 = *v11;
          v11 += 16;
          *(v13 + 8) = v14;
          v13 += 2;
          v12 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

BOOL re::internal::anonymous namespace::RegexTokenEscapedCharacter::tryMatch(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = *(a1 + 8);
  if (v5 > 0x59)
  {
    if (*(a1 + 8) <= 0x72u)
    {
      if (v5 != 90)
      {
        if (v5 == 100)
        {
          if (v4 != v3 && *v3 - 48 <= 9)
          {
            goto LABEL_55;
          }

          return 0;
        }

        goto LABEL_47;
      }

      return v4 == v3;
    }

    if (v5 != 115)
    {
      if (v5 == 119)
      {
        if (v4 != v3)
        {
          v9 = *v3;
          v10 = v9 != 95 && (v9 - 48) >= 0xA;
          if (!v10 || (v9 & 0xFFFFFFDF) - 65 <= 0x19)
          {
            goto LABEL_55;
          }
        }

        return 0;
      }

      goto LABEL_47;
    }

    if (v4 == v3)
    {
      return 0;
    }

    v14 = *v3;
    if ((v14 & 0x80000000) != 0)
    {
      if (!__maskrune(v14, 0x4000uLL))
      {
        return 0;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x4000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) <= 0x52u)
    {
      if (v5 != 65)
      {
        if (v5 == 68)
        {
          if (v4 != v3 && *v3 - 58 <= 0xFFFFFFF5)
          {
            goto LABEL_55;
          }

          return 0;
        }

LABEL_47:
        if (v4 != v3 && v5 == *v3)
        {
          goto LABEL_55;
        }

        return 0;
      }

      v4 = a2[1];
      return v4 == v3;
    }

    if (v5 != 83)
    {
      if (v5 == 87)
      {
        if (v4 != v3)
        {
          v6 = *v3;
          v7 = v6 != 95 && (v6 - 48) >= 0xA;
          if (v7 && (v6 & 0xFFFFFFDF) - 65 >= 0x1A)
          {
            goto LABEL_55;
          }
        }

        return 0;
      }

      goto LABEL_47;
    }

    if (v4 == v3)
    {
      return 0;
    }

    v12 = *v3;
    if ((v12 & 0x80000000) != 0 ? __maskrune(v12, 0x4000uLL) : *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x4000)
    {
      return 0;
    }
  }

  v3 = a2[3];
LABEL_55:
  a2[3] = v3 + 1;
  return 1;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenEscapedCharacter>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
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
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = 16 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        v13 = v7;
        do
        {
          *v13 = &unk_1F5CCF1A0;
          v14 = *v11;
          v11 += 16;
          *(v13 + 8) = v14;
          v13 += 2;
          v12 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

BOOL re::internal::anonymous namespace::RegexTokenCharacter::tryMatch(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 24);
  v4 = *v3;
  if (v2 == v4)
  {
    *(a2 + 24) = v3 + 1;
  }

  return v2 == v4;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenCharacter>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
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
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = 16 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        v13 = v7;
        do
        {
          *v13 = &unk_1F5CCF1D0;
          v14 = *v11;
          v11 += 16;
          *(v13 + 8) = v14;
          v13 += 2;
          v12 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t re::internal::anonymous namespace::RegexOperationList::matchFrom(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (v6 > a2)
  {
    v37 = -a2;
    v11 = a2;
    do
    {
      v12 = *(a1 + 16);
      if (v12 <= v11)
      {
        goto LABEL_31;
      }

      v13 = *a3;
      v4 = *(*(a1 + 32) + 8 * v11);
      v5 = *(*a3 + 296);
      if (v5 <= v4)
      {
LABEL_35:
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v42 = 797;
        v43 = 2048;
        v44 = v4;
        v45 = 2048;
        v46 = v5;
        _os_log_send_and_compose_impl(v33, &v38, &v47, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v42 = 797;
        v43 = 2048;
        v44 = v4;
        v45 = 2048;
        v46 = v5;
        _os_log_send_and_compose_impl(v36, &v38, &v47, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
        _os_crash_msg();
        __break(1u);
      }

      v14 = (v13[39] + 24 * v4);
      v4 = *v14;
      v5 = v13[32];
      if (v5 <= *v14)
      {
        goto LABEL_39;
      }

      {
        ++v11;
      }

      else
      {
        v15 = v11 - 1;
        do
        {
          v4 = v15;
          v11 = v15 + 1;
          if (v15 + 1 <= a2)
          {
            break;
          }

          v12 = *(a1 + 16);
          if (v12 <= v15)
          {
            v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v47 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v39 = 136315906;
            v40 = "operator[]";
            v41 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v21 = 3;
            }

            else
            {
              v21 = 2;
            }

            v42 = 797;
            v43 = 2048;
            v44 = v4;
            v45 = 2048;
            v46 = v12;
            _os_log_send_and_compose_impl(v21, &v38, &v47, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
            _os_crash_msg();
            __break(1u);
LABEL_23:
            v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v47 = 0u;
            v22 = MEMORY[0x1E69E9C10];
            v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v39 = 136315906;
            v40 = "operator[]";
            v41 = 1024;
            if (v23)
            {
              v24 = 3;
            }

            else
            {
              v24 = 2;
            }

            v42 = 797;
            v43 = 2048;
            v44 = v5;
            v45 = 2048;
            v46 = v12;
            _os_log_send_and_compose_impl(v24, &v38, &v47, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
            _os_crash_msg();
            __break(1u);
LABEL_27:
            v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v47 = 0u;
            v25 = MEMORY[0x1E69E9C10];
            v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v39 = 136315906;
            v40 = "operator[]";
            v41 = 1024;
            if (v26)
            {
              v27 = 3;
            }

            else
            {
              v27 = 2;
            }

            v42 = 797;
            v43 = 2048;
            v44 = v5;
            v45 = 2048;
            v46 = v12;
            _os_log_send_and_compose_impl(v27, &v38, &v47, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
            _os_crash_msg();
            __break(1u);
LABEL_31:
            v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v47 = 0u;
            v28 = MEMORY[0x1E69E9C10];
            v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v39 = 136315906;
            v40 = "operator[]";
            v41 = 1024;
            if (v29)
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            v42 = 797;
            v43 = 2048;
            v44 = v11;
            v45 = 2048;
            v46 = v12;
            _os_log_send_and_compose_impl(v30, &v38, &v47, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
            _os_crash_msg();
            __break(1u);
            goto LABEL_35;
          }

          v16 = *a3;
          v5 = *(*(a1 + 32) + 8 * v4);
          v12 = *(*a3 + 296);
          if (v12 <= v5)
          {
            goto LABEL_23;
          }

          v17 = (v16[39] + 24 * v5);
          v5 = *v17;
          v12 = v16[32];
          if (v12 <= *v17)
          {
            goto LABEL_27;
          }

          v15 = v4 - 1;
        }

        while (!v18);
        if (v37 + v4 == -1)
        {
          return 0;
        }
      }
    }

    while (v11 < v6);
  }

  return 1;
}

uint64_t re::internal::anonymous namespace::RegexToken::unwindMatch(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v85 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1u:
        v10 = *(a1 + 1);
        v11 = *(*a3 + 16);
        if (v11 > v10)
        {
          v12 = *(*a3 + 32);
          goto LABEL_44;
        }

        goto LABEL_93;
      case 2u:
        v10 = *(a1 + 1);
        v11 = *(*a3 + 56);
        if (v11 > v10)
        {
          v12 = *(*a3 + 72);
          goto LABEL_44;
        }

        goto LABEL_85;
      case 3u:
        v10 = *(a1 + 1);
        v11 = *(*a3 + 96);
        if (v11 > v10)
        {
          v12 = *(*a3 + 112);
LABEL_44:
          v13 = (v12 + 16 * v10);
          goto LABEL_45;
        }

        goto LABEL_77;
    }

LABEL_102:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid token type.", "!Unreachable code", "unwindMatch", 948);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid token type.");
    __break(1u);
    return result;
  }

  if (v9 == 4)
  {
    v10 = *(a1 + 1);
    v11 = *(*a3 + 216);
    if (v11 > v10)
    {
      v12 = *(*a3 + 232);
      goto LABEL_44;
    }

    goto LABEL_97;
  }

  if (v9 != 5)
  {
    if (v9 == 6)
    {
      v10 = *(a1 + 1);
      v11 = *(*a3 + 176);
      if (v11 > v10)
      {
        v13 = (*(*a3 + 192) + 48 * v10);
LABEL_45:
      }

      goto LABEL_81;
    }

    goto LABEL_102;
  }

  v10 = *(a1 + 1);
  v11 = *(*a3 + 136);
  if (v11 <= v10)
  {
LABEL_89:
    *v73 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v69 = 136315906;
    *&v69[4] = "operator[]";
    *&v69[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v69[14] = 797;
    *&v69[18] = 2048;
    *v70 = v10;
    *&v70[8] = 2048;
    *&v70[10] = v11;
    _os_log_send_and_compose_impl(v55, v73, &v80, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_93:
    *v73 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v69 = 136315906;
    *&v69[4] = "operator[]";
    *&v69[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v69[14] = 797;
    *&v69[18] = 2048;
    *v70 = v10;
    *&v70[8] = 2048;
    *&v70[10] = v11;
    _os_log_send_and_compose_impl(v58, v73, &v80, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_97:
    *v73 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v69 = 136315906;
    *&v69[4] = "operator[]";
    *&v69[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v69[14] = 797;
    *&v69[18] = 2048;
    *v70 = v10;
    *&v70[8] = 2048;
    *&v70[10] = v11;
    _os_log_send_and_compose_impl(v61, v73, &v80, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_101:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  v14 = *(a4 + 40);
  if (!v14)
  {
    goto LABEL_101;
  }

  v15 = *(*a3 + 152) + 40 * v10;
  v17 = v16[1];
  v66 = *v16;
  v67 = v17;
  --*(a4 + 40);
  ++*(a4 + 48);
  v10 = v18;
  v19 = *(v15 + 16);
  v65 = v8;
  if (*v18)
  {
LABEL_25:
    v21 = *(v10 + 104);
    if (!v21 || v21 < *(v8 + 4))
    {
LABEL_39:
      result = 0;
      a3[3] = v67;
      return result;
    }

    v4 = 40;
    while (1)
    {
      v20 = *re::BucketArray<unsigned long,8ul>::operator[](v10 + 64, v21 - 1);
      v11 = *(v15 + 16);
      if (v11 <= v20)
      {
        goto LABEL_69;
      }

      v11 = *(*(v15 + 32) + 8 * v20);
      v5 = *(*a3 + 336);
      if (v5 <= v11)
      {
        goto LABEL_73;
      }

      {
        goto LABEL_50;
      }

      if (++v20 < v19)
      {
        break;
      }

LABEL_37:
      --*(v10 + 48);
      ++*(v10 + 56);
      re::BucketArray<unsigned long,8ul>::operator[](v10 + 64, *(v10 + 104) - 1);
      v23 = *(v10 + 104);
      ++*(v10 + 112);
      v21 = v23 - 1;
      *(v10 + 104) = v21;
      if (!v21 || v21 < *(v65 + 4))
      {
        goto LABEL_39;
      }
    }

    v64 = a3[3];
    while (1)
    {
      *v69 = 0;
      *&v69[8] = 0;
      *&v69[16] = 1;
      *&v70[12] = 0;
      v71 = 0;
      *&v70[4] = 0;
      v72 = 0;
      v11 = *(v15 + 16);
      if (v11 <= v20)
      {
        break;
      }

      v11 = *(*(v15 + 32) + 8 * v20);
      v5 = *(*a3 + 336);
      if (v5 <= v11)
      {
        goto LABEL_57;
      }

      {
        *re::BucketArray<unsigned long,8ul>::addUninitialized(v10 + 64) = v20;
        v25 = a3[3] - v64;
        *&v67 = v64;
        *(&v67 + 1) = v25;
        return 1;
      }

      if (v19 == ++v20)
      {
        goto LABEL_37;
      }
    }

    v68 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    v74 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v75 = 797;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v11;
    _os_log_send_and_compose_impl(v28, &v68, &v80, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v68 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    v74 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v75 = 797;
    v76 = 2048;
    v77 = v11;
    v78 = 2048;
    v79 = v5;
    _os_log_send_and_compose_impl(v31, &v68, &v80, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v68 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    v74 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v75 = 797;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v11;
    _os_log_send_and_compose_impl(v34, &v68, &v80, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v68 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    v74 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v75 = 797;
    v76 = 2048;
    v77 = v11;
    v78 = 2048;
    v79 = v4;
    _os_log_send_and_compose_impl(v37, &v68, &v80, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_69:
    *v73 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v69 = 136315906;
    *&v69[4] = "operator[]";
    *&v69[12] = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    *&v69[14] = 797;
    *&v69[18] = 2048;
    *v70 = v20;
    *&v70[8] = 2048;
    *&v70[10] = v11;
    _os_log_send_and_compose_impl(v40, v73, &v80, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_73:
    *v73 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v69 = 136315906;
    *&v69[4] = "operator[]";
    *&v69[12] = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    *&v69[14] = 797;
    *&v69[18] = 2048;
    *v70 = v11;
    *&v70[8] = 2048;
    *&v70[10] = v5;
    _os_log_send_and_compose_impl(v43, v73, &v80, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_77:
    *v73 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v69 = 136315906;
    *&v69[4] = "operator[]";
    *&v69[12] = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    *&v69[14] = 797;
    *&v69[18] = 2048;
    *v70 = v10;
    *&v70[8] = 2048;
    *&v70[10] = v11;
    _os_log_send_and_compose_impl(v46, v73, &v80, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_81:
    *v73 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v69 = 136315906;
    *&v69[4] = "operator[]";
    *&v69[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v69[14] = 797;
    *&v69[18] = 2048;
    *v70 = v10;
    *&v70[8] = 2048;
    *&v70[10] = v11;
    _os_log_send_and_compose_impl(v49, v73, &v80, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_85:
    *v73 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v69 = 136315906;
    *&v69[4] = "operator[]";
    *&v69[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v69[14] = 797;
    *&v69[18] = 2048;
    *v70 = v10;
    *&v70[8] = 2048;
    *&v70[10] = v11;
    _os_log_send_and_compose_impl(v52, v73, &v80, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
    goto LABEL_89;
  }

  if (*(v18 + 104) >= *(v8 + 8) || !v19)
  {
LABEL_24:
    *v10 = 1;
    v8 = v65;
    goto LABEL_25;
  }

  v20 = 0;
  v5 = 40;
  while (1)
  {
    *v69 = 0;
    *&v69[8] = 0;
    *&v69[16] = 1;
    *&v70[12] = 0;
    v71 = 0;
    *&v70[4] = 0;
    v72 = 0;
    v11 = *(v15 + 16);
    if (v11 <= v20)
    {
      goto LABEL_61;
    }

    v11 = *(*(v15 + 32) + 8 * v20);
    v4 = *(*a3 + 336);
    if (v4 <= v11)
    {
      goto LABEL_65;
    }

    {
      break;
    }

    if (v19 == ++v20)
    {
      goto LABEL_24;
    }
  }

  *re::BucketArray<unsigned long,8ul>::addUninitialized(v10 + 64) = v20;
LABEL_50:
  *(&v67 + 1) = a3[3] - v67;
  return 1;
}

uint64_t re::internal::anonymous namespace::RegexBasicToken::unwindMatch(uint64_t (***a1)(void, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  if (v4)
  {
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = v9;
      if (*a2 == 1)
      {
        if (*(a2 + 4) < v10)
        {
          v12 = *(a3 + 24) - 1;
          *(a3 + 24) = v12;
          *(v9 + 24) = v12 - *(v9 + 16);
          return 1;
        }

        v14 = *(v9 + 16);
      }

      else
      {
        v13 = (**a1)(a1, a3);
        v14 = *(v11 + 16);
        if (v13)
        {
          v15 = *(a3 + 24) - v14;
          *(v11 + 24) = v15;
          if (v15 <= *(a2 + 8))
          {
            return 1;
          }
        }
      }

      *(a3 + 24) = v14;
    }

    result = 0;
    --*(a4 + 40);
    ++*(a4 + 48);
  }

  else
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

unint64_t re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
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

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 6)
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

  return *(v5 + 8 * v2) + 32 * (a2 & 0x3F);
}

unint64_t re::BucketArray<re::internal::anonymous namespace::RegexTokenGroup::RegexTokenGroupState,64ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
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

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 6)
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

  return *(v5 + 8 * v2) + 120 * (a2 & 0x3F);
}

re *std::__function::__func<re::internal::regularExpressionCreate(char const*)::$_0,std::allocator<re::internal::regularExpressionCreate(char const*)::$_0>,void ()(re::internal::RegexRoot *)>::operator()(re *result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit((v2 + 45));
    v4 = v2[40];
    if (v4)
    {
      v5 = v2[44];
      if (v5)
      {
        v6 = v2[42];
        if (v6)
        {
          v7 = 40 * v6;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v5);
            v5 += 40;
            v7 -= 40;
          }

          while (v7);
          v4 = v2[40];
          v5 = v2[44];
        }

        (*(*v4 + 40))(v4, v5);
      }

      v2[44] = 0;
      v2[41] = 0;
      v2[42] = 0;
      v2[40] = 0;
      ++*(v2 + 86);
    }

    v8 = v2[35];
    if (v8)
    {
      if (v2[39])
      {
        (*(*v8 + 40))(v8);
      }

      v2[39] = 0;
      v2[36] = 0;
      v2[37] = 0;
      v2[35] = 0;
      ++*(v2 + 76);
    }

    v9 = v2[30];
    if (v9)
    {
      if (v2[34])
      {
        (*(*v9 + 40))(v9);
      }

      v2[34] = 0;
      v2[31] = 0;
      v2[32] = 0;
      v2[30] = 0;
      ++*(v2 + 66);
    }

    v10 = v2[25];
    if (v10)
    {
      if (v2[29])
      {
        (*(*v10 + 40))(v10);
      }

      v2[29] = 0;
      v2[26] = 0;
      v2[27] = 0;
      v2[25] = 0;
      ++*(v2 + 56);
    }

    v11 = v2[20];
    if (v11)
    {
      v12 = v2[24];
      if (v12)
      {
        v13 = v2[22];
        if (v13)
        {
          v14 = &v12[6 * v13];
          v15 = v2[24];
          v16 = v15;
          do
          {
            *v16 = &unk_1F5CCF100;
            v16 += 6;
            re::DynamicArray<unsigned long>::deinit((v12 + 1));
            v15 += 6;
            v12 = v16;
          }

          while (v16 != v14);
          v11 = v2[20];
          v12 = v2[24];
        }

        (*(*v11 + 40))(v11, v12);
      }

      v2[24] = 0;
      v2[21] = 0;
      v2[22] = 0;
      v2[20] = 0;
      ++*(v2 + 46);
    }

    v17 = v2[15];
    if (v17)
    {
      v18 = v2[19];
      if (v18)
      {
        v19 = v2[17];
        if (v19)
        {
          v20 = 40 * v19;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v18);
            v18 += 40;
            v20 -= 40;
          }

          while (v20);
          v17 = v2[15];
          v18 = v2[19];
        }

        (*(*v17 + 40))(v17, v18);
      }

      v2[19] = 0;
      v2[16] = 0;
      v2[17] = 0;
      v2[15] = 0;
      ++*(v2 + 36);
    }

    v21 = v2[10];
    if (v21)
    {
      if (v2[14])
      {
        (*(*v21 + 40))(v21);
      }

      v2[14] = 0;
      v2[11] = 0;
      v2[12] = 0;
      v2[10] = 0;
      ++*(v2 + 26);
    }

    v22 = v2[5];
    if (v22)
    {
      if (v2[9])
      {
        (*(*v22 + 40))(v22);
      }

      v2[9] = 0;
      v2[6] = 0;
      v2[7] = 0;
      v2[5] = 0;
      ++*(v2 + 16);
    }

    if (*v2)
    {
      if (v2[4])
      {
        (*(**v2 + 40))(*v2);
      }

      v2[4] = 0;
      v2[1] = 0;
      v2[2] = 0;
      *v2 = 0;
      ++*(v2 + 6);
    }

    v23 = *(*v3 + 40);

    return v23(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::regularExpressionCreate(char const*)::$_0,std::allocator<re::internal::regularExpressionCreate(char const*)::$_0>,void ()(re::internal::RegexRoot *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::internal::RegexRoot *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::internal::RegexRoot,std::function<void ()(re::internal::RegexRoot*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::internal::RegexRoot *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::internal::RegexRoot *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::internal::RegexRoot *)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::assertLog(v4, v5);
}

size_t re::internal::FixedLengthString::append(size_t this, const char *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = this;
    strncpy(*this, a2, v2);
    *(*v3 + *(v3 + 8) - 1) = 0;
    this = strlen(*v3);
    v4 = *(v3 + 8) - this;
    *v3 += this;
    *(v3 + 8) = v4;
  }

  return this;
}

void re::internal::logStackTrace(re::internal *this, const char *a2, const char *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics() && re::internal::logStackTrace(char const*,char const*)::nInvocations <= 0x3F)
  {
    ++re::internal::logStackTrace(char const*,char const*)::nInvocations;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *v35 = 0u;
    v36 = 0u;
    v5 = backtrace(v35, 64);
    v6 = backtrace_symbols(v35, v5);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = "";
      if (a2)
      {
        v7 = a2;
      }

      v8 = "Stack trace:";
      if (this)
      {
        v8 = this;
      }

      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = v8;
      _os_log_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s%s", buf, 0x16u);
    }

    v9 = v5 - 1;
    if (v9 >= 3)
    {
      v10 = "";
      if (a2)
      {
        v10 = a2;
      }

      v29 = v10;
      v11 = 2;
      v12 = MEMORY[0x1E69E9C10];
      do
      {
        v13 = v6[v11];
        v14 = *v13;
        v15 = v13;
        while ((v14 & 0xFFFFFFDF) != 0)
        {
          v16 = *++v15;
          v14 = v16;
        }

        while (v14 == 32)
        {
          v17 = *++v15;
          v14 = v17;
        }

        if ((v14 & 0xFFFFFFDF) != 0)
        {
          do
          {
            v18 = *++v15;
            v14 = v18;
          }

          while ((v18 & 0xFFFFFFDF) != 0);
          while (v14 == 32)
          {
            v19 = *++v15;
            v14 = v19;
          }
        }

        v20 = v15;
        if (v14)
        {
          v20 = v15 + 1;
          v21 = *(v15 + 1);
          *v15 = 0;
          while ((v21 & 0xFFFFFFDF) != 0)
          {
            v22 = *++v20;
            v21 = v22;
          }

          while (v21 == 32)
          {
            v23 = *++v20;
            v21 = v23;
          }

          if (v21)
          {
            v24 = 0;
            v15 = v20;
            while (v21 != 32 || v24)
            {
              v25 = v24 - 1;
              if (v21 == 91)
              {
                ++v24;
              }

              if (v21 == 93)
              {
                v24 = v25;
              }

              v26 = *++v15;
              v21 = v26;
              if (!v26)
              {
                goto LABEL_41;
              }
            }

            *v15 = 0;
          }

          else
          {
            v15 = v20;
          }
        }

LABEL_41:
        v27 = __cxa_demangle(v20, 0, 0, 0);
        *buf = &buf[16];
        *&buf[8] = 256;
        re::internal::FixedLengthString::append(buf, v13);
        re::internal::FixedLengthString::append(buf, " ");
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = v20;
        }

        re::internal::FixedLengthString::append(buf, v28);
        re::internal::FixedLengthString::append(buf, " ");
        re::internal::FixedLengthString::append(buf, v15 + 1);
        if (v27)
        {
          free(v27);
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 136315394;
          v31 = v29;
          v32 = 2080;
          v33 = &buf[16];
          _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "%s%s", v30, 0x16u);
        }

        ++v11;
      }

      while (v11 != v9);
    }

    free(v6);
  }
}

void re::readBooleanEnvironmentVariable(re *this@<X0>, uint64_t a2@<X8>)
{
  v9 = objc_alloc_init(MEMORY[0x1E696AE30]);
  v4 = [v9 environment];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v6 = [v4 objectForKey:v5];
  v7 = [v6 lowercaseString];

  if (v7)
  {
    if ([v7 isEqualToString:@"1"] || objc_msgSend(v7, "isEqualToString:", @"true"))
    {
      *a2 = 257;
    }

    else
    {
      v8 = [v7 isEqualToString:@"yes"];
      *a2 = 1;
      if (v8)
      {
        *(a2 + 1) = 1;
      }

      else
      {
        *(a2 + 1) = 0;
      }
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t *re::foundationCoreLogObjects(re *this)
{
  {
    re::foundationCoreLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Core");
  }

  return &re::foundationCoreLogObjects(void)::logObjects;
}

size_t re::packCharArrayToUInt64ForAriadne(re *this, const char *a2)
{
  v2 = a2;
  result = strlen(this);
  if (result)
  {
    if (result <= v2)
    {
      return 0;
    }

    v5 = result - v2;
    if (v5 >= 8)
    {
      LODWORD(v5) = 8;
    }

    v6 = result <= 8 ? result : v5;
    if (v6 < 1)
    {
      return 0;
    }

    else
    {
      v7 = 0;
      v8 = v6 + v2;
      do
      {
        result = v7 | *(this + v8 - 1);
        v7 = result << 8;
        --v8;
      }

      while (v8 > v2);
    }
  }

  return result;
}

uint64_t re::internal::enableSignposts(re::internal *this, unsigned int a2)
{
  {
    v4 = a2;
    v5 = this;
    LOBYTE(a2) = v4;
    LOBYTE(this) = v5;
    if (v3)
    {
      re::Defaults::intValue(&v6, "enableSignposts", v4);
      re::internal::enableSignposts(BOOL,BOOL)::value = v6 ^ 1 | (HIDWORD(v6) != 0);
      LOBYTE(a2) = v4;
      LOBYTE(this) = v5;
    }
  }

  if (this)
  {
    re::internal::enableSignposts(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableSignposts(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

uint64_t re::internal::enableHighFrequencyTracing(re::internal *this, unsigned int a2)
{
  {
    v5 = a2;
    v6 = this;
    LOBYTE(a2) = v5;
    LOBYTE(this) = v6;
    if (v3)
    {
      re::Defaults::intValue(&v7, "enableHighFrequencyTracing", v5);
      v4 = v7;
      if (!HIDWORD(v7))
      {
        v4 = 0;
      }

      re::internal::enableHighFrequencyTracing(BOOL,BOOL)::value = v4;
      LOBYTE(a2) = v5;
      LOBYTE(this) = v6;
    }
  }

  if (this)
  {
    re::internal::enableHighFrequencyTracing(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableHighFrequencyTracing(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

uint64_t re::internal::enableHighFrequencyNetworkTracing(re::internal *this, unsigned int a2)
{
  {
    v5 = a2;
    v6 = this;
    LOBYTE(a2) = v5;
    LOBYTE(this) = v6;
    if (v3)
    {
      re::Defaults::intValue(&v7, "enableHighFrequencyNetworkTracing", v5);
      v4 = v7;
      if (!HIDWORD(v7))
      {
        v4 = 0;
      }

      re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value = v4;
      LOBYTE(a2) = v5;
      LOBYTE(this) = v6;
    }
  }

  if (this)
  {
    re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

void re::FoundationErrorCategoryImpl::~FoundationErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

void *re::FoundationErrorCategoryImpl::message@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1 > 299)
  {
    if (a1 == 300)
    {
      v2 = "File I/O error";
      return std::string::basic_string[abi:nn200100]<0>(a2, v2);
    }

    if (a1 == 400)
    {
      v2 = "Serialization error";
      return std::string::basic_string[abi:nn200100]<0>(a2, v2);
    }

LABEL_9:
    v2 = "Unknown REFoundation error";
    return std::string::basic_string[abi:nn200100]<0>(a2, v2);
  }

  if (a1 == 100)
  {
    v2 = "Unexpected error";
    return std::string::basic_string[abi:nn200100]<0>(a2, v2);
  }

  if (a1 != 200)
  {
    goto LABEL_9;
  }

  v2 = "JSON serialization error";
  return std::string::basic_string[abi:nn200100]<0>(a2, v2);
}

uint64_t re::getReleaseForDeploymentTarget(uint64_t result, __n128 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2.n128_u32[1];
  v3 = a2.n128_u32[2];
  v4 = a2.n128_u32[0];
  if (result <= 2)
  {
    if (result == 1)
    {
      v5 = "All";
      goto LABEL_28;
    }

    if (result != 2)
    {
LABEL_27:
      v5 = "None";
LABEL_28:
      v8 = *re::foundationCoreLogObjects(result);
      result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v11 = 136315138;
        *v12 = v5;
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Provided platform (%s) is not valid or unsupported.", &v11, 0xCu);
      }

      goto LABEL_30;
    }

    if (a2.n128_i32[0] > 16)
    {
      if (a2.n128_i32[0] <= 18)
      {
        if (a2.n128_u32[0] != 17)
        {
          goto LABEL_42;
        }

        return 9;
      }

      if (a2.n128_u32[0] == 19 || a2.n128_u32[0] == 26)
      {
        return 15;
      }
    }

    else
    {
      if (a2.n128_i32[0] > 14)
      {
        if (a2.n128_u32[0] != 15)
        {
          v6 = a2.n128_u32[1] <= 3;
          goto LABEL_56;
        }

        v6 = a2.n128_u32[1] <= 3;
LABEL_69:
        v7 = 5;
LABEL_70:
        if (v6)
        {
          return v7;
        }

        else
        {
          return v7 + 1;
        }
      }

      if (a2.n128_u32[0] == 13)
      {
        v6 = a2.n128_u32[1] <= 3;
LABEL_67:
        v7 = 1;
        goto LABEL_70;
      }

      if (a2.n128_u32[0] == 14)
      {
        v6 = a2.n128_u32[1] <= 4;
        v7 = 3;
        goto LABEL_70;
      }
    }

    if (a2.n128_i32[0] <= 26)
    {
      v5 = "iOS";
      goto LABEL_30;
    }

    return 15;
  }

  if (result == 3)
  {
    if (a2.n128_i32[0] <= 13)
    {
      if (a2.n128_i32[0] <= 11)
      {
        if (a2.n128_u32[0] != 10)
        {
          if (a2.n128_u32[0] == 11)
          {
            if (a2.n128_i32[1] < 3)
            {
              return 3;
            }

            else
            {
              return 4;
            }
          }

          goto LABEL_52;
        }

        if (a2.n128_u32[1] != 15)
        {
          if (a2.n128_i32[1] > 15)
          {
            return 2;
          }

          goto LABEL_76;
        }

        v6 = a2.n128_u32[2] <= 3;
        goto LABEL_67;
      }

      if (a2.n128_u32[0] != 12)
      {
        v6 = a2.n128_u32[1] <= 2;
LABEL_56:
        v7 = 7;
        goto LABEL_70;
      }

      v6 = a2.n128_u32[1] <= 2;
      goto LABEL_69;
    }

    if (a2.n128_i32[0] > 15)
    {
      if (a2.n128_u32[0] == 16 || a2.n128_u32[0] == 26)
      {
        return 15;
      }

LABEL_52:
      if (a2.n128_i32[0] > 26)
      {
        return 15;
      }

LABEL_76:
      v5 = "macOS";
      goto LABEL_30;
    }

    if (a2.n128_u32[0] != 14)
    {
      goto LABEL_42;
    }

    return 9;
  }

  if (result != 4)
  {
    if (result == 5)
    {
      result = 15;
      if (a2.n128_u32[0] == 19 || a2.n128_i32[0] > 25)
      {
        return result;
      }

      v5 = "tvOS";
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2.n128_i32[0] > 2)
  {
    result = 15;
    if (a2.n128_u32[0] == 3 || a2.n128_u32[0] == 26)
    {
      return result;
    }

LABEL_38:
    if (a2.n128_i32[0] <= 26)
    {
      v5 = "visionOS";
LABEL_30:
      v9 = *re::foundationCoreLogObjects(result);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 67109890;
        *v12 = v4;
        *&v12[4] = 1024;
        *&v12[6] = v2;
        v13 = 1024;
        v14 = v3;
        v15 = 2080;
        v16 = v5;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Provided version %i.%i.%i for platform (%s) is not valid or unsupported.", &v11, 0x1Eu);
      }

      return 0xFFFFFFFFLL;
    }

    return 15;
  }

  if (a2.n128_u32[0] == 1)
  {
    v6 = a2.n128_u32[1] <= 0;
    v7 = 10;
    goto LABEL_70;
  }

  if (a2.n128_u32[0] != 2)
  {
    goto LABEL_38;
  }

LABEL_42:
  if (a2.n128_u32[1] <= 3)
  {
    v10 = 13;
  }

  else
  {
    v10 = 14;
  }

  if (a2.n128_i32[1] >= 2)
  {
    return v10;
  }

  else
  {
    return 12;
  }
}

double re::getDeploymentTargetForRelease(_BOOL8 a1, unsigned int a2, double a3, int32x4_t a4)
{
  v5 = a1;
  *&v15[5] = *MEMORY[0x1E69E9840];
  v6 = a2 - 1;
  if ((a1 - 1) > 4)
  {
    v7 = "None";
  }

  else
  {
    v7 = off_1E871BDF0[a1 - 1];
  }

  if (v6 >= 0xF)
  {
    v8 = *re::foundationCoreLogObjects(a1);
    a1 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      v14 = 67109378;
      v15[0] = a2;
      LOWORD(v15[1]) = 2080;
      *(&v15[1] + 2) = v7;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Provided version (%i) is not matching any official %s release.", &v14, 0x12u);
    }
  }

  if (v5 <= 3)
  {
    if (v5 == 2)
    {
      *&v9 = 0;
      if (v6 <= 0xE)
      {
        goto LABEL_20;
      }

      return *&v9;
    }

    if (v5 == 3)
    {
      *&v9 = 0;
      if (v6 <= 0xE)
      {
LABEL_20:
        v9 = v10[a2];
        return *&v9;
      }

      return *&v9;
    }

LABEL_16:
    v11 = *re::foundationCoreLogObjects(a1);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    *&v9 = 0;
    if (v12)
    {
      v14 = 136315138;
      *v15 = v7;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Provided platform (%s) is not valid or unsupported.", &v14, 0xCu);
      *&v9 = 0;
    }

    return *&v9;
  }

  if (v5 == 4)
  {
    *&v9 = 0;
    if (v6 <= 0xE)
    {
      a4.i32[0] = 1;
    }

    return *&v9;
  }

  if (v5 != 5)
  {
    goto LABEL_16;
  }

  *&v9 = 0;
  if (v6 <= 0xE)
  {
    goto LABEL_20;
  }

  return *&v9;
}

void re::getRequiredDeploymentTargetsForRelease(_anonymous_namespace_ *a1@<X0>, re::DynamicString *a2@<X8>)
{
  v2 = a1;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);
  DeploymentTargetForRelease = re::getDeploymentTargetForRelease(3, v2, v4, v5);
  if (SLODWORD(DeploymentTargetForRelease) <= 0)
  {
    v25 = re::getDeploymentTargetForRelease(2, v2, DeploymentTargetForRelease, v8);
    v23 = re::getDeploymentTargetForRelease(5, v2, v25, v26);
  }

  else
  {
    re::DynamicString::appendf(a2, "macOS %i.%i.%i", LODWORD(DeploymentTargetForRelease), HIDWORD(DeploymentTargetForRelease), v7);
    v11 = re::getDeploymentTargetForRelease(2, v2, v9, v10);
    v13 = *(a2 + 1);
    if (v13)
    {
      v14 = v13 >> 1;
    }

    else
    {
      v14 = v13 >> 1;
    }

    if (v14)
    {
      v15 = ", ";
    }

    else
    {
      v15 = &str_2_53;
    }

    re::DynamicString::appendf(a2, "%siOS %i.%i.%i", v15, LODWORD(v11), HIDWORD(v11), v12);
    v18 = re::getDeploymentTargetForRelease(5, v2, v16, v17);
    v20 = *(a2 + 1);
    if (v20)
    {
      v21 = v20 >> 1;
    }

    else
    {
      v21 = v20 >> 1;
    }

    if (v21)
    {
      v22 = ", ";
    }

    else
    {
      v22 = &str_2_53;
    }

    re::DynamicString::appendf(a2, "%stvOS %i.%i.%i", v22, LODWORD(v18), HIDWORD(v18), v19);
  }

  v27 = re::getDeploymentTargetForRelease(4, v2, v23, v24);
  if (SLODWORD(v27) >= 1)
  {
    v29 = *(a2 + 1);
    if (v29)
    {
      v30 = v29 >> 1;
    }

    else
    {
      v30 = v29 >> 1;
    }

    if (v30)
    {
      v31 = ", ";
    }

    else
    {
      v31 = &str_2_53;
    }

    re::DynamicString::appendf(a2, "%svisionOS %i.%i.%i", v31, LODWORD(v27), HIDWORD(v27), v28);
  }
}

double re::EventBus::EventBus(re::EventBus *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CCF2F0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 172) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(this + 188) = 0x7FFFFFFFLL;
  return result;
}

void re::EventBus::~EventBus(re::EventBus *this)
{
  v2 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 19);
  v3 = *(this + 13);
  if (v3)
  {
    if (*(this + 18))
    {
      (*(*v3 + 40))(v3, v2);
    }

    *(this + 18) = 0;
    *(this + 104) = 0u;
    *(this + 120) = 0u;
    *(this + 34) = 0;
  }

  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::EventBus::~EventBus(this);

  JUMPOUT(0x1E6906520);
}

void *re::EventBus::EventInfo::publish(re::EventBus::EventInfo *this, size_t a2, const void *a3, const void *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  if (a4)
  {
    if (a2)
    {
      if (*(this + 23))
      {
        v46 = a2;
        v47 = a4;
        v10 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(this + 27, &v46);
        if (v10 != -1)
        {
          v11 = (*(this + 28) + 144 * v10);
          v12 = v11[4];
          if (v12)
          {
            v13 = v11[6];
            v14 = v12 << 6;
            v4 = v13 + 56;
            do
            {
              *&v56 = a2;
              *v49 = a3;
              if ((*(**v4 + 16))(*v4, &v56, v49) == 1)
              {
                v5 = (v13 - v11[6]) >> 6;
                v15 = v11[9];
                if (v15 <= v5)
                {
                  goto LABEL_40;
                }

                re::EventBus::EventInfo::removeSubscription(this, *(v11[11] + 8 * v5));
              }

              v13 += 64;
              v4 += 64;
              v14 -= 64;
            }

            while (v14);
          }
        }
      }
    }
  }

  if (a2)
  {
    if (*(this + 21))
    {
      v46 = a2;
      v47 = 0;
      v16 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(this + 27, &v46);
      if (v16 != -1)
      {
        v17 = (*(this + 28) + 144 * v16);
        v18 = v17[4];
        if (v18)
        {
          v19 = v17[6];
          v20 = v18 << 6;
          v4 = v19 + 56;
          do
          {
            *&v56 = a2;
            *v49 = a3;
            if ((*(**v4 + 16))(*v4, &v56, v49) == 1)
            {
              v5 = (v19 - v17[6]) >> 6;
              v15 = v17[9];
              if (v15 <= v5)
              {
                goto LABEL_44;
              }

              re::EventBus::EventInfo::removeSubscription(this, *(v17[11] + 8 * v5));
            }

            v19 += 64;
            v4 += 64;
            v20 -= 64;
          }

          while (v20);
        }
      }
    }
  }

  if (a4)
  {
    if (*(this + 22))
    {
      v46 = 0;
      v47 = a4;
      v21 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(this + 27, &v46);
      if (v21 != -1)
      {
        v22 = (*(this + 28) + 144 * v21);
        v23 = v22[4];
        if (v23)
        {
          v24 = v22[6];
          v25 = v23 << 6;
          v26 = (v24 + 56);
          do
          {
            *&v56 = a2;
            *v49 = a3;
            if ((*(**v26 + 16))(*v26, &v56, v49) == 1)
            {
              v4 = (v24 - v22[6]) >> 6;
              v15 = v22[9];
              if (v15 <= v4)
              {
                goto LABEL_48;
              }

              re::EventBus::EventInfo::removeSubscription(this, *(v22[11] + 8 * v4));
            }

            v24 += 64;
            v26 += 8;
            v25 -= 64;
          }

          while (v25);
        }
      }
    }
  }

  v27 = *(this + 13);
  if (v27)
  {
    v28 = *(this + 15);
    v29 = v27 << 6;
    v30 = (v28 + 56);
    do
    {
      *&v56 = a2;
      *v49 = a3;
      if ((*(**v30 + 16))(*v30, &v56, v49) == 1)
      {
        v31 = (v28 - *(this + 15)) >> 6;
        v15 = *(this + 18);
        if (v15 <= v31)
        {
          v46 = 0;
          v60 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v33 = MEMORY[0x1E69E9C10];
          v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v49 = 136315906;
          *&v49[4] = "operator[]";
          v50 = 1024;
          if (v34)
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          v51 = 797;
          v52 = 2048;
          v53 = v31;
          v54 = 2048;
          v55 = v15;
          _os_log_send_and_compose_impl(v35, &v46, &v56, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v49, 38, v45);
          _os_crash_msg();
          __break(1u);
LABEL_40:
          v48 = 0;
          v60 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v36 = MEMORY[0x1E69E9C10];
          v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v49 = 136315906;
          *&v49[4] = "operator[]";
          v50 = 1024;
          if (v37)
          {
            v38 = 3;
          }

          else
          {
            v38 = 2;
          }

          v51 = 797;
          v52 = 2048;
          v53 = v5;
          v54 = 2048;
          v55 = v15;
          _os_log_send_and_compose_impl(v38, &v48, &v56, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v49, 38, v45, v46);
          _os_crash_msg();
          __break(1u);
LABEL_44:
          v48 = 0;
          v60 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v39 = MEMORY[0x1E69E9C10];
          v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v49 = 136315906;
          *&v49[4] = "operator[]";
          v50 = 1024;
          if (v40)
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          v51 = 797;
          v52 = 2048;
          v53 = v5;
          v54 = 2048;
          v55 = v15;
          _os_log_send_and_compose_impl(v41, &v48, &v56, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v49, 38, v45, v46);
          _os_crash_msg();
          __break(1u);
LABEL_48:
          v48 = 0;
          v60 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v42 = MEMORY[0x1E69E9C10];
          v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v49 = 136315906;
          *&v49[4] = "operator[]";
          v50 = 1024;
          if (v43)
          {
            v44 = 3;
          }

          else
          {
            v44 = 2;
          }

          v51 = 797;
          v52 = 2048;
          v53 = v4;
          v54 = 2048;
          v55 = v15;
          _os_log_send_and_compose_impl(v44, &v48, &v56, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v49, 38, v45, v46);
          _os_crash_msg();
          __break(1u);
        }

        re::EventBus::EventInfo::removeSubscription(this, *(*(this + 20) + 8 * v31));
      }

      v28 += 64;
      v30 += 8;
      v29 -= 64;
    }

    while (v29);
  }

  return re::EventBus::EventInfo::stopPublishing(this);
}

void *re::EventBus::EventInfo::stopPublishing(void *this)
{
  v3 = *(this + 4) - 1;
  *(this + 4) = v3;
  if (!v3)
  {
    v25 = v1;
    v26 = v2;
    v4 = this;
    if (this[38])
    {
      v5 = (this + 35);
      v22 = this + 35;
      v6 = this[37];
      if (v6 >= 0x10)
      {
        v7 = 0;
        v8 = *v5;
        v9 = v6 >> 4;
        while (1)
        {
          v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v23 = v10 ^ 0xFFFFLL;
          if (v10 != 0xFFFFLL)
          {
            break;
          }

          v7 -= 16;
          ++v8;
          if (!--v9)
          {
            goto LABEL_11;
          }
        }

        v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
        v12 = v11 - v7;
        v24 = v11 - v7;
        if (v11 + 1 != v7)
        {
          do
          {
            v13 = *(v22[1] + 56 * v12 + 48);
            (*(*v13 + 16))(v13);
            this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v22);
            v12 = v24;
          }

          while (v24 != -1);
          v6 = v4[37];
        }
      }

LABEL_11:
      v4[40] = 0;
      v4[41] = 0;
      v4[38] = 0;
      v4[39] = v6;
      v22 = v4 + 35;
      if (v6 > 0xF)
      {
        v14 = 0;
        v15 = *v5;
        v16 = v6 >> 4;
        while (1)
        {
          v17 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v15), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v23 = v17 ^ 0xFFFFLL;
          if (v17 != 0xFFFFLL)
          {
            break;
          }

          v14 -= 16;
          ++v15;
          if (!--v16)
          {
            goto LABEL_19;
          }
        }

        v18 = __clz(__rbit64(v17 ^ 0xFFFFLL));
        v19 = v18 - v14;
        v24 = v18 - v14;
        if (v18 + 1 != v14)
        {
          do
          {
            re::FunctionBase<24ul,void ()(void)>::destroyCallable(v4[36] + 56 * v19 + 16);
            this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v22);
            v19 = v24;
          }

          while (v24 != -1);
          v6 = v4[37];
        }

LABEL_19:
        if (v6 >= 0x10)
        {
          v20 = 0;
          *&v21 = -1;
          *(&v21 + 1) = -1;
          do
          {
            *(v4[35] + 16 * v20++) = v21;
          }

          while (v20 < v4[37] >> 4);
        }
      }
    }
  }

  return this;
}

uint64_t re::EventBus::publish(re::EventBus *this, size_t a2, unint64_t a3, const void *a4, unint64_t a5, const void *a6)
{
  v11 = a3;
  result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 3, &v11);
  if (result != -1)
  {
    result = *(*(this + 4) + 48 * result + 8);
    if (result)
    {
      return re::EventBus::EventInfo::publish(result, a2, a4, a6);
    }
  }

  return result;
}

void re::EventBus::EventInfo::addToBatch(unint64_t this, re::EventBus *a2, void *a3, const void *a4, size_t a5, const void *a6)
{
  v93 = *MEMORY[0x1E69E9840];
  if (a5 >= 0x11)
  {
    goto LABEL_76;
  }

  if (a6 && (*(this + 23) & 1) != 0)
  {
    v67 = a3;
    v72 = a3;
    v73 = a6;
    v8 = a6;
    v9 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((this + 216), &v72);
    if (v9 != -1)
    {
      v10 = (*(this + 224) + 144 * v9);
      v11 = v10[4];
      if (v11)
      {
        v12 = v10[6];
        v68 = v12 + (v11 << 6);
        v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) >> 27));
        v14 = v13 ^ (v13 >> 31);
        v15 = 24;
        do
        {
          v16 = (v12 - v10[6]) >> 6;
          v75 = this;
          v76 = v12;
          v17 = v10[9];
          if (v17 <= v16)
          {
            goto LABEL_64;
          }

          v77 = *(v10[11] + 8 * v16);
          v78 = 0;
          v79 = 0;
          memcpy(&v78, a4, a5);
          *&v88 = this;
          v18 = *(a2 + 44);
          if (v18)
          {
            v19 = v14 % v18;
            v20 = *(*(a2 + 20) + 4 * (v14 % v18));
            if (v20 != 0x7FFFFFFF)
            {
              v21 = *(a2 + 21);
              while (*(v21 + 24 * v20 + 16) != this)
              {
                LODWORD(v20) = *(v21 + 24 * v20 + 8) & 0x7FFFFFFF;
                if (v20 == 0x7FFFFFFF)
                {
                  goto LABEL_15;
                }
              }

              goto LABEL_16;
            }
          }

          else
          {
            LODWORD(v19) = 0;
          }

LABEL_15:
          re::HashSetBase<re::EventBus::EventInfo *,re::EventBus::EventInfo *,re::internal::ValueAsKey<re::EventBus::EventInfo *>,re::Hash<re::EventBus::EventInfo *>,re::EqualTo<re::EventBus::EventInfo *>,true,false>::addAsCopy(a2 + 152, v19, v14, &v88);
          ++*(a2 + 48);
LABEL_16:
          re::Queue<re::EventBus::DeferredEvent>::enqueue(a2 + 104, &v75);
          v12 += 64;
        }

        while (v12 != v68);
      }
    }

    a6 = v8;
    a3 = v67;
  }

  if (*(this + 21) == 1)
  {
    v22 = a6;
    v72 = a3;
    v73 = 0;
    v23 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((this + 216), &v72);
    if (v23 != -1)
    {
      v24 = (*(this + 224) + 144 * v23);
      v25 = v24[4];
      if (v25)
      {
        v26 = v24[6];
        v69 = v26 + (v25 << 6);
        v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) >> 27));
        v28 = v27 ^ (v27 >> 31);
        v15 = 24;
        do
        {
          v16 = (v26 - v24[6]) >> 6;
          v75 = this;
          v76 = v26;
          v17 = v24[9];
          if (v17 <= v16)
          {
            goto LABEL_68;
          }

          v77 = *(v24[11] + 8 * v16);
          v78 = 0;
          v79 = 0;
          memcpy(&v78, a4, a5);
          *&v88 = this;
          v29 = *(a2 + 44);
          if (v29)
          {
            v30 = v28 % v29;
            v31 = *(*(a2 + 20) + 4 * (v28 % v29));
            if (v31 != 0x7FFFFFFF)
            {
              v32 = *(a2 + 21);
              while (*(v32 + 24 * v31 + 16) != this)
              {
                LODWORD(v31) = *(v32 + 24 * v31 + 8) & 0x7FFFFFFF;
                if (v31 == 0x7FFFFFFF)
                {
                  goto LABEL_30;
                }
              }

              goto LABEL_31;
            }
          }

          else
          {
            LODWORD(v30) = 0;
          }

LABEL_30:
          re::HashSetBase<re::EventBus::EventInfo *,re::EventBus::EventInfo *,re::internal::ValueAsKey<re::EventBus::EventInfo *>,re::Hash<re::EventBus::EventInfo *>,re::EqualTo<re::EventBus::EventInfo *>,true,false>::addAsCopy(a2 + 152, v30, v28, &v88);
          ++*(a2 + 48);
LABEL_31:
          re::Queue<re::EventBus::DeferredEvent>::enqueue(a2 + 104, &v75);
          v26 += 64;
        }

        while (v26 != v69);
      }
    }

    a6 = v22;
  }

  if (*(this + 22) == 1)
  {
    v72 = 0;
    v73 = a6;
    v33 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((this + 216), &v72);
    if (v33 != -1)
    {
      v34 = (*(this + 224) + 144 * v33);
      v35 = v34[4];
      if (v35)
      {
        v36 = v34[6];
        v37 = v36 + (v35 << 6);
        v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) >> 27));
        v39 = v38 ^ (v38 >> 31);
        do
        {
          v16 = (v36 - v34[6]) >> 6;
          v75 = this;
          v76 = v36;
          v15 = v34[9];
          if (v15 <= v16)
          {
            goto LABEL_72;
          }

          v77 = *(v34[11] + 8 * v16);
          v78 = 0;
          v79 = 0;
          memcpy(&v78, a4, a5);
          *&v88 = this;
          v40 = *(a2 + 44);
          if (v40)
          {
            v41 = v39 % v40;
            v42 = *(*(a2 + 20) + 4 * (v39 % v40));
            if (v42 != 0x7FFFFFFF)
            {
              v43 = *(a2 + 21);
              while (*(v43 + 24 * v42 + 16) != this)
              {
                LODWORD(v42) = *(v43 + 24 * v42 + 8) & 0x7FFFFFFF;
                if (v42 == 0x7FFFFFFF)
                {
                  goto LABEL_45;
                }
              }

              goto LABEL_46;
            }
          }

          else
          {
            LODWORD(v41) = 0;
          }

LABEL_45:
          re::HashSetBase<re::EventBus::EventInfo *,re::EventBus::EventInfo *,re::internal::ValueAsKey<re::EventBus::EventInfo *>,re::Hash<re::EventBus::EventInfo *>,re::EqualTo<re::EventBus::EventInfo *>,true,false>::addAsCopy(a2 + 152, v41, v39, &v88);
          ++*(a2 + 48);
LABEL_46:
          re::Queue<re::EventBus::DeferredEvent>::enqueue(a2 + 104, &v75);
          v36 += 64;
        }

        while (v36 != v37);
      }
    }
  }

  v44 = *(this + 104);
  if (v44)
  {
    v45 = *(this + 120);
    v46 = v45 + (v44 << 6);
    v47 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) >> 27));
    v17 = v47 ^ (v47 >> 31);
    v15 = 0x7FFFFFFFLL;
    do
    {
      v16 = (v45 - *(this + 120)) >> 6;
      v75 = this;
      v76 = v45;
      v48 = *(this + 144);
      if (v48 <= v16)
      {
        v72 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v53 = MEMORY[0x1E69E9C10];
        v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v80 = 136315906;
        v81 = "operator[]";
        v82 = 1024;
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        v83 = 797;
        v84 = 2048;
        v85 = v16;
        v86 = 2048;
        v87 = v48;
        _os_log_send_and_compose_impl(v55, &v72, &v88, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v80, 38, v65, v66);
        _os_crash_msg();
        __break(1u);
LABEL_64:
        v74 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v80 = 136315906;
        v81 = "operator[]";
        v82 = 1024;
        if (v57)
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }

        v83 = 797;
        v84 = 2048;
        v85 = v16;
        v86 = 2048;
        v87 = v17;
        _os_log_send_and_compose_impl(v58, &v74, &v88, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v80, 38, v65, v66);
        _os_crash_msg();
        __break(1u);
LABEL_68:
        v74 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v80 = 136315906;
        v81 = "operator[]";
        v82 = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v83 = 797;
        v84 = 2048;
        v85 = v16;
        v86 = 2048;
        v87 = v17;
        _os_log_send_and_compose_impl(v61, &v74, &v88, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v80, 38, v65, v66);
        _os_crash_msg();
        __break(1u);
LABEL_72:
        v74 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v62 = MEMORY[0x1E69E9C10];
        v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v80 = 136315906;
        v81 = "operator[]";
        v82 = 1024;
        if (v63)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        v83 = 797;
        v84 = 2048;
        v85 = v16;
        v86 = 2048;
        v87 = v15;
        _os_log_send_and_compose_impl(v64, &v74, &v88, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v80, 38, v65, v66);
        _os_crash_msg();
        __break(1u);
LABEL_76:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "eventSize <= sizeof(DeferredEvent::eventData)", "addToBatch", 79);
        _os_crash("assertion failure: (eventSize <= sizeof(DeferredEvent::eventData)) ");
        __break(1u);
      }

      v77 = *(*(this + 160) + 8 * v16);
      v78 = 0;
      v79 = 0;
      memcpy(&v78, a4, a5);
      *&v88 = this;
      v49 = *(a2 + 44);
      if (v49)
      {
        v50 = v17 % v49;
        v51 = *(*(a2 + 20) + 4 * (v17 % v49));
        if (v51 != 0x7FFFFFFF)
        {
          v52 = *(a2 + 21);
          while (*(v52 + 24 * v51 + 16) != this)
          {
            LODWORD(v51) = *(v52 + 24 * v51 + 8) & 0x7FFFFFFF;
            if (v51 == 0x7FFFFFFF)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_58;
        }
      }

      else
      {
        LODWORD(v50) = 0;
      }

LABEL_57:
      re::HashSetBase<re::EventBus::EventInfo *,re::EventBus::EventInfo *,re::internal::ValueAsKey<re::EventBus::EventInfo *>,re::Hash<re::EventBus::EventInfo *>,re::EqualTo<re::EventBus::EventInfo *>,true,false>::addAsCopy(a2 + 152, v50, v17, &v88);
      ++*(a2 + 48);
LABEL_58:
      re::Queue<re::EventBus::DeferredEvent>::enqueue(a2 + 104, &v75);
      v45 += 64;
    }

    while (v45 != v46);
  }
}

double re::EventBus::endBatch(re::EventBus *this, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unbalanced beginBatch/endBatch", "m_batchLevel > 0", "endBatch", 110);
    _os_crash("assertion failure: (m_batchLevel > 0) Unbalanced beginBatch/endBatch");
    __break(1u);
  }

  v4 = v2 - 1;
  *(this + 12) = v4;
  if (!v4)
  {
    v27 = 0;
    v24 = *(this + 152);
    *(this + 19) = 0;
    *(this + 20) = 0;
    v5 = *(this + 21);
    v25 = v5;
    *(this + 21) = 0;
    v26 = *(this + 11);
    v6 = DWORD2(v26);
    *(this + 11) = xmmword_1E3058120;
    v7 = v6;
    if (v6)
    {
      v8 = 0;
      v9 = (v5 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 6;
        if (v10 < 0)
        {
          break;
        }

        if (v6 == ++v8)
        {
          LODWORD(v8) = v6;
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    while (v8 != v6)
    {
      v11 = *(v5 + 24 * v8 + 16);
      ++*(v11 + 16);
      if (v6 <= v8 + 1)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = v6;
      }

      while (v12 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v5 + 24 * v8 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v8) = v12;
LABEL_17:
      ;
    }

    for (i = *(this + 15); i; i = *(this + 15))
    {
      v14 = *(this + 16);
      v15 = *(this + 18) + 40 * v14;
      v16 = *(v15 + 32);
      v17 = *(v15 + 16);
      *v30 = *v15;
      *v31 = v17;
      v32 = v16;
      if ((v14 + 1) < *(this + 14))
      {
        v18 = v14 + 1;
      }

      else
      {
        v18 = 0;
      }

      *(this + 15) = i - 1;
      *(this + 16) = v18;
      ++*(this + 34);
      v28 = &v31[1];
      v29 = v31[1];
      if ((*(**(v30[1] + 7) + 16))(*(v30[1] + 7), &v29, &v28) == 1)
      {
        re::EventBus::EventInfo::removeSubscription(v30[0], v31[0]);
      }
    }

    if (v7)
    {
      v19 = 0;
      v20 = (v5 + 8);
      while (1)
      {
        v21 = *v20;
        v20 += 6;
        if (v21 < 0)
        {
          break;
        }

        if (v7 == ++v19)
        {
          LODWORD(v19) = v7;
          break;
        }
      }
    }

    else
    {
      LODWORD(v19) = 0;
    }

    while (v19 != v7)
    {
      re::EventBus::EventInfo::stopPublishing(*(v5 + 24 * v19 + 16));
      if (v7 <= v19 + 1)
      {
        v22 = v19 + 1;
      }

      else
      {
        v22 = v7;
      }

      while (v22 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v5 + 24 * v19 + 8) & 0x80000000) != 0)
        {
          goto LABEL_39;
        }
      }

      LODWORD(v19) = v22;
LABEL_39:
      ;
    }

    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v24);
  }

  return result;
}

uint64_t re::EventBus::EventInfo::removeSubscription(re::EventBus::EventInfo *this, unint64_t a2)
{
  v11[1] = a2;
  v12 = a2;
  v3 = (this + 24);
  v11[0] = *this;
  re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::remove(this + 280, v11);
  result = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(v3, &v12);
  if (result != -1)
  {
    v5 = *(this + 4) + 24 * result;
    v7 = *(v5 + 8);
    v6 = (v5 + 8);
    if (v7 || v6[1])
    {
      v8 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(this + 27, v6);
      v9 = v12;
      v10 = (*(this + 28) + 144 * v8 + 16);
    }

    else
    {
      v9 = v12;
      v10 = (this + 88);
    }

    re::EventBus::Subscriptions::remove(v10, v9);
    return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(v3, &v12);
  }

  return result;
}

uint64_t re::EventBus::subscribe(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v13[8] = *MEMORY[0x1E69E9840];
  EventInfo = re::EventBus::addOrGetEventInfo(a1, a2);
  re::EventBus::createHandler(a4, v6, v13);
  v11 = re::EventBus::EventInfo::addSubscription(EventInfo, v13, a3, a5);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v13);
  return v11;
}

uint64_t (***re::EventBus::createHandler@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = *(a1 + 24);
    v8 = 0;
    v5 = re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::operator=<24ul>(v6, a1);
    a3[6] = re::globalAllocators(v5)[2];
    a3[7] = 0;
    *a3 = &unk_1F5CCF390;
    a3[4] = v7;
    a3[5] = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::operator=<24ul>((a3 + 1), v6);
    a3[7] = a3;
    return re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v6);
  }

  else
  {
    a3[6] = *(a1 + 24);
    a3[7] = 0;

    return re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<24ul>(a3, a1);
  }
}

uint64_t re::EventBus::unsubscribe(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = a2;
  result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &v6);
  if (result != -1)
  {
    result = *(*(a1 + 32) + 48 * result + 8);
    if (result)
    {
      return re::EventBus::EventInfo::removeSubscription(result, a3);
    }
  }

  return result;
}

unint64_t re::EventBus::getTypeId(re::EventBus *this, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = strlen(this);
  if (v3)
  {
    v4 = 0;
    v5 = &v13;
    do
    {
      v6 = v4 + 1;
      *++v5 = (v3 % 0xA) | 0x30;
      if (v3 < 0xA)
      {
        break;
      }

      v3 /= 0xAuLL;
    }

    while (v4++ < 0x7E);
    if (v6 != 1)
    {
      v8 = v6 >> 1;
      v9 = v14;
      do
      {
        v10 = *v9;
        *v9++ = *v5;
        *v5-- = v10;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v14[0] = 48;
    v6 = 1;
  }

  v14[v6] = 0;
  strncpy(&v14[v6], this, 128 - v6);
  v14[127] = 0;
  return re::EventBus::typeStringToId(v14, v11);
}

__n128 re::Queue<re::EventBus::DeferredEvent>::enqueue(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  v6 = v4 + 1;
  v7 = *(a1 + 8);
  if (v4 + 1 >= v7)
  {
    if (v7 < v6)
    {
      if (*a1)
      {
        v8 = 2 * v7;
        if (!v7)
        {
          v8 = 8;
        }

        if (v8 <= v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        re::Queue<re::EventBus::DeferredEvent>::setCapacity(a1, v9);
        v4 = *(a1 + 16);
      }

      else
      {
        re::Queue<re::EventBus::DeferredEvent>::setCapacity(a1, v6);
        v4 = 0;
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
      }
    }

    v7 = *(a1 + 8);
  }

  v10 = *(a1 + 40) + 40 * ((*(a1 + 24) + v4) % v7);
  result = *a2;
  v12 = *(a2 + 16);
  *(v10 + 32) = *(a2 + 32);
  *v10 = result;
  *(v10 + 16) = v12;
  ++*(a1 + 16);
  ++*(a1 + 32);
  return result;
}

void re::HashSetBase<re::EventBus::EventInfo *,re::EventBus::EventInfo *,re::internal::ValueAsKey<re::EventBus::EventInfo *>,re::Hash<re::EventBus::EventInfo *>,re::EqualTo<re::EventBus::EventInfo *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<re::TextureAsset *,re::TextureAsset *,re::internal::ValueAsKey<re::TextureAsset *>,re::Hash<re::TextureAsset *>,re::EqualTo<re::TextureAsset *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v9 = *(a1 + 16);
    v10 = *(v9 + 24 * v7 + 8);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 24 * v7 + 8);
    *(a1 + 36) = v10 & 0x7FFFFFFF;
  }

  *(v9 + 24 * v7 + 8) = v10 | 0x80000000;
  *(*(a1 + 16) + 24 * v7 + 8) = *(*(a1 + 16) + 24 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v7) = a3;
  *(*(a1 + 16) + 24 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
}

void *re::Queue<re::EventBus::DeferredEvent>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::EventBus::DeferredEvent>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
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
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = v5[5] + 40 * ((v9 + v5[3]) % v5[1]);
          v12 = &v8[5 * v10];
          v13 = *v11;
          v14 = *(v11 + 16);
          v12[4] = *(v11 + 32);
          *v12 = v13;
          *(v12 + 1) = v14;
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

BOOL re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::find(a1, a2);
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
    *(a1 + 40) ^= re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v14, (*(a1 + 8) + 56 * v3));
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(*(a1 + 8) + 56 * v4 + 16);
    v10.i64[0] = -1;
    v10.i64[1] = v8;
    v11 = vaddq_s64(*(a1 + 24), v10);
    *(a1 + 24) = v11;
    v12 = *(a1 + 16);
    if (v12 >= 0x11 && v11.i64[0] < v12 >> 2)
    {
      re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

_anonymous_namespace_ *re::EventBus::Subscriptions::remove(_anonymous_namespace_ *this, uint64_t a2)
{
  v2 = this;
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(this + 9);
  v4 = *(this + 7);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *(this + 9); *i != a2; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return this;
      }
    }
  }

  else
  {
    i = *(this + 9);
  }

  if (i != (v3 + 8 * v4))
  {
    v7 = i - v3;
    v8 = (i - v3) >> 3;
    v18 = v8;
    LOBYTE(v17) = 1;
    v9 = *(this + 2);
    if (v9 <= v8)
    {
      v19 = 0;
      v32 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = MEMORY[0x1E69E9C10];
      v20 = 136315906;
      v21 = "operator[]";
      v22 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v23 = 789;
      v24 = 2048;
      v25 = v8;
      v26 = 2048;
      v27 = v9;
      _os_log_send_and_compose_impl(v12, &v19, &v28, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16, 1);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v10 = (*(this + 4) + (v8 << 6));
      re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v10);
      *v10 = &unk_1F5CCF338;
      v10[7] = v10;
      v9 = *(v2 + 7);
      if (v9 > v8)
      {
        *&v7[*(v2 + 9)] = 0;
        this = re::DynamicArray<unsigned long>::add((v2 + 80), &v18);
        --*(v2 + 15);
        return this;
      }
    }

    v19 = 0;
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v23 = 789;
    v24 = 2048;
    v25 = v8;
    v26 = 2048;
    v27 = v9;
    _os_log_send_and_compose_impl(v15, &v19, &v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

BOOL re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(uint64_t a1, unint64_t *a2)
{
  v3 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
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
    v10 = *(*(a1 + 8) + 24 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v12 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v12;
    if (v9 >= 0x11 && v12.i64[0] < v9 >> 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

void *re::internal::Callable<re::EventBus::Subscriptions::remove(unsigned long long)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CCF338;
  return result;
}

void *re::internal::Callable<re::EventBus::Subscriptions::remove(unsigned long long)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CCF338;
  return result;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::Callable<re::EventBus::createHandler(void *,re::Function<REEventHandlerResult ()(void *,void const*)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CCF390;
  re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::EventBus::createHandler(void *,re::Function<REEventHandlerResult ()(void *,void const*)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CCF390;
  re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::EventBus::createHandler(void *,re::Function<REEventHandlerResult ()(void *,void const*)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v5 = *a3;
  v6 = v3;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v6, &v5);
  return 1;
}

void *re::internal::Callable<re::EventBus::createHandler(void *,re::Function<REEventHandlerResult ()(void *,void const*)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CCF390;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::EventBus::createHandler(void *,re::Function<REEventHandlerResult ()(void *,void const*)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CCF390;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(a1);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (*(*v4 + 40))(v4);
    v6 = a1;
    if (v5 >= 0x31)
    {
      v7 = v5;
      v8 = *(a1 + 48);
      if (v8)
      {
        v6 = (*(*v8 + 32))(v8, v7, 0);
      }

      else
      {
        v6 = 0;
      }
    }

    *(a1 + 56) = v6;
    (*(**(a2 + 32) + 24))(*(a2 + 32));
  }

  return a1;
}

uint64_t re::protectionOptions(re *this)
{
  v3 = &unk_1EE1C6000;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &unk_1EE1C6000;
    if (v5)
    {
      re::Defaults::intValue(v8, "protection.options", v6);
      v7 = SHIDWORD(v8[0]);
      if (!LOBYTE(v8[0]))
      {
        v7 = 0;
      }

      re::protectionOptions(void)::options = v7;
      v3 = &unk_1EE1C6000;
    }
  }

  return v3[428];
}

void re::Defaults::intValue(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a1 + 1) = [v4 intValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

re *anonymous namespace::getValue(_anonymous_namespace_ *this, const char *a2)
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s.%s", "com.apple.re", this];
  v5 = [v3 objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
    v7 = [v3 objectForKey:v6];
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v8 = [v4 rangeOfString:@"." options:4];
      v9 = [v4 substringToIndex:v8];
      v10 = [v4 substringFromIndex:v8 + 1];

      if ([(__CFString *)v9 isEqualToString:@"com.apple.re.network.multipeerservice"])
      {

        v9 = @"com.apple.renetwork.multipeerservice";
      }

      v11 = [v3 dictionaryForKey:v9];
      v5 = [v11 objectForKey:v10];

      if (!v5)
      {
        goto LABEL_11;
      }

      v6 = v10;
    }

    v12 = *re::foundationCoreLogObjects(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v10 = v6;
LABEL_11:
  }

  return v5;
}

void re::Defaults::BOOLValue(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a1 + 1) = [v4 BOOLValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void re::Defaults::uintValue(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a1 + 1) = [v4 unsignedIntValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void re::Defaults::uint64Value(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    a1[1] = [v4 unsignedLongLongValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void re::Defaults::floatValue(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  if (v4)
  {
    v7 = v4;
    [v4 floatValue];
    v4 = v7;
    *(a1 + 1) = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void re::Defaults::doubleValue(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  if (v4)
  {
    v7 = v4;
    [v4 doubleValue];
    v4 = v7;
    a1[1] = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void re::Defaults::stringValue(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 UTF8String];
    a1[1] = v8;
    a1[4] = v10;
    *(a1 + 1) = v9;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
}

re::LeakTestAllocator *re::LeakTestAllocator::LeakTestAllocator(re::LeakTestAllocator *this, const char *a2, re::Allocator *a3)
{
  v5 = re::Allocator::Allocator(this, a2, 1);
  *v5 = &unk_1F5CCF3E8;
  *(v5 + 3) = a3;
  *(v5 + 3) = 0u;
  *(v5 + 16) = 0;
  *(v5 + 2) = 0u;
  *(this + 68) = 0x7FFFFFFFLL;
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(v5 + 32, a3, 3);
  return this;
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_8, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void re::LeakTestAllocator::~LeakTestAllocator(re::LeakTestAllocator *this, uint64_t a2)
{
  if (*(this + 15))
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) %u memory leaks found.", "m_allocations.size() == 0", "~LeakTestAllocator", 18, *(this + 15));
    _os_crash("assertion failure: (m_allocations.size() == 0) %u memory leaks found.", v3);
    __break(1u);
  }

  else
  {
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 4);

    re::Allocator::~Allocator(this);
  }
}

{
  re::LeakTestAllocator::~LeakTestAllocator(this, a2);

  JUMPOUT(0x1E6906520);
}

unint64_t re::LeakTestAllocator::alloc(re::LeakTestAllocator *this)
{
  result = (*(**(this + 3) + 32))(*(this + 3));
  v9 = result;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (result ^ (result >> 30))) ^ ((0xBF58476D1CE4E5B9 * (result ^ (result >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *(this + 14);
  if (v5)
  {
    v6 = v4 % v5;
    v7 = *(*(this + 5) + 4 * (v4 % v5));
    if (v7 != 0x7FFFFFFF)
    {
      v8 = *(this + 6);
      if (*(v8 + 24 * v7 + 16) == result)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v7) = *(v8 + 24 * v7 + 8) & 0x7FFFFFFF;
        if (v7 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v8 + 24 * v7 + 16) == result)
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

  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::addAsCopy(this + 32, v6, v4, &v9, &v9);
  ++*(this + 18);
  return v9;
}

uint64_t re::LeakTestAllocator::free(re::LeakTestAllocator *this, unint64_t a2)
{
  v4 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 32, &v4);
  return (*(**(this + 3) + 40))(*(this + 3), v4);
}

uint64_t re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::AlignedAllocator::~AlignedAllocator(re::AlignedAllocator *this)
{
  *(this + 3) = 0;
  re::Allocator::~Allocator(this);
}

{
  *(this + 3) = 0;
  re::Allocator::~Allocator(this);

  JUMPOUT(0x1E6906520);
}

void *re::AlignedAllocator::alloc(re::AlignedAllocator *this, size_t size)
{
  v2 = *(this + 3) + 7;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, v2 & 0xFFFFFFFFFFFFFFF8, size, 0xAE8B065EuLL);
  result = memptr;
  __dmb(0xBu);
  return result;
}

uint64_t re::Allocator::useMallocAllocator(re::Allocator *this)
{
  v1 = &qword_1EE1C5000;
  {
    v1 = &qword_1EE1C5000;
    if (v3)
    {
      v1 = &qword_1EE1C5000;
    }
  }

  return *(v1 + 1888);
}

re::Allocator *re::Allocator::Allocator(re::Allocator *this, const char *a2, int a3)
{
  *this = &unk_1F5CCF4C8;
  *(this + 1) = a2;
  *(this + 16) = a3;
  if (a3)
  {
    v4 = re::globalMemoryTracker(this);
    if (*v4 == 1)
    {
      v5 = re::globalMemoryTracker(v4);
      re::MemoryTracker::track(v5, this);
    }
  }

  return this;
}

void re::Allocator::~Allocator(re::Allocator *this)
{
  *this = &unk_1F5CCF4C8;
  if (*(this + 16) == 1)
  {
    v2 = re::globalMemoryTracker(this);
    if (*v2 == 1)
    {
      v3 = re::globalMemoryTracker(v2);
      re::MemoryTracker::untrack(v3, this);
    }
  }
}

void re::PerFrameAllocatorImpl::~PerFrameAllocatorImpl(re::PerFrameAllocatorImpl *this)
{
  *this = &unk_1F5CCF530;
  v2 = *(this + 17);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::Pair<void *,re::Function<void ()(void *)>,true>,64ul>::operator[](this + 96, i);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v4 + 8);
    }
  }

  while (*(this + 13))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 12);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 96);
  *(this + 17) = 0;
  ++*(this + 36);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 56);

  re::Allocator::~Allocator(this);
}

{
  re::PerFrameAllocatorImpl::~PerFrameAllocatorImpl(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PerFrameAllocatorManager::sizeToIndex(re::PerFrameAllocatorManager *this, uint64_t a2)
{
  if (this)
  {
    v4 = 16 - __clz(this - 1);
    return v4 & ~(v4 >> 31);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "size > 0", "sizeToIndex", 318, v2, v3);
    result = _os_crash("assertion failure: (size > 0) ");
    __break(1u);
  }

  return result;
}

unint64_t re::PerFrameAllocatorImpl::alloc(re::PerFrameAllocatorImpl *this, unint64_t a2, unint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a2 || (*(this + 168) & 1) != 0)
  {
    return 0;
  }

  if (pthread_self() == *(this + 20) || (v6 = re::PerFrameAllocatorManager::perFrameAllocator(*(this + 19), *(this + 3)), v7 = v6[20], v7 != pthread_self()))
  {
    v8 = 0;
    v9 = 16;
    if (a3 > 0x10)
    {
      v9 = a3;
    }

    v10 = this + 32;
    v11 = v9 - 1;
    v12 = -v9;
    do
    {
      v13 = *&v10[v8];
      if (v13)
      {
        v14 = *(v13 + 64);
        result = (*(v13 + 56) + v11) & v12;
        v16 = result + a2;
        if ((result + a2) <= v14)
        {
          goto LABEL_30;
        }
      }

      v8 += 8;
    }

    while (v8 != 24);
    v17 = *(this + 19);
    if (a2 <= 0x10000)
    {
      v18 = 0x10000;
    }

    else
    {
      v18 = a2;
    }

    v19 = *(this + 3);
    os_unfair_lock_lock((v17 + 120));
    v21 = re::PerFrameAllocatorManager::sizeToIndex(v18, v20);
    v23 = *(v17 + 144);
    if (v21 < v23)
    {
      v24 = *(v17 + 160);
      v25 = v24 + 88 * v21;
      v26 = *(v25 + 24);
      if (v26)
      {
        v27 = v25 + 8;
LABEL_17:
        v13 = *(*(v27 + 32) + 8 * v26 - 8);
        *(v27 + 16) = v26 - 1;
        ++*(v27 + 24);
        goto LABEL_18;
      }

      v35 = 0x10000 << v21;
      if (v21 < v23 - 1 && v35 < 2 * v18)
      {
        v36 = v24 + 88 * v21;
        v26 = *(v36 + 112);
        if (v26 > 1)
        {
          v27 = v36 + 96;
          goto LABEL_17;
        }
      }

      v37 = re::PerFrameAllocatorManager::sizeToIndex((0x10000 << v21), v22);
      if (v37 < *(v17 + 144))
      {
        if (a3 <= 0x100)
        {
          a3 = 256;
        }

        v51 = v37;
        v38 = re::globalAllocators(v37);
        v13 = (*(*v38[2] + 32))(v38[2], 144, 8);
        *v13 = 0;
        *(v13 + 32) = 0;
        *(v13 + 80) = 0u;
        *(v13 + 96) = 0u;
        *(v13 + 112) = 0;
        *(v13 + 40) = 0u;
        *(v13 + 56) = 0u;
        *(v13 + 72) = 0;
        *(v13 + 116) = 0x7FFFFFFFLL;
        *(v13 + 128) = 1;
        *(v13 + 136) = 0xFFFFFFFFFFFFFFFLL;
        v52 = v13;
        *(v13 + 16) = &unk_1F5CCF5B8;
        *(v13 + 24) = "PerFrameAllocatoChunk-Linear";
        *(v13 + 8) = v35;
        v39 = re::globalAllocators(v13);
        v40 = (*(*v39[2] + 32))(v39[2], v35, a3);
        *v13 = v40;
        v41 = *(v13 + 8) + v40;
        *(v13 + 40) = v40;
        *(v13 + 48) = v41;
        *(v13 + 56) = v40;
        *(v13 + 64) = v41;
        v42 = v51;
        a3 = *(v17 + 144);
        if (a3 <= v51)
        {
          goto LABEL_44;
        }

        re::DynamicArray<re::RigDataValue *>::add((*(v17 + 160) + 88 * v51 + 48), &v52);
LABEL_18:
        *(v13 + 136) = v19;
        *(v13 + 56) = *(v13 + 40);
        os_unfair_lock_unlock((v17 + 120));
        *&v62[0] = v13;
        re::DynamicArray<re::RigDataValue *>::add((this + 56), v62);
        v29 = 0;
        v30 = 0;
        v31 = -1;
        while (1)
        {
          v32 = *&v10[8 * v29];
          if (!v32)
          {
            break;
          }

          v33 = *(v32 + 64) - *(v32 + 56);
          if (v33 < v31)
          {
            v31 = v33;
            v30 = v29;
          }

          if (++v29 == 3)
          {
            goto LABEL_28;
          }
        }

        v30 = v29;
LABEL_28:
        if (v30 < 3)
        {
          *&v10[8 * v30] = v13;
          v14 = *(v13 + 64);
          result = (*(v13 + 56) + v11) & v12;
          v16 = result + a2;
LABEL_30:
          if (v16 <= v14)
          {
            *(v13 + 56) = v16;
            return result;
          }

          return 0;
        }

        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v30, 3);
        _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v47, v48);
        __break(1u);
LABEL_44:
        v53 = 0;
        memset(v62, 0, sizeof(v62));
        v43 = MEMORY[0x1E69E9C10];
        v44 = v42;
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v54 = 136315906;
        v55 = "operator[]";
        v56 = 1024;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v57 = 789;
        v58 = 2048;
        v59 = v44;
        v60 = 2048;
        v61 = a3;
        _os_log_send_and_compose_impl(v46, &v53, v62, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v49, v50);
        _os_crash_msg();
        __break(1u);
      }
    }

    os_unfair_lock_unlock((v17 + 120));
    return 0;
  }

  v34 = *(*v6 + 32);

  return v34(v6, a2, a3);
}

uint64_t re::PerFrameAllocatorManager::perFrameAllocator(uint64_t a1, unint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2 >> 60;
  v7 = *(a1 + 16);
  if (v7 <= a2 >> 60)
  {
    v42 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    *v43 = 136315906;
    v44 = "operator[]";
    v45 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v46 = 468;
    v47 = 2048;
    v48 = v6;
    v49 = 2048;
    v50 = v7;
    _os_log_send_and_compose_impl(v29, &v42, &v51, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v43, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v10 = pthread_getspecific(*(*(a1 + 24) + 8 * v6));
  if (!v10 || (v11 = re::DataArray<re::PerFrameAllocatorImpl>::tryGet(a1 + 56, v10)) == 0)
  {
LABEL_6:
    os_unfair_lock_lock((a1 + 120));
    {
      v27 = re::PerFrameAllocatorManager::perFrameAllocator(re::FrameCount)::allocatorName(&re::PerFrameAllocatorManager::perFrameAllocator(re::FrameCount)::allocatorName);
      v27[4] = 0;
      *v27 = 0u;
      *(v27 + 1) = 0u;
      _tlv_atexit(re::InlineString<32ul>::~InlineString, v27);
    }

    v15 = re::PerFrameAllocatorManager::perFrameAllocator(re::FrameCount)::allocatorName(&re::PerFrameAllocatorManager::perFrameAllocator(re::FrameCount)::allocatorName);
    if (!*v15)
    {
      v16 = pthread_self();
      pthread_getname_np(v16, v43, 0xAuLL);
      re::InlineString<32ul>::format(&v51, v43);
      re::InlineString<32ul>::copy(v15, &v51);
    }

    v17 = a1 + 168;
    v18 = *(a1 + 5296);
    if (v18 - *(a1 + 5288) == 128)
    {
      *(a1 + 5288) = v18 - 127;
    }

    *(a1 + 5296) = v18 + 1;
    v19 = v17 + 40 * (v18 & 0x7F);
    if (v19 != v15)
    {
      re::InlineString<32ul>::copy((v17 + 40 * (v18 & 0x7F)), v15);
    }

    v20 = *(a1 + 112);
    if ((v20 + 1) >> 24)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 + 1;
    }

    *(a1 + 112) = v21;
    v5 = *(a1 + 108);
    v4 = *(a1 + 110);
    if (v5 == 0xFFFF && v4 == 0xFFFF)
    {
      if (*(a1 + 104) >= *(a1 + 100))
      {
        re::DataArray<re::PerFrameAllocatorImpl>::allocBlock((a1 + 56));
      }

      v22 = *(a1 + 72);
      v4 = (v22 - 1);
      if (!v22)
      {
        goto LABEL_41;
      }

      v5 = *(a1 + 104);
      if (v5 >= 0x10000)
      {
        goto LABEL_45;
      }

      v23 = (*(a1 + 88) + 16 * v4);
      *(a1 + 104) = v5 + 1;
      *(v23[1] + 4 * v5) = *(a1 + 112);
      v3 = *v23 + 184 * v5;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 <= v4)
      {
LABEL_37:
        v42 = 0;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v43 = 136315906;
        v44 = "operator[]";
        v45 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v46 = 789;
        v47 = 2048;
        v48 = v4;
        v49 = 2048;
        v50 = v3;
        _os_log_send_and_compose_impl(v35, &v42, &v51, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v43, 38, v40, v41);
        _os_crash_msg();
        __break(1u);
LABEL_41:
        v42 = 0;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        v36 = MEMORY[0x1E69E9C10];
        v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v43 = 136315906;
        v44 = "operator[]";
        v45 = 1024;
        if (v37)
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v46 = 789;
        v47 = 2048;
        v48 = v4;
        v49 = 2048;
        v50 = 0;
        _os_log_send_and_compose_impl(v38, &v42, &v51, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v43, 38, v40, v41);
        _os_crash_msg();
        __break(1u);
LABEL_45:
        re::internal::assertLog(5, v14, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v5);
        _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v39);
        __break(1u);
      }

      v24 = (*(a1 + 88) + 16 * v4);
      *(v24[1] + 4 * v5) = v21;
      v3 = *v24 + 184 * v5;
      *(a1 + 108) = *v3;
    }

    ++*(a1 + 96);
    v25 = re::Allocator::Allocator(v3, (v19 + 8), 0);
    *(v3 + 24) = a2;
    *(v3 + 32) = 0;
    *v3 = &unk_1F5CCF530;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 88) = 0;
    *(v3 + 112) = 1;
    *(v3 + 128) = 0;
    *(v3 + 136) = 0;
    *(v3 + 120) = 0;
    *(v3 + 144) = 0;
    *(v3 + 152) = a1;
    *(v3 + 168) = 0;
    *(v3 + 172) = 3;
    *(v3 + 176) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v25 + 7) = 0;
    re::DynamicArray<float *>::setCapacity(v25 + 7, 0x40uLL);
    *(v3 + 160) = pthread_self();
    v2 = *(a1 + 16);
    if (v2 > v6)
    {
      pthread_setspecific(*(*(a1 + 24) + 8 * v6), (v5 + (v4 << 16) + ((*(a1 + 112) & 0xFFFFFF) << 32)));
      v12 = re::DataArray<re::PerFrameAllocatorImpl>::get(a1 + 56, v5 + (v4 << 16));
      os_unfair_lock_unlock((a1 + 120));
      return v12;
    }

LABEL_33:
    v42 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v43 = 136315906;
    v44 = "operator[]";
    v45 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v46 = 468;
    v47 = 2048;
    v48 = v6;
    v49 = 2048;
    v50 = v2;
    _os_log_send_and_compose_impl(v32, &v42, &v51, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v43, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_37;
  }

  v12 = v11;
  if (((*(v11 + 24) ^ a2) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    *(v11 + 176) = 1;
    goto LABEL_6;
  }

  return v12;
}

uint64_t re::LinearAllocator::alloc(re::LinearAllocator *this, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = (a3 + *(this + 5) - 1) & -a3;
  if (v4 + a2 <= *(this + 6))
  {
    *(this + 5) = v4 + a2;
    return v4;
  }

  return v3;
}

uint64_t re::PerFrameAllocatorImpl::addDestructor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 24);
  v18 = a2;
  v20 = v5;
  v21 = 0;
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(v19, a3);
  v6 = *(a1 + 136);
  v7 = *(a1 + 104);
  if (v6 + 1 > v7 << 6)
  {
    re::BucketArray<re::Pair<void *,re::Function<void ()(void *)>,true>,64ul>::setBucketsCapacity((a1 + 96), (v6 + 64) >> 6);
    v7 = *(a1 + 104);
  }

  if (v7 <= v6 >> 6)
  {
    v17 = 0;
    memset(v30, 0, sizeof(v30));
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 858;
    v26 = 2048;
    v27 = v6 >> 6;
    v28 = 2048;
    v29 = v7;
    _os_log_send_and_compose_impl(v15, &v17, v30, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 112))
  {
    v8 = a1 + 120;
  }

  else
  {
    v8 = *(a1 + 128);
  }

  v9 = *(v8 + 8 * (v6 >> 6));
  ++*(a1 + 136);
  ++*(a1 + 144);
  v10 = (v9 + 48 * (v6 & 0x3F));
  v11 = v20;
  *v10 = v18;
  v10[4] = v11;
  v10[5] = 0;
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((v10 + 1), v19);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v19);
  return a2;
}

uint64_t re::PerFrameAllocatorImpl::statistics(re::PerFrameAllocatorImpl *this)
{
  v1 = *(this + 9);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = *(this + 11);
  v6 = 8 * v1;
  do
  {
    v7 = *v5++;
    v8 = v7[5];
    v9 = v7[6];
    v4 = v4 - v8 + v9;
    result = v7[7] + result + v9 - (v8 + v7[8]);
    v6 -= 8;
  }

  while (v6);
  return result;
}

_anonymous_namespace_ *re::PerFrameAllocatorManager::init(_anonymous_namespace_ *this)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    return this;
  }

  v1 = this;
  v4 = 0;
  *v1 = 1;
  do
  {
    v5 = *(v1 + 5);
    if (v5 <= v4)
    {
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v30 = 468;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v5;
      _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v30 = 468;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v5;
      _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }

    *(*(v1 + 6) + 8 * v4) = 0;
    v5 = *(v1 + 2);
    if (v5 <= v4)
    {
      goto LABEL_30;
    }

    *(*(v1 + 3) + 8 * v4++) = 0;
  }

  while (v4 != 16);
  v6 = *(v1 + 18);
  if (v6 > 0xE)
  {
    if (v6 == 15)
    {
      goto LABEL_17;
    }

    v11 = 15;
    v12 = 1328;
    do
    {
      v13 = *(v1 + 20) + v12;
      re::DynamicArray<unsigned long>::deinit(v13 + 40);
      v3 = re::DynamicArray<unsigned long>::deinit(v13);
      ++v11;
      v12 += 88;
    }

    while (v11 < *(v1 + 18));
  }

  else if (*(v1 + 17) > 0xEuLL || (v3 = re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(v1 + 16), v6 = *(v1 + 18), v6 <= 0xE))
  {
    v7 = v6 - 15;
    v8 = 88 * v6;
    do
    {
      v9 = *(v1 + 20) + v8;
      *(v9 + 80) = 0;
      *v9 = 0uLL;
      *(v9 + 16) = 0uLL;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0uLL;
      *(v9 + 56) = 0uLL;
      *(v9 + 72) = 0;
      v8 += 88;
    }

    while (!__CFADD__(v7++, 1));
  }

  *(v1 + 18) = 15;
  ++*(v1 + 38);
LABEL_17:
  v14 = 0;
  v15 = xmmword_1E3049620;
  v16 = vdupq_n_s64(0xFuLL);
  v17 = *(v1 + 20);
  v18 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v16, v15)).u8[0])
    {
      *v17 = 0x10000 << v14;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v15)).i32[1])
    {
      v17[11] = 0x20000 << v14;
    }

    v14 += 2;
    v15 = vaddq_s64(v15, v18);
    v17 += 22;
  }

  while (v14 != 16);
  v19 = v1 + 56;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v19, 0);
  ++*(v19 + 6);
  *(v19 + 11) = 16;

  return re::DataArray<re::PerFrameAllocatorImpl>::allocBlock(v19);
}

re *re::PerFrameAllocatorManager::deinit(re *this)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*this == 1)
  {
    v1 = this;
    this = re::DataArray<re::PerFrameAllocatorImpl>::deinit(this + 56);
    v2 = *(v1 + 18);
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(v1 + 20) + 88 * i;
        v5 = *(v4 + 64);
        if (v5)
        {
          for (j = 0; j < v5; ++j)
          {
            k = **(*(v4 + 80) + 8 * j);
            if (k)
            {
              v8 = re::globalAllocators(this);
              (*(*v8[2] + 40))(v8[2], k);
              v5 = *(v4 + 64);
            }

            if (v5 <= j)
            {
              v21 = 0;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              v9 = MEMORY[0x1E69E9C10];
              v22 = 136315906;
              v23 = "operator[]";
              v24 = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v10 = 3;
              }

              else
              {
                v10 = 2;
              }

              v25 = 789;
              v26 = 2048;
              v27 = j;
              v28 = 2048;
              v29 = v5;
              _os_log_send_and_compose_impl(v10, &v21, &v30, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
              _os_crash_msg();
              __break(1u);
LABEL_23:
              v21 = 0;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              v11 = MEMORY[0x1E69E9C10];
              v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v22 = 136315906;
              v23 = "operator[]";
              v24 = 1024;
              if (v12)
              {
                v13 = 3;
              }

              else
              {
                v13 = 2;
              }

              v25 = 789;
              v26 = 2048;
              v27 = j;
              v28 = 2048;
              v29 = v5;
              _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
              _os_crash_msg();
              __break(1u);
LABEL_27:
              v21 = 0;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              v14 = MEMORY[0x1E69E9C10];
              v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v22 = 136315906;
              v23 = "operator[]";
              v24 = 1024;
              if (v15)
              {
                v16 = 3;
              }

              else
              {
                v16 = 2;
              }

              v25 = 468;
              v26 = 2048;
              v27 = k;
              v28 = 2048;
              v29 = j;
              _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
              _os_crash_msg();
              __break(1u);
LABEL_31:
              v21 = 0;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              v17 = MEMORY[0x1E69E9C10];
              v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v22 = 136315906;
              v23 = "operator[]";
              v24 = 1024;
              if (v18)
              {
                v19 = 3;
              }

              else
              {
                v19 = 2;
              }

              v25 = 468;
              v26 = 2048;
              v27 = k;
              v28 = 2048;
              v29 = j;
              _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
              _os_crash_msg();
              __break(1u);
            }

            this = re::internal::destroyPersistent<re::internal::PerFrameAllocatorChunk>(*(*(v4 + 80) + 8 * j));
            v5 = *(v4 + 64);
            if (v5 <= j)
            {
              goto LABEL_23;
            }

            *(*(v4 + 80) + 8 * j) = 0;
          }

          v2 = *(v1 + 18);
        }

        *(v4 + 64) = 0;
        ++*(v4 + 72);
        *(v4 + 24) = 0;
        ++*(v4 + 32);
      }
    }

    for (k = 0; k != 16; ++k)
    {
      j = *(v1 + 5);
      if (j <= k)
      {
        goto LABEL_27;
      }

      *(*(v1 + 6) + 8 * k) = 0;
      j = *(v1 + 2);
      if (j <= k)
      {
        goto LABEL_31;
      }

      *(*(v1 + 3) + 8 * k) = 0;
    }

    *v1 = 0;
  }

  return this;
}

re *re::internal::destroyPersistent<re::internal::PerFrameAllocatorChunk>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v1 + 10);
    re::Allocator::~Allocator((v1 + 16));
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

unint64_t re::PerFrameAllocatorManager::addOwner(os_unfair_lock_s *this, unint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 30);
  v5 = 0;
  v6 = 0;
  v7 = *&this[10]._os_unfair_lock_opaque;
  do
  {
    if (v7 == v6)
    {
      v20 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      v6 = MEMORY[0x1E69E9C10];
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v24 = 468;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v7;
      _os_log_send_and_compose_impl(v12, &v20, &v29, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v18, v19);
      _os_crash_msg();
      __break(1u);
LABEL_13:
      v20 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      if (v14)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v24 = 468;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = a2;
      _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v18, v19);
      v9 = _os_crash_msg();
      __break(1u);
LABEL_17:
      re::internal::assertLog(5, v10, "assertion failure: '%s' (%s:line %i) pthread_key_create failed: %d", "result == 0", "addOwner", 269, v9);
      _os_crash("assertion failure: (result == 0) pthread_key_create failed: %d", v17);
      __break(1u);
    }

    v8 = *&this[12]._os_unfair_lock_opaque;
    if (!*(v8 + 8 * v6))
    {
      goto LABEL_6;
    }

    ++v6;
    v5 -= 8;
  }

  while (v6 != 16);
  re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) Too many PerFrameAllocator owners (more than %llu FrameManagers)", "!Unreachable code", "addOwner", 276, 16);
  _os_crash("assertion failure: (!Unreachable code) Too many PerFrameAllocator owners (more than %llu FrameManagers)", v16);
  __break(1u);
LABEL_6:
  *(v8 + 8 * v6) = a2;
  a2 = *&this[4]._os_unfair_lock_opaque;
  if (a2 <= v6)
  {
    goto LABEL_13;
  }

  v9 = pthread_key_create((*&this[6]._os_unfair_lock_opaque - v5), 0);
  if (v9)
  {
    goto LABEL_17;
  }

  os_unfair_lock_unlock(this + 30);
  return v6;
}

void re::PerFrameAllocatorManager::removeOwner(os_unfair_lock_s *this, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 30);
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v4 = this + 14;
  v33 = 0;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, &this[14], 0);
  *v36 = v43;
  *&v36[8] = DWORD2(v43);
  if (&this[14] == v43 && DWORD2(v43) == 0xFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v6 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v36);
      v7 = re::DataArray<re::PerFrameAllocatorImpl>::get(&this[14], v6);
      if (a2 == *(v7 + 24) >> 60 && *(v7 + 168) == 1)
      {
        *&v43 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v36);
        re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v31, &v43);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v36);
    }

    while (*v36 != v4 || *&v36[8] != 0xFFFF || *&v36[10] != 0xFFFF);
    v10 = v34;
    if (v32)
    {
      v11 = 0;
      v12 = 8 * v32;
      do
      {
        re::DataArray<re::PerFrameAllocatorImpl>::destroy(&this[14], *(v10 + v11));
        v11 += 8;
      }

      while (v12 != v11);
    }
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, &this[14], 0);
  if (v4 != v43 || DWORD2(v43) != 0xFFFFFFFFLL)
  {
    do
    {
      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::operator*(&v43);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v43);
    }

    while (v43 != v4 || WORD4(v43) != 0xFFFF || WORD5(v43) != 0xFFFF);
  }

  v16 = *&this[10]._os_unfair_lock_opaque;
  if (v16 <= a2)
  {
    v35 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v36 = 136315906;
    *&v36[4] = "operator[]";
    v37 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = a2;
    v41 = 2048;
    v42 = v16;
    _os_log_send_and_compose_impl(v21, &v35, &v43, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  *(*&this[12]._os_unfair_lock_opaque + 8 * a2) = 0;
  v16 = *&this[4]._os_unfair_lock_opaque;
  if (v16 <= a2)
  {
LABEL_45:
    v35 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v36 = 136315906;
    *&v36[4] = "operator[]";
    v37 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = a2;
    v41 = 2048;
    v42 = v16;
    _os_log_send_and_compose_impl(v24, &v35, &v43, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v29, v30);
    v17 = _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

  v17 = pthread_key_delete(*(*&this[6]._os_unfair_lock_opaque + 8 * a2));
  if (v17)
  {
LABEL_49:
    re::internal::assertLog(5, v18, "assertion failure: '%s' (%s:line %i) pthread_key_delete failed: %d", "result == 0", "removeOwner", 312, v17);
    _os_crash("assertion failure: (result == 0) pthread_key_delete failed: %d", v28);
    __break(1u);
LABEL_50:
    v35 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v36 = 136315906;
    *&v36[4] = "operator[]";
    v37 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = a2;
    v41 = 2048;
    v42 = v16;
    _os_log_send_and_compose_impl(v27, &v35, &v43, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
  }

  v16 = *&this[4]._os_unfair_lock_opaque;
  if (v16 <= a2)
  {
    goto LABEL_50;
  }

  *(*&this[6]._os_unfair_lock_opaque + 8 * a2) = 0;
  if (v31[0] && v10)
  {
    (*(*v31[0] + 40))();
  }

  os_unfair_lock_unlock(this + 30);
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::get(uint64_t a1, int a2)
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

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 184 * a2;
}

_anonymous_namespace_ *re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(_anonymous_namespace_ *result, void *a2)
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

        result = re::DynamicArray<float *>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<float *>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v5) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::operator*(unsigned __int16 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = *(*a1 + 16);
  if (v2 <= v1)
  {
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = MEMORY[0x1E69E9C10];
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v11 = 797;
    v12 = 2048;
    v13 = v1;
    v14 = 2048;
    v15 = v2;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 184 * a1[4];
}

uint64_t *re::PerFrameAllocatorManager::freeAllocatorsWithPredicate(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v74 = 0;
  os_unfair_lock_lock((a1 + 120));
  v6 = a2 >> 60;
  v7 = a1 + 56;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v66, a1 + 56, 0);
  v61 = v66;
  LODWORD(v62) = v67;
  if (a1 + 56 == v66 && v67 == 0xFFFFFFFFLL)
  {
    os_unfair_lock_unlock((a1 + 120));
    v10 = 0;
    goto LABEL_42;
  }

  v9 = 0;
  v10 = 0;
  v54 = a2;
  v55 = a3;
  v57 = a2 >> 60;
  do
  {
    v11 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::operator*(&v61);
    v12 = *(v11 + 24);
    if (v6 != v12 >> 60)
    {
      goto LABEL_29;
    }

    v13 = v11;
    v66 = a2;
    v76 = v12;
    if (!(*(**(a3 + 32) + 16))(*(a3 + 32), &v66, &v76))
    {
      goto LABEL_29;
    }

    v14 = *(v13 + 136);
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = re::BucketArray<re::Pair<void *,re::Function<void ()(void *)>,true>,64ul>::operator[](v13 + 96, i);
        v17 = v16;
        if (v10 >= v72)
        {
          v18 = v10 + 1;
          if (v72 < v18)
          {
            if (v71)
            {
              v19 = 8;
              if (v72)
              {
                v19 = 2 * v72;
              }

              if (v19 <= v18)
              {
                v20 = v18;
              }

              else
              {
                v20 = v19;
              }

              re::DynamicArray<re::Pair<void *,re::Function<void ()(void *)>,true>>::setCapacity(&v71, v20);
            }

            else
            {
              re::DynamicArray<re::Pair<void *,re::Function<void ()(void *)>,true>>::setCapacity(&v71, v18);
              ++v74;
            }
          }

          v10 = v73;
          v9 = v75;
        }

        v21 = (v9 + 48 * v10);
        *v21 = *v17;
        v21[4] = *(v17 + 4);
        v21[5] = 0;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((v21 + 1), v17 + 8);
        v10 = ++v73;
        ++v74;
      }

      v22 = *(v13 + 136);
      if (v22)
      {
        v23 = 0;
        v6 = v57;
        do
        {
          v24 = re::BucketArray<re::Pair<void *,re::Function<void ()(void *)>,true>,64ul>::operator[](v13 + 96, v23);
          re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v24 + 8);
          ++v23;
        }

        while (v22 != v23);
        a2 = v54;
        a3 = v55;
        goto LABEL_28;
      }

      a2 = v54;
      a3 = v55;
    }

    v6 = v57;
LABEL_28:
    *(v13 + 136) = 0;
    ++*(v13 + 144);
LABEL_29:
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v61);
  }

  while (v61 != v7 || v62 != 0xFFFF || WORD1(v62) != 0xFFFF);
  os_unfair_lock_unlock((a1 + 120));
  if (!v10)
  {
LABEL_42:
    v30 = 1;
    goto LABEL_43;
  }

  v27 = (v75 + 48 * v10 - 8);
  v28 = -48 * v10;
  do
  {
    v66 = *(v27 - 5);
    v29 = *v27;
    v27 -= 6;
    (*(*v29 + 16))(v29, &v66);
    v28 += 48;
  }

  while (v28);
  v30 = 0;
LABEL_43:
  os_unfair_lock_lock((a1 + 120));
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v69 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v64 = 0;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v76, a1 + 56, 0);
  v59 = v76;
  v60 = v77;
  if (v7 == v76 && v77 == 0xFFFFFFFFLL)
  {
    v31 = 0;
  }

  else
  {
    do
    {
      v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v59);
      v33 = re::DataArray<re::PerFrameAllocatorImpl>::get(a1 + 56, v32);
      v34 = *(v33 + 24);
      if (v6 == v34 >> 60)
      {
        v35 = v33;
        v76 = a2;
        v78 = v34;
        if ((*(**(a3 + 32) + 16))(*(a3 + 32), &v76, &v78))
        {
          v76 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v59);
          re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(&v66, &v76);
        }

        if (*(v35 + 168) == 1)
        {
          v36 = *(v35 + 172);
          if (v36 >= 1)
          {
            *(v35 + 172) = --v36;
          }

          if (!v36 && *(v35 + 176) == 1)
          {
            v76 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v59);
            re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(&v61, &v76);
          }
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v59);
    }

    while (v59 != v7 || v60 != 0xFFFF || HIWORD(v60) != 0xFFFF);
    v31 = v70;
    if (v68)
    {
      v58 = v30;
      v39 = v70;
      v56 = v70;
      v40 = &v70[v68];
      do
      {
        v42 = re::DataArray<re::PerFrameAllocatorImpl>::get(a1 + 56, *v39);
        *(v42 + 168) = 1;
        if (*(v42 + 72))
        {
          v43 = 0;
          do
          {
            v44 = *(*(v42 + 88) + 8 * v43);
            v76 = v44;
            v45 = re::PerFrameAllocatorManager::sizeToIndex(*(v44 + 8), v41);
            if (v45 < *(a1 + 144))
            {
              *(v44 + 56) = *(v44 + 40);
              re::DynamicArray<re::RigDataValue *>::add((*(a1 + 160) + 88 * v45 + 8), &v76);
            }

            ++v43;
          }

          while (*(v42 + 72) > v43);
        }

        *(v42 + 72) = 0;
        ++*(v42 + 80);
        *(v42 + 40) = 0;
        *(v42 + 48) = 0;
        *(v42 + 32) = 0;
        ++v39;
      }

      while (v39 != v40);
      v30 = v58;
      v31 = v56;
    }
  }

  v46 = v65;
  if (v63)
  {
    v47 = 8 * v63;
    v48 = v65;
    do
    {
      v49 = *v48++;
      re::DataArray<re::PerFrameAllocatorImpl>::destroy(a1 + 56, v49);
      v47 -= 8;
    }

    while (v47);
  }

  if (v61)
  {
    v50 = v46 == 0;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    (*(*v61 + 40))();
  }

  if (v66 && v31)
  {
    (*(*v66 + 40))();
  }

  os_unfair_lock_unlock((a1 + 120));
  result = v71;
  if (v71 && v75)
  {
    if ((v30 & 1) == 0)
    {
      v52 = 48 * v10;
      v53 = v75 + 8;
      do
      {
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v53);
        v53 += 48;
        v52 -= 48;
      }

      while (v52);
      result = v71;
    }

    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t (***re::PerFrameAllocatorManager::freeAllocatorsOlderOrEqual(re *a1, unint64_t a2))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v6[0] = &unk_1F5CCF628;
  v6[3] = v4;
  v6[4] = v6;
  re::PerFrameAllocatorManager::freeAllocatorsWithPredicate(a1, a2, v6);
  return re::FunctionBase<24ul,BOOL ()(re::FrameCount,re::FrameCount)>::destroyCallable(v6);
}

uint64_t (***re::PerFrameAllocatorManager::freeAllocatorsForFrame(re *a1, unint64_t a2))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v6[0] = &unk_1F5CCF690;
  v6[3] = v4;
  v6[4] = v6;
  re::PerFrameAllocatorManager::freeAllocatorsWithPredicate(a1, a2, v6);
  return re::FunctionBase<24ul,BOOL ()(re::FrameCount,re::FrameCount)>::destroyCallable(v6);
}

uint64_t re::InlineString<32ul>::format@<X0>(uint64_t a1@<X8>, ...)
{
  va_start(va, a1);
  *(a1 + 8) = 0u;
  v2 = a1 + 8;
  *(a1 + 24) = 0u;
  *a1 = 0;
  result = vsnprintf((a1 + 8), 0x20uLL, "PerThreadAllocator.%s", va);
  if ((result & 0x80000000) != 0)
  {
    *(v2 + *a1) = 0;
  }

  else
  {
    v5 = *a1 + result;
    if (v5 >= 0x20)
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

uint64_t *re::getValidAllocator(re *a1)
{
  v2 = re::globalAllocators(a1);
  result = re::PerFrameAllocatorManager::perFrameAllocator(v2[6], a1);
  if (*(result + 168) == 1)
  {
  }

  return result;
}

void re::LinearAllocator::~LinearAllocator(re::LinearAllocator *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 8);

  re::Allocator::~Allocator(this);
}

{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 8);
  re::Allocator::~Allocator(this);

  JUMPOUT(0x1E6906520);
}

uint64_t (***re::FunctionBase<24ul,void ()(void *)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::Callable<re::PerFrameAllocatorManager::freeAllocatorsOlderOrEqual(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CCF628;
  return result;
}

void *re::internal::Callable<re::PerFrameAllocatorManager::freeAllocatorsOlderOrEqual(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CCF628;
  return result;
}

uint64_t (***re::FunctionBase<24ul,BOOL ()(re::FrameCount,re::FrameCount)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::Callable<re::PerFrameAllocatorManager::freeAllocatorsForFrame(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CCF690;
  return result;
}

void *re::internal::Callable<re::PerFrameAllocatorManager::freeAllocatorsForFrame(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CCF690;
  return result;
}

uint64_t re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(a1);
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
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(a2);
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

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(a1);
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

_anonymous_namespace_ *re::BucketArray<re::Pair<void *,re::Function<void ()(void *)>,true>,64ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 6)
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
          result = (*(**v3 + 32))(*v3, 3072, 0);
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
    result = re::BucketArray<re::Pair<void *,re::Function<void ()(void *)>,true>,64ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(void *result)
{
  if (result[1] != 15)
  {
    v1 = result;
    if (result[2] <= 0xFuLL)
    {
      v2 = *result;
      if (*v1)
      {
        result = (*(*v2 + 32))(v2, 1320, 8);
        if (result)
        {
          v4 = result;
          if (v1[1])
          {
            v5 = v1[4];
            v6 = v1[2];
            if (v6)
            {
              v7 = v5 + 88 * v6;
              v8 = result;
              do
              {
                v9 = *v5;
                v8[5] = 0;
                *v8 = v9;
                v8[1] = 0;
                *(v8 + 8) = 0;
                v8[2] = 0;
                v8[3] = 0;
                v10 = v5 + 8;
                v11 = *(v5 + 16);
                v8[1] = *(v5 + 8);
                *(v5 + 8) = 0;
                v8[2] = v11;
                *(v5 + 16) = 0;
                v12 = v8[3];
                v8[3] = *(v5 + 24);
                *(v5 + 24) = v12;
                v13 = v8[5];
                v8[5] = *(v5 + 40);
                *(v5 + 40) = v13;
                ++*(v5 + 32);
                ++*(v8 + 8);
                v8[10] = 0;
                v8[7] = 0;
                v8[8] = 0;
                v8[6] = 0;
                *(v8 + 18) = 0;
                v14 = *(v5 + 48);
                v15 = *(v5 + 56);
                v16 = v5 + 48;
                v8[6] = v14;
                v8[7] = v15;
                *v16 = 0;
                *(v16 + 8) = 0;
                v17 = v8[8];
                v8[8] = *(v16 + 16);
                *(v16 + 16) = v17;
                v18 = v8[10];
                v8[10] = *(v16 + 32);
                *(v16 + 32) = v18;
                ++*(v16 + 24);
                ++*(v8 + 18);
                re::DynamicArray<unsigned long>::deinit(v16);
                re::DynamicArray<unsigned long>::deinit(v10);
                v8 += 11;
                v5 = v16 + 40;
              }

              while (v5 != v7);
              v5 = v1[4];
            }

            result = (*(**v1 + 40))(*v1, v5);
          }

          v1[4] = v4;
          v1[1] = 15;
        }

        else
        {
          re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 1320, *(*v1 + 8));
          result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v20);
          __break(1u);
        }
      }

      else
      {
        result = re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(v1);
        ++*(v1 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DataArray<re::PerFrameAllocatorImpl>::allocBlock(void *a1)
{
  v3 = 184 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

unint64_t re::BucketArray<re::Pair<void *,re::Function<void ()(void *)>,true>,64ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
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

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 6)
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

  return *(v5 + 8 * v2) + 48 * (a2 & 0x3F);
}

void *re::DynamicArray<re::Pair<void *,re::Function<void ()(void *)>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<void *,re::Function<void ()(void *)>,true>>::setCapacity(v5, a2);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[4] = v8[4];
          v11[5] = 0;
          re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((v11 + 1), (v8 + 1));
          re::FunctionBase<24ul,void ()(void *)>::destroyCallable((v8 + 1));
          v8 += 6;
          v11 += 6;
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

unint64_t *re::InlineString<32ul>::copy(unint64_t *result, unint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_4;
  }

  if (v3 < 0x20)
  {
    result = memcpy(result + 1, a2 + 1, v3 + 1);
    v3 = *a2;
LABEL_4:
    *v2 = v3;
    return result;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "other.m_length < m_capacity", "copy", 481);
  result = _os_crash("assertion failure: (other.m_length < m_capacity) ");
  __break(1u);
  return result;
}

void *re::allocInfo_Range(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_134, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_134))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D9D0, "Range");
    __cxa_guard_release(&_MergedGlobals_134);
  }

  return &unk_1EE19D9D0;
}

void re::initInfo_Range(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 157454906;
  v16[1] = "Range";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE19D9B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D9B8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "lowerBound";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE19D9C0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_size_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "upperBound";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19D9C8 = v14;
    __cxa_guard_release(&qword_1EE19D9B8);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19D9C0;
  *(this + 9) = re::internal::defaultConstruct<re::Range>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Range>;
  *(this + 13) = re::internal::defaultConstructV2<re::Range>;
  *(this + 14) = re::internal::defaultDestructV2<re::Range>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstructV2<re::Range>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void re::AutoFreeAllocator::~AutoFreeAllocator(re::AutoFreeAllocator *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 6) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 16);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    v7 = *(*(this + 6) + 24 * v3 + 16);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 32, &v7);
    (*(**(this + 3) + 40))(*(this + 3), v7);
    v6 = *(this + 16);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 6) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(this + 32);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 4);
  re::Allocator::~Allocator(this);
}

{
  re::AutoFreeAllocator::~AutoFreeAllocator(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AutoFreeAllocator::free(re::AutoFreeAllocator *this, unint64_t a2)
{
  v4 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 32, &v4);
  return (*(**(this + 3) + 40))(*(this + 3), v4);
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

uint64_t re::AutoFreeAllocator::alloc(re::AutoFreeAllocator *this, uint64_t a2)
{
  v4 = (*(**(this + 3) + 32))(*(this + 3), a2, 0);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(this + 32, &v4);
  return v4;
}

uint64_t re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::addAsCopy(a1, v8, v6, a2, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 24 * v12;
    return v11 + 16;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 24 * v9 + 16) != v4)
  {
    LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 24 * v9;
  return v11 + 16;
}

re::ThreadSafeAutoFreeAllocator *re::ThreadSafeAutoFreeAllocator::ThreadSafeAutoFreeAllocator(re::ThreadSafeAutoFreeAllocator *this, const char *a2, re::Allocator *a3)
{
  *(this + 16) = 0;
  *this = &unk_1F5CCF740;
  *(this + 1) = a2;
  *(this + 3) = a3;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 2) = 0u;
  *(this + 68) = 0x7FFFFFFFLL;
  *(this + 20) = 0;
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(this + 32, a3, 3);
  return this;
}

void re::ThreadSafeAutoFreeAllocator::~ThreadSafeAutoFreeAllocator(re::ThreadSafeAutoFreeAllocator *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 6) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 16);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::ThreadSafeAutoFreeAllocator::free(this, *(*(this + 6) + 24 * v3 + 16));
    v6 = *(this + 16);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 6) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(this + 32);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 4);

  re::Allocator::~Allocator(this);
}

{
  re::ThreadSafeAutoFreeAllocator::~ThreadSafeAutoFreeAllocator(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ThreadSafeAutoFreeAllocator::free(os_unfair_lock_s *this, unint64_t a2)
{
  v4 = a2;
  os_unfair_lock_lock(this + 20);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(&this[8], &v4);
  os_unfair_lock_unlock(this + 20);
  return (*(**&this[6]._os_unfair_lock_opaque + 40))(*&this[6]._os_unfair_lock_opaque, v4);
}

uint64_t re::ThreadSafeAutoFreeAllocator::alloc(re::ThreadSafeAutoFreeAllocator *this, uint64_t a2)
{
  v4 = (*(**(this + 3) + 32))(*(this + 3), a2, 0);
  os_unfair_lock_lock(this + 20);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(this + 32, &v4);
  os_unfair_lock_unlock(this + 20);
  return v4;
}

void re::defaultTemporaryDirectoryPath(uint64_t a1@<X8>)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 temporaryDirectory];
  v4 = [v3 path];

  if (v4)
  {
    v5 = [v4 UTF8String];
    *(a1 + 8) = v7;
    *(a1 + 32) = v9;
    *(a1 + 16) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

uint64_t MurmurHash3_x64_128(uint64_t result, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  v4 = a3;
  v5 = a3;
  while (2)
  {
    v8 = (result + (a2 & 0xFFFFFFFFFFFFFFF0));
    v9 = 0;
    switch(a2)
    {
      case 0uLL:
        goto LABEL_20;
      case 1uLL:
        goto LABEL_19;
      case 2uLL:
        goto LABEL_18;
      case 3uLL:
        goto LABEL_17;
      case 4uLL:
        goto LABEL_16;
      case 5uLL:
        goto LABEL_15;
      case 6uLL:
        goto LABEL_14;
      case 7uLL:
        goto LABEL_13;
      case 8uLL:
        goto LABEL_12;
      case 9uLL:
        goto LABEL_11;
      case 0xAuLL:
        goto LABEL_10;
      case 0xBuLL:
        goto LABEL_9;
      case 0xCuLL:
        goto LABEL_8;
      case 0xDuLL:
        goto LABEL_7;
      case 0xEuLL:
        goto LABEL_6;
      case 0xFuLL:
        v9 = v8[14] << 48;
LABEL_6:
        v9 |= v8[13] << 40;
LABEL_7:
        v9 ^= v8[12] << 32;
LABEL_8:
        v9 ^= v8[11] << 24;
LABEL_9:
        v9 ^= v8[10] << 16;
LABEL_10:
        v9 ^= v8[9] << 8;
LABEL_11:
        v5 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v9 ^ v8[8])) | ((0x4CF5AD432745937FLL * (v9 ^ v8[8])) >> 31));
LABEL_12:
        v9 = v8[7] << 56;
LABEL_13:
        v9 |= v8[6] << 48;
LABEL_14:
        v9 ^= v8[5] << 40;
LABEL_15:
        v9 ^= v8[4] << 32;
LABEL_16:
        v9 ^= v8[3] << 24;
LABEL_17:
        v9 ^= v8[2] << 16;
LABEL_18:
        v9 ^= v8[1] << 8;
LABEL_19:
        v4 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v9 ^ *v8)) | ((0x87C37B91114253D5 * (v9 ^ *v8)) >> 33));
LABEL_20:
        v10 = (v4 ^ a2) + (v5 ^ a2);
        v11 = v10 + (v5 ^ a2);
        v12 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
        v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
        v14 = v13 ^ (v13 >> 33);
        v15 = v14 + (v12 ^ (v12 >> 33));
        *a4 = v15;
        a4[1] = v15 + v14;
        return result;
      default:
        v6 = a2 >> 4;
        v7 = (result + 8);
        v5 = v4;
        do
        {
          v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v7 - 1)) | ((0x87C37B91114253D5 * *(v7 - 1)) >> 33))) ^ v4, 37) + v5) + 1390208809;
          v5 = 5 * (v4 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v7) | ((0x4CF5AD432745937FLL * *v7) >> 31))) ^ v5, 33)) + 944331445;
          v7 += 2;
          --v6;
        }

        while (v6);
        continue;
    }
  }
}

uint64_t re::SharedObjectBase::dispose(re::SharedObjectBase *this)
{
  v2 = (*(*this + 24))(this);
  (**this)(this);
  v3 = *(*v2 + 40);

  return v3(v2, this);
}

uint64_t re::SharedObject::dispose(re::SharedObject *this)
{
  v2 = *(this + 2);
  (**this)(this);
  v3 = *(*v2 + 40);

  return v3(v2, this);
}

void re::MallocAllocator::~MallocAllocator(re::MallocAllocator *this)
{
  re::Allocator::~Allocator(this);

  JUMPOUT(0x1E6906520);
}

void *re::MallocAllocator::alloc(re::MallocAllocator *this, size_t size, unint64_t a3)
{
  v3 = 16;
  if (a3 > 0x10)
  {
    v3 = a3;
  }

  memptr = 0;
  malloc_type_posix_memalign(&memptr, (v3 + 7) & 0xFFFFFFFFFFFFFFF8, size, 0xAE8B065EuLL);
  return memptr;
}

uint64_t ArcObjectDestroy(char *a1, objc_selector *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 16))();
}

void ArcSharedObject::ArcSharedObject(ArcSharedObject *this, Class cls)
{
  v2 = cls;
  *this = &unk_1F5CCF868;
  if (!cls)
  {
    v4 = &re::introspect_BOOL(BOOL)::info;
    {
      v4 = &re::introspect_BOOL(BOOL)::info;
      if (v5)
      {
        ArcObjectClass(void)::cls = ArcObjectClass(void)::$_0::operator()();
        v4 = &re::introspect_BOOL(BOOL)::info;
      }
    }

    v2 = *(v4 + 373);
  }

  *(this + 1) = 0;
  objc_constructInstance(v2, this + 8);
}

void ArcSharedObject::~ArcSharedObject(ArcSharedObject *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void ArcSharedObject::dispose(ArcSharedObject *this)
{
  (**this)(this);

  free(this);
}

Class ArcObjectClass(void)::$_0::operator()()
{
  v0 = objc_opt_class();
  ClassPair = objc_allocateClassPair(v0, "_REArcObject", 0);
  if (ClassPair)
  {
    v2 = ClassPair;
    class_addMethod(ClassPair, sel_dealloc, ArcObjectDestroy, "");
    objc_registerClassPair(v2);
    return v2;
  }

  else
  {

    return objc_getClass("_REArcObject");
  }
}

re::DynamicString *re::AnimationLibraryCompiler::getCurrentCompiledAssetInfo@<X0>(re::AnimationLibraryCompiler *this@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::AnimationLibraryAsset::assetType(this);
  v4 = *v3;
}

uint64_t re::AnimationLibraryCompiler::assetIntrospectionType(re::AnimationLibraryCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::AnimationLibraryAsset>(BOOL)::info = re::introspect_AnimationLibraryAsset(0, v4, v5, v6, v7, v8);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 346);
}

uint64_t re::AnimationLibraryCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3 = "reAnimationLibrary";
  v2[0] = &v3;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

uint64_t *re::AnimationLibraryCompiler::compile@<X0>(re::AnimationLibraryCompiler *this@<X0>, char *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v7 = re::globalAllocators(this);
  v8 = (*(*v7[2] + 32))(v7[2], 224, 8);
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 0u;
  *(v8 + 196) = 0x7FFFFFFF;
  *(v8 + 208) = 0;
  *(v8 + 216) = &str_67;
  *&v29 = &unk_1F5CCF908;
  *(&v30 + 1) = &v29;
  v34[3] = v34;
  v33 = v8;
  v34[0] = &unk_1F5CCF908;
  std::__function::__value_func<void ()(re::AnimationLibraryAsset *)>::~__value_func[abi:nn200100](&v29);
  v9 = strrchr(a2, 46);
  if (!strcasecmp(v9 + 1, "reanimationlibrary"))
  {
    v13 = v33;
    v14 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    {
      v20 = v13;
      v14 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      v13 = v20;
      if (v21)
      {
        re::introspect<re::AnimationLibraryAsset>(BOOL)::info = re::introspect_AnimationLibraryAsset(0, v20, v22, v23, v24, v25);
        v14 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
        v13 = v20;
      }
    }

    re::AssetUtilities::readSourceJson(&v26, a2, v13, *(v14 + 346), a3);
    if (v26)
    {
      v15 = v33;
      v33 = 0;
      *a4 = 1;
      *(a4 + 8) = v15;
    }

    else
    {
      *&v29 = 100;
      *(&v29 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v30, &v27);
      v16 = v30;
      *(a4 + 8) = v29;
      v17 = v31;
      v18 = v32;
      *a4 = 0;
      *(a4 + 24) = v16;
      *(a4 + 40) = v17;
      *(a4 + 48) = v18;
      if (v26 & 1) == 0 && v27 && (v28)
      {
        (*(*v27 + 40))();
      }
    }
  }

  else
  {
    re::DynamicString::format(&v29, "Invalid Asset Path: %s.", v10, a2);
    v11 = v29;
    v12 = v30;
    *a4 = 0;
    *(a4 + 8) = 200;
    *(a4 + 16) = re::AssetErrorCategory(void)::instance;
    *(a4 + 24) = v11;
    *(a4 + 40) = v12;
  }

  return std::unique_ptr<re::AnimationLibraryAsset,std::function<void ()(re::AnimationLibraryAsset*)>>::~unique_ptr[abi:nn200100](&v33);
}

uint64_t std::__function::__func<re::AnimationLibraryCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0,std::allocator<re::AnimationLibraryCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0>,void ()(re::AnimationLibraryAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::AnimationLibraryAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::AnimationLibraryAsset,std::function<void ()(re::AnimationLibraryAsset*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::AnimationLibraryAsset *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::AnimationLibraryAsset *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::AnimationLibraryAsset *)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::TextureBuilder::TextureBuilder(v4, v5, v6);
}

uint64_t re::TextureBuilder::TextureBuilder(uint64_t a1, re::StringID *a2, void *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CCF998;
  *(a1 + 24) = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v6 = re::ServiceLocator::service<re::ImportGraphicsResources>(a2);
  re::ImportGraphicsContext::ImportGraphicsContext(a1 + 32, v6);
  v7 = [a3 copy];
  *(a1 + 64) = v7;
  if (*(a1 + 51) == 1)
  {
    v9 = *(a1 + 52);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 72) = v9;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0;
  if (*(a1 + 24))
  {
    if (v7)
    {
      return a1;
    }
  }

  else
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) TextureBuilder expected an AssetManager", "m_assetManager", "TextureBuilder", 138);
    _os_crash("assertion failure: (m_assetManager) TextureBuilder expected an AssetManager");
    __break(1u);
  }

  re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) TextureBuilder expected a MTLTextureDescriptor", "m_textureDescriptor.isValid()", "TextureBuilder", 139);
  result = _os_crash("assertion failure: (m_textureDescriptor.isValid()) TextureBuilder expected a MTLTextureDescriptor");
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::service<re::ImportGraphicsResources>(re::StringID *a1)
{
  result = re::ServiceLocator::serviceOrNull<re::ImportGraphicsResources>(a1);
  if (!result)
  {
    v2 = re::introspect<re::ImportGraphicsResources>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v2, v7);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    v3 = re::introspect<re::ImportGraphicsResources>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v3, v7);
    if (v9)
    {
      v5 = *&v10[7];
    }

    else
    {
      v5 = v10;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    result = _os_crash("assertion failure: (service) %s", v6);
    __break(1u);
  }

  return result;
}

void re::TextureBuilder::~TextureBuilder(re::TextureBuilder *this)
{
  *this = &unk_1F5CCF998;
  v2 = *(this + 13);
  if (v2)
  {
    objc_msgSend_endEncoding(v2);
    v3 = *(this + 13);
    *(this + 13) = 0;

    v4 = *(this + 13);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 11);
  if (v5)
  {

    *(this + 11) = 0;
  }

  v6 = *(this + 8);
  if (v6)
  {

    *(this + 8) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::TextureBuilder::~TextureBuilder(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::TextureBuilder::beginEncodeBlitCommands(re::TextureBuilder *this)
{
  v3[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 10) && (v3[0] = &unk_1F5CCFA58, v3[1] = this, v3[3] = v3, re::runInLocalAutoreleasePool(v3), std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3), *(this + 11)) && *(this + 12))
  {
    return *(this + 13) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t re::TextureBuilder::commitCommandBuffer(uint64_t this)
{
  v1[4] = *MEMORY[0x1E69E9840];
  if (*(this + 96))
  {
    v1[0] = &unk_1F5CCFAD8;
    v1[1] = this;
    v1[3] = v1;
    re::runInLocalAutoreleasePool(v1);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1);
  }

  return this;
}

uint64_t re::TextureBuilder::makeTextureAsset(re::TextureBuilder *this)
{
  if ((*(this + 19) - 3) > 1)
  {
    CGColorSpaceNameForPixelFormat = 0;
  }

  else
  {
    CGColorSpaceNameForPixelFormat = re::ColorHelpers::getCGColorSpaceNameForPixelFormat([*(this + 8) pixelFormat], *(this + 72));
  }

  v8 = 0;
  v16 = 0;
  memset(v18, 0, 28);
  v19 = 0;
  v20 = 0;
  v17 = CGColorSpaceNameForPixelFormat;
  v9 = [*(this + 8) width];
  v10 = [*(this + 8) height];
  v11 = [*(this + 8) depth];
  v14 = [*(this + 8) mipmapLevelCount];
  v12 = [*(this + 8) arrayLength];
  if ([*(this + 8) textureType] - 5 >= 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 6;
  }

  v13 = v3;
  v15 = [*(this + 8) pixelFormat];
  v6 = *(this + 11);
  v7 = 0;
  TextureAsset = re::TextureAsset::makeTextureAsset((this + 32), &v6, &v8, *(this + 19), 0);
  if (v7 != -1)
  {
    (off_1F5CCF9D0[v7])(&v21, &v6);
  }

  *(TextureAsset + 85) = 1;
  if (*&v18[0])
  {
    if (v19)
    {
      (*(**&v18[0] + 40))();
    }

    v19 = 0;
    memset(v18, 0, 24);
    ++DWORD2(v18[1]);
  }

  if (v16)
  {
  }

  return TextureAsset;
}

void re::TextureBuilder::makeAssetSync(re::TextureBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 80);
  v3 = *(this + 10);
  if (v3)
  {
    v5 = v3;
    *a2 = 0;
    *(a2 + 8) = v5;
  }

  else
  {
    v7 = (this + 96);
    if (*(this + 12) && (re::TextureBuilder::commitCommandBuffer(this), [*(this + 12) waitUntilCompleted], objc_msgSend(*(this + 12), "status") != 4))
    {
      re::internal::makeCommandBufferError(&v19, v7);
      if (v4 != &v19)
      {
        v16 = v19;
        *&v19 = 0;
        v17 = *v4;
        *v4 = v16;
      }

      v18 = *v4;
      *a2 = 0;
      *(a2 + 8) = v18;
    }

    else
    {
      TextureAsset = re::TextureBuilder::makeTextureAsset(this);
      v9 = *(this + 3);
      v10 = re::TextureAsset::assetType(TextureAsset);
      (*(*v9 + 424))(&v22, v9, TextureAsset, v10, 1, 1, 0);
      if (v23 && (v11 = atomic_load((v23 + 896)), v11 == 3))
      {
        re::AssetHandle::loadFailedMessage(&v22, &v19);
        if (BYTE8(v19))
        {
          v12 = v20;
        }

        else
        {
          v12 = &v19 + 9;
        }

        re::WrappedError::make(&v21, @"RETextureBuilderErrorDomain", 2, v12);
        if (v4 != &v21)
        {
          v13 = v21;
          v21 = 0;
          v14 = *v4;
          *v4 = v13;
        }

        if (v19 && (BYTE8(v19) & 1) != 0)
        {
          (*(*v19 + 40))();
        }

        v15 = *v4;
        *a2 = 0;
        *(a2 + 8) = v15;
      }

      else
      {
        re::AssetHandle::AssetHandle(&v19, &v22);
        *a2 = 1;
        *(a2 + 8) = v19;
        v19 = 0uLL;
        *(a2 + 24) = v20;
        v20 = 0;
        re::AssetHandle::~AssetHandle(&v19);
      }

      re::AssetHandle::~AssetHandle(&v22);
    }
  }
}

void re::internal::makeCommandBufferError(re::internal *this, id *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  re::mtl::CommandBuffer::error(this, a2);
  v5 = *re::pipelineLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = [*a2 status];
    v9 = *this;
    *v10 = 134218242;
    *&v10[4] = v8;
    v11 = 2112;
    v12 = v9;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "TextureBuilder command buffer did not complete (status = %zu, error = %@)", v10, 0x16u);
  }

  if (!*this)
  {
    re::WrappedError::make(v10, @"RETextureBuilderErrorDomain", 3, "Command buffer did not complete");
    if (v10 != this)
    {
      v6 = *v10;
      *v10 = 0;
      v7 = *this;
      *this = v6;
    }
  }
}

void re::TextureBuilder::makeAssetAsync(uint64_t a1, uint64_t a2)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  if (v3)
  {
    v28[0] = 0;
    v29[0] = v3;
    (*(**(a2 + 32) + 16))(*(a2 + 32), v28);
    if (v28[0] == 1)
    {
      re::AssetHandle::~AssetHandle(v29);
    }

    else
    {
    }
  }

  else
  {
    v5 = re::globalAllocators(a1);
    v6 = (*(*v5[2] + 32))(v5[2], 112, 8);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    ArcSharedObject::ArcSharedObject(v6, 0);
    *v6 = &unk_1F5CCFB58;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 80) = re::globalAllocators(v7)[2];
    *(v6 + 88) = 0;
    v8 = (v6 + 88);
    *(v6 + 104) = 0;
    *(v6 + 94) = 0;
    TextureAsset = re::TextureBuilder::makeTextureAsset(a1);
    v10 = *(a1 + 24);
    v11 = re::TextureAsset::assetType(TextureAsset);
    (*(*v10 + 424))(&v26, v10, TextureAsset, v11, 1, 1, 1);
    v12 = *(v6 + 24);
    *(v6 + 24) = v26;
    v26 = v12;
    v13 = *(v6 + 40);
    *(v6 + 40) = v27;
    v27 = v13;
    re::AssetManager::makeLoadRequest(&v25, *(a1 + 24));
    v14 = *(v6 + 48);
    *(v6 + 48) = v25;
    v25 = v14;
    if (v14)
    {
    }

    v15 = v6 + 56;
    if (v6 + 56 != a2)
    {
      re::FunctionBase<24ul,void ()(re::Result<re::AssetHandle,re::WrappedError>)>::destroyCallable(v6 + 56);
      v16 = *(a2 + 32);
      if (*(v6 + 80) != *(a2 + 24) || v16 == a2)
      {
        if (v16)
        {
          v17 = (*(*v16 + 40))(v16);
          if (v17 >= 0x19)
          {
            v18 = v17;
            v19 = *(v6 + 80);
            if (v19)
            {
              v15 = (*(*v19 + 32))(v19, v18, 0);
            }

            else
            {
              v15 = 0;
            }
          }

          *v8 = v15;
          (*(**(a2 + 32) + 32))(*(a2 + 32), v15);
          re::FunctionBase<24ul,void ()(re::Result<re::AssetHandle,re::WrappedError>)>::destroyCallable(a2);
        }
      }

      else
      {
        *v8 = v16;
        *(a2 + 32) = 0;
      }
    }

    re::AssetHandle::~AssetHandle(&v26);
    if (*(a1 + 104))
    {
      v20 = re::globalAllocators((v6 + 8))[2];
      v31[0] = &unk_1F5CCF9F0;
      v31[1] = v6;
      v31[3] = v20;
      v31[4] = v31;
      re::mtl::CommandBuffer::addCompletionHandler((a1 + 96), v31);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v31);
      re::TextureBuilder::commitCommandBuffer(a1);
    }

    else
    {
      v23[0] = 1;
      re::internal::TextureBuilderAsync::commandBufferDidComplete(v6, v23);
      if ((v23[0] & 1) == 0)
      {
      }
    }

    v21 = *(v6 + 48);
    v22 = (v6 + 8);
    v30[0] = &unk_1F5CCFBA0;
    v30[1] = v6;
    v30[3] = v30;
    re::AssetLoadRequest::setCompletionHandler(v21, v30, 0);
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v30);
    re::AssetLoadRequest::addAsset(*(v6 + 48), (v6 + 24));
  }
}

void re::internal::TextureBuilderAsync::commandBufferDidComplete(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 96));
  if (*(a1 + 100) == 1)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "!m_commandBufferCompleted", "commandBufferDidComplete", 54);
    _os_crash("assertion failure: (!m_commandBufferCompleted) ");
    __break(1u);
  }

  else
  {
    *(a1 + 100) = 1;
    if (*a2 & 1) != 0 || (re::ObjCObject::operator=((a1 + 104), (a2 + 8)), (*(a1 + 100)))
    {
      v5 = *(a1 + 101);
      os_unfair_lock_unlock((a1 + 96));
      if (v5 == 1)
      {

        re::internal::TextureBuilderAsync::callCompletionHandler(a1);
      }
    }

    else
    {

      os_unfair_lock_unlock((a1 + 96));
    }
  }
}

uint64_t (***re::FunctionBase<24ul,void ()(re::Result<re::AssetHandle,re::WrappedError>)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::Callable<re::TextureBuilder::makeAssetAsync(re::Function<void ()(re::Result<re::AssetHandle,re::WrappedError>)>)::$_0,void ()(re::mtl::CommandBuffer const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CCF9F0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void re::internal::Callable<re::TextureBuilder::makeAssetAsync(re::Function<void ()(re::Result<re::AssetHandle,re::WrappedError>)>)::$_0,void ()(re::mtl::CommandBuffer const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CCF9F0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::TextureBuilder::makeAssetAsync(re::Function<void ()(re::Result<re::AssetHandle,re::WrappedError>)>)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v4 = [*a2 status];
  v5 = *(a1 + 8);
  if (v4 == 4)
  {
    v9[0] = 1;
    re::internal::TextureBuilderAsync::commandBufferDidComplete(v5, v9);
    if (v9[0])
    {
      return;
    }

    v6 = v10;
  }

  else
  {
    re::internal::makeCommandBufferError(&v8, a2);
    v7 = v8;
    v8 = 0;
    v9[0] = 0;
    v10 = v7;
    re::internal::TextureBuilderAsync::commandBufferDidComplete(v5, v9);
    if ((v9[0] & 1) == 0)
    {
    }

    v6 = v8;
  }
}

void *re::internal::Callable<re::TextureBuilder::makeAssetAsync(re::Function<void ()(re::Result<re::AssetHandle,re::WrappedError>)>)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1F5CCF9F0;
  a2[1] = v3;
  if (v3)
  {
    v4 = (v3 + 8);
  }

  return a2;
}

void *re::internal::Callable<re::TextureBuilder::makeAssetAsync(re::Function<void ()(re::Result<re::AssetHandle,re::WrappedError>)>)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CCF9F0;
  a2[1] = v2;
  *(a1 + 8) = 0;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::internal::TextureBuilderAsync::callCompletionHandler(re::internal::TextureBuilderAsync *this))(void)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 13) = 0;
    v11[0] = 0;
    v12[0] = v2;
    (*(**(this + 11) + 16))(*(this + 11), v11);
    if (v11[0] == 1)
    {
      re::AssetHandle::~AssetHandle(v12);
    }

    else
    {
    }
  }

  else
  {
    v3 = *(this + 24);
    *(this + 24) = 0u;
    v4 = *(this + 5);
    *(this + 5) = 0;
    v13[0] = 1;
    v14 = v3;
    v16 = 0u;
    v15 = v4;
    v17 = 0;
    (*(**(this + 11) + 16))(*(this + 11), v13);
    if (v13[0] == 1)
    {
      re::AssetHandle::~AssetHandle(&v14);
    }

    else
    {
    }

    re::AssetHandle::~AssetHandle(&v16);
  }

  v5 = *(this + 3);
  if (v5)
  {

    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  v6 = this + 56;
  v18 = 0;
  v19 = 0;
  if ((this + 56) != &v16)
  {
    re::FunctionBase<24ul,void ()(re::Result<re::AssetHandle,re::WrappedError>)>::destroyCallable(this + 56);
    if (v19)
    {
      v7 = (*(*v19 + 40))(v19);
      if (v7 >= 0x19)
      {
        v8 = v7;
        v9 = *(this + 10);
        if (v9)
        {
          v6 = (*(*v9 + 32))(v9, v8, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(this + 11) = v6;
      (*(*v19 + 24))(v19, v6);
    }
  }

  return re::FunctionBase<24ul,void ()(re::Result<re::AssetHandle,re::WrappedError>)>::destroyCallable(&v16);
}

uint64_t re::introspect<re::ImportGraphicsResources>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ImportGraphicsResources>(BOOL)::info = re::introspect_ImportGraphicsResources(a1, v4, v5, v6, v7, v8);
      v1 = &unk_1EE187000;
    }
  }

  return v1[190];
}

uint64_t std::__function::__func<re::TextureBuilder::beginEncodeBlitCommands(void)::$_0,std::allocator<re::TextureBuilder::beginEncodeBlitCommands(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCFA58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::TextureBuilder::beginEncodeBlitCommands(void)::$_0,std::allocator<re::TextureBuilder::beginEncodeBlitCommands(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = (v1 + 88);
  if (*(v1 + 88))
  {
    goto LABEL_19;
  }

  if (*(*(v1 + 24) + 2176) == 1 && [*(v1 + 32) supportsSharedTextureHandles])
  {
    [*(v1 + 64) setStorageMode_];
    re::mtl::Device::makeSharedTexture(v24, *(v1 + 64), (v1 + 32));
    NS::SharedPtr<MTL::Texture>::operator=(v2, v24);
    v3 = *v24;
    if (*v24)
    {
    }

    if (*v2)
    {
      goto LABEL_19;
    }

    v4 = *re::pipelineLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v21 = [*(v1 + 64) width];
      v22 = [*(v1 + 64) height];
      *v24 = 134218240;
      *&v24[4] = v21;
      *&v24[12] = 2048;
      *&v24[14] = v22;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Failed to allocate shared texture with dimensions %zu x %zu", v24, 0x16u);
    }

    v5 = "Failed to allocate shared texture";
    v6 = 1;
  }

  else
  {
    re::mtl::Device::makeTexture(v24, *(v1 + 64), (v1 + 32));
    NS::SharedPtr<MTL::Texture>::operator=(v2, v24);
    v7 = *v24;
    if (*v24)
    {
    }

    if (*v2)
    {
      goto LABEL_19;
    }

    v8 = *re::pipelineLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(v1 + 64) width];
      v20 = [*(v1 + 64) height];
      *v24 = 134218240;
      *&v24[4] = v19;
      *&v24[12] = 2048;
      *&v24[14] = v20;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Failed to allocate texture with dimensions %zu x %zu", v24, 0x16u);
    }

    v5 = "Failed to allocate texture";
    v6 = 0;
  }

  re::WrappedError::make(v24, @"RETextureBuilderErrorDomain", v6, v5);
  v9 = (v1 + 80);
  if ((v1 + 80) != v24)
  {
    v10 = *v24;
    *v24 = 0;
    v11 = *v9;
    *v9 = v10;
  }

  if (*v2)
  {
LABEL_19:
    v12 = (v1 + 96);
    if (!*(v1 + 96))
    {
      *v24 = 0x60C128E0D03BE2D1;
      *&v24[8] = "TextureBuilderQueue";
      re::ImportGraphicsContext::getOrCreateCommandQueue((v1 + 32), v24, 1, &v23);
      re::mtl::CommandQueue::makeCommandBuffer(v24, &v23);
      if (v12 != v24)
      {
        v13 = *v24;
        *v24 = 0;
        v14 = *v12;
        *v12 = v13;
      }
    }

    v16 = *(v1 + 104);
    v15 = (v1 + 104);
    if (!v16)
    {
      re::mtl::CommandBuffer::makeBlitCommandEncoder(v24, v12);
      if (v15 != v24)
      {
        v17 = *v24;
        *v24 = 0;
        v18 = *v15;
        *v15 = v17;
      }
    }
  }
}