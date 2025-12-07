uint64_t re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
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

_anonymous_namespace_ *re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

              result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v13 + 1);
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
    re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void re::DynamicArray<re::DirectionalLightInfo>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::DirectionalLightInfo>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::DirectionalLightInfo *,re::DirectionalLightInfo *,re::DirectionalLightInfo *>(*(a2 + 32), *(a2 + 32) + 160 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 160 * v8;
      v12 = 160 * v4;
      do
      {
        v13 = v9 + v11;
        v14 = re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        v15 = *(v9 + v11 + 48);
        *(v14 + 2) = *(v9 + v11 + 32);
        *(v14 + 3) = v15;
        v16 = *(v9 + v11 + 64);
        v17 = *(v9 + v11 + 80);
        v18 = *(v9 + v11 + 96);
        *(v14 + 108) = *(v9 + v11 + 108);
        *(v14 + 5) = v17;
        *(v14 + 6) = v18;
        *(v14 + 4) = v16;
        *(v14 + 124) = *(v9 + v11 + 124);
        v19 = *(v9 + v11 + 132);
        *(v14 + 132) = v19;
        if (v19 == 1)
        {
          *(v14 + 133) = *(v13 + 133);
        }

        v20 = *(v13 + 134);
        *(v14 + 75) = *(v13 + 150);
        *(v14 + 134) = v20;
        v9 += 160;
        v12 -= 160;
        v10 += 160;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::DirectionalLightInfo *,re::DirectionalLightInfo *,re::DirectionalLightInfo *>(*(a2 + 32), *(a2 + 32) + 160 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + 160 * v4);
      v7 = 160 * v5 - 160 * v4;
      do
      {
        re::DynamicString::deinit(v6);
        v6 = (v6 + 160);
        v7 -= 160;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::DirectionalLightInfo>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 160 * v2;
    do
    {
      re::DynamicString::deinit(v3);
      v3 = (v3 + 160);
      v4 -= 160;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::DirectionalLightInfo *,re::DirectionalLightInfo *,re::DirectionalLightInfo *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = re::DynamicString::operator=((a3 + v6), (a1 + v6));
      v8 = *(a1 + v6 + 48);
      *(v7 + 2) = *(a1 + v6 + 32);
      *(v7 + 3) = v8;
      v9 = *(a1 + v6 + 64);
      v10 = *(a1 + v6 + 80);
      v11 = *(a1 + v6 + 96);
      *(v7 + 108) = *(a1 + v6 + 108);
      *(v7 + 5) = v10;
      *(v7 + 6) = v11;
      *(v7 + 4) = v9;
      *(v7 + 124) = *(a1 + v6 + 124);
      if (*(v7 + 132))
      {
        if (*(a1 + v6 + 132))
        {
          *(a3 + v6 + 133) = *(a1 + v6 + 133);
        }

        else
        {
          *(v7 + 132) = 0;
        }
      }

      else if (*(a1 + v6 + 132))
      {
        *(v7 + 132) = 1;
        *(a3 + v6 + 133) = *(a1 + v6 + 133);
      }

      v12 = a3 + v6;
      result = *(a1 + v6 + 134);
      *(v12 + 150) = *(a1 + v6 + 150);
      *(v12 + 134) = result;
      v6 += 160;
    }

    while (a1 + v6 != a2);
  }

  return result;
}

uint64_t *re::FixedArray<re::DataArrayHandle<re::TextureAtlasTile>>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 8 * a3, 8);
  v4[2] = result;
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
      *result++ = 0xFFFFFFFFLL;
      --v6;
    }

    while (v6);
  }

  *result = 0xFFFFFFFFLL;
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 480, 0);
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

              result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v13 + 1);
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
    re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
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

uint64_t re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v13 + 4)) ^ ((0xBF58476D1CE4E5B9 * *(v13 + 4)) >> 27));
                v18 = re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(a1, (v17 ^ (v17 >> 31)) % *(a1 + 24), v17 ^ (v17 >> 31));
                *(v18 + 4) = *(v13 + 4);
                v19 = *(v13 + 32);
                *(v18 + 16) = *(v13 + 16);
                *(v18 + 32) = v19;
              }

              v13 += 48;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 48 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 48 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 48 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 48 * v4;
}

_anonymous_namespace_ *re::SmallHashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,8ul,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false>::add(uint64_t a1, unsigned __int16 *a2, __int128 *a3)
{
  __src[34] = *MEMORY[0x1E69E9840];
  if (*(a1 + 2236))
  {
LABEL_2:

    return re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::add(a1 + 2208, a2, a3);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 272 * v7;
    v9 = (a1 + 32);
    v10 = *a2;
    result = (a1 + 48);
    v11 = 272 * v7;
    do
    {
      if (*(result - 8) == v10)
      {
        return result;
      }

      result = (result + 272);
      v11 -= 272;
    }

    while (v11);
    if ((v7 & 0xFFFFFFF8) != 0)
    {
      if (!*(a1 + 2208))
      {
        v12 = *a1;
        if (!*a1)
        {
        }

        re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(a1 + 2208, v12, 16);
        v13 = *(a1 + 16);
        if (!v13)
        {
          goto LABEL_18;
        }

        v8 = 272 * v13;
      }

      do
      {
        memset(__src, 0, 24);
        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *v9) ^ ((0xBF58476D1CE4E5B9 * *v9) >> 27));
        re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::findEntry<unsigned short>(__src, a1 + 2208, *v9, v14 ^ (v14 >> 31));
        if (HIDWORD(__src[1]) == 0x7FFFFFFF)
        {
          v15 = re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(a1 + 2208, __src[1], __src[0]);
          *(v15 + 4) = *v9;
          v16 = *(v9 + 13);
          v17 = *(v9 + 14);
          v18 = *(v9 + 16);
          *(v15 + 240) = *(v9 + 15);
          *(v15 + 256) = v18;
          *(v15 + 208) = v16;
          *(v15 + 224) = v17;
          v19 = *(v9 + 9);
          v20 = *(v9 + 10);
          v21 = *(v9 + 12);
          *(v15 + 176) = *(v9 + 11);
          *(v15 + 192) = v21;
          *(v15 + 144) = v19;
          *(v15 + 160) = v20;
          v22 = *(v9 + 5);
          v23 = *(v9 + 6);
          v24 = *(v9 + 8);
          *(v15 + 112) = *(v9 + 7);
          *(v15 + 128) = v24;
          *(v15 + 80) = v22;
          *(v15 + 96) = v23;
          v25 = *(v9 + 1);
          v26 = *(v9 + 2);
          v27 = *(v9 + 4);
          *(v15 + 48) = *(v9 + 3);
          *(v15 + 64) = v27;
          *(v15 + 16) = v25;
          *(v15 + 32) = v26;
          ++*(a1 + 2248);
        }

        v9 += 136;
        v8 -= 272;
      }

      while (v8);
LABEL_18:
      *(a1 + 16) = 0;
      ++*(a1 + 24);
      goto LABEL_2;
    }

    v36 = a3[13];
    *(&__src[25] + 6) = a3[12];
    *(&__src[27] + 6) = v36;
    v37 = a3[15];
    *(&__src[29] + 6) = a3[14];
    *(&__src[31] + 6) = v37;
    v38 = a3[9];
    *(&__src[17] + 6) = a3[8];
    *(&__src[19] + 6) = v38;
    v39 = a3[11];
    *(&__src[21] + 6) = a3[10];
    *(&__src[23] + 6) = v39;
    v40 = a3[5];
    *(&__src[9] + 6) = a3[4];
    *(&__src[11] + 6) = v40;
    v41 = a3[7];
    *(&__src[13] + 6) = a3[6];
    *(&__src[15] + 6) = v41;
    v42 = a3[1];
    *(&__src[1] + 6) = *a3;
    *(&__src[3] + 6) = v42;
    v43 = a3[3];
    *(&__src[5] + 6) = a3[2];
    *(&__src[7] + 6) = v43;
    if (v7 >= 8)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return result;
    }
  }

  else
  {
    v28 = a3[13];
    *(&__src[25] + 6) = a3[12];
    *(&__src[27] + 6) = v28;
    v29 = a3[15];
    *(&__src[29] + 6) = a3[14];
    *(&__src[31] + 6) = v29;
    v30 = a3[9];
    *(&__src[17] + 6) = a3[8];
    *(&__src[19] + 6) = v30;
    v31 = a3[11];
    *(&__src[21] + 6) = a3[10];
    *(&__src[23] + 6) = v31;
    v32 = a3[5];
    *(&__src[9] + 6) = a3[4];
    *(&__src[11] + 6) = v32;
    v33 = a3[7];
    *(&__src[13] + 6) = a3[6];
    *(&__src[15] + 6) = v33;
    v34 = a3[1];
    *(&__src[1] + 6) = *a3;
    *(&__src[3] + 6) = v34;
    v35 = a3[3];
    *(&__src[5] + 6) = a3[2];
    LOWORD(v10) = *a2;
    *(&__src[7] + 6) = v35;
  }

  v44 = (a1 + 32 + 272 * v7);
  *v44 = v10;
  memcpy(v44 + 1, __src, 0x10EuLL);
  v46 = *(a1 + 16);
  ++*(a1 + 24);
  *(a1 + 16) = v46 + 1;
  if (v46 == -1)
  {
    re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v47, v48);
    __break(1u);
  }

  return (a1 + 32 + 272 * v46 + 16);
}

uint64_t re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::add(uint64_t a1, unsigned __int16 *a2, __int128 *a3)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::findEntry<unsigned short>(&v21, a1, *a2, v6 ^ (v6 >> 31));
  if (HIDWORD(v22) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 272 * HIDWORD(v22) + 16;
  }

  v7 = re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(a1, v22, v21);
  *(v7 + 4) = *a2;
  result = v7 + 16;
  v9 = a3[12];
  v10 = a3[13];
  v11 = a3[15];
  *(v7 + 240) = a3[14];
  *(v7 + 256) = v11;
  *(v7 + 208) = v9;
  *(v7 + 224) = v10;
  v12 = a3[8];
  v13 = a3[9];
  v14 = a3[11];
  *(v7 + 176) = a3[10];
  *(v7 + 192) = v14;
  *(v7 + 144) = v12;
  *(v7 + 160) = v13;
  v15 = a3[4];
  v16 = a3[5];
  v17 = a3[7];
  *(v7 + 112) = a3[6];
  *(v7 + 128) = v17;
  *(v7 + 80) = v15;
  *(v7 + 96) = v16;
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v20;
  *(v7 + 16) = v18;
  *(v7 + 32) = v19;
  ++*(a1 + 40);
  return result;
}

void re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 272 * v10, 16);
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

uint64_t re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::findEntry<unsigned short>(uint64_t result, uint64_t a2, unsigned __int16 a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 272 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 272 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 272 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 272 * v8) & 0x7FFFFFFF;
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v37, 0, 36);
          *&v37[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(v37, v9, v8);
          v11 = *v37;
          *v37 = *a1;
          *a1 = v11;
          v12 = *&v37[16];
          v13 = *(a1 + 16);
          *&v37[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v37[24];
          *&v37[24] = *(a1 + 24);
          v14 = *&v37[32];
          *(a1 + 24) = v15;
          ++*&v37[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v13 + 4)) ^ ((0xBF58476D1CE4E5B9 * *(v13 + 4)) >> 27));
                v18 = re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(a1, (v17 ^ (v17 >> 31)) % *(a1 + 24), v17 ^ (v17 >> 31));
                *(v18 + 4) = *(v13 + 4);
                v19 = *(v13 + 208);
                v20 = *(v13 + 224);
                v21 = *(v13 + 256);
                *(v18 + 240) = *(v13 + 240);
                *(v18 + 256) = v21;
                *(v18 + 208) = v19;
                *(v18 + 224) = v20;
                v22 = *(v13 + 144);
                v23 = *(v13 + 160);
                v24 = *(v13 + 192);
                *(v18 + 176) = *(v13 + 176);
                *(v18 + 192) = v24;
                *(v18 + 144) = v22;
                *(v18 + 160) = v23;
                v25 = *(v13 + 80);
                v26 = *(v13 + 96);
                v27 = *(v13 + 128);
                *(v18 + 112) = *(v13 + 112);
                *(v18 + 128) = v27;
                *(v18 + 80) = v25;
                *(v18 + 96) = v26;
                v28 = *(v13 + 16);
                v29 = *(v13 + 32);
                v30 = *(v13 + 64);
                *(v18 + 48) = *(v13 + 48);
                *(v18 + 64) = v30;
                *(v18 + 16) = v28;
                *(v18 + 32) = v29;
              }

              v13 += 272;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::deinit(v37);
        }
      }

      else
      {
        if (v8)
        {
          v33 = 2 * v7;
        }

        else
        {
          v33 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v31 = *(a1 + 16);
    v32 = *(v31 + 272 * v4);
  }

  else
  {
    v31 = *(a1 + 16);
    v32 = *(v31 + 272 * v4);
    *(a1 + 36) = v32 & 0x7FFFFFFF;
  }

  v34 = 272 * v4;
  *(v31 + v34) = v32 | 0x80000000;
  v35 = *(a1 + 8);
  *(v31 + v34) = *(v35 + 4 * a2) | 0x80000000;
  *(v35 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v31 + 272 * v4;
}

double re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 68;
        --v3;
      }

      while (v3);
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

uint64_t re::FixedArray<re::LightContextBuilder::ShadowTileInfo>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 96 * a3, 16);
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
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *result = 0uLL;
      *(result + 80) = 0xFFFFFFFFLL;
      result += 96;
      --v6;
    }

    while (v6);
  }

  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 80) = 0xFFFFFFFFLL;
  return result;
}

unint64_t re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
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

  return *(v5 + 8 * v2) + 120 * (a2 & 3);
}

void re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
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

uint64_t re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                *(v20 + 8) = *v17;
                v21 = *(v17 + 8);
                v22 = *(v17 + 40);
                *(v20 + 32) = *(v17 + 24);
                *(v20 + 48) = v22;
                *(v20 + 16) = v21;
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v4 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v4 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v4 << 6;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + (v4 << 6);
}

void *re::DynamicArray<re::SingleCullingFrustum>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SingleCullingFrustum>::setCapacity(v5, a2);
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
        v10 = v8 + 240 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 2) = 0;
          re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, v8);
          v12 = *(v8 + 112);
          v13 = *(v8 + 128);
          v14 = *(v8 + 160);
          *(v11 + 9) = *(v8 + 144);
          *(v11 + 10) = v14;
          *(v11 + 7) = v12;
          *(v11 + 8) = v13;
          v15 = *(v8 + 176);
          v16 = *(v8 + 192);
          v17 = *(v8 + 224);
          *(v11 + 13) = *(v8 + 208);
          *(v11 + 14) = v17;
          *(v11 + 11) = v15;
          *(v11 + 12) = v16;
          *v8 = 0;
          ++*(v8 + 8);
          v8 += 240;
          v11 += 30;
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

unint64_t re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
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

  return *(v5 + 8 * v2) + 8 * (a2 & 3);
}

void re::StencilPtInjectionNode::execute(re::StencilPtInjectionNode *this, re::RenderGraphContext *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken != -1)
  {
    dispatch_once(&re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken, &__block_literal_global_36);
  }

  if ((re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder & 1) == 0)
  {
    v4 = &v49;
    v5 = re::RenderGraphDataStore::tryGet<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
    v6 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
    v44[0] = 0;
    if ((*(v6 + 862) & 1) == 0)
    {
      re::RenderGraphContext::acquireManagedRenderCommandEncoder(a2, 0, buf);
      LOBYTE(v49) = 1;
      v50 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      re::Optional<re::mtl::RenderCommandEncoder>::operator=(v44, &v49);
      if (v49 == 1)
      {
        re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v50);
      }

      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(buf);
      (v46[20])(*v46, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Portal" encoding:4]);
    }

    v43 = 256;
    if (*(this + 264) == 1)
    {
      re::buildCullingFrustum((v6 + 64), (v6 + 144), *(v6 + 890), &v43, &v49, v7, v8);
      if (!v5)
      {
        goto LABEL_70;
      }
    }

    else
    {
      bzero(&v49, 0x230uLL);
      if (!v5)
      {
        goto LABEL_70;
      }
    }

    if (*(v5 + 16))
    {
      v9 = *(v5 + 24);
    }

    else
    {
      v9 = (v5 + 17);
    }

    v10 = strlen(v9);
    if (v10)
    {
      MurmurHash3_x64_128(v9, v10, 0, buf);
      v10 = ((*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf);
    }

    RenderGraphDataPipe = re::RenderGraphContext::tryGetRenderGraphDataPipe(a2, v10);
    if (RenderGraphDataPipe)
    {
      v12 = (*(*RenderGraphDataPipe + 832))(RenderGraphDataPipe);
      v35 = *(v12 + 40);
      v36 = v12;
      if (!v35)
      {
LABEL_64:
        v4 = &v49;
        if (v44[0] == 1)
        {
          (v46[21])(*v46, sel_popDebugGroup);
        }

        goto LABEL_70;
      }

      v13 = 0;
      v14 = 0;
      v38 = this;
      v40 = this + 272;
      LODWORD(v42) = this + 272;
LABEL_20:
      v37 = v14;
      isBoundingBoxInsidePlanes = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v36, v14);
      v17 = *(isBoundingBoxInsidePlanes + 6972);
      if (v17)
      {
        v18 = isBoundingBoxInsidePlanes + 6944;
        v42 = *(isBoundingBoxInsidePlanes + 6976);
        v4 = 0;
        if (v42)
        {
          v19 = *(isBoundingBoxInsidePlanes + 6960);
          do
          {
            if ((*v19 & 0x80000000) != 0)
            {
              goto LABEL_28;
            }

            v19 += 216;
            ++v4;
          }

          while (v42 != v4);
          v4 = *(isBoundingBoxInsidePlanes + 6976);
        }

        else
        {
          LODWORD(v42) = 0;
        }

LABEL_28:
        v39 = isBoundingBoxInsidePlanes + 6944;
      }

      else
      {
        v18 = isBoundingBoxInsidePlanes + 32;
        v39 = isBoundingBoxInsidePlanes + 32 + 864 * *(isBoundingBoxInsidePlanes + 16);
      }

      v41 = *(isBoundingBoxInsidePlanes + 6972);
      while (1)
      {
LABEL_30:
        if (v17)
        {
          if (v42 == v4)
          {
            goto LABEL_63;
          }

          v20 = (*(v18 + 16) + 864 * v4 + 16);
        }

        else
        {
          if (v18 == v39)
          {
LABEL_63:
            v14 = v37 + 1;
            if (v37 + 1 != v35)
            {
              goto LABEL_20;
            }

            goto LABEL_64;
          }

          v20 = (v18 + 16);
        }

        if ((v20[34].i32[3] & *(v6 + 904)) != 0)
        {
          if (*(this + 264) == 1)
          {
            if (v49 == 1)
            {
              *&v48 = v51;
              *(&v48 + 1) = *(&v50 + 1);
              re::MeshScene::meshSceneBoundingBox(&v20[2], v16, buf);
              isBoundingBoxInsidePlanes = re::isBoundingBoxInsidePlanes(buf, &v48, v20 + 10);
              v17 = v41;
              if (!isBoundingBoxInsidePlanes)
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v49 != 2)
              {
                goto LABEL_55;
              }

              *&v48 = v51;
              *(&v48 + 1) = *(&v50 + 1);
              re::MeshScene::meshSceneBoundingBox(&v20[2], v16, buf);
              isBoundingBoxInsidePlanes = re::isBoundingBoxInsidePlanes(buf, &v48, v20 + 10);
              if (!isBoundingBoxInsidePlanes)
              {
                if (v49 <= 1)
                {
                  re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v49);
                  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v33, v34);
                  __break(1u);
                  goto LABEL_80;
                }

                v47[0] = v52;
                v47[1] = v51[12];
                re::MeshScene::meshSceneBoundingBox(&v20[2], v21, buf);
                isBoundingBoxInsidePlanes = re::isBoundingBoxInsidePlanes(buf, v47, v20 + 10);
                v17 = v41;
                if ((isBoundingBoxInsidePlanes & 1) == 0)
                {
                  goto LABEL_55;
                }
              }
            }
          }

          if (re::PortalUserDefaults::maximumPortalCount(void)::onceToken != -1)
          {
            dispatch_once(&re::PortalUserDefaults::maximumPortalCount(void)::onceToken, &__block_literal_global_30);
          }

          if (re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount && v13 >= re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount)
          {
            v4 = &v49;
            if ((atomic_exchange(re::StencilPtInjectionNode::execute(re::RenderGraphContext &)::__FILE____LINE___logged, 1u) & 1) == 0)
            {
              v18 = *re::graphicsLogObjects(isBoundingBoxInsidePlanes);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                if (re::PortalUserDefaults::maximumPortalCount(void)::onceToken == -1)
                {
LABEL_69:
                  v27 = re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount;
                  *(v4 + 560) = 67109120;
                  *(v4 + 564) = v27;
                  break;
                }

LABEL_80:
                dispatch_once(&re::PortalUserDefaults::maximumPortalCount(void)::onceToken, &__block_literal_global_30);
                goto LABEL_69;
              }
            }

            break;
          }

          if ((v44[0] & 1) == 0)
          {
            re::RenderGraphContext::acquireManagedRenderCommandEncoder(a2, 0, &v48);
            buf[0] = 1;
            *&buf[8] = v48;
            v48 = 0uLL;
            re::Optional<re::mtl::RenderCommandEncoder>::operator=(v44, buf);
            if (buf[0] == 1)
            {
              re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&buf[8]);
            }

            re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v48);
            (v46[20])(*v46, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Portal" encoding:4]);
            this = v38;
          }

          ++v13;
          v22 = v40;
          if (!*(this + 36))
          {
            v22 = 0;
          }

          buf[0] = *(this + 264);
          buf[1] = 0;
          buf[2] = *(this + 312);
          buf[3] = 0;
          buf[4] = *(this + 314);
          *&buf[5] = 1;
          buf[7] = 0;
          *&buf[8] = 0;
          *&buf[16] = v22;
          v55 = 0;
          v56 = 0;
          isBoundingBoxInsidePlanes = re::StencilPtInjectionNode::executeForPortal(v20, a2, *(this + 2), *(this + 3), *(this + 4), buf);
          v17 = v41;
        }

LABEL_55:
        if (v17)
        {
          v23 = *(v18 + 32);
          v24 = v4 + 1;
          if (v23 <= v4 + 1)
          {
            v4 = (v4 + 1);
          }

          else
          {
            v4 = v23;
          }

          while (v4 != v24)
          {
            v25 = v24;
            v26 = *(*(v18 + 16) + 864 * v24++);
            if (v26 < 0)
            {
              v4 = v25;
              goto LABEL_30;
            }
          }
        }

        else
        {
          v18 += 864;
        }
      }
    }

LABEL_70:
    v28 = *(v4 + 240);
    if (v28)
    {
      v29 = &v52[144 * v28 + 112];
      v30 = &v53;
      do
      {
        *v30 = 0;
        ++*(v30 + 2);
        v30 += 18;
      }

      while (v30 != v29);
    }

    if (v49)
    {
      v31 = &v51[14 * v49];
      v32 = &v50 + 8;
      do
      {
        *v32 = 0;
        ++*(v32 + 2);
        v32 += 112;
      }

      while (v32 != v31);
    }

    if (v44[0] == 1)
    {
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v45);
    }
  }
}

uint64_t re::Optional<re::mtl::RenderCommandEncoder>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::mtl::RenderCommandEncoder::operator=(v3, (a2 + 8));
    }

    else
    {
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v4;
    *(a2 + 16) = 0;
  }

  return a1;
}

uint64_t re::StencilPtInjectionNode::executeForPortal(uint64_t a1, re::Allocator **a2, void *a3, char *__s, _OWORD *a5, uint64_t a6)
{
  v161 = a3;
  v259[6] = *MEMORY[0x1E69E9840];
  v11 = strlen(__s);
  if (v11)
  {
    MurmurHash3_x64_128(__s, v11, 0, &v240);
    v12 = (v241 - 0x61C8864680B583E9 + (v240 << 6) + (v240 >> 2)) ^ v240;
  }

  else
  {
    v12 = 0;
  }

  v164 = a6;
  v13 = strlen(a5);
  v159 = 0x9E3779B97F4A7C17;
  v14 = 0x9E3779B97F4A7C17;
  if (v13)
  {
    MurmurHash3_x64_128(a5, v13, 0, &v240);
    v14 = ((v241 - 0x61C8864680B583E9 + (v240 << 6) + (v240 >> 2)) ^ v240) - 0x61C8864680B583E9;
  }

  v156 = re::RenderGraphDataStore::get<re::SceneScope>(a2[146], ((v12 >> 2) + (v12 << 6) + v14) ^ v12);
  re::CameraData::CameraData(&v240, *(*a2 + 4));
  v15 = *(a1 + 8);
  v16 = *(*a2 + 4);
  v17 = &unk_1F5D06A20;
  *(&v193 + 1) = &unk_1F5D06A20;
  re::DynamicString::DynamicString(&v194, v15, v16);
  *v192 = &unk_1F5D03570;
  *&v192[8] = 134217472;
  *&v192[16] = 134217472;
  v18 = strlen(*(a1 + 8));
  v19 = 0x9E3779B97F4A7C17;
  if (v18)
  {
    MurmurHash3_x64_128(*(a1 + 8), v18, 0, v216);
    v19 = ((*(&v216[0] + 1) - 0x61C8864680B583E9 + (*&v216[0] << 6) + (*&v216[0] >> 2)) ^ *&v216[0]) - 0x61C8864680B583E9;
  }

  v20 = re::RenderGraphDataStore::get<re::CameraData>(a2[146], *(a2[5] + 6));
  re::DynamicString::operator=(&v241, (v20 + 8));
  re::DynamicInlineArray<re::RenderCamera,2ul>::operator=(&v243, (v20 + 48));
  if (&v240 != v20)
  {
    re::DynamicInlineArray<re::Projection,2ul>::copy(&v246, (v20 + 128));
    ++v247;
  }

  re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::operator=(&v249, (v20 + 624));
  re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(&v251, (v20 + 768));
  v22 = *(v20 + 832);
  v21 = *(v20 + 848);
  v23 = *(v20 + 816);
  *&v255[10] = *(v20 + 858);
  *v255 = v21;
  v253 = v23;
  v254 = v22;
  if ((v256 & 1) == 0)
  {
    if ((*(v20 + 876) & 1) == 0)
    {
      goto LABEL_16;
    }

    v256 = 1;
LABEL_15:
    v257 = *(v20 + 880);
    goto LABEL_16;
  }

  if (*(v20 + 876))
  {
    goto LABEL_15;
  }

  v256 = 0;
LABEL_16:
  v24 = *(v20 + 884);
  *&v258[13] = *(v20 + 897);
  *v258 = v24;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v259, v20 + 920);
  v25 = strlen(a5);
  *&v216[0] = a5;
  *(&v216[0] + 1) = v25;
  re::DynamicString::operator=(&v241, v216);
  if ((atomic_load_explicit(&qword_1EE1C0990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0990))
  {
    _MergedGlobals_532 = re::hashString("MeshScenes", v116);
    __cxa_guard_release(&qword_1EE1C0990);
  }

  v26 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(a2[146], (v19 + (_MergedGlobals_532 << 6) + (_MergedGlobals_532 >> 2)) ^ _MergedGlobals_532);
  v27 = v26 + 8;
  if (!v26)
  {
    v27 = 0;
  }

  *(&v254 + 1) = v27;
  MurmurHash3_x64_128("VFXScenes", 9uLL, 0, v216);
  v28 = (*(&v216[0] + 1) - 0x61C8864680B583E9 + (*&v216[0] << 6) + (*&v216[0] >> 2)) ^ *&v216[0];
  v29 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>>>(a2[146], (v19 + (v28 << 6) + (v28 >> 2)) ^ v28);
  v30 = v29 + 8;
  if (!v29)
  {
    v30 = 0;
  }

  *v255 = v30;
  if (*(a6 + 4) == 1)
  {
    *&v192[8] = 50364417;
    *&v192[16] = 50364417;
    LOBYTE(v193) = 0x80;
  }

  else
  {
    LOBYTE(v193) = 0;
    *&v192[8] = xmmword_1E31082A8;
  }

  v235 = &unk_1F5D12920;
  v236 = 0;
  if (*(a1 + 784) == 1)
  {
    v236 = 1;
    v31 = *(a1 + 816);
    v237 = *(a1 + 800);
    v238 = v31;
  }

  v157 = v19;
  v239 = *(a1 + 832);
  v190 = &unk_1F5D10F80;
  v191 = 0;
  re::CameraMatrices::CameraMatrices(v224, *(*a2 + 4), v258[6]);
  if ((atomic_load_explicit(&qword_1EE1C09A0, memory_order_acquire) & 1) == 0)
  {
    v117 = __cxa_guard_acquire(&qword_1EE1C09A0);
    if (v117)
    {
      qword_1EE1C0998 = re::getCombinedScopeHash(v117, v118, v119);
      __cxa_guard_release(&qword_1EE1C09A0);
    }
  }

  v32 = re::RenderGraphDataStore::get<re::RendererGlobals>(a2[146], qword_1EE1C0998);
  if ((atomic_load_explicit(&qword_1EE1C09B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09B0))
  {
    qword_1EE1C09A8 = re::hashString("DynamicFunctionConstants", v120);
    __cxa_guard_release(&qword_1EE1C09B0);
  }

  v155 = a1;
  v33 = qword_1EE1C09A8;
  v34 = strlen(a5);
  v35 = 0x9E3779B97F4A7C17;
  if (v34)
  {
    MurmurHash3_x64_128(a5, v34, 0, v216);
    v35 = ((*(&v216[0] + 1) - 0x61C8864680B583E9 + (*&v216[0] << 6) + (*&v216[0] >> 2)) ^ *&v216[0]) - 0x61C8864680B583E9;
  }

  v36 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a2[146], ((v33 >> 2) + (v33 << 6) + v35) ^ v33);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(a2[146], *(a2[5] + 6));
  v39 = (*(**(*a2 + 4) + 32))(*(*a2 + 4), 48, 8);
  v40 = *(*a2 + 4);
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v39, v40, 3);
  v191 = v39;
  if (v258[6])
  {
    v42 = 0;
    v43 = &v248;
    v44 = &v245;
    while (v246 > v42)
    {
      if (*(v43 + 80) == 1)
      {
        v45 = *(v43 + 7);
        v216[0] = *(v43 + 6);
        v216[1] = v45;
        v46 = *(v43 + 9);
        v216[2] = *(v43 + 8);
        v216[3] = v46;
      }

      else
      {
        re::Projection::cullingProjectionMatrix(v216, v43);
      }

      re::DynamicArray<re::Matrix4x4<float>>::add(v227, v216);
      v48 = v246;
      if (v246 <= v42)
      {
        goto LABEL_154;
      }

      re::Projection::cullingProjectionMatrix(v216, v43);
      re::DynamicArray<re::Matrix4x4<float>>::add(v231, v216);
      v50 = v243;
      if (v243 <= v42)
      {
        goto LABEL_155;
      }

      re::RenderCamera::computeInverseTransform(v216, v44);
      re::DynamicArray<re::Matrix4x4<float>>::add(v225, v216);
      ++v42;
      v44 += 2;
      v43 += 30;
      if (v42 >= v258[6])
      {
        goto LABEL_42;
      }
    }

    re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v42, v246);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v134, v139);
    __break(1u);
