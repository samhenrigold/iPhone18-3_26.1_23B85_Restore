void re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
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
            re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
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

void *re::BucketArray<re::ecs2::PortalManagerStateTracking::buildWorldIdsForEntityHierarchy(re::ecs2::Entity const*)::EntityWorldId,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::PortalManagerStateTracking::buildWorldIdsForEntityHierarchy(re::ecs2::Entity const*)::EntityWorldId,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::PortalManagerStateTracking::buildWorldIdsForEntityHierarchy(re::ecs2::Entity const*)::EntityWorldId,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
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
          result = (*(**v3 + 32))(*v3, 512, 0);
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

int64x2_t re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1u);
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
  v16 = 56 * (v13 + 16 * v11);
  v17 = a1[1] + v16;
  *v17 = *a2;
  *(v17 + 8) = 0u;
  *(v17 + 40) = 0;
  *(v17 + 24) = 0u;
  *(v17 + 44) = 0x7FFFFFFFLL;
  *(v17 + 8) = *a3;
  *a3 = 0;
  v18 = *(v17 + 16);
  *(v17 + 16) = *(a3 + 8);
  *(a3 + 8) = v18;
  v19 = *(v17 + 24);
  *(v17 + 24) = *(a3 + 16);
  *(a3 + 16) = v19;
  LODWORD(v19) = *(v17 + 32);
  *(v17 + 32) = *(a3 + 24);
  *(a3 + 24) = v19;
  LODWORD(v19) = *(v17 + 36);
  *(v17 + 36) = *(a3 + 28);
  *(a3 + 28) = v19;
  LODWORD(v19) = *(v17 + 40);
  *(v17 + 40) = *(a3 + 32);
  *(a3 + 32) = v19;
  LODWORD(v19) = *(v17 + 44);
  *(v17 + 44) = *(a3 + 36);
  *(a3 + 36) = v19;
  if (v15 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  result = vaddq_s64(*(a1 + 3), v21);
  *(a1 + 3) = result;
  v23 = *(a1[1] + v16) ^ (*(a1[1] + v16) >> 30);
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v23) ^ ((0xBF58476D1CE4E5B9 * v23) >> 27));
  a1[5] ^= (v24 >> 31) ^ v24;
  return result;
}

double re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
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
  re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(v26, v9, v4);
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
        re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v26, (*(v24[0] + 8) + 56 * v16), *(v24[0] + 8) + 56 * v16 + 8);
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
  return re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(v26);
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, unint64_t *a2)
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
    v12 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(a1, v8, v6, a2, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 16 * v12;
    return v11 + 8;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 16 * v9 + 8) != v4)
  {
    v9 = *(v10 + 16 * v9) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 16 * v9;
  return v11 + 8;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 16 * v10, 16);
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
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v7);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v7);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  v12 = 16 * v7;
  *(v10 + v12) = v11 | 0x80000000;
  v13 = *(a1 + 8);
  *(*(a1 + 16) + v12) = *(*(a1 + 16) + 16 * v7) & 0x80000000 | *(v13 + 4 * a2);
  *(*(a1 + 16) + 16 * v7 + 8) = *a5;
  *(v13 + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      *&v15[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v7 = *&v15[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v15[16] + v10) & 0x80000000) != 0)
          {
            v12 = 0xBF58476D1CE4E5B9 * (*(*&v15[16] + v10 + 8) ^ (*(*&v15[16] + v10 + 8) >> 30));
            v13 = (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31);
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(a1, v13 % *(a1 + 24), v13, *&v15[16] + v10 + 8, (*&v15[16] + v10 + 8));
            v9 = *&v15[32];
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v15);
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

uint64_t re::DynamicInlineArray<unsigned long long,8ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 7uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

void re::HashBrown<unsigned long long,re::ecs2::PortalServiceQuery::WorldType,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
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
  memset(v44, 0, sizeof(v44));
  v10 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v44, v9, v4);
  v42[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v42[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_28;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v12;
    v43 = v16 - v12;
    if (v16 + 1 != v12)
    {
      do
      {
        v18 = *(v42[0] + 8);
        if (*(&v44[3] + 1))
        {
          v19 = *&v44[2];
        }

        else
        {
          *&v44[1] = 16;
          *&v35 = -1;
          *(&v35 + 1) = -1;
          **&v44[0] = v35;
          v19 = *&v44[1];
          *(&v44[0] + 1) = *&v44[0] + 16;
          *(&v44[1] + 1) = 0;
          v44[2] = *&v44[1];
          *&v44[3] = 0;
        }

        v20 = xmmword_1E304FAD0;
        if (!v19 || (v21 = *&v44[1], *&v44[1] > (8 * v19)))
        {
          re::HashBrown<unsigned long long,re::ecs2::PortalServiceQuery::WorldType,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(v44, 1u);
          v20 = xmmword_1E304FAD0;
          v21 = *&v44[1];
        }

        v22 = (v18 + 16 * v17);
        v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
        v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
        v25 = v21 >> 4;
        v26 = v24 % (v21 >> 4);
        v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v44[0] + 16 * v26)), v20)))), 0x3830282018100800)));
        if (v27 >= 0x40)
        {
          do
          {
            if (v26 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              ++v26;
            }

            v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v44[0] + 16 * v26)), v20)))), 0x3830282018100800)));
          }

          while (v27 > 0x3F);
        }

        v28 = *&v44[0] + 16 * v26;
        v29 = *(v28 + v27);
        *(v28 + v27) = v24 & 0x7F;
        v30 = *(&v44[0] + 1) + 16 * (v27 + 16 * v26);
        v31 = *v22;
        *v30 = *v22;
        *(v30 + 8) = *(v22 + 2);
        if (v29 == 255)
        {
          v32 = -1;
        }

        else
        {
          v32 = 0;
        }

        v33.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v33.i64[1] = v32;
        *(&v44[1] + 8) = vaddq_s64(*(&v44[1] + 8), v33);
        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
        *(&v44[2] + 1) ^= (v34 >> 31) ^ v34;
        v10 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v42);
        v17 = v43;
      }

      while (v43 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_28:
  v36 = *(&v44[3] + 1);
  *(&v44[3] + 1) = *(a1 + 56);
  v37 = v44[0];
  v38 = v44[1];
  v44[0] = *a1;
  *&v44[1] = v11;
  v39 = v44[2];
  v40 = *(a1 + 40);
  *(a1 + 48) = *&v44[3];
  *(a1 + 56) = v36;
  *(&v44[2] + 8) = v40;
  v41 = *(a1 + 24);
  *a1 = v37;
  *(a1 + 16) = v38;
  *(a1 + 32) = v39;
  *(&v44[1] + 8) = v41;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v44);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidChangeEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA4C8;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA520;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA578;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityDidReparentEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA5D0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA628;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA680;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA4C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA4C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA520;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA520;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA578;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA578;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA5D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA5D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA628;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA628;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA680;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA680;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::PeerVideoStreamingManager::~PeerVideoStreamingManager(id *this)
{
  if (*(this + 32) == 1)
  {
    re::PeerVideoStreamingManager::deinit(this);
  }

  re::Event<re::GeometricObjectBase>::~Event(this + 28);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(this + 22);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(this + 16);
  re::DynamicArray<unsigned long>::deinit((this + 10));
  v2 = this[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = this[1];
  this[1] = 0;
}

{
  re::PeerVideoStreamingManager::~PeerVideoStreamingManager(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PeerVideoStreamingManager::deinit(re::PeerVideoStreamingManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 14);
    v4 = 8 * v2;
    do
    {
      v3 += 8;
      RESyncNetSessionRemoveObserver();
      v4 -= 8;
    }

    while (v4);
  }

  RESyncServiceRemoveObserver();
  RESyncRelease();
  result = RESyncRelease();
  v7 = *(this + 28);
  v6 = this + 224;
  if (v7)
  {

    return re::DynamicArray<unsigned long>::deinit(v6);
  }

  return result;
}

uint64_t ___ZN2re25PeerVideoStreamingManager15setupSessionObsEv_block_invoke(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 4);
  v9 = re::globalAllocators(a1)[2];
  v10 = (*(*v9 + 32))(v9, 40, 0);
  *v10 = &unk_1F5CEA7A8;
  *(v10 + 8) = v8;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  v26[0] = &unk_1F5D0CA98;
  v26[1] = a4;
  v26[2] = a4;
  v26[3] = a4 + a5;
  re::OPackReader::OPackReader(v27, v26);
  v12 = re::OPackReader::next(v27, v11);
  if (!v12 || v30 != 12)
  {
    v18 = *re::peerVideoStreamingLogObjects(v12);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    LOWORD(v23) = 0;
    v19 = "Failed to read message. Unexpected OPack type. Skipping reading payload.";
    v20 = &v23;
    goto LABEL_39;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v14 = re::OPackReader::next(v27, v13);
  if (v14 && v30 == 13)
  {
    while (1)
    {
      v14 = re::OPackReader::next(v27, v15);
      if (!v14 || v30 != 6)
      {
        break;
      }

      if (v31 == 1)
      {
        v14 = re::OPackReader::next(v27, v16);
        if (!v14 || v30 != 6)
        {
          goto LABEL_32;
        }

        v25 = v31;
      }

      else if (v31)
      {
        re::OPackReader::next(v27, v16);
      }

      else
      {
        v14 = re::OPackReader::next(v27, v16);
        if (!v14 || v30 != 13)
        {
          goto LABEL_32;
        }

        while (1)
        {
          v14 = re::OPackReader::next(v27, v17);
          if (!v14 || v30 != 6)
          {
            break;
          }

          if (v31 == 1)
          {
            v14 = re::OPackReader::next(v27, v15);
            if (!v14 || v30 != 6)
            {
              goto LABEL_32;
            }

            v24 = v31;
          }

          else if (v31)
          {
            re::OPackReader::next(v27, v15);
          }

          else
          {
            v14 = re::OPackReader::next(v27, v15);
            if (!v14 || v30 != 6)
            {
              goto LABEL_32;
            }

            v23 = v31;
          }
        }

        if (v29 != 5)
        {
          goto LABEL_32;
        }
      }
    }

    if (v29 == 5)
    {
      (*(*v10 + 16))(v10, &v23, v27);
      goto LABEL_33;
    }
  }

LABEL_32:
  v18 = *re::peerVideoStreamingLogObjects(v14);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = 0;
    v19 = "Failed to read message header. Skipping reading payload.";
    v20 = &v22;
LABEL_39:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
  }

LABEL_33:
  if (v33)
  {
    if (v37)
    {
      (*(*v33 + 40))(v33);
    }

    v37 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    ++v36;
  }

  re::OPackReader::Buffer::~Buffer(&v32);
  re::zerocopy::BufferedReadStream::~BufferedReadStream(&v28);
  (**v10)(v10);
  return (*(*v9 + 40))(v9, v10);
}

uint64_t ___ZN2re25PeerVideoStreamingManager15setupSessionObsEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  result = RESyncParticipantGetPeerID();
  v50 = result;
  v5 = *(v3 + 160);
  if (v5)
  {
    v6 = 0;
    v7 = *(v3 + 144);
    while ((*v7 & 0x80000000) == 0)
    {
      v7 += 84;
      if (v5 == ++v6)
      {
        LODWORD(v6) = *(v3 + 160);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  while (v6 != v5)
  {
    v8 = *(v3 + 144) + 336 * v6;
    result = re::DynamicArray<unsigned long long>::remove(v8 + 24, &v50);
    if (result)
    {
      v9 = *re::peerVideoStreamingLogObjects(result);
      result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v10 = v50;
        v12 = *(v8 + 8);
        v11 = *(v8 + 16);
        v13 = v9;
        re::DynamicString::format(&v45, "%llu_%llu", v14, v12, v11);
        v15 = (v46 & 1) != 0 ? v47 : &v46 + 1;
        *buf = 134218242;
        *&buf[4] = v10;
        v52 = 2080;
        *v53 = v15;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Peer %llu left. Removed as client from write end: %s", buf, 0x16u);

        result = v45;
        if (v45)
        {
          if (v46)
          {
            result = (*(*v45 + 40))();
          }
        }
      }
    }

    v16 = *(v3 + 160);
    if (v16 <= v6 + 1)
    {
      v16 = v6 + 1;
    }

    while (v16 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(v3 + 144) + 336 * v6) & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v6) = v16;
LABEL_22:
    ;
  }

  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v48 = 0;
  v17 = *(v3 + 208);
  if (v17)
  {
    v18 = 0;
    v19 = *(v3 + 192);
    while (1)
    {
      v20 = *v19;
      v19 += 42;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        LODWORD(v18) = *(v3 + 208);
        break;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 != v17)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(v3 + 192) + 168 * v18;
      if (*(v23 + 32) == v50)
      {
        if (v22 >= v46)
        {
          if (v46 < v22 + 1)
          {
            if (v45)
            {
              v24 = 8;
              if (v46)
              {
                v24 = 2 * v46;
              }

              if (v24 <= v22 + 1)
              {
                v25 = v22 + 1;
              }

              else
              {
                v25 = v24;
              }

              re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v45, v25);
            }

            else
            {
              re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v45, v22 + 1);
              ++v48;
            }
          }

          v22 = v47;
          v21 = v49;
        }

        v21[v22] = *(v23 + 8);
        v22 = ++v47;
        ++v48;
      }

      result = re::DynamicArray<unsigned long long>::remove(v23 + 40, &v50);
      if (result)
      {
        v26 = *re::peerVideoStreamingLogObjects(result);
        result = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v27 = v50;
          v29 = *(v23 + 8);
          v28 = *(v23 + 16);
          v30 = v26;
          re::DynamicString::format(buf, "%llu_%llu", v31, v29, v28);
          v32 = &buf[9];
          if (buf[8])
          {
            v32 = *&v53[2];
          }

          *v54 = 134218242;
          v55 = v27;
          v56 = 2080;
          v57 = v32;
          _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Peer %llu left. Removed as proxy client from read end: %s", v54, 0x16u);

          result = *buf;
          if (*buf && (buf[8] & 1) != 0)
          {
            result = (*(**buf + 40))();
          }
        }
      }

      v33 = *(v3 + 208);
      if (v33 <= v18 + 1)
      {
        v33 = v18 + 1;
      }

      while (v33 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(*(v3 + 192) + 168 * v18) & 0x80000000) != 0)
        {
          goto LABEL_57;
        }
      }

      LODWORD(v18) = v33;
LABEL_57:
      ;
    }

    while (v18 != v17);
    v43 = v49;
    if (v22)
    {
      v34 = 16 * v22;
      v35 = v49;
      do
      {
        v44 = *v35;
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(v3 + 176, &v44);
        v37 = *re::peerVideoStreamingLogObjects(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v50;
          v39 = v44;
          v40 = v37;
          re::DynamicString::format(buf, "%llu_%llu", v41, v39);
          v42 = (buf[8] & 1) != 0 ? *&v53[2] : &buf[9];
          *v54 = 134218242;
          v55 = v38;
          v56 = 2080;
          v57 = v42;
          _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Peer %llu left. Removed read end: %s", v54, 0x16u);

          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))();
            }
          }
        }

        ++v35;
        v34 -= 16;
      }

      while (v34);
    }

    result = v45;
    if (v45)
    {
      if (v43)
      {
        return (*(*v45 + 40))();
      }
    }
  }

  return result;
}

void re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(uint64_t a1, re::PeerVideoStreamId *this)
{
  v4 = re::PeerVideoStreamId::hash(this);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v9, a1, *this, *(this + 1), v4);
  v5 = v11;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 168 * v11) & 0x7FFFFFFF;
    if (v12 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v10) = v7;
    }

    else
    {
      *(v6 + 168 * v12) = *(v6 + 168 * v12) & 0x80000000 | v7;
    }

    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(a1, v5);
    v8 = *(a1 + 40);
    *(*(a1 + 16) + 168 * v5) = *(*(a1 + 16) + 168 * v5) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v8 + 1;
  }
}

uint64_t re::PeerVideoStreamingManager::init(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a1 + 8), *a2);
  *(a1 + 16) = *(a2 + 8);
  re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 224), 0);
  ++*(a1 + 248);
  *(a1 + 72) = RESyncNetSessionObserverCreate();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN2re25PeerVideoStreamingManager15setupSessionObsEv_block_invoke;
  v11[3] = &__block_descriptor_40_e38_v36__0__RESyncNetSession__8Q16r_v24I32l;
  v11[4] = a1;
  RESyncNetSessionObserverOnReceiveData();
  RESyncNetSessionObserverOnParticipantLeave();
  *(a1 + 64) = RESyncServiceObserverCreate();
  RESyncServiceObserverOnSessionDidAdd();
  RESyncServiceObserverOnSessionWillRemove();
  RESyncServiceAddObserver();
  SessionCount = RESyncServiceGetSessionCount();
  if (SessionCount)
  {
    v8 = SessionCount;
    for (i = 0; i != v8; ++i)
    {
      RESyncServiceGetSession();
      v11[0] = RESyncSessionGetNetSession();
      if (v11[0])
      {
        re::DynamicArray<re::RigDataValue *>::add((a1 + 80), v11);
        RESyncNetSessionAddObserver();
      }
    }
  }

  result = RESyncServiceGetLocalPeerId();
  *(a1 + 40) = result;
  *(a1 + 32) = 1;
  return result;
}

uint64_t ___ZN2re25PeerVideoStreamingManager4initERKNS0_6ConfigE_block_invoke(uint64_t result, uint64_t a2)
{
  v6 = a2;
  v2 = *(result + 32);
  v3 = v2[12];
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2[14];
    while (*v5 != a2)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = v2[14];
  }

  if (v5 == (v2[14] + 8 * v3))
  {
LABEL_8:
    re::DynamicArray<re::RigDataValue *>::add((v2 + 10), &v6);

    return RESyncNetSessionAddObserver();
  }

  return result;
}

uint64_t ___ZN2re25PeerVideoStreamingManager4initERKNS0_6ConfigE_block_invoke_2(uint64_t result, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(result + 32);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *(v3 + 112); *i != a2; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }
  }

  else
  {
    i = *(v3 + 112);
  }

  if (i != (*(v3 + 112) + 8 * v4))
  {
    result = RESyncNetSessionRemoveObserver();
    v7 = *(v3 + 112);
    v8 = *(v3 + 96);
    j = v7;
    if (v8)
    {
      v10 = 8 * v8;
      for (j = *(v3 + 112); *j != a2; j += 8)
      {
        v10 -= 8;
        if (!v10)
        {
          return result;
        }
      }
    }

    v11 = &v7[8 * v8];
    if (j != v11)
    {
      v12 = j - v7;
      v13 = (j - v7) >> 3;
      if (v8 <= v12 >> 3)
      {
        v20 = 0;
        memset(v29, 0, sizeof(v29));
        v15 = MEMORY[0x1E69E9C10];
        v16 = v8;
        v17 = v13;
        v21 = 136315906;
        v22 = "removeAt";
        v23 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v24 = 931;
        v25 = 2048;
        v26 = v17;
        v27 = 2048;
        v28 = v16;
        _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

      v14 = v8 - 1;
      if (v14 > v13)
      {
        *&v7[v12] = *(v11 - 1);
      }

      *(v3 + 96) = v14;
      ++*(v3 + 104);
    }
  }

  return result;
}

