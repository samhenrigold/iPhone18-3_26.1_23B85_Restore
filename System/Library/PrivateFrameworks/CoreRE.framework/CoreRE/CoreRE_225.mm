uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 32) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + 32) % *(v4 + 24), *(v7 + 32));
        v8 = *(a2 + 16) + v6;
        *(result + 8) = *(v8 - 24);
        *(result + 48) = 0;
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        *(result + 52) = 0x7FFFFFFFLL;
        *(result + 16) = *(v8 - 16);
        *(v8 - 16) = 0;
        v9 = *(result + 24);
        *(result + 24) = *(v8 - 8);
        *(v8 - 8) = v9;
        v10 = *(result + 32);
        *(result + 32) = *v8;
        *v8 = v10;
        *(result + 40) = *(v8 + 8);
        *(v8 + 8) = 0;
        LODWORD(v10) = *(result + 44);
        *(result + 44) = *(v8 + 12);
        *(v8 + 12) = v10;
        LODWORD(v10) = *(result + 48);
        *(result + 48) = *(v8 + 16);
        *(v8 + 16) = v10;
        LODWORD(v10) = *(result + 52);
        *(result + 52) = *(v8 + 20);
        *(v8 + 20) = v10;
        ++*(result + 56);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 72;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
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
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24), *(v17 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

double re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = a1[2] + (i << 6);
        if ((*v5 & 0x80000000) != 0)
        {
          *v5 &= ~0x80000000;
          v6 = *(v5 + 16);
          if (v6)
          {
            v7 = *(v5 + 48);
            if (v7)
            {
              v8 = *(v5 + 32);
              if (v8)
              {
                v9 = v7 + 112 * v8;
                v10 = *(v5 + 48);
                do
                {
                  *v10 = 0;
                  ++*(v10 + 8);
                  v10 += 112;
                }

                while (v10 != v9);
              }

              (*(*v6 + 40))(v6);
            }

            *(v5 + 48) = 0;
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
            *(v5 + 16) = 0;
            ++*(v5 + 40);
            v3 = *(a1 + 8);
          }
        }
      }

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

void *re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = v8 + 112 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 2) = 0;
          re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, v8);
          *v8 = 0;
          ++*(v8 + 8);
          v8 += 112;
          v11 += 14;
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

uint64_t re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(uint64_t a1)
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
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 32);
        }

        v4 += 72;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 6), *(v7 + v5 + 64));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 4);
        v11 = *(v9 + 8);
        *(v8 + 16) = 0u;
        v8 += 16;
        *(v8 - 12) = v10;
        *(v8 - 8) = v11;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

uint64_t re::BucketArray<re::LightContext,16ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightContext,16ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 15);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 6);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 3);
      re::FixedArray<CoreIKTransform>::deinit(v4);
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

uint64_t re::DynamicArray<re::FilterView>::deinit(uint64_t a1)
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
        v5 = 688 * v4;
        do
        {
          re::DynamicArray<re::MeshScene>::deinit(v3 + 640);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 688);
          v5 -= 688;
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

uint64_t re::DynamicArray<re::ShadowView>::deinit(uint64_t a1)
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
        v5 = 656 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 656);
          v5 -= 656;
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

void *re::FixedArray<re::RenderFrameContextBuilder::Result::PerSceneData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 1568 * v2;
      do
      {
        re::RenderFrameContextBuilder::Result::PerSceneData::~PerSceneData(v4);
        v4 = (v6 + 1568);
        v5 -= 1568;
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

void re::RenderFrameContextBuilder::Result::PerSceneData::~PerSceneData(re::RenderFrameContextBuilder::Result::PerSceneData *this)
{
  if (*(this + 1528) == 1)
  {
    *(this + 192) = 0;
  }

  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1040);
  re::StringID::destroyString((this + 656));
  re::BucketArray<unsigned long,4ul>::deinit(this + 568);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 568);
  re::BucketArray<unsigned long,4ul>::deinit(this + 512);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 512);
  re::FixedArray<CoreIKTransform>::deinit(this + 55);
  re::FixedArray<CoreIKTransform>::deinit(this + 52);
  re::FixedArray<CoreIKTransform>::deinit(this + 49);
  re::FixedArray<CoreIKTransform>::deinit(this + 46);
  re::FixedArray<CoreIKTransform>::deinit(this + 43);
  re::FixedArray<CoreIKTransform>::deinit(this + 40);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 34);
  re::BucketArray<re::LightContext,16ul>::deinit(this + 216);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 216);
  re::DynamicArray<re::FilterView>::deinit(this + 176);
  re::DynamicArray<re::ShadowView>::deinit(this + 136);
  re::BucketArray<re::MeshSceneCollection,16ul>::deinit(this + 40);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 40);
  *(this + 1) = 0;
}

uint64_t re::BucketArray<re::MeshSceneCollection,16ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](a1, i);
      re::DynamicArray<re::MeshScene>::deinit(v4);
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

uint64_t re::RenderFrameContextBuilder::Result::PerSceneData::PerSceneData(uint64_t a1, re::Allocator *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  re::BucketArray<re::MeshSceneCollection,16ul>::init(a1 + 40, a2, 1uLL);
  *(a1 + 168) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  re::DynamicArray<re::ShadowView>::setCapacity((a1 + 136), 0);
  ++*(a1 + 160);
  *(a1 + 176) = a2;
  *(a1 + 208) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  re::DynamicArray<re::FilterView>::setCapacity((a1 + 176), 0);
  ++*(a1 + 200);
  re::LightContexts::LightContexts((a1 + 216), a2);
  re::PortalInfo::PortalInfo((a1 + 512), a2);
  bzero((a1 + 632), 0x368uLL);
  *(a1 + 664) = &str_67;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *(a1 + 752) = 0u;
  *(a1 + 768) = vnegq_f32(v4);
  *(a1 + 1128) = 0;
  *(a1 + 784) = v4;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 1092) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  *(a1 + 1152) = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 1160) = _D0;
  *(a1 + 1168) = 1065353216;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1207) = 0;
  *(a1 + 1212) = 0xFFFFFFFF00000001;
  *(a1 + 1220) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1376) = 65537;
  *(a1 + 1380) = 1;
  *(a1 + 1384) = xmmword_1E3060D60;
  *(a1 + 1400) = 16788070;
  *(a1 + 1408) = 0;
  *(a1 + 1425) = 1;
  *(a1 + 1440) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1544) = 0u;
  return a1;
}

uint64_t *re::BucketArray<re::MeshSceneCollection,16ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshSceneCollection,16ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::MeshSceneCollection,16ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 16 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 640, 0);
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

void *re::DynamicArray<re::ShadowView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ShadowView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x290uLL))
        {
          v2 = 656 * a2;
          result = (*(*result + 32))(result, 656 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 656, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v44, v46);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v45, v47);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_28:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 656 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v16;
          v18 = *(v8 + 96);
          v17 = *(v8 + 112);
          v19 = *(v8 + 80);
          *(v11 + 64) = *(v8 + 128);
          *(v11 + 6) = v18;
          *(v11 + 7) = v17;
          *(v11 + 5) = v19;
          *(v11 + 4) = *(v8 + 64);
          LODWORD(v13) = *(v8 + 144);
          *(v11 + 144) = v13;
          if (v13 == 1)
          {
            v20 = *(v8 + 160);
            v21 = *(v8 + 176);
            v22 = *(v8 + 208);
            *(v11 + 12) = *(v8 + 192);
            *(v11 + 13) = v22;
            *(v11 + 10) = v20;
            *(v11 + 11) = v21;
          }

          v23 = *(v8 + 224);
          *(v11 + 224) = v23;
          if (v23 == 1)
          {
            v24 = *(v8 + 240);
            v25 = *(v8 + 256);
            v26 = *(v8 + 288);
            *(v11 + 17) = *(v8 + 272);
            *(v11 + 18) = v26;
            *(v11 + 15) = v24;
            *(v11 + 16) = v25;
          }

          v27 = *(v8 + 304);
          v11[40] = *(v8 + 320);
          *(v11 + 19) = v27;
          v28 = *(v8 + 336);
          v29 = *(v8 + 352);
          v30 = *(v8 + 384);
          *(v11 + 23) = *(v8 + 368);
          *(v11 + 24) = v30;
          *(v11 + 21) = v28;
          *(v11 + 22) = v29;
          v32 = *(v8 + 432);
          v31 = *(v8 + 448);
          v33 = *(v8 + 416);
          *(v11 + 232) = *(v8 + 464);
          *(v11 + 27) = v32;
          *(v11 + 28) = v31;
          *(v11 + 26) = v33;
          *(v11 + 25) = *(v8 + 400);
          v34 = *(v8 + 480);
          *(v11 + 480) = v34;
          if (v34 == 1)
          {
            v35 = *(v8 + 496);
            v36 = *(v8 + 512);
            v37 = *(v8 + 544);
            *(v11 + 33) = *(v8 + 528);
            *(v11 + 34) = v37;
            *(v11 + 31) = v35;
            *(v11 + 32) = v36;
          }

          v38 = *(v8 + 560);
          *(v11 + 560) = v38;
          if (v38 == 1)
          {
            v39 = *(v8 + 576);
            v40 = *(v8 + 592);
            v41 = *(v8 + 624);
            *(v11 + 38) = *(v8 + 608);
            *(v11 + 39) = v41;
            *(v11 + 36) = v39;
            *(v11 + 37) = v40;
          }

          v42 = *(v8 + 640);
          *(v11 + 640) = v42;
          if (v42 == 1)
          {
            *(v11 + 641) = *(v8 + 641);
          }

          v43 = *(v8 + 644);
          *(v11 + 644) = v43;
          if (v43 == 1)
          {
            *(v11 + 162) = *(v8 + 648);
          }

          *(v11 + 652) = *(v8 + 652);
          re::DynamicString::deinit(v8);
          v8 += 656;
          v11 += 82;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

void *re::DynamicArray<re::FilterView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FilterView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x2B0uLL))
        {
          v2 = 688 * a2;
          result = (*(*result + 32))(result, 688 * a2, 16);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 688, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v44, v46);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v45, v47);
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
        v10 = v8 + 688 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v16;
          v18 = *(v8 + 96);
          v17 = *(v8 + 112);
          v19 = *(v8 + 80);
          *(v11 + 64) = *(v8 + 128);
          *(v11 + 6) = v18;
          *(v11 + 7) = v17;
          *(v11 + 5) = v19;
          *(v11 + 4) = *(v8 + 64);
          LODWORD(v13) = *(v8 + 144);
          *(v11 + 144) = v13;
          if (v13 == 1)
          {
            v20 = *(v8 + 160);
            v21 = *(v8 + 176);
            v22 = *(v8 + 208);
            *(v11 + 12) = *(v8 + 192);
            *(v11 + 13) = v22;
            *(v11 + 10) = v20;
            *(v11 + 11) = v21;
          }

          v23 = *(v8 + 224);
          *(v11 + 224) = v23;
          if (v23 == 1)
          {
            v24 = *(v8 + 240);
            v25 = *(v8 + 256);
            v26 = *(v8 + 288);
            *(v11 + 17) = *(v8 + 272);
            *(v11 + 18) = v26;
            *(v11 + 15) = v24;
            *(v11 + 16) = v25;
          }

          v27 = *(v8 + 304);
          v11[40] = *(v8 + 320);
          *(v11 + 19) = v27;
          v28 = *(v8 + 336);
          v29 = *(v8 + 352);
          v30 = *(v8 + 384);
          *(v11 + 23) = *(v8 + 368);
          *(v11 + 24) = v30;
          *(v11 + 21) = v28;
          *(v11 + 22) = v29;
          v32 = *(v8 + 432);
          v31 = *(v8 + 448);
          v33 = *(v8 + 416);
          *(v11 + 232) = *(v8 + 464);
          *(v11 + 27) = v32;
          *(v11 + 28) = v31;
          *(v11 + 26) = v33;
          *(v11 + 25) = *(v8 + 400);
          v34 = *(v8 + 480);
          *(v11 + 480) = v34;
          if (v34 == 1)
          {
            v35 = *(v8 + 496);
            v36 = *(v8 + 512);
            v37 = *(v8 + 544);
            *(v11 + 33) = *(v8 + 528);
            *(v11 + 34) = v37;
            *(v11 + 31) = v35;
            *(v11 + 32) = v36;
          }

          v38 = *(v8 + 560);
          *(v11 + 560) = v38;
          if (v38 == 1)
          {
            v39 = *(v8 + 576);
            v40 = *(v8 + 592);
            v41 = *(v8 + 624);
            *(v11 + 38) = *(v8 + 608);
            *(v11 + 39) = v41;
            *(v11 + 36) = v39;
            *(v11 + 37) = v40;
          }

          v11[84] = 0;
          v11[80] = 0;
          v11[82] = 0;
          v11[81] = 0;
          *(v11 + 166) = 0;
          v11[80] = *(v8 + 640);
          *(v8 + 640) = 0;
          v11[81] = *(v8 + 648);
          *(v8 + 648) = 0;
          v42 = v11[82];
          v11[82] = *(v8 + 656);
          *(v8 + 656) = v42;
          v43 = v11[84];
          v11[84] = *(v8 + 672);
          *(v8 + 672) = v43;
          ++*(v8 + 664);
          ++*(v11 + 166);
          v11[85] = *(v8 + 680);
          re::DynamicArray<re::MeshScene>::deinit(v8 + 640);
          re::DynamicString::deinit(v8);
          v11 += 86;
          v8 += 688;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_24;
    }
  }

  return result;
}

re::LightContexts *re::LightContexts::LightContexts(re::LightContexts *this, re::Allocator *a2)
{
  *this = 0u;
  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  re::BucketArray<re::LightContext,16ul>::init(this, a2, 0);
  *(this + 22) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 92) = 0x7FFFFFFFLL;
  *(this + 13) = a2;
  *(this + 7) = 0u;
  *(this + 16) = a2;
  *(this + 136) = 0u;
  *(this + 19) = a2;
  *(this + 10) = 0u;
  *(this + 22) = a2;
  *(this + 184) = 0u;
  *(this + 25) = a2;
  *(this + 13) = 0u;
  *(this + 28) = a2;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0;
  *(this + 144) = 0;
  *(this + 17) = 0u;
  return this;
}

_anonymous_namespace_ *re::BucketArray<re::LightContext,16ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::LightContext,16ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::LightContext,16ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 16 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 2688, 0);
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

re::PortalInfo *re::PortalInfo::PortalInfo(re::PortalInfo *this, re::Allocator *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::init(this, a2, 1uLL);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::init(this + 56, a2, 1uLL);
  *(this + 56) = 0;
  *(this + 114) = 0;
  return this;
}

uint64_t *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
  }

  return result;
}

uint64_t *re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
  }

  return result;
}

void *re::DynamicInlineArray<re::KeyValuePair<unsigned short,re::LightContextBuilder::LightArrays>,8ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 0;
    v3 = 352 * *result;
    do
    {
      re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v1[v2 / 8 + 38]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 38]);
      re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v1[v2 / 8 + 31]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 31]);
      re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v1[v2 / 8 + 24]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 24]);
      re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v1[v2 / 8 + 17]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 17]);
      re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v1[v2 / 8 + 10]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 10]);
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v1[v2 / 8 + 3]);
      result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 3]);
      v2 += 352;
    }

    while (v3 != v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

double re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = v6 + v4 + 64;
          re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(v6 + v4 + 288);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 288);
          re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(v8 + 232);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 232);
          re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(v8 + 176);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 176);
          re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(v8 + 120);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 120);
          re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(v9);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v9);
          re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(v8 + 8);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 8);
          v3 = *(a1 + 8);
        }

        v4 += 352;
      }

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

uint64_t re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1, i);
      re::DynamicArray<re::RectAreaLightInfo>::deinit(v4);
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

uint64_t re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 5);
      re::DynamicArray<re::DynamicLightShadowInfo>::deinit(v4);
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

unint64_t re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](uint64_t a1, unint64_t a2)
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

uint64_t re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 5);
      re::DynamicArray<re::SpotLightInfo>::deinit(v4);
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

uint64_t re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 5);
      re::DynamicArray<re::RectAreaLightInfo>::deinit(v4);
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

uint64_t re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a1, i);
      re::FixedArray<re::FixedArray<unsigned int>>::deinit((v4 + 40));
      re::DynamicArray<re::DirectionalLightInfo>::deinit(v4);
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

uint64_t re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1, i);
      re::DynamicArray<unsigned long>::deinit(v4);
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

double re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

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

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                v21 = v17[1];
                *(v20 + 8) = *v17;
                *(v20 + 16) = v21;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 24 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 24 * v4;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0>,void ()(re::LightInfoArrays &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D11BF0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0>,void ()(re::LightInfoArrays &)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v4 = (a2 + 104);
  v5 = *a2;
  re::LightContextBuilder::addAmbientLights(*(a1 + 8), *a2, a2 + 1);
  re::LightContextBuilder::addDirectionalLights(*(a1 + 8), v5, a2 + 6);
  re::LightContextBuilder::addRealWorldProxyLights(*(a1 + 8), v5, a2 + 11);
  re::LightContextBuilder::addSpotLights(*(a1 + 8), v5, a2 + 16);
  re::LightContextBuilder::addPointLights(*(a1 + 8), v5, a2 + 21);
  v6 = *(a1 + 8);

  return re::LightContextBuilder::addRectAreaLights(v6, v5, v4);
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0>,void ()(re::LightInfoArrays &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
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

uint64_t re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
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

__n128 std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1>,void ()(re::StencilPortal &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1>,void ()(re::StencilPortal &)>::operator()(uint64_t a1, void *a2)
{
  result = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(*(a1 + 24), *a2 >> 1);
  if (result)
  {
    v4 = result;
    v5 = *result;
    v6 = *(a1 + 16);
    v7 = v6[13];
    if (v7)
    {
      v8 = *(v7 + 40);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v7, i);
          result = re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::addUninitialized(v5 + 512);
          *result = v10;
        }

        v6 = *(a1 + 16);
      }
    }

    v11 = v6[14];
    if (v11)
    {
      v12 = *(v11 + 40);
      if (v12)
      {
        for (j = 0; j != v12; ++j)
        {
          v14 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v11, j);
          result = re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::addUninitialized(v5 + 568);
          *result = v14;
        }

        v6 = *(a1 + 16);
      }
    }

    v15 = v6[1];
    v16 = *v4;
    if ((*(*v4 + 1528) & 1) == 0)
    {
      *(v16 + 1528) = 1;
    }

    *(v16 + 1536) = v15;
  }

  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1>,void ()(re::StencilPortal &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x170uLL))
        {
          v2 = 368 * a2;
          result = (*(*result + 32))(result, 368 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 368, a2);
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
        v10 = 0;
        v11 = 368 * v9;
        do
        {
          re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(&v7[v10 / 8], v8 + v10);
          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + v10 + 312));
          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + v10 + 264));
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v8 + v10 + 216));
          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + v10 + 168));
          re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + v10 + 120));
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 368;
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

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2>,void ()(re::MeshShadowPerSceneUpdateData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D11D50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2>,void ()(re::MeshShadowPerSceneUpdateData &)>::operator()(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*v3)
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

        re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(*(a1 + 1), v10);
      }

      else
      {
        re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(v3, v6);
        ++*(v3 + 24);
      }
    }

    v5 = *(v3 + 16);
  }

  result = re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(*(v3 + 32) + 368 * v5, a2);
  ++*(v3 + 16);
  ++*(v3 + 24);
  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2>,void ()(re::MeshShadowPerSceneUpdateData &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::RenderGraphDataStoreWrapper<re::OpenSkyData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11DF8;
  v2 = a1 + 13;
  re::DynamicArray<unsigned long>::deinit((a1 + 18));
  re::DynamicArray<unsigned long>::deinit(v2);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::OpenSkyData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11DF8;
  v1 = a1 + 13;
  re::DynamicArray<unsigned long>::deinit((a1 + 18));
  re::DynamicArray<unsigned long>::deinit(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3>,void ()(re::MeshScene &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D11E20;
  a2[1] = v2;
  return result;
}

double std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3>,void ()(re::MeshScene &)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (*v2)
  {
    *&result = re::DynamicArray<re::MeshScene>::add(v2, a2).n128_u64[0];
  }

  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3>,void ()(re::MeshScene &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<re::MeshSceneCollection,16ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 16 * v3)
  {
    re::BucketArray<re::MeshSceneCollection,16ul>::setBucketsCapacity(a1, (v2 + 16) >> 4);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 4)
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
    v16 = v2 >> 4;
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

  v5 = *(v4 + 8 * (v2 >> 4));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 0xF);
}

void re::RenderGraphMotionBlurNode::configure(re::RenderGraphMotionBlurNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  *(this + 60) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 520));
  *(this + 61) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 544));
  *(this + 62) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 568));
  *(this + 59) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 592));

  re::RenderGraphFullscreenNode::configure(this, a2, a3, a4);
}

void re::RenderGraphMotionBlurNode::execute(re::RenderGraphMotionBlurNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v37, 5054, 0, 0, 0, 0);
  v4 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!*(v4 + 624))
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4;
  if (!*(v4 + 128))
  {
LABEL_20:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v23, v26);
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v24, v27);
    __break(1u);
    return;
  }

  v35 = *(v4 + 656);
  v36 = *(v4 + 640);
  v33 = *(v4 + 688);
  v34 = *(v4 + 672);
  if (*(v4 + 224) == 1)
  {
    v7 = *(v4 + 256);
    v39 = *(v4 + 240);
    v40 = v7;
    v8 = *(v4 + 288);
    v41 = *(v4 + 272);
    v42 = v8;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(&v39, (v4 + 144));
  }

  if (!v6[3].i64[0])
  {
    goto LABEL_21;
  }

  re::RenderCamera::computeInverseTransform(v38, v6 + 4);
  v9 = 0;
  v10 = v39;
  v11 = v40;
  v12 = v41;
  v13 = v42;
  v43[0] = v38[0];
  v43[1] = v38[1];
  v43[2] = v38[2];
  v43[3] = v38[3];
  do
  {
    v44.columns[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v43[v9])), v11, *&v43[v9], 1), v12, v43[v9], 2), v13, v43[v9], 3);
    ++v9;
  }

  while (v9 != 4);
  v45 = __invert_f4(v44);
  v31 = v45.columns[1];
  v32 = v45.columns[0];
  v29 = v45.columns[3];
  v30 = v45.columns[2];
  v14 = *(this + 126) * *(this + 127);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v44, (*a2 + 16), 0x90uLL, 0x10uLL);
  v15 = v44.columns[1].i64[0];
  v28 = v44.columns[0].i64[1];
  v16 = v44.columns[0].i64[0] + v44.columns[0].u32[2];
  *v16 = v32;
  *(v16 + 16) = v31;
  *(v16 + 32) = v30;
  *(v16 + 48) = v29;
  *(v16 + 64) = v36;
  *(v16 + 80) = v35;
  *(v16 + 96) = v34;
  *(v16 + 112) = v33;
  *(v16 + 128) = v14;
  v44.columns[0].i64[0] = v15;
  v44.columns[1].i32[2] = 0;
  v44.columns[2].i64[0] = v28;
  if (*(this + 512) == 1)
  {
    v17 = *(this + 59);
  }

  else if (v14 >= 0.25)
  {
    if (v14 >= 0.6)
    {
      v17 = *(this + 62);
    }

    else
    {
      v17 = *(this + 61);
    }
  }

  else
  {
    v17 = *(this + 60);
  }

  *(this + 41) = v17;
  v18 = *a2;
  *&v43[0] = 0x64A435BF9C14DD23;
  re::BufferTable::setBuffer((v18 + 480), v43, &v44);
  re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
  v19 = *a2;
  *&v43[0] = 0x64A435BF9C14DD23;
  re::BufferTable::removeBuffer((v19 + 480), v43);
  if (v44.columns[1].i32[2] != -1)
  {
    (off_1F5D11F90[v44.columns[1].u32[2]])(v43, &v44);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v37, v20, v21);
}

void *re::allocInfo_MotionBlurUserParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_515, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_515))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF738, "MotionBlurUserParameters");
    __cxa_guard_release(&_MergedGlobals_515);
  }

  return &unk_1EE1BF738;
}