LABEL_154:
    re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v42, v48);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v135, v140);
    __break(1u);
LABEL_155:
    v146 = v42;
    v148 = v50;
    v142 = "operator[]";
    v144 = 381;
    re::internal::assertLog(6, v49, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size");
    v60 = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v136, v141);
    __break(1u);
    goto LABEL_156;
  }

LABEL_42:
  v153 = &unk_1F5D06A20;
  v154 = a5;
  a5 = v216;
  v51 = *(*a2 + 4);
  *v165 = 0u;
  *v166 = 0u;
  *v167 = 0;
  *&v167[4] = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v165, v51, 3);
  *&v216[0] = a2;
  *(&v216[0] + 1) = &v240;
  *&v216[1] = v224;
  *(&v216[1] + 1) = &v193 + 8;
  *&v216[2] = v32;
  *(&v216[2] + 1) = &v190;
  *&v216[3] = v38;
  *(&v216[3] + 1) = v165;
  v17 = v164;
  LOBYTE(v217) = *v164;
  *(&v217 + 1) = 0;
  BYTE4(v217) = 0;
  v218 = v37;
  re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(v216, v52, v53, v54, v55, v56);
  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v165);
  if ((atomic_load_explicit(&qword_1EE1C09B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09B8))
  {
    qword_1EE1C0A78 = 0x2476C06B76;
    unk_1EE1C0A80 = "VCABlur";
    qword_1EE1C0A88 = 5231452;
    unk_1EE1C0A90 = "True";
    __cxa_guard_release(&qword_1EE1C09B8);
  }

  v57 = v157;
  if ((atomic_load_explicit(&qword_1EE1C09C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09C0))
  {
    qword_1EE1C0A98 = 0x4CB6D3AA6EABE92CLL;
    unk_1EE1C0AA0 = "Transparent_BackCompat";
    qword_1EE1C0AA8 = 5231452;
    unk_1EE1C0AB0 = "True";
    __cxa_guard_release(&qword_1EE1C09C0);
  }

  if ((atomic_load_explicit(&qword_1EE1C09C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09C8))
  {
    re::StringID::StringID(v216, &qword_1EE1C0A78);
    re::StringID::StringID(&v216[1], &qword_1EE1C0A88);
    qword_1EE1C0AB8 = *&v216[0];
    unk_1EE1C0AC0 = *(v216 + 8);
    *(&v216[0] + 1) = &str_67;
    *&v216[0] = 0;
    qword_1EE1C0AD0 = *(&v216[1] + 1);
    *(&v216[1] + 1) = &str_67;
    *&v216[1] = 0;
    re::StringID::destroyString(&v216[1]);
    re::StringID::destroyString(v216);
    __cxa_guard_release(&qword_1EE1C09C8);
  }

  if ((atomic_load_explicit(&qword_1EE1C09D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09D0))
  {
    re::StringID::StringID(v216, &qword_1EE1C0A98);
    re::StringID::StringID(&v216[1], &qword_1EE1C0AA8);
    re::StringID::StringID(&v216[2], &qword_1EE1C0A78);
    re::StringID::StringID(&v216[3], &qword_1EE1C0A88);
    xmmword_1EE1C0B00 = v216[0];
    qword_1EE1C0B10 = *&v216[1];
    *(&v216[0] + 1) = &str_67;
    *&v216[0] = 0;
    v121 = *(&v216[1] + 8);
    *(&v216[1] + 1) = &str_67;
    *&v216[1] = 0;
    xmmword_1EE1C0B18 = v121;
    unk_1EE1C0B28 = *(&v216[2] + 8);
    *(&v216[2] + 1) = &str_67;
    *&v216[2] = 0;
    qword_1EE1C0B38 = *(&v216[3] + 1);
    v122 = 16;
    *(&v216[3] + 1) = &str_67;
    *&v216[3] = 0;
    do
    {
      re::StringID::destroyString(&v215[v122 / 2]);
      re::StringID::destroyString(&v213[v122]);
      v122 -= 8;
    }

    while (v122 * 4);
    __cxa_guard_release(&qword_1EE1C09D0);
    v17 = v164;
    v57 = v157;
  }

  if (*(v17 + 5) == 1)
  {
    *&v216[0] = &xmmword_1EE1C0B00;
    *(&v216[0] + 1) = 2;
    v37 = re::Slice<re::TechniqueTagFilter>::range(v216, 0, 1uLL);
    v152 = v58;
    v162 = 0;
    v163 = 0;
  }

  else
  {
    v163 = &qword_1EE1C0AB8;
    v37 = &xmmword_1EE1C0B00;
    v152 = 2;
    v162 = 1;
  }

  if (*(v17 + 6) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C0A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A60))
    {
      qword_1EE1C0A58 = re::hashString("PlattersOnly", v124);
      __cxa_guard_release(&qword_1EE1C0A60);
    }

    MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(&v190, qword_1EE1C0A58);
    v38 = *(*a2 + 4);
    v214 = 0;
    v212 = 0;
    v211[0] = 0;
    v211[1] = 0;
    v213[0] = 0;
    *&v184 = 0;
    DWORD2(v184) = 0;
    if (MeshPartBucket)
    {
      *&v216[0] = MeshPartBucket;
      BYTE8(v216[0]) = 0;
      *(v216 + 14) = 65280;
      BYTE2(v216[1]) = 0;
      re::DynamicInlineArray<re::FilteredMeshPass,2ul>::add(&v184, v216);
      v32 = v184;
    }

    else
    {
      v32 = 0;
    }

    v44 = &v185;
    v197 = &v185;
    *v198 = v32;
    v60 = (a2 + 169);
    if (!*(a2 + 338))
    {
      v61 = a2 + 169;
      v62 = 0;
LABEL_56:
      *&v216[0] = 0;
      *(&v216[0] + 1) = v163;
      *&v216[1] = v162;
      *(a5 + 24) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(&v217 + 1) = re::globalAllocators(v60)[2];
      v218 = 0;
      LOWORD(v219) = 1;
      BYTE4(v219) = 0;
      v223 = 0;
      re::RenderGraphMeshNodeBase::sortMeshParts(0, v44, v32, a2, v62, v216, v38, v165, v132, v137, SHIDWORD(v137), v142, v144, v146, v148, v150, v152, v153, v154, v155, v156, v157, 0x9E3779B97F4A7C17, v161, v162, v163, v164, v165[0], v165[1], v166[0], v166[1], *v167, *&v167[16], v168, v169, v170, v171, v172, v173, v174, *(&v174 + 1), v175, v176, v177, v178, v179, v180, SHIDWORD(v180), v181, v182, v183, v184, v185, *(&v185 + 1), v186, *(&v186 + 1), v187, SWORD4(v187), v188, v189, v190, v191, *v192);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v211, v165);
      v57 = v157;
      if (v165[0])
      {
        if (*v167)
        {
          (*(*v165[0] + 40))();
        }

        *v167 = 0;
        v165[1] = 0;
        v166[0] = 0;
        v165[0] = 0;
        ++LODWORD(v166[1]);
      }

      re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v216[2] + 8);
      if (v212)
      {
        v63 = (*(*v38 + 32))(v38, 328, 8);
        v215[0] = re::DrawTable::DrawTable(v63, v38, (v212 + 127) >> 7);
        v196 = re::RenderGraphDataStore::tryGet<re::VCARenderData>(a2[146], *(a2[5] + 6));
        if (*(v63 + 320) != 1)
        {
          (**(v63 + 280))(v63 + 280);
        }

        *(v63 + 280) = &unk_1F5D14BB8;
        *(v63 + 288) = v17;
        *(v63 + 296) = &v196;
        *(v63 + 304) = v215;
        *(v63 + 320) = 0;
        LOBYTE(v165[0]) = 0;
        BYTE4(v166[0]) = 0;
        *&v167[20] = 0;
        LOBYTE(v169) = 0;
        memset(v167, 0, 17);
        re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v197, v214, v212, a2, v63, v228, v224, 0, v62, v165);
        v57 = v157;
        if (*(v215[0] + 40))
        {
          re::DrawTableSlice::DrawTableSlice(v216, v215[0]);
          v64 = 0;
          v201 = "StencilBlurSetStencil";
          *&v202 = v216;
          *(&v202 + 1) = v226;
          v203 = v230;
          v204 = 0;
          v205 = v234;
          v206 = 2;
          *v207 = 256;
          *&v207[2] = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kWriteStInfo;
          v208 = 0;
          if (*v61)
          {
            v64 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v61, *(v17 + 1), "StencilBlurSetStencil");
          }

          v209 = v64;
          v210 = 0;
          re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v200);
          re::RenderGraphContext::encodeDrawCalls(a2, v200, &v201, v65, v66, v67, v68, v69, v132, v137, v142, v144, v146, v148, v150, v152, v153, v154, v155, v156, v157, v159, v161, v162, v163, v164, v165[0], v165[1], v166[0], v166[1], *v167, *&v167[16], v168, v169, v170, v171, *(&v171 + 1), v172, v173, v174, v175, SBYTE1(v175), SBYTE2(v175), SHIBYTE(v175), v176, v180, v181, v182, *(&v182 + 1), v183, *(&v183 + 1), v184, *(&v184 + 1), v185, v186, v187, v188, v189, v190, v191, *v192, *&v192[16], v193);
        }
      }

      else
      {
        re::RenderGraphContext::acquireManagedRenderCommandEncoder(a2, 0, v216);
        re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v216);
      }

      if (v211[0] && v214)
      {
        (*(*v211[0] + 40))();
      }

      goto LABEL_71;
    }

LABEL_156:
    v61 = v60;
    v60 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v60, *(v17 + 1), "BlurPlatterMeshDraw");
    v62 = v60;
    goto LABEL_56;
  }

LABEL_71:
  if ((atomic_load_explicit(&qword_1EE1C09E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09E0))
  {
    qword_1EE1C09D8 = re::hashString("SceneIndex", v123);
    __cxa_guard_release(&qword_1EE1C09E0);
  }

  *&v184 = re::RenderGraphContext::tryGetPipelineCompilationData(a2, *(a2[5] + 6));
  *(&v184 + 1) = &v193 + 8;
  *&v185 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(a2[146], (v57 + (qword_1EE1C09D8 << 6) + (qword_1EE1C09D8 >> 2)) ^ qword_1EE1C09D8);
  *(&v185 + 1) = v192;
  *&v186 = re::RenderGraphDataStore::tryGet<re::ViewportData>(a2[146], *(a2[5] + 6));
  *(&v186 + 1) = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(a2[146], *(a2[5] + 6));
  *&v187 = re::RenderGraphDataStore::tryGet<re::TintContextData>(a2[146], *(a2[5] + 6));
  *(&v187 + 1) = re::RenderGraphDataStore::tryGet<re::VRRData>(a2[146], *(a2[5] + 6));
  v70 = re::RenderGraphDataStore::tryGet<re::TriangleFillModeData>(a2[146], *(a2[5] + 6));
  v188 = v70;
  v189 = &v235;
  v71 = v154;
  if (*(v17 + 4) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C09F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09F0))
    {
      qword_1EE1C09E8 = re::hashString("StencilIncrement", v125);
      __cxa_guard_release(&qword_1EE1C09F0);
    }

    v165[0] = v155;
    v165[1] = v156;
    v166[0] = v154;
    v166[1] = "StencilIncrement";
    *v167 = qword_1EE1C09E8;
    v72 = *(v17 + 26);
    v73 = *(v17 + 27);
    *&v167[8] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kIncrementStInfo;
    LOBYTE(v168) = v73 | 0x80;
    v167[9] = v72;
    v167[17] = v72;
    v169 = a2;
    LOBYTE(v170) = 0;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v216);
    v70 = re::encodeMeshPassForPortal(v216, v165);
    if (*(v17 + 4))
    {
      if ((atomic_load_explicit(&qword_1EE1C0A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A00))
      {
        qword_1EE1C09F8 = re::hashString("PortalOcclusion", v130);
        __cxa_guard_release(&qword_1EE1C0A00);
      }

      v70 = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(a2[146], *(a2[5] + 6));
      if (v70)
      {
        v70 = re::MeshPassInfoData::getMeshPartBucket(v70, qword_1EE1C09F8);
        if (v70)
        {
          v74 = v70;
          if (*(a2 + 338))
          {
            v75 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, "StencilPortalOcclusion", "PortalOcclusion");
          }

          else
          {
            v75 = 0;
          }

          if ((atomic_load_explicit(&qword_1EE1C0A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A70))
          {
            qword_1EE1C0A68 = re::hashString("RenderGraphDataPipeData", v131);
            __cxa_guard_release(&qword_1EE1C0A70);
          }

          v76 = qword_1EE1C0A68;
          if (*(v156 + 2))
          {
            v77 = *(v156 + 3);
          }

          else
          {
            v77 = v156 + 17;
          }

          v78 = strlen(v77);
          if (v78)
          {
            MurmurHash3_x64_128(v77, v78, 0, v216);
            v159 = (((*(&v216[0] + 1) - 0x61C8864680B583E9 + (*&v216[0] << 6) + (*&v216[0] >> 2)) ^ *&v216[0]) - 0x61C8864680B583E9);
          }

          v70 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(a2[146], (v159 + 64 * v76 + (v76 >> 2)) ^ v76);
          if (v70)
          {
            v79 = v70;
            v80 = 0xBF58476D1CE4E5B9 * (*(v155 + 16) ^ (*(v155 + 16) >> 30));
            v70 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v70 + 48, (v155 + 16), (0x94D049BB133111EBLL * (v80 ^ (v80 >> 27))) ^ ((0x94D049BB133111EBLL * (v80 ^ (v80 >> 27))) >> 31), v216);
            if (HIDWORD(v216[0]) != 0x7FFFFFFF)
            {
              v81 = *(v79 + 8) + 40 * HIDWORD(v216[0]);
              v83 = *(v81 + 16);
              v82 = (v81 + 16);
              if (v83)
              {
                v70 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>>(a2[146], *(a2[5] + 6));
                if (v70)
                {
                  v70 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v70 + 8, v82);
                  if (v70)
                  {
                    v84 = v70;
                    v85 = re::RenderGraphDataStore::get<re::CameraMatrices>(a2[146], *(a2[5] + 6));
                    v197 = v74;
                    v198[0] = 0;
                    *&v198[6] = 65280;
                    v199 = 1;
                    v215[0] = &v197;
                    v215[1] = 1;
                    v86 = *(*a2 + 4);
                    *&v217 = 0;
                    memset(v216, 0, sizeof(v216));
                    *(&v217 + 1) = re::globalAllocators(v85)[2];
                    v218 = 0;
                    LOWORD(v219) = 1;
                    v87 = *v84;
                    v88 = *(v84 + 4);
                    v89 = *(v84 + 10);
                    BYTE4(v219) = 1;
                    v220 = v87;
                    v221 = v88;
                    v222 = v89;
                    v223 = 0;
                    re::RenderGraphMeshNodeBase::sortMeshParts(1, &v197, 1uLL, a2, v75, v216, v86, v211, v132, v137, SHIDWORD(v137), v142, v144, v146, v148, v150, v152, v153, v154, v155, v156, v157, v37, v161, v162, v163, v164, v165[0], v165[1], v166[0], v166[1], *v167, *&v167[16], v168, v169, v170, v171, v172, v173, v174, *(&v174 + 1), v175, v176, v177, v178, v179, v180, SHIDWORD(v180), v181, v182, v183, v184, v185, *(&v185 + 1), v186, *(&v186 + 1), v187, SWORD4(v187), v188, v189, v190, v191, *v192);
                    re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v216[2] + 8);
                    v90 = (*(*v86 + 32))(v86, 328, 8);
                    re::DrawTable::DrawTable(v90, v86, (v212 + 127) >> 7);
                    v91 = *(v85 + 64);
                    LOBYTE(v165[0]) = 0;
                    BYTE4(v166[0]) = 0;
                    *&v167[20] = 0;
                    LOBYTE(v169) = 0;
                    memset(v167, 0, 17);
                    re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v215, v214, v212, a2, v90, v91, v85, 0, v75, v165);
                    if (*(v90 + 5))
                    {
                      *(a2 + 1553) = 2;
                      re::DrawTableSlice::DrawTableSlice(v216, v90);
                      v201 = "StencilPortalOcclusion";
                      *&v202 = v216;
                      v92 = *(v85 + 80);
                      *(&v202 + 1) = *(v85 + 40);
                      v203 = v92;
                      v204 = 0;
                      v205 = *(v85 + 160);
                      v206 = 0;
                      *v207 = -2147417856;
                      *&v207[4] = 640;
                      *&v207[6] = 0x10000;
                      *&v207[10] = 41975809;
                      *&v207[14] = 0x10000;
                      v208 = 128;
                      v209 = v75;
                      v210 = 0;
                      re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v200);
                      re::RenderGraphContext::encodeDrawCalls(a2, v200, &v201, v93, v94, v95, v96, v97, v133, v138, v143, v145, v147, v149, v151, v152, v153, v154, v155, v156, v158, v160, v161, v162, v163, v164, v165[0], v165[1], v166[0], v166[1], *v167, *&v167[16], v168, v169, v170, v171, *(&v171 + 1), v172, v173, v174, v175, SBYTE1(v175), SBYTE2(v175), SHIBYTE(v175), v176, v180, v181, v182, *(&v182 + 1), v183, *(&v183 + 1), v184, *(&v184 + 1), v185, v186, v187, v188, v189, v190, v191, *v192, *&v192[16], v193);
                      *(a2 + 1553) = 0;
                    }

                    v70 = v211[0];
                    if (v211[0] && v214)
                    {
                      v70 = (*(*v211[0] + 40))();
                    }

                    v37 = v160;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(v17 + 4) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C0A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A10))
    {
      qword_1EE1C0A08 = re::hashString("DepthBufferClear", v126);
      __cxa_guard_release(&qword_1EE1C0A10);
    }

    if ((atomic_load_explicit(&qword_1EE1C0A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A20))
    {
      qword_1EE1C0A18 = re::hashString("DepthBufferClearNoColor", v127);
      __cxa_guard_release(&qword_1EE1C0A20);
    }

    v98 = *(v17 + 3) == 0;
    v99 = &qword_1EE1C0A18;
    if (!*(v17 + 3))
    {
      v99 = &qword_1EE1C0A08;
    }

    v100 = *v99;
    v101 = "DepthBufferClear";
    v165[0] = v155;
    v165[1] = v156;
    if (!v98)
    {
      v101 = "DepthBufferClearNoColor";
    }

    v166[0] = v71;
    v166[1] = v101;
    *v167 = v100;
    *&v167[8] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kDepthClearStInfo;
    LOBYTE(v168) = 0x80;
    v167[9] = 0x80;
    v167[17] = 0x80;
    v169 = a2;
    LOBYTE(v170) = 0;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v216);
    v70 = re::encodeMeshPassForPortal(v216, v165);
  }

  v102 = *(v17 + 2);
  if (v102)
  {
    v103 = a2;
    if (*(v102 + 16))
    {
      v104 = 0;
      v105 = 0;
      do
      {
        v106 = *(v102 + 32) + v104;
        if (*(v106 + 8))
        {
          v107 = *(v106 + 16);
        }

        else
        {
          v107 = (v106 + 9);
        }

        re::DynamicString::operator+(v165, v216, v107);
        if (*&v216[0] && (BYTE8(v216[0]) & 1) != 0)
        {
          (*(**&v216[0] + 40))();
        }

        v108 = strlen(v107);
        if (v108)
        {
          MurmurHash3_x64_128(v107, v108, 0, v216);
          v108 = (*(&v216[0] + 1) - 0x61C8864680B583E9 + (*&v216[0] << 6) + (*&v216[0] >> 2)) ^ *&v216[0];
        }

        v109 = re::MeshPassInfoData::getMeshPartBucket(&v190, v108);
        if (v109)
        {
          v201 = v109;
          LOBYTE(v202) = 0;
          *(&v202 + 6) = 65280;
          BYTE10(v202) = 1;
          *&v216[0] = &v184;
          *(&v216[0] + 1) = v161;
          if (v165[1])
          {
            v110 = v166[0];
          }

          else
          {
            v110 = &v165[1] + 1;
          }

          *&v216[1] = v110;
          *(&v216[1] + 1) = &v201;
          *&v216[2] = 1;
          *(&v216[2] + 1) = v163;
          *&v216[3] = v162;
          *(&v216[3] + 1) = v224;
          LODWORD(v217) = 2;
          WORD2(v217) = 2;
          *(&v217 + 1) = a2;
          LOBYTE(v218) = 1;
          v219 = 0;
          re::encodeMaterialPassForPortalScene(v216);
        }

        v70 = v165[0];
        if (v165[0] && (v165[1] & 1) != 0)
        {
          v70 = (*(*v165[0] + 40))();
        }

        ++v105;
        v102 = *(v164 + 16);
        v104 += 32;
      }

      while (*(v102 + 16) > v105);
    }
  }

  else
  {
    v165[0] = 0;
    LODWORD(v165[1]) = 0;
    re::rendergraph_helper::getOcclusionMeshPasses(v216);
    re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v190, v165, v216);
    *&v216[0] = &v184;
    *(&v216[0] + 1) = v161;
    *&v216[1] = "Portal_Occlusion";
    *(&v216[1] + 1) = v166;
    *&v216[2] = v165[0];
    *(&v216[2] + 1) = v163;
    *&v216[3] = v162;
    *(&v216[3] + 1) = v224;
    LODWORD(v217) = 1;
    WORD2(v217) = 0;
    *(&v217 + 1) = a2;
    LOBYTE(v218) = 1;
    v219 = 0;
    re::encodeMaterialPassForPortalScene(v216);
    v165[0] = 0;
    LODWORD(v165[1]) = 0;
    re::rendergraph_helper::getOpaqueMeshPasses(v216);
    re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v190, v165, v216);
    *&v216[0] = &v184;
    *(&v216[0] + 1) = v161;
    *&v216[1] = "Portal_Opaque";
    *(&v216[1] + 1) = v166;
    *&v216[2] = v165[0];
    *(&v216[2] + 1) = v163;
    *&v216[3] = v162;
    *(&v216[3] + 1) = v224;
    LODWORD(v217) = 1;
    WORD2(v217) = 2;
    *(&v217 + 1) = a2;
    LOBYTE(v218) = 1;
    v219 = 0;
    re::encodeMaterialPassForPortalScene(v216);
    v165[0] = 0;
    LODWORD(v165[1]) = 0;
    re::rendergraph_helper::getSkyboxMeshPasses(v216);
    re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v190, v165, v216);
    *&v216[0] = &v184;
    *(&v216[0] + 1) = v161;
    *&v216[1] = "Portal_Skybox";
    *(&v216[1] + 1) = v166;
    *&v216[2] = v165[0];
    *(&v216[2] + 1) = v163;
    *&v216[3] = v162;
    *(&v216[3] + 1) = v224;
    LODWORD(v217) = 1;
    WORD2(v217) = 2;
    *(&v217 + 1) = a2;
    LOBYTE(v218) = 1;
    v219 = 0;
    re::encodeMaterialPassForPortalScene(v216);
    v165[0] = 0;
    LODWORD(v165[1]) = 0;
    re::rendergraph_helper::getTransparentMeshPasses(v216);
    re::rendergraph_helper::populateMeshPassArray<7ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,7ul>>(&v190, v165, v216);
    *&v216[0] = &v184;
    *(&v216[0] + 1) = v161;
    *&v216[1] = "Portal_Transparent";
    *(&v216[1] + 1) = v166;
    *&v216[2] = v165[0];
    *(&v216[2] + 1) = v37;
    *&v216[3] = v152;
    *(&v216[3] + 1) = v224;
    LODWORD(v217) = 2;
    WORD2(v217) = 2;
    *(&v217 + 1) = a2;
    LOBYTE(v218) = 1;
    v219 = 0;
    re::encodeMaterialPassForPortalScene(v216);
    v165[0] = 0;
    LODWORD(v165[1]) = 0;
    re::rendergraph_helper::getRenderOnTopMeshPasses(v216);
    re::rendergraph_helper::populateMeshPassArray<8ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,8ul>>(&v190, v165, v216);
    *&v216[0] = &v184;
    *(&v216[0] + 1) = v161;
    *&v216[1] = "Portal_RenderOnTop";
    *(&v216[1] + 1) = v166;
    *&v216[2] = v165[0];
    *(&v216[2] + 1) = v37;
    *&v216[3] = v152;
    *(&v216[3] + 1) = v224;
    LODWORD(v217) = 2;
    WORD2(v217) = 2;
    v103 = a2;
    *(&v217 + 1) = a2;
    LOBYTE(v218) = 1;
    v219 = 0;
    re::encodeMaterialPassForPortalScene(v216);
  }

  if (*(v164 + 4) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C0A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A30))
    {
      qword_1EE1C0A28 = re::hashString("DepthBufferPatchAndStencilDecrement", v128);
      __cxa_guard_release(&qword_1EE1C0A30);
    }

    if ((atomic_load_explicit(&qword_1EE1C0A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A40))
    {
      qword_1EE1C0A38 = re::hashString("DepthBufferPatchAndStencilDecrementNoFragmentFunction", v129);
      __cxa_guard_release(&qword_1EE1C0A40);
    }

    v111 = *(v164 + 2) == 0;
    v112 = &qword_1EE1C0A38;
    if (!*(v164 + 2))
    {
      v112 = &qword_1EE1C0A28;
    }

    v113 = *v112;
    v114 = "DepthBufferPatchAndStencilDecrement";
    v165[0] = v155;
    v165[1] = v156;
    if (!v111)
    {
      v114 = "DepthBufferPatchAndStencilDecrementNoFragmentFunction";
    }

    v166[0] = v154;
    v166[1] = v114;
    *v167 = v113;
    *&v167[8] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kDecrementStInfo;
    LOBYTE(v168) = 0x80;
    v167[9] = 0x80;
    v167[17] = 0x80;
    v169 = v103;
    LOBYTE(v170) = 0;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v103, v216);
    re::encodeMeshPassForPortal(v216, v165);
  }

  if (v231[0])
  {
    if (v233)
    {
      (*(*v231[0] + 40))();
    }

    v233 = 0;
    memset(v231, 0, sizeof(v231));
    ++v232;
  }

  if (v227[0])
  {
    if (v230)
    {
      (*(*v227[0] + 40))();
    }

    v230 = 0;
    v227[1] = 0;
    v228 = 0;
    v227[0] = 0;
    ++v229;
  }

  if (v225[0] && v226)
  {
    (*(*v225[0] + 40))();
  }

  *(&v193 + 1) = v153;
  if (v194 && (v195 & 1) != 0)
  {
    (*(*v194 + 40))();
  }

  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v259);
  ++v252;
  ++v250;
  ++v247;
  v251 = 0;
  v249 = 0;
  v246 = 0;
  v243 = 0;
  ++v244;
  result = v241;
  if (v241)
  {
    if (v242)
    {
      return (*(*v241 + 40))();
    }
  }

  return result;
}