void re::PeerVideoStreamingManager::createStream(re::PeerVideoStreamingManager *this@<X0>, uint64_t a2@<X1>, re *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  *&v34 = *(this + 5);
  v6 = v34;
  *(&v34 + 1) = a2;
  v32 = 0u;
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  v7 = re::DynamicString::setCapacity(&v24, 0);
  *(&v26 + 1) = 0;
  v27 = 0uLL;
  re::DynamicString::setCapacity(&v26, 0);
  v28 = 0uLL;
  *&v29 = 0;
  *(&v29 + 1) = 0x3FF0000000000000;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = 0;
  *&v31[0] = 0;
  *(v31 + 8) = *MEMORY[0x1E6960CC0];
  *(&v31[1] + 1) = *(MEMORY[0x1E6960CC0] + 16);
  v32 = *(v31 + 8);
  *&v33 = *(&v31[1] + 1);
  BYTE8(v33) = 0;
  memset(buf, 0, sizeof(buf));
  v8 = re::PeerVideoStreamId::hash(&v34);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, this + 128, v6, a2, v8);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v9 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(this + 128, *&buf[8], *buf);
    v10 = v34;
    *(v9 + 24) = *&v22[0];
    *(v9 + 8) = v10;
    *&v22[0] = 0;
    *(v9 + 32) = *(v22 + 8);
    *(v22 + 8) = 0u;
    *(v9 + 56) = *&v22[2];
    *&v22[2] = 0;
    ++DWORD2(v22[1]);
    *(v9 + 48) = 1;
    *(v9 + 80) = 0;
    v11 = v9 + 24;
    *(v9 + 64) = 0u;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    *(v9 + 88) = 0u;
    *(v9 + 120) = 0u;
    re::PeerVideoStreamingEncoder::operator=((v9 + 64), (&v22[2] + 8));
    *(v11 + 112) = v23;
    re::DynamicString::DynamicString((v11 + 128), &v24);
    re::DynamicString::DynamicString((v11 + 160), &v26);
    v12 = v32;
    *(v11 + 256) = v31[1];
    *(v11 + 272) = v12;
    *(v11 + 288) = v33;
    v13 = v29;
    *(v11 + 192) = v28;
    *(v11 + 208) = v13;
    v14 = v31[0];
    *(v11 + 224) = v30;
    *(v11 + 240) = v14;
    *(v11 + 296) = BYTE8(v33);
    ++*(this + 42);
  }

  else
  {
    v11 = *(this + 18) + 336 * *&buf[12] + 24;
  }

  v15 = re::PeerVideoFileWriter::destroy(&v24);
  if (v26)
  {
    if (BYTE8(v26))
    {
      (*(*v26 + 40))(v15);
    }

    v15 = 0uLL;
    v26 = 0u;
    v27 = 0u;
  }

  if (v24)
  {
    if (BYTE8(v24))
    {
      (*(*v24 + 40))(v15);
    }

    v24 = 0u;
    v25 = 0u;
  }

  re::PeerVideoStreamingEncoder::~PeerVideoStreamingEncoder((&v22[2] + 8));
  v16 = *&v22[0];
  if (*&v22[0] && *&v22[2])
  {
    v16 = (*(**&v22[0] + 40))();
  }

  v17 = *re::peerVideoStreamingLogObjects(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    re::DynamicString::format(v22, "%llu_%llu", v19, v6, a2);
    if (BYTE8(v22[0]))
    {
      v20 = *&v22[1];
    }

    else
    {
      v20 = v22 + 9;
    }

    v21 = *(this + 39);
    *buf = 136315650;
    *&buf[4] = v20;
    *&buf[12] = 2048;
    *&buf[14] = v11 + 40;
    *&buf[22] = 1024;
    v36 = v21;
    _os_log_debug_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEBUG, "Created stream: %s with encoder 0x%p (count=%u)", buf, 0x1Cu);

    if (*&v22[0] && (BYTE8(v22[0]) & 1) != 0)
    {
      (*(**&v22[0] + 40))();
    }
  }

  *&v22[0] = this;
  re::make::shared::object<re::PeerVideoStreamHandle,re::PeerVideoStreamId &,re::PeerVideoStreamingManager *>(a3, &v34, v22);
}

BOOL re::PeerVideoStreamingManager::hasClients(re *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *(v2 + 24);
  v3 = (v2 + 24);
  if (!v4)
  {
    v7 = *re::peerVideoStreamingLogObjects(a1);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v8 = "Invalid stream handle in method hasClients";
    v9 = &v11;
LABEL_9:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    return 0;
  }

  v5 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, v3);
  if (v5)
  {
    return *(v5 + 16) != 0;
  }

  v7 = *re::peerVideoStreamingLogObjects(0);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v10 = 0;
    v8 = "No write end found for handle in method hasClients";
    v9 = &v10;
    goto LABEL_9;
  }

  return result;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(uint64_t a1, re::PeerVideoStreamId *this)
{
  v4 = re::PeerVideoStreamId::hash(this);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v6, a1, *this, *(this + 1), v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 336 * v7 + 24;
  }
}

uint64_t re::PeerVideoStreamingManager::newClientsAwaitingFrame(re *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *(v2 + 24);
  v3 = (v2 + 24);
  if (!v4)
  {
    v7 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v6 = 0;
      return v6 & 1;
    }

    v12 = 0;
    v8 = "Invalid stream handle in method newClientsAwaitingFrame";
    v9 = &v12;
LABEL_10:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_7;
  }

  v5 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, v3);
  if (!v5)
  {
    v7 = *re::peerVideoStreamingLogObjects(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 0;
    v8 = "No write end found for handle in method newClientsAwaitingFrame";
    v9 = &v11;
    goto LABEL_10;
  }

  v6 = *(v5 + 112);
  return v6 & 1;
}

uint64_t re::PeerVideoStreamingManager::createFrameForWriting(re::StringID **a1, void *a2, const re::VideoBufferInfo *a3, uint64_t a4, uint64_t a5)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!*(*a2 + 24))
  {
    v23 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cacheOut) = 0;
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Failed to create frame for writing. Invalid stream handle.", &cacheOut, 2u);
    }

    return 0;
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    kdebug_trace();
  }

  v10 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet((a1 + 16), (*a2 + 24));
  if (!v10)
  {
    v24 = *re::peerVideoStreamingLogObjects(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v48 = *(*a2 + 24);
      v49 = *(*a2 + 32);
      v50 = v24;
      re::DynamicString::format(&cacheOut, "%llu_%llu", v51, v48, v49);
      v52 = (v60 & 1) != 0 ? v62 : v61;
      *buf = 136315138;
      v64 = v52;
      _os_log_error_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_ERROR, "Failed to create frame for writing. No write end found for handle %s.", buf, 0xCu);

      if (cacheOut)
      {
        if (v60)
        {
          (*(*cacheOut + 40))();
        }
      }
    }

    return 0;
  }

  re::PeerVideoStreamingEncoder::createPixelBufferFromPool(v10 + 40, a3, &pixelBuffer);
  v12 = pixelBuffer;
  if (pixelBuffer)
  {
    if (a1[7])
    {
      v13 = *MEMORY[0x1E695E480];
    }

    else
    {
      v33 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a1[2]);
      if (!v33)
      {
        v44 = *re::peerVideoStreamingLogObjects(0);
        v19 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
        if (!v19)
        {
          goto LABEL_42;
        }

        LOWORD(cacheOut) = 0;
        v22 = "Failed to create CVMetalTextureCache. No RenderManager";
        p_cacheOut = &cacheOut;
        v37 = v44;
        v38 = 2;
        goto LABEL_26;
      }

      cacheOut = 0;
      v13 = *MEMORY[0x1E695E480];
      v34 = CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, *(v33 + 26), 0, &cacheOut);
      if (v34)
      {
        v35 = v34;
        v21 = *re::peerVideoStreamingLogObjects(v34);
        v19 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          *buf = 67109120;
          LODWORD(v64) = v35;
          v22 = "Error creating texture cache: %d";
          goto LABEL_25;
        }

LABEL_42:
        v45 = *re::peerVideoStreamingLogObjects(v19);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v53 = *(*a2 + 24);
        v54 = *(*a2 + 32);
        v29 = v45;
        re::DynamicString::format(&cacheOut, "%llu_%llu", v55, v53, v54);
        if (v60)
        {
          v56 = v62;
        }

        else
        {
          v56 = v61;
        }

        *buf = 136315138;
        v64 = v56;
        v32 = "Failed to create frame for writing. Could not create CVMetalTexture for stream %s";
LABEL_59:
        _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);

        if (cacheOut && (v60 & 1) != 0)
        {
          (*(*cacheOut + 40))();
        }

        goto LABEL_43;
      }

      v47 = a1[7];
      a1[7] = cacheOut;
      if (v47)
      {
        CFRelease(v47);
      }
    }

    Width = CVPixelBufferGetWidth(v12);
    Height = CVPixelBufferGetHeight(v12);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v12);
    v18 = re::PeerVideoStreamingUtils::mtlPixelFormatFromCVPixelFormat(PixelFormatType, v17);
    cacheOut = 0;
    v19 = CVMetalTextureCacheCreateTextureFromImage(v13, a1[7], v12, 0, v18, Width, Height, 0, &cacheOut);
    if (!v19)
    {
      v39 = cacheOut;
      v57 = cacheOut;
      if (cacheOut)
      {
        v40 = pixelBuffer;
        v41 = cacheOut;
        if (pixelBuffer)
        {
          CFRetain(pixelBuffer);
          CFRetain(v39);
          v41 = v40;
        }

        CFRetain(v41);
        CFRetain(v39);
        v43 = *a4;
        v42 = *(a4 + 8);
        *a4 = v40;
        *(a4 + 8) = v39;
        *(a4 + 16) = a5;
        if (v42)
        {
          CFRelease(v42);
        }

        if (v43)
        {
          CFRelease(v43);
        }

        CFRelease(v39);
        if (v40)
        {
          CFRelease(v40);
        }

        if (!re::internal::enableSignposts(0, 0) || !re::internal::enableHighFrequencyNetworkTracing(0, 0) || (kdebug_trace(), (v39 = v57) != 0))
        {
          CFRelease(v39);
        }

        v25 = 1;
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v20 = v19;
    v21 = *re::peerVideoStreamingLogObjects(v19);
    v19 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      *buf = 67109120;
      LODWORD(v64) = v20;
      v22 = "Failed to create texture from image: %d";
LABEL_25:
      p_cacheOut = buf;
      v37 = v21;
      v38 = 8;
LABEL_26:
      _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, v22, p_cacheOut, v38);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v26 = *re::peerVideoStreamingLogObjects(v11);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = *(*a2 + 24);
    v28 = *(*a2 + 32);
    v29 = v26;
    re::DynamicString::format(&cacheOut, "%llu_%llu", v30, v27, v28);
    if (v60)
    {
      v31 = v62;
    }

    else
    {
      v31 = v61;
    }

    *buf = 136315138;
    v64 = v31;
    v32 = "Failed to create frame for writing. Could not create pixel buffer for stream %s.";
    goto LABEL_59;
  }

LABEL_43:
  v25 = 0;
LABEL_44:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v25;
}

void re::PeerVideoStreamingManager::writeFrame(id *a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 24))
  {
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    v6 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet((a1 + 16), (*a2 + 24));
    if (v6)
    {
      v7 = v6;
      if (*(v6 + 16))
      {
        Width = CVPixelBufferGetWidth(*a3);
        Height = CVPixelBufferGetHeight(*a3);
        BytesPerRow = CVPixelBufferGetBytesPerRow(*a3);
        v11 = BytesPerRow * Height;
        v12 = *(a3 + 16);
        v13 = *a2;
        if (*a2)
        {
          BytesPerRow = (v13 + 8);
        }

        v14 = re::globalAllocators(BytesPerRow)[2];
        v25 = v14;
        v15 = (*(*v14 + 32))(v14, 56, 0);
        *v15 = &unk_1F5CEA810;
        v15[1] = a1;
        v15[2] = v13;
        v15[3] = v11;
        v15[4] = Width;
        v15[5] = Height;
        v15[6] = v12;
        v26 = v15;
        v16 = *(v7 + 112);
        v22 = v14;
        v23 = 0;
        re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(v21, buf);
        v20 = a1[1];
        re::PeerVideoStreamingEncoder::encodeFrame((v7 + 40), a3, v16, v21, &v20);
        v17 = v20;
        v20 = 0;

        re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(v21);
        *(v7 + 112) = 0;
        re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(buf);
      }

      else if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {

        kdebug_trace();
      }
    }

    else
    {
      v19 = *re::peerVideoStreamingLogObjects(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Failed to write frame. No write end found for handle.", buf, 2u);
      }

      if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        kdebug_trace();
      }
    }
  }

  else
  {
    v18 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to write frame. Invalid stream handle.", buf, 2u);
    }
  }
}

void re::PeerVideoStreamingManager::writeFrameToVideoFile(re *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, float64_t a7, float64_t a8)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!*(*a2 + 24))
  {
    v24 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v25 = "Failed to write frame to video file. Invalid stream handle.";
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    return;
  }

  v8 = a6;
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    kdebug_trace();
  }

  v16 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, (*a2 + 24));
  if (!v16)
  {
    v24 = *re::peerVideoStreamingLogObjects(0);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v25 = "Failed to write frame to video file. No write end found for handle.";
    goto LABEL_13;
  }

  v17 = v16;
  if ((*(v16 + 296) & 1) == 0)
  {
    v18 = a4;
    v19 = [v18 URLByDeletingPathExtension];
    v20 = [v19 absoluteString];
    v21 = [v20 stringByAppendingFormat:@"_%llu", a5];

    v22 = [v18 pathExtension];
    if (v22)
    {
      v23 = [v18 pathExtension];
    }

    else
    {
      v23 = @"mov";
    }

    v26 = [v21 UTF8String];
    re::DynamicString::operator=((v17 + 128), buf);
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    v27 = [(__CFString *)v23 UTF8String];
    re::DynamicString::operator=((v17 + 160), buf);
    v28 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v28 = (*(**buf + 40))();
    }

    v29 = *re::peerVideoStreamingLogObjects(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v18;
      v31 = *(*a2 + 24);
      v30 = *(*a2 + 32);
      v32 = v29;
      re::DynamicString::format(&v36, "%llu_%llu", v33, v31, v30);
      if (v37)
      {
        v34 = *&v38[7];
      }

      else
      {
        v34 = v38;
      }

      *buf = 136315650;
      *&buf[4] = v34;
      v40 = 2112;
      v41 = v21;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Set video file writer output path for write end: %s, output path: %@.%@", buf, 0x20u);

      if (v36 && (v37 & 1) != 0)
      {
        (*(*v36 + 40))();
      }

      v18 = v35;
    }

    v17[296] = 1;
  }

  re::PeerVideoFileWriter::appendFrame((v17 + 128), a3, a5, v8, a7, a8);
  if (re::internal::enableSignposts(0, 0))
  {
    if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }
  }
}

void re::PeerVideoStreamingManager::stopAllVideoFileWriters(re::PeerVideoStreamingManager *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 40);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 18);
    while ((*v4 & 0x80000000) == 0)
    {
      v4 += 84;
      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v5 = *(this + 40);
    do
    {
      v6 = *(this + 18);
      v7 = v6 + 336 * v3;
      if (*(v7 + 320) == 1)
      {
        v8 = v7 + 24;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = ___ZN2re25PeerVideoStreamingManager23stopAllVideoFileWritersEv_block_invoke;
        v11[3] = &__block_descriptor_48_e5_v8__0l;
        v11[4] = v6 + 336 * v3 + 8;
        v11[5] = v7 + 24;
        v9 = _Block_copy(v11);
        v12[3] = re::globalAllocators(v9)[2];
        v13 = 0;
        v12[0] = &unk_1F5CEA878;
        v12[1] = _Block_copy(v9);
        v13 = v12;
        re::PeerVideoFileWriter::flush(v8 + 128, v12);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(v12);

        *(v8 + 296) = 0;
        v5 = *(this + 40);
      }

      if (v5 <= v3 + 1)
      {
        v10 = v3 + 1;
      }

      else
      {
        v10 = v5;
      }

      while (v10 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 18) + 336 * v3) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v3) = v10;
LABEL_18:
      ;
    }

    while (v3 != v2);
  }
}

double ___ZN2re25PeerVideoStreamingManager23stopAllVideoFileWritersEv_block_invoke(uint64_t **a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *re::peerVideoStreamingLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = *v3;
    v5 = v3[1];
    v6 = v2;
    re::DynamicString::format(&v10, "%llu_%llu", v7, v4, v5);
    if (v11)
    {
      v8 = *&v12[7];
    }

    else
    {
      v8 = v12;
    }

    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Flushed video file writer for write end: %s", buf, 0xCu);

    if (v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }
  }

  *&result = re::PeerVideoFileWriter::destroy((a1[5] + 16)).n128_u64[0];
  return result;
}

uint64_t anonymous namespace::makeMessage(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v16[0] = &unk_1F5D0C9F0;
  v16[1] = a1;
  v15 = v16;
  v17 = -46;
  re::zerocopy::writeAll(v16, &v17, 1);
  v17 = -30;
  re::zerocopy::writeAll(v16, &v17, 1);
  v17 = 8;
  re::zerocopy::writeAll(v16, &v17, 1);
  v6 = *a2;
  v7 = *(a2 + 8);
  v17 = -30;
  re::zerocopy::writeAll(v16, &v17, 1);
  v17 = 8;
  re::zerocopy::writeAll(v16, &v17, 1);
  re::OPackWriter::writeInteger(&v15, v6, v8, v9);
  v17 = 9;
  re::zerocopy::writeAll(v16, &v17, 1);
  re::OPackWriter::writeInteger(&v15, v7, v10, v11);
  v17 = 9;
  re::zerocopy::writeAll(v16, &v17, 1);
  re::OPackWriter::writeInteger(&v15, *(a2 + 16), v12, v13);
  return (*(**(a3 + 32) + 16))(*(a3 + 32), &v15);
}

uint64_t (***re::PeerVideoStreamingManager::makeUnsubscribeMessage(re *a1, uint64_t a2, uint64_t a3))(void)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  v7[1] = a3;
  v8 = 2;
  v4 = re::globalAllocators(a1)[2];
  v9[0] = &unk_1F5CEA938;
  v9[3] = v4;
  v9[4] = v9;
  return re::FunctionBase<24ul,void ()(re::OPackWriter &)>::destroyCallable(v9);
}

void re::PeerVideoStreamingManager::connectToStream(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, re *a5@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  *&v36 = a3;
  *(&v36 + 1) = a4;
  if (!a3)
  {
    v29 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    LOWORD(to) = 0;
    v30 = "Failed to connect to stream. Invalid stream id.";
LABEL_40:
    _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v30, &to, 2u);
    goto LABEL_41;
  }

  v10 = re::PeerVideoStreamId::hash(&v36);
  v11 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&to, a1 + 176, a3, a4, v10);
  if (HIDWORD(v38) != 0x7FFFFFFF)
  {
    v29 = *re::peerVideoStreamingLogObjects(v11);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    LOWORD(to) = 0;
    v30 = "There is already a connection to this stream. Multiple connections are unsupported.";
    goto LABEL_40;
  }

  if (!*(a1 + 96) || !**(a1 + 112))
  {
    v29 = *re::peerVideoStreamingLogObjects(v11);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LOWORD(to) = 0;
      v30 = "Failed to connect to stream. Could not get Session";
      goto LABEL_40;
    }

LABEL_41:
    *a5 = 0;
    return;
  }

  to = a1;
  re::make::shared::object<re::PeerVideoStreamHandle,re::PeerVideoStreamId &,re::PeerVideoStreamingManager *>(a5, &v36, &to);
  if (*a5)
  {
    v12 = (*a5 + 8);
  }

  else
  {
    v12 = 0;
  }

  objc_initWeak(&location, v12);
  to = 0;
  objc_copyWeak(&to, &location);
  v38 = a2;
  v39 = 0;
  v40 = 0uLL;
  v41 = 0;
  v47 = 0;
  v49 = 0;
  v51 = 0;
  session[0] = 0;
  session[1] = 0;
  v42 = 0;
  v44 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v13 = re::PeerVideoStreamId::hash(&v36);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&v31, a1 + 176, a3, a4, v13);
  if (HIDWORD(v32) == 0x7FFFFFFF)
  {
    v14 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(a1 + 176, v32, v31);
    *(v14 + 8) = v36;
    *(v14 + 24) = 0;
    objc_moveWeak((v14 + 24), &to);
    v15 = v39;
    *(v14 + 32) = v38;
    *(v14 + 40) = v15;
    *(v14 + 48) = v40;
    v39 = 0;
    v40 = 0uLL;
    *(v14 + 72) = v42;
    v42 = 0;
    ++v41;
    *(v14 + 64) = 1;
    *(v14 + 80) = *session;
    v16 = v44;
    *(v14 + 96) = v44;
    if (v16 == 1)
    {
      v17 = cf;
      v18 = v46;
      cf = 0;
      *(v14 + 104) = v17;
      *(v14 + 112) = v18;
    }

    v19 = v47;
    *(v14 + 120) = v47;
    if (v19 == 1)
    {
      *(v14 + 128) = v48;
    }

    v20 = v49;
    *(v14 + 136) = v49;
    if (v20 == 1)
    {
      *(v14 + 144) = v50;
    }

    *(v14 + 152) = v51;
    ++*(a1 + 216);
    if (v16 && cf)
    {
      CFRelease(cf);
    }
  }

  v21 = session[0];
  if (session[0])
  {
    VTDecompressionSessionInvalidate(session[0]);
    CFRelease(v21);
    session[0] = 0;
  }

  if (v39)
  {
    if (v42)
    {
      (*(*v39 + 40))();
    }

    v42 = 0;
    v40 = 0uLL;
    v39 = 0;
    ++v41;
  }

  objc_destroyWeak(&to);
  to = 0;
  objc_destroyWeak(&location);
  location = 0;
  *buf = a3;
  *&buf[8] = a4;
  *&buf[16] = 1;
  *&v40 = re::globalAllocators(v22)[2];
  *(&v40 + 1) = &to;
  to = &unk_1F5CEA8D0;
  re::FunctionBase<24ul,void ()(re::OPackWriter &)>::destroyCallable(&to);
  v24 = RESyncNetSessionSendData();
  v25 = *re::peerVideoStreamingLogObjects(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    re::DynamicString::format(&to, "%llu_%llu", v27, a3, a4);
    v28 = (v38 & 1) != 0 ? v39 : (&v38 + 1);
    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Opened read end for: %s, served by %llu. Sent subscribe message.", buf, 0x16u);

    if (to)
    {
      if (v38)
      {
        (*(*to + 40))();
      }
    }
  }

  if (v31)
  {
    if (v34)
    {
      (*(*v31 + 40))();
    }
  }
}