void re::initInfo_MotionBlurUserParameters(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xD00187F985DB45A4;
  v14[1] = "MotionBlurUserParameters";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BF6D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF6D0))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_float(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "exposureTime";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BF6F0 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_uint32_t(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "frameRate";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x400000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BF6F8 = v12;
    __cxa_guard_release(&qword_1EE1BF6D0);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BF6F0;
  *(this + 9) = re::internal::defaultConstruct<re::MotionBlurUserParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MotionBlurUserParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::MotionBlurUserParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::MotionBlurUserParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::allocInfo_RenderGraphMotionBlurNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF6E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF7C8, "RenderGraphMotionBlurNode");
    __cxa_guard_release(&qword_1EE1BF6E0);
  }

  return &unk_1EE1BF7C8;
}

void re::initInfo_RenderGraphMotionBlurNode(re *this, re::IntrospectionBase *a2)
{
  v34[0] = 0x642F8AC82BD1C86ELL;
  v34[1] = "RenderGraphMotionBlurNode";
  if (v34[0])
  {
    if (v34[0])
    {
    }
  }

  *(this + 2) = v35;
  if ((atomic_load_explicit(&qword_1EE1BF6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF6E8))
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
    qword_1EE1BF700 = v7;
    v8 = re::introspectionAllocator();
    v9 = v8;
    v10 = qword_1EE1BF6D8;
    if (!qword_1EE1BF6D8)
    {
      v10 = re::allocInfo_MotionBlurUserParameters(v8);
      qword_1EE1BF6D8 = v10;
      re::initInfo_MotionBlurUserParameters(v10, v11);
    }

    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "motionBlurUserParameters";
    *(v12 + 16) = v10;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1F800000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BF708 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_BOOL(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "debugPassthrough";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x20000000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BF710 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_AssetHandle(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "motionBlurLowSampleCountMaterial";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x20800000003;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1BF718 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_AssetHandle(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "motionBlurMediumSampleCountMaterial";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x22000000004;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1BF720 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_AssetHandle(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "motionBlurHighSampleCountMaterial";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x23800000005;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1BF728 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_AssetHandle(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "debugPassthroughMaterial";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x25000000006;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1BF730 = v32;
    __cxa_guard_release(&qword_1EE1BF6E8);
  }

  *(this + 2) = 0x26800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1BF700;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMotionBlurNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMotionBlurNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMotionBlurNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMotionBlurNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v33 = v35;
}

double re::internal::defaultConstruct<re::RenderGraphMotionBlurNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
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
  v3 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *v3 = &unk_1F5D11EF8;
  result = 0.0;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 63) = 0x3C3C888F86;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphMotionBlurNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v1 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *v1 = &unk_1F5D11EF8;
  result = 0.0;
  *(v1 + 472) = 0u;
  *(v1 + 488) = 0u;
  *(v1 + 63) = 0x3C3C888F86;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0u;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0u;
  *(v1 + 584) = 0u;
  *(v1 + 600) = 0u;
  return result;
}

void re::RenderGraphMotionBlurNode::~RenderGraphMotionBlurNode(id *this)
{
  re::RenderGraphMotionBlurNode::~RenderGraphMotionBlurNode(this);

  JUMPOUT(0x1E6906520);
}

{
  re::AssetHandle::~AssetHandle((this + 74));
  re::AssetHandle::~AssetHandle((this + 71));
  re::AssetHandle::~AssetHandle((this + 68));
  re::AssetHandle::~AssetHandle((this + 65));

  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);
}

uint64_t re::RenderGraphVRRUnwarpNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v12 = 0;
  v15 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 42, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v23)
  {

    v23 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v12 == 1 && v13)
  {
    if (BYTE8(v13))
    {
      (*(*v13 + 40))();
    }

    v14 = 0u;
    v13 = 0u;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void re::RenderGraphVRRUnwarpNode::setup(re::RenderGraphVRRUnwarpNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 264, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 296, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::RenderGraphBuilder::write(a2, this + 280, &v6);
  re::RenderGraphNode::setup(this, a2, a3);
}

void re::RenderGraphVRRUnwarpNode::execute(re::RenderGraphVRRUnwarpNode *this, re::RenderGraphContext *a2)
{
  v4 = *(a2 + 146);
  v5 = "N2re13VRRUnwarpDataE";
  if (("N2re13VRRUnwarpDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re13VRRUnwarpDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  if (*(v4 + 64))
  {
    v9 = *(*(a2 + 5) + 48);
    v10 = (v9 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
    v11 = *(*(v4 + 72) + 4 * (v10 % *(v4 + 88)));
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(v4 + 80);
      while (*(v12 + 24 * v11 + 8) != v10)
      {
        v11 = *(v12 + 24 * v11) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          return;
        }
      }

      v13 = *(v12 + 24 * v11 + 16);
      if (v13)
      {
        v14 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(v4, v9);
        if (v14)
        {
          v15 = *(v14 + 65);
        }

        else
        {
          v15 = 0;
        }

        re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 0, 0, &v31);
        [v31 setComputePipelineState:*(this + 42)];
        re::RenderGraphContext::metalTexture(a2, this + 264, 0, 0, &v30);
        re::RenderGraphContext::metalTexture(a2, this + 280, 0, 0, &v29);
        v28 = v30;
        v27 = v29;
        if ((v15 & 1) == 0)
        {
          re::makeView2DTo2DArray(&v30, &v35);
          NS::SharedPtr<MTL::Texture>::operator=(&v28, &v35);
          if (v35)
          {
          }

          re::makeView2DTo2DArray(&v29, &v35);
          NS::SharedPtr<MTL::Texture>::operator=(&v27, &v35);
          if (v35)
          {
          }
        }

        v16 = re::RenderGraphContext::metalBuffer(a2, this + 296);
        [v31 setTexture:v28 atIndex:0];
        [v31 setTexture:v27 atIndex:1];
        re::BufferSlice::buffer(v16, v17);
        [v31 setBuffer:*v16 offset:*(v16 + 32) atIndex:0];
        v18 = [v29 width];
        v19 = [v29 height];
        v20 = [*(this + 42) threadExecutionWidth];
        v21 = [*(this + 42) maxTotalThreadsPerThreadgroup];
        v22 = *(a2 + 1);
        v23 = v21 / v20;
        v26 = v31;
        re::RenderManager::sampleComputeEncoderMTLCounterBegin(v22, &v26, 1u);

        [v31 setBytes:v13 + 8 length:2 atIndex:1];
        v35 = v18;
        v36 = v19;
        v37 = 1;
        v32 = v20;
        v33 = v23;
        v34 = 1;
        [v31 dispatchThreads:&v35 threadsPerThreadgroup:&v32];
        if (v15)
        {
          [v31 setBytes:v13 + 10 length:2 atIndex:1];
          v35 = v18;
          v36 = v19;
          v37 = 1;
          v32 = v20;
          v33 = v23;
          v34 = 1;
          [v31 dispatchThreads:&v35 threadsPerThreadgroup:&v32];
        }

        v24 = *(a2 + 1);
        v25 = v31;
        re::RenderManager::sampleComputeEncoderMTLCounterEnd(v24, &v25, 1u);

        if (v27)
        {
        }

        if (v28)
        {
        }

        if (v29)
        {
        }

        if (v30)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphVRRUnwarpNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_516, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_516))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF888, "RenderGraphVRRUnwarpNode");
    __cxa_guard_release(&_MergedGlobals_516);
  }

  return &unk_1EE1BF888;
}

void re::initInfo_RenderGraphVRRUnwarpNode(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x602B7219C45EA382;
  v21[1] = "RenderGraphVRRUnwarpNode";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1BF860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF860))
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
    qword_1EE1BF868 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_RenderGraphTargetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "unwarpedColorHandle";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x11800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BF870 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_RenderGraphTargetHandle(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "warpedColorHandle";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x10800000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BF878 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_AssetHandle(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "library";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x13800000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1BF880 = v19;
    __cxa_guard_release(&qword_1EE1BF860);
  }

  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BF868;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphVRRUnwarpNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphVRRUnwarpNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphVRRUnwarpNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphVRRUnwarpNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

double re::internal::defaultConstruct<re::RenderGraphVRRUnwarpNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D11FB0;
  *(v3 + 33) = 0;
  *(v3 + 34) = -1;
  *(v3 + 35) = 0;
  *(v3 + 36) = -1;
  *(v3 + 37) = 0;
  *(v3 + 38) = -1;
  *(v3 + 67) = 0;
  result = 0.0;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphVRRUnwarpNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D11FB0;
  *(v1 + 33) = 0;
  *(v1 + 34) = -1;
  *(v1 + 35) = 0;
  *(v1 + 36) = -1;
  *(v1 + 37) = 0;
  *(v1 + 38) = -1;
  *(v1 + 67) = 0;
  result = 0.0;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  return result;
}

void re::RenderGraphVRRUnwarpNode::~RenderGraphVRRUnwarpNode(re::RenderGraphVRRUnwarpNode *this)
{
  re::RenderGraphVRRUnwarpNode::~RenderGraphVRRUnwarpNode(this);

  JUMPOUT(0x1E6906520);
}

{
  v2 = *(this + 42);
  if (v2)
  {

    *(this + 42) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 312));

  re::RenderGraphNode::~RenderGraphNode(this);
}

void *re::allocInfo_RayTracedAmbientOcclusionSettings(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_517, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_517))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF980, "RayTracedAmbientOcclusionSettings");
    __cxa_guard_release(&_MergedGlobals_517);
  }

  return &unk_1EE1BF980;
}

void re::initInfo_RayTracedAmbientOcclusionSettings(re *this, re::IntrospectionBase *a2)
{
  v50[0] = 0xD75D01D3DD85CD42;
  v50[1] = "RayTracedAmbientOcclusionSettings";
  if (v50[0])
  {
    if (v50[0])
    {
    }
  }

  *(this + 2) = v51;
  if ((atomic_load_explicit(&qword_1EE1BF920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF920))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_float(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "rayDistributionVerticalStretchOnGround";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BF928 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_float(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "rayDistributionVerticalStretchOnWall";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x400000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BF930 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_float(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "whiteLevel";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BF938 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_float(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "minFullIntensityAngle";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xC00000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1BF940 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_short(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "ambientOcclusionType";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x1000000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1BF948 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_BOOL(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "postProcessAmbientOcclusion";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x1200000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1BF950 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_BOOL(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "accumulateAmbientOcclusion";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x1300000007;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1BF958 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_BOOL(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "temporallyReprojectAmbientOcclusion";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x1400000008;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1BF960 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::introspect_BOOL(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "denoiseAmbientOcclusion";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x1500000009;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1BF968 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::introspect_BOOL(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "reduceIntensityAtGrazingAngles";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x160000000ALL;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1BF970 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::introspect_BOOL(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "compositeAmbientOcclusion";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x170000000DLL;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1BF978 = v48;
    __cxa_guard_release(&qword_1EE1BF920);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE1BF928;
  *(this + 9) = re::internal::defaultConstruct<re::RayTracedAmbientOcclusionSettings>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RayTracedAmbientOcclusionSettings>;
  *(this + 13) = re::internal::defaultConstructV2<re::RayTracedAmbientOcclusionSettings>;
  *(this + 14) = re::internal::defaultDestructV2<re::RayTracedAmbientOcclusionSettings>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v49 = v51;
}

double re::internal::defaultConstruct<re::RayTracedAmbientOcclusionSettings>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.12500003;
  *a3 = xmmword_1E31042A0;
  *(a3 + 16) = 0;
  *(a3 + 18) = 16843009;
  *(a3 + 22) = 256;
  return result;
}

double re::internal::defaultConstructV2<re::RayTracedAmbientOcclusionSettings>(uint64_t a1)
{
  result = 0.12500003;
  *a1 = xmmword_1E31042A0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 16843009;
  *(a1 + 22) = 256;
  return result;
}

void re::SyncMechanism::resetWithNewEvent(id *this)
{
  v2 = this + 2;
  v3 = [*this newEvent];
  NS::SharedPtr<MTL::Texture>::operator=(v2, &v3);
  if (v3)
  {
  }

  this[4] = 1;
}

void *re::SyncMechanism::sync(re::SyncMechanism *this)
{
  v2 = *(this + 5);
  if (*(this + 24) == 1)
  {
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  else if ((v2 & 3) == 0)
  {
LABEL_5:
    re::SyncMechanism::resetWithNewEvent(this);
  }

  [*(this + 1) encodeSignalEvent:*(this + 2) value:(*(this + 4))++];
  result = [*(this + 1) encodeWaitForEvent:*(this + 2) value:?];
  ++*(this + 5);
  return result;
}

void re::RenderGraphVFXNode::execute(re::RenderGraphVFXNode *this, re::RenderGraphContext *a2)
{
  v144 = *MEMORY[0x1E69E9840];
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(this);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v5 + 152))
    {
      v2 = mach_absolute_time();
    }
  }

  else
  {
    v5 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v117, 5085, 0, 0, 0, 0);
  *(a2 + 1553) = 3;
  v8 = *(a2 + 146);
  v9 = "N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE" & 0x8000000000000000) != 0)
  {
    v10 = ("N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  if (*(v8 + 16))
  {
    v13 = (*(*(a2 + 5) + 48) + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583E9) ^ v9;
    v14 = *(*(v8 + 24) + 4 * (v13 % *(v8 + 40)));
    if (v14 != 0x7FFFFFFF)
    {
      v15 = *(v8 + 32);
      while (*(v15 + 24 * v14 + 8) != v13)
      {
        v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
        if (v14 == 0x7FFFFFFF)
        {
          goto LABEL_101;
        }
      }

      v16 = *(v15 + 24 * v14 + 16);
      if (v16)
      {
        TextureTableByName = re::MaterialManager::findTextureTableByName(*(*(a2 + 1) + 24), "VFXTextureTable");
        if (TextureTableByName)
        {
          v18 = TextureTableByName;
          v130[0] = 0xC10C601B47401E3;
          (**TextureTableByName)(&v109);
          ((*v18)[3])(v130, v18, BYTE2(v109));
          v19 = *a2;
          *&v113 = 0x6C456FCA259980DELL;
          re::DynamicTextureTableAdd((v19 + 368), &v113, v130);
          if (v130[0])
          {
          }
        }

        {
          v20 = *re::graphicsLogObjects(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v130[0]) = 0;
            _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Cannot retrieve VFX texture table, VFX couldn't be rendered", v130, 2u);
          }
        }

        v21 = *(v16 + 8);
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        re::RenderCamera::computeLocalTransform(&v113, (v21 + 48));
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        if (*(v21 + 160) == 1)
        {
          v23 = *(v21 + 192);
          v109 = *(v21 + 176);
          v110 = v23;
          v24 = *(v21 + 224);
          v111 = *(v21 + 208);
          v112 = v24;
        }

        else
        {
          re::Projection::cullingProjectionMatrix(&v109, (v21 + 80));
        }

        v108 = *(*(a2 + 1) + 72);
        if (!v108)
        {
          re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) ", "vfxManager", "simulateVFXScenes", 269);
          _os_crash("assertion failure: (vfxManager) ");
          __break(1u);
        }

        v25 = *(*a2 + 32);
        v129 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v125 = v25;
        re::DynamicArray<float *>::setCapacity(&v125, 0);
        ++v128;
        v26 = *(v21 + 16);
        if (v126 < v26)
        {
          re::DynamicArray<float *>::setCapacity(&v125, v26);
        }

        v27 = *(*a2 + 32);
        v124 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v120 = v27;
        v28 = re::DynamicArray<float *>::setCapacity(&v120, 0);
        ++v123;
        v29 = *(v21 + 16);
        v99 = v21;
        if (v121 < v29)
        {
          v28 = re::DynamicArray<float *>::setCapacity(&v120, v29);
          v29 = *(v21 + 16);
        }

        v96 = v2;
        v97 = v5;
        v100 = *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL;
        v30 = *(v108 + 208);
        if (v29)
        {
          v31 = *(v21 + 32);
          v32 = &v31[v29];
          while (1)
          {
            v33 = *v31;
            if (*(*v31 + 744) == -2)
            {
              v34 = v122;
              if (v122 >= v121)
              {
                v35 = v122 + 1;
                if (v121 < v122 + 1)
                {
                  if (v120)
                  {
                    v36 = 8;
                    if (v121)
                    {
                      v36 = 2 * v121;
                    }

                    if (v36 <= v35)
                    {
                      v37 = v122 + 1;
                    }

                    else
                    {
                      v37 = v36;
                    }

                    v28 = re::DynamicArray<float *>::setCapacity(&v120, v37);
                  }

                  else
                  {
                    v28 = re::DynamicArray<float *>::setCapacity(&v120, v35);
                    ++v123;
                  }
                }

                v34 = v122;
              }

              *(v124 + 8 * v34) = v33;
              v122 = v34 + 1;
              ++v123;
              goto LABEL_71;
            }

            v130[0] = *(*v31 + 744);
            v28 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v108 + 56, v130);
            if (!v28 || *(v28 + 3) < v100)
            {
              break;
            }

LABEL_71:
            if (++v31 == v32)
            {
              goto LABEL_72;
            }
          }

          v38 = (v33 + 744);
          if (v127)
          {
            v39 = 8 * v127;
            v40 = v129;
            while (*v40 != *v38)
            {
              ++v40;
              v39 -= 8;
              if (!v39)
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
            v40 = v129;
          }

          if (v40 == &v129[v127])
          {
LABEL_50:
            re::DynamicArray<re::TransitionCondition *>::add(&v125, v38);
          }

          v41 = *(v33 + 752);
          v42 = v41;
          if (!v41)
          {
LABEL_64:

            goto LABEL_71;
          }

          v43 = [v41 parentNode];
          [v43 setTransform:{*(v33 + 832), *(v33 + 848), *(v33 + 864), *(v33 + 880)}];
          v44 = [v42 setWorldTransform:{*(v33 + 768), *(v33 + 784), *(v33 + 800), *(v33 + 816)}];
          v45 = *(v33 + 1008);
          v46 = v45 ^ 1u;
          v47 = *(v33 + 900);
          if (!re::shouldMergeVFXEffectsIntoOneWorld(v44))
          {
            v49 = [*(v33 + 752) world];
            v50 = v49;
            if (v45)
            {
              v51 = 1.0;
              if (v47)
              {
                v51 = *(v33 + 904);
              }

              v52 = [v49 clock];
              *&v53 = v51;
              [v52 setSpeed:v53];
            }

            v54 = [v50 clock];
            [v54 setPaused:v46];

            if (*(v33 + 1009) == 1)
            {
              [v50 restart];
            }

            goto LABEL_63;
          }

          v48 = [v42 isPaused];
          if (*(v33 + 1009))
          {
            [v42 setPaused:v45 ^ 1u];
          }

          else
          {
            v55 = v48;
            [v42 setPaused:v45 ^ 1u];
            if ((v47 & 1) == 0 && ((v55 ^ v46) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          v118[0] = MEMORY[0x1E69E9820];
          v118[1] = 3221225472;
          v118[2] = ___ZN2re12_GLOBAL__N_117simulateVFXScenesIPNS_8VFXSceneEEEvRNS_18RenderGraphContextERKNS_12DynamicArrayIT_EERK13simd_float4x4SD__block_invoke;
          v118[3] = &__block_descriptor_41_e21_v24__0__VFXNode_8_B16l;
          v118[4] = v33;
          v119 = v47;
          [v42 enumerateHierarchyUsingBlock:v118];
LABEL_63:

          goto LABEL_64;
        }

LABEL_72:
        *v130 = v113;
        v131 = v114;
        v132 = v115;
        v133 = v116;
        v140 = xmmword_1E30474D0;
        v141 = 0u;
        v139 = 0u;
        re::decomposeScaleRotationTranslation<float>(v130, &v141, &v140, &v139);
        v98 = v124;
        if (v122)
        {
          v104 = v139;
          v106 = v140;
          v56 = 8 * v122;
          __asm { FMOV            V0.4S, #1.0 }

          v102 = _Q0;
          v61 = v124;
          do
          {
            v62 = *v61;
            v63 = *(*v61 + 752);
            v64 = v63;
            if ((*(v62 + 1011) & 1) == 0)
            {
              if (*(v62 + 1009) == 1)
              {
                v65 = [v63 scene];
                [v65 restart];
              }

              v66 = [v64 scene];
              v130[0] = MEMORY[0x1E69E9820];
              v130[1] = 3221225472;
              *&v131 = ___ZN2re12_GLOBAL__N_123simulateVFXLegacyScenesERNS_18RenderGraphContextERKNS_12DynamicArrayIPKNS_8VFXSceneEEERK13simd_float4x4SC_f_block_invoke;
              *(&v131 + 1) = &unk_1E87217D0;
              v67 = v64;
              v135 = v67;
              v136 = v62;
              v132 = v102;
              v133 = v106;
              v134 = v104;
              v137 = &v109;
              v138 = v30;
              [v66 performTransaction:v130];

              v68 = [v67 drawCallCount];
              *(v62 + 912) = v68;
              *(v62 + 1011) = 1;
              re::globalAllocators(v68);
              v69 = *(*a2 + 32);
              v70 = (*(*v69 + 32))(v69, 8, 8);
              v71 = [v67 recycleBuffersGetCompletion];
              v72 = _Block_copy(v71);
              *v70 = v72;
              v142 = re::globalAllocators(v72)[2];
              v143 = &v141;
              v141.i64[0] = &unk_1F5D121A8;
              (*(*v69 + 16))(v69, v70, &v141);
              re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v141);
            }

            ++v61;
            v56 -= 8;
          }

          while (v56);
        }

        if (v127)
        {
          v73 = v129;
          v74 = 8 * v127;
          do
          {
            v75 = *v73;
            v141.i64[0] = *v73;
            v76 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v108 + 56, &v141);
            if (v76)
            {
              v77 = *(v76 + 16);
              v78 = [v77 pointOfView];
              [v78 setTransform:{*&v113, *&v114, *&v115, *&v116}];
              v105 = *&v111;
              v107 = *&v112;
              v101 = *&v109;
              v103 = *&v110;
              v79 = [v78 camera];
              [v79 setProjectionTransform:{v101, v103, v105, v107}];

              v130[0] = MEMORY[0x1E69E9820];
              v130[1] = 3221225472;
              *&v131 = ___ZN2re12_GLOBAL__N_117simulateVFXScenesIPNS_8VFXSceneEEEvRNS_18RenderGraphContextERKNS_12DynamicArrayIT_EERK13simd_float4x4SD__block_invoke_2;
              *(&v131 + 1) = &__block_descriptor_48_e21_v24__0__VFXNode_8_B16l;
              *&v132 = &v113;
              *(&v132 + 1) = &v109;
              [v77 enumerateSecondaryPointOfViewsUsingBlock:v130];
              [v77 updateWithDeltaTime:v30];
              v80 = [v77 prepareDrawCalls];
              v141.i64[0] = v75;
              if (v75 != -2)
              {
                v80 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v108 + 56, &v141);
                if (v80)
                {
                  *(v80 + 3) = v100;
                }
              }

              re::globalAllocators(v80);
              v81 = *(*a2 + 32);
              v82 = (*(*v81 + 32))(v81, 8, 8);
              v83 = [v77 recycleBuffersGetCompletion];
              v84 = _Block_copy(v83);
              *v82 = v84;
              v142 = re::globalAllocators(v84)[2];
              v143 = &v141;
              v141.i64[0] = &unk_1F5D12200;
              (*(*v81 + 16))(v81, v82, &v141);

              re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v141);
            }

            ++v73;
            v74 -= 8;
          }

          while (v74);
        }

        v85 = *(v99 + 16);
        v2 = v96;
        v5 = v97;
        if (v85)
        {
          v86 = *(v99 + 32);
          v87 = 8 * v85;
          do
          {
            v88 = *v86;
            if (*(*v86 + 744) != -2)
            {
              v89 = *(v88 + 752);
              *(v88 + 912) = [v89 drawCallCount];
              *(v88 + 1011) = 1;
            }

            ++v86;
            v87 -= 8;
          }

          while (v87);
        }

        v6 = v98;
        if (v120)
        {
          _ZF = v98 == 0;
        }

        else
        {
          _ZF = 1;
        }

        if (!_ZF)
        {
          (*(*v120 + 40))();
        }

        if (v125)
        {
          v6 = v129;
          if (v129)
          {
            (*(*v125 + 40))();
          }
        }

        *(a2 + 1553) = 0;
      }
    }
  }

LABEL_101:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v117, v6, v7);
  if (v5)
  {
    if (*(v5 + 152))
    {
      v91 = mach_absolute_time();
      v92 = *(v5 + 152);
      if (v92)
      {
        v93 = v92[1208].u64[0];
        if (v93 >= v91 - v2)
        {
          v93 = v91 - v2;
        }

        v92[1208].i64[0] = v93;
        v94 = v92[1208].u64[1];
        if (v94 <= v91 - v2)
        {
          v94 = v91 - v2;
        }

        v92[1208].i64[1] = v94;
        v95 = vdupq_n_s64(1uLL);
        v95.i64[0] = v91 - v2;
        v92[1209] = vaddq_s64(v92[1209], v95);
        *(v5 + 184) = 0;
      }
    }
  }
}

void re::RenderGraphVFXNotifyFrameNode::execute(re::RenderGraphVFXNotifyFrameNode *this, re::RenderGraphContext *a2)
{
  v2 = *(this + 264);
  v3 = *(*(a2 + 1) + 72);
  if (v2 == 1)
  {
    if (v3)
    {
      re::VFXManager::beginFrame(v3, *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL);
    }
  }

  else if (v3)
  {
    re::VFXManager::endFrame(v3, *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL);
  }
}

void *re::allocInfo_RenderGraphVFXNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_518))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFA48, "RenderGraphVFXNode");
    __cxa_guard_release(&_MergedGlobals_518);
  }

  return &unk_1EE1BFA48;
}

void re::initInfo_RenderGraphVFXNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0xA5BAE2AEEC3D8B24;
  v9[1] = "RenderGraphVFXNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1BFA20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFA20))
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
    qword_1EE1BFA18 = v7;
    __cxa_guard_release(&qword_1EE1BFA20);
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BFA18;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphVFXNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphVFXNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphVFXNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphVFXNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphVFXNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D12058;
  *(result + 264) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphVFXNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D12058;
  *(result + 264) = 0;
  return result;
}