unint64_t re::Slice<re::TechniqueTagFilter>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v5, v7);
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + 32 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v6, v8);
  __break(1u);
  return result;
}

uint64_t re::rendergraph_helper::populateMeshPassArray<7ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,7ul>>(re::MeshPassInfoData *this, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 16);
  v6 = 224;
  do
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v22 = *(v5 + 3);
    v23 = v5[7];
    v11 = v5[8];
    result = re::MeshPassInfoData::getMeshPartBucket(this, v7);
    if (result)
    {
      v13 = result;
      v14 = 1;
      v15 = v22;
      v16 = v23;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = 1;
      result = re::DynamicInlineArray<re::FilteredMeshPass,7ul>::add(a2, &v13);
    }

    v5 += 32;
    v6 -= 32;
  }

  while (v6);
  return result;
}

uint64_t re::rendergraph_helper::populateMeshPassArray<8ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,8ul>>(re::MeshPassInfoData *this, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 16);
  v6 = 256;
  do
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v22 = *(v5 + 3);
    v23 = v5[7];
    v11 = v5[8];
    result = re::MeshPassInfoData::getMeshPartBucket(this, v7);
    if (result)
    {
      v13 = result;
      v14 = 1;
      v15 = v22;
      v16 = v23;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = 1;
      result = re::DynamicInlineArray<re::FilteredMeshPass,8ul>::add(a2, &v13);
    }

    v5 += 32;
    v6 -= 32;
  }

  while (v6);
  return result;
}

void *re::allocInfo_StencilPtInjectionNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0B40, "StencilPtInjectionNode");
    __cxa_guard_release(&qword_1EE1C0A48);
  }

  return &unk_1EE1C0B40;
}

void re::initInfo_StencilPtInjectionNode(re *this, re::IntrospectionBase *a2)
{
  v25[0] = 0xF842934DFAA68D32;
  v25[1] = "StencilPtInjectionNode";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1C0A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A50))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C0AD8 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "frustumCulling";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C0AE0 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "materialPassesOverride";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x11000000005;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C0AE8 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_BOOL(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "depthBufferPatchAndStencilDecrementNoFragmentFunction";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x13800000006;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C0AF0 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_BOOL(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "shouldRenderPortalsAndStencil";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x13A00000007;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1C0AF8 = v23;
    __cxa_guard_release(&qword_1EE1C0A50);
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1C0AD8;
  *(this + 9) = re::internal::defaultConstruct<re::StencilPtInjectionNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StencilPtInjectionNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::StencilPtInjectionNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::StencilPtInjectionNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::StencilPtInjectionNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D14B10;
  *(result + 264) = 1;
  *(result + 38) = 0;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 34) = 0;
  *(result + 74) = 0;
  *(result + 156) = 0;
  *(result + 314) = 1;
  return result;
}

void re::internal::defaultDestruct<re::StencilPtInjectionNode>(uint64_t a1, uint64_t a2, id *a3)
{
  re::DynamicArray<re::DynamicString>::deinit((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::StencilPtInjectionNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D14B10;
  *(result + 264) = 1;
  *(result + 38) = 0;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 34) = 0;
  *(result + 74) = 0;
  *(result + 156) = 0;
  *(result + 314) = 1;
  return result;
}

void re::internal::defaultDestructV2<re::StencilPtInjectionNode>(id *a1)
{
  re::DynamicArray<re::DynamicString>::deinit((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void re::StencilPtInjectionNode::~StencilPtInjectionNode(id *this)
{
  re::DynamicArray<re::DynamicString>::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::DynamicArray<re::DynamicString>::deinit((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = a2 + 2;
      v7 = &v6[8 * v4];
      v8 = a1 + 2;
      if (v4)
      {
        memmove(a1 + 2, v6, v4 << 6);
      }

      memcpy(&v8[8 * v4], v7, v5 << 6);
    }

    else if (v3)
    {
      memmove(a1 + 2, a2 + 2, v3 << 6);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

double re::internal::Callable<re::StencilPtInjectionNode::executeForPortal(re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 27);
  if ((*(a2 + 145) & 1) == 0)
  {
    *(a2 + 145) = 1;
  }

  *(a2 + 146) = v4;
  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(**(a1 + 16) + 192, (a2 + 88));
  if (v5)
  {
    v7 = v5;
    v8 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](**(a1 + 24) + 56, *(a2 + 84));
    v9 = 0;
    LODWORD(v10) = 0;
    HIDWORD(v10) = 0;
    *(&v10 + 4) = v7->u32[1];
    *&v11 = 0;
    *(&v11 + 1) = v7->u32[2];
    v12 = vnegq_f32(v7[1]);
    v12.i32[3] = 1.0;
    v13 = *v8;
    v14 = v8[1];
    v15 = v8[2];
    v16 = v8[3];
    v20[0] = v7->u32[0];
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    do
    {
      v21[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v20[v9])), v14, *&v20[v9], 1), v15, v20[v9], 2), v16, v20[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    result = *v21;
    v17 = v21[1];
    v18 = v21[2];
    v19 = v21[3];
    *v8 = v21[0];
    v8[1] = v17;
    v8[2] = v18;
    v8[3] = v19;
  }

  return result;
}

uint64_t re::internal::Callable<re::StencilPtInjectionNode::executeForPortal(re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D14BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::StencilPtInjectionNode::executeForPortal(re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D14BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re16MeshPassInfoDataE";
  if (("N2re16MeshPassInfoDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re16MeshPassInfoDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,7ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<re::FilteredMeshPass,7ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 24 * *a1;
    *(v5 + 16) = *a2;
    v6 = v5 + 16;
    v7 = *(a2 + 8);
    *(v6 + 8) = v7;
    if (v7 == 1)
    {
      v8 = *(a2 + 9);
      *(v6 + 13) = *(a2 + 13);
      *(v6 + 9) = v8;
    }

    v9 = *(a2 + 14);
    *(v6 + 18) = *(a2 + 18);
    *(v6 + 14) = v9;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,7ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 6uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,8ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<unsigned long long,8ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 24 * *a1;
    *(v5 + 16) = *a2;
    v6 = v5 + 16;
    v7 = *(a2 + 8);
    *(v6 + 8) = v7;
    if (v7 == 1)
    {
      v8 = *(a2 + 9);
      *(v6 + 13) = *(a2 + 13);
      *(v6 + 9) = v8;
    }

    v9 = *(a2 + 14);
    *(v6 + 18) = *(a2 + 18);
    *(v6 + 14) = v9;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

void re::UIShadowRenderGraphNode::execute(const char **this, uint64_t a2)
{
  v214 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C0BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0BD8))
  {
    _MergedGlobals_533 = re::hashString("UIShadowCaster", v122);
    __cxa_guard_release(&qword_1EE1C0BD8);
  }

  v4 = re::RenderGraphDataStore::tryGet<re::UIShadowRenderData>(*(a2 + 1168), "UIShadowRenderData", "RenderFrame");
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if ((atomic_load_explicit(&qword_1EE1C0BE8, memory_order_acquire) & 1) == 0)
  {
    v123 = __cxa_guard_acquire(&qword_1EE1C0BE8);
    if (v123)
    {
      qword_1EE1C0BE0 = re::getCombinedScopeHash(v123, v124, v125);
      __cxa_guard_release(&qword_1EE1C0BE8);
    }
  }

  v6 = re::RenderGraphDataStore::tryGet<re::SceneArrayData>(*(a2 + 1168), qword_1EE1C0BE0);
  if (!v6)
  {
    v65 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_ERROR, "UIShadowRenderGraphNode::execute: Missing SceneArrayData. Skipping node execution.", buf, 2u);
    }

    return;
  }

  v7 = v6;
  v142 = v5;
  v8 = &v169;
  if (*(a2 + 1352))
  {
    goto LABEL_126;
  }

  v141 = 0;
LABEL_7:
  v9 = *(*a2 + 32);
  v171 = 0;
  v169 = 0u;
  v170 = 0u;
  *(v8 + 36) = 0x7FFFFFFFLL;
  v10 = *(v7 + 24);
  v143 = a2;
  if (!v10)
  {
LABEL_52:
    v66 = v142;
    v146 = *(v142 + 32);
    if (!v146)
    {
      goto LABEL_60;
    }

    v67 = 0;
    v68 = *(v142 + 16);
    while (1)
    {
      v69 = *v68;
      v68 += 56;
      if (v69 < 0)
      {
        goto LABEL_61;
      }

      if (v146 == ++v67)
      {
        LODWORD(v67) = *(v142 + 32);
        goto LABEL_61;
      }
    }
  }

  v11 = *(v7 + 40);
  v134 = &v11[v10];
  v12 = &qword_1EE1C0000;
  LODWORD(v146) = 1065353216;
  __asm { FMOV            V9.2S, #1.0 }

  while (1)
  {
    v136 = v11;
    v18 = *v11;
    if ((atomic_load_explicit(&qword_1EE1C0BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0BF8))
    {
      qword_1EE1C0BF0 = re::hashString("MeshScenes", v64);
      __cxa_guard_release(&qword_1EE1C0BF8);
    }

    v19 = v12[382];
    v20 = strlen(v18);
    v21 = 0x9E3779B97F4A7C17;
    if (v20)
    {
      MurmurHash3_x64_128(v18, v20, 0, buf);
      v21 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
    }

    v22 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(*(a2 + 1168), ((v19 >> 2) + (v19 << 6) + v21) ^ v19);
    v23 = v22 ? v22 + 8 : 0;
    v137 = *(v23 + 40);
    if (v137)
    {
      break;
    }

LABEL_46:
    v11 = v136 + 1;
    a2 = v143;
    v12 = &qword_1EE1C0000;
    if (v136 + 1 == v134)
    {
      goto LABEL_52;
    }
  }

  v24 = 0;
  v135 = v23;
  while (1)
  {
    v138 = v24;
    v25 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v23, v24);
    v27 = *(v25 + 16);
    if (v27)
    {
      break;
    }

LABEL_45:
    v24 = v138 + 1;
    v23 = v135;
    if (v138 + 1 == v137)
    {
      goto LABEL_46;
    }
  }

  v28 = 0;
  v139 = v25;
  while (1)
  {
    v29 = *(v25 + 32) + 736 * v28;
    if (*(v29 + 717) == 1 && *(v29 + 472) != 0.0)
    {
      break;
    }

LABEL_44:
    if (++v28 >= v27)
    {
      goto LABEL_45;
    }
  }

  v140 = v28;
  *&v195 = *(v25 + 32) + 736 * v28;
  *(&v195 + 1) = **(v29 + 112);
  *&v196 = *(*(v29 + 112) + 8);
  v30 = *(v29 + 8);
  *&v197 = 0;
  *(&v197 + 1) = v30;
  v198 = xmmword_1E3047670;
  v199 = xmmword_1E3047680;
  v200 = xmmword_1E30476A0;
  v201 = xmmword_1E30474D0;
  v202 = 0uLL;
  if (*(v29 + 56))
  {
    v203 = *(v29 + 48);
    v144 = *(&v203 + 1);
    if (*(&v203 + 1))
    {
      goto LABEL_25;
    }

LABEL_43:
    v25 = v139;
    v27 = *(v139 + 16);
    v28 = v140;
    goto LABEL_44;
  }

  *&v203 = &v197;
  *(&v203 + 1) = 1;
  v144 = 1;
LABEL_25:
  v31 = 0;
  while (1)
  {
    *&v209 = &v195;
    *(&v209 + 1) = v31;
    v145 = v31;
    v32 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(&v209, v26);
    v34 = 0;
    v35 = *(v29 + 128);
    v36 = *(v29 + 144);
    v37 = *(v29 + 160);
    v38 = *(v29 + 176);
    v39 = v32[2];
    v40 = v32[3];
    v41 = v32[4];
    v166[0] = v32[1];
    v166[1] = v39;
    v166[2] = v40;
    v166[3] = v41;
    do
    {
      *&buf[v34 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(v166[v34])), v36, *&v166[v34], 1), v37, v166[v34], 2), v38, v166[v34], 3);
      ++v34;
    }

    while (v34 != 4);
    v149 = v174;
    v152 = *buf;
    v147 = v176;
    v148 = v175;
    v42 = *v209;
    v43 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(&v209, v33);
    v44 = re::Slice<re::internal::BindPointImplBase const*>::range(v42, *v43, v43[1]);
    if (v26)
    {
      break;
    }

LABEL_42:
    v31 = v145 + 1;
    if (v145 + 1 == v144)
    {
      goto LABEL_43;
    }
  }

  v45 = v44;
  v46 = v26;
  v47 = 0;
  while (2)
  {
    v48 = *(v45 + v47);
    re::globalAllocators(v44);
    v49 = (*(*v9 + 32))(v9, 336, 16);
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 32) = 0u;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0u;
    *(v49 + 72) = 0u;
    *(v49 + 88) = 0u;
    *(v49 + 104) = 0u;
    *(v49 + 120) = 0;
    *(v49 + 192) = 0;
    *(v49 + 200) = 0;
    *(v49 + 208) = 0;
    *(v49 + 224) = 0;
    *(v49 + 128) = 0u;
    *(v49 + 144) = 0u;
    *(v49 + 160) = 0u;
    *(v49 + 176) = 0;
    *(v49 + 184) = v9;
    *(v49 + 232) = xmmword_1E304F3C0;
    *(v49 + 248) = 0;
    *(v49 + 252) = 10854;
    *(v49 + 256) = _D9;
    *(v49 + 264) = 0;
    *(v49 + 272) = 0;
    *(v49 + 320) = 0;
    *(&v174 + 1) = re::globalAllocators(v49)[2];
    *buf = &unk_1F5D14CB8;
    *&v175 = buf;
    v50 = (*(*v9 + 16))(v9, v49, buf);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
    if (*(v29 + 200))
    {
      *(v50 + 7) = **(v29 + 192);
      if (!*(v29 + 304))
      {
        goto LABEL_58;
      }

      *(v50 + 8) = **(v29 + 296);
      v52 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v50, _MergedGlobals_533);
      if (!v53)
      {
        goto LABEL_59;
      }

      v54 = *v52;
      v55 = *(v29 + 512);
      *&buf[8] = 0;
      *&v174 = 0;
      *buf = v55;
      *(&v174 + 1) = v48;
      *&v175 = 0;
      *(&v175 + 1) = v50;
      *&v176 = 0;
      DWORD2(v176) = -65280;
      HIDWORD(v176) = v54;
      LODWORD(v177) = 0;
      v178 = v152;
      v179 = v149;
      v180 = v148;
      v181 = v147;
      v187 = 0;
      v186 = 0;
      v188 = 0;
      v189 = 0;
      v182 = 0;
      v183 = 0;
      v185 = 0;
      v184 = 0;
      v190 = 25172350;
      v191 = 0x7FFFFFFFLL;
      v192 = 0xFFFFFFFFLL;
      v193 = 0;
      v194 = 0;
      v56 = *(v29 + 512);
      v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) >> 27));
      v58 = v57 ^ (v57 >> 31);
      if (v169)
      {
        v59 = v58 % DWORD2(v170);
        v60 = *(*(&v169 + 1) + 4 * v59);
        if (v60 != 0x7FFFFFFF)
        {
          while (*(v170 + (v60 << 6) + 8) != v56)
          {
            v60 = *(v170 + (v60 << 6)) & 0x7FFFFFFF;
            if (v60 == 0x7FFFFFFF)
            {
              goto LABEL_39;
            }
          }

          v63 = v170 + (v60 << 6) + 16;
LABEL_41:
          re::DynamicArray<re::MeshPartDrawContext>::add(v63, buf);
          if (++v47 == v46)
          {
            goto LABEL_42;
          }

          continue;
        }
      }

      else
      {
        LODWORD(v59) = 0;
      }

LABEL_39:
      v61 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v169, v59, v58);
      v62 = *(v29 + 512);
      *(v61 + 16) = 0;
      v63 = v61 + 16;
      *(v63 - 8) = v62;
      *(v63 + 32) = 0;
      *(v63 + 8) = 0;
      *(v63 + 16) = 0;
      *(v63 + 24) = 1;
      ++v172;
      goto LABEL_41;
    }

    break;
  }

  re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v126, v129);
  __break(1u);
LABEL_58:
  re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v127, v130);
  __break(1u);
LABEL_59:
  re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v128, v131);
  __break(1u);
LABEL_60:
  LODWORD(v67) = 0;
LABEL_61:
  if (v67 != v146)
  {
    a2 = 24;
    do
    {
      v70 = *(v66 + 16) + 224 * v67;
      v71 = v70 + 16;
      v72 = (*(*v9 + 32))(v9, 328, 8);
      re::DrawTable::DrawTable(v72, v9);
      v73 = *(v70 + 192);
      if (v73)
      {
        v74 = 0;
        v75 = (*(v70 + 176) + 8);
        v76 = 0uLL;
        while (1)
        {
          v77 = *v75;
          v75 += 6;
          if (v77 < 0)
          {
            break;
          }

          if (v73 == ++v74)
          {
            LODWORD(v74) = *(v70 + 192);
            break;
          }
        }
      }

      else
      {
        LODWORD(v74) = 0;
        v76 = 0uLL;
      }

      if (v74 != v73)
      {
        v78 = DWORD2(v170);
        v80 = *(&v169 + 1);
        v79 = v169;
        v81 = *(v70 + 192);
        v82 = v170;
        v153 = v73;
        v150 = DWORD2(v170);
        v83 = v169;
        do
        {
          if (v79)
          {
            v84 = *(*(v71 + 160) + 24 * v74 + 16);
            v85 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27));
            v86 = *(v80 + 4 * ((v85 ^ (v85 >> 31)) % v78));
            if (v86 != 0x7FFFFFFF)
            {
              v87 = v86;
              while (*(v82 + (v87 << 6) + 8) != v84)
              {
                v87 = *(v82 + (v87 << 6)) & 0x7FFFFFFF;
                if (v87 == 0x7FFFFFFF)
                {
                  goto LABEL_84;
                }
              }

              while (*(v82 + (v86 << 6) + 8) != v84)
              {
                v86 = *(v82 + (v86 << 6)) & 0x7FFFFFFF;
                if (v86 == 0x7FFFFFFF)
                {
                  v86 = 0x7FFFFFFFLL;
                  break;
                }
              }

              v88 = v82 + (v86 << 6);
              v89 = *(v88 + 32);
              if (v89)
              {
                v90 = *(v88 + 48);
                v91 = 240 * v89;
                do
                {
                  v92 = *v143;
                  v167[0] = v76;
                  v167[1] = v76;
                  v168 = 0;
                  re::addDrawCall(v72, v90, v92, 1u, v167);
                  v76 = 0uLL;
                  v90 += 240;
                  v91 -= 240;
                }

                while (v91);
                v81 = *(v71 + 176);
                LODWORD(v73) = v153;
                v78 = v150;
                v80 = v83 >> 64;
                v79 = v83;
              }
            }
          }

LABEL_84:
          if (v81 <= v74 + 1)
          {
            v93 = v74 + 1;
          }

          else
          {
            v93 = v81;
          }

          while (v93 - 1 != v74)
          {
            LODWORD(v74) = v74 + 1;
            if ((*(*(v71 + 160) + 24 * v74 + 8) & 0x80000000) != 0)
            {
              goto LABEL_91;
            }
          }

          LODWORD(v74) = v93;
LABEL_91:
          ;
        }

        while (v74 != v73);
      }

      if (*(v72 + 5))
      {
        v94 = *v71;
        v95 = *(v71 + 16);
        v96 = *(v71 + 48);
        v175 = *(v71 + 32);
        v176 = v96;
        *buf = v94;
        v174 = v95;
        v177 = xmmword_1E3047670;
        v178 = xmmword_1E3047680;
        v179 = xmmword_1E30476A0;
        v180 = xmmword_1E30474D0;
        v97 = *(v71 + 64);
        v98 = *(v71 + 80);
        v99 = *(v71 + 112);
        v197 = *(v71 + 96);
        v198 = v99;
        v195 = v97;
        v196 = v98;
        v199 = xmmword_1E3047670;
        v200 = xmmword_1E3047680;
        v201 = xmmword_1E30476A0;
        v202 = xmmword_1E30474D0;
        re::DrawTableSlice::DrawTableSlice(v166, v72);
        v100 = [objc_msgSend(MEMORY[0x1E6974128] alloc)];
        v101 = [objc_msgSend(v100 colorAttachments)];
        v7 = v71 + 136;
        [v101 setTexture_];
        [v101 setLoadAction_];
        [v101 setClearColor_];
        v102 = [v101 setStoreAction_];
        v163 = 0;
        HIBYTE(v164) = 0;
        this = v158;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v165 = -1;
        if (!v161)
        {
          v155 = 0;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          v114 = MEMORY[0x1E69E9C10];
          v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v204 = 136315906;
          *&v204[4] = "operator[]";
          *&v204[12] = 1024;
          if (v115)
          {
            v116 = 3;
          }

          else
          {
            v116 = 2;
          }

          *&v204[14] = 468;
          v205 = 2048;
          v206 = 0;
          v207 = 2048;
          v208 = 0;
          _os_log_send_and_compose_impl(v116, &v155, &v209, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v132, v133);
          _os_crash_msg();
          __break(1u);
LABEL_118:
          v155 = 0;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          v117 = MEMORY[0x1E69E9C10];
          v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v204 = 136315906;
          *&v204[4] = "operator[]";
          *&v204[12] = 1024;
          if (v118)
          {
            v119 = 3;
          }

          else
          {
            v119 = 2;
          }

          *&v204[14] = 468;
          v205 = 2048;
          v206 = 0;
          v207 = 2048;
          v208 = 0;
          _os_log_send_and_compose_impl(v119, &v155, &v209, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v132, v133);
          _os_crash_msg();
          __break(1u);
LABEL_122:
          v155 = 0;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          v8 = MEMORY[0x1E69E9C10];
          v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v204 = 136315906;
          *&v204[4] = "operator[]";
          *&v204[12] = 1024;
          if (v120)
          {
            v121 = 3;
          }

          else
          {
            v121 = 2;
          }

          *&v204[14] = 468;
          v205 = 2048;
          v206 = 0;
          v207 = 2048;
          v208 = 0;
          _os_log_send_and_compose_impl(v121, &v155, &v209, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v132, v133);
          _os_crash_msg();
          __break(1u);
LABEL_126:
          v141 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((a2 + 1352), this[2], 0);
          goto LABEL_7;
        }

        **(&v161 + 1) = xmmword_1E3063230;
        if (!v161)
        {
          goto LABEL_118;
        }

        if (!*(&v159 + 1))
        {
          goto LABEL_122;
        }

        v104 = v160;
        *v105.f32 = vcvt_f32_u32(*(v71 + 128));
        v105.i64[1] = v105.i64[0];
        *v160 = vrndaq_f32(vmulq_f32(**(&v161 + 1), v105));
        *(v104 + 16) = 0x3F80000000000000;
        v162 = 2;
        v158[0] = 0;
        v164 = 0;
        v106 = re::RenderFrameBox::get((*(v143[1] + 112) + 328), *(*v143 + 40));
        v154 = *(re::RenderFrame::currentCommandBuffer(v106) + 2);
        v157 = v154;
        re::mtl::CommandBuffer::makeRenderCommandEncoder(&v157, v100, &v155);
        re::ns::String::String(&v209, "UIShadow");
        re::mtl::RenderCommandEncoder::setLabel(&v155, &v209);

        (v156[20])(*v156, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"UIShadow" encoding:4]);
        re::RenderGraphContext::rtInfo(&v209, v143, v143[5]);
        *&v209 = 0x4600000001;
        v108 = *v143;
        v107 = v143[1];
        v109 = v143[3];
        *v204 = 134217472;
        *&v204[8] = 134217472;
        v204[16] = 0;
        v110 = v143[5];
        v151 = *(v110 + 16);
        v111 = *(v110 + 32);
        v112 = re::RenderGraphContext::rtResolution(v143);
        re::encodeDrawCalls(&v155, v166, v108, v107, v109, &v209, v204, "UIShadowCaster", v151, *(&v151 + 1), v111, buf, &v195, v158, v112, v141, 0, 0, 0, 0, 0);
        (v156[21])(*v156, sel_popDebugGroup);
        (v156[33])(*v156, sel_endEncoding);
        re::mtl::mps::ImageGaussianBlur::ImageGaussianBlur(v204, (v143[1] + 208), 4.0);
        re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(v204, &v157, v7);

        re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v155);
        if (*(&v160 + 1))
        {
          if (v161)
          {
            (*(**(&v160 + 1) + 40))();
            v161 = 0uLL;
          }

          *(&v160 + 1) = 0;
        }

        if (v159 && *(&v159 + 1))
        {
          (*(*v159 + 40))();
        }

        if (v100)
        {
        }
      }

      v66 = v142;
      v113 = *(v142 + 32);
      if (v113 <= v67 + 1)
      {
        v113 = v67 + 1;
      }

      while (v113 - 1 != v67)
      {
        LODWORD(v67) = v67 + 1;
        if ((*(*(v142 + 16) + 224 * v67) & 0x80000000) != 0)
        {
          goto LABEL_111;
        }
      }

      LODWORD(v67) = v113;