BOOL re::PeerVideoStreamingManager::consumeFrame(re *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v5 = *(v3 + 24);
  v4 = (v3 + 24);
  if (!v5)
  {
    v14 = *re::peerVideoStreamingLogObjects(a1);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v16 = 0;
    v15 = "Failed to consume frame. Invalid handle.";
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    return 0;
  }

  v7 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 176, v4);
  if (!v7)
  {
    v14 = *re::peerVideoStreamingLogObjects(0);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v16 = 0;
    v15 = "Failed to consume frame. There is no read end for the given handle.";
    goto LABEL_13;
  }

  v8 = v7;
  v10 = *(v7 + 72);
  v9 = v7 + 72;
  if (v10 != 1)
  {
    return 0;
  }

  v11 = *a3;
  *a3 = *(v8 + 80);
  *(v8 + 80) = v11;
  a3[1] = *(v8 + 88);
  v16[0] = 0;
  re::Optional<re::OutputVideoFrame>::operator=(v9, v16);
  if (v16[0] == 1 && cf)
  {
    CFRelease(cf);
  }

  v12 = a3[1];
  if (*(v8 + 112))
  {
    *(v8 + 120) = v12;
    return 1;
  }

  else
  {
    result = 1;
    *(v8 + 112) = 1;
    *(v8 + 120) = v12;
  }

  return result;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(uint64_t a1, re::PeerVideoStreamId *this)
{
  v4 = re::PeerVideoStreamId::hash(this);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v6, a1, *this, *(this + 1), v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 168 * v7 + 24;
  }
}

uint64_t re::Optional<re::OutputVideoFrame>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v3 = *(a1 + 8);
      v4 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v3;
      *(a1 + 16) = v4;
    }

    else
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        CFRelease(v6);
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 16) = v5;
  }

  return a1;
}

BOOL re::PeerVideoStreamingManager::peekFrame(re *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *(v3 + 24);
  v4 = (v3 + 24);
  if (!v5)
  {
    v12 = *re::peerVideoStreamingLogObjects(a1);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v16 = 0;
    v13 = "Failed to peek frame. Invalid handle.";
    v14 = &v16;
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
    return 0;
  }

  v7 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 176, v4);
  if (!v7)
  {
    v12 = *re::peerVideoStreamingLogObjects(0);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v15 = 0;
    v13 = "Failed to peek frame. There is no read end for the given handle.";
    v14 = &v15;
    goto LABEL_13;
  }

  v8 = v7;
  if (*(v7 + 72) != 1)
  {
    return 0;
  }

  v9 = *a3;
  v10 = *(v7 + 80);
  *a3 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *(a3 + 8) = *(v8 + 88);
  return 1;
}

void re::PeerVideoStreamingManager::lastConsumedFrameNumber(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v6 = *(v4 + 24);
  v5 = (v4 + 24);
  if (!v6)
  {
    v9 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      *a3 = 0;
      return;
    }

    v13 = 0;
    v10 = "Failed to get last consumed frame number. Invalid handle.";
    v11 = &v13;
LABEL_11:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_8;
  }

  v7 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 176, v5);
  if (!v7)
  {
    v9 = *re::peerVideoStreamingLogObjects(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v12 = 0;
    v10 = "Failed to get last consumed frame number. No read end for handle.";
    v11 = &v12;
    goto LABEL_11;
  }

  v8 = *(v7 + 112);
  *a3 = v8;
  if (v8 == 1)
  {
    *(a3 + 8) = *(v7 + 120);
  }
}

uint64_t re::PeerVideoStreamingManager::streamStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  if (!a2)
  {
    return 0;
  }

  if (re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, v5))
  {
    return 2;
  }

  if (re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 176, v5))
  {
    return 3;
  }

  return 1;
}

void re::PeerVideoStreamingManager::setUserData(re *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = (*a2 + 24);
  v4 = *v5;
  if (!*v5)
  {
    v12 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v15 = 0;
    v13 = "Error setting userData. Invalid handle";
    goto LABEL_8;
  }

  v8 = re::PeerVideoStreamId::hash((*a2 + 24));
  v9 = *(v3 + 32);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v15, a1 + 128, v4, v9, v8);
  if (v16 == 0x7FFFFFFF)
  {
    v10 = re::PeerVideoStreamId::hash(v5);
    v11 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v15, a1 + 176, v4, v9, v10);
    if (v16 == 0x7FFFFFFF)
    {
      v12 = *re::peerVideoStreamingLogObjects(v11);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *v15 = 0;
      v13 = "Error setting userData. No read or write end for handle.";
LABEL_8:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, v15, 2u);
      return;
    }

    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v15, a1 + 176, v4, v9, v10);
    *(*(a1 + 24) + 168 * v16 + 152) = a3;
  }

  else
  {
    v14 = re::PeerVideoStreamId::hash(v5);
    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v15, a1 + 128, v4, v9, v14);
    *(*(a1 + 18) + 336 * v16 + 144) = a3;
  }
}

void re::PeerVideoStreamingManager::getUserData(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v6 = (*a2 + 24);
  v5 = *v6;
  if (!*v6)
  {
    v12 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      v13 = "Error getting userData. Invalid handle";
      goto LABEL_13;
    }

LABEL_7:
    *a3 = 0;
    return;
  }

  v8 = re::PeerVideoStreamId::hash((*a2 + 24));
  v9 = *(v4 + 32);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v18, a1 + 128, v5, v9, v8);
  if (v19 == 0x7FFFFFFF)
  {
    v10 = re::PeerVideoStreamId::hash(v6);
    v11 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v18, a1 + 176, v5, v9, v10);
    if (v19 == 0x7FFFFFFF)
    {
      v12 = *re::peerVideoStreamingLogObjects(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        v13 = "Error getting userData. No read or write end for handle.";
LABEL_13:
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, v18, 2u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v18, a1 + 176, v5, v9, v10);
    v17 = *(a1 + 24) + 168 * v19;
    *a3 = 1;
    v16 = *(v17 + 152);
  }

  else
  {
    v14 = re::PeerVideoStreamId::hash(v6);
    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v18, a1 + 128, v5, v9, v14);
    v15 = *(a1 + 18) + 336 * v19;
    *a3 = 1;
    v16 = *(v15 + 144);
  }

  *(a3 + 8) = v16;
}

void re::PeerVideoStreamingManager::close(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  *&v40 = a2;
  *(&v40 + 1) = a3;
  v6 = re::PeerVideoStreamId::hash(&v40);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&v32, a1 + 128, a2, a3, v6);
  if (v35 == 0x7FFFFFFF)
  {
    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&v32, a1 + 176, a2, a3, v6);
    if (v35 == 0x7FFFFFFF)
    {
      return;
    }

    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&v32, a1 + 176, a2, a3, v6);
    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(a1 + 176, &v40);
    if (*(a1 + 96) && **(a1 + 112))
    {
      re::PeerVideoStreamingManager::makeUnsubscribeMessage(&v32, a2, a3);
      RESyncNetSessionSendData();
      v8 = v32;
      if (!v32 || !v37)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = *re::peerVideoStreamingLogObjects(v7);
      v8 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        goto LABEL_24;
      }

      v29 = v24;
      re::DynamicString::format(&v32, "%llu_%llu", v30, a2, a3);
      v31 = (v33 & 1) != 0 ? v36 : v34;
      *buf = 136315138;
      v42 = v31;
      _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Failed to send unsubscribe while closing read end %s. No Session", buf, 0xCu);

      v8 = v32;
      if (!v32 || (v33 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v8 = (*(*v8 + 40))(v8);
LABEL_24:
    v25 = *re::peerVideoStreamingLogObjects(v8);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v26 = v25;
    re::DynamicString::format(&v32, "%llu_%llu", v27, a2, a3);
    if (v33)
    {
      v28 = v36;
    }

    else
    {
      v28 = v34;
    }

    *buf = 136315138;
    v42 = v28;
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Closed read end: %s.", buf, 0xCu);

LABEL_29:
    if (v32)
    {
      if (v33)
      {
        (*(*v32 + 40))();
      }
    }

    return;
  }

  v9 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, &v40);
  if (*(v9 + 296) != 1)
  {
    v16 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(a1 + 128, &v40);
    v17 = re::peerVideoStreamingLogObjects(v16);
    v18 = re::PeerVideoStreamingLogObjects::loggingEnabled(v17);
    if (!v18)
    {
      return;
    }

    v19 = *re::peerVideoStreamingLogObjects(v18);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v20 = v19;
    re::DynamicString::format(&v32, "%llu_%llu", v21, a2, a3);
    if (v33)
    {
      v22 = v36;
    }

    else
    {
      v22 = v34;
    }

    v23 = *(a1 + 156);
    *buf = 136315394;
    v42 = v22;
    v43 = 1024;
    v44 = v23;
    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Closed write end: %s (count=%u)", buf, 0x12u);

    goto LABEL_29;
  }

  v10 = v9;
  v11 = *re::peerVideoStreamingLogObjects(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    re::DynamicString::format(&v32, "%llu_%llu", v13, a2, a3);
    v14 = (v33 & 1) != 0 ? v36 : v34;
    *buf = 136315138;
    v42 = v14;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Write end %s is active, deferring close until after flush", buf, 0xCu);

    if (v32)
    {
      if (v33)
      {
        (*(*v32 + 40))();
      }
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN2re25PeerVideoStreamingManager5closeENS_17PeerVideoStreamIdE_block_invoke;
  aBlock[3] = &__block_descriptor_56_e5_v8__0l;
  aBlock[4] = a1;
  v39 = v40;
  v15 = _Block_copy(aBlock);
  v45[3] = re::globalAllocators(v15)[2];
  v46 = 0;
  v45[0] = &unk_1F5CEA878;
  v45[1] = _Block_copy(v15);
  v46 = v45;
  re::PeerVideoFileWriter::flush(v10 + 128, v45);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v45);

  *(v10 + 296) = 0;
}

uint64_t ___ZN2re25PeerVideoStreamingManager5closeENS_17PeerVideoStreamIdE_block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = *re::peerVideoStreamingLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v3;
    re::DynamicString::format(&v18, "%llu_%llu", v7, v4, v5);
    v8 = (v19 & 1) != 0 ? v21 : v20;
    *buf = 136315138;
    v23 = v8;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Flushed video file writer for write end: %s", buf, 0xCu);

    if (v18)
    {
      if (v19)
      {
        (*(*v18 + 40))();
      }
    }
  }

  v9 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(v2 + 128, (a1 + 5));
  v10 = *re::peerVideoStreamingLogObjects(v9);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v12 = a1[5];
    v13 = a1[6];
    v14 = v10;
    re::DynamicString::format(&v18, "%llu_%llu", v15, v12, v13);
    if (v19)
    {
      v16 = v21;
    }

    else
    {
      v16 = v20;
    }

    v17 = *(v2 + 156);
    *buf = 136315394;
    v23 = v16;
    v24 = 1024;
    v25 = v17;
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Closed write end: %s (count=%u)", buf, 0x12u);

    result = v18;
    if (v18)
    {
      if (v19)
      {
        return (*(*v18 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(uint64_t a1, re::PeerVideoStreamId *this)
{
  v4 = re::PeerVideoStreamId::hash(this);
  result = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v10, a1, *this, *(this + 1), v4);
  v6 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 336 * v12) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v7 + 336 * v13) = *(v7 + 336 * v13) & 0x80000000 | v8;
    }

    result = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(a1, v6);
    v9 = *(a1 + 40);
    *(*(a1 + 16) + 336 * v6) = *(*(a1 + 16) + 336 * v6) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v6;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

void _ZNK2re8internal8CallableIZZNS_25PeerVideoStreamingManager15setupSessionObsEvEUb_E3__0FvRKN12_GLOBAL__N_113MessageHeaderERNS_11OPackReaderEEJEEclES7_S9_(re *a1, uint64_t a2, re::OPackReader *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = *(a2 + 16);
  if (v5 != 3)
  {
    if (v5 == 2)
    {
      v15 = *(a1 + 2);
      v16 = *a2;
      v17 = *(a2 + 8);
      *v80 = *a2;
      *&v80[8] = v17;
      cf = v15;
      v18 = *re::peerVideoStreamingLogObjects(a1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v15;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Received unsubscribe message from peer %llu", buf, 0xCu);
      }

      re::OPackReader::next(a3, v19);
      v20 = re::PeerVideoStreamId::hash(v80);
      re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 128, v16, v17, v20);
      if (v84 == 0x7FFFFFFF)
      {
        v21 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 176, v16, v17, v20);
        if (v84 == 0x7FFFFFFF)
        {
          v13 = *re::peerVideoStreamingLogObjects(v21);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v14 = "Received unsubscribe message for nonexisting stream id.";
          goto LABEL_16;
        }

        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 176, v16, v17, v20);
        v50 = re::DynamicArray<unsigned long long>::remove(*(v4 + 192) + 168 * v84 + 40, &cf);
        if (!v50)
        {
          return;
        }

        --*(v4 + 48);
        v51 = *re::peerVideoStreamingLogObjects(v50);
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v42 = v51;
        re::DynamicString::format(buf, "%llu_%llu", v52, v16, v17);
        if (buf[8])
        {
          v53 = v85;
        }

        else
        {
          v53 = &buf[9];
        }

        LODWORD(v88) = 136315138;
        *(&v88 + 4) = v53;
        v45 = "Removed as proxy client from read end: %s";
      }

      else
      {
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 128, v16, v17, v20);
        v40 = re::DynamicArray<unsigned long long>::remove(*(v4 + 144) + 336 * v84 + 24, &cf);
        if (!v40)
        {
          return;
        }

        --*(v4 + 48);
        v41 = *re::peerVideoStreamingLogObjects(v40);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v42 = v41;
        re::DynamicString::format(buf, "%llu_%llu", v43, v16, v17);
        if (buf[8])
        {
          v44 = v85;
        }

        else
        {
          v44 = &buf[9];
        }

        LODWORD(v88) = 136315138;
        *(&v88 + 4) = v44;
        v45 = "Removed as client from write end: %s";
      }

      v54 = &v88;
      v55 = v42;
      v56 = 12;
    }

    else
    {
      if (v5 != 1)
      {
        v38 = *re::peerVideoStreamingLogObjects(a1);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Received unknown message type.", buf, 2u);
        }

        return;
      }

      v6 = *(a1 + 2);
      v7 = *a2;
      v8 = *(a2 + 8);
      *&v88 = *a2;
      *(&v88 + 1) = v8;
      cf = v6;
      v9 = *re::peerVideoStreamingLogObjects(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v6;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Received subscribe message from peer %llu", buf, 0xCu);
      }

      re::OPackReader::next(a3, v10);
      v11 = re::PeerVideoStreamId::hash(&v88);
      re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 128, v7, v8, v11);
      if (v84 == 0x7FFFFFFF)
      {
        v12 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 176, v7, v8, v11);
        if (v84 == 0x7FFFFFFF)
        {
          v13 = *re::peerVideoStreamingLogObjects(v12);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v14 = "Received subscribe message for nonexisting stream id.";
LABEL_16:
          _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
          return;
        }

        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 176, v7, v8, v11);
        v57 = (*(v4 + 192) + 168 * v84);
        v58 = v57[7];
        if (v58)
        {
          v59 = 8 * v58;
          v60 = v57[9];
          while (*v60 != v6)
          {
            ++v60;
            v59 -= 8;
            if (!v59)
            {
              goto LABEL_85;
            }
          }
        }

        else
        {
          v60 = v57[9];
        }

        if (v60 != (v57[9] + 8 * v58))
        {
          return;
        }

LABEL_85:
        v72 = re::DynamicArray<re::TransitionCondition *>::add((v57 + 5), &cf);
        ++*(v4 + 48);
        v73 = *re::peerVideoStreamingLogObjects(v72);
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v74 = cf;
        v42 = v73;
        re::DynamicString::format(buf, "%llu_%llu", v75, v7, v8);
        if (buf[8])
        {
          v76 = v85;
        }

        else
        {
          v76 = &buf[9];
        }

        *v80 = 134218242;
        *&v80[4] = v74;
        *&v80[12] = 2080;
        *&v80[14] = v76;
        v45 = "Added proxy client %llu to read end %s";
      }

      else
      {
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 128, v7, v8, v11);
        v46 = *(v4 + 144) + 336 * v84;
        v47 = *(v46 + 40);
        if (v47)
        {
          v48 = 8 * v47;
          v49 = *(v46 + 56);
          while (*v49 != v6)
          {
            ++v49;
            v48 -= 8;
            if (!v48)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          v49 = *(v46 + 56);
        }

        if (v49 != (*(v46 + 56) + 8 * v47))
        {
          return;
        }

LABEL_60:
        v61 = re::DynamicArray<re::TransitionCondition *>::add((v46 + 24), &cf);
        *(v46 + 136) = 1;
        ++*(v4 + 48);
        v62 = *re::peerVideoStreamingLogObjects(v61);
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v63 = cf;
        v42 = v62;
        re::DynamicString::format(buf, "%llu_%llu", v64, v7, v8);
        if (buf[8])
        {
          v65 = v85;
        }

        else
        {
          v65 = &buf[9];
        }

        *v80 = 134218242;
        *&v80[4] = v63;
        *&v80[12] = 2080;
        *&v80[14] = v65;
        v45 = "Added client %llu to write end %s";
      }

      v54 = v80;
      v55 = v42;
      v56 = 22;
    }

    _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, v45, v54, v56);

    v70 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
LABEL_93:
      (*(*v70 + 40))(v70);
      return;
    }

    return;
  }

  v23 = *a2;
  v22 = *(a2 + 8);
  v24 = *(a1 + 2);
  *&v88 = *a2;
  *(&v88 + 1) = v22;
  v25 = re::internal::enableSignposts(0, 0);
  if (v25)
  {
    v25 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (v25)
    {
      v25 = kdebug_trace();
    }
  }

  if (!*(v4 + 96) || !**(v4 + 112))
  {
    v39 = *re::peerVideoStreamingLogObjects(v25);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Failed to process frame message. No Session available.", buf, 2u);
    }

    if (!re::internal::enableSignposts(0, 0) || !re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      return;
    }

    goto LABEL_34;
  }

  v26 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(v4 + 176, &v88);
  if (!v26)
  {
    v66 = *re::peerVideoStreamingLogObjects(0);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = v66;
      re::DynamicString::format(buf, "%llu_%llu", v68, v23, v22);
      v69 = (buf[8] & 1) != 0 ? v85 : &buf[9];
      *v80 = 136315138;
      *&v80[4] = v69;
      _os_log_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_DEFAULT, "Received frame message for unknown stream id %s. Sending unsubscribe.", v80, 0xCu);

      if (*buf)
      {
        if (buf[8])
        {
          (*(**buf + 40))();
        }
      }
    }

    re::PeerVideoStreamingManager::makeUnsubscribeMessage(buf, v23, v22);
    RESyncNetSessionSendData();
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    v70 = *buf;
    if (*buf && v87)
    {
      goto LABEL_93;
    }

    return;
  }

  v28 = v26;
  v78 = 0;
  cf = 0;
  v29 = re::PeerVideoStreamingUtils::readCMSampleBuffer(a3, (v26 + 64), &cf, &v78, v27);
  if (v29)
  {
    v30 = v78;
    v31 = re::globalAllocators(v29)[2];
    v86 = v31;
    v32 = (*(*v31 + 32))(v31, 48, 0);
    *v32 = &unk_1F5CEA9E8;
    *(v32 + 8) = v4;
    *(v32 + 16) = v88;
    *(v32 + 32) = v30;
    *(v32 + 40) = v24;
    v87 = v32;
    v33 = cf;
    v81 = v31;
    v82 = 0;
    re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::operator=<24ul>(v80, buf);
    v77 = *(v4 + 8);
    re::PeerVideoStreamingDecoder::decodeFrame((v28 + 56), v33, v80, &v77);
    v34 = v77;
    v77 = 0;

    re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::destroyCallable(v80);
    CFRelease(cf);
    v35 = *(v28 + 32);
    if (v35)
    {
      v36 = *(v28 + 48);
      v37 = 8 * v35;
      do
      {
        v36 += 8;
        RESyncNetSessionSendDataUnreliableUnordered();
        v37 -= 8;
      }

      while (v37);
    }

    re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::destroyCallable(buf);
    return;
  }

  v71 = *re::peerVideoStreamingLogObjects(v29);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_ERROR, "Failed to read CMSampleBuffer", buf, 2u);
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
LABEL_34:
    kdebug_trace();
  }
}