void *re::allocInfo_RenderGraphVFXNotifyFrameNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BFA28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFA28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFAD8, "RenderGraphVFXNotifyFrameNode");
    __cxa_guard_release(&qword_1EE1BFA28);
  }

  return &unk_1EE1BFAD8;
}

void re::initInfo_RenderGraphVFXNotifyFrameNode(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0xD459723956DD0C6CLL;
  v13[1] = "RenderGraphVFXNotifyFrameNode";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1BFA30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFA30))
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
    qword_1EE1BFA38 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "beginFrame";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BFA40 = v11;
    __cxa_guard_release(&qword_1EE1BFA30);
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BFA38;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphVFXNotifyFrameNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphVFXNotifyFrameNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphVFXNotifyFrameNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphVFXNotifyFrameNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphVFXNotifyFrameNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D120E8;
  *(result + 264) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphVFXNotifyFrameNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D120E8;
  *(result + 264) = 0;
  return result;
}

void re::RenderGraphVFXNode::~RenderGraphVFXNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphVFXNotifyFrameNode::~RenderGraphVFXNotifyFrameNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void ___ZN2re12_GLOBAL__N_117simulateVFXScenesIPNS_8VFXSceneEEEvRNS_18RenderGraphContextERKNS_12DynamicArrayIT_EERK13simd_float4x4SD__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 particleEmitter];
  v6 = v3;
  if (v3)
  {
    if (*(*(a1 + 32) + 1009) == 1)
    {
      [v3 killParticles];
      v3 = [v6 restart];
    }

    if (re::shouldMergeVFXEffectsIntoOneWorld(v3))
    {
      v4 = *(a1 + 32);
      v5 = 0.0;
      if (*(v4 + 1008) == 1)
      {
        LODWORD(v5) = 1.0;
        if (*(a1 + 40) == 1)
        {
          LODWORD(v5) = *(v4 + 904);
        }
      }

      [v6 setSimulationSpeed:v5];
    }
  }
}

void ___ZN2re12_GLOBAL__N_117simulateVFXScenesIPNS_8VFXSceneEEEvRNS_18RenderGraphContextERKNS_12DynamicArrayIT_EERK13simd_float4x4SD__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v13 = v3[3];
  v9 = v3[1];
  v11 = v3[2];
  v7 = *v3;
  v4 = a2;
  [v4 setWorldTransform:{*&v7, *&v9, *&v11, *&v13}];
  v5 = *(a1 + 40);
  v10 = v5[2];
  v12 = v5[3];
  v6 = *v5;
  v8 = v5[1];
  v14 = [v4 camera];

  [v14 setProjectionTransform:{*&v6, *&v8, *&v10, *&v12}];
}

uint64_t ___ZN2re12_GLOBAL__N_123simulateVFXLegacyScenesERNS_18RenderGraphContextERKNS_12DynamicArrayIPKNS_8VFXSceneEEERK13simd_float4x4SC_f_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 88) + 1008);
  v3 = [*(a1 + 80) scene];
  [v3 setIsPlaying:v2];

  if (*(*(a1 + 88) + 900) == 1)
  {
    v4 = [*(a1 + 80) scene];
    LODWORD(v5) = *(*(a1 + 88) + 904);
    [v4 setTimeScale:v5];
  }

  [*(a1 + 80) setCameraEntityTransformProjection:*(a1 + 32) :*(a1 + 48) :*(a1 + 64) :**(a1 + 96) :*(*(a1 + 96) + 16) :*(*(a1 + 96) + 32) :*(*(a1 + 96) + 48)];
  v6 = *(a1 + 88);
  v9 = 0u;
  v10 = xmmword_1E30474D0;
  v11 = 0u;
  re::decomposeScaleRotationTranslation<float>(v6 + 832, &v11, &v10, &v9);
  [*(a1 + 80) setSceneTransform:*v11.i64 :*&v10 :*&v9];
  v7 = *(a1 + 88);
  v10 = xmmword_1E30474D0;
  v11 = 0u;
  v9 = 0u;
  re::decomposeScaleRotationTranslation<float>(v7 + 768, &v11, &v10, &v9);
  [*(a1 + 80) setRootTransform:*v11.i64 :*&v10 :*&v9];
  return [*(a1 + 80) tickWithDeltaTime:*(a1 + 104)];
}

void re::internal::Callable<re::anonymous namespace::simulateVFXLegacyScenes(re::RenderGraphContext &,re::DynamicArray<re::VFXScene const*> const&,simd_float4x4 const&,simd_float4x4 const&,float)::$_0,void ()(void *)>::operator()(uint64_t a1, void (****a2)(void))
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v3[2]();
    v3 = *v2;
  }
}

void *re::internal::Callable<re::anonymous namespace::simulateVFXLegacyScenes(re::RenderGraphContext &,re::DynamicArray<re::VFXScene const*> const&,simd_float4x4 const&,simd_float4x4 const&,float)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D121A8;
  return result;
}

void *re::internal::Callable<re::anonymous namespace::simulateVFXLegacyScenes(re::RenderGraphContext &,re::DynamicArray<re::VFXScene const*> const&,simd_float4x4 const&,simd_float4x4 const&,float)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D121A8;
  return result;
}

void re::internal::Callable<void re::anonymous namespace::simulateVFXScenes<re::VFXScene *>(re::RenderGraphContext &,re::DynamicArray<re::VFXScene *> const&,simd_float4x4 const&,simd_float4x4 const&)::{lambda(void *)#1},void ()(void *)>::operator()(uint64_t a1, void (****a2)(void))
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v3[2]();
    v3 = *v2;
  }
}

void *re::internal::Callable<void re::anonymous namespace::simulateVFXScenes<re::VFXScene *>(re::RenderGraphContext &,re::DynamicArray<re::VFXScene *> const&,simd_float4x4 const&,simd_float4x4 const&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D12200;
  return result;
}

void *re::internal::Callable<void re::anonymous namespace::simulateVFXScenes<re::VFXScene *>(re::RenderGraphContext &,re::DynamicArray<re::VFXScene *> const&,simd_float4x4 const&,simd_float4x4 const&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D12200;
  return result;
}

uint64_t re::LightContextAtlasContainer::allocateTiles(re::LightContextAtlasContainer *this)
{
  if (dyld_program_sdk_at_least())
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  re::TextureAtlas::allocateTiles(this, v2);
  result = re::TextureAtlas::allocateTiles(this + 96, 1u);
  *(this + 192) = 1;
  return result;
}

uint64_t re::ProfilerOverlayRenderGraphProvider::prepareFrame(re::ProfilerOverlayRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v5[0] = 0x25D31770DB1DF3E2;
  v5[1] = "ProfilerOverlayRenderGraphProvider";
  return re::RenderGraphProviderBase::generateScopeHash(v5, a2, a3);
}

double re::ProfilerOverlayRenderGraphProvider::provide(re::ProfilerOverlayRenderGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = 0x200000000;
  v16 = -1;
  v17 = -1;
  v18 = -1;
  v19 = 0;
  v20 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v21 = _D0;
  v22 = xmmword_1E30A3B60;
  v23 = 0x2000000000;
  v24 = -1;
  v25 = -1;
  v26 = -1;
  v27 = 0;
  v28 = 0;
  v14 = 3;
  re::RenderFrame::createTarget(v13, a4, &v14, "Profiler Overlay Output");
  v29[0] = 65290051;
  re::RenderFrame::addTargetOutput(a4, v29, v13, 0);
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "ProfilerOverlay", 0);
  v11 = re::RenderGraph::addNode<re::RenderGraphProfilerOverlayNode>(RenderGraph, "Profiler Overlay Render Node");
  v29[0] = v13[0];
  v29[1] = v13[1];
  v29[2] = 0x100000000;
  v30 = xmmword_1E30474D0;
  v31 = 0;
  v32 = 0;
  *&result = re::DynamicArray<re::TargetWrite>::add((v11 + 224), v29).n128_u64[0];
  return result;
}

double re::RenderGraphProfilerOverlayNode::RenderGraphProfilerOverlayNode(re::RenderGraphProfilerOverlayNode *this, const char *a2)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D12258;
  result = 0.0;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(v2 + 19) = _Q1;
  *(v2 + 20) = xmmword_1E31044A0;
  *(v2 + 42) = 0x3F33333341A00000;
  *(v2 + 86) = 1061997773;
  *(v2 + 22) = xmmword_1E30872B0;
  *(v2 + 23) = xmmword_1E31044B0;
  *(v2 + 24) = _Q1;
  *(v2 + 100) = 1050253722;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 110) = 0;
  *(v2 + 444) = 0x7FFFFFFFLL;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 122) = 0;
  *(v2 + 492) = 0x7FFFFFFFLL;
  return result;
}

void re::RenderGraphProfilerOverlayNode::configure(re::RenderGraphProfilerOverlayNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 35))
  {
    v8 = *(*(a4 + 1) + 112);
    if (v8)
    {
      if (re::DrawingManager::shouldRenderProfilerNode(v8))
      {
        *(this + 37) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 272));
      }
    }
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

void re::RenderGraphProfilerOverlayNode::setup(re::RenderGraphProfilerOverlayNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 37))
  {
    if (!*(this + 25))
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
      v15 = 0;
      v16 = 2048;
      v17 = 0;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    re::RenderGraphBuilder::read(a2, *(this + 27), *(this + 27) + 16);
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

void re::RenderGraphProfilerOverlayNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 280))
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((a1 + 272));
    if (v4)
    {
      v5 = *(v4 + 1784);
      if (v5)
      {
        v6 = *(a1 + 280);
        if (v6)
        {
          v7 = *(v6 + 792);
        }

        else
        {
          v7 = 0;
        }

        v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
        v10 = v7 ^ (v8 >> 31) ^ v8;
        re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(&v9, v5);
        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a2, &v10, &v9);
        if (v9)
        {
        }
      }
    }
  }
}

uint64_t re::RenderGraphProfilerOverlayNode::pipelineStateWithAlphaBlending(re::RenderGraphProfilerOverlayNode *this, re::ShaderManager **a2, const RenderTargetInfo *a3)
{
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(this + 408, a3, v19);
  if (v20 != 0x7FFFFFFF)
  {
    return *(this + 53) + 72 * v20 + 56;
  }

  re::ShaderManager::makeFunction(a2[6], *(a2[6] + 46), "vsPrimitivePosClr", 0, &v17);
  re::ShaderManager::makeFunction(a2[6], *(a2[6] + 46), "fsPrimitivePosClr", 0, &v16);
  re::ShaderManager::makeRenderPipelineDescriptor(&v15, a2[6]);
  [v15 setLabel_];
  [v15 setVertexFunction_];
  [v15 setFragmentFunction_];
  v12 = v18;
  [v15 setVertexDescriptor_];
  [v15 setRasterSampleCount_];
  for (i = 0; i != 8; ++i)
  {
    v7 = &a3->var0.var0 + i;
    if (v7[1])
    {
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
    }
  }

  [v15 setDepthAttachmentPixelFormat_];
  [v15 setStencilAttachmentPixelFormat_];
  if (*(v11 + 366) == 1)
  {
    [v15 setMaxVertexAmplificationCount_];
  }

  v8 = *(v11 + 208);
  v14 = v8;
  re::mtl::Device::makeRenderPipelineState(&v14, v15, 0, &v13);
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::add(this + 408, a3, &v13);
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(this + 408, a3, v19);
  if (v20 == 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 53) + 72 * v20 + 56;
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  if (v16)
  {
  }

  if (v17)
  {
  }

  if (v12)
  {
  }

  return v9;
}

id anonymous namespace::VertexPositionColorWithAlpha::makeVertexDescriptor(_anonymous_namespace_::VertexPositionColorWithAlpha *this)
{
  v2 = [objc_msgSend(MEMORY[0x1E69741E0] alloc)];
  *this = v2;
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 layouts)];
  [objc_msgSend(objc_msgSend(v2 layouts)];
  v3 = [objc_msgSend(v2 layouts)];

  return [v3 setStepRate_];
}

void re::RenderGraphProfilerOverlayNode::executeSystemHUDRendering(re::RenderGraphContext &)::$_0::operator()(uint64_t *a1, int a2, int a3, int a4, re::DynamicString *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = re::StringID::invalid(v47);
  *&v48 = 0x3F8000003F800000;
  *(&v48 + 1) = 0x3F8000003F800000;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  re::DynamicString::setCapacity(&v53, 0);
  v55 = -1;
  re::StringID::invalid(v37);
  v41 = 0u;
  v42 = 0u;
  v44 = 0;
  v45 = 0;
  v43 = -1;
  v46 = re::kInvalidStringRenderHandle;
  v12 = *(v10 + 352);
  v39 = 0u;
  v40 = 0u;
  v38 = v12;
  HIDWORD(v38) = 1065353216;
  re::StringID::operator=(v37, (*(a1[1] + 8) + 8));
  re::StringID::operator=(v47, v37);
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v52 = v42;
  re::DynamicString::operator=(&v53, a5);
  v55 = -1;
  v13 = a1[1];
  v14 = *a1[2];
  v15 = *a1[3];
  v16 = *a1[4];
  v22 = (v16 / -2);
  v17 = (v15 / -2) + 1.0 / v14 * v15 * (a4 % v14);
  v18 = (a4 / v14 + 1);
  v19 = v15 / v14;
  v20 = *a1[5];
  v21 = v22 + 1.0 / v20 * v16 * v18;
  *&v22 = *(v10 + 380) * (v19 / a3);
  if (*&v22 > (*(v10 + 376) * (v16 / v20 / a2)))
  {
    *&v22 = *(v10 + 376) * (v16 / v20 / a2);
  }

  *&v22 = *a1[6] * *&v22;
  *&v23 = v21;
  __asm { FMOV            V5.4S, #1.0 }

  *&_Q5 = __PAIR64__(v23, LODWORD(v17));
  v49 = vmulq_n_f32(xmmword_1E3047670, *&v22);
  v50 = vmulq_n_f32(xmmword_1E3047680, COERCE_FLOAT(vdupq_lane_s32(*&v22, 0).i32[1]));
  v51 = xmmword_1E30476A0;
  v52 = _Q5;
  v29 = *(*(v13 + 8) + 64);
  re::RenderGraphContext::rtInfo(v36, v13, *(v13 + 40));
  v30 = *a1[7];
  if (v30)
  {
    v31 = *(v30 + 8);
    v35 = *(v30 + 24);
    v34 = v31;
  }

  else
  {
    *&v34 = 134217472;
    *(&v34 + 1) = 134217472;
    v35 = 0;
  }

  v32 = re::TextManager::render(v29, v36, &v34, a1[8], *a1[1], *(a1 + 9), a1[11], v47, *a1[12], 0);
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  v33 = v53;
  if (v53)
  {
    if (BYTE8(v53))
    {
      v33 = (*(*v53 + 40))();
    }

    v53 = 0u;
    v54 = 0u;
  }

  if (v47[0])
  {
    if (v47[0])
    {
    }
  }
}

uint64_t re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_0::operator()(uint64_t result, uint64_t a2, unint64_t *a3, _DWORD *a4, double a5, double a6, float a7)
{
  if (*&a5 > 1.0)
  {
    *&a5 = 1.0;
  }

  if (*&a6 < 0.0)
  {
    *&a6 = 0.0;
  }

  v7 = *(result + 16);
  v8 = v7[1];
  if (v8 <= *a3)
  {
    re::internal::assertLog(6, a2, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *a3, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v47, v55);
    __break(1u);
    goto LABEL_15;
  }

  v9 = vmulq_n_f32(**result, *&a5);
  __asm { FMOV            V0.4S, #1.0 }

  HIDWORD(v15) = HIDWORD(_Q0);
  *&v15 = **(result + 24) + a7;
  *(&v15 + 1) = **(result + 32) - (**(result + 40) * a2);
  v16 = vaddq_f32(v9, vmulq_n_f32(**(result + 8), *&a6));
  DWORD2(v15) = *a4;
  v17 = (*v7 + 32 * *a3);
  *v17 = v15;
  v17[1] = v16;
  v18 = *(result + 16);
  v19 = *a3 + 1;
  v20 = v18[1];
  if (v20 <= v19)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19, v20);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v48, v56);
    __break(1u);
    goto LABEL_16;
  }

  HIDWORD(v21) = HIDWORD(_Q0);
  LODWORD(v21) = **(result + 24);
  *(&v21 + 1) = **(result + 32) - (**(result + 40) * a2);
  DWORD2(v21) = *a4;
  v22 = (*v18 + 32 * v19);
  *v22 = v21;
  v22[1] = v16;
  v23 = *(result + 16);
  v24 = *a3 + 2;
  v25 = v23[1];
  if (v25 <= v24)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v24, v25);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v49, v57);
    __break(1u);
    goto LABEL_17;
  }

  v26 = (a2 + 1);
  HIDWORD(v27) = HIDWORD(_Q0);
  LODWORD(v27) = **(result + 24);
  *(&v27 + 1) = **(result + 32) - (**(result + 40) * v26);
  DWORD2(v27) = *a4;
  v28 = (*v23 + 32 * v24);
  *v28 = v27;
  v28[1] = v16;
  v29 = *(result + 16);
  v30 = *a3 + 3;
  v31 = v29[1];
  if (v31 <= v30)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v30, v31);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v50, v58);
    __break(1u);
    goto LABEL_18;
  }

  *&_Q0 = **(result + 24) + a7;
  *(&_Q0 + 1) = **(result + 32) - (**(result + 40) * v26);
  DWORD2(_Q0) = *a4;
  v32 = (*v29 + 32 * v30);
  *v32 = _Q0;
  v32[1] = v16;
  v33 = *(result + 16);
  v34 = *a3;
  v35 = v33[1];
  if (v35 <= *a3)
  {
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v34, v35);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v51, v59);
    __break(1u);
    goto LABEL_19;
  }

  v36 = v34 + 4;
  if (v35 <= v34 + 4)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v36, v35);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v52, v60);
    __break(1u);
    goto LABEL_20;
  }

  v37 = (*v33 + 32 * v34);
  v38 = (*v33 + 32 * v36);
  v39 = v37[1];
  *v38 = *v37;
  v38[1] = v39;
  v40 = *(result + 16);
  v41 = *a3 + 2;
  v42 = v40[1];
  if (v42 <= v41)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v41, v42);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v61);
    __break(1u);
    goto LABEL_21;
  }

  v43 = *a3 + 5;
  if (v42 > v43)
  {
    v44 = (*v40 + 32 * v41);
    v45 = (*v40 + 32 * v43);
    v46 = v44[1];
    *v45 = *v44;
    v45[1] = v46;
    *a3 += 6;
    *a4 = *a4 + 0.01;
    return result;
  }

LABEL_21:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v43, v42);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v54, v62);
  __break(1u);
  return result;
}

void re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_1::operator()(uint64_t *a1, unsigned int a2, re::DynamicString *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = re::StringID::invalid(v34);
  *&v35 = 0x3F8000003F800000;
  *(&v35 + 1) = 0x3F8000003F800000;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  re::DynamicString::setCapacity(&v40, 0);
  v42 = -1;
  re::StringID::invalid(v24);
  v28 = 0u;
  v29 = 0u;
  v31 = 0;
  v32 = 0;
  v30 = -1;
  v33 = re::kInvalidStringRenderHandle;
  v8 = *(v6 + 384);
  v26 = 0u;
  v27 = 0u;
  v25 = v8;
  HIDWORD(v25) = _MergedGlobals_519;
  re::StringID::operator=(v24, (*(a1[1] + 8) + 8));
  re::StringID::operator=(v34, v24);
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  re::DynamicString::operator=(&v40, a3);
  v42 = -1;
  v9 = a1[1];
  *v10.i32 = *(v6 + 372) * 32.0;
  __asm { FMOV            V5.4S, #1.0 }

  *&_Q5 = *a1[2] + 8.0;
  *(&_Q5 + 1) = (*a1[4] + (*a1[5] / -3.0)) - (*a1[5] * a2);
  v36 = vmulq_n_f32(xmmword_1E3047670, *v10.i32);
  v37 = vmulq_n_f32(xmmword_1E3047680, COERCE_FLOAT(vdupq_lane_s32(v10, 0).i32[1]));
  v38 = xmmword_1E30476A0;
  v39 = _Q5;
  v16 = *(*(v9 + 8) + 64);
  re::RenderGraphContext::rtInfo(v23, v9, *(v9 + 40));
  v17 = *a1[7];
  if (v17)
  {
    v18 = *(v17 + 8);
    v22 = *(v17 + 24);
    v21 = v18;
  }

  else
  {
    *&v21 = 134217472;
    *(&v21 + 1) = 134217472;
    v22 = 0;
  }

  v19 = re::TextManager::render(v16, v23, &v21, a1[8], *a1[1], *(a1 + 9), a1[11], v34, *a1[12], 0);
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  v20 = v40;
  if (v40)
  {
    if (BYTE8(v40))
    {
      v20 = (*(*v40 + 40))(v40, v41);
    }

    v40 = 0u;
    v41 = 0u;
  }

  if (v34[0])
  {
    if (v34[0])
    {
    }
  }
}

re::DynamicString *std::vector<re::RenderText>::push_back[abi:nn200100](uint64_t **a1, StringID *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v11 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (v11 + 1 > 0x1C71C71C71C71C7)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0xE38E38E38E38E3)
    {
      v14 = 0x1C71C71C71C71C7;
    }

    else
    {
      v14 = v13;
    }

    v23[4] = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::RenderText>>(v14);
    }

    v15 = 144 * v11;
    re::StringID::StringID(v15, a2);
    *(v15 + 16) = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v18;
    *(v15 + 32) = v16;
    *(v15 + 48) = v17;
    re::DynamicString::DynamicString((v15 + 96), &a2[6]);
    *(v15 + 128) = *&a2[8].var0;
    v10 = v15 + 144;
    v19 = a1[1];
    v20 = v15 + *a1 - v19;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::RenderText>,re::RenderText*>(*a1, v19, v20);
    v21 = *a1;
    *a1 = v20;
    a1[1] = (v15 + 144);
    v22 = a1[2];
    a1[2] = 0;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<re::RenderText>::~__split_buffer(v23);
  }

  else
  {
    re::StringID::StringID(a1[1], a2);
    *(v5 + 16) = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[5];
    *(v5 + 64) = a2[4];
    *(v5 + 80) = v8;
    *(v5 + 32) = v6;
    *(v5 + 48) = v7;
    result = re::DynamicString::DynamicString((v5 + 96), &a2[6]);
    *(v5 + 128) = *&a2[8].var0;
    v10 = v5 + 144;
  }

  a1[1] = v10;
  return result;
}