LABEL_111:
      ;
    }

    while (v67 != v146);
  }

  re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v169);
}

void re::UIShadowRenderGraphNode::~UIShadowRenderGraphNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::UIShadowRenderGraphNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D14CB8;
  return result;
}

void *re::internal::Callable<re::UIShadowRenderGraphNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D14CB8;
  return result;
}

uint64_t re::UploadMultiSceneConstantsNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v168 = *MEMORY[0x1E69E9840];
  v4 = re::RenderGraphDataStore::tryGet<re::ProbeContext>(*(a2 + 146), "ProbeContext", "RenderFrame");
  v5 = re::RenderGraphDataStore::tryGet<re::Slice<re::UberClippingParametersEntry>>(*(a2 + 146), "Clipping", "RenderFrame");
  v135 = re::RenderGraphDataStore::tryGet<re::Slice<unsigned short>>(*(a2 + 146), "Clipping", "RenderFrame");
  v6 = &_MergedGlobals_534;
  if ((atomic_load_explicit(&qword_1EE1C0C08, memory_order_acquire) & 1) == 0)
  {
LABEL_136:
    if (__cxa_guard_acquire(&qword_1EE1C0C08))
    {
      *v6 = re::hashString("SceneArray", v130);
      __cxa_guard_release((v6 + 8));
    }
  }

  v7 = strlen(this[4]);
  v8 = 0x9E3779B97F4A7C17;
  if (v7)
  {
    MurmurHash3_x64_128(this[4], v7, 0, &v157);
    v8 = ((*(&v157 + 1) - 0x61C8864680B583E9 + (v157 << 6) + (v157 >> 2)) ^ v157) - 0x61C8864680B583E9;
  }

  v134 = this;
  v9 = re::RenderGraphDataStore::get<re::SceneArrayData>(*(a2 + 146), (v8 + (*v6 << 6) + (*v6 >> 2)) ^ *v6);
  re::MaterialManager::resizeScenes(*(*(a2 + 1) + 24), *(v9 + 24));
  if ((atomic_load_explicit((v6 + 0x18), memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C18))
  {
    qword_1EE1C0C10 = re::hashString("ProjectiveMeshShadow", v131);
    __cxa_guard_release(&qword_1EE1C0C18);
  }

  v10 = qword_1EE1C0C10;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v157);
  v140 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>>(*(a2 + 146), ((v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + ((*(&v157 + 1) - 0x61C8864680B583E9 + (v157 << 6) + (v157 >> 2)) ^ v157)) ^ v10);
  if (*(v9 + 24))
  {
    v11 = 0;
    v12 = 0;
    v141 = v4;
    v138 = v9;
    v139 = v8;
    do
    {
      v147 = v12;
      v13 = *(*(v9 + 40) + 8 * v11);
      v14 = strlen(v13);
      if (v14)
      {
        MurmurHash3_x64_128(v13, v14, 0, &v157);
        v15 = (*(&v157 + 1) - 0x61C8864680B583E9 + (v157 << 6) + (v157 >> 2)) ^ v157;
      }

      else
      {
        v15 = 0;
      }

      if ((atomic_load_explicit(&qword_1EE1C0C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C28))
      {
        qword_1EE1C0C20 = re::hashString("LightContext", v110);
        __cxa_guard_release(&qword_1EE1C0C28);
      }

      v16 = v15 - 0x61C8864680B583E9;
      v143 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::LightContexts>>(*(a2 + 146), (v15 - 0x61C8864680B583E9 + (qword_1EE1C0C20 << 6) + (qword_1EE1C0C20 >> 2)) ^ qword_1EE1C0C20);
      if ((atomic_load_explicit(&qword_1EE1C0C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C38))
      {
        qword_1EE1C0C30 = re::hashString("IBLContextOverride", v111);
        __cxa_guard_release(&qword_1EE1C0C38);
      }

      v17 = *(a2 + 146);
      v18 = "N2re23IBLContextOverrideScopeE";
      if (("N2re23IBLContextOverrideScopeE" & 0x8000000000000000) != 0)
      {
        v19 = 5381;
        v20 = ("N2re23IBLContextOverrideScopeE" & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v18 = v19;
          v21 = *v20++;
          v19 = (33 * v19) ^ v21;
        }

        while (v21);
      }

      if (!*(v17 + 64) || (v22 = (((v16 + (qword_1EE1C0C30 << 6) + (qword_1EE1C0C30 >> 2)) ^ qword_1EE1C0C30) - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2)) ^ v18, v23 = *(*(v17 + 72) + 4 * (v22 % *(v17 + 88))), v23 == 0x7FFFFFFF))
      {
LABEL_20:
        v25 = 0;
      }

      else
      {
        v24 = *(v17 + 80);
        while (*(v24 + 24 * v23 + 8) != v22)
        {
          v23 = *(v24 + 24 * v23) & 0x7FFFFFFF;
          if (v23 == 0x7FFFFFFF)
          {
            goto LABEL_20;
          }
        }

        v25 = *(v24 + 24 * v23 + 16);
      }

      if ((atomic_load_explicit(&qword_1EE1C0C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C48))
      {
        qword_1EE1C0C40 = re::hashString("RenderGraphDataPipeData", v112);
        __cxa_guard_release(&qword_1EE1C0C48);
      }

      v26 = re::RenderGraphDataStore::tryGet<re::SceneCRWSReferencePosition>(*(a2 + 146), (v8 + (qword_1EE1C0C40 << 6) + (qword_1EE1C0C40 >> 2)) ^ qword_1EE1C0C40);
      if (v13 && !v26)
      {
        v26 = re::RenderGraphDataStore::tryGet<re::SceneCRWSReferencePosition>(*(a2 + 146), (v16 + (qword_1EE1C0C40 << 6) + (qword_1EE1C0C40 >> 2)) ^ qword_1EE1C0C40);
      }

      if (v26)
      {
        v155 = *v26;
      }

      else
      {
        v155 = 0uLL;
      }

      v27 = re::MaterialManager::sceneConstants(*(*(a2 + 1) + 24), v11);
      *v27 = v155;
      v28 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>>(*(a2 + 146), (v8 + (qword_1EE1C0C10 << 6) + (qword_1EE1C0C10 >> 2)) ^ qword_1EE1C0C10);
      v142 = v15;
      if (v13 && !v28)
      {
        v28 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>>(*(a2 + 146), (v16 + (qword_1EE1C0C10 << 6) + (qword_1EE1C0C10 >> 2)) ^ qword_1EE1C0C10);
      }

      v145 = v28;
      v29 = re::MaterialManager::sceneBuffers(*(*(a2 + 1) + 24), v11);
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v157, (*a2 + 16), 0x20000uLL, 0x100uLL);
      v30 = *(&v157 + 1);
      v4 = v158;
      if (v5)
      {
        v31 = v5[1];
        if (v31)
        {
          v137 = v25;
          v136 = *(&v157 + 1);
          v32 = v157;
          this = DWORD2(v157);
          v33 = v157 + DWORD2(v157);
          if (v31 >= 0x400)
          {
            v6 = 1024;
          }

          else
          {
            v6 = v5[1];
          }

          bzero((v157 + DWORD2(v157)), 0x10000uLL);
          bzero((v33 + 98304), 0x8000uLL);
          v35 = 0;
          v36 = v155;
          v37 = v32 + 98304;
          v38 = 64;
          do
          {
            v39 = v5[1];
            if (v39 <= v35)
            {
              re::internal::assertLog(6, v34, *v36.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v39);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v132, v133);
              __break(1u);
              goto LABEL_136;
            }

            v40 = (this + v37);
            v41 = (this + v32);
            v42 = (*v5 + v38);
            v43 = v42[1];
            *v40 = *v42;
            v40[1] = v43;
            v45 = v42[-2];
            v44 = v42[-1];
            v46 = v42[-3];
            *v41 = v42[-4];
            v41[1] = v46;
            v41[2] = v45;
            v41[3] = v44;
            v44.i32[0] = *(this + v32 + 12);
            v47 = (this + v32 + 28);
            v48 = (this + v32 + 44);
            v44.i32[1] = *v47;
            v44.i32[2] = *v48;
            v49 = vsubq_f32(v44, v36);
            v41->i32[3] = v49.i32[0];
            *v47 = v49.i32[1];
            *v48 = v49.i32[2];
            ++v35;
            v41[3] = vcvt_hight_f16_f32(vcvt_f16_f32(vmaxnmq_f32(vcvtq_f32_f16(*(this + v32 + 48)), 0)), vmaxnmq_f32(vcvtq_f32_f16(*(this + v32 + 56)), 0));
            v37 += 32;
            v38 += 96;
            v32 += 64;
          }

          while (v6 != v35);
          v25 = v137;
          v30 = v136;
          if (v135)
          {
            v50 = *(v135 + 8);
            if (v50)
            {
              if (v50 >= 0x4000)
              {
                v51 = 0x4000;
              }

              else
              {
                v51 = *(v135 + 8);
              }

              bzero((v33 + 0x10000), 0x8000uLL);
              v52 = 2 * v51;
              v25 = v137;
              memcpy((v33 + 0x10000), *v135, v52);
              v30 = v136;
            }
          }
        }
      }

      v152 = v4;
      v153 = 0;
      v154 = v30;
      *&v157 = 0x29136C0FCC2;
      v53 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v29, &v157);
      re::BufferTable::setBuffer(v29, *(*(v29 + 1) + 16 * v53 + 8), &v152);
      v54 = re::MaterialManager::lightBuffers(*(*(a2 + 1) + 24), v11);
      if (v143)
      {
        re::LightContexts::createConstantBuffer(v143 + 1, *a2, &v155, v54);
      }

      if ((atomic_load_explicit(&qword_1EE1C0C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C58))
      {
        qword_1EE1C0C50 = re::hashString("RenderGraphDataPipeData", v113);
        __cxa_guard_release(&qword_1EE1C0C58);
      }

      v55 = qword_1EE1C0C50;
      if (v25)
      {
        v56 = *(v25 + 8);
        v57 = strlen(v56);
        v58 = 0x9E3779B97F4A7C17;
        if (v57)
        {
          MurmurHash3_x64_128(v56, v57, 0, &v157);
          v58 = ((*(&v157 + 1) - 0x61C8864680B583E9 + (v157 << 6) + (v157 >> 2)) ^ v157) - 0x61C8864680B583E9;
        }

        v59 = (v55 >> 2) + (v55 << 6) + v58;
      }

      else
      {
        v59 = v16 + (qword_1EE1C0C50 << 6) + (qword_1EE1C0C50 >> 2);
      }

      v60 = re::RenderGraphDataStore::tryGet<re::IBLContext>(*(a2 + 146), v59 ^ v55);
      v61 = re::MaterialManager::sceneTextures(*(*(a2 + 1) + 24), v11);
      if (v60)
      {
        re::ColorManager::computeWPCMatrix((*(*(a2 + 1) + 120) + 2048), *(*(a2 + 1) + 96), &v157);
        re::IBLContext::createConstantBuffer(v60, *a2, v54, &v157);
        re::IBLContext::updateSceneTextures(v60, v61);
      }

      else
      {
        v157 = 0uLL;
        v159 = 0;
        v158 = 0;
        v160 = 0;
        v161 = 0;
        LODWORD(v162) = 0;
        v62 = *a2;
        v149 = xmmword_1E3047670;
        v150 = xmmword_1E3047680;
        v151 = xmmword_1E30476A0;
        re::IBLContext::createConstantBuffer(&v157, v62, v54, &v149);
        re::IBLContext::updateSceneTextures(&v157, v61);
        if (v161)
        {

          v161 = 0;
        }

        re::DynamicArray<re::IBL>::deinit(&v157);
      }

      if ((atomic_load_explicit(&qword_1EE1C0C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C68))
      {
        qword_1EE1C0C60 = re::hashString("VirtualEnvironmentProbeContextOverride", v114);
        __cxa_guard_release(&qword_1EE1C0C68);
      }

      v63 = *(a2 + 146);
      v64 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContextOverride>(v63, (v16 + (qword_1EE1C0C60 << 6) + (qword_1EE1C0C60 >> 2)) ^ qword_1EE1C0C60);
      v65 = qword_1EE1C0C50;
      if (v64)
      {
        v66 = v64;
        v67 = *(v64 + 8);
        v68 = strlen(v67);
        v69 = 0x9E3779B97F4A7C17;
        if (v68)
        {
          MurmurHash3_x64_128(v67, v68, 0, &v157);
          v69 = ((*(&v157 + 1) - 0x61C8864680B583E9 + (v157 << 6) + (v157 >> 2)) ^ v157) - 0x61C8864680B583E9;
          v63 = *(a2 + 146);
        }

        v70 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(v63, ((v65 >> 2) + (v65 << 6) + v69) ^ v65);
        v71 = *(v66 + 16) * *(v66 + 20);
      }

      else
      {
        v70 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(v63, (v16 + (qword_1EE1C0C50 << 6) + (qword_1EE1C0C50 >> 2)) ^ qword_1EE1C0C50);
        v71 = 1.0;
      }

      v73 = v141;
      v74 = 0x9E3779B97F4A7C17;
      if ([**a2 supportsFamily:5001])
      {
        v75 = 0;
        if (!v70)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v75 = re::mtl::Device::supportsArgumentBuffers(*a2, v72) ^ 1;
        if (!v70)
        {
          goto LABEL_76;
        }
      }

      if ((v75 & 1) == 0)
      {
        v76 = re::MaterialManager::sceneTextures(*(*(a2 + 1) + 24), v11);
        v77 = v76;
        v78 = 1.0;
        if (*(v70 + 96) == 1)
        {
          v144 = v76;
          v79 = strlen(*(v70 + 112));
          if (v79)
          {
            MurmurHash3_x64_128(*(v70 + 112), v79, 0, &v157);
            v74 = ((*(&v157 + 1) - 0x61C8864680B583E9 + (v157 << 6) + (v157 >> 2)) ^ v157) - 0x61C8864680B583E9;
          }

          v80 = *(a2 + 146);
          v81 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContextOverride>(v80, (v74 + (qword_1EE1C0C60 << 6) + (qword_1EE1C0C60 >> 2)) ^ qword_1EE1C0C60);
          v82 = qword_1EE1C0C50;
          if (v81)
          {
            v83 = v81;
            v84 = *(v81 + 8);
            v85 = strlen(v84);
            v86 = 0x9E3779B97F4A7C17;
            if (v85)
            {
              MurmurHash3_x64_128(v84, v85, 0, &v157);
              v86 = ((*(&v157 + 1) - 0x61C8864680B583E9 + (v157 << 6) + (v157 >> 2)) ^ v157) - 0x61C8864680B583E9;
              v80 = *(a2 + 146);
            }

            v87 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(v80, ((v82 >> 2) + (v82 << 6) + v86) ^ v82);
            v78 = *(v83 + 16) * *(v83 + 20);
          }

          else
          {
            v87 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(v80, (v74 + (qword_1EE1C0C50 << 6) + (qword_1EE1C0C50 >> 2)) ^ qword_1EE1C0C50);
          }

          v73 = v141;
          v77 = v144;
        }

        else
        {
          v87 = 0;
        }

        re::VirtualEnvironmentProbeContext::createConstantBuffer(v70, *a2, v54, v87, v71, v78);
        re::VirtualEnvironmentProbeContext::createTextureBuffer(v70, *a2, v54, v87);
        re::VirtualEnvironmentProbeContext::updateSceneTextures(v70, v77, v87);
        v89 = v140;
        if (!v73)
        {
          goto LABEL_98;
        }

        goto LABEL_88;
      }

LABEL_76:
      v160 = 0;
      v158 = 0;
      v157 = 0uLL;
      v159 = 0;
      v162 = xmmword_1E3047670;
      v163 = xmmword_1E3047680;
      v164 = xmmword_1E30476A0;
      v165 = 0;
      re::VirtualEnvironmentProbeContext::createConstantBuffer(&v157, *a2, v54, 0, v71, 1.0);
      TextureBuffer = re::VirtualEnvironmentProbeContext::createTextureBuffer(&v157, *a2, v54, 0);
      v89 = v140;
      if (v165 == 1)
      {
        if (v166)
        {
          if (v166)
          {
          }
        }

        v166 = 0;
        v167 = &str_67;
      }

      re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(&v157);
      if (!v141)
      {
        goto LABEL_98;
      }

LABEL_88:
      v90 = re::MaterialManager::sceneTextures(*(*(a2 + 1) + 24), v11);
      v91 = [*v73 textureType];
      if (v91 == 3)
      {
        *&v157 = 0x1AA47CB53A9AC861;
        v93 = &v157;
        v95 = v90;
        v94 = v73;
      }

      else
      {
        if (v91 == 5)
        {
          *&v157 = 0x24E8D221D19BF998;
          re::TextureTable::setTexture(v90, &v157, v73);
          *&v157 = 0;
          v92 = 0x319D4D8796A12B1FLL;
        }

        else
        {
          if (v91 != 6)
          {
            goto LABEL_96;
          }

          *&v157 = 0x3F800981E521C7A1;
          re::TextureTable::setTexture(v90, &v157, v73);
          *&v157 = 0;
          v92 = 0x150A18CBFF11727ALL;
        }

        *&v149 = v92;
        v93 = &v149;
        v94 = v73 + 1;
        v95 = v90;
      }

      re::TextureTable::setTexture(v95, v93, v94);
LABEL_96:
      *&v149 = 0x7831721862C9B2CBLL;
      *&v157 = v73[2];
      v159 = 0;
      LODWORD(v160) = 0;
      HIDWORD(v160) = [v73[2] length];
      re::BufferTable::setBuffer(v29, &v149, &v157);
      if (v159 != -1)
      {
        (off_1F5D14E50[v159])(&v156, &v157);
      }

LABEL_98:
      *&v149 = 0;
      *&v150 = 0;
      DWORD2(v149) = 0;
      if (v89)
      {
        if (v145)
        {
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v157, (*a2 + 16), 8uLL, 4uLL);
          if (v157)
          {
            v96 = *(&v157 + 1);
            v97 = v158;
            v98 = *(v145 + 24);
            if (v98)
            {
              v99 = (*(v145 + 40) + 64);
              v100 = 72 * v98;
              while (*v99 != v142)
              {
                v99 += 9;
                v100 -= 72;
                if (!v100)
                {
                  goto LABEL_107;
                }
              }

              *(v157 + DWORD2(v157)) = *(v99 - 8);
            }

LABEL_107:
            *&v149 = v97;
            DWORD2(v149) = 0;
            *&v150 = v96;
          }
        }
      }

      if ((re::BufferView::isValid(&v149) & 1) == 0)
      {
        v101 = *(*(*(a2 + 1) + 24) + 760);
        v102 = [v101 length];
        *&v149 = v101;
        DWORD2(v149) = 0;
        LODWORD(v150) = 0;
        DWORD1(v150) = v102;
        if (v101)
        {
        }
      }

      *&v157 = 0x441AC0ECAF42AD04;
      v103 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v29, &v157);
      re::BufferTable::setBuffer(v29, *(*(v29 + 1) + 16 * v103 + 8), &v149);
      *&v149 = 0;
      *&v150 = 0;
      DWORD2(v149) = 0;
      if (v89 && (v104 = *(v89 + 20), v104))
      {
        v105 = 96 * v104;
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v157, (*a2 + 16), 96 * v104, 0x10uLL);
        v106 = v158;
        v146 = *(&v157 + 1);
        memcpy((v157 + DWORD2(v157)), *(v89 + 48), v105);
        *&v149 = v106;
        DWORD2(v149) = 0;
        *&v150 = v146;
      }

      else
      {
        v107 = *(*(*(a2 + 1) + 24) + 856);
        v108 = [v107 length];
        *&v149 = v107;
        DWORD2(v149) = 0;
        LODWORD(v150) = 0;
        DWORD1(v150) = v108;
        if (v107)
        {
        }
      }

      *&v157 = 0xDFC20BDF4EDA5B3;
      v109 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v29, &v157);
      re::BufferTable::setBuffer(v29, *(*(v29 + 1) + 16 * v109 + 8), &v149);
      v11 = (v147 + 1);
      v9 = v138;
      v8 = v139;
      v12 = v147 + 1;
    }

    while (*(v138 + 24) > v11);
  }

  v115 = re::RenderGraphDataStore::tryGet<re::AnchorTransformData>(*(a2 + 146), "AnchorTransformData", v134[4]);
  if (v115)
  {
    v116 = v115;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v157, (*a2 + 16), *(v115 + 16) << 8, 0x100uLL);
    v117 = *(&v157 + 1);
    v118 = v158;
    if (*(v116 + 16))
    {
      v119 = 0;
      v120 = 0;
      v148 = *(&v157 + 1);
      v121 = DWORD2(v157) + v157 + 104;
      do
      {
        v122 = (*(v116 + 32) + v119);
        v124 = v122[2];
        v123 = v122[3];
        v125 = v122[1];
        *(v121 - 40) = *v122;
        *(v121 - 24) = v125;
        *(v121 - 8) = v124;
        *(v121 + 8) = v123;
        v169 = __invert_f4(*(v121 - 40));
        *(v121 - 104) = v169;
        *(v121 + 80) = v169.columns[2].i32[0];
        *(v121 + 72) = vzip1q_s32(v169.columns[0], v169.columns[1]).u64[0];
        *(v121 + 96) = v169.columns[2].i32[1];
        *(v121 + 88) = vtrn2q_s32(v169.columns[0], v169.columns[1]).u64[0];
        *(v121 + 112) = v169.columns[2].i32[2];
        *(v121 + 104) = vzip1q_s32(vdupq_laneq_s32(v169.columns[0], 2), vdupq_laneq_s32(v169.columns[1], 2)).u64[0];
        v169.columns[0].i64[0] = *(v121 - 40);
        v169.columns[1].i32[0] = *(v121 - 32);
        v169.columns[2].i64[0] = *(v121 - 24);
        v169.columns[3].i64[0] = *(v121 - 8);
        v126 = *v121;
        v169.columns[1].i32[1] = *(v121 - 16);
        *(v121 + 32) = v169.columns[3].i32[0];
        *(v121 + 24) = vzip1_s32(*v169.columns[0].f32, *v169.columns[2].f32);
        *(v121 + 48) = v169.columns[3].i32[1];
        *(v121 + 40) = vzip2_s32(*v169.columns[0].f32, *v169.columns[2].f32);
        *(v121 + 64) = v126;
        *(v121 + 56) = v169.columns[1].i64[0];
        ++v120;
        v119 += 64;
        v121 += 256;
      }

      while (v120 < *(v116 + 16));
      v117 = v148;
    }
  }

  else
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v157, (*a2 + 16), 0x100uLL, 0x100uLL);
    v117 = *(&v157 + 1);
    v118 = v158;
    v127 = (v157 + DWORD2(v157));
    *v127 = xmmword_1E3047670;
    v127[1] = xmmword_1E3047680;
    v127[2] = xmmword_1E30476A0;
    v127[3] = xmmword_1E30474D0;
    v127[4] = xmmword_1E3047670;
    v127[5] = xmmword_1E3047680;
    v127[6] = xmmword_1E30476A0;
    v127[7] = xmmword_1E30474D0;
    v127[8] = xmmword_1E3047670;
    v127[9] = xmmword_1E3047680;
    v127[10] = xmmword_1E30476A0;
    v127[11] = xmmword_1E3047670;
    v127[12] = xmmword_1E3047680;
    v127[13] = xmmword_1E30476A0;
  }

  v128 = *(*(*(a2 + 1) + 24) + 720);
  *&v149 = 0x478674A22C6B2A1ALL;
  *&v157 = v118;
  DWORD2(v157) = 0;
  v158 = v117;
  return re::BufferTable::setBuffer(v128, &v149, &v157);
}

void re::UploadTonemapConstantsNode::execute(re::UploadTonemapConstantsNode *this, re::RenderGraphContext *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0C78, memory_order_acquire) & 1) == 0)
  {
    v22 = __cxa_guard_acquire(&qword_1EE1C0C78);
    if (v22)
    {
      qword_1EE1C0C70 = re::getCombinedScopeHash(v22, v23, v24);
      __cxa_guard_release(&qword_1EE1C0C78);
    }
  }

  v4 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(*(a2 + 146), qword_1EE1C0C70);
  v5 = re::RenderGraphContext::metalBuffer(a2, this + 264);
  v7 = [*re::BufferSlice::buffer(v5 v6)];
  *v7 = *(v4 + 8);
  v8 = *(v4 + 40);
  v9 = *(v4 + 72);
  v10 = *(v4 + 24);
  v7[3] = *(v4 + 56);
  v7[4] = v9;
  v7[1] = v10;
  v7[2] = v8;
  v11 = *(v4 + 104);
  v12 = *(v4 + 120);
  v13 = *(v4 + 88);
  *(v7 + 32) = *(v4 + 136);
  v7[6] = v11;
  v7[7] = v12;
  v7[5] = v13;
  v14 = *(*(*(a2 + 1) + 24) + 720);
  v29 = 0x1C6D7B14F4E32CD0;
  re::BufferTable::setBuffer(v14, &v29, v5);
  v15 = *(*(*(a2 + 1) + 24) + 656);
  v27[0] = *(this + 35);
  v27[1] = *(this + 36);
  v16 = *(v4 + 152);
  if (v16)
  {
    v17 = *(v4 + 160);
    re::RenderGraphContext::metalTexture(a2, v27, 0, 0, &v28);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v16;
    v33 = vdupq_n_s64(1uLL);
    [v28 replaceRegion:&v29 mipmapLevel:0 withBytes:v17 bytesPerRow:4 * v16];
    v29 = 0xB3E5B3C154101;
    re::TextureTable::setTexture(v15, &v29, &v28);
    v29 = 0;
    if (v28)
    {
    }
  }

  v26[0] = *(this + 37);
  v26[1] = *(this + 38);
  v18 = *(v4 + 176);
  if (v18)
  {
    v19 = *(v4 + 184);
    re::RenderGraphContext::metalTexture(a2, v26, 0, 0, &v28);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v18;
    v33 = vdupq_n_s64(1uLL);
    [v28 replaceRegion:&v29 mipmapLevel:0 withBytes:v19 bytesPerRow:4 * v18];
    v29 = 0x645EADD8982CBD05;
    re::TextureTable::setTexture(v15, &v29, &v28);
    v29 = 0;
    if (v28)
    {
    }
  }

  v25[0] = *(this + 39);
  v25[1] = *(this + 40);
  v20 = *(v4 + 200);
  if (v20)
  {
    v21 = *(v4 + 208);
    re::RenderGraphContext::metalTexture(a2, v25, 0, 0, &v28);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v20;
    v33 = vdupq_n_s64(1uLL);
    [v28 replaceRegion:&v29 mipmapLevel:0 withBytes:v21 bytesPerRow:4 * v20];
    v29 = 0x259D0C231F804627;
    re::TextureTable::setTexture(v15, &v29, &v28);
    v29 = 0;
    if (v28)
    {
    }
  }
}