uint64_t _ZNK2re8internal8CallableIZZNS_25PeerVideoStreamingManager15setupSessionObsEvEUb_E3__0FvRKN12_GLOBAL__N_113MessageHeaderERNS_11OPackReaderEEJEE9cloneIntoEPv(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA7A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t _ZN2re8internal8CallableIZZNS_25PeerVideoStreamingManager15setupSessionObsEvEUb_E3__0FvRKN12_GLOBAL__N_113MessageHeaderERNS_11OPackReaderEEJEE8moveIntoEPv(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA7A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CEA810;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CEA810;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::operator()(void *a1, CMSampleBufferRef *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a1[1];
  TotalSampleSize = CMSampleBufferGetTotalSampleSize(*a2);
  NumSamples = CMSampleBufferGetNumSamples(v3);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v3, 0);
  Count = CFArrayGetCount(SampleAttachmentsArray);
  v9 = Count;
  v10 = *re::peerVideoStreamingLogObjects(Count);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v22 = a1[3];
    v23 = a1[4];
    v24 = a1[5];
    *buf = 134219520;
    *&buf[4] = v22;
    *&buf[12] = 2048;
    *&buf[14] = TotalSampleSize;
    *&buf[22] = 2048;
    v29 = v22 / TotalSampleSize;
    *v30 = 2048;
    *&v30[2] = v23;
    v31 = 2048;
    v32 = v24;
    v33 = 1024;
    v34 = NumSamples;
    v35 = 1024;
    v36 = v9;
    _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "Encode succeeded. Input buffer size: %lu. Encoded buffer size: %lu. Compression factor: %lu, w: %zu, h: %zu, n:%d/%d", buf, 0x40u);
  }

  v11 = a1[2];
  v12 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(v4 + 128, (v11 + 24));
  if (!v12 || (v13 = v12, !*(v12 + 2)))
  {
    result = re::internal::enableSignposts(0, 0);
    if (!result)
    {
      return result;
    }

    result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (!result)
    {
      return result;
    }

    return kdebug_trace();
  }

  if (*(v4 + 96) && **(v4 + 112))
  {
    v14 = a1[6];
    v26 = *(v11 + 24);
    v27 = 3;
    v15 = re::globalAllocators(v12)[2];
    *&buf[16] = v14;
    v29 = v15;
    *buf = &unk_1F5CEA990;
    *&buf[8] = v3;
    *v30 = buf;
    re::FunctionBase<24ul,void ()(re::OPackWriter &)>::destroyCallable(buf);
    v17 = *(v13 + 2);
    if (v17)
    {
      v18 = *(v13 + 4);
      v19 = 8 * v17;
      do
      {
        v18 += 8;
        RESyncNetSessionSendDataUnreliableUnordered();
        v19 -= 8;
      }

      while (v19);
    }

    if ((re::internal::enableSignposts(0, 0) & 1) != 0 && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    result = v25[0];
    if (v25[0])
    {
      if (v25[4])
      {
        return (*(*v25[0] + 40))();
      }
    }

    return result;
  }

  v21 = *re::peerVideoStreamingLogObjects(v12);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "No Session available in OnEncodeSucceeded", buf, 2u);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (result)
    {
      return kdebug_trace();
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5CEA810;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  v7 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v7;
  return a2;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA810;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v2;
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(uint64_t a1))(void)
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

void re::internal::Callable<void({block_pointer} {__strong})(void),void ()(void)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<void({block_pointer} {__strong})(void),void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEA878;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<void({block_pointer} {__strong})(void),void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEA878;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PeerVideoStreamingManager::makeSubscribeMessage(re::PeerVideoStreamId)::$_0,void ()(re::OPackWriter &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEA8D0;
  return result;
}

void *re::internal::Callable<re::PeerVideoStreamingManager::makeSubscribeMessage(re::PeerVideoStreamId)::$_0,void ()(re::OPackWriter &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEA8D0;
  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::OPackWriter &)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::Callable<re::PeerVideoStreamingManager::makeUnsubscribeMessage(re::PeerVideoStreamId)::$_0,void ()(re::OPackWriter &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEA938;
  return result;
}

void *re::internal::Callable<re::PeerVideoStreamingManager::makeUnsubscribeMessage(re::PeerVideoStreamId)::$_0,void ()(re::OPackWriter &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEA938;
  return result;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::makeFrameMessage(re::PeerVideoStreamId,opaqueCMSampleBuffer *,unsigned long long)::$_0,void ()(re::OPackWriter &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA990;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::makeFrameMessage(re::PeerVideoStreamId,opaqueCMSampleBuffer *,unsigned long long)::$_0,void ()(re::OPackWriter &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA990;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::processFrameMessage(unsigned long long,re::PeerVideoStreamId,re::OPackReader &,void const*,unsigned long)::$_0,void ()(re::OutputVideoFrame &&)>::operator()(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(v4 + 176, (a1 + 2));
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 96) == 1)
    {
      v8 = a1 + 4;
      v7 = a1[4];
      if (v7 <= *(v5 + 104))
      {
LABEL_53:
        result = re::internal::enableSignposts(0, 0);
        if (result)
        {
          result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
          if (result)
          {
            return kdebug_trace();
          }
        }

        return result;
      }
    }

    else
    {
      v8 = a1 + 4;
      v7 = a1[4];
      if (!v7)
      {
        goto LABEL_53;
      }

      *(v5 + 96) = 1;
    }

    *(v5 + 104) = v7;
    LOBYTE(cf[0]) = 1;
    v10 = *a2;
    v11 = *(a2 + 8);
    *a2 = 0;
    cf[1] = v10;
    *&v49 = v11;
    re::Optional<re::OutputVideoFrame>::operator=(v5 + 72, cf);
    if (LOBYTE(cf[0]) == 1 && cf[1])
    {
      CFRelease(cf[1]);
    }

    *(v6 + 88) = *v8;
    WeakRetained = objc_loadWeakRetained(v6);
    if (WeakRetained)
    {

      v13 = objc_loadWeakRetained(v6);
      v14 = v13;
      v15 = v13 - 8;
      if (!v13)
      {
        v15 = 0;
      }

      v37 = v15;
      if (v13)
      {
        v16 = v13;
      }

      v17 = *(v4 + 304);
      *(v4 + 304) = v17 + 1;
      if (*(v4 + 240))
      {
        v18 = 0;
        do
        {
          if ((*(*(v4 + 256) + 32 * v18 + 24))(v4) == 1)
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt((v4 + 224), v18);
          }

          else
          {
            ++v18;
          }
        }

        while (v18 < *(v4 + 240));
        v17 = *(v4 + 304) - 1;
      }

      *(v4 + 304) = v17;
      if (!v17)
      {
        v19 = *(v4 + 280);
        if (v19)
        {
          v20 = 0;
          for (i = 0; i != v19; ++i)
          {
            v22 = *(v4 + 280);
            if (v22 <= i)
            {
              v38 = 0;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              *cf = 0u;
              v33 = MEMORY[0x1E69E9C10];
              v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v40 = 136315906;
              v41 = "operator[]";
              v42 = 1024;
              if (v34)
              {
                v35 = 3;
              }

              else
              {
                v35 = 2;
              }

              v43 = 789;
              v44 = 2048;
              v45 = i;
              v46 = 2048;
              v47 = v22;
              _os_log_send_and_compose_impl(v35, &v38, cf, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v36, v37);
              _os_crash_msg();
              __break(1u);
            }

            v23 = *(v4 + 296) + v20;
            v24 = *(v23 + 16);
            *v39 = *v23;
            *&v39[16] = v24;
            *&v39[32] = *(v23 + 32);
            if (v39[0] == 1)
            {
              v25 = re::DynamicArray<re::Event<re::PeerVideoStreamingService,re::SharedPtr<re::PeerVideoStreamHandle>,unsigned long>::Subscription>::indexOf(cf, *(v4 + 240), *(v4 + 256), &v39[8]);
              if ((cf[0] & 1) == 0)
              {
                v26 = *(v4 + 232);
                v27 = *(v4 + 240);
                if (v27 >= v26)
                {
                  v28 = v27 + 1;
                  if (v26 < v27 + 1)
                  {
                    if (*(v4 + 224))
                    {
                      if (v26)
                      {
                        v29 = 2 * v26;
                      }

                      else
                      {
                        v29 = 8;
                      }

                      if (v29 <= v28)
                      {
                        v30 = v27 + 1;
                      }

                      else
                      {
                        v30 = v29;
                      }

                      re::DynamicArray<re::EvaluationRegister>::setCapacity((v4 + 224), v30);
                    }

                    else
                    {
                      re::DynamicArray<re::EvaluationRegister>::setCapacity((v4 + 224), v28);
                      ++*(v4 + 248);
                    }
                  }

                  v27 = *(v4 + 240);
                }

                v31 = (*(v4 + 256) + 32 * v27);
                v32 = *&v39[24];
                *v31 = *&v39[8];
                v31[1] = v32;
                ++*(v4 + 240);
                ++*(v4 + 248);
              }
            }

            else
            {
              re::DynamicArray<re::Event<re::PeerVideoStreamingService,re::SharedPtr<re::PeerVideoStreamHandle>,unsigned long>::Subscription>::indexOf(cf, *(v4 + 240), *(v4 + 256), &v39[8]);
              if (LOBYTE(cf[0]) == 1)
              {
                re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt((v4 + 224), cf[1]);
              }
            }

            v20 += 40;
          }
        }
      }

      if (v37)
      {
      }

      if (v14)
      {
      }
    }

    goto LABEL_53;
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (result)
    {

      return kdebug_trace();
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::processFrameMessage(unsigned long long,re::PeerVideoStreamId,re::OPackReader &,void const*,unsigned long)::$_0,void ()(re::OutputVideoFrame &&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA9E8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::processFrameMessage(unsigned long long,re::PeerVideoStreamId,re::OPackReader &,void const*,unsigned long)::$_0,void ()(re::OutputVideoFrame &&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA9E8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::DynamicArray<re::Event<re::PeerVideoStreamingService,re::SharedPtr<re::PeerVideoStreamHandle>,unsigned long>::Subscription>::indexOf(uint64_t result, uint64_t a2, char *a3, void *a4)
{
  v4 = a3;
  if (a2)
  {
    v5 = 32 * a2;
    v4 = a3;
    while (*v4 != *a4 || *(v4 + 1) != a4[1] || *(v4 + 2) != a4[2])
    {
      v4 += 32;
      v5 -= 32;
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  if (v4 == &a3[32 * a2])
  {
LABEL_12:
    v7 = 0;
  }

  else
  {
    *(result + 8) = (v4 - a3) >> 5;
    v7 = 1;
  }

  *result = v7;
  return result;
}

double re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(a1, v3++);
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

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (*(result + 16) + 336 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::PeerVideoFileWriter::destroy((v2 + 38));
    re::DynamicString::deinit((v2 + 46));
    re::DynamicString::deinit((v2 + 38));
    re::PeerVideoStreamingEncoder::~PeerVideoStreamingEncoder((v2 + 16));

    return re::DynamicArray<unsigned long>::deinit((v2 + 6));
  }

  return result;
}

double re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(a1, v3++);
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

void re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 168 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    if (*(v2 + 96) == 1)
    {
      v3 = *(v2 + 104);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    re::PeerVideoStreamingDecoder::~PeerVideoStreamingDecoder((v2 + 80));
    re::DynamicArray<unsigned long>::deinit(v2 + 40);
    objc_destroyWeak((v2 + 24));
    *(v2 + 24) = 0;
  }
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (*a2 && (v5 = a5 % *(a2 + 24), v7 = *(*(a2 + 8) + 4 * v5), v7 != 0x7FFFFFFF))
  {
    v9 = *(a2 + 16);
    v6 = 0x7FFFFFFF;
    v8 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v7;
      v11 = v9 + 168 * v7;
      v13 = *(v11 + 8);
      v12 = v11 + 8;
      if (v13 == a3 && *(v12 + 8) == a4)
      {
        break;
      }

      v7 = *(v9 + 168 * v10) & 0x7FFFFFFF;
      v8 = v10;
      if (v7 == 0x7FFFFFFF)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    v6 = v10;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

LABEL_10:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v8;
  return result;
}

void re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 336 * v10, 16);
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

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (*a2 && (v5 = a5 % *(a2 + 24), v7 = *(*(a2 + 8) + 4 * v5), v7 != 0x7FFFFFFF))
  {
    v9 = *(a2 + 16);
    v6 = 0x7FFFFFFF;
    v8 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v7;
      v11 = v9 + 336 * v7;
      v13 = *(v11 + 8);
      v12 = v11 + 8;
      if (v13 == a3 && *(v12 + 8) == a4)
      {
        break;
      }

      v7 = *(v9 + 336 * v10) & 0x7FFFFFFF;
      v8 = v10;
      if (v7 == 0x7FFFFFFF)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    v6 = v10;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

LABEL_10:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v35, 0, 36);
          *&v35[36] = 0x7FFFFFFFLL;
          re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::init(v35, v9, v8);
          v11 = *v35;
          *v35 = *a1;
          *a1 = v11;
          v12 = *&v35[16];
          v13 = *(a1 + 16);
          *&v35[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v35[24];
          *&v35[24] = *(a1 + 24);
          v14 = *&v35[32];
          *(a1 + 24) = v15;
          ++*&v35[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 184;
            do
            {
              if ((*(v18 - 184) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(a1, *(v18 + 144) % *(a1 + 24), *(v18 + 144));
                *(v19 + 8) = *(v18 - 176);
                *(v19 + 56) = 0;
                *(v19 + 48) = 0;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                v20 = *(v18 - 152);
                *(v19 + 24) = *(v18 - 160);
                *(v19 + 32) = v20;
                *(v18 - 160) = 0;
                *(v18 - 152) = 0;
                v21 = *(v19 + 40);
                *(v19 + 40) = *(v18 - 144);
                *(v18 - 144) = v21;
                v22 = *(v19 + 56);
                *(v19 + 56) = *(v18 - 128);
                *(v18 - 128) = v22;
                ++*(v18 - 136);
                ++*(v19 + 48);
                *(v19 + 64) = 0;
                v23 = v19 + 64;
                *(v19 + 80) = 0;
                *(v19 + 72) = 0;
                *(v19 + 112) = 0;
                *(v19 + 96) = 0;
                *(v19 + 104) = 0;
                *(v19 + 88) = 0;
                *(v19 + 120) = 0;
                *(v19 + 128) = 0;
                re::PeerVideoStreamingEncoder::operator=((v19 + 64), (v18 - 120));
                *(v23 + 72) = *(v18 - 48);
                re::DynamicString::DynamicString((v23 + 88), (v18 - 32));
                re::DynamicString::DynamicString((v23 + 120), v18);
                v24 = *(v18 + 32);
                v25 = *(v18 + 48);
                *(v23 + 184) = *(v18 + 64);
                *(v23 + 168) = v25;
                *(v23 + 152) = v24;
                v26 = *(v18 + 80);
                v27 = *(v18 + 96);
                v28 = *(v18 + 112);
                *(v23 + 248) = *(v18 + 128);
                *(v23 + 232) = v28;
                *(v23 + 216) = v27;
                *(v23 + 200) = v26;
                *(v23 + 256) = *(v18 + 136);
              }

              ++v17;
              v18 += 336;
            }

            while (v17 < v16);
          }

          re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(v35);
        }
      }

      else
      {
        if (v8)
        {
          v31 = 2 * v7;
        }

        else
        {
          v31 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v29 = *(a1 + 16);
    v30 = *(v29 + 336 * v5);
  }

  else
  {
    v29 = *(a1 + 16);
    v30 = *(v29 + 336 * v5);
    *(a1 + 36) = v30 & 0x7FFFFFFF;
  }

  v32 = v29 + 336 * v5;
  *v32 = v30 | 0x80000000;
  v33 = *(a1 + 8);
  *v32 = *(v33 + 4 * a2) | 0x80000000;
  *(v33 + 4 * a2) = v5;
  *(v32 + 328) = a3;
  ++*(a1 + 28);
  return v29 + 336 * v5;
}

void re::make::shared::object<re::PeerVideoStreamHandle,re::PeerVideoStreamId &,re::PeerVideoStreamingManager *>(re *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 48, 8);
  v9 = *a2;
  v8 = a2[1];
  v10 = *a3;
  ArcSharedObject::ArcSharedObject(v7, 0);
  *(v7 + 3) = v9;
  *v7 = &unk_1F5CD72C0;
  *(v7 + 4) = v8;
  *(v7 + 5) = v10;
  *a1 = v7;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 80;
            do
            {
              if ((*(v18 - 80) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(a1, *(v18 + 80) % *(a1 + 24), *(v18 + 80));
                *(v19 + 8) = *(v18 - 72);
                *(v19 + 24) = 0;
                objc_moveWeak((v19 + 24), (v18 - 56));
                v20 = *(v18 - 48);
                *(v19 + 72) = 0;
                *(v19 + 64) = 0;
                *(v19 + 48) = 0;
                *(v19 + 56) = 0;
                *(v19 + 32) = v20;
                *(v19 + 40) = 0;
                v21 = *(v18 - 32);
                *(v19 + 40) = *(v18 - 40);
                *(v19 + 48) = v21;
                *(v18 - 40) = 0;
                *(v18 - 32) = 0;
                v22 = *(v19 + 56);
                *(v19 + 56) = *(v18 - 24);
                *(v18 - 24) = v22;
                v23 = *(v19 + 72);
                *(v19 + 72) = *(v18 - 8);
                *(v18 - 8) = v23;
                ++*(v18 - 16);
                ++*(v19 + 64);
                *(v19 + 80) = *v18;
                LODWORD(v23) = *(v18 + 16);
                *(v19 + 96) = v23;
                if (v23 == 1)
                {
                  v24 = *(v18 + 32);
                  *(v19 + 104) = *(v18 + 24);
                  *(v18 + 24) = 0;
                  *(v19 + 112) = v24;
                }

                v25 = *(v18 + 40);
                *(v19 + 120) = v25;
                if (v25 == 1)
                {
                  *(v19 + 128) = *(v18 + 48);
                }

                v26 = *(v18 + 56);
                *(v19 + 136) = v26;
                if (v26 == 1)
                {
                  *(v19 + 144) = *(v18 + 64);
                }

                *(v19 + 152) = *(v18 + 72);
              }

              v18 += 168;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 168 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 168 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 168 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 160) = a3;
  ++*(a1 + 28);
  return v27 + 168 * v5;
}

void *re::ecs2::allocInfo_AmbientAudioComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_198))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3C70, "AmbientAudioComponent");
    __cxa_guard_release(&_MergedGlobals_198);
  }

  return &unk_1EE1A3C70;
}

void re::ecs2::initInfo_AmbientAudioComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x6EAB480046526CBELL;
  v20[1] = "AmbientAudioComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A3C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3C58))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A3C60 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "gain";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A3C68 = v18;
    __cxa_guard_release(&qword_1EE1A3C58);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A3C60;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AmbientAudioComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AmbientAudioComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AmbientAudioComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AmbientAudioComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AmbientAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::AmbientAudioComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD99E0;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::AmbientAudioComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD99E0;
  *(v1 + 28) = 0;
}