void *re::allocInfo_RenderGraphProfilerOverlayNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BFB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFB78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFB98, "RenderGraphProfilerOverlayNode");
    __cxa_guard_release(&qword_1EE1BFB78);
  }

  return &unk_1EE1BFB98;
}

void re::initInfo_RenderGraphProfilerOverlayNode(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x88E0128837D64CE2;
  v13[1] = "RenderGraphProfilerOverlayNode";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1BFB80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFB80))
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
    qword_1EE1BFB88 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_AssetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "profilerMaterialAsset";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x11000000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BFB90 = v11;
    __cxa_guard_release(&qword_1EE1BFB80);
  }

  *(this + 2) = 0x20000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BFB88;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphProfilerOverlayNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphProfilerOverlayNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphProfilerOverlayNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphProfilerOverlayNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::ProfilerOverlayRenderGraphProvider::~ProfilerOverlayRenderGraphProvider(re::ProfilerOverlayRenderGraphProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphProfilerOverlayNode::~RenderGraphProfilerOverlayNode(re::RenderGraphProfilerOverlayNode *this)
{
  re::RenderGraphProfilerOverlayNode::~RenderGraphProfilerOverlayNode(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit(this + 57);
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit(this + 51);
  re::AssetHandle::~AssetHandle((this + 272));

  re::RenderGraphNode::~RenderGraphNode(this);
}

re::DynamicString *re::ProfilerMiniHudStatistics::copy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  re::DynamicString::operator=((a1 + 56), (a2 + 56));
  re::DynamicString::operator=((a1 + 88), (a2 + 88));
  re::DynamicString::operator=((a1 + 120), (a2 + 120));
  re::DynamicString::operator=((a1 + 152), (a2 + 152));
  re::DynamicString::operator=((a1 + 184), (a2 + 184));
  re::DynamicString::operator=((a1 + 216), (a2 + 216));
  re::DynamicString::operator=((a1 + 248), (a2 + 248));
  re::DynamicString::operator=((a1 + 280), (a2 + 280));
  re::DynamicString::operator=((a1 + 312), (a2 + 312));
  re::DynamicString::operator=((a1 + 344), (a2 + 344));
  result = re::DynamicString::operator=((a1 + 376), (a2 + 376));
  *(a1 + 48) = *(a2 + 48);
  return result;
}

void std::vector<re::RenderText>::__base_destruct_at_end[abi:nn200100](uint64_t a1, re::StringID *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = (v4 - 144);
      re::DynamicString::deinit((v4 - 48));
      re::StringID::destroyString(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::RenderText>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::RenderText>,re::RenderText*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *a3 = *a3 & 0xFFFFFFFFFFFFFFFELL | *v5 & 1;
      *a3 = *v5 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
      *(a3 + 8) = v5[1];
      *v5 = 0;
      v5[1] = &str_67;
      v7 = *(v5 + 2);
      v9 = *(v5 + 4);
      v8 = *(v5 + 5);
      *(a3 + 48) = *(v5 + 3);
      *(a3 + 64) = v9;
      *(a3 + 32) = v7;
      *(a3 + 16) = *(v5 + 1);
      *(a3 + 80) = v8;
      *(a3 + 96) = 0uLL;
      *(a3 + 112) = 0uLL;
      *(a3 + 96) = v5[12];
      v5[12] = 0;
      v10 = *(a3 + 112);
      *(a3 + 112) = v5[14];
      v5[14] = v10;
      *(a3 + 120) = *(v5 + 15);
      v5[15] = 0;
      v11 = *(a3 + 104);
      *(a3 + 104) = v5[13];
      v5[13] = v11;
      v5 += 18;
      a3 += 144;
    }

    while (v5 != a2);
    do
    {
      re::DynamicString::deinit((v4 + 12));
      re::StringID::destroyString(v4);
      v4 += 18;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<re::RenderText>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 144);
    *(a1 + 16) = i - 144;
    re::DynamicString::deinit((i - 48));
    re::StringID::destroyString(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double re::RenderGraphProfilerOverlayNode::RenderGraphProfilerOverlayNode(re::RenderGraphProfilerOverlayNode *this)
{
  v1 = re::RenderGraphNode::RenderGraphNode(this);
  *(v1 + 66) = 1;
  *(v1 + 268) = 0;
  *v1 = &unk_1F5D12258;
  result = 0.0;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(v1 + 19) = _Q1;
  *(v1 + 20) = xmmword_1E31044A0;
  *(v1 + 42) = 0x3F33333341A00000;
  *(v1 + 86) = 1061997773;
  *(v1 + 22) = xmmword_1E30872B0;
  *(v1 + 23) = xmmword_1E31044B0;
  *(v1 + 24) = _Q1;
  *(v1 + 100) = 1050253722;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 110) = 0;
  *(v1 + 444) = 0x7FFFFFFFLL;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 0u;
  *(v1 + 122) = 0;
  *(v1 + 492) = 0x7FFFFFFFLL;
  return result;
}

void *re::allocInfo_BtStencilPrepassNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_520))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFC48, "BtStencilPrepassNode");
    __cxa_guard_release(&_MergedGlobals_520);
  }

  return &unk_1EE1BFC48;
}

void re::initInfo_BtStencilPrepassNode(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x6343F9729E3C5C18;
  v13[1] = "BtStencilPrepassNode";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1BFC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFC30))
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
    qword_1EE1BFC38 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "debugPass";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BFC40 = v11;
    __cxa_guard_release(&qword_1EE1BFC30);
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BFC38;
  *(this + 9) = re::internal::defaultConstruct<re::BtStencilPrepassNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BtStencilPrepassNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::BtStencilPrepassNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::BtStencilPrepassNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::BtStencilPrepassNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5CB4950;
  *(result + 264) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::BtStencilPrepassNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5CB4950;
  *(result + 264) = 0;
  return result;
}

double re::createWarpMatrixForSourceProjection(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x4_t a17, float32x4_t a18, float32x4_t a19, float32x4_t a20, simd_float4 a21, simd_float4 a22, simd_float4 a23, simd_float4 a24)
{
  v24 = 0;
  v33.columns[0] = a5;
  v33.columns[1] = a6;
  v33.columns[2] = a7;
  v33.columns[3] = a8;
  do
  {
    v34.columns[v24] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*&v33.columns[v24])), a2, *v33.columns[v24].f32, 1), a3, v33.columns[v24], 2), a4, v33.columns[v24], 3);
    ++v24;
  }

  while (v24 != 4);
  v25 = 0;
  v26 = v34;
  v33.columns[0] = a21;
  v33.columns[1] = a22;
  v33.columns[2] = a23;
  v33.columns[3] = a24;
  do
  {
    v34.columns[v25] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a17, COERCE_FLOAT(*&v33.columns[v25])), a18, *v33.columns[v25].f32, 1), a19, v33.columns[v25], 2), a20, v33.columns[v25], 3);
    ++v25;
  }

  while (v25 != 4);
  v31 = v34.columns[0];
  v32 = v34.columns[1];
  v29 = v34.columns[3];
  v30 = v34.columns[2];
  v35 = __invert_f4(v26);
  v27 = 0;
  v33 = v35;
  do
  {
    v34.columns[v27] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*&v33.columns[v27])), v32, *v33.columns[v27].f32, 1), v30, v33.columns[v27], 2), v29, v33.columns[v27], 3);
    ++v27;
  }

  while (v27 != 4);
  return *v34.columns[0].i64;
}

double re::createViewportToNDCReprojectionMatrix(uint64_t a1, unint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6, double a7)
{
  v7 = 0;
  v8 = vzip1_s32(a2, HIDWORD(a2));
  *(&a7 + 1) = a6;
  v9 = vmul_f32(*&a7, v8);
  *&a7 = -*&a7;
  __asm { FMOV            V7.2S, #1.0 }

  *&v15 = vdiv_f32(vmla_f32(COERCE_FLOAT32X2_T(-_D7), vmla_f32(v8, 0x4000000040000000, a1), *&a7), v9);
  DWORD2(v15) = vextq_s8(*(MEMORY[0x1E69E9B10] + 32), *(MEMORY[0x1E69E9B10] + 32), 8uLL).u32[0];
  HIDWORD(v15) = HIDWORD(*(MEMORY[0x1E69E9B10] + 32));
  v17[2] = v15;
  do
  {
    *(&v18 + v7 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v17[v7])), a4, *&v17[v7], 1), a5, v17[v7], 2);
    ++v7;
  }

  while (v7 != 3);
  return *&v18;
}

void *re::DepthStencilCombinerProvider::DepthStencilCombinerProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D12348;
  a1[5] = 65290051;
  a1[6] = "Color";
  a1[7] = 65919651;
  a1[8] = "Depth";
  a1[9] = 0x11F25A259CLL;
  a1[10] = "Stencil";
  return a1;
}

void re::DepthStencilCombinerProvider::~DepthStencilCombinerProvider(re::DepthStencilCombinerProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::DepthStencilCombinerProvider::prepareFrame(re::DepthStencilCombinerProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = *(this + 7) & 0x7FFFFFFFFFFFFFFFLL;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, a3, &v22);
  v21 = *(this + 9) & 0x7FFFFFFFFFFFFFFFLL;
  v9 = re::RenderFrame::getScopePixelFormat(a4, a3, &v21);
  v10 = strlen(a2);
  if (v10)
  {
    MurmurHash3_x64_128(a2, v10, 0, &v23);
    v11 = &v24[64 * v23 - 0x61C8864680B583E9 + (v23 >> 2)] ^ v23;
  }

  else
  {
    v11 = 0;
  }

  v12 = strlen(a3);
  if (v12)
  {
    MurmurHash3_x64_128(a3, v12, 0, &v23);
    v13 = (&v24[64 * v23 - 0x61C8864680B583E9 + (v23 >> 2)] ^ v23) - 0x61C8864680B583E9;
  }

  else
  {
    v13 = 0x9E3779B97F4A7C17;
  }

  v14 = *(re::RenderGraphDataStore::get<re::CameraData>(a4 + 32, ((v11 >> 2) + (v11 << 6) + v13) ^ v11) + 884);
  v23 = 0x674BDBD52888E1DDLL;
  v24 = "DepthStencilCombinerProvider";
  v15 = re::RenderGraphProviderBase::generateScopeHash(&v23, a2, a3);
  v16 = 0xBF58476D1CE4E5B9 * (ScopePixelFormat ^ (ScopePixelFormat >> 30));
  v17 = (((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
  v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v19 = ((v18 ^ (v18 >> 31)) - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
  return (v14 - 0x61C8864680B583E9 + (v19 << 6) + (v19 >> 2)) ^ v19;
}

void re::DepthStencilCombinerProvider::provide(re::DepthStencilCombinerProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v47 = *(this + 7) & 0x7FFFFFFFFFFFFFFFLL;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, a3, &v47);
  v48 = ScopePixelFormat;
  v45 = *(this + 9) & 0x7FFFFFFFFFFFFFFFLL;
  v9 = re::RenderFrame::getScopePixelFormat(a4, a3, &v45);
  v46 = v9;
  v11 = ScopePixelFormat != 250 && ScopePixelFormat != 252;
  v13 = ScopePixelFormat != 255 && ScopePixelFormat != 260;
  v15 = v9 != 255 && v9 != 260;
  if (v13 || v15)
  {
    v18 = v9 != 253 || v13;
    if (v18)
    {
      if (v9)
      {
        v13 = 1;
      }

      if (!v13)
      {
        v17 = ScopePixelFormat == 0;
        v43 = 0;
        v44 = ScopePixelFormat;
        goto LABEL_51;
      }

      if (!v11 && !v15)
      {
        v16 = v9 == 0;
        v17 = ScopePixelFormat == 0;
        v43 = 20;
        v44 = v9;
        goto LABEL_22;
      }

      if (ScopePixelFormat == 0 && !v15)
      {
        v43 = 0;
        v44 = v9;
        v42 = v9 == 0;
        goto LABEL_54;
      }

      v19 = v9 != 253 || v11;
      if (v19)
      {
        if (v11 || v9 != 0)
        {
          if (v9 != 253 || ScopePixelFormat != 0)
          {
            if (ScopePixelFormat != 0 || v9 != 0)
            {
              return;
            }

            if (*(*(a4 + 1) + 372))
            {
              v21 = this;
              v22 = a2;
              v23 = a3;
              v24 = a4;
              v25 = 1;
LABEL_61:
              re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(v21, v22, v23, v24, &v48, v25);
              v37 = this;
              v38 = a2;
              v39 = a3;
              v40 = a4;
              v41 = 1;
              goto LABEL_62;
            }

            v43 = 0;
            v44 = 260;
            v42 = 1;
            v26 = "DropDepthDropStencil";
            v27 = "DropDepthDropStencil[MSAA]";
LABEL_55:
            v28 = this;
            v29 = a2;
            v30 = a3;
            v31 = a4;
            v17 = 1;
            goto LABEL_48;
          }

          if (*(*(a4 + 1) + 372))
          {
            v33 = this;
            v34 = a2;
            v35 = a3;
            v36 = a4;
            v32 = 1;
            goto LABEL_58;
          }

          v43 = 20;
          v44 = 260;
          v42 = 0;
LABEL_54:
          v26 = "DropDepthKeepStencil";
          v27 = "DropDepthKeepStencil[MSAA]";
          goto LABEL_55;
        }

        if (*(*(a4 + 1) + 372))
        {
          v25 = ScopePixelFormat == 0;
          v21 = this;
          v22 = a2;
          v23 = a3;
          v24 = a4;
          goto LABEL_61;
        }

        v17 = ScopePixelFormat == 0;
        v43 = 20;
        v44 = 260;
LABEL_51:
        v42 = 1;
        v26 = "KeepDepthDropStencil";
        v27 = "KeepDepthDropStencil[MSAA]";
        goto LABEL_47;
      }

      if (*(*(a4 + 1) + 372))
      {
        v32 = ScopePixelFormat == 0;
        v33 = this;
        v34 = a2;
        v35 = a3;
        v36 = a4;
LABEL_58:
        re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(v33, v34, v35, v36, &v48, v32);
        v37 = this;
        v38 = a2;
        v39 = a3;
        v40 = a4;
        v41 = 0;
LABEL_62:
        re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_1::operator()(v37, v38, v39, v40, &v46, v41);
        return;
      }

      v17 = ScopePixelFormat == 0;
      v44 = 260;
    }

    else
    {
      v17 = ScopePixelFormat == 0;
      v44 = ScopePixelFormat;
    }

    v43 = 20;
    v42 = 0;
    goto LABEL_46;
  }

  v16 = v9 == 0;
  v17 = ScopePixelFormat == 0;
  v43 = 0;
  v44 = ScopePixelFormat;
LABEL_22:
  v42 = v16;
LABEL_46:
  v26 = "KeepDepthKeepStencil";
  v27 = "KeepDepthKeepStencil[MSAA]";
LABEL_47:
  v28 = this;
  v29 = a2;
  v30 = a3;
  v31 = a4;
LABEL_48:
  re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_2::operator()(v28, v29, v30, v31, &v44, v26, v27, v17, v42, &v43);
}

void re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_2::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5, char *a6, const char *a7, int a8, char a9, int *a10)
{
  v51 = *MEMORY[0x1E69E9840];
  re::RenderFrame::tryGetInputTarget(&v49, this, a6, 0);
  if (DWORD2(v49) == -1 || HIDWORD(v49) == -1)
  {
    v48 = 0;
    if (!a8 || (a9 & 1) == 0)
    {
      if (a9)
      {
        v19 = *(a1 + 56);
      }

      else
      {
        v19 = *(a1 + 72);
      }

      v48 = v19 & 0x7FFFFFFFFFFFFFFFLL;
    }

    v34 = -1;
    v20 = 0x9E3779B97F4A7C17;
    v35 = -1;
    v36 = -1;
    v37 = 0;
    v38 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v39 = _D0;
    v40 = xmmword_1E30A3B60;
    v43 = -1;
    v44 = -1;
    v45 = -1;
    v46 = 0;
    v47 = 0;
    v41 = *a10;
    v42 = 32;
    v25 = *a5;
    LODWORD(v32) = 3;
    HIDWORD(v32) = v25;
    v33 = 3;
    re::RenderFrame::createTarget(&v50, this, &v32, a6);
    v49 = v50;
    re::RenderFrame::inheritLaneProperties(this, &v48, &v49, 0);
    v26 = strlen(a2);
    if (v26)
    {
      MurmurHash3_x64_128(a2, v26, 0, &v50);
      v27 = (*(&v50 + 1) - 0x61C8864680B583E9 + (v50 << 6) + (v50 >> 2)) ^ v50;
    }

    else
    {
      v27 = 0;
    }

    v28 = strlen(a3);
    if (v28)
    {
      MurmurHash3_x64_128(a3, v28, 0, &v50);
      v20 = ((*(&v50 + 1) - 0x61C8864680B583E9 + (v50 << 6) + (v50 >> 2)) ^ v50) - 0x61C8864680B583E9;
    }

    v29 = *(re::RenderGraphDataStore::get<re::CameraData>(this + 32, ((v27 >> 2) + (v27 << 6) + v20) ^ v27) + 884);
    if (v29 >= 2)
    {
      LODWORD(v35) = v29;
      v33 = 8;
      re::RenderFrame::createTarget(&v50, this, &v32, a7);
      v31 = v49;
      v30 = DWORD2(v50);
      *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), &v31) + 84) = v30;
      re::RenderFrame::inheritLaneProperties(this, &v48, &v50, 0);
    }
  }

  v32 = *(a1 + 56) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v32, &v49, 0);
  v32 = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v32, &v49, 0);
}

void re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5, int a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = (a1 + 56);
  re::RenderFrame::tryGetInputTarget(&v44, this, *(a1 + 64), 0);
  if (DWORD2(v44) == -1 || HIDWORD(v44) == -1)
  {
    v31 = -1;
    v14 = 0x9E3779B97F4A7C17;
    v32 = -1;
    v33 = -1;
    v34 = 0;
    v35 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v36 = _D0;
    v37 = xmmword_1E30A3B60;
    v39 = -1;
    v40 = -1;
    v41 = -1;
    v42 = 0;
    v43 = 0;
    v38 = 0x2000000000;
    v19 = *a5;
    if (!*a5)
    {
      v19 = 252;
    }

    LODWORD(v29) = 3;
    HIDWORD(v29) = v19;
    v30 = 3;
    re::RenderFrame::createTarget(&v45, this, &v29, "Depth");
    v44 = v45;
    v20 = 56;
    if (a6)
    {
      v20 = 72;
      v21 = (a1 + 72);
    }

    else
    {
      v21 = v12;
    }

    *&v45 = *(a1 + v20) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::inheritLaneProperties(this, &v45, &v44, 0);
    v22 = strlen(a2);
    if (v22)
    {
      MurmurHash3_x64_128(a2, v22, 0, &v45);
      v23 = (*(&v45 + 1) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
    }

    else
    {
      v23 = 0;
    }

    v24 = strlen(a3);
    if (v24)
    {
      MurmurHash3_x64_128(a3, v24, 0, &v45);
      v14 = ((*(&v45 + 1) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45) - 0x61C8864680B583E9;
    }

    v25 = *(re::RenderGraphDataStore::get<re::CameraData>(this + 32, ((v23 >> 2) + (v23 << 6) + v14) ^ v23) + 884);
    if (v25 >= 2)
    {
      LODWORD(v32) = v25;
      v30 = 8;
      re::RenderFrame::createTarget(&v45, this, &v29, "Depth[MSAA]");
      v28 = v44;
      v26 = DWORD2(v45);
      *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), &v28) + 84) = v26;
      v27 = *v21 & 0x7FFFFFFFFFFFFFFFLL;
      re::RenderFrame::inheritLaneProperties(this, &v27, &v45, 0);
    }
  }

  v29 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v29, &v44, 0);
}

void re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_1::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5, int a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = (a1 + 72);
  re::RenderFrame::tryGetInputTarget(&v44, this, *(a1 + 80), 0);
  if (DWORD2(v44) == -1 || HIDWORD(v44) == -1)
  {
    v31 = -1;
    v14 = 0x9E3779B97F4A7C17;
    v32 = -1;
    v33 = -1;
    v34 = 0;
    v35 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v36 = _D0;
    v37 = xmmword_1E30A3B60;
    v39 = -1;
    v40 = -1;
    v41 = -1;
    v42 = 0;
    v43 = 0;
    v38 = 0x2000000000;
    v19 = *a5;
    if (!*a5)
    {
      v19 = 253;
    }

    LODWORD(v29) = 3;
    HIDWORD(v29) = v19;
    v30 = 3;
    re::RenderFrame::createTarget(&v45, this, &v29, "Stencil");
    v44 = v45;
    v20 = 72;
    if (a6)
    {
      v20 = 56;
      v21 = (a1 + 56);
    }

    else
    {
      v21 = v12;
    }

    *&v45 = *(a1 + v20) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::inheritLaneProperties(this, &v45, &v44, 0);
    v22 = strlen(a2);
    if (v22)
    {
      MurmurHash3_x64_128(a2, v22, 0, &v45);
      v23 = (*(&v45 + 1) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
    }

    else
    {
      v23 = 0;
    }

    v24 = strlen(a3);
    if (v24)
    {
      MurmurHash3_x64_128(a3, v24, 0, &v45);
      v14 = ((*(&v45 + 1) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45) - 0x61C8864680B583E9;
    }

    v25 = *(re::RenderGraphDataStore::get<re::CameraData>(this + 32, ((v23 >> 2) + (v23 << 6) + v14) ^ v23) + 884);
    if (v25 >= 2)
    {
      LODWORD(v32) = v25;
      v30 = 8;
      re::RenderFrame::createTarget(&v45, this, &v29, "Stencil[MSAA]");
      v28 = v44;
      v26 = DWORD2(v45);
      *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), &v28) + 84) = v26;
      v27 = *v21 & 0x7FFFFFFFFFFFFFFFLL;
      re::RenderFrame::inheritLaneProperties(this, &v27, &v45, 0);
    }
  }

  v29 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v29, &v44, 0);
}

re::RenderGraphSimpleForwardEmitter *re::RenderGraphSimpleForwardEmitter::RenderGraphSimpleForwardEmitter(re::RenderGraphSimpleForwardEmitter *this)
{
  v2 = re::RealityEmitterBase::RealityEmitterBase(this);
  *v2 = &unk_1F5D12390;
  *(v2 + 728) = 0u;
  *(v2 + 744) = 0u;
  *(v2 + 760) = 0u;
  *(v2 + 776) = 0u;
  *(v2 + 99) = 0;
  *(v2 + 800) = 1;
  *(v2 + 101) = 0;
  *(v2 + 51) = 0u;
  re::StringID::invalid((v2 + 832));
  *(this + 106) = 0;
  re::StringID::invalid((this + 856));
  *(this + 109) = 0;
  re::StringID::invalid((this + 880));
  *(this + 112) = 0;
  re::StringID::invalid((this + 904));
  *(this + 115) = 0;
  re::StringID::invalid((this + 928));
  *(this + 118) = 0;
  re::StringID::invalid((this + 952));
  *(this + 121) = 0;
  re::StringID::invalid((this + 976));
  *(this + 124) = 0;
  re::StringID::invalid((this + 1000));
  *(this + 127) = 0;
  re::StringID::invalid((this + 1024));
  *(this + 130) = 0;
  re::StringID::invalid((this + 1048));
  *(this + 1064) = 0u;
  return this;
}