void re::UploadMultiSceneConstantsNode::~UploadMultiSceneConstantsNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::UploadTonemapConstantsNode::~UploadTonemapConstantsNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::get<re::SceneArrayData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re14SceneArrayDataE";
  if (("N2re14SceneArrayDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re14SceneArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::LightContexts>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContextOverride>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re38VirtualEnvironmentProbeContextOverrideE";
  if (("N2re38VirtualEnvironmentProbeContextOverrideE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re38VirtualEnvironmentProbeContextOverrideE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::add(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  v6 = *a2;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (*a1)
  {
    v9 = v8 % *(a1 + 24);
    v10 = *(*(a1 + 8) + 4 * v9);
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *&v6;
      v12 = *(a1 + 16);
      if (*(v12 + 24 * v10 + 4) == v11)
      {
        return v12 + 24 * v10 + 8;
      }

      while (1)
      {
        LODWORD(v10) = *(v12 + 24 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v12 + 24 * v10 + 4) == v11)
        {
          return v12 + 24 * v10 + 8;
        }
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v14 = re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(a1, v9, v8);
  *(v14 + 4) = *a2;
  *(v14 + 8) = *a3;
  result = v14 + 8;
  ++*(a1 + 40);
  return result;
}

void re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(uint64_t *a1, double a2, double a3, float32x4_t a4, double a5, float32x4_t a6)
{
  v6 = a1;
  v277 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v198 = a1[5];
  v199 = a1[4];
  v200 = a1[6];
  v201 = a1[3];
  v267 = 0;
  v268 = 0;
  v270 = 0;
  v271 = 0;
  v273 = 0;
  v218 = 0;
  v9 = *(*(v8 + 8) + 96);
  if (v9)
  {
    v222.i64[0] = 0x7FA75CCDD0CC4AC6;
    v222.i64[1] = "overrides:disablefrustumculling";
    v10 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v9, &v222, &v218);
    if (v222.i8[0])
    {
      if (v222.i8[0])
      {
      }
    }
  }

  if (*(v6 + 64) == 1 && *(v7 + 872) == 1 && (v218 & 1) == 0)
  {
    LOWORD(v212) = 256;
    re::buildCullingFrustum((v7 + 64), (v7 + 144), *(v7 + 890), &v212, &v222, a4, a6);
    re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::move(&v267, &v222);
    ++v268;
    re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::move(&v270, v239);
    ++v271;
    v273 = v266;
    if (v239[0])
    {
      v11 = &v239[18 * v239[0] + 2];
      v12 = &v239[2];
      do
      {
        *v12 = 0;
        ++*(v12 + 2);
        v12 += 18;
      }

      while (v12 != v11);
    }

    if (v222.i64[0])
    {
      v13 = &v222 + 7 * v222.i64[0] + 1;
      v14 = v223;
      do
      {
        v14->i64[0] = 0;
        ++v14->i32[2];
        v14 += 7;
      }

      while (v14 != v13);
    }
  }

  v15 = *(*v8 + 32);
  v215 = 0;
  v213 = 0u;
  v214 = 0u;
  v212 = 0u;
  v216 = 0x7FFFFFFFLL;
  v197 = v15;
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v213, v15, 3);
  v217 = 0;
  v16 = v6[1];
  v17 = v6[2];
  v18 = v6[3];
  v19 = v6[7];
  v203 = *v6;
  v196 = *(**v6 + 32);
  if ((atomic_load_explicit(&qword_1EE1C0C90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_219;
  }

  while (1)
  {
    v202 = v8;
    if (*(v18 + 16))
    {
      v20 = *(v18 + 24);
    }

    else
    {
      v20 = (v18 + 17);
    }

    v21 = qword_1EE1C0C88;
    v22 = strlen(v20);
    v23 = 0x9E3779B97F4A7C17;
    if (v22)
    {
      MurmurHash3_x64_128(v20, v22, 0, &v222);
      v23 = ((v222.i64[1] - 0x61C8864680B583E9 + (v222.i64[0] << 6) + (v222.i64[0] >> 2)) ^ v222.i64[0]) - 0x61C8864680B583E9;
    }

    v24 = re::RenderGraphDataStore::tryGet<re::DepthMitigationRenderData>(*(*v6 + 1168), ((v21 >> 2) + (v21 << 6) + v23) ^ v21);
    if (v24)
    {
      v25 = *(v24 + 132) > 0;
    }

    else
    {
      v25 = 0;
    }

    v217 = v25;
    if ((atomic_load_explicit(&qword_1EE1C0CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0CA0))
    {
      qword_1EE1C0C98 = re::hashString("RenderGraphDataPipeData", v183);
      __cxa_guard_release(&qword_1EE1C0CA0);
    }

    if (*(v18 + 16))
    {
      v26 = *(v18 + 24);
    }

    else
    {
      v26 = (v18 + 17);
    }

    v18 = qword_1EE1C0C98;
    v27 = strlen(v26);
    v28 = 0x9E3779B97F4A7C17;
    if (v27)
    {
      MurmurHash3_x64_128(v26, v27, 0, &v222);
      v28 = ((v222.i64[1] - 0x61C8864680B583E9 + (v222.i64[0] << 6) + (v222.i64[0] >> 2)) ^ v222.i64[0]) - 0x61C8864680B583E9;
    }

    v29 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(*(v203 + 1168), ((v18 >> 2) + (v18 << 6) + v28) ^ v18);
    if (!v29)
    {
      goto LABEL_135;
    }

    v8 = v29;
    *&v212 = v29;
    if (!v16[6])
    {
      re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v188, v189);
      __break(1u);
LABEL_211:
      v221 = 0;
      v224 = 0u;
      v225 = 0u;
      memset(v223, 0, sizeof(v223));
      v222 = 0u;
      v177 = MEMORY[0x1E69E9C10];
      v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v275 = 136315906;
      *&v275[4] = "operator[]";
      *&v275[12] = 1024;
      if (v178)
      {
        v179 = 3;
      }

      else
      {
        v179 = 2;
      }

      *&v275[14] = 797;
      *&v275[18] = 2048;
      *&v275[20] = 0;
      *&v275[28] = 2048;
      *&v275[30] = 0;
      _os_log_send_and_compose_impl(v179, &v221, &v222, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v275, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
      goto LABEL_215;
    }

    re::RenderCamera::computeLocalTransform(&v222, (v16 + 8));
    v31 = vmulq_f32(v223[1], v223[1]);
    *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
    *v31.f32 = vrsqrte_f32(v32);
    *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
    v274 = vmulq_n_f32(vnegq_f32(v223[1]), vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
    v33 = v16[9];
    v220.i64[0] = v16[8];
    v220.i64[1] = v33;
    if (!v17[8])
    {
      goto LABEL_211;
    }

    if (v17[3])
    {
      break;
    }

LABEL_215:
    v221 = 0;
    v224 = 0u;
    v225 = 0u;
    memset(v223, 0, sizeof(v223));
    v222 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v275 = 136315906;
    *&v275[4] = "operator[]";
    *&v275[12] = 1024;
    if (v180)
    {
      v181 = 3;
    }

    else
    {
      v181 = 2;
    }

    *&v275[14] = 797;
    *&v275[18] = 2048;
    *&v275[20] = 0;
    *&v275[28] = 2048;
    *&v275[30] = 0;
    _os_log_send_and_compose_impl(v181, &v221, &v222, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v275, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
LABEL_219:
    if (__cxa_guard_acquire(&qword_1EE1C0C90))
    {
      qword_1EE1C0C88 = re::hashString("RenderGraphDataPipeData", v182);
      __cxa_guard_release(&qword_1EE1C0C90);
    }
  }

  v34 = 0;
  v35 = v17[10];
  v36 = v17[5];
  v37 = *v35;
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  v41 = v36[1];
  v42 = v36[2];
  v43 = v36[3];
  *v275 = *v36;
  *&v275[16] = v41;
  *&v275[32] = v42;
  v276 = v43;
  do
  {
    *(&v222 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*&v275[v34])), v38, *&v275[v34], 1), v39, *&v275[v34], 2), v40, *&v275[v34], 3);
    v34 += 16;
  }

  while (v34 != 64);
  v206 = v223[0];
  v207 = v222;
  v204 = v224;
  v205 = v223[1];
  memset(v275, 0, 36);
  *&v275[36] = 0x7FFFFFFFLL;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v275, v196, 3);
  v46 = *(v8 + 128);
  if (v46)
  {
    v47 = 0;
    v48 = *(v8 + 112);
    while (1)
    {
      v49 = *v48;
      v48 += 32;
      if (v49 < 0)
      {
        break;
      }

      if (v46 == ++v47)
      {
        LODWORD(v47) = *(v8 + 128);
        break;
      }
    }
  }

  else
  {
    LODWORD(v47) = 0;
  }

  while (v47 != v46)
  {
    v62 = *(v8 + 112);
    v222 = xmmword_1E3047670;
    v223[0] = xmmword_1E3047680;
    v63 = v62 + (v47 << 7);
    v223[1] = xmmword_1E30476A0;
    v224 = xmmword_1E30474D0;
    LOBYTE(v221) = 0;
    v64 = re::RenderGraphMeshNodeBase::computeSortDistance((v63 + 16), &v222, (v63 + 48), (v63 + 64), &v220, &v274, 0, &v221, 0.0, COERCE_DOUBLE(1065353216), 0.0078125, 0.0, v44, v45);
    *&v221 = v64;
    v222.i8[0] = 0;
    v65 = re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::add(v275, &v221, &v222);
    v66 = (*v65)++;
    v222 = 0uLL;
    *&v223[0] = 0;
    v67 = 0xBF58476D1CE4E5B9 * (*(v63 + 8) ^ (*(v63 + 8) >> 30));
    re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v213, (v63 + 8), (0x94D049BB133111EBLL * (v67 ^ (v67 >> 27))) ^ ((0x94D049BB133111EBLL * (v67 ^ (v67 >> 27))) >> 31), &v222);
    if (v222.i32[3] == 0x7FFFFFFF)
    {
      v68 = re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v213, v222.u32[2], v222.u64[0]);
      v69 = *(v63 + 8);
      *(v68 + 16) = 0;
      v70 = v68 + 16;
      *(v68 + 8) = v69;
      *(v68 + 24) = 0;
      ++HIDWORD(v216);
    }

    else
    {
      v70 = v214 + 40 * v222.u32[3] + 16;
    }

    *v70 = v64;
    *(v70 + 8) = v66;
    *(v70 + 9) = *(v63 + 97);
    if (*(v63 + 96) == 1)
    {
      v71 = *(v63 + 16);
      v72 = *(v63 + 32);
      v73 = vcgtq_f32(v71, v72);
      v73.i32[3] = v73.i32[2];
      v74 = vmaxvq_u32(v73);
      v75.i64[0] = 0x3F0000003F000000;
      v75.i64[1] = 0x3F0000003F000000;
      v76 = vmulq_f32(vaddq_f32(v71, v72), v75);
      v77 = v74 < 0;
      if (v74 >= 0)
      {
        v78 = v76.i64[1];
      }

      else
      {
        v78 = 0;
      }

      if (v77)
      {
        v79 = 0;
      }

      else
      {
        v79 = v76.i64[0];
      }

      v86.i64[0] = v79;
      v86.i64[1] = v78;
      v80 = vsubq_f32(v220, v86);
      v81 = vmulq_f32(v80, v80);
      *&v82 = v81.f32[2] + vaddv_f32(*v81.f32);
      *v81.f32 = vrsqrte_f32(v82);
      *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32)));
      v83 = vsubq_f32(v72, v71);
      v83.i32[3] = 0;
      v84 = vmaxnmq_f32(v83, 0);
      v85 = vmulq_f32(v84, v84);
      v86.f32[3] = sqrtf(v85.f32[2] + vaddv_f32(*v85.f32)) * 0.5;
      v208 = vmulq_n_f32(v80, vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32))).f32[0]);
      v87 = vaddq_f32(v86, vmulq_n_f32(v208, v86.f32[3]));
      v88 = *(v63 + 80);
      v89 = vmulq_f32(v88, v88);
      if (fabsf(v89.f32[2] + vaddv_f32(*v89.f32)) >= 1.0e-10)
      {
        v90 = v274;
        if ((atomic_load_explicit(&qword_1EE1C0D38, memory_order_acquire) & 1) == 0)
        {
          v194 = v87;
          v195 = v86;
          v192 = v90;
          v193 = v88;
          v99 = __cxa_guard_acquire(&qword_1EE1C0D38);
          v90 = v192;
          v88 = v193;
          v87 = v194;
          v86 = v195;
          if (v99)
          {
            re::Defaults::floatValue(&v222, "depthBiasGroupNormalAngleCosine", v100);
            v101 = v222.f32[1];
            if (!v222.i8[0])
            {
              v101 = 0.5;
            }

            _MergedGlobals_535 = LODWORD(v101);
            __cxa_guard_release(&qword_1EE1C0D38);
            v90 = v192;
            v88 = v193;
            v87 = v194;
            v86 = v195;
          }
        }

        v91 = vmulq_f32(v88, vnegq_f32(v90));
        if ((v91.f32[2] + vaddv_f32(*v91.f32)) > *&_MergedGlobals_535)
        {
          v87 = v86;
        }
      }

      v92 = vaddq_f32(v204, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v207, v87.f32[0]), v206, *v87.f32, 1), v205, v87, 2));
      v93 = 1.0;
      if (v92.f32[3] > 0.0)
      {
        v92.f32[0] = v92.f32[2] / v92.f32[3];
        if ((v92.f32[2] / v92.f32[3]) > 0.9999)
        {
          v92.f32[0] = 0.9999;
        }

        if (v92.f32[0] >= 0.0)
        {
          v93 = v92.f32[0];
        }

        else
        {
          v93 = 0.0;
        }
      }

      v94 = nextafterf(v93, 10.0);
      v95 = vmulq_f32(v208, *(v63 + 80));
      v96 = v94 - v93;
      if ((v95.f32[2] + vaddv_f32(*v95.f32)) <= 0.0)
      {
        v97 = -256.0;
      }

      else
      {
        v97 = 256.0;
      }

      *(v70 + 4) = v96 * v97;
    }

    else
    {
      *(v70 + 4) = 0;
    }

    v98 = *(v8 + 128);
    if (v98 <= v47 + 1)
    {
      v98 = v47 + 1;
    }

    while (v98 - 1 != v47)
    {
      LODWORD(v47) = v47 + 1;
      if ((*(*(v8 + 112) + (v47 << 7)) & 0x80000000) != 0)
      {
        goto LABEL_90;
      }
    }

    LODWORD(v47) = v98;
LABEL_90:
    ;
  }

  if (HIDWORD(v214) && !re::RenderGraphDataStore::tryGet<re::MeshSortGroupCameraData>(*(v203 + 1168), *(*(v203 + 40) + 48)))
  {
    v102 = *(v203 + 1168);
    v103 = "N2re23MeshSortGroupCameraDataE";
    if (("N2re23MeshSortGroupCameraDataE" & 0x8000000000000000) != 0)
    {
      v104 = ("N2re23MeshSortGroupCameraDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v105 = 5381;
      do
      {
        v103 = v105;
        v106 = *v104++;
        v105 = (33 * v105) ^ v106;
      }

      while (v106);
    }

    v222.i64[0] = (*(*(v203 + 40) + 48) - 0x61C8864680B583E9 + (v103 << 6) + (v103 >> 2)) ^ v103;
    v107 = (*(**(v102 + 8) + 32))(*(v102 + 8), 56, 8);
    *v107 = &unk_1F5D15018;
    *(v107 + 24) = 0u;
    *(v107 + 40) = 0;
    *(v107 + 8) = 0u;
    *(v107 + 44) = 0x7FFFFFFFLL;
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v107 + 8, v196, 3);
    v221 = v107;
    v108 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v102 + 64, &v222, &v221);
    v109 = *v108;
    v110 = (*v108 + 8);
    if (v110 != &v213)
    {
      if (*v110)
      {
        if (*(v109 + 36))
        {
          v111 = *(v109 + 32);
          if (v111)
          {
            memset_pattern16(*(v109 + 16), &unk_1E304C660, 4 * v111);
          }

          v112 = *(v109 + 40);
          if (v112)
          {
            v113 = *(v109 + 24);
            do
            {
              if ((*v113 & 0x80000000) != 0)
              {
                *v113 &= ~0x80000000;
              }

              v113 += 10;
              --v112;
            }

            while (v112);
          }

          *(v109 + 36) = 0;
          *(v109 + 40) = 0;
          v114 = *(v109 + 48) + 1;
          *(v109 + 44) = 0x7FFFFFFF;
          *(v109 + 48) = v114;
        }

        if (v213)
        {
          if (*(v109 + 32) < HIDWORD(v214))
          {
            re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v110, HIDWORD(v214));
          }

          re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(v110, &v213);
          ++*(v109 + 48);
        }
      }

      else if (v213)
      {
        if (HIDWORD(v214) <= 3)
        {
          v176 = 3;
        }

        else
        {
          v176 = HIDWORD(v214);
        }

        re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(*v108 + 8, v213, v176);
        re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(v110, &v213);
      }
    }
  }

  v50 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>>(*(v203 + 1168), *(*(v203 + 40) + 48));
  if (v50)
  {
    v51 = v19 == 0;
  }

  else
  {
    v51 = 0;
  }

  if (v51)
  {
    v19 = v50 + 8;
  }

  else
  {
    if (!v19)
    {
      v52 = *(v203 + 1168);
      v53 = "N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE";
      if (("N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE" & 0x8000000000000000) != 0)
      {
        v54 = ("N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE" & 0x7FFFFFFFFFFFFFFFLL);
        v55 = 5381;
        do
        {
          v53 = v55;
          v56 = *v54++;
          v55 = (33 * v55) ^ v56;
        }

        while (v56);
      }

      v221 = (*(*(v203 + 40) + 48) - 0x61C8864680B583E9 + (v53 << 6) + (v53 >> 2)) ^ v53;
      v57 = (*(**(v52 + 8) + 32))(*(v52 + 8), 56, 8);
      v222 = 0u;
      memset(v223, 0, 20);
      *(&v223[1] + 4) = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v222, v196, 3);
      *v57 = &unk_1F5D14FD8;
      *(v57 + 8) = v222;
      v222 = 0uLL;
      *(v57 + 24) = *&v223[0];
      *&v223[0] = 0;
      *(v57 + 32) = *(&v223[0] + 1);
      *(v57 + 40) = *&v223[1];
      *(v223 + 8) = xmmword_1E3058120;
      *(v57 + 48) = 1;
      re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v222);
      v222.i64[0] = v57;
      v19 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v52 + 64, &v221, &v222) + 8;
    }

    v58 = *(v8 + 176);
    if (v58)
    {
      v59 = 0;
      v60 = *(v8 + 160);
      while (1)
      {
        v61 = *v60;
        v60 += 44;
        if (v61 < 0)
        {
          break;
        }

        if (v58 == ++v59)
        {
          LODWORD(v59) = *(v8 + 176);
          break;
        }
      }
    }

    else
    {
      LODWORD(v59) = 0;
    }

    if (v59 != v58)
    {
      while (2)
      {
        v115 = *(v8 + 160) + 176 * v59;
        v222 = 0uLL;
        *&v223[0] = 0;
        v117 = *(v115 + 8);
        v116 = (v115 + 8);
        v118 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v117 ^ (v117 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v117 ^ (v117 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v19, v116, v118 ^ (v118 >> 31), &v222);
        if (v222.i32[3] == 0x7FFFFFFF)
        {
          v121 = re::HashTable<unsigned long long,re::MeshRenderPassGroups::RenderPassGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v19, v222.u32[2], v222.u64[0]);
          v122 = *v116;
          *(v121 + 16) = 0u;
          v123 = v121 + 16;
          *(v121 + 8) = v122;
          *(v121 + 80) = 0u;
          *(v121 + 96) = 0u;
          *(v121 + 48) = 0u;
          *(v121 + 64) = 0u;
          *(v121 + 32) = 0u;
          *(v121 + 96) = 1;
          ++*(v19 + 40);
        }

        else
        {
          v123 = *(v19 + 16) + (v222.u32[3] << 7) + 16;
        }

        v124 = v116 + 1;
        *(v123 + 5) = *(v124 + 32);
        *(v123 + 6) = *(v124 + 33);
        if (*(v123 + 16))
        {
          if (v124[10])
          {
            v125 = *(v124 + 6);
            v126 = *(v124 + 7);
            *(v123 + 64) = v124[16];
            goto LABEL_125;
          }

          *(v123 + 16) = 0;
        }

        else if (v124[10])
        {
          *(v123 + 16) = 1;
          v125 = *(v124 + 6);
          v126 = *(v124 + 7);
          *(v123 + 64) = *(v124 + 8);
LABEL_125:
          *(v123 + 32) = v125;
          *(v123 + 48) = v126;
        }

        v222 = xmmword_1E3047670;
        v223[0] = xmmword_1E3047680;
        v223[1] = xmmword_1E30476A0;
        v224 = xmmword_1E30474D0;
        v219 = 5;
        LOBYTE(v221) = 0;
        v127 = re::RenderGraphMeshNodeBase::computeSortDistance(v124, &v222, &v219, v124 + 3, &v220, &v274, 0, &v221, 0.0, COERCE_DOUBLE(1065353216), 0.0078125, 0.0, v119, v120);
        v222.f32[0] = v127;
        LOBYTE(v221) = 0;
        v128 = re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::add(v275, &v222, &v221);
        v129 = (*v128)++;
        *v123 = v127;
        *(v123 + 4) = v129;
        *(v123 + 9) = *(v124 + 66);
        v130 = *(v8 + 176);
        if (v130 <= v59 + 1)
        {
          v130 = v59 + 1;
        }

        while (v130 - 1 != v59)
        {
          LODWORD(v59) = v59 + 1;
          if ((*(*(v8 + 160) + 176 * v59) & 0x80000000) != 0)
          {
            goto LABEL_133;
          }
        }

        LODWORD(v59) = v130;
LABEL_133:
        if (v59 == v58)
        {
          break;
        }

        continue;
      }
    }
  }

  *(&v212 + 1) = v19;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v275);
LABEL_135:
  if (*(v203 + 1352))
  {
    re::DrawCallRecorder::saveSortingDebugInformation((v203 + 1352), &v212);
  }

  memset(v275, 0, 36);
  *&v275[36] = 0x7FFFFFFFLL;
  re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v275, v197, 3);
  if (*(v201 + 16))
  {
    v131 = *(v201 + 24);
  }

  else
  {
    v131 = (v201 + 17);
  }

  v132 = strlen(v131);
  v133 = 0x9E3779B97F4A7C17;
  if (v132)
  {
    MurmurHash3_x64_128(v131, v132, 0, &v222);
    v133 = ((v222.i64[1] - 0x61C8864680B583E9 + (v222.i64[0] << 6) + (v222.i64[0] >> 2)) ^ v222.i64[0]) - 0x61C8864680B583E9;
  }

  if ((atomic_load_explicit(&qword_1EE1C0CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0CB0))
  {
    qword_1EE1C0CA8 = re::hashString("DynamicFunctionConstants", v184);
    __cxa_guard_release(&qword_1EE1C0CB0);
  }

  v134 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(*(v202 + 1168), (v133 + (qword_1EE1C0CA8 << 6) + (qword_1EE1C0CA8 >> 2)) ^ qword_1EE1C0CA8);
  if (v134)
  {
    v135 = v134 + 8;
  }

  else
  {
    v135 = 0;
  }

  if ((atomic_load_explicit(&qword_1EE1C0CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0CC0))
  {
    qword_1EE1C0CB8 = re::hashString("LightContext", v185);
    __cxa_guard_release(&qword_1EE1C0CC0);
  }

  v136 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::LightContexts>>(*(v202 + 1168), (v133 + (qword_1EE1C0CB8 << 6) + (qword_1EE1C0CB8 >> 2)) ^ qword_1EE1C0CB8);
  v137 = *(v198 + 8);
  v209 = v136;
  v138 = *(v199 + 8);
  if (v136)
  {
    v139 = v136 + 8;
  }

  else
  {
    v139 = 0;
  }

  v140 = v6[10];
  v141 = *(v6 + 66);
  v142 = *(v7 + 865);
  v222.i64[0] = v202;
  *(&v223[0] + 1) = &v212;
  v223[1] = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0;
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = v200 + 16;
  v235 = &v267;
  v237 = 0;
  v236 = 0;
  v238 = 0;
  memset(&v239[1], 0, 32);
  LODWORD(v239[0]) = 0;
  v240 = 0;
  v241 = 0;
  v242 = 0xFFFF0100FFFF0100;
  v243 = 0;
  v244 = v141;
  *&v223[0] = &unk_1F5D08FC8;
  v245 = 0;
  v246 = 0;
  v247 = 0;
  v248 = 0;
  v249 = 0;
  v250 = xmmword_1E304F3C0;
  v251 = 0;
  strcpy(v252, "f*");
  v252[3] = v142;
  v253 = 1065353216;
  v254 = 1065353216;
  v256 = 0;
  v255 = 0;
  v257 = 0;
  v258 = -1;
  v259 = 0;
  v260 = 0;
  v261 = 1;
  v262 = v138;
  v263 = v137;
  v264 = v140;
  v265 = v135;
  v210 = *(v7 + 840);
  if (v210)
  {
    if (v136)
    {
      v143 = *(v136 + 297);
    }

    else
    {
      v143 = 0;
    }

    if ((atomic_load_explicit(&qword_1EE1C0D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D48))
    {
      qword_1EE1C0D40 = re::hashString("RenderGraphDataPipeData", v186);
      __cxa_guard_release(&qword_1EE1C0D48);
    }

    v144 = qword_1EE1C0D40;
    if (*(v201 + 16))
    {
      v145 = *(v201 + 24);
    }

    else
    {
      v145 = (v201 + 17);
    }

    v146 = strlen(v145);
    v147 = 0x9E3779B97F4A7C17;
    if (v146)
    {
      MurmurHash3_x64_128(v145, v146, 0, &v274);
      v147 = ((v274.i64[1] - 0x61C8864680B583E9 + (v274.i64[0] << 6) + (v274.i64[0] >> 2)) ^ v274.i64[0]) - 0x61C8864680B583E9;
    }

    v148 = re::RenderGraphDataStore::tryGet<re::DepthMitigationRenderData>(*(v202 + 1168), ((v144 >> 2) + (v144 << 6) + v147) ^ v144);
    v149 = *(v210 + 40);
    if (v149)
    {
      v150 = v148;
      for (i = 0; i != v149; ++i)
      {
        v152 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v210, i);
        v153 = *(v152 + 16);
        if (v153)
        {
          v154 = *(v152 + 32);
          v155 = 736 * v153;
          do
          {
            v274.i32[0] = 0;
            {
              v156 = !re::mesh_traversal::traverseMeshScene(v223, v154, v274.u32[0]) || v150 == 0;
              if (!v156 && (*(v7 + 864) & 1) != 0)
              {
                *(v150 + 136) |= (v154[33].i8[4] & 2) != 0;
              }
            }

            v154 += 46;
            v155 -= 736;
          }

          while (v155);
        }
      }
    }
  }

  v211 = *(v7 + 848);
  if (v211)
  {
    if (v209)
    {
      v157 = *(v209 + 297);
    }

    else
    {
      v157 = 0;
    }

    v158 = 0x9E3779B97F4A7C17;
    if ((atomic_load_explicit(&qword_1EE1C0D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D58))
    {
      qword_1EE1C0D50 = re::hashString("RenderGraphDataPipeData", v187);
      __cxa_guard_release(&qword_1EE1C0D58);
    }

    v159 = qword_1EE1C0D50;
    if (*(v201 + 16))
    {
      v160 = *(v201 + 24);
    }

    else
    {
      v160 = (v201 + 17);
    }

    v161 = strlen(v160);
    if (v161)
    {
      MurmurHash3_x64_128(v160, v161, 0, &v274);
      v158 = ((v274.i64[1] - 0x61C8864680B583E9 + (v274.i64[0] << 6) + (v274.i64[0] >> 2)) ^ v274.i64[0]) - 0x61C8864680B583E9;
    }

    v162 = re::RenderGraphDataStore::tryGet<re::DepthMitigationRenderData>(*(v202 + 1168), ((v159 >> 2) + (v159 << 6) + v158) ^ v159);
    v163 = *(v211 + 40);
    if (v163)
    {
      v164 = v162;
      for (j = 0; j != v163; ++j)
      {
        v166 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v211, j);
        v167 = *(v166 + 16);
        if (v167)
        {
          v168 = *(v166 + 32);
          v169 = v167 << 10;
          do
          {
            v274.i32[0] = 0;
            {
              v170 = !re::mesh_traversal::traverseVFXScene(v223, v168, v222.i64[0], v274.u32[0]) || v164 == 0;
              if (!v170 && (*(v7 + 864) & 1) != 0)
              {
                *(v164 + 136) |= (*(v168 + 532) & 2) != 0;
              }
            }

            v168 += 1024;
            v169 -= 1024;
          }

          while (v169);
        }
      }
    }
  }

  *&v223[0] = &unk_1F5D034D8;
  for (k = 256; k != 176; k -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(&v222 + k);
  }

  re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v275);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v213);
  if (v270)
  {
    v172 = &v272[9 * v270];
    v173 = v272;
    do
    {
      *v173 = 0;
      ++*(v173 + 2);
      v173 += 9;
    }

    while (v173 != v172);
  }

  if (v267)
  {
    v174 = &v269[7 * v267];
    v175 = v269;
    do
    {
      *v175 = 0;
      ++*(v175 + 2);
      v175 += 7;
    }

    while (v175 != v174);
  }
}