void re::ecs2::AmbientAudioComponent::syncStateToAudioPlayerComponent(re::ecs2::AmbientAudioComponent *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v3 = re::ecs2::EntityComponentCollection::getOrAdd((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v4 = __exp10f(*(this + 7) / 20.0);
    if (*(v3 + 188) != v4)
    {
      if (v4 > 10.0)
      {
        v4 = 10.0;
      }

      re::ecs2::AudioPlayerComponent::setParameterFade(v3, v3 + 184, v3 + 208, v4, 0.0);
    }
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221AmbientAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

id *re::ecs2::PhysicsConstraintsComponent::PhysicsConstraintsComponent(id *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CEAA50;
  re::StringID::invalid((v2 + 32));
  this[6] = 0;
  this[7] = 0;
  *(this + 18) = 0;
  this[8] = 0;
  this[15] = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  objc_initWeak(this + 16, 0);
  return this;
}

uint64_t re::ecs2::PhysicsConstraintsComponent::syncConstraintArrays(re::ecs2::PhysicsConstraintsComponent *this, char a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = (this + 88);
  v4 = *(this + 11);
  __dst = 0;
  v49[1] = 0;
  v50 = 0;
  v49[0] = 0;
  v51 = 0;
  if (v4)
  {
    v6 = *(this + 13);
    v49[0] = v4;
    re::DynamicArray<float *>::setCapacity(v49, v6);
    ++v51;
    v7 = *(this + 13);
    if (v7 >= v50)
    {
      re::DynamicArray<float *>::setCapacity(v49, *(this + 13));
      v8 = v50;
      if (v50)
      {
        memmove(__dst, *(this + 15), 8 * v50);
        v8 = v50;
      }

      memcpy(__dst + 8 * v8, (*(this + 15) + 8 * v8), 8 * (v7 - v8));
    }

    else if (v7)
    {
      memmove(__dst, *(this + 15), 8 * v7);
    }

    v50 = v7;
  }

  *(this + 13) = 0;
  ++*(this + 28);
  v9 = *(this + 2);
  if (!v9)
  {
    goto LABEL_40;
  }

  do
  {
    v10 = v9;
    v9 = *(v9 + 32);
  }

  while (v9);
  v11 = (*(**(*(v10 + 24) + 56) + 32))(*(*(v10 + 24) + 56));
  v12 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v11);
  if (v12)
  {
    v13 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v12, *(this + 2));
    v14 = v13 == 0;
    if (v13 && (a2 & 1) == 0)
    {
      if (*(this + 8))
      {
        v15 = 0;
        do
        {
          v16 = *(this + 10) + 304 * v15;
          if (v15 >= v50 || (v17 = *(__dst + v15)) == 0 || !re::StringID::operator==((v16 + 8), v17 + 3) || (v18 = *v16, v18 != (*(*v17 + 32))(v17)) || (v45 = *(v16 + 80), v47 = *(v16 + 64), (*(*v17 + 40))(v55, v17), v19 = vmvnq_s8(vceqq_f32(v47, *v55)), v19.i32[3] = v19.i32[2], (vmaxvq_u32(v19) & 0x80000000) != 0) || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v45, v56))) & 0x80000000) != 0 || (v46 = *(v16 + 160), v48 = *(v16 + 144), (*(*v17 + 48))(v54, v17), v20 = vmvnq_s8(vceqq_f32(v48, *v54)), v20.i32[3] = v20.i32[2], (vmaxvq_u32(v20) & 0x80000000) != 0) || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v46, *&v54[16]))) & 0x80000000) != 0)
          {
            v22 = *(this + 2);
            do
            {
              v23 = v22;
              v22 = *(v22 + 32);
            }

            while (v22);
            v55[0] = re::ecs2::PhysicsConstraint::makeJoint(v16, *(v23 + 24));
            re::DynamicArray<re::TransitionCondition *>::add(v5, v55);
            if (v55[0])
            {
              v24 = *(v13 + 21);
              if (v24)
              {
                v25 = 8 * v24;
                v26 = *(v13 + 23);
                while (*v26 != v55[0])
                {
                  ++v26;
                  v25 -= 8;
                  if (!v25)
                  {
                    goto LABEL_37;
                  }
                }
              }

              else
              {
                v26 = *(v13 + 23);
              }

              if (v26 == (*(v13 + 23) + 8 * v24))
              {
LABEL_37:
                re::PhysicsJointCollection::add((v13 + 136), v55[0]);
              }
            }
          }

          else
          {
            v21 = v50;
            if (v50 <= v15)
            {
              v53 = 0;
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              *v55 = 0u;
              v39 = MEMORY[0x1E69E9C10];
              v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v54 = 136315906;
              *&v54[4] = "operator[]";
              *&v54[12] = 1024;
              if (v40)
              {
                v41 = 3;
              }

              else
              {
                v41 = 2;
              }

              *&v54[14] = 789;
              *&v54[18] = 2048;
              *&v54[20] = v15;
              *&v54[28] = 2048;
              *&v54[30] = v21;
              _os_log_send_and_compose_impl(v41, &v53, v55, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v54, 38, v46.u64[0], v46.u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_65:
              v53 = 0;
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              *v55 = 0u;
              v42 = MEMORY[0x1E69E9C10];
              v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v54 = 136315906;
              *&v54[4] = "operator[]";
              *&v54[12] = 1024;
              if (v43)
              {
                v44 = 3;
              }

              else
              {
                v44 = 2;
              }

              *&v54[14] = 789;
              *&v54[18] = 2048;
              *&v54[20] = v15;
              *&v54[28] = 2048;
              *&v54[30] = v21;
              _os_log_send_and_compose_impl(v44, &v53, v55, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v54, 38, v46.u64[0], v46.u64[1]);
              _os_crash_msg();
              __break(1u);
            }

            re::DynamicArray<re::TransitionCondition *>::add(v5, __dst + v15);
            v21 = v50;
            if (v50 <= v15)
            {
              goto LABEL_65;
            }

            *(__dst + v15) = 0;
          }

          ++v15;
        }

        while (*(this + 8) > v15);
      }

      v14 = 0;
    }
  }

  else
  {
LABEL_40:
    v13 = 0;
    v14 = 1;
  }

  WeakRetained = objc_loadWeakRetained(this + 16);
  if (WeakRetained)
  {
    v28 = WeakRetained;

    v29 = v50;
    if (v50)
    {
      v30 = 0;
      do
      {
        v31 = *(__dst + v30);
        if (v31)
        {
          v32 = v28[20];
          if (v32)
          {
            v33 = 8 * v32;
            v34 = v28[22];
            while (*v34 != v31)
            {
              ++v34;
              v33 -= 8;
              if (!v33)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
            v34 = v28[22];
          }

          if (v34 != (v28[22] + 8 * v32))
          {
            v55[0] = *(__dst + v30);
            v35 = re::DynamicArray<re::Allocator const*>::removeStable(v28 + 18, v55);
            v36 = re::globalAllocators(v35)[2];
            (**v31)(v31);
            (*(*v36 + 40))(v36, v31);
            v29 = v50;
          }
        }

LABEL_53:
        ++v30;
      }

      while (v29 > v30);
    }
  }

  if (v14)
  {
    v37 = 0;
  }

  else
  {
    v37 = v13 + 8;
  }

  objc_storeWeak(this + 16, v37);
  *(this + 25) = 0;
  result = v49[0];
  if (v49[0])
  {
    if (__dst)
    {
      return (*(*v49[0] + 40))();
    }
  }

  return result;
}

void *re::ecs2::PhysicsConstraintsComponent::addOrReplacePhysicsConstraint(re::ecs2::PhysicsConstraintsComponent *this, const re::ecs2::PhysicsConstraint *a2, unint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *(this + 8);
  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = *(this + 10);
  v9 = (v8 + 288);
  do
  {
    if (re::StringID::operator==(v9 - 35, a2 + 1))
    {
      if (v5 > v7)
      {
        *(v9 - 72) = *a2;
        re::StringID::operator=(v9 - 35, a2 + 1);
        *(v9 - 264) = *(a2 + 24);
        re::ecs2::EntityHandle::operator=((v9 - 32), a2 + 4);
        v34 = *(a2 + 5);
        *(v9 - 14) = *(a2 + 4);
        *(v9 - 13) = v34;
        re::StringID::operator=(v9 - 24, a2 + 12);
        re::ecs2::EntityHandle::operator=((v9 - 22), a2 + 14);
        *(v9 - 9) = *(a2 + 9);
        v35 = *(a2 + 10);
        v36 = *(a2 + 11);
        v37 = *(a2 + 13);
        *(v9 - 6) = *(a2 + 12);
        *(v9 - 5) = v37;
        *(v9 - 8) = v35;
        *(v9 - 7) = v36;
        v38 = *(a2 + 14);
        v39 = *(a2 + 15);
        v40 = *(a2 + 17);
        *(v9 - 2) = *(a2 + 16);
        *(v9 - 1) = v40;
        *(v9 - 4) = v38;
        *(v9 - 3) = v39;
        result = re::StringID::operator=(v9, a2 + 36);
        goto LABEL_17;
      }

      v47 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      v41 = MEMORY[0x1E69E9C10];
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v51 = 789;
      v52 = 2048;
      v53 = v7;
      v54 = 2048;
      v55 = v5;
      _os_log_send_and_compose_impl(v42, &v47, &v56, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v46);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }

    ++v7;
    v9 += 38;
  }

  while (v5 != v7);
  if (v5 > a3)
  {
    v10 = v8 + 304 * a3;
    *v10 = *a2;
    re::StringID::operator=((v10 + 8), a2 + 1);
    *(v10 + 24) = *(a2 + 24);
    re::ecs2::EntityHandle::operator=((v10 + 32), a2 + 4);
    v11 = *(a2 + 5);
    *(v10 + 64) = *(a2 + 4);
    *(v10 + 80) = v11;
    re::StringID::operator=((v10 + 96), a2 + 12);
    re::ecs2::EntityHandle::operator=((v10 + 112), a2 + 14);
    *(v10 + 144) = *(a2 + 9);
    v12 = *(a2 + 10);
    v13 = *(a2 + 11);
    v14 = *(a2 + 13);
    *(v10 + 192) = *(a2 + 12);
    *(v10 + 208) = v14;
    *(v10 + 160) = v12;
    *(v10 + 176) = v13;
    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    v17 = *(a2 + 17);
    *(v10 + 256) = *(a2 + 16);
    *(v10 + 272) = v17;
    *(v10 + 224) = v15;
    *(v10 + 240) = v16;
    result = re::StringID::operator=((v10 + 288), a2 + 36);
    if (*(this + 13) > a3)
    {
      v19 = *(*(this + 15) + 8 * a3);
      if (v19)
      {
        v20 = *(*((*(**(v19 + 5) + 16))(*(v19 + 5)) + 72) + 40);
        v21 = v20;
        do
        {
          v22 = v21;
          v21 = *(v21 + 4);
        }

        while (v21);
        v23 = (*(**(*(v22 + 3) + 56) + 32))(*(*(v22 + 3) + 56));
        v24 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v23);
        v25 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v24, v20);
        v9 = *(this + 13);
        if (v9 > a3)
        {
          *(*(this + 15) + 8 * a3) = 0;
          result = re::PhysicsSimulation::addConstraintToDelete(v25, v19);
          goto LABEL_17;
        }

LABEL_22:
        v47 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v43 = MEMORY[0x1E69E9C10];
        v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v48 = 136315906;
        v49 = "operator[]";
        v50 = 1024;
        if (v44)
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        v51 = 789;
        v52 = 2048;
        v53 = a3;
        v54 = 2048;
        v55 = v9;
        _os_log_send_and_compose_impl(v45, &v47, &v56, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v46);
        _os_crash_msg();
        __break(1u);
      }
    }
  }

  else
  {
LABEL_12:
    if (v5 >= *(this + 7))
    {
      re::DynamicArray<re::ecs2::PhysicsConstraint>::growCapacity((this + 48), v5 + 1);
      v5 = *(this + 8);
    }

    v26 = *(this + 10) + 304 * v5;
    *v26 = *a2;
    re::StringID::StringID((v26 + 8), (a2 + 8));
    *(v26 + 24) = *(a2 + 24);
    re::ecs2::EntityHandle::EntityHandle((v26 + 32), (a2 + 32));
    v27 = *(a2 + 5);
    *(v26 + 64) = *(a2 + 4);
    *(v26 + 80) = v27;
    re::StringID::StringID((v26 + 96), a2 + 6);
    re::ecs2::EntityHandle::EntityHandle((v26 + 112), (a2 + 112));
    *(v26 + 144) = *(a2 + 9);
    v28 = *(a2 + 10);
    v29 = *(a2 + 11);
    v30 = *(a2 + 13);
    *(v26 + 192) = *(a2 + 12);
    *(v26 + 208) = v30;
    *(v26 + 160) = v28;
    *(v26 + 176) = v29;
    v31 = *(a2 + 14);
    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    *(v26 + 256) = *(a2 + 16);
    *(v26 + 272) = v33;
    *(v26 + 224) = v31;
    *(v26 + 240) = v32;
    result = re::StringID::StringID((v26 + 288), a2 + 18);
    ++*(this + 8);
    ++*(this + 18);
  }

LABEL_17:
  *(this + 25) = 1;
  return result;
}

re::ecs2::PhysicsSimulationData *re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(re::ecs2::PhysicsSimulationService *this, const re::ecs2::Entity *a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 4);
  }

  while (v4);
  v6 = *(v5 + 3);
  v7 = (*(*this + 24))(this);
  v8 = (*(*this + 40))(this, v6);
  v10[0] = v7;
  v10[1] = v8;
  result = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v10, a2);
  if (result)
  {
    return re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(result);
  }

  return result;
}

void re::ecs2::PhysicsConstraintsComponent::removePhysicsConstraint(uint64_t this, const re::StringID *a2)
{
  v2 = *(this + 64);
  if (v2)
  {
    v5 = 0;
    for (i = (*(this + 80) + 8); !re::StringID::operator==(i, a2); i += 38)
    {
      if (v2 == ++v5)
      {
        return;
      }
    }

    re::DynamicArray<re::ecs2::PhysicsConstraint>::removeAt(this + 48, v5);
    if (v5 < *(this + 104))
    {
      re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(this + 88, v5);
    }

    *(this + 25) = 1;
  }
}

void re::DynamicArray<re::ecs2::PhysicsConstraint>::removeAt(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v19 = 0;
    memset(v28, 0, sizeof(v28));
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "removeAt";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 931;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v3;
    _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 304 * v3;
    v7 = v5 + 304 * a2;
    *v7 = *(v6 - 304);
    re::StringID::operator=((v7 + 8), (v6 - 296));
    *(v7 + 24) = *(v6 - 280);
    re::ecs2::EntityHandle::operator=((v7 + 32), v6 - 272);
    v8 = *(v6 - 224);
    *(v7 + 64) = *(v6 - 240);
    *(v7 + 80) = v8;
    re::StringID::operator=((v7 + 96), (v6 - 208));
    re::ecs2::EntityHandle::operator=((v7 + 112), v6 - 192);
    *(v7 + 144) = *(v6 - 160);
    v9 = *(v6 - 144);
    v10 = *(v6 - 128);
    v11 = *(v6 - 96);
    *(v7 + 192) = *(v6 - 112);
    *(v7 + 208) = v11;
    *(v7 + 160) = v9;
    *(v7 + 176) = v10;
    v12 = *(v6 - 80);
    v13 = *(v6 - 64);
    v14 = *(v6 - 32);
    *(v7 + 256) = *(v6 - 48);
    *(v7 + 272) = v14;
    *(v7 + 224) = v12;
    *(v7 + 240) = v13;
    re::StringID::operator=((v7 + 288), (v6 - 16));
    v3 = *(a1 + 16);
  }

  v15 = *(a1 + 32) + 304 * v3;
  re::StringID::destroyString((v15 - 16));
  re::ecs2::EntityHandle::reset((v15 - 192));
  objc_destroyWeak((v15 - 192));
  *(v15 - 192) = 0;
  re::StringID::destroyString((v15 - 208));
  re::ecs2::EntityHandle::reset((v15 - 272));
  objc_destroyWeak((v15 - 272));
  *(v15 - 272) = 0;
  re::StringID::destroyString((v15 - 296));
  --*(a1 + 16);
  ++*(a1 + 24);
}

void re::ecs2::PhysicsConstraintsComponent::removePhysicsConstraintLeaveJoint(re::ecs2::PhysicsConstraintsComponent *this, const re::StringID *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v5 = 0;
    for (i = (*(this + 10) + 8); !re::StringID::operator==(i, a2); i += 38)
    {
      if (v2 == ++v5)
      {
        return;
      }
    }

    re::DynamicArray<re::ecs2::PhysicsConstraint>::removeAt(this + 48, v5);
  }
}

_anonymous_namespace_ *re::ecs2::PhysicsConstraintsComponent::deferDeleteConstraint(re::ecs2::PhysicsConstraintsComponent *this, re::Constraint *a2)
{
  v9 = a2;
  re::DynamicArray<unsigned long long>::remove(this + 88, &v9);
  v2 = *(*((*(**(v9 + 5) + 16))(*(v9 + 5)) + 72) + 40);
  v3 = v2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 4);
  }

  while (v3);
  v5 = (*(**(*(v4 + 3) + 56) + 32))(*(*(v4 + 3) + 56));
  v6 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v5);
  v7 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v6, v2);
  return re::PhysicsSimulation::addConstraintToDelete(v7, v9);
}

uint64_t re::ecs2::PhysicsConstraintsComponent::pinNameA(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  if (a2 >= v2 - 1)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (v2 <= v3)
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
    v14 = v3;
    v15 = 2048;
    v16 = v2;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 10) + 304 * v3 + 96;
}

unint64_t *re::ecs2::PhysicsConstraintsComponent::setPinNameA(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2, const re::StringID *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  if (a2 >= v3 - 1)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = a2;
  }

  if (v3 <= v4)
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
    v16 = v4;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(this + 10) + 304 * v4 + 96);

  return re::StringID::operator=(v5, a3);
}

uint64_t re::ecs2::PhysicsConstraintsComponent::pinNameB(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  if (a2 >= v2 - 1)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (v2 <= v3)
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
    v14 = v3;
    v15 = 2048;
    v16 = v2;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 10) + 304 * v3 + 288;
}

unint64_t *re::ecs2::PhysicsConstraintsComponent::setPinNameB(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2, const re::StringID *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  if (a2 >= v3 - 1)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = a2;
  }

  if (v3 <= v4)
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
    v16 = v4;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(this + 10) + 304 * v4 + 288);

  return re::StringID::operator=(v5, a3);
}

void *re::ecs2::PhysicsConstraintsComponent::setLinearLimits(void *result, unint64_t a2, uint64_t a3, __n128 a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = result[8];
  if (v5 <= a2)
  {
    v22 = 0;
    memset(v31, 0, sizeof(v31));
    v17 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v5;
    _os_log_send_and_compose_impl(v18, &v22, v31, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v19, v21);
    _os_crash_msg();
    __break(1u);
  }

  v7 = (result[10] + 304 * a2);
  if (fabsf(a4.n128_f32[0]) == INFINITY || a4.n128_f32[1] == INFINITY)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  __asm { FMOV            V2.2S, #1.0 }

  a4.n128_u64[0] = vbsl_s8(vdup_n_s32(v9), COERCE_INT8X8_T(-_D2), a4.n128_u64[0]);
  if (a3 == 2)
  {
    v7[64] = a4.n128_u32[0];
    v14 = 65;
  }

  else if (a3 == 1)
  {
    v7[62] = a4.n128_u32[0];
    v14 = 63;
  }

  else
  {
    if (a3)
    {
      goto LABEL_15;
    }

    v7[60] = a4.n128_u32[0];
    v14 = 61;
  }

  v7[v14] = a4.n128_u32[1];
LABEL_15:
  if (result[13] > a2)
  {
    v20 = a4;
    v15 = *(result[15] + 8 * a2);
    result = (*(*v15 + 32))(v15);
    if (result == 6)
    {
      *&v31[0] = v20.n128_u64[0];
      return re::Generic6DOFConstraint::setLinearLimit(v15, a3, v31);
    }

    else if (result == 4)
    {
      v15[7] = v20.n128_u64[0];
      v16 = *(*v15 + 56);

      return v16(v15, v20);
    }
  }

  return result;
}

double re::ecs2::PhysicsConstraintsComponent::linearLimits(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 64);
  if (v4 <= a2)
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
    v15 = a2;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  result = 0.0;
  if (a3 <= 2)
  {
    return *(*(a1 + 80) + 304 * a2 + 8 * a3 + 240);
  }

  return result;
}