re::RealityEmitterBase *re::RealityEmitterBase::RealityEmitterBase(re::RealityEmitterBase *this)
{
  *(this + 8) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 124) = 0x7FFFFFFFLL;
  *this = &unk_1F5D124F0;
  *(this + 136) = 0;
  *(this + 140) = 0xFD000000FCLL;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  re::StringID::invalid((this + 232));
  *(this + 31) = 0;
  re::StringID::invalid((this + 256));
  *(this + 34) = 0;
  re::StringID::invalid((this + 280));
  *(this + 37) = 0;
  re::StringID::invalid((this + 304));
  *(this + 40) = 0;
  re::StringID::invalid((this + 328));
  *(this + 43) = 0;
  re::StringID::invalid((this + 352));
  *(this + 46) = 0;
  re::StringID::invalid((this + 376));
  *(this + 49) = 0;
  re::StringID::invalid((this + 400));
  *(this + 52) = 0;
  re::StringID::invalid((this + 424));
  *(this + 448) = 0;
  *(this + 55) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  re::StringID::invalid((this + 504));
  *(this + 65) = 0;
  re::StringID::invalid((this + 528));
  *(this + 74) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 34) = 0u;
  re::StringID::invalid((this + 600));
  *(this + 77) = 0;
  re::StringID::invalid((this + 624));
  *(this + 80) = 0;
  re::StringID::invalid((this + 648));
  *(this + 83) = 0;
  re::StringID::invalid((this + 672));
  *(this + 86) = 0;
  re::StringID::invalid((this + 696));
  *(this + 712) = 0u;
  return this;
}

void re::RenderGraphSimpleForwardEmitter::~RenderGraphSimpleForwardEmitter(re::RenderGraphSimpleForwardEmitter *this)
{
  v2 = *(this + 134);
  if (v2)
  {
    re::RenderGraphSimpleForwardEmitter::unregisterProviders(this, v2);
  }

  re::StringID::destroyString((this + 1048));
  re::StringID::destroyString((this + 1024));
  re::StringID::destroyString((this + 1000));
  re::StringID::destroyString((this + 976));
  re::StringID::destroyString((this + 952));
  re::StringID::destroyString((this + 928));
  re::StringID::destroyString((this + 904));
  re::StringID::destroyString((this + 880));
  re::StringID::destroyString((this + 856));
  re::StringID::destroyString((this + 832));
  re::AssetHandle::~AssetHandle((this + 808));
  re::AssetHandle::~AssetHandle((this + 776));
  re::AssetHandle::~AssetHandle((this + 752));
  re::AssetHandle::~AssetHandle((this + 728));

  re::RealityEmitterBase::~RealityEmitterBase(this);
}

{
  re::RenderGraphSimpleForwardEmitter::~RenderGraphSimpleForwardEmitter(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphSimpleForwardEmitter::unregisterProviders(re::RenderGraphSimpleForwardEmitter *this, re::RenderGraphManager *a2)
{
  re::RealityEmitterBase::unregisterCommonProviders(this, a2);
  if (re::FontID::isValid((this + 880)))
  {
    re::StringID::StringID(v23, this + 55);
    v23[2] = *(this + 112);
    v4 = re::RenderGraphManager::removeProvider(a2, v23);
    if (v23[0])
    {
      if (v23[0])
      {
      }
    }

    v23[0] = 0;
    v23[1] = &str_67;
    re::ProviderHandle::invalidate((this + 880));
  }

  if (re::FontID::isValid((this + 904)))
  {
    re::StringID::StringID(v22, (this + 904));
    v22[2] = *(this + 115);
    v5 = re::RenderGraphManager::removeProvider(a2, v22);
    if (v22[0])
    {
      if (v22[0])
      {
      }
    }

    v22[0] = 0;
    v22[1] = &str_67;
    re::ProviderHandle::invalidate((this + 904));
  }

  if (re::FontID::isValid((this + 976)))
  {
    re::StringID::StringID(v21, this + 61);
    v21[2] = *(this + 124);
    v6 = re::RenderGraphManager::removeProvider(a2, v21);
    if (v21[0])
    {
      if (v21[0])
      {
      }
    }

    v21[0] = 0;
    v21[1] = &str_67;
    re::ProviderHandle::invalidate((this + 976));
  }

  if (re::FontID::isValid((this + 1000)))
  {
    re::StringID::StringID(v20, (this + 1000));
    v20[2] = *(this + 127);
    v7 = re::RenderGraphManager::removeProvider(a2, v20);
    if (v20[0])
    {
      if (v20[0])
      {
      }
    }

    v20[0] = 0;
    v20[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1000));
  }

  if (re::FontID::isValid((this + 856)))
  {
    re::StringID::StringID(v19, (this + 856));
    v19[2] = *(this + 109);
    v8 = re::RenderGraphManager::removeProvider(a2, v19);
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    v19[0] = 0;
    v19[1] = &str_67;
    re::ProviderHandle::invalidate((this + 856));
  }

  if (re::FontID::isValid((this + 832)))
  {
    re::StringID::StringID(v18, this + 52);
    v18[2] = *(this + 106);
    v9 = re::RenderGraphManager::removeProvider(a2, v18);
    if (v18[0])
    {
      if (v18[0])
      {
      }
    }

    v18[0] = 0;
    v18[1] = &str_67;
    re::ProviderHandle::invalidate((this + 832));
  }

  if (re::FontID::isValid((this + 928)))
  {
    re::StringID::StringID(v17, this + 58);
    v17[2] = *(this + 118);
    v10 = re::RenderGraphManager::removeProvider(a2, v17);
    if (v17[0])
    {
      if (v17[0])
      {
      }
    }

    v17[0] = 0;
    v17[1] = &str_67;
    re::ProviderHandle::invalidate((this + 928));
  }

  if (re::FontID::isValid((this + 952)))
  {
    re::StringID::StringID(v16, (this + 952));
    v16[2] = *(this + 121);
    v11 = re::RenderGraphManager::removeProvider(a2, v16);
    if (v16[0])
    {
      if (v16[0])
      {
      }
    }

    v16[0] = 0;
    v16[1] = &str_67;
    re::ProviderHandle::invalidate((this + 952));
  }

  if (re::FontID::isValid((this + 1024)))
  {
    re::StringID::StringID(v15, this + 64);
    v15[2] = *(this + 130);
    v12 = re::RenderGraphManager::removeProvider(a2, v15);
    if (v15[0])
    {
      if (v15[0])
      {
      }
    }

    v15[0] = 0;
    v15[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1024));
  }

  if (*(this + 800) == 1 && re::FontID::isValid((this + 1048)))
  {
    re::StringID::StringID(v14, (this + 1048));
    v14[2] = *(this + 133);
    v13 = re::RenderGraphManager::removeProvider(a2, v14);
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    v14[0] = 0;
    v14[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1048));
  }
}

void re::RealityEmitterBase::~RealityEmitterBase(re::RealityEmitterBase *this)
{
  *this = &unk_1F5D124F0;
  v2 = (this + 88);
  re::StringID::destroyString((this + 696));
  re::StringID::destroyString((this + 672));
  re::StringID::destroyString((this + 648));
  re::StringID::destroyString((this + 624));
  re::StringID::destroyString((this + 600));
  re::AssetHandle::~AssetHandle((this + 576));
  re::AssetHandle::~AssetHandle((this + 552));
  re::StringID::destroyString((this + 528));
  re::StringID::destroyString((this + 504));
  re::AssetHandle::~AssetHandle((this + 480));
  re::AssetHandle::~AssetHandle((this + 456));
  re::StringID::destroyString((this + 424));
  re::StringID::destroyString((this + 400));
  re::StringID::destroyString((this + 376));
  re::StringID::destroyString((this + 352));
  re::StringID::destroyString((this + 328));
  re::StringID::destroyString((this + 304));
  re::StringID::destroyString((this + 280));
  re::StringID::destroyString((this + 256));
  re::StringID::destroyString((this + 232));
  re::AssetHandle::~AssetHandle((this + 200));
  re::AssetHandle::~AssetHandle((this + 176));
  re::AssetHandle::~AssetHandle((this + 152));
  *this = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v2);
  re::DynamicArray<re::BindPointAndPath>::deinit(this + 48);
  re::BindNode::deinit((this + 16));
}

void re::RenderGraphSimpleForwardEmitter::ensureProviderAssets(re::RenderGraphSimpleForwardEmitter *this, AssetService *a2)
{
  if (a2)
  {
    if (!*(this + 20))
    {
      (*(a2->var0 + 1))(&v12, a2, "engine:BuiltinRenderGraphResources/Common/depthClear.rematerial");
      v4 = *(this + 152);
      *(this + 152) = v12;
      v12 = v4;
      v5 = *(this + 21);
      *(this + 21) = v13;
      v13 = v5;
      re::AssetHandle::~AssetHandle(&v12);
    }

    if (!*(this + 102))
    {
      (*(a2->var0 + 1))(&v12, a2, "engine:BuiltinRenderGraphResources/Common/filter.rerendergraph");
      v6 = *(this + 808);
      *(this + 808) = v12;
      v12 = v6;
      v7 = *(this + 103);
      *(this + 103) = v13;
      v13 = v7;
      re::AssetHandle::~AssetHandle(&v12);
    }

    if (!*(this + 26))
    {
      (*(a2->var0 + 1))(&v12, a2, "engine:BuiltinRenderGraphResources/Common/separateDepth.rematerial");
      v8 = *(this + 200);
      *(this + 200) = v12;
      v12 = v8;
      v9 = *(this + 27);
      *(this + 27) = v13;
      v13 = v9;
      re::AssetHandle::~AssetHandle(&v12);
    }

    if (!*(this + 23))
    {
      (*(a2->var0 + 1))(&v12, a2, "engine:BuiltinRenderGraphResources/Common/separateStencil.rematerial");
      v10 = *(this + 11);
      *(this + 11) = v12;
      v12 = v10;
      v11 = *(this + 24);
      *(this + 24) = v13;
      v13 = v11;
      re::AssetHandle::~AssetHandle(&v12);
    }
  }
}

void re::RenderGraphSimpleForwardEmitter::preloadProvidersAssets(re::RenderGraphSimpleForwardEmitter *this, re::RenderManager *a2, AssetService *a3)
{
  re::RealityEmitterBase::preloadAssetsCommonProviders(this, a2, a3);
  re::RenderGraphSimpleForwardEmitter::ensureProviderAssets(this, a3);
  if (a2)
  {
    v6 = *(a2 + 328);
    v7 = v6 | *(a2 + 330);
    if ((v6 & 1) == 0 && (*(a2 + 329) & 1) == 0)
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (!*(this + 95))
    {
LABEL_11:
      if ((v7 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    re::AssetHandle::loadAsync((this + 752));
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(this + 95))
    {
      re::AssetHandle::loadAsync((this + 752));
    }

    v6 = 1;
  }

LABEL_12:
  if (*(this + 26))
  {
    re::AssetHandle::loadAsync((this + 200));
  }

  if (*(this + 23))
  {
    re::AssetHandle::loadAsync((this + 176));
    if ((v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v6)
  {
    return;
  }

LABEL_18:
  if (*(this + 20))
  {
    re::AssetHandle::loadAsync((this + 152));
  }

  if (*(this + 102))
  {
    re::AssetHandle::loadAsync((this + 808));
  }

  if (*(this + 92))
  {
    re::AssetHandle::loadAsync((this + 728));
  }

  if (*(this + 98))
  {

    re::AssetHandle::loadAsync((this + 776));
  }
}

void re::RenderGraphSimpleForwardEmitter::registerProviders(re::RenderGraphSimpleForwardEmitter *this, unsigned __int8 **a2, AssetService *a3)
{
  re::RenderGraphSimpleForwardEmitter::ensureProviderAssets(this, a3);
  re::RealityEmitterBase::registerCommonProviders(this, a2, a3);
  v6 = a2[87];
  v7 = v6[328];
  v8 = v7 | v6[330];
  if (v7 & 1) != 0 || (v6[329])
  {
    v9 = *(this + 95);
    if (v9)
    {
      v10 = atomic_load((v9 + 896));
      if (v10 != 2)
      {
        re::AssetHandle::loadNow(*(this + 95), 0);
      }

      v11 = *(this + 95);
      if (v11)
      {
        v12 = atomic_load((v11 + 896));
        if (v12 == 2 && !re::FontID::isValid((this + 880)))
        {
          v13 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 752));
          re::RenderGraphManager::addProviderInternal(&v57, a2, "Camera", (v13 + 8), 0, 0);
          v14 = re::StringID::operator=((this + 880), &v57);
          *(this + 112) = v59;
          if (v57)
          {
            if (v57)
            {
            }
          }
        }
      }
    }
  }

  if (v8)
  {
    isValid = re::FontID::isValid((this + 976));
    if (!isValid)
    {
      v16 = re::globalAllocators(isValid);
      v17 = (*(*v16[2] + 32))(v16[2], 88, 8);
      re::DepthStencilCombinerProvider::DepthStencilCombinerProvider(v17, v56);
      if (*&v56[0])
      {
        if (BYTE8(v56[0]))
        {
          (*(**&v56[0] + 40))();
        }

        memset(v56, 0, sizeof(v56));
      }

      re::RenderGraphManager::addProviderInternal(&v57, a2, "Camera", v17, -10, 1);
      v18 = re::StringID::operator=((this + 976), &v57);
      *(this + 124) = v59;
      if (v57)
      {
        if (v57)
        {
        }
      }
    }

    v19 = re::FontID::isValid((this + 1000));
    if (!v19)
    {
      v20 = re::globalAllocators(v19);
      v21 = (*(*v20[2] + 32))(v20[2], 136, 8);
      re::DepthStencilSplitterProvider::DepthStencilSplitterProvider(v21, v55);
      if (*&v55[0])
      {
        if (BYTE8(v55[0]))
        {
          (*(**&v55[0] + 40))();
        }

        memset(v55, 0, sizeof(v55));
      }

      re::AssetHandle::loadAsync((this + 200));
      re::AssetHandle::operator=(v21 + 88, this + 25);
      re::AssetHandle::loadAsync((this + 176));
      re::AssetHandle::operator=(v21 + 112, this + 22);
      re::RenderGraphManager::addProviderInternal(&v57, a2, "Camera", v21, 10, 1);
      v22 = re::StringID::operator=((this + 1000), &v57);
      *(this + 127) = v59;
      if (v57)
      {
        if (v57)
        {
        }
      }
    }
  }

  if (v7)
  {
    (*(a3->var0 + 1))(&v57, a3, "engine:default.metallib");
    re::AssetHandle::loadAsync(&v57);
    v23 = re::FontID::isValid((this + 904));
    if (!v23)
    {
      v25 = re::globalAllocators(v23);
      v26 = (*(*v25[2] + 32))(v25[2], 48, 8);
      re::VFXRenderGraphProvider::VFXRenderGraphProvider(v26, v54);
      if (*&v54[0])
      {
        if (BYTE8(v54[0]))
        {
          (*(**&v54[0] + 40))();
        }

        memset(v54, 0, sizeof(v54));
      }

      re::RenderGraphManager::addProviderInternal(&v51, a2, "VFXSimulation", v26, 0, 1);
      v27 = re::StringID::operator=((this + 904), &v51);
      *(this + 115) = v53;
      if (v51)
      {
        if (v51)
        {
        }
      }
    }

    v28 = *(this + 92);
    if (v28)
    {
      v29 = atomic_load((v28 + 896));
      if (v29 != 2)
      {
        re::AssetHandle::loadNow(*(this + 92), 0);
      }

      v30 = *(this + 92);
      if (v30)
      {
        v31 = atomic_load((v30 + 896));
        if (v31 == 2 && !re::FontID::isValid((this + 856)))
        {
          v32 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 728));
          re::RenderGraphManager::addProviderInternal(&v51, a2, "SingleGraphShadows", (v32 + 8), 0, 0);
          v33 = re::StringID::operator=((this + 856), &v51);
          *(this + 109) = v53;
          if (v51)
          {
            if (v51)
            {
            }
          }
        }
      }
    }

    v34 = *(this + 102);
    if (v34)
    {
      v35 = atomic_load((v34 + 896));
      if (v35 != 2)
      {
        re::AssetHandle::loadNow(*(this + 102), 0);
      }

      v36 = *(this + 102);
      if (v36)
      {
        v37 = atomic_load((v36 + 896));
        if (v37 == 2 && !re::FontID::isValid((this + 832)))
        {
          v38 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 808));
          re::RenderGraphManager::addProviderInternal(&v51, a2, "Filter", (v38 + 8), 0, 0);
          v39 = re::StringID::operator=((this + 832), &v51);
          *(this + 106) = v53;
          if (v51)
          {
            if (v51)
            {
            }
          }
        }
      }
    }

    v40 = *(this + 98);
    if (v40)
    {
      v41 = atomic_load((v40 + 896));
      if (v41 != 2)
      {
        re::AssetHandle::loadNow(*(this + 98), 0);
      }

      v42 = *(this + 98);
      if (v42)
      {
        v43 = atomic_load((v42 + 896));
        if (v43 == 2 && !re::FontID::isValid((this + 952)))
        {
          v44 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 776));
          re::RenderGraphManager::addProviderInternal(&v51, a2, "PostProcess", (v44 + 8), 0, 0);
          v45 = re::StringID::operator=((this + 952), &v51);
          *(this + 121) = v53;
          if (v51)
          {
            if (v51)
            {
            }
          }
        }
      }
    }

    if (*(this + 800) == 1)
    {
      re::SFBSystemShellBlurProvider::registerProviderCommon(a2, &v57, 1, (this + 1048), v24);
    }

    v46 = re::FontID::isValid((this + 1024));
    if (!v46)
    {
      v47 = re::globalAllocators(v46);
      v48 = (*(*v47[2] + 32))(v47[2], 112, 8);
      re::VRRUnwarpProvider::VRRUnwarpProvider(v48, v50);
      if (*&v50[0])
      {
        if (BYTE8(v50[0]))
        {
          (*(**&v50[0] + 40))();
        }

        memset(v50, 0, sizeof(v50));
      }

      re::AssetHandle::operator=(v48 + 40, &v57);
      re::RenderGraphManager::addProviderInternal(&v51, a2, "Camera", v48, 50, 1);
      v49 = re::StringID::operator=((this + 1024), &v51);
      *(this + 130) = v53;
      if (v51)
      {
        if (v51)
        {
        }
      }
    }

    re::AssetHandle::~AssetHandle(&v57);
  }

  *(this + 134) = a2;
}

void re::RenderGraphSimpleForwardEmitter::afterCameraViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[11] = *MEMORY[0x1E69E9840];
  if (*(a7 + 8))
  {
    v11 = *(a7 + 16);
  }

  else
  {
    v11 = (a7 + 9);
  }

  if ((*(a7 + 703) & 1) == 0 && *(a1 + 784))
  {
    if ((atomic_load_explicit(&qword_1EE1BFCE0, memory_order_acquire) & 1) == 0)
    {
      v17 = __cxa_guard_acquire(&qword_1EE1BFCE0);
      if (v17)
      {
        _MergedGlobals_521 = re::hashString(v17, v18);
        __cxa_guard_release(&qword_1EE1BFCE0);
      }
    }

    v13 = 0x9E3779B97F4A7C17;
    v14 = _MergedGlobals_521;
    v15 = strlen(v11);
    if (v15)
    {
      MurmurHash3_x64_128(v11, v15, 0, v19);
      v13 = ((v19[1] - 0x61C8864680B583E9 + (v19[0] << 6) + (v19[0] >> 2)) ^ v19[0]) - 0x61C8864680B583E9;
    }

    re::CameraView::makeViewportPercentData(a7, v16, v19);
    re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, ((v14 >> 2) + (v14 << 6) + v13) ^ v14, v19);
    re::RenderFrame::emitGraph(a4, "PostProcess", v11);
    *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
  }

  re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(a1, a3, a4, a7);
}

void re::RenderGraphSimpleForwardEmitter::afterCameraMultiViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[11] = *MEMORY[0x1E69E9840];
  if (*(a7 + 8))
  {
    v7 = *(a7 + 16);
  }

  else
  {
    v7 = (a7 + 9);
  }

  if ((*(a7 + 703) & 1) == 0 && *(a1 + 784))
  {
    if ((atomic_load_explicit(&qword_1EE1BFCF0, memory_order_acquire) & 1) == 0)
    {
      v15 = __cxa_guard_acquire(&qword_1EE1BFCF0);
      if (v15)
      {
        qword_1EE1BFCE8 = re::hashString(v15, v16);
        __cxa_guard_release(&qword_1EE1BFCF0);
      }
    }

    v11 = 0x9E3779B97F4A7C17;
    v12 = qword_1EE1BFCE8;
    v13 = strlen(v7);
    if (v13)
    {
      MurmurHash3_x64_128(v7, v13, 0, v17);
      v11 = ((v17[1] - 0x61C8864680B583E9 + (v17[0] << 6) + (v17[0] >> 2)) ^ v17[0]) - 0x61C8864680B583E9;
    }

    re::CameraMultiView::makeViewportPercentDataInstancedMode(a7, v14, v17);
    re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, ((v12 >> 2) + (v12 << 6) + v11) ^ v12, v17);
    re::RenderFrame::emitGraph(a4, "PostProcess", v7);
    *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
  }
}

uint64_t re::RenderGraphSimpleForwardEmitter::emitFrameContext(re::RealityEmitterBase *a1, void *a2, re::RenderFrame *this, re::RenderGraphDataStore *a4)
{
  re::RenderFrame::emitGraph(this, "UploadMultiSceneConstants", "RenderFrame");
  v8 = a2[2];
  if (v8)
  {
    v9 = a2[3];
    v10 = 424 * v8;
    do
    {
      re::RealityEmitterBase::emitRTAOGraph(a1, v9, this, a4);
      re::RealityEmitterBase::emitVFXSimulationGraph(a1, v9, this, a4);
      v9 += 424;
      v10 -= 424;
    }

    while (v10);
  }

  v11 = a2[12];
  if (v11 && *(v11 + 16))
  {
    re::RenderFrame::emitGraph(this, "MipmapGenerationContext", "RenderFrame");
  }

  v12 = a2[13];
  if (v12 && *(v12 + 16))
  {
    re::RenderFrame::emitGraph(this, "BlurGenerationContext", "RenderFrame");
  }

  re::RealityEmitterBase::emitProbeWriteGraph(a1, this);
  re::RenderFrame::emitGraph(this, "ProjectiveMeshShadow", "RenderFrame");
  re::RealityEmitterBase::emitUIShadowGraph(a1, a2, this);
  v29 = 0;
  v13 = a2[2];
  if (v13)
  {
    v14 = a2[3];
    v15 = 424 * v13;
    do
    {
      re::RealityEmitterBase::emitSingleGraphShadows(a1, v14, this, a4, &v29);
      v14 += 424;
      v15 -= 424;
    }

    while (v15);
    v16 = a2[2];
    if (v16)
    {
      v17 = a2[3];
      v18 = 424 * v16;
      do
      {
        re::RealityEmitterBase::emitFilterMapGraph(a1, v17, this, a4);
        v17 += 424;
        v18 -= 424;
      }

      while (v18);
      v19 = a2[2];
      if (v19)
      {
        v20 = a2[3];
        v21 = 424 * v19;
        do
        {
          re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(a1, v20, this, a4);
          v20 += 424;
          v21 -= 424;
        }

        while (v21);
        v22 = a2[2];
        if (v22)
        {
          v23 = a2[3];
          v24 = 424 * v22;
          do
          {
            re::RealityEmitterBase::emitCameraGraphs(a1, a2, v23, this, a4, 0);
            v23 += 424;
            v24 -= 424;
          }

          while (v24);
          v25 = a2[2];
          if (v25)
          {
            v26 = a2[3];
            v27 = 424 * v25;
            do
            {
              re::RealityEmitterBase::emitEmbeddedStereoContentCameraGraphs(a1, a2, v26, this, a4, 0);
              v26 += 424;
              v27 -= 424;
            }

            while (v27);
          }
        }
      }
    }
  }

  return re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(a1, this, a4);
}