void re::RenderGraphCameraSetupNode::execute(const char **this, float32x4_t *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v76, 5034, 0, 0, 0, 0);
  v4 = re::RenderGraphDataStore::get<re::CameraData>(a2[73].i64[0], *(a2[2].i64[1] + 48));
  v5 = &qword_1EE1C0CC8;
  if ((atomic_load_explicit(&qword_1EE1C0CD0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v6 = re::RenderGraphDataStore::get<re::RendererGlobals>(a2[73].i64[0], *v5);
    v7 = re::RenderGraphDataStore::get<re::SceneScope>(a2[73].i64[0], *(a2[2].i64[1] + 48));
    if ((atomic_load_explicit(v5 + 24, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0CE0))
    {
      qword_1EE1C0CD8 = re::hashString("DynamicFunctionConstants", v63);
      __cxa_guard_release(&qword_1EE1C0CE0);
    }

    v8 = qword_1EE1C0CD8;
    v9 = strlen(this[4]);
    if (v9)
    {
      MurmurHash3_x64_128(this[4], v9, 0, &v79);
      v10 = ((*(&v79 + 1) - 0x61C8864680B583E9 + (v79 << 6) + (v79 >> 2)) ^ v79) - 0x61C8864680B583E9;
    }

    else
    {
      v10 = 0x9E3779B97F4A7C17;
    }

    v11 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a2[73].i64[0], ((v8 >> 2) + (v8 << 6) + v10) ^ v8);
    if (v11)
    {
      v12 = (v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(*(v6 + 8) + 32);
    v14 = this[37];
    if (v14)
    {
      v15 = this + 34;
    }

    else
    {
      v15 = v12;
    }

    if (v14)
    {
      if (v11)
      {
        v15 = this + 34;
        *&v79 = v11 + 8;
        v16 = *(v11 + 24);
        if (v16 >= 0x10)
        {
          v17 = 0;
          v18 = *(v11 + 8);
          v19 = v16 >> 4;
          while (1)
          {
            v20 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v18), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v79 + 1) = v20 ^ 0xFFFFLL;
            if (v20 != 0xFFFFLL)
            {
              break;
            }

            v17 -= 16;
            ++v18;
            if (!--v19)
            {
              goto LABEL_23;
            }
          }

          v21 = __clz(__rbit64(v20 ^ 0xFFFFLL));
          v22 = v21 - v17;
          *&v80 = v21 - v17;
          if (v21 + 1 != v17)
          {
            do
            {
              v23 = *(v79 + 8) + 16 * v22;
              if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 34, v23) == -1)
              {
                re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(this + 34, v23, (v23 + 8));
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v79);
              v22 = v80;
            }

            while (v80 != -1);
          }
        }
      }
    }

LABEL_23:
    if (re::RenderGraphDataStore::tryGet<re::CameraMatrices>(a2[73].i64[0], *(a2[2].i64[1] + 48)))
    {
      break;
    }

    v24 = a2[73].i64[0];
    v25 = *(a2[2].i64[1] + 48);
    v78 = 0;
    {
      re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0, v64, v65, v66, v67, v68);
    }

    v77 = re::introspect<re::CameraMatrices>(BOOL)::info;
    v26 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
    v75 = v7;
    if (v26)
    {
      MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v26, 0, &v79);
      v27 = (*(&v79 + 1) - 0x61C8864680B583E9 + (v79 << 6) + (v79 >> 2)) ^ v79;
    }

    else
    {
      v27 = 0;
    }

    v78 = v27;
    re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v24 + 176, &v78, &v77);
    *&v79 = (v25 - 0x61C8864680B583E9 + (v78 << 6) + (v78 >> 2)) ^ v78;
    v28 = (*(**(v24 + 8) + 32))(*(v24 + 8), 176, 16);
    v77 = re::CameraMatrices::CameraMatrices(v28, v13, *(v4 + 890));
    v29 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v24 + 64, &v79, &v77);
    if (!*(v4 + 890))
    {
LABEL_37:
      v42.i64[0] = 0x7F0000007FLL;
      v42.i64[1] = 0x7F0000007FLL;
      a2[4] = vnegq_f32(v42);
      a2[5] = v42;
      v7 = v75;
      break;
    }

    v5 = 0;
    v31 = *v29;
    v32 = v4 + 144;
    v33 = (v4 + 64);
    while (1)
    {
      v34 = *(v4 + 128);
      if (v34 <= v5)
      {
        break;
      }

      if (*(v32 + 80) == 1)
      {
        v35 = *(v32 + 96);
        v36 = *(v32 + 112);
        v37 = *(v32 + 144);
        v81 = *(v32 + 128);
        v82 = v37;
        v79 = v35;
        v80 = v36;
      }

      else
      {
        re::Projection::cullingProjectionMatrix(&v79, v32);
      }

      re::DynamicArray<re::Matrix4x4<float>>::add((v31 + 48), &v79);
      v39 = *(v4 + 128);
      if (v39 <= v5)
      {
        goto LABEL_47;
      }

      re::Projection::cullingProjectionMatrix(&v79, v32);
      re::DynamicArray<re::Matrix4x4<float>>::add((v31 + 88), &v79);
      v41 = *(v4 + 48);
      if (v41 <= v5)
      {
        goto LABEL_48;
      }

      re::RenderCamera::computeInverseTransform(&v79, v33);
      re::DynamicArray<re::Matrix4x4<float>>::add((v31 + 8), &v79);
      v5 = (v5 + 1);
      v33 += 2;
      v32 += 240;
      if (v5 >= *(v4 + 890))
      {
        goto LABEL_37;
      }
    }

    re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v34);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v69, v72);
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v39);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v70, v73);
    __break(1u);
LABEL_48:
    re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v41);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v71, v74);
    __break(1u);
LABEL_49:
    v60 = __cxa_guard_acquire(&qword_1EE1C0CD0);
    if (v60)
    {
      *v5 = re::getCombinedScopeHash(v60, v61, v62);
      __cxa_guard_release(v5 + 1);
    }
  }

  if (!re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(a2[73].i64[0], *(a2[2].i64[1] + 48)))
  {
    v45 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(a2[73].i64[0], *(a2[2].i64[1] + 48));
    v46 = a2[73].i64[0];
    v47 = "N2re16MeshPassInfoDataE";
    if (("N2re16MeshPassInfoDataE" & 0x8000000000000000) != 0)
    {
      v48 = ("N2re16MeshPassInfoDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v49 = 5381;
      do
      {
        v47 = v49;
        v50 = *v48++;
        v49 = (33 * v49) ^ v50;
      }

      while (v50);
    }

    *&v79 = (*(a2[2].i64[1] + 48) - 0x61C8864680B583E9 + (v47 << 6) + (v47 >> 2)) ^ v47;
    v51 = (*(**(v46 + 8) + 32))(*(v46 + 8), 16, 8);
    *v51 = &unk_1F5D10F80;
    v51[1] = 0;
    v78 = v51;
    v52 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v46 + 64, &v79, &v78);
    v53 = (*(*v13 + 32))(v13, 48, 8);
    *v53 = 0u;
    *(v53 + 16) = 0u;
    *(v53 + 32) = 0;
    *(v53 + 36) = 0x7FFFFFFFLL;
    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v53, v13, 3);
    *(v52 + 8) = v53;
    v54 = re::RenderGraphDataStore::get<re::CameraMatrices>(a2[73].i64[0], *(a2[2].i64[1] + 48));
    *&v79 = a2;
    *(&v79 + 1) = v4;
    *&v80 = v54;
    *(&v80 + 1) = v7;
    *&v81 = v6;
    *(&v81 + 1) = v52;
    v82 = v45;
    v83 = *(this + 132);
    v84 = 0;
    v85 = *(v4 + 876);
    if (v85 == 1)
    {
      v86 = *(v4 + 880);
    }

    v87 = v15;
    re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(&v79, v55, v56, v57, v58, v59);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v76, v43, v44);
}

void re::RenderGraphMultiViewCameraSetupNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v151 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v125, 5034, 0, 0, 0, 0);
  v3 = re::RenderGraphDataStore::get<re::CameraArrayData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v121 = a2;
  v4 = *(a2 + 146);
  v5 = "N2re27MeshLodSelectInputArrayDataE";
  if (("N2re27MeshLodSelectInputArrayDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re27MeshLodSelectInputArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v9 = 0x9E3779B97F4A7C17;
  v10 = 0x7FFFFFFFLL;
  if (*(v4 + 64))
  {
    v11 = (*(*(a2 + 5) + 48) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
    v12 = *(*(v4 + 72) + 4 * (v11 % *(v4 + 88)));
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(v4 + 80);
      v10 = 0x7FFFFFFFLL;
      while (*(v13 + 24 * v12 + 8) != v11)
      {
        v12 = *(v13 + 24 * v12) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v10 = v12;
    }
  }

LABEL_11:
  v122 = *(*(v4 + 80) + 24 * v10 + 16);
  v14 = &qword_1EE1C0CE8;
  if ((atomic_load_explicit(&qword_1EE1C0CF0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v119 = re::RenderGraphDataStore::get<re::RendererGlobals>(*(v121 + 146), *v14);
    v118 = re::RenderGraphDataStore::get<re::SceneScope>(*(v121 + 146), *(*(v121 + 5) + 48));
    if ((atomic_load_explicit(v14 + 24, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D00))
    {
      qword_1EE1C0CF8 = re::hashString("DynamicFunctionConstants", v105);
      __cxa_guard_release(&qword_1EE1C0D00);
    }

    v15 = qword_1EE1C0CF8;
    v16 = strlen(this[4]);
    if (v16)
    {
      MurmurHash3_x64_128(this[4], v16, 0, &v127);
      v17 = ((*(&v127 + 1) + v9 + (v127 << 6) + (v127 >> 2)) ^ v127) + v9;
    }

    else
    {
      v17 = v9;
    }

    v18 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(*(v121 + 146), ((v15 >> 2) + (v15 << 6) + v17) ^ v15);
    v19 = v18 + 8;
    if (!v18)
    {
      v19 = 0;
    }

    v117 = v19;
    v124 = *(*(v119 + 8) + 32);
    v20 = *(v121 + 146);
    v21 = "N2re19CameraMatricesArrayE";
    v22 = "N2re19CameraMatricesArrayE";
    if (("N2re19CameraMatricesArrayE" & 0x8000000000000000) != 0)
    {
      v23 = ("N2re19CameraMatricesArrayE" & 0x7FFFFFFFFFFFFFFFLL);
      v24 = 5381;
      do
      {
        v22 = v24;
        v25 = *v23++;
        v24 = (33 * v24) ^ v25;
      }

      while (v25);
    }

    v26 = *(*(v121 + 5) + 48) + v9;
    v27 = v20 + 64;
    v123 = v3;
    if (!*(v20 + 64))
    {
      goto LABEL_28;
    }

    v28 = (v26 + (v22 << 6) + (v22 >> 2)) ^ v22;
    v29 = *(*(v20 + 72) + 4 * (v28 % *(v20 + 88)));
    if (v29 == 0x7FFFFFFF)
    {
      goto LABEL_28;
    }

    v30 = *(v20 + 80);
    while (*(v30 + 24 * v29 + 8) != v28)
    {
      v29 = *(v30 + 24 * v29) & 0x7FFFFFFF;
      if (v29 == 0x7FFFFFFF)
      {
        goto LABEL_28;
      }
    }

    if (!*(v30 + 24 * v29 + 16))
    {
LABEL_28:
      v31 = *(v3 + 16);
      if (("N2re19CameraMatricesArrayE" & 0x8000000000000000) != 0)
      {
        v32 = ("N2re19CameraMatricesArrayE" & 0x7FFFFFFFFFFFFFFFLL);
        v33 = 5381;
        do
        {
          v21 = v33;
          v34 = *v32++;
          v33 = (33 * v33) ^ v34;
        }

        while (v34);
      }

      *&v127 = (v26 + (v21 << 6) + (v21 >> 2)) ^ v21;
      v35 = (*(**(v20 + 8) + 32))(*(v20 + 8), 48, 8);
      *v35 = &unk_1F5D15058;
      *(v35 + 40) = 0;
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      *(v35 + 8) = v124;
      re::DynamicArray<re::CameraMatrices>::setCapacity((v35 + 8), v31);
      ++*(v35 + 32);
      *&v148[0] = v35;
      v36 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v27, &v127, v148);
      v3 = v123;
      if (*(v123 + 16))
      {
        v37 = 0;
        v38 = *v36;
        v39 = 64;
        v40 = 144;
        while (1)
        {
          v41 = *(v3 + 24);
          v42 = v41 + 960 * v37;
          v43 = re::CameraMatrices::CameraMatrices(&v127, v124, *(v42 + 890));
          if (*(v42 + 890))
          {
            break;
          }

LABEL_42:
          v54 = *(v38 + 16);
          v55 = *(v38 + 24);
          v3 = v123;
          if (v55 >= v54)
          {
            v56 = v55 + 1;
            if (v54 < v55 + 1)
            {
              if (*(v38 + 8))
              {
                v57 = 2 * v54;
                v58 = v54 == 0;
                v59 = 8;
                if (!v58)
                {
                  v59 = v57;
                }

                if (v59 <= v56)
                {
                  v60 = v56;
                }

                else
                {
                  v60 = v59;
                }

                re::DynamicArray<re::CameraMatrices>::setCapacity((v38 + 8), v60);
              }

              else
              {
                re::DynamicArray<re::CameraMatrices>::setCapacity((v38 + 8), v56);
                ++*(v38 + 32);
              }
            }

            v55 = *(v38 + 24);
          }

          v61 = *(v38 + 40) + 176 * v55;
          *(v61 + 40) = 0;
          *v61 = &unk_1F5D03790;
          *(v61 + 8) = 0;
          *(v61 + 16) = 0;
          *(v61 + 24) = 0;
          *(v61 + 32) = 0;
          *(v61 + 8) = *(&v127 + 1);
          *(&v127 + 1) = 0;
          *(v61 + 16) = v128;
          *&v128 = 0;
          v62 = *(v61 + 24);
          *(v61 + 24) = *(&v128 + 1);
          *(&v128 + 1) = v62;
          v63 = *(v61 + 40);
          *(v61 + 40) = *(&v129 + 1);
          *(&v129 + 1) = v63;
          LODWORD(v129) = v129 + 1;
          ++*(v61 + 32);
          *(v61 + 80) = 0;
          *(v61 + 56) = 0;
          *(v61 + 64) = 0;
          *(v61 + 48) = 0;
          *(v61 + 72) = 0;
          *(v61 + 48) = v130;
          *&v130 = 0;
          *(v61 + 56) = *(&v130 + 1);
          *(&v130 + 1) = 0;
          v64 = *(v61 + 64);
          *(v61 + 64) = v131;
          *&v131 = v64;
          v65 = *(v61 + 80);
          *(v61 + 80) = v132;
          v132 = v65;
          ++DWORD2(v131);
          ++*(v61 + 72);
          *(v61 + 120) = 0;
          *(v61 + 96) = 0;
          *(v61 + 104) = 0;
          *(v61 + 88) = 0;
          *(v61 + 112) = 0;
          *(v61 + 88) = v133;
          v133 = 0;
          *(v61 + 96) = v134;
          v134 = 0;
          v66 = *(v61 + 104);
          *(v61 + 104) = v135;
          v135 = v66;
          v67 = *(v61 + 120);
          *(v61 + 120) = v137;
          v137 = v67;
          ++v136;
          ++*(v61 + 112);
          LODWORD(v67) = v138;
          *(v61 + 128) = v138;
          if (v67 == 1)
          {
            *(v61 + 144) = v139;
          }

          *(v61 + 160) = v140;
          ++*(v38 + 24);
          ++*(v38 + 32);
          if (v133)
          {
            if (v137)
            {
              (*(*v133 + 40))();
            }

            v137 = 0;
            v134 = 0;
            v135 = 0;
            v133 = 0;
            ++v136;
          }

          if (v130)
          {
            if (v132)
            {
              (*(*v130 + 40))();
            }

            v132 = 0;
            *&v131 = 0;
            v130 = 0uLL;
            ++DWORD2(v131);
          }

          if (*(&v127 + 1) && *(&v129 + 1))
          {
            (*(**(&v127 + 1) + 40))();
          }

          ++v37;
          v39 += 960;
          v40 += 960;
          if (*(v123 + 16) <= v37)
          {
            goto LABEL_67;
          }
        }

        v9 = 0;
        v45 = (v41 + v39);
        v3 = v41 + v40;
        while (1)
        {
          v46 = *(v42 + 128);
          if (v46 <= v9)
          {
            break;
          }

          if (*(v3 + 80) == 1)
          {
            v47 = *(v3 + 96);
            v48 = *(v3 + 112);
            v49 = *(v3 + 144);
            v148[2] = *(v3 + 128);
            v149 = v49;
            v148[0] = v47;
            v148[1] = v48;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v148, v3);
          }

          re::DynamicArray<re::Matrix4x4<float>>::add(&v130, v148);
          v51 = *(v42 + 128);
          if (v51 <= v9)
          {
            goto LABEL_88;
          }

          re::Projection::cullingProjectionMatrix(v148, v3);
          re::DynamicArray<re::Matrix4x4<float>>::add(&v133, v148);
          v53 = *(v42 + 48);
          if (v53 <= v9)
          {
            goto LABEL_89;
          }

          re::RenderCamera::computeInverseTransform(v148, v45);
          re::DynamicArray<re::Matrix4x4<float>>::add((&v127 + 8), v148);
          ++v9;
          v45 += 2;
          v3 += 240;
          if (v9 >= *(v42 + 890))
          {
            goto LABEL_42;
          }
        }

        re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v9, v46);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v106, v110);
        __break(1u);
LABEL_88:
        re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v9, v51);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v107, v111);
        __break(1u);
LABEL_89:
        re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v9, v53);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v108, v112);
        __break(1u);
        goto LABEL_90;
      }
    }

LABEL_67:
    if (re::RenderGraphDataStore::tryGet<re::MeshPassInfoArrayData>(*(v121 + 146), *(*(v121 + 5) + 48)))
    {
      goto LABEL_86;
    }

    v9 = *(v3 + 16);
    v14 = *(v121 + 146);
    v70 = "N2re21MeshPassInfoArrayDataE";
    if (("N2re21MeshPassInfoArrayDataE" & 0x8000000000000000) != 0)
    {
      v71 = ("N2re21MeshPassInfoArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v72 = 5381;
      do
      {
        v70 = v72;
        v73 = *v71++;
        v72 = (33 * v72) ^ v73;
      }

      while (v73);
    }

    *&v127 = (*(*(v121 + 5) + 48) - 0x61C8864680B583E9 + (v70 << 6) + (v70 >> 2)) ^ v70;
    v75 = (*(*v14[1] + 32))(v14[1], 32, 8);
    *v75 = &unk_1F5D15098;
    v75[1] = v124;
    v75[2] = v9;
    v75[3] = 0;
    if (!v9)
    {
      goto LABEL_78;
    }

    if (v9 >> 60)
    {
      goto LABEL_102;
    }

    v76 = (*(*v124 + 32))(v124, 16 * v9, 8);
    v75[3] = v76;
    if (v76)
    {
      break;
    }

LABEL_103:
    v114 = "init";
    v115 = 327;
    re::internal::assertLog(4, v77, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data");
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_104:
    v102 = __cxa_guard_acquire(&qword_1EE1C0CF0);
    if (v102)
    {
      *v14 = re::getCombinedScopeHash(v102, v103, v104);
      __cxa_guard_release(v14 + 1);
    }
  }

  v78 = v9 - 1;
  if (v9 != 1)
  {
    v79 = v76;
    do
    {
      *v76 = &unk_1F5D10F80;
      v76[1] = 0;
      v76 += 2;
      v79 += 2;
      --v78;
    }

    while (v78);
  }

  *v76 = &unk_1F5D10F80;
  v76[1] = 0;
LABEL_78:
  *&v148[0] = v75;
  v80 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((v14 + 8), &v127, v148);
  if (*(v3 + 16))
  {
    v81 = 0;
    v82 = 0;
    v38 = 0;
    v83 = *v80;
    v84 = 880;
    v116 = *v80;
    while (1)
    {
      v9 = *(v122 + 16);
      if (v9 <= v38)
      {
        break;
      }

      v9 = *(v83 + 16);
      if (v9 <= v38)
      {
        goto LABEL_94;
      }

      v9 = *(v3 + 24);
      v85 = *(v122 + 24);
      v86 = *(v83 + 24) + v82;
      v3 = v124;
      v87 = (*(*v124 + 32))(v124, 48, 8);
      *v87 = 0u;
      *(v87 + 16) = 0u;
      *(v87 + 32) = 0;
      *(v87 + 36) = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v87, v124, 3);
      *(v86 + 8) = v87;
      v88 = re::RenderGraphDataStore::get<re::CameraMatricesArray>(*(v121 + 146), *(*(v121 + 5) + 48));
      *&v127 = v121;
      *(&v127 + 1) = v9 + v84 - 880;
      if (!*(v88 + 24))
      {
        goto LABEL_98;
      }

      *&v128 = *(v88 + 40);
      *(&v128 + 1) = v118;
      *&v129 = v119;
      *(&v129 + 1) = v86;
      v130 = (v85 + v81);
      LOWORD(v131) = *(this + 132);
      BYTE2(v131) = 0;
      BYTE4(v131) = *(v9 + v84 - 4);
      if (BYTE4(v131) == 1)
      {
        DWORD2(v131) = *(v9 + v84);
      }

      v132 = v117;
      re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(&v127, v89, v90, v91, v92, v93);
      ++v38;
      v3 = v123;
      v82 += 16;
      v81 += 320;
      v84 += 960;
      v83 = v116;
      if (*(v123 + 16) <= v38)
      {
        goto LABEL_86;
      }
    }

LABEL_90:
    *v141 = 0;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v148[0]) = 136315906;
    *(v148 + 4) = "operator[]";
    WORD6(v148[0]) = 1024;
    if (v95)
    {
      v96 = 3;
    }

    else
    {
      v96 = 2;
    }

    *(v148 + 14) = 476;
    WORD1(v148[1]) = 2048;
    *(&v148[1] + 4) = v38;
    WORD6(v148[1]) = 2048;
    *(&v148[1] + 14) = v9;
    _os_log_send_and_compose_impl(v96, v141, &v127, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v148, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_94:
    *v141 = 0;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v97 = MEMORY[0x1E69E9C10];
    v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v148[0]) = 136315906;
    *(v148 + 4) = "operator[]";
    WORD6(v148[0]) = 1024;
    if (v98)
    {
      v99 = 3;
    }

    else
    {
      v99 = 2;
    }

    *(v148 + 14) = 468;
    WORD1(v148[1]) = 2048;
    *(&v148[1] + 4) = v38;
    WORD6(v148[1]) = 2048;
    *(&v148[1] + 14) = v9;
    _os_log_send_and_compose_impl(v99, v141, &v127, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v148, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v126 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    v14 = MEMORY[0x1E69E9C10];
    v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v141 = 136315906;
    *&v141[4] = "operator[]";
    v142 = 1024;
    if (v100)
    {
      v101 = 3;
    }

    else
    {
      v101 = 2;
    }

    v143 = 797;
    v144 = 2048;
    v145 = 0;
    v146 = 2048;
    v147 = 0;
    _os_log_send_and_compose_impl(v101, &v126, v148, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v141, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_102:
    re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v9);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v109, v113);
    __break(1u);
    goto LABEL_103;
  }

LABEL_86:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v125, v68, v69);
}

void *re::allocInfo_RenderGraphCameraSetupNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0D78, "RenderGraphCameraSetupNode");
    __cxa_guard_release(&qword_1EE1C0D08);
  }

  return &unk_1EE1C0D78;
}

void re::initInfo_RenderGraphCameraSetupNode(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0xC7B124D2A1079044;
  v17[1] = "RenderGraphCameraSetupNode";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C0D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D10))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C0D60 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "frustumCulling";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000002;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C0D68 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_BOOL(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "isForShadowMap";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x10900000004;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C0D70 = v15;
    __cxa_guard_release(&qword_1EE1C0D10);
  }

  *(this + 2) = 0x16000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C0D60;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphCameraSetupNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphCameraSetupNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphCameraSetupNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphCameraSetupNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

double re::internal::defaultConstruct<re::RenderGraphCameraSetupNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D14E70;
  *(v3 + 132) = 0;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 42) = 0;
  result = NAN;
  *(v3 + 43) = -1;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphCameraSetupNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D14E70;
  *(v1 + 132) = 0;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 42) = 0;
  result = NAN;
  *(v1 + 43) = -1;
  return result;
}

void *re::allocInfo_RenderGraphMultiViewCameraSetupNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0E08, "RenderGraphMultiViewCameraSetupNode");
    __cxa_guard_release(&qword_1EE1C0D20);
  }

  return &unk_1EE1C0E08;
}

void re::initInfo_RenderGraphMultiViewCameraSetupNode(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xAEB515AB82B4F4E8;
  v11[1] = "RenderGraphMultiViewCameraSetupNode";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1C0D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D30))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C0D18;
    if (!qword_1EE1C0D18)
    {
      v7 = re::allocInfo_RenderGraphCameraSetupNode(v5);
      qword_1EE1C0D18 = v7;
      re::initInfo_RenderGraphCameraSetupNode(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "RenderGraphCameraSetupNode";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C0D28 = v9;
    __cxa_guard_release(&qword_1EE1C0D30);
  }

  *(this + 2) = 0x16000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C0D28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMultiViewCameraSetupNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMultiViewCameraSetupNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMultiViewCameraSetupNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMultiViewCameraSetupNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

double re::internal::defaultConstruct<re::RenderGraphMultiViewCameraSetupNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *(v3 + 132) = 0;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 42) = 0;
  result = NAN;
  *(v3 + 43) = -1;
  *v3 = &unk_1F5D14F00;
  return result;
}

void re::internal::defaultDestruct<re::RenderGraphMultiViewCameraSetupNode>(uint64_t a1, uint64_t a2, id *a3)
{
  *a3 = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

double re::internal::defaultConstructV2<re::RenderGraphMultiViewCameraSetupNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *(v1 + 132) = 0;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 42) = 0;
  result = NAN;
  *(v1 + 43) = -1;
  *v1 = &unk_1F5D14F00;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphMultiViewCameraSetupNode>(id *a1)
{
  *a1 = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void re::RenderGraphCameraSetupNode::~RenderGraphCameraSetupNode(id *this)
{
  *this = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphMultiViewCameraSetupNode::~RenderGraphMultiViewCameraSetupNode(id *this)
{
  *this = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D14FD8;
  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 1);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D14FD8;
  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24), *(v17 + 8));
                *(v18 + 4) = *(v17 - 4);
                *(v18 + 8) = *v17;
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      v7 = *(a1 + 16);
      *&v15[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v8 = *&v15[32];
      *(a1 + 24) = v9;
      ++*&v15[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 2) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11[2] % *(a1 + 24), v11[2]);
            *(v12 + 8) = *(v11 - 1);
            v13 = *v11;
            *(v12 + 24) = *(v11 + 2);
            *(v12 + 16) = v13;
          }

          v11 += 5;
          --v10;
        }

        while (v10);
      }

      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v15);
    }
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 3;
    }
  }
}