void *re::ecs2::PhysicsConstraintsComponent::setAngularLimits(void *result, unint64_t a2, uint64_t a3, double a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = result[8];
  if (v5 <= a2)
  {
    v29 = 0;
    memset(v38, 0, sizeof(v38));
    v24 = MEMORY[0x1E69E9C10];
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = a2;
    v36 = 2048;
    v37 = v5;
    _os_log_send_and_compose_impl(v25, &v29, v38, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v26, v28);
    _os_crash_msg();
    __break(1u);
  }

  v7 = (result[10] + 304 * a2);
  if (fabsf(*&a4) == INFINITY || *(&a4 + 1) == INFINITY)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  __asm { FMOV            V2.2S, #1.0 }

  v14 = vbsl_s8(vdup_n_s32(v9), COERCE_INT8X8_T(-_D2), *&a4);
  if (a3 == 2)
  {
    v7[70] = v14.i32[0];
    v15 = 71;
  }

  else if (a3 == 1)
  {
    v7[68] = v14.i32[0];
    v15 = 69;
  }

  else
  {
    if (a3)
    {
      goto LABEL_15;
    }

    v7[66] = v14.i32[0];
    v15 = 67;
  }

  v7[v15] = v14.i32[1];
LABEL_15:
  if (result[13] > a2)
  {
    v27 = *&v14;
    v16 = *(result[15] + 8 * a2);
    result = (*(*v16 + 32))(v16);
    if (result == 6)
    {
      *v38 = v27;
      return re::Generic6DOFConstraint::setAngularLimit(v16, a3, v38);
    }

    else
    {
      v17.i32[1] = HIDWORD(v27);
      if (result == 3)
      {

        return re::HingeJoint::setAngularLimit(v16, v27, *(&v27 + 1));
      }

      else if (result == 2)
      {
        if (a3 == 1)
        {
          v18 = *(&v27 + 1);
          v19 = v16[15];
          if (*(&v27 + 1) > 3.1416)
          {
            v18 = 3.1416;
          }

          if (v18 < -1.0)
          {
            v18 = -1.0;
          }

          if (v19 > 3.1416)
          {
            v19 = 3.1416;
          }

          if (v19 < -1.0)
          {
            v19 = -1.0;
          }

          v16[14] = v18;
          v16[15] = v19;
        }

        else
        {
          v17.f32[0] = v16[14];
          v20 = vdup_n_s32(0x40490FDBu);
          v21 = vbsl_s8(vcgt_f32(v17, v20), v20, v17);
          __asm { FMOV            V1.2S, #-1.0 }

          *(v16 + 7) = vbsl_s8(vcgt_f32(_D1, v21), _D1, v21);
        }

        v23 = *(*v16 + 56);

        return v23(v16);
      }
    }
  }

  return result;
}

uint64_t re::ecs2::PhysicsConstraintsComponent::collisionEnabled(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 10) + 304 * a2 + 24);
}

uint64_t re::ecs2::PhysicsConstraintsComponent::setCollisionEnabled(uint64_t this, unint64_t a2, char a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(this + 64);
  if (v4 <= a2)
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
    v16 = v4;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 80) + 304 * a2 + 24) = a3;
  return this;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::PhysicsConstraint>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1A3D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3D18))
  {
    re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1A3D18);
  }

  if ((_MergedGlobals_199 & 1) == 0)
  {
    v6 = re::ecs2::introspect_PhysicsConstraint(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_199 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_199 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A3D38, 0);
      qword_1EE1A3D48 = 0x2800000003;
      dword_1EE1A3D50 = v8;
      word_1EE1A3D54 = 0;
      *&xmmword_1EE1A3D58 = 0;
      *(&xmmword_1EE1A3D58 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A3D68 = v7;
      qword_1EE1A3D70 = 0;
      qword_1EE1A3D38 = &unk_1F5CEAAD8;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1A3D38);
      if (v19)
      {
        v11 = *&v20[7];
      }

      else
      {
        v11 = v20;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = *(v7 + 32);
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v21);
        re::TypeBuilder::TypeBuilder(&v18, v21);
        v17 = v15;
        re::TypeBuilder::beginListType(&v18, &v16, 1, 0x28uLL, 8uLL, &v17);
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1A3D58 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_PhysicsConstraintsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3D10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3D78, "PhysicsConstraintsComponent");
    __cxa_guard_release(&qword_1EE1A3D10);
  }

  return &unk_1EE1A3D78;
}

void re::ecs2::initInfo_PhysicsConstraintsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0xC606B99E7D5E985CLL;
  v27[1] = "PhysicsConstraintsComponent";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1A3D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3D08))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A3D20 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::PhysicsConstraint>>::get(v15, v16, v17, v18, v19, v20);
    v21 = (*(*v15 + 32))(v15, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_constraints";
    *(v21 + 16) = &qword_1EE1A3D38;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x3000000001;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A3D28 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_BOOL(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "m_dirty";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x1900000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1A3D30 = v25;
    __cxa_guard_release(&qword_1EE1A3D08);
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A3D20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsConstraintsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsConstraintsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsConstraintsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsConstraintsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227PhysicsConstraintsComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void re::ecs2::PhysicsConstraintsComponent::~PhysicsConstraintsComponent(id *this)
{
  re::ecs2::PhysicsConstraintsComponent::~PhysicsConstraintsComponent(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CEAA50;
  objc_destroyWeak(this + 16);
  this[16] = 0;
  re::DynamicArray<unsigned long>::deinit((this + 11));
  re::DynamicArray<re::ecs2::PhysicsConstraint>::deinit((this + 6));
  re::StringID::destroyString((this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::PhysicsConstraint>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x130uLL))
        {
          v2 = 304 * a2;
          result = (*(*result + 32))(result, 304 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 304, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v24, v26);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v25, v27);
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
        v10 = v8 + 304 * v9;
        v11 = (v7 + 14);
        v12 = v8 + 112;
        do
        {
          *(v11 - 112) = *(v12 - 112);
          v13 = *(v12 - 104);
          *(v11 - 104) = *(v11 - 104) & 0xFFFFFFFFFFFFFFFELL | *(v12 - 104) & 1;
          *(v11 - 104) = *(v12 - 104) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          *(v11 - 96) = *(v12 - 96);
          *(v12 - 96) = &str_67;
          *(v12 - 104) = 0;
          *(v11 - 88) = *(v12 - 88);
          re::ecs2::EntityHandle::EntityHandle(v11 - 80, v12 - 80);
          v14 = *(v12 - 32);
          *(v11 - 48) = *(v12 - 48);
          *(v11 - 32) = v14;
          v15 = *(v12 - 16);
          *(v11 - 16) = *(v11 - 16) & 0xFFFFFFFFFFFFFFFELL | *(v12 - 16) & 1;
          *(v11 - 16) = *(v12 - 16) & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          *(v11 - 8) = *(v12 - 8);
          *(v12 - 8) = &str_67;
          *(v12 - 16) = 0;
          re::ecs2::EntityHandle::EntityHandle(v11, v12);
          *(v11 + 32) = *(v12 + 32);
          v16 = *(v12 + 48);
          v17 = *(v12 + 64);
          v18 = *(v12 + 96);
          *(v11 + 80) = *(v12 + 80);
          *(v11 + 96) = v18;
          *(v11 + 48) = v16;
          *(v11 + 64) = v17;
          v19 = *(v12 + 112);
          v20 = *(v12 + 128);
          v21 = *(v12 + 160);
          *(v11 + 144) = *(v12 + 144);
          *(v11 + 160) = v21;
          *(v11 + 112) = v19;
          *(v11 + 128) = v20;
          v22 = *(v12 + 176);
          *(v11 + 176) = *(v11 + 176) & 0xFFFFFFFFFFFFFFFELL | *(v12 + 176) & 1;
          *(v11 + 176) = *(v12 + 176) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
          *(v11 + 184) = *(v12 + 184);
          *(v12 + 184) = &str_67;
          *(v12 + 176) = 0;
          re::StringID::destroyString((v12 + 176));
          re::ecs2::EntityHandle::reset(v12);
          objc_destroyWeak(v12);
          *v12 = 0;
          re::StringID::destroyString((v12 - 16));
          re::ecs2::EntityHandle::reset((v12 - 80));
          objc_destroyWeak((v12 - 80));
          *(v12 - 80) = 0;
          re::StringID::destroyString((v12 - 104));
          v11 += 304;
          v23 = v12 + 192;
          v12 += 304;
        }

        while (v23 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1A3D38, 0);
  *(&qword_1EE1A3D48 + 6) = 0;
  qword_1EE1A3D48 = 0;
  *&xmmword_1EE1A3D58 = 0;
  *(&xmmword_1EE1A3D58 + 1) = 0xFFFFFFFFLL;
  qword_1EE1A3D38 = &unk_1F5CADA48;
  qword_1EE1A3D70 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1A3D68);
  qword_1EE1A3D38 = &unk_1F5CEAAD8;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::PhysicsConstraint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::PhysicsConstraint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  re::ecs2::PhysicsConstraint::PhysicsConstraint(&v24);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::ecs2::PhysicsConstraint>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 304 * v8;
  *v9 = v24;
  v10 = v25;
  *(v9 + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v25 & 1;
  *(v9 + 8) = v25 & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v9 + 16) = v26;
  v25 = 0;
  v26 = &str_67;
  *(v9 + 24) = v27;
  re::ecs2::EntityHandle::EntityHandle(v9 + 32, v28);
  v11 = v30;
  *(v9 + 64) = v29;
  *(v9 + 80) = v11;
  v12 = v31;
  *(v9 + 96) = *(v9 + 96) & 0xFFFFFFFFFFFFFFFELL | v31 & 1;
  *(v9 + 96) = v31 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v9 + 104) = v32;
  v31 = 0;
  v32 = &str_67;
  re::ecs2::EntityHandle::EntityHandle(v9 + 112, v33);
  *(v9 + 144) = v34;
  v13 = v35;
  v14 = v36;
  v15 = v38;
  *(v9 + 192) = v37;
  *(v9 + 208) = v15;
  *(v9 + 160) = v13;
  *(v9 + 176) = v14;
  v16 = v39;
  v17 = v40;
  v18 = v42;
  *(v9 + 256) = v41;
  *(v9 + 272) = v18;
  *(v9 + 224) = v16;
  *(v9 + 240) = v17;
  v19 = v43;
  *(v9 + 288) = *(v9 + 288) & 0xFFFFFFFFFFFFFFFELL | v43 & 1;
  *(v9 + 288) = v43 & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
  *(v9 + 296) = v44;
  ++*(a4 + 16);
  ++*(a4 + 24);
  v43 = 0;
  v44 = &str_67;
  re::ecs2::EntityHandle::reset(v33);
  objc_destroyWeak(v33);
  v33[0] = 0;
  if (v31)
  {
    if (v31)
    {
    }
  }

  v31 = 0;
  v32 = &str_67;
  re::ecs2::EntityHandle::reset(v28);
  objc_destroyWeak(v28);
  v28[0] = 0;
  if (v25)
  {
    if (v25)
    {
    }
  }

  v22 = (*(a4 + 32) + 304 * *(a4 + 16) - 304);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v22);
  return v22;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 304 * a3;
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

  return *(a2 + 32) + 304 * a3;
}

uint64_t re::DynamicArray<re::ecs2::PhysicsConstraint>::deinit(uint64_t a1)
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
        v6 = 304 * v4;
        do
        {
          v7 = v3 + v5;
          re::StringID::destroyString((v3 + v5 + 288));
          re::ecs2::EntityHandle::reset((v3 + v5 + 112));
          objc_destroyWeak((v3 + v5 + 112));
          *(v7 + 112) = 0;
          re::StringID::destroyString((v3 + v5 + 96));
          re::ecs2::EntityHandle::reset((v3 + v5 + 32));
          objc_destroyWeak((v3 + v5 + 32));
          *(v7 + 32) = 0;
          re::StringID::destroyString((v3 + v5 + 8));
          v5 += 304;
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

void re::DynamicArray<re::ecs2::PhysicsConstraint>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v7 = 304 * a2 + 288;
    v8 = a2;
    do
    {
      v9 = (*(a1 + 32) + v7);
      re::StringID::destroyString(v9);
      re::ecs2::EntityHandle::reset((v9 - 176));
      objc_destroyWeak(v9 - 22);
      *(v9 - 22) = 0;
      re::StringID::destroyString((v9 - 192));
      re::ecs2::EntityHandle::reset((v9 - 256));
      objc_destroyWeak(v9 - 32);
      *(v9 - 32) = 0;
      re::StringID::destroyString((v9 - 280));
      ++v8;
      v7 += 304;
    }

    while (v8 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 304 * v4;
      do
      {
        re::ecs2::PhysicsConstraint::PhysicsConstraint((*(a1 + 32) + v6));
        v6 += 304;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 304 * v8;
      do
      {
        v12 = v10 + v9;
        re::StringID::destroyString((v10 + v9 + 288));
        re::ecs2::EntityHandle::reset((v10 + v9 + 112));
        objc_destroyWeak((v10 + v9 + 112));
        *(v12 + 112) = 0;
        re::StringID::destroyString((v10 + v9 + 96));
        re::ecs2::EntityHandle::reset((v10 + v9 + 32));
        objc_destroyWeak((v10 + v9 + 32));
        *(v12 + 32) = 0;
        re::StringID::destroyString((v10 + v9 + 8));
        v9 += 304;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::ecs2::PhysicsConstraint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ecs2::PhysicsConstraint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v18);
    re::TypeInfo::TypeInfo(v17, &v19);
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = *(a1 + 32);
      v16 = 304 * v14;
      do
      {
        re::TypeInfo::destruct(v17, v15, a3, 0);
        re::TypeInfo::construct(v17, v15, a3, 0);
        v15 += 304;
        v16 -= 304;
      }

      while (v16);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 304 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 304 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227PhysicsConstraintsComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

void media::MediaScreenAnimationEngine::~MediaScreenAnimationEngine(media::MediaScreenAnimationEngine *this)
{
  for (i = 64; i != 12448; i += 2064)
  {
    v3 = *(this + i);
    if (v3)
    {
      v4 = 8 * v3;
      v5 = (this + i + 16);
      do
      {
        v6 = *v5++;
        re::internal::destroyPersistent<media::FloatAnimation>("~MediaScreenAnimationEngine", 15, v6);
        v4 -= 8;
      }

      while (v4);
    }
  }

  v7 = 12384;
  do
  {
    *(this + v7 - 2000) = 0;
    ++*(this + v7 - 1992);
    v7 -= 2064;
  }

  while (v7);
  re::FunctionBase<24ul,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::destroyCallable(this);
}

re *re::internal::destroyPersistent<media::FloatAnimation>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::add(float *a1, unsigned int a2)
{
  if (a2 > 5)
  {
    return 0;
  }

  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 48, 8);
  v7 = v5;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = a1 + 11;
      }

      else
      {
        v8 = a1 + 12;
      }
    }

    else
    {
      v8 = a1 + 10;
    }

    media::FloatSpringAnimation::FloatSpringAnimation(v5, v8);
LABEL_16:
    if (!v7)
    {
      return v7;
    }

    goto LABEL_17;
  }

  if (a2 == 3)
  {
    v9 = 13;
  }

  else
  {
    if (a2 != 4)
    {
      media::FloatEaseInOutAnimation::FloatEaseInOutAnimation(v5, a1 + 15);
      goto LABEL_16;
    }

    v9 = 14;
  }

  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = &a1[v9];
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  *v5 = &unk_1F5CEABC0;
  *(v5 + 40) = 1065353216;
LABEL_17:
  v10 = &a1[516 * a2];
  v12 = *(v10 + 8);
  v11 = v10 + 16;
  if (v12 <= 0xFF && re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v11, v6))
  {
    v13 = *v11;
    *&v11[2 * *v11 + 4] = v7;
    *v11 = v13 + 1;
    ++*(v11 + 2);
  }

  return v7;
}

uint64_t media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(re *a1, unsigned int a2, float a3, float a4, float a5, float a6, float a7)
{
  if (a2 > 5)
  {
    return 0;
  }

  v14 = a1 + 4 * (a2 & 0x3F) + 40;
  v15 = re::globalAllocators(a1);
  v16 = (*(*v15[2] + 32))(v15[2], 48, 8);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = v14;
  *(v16 + 32) = 0;
  *(v16 + 36) = 0;
  *v16 = &unk_1F5CEAB70;
  *(v16 + 40) = 0;
  v17 = [objc_alloc(MEMORY[0x1E69794B0]) initWithPerceptualDuration:a7 bounce:0.0];
  v18 = *(v16 + 40);
  *(v16 + 40) = v17;

  v20 = a1 + 2064 * a2;
  v22 = *(v20 + 8);
  v21 = v20 + 64;
  if (v22 <= 0xFF)
  {
    *(v16 + 8) = a3;
    *(v16 + 12) = a4;
    *(v16 + 16) = a5;
    *(v16 + 20) = a6;
    if (re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v21, v19))
    {
      v23 = *v21;
      *&v21[8 * *v21 + 16] = v16;
      *v21 = v23 + 1;
      ++*(v21 + 2);
    }
  }

  return v16;
}

void media::MediaScreenAnimationEngine::addSpatialMediaImmersiveTransitionAnimation(media::MediaScreenAnimationEngine *a1, int a2, char a3, uint64_t a4, float a5)
{
  if (a2)
  {
    if (a3)
    {
      if (*a4)
      {
        media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAfterGestureReducedMotionAnimation(a1, a5);
        return;
      }

      goto LABEL_6;
    }

    if (*a4)
    {
      media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAfterGestureAnimation(a1, *(a4 + 4));
    }

    else
    {
      media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAnimation(a1);
    }
  }

  else
  {
    if (a3)
    {
LABEL_6:
      media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveReducedMotionAnimation(a1);
      return;
    }

    if (*a4)
    {
      media::MediaScreenAnimationEngine::addSpatialMediaCollapseToPortalAfterGestureAnimation(a1, *(a4 + 4));
    }

    else
    {
      media::MediaScreenAnimationEngine::addSpatialMediaCollapseToPortalAnimation(a1);
    }
  }
}

void *media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAfterGestureAnimation(media::MediaScreenAnimationEngine *this, float a2)
{
  v4 = media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(this, 3u, 0.0, 1.0, 0.0, 1.0, 1.0);
  if (v4)
  {
    [*(v4 + 40) setInitialVelocity:a2];
  }

  result = media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(this, 4u, 0.0, 1.0, 0.0, 1.0, 1.0);
  if (result)
  {
    v6 = result[5];

    return [v6 setInitialVelocity:a2];
  }

  return result;
}