void re::RenderGraphSimpleForwardEmitter::afterPrepareSceneContextHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 360);
  if (!v4 || !re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((a1 + 752)))
  {
    return;
  }

  if (*v4 == 1)
  {
    v7 = 0;
    v8 = v4[5];
    v9 = v8 ^ 1;
    if (v4[6])
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v4[6] & 1) == 0)
    {
      v10 = 0;
      v9 = 0;
      v7 = 0;
      goto LABEL_15;
    }

    v11 = v4[5];
    v9 = v11 ^ 1;
    if (v11)
    {
      v7 = 0;
      v10 = 4;
      goto LABEL_15;
    }

    v7 = 2;
  }

  v10 = 0;
LABEL_15:
  v12 = v9 | v10 | v7;
  if ((*(a3 + 120) & 0x7F) != v12)
  {
    v13 = *(a1 + 760);
    if (v13)
    {
      v14 = atomic_load((v13 + 896));
      if (v14 == 2)
      {
        ++*(*(a1 + 760) + 276);
        v15 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((a1 + 752));
        if (v15)
        {
          v16 = v15;
          v23 = 0x9AB5F11FB4FA0048;
          v24 = "SceneUnderstandingOcclusionAndShadowNode";
          v22 = v9;
          v17 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v15 + 8), &v23, "Enabled", &v22);
          if (v23)
          {
            if (v23)
            {
            }
          }

          v23 = 0x10DE28F3DBBA741CLL;
          v24 = "SceneUnderstandingOcclusionAndShadowDepthClearNode";
          v22 = v7 >> 1;
          v18 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v16 + 8), &v23, "Enabled", &v22);
          if (v23)
          {
            if (v23)
            {
            }
          }

          v23 = 0xF5A2D353F87D6B9CLL;
          v24 = "MeshShadowProjectedPatchReceiverNode";
          v19 = v10 >> 2;
          v22 = v19;
          v20 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v16 + 8), &v23, "Enabled", &v22);
          if (v23)
          {
            if (v23)
            {
            }
          }

          v23 = 0xF7F248B7F1C26F4;
          v24 = "PatchShadowReceiverDepthOnlyNode";
          v22 = v19;
          v21 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v16 + 8), &v23, "Enabled", &v22);
          if (v23)
          {
            if (v23)
            {
            }
          }
        }
      }
    }
  }

  *(a3 + 120) = v12;
}

void *re::allocInfo_RenderGraphSimpleForwardEmitter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BFCF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFCF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFD30, "RenderGraphSimpleForwardEmitter");
    __cxa_guard_release(&qword_1EE1BFCF8);
  }

  return &unk_1EE1BFD30;
}

void re::initInfo_RenderGraphSimpleForwardEmitter(re *this, re::IntrospectionBase *a2)
{
  v25[0] = 0x189F6B76760EA926;
  v25[1] = "RenderGraphSimpleForwardEmitter";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1BFD00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFD00))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RealityEmitterBase(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RealityEmitterBase";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BFD08 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_AssetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "shadowGraph";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x2D800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BFD10 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_AssetHandle(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "cameraGraph";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x2F000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BFD18 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_AssetHandle(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "postProcessGraph";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x30800000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1BFD20 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_BOOL(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "enableBlurProvider";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x32000000005;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1BFD28 = v23;
    __cxa_guard_release(&qword_1EE1BFD00);
  }

  *(this + 2) = 0x43800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1BFD08;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSimpleForwardEmitter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSimpleForwardEmitter>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSimpleForwardEmitter>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSimpleForwardEmitter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

re *re::RenderGraphFile::setRuntimeNodeSetting<BOOL>(re::RenderGraphFile *a1, const re::StringID *a2, char *a3, void *a4)
{
  v6 = a3;
  v7 = &unk_1EE187000;
  {
    v15 = a1;
    v14 = a4;
    v12 = a2;
    v7 = &unk_1EE187000;
    a2 = v12;
    v6 = a3;
    a4 = v14;
    v11 = v10;
    a1 = v15;
    if (v11)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v12);
      v7 = &unk_1EE187000;
      a1 = v15;
      a2 = v12;
      v6 = a3;
      a4 = v14;
    }
  }

  v8 = *(v7 + 42);

  return re::RenderGraphFile::setRuntimeNodeSetting(a1, a2, v8, v6, a4);
}

uint64_t re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraView>(void *a1, uint64_t a2, re::Allocator **a3, re::RenderFrame *a4, uint64_t a5, char *__s1, uint64_t a7)
{
  v8 = __s1;
  v127 = *MEMORY[0x1E69E9840];
  LODWORD(v14) = 2135587863;
  v88 = strcmp(__s1, "Camera");
  v104 = a7;
  if (*(a7 + 8))
  {
    v15 = *(a7 + 16);
  }

  else
  {
    v15 = a7 + 9;
  }

  if (a3[43])
  {
    v16 = strlen(v8);
    if (v16)
    {
      MurmurHash3_x64_128(v8, v16, 0, v108);
      v17 = (*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108;
    }

    else
    {
      v17 = 0;
    }

    v18 = strlen(v15);
    v19 = 0x9E3779B97F4A7C17;
    if (v18)
    {
      MurmurHash3_x64_128(v15, v18, 0, v108);
      v19 = ((*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108) - 0x61C8864680B583E9;
    }

    re::RenderGraphDataStore::add<re::MXIColorConversionState,re::MXIColorConversionState&>(a5, ((v17 >> 2) + (v17 << 6) + v19) ^ v17, a3[43]);
  }

  ScopeResolution = re::RenderFrame::getScopeResolution(a4, v15);
  v107 = 65290051;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, v15, &v107);
  v107 = 0;
  v20 = a3[42];
  v102 = a4;
  v103 = a5;
  if (!v20 || v88)
  {
LABEL_72:
    if (v88)
    {
      v62 = strcmp(v8, "Portal") == 0;
      goto LABEL_75;
    }
  }

  else
  {
    v21 = 0;
    v90 = v8;
    v92 = a3;
    __s = v15;
    while (*(v20 + 5) > v21)
    {
      v22 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](v20, v21);
      v23 = std::string::basic_string[abi:nn200100]<0>(v120, "_MXIOffscreen_");
      v24 = std::string::insert(v23, 0, v15);
      v25 = v24->__r_.__value_.__r.__words[2];
      *v108 = *&v24->__r_.__value_.__l.__data_;
      *&v108[16] = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v100 = v22;
      std::to_string(&v119, *(v22 + 40));
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v119;
      }

      else
      {
        v26 = v119.__r_.__value_.__r.__words[0];
      }

      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v119.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v119.__r_.__value_.__l.__size_;
      }

      v28 = std::string::append(v108, v26, size);
      v29 = v28->__r_.__value_.__r.__words[2];
      *__p = *&v28->__r_.__value_.__l.__data_;
      v106 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      if ((v108[23] & 0x80000000) != 0)
      {
        operator delete(*v108);
      }

      if (SBYTE3(v124) < 0)
      {
        operator delete(*v120);
      }

      if (v106 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      MurmurHash3_x64_128("MXI", 3uLL, 0, v108);
      v31 = *v108;
      v32 = *&v108[8];
      v33 = strlen(v30);
      v34 = 0x9E3779B97F4A7C17;
      if (v33)
      {
        MurmurHash3_x64_128(v30, v33, 0, v108);
        v34 = ((*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108) - 0x61C8864680B583E9;
      }

      v98 = v21;
      v35 = (v32 - 0x61C8864680B583E9 + (v31 << 6) + (v31 >> 2)) ^ v31;
      v36 = (v35 >> 2) + (v35 << 6) + v34;
      re::CameraView::makeCameraData(v104, *(a4 + 1), a3, v108);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a5, v36 ^ v35, v108);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v118);
      ++v117;
      ++v115;
      ++v113;
      v116 = 0;
      v114 = 0;
      v112 = 0;
      *&v110 = 0;
      ++DWORD2(v110);
      if (*&v108[8] && (v108[16] & 1) != 0)
      {
        (*(**&v108[8] + 40))();
      }

      v37 = *(a4 + 1);
      *v108 = &unk_1F5D035F0;
      *&v108[8] = *(v104 + 288);
      v108[12] = (*&v108[8] != -1) & *(v37 + 364);
      v108[13] = *(v104 + 701);
      re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(a5, v36 ^ v35, v108);
      v38 = a3[6];
      v39 = *a3;
      *v108 = &unk_1F5D06A20;
      re::DynamicString::DynamicString(&v108[8], v38, v39);
      re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a5, v36 ^ v35, v108);
      *v108 = &unk_1F5D06A20;
      if (*&v108[8] && (v108[16] & 1) != 0)
      {
        (*(**&v108[8] + 40))();
      }

      re::CameraView::makeViewportPercentData(v104, v40, v108);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v36 ^ v35, v108);
      v41 = re::RenderGraphDataStore::get<re::CameraData>(a5, v36 ^ v35);
      *(v41 + 884) = 1;
      *v108 = *(v41 + 890);
      v42 = re::RenderGraphDataStore::add<re::CameraMatrices,re::PerFrameAllocator *&,unsigned long>(a5, v36 ^ v35, a2, v108);
      if (*(v41 + 890))
      {
        v44 = v42;
        v45 = 0;
        v46 = v41 + 144;
        v47 = (v41 + 64);
        do
        {
          v48 = *(v41 + 128);
          if (v48 <= v45)
          {
            re::internal::assertLog(6, v43, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v45, v48);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v80, v83);
            __break(1u);
LABEL_120:
            re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v45, v53);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v81, v84);
            __break(1u);
LABEL_121:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v45, v55);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v82, v85);
            __break(1u);
LABEL_122:
            __p[0] = 0;
            v110 = 0u;
            v111 = 0u;
            v109 = 0u;
            memset(v108, 0, sizeof(v108));
            v77 = MEMORY[0x1E69E9C10];
            v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v120 = 136315906;
            *&v120[4] = "operator[]";
            v121 = 1024;
            if (v78)
            {
              v79 = 3;
            }

            else
            {
              v79 = 2;
            }

            v122 = 468;
            v123 = 2048;
            v124 = v44;
            v125 = 2048;
            v126 = v47;
            _os_log_send_and_compose_impl(v79, __p, v108, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v86, v87);
            _os_crash_msg();
            __break(1u);
          }

          if (*(v46 + 80) == 1)
          {
            v49 = *(v46 + 96);
            v50 = *(v46 + 112);
            v51 = *(v46 + 144);
            v109 = *(v46 + 128);
            v110 = v51;
            *v108 = v49;
            *&v108[16] = v50;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v108, v46);
          }

          re::DynamicArray<re::Matrix4x4<float>>::add((v44 + 48), v108);
          v53 = *(v41 + 128);
          if (v53 <= v45)
          {
            goto LABEL_120;
          }

          re::Projection::cullingProjectionMatrix(v108, v46);
          re::DynamicArray<re::Matrix4x4<float>>::add((v44 + 88), v108);
          v55 = *(v41 + 48);
          if (v55 <= v45)
          {
            goto LABEL_121;
          }

          re::RenderCamera::computeInverseTransform(v108, v47);
          re::DynamicArray<re::Matrix4x4<float>>::add((v44 + 8), v108);
          ++v45;
          v47 += 2;
          v46 += 240;
        }

        while (v45 < *(v41 + 890));
      }

      v15 = __s;
      re::DynamicString::DynamicString(v120, __s, *a2);
      *v108 = &unk_1F5D125A8;
      *&v108[8] = v100;
      *&v108[16] = ScopeResolution;
      *&v108[24] = ScopePixelFormat;
      re::DynamicString::DynamicString(&v109, v120);
      *&v111 = 0;
      a5 = v103;
      re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(v103, v36 ^ v35, v108);
      if (v109 && (BYTE8(v109) & 1) != 0)
      {
        (*(*v109 + 40))();
      }

      a4 = v102;
      v8 = v90;
      a3 = v92;
      LODWORD(v14) = 2135587863;
      if (!v98)
      {
        *v108 = &unk_1F5D125A8;
        *&v108[8] = v100;
        *&v108[16] = ScopeResolution;
        *&v108[24] = ScopePixelFormat;
        re::DynamicString::DynamicString(&v109, v120);
        *&v111 = 0;
        if (re::FontID::isValid((a1 + 87)))
        {
          v57 = a1[90];
          if (v57)
          {
            re::MXIProvider::initProxyMeshPart(v57, *(a1[28] + 696), *(v100 + 96), *(v100 + 100));
            *&v111 = *(a1[90] + 96);
          }
        }

        v58 = strlen(v90);
        if (v58)
        {
          MurmurHash3_x64_128(v90, v58, 0, &v119);
          v59 = (v119.__r_.__value_.__l.__size_ - 0x61C8864680B583E9 + (v119.__r_.__value_.__r.__words[0] << 6) + (v119.__r_.__value_.__r.__words[0] >> 2)) ^ v119.__r_.__value_.__r.__words[0];
        }

        else
        {
          v59 = 0;
        }

        v60 = strlen(__s);
        v61 = 0x9E3779B97F4A7C17;
        if (v60)
        {
          MurmurHash3_x64_128(__s, v60, 0, &v119);
          v61 = ((v119.__r_.__value_.__l.__size_ - 0x61C8864680B583E9 + (v119.__r_.__value_.__r.__words[0] << 6) + (v119.__r_.__value_.__r.__words[0] >> 2)) ^ v119.__r_.__value_.__r.__words[0]) - 0x61C8864680B583E9;
        }

        re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(v103, ((v59 >> 2) + (v59 << 6) + v61) ^ v59, v108);
        if (v109 && (BYTE8(v109) & 1) != 0)
        {
          (*(*v109 + 40))();
        }
      }

      if (v106 >= 0)
      {
        v56 = __p;
      }

      else
      {
        v56 = __p[0];
      }

      re::RenderFrame::emitGraph(v102, "MXI", v56);
      if (*v120 && (v120[8] & 1) != 0)
      {
        (*(**v120 + 40))();
      }

      if (SHIBYTE(v106) < 0)
      {
        operator delete(__p[0]);
      }

      v21 = v98 + 1;
      v20 = v92[42];
      if (!v20)
      {
        goto LABEL_72;
      }
    }
  }

  v62 = 1;
LABEL_75:
  result = a3[3];
  if (result)
  {
    v64 = !v62;
  }

  else
  {
    v64 = 1;
  }

  if (!v64)
  {
    re::PlanarReflectionContext::makeReflectionCameraViews(result, a4, v104, v108);
    if (*&v108[16])
    {
      v15 = v109;
      v65 = 1552 * *&v108[16];
      v14 = "Camera";
      do
      {
        (*(*a1 + 104))(a1, a2, a3, a4, a5, "Camera", v15);
        v15 += 1552;
        v65 -= 1552;
      }

      while (v65);
    }

    result = re::DynamicArray<re::CameraView>::deinit(v108);
  }

  if (v62)
  {
    v93 = a3[41];
    if (v93)
    {
      v91 = *(v93 + 5);
      if (v91)
      {
        v66 = 0;
        while (1)
        {
          v95 = v66;
          result = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v93, v66);
          v67 = *(result + 6972);
          if (v67)
          {
            v68 = result + 6944;
            v15 = *(result + 6976);
            if (v15)
            {
              v14 = 0;
              v69 = *(result + 6960);
              do
              {
                if ((*v69 & 0x80000000) != 0)
                {
                  goto LABEL_95;
                }

                v69 += 216;
                ++v14;
              }

              while (v15 != v14);
              LODWORD(v14) = *(result + 6976);
            }

            else
            {
              LODWORD(v14) = 0;
            }

LABEL_95:
            v97 = result + 6944;
          }

          else
          {
            v68 = result + 32;
            v97 = result + 32 + 864 * *(result + 16);
          }

          v101 = v15;
          v99 = *(result + 6972);
LABEL_97:
          while (v67)
          {
            if (v15 == v14)
            {
              goto LABEL_117;
            }

            v70 = (*(v68 + 16) + 864 * v14 + 16);
LABEL_102:
            result = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((a2 + 32), *v70 >> 1);
            if (result != -1)
            {
              v44 = *(*(a2 + 40) + 16 * result + 8);
              v47 = *(a2 + 16);
              if (v47 <= v44)
              {
                goto LABEL_122;
              }

              v71 = *(a2 + 24) + 424 * v44;
              result = *(v71 + 24);
              if (result)
              {
                re::PlanarReflectionContext::makeReflectionCameraViews(result, v102, v104, v108);
                if (*&v108[16])
                {
                  v72 = v109;
                  v73 = 1552 * *&v108[16];
                  do
                  {
                    (*(*a1 + 104))(a1, a2, v71, v102, v103, "Camera", v72);
                    v72 += 1552;
                    v73 -= 1552;
                  }

                  while (v73);
                }

                result = re::DynamicArray<re::CameraView>::deinit(v108);
                v15 = v101;
                v67 = v99;
              }
            }

            if (v67)
            {
              v74 = v14 + 1;
              if (*(v68 + 32) <= (v14 + 1))
              {
                LODWORD(v14) = v14 + 1;
              }

              else
              {
                LODWORD(v14) = *(v68 + 32);
              }

              while (v14 != v74)
              {
                v75 = v74;
                v76 = *(*(v68 + 16) + 864 * v74++);
                if (v76 < 0)
                {
                  LODWORD(v14) = v75;
                  goto LABEL_97;
                }
              }
            }

            else
            {
              v68 += 864;
            }
          }

          if (v68 != v97)
          {
            break;
          }

LABEL_117:
          v66 = v95 + 1;
          if (v95 + 1 == v91)
          {
            return result;
          }
        }

        v70 = (v68 + 16);
        goto LABEL_102;
      }
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::MXIColorConversionState,re::MXIColorConversionState&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re23MXIColorConversionStateE";
  if (("N2re23MXIColorConversionStateE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re23MXIColorConversionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v9 = &unk_1F5CF06D8;
  *(v9 + 8) = *(a3 + 8);
  v11 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::CameraMatrices,re::PerFrameAllocator *&,unsigned long>(uint64_t a1, uint64_t a2, re::Allocator **a3, unint64_t *a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18 = 0;
  {
    re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0, v12, v13, v14, v15, v16);
  }

  v17 = re::introspect<re::CameraMatrices>(BOOL)::info;
  v8 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
  if (v8)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v8, 0, v19);
    v9 = (v19[1] - 0x61C8864680B583E9 + (v19[0] << 6) + (v19[0] >> 2)) ^ v19[0];
  }

  else
  {
    v9 = 0;
  }

  v18 = v9;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v18, &v17);
  v19[0] = (a2 - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2)) ^ v18;
  v10 = (*(**(a1 + 8) + 32))(*(a1 + 8), 176, 16);
  v17 = re::CameraMatrices::CameraMatrices(v10, *a3, *a4);
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v19, &v17);
}

uint64_t re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re12MXIFrameDataE";
  if (("N2re12MXIFrameDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re12MXIFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v17 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 72, 8);
  *v9 = &unk_1F5D125A8;
  v10 = *(a3 + 24);
  *(v9 + 8) = *(a3 + 8);
  *(v9 + 24) = v10;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 56) = *(a3 + 56);
  v11 = *(a3 + 40);
  *(v9 + 32) = *(a3 + 32);
  *(a3 + 32) = 0;
  v12 = *(a3 + 48);
  *(a3 + 56) = 0;
  v14 = *(v9 + 40);
  v13 = *(v9 + 48);
  *(v9 + 40) = v11;
  *(v9 + 48) = v12;
  *(a3 + 40) = v14;
  *(a3 + 48) = v13;
  *(v9 + 64) = *(a3 + 64);
  v16 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v17, &v16);
}

void re::MXIFrameData::~MXIFrameData(re::MXIFrameData *this)
{
  re::DynamicString::deinit((this + 32));
}

{
  re::DynamicString::deinit((this + 32));

  JUMPOUT(0x1E6906520);
}

uint64_t re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraMultiView>(void *a1, uint64_t a2, re::Allocator **a3, re::RenderFrame *a4, uint64_t a5, char *__s1, uint64_t a7)
{
  v8 = __s1;
  v127 = *MEMORY[0x1E69E9840];
  LODWORD(v14) = 2135587863;
  v88 = strcmp(__s1, "Camera");
  v104 = a7;
  if (*(a7 + 8))
  {
    v15 = *(a7 + 16);
  }

  else
  {
    v15 = a7 + 9;
  }

  if (a3[43])
  {
    v16 = strlen(v8);
    if (v16)
    {
      MurmurHash3_x64_128(v8, v16, 0, v108);
      v17 = (*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108;
    }

    else
    {
      v17 = 0;
    }

    v18 = strlen(v15);
    v19 = 0x9E3779B97F4A7C17;
    if (v18)
    {
      MurmurHash3_x64_128(v15, v18, 0, v108);
      v19 = ((*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108) - 0x61C8864680B583E9;
    }

    re::RenderGraphDataStore::add<re::MXIColorConversionState,re::MXIColorConversionState&>(a5, ((v17 >> 2) + (v17 << 6) + v19) ^ v17, a3[43]);
  }

  ScopeResolution = re::RenderFrame::getScopeResolution(a4, v15);
  v107 = 65290051;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, v15, &v107);
  v107 = 0;
  v20 = a3[42];
  v102 = a4;
  v103 = a5;
  if (!v20 || v88)
  {
LABEL_72:
    if (v88)
    {
      v62 = strcmp(v8, "Portal") == 0;
      goto LABEL_75;
    }
  }

  else
  {
    v21 = 0;
    v90 = v8;
    v92 = a3;
    __s = v15;
    while (*(v20 + 5) > v21)
    {
      v22 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](v20, v21);
      v23 = std::string::basic_string[abi:nn200100]<0>(v120, "_MXIOffscreen_");
      v24 = std::string::insert(v23, 0, v15);
      v25 = v24->__r_.__value_.__r.__words[2];
      *v108 = *&v24->__r_.__value_.__l.__data_;
      *&v108[16] = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v100 = v22;
      std::to_string(&v119, *(v22 + 40));
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v119;
      }

      else
      {
        v26 = v119.__r_.__value_.__r.__words[0];
      }

      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v119.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v119.__r_.__value_.__l.__size_;
      }

      v28 = std::string::append(v108, v26, size);
      v29 = v28->__r_.__value_.__r.__words[2];
      *__p = *&v28->__r_.__value_.__l.__data_;
      v106 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      if ((v108[23] & 0x80000000) != 0)
      {
        operator delete(*v108);
      }

      if (SBYTE3(v124) < 0)
      {
        operator delete(*v120);
      }

      if (v106 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      MurmurHash3_x64_128("MXI", 3uLL, 0, v108);
      v31 = *v108;
      v32 = *&v108[8];
      v33 = strlen(v30);
      v34 = 0x9E3779B97F4A7C17;
      if (v33)
      {
        MurmurHash3_x64_128(v30, v33, 0, v108);
        v34 = ((*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108) - 0x61C8864680B583E9;
      }

      v98 = v21;
      v35 = (v32 - 0x61C8864680B583E9 + (v31 << 6) + (v31 >> 2)) ^ v31;
      v36 = (v35 >> 2) + (v35 << 6) + v34;
      re::CameraMultiView::makeCameraDataInstancedMode(v104, *(a4 + 1), a3, v108);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a5, v36 ^ v35, v108);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v118);
      ++v117;
      ++v115;
      ++v113;
      v116 = 0;
      v114 = 0;
      v112 = 0;
      *&v110 = 0;
      ++DWORD2(v110);
      if (*&v108[8] && (v108[16] & 1) != 0)
      {
        (*(**&v108[8] + 40))();
      }

      v37 = *(a4 + 1);
      *v108 = &unk_1F5D035F0;
      *&v108[8] = *(v104 + 288);
      v108[12] = (*&v108[8] != -1) & *(v37 + 364);
      v108[13] = *(v104 + 701);
      re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(a5, v36 ^ v35, v108);
      v38 = a3[6];
      v39 = *a3;
      *v108 = &unk_1F5D06A20;
      re::DynamicString::DynamicString(&v108[8], v38, v39);
      re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a5, v36 ^ v35, v108);
      *v108 = &unk_1F5D06A20;
      if (*&v108[8] && (v108[16] & 1) != 0)
      {
        (*(**&v108[8] + 40))();
      }

      re::CameraMultiView::makeViewportPercentDataInstancedMode(v104, v40, v108);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v36 ^ v35, v108);
      v41 = re::RenderGraphDataStore::get<re::CameraData>(a5, v36 ^ v35);
      *(v41 + 884) = 1;
      *v108 = *(v41 + 890);
      v42 = re::RenderGraphDataStore::add<re::CameraMatrices,re::PerFrameAllocator *&,unsigned long>(a5, v36 ^ v35, a2, v108);
      if (*(v41 + 890))
      {
        v44 = v42;
        v45 = 0;
        v46 = v41 + 144;
        v47 = (v41 + 64);
        do
        {
          v48 = *(v41 + 128);
          if (v48 <= v45)
          {
            re::internal::assertLog(6, v43, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v45, v48);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v80, v83);
            __break(1u);
LABEL_120:
            re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v45, v53);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v81, v84);
            __break(1u);