uint64_t re::RenderGraphDataStore::tryGet<re::MeshSortGroupCameraData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re23MeshSortGroupCameraDataE";
  if (("N2re23MeshSortGroupCameraDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re23MeshSortGroupCameraDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

void re::MeshSortGroupCameraData::~MeshSortGroupCameraData(re::MeshSortGroupCameraData *this)
{
  *this = &unk_1F5D15018;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 1);
}

{
  *this = &unk_1F5D15018;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 24) = *(v8 + 24);
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MeshRenderPassGroups::RenderPassGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::MeshRenderPassGroups::RenderPassGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v17 + 112) % *(a1 + 24), *(v13 + v17 + 112));
                v13 = *&v31[16];
                v20 = *&v31[16] + v17;
                *(v19 + 8) = *(*&v31[16] + v17 + 8);
                v21 = *(v20 + 23);
                *(v19 + 16) = *(v20 + 16);
                *(v19 + 23) = v21;
                v22 = *(v20 + 32);
                *(v19 + 32) = v22;
                if (v22 == 1)
                {
                  v23 = *(v20 + 48);
                  v24 = *(v20 + 80);
                  *(v19 + 64) = *(v20 + 64);
                  *(v19 + 80) = v24;
                  *(v19 + 48) = v23;
                }

                *(v19 + 96) = *(v20 + 96);
                v16 = *&v31[32];
              }

              ++v18;
              v17 += 128;
            }

            while (v18 < v16);
          }

          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + (v5 << 7));
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + (v5 << 7));
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + (v5 << 7);
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v28 + 112) = a3;
  *(v29 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v25 + (v5 << 7);
}

BOOL re::anonymous namespace::shouldDrawMeshForCamera(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5)
{
  v5 = *(a1 + 8);
  if ((*(a2 + 524) & *(v5 + 904)) == 0 || *(a1 + 65) == 1 && *(v5 + 873) == 1 && *(a2 + 689) != 1)
  {
    return 0;
  }

  if (a5)
  {
    v10 = *(a2 + 520);
  }

  else
  {
    if (!a3)
    {
      return (*(a1 + 68) != 1 || *(a1 + 72) == *(a2 + 520)) && (*(a1 + 65) != 1 || (*(v5 + 873) & 1) != 0 || *(a2 + 715) == 1);
    }

    v11 = *(a2 + 512);
    v19 = *(a2 + 520);
    v18 = v11;
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v19) ^ ((0xBF58476D1CE4E5B9 * v19) >> 27));
    re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(a3 + 56, &v19, v12 ^ (v12 >> 31), v20);
    if (v21 == 0x7FFFFFFF)
    {
      v10 = 0;
    }

    else
    {
      v13 = *(a3 + 72) + 72 * v21;
      v14 = v13 + 8;
      v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v13 + 16, &v18, v15 ^ (v15 >> 31), v20);
      if (v21 == 0x7FFFFFFF)
      {
        v16 = 0;
      }

      else
      {
        v16 = (*(v14 + 24) + 32 * v21 + 16);
      }

      if (!v16)
      {
        v16 = v14;
      }

      v10 = *v16;
    }
  }

  *a4 = v10;
  return (*(a1 + 68) != 1 || *(a1 + 72) == *(a2 + 520)) && (*(a1 + 65) != 1 || (*(v5 + 873) & 1) != 0 || *(a2 + 715) == 1);
}

uint64_t re::RenderGraphDataStore::get<re::CameraArrayData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re15CameraArrayDataE";
  if (("N2re15CameraArrayDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re15CameraArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

void re::CameraMatricesArray::~CameraMatricesArray(re::CameraMatricesArray *this)
{
  re::DynamicArray<re::CameraMatrices>::deinit(this + 8);
}

{
  re::DynamicArray<re::CameraMatrices>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::CameraMatrices>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::CameraMatrices>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
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
        v10 = 176 * v9;
        v11 = v7;
        do
        {
          re::CameraMatrices::CameraMatrices(v11, v8);
          re::DynamicArray<unsigned long>::deinit(v8 + 88);
          re::DynamicArray<unsigned long>::deinit(v8 + 48);
          re::DynamicArray<unsigned long>::deinit(v8 + 8);
          v8 += 176;
          v11 += 176;
          v10 -= 176;
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

uint64_t re::CameraMatrices::CameraMatrices(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  *result = &unk_1F5D03790;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v2 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  ++*(a2 + 32);
  ++*(result + 32);
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v5 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v6 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v6;
  v7 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v7;
  ++*(a2 + 72);
  ++*(result + 72);
  *(result + 120) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 88) = 0;
  *(result + 112) = 0;
  v8 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v8;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v9 = *(result + 104);
  *(result + 104) = *(a2 + 104);
  *(a2 + 104) = v9;
  v10 = *(result + 120);
  *(result + 120) = *(a2 + 120);
  *(a2 + 120) = v10;
  ++*(a2 + 112);
  ++*(result + 112);
  LODWORD(v10) = *(a2 + 128);
  *(result + 128) = v10;
  if (v10 == 1)
  {
    *(result + 144) = *(a2 + 144);
  }

  *(result + 160) = *(a2 + 160);
  return result;
}

uint64_t re::DynamicArray<re::CameraMatrices>::deinit(uint64_t a1)
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
        v5 = 176 * v4;
        v6 = v3 + 88;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 40);
          re::DynamicArray<unsigned long>::deinit(v6 - 80);
          v6 += 176;
          v5 -= 176;
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

uint64_t re::RenderGraphDataStore::tryGet<re::MeshPassInfoArrayData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re21MeshPassInfoArrayDataE";
  if (("N2re21MeshPassInfoArrayDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re21MeshPassInfoArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

void re::MeshPassInfoArrayData::~MeshPassInfoArrayData(re::MeshPassInfoArrayData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::get<re::CameraMatricesArray>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re19CameraMatricesArrayE";
  if (("N2re19CameraMatricesArrayE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re19CameraMatricesArrayE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

void re::RenderGraphEmitterRegistry::~RenderGraphEmitterRegistry(re::RenderGraphEmitterRegistry *this)
{
  v1 = this;
  {
    if (this)
    {
      re::introspect<re::RenderGraphEmitterBase>(BOOL)::info = re::introspect_RenderGraphEmitterBase(0);
    }
  }

  v2 = *(re::introspect<re::RenderGraphEmitterBase>(BOOL)::info + 8);
  v3 = *v2;
  if (**v2 != 2)
  {
    v4 = (v2 + 1);
    do
    {
      v5 = *v4++;
      v3 = v5;
    }

    while (*v5 != 2);
  }

  *(v3 + 1) = 0;
  v6 = *(v1 + 2);
  if (v6)
  {
    v7 = *(v1 + 4);
    v8 = 40 * v6;
    do
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = re::globalAllocators(this);
        this = (*(*v10[2] + 40))(v10[2], v9);
      }

      *v7 = 0;
      v7 += 5;
      v8 -= 40;
    }

    while (v8);
  }

  re::DynamicArray<re::IntrospectionPolymorphicType>::deinit(v1);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 5);
  re::DynamicArray<re::IntrospectionPolymorphicType>::deinit(v1);
}

uint64_t re::RenderGraphEmitterRegistry::init(re::RenderGraphEmitterRegistry *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 112, 8);
  result = re::RenderGraphEmitterRegistry::RenderGraphEmitterRegistry(v2);
  re::RenderGraphEmitterRegistry::m_instance = result;
  return result;
}

re *re::internal::destroyPersistent<re::RenderGraphEmitterRegistry>(re *result, uint64_t a2, re::RenderGraphEmitterRegistry *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::RenderGraphEmitterRegistry::~RenderGraphEmitterRegistry(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::RenderGraphEmitterRegistry::registerEmitter(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = re::introspectionSharedMutex(a1);
  v24 = 0;
  lock = (a1 + 104);
  v22 = 0;
  std::lock[abi:nn200100]<std::unique_lock<std::shared_mutex>,std::unique_lock<re::UnfairLock>>(&v23, &lock);
  v4 = (**a2)(a2, 1);
  v5 = (*(*a2 + 8))(a2);
  v6 = (*(*a2 + 16))(a2);
  v7 = strlen(v6);
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], v7 + 1, 0);
  memcpy(v9, v6, v7 + 1);
  v10 = strlen(v9);
  if (v10)
  {
    MurmurHash3_x64_128(v9, v10, 0, &v25);
    v11 = &v25.var1[64 * *&v25.var0 - 0x61C8864680B583E9 + (*&v25.var0 >> 2)] ^ *&v25.var0;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  *&v25.var0 = v9;
  v25.var1 = v4;
  v26 = 0;
  v27 = v11;
  v28 = v5;
  re::DynamicArray<re::IntrospectionPolymorphicType>::add(a1, &v25);
  re::SerializedReference<re::IntrospectionBase const*>::reset(&v25.var1);
  *(a1 + 88) = *(a1 + 16);
  *(a1 + 96) = *(a1 + 32);
  v19 = *(v4 + 32);
  if (v6)
  {
    v12 = *v6;
    if (*v6)
    {
      v13 = v6[1];
      if (v13)
      {
        v14 = (v6 + 2);
        do
        {
          v12 = 31 * v12 + v13;
          v15 = *v14++;
          v13 = v15;
        }

        while (v15);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  *&v25.var0 = 2 * v12;
  v25.var1 = v6;
  if (*&v25.var0)
  {
    if (*&v25.var0)
    {
    }
  }

  *&v25.var0 = 0;
  v25.var1 = 0;
  v26 = 0;
  v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 40, &v20, v17 ^ (v17 >> 31), &v25);
  if (HIDWORD(v25.var1) == 0x7FFFFFFF)
  {
    v18 = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1 + 40, v25.var1, *&v25.var0);
    *(v18 + 8) = v20;
    *(v18 + 16) = a2;
    ++*(a1 + 80);
  }

  if (v22 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  if (v24 == 1)
  {
    std::__shared_mutex_base::unlock(v23);
  }
}

void re::RenderGraphEmitterRegistry::registryItem(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2;
  os_unfair_lock_lock(this + 26);
  v5 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(&this[10], &v7);
  if (v5)
  {
    *(a3 + 8) = *v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  os_unfair_lock_unlock(this + 26);
}

uint64_t re::RenderGraphEmitterRegistry::RenderGraphEmitterRegistry(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0x7FFFFFFFLL;
  *(this + 88) = 0;
  v1 = this + 88;
  *(this + 96) = 0;
  *(this + 104) = 0;
  v2 = &unk_1EE187000;
  {
    v9 = this + 88;
    v10 = this;
    v2 = &unk_1EE187000;
    v8 = v7;
    v1 = v9;
    this = v10;
    if (v8)
    {
      re::introspect<re::RenderGraphEmitterBase>(BOOL)::info = re::introspect_RenderGraphEmitterBase(0);
      v2 = &unk_1EE187000;
      v1 = v9;
      this = v10;
    }
  }

  v3 = *(v2[192] + 64);
  v4 = *v3;
  if (**v3 != 2)
  {
    v5 = (v3 + 1);
    do
    {
      v6 = *v5++;
      v4 = v6;
    }

    while (*v6 != 2);
  }

  *(v4 + 1) = v1;
  return this;
}

void re::DepthPatchNode::configure(re::DepthPatchNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 35))
  {
    re::AssetHandle::loadAsync((this + 272));
  }
}

void re::DepthPatchNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  if (re::GraphicsFeatureFlags::enableDepthPatch(void)::onceToken != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (re::GraphicsFeatureFlags::enableDepthPatch(void)::gEnableDepthPatch != 1)
    {
      return;
    }

    v4 = re::RenderGraphDataStore::tryGet<re::DepthPatchData>(*(a2 + 146), *(*(a2 + 5) + 48));
    if (!v4)
    {
      return;
    }

    v5 = v4;
    if (!*(v4 + 24))
    {
      return;
    }

    v6 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 34));
    if (!v6)
    {
      return;
    }

    v7 = *(v6 + 222);
    if (*(v5 + 88) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C0EA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0EA0))
      {
        _MergedGlobals_536 = re::hashString("DepthPatchStencilMask", v65);
        __cxa_guard_release(&qword_1EE1C0EA0);
      }

      re::RenderGraphContext::makeFullscreenDrawCall(a2, v7, "FullscreenDrawCall", 0, 0, 0, 0, 0, &v98);
      v8 = re::MaterialParameterTableLayers::resolveTechniqueIndices(*v105, _MergedGlobals_536);
      if (v9)
      {
        HIDWORD(v102) = *v8;
        if (!*(a2 + 338))
        {
          v10 = 0;
LABEL_11:
          v88[14] = 1;
          *&v88[15] = __const__ZN2re20FeatureStencilStates17getDepthPatchInfoENS0_15DepthPatchUsageE_kWriteStInfo;
          v88[31] = 0x80;
          re::encodeFullscreenDrawCall(&v98, "DepthPatchStencilMask", a2, v10, 0, &v88[14], 0);
          goto LABEL_12;
        }
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v68 = "operator[]";
        v69 = 264;
        re::internal::assertLog(6, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
        __break(1u);
      }

      v10 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, this[2], "DepthPatchStencilMask");
      goto LABEL_11;
    }

LABEL_12:
    v11 = *(*a2 + 32);
    re::globalAllocators(v6);
    v12 = (*(*v11 + 32))(v11, 336, 16);
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0;
    *(v12 + 192) = 0;
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
    *(v12 + 224) = 0;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 176) = 0;
    *(v12 + 184) = v11;
    *(v12 + 232) = xmmword_1E304F3C0;
    *(v12 + 248) = 0;
    *(v12 + 252) = 10854;
    __asm { FMOV            V0.2S, #1.0 }

    *(v12 + 256) = _D0;
    *(v12 + 264) = 0;
    *(v12 + 272) = 0;
    *(v12 + 320) = 0;
    v18 = re::globalAllocators(v12)[2];
    v98.n128_u64[0] = &unk_1F5D15168;
    v100 = v18;
    v101 = &v98;
    v19 = (*(*v11 + 16))(v11, v12, &v98);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v98);
    *(v19 + 7) = v7;
    if ((atomic_load_explicit(&qword_1EE1C0EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0EB0))
    {
      qword_1EE1C0EA8 = re::hashString("DepthPatch", v64);
      __cxa_guard_release(&qword_1EE1C0EB0);
    }

    v20 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v19, qword_1EE1C0EA8);
    if (!v21)
    {
      v70 = 0;
      v71 = 0;
      v68 = "operator[]";
      v69 = 264;
      re::internal::assertLog(6, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
      __break(1u);
      goto LABEL_41;
    }

    v22 = *v20;
    v98 = 0uLL;
    v23 = *(a2 + 193);
    v99 = 0;
    v100 = v23;
    v101 = 0;
    v102 = v19;
    *&v103 = 0;
    DWORD2(v103) = -65280;
    HIDWORD(v103) = v22;
    LODWORD(v104) = 0;
    v111 = 0;
    v110 = 0;
    v112 = 0;
    v113 = 0;
    *&v105[8] = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    memset(v109, 0, sizeof(v109));
    v114 = 25172350;
    v115 = 0x7FFFFFFFLL;
    v116 = 0xFFFFFFFFLL;
    v118 = 0;
    v117 = 0;
    v24 = (*(*v11 + 32))(v11, 328, 8);
    re::DrawTable::DrawTable(v24, v11);
    v25 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
    v26 = *a2;
    v27 = *(v25 + 160);
    v28 = *(v5 + 24);
    LOBYTE(v85) = 0;
    LOWORD(v86) = 0;
    v88[4] = 0;
    re::addInstancedDrawCall(v24, &v98, v26, v27, v28, &v85);
    if (!*(v5 + 24))
    {
      break;
    }

    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = *(v5 + 64);
      if (v31 <= v29)
      {
        break;
      }

      v32 = 0;
      v33 = *(v5 + 40) + 32 * v29;
      v34 = *v33;
      v35 = *(v33 + 16);
      v36 = vcgtq_f32(*v33, v35);
      v36.i32[3] = v36.i32[2];
      LODWORD(v33) = vmaxvq_u32(v36);
      v37.i64[0] = 0x3F0000003F000000;
      v37.i64[1] = 0x3F0000003F000000;
      v38 = vmulq_f32(vaddq_f32(v34, v35), v37);
      v39 = v38.i32[2];
      _NF = v33 < 0;
      v40 = v38.i64[0];
      if (_NF)
      {
        v39 = 0;
        v40 = 0;
      }

      *&v41 = v40;
      *(&v41 + 1) = __PAIR64__(1.0, v39);
      v42 = vsubq_f32(v35, v34);
      v42.i32[3] = 0;
      v43 = vmulq_f32(vmaxnmq_f32(v42, 0), v37);
      *&v44 = 0;
      *(&v44 + 1) = v43.u32[2];
      LODWORD(v45) = 0;
      HIDWORD(v45) = v43.i32[1];
      v46 = v43.i32[0];
      v47 = (*(v5 + 80) + (v29 << 6));
      v48 = *v47;
      v49 = v47[1];
      v50 = v47[2];
      v51 = v47[3];
      *v119 = v46;
      *&v119[16] = v45;
      *&v119[32] = v44;
      v120 = v41;
      do
      {
        *(&v89 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*&v119[v32])), v49, *&v119[v32], 1), v50, *&v119[v32], 2), v51, *&v119[v32], 3);
        v32 += 16;
      }

      while (v32 != 64);
      v74 = v90;
      v75 = v89;
      v72 = v92;
      v73 = v91;
      v52 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](v24 + 56, v29);
      *v52 = v75;
      v52[1] = v74;
      v52[2] = v73;
      v52[3] = v72;
      v29 = ++v30;
      if (*(v5 + 24) <= v30)
      {
        goto LABEL_22;
      }
    }

    v76 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *&v119[12] = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    *&v119[14] = 797;
    *&v119[18] = 2048;
    *&v119[20] = v29;
    *&v119[28] = 2048;
    *&v119[30] = v31;
    _os_log_send_and_compose_impl(v63, &v76, &v89, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_39:
    dispatch_once(&re::GraphicsFeatureFlags::enableDepthPatch(void)::onceToken, &__block_literal_global_10_3);
  }

LABEL_22:
  if (*(v5 + 88))
  {
    if (*(this + 269))
    {
      v53 = &__const__ZN2re20FeatureStencilStates17getDepthPatchInfoENS0_15DepthPatchUsageE_kReadForImmersiveEnvironmentStInfo;
    }

    else
    {
      v53 = &__const__ZN2re20FeatureStencilStates17getDepthPatchInfoENS0_15DepthPatchUsageE_kReadStInfo;
    }

    v83 = *v53;
    LOBYTE(v84) = *(v53 + 16);
    v54 = 1;
  }

  else
  {
    v54 = 0;
  }

  if (*(v24 + 5))
  {
    re::DrawTableSlice::DrawTableSlice(&v89, v24);
    v76 = "DepthPatchPass";
    v77 = &v89;
    v55 = *(v25 + 80);
    v78 = *(v25 + 40);
    v79 = v55;
    v80 = 0;
    v81[0] = *(v25 + 160);
    *&v81[1] = 0;
    v81[4] = 0;
    v81[5] = v54;
    if (v54)
    {
      *&v81[6] = v83;
      v81[22] = v84;
    }

    v81[23] = 0;
    if (*(a2 + 338))
    {
LABEL_41:
      v56 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, this[2], "DepthPatchPass");
    }

    else
    {
      v56 = 0;
    }

    *&v82 = v56;
    BYTE8(v82) = 0;
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v119);
    re::RenderGraphContext::encodeDrawCalls(a2, v119, &v76, v57, v58, v59, v60, v61, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78, v79, v80, *v81, *&v81[8], *&v81[16], v82, v83, *(&v83 + 1), v84, v85, v86, v87, *v88, *&v88[16], v89, v90, SBYTE1(v90), SBYTE2(v90), SBYTE3(v90), SBYTE4(v90), *(&v90 + 1), v91, v92, *(&v92 + 1), v93, *(&v93 + 1), v94, v95, v96, v97, *&v98, v99, v100, v101, v102, v103, v104, *v105);
  }
}

void *re::allocInfo_DepthPatchNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0EB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0EE0, "DepthPatchNode");
    __cxa_guard_release(&qword_1EE1C0EB8);
  }

  return &unk_1EE1C0EE0;
}

void re::initInfo_DepthPatchNode(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0xF6EF85110940D60ELL;
  v17[1] = "DepthPatchNode";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C0EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0EC0))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C0EC8 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "renderToSeparateTarget";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10D00000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C0ED0 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_AssetHandle(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "depthPatchMaterial";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x11000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C0ED8 = v15;
    __cxa_guard_release(&qword_1EE1C0EC0);
  }

  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C0EC8;
  *(this + 9) = re::internal::defaultConstruct<re::DepthPatchNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DepthPatchNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::DepthPatchNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::DepthPatchNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::DepthPatchNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 66) = 1;
  *(result + 134) = 0;
  *result = &unk_1F5D150C0;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 34) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::DepthPatchNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 66) = 1;
  *(result + 134) = 0;
  *result = &unk_1F5D150C0;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 34) = 0;
  return result;
}

void re::DepthPatchNode::~DepthPatchNode(id *this)
{
  *this = &unk_1F5D150C0;
  re::AssetHandle::~AssetHandle((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D150C0;
  re::AssetHandle::~AssetHandle((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::DepthPatchNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D15168;
  return result;
}

void *re::internal::Callable<re::DepthPatchNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D15168;
  return result;
}

__n128 re::RenderGraphEmitterBase::initRuntimeSettings@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RenderGraphEmitterBase *this@<X0>, uint64_t a3@<X1>)
{
  v16 = *MEMORY[0x1E69E9840];
  re::RenderGraphEmitterRegistry::registryItem(re::RenderGraphEmitterRegistry::m_instance, a3, v11);
  if (v11[0])
  {
    v7 = (**v12)(v12, 0);
    re::makeBindNode(&v13, v7, this);
    if ((this + 16) != &v13)
    {
      re::BindNode::move((this + 16), &v13);
    }

    result.n128_f64[0] = re::BindNode::deinit(&v13);
    *a1 = 1;
  }

  else
  {
    re::DynamicString::format(&v13, "Unregistered RenderGraphEmitter with typeHash %lu.", v6, a3);
    result = v13;
    v9 = v14;
    v10 = v15;
    *a1 = 0;
    *(a1 + 1) = result;
    a1[3] = v9;
    a1[4] = v10;
  }

  return result;
}

void re::RenderGraphEmitterBase::execute(re::RenderGraphEmitterBase *this, re::RenderManager *a2)
{
  v3 = this;
  v4 = *(a2 + 14);
  if (v4)
  {
    this = re::RenderFrameBox::get((v4 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v5 = this;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 524);
  if (v6 >= 2)
  {
    v7 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Only one workload per frame is currently supported. Only the last workload will be executed.", v8, 2u);
    }

    v6 = *(v5 + 524);
  }

  if (v6)
  {
    (*(*v3 + 48))(v3, a2, *(*(v5 + 526) + 8 * v6 - 8));
  }
}

uint64_t re::RenderGraphEmitterBase::execute(re::RenderGraphEmitterBase *this, re::RenderManager *a2, re::RenderFrameWorkload *a3)
{
  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = re::RenderFrameBox::get((v5 + 328), *(a3 + 19));
  }

  else
  {
    v6 = 0;
  }

  re::RenderFrameWorkload::beforeEmit(a3);
  v7 = *(*this + 56);

  return v7(this, v6);
}

uint64_t re::RenderGraphEmitterBase::setRuntimeSetting(re::BindNode **this, const re::IntrospectionBase *a2, const char *a3, char *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &str_67;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v25 >> 31) ^ (v25 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v25 >> 31) ^ (v25 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((this + 11), &v25, v8 ^ (v8 >> 31), v34);
  if (*&v34[12] == 0x7FFFFFFF)
  {
    *&v34[8] = 0;
    v35 = 0uLL;
    LODWORD(v36) = 0;
    *(&v36 + 1) = 0;
    *&v37[0] = 0;
    *(&v37[0] + 1) = &str_67;
    *&v24 = a3;
    *(&v24 + 1) = strlen(a3);
    re::BindNode::bindPoint(buf, this + 2, a2, &v24);
    *v34 = *buf;
    re::DynamicArray<re::RigDataValue>::operator=(&v34[8], &buf[8]);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
    v9 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
    v10 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      re::StringID::operator=(v37, &v25);
      re::DynamicArray<re::BindPointAndPath>::add((this + 6), v34);
      *buf = *(this + 16) - 1;
      v11 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((this + 11), &v25, buf);
      v12 = v11;
    }

    else
    {
      v13 = *re::graphicsLogObjects(v9);
      v11 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        *buf = 136315138;
        *&buf[4] = a3;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Failed to find binding path [%s].", buf, 0xCu);
      }

      v12 = 0;
    }

    if (v37[0])
    {
      if (v37[0])
      {
      }
    }

    *&v37[0] = 0;
    *(&v37[0] + 1) = &str_67;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v34[8]);
    v14 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v34[8]);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (this[13] + 32 * *&v34[12] + 24);
  }

  v15 = *v12;
  v16 = this[8];
  if (v16 <= v15)
  {
    *&v24 = 0;
    memset(v37, 0, sizeof(v37));
    v35 = 0u;
    v36 = 0u;
    *v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
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
    v31 = v15;
    v32 = 2048;
    v33 = v16;
    _os_log_send_and_compose_impl(v23, &v24, v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38);
    _os_crash_msg();
    __break(1u);
  }

  v17 = re::BindPoint::valueUntyped((this[10] + 64 * v15));
  *&v34[8] = 0;
  *&v35 = 0;
  if ((v14 & 1) == 0)
  {
    v19 = *re::graphicsLogObjects(v14);
    v14 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *v34 = 136315138;
      *&v34[4] = a3;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Failed to perform deep copy into binding path [%s].", v34, 0xCu);
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 1;
LABEL_18:
  if (v25)
  {
    if (v25)
    {
    }
  }

  return v18;
}

void *re::allocInfo_RenderGraphEmitterBase(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_537, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_537))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0F88, "RenderGraphEmitterBase");
    __cxa_guard_release(&_MergedGlobals_537);
  }

  return &unk_1EE1C0F88;
}