double media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAnimation(media::MediaScreenAnimationEngine *this)
{
  v2 = media::MediaScreenAnimationEngine::add(this, 3u);
  if (v2)
  {
    *(v2 + 40) = 1063675494;
    *(v2 + 8) = xmmword_1E3083D60;
  }

  v3 = media::MediaScreenAnimationEngine::add(this, 4u);
  if (v3)
  {
    *(v3 + 40) = 1058642330;
    result = 0.00273437425;
    *(v3 + 8) = xmmword_1E3083D60;
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAfterGestureReducedMotionAnimation(media::MediaScreenAnimationEngine *this, float a2)
{
  v3 = media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(this, 3u, 0.0, 0.6, 0.0, 1.0);
  if (v3)
  {
    *(v3 + 40) = 1056964608;
  }

  v4 = media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(this, 4u, 0.0, 0.6, 0.0, 1.0);
  if (v4)
  {
    *(v4 + 40) = 1056964608;
  }

  v5 = media::MediaScreenAnimationEngine::add(this, 5u);
  if (v5)
  {
    *(v5 + 8) = xmmword_1E3083D70;
  }

  result = media::MediaScreenAnimationEngine::add(this, 5u);
  if (result)
  {
    *(result + 8) = xmmword_1E3083D80;
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveReducedMotionAnimation(media::MediaScreenAnimationEngine *this)
{
  v2 = media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(this, 3u, 0.0, 0.9, 0.0, 1.0);
  if (v2)
  {
    *(v2 + 40) = 1056964608;
  }

  v3 = media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(this, 4u, 0.0, 0.9, 0.0, 1.0);
  if (v3)
  {
    *(v3 + 40) = 1056964608;
  }

  v4 = media::MediaScreenAnimationEngine::add(this, 5u);
  if (v4)
  {
    *(v4 + 8) = xmmword_1E3083D90;
  }

  result = media::MediaScreenAnimationEngine::add(this, 5u);
  if (result)
  {
    *(result + 8) = xmmword_1E3083DA0;
  }

  return result;
}

void *media::MediaScreenAnimationEngine::addSpatialMediaCollapseToPortalAfterGestureAnimation(media::MediaScreenAnimationEngine *this, float a2)
{
  v4 = media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(this, 3u, 0.0, 0.5, 0.0, 1.0, 0.5);
  if (v4)
  {
    [*(v4 + 40) setInitialVelocity:a2];
  }

  result = media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(this, 4u, 0.0, 0.5, 0.0, 1.0, 0.5);
  if (result)
  {
    v6 = result[5];

    return [v6 setInitialVelocity:a2];
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::addSpatialMediaCollapseToPortalAnimation(media::MediaScreenAnimationEngine *this)
{
  v2 = media::MediaScreenAnimationEngine::add<media::FloatCriticallyDampedAnimation>(this, 3u, 0.0, 0.5, 0.0, 1.0);
  if (v2)
  {
    *(v2 + 40) = 1061158912;
  }

  result = media::MediaScreenAnimationEngine::add<media::FloatCriticallyDampedAnimation>(this, 4u, 0.0, 0.5, 0.0, 1.0);
  if (result)
  {
    *(result + 40) = 1065353216;
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(re *a1, unsigned int a2, float a3, float a4, float a5, float a6)
{
  if (a2 > 5)
  {
    return 0;
  }

  v12 = a1 + 4 * (a2 & 0x3F) + 40;
  v13 = re::globalAllocators(a1);
  v14 = (*(*v13[2] + 32))(v13[2], 48, 8);
  v16 = v14;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0;
  *(v14 + 36) = 0;
  *v14 = &unk_1F5CEAC40;
  *(v14 + 40) = 1056964608;
  v17 = a1 + 2064 * a2;
  v19 = *(v17 + 8);
  v18 = v17 + 64;
  if (v19 <= 0xFF)
  {
    *(v14 + 8) = a3;
    *(v14 + 12) = a4;
    *(v14 + 16) = a5;
    *(v14 + 20) = a6;
    if (re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v18, v15))
    {
      v20 = *v18;
      *&v18[8 * *v18 + 16] = v16;
      *v18 = v20 + 1;
      ++*(v18 + 2);
    }
  }

  return v16;
}

uint64_t media::MediaScreenAnimationEngine::add<media::FloatCriticallyDampedAnimation>(re *a1, unsigned int a2, float a3, float a4, float a5, float a6)
{
  if (a2 > 5)
  {
    return 0;
  }

  v12 = a1 + 4 * (a2 & 0x3F) + 40;
  v13 = re::globalAllocators(a1);
  v14 = (*(*v13[2] + 32))(v13[2], 48, 8);
  v16 = v14;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0;
  *(v14 + 36) = 0;
  *v14 = &unk_1F5CEABC0;
  *(v14 + 40) = 1065353216;
  v17 = a1 + 2064 * a2;
  v19 = *(v17 + 8);
  v18 = v17 + 64;
  if (v19 <= 0xFF)
  {
    *(v14 + 8) = a3;
    *(v14 + 12) = a4;
    *(v14 + 16) = a5;
    *(v14 + 20) = a6;
    if (re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v18, v15))
    {
      v20 = *v18;
      *&v18[8 * *v18 + 16] = v16;
      *v18 = v20 + 1;
      ++*(v18 + 2);
    }
  }

  return v16;
}

uint64_t media::FloatSpringAnimation::setSpringParam(uint64_t a1, float *a2)
{
  [*(a1 + 40) setMass:*a2];
  [*(a1 + 40) setStiffness:a2[1]];
  [*(a1 + 40) setDamping:a2[2]];
  [*(a1 + 40) settlingDuration];
  v4 = *(a1 + 40);

  return [v4 setDuration:?];
}

uint64_t media::MediaScreenAnimationEngine::update(uint64_t this, float a2, double a3, __n128 a4)
{
  v5 = this;
  v6 = 0;
  v7 = this + 64;
  v8 = 12384;
  do
  {
    if (*v7)
    {
      this = media::FloatAnimation::update(*(v7 + 16), a2, a3, a4);
      if ((this & 1) == 0)
      {
        if (!*v7)
        {
          re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
          this = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v14, v15);
          __break(1u);
          return this;
        }

        re::internal::destroyPersistent<media::FloatAnimation>("update", 546, *(v7 + 16));
        this = re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt(v7, 0);
      }

      v6 = 1;
    }

    v7 += 2064;
    v8 -= 2064;
  }

  while (v8);
  if (v6)
  {
    this = *(v5 + 32);
    if (this)
    {
      v10 = *(v5 + 40);
      v11 = *(v5 + 44);
      v12 = *(v5 + 48);
      v13 = *(v5 + 60);
      v19 = *(v5 + 52);
      v20 = v13;
      v17 = v11;
      v18 = v10;
      v16 = v12;
      return (*(*this + 16))(this, &v18, &v17, &v16, &v19);
    }
  }

  return this;
}

BOOL media::FloatAnimation::update(media::FloatAnimation *this, float a2, double a3, __n128 a4)
{
  v4 = *(this + 8) + a2;
  *(this + 8) = v4;
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v4 >= (v5 + v6))
  {
    **(this + 3) = *(this + 5);
    *(this + 37) = 1;
    a4.n128_u32[0] = 1.0;
  }

  else
  {
    a4.n128_u64[0] = 0;
    if (v5 > 0.0 && v4 > v6)
    {
      a4.n128_f32[0] = (v4 - v6) / v5;
      if ((*(this + 36) & 1) == 0)
      {
        *(this + 36) = 1;
      }
    }
  }

  v8 = v4 < (v5 + v6);
  **(this + 3) = (*(*this + 16))(this, *(this + 4), *(this + 5), a4);
  return v8;
}

char *re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (*a1 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeStableAt", 555, a2, v2);
    result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v11, v12);
    __break(1u);
  }

  else
  {
    v4 = v2 - 1;
    v5 = v2 - 1 > a2;
    v6 = a1 + 2;
    result = &a1[a2 + 2];
    v8 = result + 8;
    v9 = &v6[v2];
    if (v5 && v9 != v8)
    {
      result = memmove(result, v8, v9 - v8);
      v4 = *a1 - 1;
    }

    *a1 = v4;
    ++*(a1 + 2);
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::destroyCallable(uint64_t a1))(void)
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

media::FloatSpringAnimation *media::FloatSpringAnimation::FloatSpringAnimation(media::FloatSpringAnimation *this, float *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *this = &unk_1F5CEAB70;
  *(this + 5) = 0;
  v3 = objc_alloc_init(MEMORY[0x1E69794B0]);
  v4 = *(this + 5);
  *(this + 5) = v3;

  return this;
}

void media::FloatSpringAnimation::~FloatSpringAnimation(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

float media::FloatSpringAnimation::interpolate(id *this, double a2, float a3, float a4)
{
  v5 = *&a2;
  *&a2 = a4;
  [this[5] _solveForInput:a2];
  if (v6 > 0.999)
  {
    v6 = 1.0;
  }

  return v5 + ((a3 - v5) * v6);
}

float media::FloatCriticallyDampedAnimation::interpolate(media::FloatCriticallyDampedAnimation *this, float a2, float a3, float a4)
{
  v6 = 6.28318531 / *(this + 10);
  v7 = 1.0 - (((v6 * a4) + 1.0) * expf(-(v6 * a4)));
  return a2 + ((a3 - a2) * (v7 / (1.0 - ((v6 + 1.0) * expf(-v6)))));
}

media::FloatEaseInOutAnimation *media::FloatEaseInOutAnimation::FloatEaseInOutAnimation(media::FloatEaseInOutAnimation *this, float *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *this = &unk_1F5CEAC00;
  *(this + 5) = 0;
  v3 = [MEMORY[0x1E69793C8] functionWithName:*MEMORY[0x1E6979EC0]];
  v4 = *(this + 5);
  *(this + 5) = v3;

  return this;
}

void media::FloatEaseInOutAnimation::~FloatEaseInOutAnimation(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

float media::FloatEaseInOutAnimation::interpolate(id *this, double a2, float a3, float a4)
{
  v5 = *&a2;
  *&a2 = a4;
  [this[5] _solveForInput:a2];
  if (v6 > 0.999)
  {
    v6 = 1.0;
  }

  return v5 + ((a3 - v5) * v6);
}

uint64_t re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 0xFFuLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

float media::FloatStepAnimation::interpolate(media::FloatStepAnimation *this, float a2, float a3, float a4)
{
  if (*(this + 10) < a4)
  {
    return a3;
  }

  return result;
}

void *re::ecs2::DirectMaterialParametersArrayComponent::getParameterResources@<X0>(void *this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (this[6] <= a3)
  {
    goto LABEL_5;
  }

  v4 = this[8] + 32 * a3;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v5 = *(v4 + 8);
      goto LABEL_8;
    }

LABEL_5:
    *a4 = 0;
    return this;
  }

  v5 = *(v4 + 24);
LABEL_8:
  *a4 = v5;
  if (v5)
  {
    return (v5 + 8);
  }

  return this;
}

void re::ecs2::DirectMaterialParametersArrayComponent::setParameterResources(uint64_t a1, char a2, unint64_t a3, uint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a2 & 3) != 0)
  {
    v8 = *(a1 + 48);
    if (v8 <= a3)
    {
      re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize(a1 + 32, a3 + 1);
      v8 = *(a1 + 48);
    }

    if (v8 <= a3)
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

      v18 = 789;
      v19 = 2048;
      v20 = a3;
      v21 = 2048;
      v22 = v8;
      _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(a1 + 64) + 32 * a3;
    if (a2)
    {
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v9 + 8), *a4);
    }

    if ((a2 & 2) != 0)
    {
      v10 = *a4;

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v9 + 24), v10);
    }
  }
}

void re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v5 = 32 * a2;
    v6 = a2;
    do
    {
      v7 = *(a1 + 32) + v5;
      v8 = *(v7 + 24);
      if (v8)
      {

        *(v7 + 24) = 0;
      }

      v9 = *(v7 + 8);
      if (v9)
      {

        *(v7 + 8) = 0;
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      bzero((*(a1 + 32) + 32 * v4), 32 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

id re::ecs2::DirectMaterialParametersArrayComponent::getParameterBuffer@<X0>(re::ecs2::DirectMaterialParametersArrayComponent *this@<X0>, char a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(this + 6) <= a3)
  {
    goto LABEL_4;
  }

  v5 = *(this + 8) + 32 * a3;
  if ((a2 & 2) != 0)
  {
    v7 = *(v5 + 16);
LABEL_7:
    result = v7;
    goto LABEL_8;
  }

  if (a2)
  {
    v7 = *v5;
    goto LABEL_7;
  }

LABEL_4:
  result = 0;
LABEL_8:
  *a4 = result;
  return result;
}

void re::ecs2::DirectMaterialParametersArrayComponent::ensureParameterBufferSize(re::ecs2::DirectMaterialParametersArrayComponent *this, id *a2, char a3, unint64_t a4, id a5)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((a3 & 3) == 0)
  {
    return;
  }

  v10 = *(this + 6);
  if (v10 <= a4)
  {
    re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize(this + 32, a4 + 1);
    v10 = *(this + 6);
  }

  if (v10 <= a4)
  {
    v25 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *buf = 0u;
    v22 = MEMORY[0x1E69E9C10];
    *err = 136315906;
    *&err[4] = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = a4;
    v31 = 2048;
    v32 = v10;
    _os_log_send_and_compose_impl(v23, &v25, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", err, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v11 = (*(this + 8) + 32 * a4);
  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

  BytesUsed = *v11;
  if (*v11)
  {
    BytesUsed = DRBufferGetBytesUsed();
  }

  if (BytesUsed == a5)
  {
    v13 = *v11;
  }

  else
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_13:
    v14 = v11[2];
    if (v14)
    {
      v14 = DRBufferGetBytesUsed();
    }

    if (v14 == a5)
    {
      v13 = v11[2];
      if ((a3 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_16:
      v15 = DRBufferDescriptorCreate();
      DRBufferDescriptorSetCapacity();
      DRBufferDescriptorSetSizeMultiple();
      v16 = a2[5];
      *err = 0;
      Buffer = DRContextCreateBuffer();
      v13 = Buffer;
      if (Buffer)
      {
        v18 = Buffer;
      }

      else
      {
        v19 = CFErrorCopyDescription(*err);
        v20 = *re::graphicsLogObjects(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          *buf = 136315138;
          *&buf[4] = CFStringGetCStringPtr(v19, 0x8000100u);
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Unable to create direct buffer: %s", buf, 0xCu);
        }

        CFRelease(v19);
      }

      if ((a3 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  objc_storeStrong(v11, v13);
LABEL_23:
  if ((a3 & 2) != 0)
  {
    objc_storeStrong(v11 + 2, v13);
  }
}

BOOL re::ecs2::DirectMaterialParametersArrayComponent::isBufferShared(re::ecs2::DirectMaterialParametersArrayComponent *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 6) <= a2)
  {
    return 0;
  }

  v2 = (*(this + 8) + 32 * a2);
  if (!*v2)
  {
    return 0;
  }

  v3 = (v2 + 2);
  if (!v2[2])
  {
    return 0;
  }

  re::DirectBuffer::getResourceId(v2, uu1);
  re::DirectBuffer::getResourceId(v3, uu2);
  return uuid_compare(uu1, uu2) == 0;
}

void re::ecs2::DirectMaterialParametersArrayComponent::clearBufferData(re::ecs2::DirectMaterialParametersArrayComponent *this, char a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(this + 6) > a3)
  {
    if (a2)
    {
      v6 = *(this + 8);
      v7 = *(v6 + 32 * a3);
      *(v6 + 32 * a3) = 0;
    }

    if ((a2 & 2) != 0)
    {
      v8 = *(this + 6);
      if (v8 <= a3)
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

        v18 = 789;
        v19 = 2048;
        v20 = a3;
        v21 = 2048;
        v22 = v8;
        _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
        _os_crash_msg();
        __break(1u);
      }

      v9 = *(this + 8) + 32 * a3;
      v10 = *(v9 + 16);
      *(v9 + 16) = 0;
    }
  }
}

void re::ecs2::DirectMaterialParametersArrayComponent::initComponentType(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1A3E38, memory_order_acquire) & 1) == 0)
  {
    v20 = __cxa_guard_acquire(&qword_1EE1A3E38);
    if (v20)
    {
      v21 = qword_1EE1A3E28;
      if (!qword_1EE1A3E28)
      {
        v21 = re::ecs2::allocInfo_DirectMaterialParametersArrayComponent(v20);
        qword_1EE1A3E28 = v21;
        re::ecs2::initInfo_DirectMaterialParametersArrayComponent(v21, v22, v23, v24);
      }

      qword_1EE1A3E30 = v21;
      __cxa_guard_release(&qword_1EE1A3E38);
    }
  }

  v2 = strlen(*(qword_1EE1A3E30 + 48));
  v30[0] = re::ecs2::Component::dropComponentSuffix(*(qword_1EE1A3E30 + 48), v2);
  v30[1] = v3;
  v4 = re::globalAllocators(v30[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v5, v30, 1, 2);
  *v6 = &unk_1F5CEACB0;
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0xFFFFFFFFLL;
  *(v5 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v6 + 24), 0x48);
  if ((atomic_load_explicit(&qword_1EE1A3E38, memory_order_acquire) & 1) == 0)
  {
    v25 = __cxa_guard_acquire(&qword_1EE1A3E38);
    if (v25)
    {
      v26 = qword_1EE1A3E28;
      if (!qword_1EE1A3E28)
      {
        v26 = re::ecs2::allocInfo_DirectMaterialParametersArrayComponent(v25);
        qword_1EE1A3E28 = v26;
        re::ecs2::initInfo_DirectMaterialParametersArrayComponent(v26, v27, v28, v29);
      }

      qword_1EE1A3E30 = v26;
      __cxa_guard_release(&qword_1EE1A3E38);
    }
  }

  v8 = qword_1EE1A3E30;
  v9 = *(v8 + 48);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = v9[1];
      if (v11)
      {
        v12 = (v9 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v31 = 2 * v10;
  v32 = v9;
  *v7 = v33;
  if (v31)
  {
    if (v31)
    {
    }
  }

  re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = v5;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  re::ecs2::ComponentTypeRegistry::add(v15, re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 1);
  if ((atomic_load_explicit(&qword_1EE1A3E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E40))
  {
    qword_1EE1A3E70 = 0;
    *&qword_1EE1A3E48 = 0u;
    *&qword_1EE1A3E58 = 0u;
    __cxa_guard_release(&qword_1EE1A3E40);
  }

  if ((_MergedGlobals_200 & 1) == 0)
  {
    _MergedGlobals_200 = 1;
    v16 = qword_1EE1A3E48;
    qword_1EE1A3E48 = &__block_literal_global_19;

    v17 = qword_1EE1A3E58;
    qword_1EE1A3E58 = &__block_literal_global_54;

    v18 = qword_1EE1A3E50;
    qword_1EE1A3E50 = &__block_literal_global_57;

    v19 = qword_1EE1A3E60;
    qword_1EE1A3E60 = &__block_literal_global_59;

    qword_1EE1A3E68 = re::snapshot::Registry::list(void)::s_head;
    if ((atomic_load_explicit(&qword_1EE1A3E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E38))
    {
      qword_1EE1A3E30 = re::internal::getOrCreateInfo("DirectMaterialParametersArrayComponent", re::ecs2::allocInfo_DirectMaterialParametersArrayComponent, re::ecs2::initInfo_DirectMaterialParametersArrayComponent, &qword_1EE1A3E28, 0);
      __cxa_guard_release(&qword_1EE1A3E38);
    }

    qword_1EE1A3E70 = qword_1EE1A3E30;
    re::snapshot::Registry::list(void)::s_head = &qword_1EE1A3E48;
  }

  *(re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 1) = re::ecs2::DirectMaterialParametersArrayComponent::clone;
}

void *re::ecs2::DirectMaterialParametersArrayComponent::clone(re::ecs2::DirectMaterialParametersArrayComponent *this, const re::ecs2::Component *a2)
{
  v3 = (*(*re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 32))(location);
  v4 = location[0];
  v5 = *(this + 6);
  re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(v4 + 4, v5);
  ++*(v4 + 14);
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 8) + 24;
    v8 = 32 * v6;
    while (1)
    {
      *location = 0u;
      v29 = 0u;
      *&v29 = *(v7 - 8);
      re::make::shared::object<re::ecs2::DirectParameterResources>(v29, &v27);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v29 + 1, v27);
      if (v27)
      {
      }

      if (*v7)
      {
        v9 = *(&v29 + 1);
        re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::operator=(*(&v29 + 1) + 64, (*v7 + 64));
        re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::operator=((v9 + 24), (*v7 + 24));
      }

      objc_storeStrong(location, *(v7 - 24));
      re::make::shared::object<re::ecs2::DirectParameterResources>(v10, &v27);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&location[1], v27);
      if (v27)
      {
      }

      v12 = *(v7 - 16);
      if (v12)
      {
        v13 = location[1];
        re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::operator=(location[1] + 64, (v12 + 64));
        v11 = re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::operator=((v13 + 24), (*(v7 - 16) + 24));
      }

      v14 = v4[5];
      v15 = v4[6];
      if (v15 >= v14)
      {
        v16 = v15 + 1;
        if (v14 < v15 + 1)
        {
          if (v4[4])
          {
            if (v14)
            {
              v17 = 2 * v14;
            }

            else
            {
              v17 = 8;
            }

            if (v17 <= v16)
            {
              v18 = v15 + 1;
            }

            else
            {
              v18 = v17;
            }

            re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(v4 + 4, v18);
          }

          else
          {
            re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(v4 + 4, v16);
            ++*(v4 + 14);
          }
        }

        v15 = v4[6];
      }

      v19 = v4[8] + 32 * v15;
      v20 = location[0];
      location[0] = 0;
      *v19 = v20;
      v21 = location[1];
      *(v19 + 8) = location[1];
      if (v21)
      {
        v22 = v21 + 8;
      }

      v23 = v29;
      *&v29 = 0;
      *(v19 + 16) = v23;
      v24 = *(&v29 + 1);
      *(v19 + 24) = *(&v29 + 1);
      if (!v24)
      {
        break;
      }

      v25 = (v24 + 8);
      ++v4[6];
      ++*(v4 + 14);

      if (v21)
      {
        goto LABEL_27;
      }

LABEL_28:
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        return v4;
      }
    }

    ++v4[6];
    ++*(v4 + 14);
    if (!v21)
    {
      goto LABEL_28;
    }

LABEL_27:

    goto LABEL_28;
  }

  return v4;
}

uint64_t re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::copy(a1, a2);
    }
  }

  return a1;
}