LABEL_121:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v45, v55);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v82, v85);
            __break(1u);
LABEL_122:
            __p[0] = 0;
            v110 = 0u;
            v111 = 0u;
            v109 = 0u;
            memset(v108, 0, sizeof(v108));
            v77 = MEMORY[0x1E69E9C10];
            v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v120 = 136315906;
            *&v120[4] = "operator[]";
            v121 = 1024;
            if (v78)
            {
              v79 = 3;
            }

            else
            {
              v79 = 2;
            }

            v122 = 468;
            v123 = 2048;
            v124 = v44;
            v125 = 2048;
            v126 = v47;
            _os_log_send_and_compose_impl(v79, __p, v108, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v86, v87);
            _os_crash_msg();
            __break(1u);
          }

          if (*(v46 + 80) == 1)
          {
            v49 = *(v46 + 96);
            v50 = *(v46 + 112);
            v51 = *(v46 + 144);
            v109 = *(v46 + 128);
            v110 = v51;
            *v108 = v49;
            *&v108[16] = v50;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v108, v46);
          }

          re::DynamicArray<re::Matrix4x4<float>>::add((v44 + 48), v108);
          v53 = *(v41 + 128);
          if (v53 <= v45)
          {
            goto LABEL_120;
          }

          re::Projection::cullingProjectionMatrix(v108, v46);
          re::DynamicArray<re::Matrix4x4<float>>::add((v44 + 88), v108);
          v55 = *(v41 + 48);
          if (v55 <= v45)
          {
            goto LABEL_121;
          }

          re::RenderCamera::computeInverseTransform(v108, v47);
          re::DynamicArray<re::Matrix4x4<float>>::add((v44 + 8), v108);
          ++v45;
          v47 += 2;
          v46 += 240;
        }

        while (v45 < *(v41 + 890));
      }

      v15 = __s;
      re::DynamicString::DynamicString(v120, __s, *a2);
      *v108 = &unk_1F5D125A8;
      *&v108[8] = v100;
      *&v108[16] = ScopeResolution;
      *&v108[24] = ScopePixelFormat;
      re::DynamicString::DynamicString(&v109, v120);
      *&v111 = 0;
      a5 = v103;
      re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(v103, v36 ^ v35, v108);
      if (v109 && (BYTE8(v109) & 1) != 0)
      {
        (*(*v109 + 40))();
      }

      a4 = v102;
      v8 = v90;
      a3 = v92;
      LODWORD(v14) = 2135587863;
      if (!v98)
      {
        *v108 = &unk_1F5D125A8;
        *&v108[8] = v100;
        *&v108[16] = ScopeResolution;
        *&v108[24] = ScopePixelFormat;
        re::DynamicString::DynamicString(&v109, v120);
        *&v111 = 0;
        if (re::FontID::isValid((a1 + 87)))
        {
          v57 = a1[90];
          if (v57)
          {
            re::MXIProvider::initProxyMeshPart(v57, *(a1[28] + 696), *(v100 + 96), *(v100 + 100));
            *&v111 = *(a1[90] + 96);
          }
        }

        v58 = strlen(v90);
        if (v58)
        {
          MurmurHash3_x64_128(v90, v58, 0, &v119);
          v59 = (v119.__r_.__value_.__l.__size_ - 0x61C8864680B583E9 + (v119.__r_.__value_.__r.__words[0] << 6) + (v119.__r_.__value_.__r.__words[0] >> 2)) ^ v119.__r_.__value_.__r.__words[0];
        }

        else
        {
          v59 = 0;
        }

        v60 = strlen(__s);
        v61 = 0x9E3779B97F4A7C17;
        if (v60)
        {
          MurmurHash3_x64_128(__s, v60, 0, &v119);
          v61 = ((v119.__r_.__value_.__l.__size_ - 0x61C8864680B583E9 + (v119.__r_.__value_.__r.__words[0] << 6) + (v119.__r_.__value_.__r.__words[0] >> 2)) ^ v119.__r_.__value_.__r.__words[0]) - 0x61C8864680B583E9;
        }

        re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(v103, ((v59 >> 2) + (v59 << 6) + v61) ^ v59, v108);
        if (v109 && (BYTE8(v109) & 1) != 0)
        {
          (*(*v109 + 40))();
        }
      }

      if (v106 >= 0)
      {
        v56 = __p;
      }

      else
      {
        v56 = __p[0];
      }

      re::RenderFrame::emitGraph(v102, "MXI", v56);
      if (*v120 && (v120[8] & 1) != 0)
      {
        (*(**v120 + 40))();
      }

      if (SHIBYTE(v106) < 0)
      {
        operator delete(__p[0]);
      }

      v21 = v98 + 1;
      v20 = v92[42];
      if (!v20)
      {
        goto LABEL_72;
      }
    }
  }

  v62 = 1;
LABEL_75:
  result = a3[3];
  if (result)
  {
    v64 = !v62;
  }

  else
  {
    v64 = 1;
  }

  if (!v64)
  {
    re::PlanarReflectionContext::makeReflectionCameraMultiViews(result, a4, v104);
    if (*&v108[16])
    {
      v15 = v109;
      v65 = 3120 * *&v108[16];
      v14 = "Camera";
      do
      {
        (*(*a1 + 112))(a1, a2, a3, a4, a5, "Camera", v15);
        v15 += 3120;
        v65 -= 3120;
      }

      while (v65);
    }

    result = re::DynamicArray<re::CameraMultiView>::deinit(v108);
  }

  if (v62)
  {
    v93 = a3[41];
    if (v93)
    {
      v91 = *(v93 + 5);
      if (v91)
      {
        v66 = 0;
        while (1)
        {
          v95 = v66;
          result = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v93, v66);
          v67 = *(result + 6972);
          if (v67)
          {
            v68 = result + 6944;
            v15 = *(result + 6976);
            if (v15)
            {
              v14 = 0;
              v69 = *(result + 6960);
              do
              {
                if ((*v69 & 0x80000000) != 0)
                {
                  goto LABEL_95;
                }

                v69 += 216;
                ++v14;
              }

              while (v15 != v14);
              LODWORD(v14) = *(result + 6976);
            }

            else
            {
              LODWORD(v14) = 0;
            }

LABEL_95:
            v97 = result + 6944;
          }

          else
          {
            v68 = result + 32;
            v97 = result + 32 + 864 * *(result + 16);
          }

          v101 = v15;
          v99 = *(result + 6972);
LABEL_97:
          while (v67)
          {
            if (v15 == v14)
            {
              goto LABEL_117;
            }

            v70 = (*(v68 + 16) + 864 * v14 + 16);
LABEL_102:
            result = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((a2 + 32), *v70 >> 1);
            if (result != -1)
            {
              v44 = *(*(a2 + 40) + 16 * result + 8);
              v47 = *(a2 + 16);
              if (v47 <= v44)
              {
                goto LABEL_122;
              }

              v71 = *(a2 + 24) + 424 * v44;
              result = *(v71 + 24);
              if (result)
              {
                re::PlanarReflectionContext::makeReflectionCameraMultiViews(result, v102, v104);
                if (*&v108[16])
                {
                  v72 = v109;
                  v73 = 3120 * *&v108[16];
                  do
                  {
                    (*(*a1 + 112))(a1, a2, v71, v102, v103, "Camera", v72);
                    v72 += 3120;
                    v73 -= 3120;
                  }

                  while (v73);
                }

                result = re::DynamicArray<re::CameraMultiView>::deinit(v108);
                v15 = v101;
                v67 = v99;
              }
            }

            if (v67)
            {
              v74 = v14 + 1;
              if (*(v68 + 32) <= (v14 + 1))
              {
                LODWORD(v14) = v14 + 1;
              }

              else
              {
                LODWORD(v14) = *(v68 + 32);
              }

              while (v14 != v74)
              {
                v75 = v74;
                v76 = *(*(v68 + 16) + 864 * v74++);
                if (v76 < 0)
                {
                  LODWORD(v14) = v75;
                  goto LABEL_97;
                }
              }
            }

            else
            {
              v68 += 864;
            }
          }

          if (v68 != v97)
          {
            break;
          }

LABEL_117:
          v66 = v95 + 1;
          if (v95 + 1 == v91)
          {
            return result;
          }
        }

        v70 = (v68 + 16);
        goto LABEL_102;
      }
    }
  }

  return result;
}

uint64_t re::RealityEmitterBase::cameraViewHandlerCommon<re::CameraView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = 0x9E3779B97F4A7C17;
  re::CameraView::prepareEmitDefault(a7, a4, a5, a2, a3, a6);
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  v26 = a3;
  v14 = (*(a7 + 700) & *(a3 + 413));
  v15 = *(a7 + 705);
  v28 = v13;
  if ((v14 | v15))
  {
    if ((atomic_load_explicit(&qword_1EE1BFDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFDD0))
    {
      qword_1EE1BFDC8 = re::Hash<re::StringSlice>::operator()("DynamicFunctionConstants", 0x18uLL);
      __cxa_guard_release(&qword_1EE1BFDD0);
    }

    v16 = qword_1EE1BFDC8;
    v17 = strlen(v13);
    if (v17)
    {
      MurmurHash3_x64_128(v13, v17, 0, &v30);
      v18 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v16 << 6) - 0x61C8864680B583E9 + (v16 >> 2) + v18;
    v20 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a5, v19 ^ v16);
    if (!v20)
    {
      v30 = *(a4 + 392);
      LODWORD(v29[0]) = 2;
      v20 = re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(a5, v19 ^ v16, &v30, v29);
    }

    v13 = v28;
    if (v14)
    {
      if ((atomic_load_explicit(&qword_1EE1BFDE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFDE0))
      {
        qword_1EE1BFDD8 = re::Hash<re::StringSlice>::operator()("EnableDepthMitigation", 0x15uLL);
        v12 = 0x9E3779B97F4A7C17;
        __cxa_guard_release(&qword_1EE1BFDE0);
      }

      LODWORD(v30) = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v20 + 8), &qword_1EE1BFDD8, &v30);
    }

    if (v15)
    {
      if ((atomic_load_explicit(&qword_1EE1BFDF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFDF0))
      {
        qword_1EE1BFDE8 = re::Hash<re::StringSlice>::operator()("EnableUserEnvironment", 0x15uLL);
        v12 = 0x9E3779B97F4A7C17;
        __cxa_guard_release(&qword_1EE1BFDF0);
      }

      LODWORD(v30) = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v20 + 8), &qword_1EE1BFDE8, &v30);
    }
  }

  v21 = strlen(a6);
  if (v21)
  {
    MurmurHash3_x64_128(a6, v21, 0, &v30);
    v22 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
  }

  else
  {
    v22 = 0;
  }

  v23 = strlen(v13);
  if (v23)
  {
    MurmurHash3_x64_128(v13, v23, 0, &v30);
    v12 = ((v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30) - 0x61C8864680B583E9;
  }

  v24 = (v22 >> 2) + (v22 << 6) + v12;
  if (*(a1 + 136) == 1)
  {
    *(re::RenderGraphDataStore::add<re::TriangleFillModeData>(a5, v24 ^ v22) + 8) = 1;
  }

  v30 = &unk_1F5D12EC8;
  LODWORD(v31) = *(a1 + 140);
  re::RenderGraphDataStore::add<re::DefaultDepthFormatData,re::DefaultDepthFormatData&>(a5, v24 ^ v22, &v30);
  v30 = &unk_1F5D12F08;
  LODWORD(v31) = *(a1 + 144);
  re::RenderGraphDataStore::add<re::DefaultStencilFormatData,re::DefaultStencilFormatData&>(a5, v24 ^ v22, &v30);
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  if ((*(a4 + 448) & 1) == 0)
  {
    re::CameraView::registerFileProviders(a6, a7, *a4, v26, v29);
    re::DynamicArray<re::ProviderHandle>::operator=(&v30, v29);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v29);
  }

  re::RenderFrame::emitGraph(a4, a6, v28);
  re::CameraView::unregisterFileProviders(*a4, &v30);
  return re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v30);
}

uint64_t re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v7 = "N2re28DynamicFunctionConstantsDataE";
  if (("N2re28DynamicFunctionConstantsDataE" & 0x8000000000000000) != 0)
  {
    v8 = ("N2re28DynamicFunctionConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  v16 = (a2 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
  v11 = (*(**(a1 + 8) + 32))(*(a1 + 8), 72, 8);
  v12 = *a3;
  v13 = *a4;
  *v11 = &unk_1F5D12DC0;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 8) = 0u;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v11 + 8), v12, v13);
  v15 = v11;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v16, &v15);
}

uint64_t re::RenderGraphDataStore::add<re::TriangleFillModeData>(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14 = 0;
  {
    re::introspect<re::TriangleFillModeData>(BOOL)::info = re::introspect_TriangleFillModeData(0, v8, v9, v10, v11, v12);
  }

  v13 = re::introspect<re::TriangleFillModeData>(BOOL)::info;
  v4 = strlen(*(re::introspect<re::TriangleFillModeData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::TriangleFillModeData>(BOOL)::info + 6), v4, 0, v15);
    v5 = (v15[1] - 0x61C8864680B583E9 + (v15[0] << 6) + (v15[0] >> 2)) ^ v15[0];
  }

  else
  {
    v5 = 0;
  }

  v14 = v5;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v14, &v13);
  v15[0] = (a2 - 0x61C8864680B583E9 + (v14 << 6) + (v14 >> 2)) ^ v14;
  v6 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v6 = &unk_1F5D03690;
  v6[1] = 0;
  v13 = v6;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v15, &v13);
}

uint64_t re::RenderGraphDataStore::add<re::DefaultDepthFormatData,re::DefaultDepthFormatData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11 = 0;
  {
    re::introspect<re::DefaultDepthFormatData>(BOOL)::info = re::introspect_DefaultDepthFormatData(0);
  }

  v10 = re::introspect<re::DefaultDepthFormatData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::DefaultDepthFormatData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::DefaultDepthFormatData>(BOOL)::info + 6), v6, 0, v12);
    v7 = (v12[1] - 0x61C8864680B583E9 + (v12[0] << 6) + (v12[0] >> 2)) ^ v12[0];
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v11, &v10);
  v12[0] = (a2 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v8 = &unk_1F5D12EC8;
  *(v8 + 8) = *(a3 + 8);
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v12, &v10);
}

uint64_t re::RenderGraphDataStore::add<re::DefaultStencilFormatData,re::DefaultStencilFormatData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11 = 0;
  {
    re::introspect<re::DefaultStencilFormatData>(BOOL)::info = re::introspect_DefaultStencilFormatData(0);
  }

  v10 = re::introspect<re::DefaultStencilFormatData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::DefaultStencilFormatData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::DefaultStencilFormatData>(BOOL)::info + 6), v6, 0, v12);
    v7 = (v12[1] - 0x61C8864680B583E9 + (v12[0] << 6) + (v12[0] >> 2)) ^ v12[0];
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v11, &v10);
  v12[0] = (a2 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v8 = &unk_1F5D12F08;
  *(v8 + 8) = *(a3 + 8);
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v12, &v10);
}

uint64_t *re::DynamicArray<re::ProviderHandle>::operator=(uint64_t *result, uint64_t *a2)
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

uint64_t re::RealityEmitterBase::cameraViewHandlerCommon<re::CameraMultiView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = 0x9E3779B97F4A7C17;
  re::CameraMultiView::prepareEmitDefaultInstancedMode(a7, a4, a5, a2, a3, a6);
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  v26 = a3;
  v14 = (*(a7 + 700) & *(a3 + 413));
  v15 = *(a7 + 705);
  v28 = v13;
  if ((v14 | v15))
  {
    if ((atomic_load_explicit(&qword_1EE1BFE00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE00))
    {
      qword_1EE1BFDF8 = re::Hash<re::StringSlice>::operator()("DynamicFunctionConstants", 0x18uLL);
      __cxa_guard_release(&qword_1EE1BFE00);
    }

    v16 = qword_1EE1BFDF8;
    v17 = strlen(v13);
    if (v17)
    {
      MurmurHash3_x64_128(v13, v17, 0, &v30);
      v18 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v16 << 6) - 0x61C8864680B583E9 + (v16 >> 2) + v18;
    v20 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a5, v19 ^ v16);
    if (!v20)
    {
      v30 = *(a4 + 392);
      LODWORD(v29[0]) = 2;
      v20 = re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(a5, v19 ^ v16, &v30, v29);
    }

    v13 = v28;
    if (v14)
    {
      if ((atomic_load_explicit(&qword_1EE1BFE10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE10))
      {
        qword_1EE1BFE08 = re::Hash<re::StringSlice>::operator()("EnableDepthMitigation", 0x15uLL);
        v12 = 0x9E3779B97F4A7C17;
        __cxa_guard_release(&qword_1EE1BFE10);
      }

      LODWORD(v30) = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v20 + 8), &qword_1EE1BFE08, &v30);
    }

    if (v15)
    {
      if ((atomic_load_explicit(&qword_1EE1BFE20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE20))
      {
        qword_1EE1BFE18 = re::Hash<re::StringSlice>::operator()("EnableUserEnvironment", 0x15uLL);
        v12 = 0x9E3779B97F4A7C17;
        __cxa_guard_release(&qword_1EE1BFE20);
      }

      LODWORD(v30) = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v20 + 8), &qword_1EE1BFE18, &v30);
    }
  }

  v21 = strlen(a6);
  if (v21)
  {
    MurmurHash3_x64_128(a6, v21, 0, &v30);
    v22 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
  }

  else
  {
    v22 = 0;
  }

  v23 = strlen(v13);
  if (v23)
  {
    MurmurHash3_x64_128(v13, v23, 0, &v30);
    v12 = ((v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30) - 0x61C8864680B583E9;
  }

  v24 = (v22 >> 2) + (v22 << 6) + v12;
  if (*(a1 + 136) == 1)
  {
    *(re::RenderGraphDataStore::add<re::TriangleFillModeData>(a5, v24 ^ v22) + 8) = 1;
  }

  v30 = &unk_1F5D12EC8;
  LODWORD(v31) = *(a1 + 140);
  re::RenderGraphDataStore::add<re::DefaultDepthFormatData,re::DefaultDepthFormatData&>(a5, v24 ^ v22, &v30);
  v30 = &unk_1F5D12F08;
  LODWORD(v31) = *(a1 + 144);
  re::RenderGraphDataStore::add<re::DefaultStencilFormatData,re::DefaultStencilFormatData&>(a5, v24 ^ v22, &v30);
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  if ((*(a4 + 448) & 1) == 0)
  {
    re::CameraView::registerFileProviders(a6, a7, *a4, v26, v29);
    re::DynamicArray<re::ProviderHandle>::operator=(&v30, v29);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v29);
  }

  re::RenderFrame::emitGraph(a4, a6, v28);
  re::CameraView::unregisterFileProviders(*a4, &v30);
  return re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v30);
}

void re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(uint64_t a1, uint64_t a2, re::RenderFrame *a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 376);
  if (v4 && *v4 && re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((v4 + 1), (a4 + 736)))
  {
    if (*(a4 + 8))
    {
      v8 = *(a4 + 16);
    }

    else
    {
      v8 = (a4 + 9);
    }

    {
      re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(re::RenderSceneContext &,re::RenderFrame &,re::CameraView const&)::kCustomPostProcessTypeScopeHash = re::Hash<re::StringSlice>::operator()("CustomPostProcess", 0x11uLL);
    }

    v9 = re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(re::RenderSceneContext &,re::RenderFrame &,re::CameraView const&)::kCustomPostProcessTypeScopeHash;
    v10 = strlen(v8);
    if (v10)
    {
      MurmurHash3_x64_128(v8, v10, 0, &v18);
      v11 = (*(&v18 + 1) - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2)) ^ v18;
    }

    else
    {
      v11 = 0;
    }

    v12 = re::RenderGraphDataStore::add<re::CustomPostProcessRenderGraphData>((a3 + 32), ((v9 << 6) - 0x61C8864680B583E9 + (v9 >> 2) + v11) ^ v9);
    v13 = *(a2 + 376);
    re::ObjCObject::operator=((v12 + 8), v13);
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v12 + 16, (v13 + 1));
    if (*(a4 + 144) == 1)
    {
      v14 = *(a4 + 176);
      v18 = *(a4 + 160);
      v19 = v14;
      v15 = *(a4 + 208);
      v20 = *(a4 + 192);
      v21 = v15;
    }

    else
    {
      re::Projection::cullingProjectionMatrix(&v18, (a4 + 64));
    }

    v16 = v19;
    *(v12 + 64) = v18;
    *(v12 + 80) = v16;
    v17 = v21;
    *(v12 + 96) = v20;
    *(v12 + 112) = v17;
    re::RenderFrame::emitGraph(a3, "CustomPostProcess", v8);
  }
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 24 * v5 + 16) != v3)
  {
    while (1)
    {
      LODWORD(v5) = *(v7 + 24 * v5 + 8) & 0x7FFFFFFF;
      if (v5 == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v7 + 24 * v5 + 16) == v3)
      {
        return v7 + 24 * v5 + 16;
      }
    }

    return 0;
  }

  return v7 + 24 * v5 + 16;
}

void re::RealityEmitterBase::viewHandler<re::CameraView>(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraView>(a1, a2, a3, a4, a5, "Camera", a6);
    (*(*a1 + 120))(a1, a2, a3, a4, a5, "Camera", a6);
    re::RealityEmitterBase::afterCameraViewHandlerRealityRenderer(a1, v13, a3, a4, a5, v14, a6);
  }

  else
  {
    (*(*a1 + 88))(a1, a2, a3, a4, a5, "Camera", a6);
    (*(*a1 + 104))(a1, a2, a3, a4, a5, "Camera", a6);
    if (*(a1 + 448) == 1)
    {
      if (*(a6 + 8))
      {
        v15 = *(a6 + 16);
      }

      else
      {
        v15 = a6 + 9;
      }

      re::RenderFrame::emitGraph(a4, "OverdrawHeatmap", v15);
    }

    else
    {
      (*(*a1 + 128))(a1, a2, a3, a4, a5, "Camera", a6);
    }
  }

  ++*(a3 + 56);
}

void re::RealityEmitterBase::afterCameraViewHandlerRealityRenderer(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[11] = *MEMORY[0x1E69E9840];
  if (*(a7 + 8))
  {
    v11 = *(a7 + 16);
  }

  else
  {
    v11 = (a7 + 9);
  }

  if ((*(a7 + 703) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1C0030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0030))
    {
      qword_1EE1C0028 = re::Hash<re::StringSlice>::operator()("PostProcess", 0xBuLL);
      __cxa_guard_release(&qword_1EE1C0030);
    }

    v13 = qword_1EE1C0028;
    v14 = strlen(v11);
    if (v14)
    {
      MurmurHash3_x64_128(v11, v14, 0, v18);
      v16 = (v18[1] - 0x61C8864680B583E9 + (v18[0] << 6) + (v18[0] >> 2)) ^ v18[0];
    }

    else
    {
      v16 = 0;
    }

    v17 = (v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + v16;
    re::CameraView::makeViewportPercentData(a7, v15, v18);
    re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v17 ^ v13, v18);
    re::RenderFrame::emitGraph(a4, "PostProcess", v11);
    *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
  }

  re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(a1, a3, a4, a7);
}