void re::initInfo_RenderGraphEmitterBase(re *this, re::IntrospectionBase *a2)
{
  v8[0] = 0xB2BF4B7174817E0ELL;
  v8[1] = "RenderGraphEmitterBase";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  if ((atomic_load_explicit(&qword_1EE1C0F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0F80))
  {
    v5 = re::introspectionAllocator();
    v6 = (*(*v5 + 32))(v5, 16, 8);
    *v6 = 2;
    *(v6 + 8) = 0;
    qword_1EE1C0F78 = v6;
    __cxa_guard_release(&qword_1EE1C0F80);
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C0F78;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v7 = v9;
}

void re::guided_filter_occlusion::encodeGuidedFilterOcclusionCommands(uint64_t a1)
{
  re::SyncMechanism::sync(*(a1 + 16));
  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v103, (a1 + 8));
  v2 = *(a1 + 48);
  [v103 setTexture:*v2 atIndex:0];
  [v103 setTexture:*(v2 + 8) atIndex:1];
  [v103 setTexture:*(v2 + 32) atIndex:2];
  v3 = *(*(a1 + 56) + 88);
  v4 = v103;
  [v4 setComputePipelineState:v3];

  v5 = [*(v2 + 32) width];
  v6 = [*(v2 + 32) height];
  v7.i64[0] = v5;
  v7.i64[1] = v6;
  v8 = vdupq_n_s64(0x3FB0000000000000uLL);
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v7), v8)));
  v108 = 1;
  v98 = v8;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v103 dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  v9 = *(a1 + 48);
  [v103 setTexture:*(v9 + 16) atIndex:0];
  [v103 setTexture:*(v9 + 48) atIndex:1];
  LODWORD(v110[0]) = *(*(re::RenderGraphDataStore::get<re::CameraMatrices>(*(*a1 + 1168), *(*(*a1 + 40) + 48)) + 80) + 56);
  [v103 setBytes:v110 length:4 atIndex:2];
  v10 = *(*(a1 + 56) + 104);
  v11 = v103;
  [v11 setComputePipelineState:v10];

  v12 = [*(v9 + 56) width];
  v13 = [*(v9 + 56) height];
  v14.i64[0] = v12;
  v14.i64[1] = v13;
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v14), v98)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v103 dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  objc_msgSend_endEncoding(v103);
  re::SyncMechanism::sync(*(a1 + 16));
  v15 = *(*(a1 + 32) + 16);
  v16 = *(a1 + 8);
  v17 = *(v9 + 56);
  v18 = *(v9 + 48);
  v19 = v16;
  v20 = v15;
  [v20 encodeToCommandBuffer:v19 sourceTexture:v18 destinationTexture:v17];

  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  re::mtl::CommandBuffer::makeComputeCommandEncoder(v110, (a1 + 8));
  [v110[0] setTexture:*(*(a1 + 24) + 16) atIndex:0];
  [v110[0] setTexture:*(*(a1 + 24) + 24) atIndex:1];
  [v110[0] setTexture:*(v21 + 88) atIndex:2];
  [v110[0] setBytes:*(a1 + 24) + 48 length:64 atIndex:3];
  v23 = *(*(a1 + 56) + 80);
  v24 = v110[0];
  [v24 setComputePipelineState:v23];

  v25 = *(*(a1 + 24) + 160);
  v26.i64[0] = v25;
  v26.i64[1] = HIDWORD(v25);
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v26), v98)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v110[0] dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  objc_msgSend_endEncoding(v110[0]);
  re::SyncMechanism::sync(*(a1 + 16));
  v27 = *(a1 + 8);
  v28 = *(v21 + 80);
  v29 = *(*(a1 + 32) + 24);
  v30 = *(v21 + 88);
  v31 = v27;
  v32 = v29;
  [v32 encodeToCommandBuffer:v31 sourceTexture:v30 destinationTexture:v28];

  re::SyncMechanism::sync(*(a1 + 16));
  v33 = *(*(a1 + 32) + 40);
  v34 = *(a1 + 8);
  v35 = *(v22 + 24);
  v36 = *(v21 + 80);
  v37 = v34;
  v38 = v33;
  [v38 encodeToCommandBuffer:v37 sourceTexture:v36 destinationTexture:v35];

  re::SyncMechanism::sync(*(a1 + 16));
  v39 = *(a1 + 48);
  v40 = objc_alloc(MEMORY[0x1E6974568]);
  v41 = *(*(a1 + 24) + 112);
  v42 = [v40 initWithDevice:*(*(*a1 + 8) + 208) kernelWidth:v41 kernelHeight:v41];
  v43 = *(a1 + 8);
  v44 = *(v39 + 32);
  v45 = *(v39 + 40);
  v46 = v44;
  v47 = v43;
  [v42 encodeToCommandBuffer:v47 sourceTexture:v46 destinationTexture:v45];

  re::SyncMechanism::sync(*(a1 + 16));
  v48 = *(a1 + 48);
  re::mtl::CommandBuffer::makeComputeCommandEncoder(v110, (a1 + 8));
  [v110[0] setTexture:*(v48 + 32) atIndex:0];
  [v110[0] setTexture:*(v48 + 40) atIndex:1];
  [v110[0] setTexture:*(v48 + 16) atIndex:2];
  [v110[0] setTexture:*(v48 + 24) atIndex:3];
  [v110[0] setTexture:*(v48 + 56) atIndex:4];
  LODWORD(v102) = *(*(re::RenderGraphDataStore::get<re::CameraMatrices>(*(*a1 + 1168), *(*(*a1 + 40) + 48)) + 80) + 56);
  [v110[0] setBytes:&v102 length:4 atIndex:0];
  [v110[0] setTexture:*(v48 + 64) atIndex:5];
  v49 = *(*(a1 + 56) + 96);
  v50 = v110[0];
  [v50 setComputePipelineState:v49];

  v51 = [*(v48 + 64) width];
  v52 = [*(v48 + 64) height];
  v53.i64[0] = v51;
  v53.i64[1] = v52;
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v53), v98)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v110[0] dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  objc_msgSend_endEncoding(v110[0]);

  re::SyncMechanism::sync(*(a1 + 16));
  v102 = *(*(a1 + 40) + 8);
  v101 = *(*(a1 + 40) + 32);
  if ((*(a1 + 65) & 1) != 0 || *(a1 + 64) == 1)
  {
    NS::SharedPtr<MTL::Buffer>::operator=(&v102, *(a1 + 40));
    NS::SharedPtr<MTL::Buffer>::operator=(&v101, (*(a1 + 40) + 24));
  }

  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v100, (a1 + 8));
  v54 = *(a1 + 48);
  v55 = *(*(a1 + 24) + 176);
  [v100 setTexture:*(v54 + 64) atIndex:0];
  [v100 setTexture:*(v54 + 96) atIndex:1];
  v56 = *(a1 + 24);
  LOWORD(v110[0]) = *(v56 + 128);
  HIDWORD(v110[0]) = *(v56 + 152);
  [v100 setBytes:v110 length:8 atIndex:0];
  v57 = *(*(a1 + 56) + 64);
  v58 = v100;
  [v58 setComputePipelineState:v57];

  v59.i64[0] = v55;
  v59.i64[1] = HIDWORD(v55);
  v99 = vdupq_n_s64(0x3FB0000000000000uLL);
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v59), v99)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v100 dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  v60 = *(a1 + 48);
  v61 = *(*(a1 + 24) + 176);
  [v100 setTexture:*(v60 + 64) atIndex:0];
  [v100 setTexture:*(v60 + 104) atIndex:1];
  v62 = *(*(a1 + 56) + 72);
  v63 = v100;
  [v63 setComputePipelineState:v62];

  v59.i64[0] = v61;
  v59.i64[1] = HIDWORD(v61);
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v59), v99)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v100 dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  objc_msgSend_endEncoding(v100);
  re::SyncMechanism::sync(*(a1 + 16));
  v64 = *(a1 + 40);
  v65 = *(a1 + 8);
  v66 = v64[3];
  v67 = *(*(a1 + 48) + 104);
  v68 = *v64;
  v69 = **(a1 + 32);
  v70 = *(*(a1 + 48) + 96);
  v71 = v66;
  v72 = v67;
  v73 = v65;
  v74 = v69;
  [v74 encodeRegressionToCommandBuffer:v73 sourceTexture:v72 guidanceTexture:v71 weightsTexture:v70 destinationCoefficientsTexture:v68];

  re::SyncMechanism::sync(*(a1 + 16));
  v75 = *(a1 + 40);
  v76 = *(a1 + 24);
  v77 = *(v76 + 136);
  LODWORD(v61) = *(v76 + 140);
  re::mtl::CommandBuffer::makeComputeCommandEncoder(v110, (a1 + 8));
  [v110[0] setTexture:*(v75 + 24) atIndex:0];
  [v110[0] setTexture:v101 atIndex:1];
  [v110[0] setTexture:*v75 atIndex:2];
  [v110[0] setTexture:v102 atIndex:3];
  [v110[0] setTexture:*(v75 + 16) atIndex:6];
  v109 = v77;
  [v110[0] setBytes:&v109 length:4 atIndex:7];
  v104 = v61;
  [v110[0] setBytes:&v104 length:4 atIndex:8];
  v78 = *(*(a1 + 56) + 56);
  v79 = v110[0];
  [v79 setComputePipelineState:v78];

  v80 = [*(v75 + 16) width];
  v81 = [*(v75 + 16) height];
  v82.i64[0] = v80;
  v82.i64[1] = v81;
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v82), v99)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v110[0] dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  objc_msgSend_endEncoding(v110[0]);

  re::SyncMechanism::sync(*(a1 + 16));
  v83 = *(a1 + 48);
  v84 = *(a1 + 8);
  v85 = *(v83 + 80);
  v86 = *(v83 + 112);
  v87 = **(a1 + 32);
  v88 = *(*(a1 + 40) + 16);
  v89 = v85;
  v90 = v84;
  v91 = v87;
  [v91 encodeReconstructionToCommandBuffer:v90 guidanceTexture:v89 coefficientsTexture:v88 destinationTexture:v86];

  re::SyncMechanism::sync(*(a1 + 16));
  v92 = *(a1 + 48);
  re::mtl::CommandBuffer::makeComputeCommandEncoder(v110, (a1 + 8));
  [v110[0] setTexture:*(v92 + 112) atIndex:0];
  [v110[0] setTexture:*(v92 + 120) atIndex:1];
  v109 = (*(*(a1 + 24) + 156) * 5.0) + 1.0;
  [v110[0] setBytes:&v109 length:4 atIndex:2];
  v93 = *(*(a1 + 56) + 48);
  v94 = v110[0];
  [v94 setComputePipelineState:v93];

  v95 = [*(v92 + 120) width];
  v96 = [*(v92 + 120) height];
  v97.i64[0] = v95;
  v97.i64[1] = v96;
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v97), v99)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v110[0] dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  objc_msgSend_endEncoding(v110[0]);

  re::SyncMechanism::sync(*(a1 + 16));
  if (v101)
  {
  }

  if (v102)
  {
  }
}

void re::RenderGraphTonemapNode::execute(re::RenderGraphTonemapNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v40, 5060, 0, 0, 0, 0);
  if ((*(this + 532) & 1) == 0)
  {
    re::TonemapUserParameters::computeRenderParameters((this + 472), buf);
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v41, (*a2 + 16), 0x84uLL, 4uLL);
    v19 = v43;
    v20 = v42;
    v21 = v41 + v42;
    *(v21 + 80) = v36;
    *(v21 + 96) = v37;
    *(v21 + 112) = v38;
    *(v21 + 128) = v39;
    *(v21 + 16) = v32;
    *(v21 + 32) = v33;
    *(v21 + 48) = v34;
    *(v21 + 64) = v35;
    *v21 = *buf;
    v22 = *a2;
    v30 = 0x1C6D7B14F4E32CD0;
    v41 = v19;
    LODWORD(v42) = 0;
    v43 = v20;
    v16 = (v22 + 480);
    v17 = &v30;
    v18 = &v41;
    goto LABEL_6;
  }

  if ((atomic_load_explicit(&qword_1EE1C1020, memory_order_acquire) & 1) == 0)
  {
    v27 = __cxa_guard_acquire(&qword_1EE1C1020);
    if (v27)
    {
      _MergedGlobals_538 = re::getCombinedScopeHash(v27, v28, v29);
      __cxa_guard_release(&qword_1EE1C1020);
    }
  }

  v4 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(*(a2 + 146), _MergedGlobals_538);
  if (v4)
  {
    v5 = v4;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a2 + 16), 0x84uLL, 4uLL);
    v6 = v32;
    v7 = *&buf[8];
    v8 = *buf + *&buf[8];
    *v8 = *(v5 + 8);
    v9 = *(v5 + 24);
    v10 = *(v5 + 40);
    v11 = *(v5 + 72);
    *(v8 + 48) = *(v5 + 56);
    *(v8 + 64) = v11;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v12 = *(v5 + 88);
    v13 = *(v5 + 104);
    v14 = *(v5 + 120);
    *(v8 + 128) = *(v5 + 136);
    *(v8 + 96) = v13;
    *(v8 + 112) = v14;
    *(v8 + 80) = v12;
    v15 = *a2;
    v41 = 0x1C6D7B14F4E32CD0;
    *buf = v6;
    *&buf[8] = 0;
    *&v32 = v7;
    v16 = (v15 + 480);
    v17 = &v41;
    v18 = buf;
LABEL_6:
    re::BufferTable::setBuffer(v16, v17, v18);
    re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
    v23 = *a2;
    *buf = 0x1C6D7B14F4E32CD0;
    re::BufferTable::removeBuffer((v23 + 480), buf);
    goto LABEL_7;
  }

  v26 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "RenderGraphTonemapNode expects TonemapParametersData from the render graph data store but there isn't any. Will skip the execution.", buf, 2u);
  }

LABEL_7:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v40, v24, v25);
}

void *re::allocInfo_RenderGraphTonemapNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1028))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1050, "RenderGraphTonemapNode");
    __cxa_guard_release(&qword_1EE1C1028);
  }

  return &unk_1EE1C1050;
}

void re::initInfo_RenderGraphTonemapNode(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xB3170E0D645236E8;
  v21[1] = "RenderGraphTonemapNode";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1C1030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1030))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphFullscreenNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphFullscreenNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1038 = v7;
    v8 = re::introspectionAllocator();
    v14 = re::introspect_TonemapUserParameters(1, v9, v10, v11, v12, v13);
    v15 = (*(*v8 + 32))(v8, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "tonemapUserParameters";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x1D800000001;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C1040 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_BOOL(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "tonemappingSharedParamsEnabled";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x21400000002;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C1048 = v19;
    __cxa_guard_release(&qword_1EE1C1030);
  }

  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C1038;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTonemapNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTonemapNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTonemapNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTonemapNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void re::RenderGraphTonemapNode::~RenderGraphTonemapNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

double re::RenderGraphTonemapNode::RenderGraphTonemapNode(re::RenderGraphTonemapNode *this)
{
  *(this + 58) = 0;
  v1 = (this + 472);
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v2 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *v2 = &unk_1F5D15220;
  result = 0.00000175476111;
  *v1 = xmmword_1E3054790;
  v1[1] = xmmword_1E304F3C0;
  *(v2 + 504) = 0;
  *(v2 + 508) = 0x3F8000003F800000;
  *(v2 + 516) = 0;
  *(v2 + 65) = 0x3F80000000000000;
  *(v2 + 528) = 0;
  *(v2 + 532) = 0;
  return result;
}

int *re::makePortalSurfaceDrawcall(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v5 = a1;
  v146 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (*(v6 + 16))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = (v6 + 17);
  }

  v8 = *a1;
  v9 = v115;
  v10 = 0x9E3779B97F4A7C17;
  v11 = strlen(v7);
  v12 = 0x9E3779B97F4A7C17;
  if (v11)
  {
    MurmurHash3_x64_128(v7, v11, 0, &v125);
    v12 = (((*(&v125 + 1) - 0x61C8864680B583E9 + (v125 << 6) + (v125 >> 2)) ^ v125) - 0x61C8864680B583E9);
  }

  if ((atomic_load_explicit(&qword_1EE1C10F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v13 = *(v5 + 64);
    v14 = qword_1EE1C10E8;
    v15 = strlen(*(v5 + 16));
    if (v15)
    {
      MurmurHash3_x64_128(*(v5 + 16), v15, 0, &v125);
      v10 += (*(v9 + 232) + v10 + (*(v9 + 224) << 6) + (*(v9 + 224) >> 2)) ^ *(v9 + 224);
    }

    v16 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(*(v13 + 1168), ((v14 >> 2) + (v14 << 6) + v10) ^ v14);
    v17 = v16 + 8;
    if (!v16)
    {
      v17 = 0;
    }

    v97 = v17;
    if ((atomic_load_explicit(&qword_1EE1C1100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1100))
    {
      qword_1EE1C10F8 = re::hashString("RenderGraphDataPipeData", v81);
      __cxa_guard_release(&qword_1EE1C1100);
    }

    v98 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(*(*(v5 + 64) + 1168), (&v12[4 * qword_1EE1C10F8] + (qword_1EE1C10F8 >> 2)) ^ qword_1EE1C10F8);
    v88 = re::RenderGraphDataStore::tryGet<re::MeshSortGroupCameraData>(*(*(v5 + 64) + 1168), *(*(*(v5 + 64) + 40) + 48));
    result = re::RenderGraphDataStore::get<re::CameraData>(*(*(v5 + 64) + 1168), *(*(*(v5 + 64) + 40) + 48));
    v106 = result;
    v115[0] = v8 + 32;
    v20 = *(v8 + 144);
    v115[1] = *v20;
    v21 = *(v8 + 40);
    v115[2] = v20[1];
    v116[0] = 0;
    v116[1] = v21;
    v117 = xmmword_1E3047670;
    v118 = xmmword_1E3047680;
    *(v9 + 80) = xmmword_1E30476A0;
    *(v9 + 96) = xmmword_1E30474D0;
    *(v9 + 112) = 0;
    *(v9 + 120) = 0;
    if (*(v8 + 88))
    {
      break;
    }

    *(v9 + 128) = v116;
    *(v9 + 136) = 1;
    v86 = 1;
LABEL_16:
    v22 = 0;
    v101 = (v8 + 544);
    v12 = &v125;
    if (v4)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v89 = v23;
    __asm { FMOV            V9.2S, #1.0 }

    v96 = v5;
    while (1)
    {
      v114[0] = v115;
      v114[1] = v22;
      v87 = v22;
      v29 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v114, v19);
      v31 = 0;
      v32 = *(v8 + 160);
      v33 = *(v8 + 176);
      v34 = *(v8 + 192);
      v35 = *(v8 + 208);
      v36 = v29[2];
      v37 = v29[3];
      v38 = v29[4];
      *(v9 + 144) = v29[1];
      *(v9 + 160) = v36;
      *(v9 + 176) = v37;
      *(v9 + 192) = v38;
      do
      {
        *&v126[v31 * 8 - 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v121[v31 - 1])), v33, v121[v31 - 1], 1), v34, *&v121[v31 - 1], 2), v35, *&v121[v31 - 1], 3);
        v31 += 2;
      }

      while (v31 != 8);
      v94 = *(v9 + 240);
      v95 = *(v9 + 224);
      v92 = *(v9 + 272);
      v93 = *(v9 + 256);
      v39 = *v114[0];
      v40 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v114, v30);
      result = re::Slice<re::internal::BindPointImplBase const*>::range(v39, *v40, v40[1]);
      v99 = v19;
      v100 = result;
      if (v19)
      {
        break;
      }

LABEL_83:
      v22 = v87 + 1;
      if (v87 + 1 == v86)
      {
        return result;
      }
    }

    v41 = 0;
    v4 = 0;
    while (1)
    {
      v42 = *(v100 + 8 * v4);
      v43 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(v114, v4);
      v44 = v43;
      if (v4 >= *(v8 + 56))
      {
        v104 = 0;
      }

      else
      {
        v104 = *(*(v8 + 48) + 4 * v4);
      }

      if (v4 >= *(v8 + 72))
      {
        v103 = 0;
      }

      else
      {
        v103 = *(*(v8 + 64) + 8 * v4);
      }

      re::globalAllocators(v43);
      v45 = *(**(v5 + 64) + 32);
      v10 = (*(*v45 + 32))(v45, 336, 16);
      v46 = *(**(v5 + 64) + 32);
      *v10 = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0u;
      *(v10 + 48) = 0;
      *(v10 + 120) = 0;
      *(v10 + 104) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 56) = 0u;
      *(v10 + 192) = 0;
      *(v10 + 200) = 0;
      *(v10 + 208) = 0;
      *(v10 + 224) = 0;
      *(v10 + 176) = 0;
      *(v10 + 184) = v46;
      *(v10 + 144) = 0u;
      *(v10 + 160) = 0u;
      *(v10 + 128) = 0u;
      *(v10 + 232) = xmmword_1E304F3C0;
      *(v10 + 248) = 0;
      *(v10 + 252) = 10854;
      *(v10 + 256) = _D9;
      *(v10 + 264) = 0;
      *(v10 + 272) = 0;
      *(v10 + 320) = 0;
      *(v9 + 248) = re::globalAllocators(v10)[2];
      *(v9 + 256) = &v125;
      *(v9 + 224) = &unk_1F5D152C8;
      v47 = (*(*v45 + 16))(v45, v10, &v125);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v125);
      if (*(v8 + 232) > v44)
      {
        *(v47 + 56) = *(*(v8 + 224) + 8 * v44);
      }

      if (*(v8 + 336) > v44)
      {
        *(v47 + 64) = *(*(v8 + 328) + 8 * v44);
      }

      if (*(v8 + 320) > v44)
      {
        *(v47 + 72) = *(*(v8 + 312) + 8 * v44);
      }

      if (*(v8 + 368) > v44)
      {
        *(v47 + 80) = *(*(v8 + 360) + 8 * v44);
      }

      *(v47 + 88) = *(v8 + 376);
      *(v47 + 200) = *(v8 + 448);
      *(v47 + 256) = *(v8 + 508);
      v49 = 0;
      if (v98 && (v50 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v98, v101)) != 0)
      {
        v48 = v50;
        v51 = *(v50 + 8);
        if (v88)
        {
          v10 = v42;
          v52 = 0xBF58476D1CE4E5B9 * (*v50 ^ (*v50 >> 30));
          re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v88 + 8, v50, (0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) ^ ((0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) >> 31), &v125);
          if (HIDWORD(v125) != 0x7FFFFFFF)
          {
            v49 = *(*(v88 + 24) + 40 * HIDWORD(v125) + 20);
          }
        }
      }

      else
      {
        v51 = 0;
      }

      v53 = *(v8 + 504);
      *&v54 = v53;
      DWORD1(v54) = *(v8 + 728);
      *(&v54 + 1) = *(v8 + 732);
      *(v47 + 232) = v54;
      *(v47 + 248) = *(v8 + 740);
      *(v47 + 252) = *(v8 + 744);
      v102 = v51;
      if ((*(v47 + 272) & 1) == 0)
      {
        v55 = 0uLL;
        if ((*(v8 + 576) & 1) == 0)
        {
          goto LABEL_52;
        }

        *(v47 + 272) = 1;
LABEL_50:
        v56 = *(v8 + 608);
        *(v47 + 288) = *(v8 + 592);
        *(v47 + 304) = v56;
        goto LABEL_51;
      }

      if (*(v8 + 576))
      {
        goto LABEL_50;
      }

      *(v47 + 272) = 0;
LABEL_51:
      v55 = 0uLL;
LABEL_52:
      *(v47 + 320) = *(v8 + 624);
      v5 = *(v8 + 450) != 0;
      v9 = v53 != 1.0 || *(v8 + 450) != 0;
      v57 = (*(v42 + 528) ^ *(*(v47 + 56) + 296)) & ~*(*(v47 + 56) + 300) | *(*(v47 + 56) + 300) & *(*(v47 + 56) + 296);
      v58 = *(v8 + 528);
      v105 = v42;
      if (v58)
      {
        if (v58 <= v4)
        {
          goto LABEL_86;
        }

        v59 = re::MaterialRenderFlags::flattenToOverrideFlags((*(v8 + 520) + v41));
        v55 = 0uLL;
        v57 = (v57 ^ v59) & ~HIDWORD(v59) | HIDWORD(v59) & v59;
      }

      v10 = *(v8 + 540);
      v60 = *(v8 + 536);
      if ((atomic_load_explicit(&qword_1EE1C1108, memory_order_acquire) & 1) == 0)
      {
        v77 = __cxa_guard_acquire(&qword_1EE1C1108);
        v55 = 0uLL;
        if (v77)
        {
          re::Defaults::BOOLValue(&v125, "enableDitherForStencilPortals", v78);
          if (v125)
          {
            v79 = BYTE1(v125);
          }

          else
          {
            v79 = 1;
          }

          _MergedGlobals_539 = v79;
          __cxa_guard_release(&qword_1EE1C1108);
          v55 = 0uLL;
        }
      }

      v61 = (2 * v5) | _MergedGlobals_539 & v9 & 1;
      v5 = v96;
      if (*(v106 + 865) == 1)
      {
        v62 = *(v47 + 248);
        v63 = v62 <= 0.0;
        if (v62 > 1.0)
        {
          v63 = 1;
        }

        if ((v63 | *(v96 + 72)))
        {
          v64 = 128;
        }

        else
        {
          v64 = 192;
        }

        v61 |= v64;
      }

      if (*(v8 + 408))
      {
        v65 = v8 + 384;
      }

      else
      {
        v65 = 0;
      }

      v9 = v115;
      *&v125 = v65;
      *(&v125 + 1) = v97;
      *v126 = v55;
      *&v126[16] = v55;
      *&v126[32] = v55;
      *&v126[48] = v55;
      *&v127 = 0;
      WORD4(v127) = v61;
      *(v47 + 120) = v55;
      *(v47 + 104) = v125;
      if ((v47 + 104) != &v125)
      {
        v66 = *(v47 + 144);
        *&v126[8] = *(v47 + 128);
        v67 = *(v47 + 184);
        *&v126[56] = *(v47 + 176);
        *&v127 = v67;
        *(v47 + 128) = v55;
        *(v47 + 144) = v55;
        *&v126[24] = v66;
        v68 = *(v47 + 160);
        *(v47 + 160) = v55;
        *(v47 + 176) = v55;
        *&v126[40] = v68;
      }

      *(v47 + 192) = v61;
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v126[8]);
      result = re::MaterialParameterTableLayers::resolveTechniqueIndices(v47, v96[4]);
      if (!v19)
      {
        break;
      }

      v69 = *result;
      if (*result != -1)
      {
        v70 = 0;
        v125 = *v101;
        *v126 = v103;
        *&v126[8] = v105;
        *&v126[16] = v105 + 416;
        *&v126[24] = v47;
        *&v126[36] = 0xFFFF010000000000;
        *&v126[32] = v104;
        *&v126[44] = v69;
        v127 = v95;
        v128 = v94;
        v129 = v93;
        v130 = v92;
        v136 = 0;
        *&v126[48] = 0;
        v135 = 0;
        v137 = 0;
        v138 = 0;
        v131 = 0;
        v132 = 0;
        v134 = 0;
        v133 = 0;
        v139 = (v60 ^ v57) & ~v10 | v60 & v10;
        v140 = v102;
        v141 = 0x7FFFFFFF;
        v142 = v49;
        v143 = 0xFFFFFFFFLL;
        v144 = 0;
        v145 = 0;
        if (a3)
        {
          v73 = *(a3 + 64);
          v123 = 0;
          v121[1] = 0;
          v121[2] = 0;
          v122 = 0;
          v120 = v73;
          v121[0] = v73;
          re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(v121, 0);
          ++v122;
          v74 = *v101;
          v75 = *(v105 + 496);
          v113[0] = 0;
          re::DrawCallMeshPartsDetails::appendPerMeshPartDetails(&v120, v74, v75, v113);
          v76 = re::DrawCallRecorderGroup::recordDrawCallMeshPartsDetails(re::DrawCallMeshPartsDetails const&)::nextIndex++;
          v124 = v76;
          re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(a3 + 112, &v124, &v120);
          v70 = v124;
          re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(v121);
        }

        v71 = *v96[8];
        v72 = *(v106 + 890);
        v107[0] = 1;
        v108 = v70;
        v109 = 256;
        v110 = *(v96 + 5);
        v111 = *(v96 + 56);
        v112 = 0;
        result = re::addDrawCall(a2, &v125, v71, v72, v107);
        *(result + 144) = v89;
        v9 = v115;
      }

      ++v4;
      v41 += 20;
      if (v99 == v4)
      {
        goto LABEL_83;
      }
    }

    re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v82, v84);
    __break(1u);
LABEL_86:
    re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v58);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v83, v85);
    __break(1u);
LABEL_87:
    if (__cxa_guard_acquire(&qword_1EE1C10F0))
    {
      qword_1EE1C10E8 = re::hashString("DynamicFunctionConstants", v80);
      __cxa_guard_release(&qword_1EE1C10F0);
    }
  }

  v119 = *(v8 + 80);
  v86 = *(v9 + 136);
  if (v86)
  {
    goto LABEL_16;
  }

  return result;
}