re::AssetHandle *re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::operator=(re::AssetHandle *a1, re::AssetHandle *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::copy(a1, a2);
        ++*(a1 + 6);
      }

      else
      {
        re::DynamicArray<re::ecs2::ProbeResource>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = *(a2 + 2);
      *a1 = v4;
      re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(a1, v5);
      ++*(a1 + 6);
      re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::snapshot::DecoderOPACK::field<1,re::DirectBuffer>(re::snapshot::DecoderOPACK *a1, void **a2, uint64_t a3)
{
  result = re::snapshot::DecoderOPACK::beginField<1>(a1, a2, a3);
  if (result)
  {
    re::internalDecode<re::snapshot::DecoderOPACK>(a1, a2);

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

re::snapshot::BufferEncoder *re::ecs2::snapshotMapFields<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, void *a2)
{
  __src = a2[5];
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  v4 = a2[5];
  if (v4)
  {
    v5 = a2[7];
    v6 = v5 + 32 * v4;
    do
    {
      {
        re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v7);
      }

      re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, v5, re::introspect<re::AssetHandle>(BOOL)::info);
      __src = *(v5 + 24);
      re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      v5 += 32;
    }

    while (v5 != v6);
  }

  __src = a2[10];
  result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  v9 = a2[10];
  if (v9)
  {
    v10 = a2[12];
    v11 = (v10 + 16 * v9);
    do
    {
      re::internalEncode<re::snapshot::EncoderRaw>(a1, v10);
      __src = *(v10 + 1);
      result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      v10 = (v10 + 16);
    }

    while (v10 != v11);
  }

  return result;
}

{
  v4 = a2[8];
  __src = 32 * a2[6];
  v5 = __src;
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  re::snapshot::BufferEncoder::writeRaw<true>(a1, v4, v5);
  v6 = a2[13];
  __src = 32 * a2[11];
  v7 = __src;
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  re::snapshot::BufferEncoder::writeRaw<true>(a1, v6, v7);
  v8 = a2[18];
  v9 = a2[16];
  __src = v9;
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, v8, v9);
}

re::snapshot::BufferEncoder *re::ecs2::snapshotMapFields<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, void *a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  v6 = a2[5];
  re::snapshot::EncoderOPACK::beginArray(this, v6);
  v7 = a2[5];
  if (v7)
  {
    v8 = a2[7];
    v9 = v8 + 32 * v7;
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      v10 = *(this + 4);
      if (v10 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 1);
      }

      else
      {
        v11 = *(this + 1);
        *(this + 4) = v10 + 1;
        *(v11 + v10) = 9;
      }

      {
        re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v14);
      }

      re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, v8, re::introspect<re::AssetHandle>(BOOL)::info);
      v12 = *(this + 4);
      if (v12 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 2);
      }

      else
      {
        v13 = *(this + 1);
        *(this + 4) = v12 + 1;
        *(v13 + v12) = 10;
      }

      re::snapshot::EncoderOPACK::writeInteger(this, *(v8 + 24));
      re::snapshot::EncoderOPACK::endObject(this);
      v8 += 32;
    }

    while (v8 != v9);
  }

  re::snapshot::EncoderOPACK::endArray(this, v6);
  v15 = *(this + 4);
  if (v15 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v16 = *(this + 1);
    *(this + 4) = v15 + 1;
    *(v16 + v15) = 10;
  }

  v17 = a2[10];
  re::snapshot::EncoderOPACK::beginArray(this, v17);
  v18 = a2[10];
  if (v18)
  {
    v19 = a2[12];
    v20 = &v19[2 * v18];
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      v21 = *(this + 4);
      if (v21 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 1);
      }

      else
      {
        v22 = *(this + 1);
        *(this + 4) = v21 + 1;
        *(v22 + v21) = 9;
      }

      re::internalEncode<re::snapshot::EncoderOPACK>(this, v19);
      v23 = *(this + 4);
      if (v23 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 2);
      }

      else
      {
        v24 = *(this + 1);
        *(this + 4) = v23 + 1;
        *(v24 + v23) = 10;
      }

      re::snapshot::EncoderOPACK::writeInteger(this, v19[1]);
      re::snapshot::EncoderOPACK::endObject(this);
      v19 += 2;
    }

    while (v19 != v20);
  }

  return re::snapshot::EncoderOPACK::endArray(this, v17);
}

{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  v6 = a2[6];
  re::snapshot::EncoderOPACK::beginArray(this, v6);
  v7 = a2[6];
  if (v7)
  {
    v8 = a2[8];
    v9 = 32 * v7;
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      re::snapshotMapFields<re::snapshot::EncoderOPACK>(this, v8);
      re::snapshot::EncoderOPACK::endObject(this);
      v8 += 32;
      v9 -= 32;
    }

    while (v9);
  }

  re::snapshot::EncoderOPACK::endArray(this, v6);
  v10 = *(this + 4);
  if (v10 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v11 = *(this + 1);
    *(this + 4) = v10 + 1;
    *(v11 + v10) = 10;
  }

  v12 = a2[11];
  re::snapshot::EncoderOPACK::beginArray(this, v12);
  v13 = a2[11];
  if (v13)
  {
    v14 = a2[13];
    v15 = 32 * v13;
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      re::snapshotMapFields<re::snapshot::EncoderOPACK>(this, v14);
      re::snapshot::EncoderOPACK::endObject(this);
      v14 += 32;
      v15 -= 32;
    }

    while (v15);
  }

  re::snapshot::EncoderOPACK::endArray(this, v12);
  v16 = *(this + 4);
  if (v16 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 3);
  }

  else
  {
    v17 = *(this + 1);
    *(this + 4) = v16 + 1;
    *(v17 + v16) = 11;
  }

  if ((*(this + 72) & 4) != 0)
  {
    v23 = a2[18];
    v24 = a2[16];
    re::snapshot::EncoderOPACK::beginData(this, v24, v24);

    return re::snapshot::BufferEncoder::writeRaw<true>(this, v23, v24);
  }

  else
  {
    v18 = a2[16];
    re::snapshot::EncoderOPACK::beginArray(this, v18);
    v19 = a2[16];
    if (v19)
    {
      v20 = a2[18];
      do
      {
        v21 = *v20++;
        re::snapshot::EncoderOPACK::operator<<(this, v21);
        --v19;
      }

      while (v19);
    }

    return re::snapshot::EncoderOPACK::endArray(this, v18);
  }
}

{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 0);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 8;
  }

  {
    re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0, v31, v32, v33, v34, v35);
  }

  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, re::introspect<re::ecs2::Component>(BOOL)::info);
  v6 = *(this + 4);
  if (v6 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v7 = *(this + 1);
    *(this + 4) = v6 + 1;
    *(v7 + v6) = 9;
  }

  v8 = a2[9];
  re::snapshot::EncoderOPACK::beginArray(this, v8);
  v9 = a2[9];
  if (v9)
  {
    v10 = a2[11];
    v11 = 88 * v9;
    do
    {
      {
        re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v12, v13, v14, v15, v16);
      }

      re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, v10, re::introspect<re::SkeletalPose>(BOOL)::info);
      v10 += 88;
      v11 -= 88;
    }

    while (v11);
  }

  re::snapshot::EncoderOPACK::endArray(this, v8);
  v17 = *(this + 4);
  if (v17 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v18 = *(this + 1);
    *(this + 4) = v17 + 1;
    *(v18 + v17) = 10;
  }

  v19 = a2[14];
  re::snapshot::EncoderOPACK::beginArray(this, v19);
  v20 = a2[14];
  if (v20)
  {
    v21 = a2[16];
    v22 = v21 + 40 * v20;
    do
    {
      v23 = *(v21 + 16);
      re::snapshot::EncoderOPACK::beginArray(this, v23);
      v24 = *(v21 + 16);
      if (v24)
      {
        v25 = *(v21 + 32);
        v26 = v24 << 6;
        do
        {
          re::internal::opack::encode<re::Vector4<float>,4>(this, v25);
          v25 += 64;
          v26 -= 64;
        }

        while (v26);
      }

      re::snapshot::EncoderOPACK::endArray(this, v23);
      v21 += 40;
    }

    while (v21 != v22);
  }

  re::snapshot::EncoderOPACK::endArray(this, v19);
  v27 = *(this + 4);
  if (v27 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 3);
  }

  else
  {
    v28 = *(this + 1);
    *(this + 4) = v27 + 1;
    *(v28 + v27) = 11;
  }

  {
    re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v36);
  }

  v29 = re::introspect<re::AssetHandle>(BOOL)::info;

  return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, (a2 + 4), v29);
}

uint64_t (***re::ecs2::snapshotMapFields<re::snapshot::DecoderRaw>(re *a1, uint64_t a2))(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v7[0] = &unk_1F5CEAEE0;
  v7[1] = &v6;
  v7[3] = v4;
  v7[4] = v7;
  re::snapshot::DecoderRaw::deserializePointer(a1, a2, v7);
  return re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(v7);
}

uint64_t (***re::ecs2::snapshotMapFields<re::snapshot::EncoderRaw>(re *a1, uint64_t a2))(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v7[0] = &unk_1F5CEB050;
  v7[1] = &v6;
  v7[3] = v4;
  v7[4] = v7;
  re::snapshot::EncoderRaw::serializePointer(a1, a2, v7);
  return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v7);
}

uint64_t (***re::ecs2::snapshotMapFields<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, uint64_t *a2))(void)
{
  v3 = this;
  v10[5] = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    this = re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  v6 = *a2;
  v7 = re::globalAllocators(this)[2];
  v10[0] = &unk_1F5CEB110;
  v10[1] = &v9;
  v10[3] = v7;
  v10[4] = v10;
  re::snapshot::EncoderOPACK::serializePointer(v3, v6, v10);
  return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v10);
}

void re::ecs2::DirectMaterialParametersArrayComponentVersionUtilities::prepareForRealityFileSerialization(re::ecs2::DirectMaterialParametersArrayComponentVersionUtilities *this, re::ecs2::EntityAssetData *a2, re::ecs2::Component *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MaterialParameterBlockArrayComponent>(this);
  if (v5)
  {
    if (*(this + 4))
    {
      v6 = *(this + 6);
      if (v6)
      {
        v7 = v5;
        v8 = (*(this + 8) + 8);
        v9 = 24 * v6;
        while (*(v8 - 1) != *(re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType + 3) >> 1)
        {
          v8 += 3;
          v9 -= 24;
          if (!v9)
          {
            return;
          }
        }

        v10 = *v8;
        if (*v8)
        {
          if (*(a2 + 6))
          {
            v11 = 0;
            v37 = *v8;
            v38 = a2;
            do
            {
              if (v11 >= *(v10 + 72))
              {
                return;
              }

              re::AssetHandle::AssetHandle(v41, (*(v10 + 88) + 24 * v11));
              if (v42)
              {
                v12 = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v41) + 1968);
                if (v12)
                {
                  v13 = (v12 + 8);
                  if (v11 >= *(v7 + 6))
                  {
                    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(v7, v11 + 1);
                  }

                  v14 = *(a2 + 6);
                  if (v14 <= v11)
                  {
LABEL_46:
                    v43 = 0;
                    v55 = 0u;
                    v56 = 0u;
                    v53 = 0u;
                    v54 = 0u;
                    v52 = 0u;
                    v33 = MEMORY[0x1E69E9C10];
                    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v44 = 136315906;
                    v45 = "operator[]";
                    v46 = 1024;
                    if (v34)
                    {
                      v35 = 3;
                    }

                    else
                    {
                      v35 = 2;
                    }

                    v47 = 789;
                    v48 = 2048;
                    v49 = v11;
                    v50 = 2048;
                    v51 = v14;
                    _os_log_send_and_compose_impl(v35, &v43, &v52, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v36, v37);
                    _os_crash_msg();
                    __break(1u);
                  }

                  v15 = *(a2 + 8);
                  v39 = v12;
                  CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(v12);
                  v17 = *(CustomUniformsArgument + 9);
                  if (v17)
                  {
                    v18 = *(CustomUniformsArgument + 10);
                    v19 = &v18[5 * v17];
                    do
                    {
                      v14 = *(v7 + 6);
                      if (v14 <= v11)
                      {
                        v43 = 0;
                        v55 = 0u;
                        v56 = 0u;
                        v53 = 0u;
                        v54 = 0u;
                        v52 = 0u;
                        v30 = MEMORY[0x1E69E9C10];
                        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v44 = 136315906;
                        v45 = "operator[]";
                        v46 = 1024;
                        if (v31)
                        {
                          v32 = 3;
                        }

                        else
                        {
                          v32 = 2;
                        }

                        v47 = 789;
                        v48 = 2048;
                        v49 = v11;
                        v50 = 2048;
                        v51 = v14;
                        _os_log_send_and_compose_impl(v32, &v43, &v52, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v36, v37);
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_46;
                      }

                      var0 = v18->var0;
                      v21 = *(*(v7 + 8) + 32 * v11);
                      if (v21)
                      {
                        v22 = (v21 + 8);
                      }

                      v23 = *(&v18[2].var0 + 2);
                      if (v23 != 60)
                      {
                        if (v23 == 58)
                        {
                          v24 = *(v15 + 32 * v11 + 24);
                          v25 = *(v24 + 40);
                          if (v25)
                          {
                            v26 = *(v24 + 56);
                            v27 = (v26 + 32 * v25);
                            while (1)
                            {
                              v28 = re::AssetHandle::AssetHandle(&v52, v26);
                              *(&v53 + 1) = *(v26 + 3);
                              if (*(&v53 + 1) == var0)
                              {
                                break;
                              }

                              re::AssetHandle::~AssetHandle(v28);
                              v26 = (v26 + 32);
                              if (v26 == v27)
                              {
                                goto LABEL_33;
                              }
                            }

                            re::AssetHandle::AssetHandle(v40, &v52);
                            re::ecs2::SerializableMaterialParameterBlock::setTexture(v21, v18 + 1, v40);
                            re::AssetHandle::~AssetHandle(v40);
                            re::AssetHandle::~AssetHandle(&v52);
                            if (!v21)
                            {
                              goto LABEL_35;
                            }

LABEL_34:

                            goto LABEL_35;
                          }
                        }

                        else
                        {
                          if (v21)
                          {
                            v29 = (v21 + 8);
                          }

                          DRBufferRead();
                          if (v21)
                          {
                          }
                        }
                      }

LABEL_33:
                      if (v21)
                      {
                        goto LABEL_34;
                      }

LABEL_35:
                      v18 += 5;
                    }

                    while (v18 != v19);
                  }

                  v10 = v37;
                  a2 = v38;
                }
              }

              re::AssetHandle::~AssetHandle(v41);
              ++v11;
            }

            while (v11 < *(a2 + 6));
          }
        }
      }
    }
  }
}

void ___ZN2re4ecs254DirectMaterialParametersArrayComponentVersionUtilities34prepareForRealityFileSerializationEPNS0_15EntityAssetDataEPNS0_9ComponentE_block_invoke(uint64_t a1, uint64_t a2, float16x4_t a3, int8x16_t _Q1)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  v8 = *(a1 + 64);
  v9 = (a2 + *(a1 + 80));
  switch(*(*(a1 + 72) + 36))
  {
    case 3:
      _S0 = *v9;
      goto LABEL_23;
    case 4:
      v26.i64[0] = *v9;
      goto LABEL_25;
    case 5:
      v19 = *v9;
      v18 = *(v9 + 1);
      v26.i64[0] = v19;
      v26.i64[1] = v18;
      goto LABEL_28;
    case 6:
      v17 = *v9;
      v16 = *(v9 + 1);
      v26.i64[0] = v17;
      v26.i64[1] = v16;
      goto LABEL_21;
    case 7:
      v26 = *v9;
      v11 = v6;
      v12 = 48;
      goto LABEL_29;
    case 8:
    case 9:
    case 0xA:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
      goto LABEL_30;
    case 0xB:
      v15 = *(v9 + 1);
      v26 = *v9;
      v27 = v15;
      v28 = *(v9 + 2);
      v11 = v6;
      v12 = 49;
      goto LABEL_29;
    case 0xF:
      v13 = *(v9 + 1);
      v26 = *v9;
      v27 = v13;
      v14 = *(v9 + 3);
      v28 = *(v9 + 2);
      v29 = v14;
      v11 = v6;
      v12 = 50;
      goto LABEL_29;
    case 0x10:
      _H0 = *v9;
      __asm { FCVT            S0, H0 }

LABEL_23:
      v26.i32[0] = _S0;
      v11 = v6;
      v12 = 1;
      goto LABEL_29;
    case 0x11:
      a3.i32[0] = *v9;
      v26.i64[0] = vcvtq_f32_f16(a3).u64[0];
LABEL_25:
      v11 = v6;
      v12 = 32;
      goto LABEL_29;
    case 0x12:
      _D0 = *v9;
      __asm { FCVT            S1, H0 }

      v26 = vextq_s8(vextq_s8(_Q1, _Q1, 4uLL), vcvtq_f32_f16(vext_s8(_D0, _D0, 2uLL)), 0xCuLL);
LABEL_28:
      v11 = v6;
      v12 = 33;
      goto LABEL_29;
    case 0x13:
      v26 = vcvtq_f32_f16(*v9);
LABEL_21:
      v11 = v6;
      v12 = 34;
      goto LABEL_29;
    case 0x1D:
      v26.i32[0] = *v9;
      v11 = v6;
      v12 = 3;
      goto LABEL_29;
    case 0x1E:
      v26.i64[0] = *v9;
      v11 = v6;
      v12 = 4;
      goto LABEL_29;
    case 0x1F:
      v26 = *v9;
      v11 = v6;
      v12 = 5;
      goto LABEL_29;
    case 0x20:
      v26 = *v9;
      v11 = v6;
      v12 = 6;
      goto LABEL_29;
    case 0x21:
      v26.i32[0] = *v9;
      v11 = v6;
      v12 = 7;
      goto LABEL_29;
    case 0x22:
      v26.i64[0] = *v9;
      v11 = v6;
      v12 = 8;
      goto LABEL_29;
    case 0x23:
      v26 = *v9;
      v11 = v6;
      v12 = 9;
      goto LABEL_29;
    case 0x24:
      v26 = *v9;
      v11 = v6;
      v12 = 10;
      goto LABEL_29;
    default:
      if (*(*(a1 + 72) + 36) != 53)
      {
        goto LABEL_30;
      }

      v26.i8[0] = *v9;
      v11 = v6;
      v12 = 2;
LABEL_29:
      re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, v8, v12, &v26);
LABEL_30:
      if (v6)
      {
      }

      return;
  }
}

double __copy_helper_block_a8_32c56_ZTSN2re4ecs240SerializableMaterialParameterBlockHandleE(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  a1[4] = v3;
  if (v3)
  {
    v4 = (v3 + 8);
  }

  a1[5] = 0;
  *&result = 1;
  a1[6] = 1;
  a1[7] = 0;
  return result;
}

void __destroy_helper_block_a8_32c56_ZTSN2re4ecs240SerializableMaterialParameterBlockHandleE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {

    *(a1 + 32) = 0;
  }
}

void *re::ecs2::allocInfo_DirectMaterialParametersArrayComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3E78, "DirectMaterialParametersArrayComponent");
    __cxa_guard_release(&qword_1EE1A3E10);
  }

  return &unk_1EE1A3E78;
}

void re::ecs2::initInfo_DirectMaterialParametersArrayComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x5523AF574B6F6F3CLL;
  v16[1] = "DirectMaterialParametersArrayComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A3E20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E20))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A3E18 = v14;
    __cxa_guard_release(&qword_1EE1A3E20);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A3E18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DirectMaterialParametersArrayComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DirectMaterialParametersArrayComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DirectMaterialParametersArrayComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DirectMaterialParametersArrayComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs238DirectMaterialParametersArrayComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::DirectMaterialParametersArrayComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEAD20;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::DirectMaterialParametersArrayComponent>(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CEAD20;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
}

void *re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
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
              goto LABEL_23;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_23:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 16;
        v11 = 32 * v9;
        v12 = v7;
        do
        {
          v14 = *(v10 - 16);
          v13 = *(v10 - 8);
          *(v10 - 16) = 0;
          *v12 = v14;
          v12[1] = v13;
          if (v13)
          {
            v15 = (v13 + 8);
          }

          v17 = *v10;
          v16 = *(v10 + 8);
          *v10 = 0;
          v12[2] = v17;
          v12[3] = v16;
          if (v16)
          {
            v18 = (v16 + 8);
            v19 = *(v10 + 8);
            if (v19)
            {

              *(v10 + 8) = 0;
            }
          }

          v20 = *(v10 - 8);
          if (v20)
          {

            *(v10 - 8) = 0;
          }

          v12 += 4;
          v10 += 32;
          v11 -= 32;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_23;
    }
  }

  return result;
}

double re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 72, 0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEAD20;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CEADA8;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A3E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E38))
  {
    qword_1EE1A3E30 = re::internal::getOrCreateInfo("DirectMaterialParametersArrayComponent", re::ecs2::allocInfo_DirectMaterialParametersArrayComponent, re::ecs2::initInfo_DirectMaterialParametersArrayComponent, &qword_1EE1A3E28, 0);
    __cxa_guard_release(&qword_1EE1A3E38);
  }

  return qword_1EE1A3E30;
}

__n128 re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CEACB0;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}