void re::RealityEmitterBase::viewHandler<re::CameraMultiView>(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, char a7)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(a6 + 3104) == 1)
  {
    if (a7)
    {
      re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraMultiView>(a1, a2, a3, a4, a5, "Camera", a6);
      re::RealityEmitterBase::cameraViewHandlerCommon<re::CameraMultiView>(a1, a2, a3, a4, a5, "Camera", a6);
      if (*(a6 + 8))
      {
        v14 = *(a6 + 16);
      }

      else
      {
        v14 = (a6 + 9);
      }

      if ((*(a6 + 703) & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_1EE1C0040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0040))
        {
          qword_1EE1C0038 = re::Hash<re::StringSlice>::operator()("PostProcess", 0xBuLL);
          __cxa_guard_release(&qword_1EE1C0040);
        }

        v15 = qword_1EE1C0038;
        v16 = strlen(v14);
        if (v16)
        {
          MurmurHash3_x64_128(v14, v16, 0, &v48);
          v18 = (v49[0] - 0x61C8864680B583E9 + (v48 << 6) + (v48 >> 2)) ^ v48;
        }

        else
        {
          v18 = 0;
        }

        v25 = (v15 << 6) - 0x61C8864680B583E9 + (v15 >> 2) + v18;
        re::CameraMultiView::makeViewportPercentDataInstancedMode(a6, v17, &v48);
        v26 = re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v25 ^ v15, &v48);
        v44 = xmmword_1E3047670;
        v45 = xmmword_1E3047680;
        v46 = xmmword_1E30476A0;
        v47 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v50, &v44);
        v44 = xmmword_1E3047670;
        v45 = xmmword_1E3047680;
        v46 = xmmword_1E30476A0;
        v47 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v50, &v44);
        v44 = xmmword_1E3047670;
        v45 = xmmword_1E3047680;
        v46 = xmmword_1E30476A0;
        v47 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v53, &v44);
        v44 = xmmword_1E3047670;
        v45 = xmmword_1E3047680;
        v46 = xmmword_1E30476A0;
        v47 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v53, &v44);
        v44 = xmmword_1E3047670;
        v45 = xmmword_1E3047680;
        v46 = xmmword_1E30476A0;
        v47 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v49, &v44);
        v44 = xmmword_1E3047670;
        v45 = xmmword_1E3047680;
        v46 = xmmword_1E30476A0;
        v47 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v49, &v44);
        v58 = 2;
        v27 = qword_1EE1C0038;
        v28 = strlen(v14);
        if (v28)
        {
          MurmurHash3_x64_128(v14, v28, 0, &v44);
          v29 = (*(&v44 + 1) - 0x61C8864680B583E9 + (v44 << 6) + (v44 >> 2)) ^ v44;
        }

        else
        {
          v29 = 0;
        }

        v30 = (v27 << 6) - 0x61C8864680B583E9 + (v27 >> 2) + v29;
        v43 = 0;
        {
          re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0, v36, v37, v38, v39, v40);
        }

        v31 = v30 ^ v27;
        v42 = re::introspect<re::CameraMatrices>(BOOL)::info;
        v32 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
        if (v32)
        {
          MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v32, 0, &v44);
          v33 = (*(&v44 + 1) - 0x61C8864680B583E9 + (v44 << 6) + (v44 >> 2)) ^ v44;
        }

        else
        {
          v33 = 0;
        }

        v43 = v33;
        re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a5 + 176, &v43, &v42);
        *&v44 = (v31 - 0x61C8864680B583E9 + (v43 << 6) + (v43 >> 2)) ^ v43;
        v34 = (*(**(a5 + 8) + 32))(*(a5 + 8), 176, 16);
        *v34 = &unk_1F5D03790;
        re::DynamicArray<re::Matrix4x4<float>>::DynamicArray(v34 + 8, v49);
        re::DynamicArray<re::Matrix4x4<float>>::DynamicArray(v34 + 48, v50);
        re::DynamicArray<re::Matrix4x4<float>>::DynamicArray(v34 + 88, v53);
        v35 = v56;
        *(v34 + 128) = v56;
        if (v35 == 1)
        {
          *(v34 + 144) = v57;
        }

        *(v34 + 160) = v58;
        v42 = v34;
        re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a5 + 64, &v44, &v42);
        re::RenderFrame::emitGraph(a4, "PostProcess", v14);
        *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
        if (v53[0])
        {
          if (v55)
          {
            (*(*v53[0] + 40))();
          }

          v55 = 0;
          memset(v53, 0, sizeof(v53));
          ++v54;
        }

        if (v50[0])
        {
          if (v52)
          {
            (*(*v50[0] + 40))();
          }

          v52 = 0;
          memset(v50, 0, sizeof(v50));
          ++v51;
        }

        if (v49[0] && v49[4])
        {
          (*(*v49[0] + 40))();
        }
      }
    }

    else
    {
      (*(*a1 + 96))(a1, a2, a3, a4, a5, "Camera", a6);
      (*(*a1 + 112))(a1, a2, a3, a4, a5, "Camera", a6);
      if (*(a1 + 448) == 1)
      {
        if (*(a6 + 8))
        {
          v24 = *(a6 + 16);
        }

        else
        {
          v24 = (a6 + 9);
        }

        re::RenderFrame::emitGraph(a4, "OverdrawHeatmap", v24);
      }

      else
      {
        (*(*a1 + 136))(a1, a2, a3, a4, a5, "Camera", a6);
      }
    }
  }

  else
  {
    v41 = (a6 + 9);
    v19 = 3104;
    v20 = a6;
    do
    {
      if (a7)
      {
        re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraView>(a1, a2, a3, a4, a5, "Camera", v20);
        (*(*a1 + 120))(a1, a2, a3, a4, a5, "Camera", v20);
        re::RealityEmitterBase::afterCameraViewHandlerRealityRenderer(a1, v21, a3, a4, a5, v22, v20);
      }

      else
      {
        (*(*a1 + 88))(a1, a2, a3, a4, a5, "Camera", v20);
        (*(*a1 + 104))(a1, a2, a3, a4, a5, "Camera", v20);
        if (*(a1 + 448) == 1)
        {
          if (*(a6 + 8))
          {
            v23 = *(a6 + 16);
          }

          else
          {
            v23 = v41;
          }

          re::RenderFrame::emitGraph(a4, "OverdrawHeatmap", v23);
        }

        else
        {
          (*(*a1 + 128))(a1, a2, a3, a4, a5, "Camera", v20);
        }
      }

      v20 += 1552;
      v19 -= 1552;
    }

    while (v19);
  }

  ++*(a3 + 56);
}

void re::RealityEmitterBase::ensureCommonProviderAssets(re::RealityEmitterBase *this, AssetService *a2)
{
  if (a2)
  {
    v4 = (this + 456);
    if (!*(this + 70))
    {
      (*(a2->var0 + 1))(&v13, a2, "engine:BuiltinRenderGraphResources/Common/realityRendererCamera.rerendergraph");
      v5 = v4[6];
      *(this + 552) = v13;
      v13 = v5;
      v6 = *(this + 71);
      *(this + 71) = v14;
      v14 = v6;
      re::AssetHandle::~AssetHandle(&v13);
    }

    if (!*(this + 58))
    {
      (*(a2->var0 + 1))(&v13, a2, "engine:BuiltinRenderGraphResources/SFBSystemShell/overdrawCamera.rerendergraph");
      v7 = *v4;
      *(this + 456) = v13;
      v13 = v7;
      v8 = *(this + 59);
      *(this + 59) = v14;
      v14 = v8;
      re::AssetHandle::~AssetHandle(&v13);
    }

    if (!*(this + 61))
    {
      (*(a2->var0 + 1))(&v13, a2, "engine:BuiltinRenderGraphResources/Common/overdrawHeatmap.rerendergraph");
      v9 = *(this + 30);
      *(this + 30) = v13;
      v13 = v9;
      v10 = *(this + 62);
      *(this + 62) = v14;
      v14 = v10;
      re::AssetHandle::~AssetHandle(&v13);
    }

    if (!*(this + 73))
    {
      (*(a2->var0 + 1))(&v13, a2, "engine:BuiltinRenderGraphResources/Common/realityRendererPostProcess.rerendergraph");
      v11 = *(this + 36);
      *(this + 36) = v13;
      v13 = v11;
      v12 = *(this + 74);
      *(this + 74) = v14;
      v14 = v12;
      re::AssetHandle::~AssetHandle(&v13);
    }
  }
}

void re::RealityEmitterBase::preloadAssetsCommonProviders(re::RealityEmitterBase *this, re::RenderManager *a2, AssetService *a3)
{
  re::RealityEmitterBase::ensureCommonProviderAssets(this, a3);
  if (a2)
  {
    v5 = *(a2 + 328);
    if ((v5 & 1) == 0 && (*(a2 + 329) & 1) == 0)
    {
      return;
    }

    if (*(this + 70))
    {
      re::AssetHandle::loadAsync((this + 552));
      if ((v5 & 1) == 0)
      {
        return;
      }
    }

    else if (!*(a2 + 328))
    {
      return;
    }
  }

  else if (*(this + 70))
  {
    re::AssetHandle::loadAsync((this + 552));
  }

  if (*(this + 58))
  {
    re::AssetHandle::loadAsync((this + 456));
  }

  if (*(this + 61))
  {
    re::AssetHandle::loadAsync((this + 480));
  }

  if (*(this + 73))
  {

    re::AssetHandle::loadAsync((this + 576));
  }
}

void re::RealityEmitterBase::registerCommonProviders(re::RealityEmitterBase *this, re::RenderGraphManager *a2, AssetService *a3)
{
  v79[5] = *MEMORY[0x1E69E9840];
  re::RealityEmitterBase::ensureCommonProviderAssets(this, a3);
  v6 = *(a2 + 87);
  v7 = v6[328];
  v8 = v6[331];
  v9 = v7 | v6[329];
  if (v7 == 1)
  {
    isValid = re::FontID::isValid((this + 280));
    if (!isValid)
    {
      v11 = re::globalAllocators(isValid);
      v12 = (*(*v11[2] + 32))(v11[2], 40, 8);
      re::DynamicString::DynamicString(&v76, &v74);
      *v12 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v12 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v12 = &unk_1F5D125E8;
      if (v74)
      {
        if (BYTE8(v74))
        {
          (*(*v74 + 40))(v74, v75);
        }

        v74 = 0u;
        v75 = 0u;
      }

      re::RenderGraphManager::addProviderInternal(&v76, a2, "UploadMultiSceneConstants", v12, 0, 1);
      v13 = re::StringID::operator=((this + 280), &v76);
      *(this + 37) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v14 = re::FontID::isValid((this + 304));
    if (!v14)
    {
      v15 = re::globalAllocators(v14);
      v16 = (*(*v15[2] + 32))(v15[2], 40, 8);
      re::DynamicString::DynamicString(&v76, v73);
      *v16 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v16 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v16 = &unk_1F5D12630;
      if (*&v73[0])
      {
        if (BYTE8(v73[0]))
        {
          (*(**&v73[0] + 40))();
        }

        memset(v73, 0, sizeof(v73));
      }

      re::RenderGraphManager::addProviderInternal(&v76, a2, "MipmapGenerationContext", v16, 0, 1);
      v17 = re::StringID::operator=((this + 304), &v76);
      *(this + 40) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v18 = re::FontID::isValid((this + 328));
    if (!v18)
    {
      v19 = re::globalAllocators(v18);
      v20 = (*(*v19[2] + 32))(v19[2], 64, 8);
      re::DynamicString::DynamicString(&v76, v72);
      *v20 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v20 + 1), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v20 = &unk_1F5D12678;
      v20[6] = 0;
      v20[7] = 0;
      v20[5] = 0;
      if (*&v72[0])
      {
        if (BYTE8(v72[0]))
        {
          (*(**&v72[0] + 40))();
        }

        memset(v72, 0, sizeof(v72));
      }

      (*(a3->var0 + 1))(&v76, a3, "engine:default.metallib");
      v21 = *(v20 + 5);
      *(v20 + 5) = v76;
      v76 = v21;
      v22 = v20[7];
      v20[7] = v77;
      v77 = v22;
      re::AssetHandle::~AssetHandle(&v76);
      re::RenderGraphManager::addProviderInternal(&v76, a2, "BlurGenerationContext", v20, 0, 1);
      v23 = re::StringID::operator=((this + 328), &v76);
      *(this + 43) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v24 = re::FontID::isValid((this + 352));
    if (!v24)
    {
      v25 = re::globalAllocators(v24);
      v26 = (*(*v25[2] + 32))(v25[2], 40, 8);
      re::DynamicString::DynamicString(&v76, v71);
      *v26 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v26 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v26 = &unk_1F5D126C0;
      if (*&v71[0])
      {
        if (BYTE8(v71[0]))
        {
          (*(**&v71[0] + 40))();
        }

        memset(v71, 0, sizeof(v71));
      }

      re::RenderGraphManager::addProviderInternal(&v76, a2, "ProbeWriteContext", v26, 0, 1);
      v27 = re::StringID::operator=((this + 352), &v76);
      *(this + 46) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v28 = re::FontID::isValid((this + 400));
    if (!v28)
    {
      v29 = re::globalAllocators(v28);
      v30 = (*(*v29[2] + 32))(v29[2], 40, 8);
      re::DynamicString::DynamicString(&v76, v70);
      *v30 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v30 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v30 = &unk_1F5D12708;
      if (*&v70[0])
      {
        if (BYTE8(v70[0]))
        {
          (*(**&v70[0] + 40))();
        }

        memset(v70, 0, sizeof(v70));
      }

      re::RenderGraphManager::addProviderInternal(&v76, a2, "CustomPostProcess", v30, 0, 1);
      v31 = re::StringID::operator=((this + 400), &v76);
      *(this + 52) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v32 = re::FontID::isValid((this + 424));
    if (!v32)
    {
      v33 = re::globalAllocators(v32);
      v34 = (*(*v33[2] + 32))(v33[2], 40, 8);
      re::DynamicString::DynamicString(&v76, v69);
      *v34 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v34 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v34 = &unk_1F5D12750;
      if (*&v69[0])
      {
        if (BYTE8(v69[0]))
        {
          (*(**&v69[0] + 40))();
        }

        memset(v69, 0, sizeof(v69));
      }

      re::RenderGraphManager::addProviderInternal(&v76, a2, "VisualProxyHighFidelity", v34, 0, 1);
      v35 = re::StringID::operator=((this + 424), &v76);
      *(this + 55) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v36 = *(this + 73);
    if (v36)
    {
      v37 = atomic_load((v36 + 896));
      if (v37 != 2)
      {
        re::AssetHandle::loadNow(*(this + 73), 0);
      }
    }

    if (!re::FontID::isValid((this + 648)))
    {
      v38 = (*(a3->var0 + 1))(&v76, a3, "engine:default.metallib");
      v39 = re::globalAllocators(v38);
      v40 = (*(*v39[2] + 32))(v39[2], 64, 8);
      re::MeshShadowProvider::MeshShadowProvider(v40, v68, &v76);
      if (*&v68[0])
      {
        if (BYTE8(v68[0]))
        {
          (*(**&v68[0] + 40))();
        }

        memset(v68, 0, sizeof(v68));
      }

      re::RenderGraphManager::addProviderInternal(v67, a2, "ProjectiveMeshShadow", v40, 0, 1);
      v41 = re::StringID::operator=((this + 648), v67);
      *(this + 83) = v67[2];
      if (v67[0])
      {
        if (v67[0])
        {
        }
      }

      re::AssetHandle::~AssetHandle(&v76);
    }

    if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
    {
      dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
    }

    if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
    {
      v42 = re::FontID::isValid((this + 672));
      if (!v42)
      {
        v43 = re::globalAllocators(v42);
        v44 = (*(*v43[2] + 32))(v43[2], 64, 8);
        re::UIShadowProvider::UIShadowProvider(v44, v66);
        if (*&v66[0])
        {
          if (BYTE8(v66[0]))
          {
            (*(**&v66[0] + 40))();
          }

          memset(v66, 0, sizeof(v66));
        }

        re::RenderGraphManager::addProviderInternal(&v76, a2, "UIShadow", v44, 0, 1);
        v45 = re::StringID::operator=((this + 672), &v76);
        *(this + 86) = v77;
        if (v76)
        {
          if (v76)
          {
          }
        }
      }
    }

    v46 = re::FontID::isValid((this + 376));
    if (!v46)
    {
      v47 = re::globalAllocators(v46);
      v48 = v47[2];
      v79[0] = &unk_1F5D12798;
      v79[3] = v48;
      v79[4] = v79;
      v49 = re::globalAllocators(v47)[2];
      v78[0] = &unk_1F5D127F0;
      v78[3] = v49;
      v78[4] = v78;
      re::RenderGraphManager::addProvider(a2, "Camera", v79, v78, -100, &v76);
      v50 = re::StringID::operator=((this + 376), &v76);
      *(this + 49) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }

      *&v76 = 0;
      *(&v76 + 1) = &str_67;
      re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v78);
      re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v79);
    }
  }

  if (v9)
  {
    v51 = *(this + 70);
    if (v51)
    {
      v52 = atomic_load((v51 + 896));
      if (v52 != 2)
      {
        re::AssetHandle::loadNow(*(this + 70), 0);
      }
    }
  }

  if ((v7 | v8))
  {
    v53 = re::FontID::isValid((this + 696));
    if (!v53)
    {
      v54 = re::globalAllocators(v53);
      v55 = (*(*v54[2] + 32))(v54[2], 104, 8);
      re::DynamicString::DynamicString(&v76, v65);
      *v55 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v55 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v55 = &unk_1F5D15390;
      *(v55 + 40) = 1;
      *(v55 + 41) = 0;
      *(v55 + 45) = 0;
      *(v55 + 48) = 0u;
      *(v55 + 64) = 0u;
      *(v55 + 80) = 0u;
      *(v55 + 96) = 0;
      *(this + 90) = v55;
      if (*&v65[0])
      {
        if (BYTE8(v65[0]))
        {
          (*(**&v65[0] + 40))();
        }

        memset(v65, 0, sizeof(v65));
      }

      (*(a3->var0 + 1))(&v76, a3, "engine:mxi.metallib");
      v56 = *(this + 90);
      v57 = *(&v76 + 1);
      v58 = *(v56 + 48);
      *(v56 + 48) = v76;
      *(v56 + 56) = v57;
      v76 = v58;
      v59 = *(v56 + 64);
      *(v56 + 64) = v77;
      v77 = v59;
      re::AssetHandle::~AssetHandle(&v76);
      (*(a3->var0 + 1))(&v76, a3, "engine:mxiProxyMaterialIOS_Reprojection.rematerial");
      v60 = *(this + 90);
      v61 = *(&v76 + 1);
      v62 = *(v60 + 72);
      *(v60 + 72) = v76;
      *(v60 + 80) = v61;
      v76 = v62;
      v63 = *(v60 + 88);
      *(v60 + 88) = v77;
      v77 = v63;
      re::AssetHandle::~AssetHandle(&v76);
      re::RenderGraphManager::addProviderInternal(&v76, a2, "MXI", *(this + 90), 0, 1);
      v64 = re::StringID::operator=((this + 696), &v76);
      *(this + 89) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }
  }

  *(this + 28) = a2;
}

void re::RealityEmitterBase::unregisterCommonProviders(re::RealityEmitterBase *this, re::RenderGraphManager *a2)
{
  if (re::FontID::isValid((this + 232)))
  {
    re::StringID::StringID(v27, (this + 232));
    v27[2] = *(this + 31);
    v4 = re::RenderGraphManager::removeProvider(a2, v27);
    if (v27[0])
    {
      if (v27[0])
      {
      }
    }

    v27[0] = 0;
    v27[1] = &str_67;
    re::ProviderHandle::invalidate((this + 232));
  }

  if (re::FontID::isValid((this + 256)))
  {
    re::StringID::StringID(v26, this + 16);
    v26[2] = *(this + 34);
    v5 = re::RenderGraphManager::removeProvider(a2, v26);
    if (v26[0])
    {
      if (v26[0])
      {
      }
    }

    v26[0] = 0;
    v26[1] = &str_67;
    re::ProviderHandle::invalidate((this + 256));
  }

  if (re::FontID::isValid((this + 280)))
  {
    re::StringID::StringID(v25, (this + 280));
    v25[2] = *(this + 37);
    v6 = re::RenderGraphManager::removeProvider(a2, v25);
    if (v25[0])
    {
      if (v25[0])
      {
      }
    }

    v25[0] = 0;
    v25[1] = &str_67;
    re::ProviderHandle::invalidate((this + 280));
  }

  if (re::FontID::isValid((this + 304)))
  {
    re::StringID::StringID(v24, this + 19);
    v24[2] = *(this + 40);
    v7 = re::RenderGraphManager::removeProvider(a2, v24);
    if (v24[0])
    {
      if (v24[0])
      {
      }
    }

    v24[0] = 0;
    v24[1] = &str_67;
    re::ProviderHandle::invalidate((this + 304));
  }

  if (re::FontID::isValid((this + 352)))
  {
    re::StringID::StringID(v23, this + 22);
    v23[2] = *(this + 46);
    v8 = re::RenderGraphManager::removeProvider(a2, v23);
    if (v23[0])
    {
      if (v23[0])
      {
      }
    }

    v23[0] = 0;
    v23[1] = &str_67;
    re::ProviderHandle::invalidate((this + 352));
  }

  if (re::FontID::isValid((this + 400)))
  {
    re::StringID::StringID(v22, this + 25);
    v22[2] = *(this + 52);
    v9 = re::RenderGraphManager::removeProvider(a2, v22);
    if (v22[0])
    {
      if (v22[0])
      {
      }
    }

    v22[0] = 0;
    v22[1] = &str_67;
    re::ProviderHandle::invalidate((this + 400));
  }

  if (re::FontID::isValid((this + 424)))
  {
    re::StringID::StringID(v21, (this + 424));
    v21[2] = *(this + 55);
    v10 = re::RenderGraphManager::removeProvider(a2, v21);
    if (v21[0])
    {
      if (v21[0])
      {
      }
    }

    v21[0] = 0;
    v21[1] = &str_67;
    re::ProviderHandle::invalidate((this + 424));
  }

  if (re::FontID::isValid((this + 504)))
  {
    re::StringID::StringID(v20, (this + 504));
    v20[2] = *(this + 65);
    v11 = re::RenderGraphManager::removeProvider(a2, v20);
    if (v20[0])
    {
      if (v20[0])
      {
      }
    }

    v20[0] = 0;
    v20[1] = &str_67;
    re::ProviderHandle::invalidate((this + 504));
  }

  if (re::FontID::isValid((this + 528)))
  {
    re::StringID::StringID(v19, this + 33);
    v19[2] = *(this + 68);
    v12 = re::RenderGraphManager::removeProvider(a2, v19);
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    v19[0] = 0;
    v19[1] = &str_67;
    re::ProviderHandle::invalidate((this + 528));
  }

  if (re::FontID::isValid((this + 648)))
  {
    re::StringID::StringID(v18, (this + 648));
    v18[2] = *(this + 83);
    v13 = re::RenderGraphManager::removeProvider(a2, v18);
    if (v18[0])
    {
      if (v18[0])
      {
      }
    }

    v18[0] = 0;
    v18[1] = &str_67;
    re::ProviderHandle::invalidate((this + 648));
  }

  if (re::FontID::isValid((this + 376)))
  {
    re::StringID::StringID(v17, (this + 376));
    v17[2] = *(this + 49);
    v14 = re::RenderGraphManager::removeProvider(a2, v17);
    if (v17[0])
    {
      if (v17[0])
      {
      }
    }

    v17[0] = 0;
    v17[1] = &str_67;
    re::ProviderHandle::invalidate((this + 376));
  }

  if (re::FontID::isValid((this + 696)))
  {
    re::StringID::StringID(v16, (this + 696));
    v16[2] = *(this + 89);
    v15 = re::RenderGraphManager::removeProvider(a2, v16);
    if (v16[0])
    {
      if (v16[0])
      {
      }
    }

    v16[0] = 0;
    v16[1] = &str_67;
    re::ProviderHandle::invalidate((this + 696));
    *(this + 90) = 0;
  }
}