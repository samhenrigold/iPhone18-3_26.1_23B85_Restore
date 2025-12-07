void re::ecs2::AnimationSceneManager::registerSystem(re::ecs2::AnimationSceneManager *this, re::ecs2::System *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(this + 31);
  v5 = *(this + 27);
  if (v4 + 1 > 8 * v5)
  {
    re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity((this + 208), (v4 + 8) >> 3);
    v5 = *(this + 27);
  }

  if (v5 <= v4 >> 3)
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

    v15 = 858;
    v16 = 2048;
    v17 = v4 >> 3;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 224))
  {
    v6 = this + 232;
  }

  else
  {
    v6 = *(this + 30);
  }

  v7 = *&v6[8 * (v4 >> 3)];
  ++*(this + 31);
  ++*(this + 64);
  *(v7 + 8 * (v4 & 7)) = a2;
  re::ecs2::System::setDefaultTaskOptions(a2, this + 33);

  re::ecs2::AnimationSceneManager::updateScheduling(this);
}

void re::ecs2::AnimationSceneManager::updateScheduling(unint64_t this)
{
  v2 = *(this + 32);
  v3 = *(this + 40);
  if (v2 < 0xB)
  {
    if (v3)
    {
      v5 = (this + 48);
      if (v2)
      {
LABEL_6:
        v6 = 0;
        v7 = 8 * v2;
        do
        {
          v8 = *v5++;
          v6 |= v8;
          v7 -= 8;
        }

        while (v7);
        v9 = v6 != 0;
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(this + 56);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    v9 = 0;
    goto LABEL_19;
  }

  if (v3)
  {
    v4 = (this + 48);
  }

  else
  {
    v4 = *(this + 56);
  }

  v10 = 8 * v2 - 8;
  do
  {
    v11 = *v4++;
    v9 = v11 != 0;
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    v10 -= 8;
  }

  while (!v12);
LABEL_19:
  v13 = *(this + 248);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = re::BucketArray<re::ecs2::System *,8ul>::operator[](this + 208, i);
      v16 = *v15;
      v17 = *(*v15 + 200);
      if (v17)
      {
        v18 = *(v16 + 216);
        v19 = 8 * v17;
        do
        {
          v20 = *v18;
          if (v9 != re::ecs2::System::isTaskEnabled(v16, *v18))
          {
            re::ecs2::System::setTaskEnabled(v16, v20, v9);
            if (v9)
            {
              v21 = *(v16 + 40);
              if (v21)
              {
                v22 = (*(*v21 + 104))(v21, v20);
                if (v22)
                {
                  v23 = v22;
                  v24 = re::ecs2::System::taskHandle(v16, v20);
                  if (*(v23 + 5) > v24)
                  {
                    re::Scheduler::resetTaskCurrentTime(v23, v24);
                  }
                }
              }
            }
          }

          ++v18;
          v19 -= 8;
        }

        while (v19);
      }
    }
  }
}

void re::ecs2::AnimationSceneManager::registerScene(re::ecs2::AnimationSceneManager *this, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 512, 8);
  re::AnimationManager::AnimationManager(v5);
  v28 = &v25;
  v24 = v23;
  v25 = &unk_1F5CEBC00;
  v22 = v6;
  v23[0] = &unk_1F5CEBC00;
  std::__function::__value_func<void ()(re::AnimationManager *)>::~__value_func[abi:nn200100](&v25);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v25, this + 160, a2, v7 ^ (v7 >> 31));
  if (HIDWORD(v26) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 160, v26, v25);
    v8[1] = a2;
    v9 = v24;
    v8[2] = v22;
    v10 = (v8 + 2);
    v22 = 0;
    if (v9)
    {
      if (v9 == v23)
      {
        v8[6] = v8 + 3;
        (*(*v9 + 24))(v9);
      }

      else
      {
        v8[6] = v9;
        v24 = 0;
      }
    }

    else
    {
      v8[6] = 0;
    }

    ++*(this + 50);
  }

  else
  {
    v10 = (*(this + 22) + (HIDWORD(v26) << 6) + 16);
  }

  std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](&v22);
  re::AnimationManager::init(*v10, 0, 0);
  v11 = *(this + 36);
  *(this + 36) = 0;
  v12 = *(this + 74);
  if (v12)
  {
    v13 = (this + 304);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(this + 39);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  v14 = 40 * v11;
  do
  {
    v13 = std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v13) + 5;
    v14 -= 40;
  }

  while (v14);
  v12 = *(this + 74);
LABEL_16:
  *(this + 74) = v12 + 2;
  v15 = *v10;
  v25 = *v10;
  v16 = *(this + 17);
  if (v16)
  {
    v17 = *(*(this + 19) + 8 * v16 - 8);
    v22 = v17;
    *(this + 17) = v16 - 1;
    ++*(this + 36);
    v18 = this + 72;
    v19 = &v22;
  }

  else
  {
    v17 = *(this + 8);
    v21 = v17;
    v22 = 0;
    if (((v17 + 1) & 0x3F) != 0)
    {
      v20 = ((v17 + 1) >> 6) + 1;
    }

    else
    {
      v20 = (v17 + 1) >> 6;
    }

    *(this + 8) = v17 + 1;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 24), v20, &v22);
    v18 = this + 72;
    v19 = &v21;
  }

  re::HashTable<re::AnimationManager *,unsigned long,re::Hash<re::AnimationManager *>,re::EqualTo<re::AnimationManager *>,true,false>::addNew(v18, &v25, v19);
  *(v15 + 5) = this + 8;
  *(v15 + 6) = v17;
  (*(*(this + 1) + 16))(this + 8, *(v15 + 56), v17);
  re::ecs2::AnimationSceneManager::updateScheduling(this);
}

void re::ecs2::AnimationSceneManager::unregisterScene(re::ecs2::AnimationSceneManager *this, unint64_t a2)
{
  v4 = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, a2);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = *v4;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v35, this + 72, v6, v8);
  v9 = *(this + 11);
  v10 = *(v9 + 32 * v37 + 16);
  v34 = v10;
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v35, this + 72, v6, v8);
  v11 = v37;
  if (v37 != 0x7FFFFFFF)
  {
    v12 = (v9 + 32 * v37);
    v13 = *v12 & 0x7FFFFFFF;
    if (v38 == 0x7FFFFFFF)
    {
      *(*(this + 10) + 4 * v36) = v13;
    }

    else
    {
      *(v9 + 32 * v38) = *(v9 + 32 * v38) & 0x80000000 | v13;
    }

    *v12 = *(this + 27);
    --*(this + 25);
    v14 = *(this + 28) + 1;
    *(this + 27) = v11;
    *(this + 28) = v14;
  }

  re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 24, v10);
  v15 = re::DynamicArray<unsigned long>::add((this + 120), &v34);
  if (!*(this + 35))
  {
    v21 = *(this + 36);
    re::DynamicOverflowArray<std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,4ul>::setCapacity(this + 35, v21 + 1);
    v22 = *(this + 74) + 2;
    *(this + 74) = v22;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v23 = this + 304;
    goto LABEL_23;
  }

  v16 = *(this + 36);
  v17 = *(this + 74);
  if ((v17 & 1) == 0)
  {
    v18 = *(this + 38);
    if (v16 >= v18)
    {
      v19 = v16 + 1;
      if (v18 < v19)
      {
        v20 = 2 * v18;
        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

  v19 = v16 + 1;
  if (v19 < 5)
  {
LABEL_15:
    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v20 = 8;
LABEL_18:
  if (v20 <= v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = v20;
  }

  re::DynamicOverflowArray<std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,4ul>::setCapacity(this + 35, v24);
  if (*(this + 74))
  {
    goto LABEL_22;
  }

LABEL_16:
  v23 = *(this + 39);
LABEL_23:
  v25 = &v23[40 * *(this + 36)];
  v26 = *v5;
  *v5 = 0;
  *v25 = v26;
  std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100]((v25 + 8), (v5 + 1));
  ++*(this + 36);
  *(this + 74) += 2;
  v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v35, this + 160, a2, v27 ^ (v27 >> 31));
  v28 = v37;
  if (v37 != 0x7FFFFFFF)
  {
    v29 = *(this + 22);
    v30 = (v29 + (v37 << 6));
    v31 = *v30 & 0x7FFFFFFF;
    if (v38 == 0x7FFFFFFF)
    {
      *(*(this + 21) + 4 * v36) = v31;
    }

    else
    {
      *(v29 + (v38 << 6)) = *(v29 + (v38 << 6)) & 0x80000000 | v31;
    }

    v32 = *v30;
    if ((*v30 & 0x80000000) != 0)
    {
      *v30 = v32 & 0x7FFFFFFF;
      std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v30 + 2);
      v29 = *(this + 22);
      v32 = *(v29 + (v28 << 6));
    }

    *(v29 + (v28 << 6)) = *(this + 49) | v32 & 0x80000000;
    --*(this + 47);
    v33 = *(this + 50) + 1;
    *(this + 49) = v28;
    *(this + 50) = v33;
  }

  re::ecs2::AnimationSceneManager::updateScheduling(this);
}

uint64_t re::HashTable<re::AnimationManager *,unsigned long,re::Hash<re::AnimationManager *>,re::EqualTo<re::AnimationManager *>,true,false>::addNew(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    v8 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v8;
    ++*(a1 + 40);
  }

  return result;
}

void re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate::setSchedulingEnabled(re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate *this, int a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a3 >> 6;
    v5 = *(this + 3);
    if (v5 <= a3 >> 6)
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

      v15 = 858;
      v16 = 2048;
      v17 = v4;
      v18 = 2048;
      v19 = v5;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    if (*(this + 32))
    {
      v6 = this + 40;
    }

    else
    {
      v6 = *(this + 6);
    }

    *&v6[8 * v4] |= 1 << a3;
  }

  else
  {
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 16, a3);
  }

  v7 = *(this + 1);

  re::ecs2::AnimationSceneManager::updateScheduling(v7);
}

void re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate::~AnimationScenesSchedulingDelegate(re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate *this)
{
  re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate::~AnimationScenesSchedulingDelegate(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CEBB28;
  v2 = this + 16;
  re::DynamicArray<unsigned long>::deinit(this + 112);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 8);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
}

void re::ecs2::AnimationSceneManager::~AnimationSceneManager(re::ecs2::AnimationSceneManager *this)
{
  re::ecs2::AnimationSceneManager::~AnimationSceneManager(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CEBB78;
  if (*(this + 35))
  {
    v2 = *(this + 36);
    if (v2)
    {
      if (*(this + 296))
      {
        v3 = (this + 304);
      }

      else
      {
        v3 = *(this + 39);
      }

      v4 = 40 * v2;
      do
      {
        v3 = std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v3) + 5;
        v4 -= 40;
      }

      while (v4);
    }

    v5 = *(this + 74);
    if ((v5 & 1) == 0)
    {
      (*(**(this + 35) + 40))(*(this + 35), *(this + 39));
      v5 = *(this + 74);
    }

    *(this + 35) = 0;
    *(this + 36) = 0;
    *(this + 74) = (v5 | 1) + 2;
  }

  v6 = *(this + 31);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      re::BucketArray<unsigned long,8ul>::operator[](this + 208, i);
    }
  }

  while (*(this + 27))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 26);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 208);
  *(this + 31) = 0;
  ++*(this + 64);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 208);
  re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 20);
  re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate::~AnimationScenesSchedulingDelegate((this + 8));
}

unint64_t re::ecs2::AnimationSceneManager::unregisterSystem(unint64_t this, re::ecs2::System *a2)
{
  v2 = *(this + 248);
  if (v2)
  {
    v4 = this;
    v5 = 0;
    while (1)
    {
      this = re::BucketArray<re::ecs2::System *,8ul>::operator[](v4 + 208, v5);
      if (*this == a2)
      {
        break;
      }

      if (v2 == ++v5)
      {
        v5 = v2;
        break;
      }
    }

    v7 = *(v4 + 248);
    if (v5 != v7)
    {
      if (v7 <= v5)
      {
        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 848, v5, v7);
        this = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v10, v11);
        __break(1u);
      }

      else
      {
        v8 = v7 - 1;
        if (v7 - 1 > v5)
        {
          v9 = *re::BucketArray<unsigned long,8ul>::operator[](v4 + 208, v8);
          *re::BucketArray<unsigned long,8ul>::operator[](v4 + 208, v5) = v9;
          v8 = *(v4 + 248) - 1;
        }

        this = re::BucketArray<unsigned long,8ul>::operator[](v4 + 208, v8);
        --*(v4 + 248);
        ++*(v4 + 256);
      }
    }
  }

  return this;
}

double re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
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
          std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100]((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 64;
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

uint64_t re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + (v6 << 6) + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 6) + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + (v8 << 6)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_16AnimationManagerEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(re::AnimationManager *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = a1[4];
  v8 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v8);
LABEL_4:
    std::__function::__value_func<void ()(re::AnimationManager *)>::~__value_func[abi:nn200100]((a1 + 1));
    return a1;
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(v5, v6, v7);
}

uint64_t re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v13 + 56) % *(a1 + 24), *(v13 + 56));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 16);
                *(v13 + 16) = 0;
                *(v17 + 16) = v18;
                std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100](v17 + 24, v13 + 24);
              }

              v13 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v25);
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
    v20 = *(v19 + (v5 << 6));
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + (v5 << 6));
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + (v5 << 6);
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 56) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + (v5 << 6);
}

uint64_t re::DynamicOverflowArray<std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,4ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,4ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = a1[4];
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = a1 + 4;
          v17 = 40 * v9;
          v18 = v15;
          do
          {
            v19 = *v15;
            *v18 = 0;
            v18 += 5;
            *(v16 - 1) = v19;
            std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100](v16, (v15 + 1));
            std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v15);
            v16 += 5;
            v15 = v18;
            v17 -= 40;
          }

          while (v17);
          result = *a1;
        }

        result = (*(*result + 40))(result, v14);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x28uLL))
      {
        v2 = 40 * a2;
        result = (*(*result + 32))(result, 40 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v20 = a1[1];
          if (v20)
          {
            v21 = result + 8;
            v22 = 40 * v20;
            v23 = v13;
            do
            {
              v24 = *v13;
              *v23 = 0;
              v23 += 5;
              *(v21 - 8) = v24;
              std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100](v21, (v13 + 1));
              result = std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v13);
              v21 += 40;
              v13 = v23;
              v22 -= 40;
            }

            while (v22);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 40, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v25, v27);
        __break(1u);
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v26, v28);
      __break(1u);
    }
  }

  return result;
}

unint64_t re::BucketArray<re::ecs2::System *,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v5 + 8 * v2) + 8 * (a2 & 7);
}

uint64_t re::MediaDefaults::logEnabled(re::MediaDefaults *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "media.log.enabled", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::MediaDefaults::logEnabled(void)::value = v7;
      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[352];
}

uint64_t re::MediaDefaults::logLevel(re::MediaDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9[1] = v1;
    v9[2] = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v6)
    {
      re::Defaults::intValue(v9, "media.log.level", v7);
      v8 = HIDWORD(v9[0]);
      if (!LOBYTE(v9[0]))
      {
        v8 = 0;
      }

      re::MediaDefaults::logLevel(void)::value = v8;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  v4 = *(v3 + 240);
  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t re::MediaDefaults::logSubsampleRate(re::MediaDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9[1] = v1;
    v9[2] = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v6)
    {
      re::Defaults::intValue(v9, "media.log.subsamplerate", v7);
      v8 = HIDWORD(v9[0]);
      if (!LOBYTE(v9[0]))
      {
        v8 = 90;
      }

      re::MediaDefaults::logSubsampleRate(void)::value = v8;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  v4 = *(v3 + 244);
  if (v4 <= 30)
  {
    return 30;
  }

  else
  {
    return v4;
  }
}

float re::MediaDefaults::billboardAroundPtZ(re::MediaDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::MediaDefaults::billboardAroundPtZ(float)::value, "smc.billboardAroundPtZ", v3);
      result = v4;
    }
  }

  if (re::MediaDefaults::billboardAroundPtZ(float)::value)
  {
    return *&dword_1ECF1C3E4;
  }

  return result;
}

float re::MediaDefaults::billboardDampingFactor(re::MediaDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::MediaDefaults::billboardDampingFactor(float)::value, "smc.billboardDampingFactor", v3);
      result = v4;
    }
  }

  if (re::MediaDefaults::billboardDampingFactor(float)::value)
  {
    return *&dword_1ECF1C3F4;
  }

  return result;
}

uint64_t re::MediaDefaults::resizeMeshInVertexShaderEnabled(re::MediaDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "media.resizeMeshInVertexShader", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::MediaDefaults::resizeMeshInVertexShaderEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1024];
}

float re::MediaDefaults::billboardMaxAngle(re::MediaDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::MediaDefaults::billboardMaxAngle(float)::value, "smc.billboardMaxAngle", v3);
      result = v4;
    }
  }

  if (re::MediaDefaults::billboardMaxAngle(float)::value)
  {
    return *&dword_1ECF1C414;
  }

  return result;
}

float re::MediaDefaults::billboardEaseOutExponent(re::MediaDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::MediaDefaults::billboardEaseOutExponent(float)::value, "smc.billboardEaseOutExponent", v3);
      result = v4;
    }
  }

  if (re::MediaDefaults::billboardEaseOutExponent(float)::value)
  {
    return *&dword_1ECF1C424;
  }

  return result;
}

re::ecs2::TransformComponent *re::ecs2::TransformComponent::TransformComponent(re::ecs2::TransformComponent *this)
{
  v9[4] = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CEBC90;
  *(v2 + 32) = 0x3F8000003F800000;
  *(v2 + 40) = 1065353216;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0x3F80000000000000;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  re::makeEntityBindNodeForComponent(v9, v2);
  *&v6 = "Transform.transform";
  *(&v6 + 1) = 19;
  v3 = &unk_1EE187000;
  {
    v3 = &unk_1EE187000;
    if (v5)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v3 = &unk_1EE187000;
    }
  }

  re::BindNode::bindPointWithOverride(&v7, v9, v3[248], &v6);
  *(this + 10) = v7;
  re::DynamicArray<re::RigDataValue>::operator=(this + 88, v8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
  re::BindNode::deinit(v9);
  return this;
}

void re::ecs2::TransformComponent::worldMatrix4x4F(re::ecs2::TransformComponent *this@<X0>, const re::ecs2::Entity *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *(this + 2);
  if (v5)
  {
    v6 = a2;
    if (re::TransformService::isEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
    }

    if (re::TransformService::isEnabled(void)::isEnabled == 1 && (v7 = re::TransformService::transformServiceFromEntity(v5, a2)) != 0)
    {

      re::TransformService::worldMatrix(v7, v5, 0, a3);
    }

    else if (v6)
    {
      if (*(this + 128))
      {

        re::ecs2::TransformComponent::anchoredAnimatedWorldTransform(this, a3);
      }

      else
      {

        re::ecs2::TransformComponent::deactivatedAnchoredAnimatedWorldTransform(v5, a3);
      }
    }

    else
    {

      re::ecs2::TransformComponent::anchoredUnanimatedWorldTransform(v5, a3);
    }
  }

  else
  {
    v8 = *(this + 12);
    v9 = *(this + 13);
    v10 = v8 + v8;
    v11 = v9 + v9;
    v12 = *(this + 14);
    v13 = *(this + 15);
    v14 = v12 + v12;
    v15 = v8 * (v8 + v8);
    v16 = v9 * (v9 + v9);
    v17 = v12 * (v12 + v12);
    v18 = v10 * v9;
    v19 = v10 * v12;
    v20 = v11 * v12;
    v21 = v10 * v13;
    v22 = v11 * v13;
    v23 = v14 * v13;
    v24.i32[3] = 0;
    v24.f32[0] = 1.0 - (v16 + v17);
    v24.f32[1] = v18 + v23;
    v24.f32[2] = v19 - v22;
    v25.i32[3] = 0;
    v26.i32[3] = 0;
    v26.f32[0] = v18 - v23;
    v26.f32[1] = 1.0 - (v15 + v17);
    v26.f32[2] = v20 + v21;
    v25.f32[0] = v19 + v22;
    v25.f32[1] = v20 - v21;
    v25.f32[2] = 1.0 - (v15 + v16);
    v27 = *(this + 2);
    v28 = vmulq_n_f32(v24, v27.f32[0]);
    v29 = vmulq_laneq_f32(v25, v27, 2);
    v30 = vmulq_n_f32(v26, COERCE_FLOAT(HIDWORD(*(this + 4))));
    *a3 = v28;
    a3[1] = v30;
    v31 = *(this + 4);
    v31.i32[3] = 1.0;
    a3[2] = v29;
    a3[3] = v31;
  }
}

void *re::ecs2::TransformComponent::deactivatedAnchoredAnimatedWorldTransform@<X0>(void *result@<X0>, __int128 *a2@<X8>)
{
  v2 = xmmword_1E30474D0;
  v3 = xmmword_1E30476A0;
  v4 = xmmword_1E3047680;
  v5 = xmmword_1E3047670;
  while (result)
  {
    v6 = result[32];
    if (v6)
    {
      v7 = 0;
      v8 = v6[3].f32[0];
      v9 = v6[3].f32[1];
      v10 = v8 + v8;
      v11 = v9 + v9;
      v12 = v6[3].f32[2];
      v13 = v6[3].f32[3];
      v14 = v12 + v12;
      v15 = v8 * (v8 + v8);
      v16 = v9 * (v9 + v9);
      v17 = v12 * (v12 + v12);
      v18 = v10 * v9;
      v19 = v10 * v12;
      v20 = v11 * v12;
      v21 = v10 * v13;
      v22 = v11 * v13;
      v23 = v14 * v13;
      v24.i32[3] = 0;
      v24.f32[0] = 1.0 - (v16 + v17);
      v24.f32[1] = v18 + v23;
      v24.f32[2] = v19 - v22;
      v25.i32[3] = 0;
      v25.f32[0] = v18 - v23;
      v25.f32[1] = 1.0 - (v15 + v17);
      v25.f32[2] = v20 + v21;
      v26.i32[3] = 0;
      v26.f32[0] = v19 + v22;
      v26.f32[1] = v20 - v21;
      v26.f32[2] = 1.0 - (v15 + v16);
      v27 = v6[2];
      v28 = vmulq_n_f32(v24, v27.f32[0]);
      v29 = vmulq_laneq_f32(v26, v27, 2);
      v30 = v6[4];
      v30.i32[3] = 1.0;
      v26.i64[0] = HIDWORD(v6[2].i64[0]);
      v42 = v5;
      v43 = v4;
      v31 = vmulq_n_f32(v25, v26.f32[0]);
      v44 = v3;
      v45 = v2;
      do
      {
        *(&v46 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v42 + v7))), v31, *(&v42 + v7), 1), v29, *(&v42 + v7), 2), v30, *(&v42 + v7), 3);
        v7 += 16;
      }

      while (v7 != 64);
      v5 = v46;
      v4 = v47;
      v3 = v48;
      v2 = v49;
    }

    v32 = result[18];
    if (v32)
    {
      v33 = 0;
      v34 = v32[3];
      v35 = v32[4];
      v36 = v32[5];
      v37 = v32[6];
      v42 = v5;
      v43 = v4;
      v44 = v3;
      v45 = v2;
      do
      {
        *(&v46 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v42 + v33))), v35, *(&v42 + v33), 1), v36, *(&v42 + v33), 2), v37, *(&v42 + v33), 3);
        v33 += 16;
      }

      while (v33 != 64);
      v38 = v47;
      v39 = v48;
      v40 = v49;
      *a2 = v46;
      a2[1] = v38;
      a2[2] = v39;
      a2[3] = v40;
    }

    else
    {
      v41 = result[4];
      if (v41)
      {
        if ((*(v41 + 304) & 0x80) != 0)
        {
          result = 0;
        }

        else
        {
          result = result[4];
        }
      }

      else
      {
        result = 0;
      }
    }

    if (v32)
    {
      return result;
    }
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v3;
  a2[3] = v2;
  return result;
}

float32x4_t re::ecs2::TransformComponent::anchoredAnimatedWorldTransform@<Q0>(float32x4_t **this@<X0>, float32x4_t *a2@<X8>)
{
  v4 = re::ecs2::TransformComponent::unanchoredAnimatedWorldTransform(this);
  v5 = this[17];
  if (v5)
  {
    v6 = 0;
    result = v5[3];
    v8 = v5[4];
    v9 = v5[5];
    v10 = v5[6];
    v11 = v4[1];
    v12 = v4[2];
    v13 = v4[3];
    v19[0] = *v4;
    v19[1] = v11;
    v19[2] = v12;
    v19[3] = v13;
    do
    {
      v20[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result, COERCE_FLOAT(v19[v6])), v8, *&v19[v6], 1), v9, v19[v6], 2), v10, v19[v6], 3);
      ++v6;
    }

    while (v6 != 4);
    result.i64[0] = *&v20[0];
    v14 = v20[1];
    v15 = v20[2];
    v16 = v20[3];
    *a2 = v20[0];
    a2[1] = v14;
    a2[2] = v15;
    a2[3] = v16;
  }

  else
  {
    v17 = v4[1];
    *a2 = *v4;
    a2[1] = v17;
    result = v4[2];
    v18 = v4[3];
    a2[2] = result;
    a2[3] = v18;
  }

  return result;
}

float32x4_t *re::ecs2::TransformComponent::anchoredUnanimatedWorldTransform@<X0>(float32x4_t *this@<X0>, __int128 *a2@<X8>)
{
  v2 = this;
  v4 = xmmword_1E30474D0;
  v5 = xmmword_1E30476A0;
  v6 = xmmword_1E3047680;
  v7 = xmmword_1E3047670;
  while (v2)
  {
    v8 = v2[16].i64[0];
    if (v8)
    {
      v45 = v5;
      v46 = v4;
      v43 = v7;
      v44 = v6;
      this = re::BindPoint::baseValueUntyped((v8 + 80));
      v9 = 0;
      v10 = this[1].f32[0];
      v11 = this[1].f32[1];
      v12 = v10 + v10;
      v13 = v11 + v11;
      v14 = this[1].f32[2];
      v15 = this[1].f32[3];
      v16 = v14 + v14;
      v17 = v10 * (v10 + v10);
      v18 = v11 * (v11 + v11);
      v19 = v14 * (v14 + v14);
      v20 = v12 * v11;
      v21 = v12 * v14;
      v22 = v13 * v14;
      v23 = v12 * v15;
      v24 = v13 * v15;
      v25 = v16 * v15;
      v26.i32[3] = 0;
      v26.f32[0] = 1.0 - (v18 + v19);
      v26.f32[1] = v20 + v25;
      v26.f32[2] = v21 - v24;
      v27.i32[3] = 0;
      v27.f32[0] = v20 - v25;
      v27.f32[1] = 1.0 - (v17 + v19);
      v27.f32[2] = v22 + v23;
      v28.i32[3] = 0;
      v28.f32[0] = v21 + v24;
      v28.f32[1] = v22 - v23;
      v28.f32[2] = 1.0 - (v17 + v18);
      v29 = vmulq_n_f32(v26, COERCE_FLOAT(*this));
      v30 = vmulq_laneq_f32(v28, *this, 2);
      v31 = this[2];
      v31.i32[3] = 1.0;
      v28.i32[0] = HIDWORD(this->i64[0]);
      v47 = v43;
      v48 = v44;
      v32 = vmulq_n_f32(v27, v28.f32[0]);
      v49 = v45;
      v50 = v46;
      do
      {
        *(&v51 + v9) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v47 + v9))), v32, *(&v47 + v9), 1), v30, *(&v47 + v9), 2), v31, *(&v47 + v9), 3);
        v9 += 16;
      }

      while (v9 != 64);
      v7 = v51;
      v6 = v52;
      v5 = v53;
      v4 = v54;
    }

    v33 = v2[9].i64[0];
    if (v33)
    {
      v34 = 0;
      v35 = v33[3];
      v36 = v33[4];
      v37 = v33[5];
      v38 = v33[6];
      v47 = v7;
      v48 = v6;
      v49 = v5;
      v50 = v4;
      do
      {
        *(&v51 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v47 + v34))), v36, *(&v47 + v34), 1), v37, *(&v47 + v34), 2), v38, *(&v47 + v34), 3);
        v34 += 16;
      }

      while (v34 != 64);
      v39 = v52;
      v40 = v53;
      v41 = v54;
      *a2 = v51;
      a2[1] = v39;
      a2[2] = v40;
      a2[3] = v41;
    }

    else
    {
      v42 = v2[2].i64[0];
      if (v42)
      {
        if ((*(v42 + 304) & 0x80) != 0)
        {
          v2 = 0;
        }

        else
        {
          v2 = v2[2].i64[0];
        }
      }

      else
      {
        v2 = 0;
      }
    }

    if (v33)
    {
      return this;
    }
  }

  *a2 = v7;
  a2[1] = v6;
  a2[2] = v5;
  a2[3] = v4;
  return this;
}

double re::ecs2::TransformComponent::parentWorldMatrix4x4F@<D0>(uint64_t this@<X0>, const re::ecs2::Entity *a2@<X1>, float32x4_t *a4@<X8>)
{
  if (this)
  {
    v4 = *(this + 144);
    if (v4)
    {
      v5 = v4[3];
      v6 = v4[4];
      v7 = v4[6];
      a4[2] = v4[5];
      a4[3] = v7;
      *a4 = v5;
      a4[1] = v6;
    }

    else
    {
      v8 = *(this + 32);
      if (v8)
      {
        if ((*(v8 + 304) & 0x80) != 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(this + 32);
        }
      }

      else
      {
        v9 = 0;
      }

      v5.i64[0] = re::ecs2::TransformComponent::worldMatrix4x4F(a4, v9, a2).u64[0];
    }
  }

  else
  {
    *a4 = xmmword_1E3047670;
    a4[1] = xmmword_1E3047680;
    v5.i64[0] = 0;
    a4[2] = xmmword_1E30476A0;
    a4[3] = xmmword_1E30474D0;
  }

  return *v5.i64;
}

void re::ecs2::TransformComponent::worldSRT(re::ecs2::TransformComponent **this@<X0>, const re::ecs2::Entity *a2@<X1>, uint64_t a4@<X8>)
{
  re::ecs2::TransformComponent::worldMatrix4x4F(&v41, this, a2);
  v5 = v42;
  v6 = v43;
  v40 = v44;
  v7 = vmulq_f32(v41, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v43, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v5, v5), v42, 0xCuLL))), vextq_s8(vuzp1q_s32(v6, v6), v43, 0xCuLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v42, 8uLL)));
  v8 = vaddv_f32(*v7.f32);
  v9 = -1.0;
  v10 = vmulq_f32(v41, v41);
  v11 = vmulq_f32(v5, v5);
  v12 = vadd_f32(vzip1_s32(*v10.i8, *v11.i8), vzip2_s32(*v10.i8, *v11.i8));
  v14 = vextq_s8(v10, v10, 8uLL);
  *v14.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v14.f32, *&vextq_s8(v11, v11, 8uLL)), v12));
  v13 = vmulq_f32(v6, v6);
  v14.i32[2] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  if ((v7.f32[2] + v8) > 0.0)
  {
    v9 = 1.0;
  }

  v39 = vmulq_n_f32(v14, v9);
  v15 = vdivq_f32(v41, vdupq_lane_s32(*&v39, 0));
  v16 = vdivq_f32(v42, vdupq_lane_s32((v39 >> 32), 0));
  v17 = vdivq_f32(v43, vdupq_laneq_s32(v39, 2));
  v18 = vmulq_f32(v15, v15);
  *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  v20 = vrsqrte_f32(v19);
  v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
  v45.columns[0] = vmulq_n_f32(v15, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]);
  v22 = vmulq_f32(v45.columns[0], v16);
  v23 = vmulq_f32(v45.columns[0], v45.columns[0]);
  v24 = vmulq_f32(v45.columns[0], v17);
  *v23.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v23, v23, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v23.i8), vzip2_s32(*v24.i8, *v23.i8)));
  v25 = vsubq_f32(v16, vmulq_n_f32(v45.columns[0], (v22.f32[2] + vaddv_f32(*v22.f32)) / *&v23.i32[1]));
  v26 = vmulq_f32(v25, v25);
  *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
  *v26.f32 = vrsqrte_f32(v27);
  *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v45.columns[1] = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
  v28 = vmulq_n_f32(v45.columns[0], *v23.i32 / *&v23.i32[1]);
  v29 = vmulq_f32(v17, v45.columns[1]);
  v30 = vmulq_f32(v45.columns[1], v45.columns[1]);
  *v29.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
  v45.columns[3] = vsubq_f32(vsubq_f32(v17, v28), vmulq_n_f32(v45.columns[1], vdiv_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).f32[0]));
  v31 = vmulq_f32(v45.columns[3], v45.columns[3]);
  v18.f32[0] = v31.f32[2] + vaddv_f32(*v31.f32);
  *v31.f32 = vrsqrte_f32(v18.u32[0]);
  *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v31.f32, *v31.f32)));
  v45.columns[2] = vmulq_n_f32(v45.columns[3], vmul_f32(*v31.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v31.f32, *v31.f32))).f32[0]);
  *v32.i64 = simd_quaternion(v45);
  v33 = v32.i64[1];
  v34 = vextq_s8(v32, v32, 8uLL).u64[0];
  v35 = vmvn_s8(vceq_f32(v34, v34));
  v36 = (v35.i8[0] | v35.i8[4]);
  v37 = (v36 & 1) == 0;
  if (v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = v32.i64[0];
  }

  *a4 = v39;
  if (!v37)
  {
    v33 = 0x3F80000000000000;
  }

  *(a4 + 16) = v38;
  *(a4 + 24) = v33;
  *(a4 + 32) = v40;
}

double re::ecs2::TransformComponent::worldOrientation(re::ecs2::TransformComponent **this, const re::ecs2::Entity *a2, BOOL a3)
{
  re::ecs2::TransformComponent::worldMatrix4x4F(&v18, this, a2);
  v3 = vmulq_f32(v18, v18);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  v5 = vrsqrte_f32(v4);
  v6 = vmul_f32(v5, vrsqrts_f32(v4, vmul_f32(v5, v5)));
  v21.columns[0] = vmulq_n_f32(v18, vmul_f32(v6, vrsqrts_f32(v4, vmul_f32(v6, v6))).f32[0]);
  v7 = vmulq_f32(v19, v21.columns[0]);
  v8 = vmulq_f32(v21.columns[0], v21.columns[0]);
  v9 = vmulq_f32(v20, v21.columns[0]);
  *v8.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v8, v8, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v8.i8), vzip2_s32(*v9.i8, *v8.i8)));
  v10 = vsubq_f32(v19, vmulq_n_f32(v21.columns[0], (v7.f32[2] + vaddv_f32(*v7.f32)) / *&v8.i32[1]));
  v11 = vmulq_f32(v10, v10);
  *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v12);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
  v21.columns[1] = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  v13 = vmulq_n_f32(v21.columns[0], *v8.i32 / *&v8.i32[1]);
  v14 = vmulq_f32(v20, v21.columns[1]);
  v15 = vmulq_f32(v21.columns[1], v21.columns[1]);
  *v14.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8)));
  v21.columns[3] = vsubq_f32(vsubq_f32(v20, v13), vmulq_n_f32(v21.columns[1], vdiv_f32(*v14.i8, vdup_lane_s32(*v14.i8, 1)).f32[0]));
  v16 = vmulq_f32(v21.columns[3], v21.columns[3]);
  v3.f32[0] = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v3.u32[0]);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v3.u32[0], vmul_f32(*v16.f32, *v16.f32)));
  v21.columns[2] = vmulq_n_f32(v21.columns[3], vmul_f32(*v16.f32, vrsqrts_f32(v3.u32[0], vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  return simd_quaternion(v21);
}

double re::ecs2::TransformComponent::worldScale(re::ecs2::TransformComponent **this, const re::ecs2::Entity *a2, BOOL a3)
{
  re::ecs2::TransformComponent::worldMatrix4x4F(&v12, this, a2);
  v3 = vmulq_f32(v12, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL))), vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL)));
  v4 = vaddv_f32(*v3.f32);
  v5 = -1.0;
  if ((v3.f32[2] + v4) > 0.0)
  {
    v5 = 1.0;
  }

  v6 = vmulq_f32(v12, v12);
  v7 = vmulq_f32(v13, v13);
  v8 = vadd_f32(vzip1_s32(*v6.i8, *v7.i8), vzip2_s32(*v6.i8, *v7.i8));
  v9 = vextq_s8(v6, v6, 8uLL);
  *v9.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v9.f32, *&vextq_s8(v7, v7, 8uLL)), v8));
  v10 = vmulq_f32(v14, v14);
  v9.i32[2] = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
  *&result = vmulq_n_f32(v9, v5).u64[0];
  return result;
}

void *re::ecs2::TransformComponent::setWorldSRT(uint64_t a1, _OWORD *a2, re::ecs2::Entity *a3)
{
  result = *(a1 + 16);
  if (!result)
  {
    v29 = *a2;
    v30 = a2[2];
    *(a1 + 48) = a2[1];
    *(a1 + 64) = v30;
    *(a1 + 32) = v29;
    return result;
  }

  v6 = a3;
  re::ecs2::TransformComponent::parentWorldMatrix4x4F(result, a3, v52);
  v53.columns[2] = v52[2];
  v53.columns[3] = v52[3];
  v53.columns[0] = v52[0];
  v53.columns[1] = v52[1];
  v54 = __invert_f4(v53);
  v7 = v54.columns[0];
  v8 = v54.columns[1];
  v9 = v54.columns[2];
  v46 = v54.columns[3];
  v54.columns[0] = vmulq_f32(v54.columns[0], vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v54.columns[2], v54.columns[2]), v54.columns[2], 0xCuLL), vextq_s8(vextq_s8(v54.columns[1], v54.columns[1], 0xCuLL), v54.columns[1], 8uLL)));
  v54.columns[1].f32[0] = vaddv_f32(*v54.columns[0].f32);
  v10 = -1.0;
  if ((v54.columns[0].f32[2] + v54.columns[1].f32[0]) > 0.0)
  {
    v10 = 1.0;
  }

  v11 = vmulq_f32(v7, v7);
  v12 = vmulq_f32(v8, v8);
  v13 = vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8));
  v14 = vextq_s8(v12, v12, 8uLL);
  *v11.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *v14.f32), v13);
  *v14.f32 = vsqrt_f32(*v11.i8);
  v15 = vmulq_f32(v9, v9);
  v14.i32[2] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  v48 = *a2;
  v50 = vmulq_n_f32(v14, v10);
  v16 = vrsqrte_f32(v11.u32[0]);
  v17 = vmul_f32(v16, vrsqrts_f32(v11.u32[0], vmul_f32(v16, v16)));
  v44 = v7;
  v45 = v8;
  v55.columns[0] = vmulq_n_f32(v7, vmul_f32(v17, vrsqrts_f32(v11.u32[0], vmul_f32(v17, v17))).f32[0]);
  v18 = vmulq_f32(v8, v55.columns[0]);
  v19 = vmulq_f32(v55.columns[0], v55.columns[0]);
  v20 = vmulq_f32(v9, v55.columns[0]);
  *v19.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v19.i8), vzip2_s32(*v20.i8, *v19.i8)));
  v21 = vsubq_f32(v8, vmulq_n_f32(v55.columns[0], (v18.f32[2] + vaddv_f32(*v18.f32)) / *&v19.i32[1]));
  v22 = vmulq_f32(v21, v21);
  v23 = vaddv_f32(*v22.f32);
  *v22.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23));
  *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23), vmul_f32(*v22.f32, *v22.f32)));
  v55.columns[1] = vmulq_n_f32(v21, vmul_f32(*v22.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23), vmul_f32(*v22.f32, *v22.f32))).f32[0]);
  v24 = vmulq_f32(v9, v55.columns[1]);
  v25 = vmulq_f32(v55.columns[1], v55.columns[1]);
  *v24.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8)));
  v47 = v9;
  v26 = vsubq_f32(vsubq_f32(v9, vmulq_n_f32(v55.columns[0], *v19.i32 / *&v19.i32[1])), vmulq_n_f32(v55.columns[1], vdiv_f32(*v24.i8, vdup_lane_s32(*v24.i8, 1)).f32[0]));
  v55.columns[3] = vmulq_f32(v26, v26);
  *&v27 = v55.columns[3].f32[2] + vaddv_f32(*v55.columns[3].f32);
  *v55.columns[3].f32 = vrsqrte_f32(v27);
  *v55.columns[3].f32 = vmul_f32(*v55.columns[3].f32, vrsqrts_f32(v27, vmul_f32(*v55.columns[3].f32, *v55.columns[3].f32)));
  *v55.columns[3].f32 = vmul_f32(*v55.columns[3].f32, vrsqrts_f32(v27, vmul_f32(*v55.columns[3].f32, *v55.columns[3].f32)));
  v55.columns[2] = vmulq_n_f32(v26, v55.columns[3].f32[0]);
  *_Q0.i64 = simd_quaternion(v55);
  v31 = vmulq_f32(v48, v50);
  _Q2 = *(a2 + 1);
  v49 = *(a2 + 2);
  v51 = v31;
  v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), vnegq_f32(_Q0)), _Q2, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), _Q2, _Q0, 3), _Q0, _Q2, 3);
  _Q2.i32[0] = _Q2.i32[3];
  __asm { FMLA            S1, S2, V0.S[3] }

  v34.i32[3] = _S1;
  v43 = v34;
  re::ecs2::Component::willSet(a1);
  if ((v6 & 1) != 0 || !*(a1 + 16))
  {
    *(a1 + 32) = v51;
    *(a1 + 48) = v43;
    v41 = (a1 + 64);
    goto LABEL_11;
  }

  v40 = re::BindPoint::baseValueUntyped((a1 + 80));
  if (v40)
  {
    *v40 = v51;
    v40[1] = v43;
    v41 = v40 + 2;
LABEL_11:
    v42 = vaddq_f32(v46, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, v49.f32[0]), v45, *v49.f32, 1), v47, v49, 2));
    *v41 = vdivq_f32(v42, vdupq_laneq_s32(v42, 3));
  }

  return re::ecs2::Component::didSet(a1);
}

void *re::ecs2::TransformComponent::setWorldPosition(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5.i64[0] = a2;
    v5.i64[1] = a3;
    v7 = v5;
    v6 = re::BindPoint::baseValueUntyped((result + 10));
    re::ecs2::Component::willSet(v3);
    re::ecs2::TransformComponent::parentWorldMatrix4x4F(v4, 0, v8);
    v9.columns[2] = v8[2];
    v9.columns[3] = v8[3];
    v9.columns[0] = v8[0];
    v9.columns[1] = v8[1];
    v10 = __invert_f4(v9);
    v10.columns[0] = vaddq_f32(v10.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10.columns[0], v7.f32[0]), v10.columns[1], *v7.f32, 1), v10.columns[2], v7, 2));
    v6[2] = vdivq_f32(v10.columns[0], vdupq_laneq_s32(v10.columns[0], 3));
    return re::ecs2::Component::didSet(v3);
  }

  else
  {
    result[8] = a2;
    result[9] = a3;
  }

  return result;
}

void *re::ecs2::TransformComponent::setWorldOrientation(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5.i64[0] = a2;
    v5.i64[1] = a3;
    v28 = v5;
    v6 = re::BindPoint::baseValueUntyped((result + 10));
    re::ecs2::Component::willSet(v3);
    re::ecs2::TransformComponent::parentWorldMatrix4x4F(v4, 0, v29);
    v30.columns[2] = v29[2];
    v30.columns[3] = v29[3];
    v30.columns[0] = v29[0];
    v30.columns[1] = v29[1];
    v31 = __invert_f4(v30);
    v31.columns[3] = vmulq_f32(v31.columns[0], v31.columns[0]);
    *&v7 = v31.columns[3].f32[2] + vaddv_f32(*v31.columns[3].f32);
    v8 = vrsqrte_f32(v7);
    v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
    v31.columns[0] = vmulq_n_f32(v31.columns[0], vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]);
    v10 = vmulq_f32(v31.columns[1], v31.columns[0]);
    v11 = vmulq_f32(v31.columns[0], v31.columns[0]);
    v12 = vmulq_f32(v31.columns[2], v31.columns[0]);
    *v11.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v12.i8, *v11.i8), vzip2_s32(*v12.i8, *v11.i8)));
    v31.columns[1] = vsubq_f32(v31.columns[1], vmulq_n_f32(v31.columns[0], (v10.f32[2] + vaddv_f32(*v10.f32)) / *&v11.i32[1]));
    v13 = vmulq_f32(v31.columns[1], v31.columns[1]);
    *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
    *v13.f32 = vrsqrte_f32(v14);
    *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
    v31.columns[1] = vmulq_n_f32(v31.columns[1], vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
    v15 = vmulq_n_f32(v31.columns[0], *v11.i32 / *&v11.i32[1]);
    v16 = vmulq_f32(v31.columns[2], v31.columns[1]);
    v17 = vmulq_f32(v31.columns[1], v31.columns[1]);
    *v16.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8)));
    v31.columns[2] = vsubq_f32(vsubq_f32(v31.columns[2], v15), vmulq_n_f32(v31.columns[1], vdiv_f32(*v16.i8, vdup_lane_s32(*v16.i8, 1)).f32[0]));
    v18 = vmulq_f32(v31.columns[2], v31.columns[2]);
    v31.columns[3].f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v31.columns[3].u32[0]);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v31.columns[3].u32[0], vmul_f32(*v18.f32, *v18.f32)));
    *v31.columns[3].f32 = vmul_f32(*v18.f32, vrsqrts_f32(v31.columns[3].u32[0], vmul_f32(*v18.f32, *v18.f32)));
    v31.columns[2] = vmulq_n_f32(v31.columns[2], v31.columns[3].f32[0]);
    *_Q0.i64 = simd_quaternion(v31);
    _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), vnegq_f32(_Q0)), v28, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
    v21 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v28, _Q0, 3);
    _Q2.i32[0] = v28.i32[3];
    v22 = vmlaq_laneq_f32(v21, _Q0, v28, 3);
    __asm { FMLA            S3, S2, V0.S[3] }

    v22.i32[3] = _S3;
    *(v6 + 16) = v22;
    return re::ecs2::Component::didSet(v3);
  }

  else
  {
    result[6] = a2;
    result[7] = a3;
  }

  return result;
}

void *re::ecs2::TransformComponent::setWorldScale(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5.i64[0] = a2;
    v5.i64[1] = a3;
    v10 = v5;
    v6 = re::BindPoint::baseValueUntyped((result + 10));
    re::ecs2::Component::willSet(v3);
    re::ecs2::TransformComponent::parentWorldMatrix4x4F(v4, 0, v11);
    v12.columns[2] = v11[2];
    v12.columns[3] = v11[3];
    v12.columns[0] = v11[0];
    v12.columns[1] = v11[1];
    v8 = __invert_f4(v12);
    v8.columns[3] = vmulq_f32(v8.columns[0], vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v8.columns[2], v8.columns[2], 0xCuLL), v8.columns[2], 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8.columns[1], v8.columns[1]), v8.columns[1], 0xCuLL))), vextq_s8(vuzp1q_s32(v8.columns[2], v8.columns[2]), v8.columns[2], 0xCuLL), vextq_s8(vextq_s8(v8.columns[1], v8.columns[1], 0xCuLL), v8.columns[1], 8uLL)));
    v7 = vaddv_f32(*v8.columns[3].f32);
    v8.columns[3].i32[0] = -1.0;
    if ((v8.columns[3].f32[2] + v7) > 0.0)
    {
      v8.columns[3].f32[0] = 1.0;
    }

    v8.columns[0] = vmulq_f32(v8.columns[0], v8.columns[0]);
    v8.columns[1] = vmulq_f32(v8.columns[1], v8.columns[1]);
    v9 = vadd_f32(vzip1_s32(*v8.columns[0].f32, *v8.columns[1].f32), vzip2_s32(*v8.columns[0].f32, *v8.columns[1].f32));
    v8.columns[0] = vextq_s8(v8.columns[0], v8.columns[0], 8uLL);
    *v8.columns[0].f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v8.columns[0].f32, *&vextq_s8(v8.columns[1], v8.columns[1], 8uLL)), v9));
    v8.columns[1] = vmulq_f32(v8.columns[2], v8.columns[2]);
    v8.columns[0].i32[2] = sqrtf(v8.columns[1].f32[2] + vaddv_f32(*v8.columns[1].f32));
    *v6 = vmulq_f32(vmulq_n_f32(v8.columns[0], v8.columns[3].f32[0]), v10);
    return re::ecs2::Component::didSet(v3);
  }

  else
  {
    result[4] = a2;
    result[5] = a3;
  }

  return result;
}

void *re::ecs2::TransformComponent::setLocalSRT(void *a1, __int128 *a2, char a3)
{
  re::ecs2::Component::willSet(a1);
  if ((a3 & 1) != 0 || !a1[2])
  {
    v6 = a1 + 4;
  }

  else
  {
    v6 = re::BindPoint::baseValueUntyped((a1 + 10));
  }

  v7 = *a2;
  v8 = a2[2];
  v6[1] = a2[1];
  v6[2] = v8;
  *v6 = v7;

  return re::ecs2::Component::didSet(a1);
}

void *re::ecs2::TransformComponent::setLocalPosition(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  re::ecs2::Component::willSet(a1);
  if ((a4 & 1) != 0 || !a1[2])
  {
    v8 = a1 + 8;
  }

  else
  {
    v8 = (re::BindPoint::baseValueUntyped((a1 + 10)) + 32);
  }

  *v8 = a2;
  v8[1] = a3;

  return re::ecs2::Component::didSet(a1);
}

void *re::ecs2::TransformComponent::setLocalOrientation(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  re::ecs2::Component::willSet(a1);
  if ((a4 & 1) != 0 || !a1[2])
  {
    v8 = a1 + 6;
  }

  else
  {
    v8 = (re::BindPoint::baseValueUntyped((a1 + 10)) + 16);
  }

  *v8 = a2;
  v8[1] = a3;

  return re::ecs2::Component::didSet(a1);
}

void *re::ecs2::TransformComponent::setLocalScale(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  re::ecs2::Component::willSet(a1);
  if ((a4 & 1) != 0 || !a1[2])
  {
    v8 = a1 + 4;
  }

  else
  {
    v8 = re::BindPoint::baseValueUntyped((a1 + 10));
  }

  *v8 = a2;
  v8[1] = a3;

  return re::ecs2::Component::didSet(a1);
}

float32x4_t re::ecs2::TransformComponent::worldMatrix4x4F@<Q0>(float32x4_t *__return_ptr a1@<X8>, re::ecs2::TransformComponent **this@<X0>, const re::ecs2::Entity *a3@<X1>)
{
  if (this)
  {
    while (1)
    {
      if (this[32])
      {
        re::ecs2::TransformComponent::worldMatrix4x4F(this[32], a3, a1);
        return result;
      }

      v3 = this[18];
      if (v3)
      {
        break;
      }

      this = this[4];
      if (!this || (this[38] & 0x80) != 0)
      {
        goto LABEL_6;
      }
    }

    result = *(v3 + 3);
    v5 = *(v3 + 4);
    v6 = *(v3 + 6);
    a1[2] = *(v3 + 5);
    a1[3] = v6;
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
LABEL_6:
    *a1 = xmmword_1E3047670;
    a1[1] = xmmword_1E3047680;
    result.i64[0] = 0;
    a1[2] = xmmword_1E30476A0;
    a1[3] = xmmword_1E30474D0;
  }

  return result;
}

uint64_t re::ecs2::TransformComponent::makeSyncInfo(re::ecs2::TransformComponent *this)
{
  v1 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetDebugName();
  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  RESyncSyncableTypeInfoSetReadPayloadDeltaCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
  RESyncSyncableTypeInfoSetWritePayloadDeltaCb();
  return v1;
}

uint64_t ___ZN2re4ecs218TransformComponent12makeSyncInfoEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (RESyncObjectReadContextIsLocalSession())
  {
    v6 = RESyncBitReaderDataPtr();
    v7 = RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();
    MEMORY[0x1E69049A0](a3, v6, v7);
    return 1;
  }

  else
  {

    return re::SRTNetworkSyncHelper::read(a2, a3);
  }
}

uint64_t ___ZN2re4ecs218TransformComponent12makeSyncInfoEv_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (RESyncObjectReadContextIsLocalSession())
  {
    v8 = RESyncBitReaderDataPtr();
    v9 = RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();
    MEMORY[0x1E69049A0](a4, v8, v9);
    return 1;
  }

  else
  {

    return re::SRTNetworkSyncHelper::readDelta(a2, a3, a4);
  }
}

BOOL ___ZN2re4ecs218TransformComponent12makeSyncInfoEv_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderDataPtr();
    RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();

    JUMPOUT(0x1E69049A0);
  }

  return re::SRTNetworkSyncHelper::write(a2, a3);
}

BOOL ___ZN2re4ecs218TransformComponent12makeSyncInfoEv_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderDataPtr();
    RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();

    JUMPOUT(0x1E69049A0);
  }

  return re::SRTNetworkSyncHelper::writeDelta(a2, a3, a4);
}

uint64_t re::ecs2::TransformComponent::rootAnchorComponent(uint64_t a1)
{
  if (re::TransformService::isEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
  }

  if (re::TransformService::isEnabled(void)::isEnabled != 1)
  {
    v3 = *(a1 + 256);
    if (v3)
    {
      return *(v3 + 136);
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    result = *(a1 + 144);
    if (result)
    {
      break;
    }

    a1 = *(a1 + 32);
    if (!a1 || (*(a1 + 304) & 0x80) != 0)
    {
      return 0;
    }
  }

  return result;
}

float32x4_t *re::ecs2::TransformComponent::unanchoredAnimatedWorldTransform(float32x4_t *this)
{
  if (this[8].i8[0] == 1)
  {
    v2 = this[3].f32[0];
    v3 = this[3].f32[1];
    v4 = v2 + v2;
    v5 = v3 + v3;
    v6 = this[3].f32[2];
    v7 = this[3].f32[3];
    v8 = v6 + v6;
    v9 = v2 * (v2 + v2);
    v10 = v3 * (v3 + v3);
    v11 = v6 * (v6 + v6);
    v12 = v4 * v3;
    v13 = v4 * v6;
    v14 = v5 * v6;
    v15 = v4 * v7;
    v16 = v5 * v7;
    v17 = v8 * v7;
    v18.i32[3] = 0;
    v18.f32[0] = 1.0 - (v10 + v11);
    v19.i32[3] = 0;
    v18.f32[1] = v12 + v17;
    v18.f32[2] = v13 - v16;
    v20.i32[3] = 0;
    v20.f32[0] = v12 - v17;
    v20.f32[1] = 1.0 - (v9 + v11);
    v20.f32[2] = v14 + v15;
    v19.f32[0] = v13 + v16;
    v19.f32[1] = v14 - v15;
    v19.f32[2] = 1.0 - (v9 + v10);
    v21 = this[2];
    v22 = vmulq_n_f32(v18, v21.f32[0]);
    v23 = vmulq_laneq_f32(v19, v21, 2);
    v24 = vmulq_n_f32(v20, COERCE_FLOAT(HIDWORD(this[2].i64[0])));
    v25 = this[4];
    v25.i32[3] = 1.0;
    this[9] = v22;
    this[10] = v24;
    this[11] = v23;
    this[12] = v25;
    v26 = this[1].i64[0];
    while (!*(v26 + 144))
    {
      v26 = *(v26 + 32);
      if (!v26 || (*(v26 + 304) & 0x80) != 0)
      {
        break;
      }

      v27 = *(v26 + 256);
      if (v27)
      {
        v28 = re::ecs2::TransformComponent::unanchoredAnimatedWorldTransform(v27);
        v29 = 0;
        v30 = *v28;
        v31 = v28[1];
        v32 = v28[2];
        v33 = v28[3];
        v34 = this[10];
        v35 = this[11];
        v36 = this[12];
        v41[0] = this[9];
        v41[1] = v34;
        v41[2] = v35;
        v41[3] = v36;
        do
        {
          v42[v29] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(v41[v29])), v31, *&v41[v29], 1), v32, v41[v29], 2), v33, v41[v29], 3);
          ++v29;
        }

        while (v29 != 4);
        v37 = v42[1];
        v38 = v42[2];
        v39 = v42[3];
        this[9] = v42[0];
        this[10] = v37;
        this[11] = v38;
        this[12] = v39;
        break;
      }
    }

    this[8].i8[0] = 2;
  }

  return this + 9;
}

__n128 re::ecs2::AnimatedTransformComponentOp::calculateTransform@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);
  v4 = v2 + v2;
  v5 = v3 + v3;
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = v6 + v6;
  v9 = v2 * (v2 + v2);
  v10 = v3 * (v3 + v3);
  v11 = v6 * (v6 + v6);
  v12 = v4 * v3;
  v13 = v4 * v6;
  v14 = v5 * v6;
  v15 = v4 * v7;
  v16 = v5 * v7;
  v17 = v8 * v7;
  v18.i32[3] = 0;
  v18.f32[0] = 1.0 - (v10 + v11);
  v18.f32[1] = v12 + v17;
  v18.f32[2] = v13 - v16;
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v20.f32[0] = v12 - v17;
  v20.f32[1] = 1.0 - (v9 + v11);
  v20.f32[2] = v14 + v15;
  v19.f32[0] = v13 + v16;
  v19.f32[1] = v14 - v15;
  v19.f32[2] = 1.0 - (v9 + v10);
  v21 = *(a1 + 32);
  v22 = vmulq_n_f32(v18, v21.f32[0]);
  v23 = vmulq_laneq_f32(v19, v21, 2);
  v24 = vmulq_n_f32(v20, COERCE_FLOAT(HIDWORD(*(a1 + 32))));
  *a2 = v22;
  *(a2 + 16) = v24;
  result = *(a1 + 64);
  result.n128_u32[3] = 1.0;
  *(a2 + 32) = v23;
  *(a2 + 48) = result;
  return result;
}

re *re::ecs2::AnimatedTransformComponentOp::willAddSceneToTransformService(re::ecs2::AnimatedTransformComponentOp *this, re::TransformService *a2, re::EventBus **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = re::TransformOp::willAddSceneToTransformService(this, a2, a3);
  v7 = a3[36];
  if (v7)
  {
    v8 = re::globalAllocators(result)[2];
    v17[2] = a2;
    v18 = v8;
    v17[0] = &unk_1F5CEBF38;
    v17[1] = this;
    v19 = v17;
    v9 = re::TransformOp::subscriptionsArrayForScene(this, a3);
    v15 = v18;
    v16 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>(v14, v17);
    v10 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v7, v14, re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v12 = v11;
    v13 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(v9);
    *v13 = v10;
    v13[1] = v12;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v14);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v17);
  }

  return result;
}

__n128 re::ecs2::UnanimatedTransformComponentOp::calculateTransform@<Q0>(float32x4_t *a1@<X2>, uint64_t a2@<X8>)
{
  if (a1[1].i64[0])
  {
    v3 = re::BindPoint::baseValueUntyped(&a1[5]);
  }

  else
  {
    v3 = a1 + 2;
  }

  v4 = v3[1].f32[0];
  v5 = v3[1].f32[1];
  v6 = v4 + v4;
  v7 = v5 + v5;
  v8 = v3[1].f32[2];
  v9 = v3[1].f32[3];
  v10 = v8 + v8;
  v11 = v4 * (v4 + v4);
  v12 = v5 * (v5 + v5);
  v13 = v8 * (v8 + v8);
  v14 = v6 * v5;
  v15 = v6 * v8;
  v16 = v7 * v8;
  v17 = v6 * v9;
  v18 = v7 * v9;
  v19 = v10 * v9;
  v20.i32[3] = 0;
  v20.f32[0] = 1.0 - (v12 + v13);
  v20.f32[1] = v14 + v19;
  v20.f32[2] = v15 - v18;
  v21.i32[3] = 0;
  v22.i32[3] = 0;
  v22.f32[0] = v14 - v19;
  v22.f32[1] = 1.0 - (v11 + v13);
  v22.f32[2] = v16 + v17;
  v21.f32[0] = v15 + v18;
  v21.f32[1] = v16 - v17;
  v21.f32[2] = 1.0 - (v11 + v12);
  v23 = vmulq_laneq_f32(v21, *v3, 2);
  v24 = vmulq_n_f32(v22, COERCE_FLOAT(HIDWORD(v3->i64[0])));
  *a2 = vmulq_n_f32(v20, COERCE_FLOAT(*v3));
  *(a2 + 16) = v24;
  result = v3[2];
  result.n128_u32[3] = 1.0;
  *(a2 + 32) = v23;
  *(a2 + 48) = result;
  return result;
}

void re::ecs2::TransformSystem::willAddSceneToECSService(re::ecs2::TransformSystem *this, re::EventBus **a2)
{
  v66[8] = *MEMORY[0x1E69E9840];
  v61 = a2;
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::service<re::TransformService>(v4);
  re::TransformService::willAddSceneToECSService(v5, a2);
  v8 = a2[36];
  if (v8)
  {
    v9 = a2[13];
    v10 = *(v9 + 43);
    if (v10)
    {
      v11 = *(v9 + 45);
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        v6 = re::ecs2::TransformSystem::activateEntityHierarchyTransformState(v13, 0, v7);
        v12 -= 8;
      }

      while (v12);
    }

    if (re::TransformService::isEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
    }

    if ((re::TransformService::isEnabled(void)::isEnabled & 1) == 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v56 = 1;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v60 = 0;
      v14 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v8, 0, re::ecs2::TransformSystem::newAnchorComponentHandler, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
      v16 = v15;
      v17 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v17 = v14;
      v17[1] = v16;
      v18 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v8, 0, re::ecs2::TransformSystem::removedAnchorComponentHandler, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
      v20 = v19;
      v21 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v21 = v18;
      v21[1] = v20;
      v22 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v8, 0, re::ecs2::TransformSystem::newTransformComponentHandler, re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v24 = v23;
      v25 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v25 = v22;
      v25[1] = v24;
      Type = re::EventBus::getTypeId<RESceneEntityDidAddEvent>();
      EventInfo = re::EventBus::addOrGetEventInfo(v8, Type);
      v28 = re::globalAllocators(EventInfo)[2];
      v62 = &unk_1F5CEC040;
      v63 = re::ecs2::TransformSystem::entityHierarchyChangedHandler<RESceneEntityDidAddEvent>;
      v64 = v28;
      v65 = &v62;
      re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(&v62, 0, v66);
      v29 = re::EventBus::EventInfo::addSubscription(EventInfo, v66, 0, 0);
      v31 = v30;
      re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v66);
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(&v62);
      v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v32 = v29;
      v32[1] = v31;
      v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v8, 0, re::ecs2::TransformSystem::entityHierarchyChangedHandler<RESceneEntityDidReparentEvent>, 0, 0);
      v35 = v34;
      v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v36 = v33;
      v36[1] = v35;
      v37 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v8, 0, re::ecs2::TransformSystem::invalidateEntityUnanchoredTransformHierarchy<REComponentDidChangeEvent>, re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v39 = v38;
      v40 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v40 = v37;
      v40[1] = v39;
      v41 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v8, 0, re::ecs2::TransformSystem::invalidateEntityUnanchoredTransformHierarchy<REComponentDidChangeEvent>, re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v43 = v42;
      v44 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v44 = v41;
      v44[1] = v43;
      v45 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v8, 0, re::ecs2::TransformSystem::invalidateEntityUnanchoredTransformHierarchy<REComponentWillRemoveEvent>, re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v47 = v46;
      v48 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v48 = v45;
      v48[1] = v47;
      v49 = re::EventBus::getTypeId<RESceneEntityWillRemoveEvent>();
      v50 = re::EventBus::addOrGetEventInfo(v8, v49);
      v64 = re::globalAllocators(v50)[2];
      v65 = &v62;
      v62 = &unk_1F5CEC0F0;
      v63 = re::ecs2::TransformSystem::removeSceneEntityHandler;
      re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(&v62, 0, v66);
      v51 = re::EventBus::EventInfo::addSubscription(v50, v66, 0, 0);
      v53 = v52;
      re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v66);
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v62);
      v54 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v54 = v51;
      v54[1] = v53;
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 224, &v61, v55);
      re::BucketArray<RESubscriptionHandle,8ul>::deinit(v55);
      if (v55[0])
      {
        if ((v56 & 1) == 0)
        {
          (*(*v55[0] + 40))();
        }
      }
    }
  }
}

void *re::ecs2::TransformSystem::activateEntityHierarchyTransformState(void *result, re::ecs2::Entity *a2, const re::ecs2::AnchorComponent *a3)
{
  if (result[18])
  {
    a2 = result[18];
  }

  v4 = result[32];
  if (v4)
  {
    *(v4 + 136) = a2;
    *(v4 + 128) = 1;
  }

  v5 = result[43];
  if (v5)
  {
    v6 = result[45];
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = re::ecs2::TransformSystem::activateEntityHierarchyTransformState(v8, a2, a3);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t re::ecs2::TransformSystem::removedAnchorComponentHandler(re::ecs2::TransformSystem *a1, uint64_t a2, const re::ecs2::AnchorComponent *a3)
{
  for (i = *(a1 + 4); i; i = *(i + 32))
  {
    if ((*(i + 304) & 0x80) != 0)
    {
      break;
    }

    v4 = *(i + 144);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  re::ecs2::TransformSystem::updateEntityHierarchyRootAnchorComponent(a1, v4, a3);
  return 0;
}

uint64_t re::ecs2::TransformSystem::newTransformComponentHandler(void *a1)
{
  if (a1)
  {
    v1 = a1;
    while (1)
    {
      v2 = v1[18];
      if (v2)
      {
        break;
      }

      v1 = v1[4];
      if (!v1 || (v1[38] & 0x80) != 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v2 = 0;
  }

  v3 = a1[32];
  *(v3 + 136) = v2;
  *(v3 + 128) = 1;
  v4 = a1[43];
  if (v4)
  {
    v5 = a1[45];
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      re::ecs2::TransformSystem::updateEntityHierarchyTransformDirtyState(v7);
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}

uint64_t re::ecs2::TransformSystem::entityHierarchyChangedHandler<RESceneEntityDidAddEvent>(re::ecs2::TransformSystem *a1, uint64_t a2, const re::ecs2::AnchorComponent *a3)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v4 = *(v3 + 18);
      if (v4)
      {
        break;
      }

      v3 = *(v3 + 4);
      if (!v3 || (*(v3 + 304) & 0x80) != 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  re::ecs2::TransformSystem::updateEntityHierarchyRootAnchorComponent(a1, v4, a3);
  return 0;
}

uint64_t re::ecs2::TransformSystem::entityHierarchyChangedHandler<RESceneEntityDidReparentEvent>(re::ecs2::TransformSystem *a1, uint64_t a2, const re::ecs2::AnchorComponent *a3)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v4 = *(v3 + 18);
      if (v4)
      {
        break;
      }

      v3 = *(v3 + 4);
      if (!v3 || (*(v3 + 304) & 0x80) != 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  re::ecs2::TransformSystem::updateEntityHierarchyRootAnchorComponent(a1, v4, a3);
  return 0;
}

uint64_t re::ecs2::TransformSystem::willRemoveSceneFromECSService(re::ecs2::TransformSystem *this, re::ecs2::Scene *a2)
{
  v19 = a2;
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::service<re::TransformService>(v4);
  re::TransformService::willRemoveSceneFromECSService(v5, a2);
  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 224, &v19);
  if (result)
  {
    v8 = v19;
    v9 = *(v19 + 36);
    if (v9)
    {
      v10 = result;
      v11 = *(result + 40);
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v10, i);
          re::EventBus::unsubscribe(v9, *v13, v13[1]);
        }

        v8 = v19;
      }
    }

    v14 = *(v8 + 13);
    v15 = *(v14 + 344);
    if (v15)
    {
      v16 = *(v14 + 360);
      v17 = 8 * v15;
      do
      {
        v18 = *v16++;
        re::ecs2::TransformSystem::deactivateEntityHierarchyTransformState(v18, v7);
        v17 -= 8;
      }

      while (v17);
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 224, &v19);
  }

  return result;
}

void *re::ecs2::TransformSystem::deactivateEntityHierarchyTransformState(void *result, re::ecs2::Entity *a2)
{
  v2 = result[32];
  if (v2)
  {
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
  }

  v3 = result[43];
  if (v3)
  {
    v4 = result[45];
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      result = re::ecs2::TransformSystem::deactivateEntityHierarchyTransformState(v6, a2);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::TransformSystem::updateEntityHierarchyRootAnchorComponent(_anonymous_namespace_ *this, re::ecs2::Entity *a2, const re::ecs2::AnchorComponent *a3)
{
  v4 = this;
  v5 = *(this + 32);
  if (v5)
  {
    if (!*(v5 + 128))
    {
      return this;
    }

    *(v5 + 136) = a2;
    *(v5 + 128) = 1;
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = 1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v6 = *(v4 + 43);
  if (v6)
  {
    v7 = *(v4 + 45);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v17) = v9;
      v8 -= 8;
    }

    while (v8);
  }

  v10 = v21;
  while (v10)
  {
    v11 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v17, v10 - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v17, v21 - 1);
    v10 = --v21;
    ++v22;
    if (!v11[18])
    {
      v12 = v11[32];
      if (v12)
      {
        *(v12 + 136) = a2;
        *(v12 + 128) = 1;
      }

      v13 = v11[43];
      if (v13)
      {
        v14 = v11[45];
        v15 = 8 * v13;
        do
        {
          v16 = *v14++;
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v17) = v16;
          v15 -= 8;
        }

        while (v15);
        v10 = v21;
      }
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v17);
  this = v17[0];
  if (v17[0])
  {
    if ((v18 & 1) == 0)
    {
      return (*(*v17[0] + 40))();
    }
  }

  return this;
}

_anonymous_namespace_ *re::ecs2::TransformSystem::updateEntityHierarchyTransformDirtyState(_anonymous_namespace_ *result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    if (*(v2 + 128) < 2u)
    {
      return result;
    }

    *(v2 + 128) = 1;
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 0;
  v3 = *(v1 + 43);
  if (v3)
  {
    v4 = *(v1 + 45);
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v14) = v6;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = v18;
  if (v18)
  {
    while (1)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v14, v7 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v14, v18 - 1);
      v7 = --v18;
      ++v19;
      if (!v8[18])
      {
        v9 = v8[32];
        if (!v9)
        {
          goto LABEL_12;
        }

        if (*(v9 + 128) >= 2u)
        {
          break;
        }
      }

LABEL_16:
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    *(v9 + 128) = 1;
LABEL_12:
    v10 = v8[43];
    if (v10)
    {
      v11 = v8[45];
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v14) = v13;
        v12 -= 8;
      }

      while (v12);
      v7 = v18;
    }

    goto LABEL_16;
  }

LABEL_17:
  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v14);
  result = v14[0];
  if (v14[0])
  {
    if ((v15 & 1) == 0)
    {
      return (*(*v14[0] + 40))();
    }
  }

  return result;
}

void *re::ecs2::allocInfo_TransformComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_203, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_203))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4608, "TransformComponent");
    __cxa_guard_release(&_MergedGlobals_203);
  }

  return &unk_1EE1A4608;
}

void re::ecs2::initInfo_TransformComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v21[0] = 0x74A840394154E22;
  v21[1] = "TransformComponent";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1A45E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A45E0))
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
    qword_1EE1A45F0 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_SRT(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "transform";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1A45F8 = v17;
    v18 = re::introspectionAllocator();
    v19 = (*(*v18 + 32))(v18, 8, 4);
    *v19 = 0x100000004;
    qword_1EE1A4600 = v19;
    __cxa_guard_release(&qword_1EE1A45E0);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A45F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TransformComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TransformComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TransformComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TransformComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218TransformComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v20 = v22;
}

void *re::ecs2::allocInfo_TransformSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A45E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A45E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4698, "TransformSystem");
    __cxa_guard_release(&qword_1EE1A45E8);
  }

  return &unk_1EE1A4698;
}

void re::ecs2::initInfo_TransformSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x1C2499D73A6E8136;
  v8[1] = "TransformSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_TransformSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TransformSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TransformSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::TransformSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::TransformSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TransformSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TransformSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::TransformSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::TransformSystem>(uint64_t *a1)
{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 28);

  re::ecs2::System::~System(a1);
}

void re::ecs2::AnimatedTransformComponentOp::~AnimatedTransformComponentOp(re::ecs2::AnimatedTransformComponentOp *this)
{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::UnanimatedTransformComponentOp::~UnanimatedTransformComponentOp(re::ecs2::UnanimatedTransformComponentOp *this)
{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::TransformSystem::~TransformSystem(re::ecs2::TransformSystem *this)
{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 28);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::TransformComponent::~TransformComponent(re::ecs2::TransformComponent *this)
{
  *this = &unk_1F5CEBC90;
  v2 = this + 88;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CEBC90;
  v2 = this + 88;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::ecs2::AnimatedTransformComponentOp::willAddSceneToTransformService(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEBF38;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::AnimatedTransformComponentOp::willAddSceneToTransformService(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEBF38;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v16[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  v12 = re::globalAllocators(EventInfo)[2];
  v15[0] = &unk_1F5CEBF90;
  v15[1] = a3;
  v15[3] = v12;
  v15[4] = v15;
  re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(v15, a5, v16);
  v13 = re::EventBus::EventInfo::addSubscription(EventInfo, v16, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v16);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v15);
  return v13;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEBF90;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEBF90;
  a2[1] = v2;
  return a2;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v16[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<REComponentWillRemoveEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  v12 = re::globalAllocators(EventInfo)[2];
  v15[0] = &unk_1F5CEBFE8;
  v15[1] = a3;
  v15[3] = v12;
  v15[4] = v15;
  re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(v15, a5, v16);
  v13 = re::EventBus::EventInfo::addSubscription(EventInfo, v16, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v16);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v15);
  return v13;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEBFE8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEBFE8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC040;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC040;
  a2[1] = v2;
  return a2;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v16[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RESceneEntityDidReparentEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  v12 = re::globalAllocators(EventInfo)[2];
  v15[0] = &unk_1F5CEC098;
  v15[1] = a3;
  v15[3] = v12;
  v15[4] = v15;
  re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v15, a5, v16);
  v13 = re::EventBus::EventInfo::addSubscription(EventInfo, v16, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v16);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v15);
  return v13;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC098;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC098;
  a2[1] = v2;
  return a2;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v16[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<REComponentDidChangeEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  v12 = re::globalAllocators(EventInfo)[2];
  v15[0] = &unk_1F5CEC148;
  v15[1] = a3;
  v15[3] = v12;
  v15[4] = v15;
  re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(v15, a5, v16);
  v13 = re::EventBus::EventInfo::addSubscription(EventInfo, v16, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v16);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v15);
  return v13;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC148;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC148;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC0F0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC0F0;
  a2[1] = v2;
  return a2;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218TransformComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

re::ecs2::TransformSystem *re::ecs2::TransformSystem::TransformSystem(re::ecs2::TransformSystem *this)
{
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CEBE78;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 224) = 0u;
  v3 = v2 + 224;
  *(v2 + 260) = 0x7FFFFFFFLL;
  return this;
}

void *re::ecs2::allocInfo_PortalCrossingFlagsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_204, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_204))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4750, "PortalCrossingFlagsComponent");
    __cxa_guard_release(&_MergedGlobals_204);
  }

  return &unk_1EE1A4750;
}

void re::ecs2::initInfo_PortalCrossingFlagsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x37D4EAFB9BC30C48;
  v24[1] = "PortalCrossingFlagsComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1A4730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4730))
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
    qword_1EE1A4738 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "enablePortalCrossing";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A4740 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "enablePortalCrossingIsInherited";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A4748 = v22;
    __cxa_guard_release(&qword_1EE1A4730);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A4738;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PortalCrossingFlagsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PortalCrossingFlagsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PortalCrossingFlagsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PortalCrossingFlagsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228PortalCrossingFlagsComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::ecs2::PortalCrossingFlagsComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE3EA8;
  *(v3 + 25) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::PortalCrossingFlagsComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE3EA8;
  *(v1 + 25) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs228PortalCrossingFlagsComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::Component *re::ecs2::IKParametersComponent::createSolversForAsset(re::ecs2::Component *this)
{
  v1 = this;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 792);
  }

  else
  {
    v3 = 0;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) >> 27));
  if (*(this + 10) != (v3 ^ (v4 >> 31) ^ v4))
  {
    re::ecs2::IKParametersComponent::createRuntimeData(this);

    return re::ecs2::Component::enqueueMarkDirty(v1);
  }

  return this;
}

uint64_t *re::ecs2::IKParametersComponent::createRuntimeData(uint64_t *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = this[5];
  if (v1)
  {
    v2 = atomic_load((v1 + 896));
    if (v2 == 2)
    {
      v3 = this;
      v4 = this[5];
      if (v4)
      {
        v5 = *(v4 + 280);
        this = re::IKRigAsset::assetType(this);
        if (v5 == this)
        {
          if (v3[7])
          {
            v3[10] = 0;
            re::FixedArray<re::FullBodyIKSolver>::deinit(v3 + 7);
          }

          v6 = v3[5];
          if (v6)
          {
            v7 = *(v6 + 792);
          }

          else
          {
            v7 = 0;
          }

          v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
          v3[10] = v7 ^ (v8 >> 31) ^ v8;
          v9 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>((v3 + 4));
          v10 = *(v9 + 16);
          if (v10)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            while (1)
            {
              v14 = *(v9 + 16);
              if (v14 <= v13)
              {
                break;
              }

              v15 = *(*(v9 + 17) + 8 * v13);
              if (v15)
              {
                v14 = v3[8];
                if (v14 <= v13)
                {
                  goto LABEL_27;
                }

                v14 = *(v9 + 4);
                if (v14 <= v13)
                {
                  goto LABEL_31;
                }

                this = re::FullBodyIKSolver::FullBodyIKSolver(v3[9] + v12, *(v15 + 24), (*(v9 + 5) + v11));
              }

              ++v13;
              v12 += 128;
              v11 += 16;
              if (v10 == v13)
              {
                goto LABEL_21;
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

            v29 = 476;
            v30 = 2048;
            v31 = v13;
            v32 = 2048;
            v33 = v14;
            _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
            _os_crash_msg();
            __break(1u);
LABEL_27:
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
            v31 = v13;
            v32 = 2048;
            v33 = v14;
            _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
            _os_crash_msg();
            __break(1u);
LABEL_31:
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

            v29 = 476;
            v30 = 2048;
            v31 = v13;
            v32 = 2048;
            v33 = v14;
            _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
            _os_crash_msg();
            __break(1u);
          }

LABEL_21:
          *(v3 + 96) = 1;
        }
      }

      else
      {

        return re::IKRigAsset::assetType(this);
      }
    }
  }

  return this;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::IKRigAsset>(re::IKRigAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::IKRigAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

BOOL re::ecs2::IKParametersComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v67 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v66, a5, 0);
  v8 = *&v66[0];
  v56 = a4;
  v57 = *&v66[0];
  v58 = DWORD2(v66[0]);
  v9 = WORD4(v66[0]);
  v10 = HIWORD(DWORD2(v66[0]));
  if (*&v66[0] != a5 || WORD4(v66[0]) != 0xFFFF || v10 != 0xFFFF)
  {
    while (1)
    {
      v13 = v10;
      v14 = *(v8 + 16);
      if (v14 <= v10)
      {
        v59 = 0;
        memset(v66, 0, sizeof(v66));
        v53 = MEMORY[0x1E69E9C10];
        v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v60 = 136315906;
        *v61 = "operator[]";
        *&v61[8] = 1024;
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        *&v61[10] = 797;
        v62 = 2048;
        v63 = v13;
        v64 = 2048;
        v65 = v14;
        _os_log_send_and_compose_impl(v55, &v59, v66, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(*(*(v8 + 32) + 16 * v10) + 8 * v9);
      v16 = *(v15 + 16);
      re::ecs2::IKParametersComponent::createSolversForAsset(v15);
      v17 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v17)
      {
        if (*(v15 + 96) == 1)
        {
          v18 = v17;
          v19 = *(v17 + 40);
          if (v19)
          {
            v20 = *(v19 + 792);
          }

          else
          {
            v20 = 0;
          }

          v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
          v22 = v20 ^ (v21 >> 31) ^ v21;
          v23 = *(v15 + 88);
          v24 = *(v15 + 40);
          if (v24 || v22 != v23)
          {
            goto LABEL_20;
          }

          if (v19)
          {
            break;
          }
        }
      }

LABEL_46:
      v51 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v57);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v56, v51, *(a3 + 48));
LABEL_47:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v57);
      v8 = v57;
      v9 = v58;
      v10 = HIWORD(v58);
      if (v57 == a5 && v58 == 0xFFFF && HIWORD(v58) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v25 = *(v17 + 32);
    if (v25)
    {

      *(v18 + 32) = 0;
    }

    v19 = 0;
    *(v18 + 40) = 0;
    *(v15 + 88) = 0;
    *(v15 + 96) = 0;
    v24 = *(v15 + 40);
LABEL_20:
    v27 = v22 == v23 || v19 == 0;
    if (v24 && v27)
    {
      v28 = *(v16 + 192);
      v29 = atomic_load((v24 + 896));
      if (v29 != 2 || v28 == 0)
      {
        goto LABEL_47;
      }

      v31 = *(v28 + 40);
      if (!v31)
      {
        goto LABEL_47;
      }

      v32 = atomic_load((v31 + 896));
      if (v32 != 2)
      {
        goto LABEL_47;
      }

      v33 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v28 + 32));
      v34 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>((v15 + 32));
      IKSolverRigGraphAsset = re::RigGraphAsset::createIKSolverRigGraphAsset(v33, v34, v66);
      if (LOBYTE(v66[0]) != 1)
      {
        goto LABEL_47;
      }

      v36 = *(v15 + 40);
      if (v36)
      {
        v37 = *(v36 + 24);
      }

      else
      {
        v37 = 0;
      }

      v38 = *(&v66[0] + 1);
      v39 = re::RigGraphAsset::assetType(IKSolverRigGraphAsset);
      (*(*v37 + 424))(&v60, v37, v38, v39, 0, 0, 0);
      v40 = *&v61[4];
      if (*&v61[4])
      {
        *(&v66[0] + 1) = 0;
        re::AssetHandle::operator=(v18 + 32, &v60);
        re::ecs2::Component::enqueueMarkDirty(v18);
        v41 = *(v18 + 40);
        if (v41)
        {
          v42 = *(v41 + 792);
        }

        else
        {
          v42 = 0;
        }

        v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
        *(v15 + 88) = v42 ^ (v43 >> 31) ^ v43;
        *(v15 + 96) = 0;
      }

      re::AssetHandle::~AssetHandle(&v60);
      if (LOBYTE(v66[0]) == 1)
      {
        std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](v66 + 1, v44, v45, v46, v47, v48, v49, v50);
      }

      if (!v40)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_46;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

void *re::ecs2::IKParametersSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v47[0] = a2;
  v47[1] = a3;
  v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v46);
  v6 = *(a3 + 200);
  if (v6)
  {
    v7 = 0;
    v8 = *(a3 + 216);
    v9 = 8 * v6;
    do
    {
      v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v5)
      {
        v10 = *(v5 + 48);
      }

      else
      {
        v10 = 0;
      }

      v7 += v10;
      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
  if (isStatisticCollectionEnabled)
  {
    v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v13 = *(v12 + 152);
    if (v13)
    {
      v14 = v13[920].u64[0];
      if (v14 >= v7)
      {
        v14 = v7;
      }

      v13[920].i64[0] = v14;
      v15 = v13[920].u64[1];
      if (v15 <= v7)
      {
        v15 = v7;
      }

      v13[920].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v7;
      v13[921] = vaddq_s64(v13[921], v16);
      *(v12 + 184) = 0;
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v45, 3131, a1, v7, 0, 0);
  re::StackScratchAllocator::StackScratchAllocator(v59);
  v55 = 1;
  v56 = 0;
  v57 = 0;
  v53 = v59;
  v54 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v53, 0);
  v55 += 2;
  v17 = a1[54];
  if ((v17 & 0x3F) != 0)
  {
    v18 = (v17 >> 6) + 1;
  }

  else
  {
    v18 = v17 >> 6;
  }

  v58 = a1[54];
  v48[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v53, v18, v48);
  v19 = *(a3 + 200);
  if (v19)
  {
    v20 = *(a3 + 216);
    v21 = 8 * v19;
    do
    {
      v22 = *v20++;
      v48[0] = v22;
      v23 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 35, v48);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v53, *(a1[36] + 16 * v23 + 8));
      v21 -= 8;
    }

    while (v21);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v53, (a1 + 49));
  v49 = 1;
  v50 = 0;
  v51 = 0;
  v48[0] = v59;
  v48[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v48, 0);
  v49 += 2;
  v24 = a1[54];
  if ((v24 & 0x3F) != 0)
  {
    v25 = (v24 >> 6) + 1;
  }

  else
  {
    v25 = v24 >> 6;
  }

  v52 = a1[54];
  v60 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v48, v25, &v60);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 49), &v53);
  v26 = v57;
  if (v55)
  {
    v26 = &v56;
  }

  v27 = v54;
  if ((v54 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v28 = 0;
    while (1)
    {
      v30 = *v26++;
      v29 = v30;
      if (v30)
      {
        break;
      }

      v28 -= 64;
      if (!--v27)
      {
        goto LABEL_45;
      }
    }

    v31 = __clz(__rbit64(v29));
    if (v31 + 1 != v28)
    {
      FirstBitSet = v31 - v28;
      do
      {
        v33 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 28), FirstBitSet);
        v34 = *(*v33 + 224);
        v35 = v33[3];
        v36 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v35);
        if (*(v36 + 40))
        {
          v37 = (*(*v34 + 24))(v34, v47, v33, v35, v36, 0);
        }

        else
        {
          v37 = 0;
        }

        v38 = v33[5];
        v39 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v38);
        if (*(v39 + 40))
        {
          v37 |= (*(*v34 + 32))(v34, v47, v33, v38, v39, 0);
        }

        v40 = v33[6];
        v41 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v40);
        if (*(v41 + 40))
        {
          if (((v37 | (*(*v34 + 40))(v34, v47, v33, v40, v41, 0)) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (!v37)
        {
LABEL_43:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v48, FirstBitSet);
          goto LABEL_44;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v48, FirstBitSet);
LABEL_44:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v53, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_45:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 49), v48);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 28));
  if (v48[0] && (v49 & 1) == 0)
  {
    (*(*v48[0] + 40))();
  }

  if (v53 && (v55 & 1) == 0)
  {
    (*(*v53 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v59);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45, v42, v43);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v46);
}

unint64_t re::ecs2::IKParametersSystem::willAddSceneToECSService(re::ecs2::IKParametersSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 44);
  v5 = *(this + 90);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 368);
    }

    else
    {
      v6 = *(this + 47);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 368);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 47);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 344, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::init(v12, this + 224, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 344, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(this + 33);
  *&v51 = 0;
  v15 = *(this + 29);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,4ul>::setBucketsCapacity((this + 224), (v14 + 4) >> 2);
    v15 = *(this + 29);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(this + 240))
  {
    v16 = this + 248;
  }

  else
  {
    v16 = *(this + 32);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 33);
  ++*(this + 68);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(this + 33);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::init(v24, this + 224, v52);
  *&v62[0] = *(this + 33) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, &v52, v62);
  v25 = *(this + 33);
  v26 = *(this + 48);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 48) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 344), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 48) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 360))
    {
      v30 = this + 368;
    }

    else
    {
      v30 = *(this + 47);
    }

    *&v30[8 * *(this + 44) - 8] &= v28;
  }

  v31 = *(this + 33);
  v32 = *(this + 54);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 54) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 392), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 54) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 408))
    {
      v36 = this + 416;
    }

    else
    {
      v36 = *(this + 53);
    }

    *&v36[8 * *(this + 50) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 392, v13);
  if (*(this + 456) == 1)
  {
    v38 = *(this + 55);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 224);
  }

  return result;
}

uint64_t re::ecs2::IKParametersSystem::willRemoveSceneFromECSService(re::ecs2::IKParametersSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 35, &v15);
  if (result != -1)
  {
    v4 = *(this + 36) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 344, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 392, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 280, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_IKParametersComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_205, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_205))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4810, "IKParametersComponent");
    __cxa_guard_release(&_MergedGlobals_205);
  }

  return &unk_1EE1A4810;
}

void re::ecs2::initInfo_IKParametersComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0x4101A12855F3362;
  v28[1] = "IKParametersComponent";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1A47E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A47E8))
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
    qword_1EE1A47F8 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "solvers";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3800000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A4800 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_AssetHandle(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "ikRigAssetHandle";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2000000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A4808 = v26;
    __cxa_guard_release(&qword_1EE1A47E8);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A47F8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::IKParametersComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::IKParametersComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::IKParametersComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::IKParametersComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221IKParametersComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v27 = v29;
}

double re::internal::defaultConstruct<re::ecs2::IKParametersComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE1D00;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::IKParametersComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::FixedArray<re::FullBodyIKSolver>::deinit(a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::IKParametersComponent>(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE1D00;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::IKParametersComponent>(void *a1)
{
  re::FixedArray<re::FullBodyIKSolver>::deinit(a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_IKParametersSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A47F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A47F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A48A0, "IKParametersSystem");
    __cxa_guard_release(&qword_1EE1A47F0);
  }

  return &unk_1EE1A48A0;
}

void re::ecs2::initInfo_IKParametersSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x83C6DF79F9B0A3F6;
  v8[1] = "IKParametersSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1E800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_IKParametersSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::IKParametersSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::IKParametersSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::IKParametersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::IKParametersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::IKParametersSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::IKParametersSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::IKParametersSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::IKParametersSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 28);

  re::ecs2::System::~System(a1);
}

void re::ecs2::IKParametersSystem::~IKParametersSystem(re::ecs2::IKParametersSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::IKParametersComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEC298;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEC2F0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEC348;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEC3A0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEC298;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEC2F0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEC348;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEC3A0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC298;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC298;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC2F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC2F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC348;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC348;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC3A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC3A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs221IKParametersComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::IKParametersSystem *re::ecs2::IKParametersSystem::IKParametersSystem(re::ecs2::IKParametersSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CEC1E0;
  v3 = v2 + 464;
  *(v2 + 232) = 0;
  *(v2 + 224) = 0;
  v4 = v2 + 224;
  *(v2 + 240) = 1;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 248) = 0;
  *(v2 + 272) = 0;
  v5 = (v2 + 280);
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 1;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0;
  *(v2 + 408) = 1;
  *(v2 + 441) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  v8 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 344), 0);
  *(this + 90) += 2;
  *(this + 48) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 392), 0);
  *(this + 102) += 2;
  *(this + 54) = 0;
  *(this + 55) = this;
  *(this + 56) = v3;
  *(this + 456) = 1;
  *(this + 58) = &unk_1F5CEC1A0;
  *(this + 59) = this;
  *(this + 60) = re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  return this;
}

void *re::ecs2::allocInfo_SceneUnderstandingComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_206, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_206))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A49C8, "SceneUnderstandingComponent");
    __cxa_guard_release(&_MergedGlobals_206);
  }

  return &unk_1EE1A49C8;
}

void re::ecs2::initInfo_SceneUnderstandingComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xB7A4C0F509B6B38ALL;
  v20[1] = "SceneUnderstandingComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A4938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4938))
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
    qword_1EE1A4978 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<unsigned char [16]>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "identifier";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A4980 = v18;
    __cxa_guard_release(&qword_1EE1A4938);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A4978;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneUnderstandingComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneUnderstandingComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneUnderstandingComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227SceneUnderstandingComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::SceneUnderstandingComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEC3F8;
  *(v3 + 41) = 513;
}

void re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CEC3F8;
  *(v1 + 41) = 513;
}

void *re::ecs2::allocInfo_SceneUnderstandingRootComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4948))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4A58, "SceneUnderstandingRootComponent");
    __cxa_guard_release(&qword_1EE1A4948);
  }

  return &unk_1EE1A4A58;
}

void re::ecs2::initInfo_SceneUnderstandingRootComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x2CBC1F2A37446606;
  v20[1] = "SceneUnderstandingRootComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A4950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4950))
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
    qword_1EE1A4988 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_size_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "updateId";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A4990 = v18;
    __cxa_guard_release(&qword_1EE1A4950);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A4988;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneUnderstandingRootComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneUnderstandingRootComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingRootComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneUnderstandingRootComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs231SceneUnderstandingRootComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::SceneUnderstandingRootComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE3340;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingRootComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE3340;
  *(v1 + 32) = 0;
}

void *re::ecs2::allocInfo_SceneUnderstandingRenderOptionsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4958))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4AE8, "SceneUnderstandingRenderOptionsComponent");
    __cxa_guard_release(&qword_1EE1A4958);
  }

  return &unk_1EE1A4AE8;
}

void re::ecs2::initInfo_SceneUnderstandingRenderOptionsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0xDCE03EE9E8EB53DALL;
  v36[1] = "SceneUnderstandingRenderOptionsComponent";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1A4960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4960))
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
    qword_1EE1A4998 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "enableOcclusion";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A49A0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "enableWireframe";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A49A8 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "enableDepthFeathering";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1B00000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A49B0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "enableGuidedFilterOcclusionSupport";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1C00000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1A49B8 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "enableGuidedFilterOcclusion";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1D00000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1A49C0 = v34;
    __cxa_guard_release(&qword_1EE1A4960);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1A4998;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneUnderstandingRenderOptionsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneUnderstandingRenderOptionsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingRenderOptionsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneUnderstandingRenderOptionsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs240SceneUnderstandingRenderOptionsComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v35 = v37;
}

void re::internal::defaultConstruct<re::ecs2::SceneUnderstandingRenderOptionsComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE34A8;
  *(v3 + 25) = 0;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingRenderOptionsComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE34A8;
  *(v1 + 25) = 0;
  *(v1 + 28) = 0;
}

uint64_t re::ecs2::SceneUnderstandingComponent::initComponentType(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1A4970, memory_order_acquire) & 1) == 0)
  {
    v17 = __cxa_guard_acquire(&qword_1EE1A4970);
    if (v17)
    {
      v18 = qword_1EE1A4940;
      if (!qword_1EE1A4940)
      {
        v18 = re::ecs2::allocInfo_SceneUnderstandingComponent(v17);
        qword_1EE1A4940 = v18;
        re::ecs2::initInfo_SceneUnderstandingComponent(v18, v19, v20, v21);
      }

      qword_1EE1A4968 = v18;
      __cxa_guard_release(&qword_1EE1A4970);
    }
  }

  v2 = strlen(*(qword_1EE1A4968 + 48));
  v27[0] = re::ecs2::Component::dropComponentSuffix(*(qword_1EE1A4968 + 48), v2);
  v27[1] = v3;
  v4 = re::globalAllocators(v27[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v5, v27, 1, 4);
  *v6 = &unk_1F5CEC480;
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0xFFFFFFFFLL;
  *(v5 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v6 + 24), 0x30);
  if ((atomic_load_explicit(&qword_1EE1A4970, memory_order_acquire) & 1) == 0)
  {
    v22 = __cxa_guard_acquire(&qword_1EE1A4970);
    if (v22)
    {
      v23 = qword_1EE1A4940;
      if (!qword_1EE1A4940)
      {
        v23 = re::ecs2::allocInfo_SceneUnderstandingComponent(v22);
        qword_1EE1A4940 = v23;
        re::ecs2::initInfo_SceneUnderstandingComponent(v23, v24, v25, v26);
      }

      qword_1EE1A4968 = v23;
      __cxa_guard_release(&qword_1EE1A4970);
    }
  }

  v8 = qword_1EE1A4968;
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

  v28 = 2 * v10;
  v29 = v9;
  *v7 = v30;
  if (v28)
  {
    if (v28)
    {
    }
  }

  re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = v5;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  result = re::ecs2::ComponentTypeRegistry::add(v15, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 1);
  *(re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 1) = re::ecs2::SceneUnderstandingComponent::clone;
  return result;
}

uint64_t re::ecs2::SceneUnderstandingComponent::clone(re::ecs2::SceneUnderstandingComponent *this, const Component *a2)
{
  (*(*re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 32))(&v5);
  v3 = v5;
  uuid_copy((v5 + 25), this + 25);
  *(v3 + 41) = *(this + 41);
  return v3;
}

void re::ecs2::SceneUnderstandingComponent::~SceneUnderstandingComponent(re::ecs2::SceneUnderstandingComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227SceneUnderstandingComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 2;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs231SceneUnderstandingRootComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs240SceneUnderstandingRenderOptionsComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

double re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 48, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEC3F8;
  *(v3 + 41) = 513;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CEC4F0;
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

uint64_t re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A4970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4970))
  {
    qword_1EE1A4968 = re::internal::getOrCreateInfo("SceneUnderstandingComponent", re::ecs2::allocInfo_SceneUnderstandingComponent, re::ecs2::initInfo_SceneUnderstandingComponent, &qword_1EE1A4940, 0);
    __cxa_guard_release(&qword_1EE1A4970);
  }

  return qword_1EE1A4968;
}

__n128 re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CEC480;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::SceneUnderstandingComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::SceneUnderstandingComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CEC4F0;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

void *re::ecs2::allocInfo_UIShadowComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_207, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_207))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4BA8, "UIShadowComponent");
    __cxa_guard_release(&_MergedGlobals_207);
  }

  return &unk_1EE1A4BA8;
}

void re::ecs2::initInfo_UIShadowComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0x2DCB1E4B43297512;
  v28[1] = "UIShadowComponent";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1A4B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4B80))
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
    qword_1EE1A4B88 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "isShadowCaster";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A4B90 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "isShadowReceiver";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A4B98 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint64_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "groupId";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A4BA0 = v26;
    __cxa_guard_release(&qword_1EE1A4B80);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A4B88;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UIShadowComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UIShadowComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UIShadowComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UIShadowComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217UIShadowComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v27 = v29;
}

void re::internal::defaultConstruct<re::ecs2::UIShadowComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE78F0;
  *(v3 + 25) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::UIShadowComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE78F0;
  *(v1 + 25) = 0;
  *(v1 + 32) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs217UIShadowComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_UIShadowService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_208))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4C60, "UIShadowService");
    __cxa_guard_release(&_MergedGlobals_208);
  }

  return &unk_1EE1A4C60;
}

void re::ecs2::initInfo_UIShadowService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x6C339FE3EDD6AE82;
  v8[1] = "UIShadowService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_UIShadowService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t re::ecs2::UIShadowManager::UIShadowManager(uint64_t a1, re::StringID *a2)
{
  *a1 = &unk_1F5CEC560;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0x7FFFFFFFLL;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0x7FFFFFFFLL;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0x7FFFFFFFLL;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0x7FFFFFFFLL;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 260) = 0x7FFFFFFFLL;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 308) = 0x7FFFFFFFLL;
  *(a1 + 8) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  *(a1 + 16) = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  *(a1 + 24) = re::ServiceLocator::serviceOrNull<re::ecs2::CARESortingService>(a2);
  return a1;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::CARESortingService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::CARESortingService>(BOOL)::info = re::ecs2::introspect_CARESortingService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::CARESortingService>(BOOL)::info;
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

void re::ecs2::UIShadowManager::update(uint64_t this)
{
  if (!*(this + 8))
  {
    return;
  }

  v1 = this;
  if (!*(this + 16) || !*(this + 108) && !*(this + 156))
  {
    return;
  }

  v2 = *(this + 112);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 96) + 8);
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
        LODWORD(v3) = *(this + 112);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  v6 = *(this + 112);
  while (v3 != v2)
  {
    v7 = *(*(v1 + 96) + 24 * v3 + 16);
    v185.i64[0] = v7[39];
    v8 = re::ecs2::EntityComponentCollection::get((v7 + 6), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v9 = v8;
    v171[0] = v8;
    if (v8)
    {
      v10 = (v8 + 8);
    }

    v11 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 224, &v185);
    v12 = 0uLL;
    if (v11)
    {
      v13 = *v11;
      v175.i64[0] = v13;
      if (v13 != v9[4])
      {
        re::ecs2::UIShadowManager::removeFromShadowGroup(this, v7, v13);
        v12 = 0uLL;
        if (*(this + 176))
        {
          v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v175.i64[0] ^ (v175.i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v175.i64[0] ^ (v175.i64[0] >> 30))) >> 27));
          v15 = *(*(this + 184) + 4 * ((v14 ^ (v14 >> 31)) % *(this + 200)));
          if (v15 != 0x7FFFFFFF)
          {
            v16 = *(this + 192);
            while (*(v16 + 120 * v15 + 8) != v175.i64[0])
            {
              v15 = *(v16 + 120 * v15) & 0x7FFFFFFF;
              if (v15 == 0x7FFFFFFF)
              {
                goto LABEL_23;
              }
            }

            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 128, &v175);
            v12 = 0uLL;
          }
        }
      }
    }

LABEL_23:
    *v176 = v12;
    *&v176[16] = v12;
    v175 = v12;
    *v178 = v12;
    *&v178[16] = v12;
    v177 = v12;
    *&v176[20] = 0x7FFFFFFF;
    *&v178[20] = 0x7FFFFFFF;
    v191 = 0uLL;
    *&v192 = 0;
    v17 = v9[4];
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v191, this + 176, v17, v18 ^ (v18 >> 31));
    if (HIDWORD(v191) == 0x7FFFFFFF)
    {
      v19 = re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry((this + 176), DWORD2(v191), v191);
      v20 = v9[4];
      *(v19 + 16) = 0u;
      v21 = v19 + 16;
      *(v19 + 8) = v20;
      *(v19 + 56) = 0;
      v175 = 0u;
      *(v19 + 32) = 0;
      *v176 = 0;
      *(v19 + 40) = xmmword_1E3058120;
      *&v176[8] = xmmword_1E3058120;
      *(v19 + 104) = 0;
      *(v19 + 64) = 0u;
      v177 = 0u;
      *(v19 + 80) = 0;
      *v178 = 0;
      *(v19 + 88) = xmmword_1E3058120;
      *&v178[8] = xmmword_1E3058120;
      ++*(this + 216);
    }

    else
    {
      v21 = *(this + 192) + 120 * HIDWORD(v191) + 16;
    }

    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v177);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v175);
    if (*(v9 + 25) == 1)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::add(v21, v171);
    }

    if (*(v9 + 26) == 1)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::add(v21 + 48, v171);
      v9 = v171[0];
    }

    v175.i64[0] = v7[39];
    v22 = v9 + 4;
    v1 = this;
    re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 224, &v175, v22);
    v23 = v171[0];
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 128, v171[0] + 4);
    if (v23)
    {
    }

    v6 = *(this + 112);
    if (v6 <= v3 + 1)
    {
      v24 = v3 + 1;
    }

    else
    {
      v24 = *(this + 112);
    }

    while (v24 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 96) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v3) = v24;
LABEL_39:
    ;
  }

  if (v6)
  {
    v25 = 0;
    v26 = (*(v1 + 96) + 8);
    while (1)
    {
      v27 = *v26;
      v26 += 6;
      if (v27 < 0)
      {
        break;
      }

      if (v6 == ++v25)
      {
        LODWORD(v25) = v6;
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 != v6)
  {
    v31 = vdup_n_s32(0x45312A55u);
    while (1)
    {
      v32 = *(*(v1 + 96) + 24 * v25 + 16);
      v33 = re::ecs2::EntityComponentCollection::get((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v34 = re::ecs2::EntityComponentCollection::get((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (!v34)
      {
        break;
      }

      if (*(v33 + 26) == 1)
      {
        v175 = xmmword_1E3047670;
        *v176 = xmmword_1E3047680;
        *&v176[16] = xmmword_1E30476A0;
        v177 = xmmword_1E30474D0;
        *v178 = xmmword_1E3047670;
        *&v178[16] = xmmword_1E3047680;
        v179 = xmmword_1E30476A0;
        v180 = xmmword_1E30474D0;
        v182 = 0u;
        memset(v183, 0, 28);
        *(&v183[1] + 12) = 0x7FFFFFFFLL;
        v181 = vcvt_u32_f32(vmul_f32(v34[6], v31));
        re::TextureManager::createRenderTarget(*(*(v1 + 8) + 56), v181.u32[0], v181.u32[1], 70, 1u, "textureUIShadowColor", 7, 32, v171);
        re::TextureManager::registerTexture(*(*(v1 + 8) + 56), v171, &v185);
        v35 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(*(v1 + 8) + 24), *(v32 + 312));
        v184 = 0x6991F1236A9A01B4;
        re::MaterialParameterBlock::setTextureHandle(v35, &v184, &v185, &v191);
        *&v191 = 0;
        NS::SharedPtr<MTL::Buffer>::operator=(&v182, v171);
        re::TextureHandle::invalidate(&v185);
        if (v171[0])
        {
        }

        v185.i64[0] = *(v32 + 312);
        v191 = 0uLL;
        *&v192 = 0;
        v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v185.i64[0] ^ (v185.i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v185.i64[0] ^ (v185.i64[0] >> 30))) >> 27));
        re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v191, v1 + 272, v185.i64[0], v36 ^ (v36 >> 31));
        v37 = HIDWORD(v191);
        if (HIDWORD(v191) == 0x7FFFFFFF)
        {
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long,re::UIShadowRenderData::ReceiverData const&>(v1 + 272, v191, DWORD2(v191), &v185, &v175);
        }

        else
        {
          ++*(v1 + 312);
          v39 = *(v1 + 288) + 224 * v37;
          v40 = v181;
          v41 = *&v178[16];
          v42 = v180;
          *(v39 + 112) = v179;
          *(v39 + 128) = v42;
          *(v39 + 96) = v41;
          v43 = *v176;
          v44 = *&v176[16];
          v45 = *v178;
          *(v39 + 64) = v177;
          *(v39 + 80) = v45;
          *(v39 + 32) = v43;
          *(v39 + 48) = v44;
          *(v39 + 16) = v175;
          *(v39 + 144) = v40;
          NS::SharedPtr<MTL::Buffer>::operator=((v39 + 152), &v182);
          v46 = v39 + 160;
          v1 = this;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v46, &v182 + 8);
        }

        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v182 + 1);
        if (v182)
        {
        }
      }

      else
      {
        re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 272, *(v32 + 312));
      }

      v38 = *(v1 + 8);
      if (*(v33 + 25) != 1)
      {
        goto LABEL_71;
      }

      v47 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(v38 + 24), *(v32 + 312));
      if ((atomic_load_explicit(&qword_1EE1A4C48, memory_order_acquire) & 1) == 0)
      {
        v51 = __cxa_guard_acquire(&qword_1EE1A4C48);
        if (v51)
        {
          qword_1EE1A4C40 = re::hashString(v51, v52);
          __cxa_guard_release(&qword_1EE1A4C48);
        }
      }

      v48 = qword_1EE1A4C40;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v47, v48, v48, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v49 = qword_1EE1A4C40;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v47, v49, v49, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
LABEL_72:
      v50 = *(v1 + 112);
      if (v50 <= v25 + 1)
      {
        v50 = v25 + 1;
      }

      while (v50 - 1 != v25)
      {
        LODWORD(v25) = v25 + 1;
        if ((*(*(v1 + 96) + 24 * v25 + 8) & 0x80000000) != 0)
        {
          goto LABEL_78;
        }
      }

      LODWORD(v25) = v50;
LABEL_78:
      if (v25 == v6)
      {
        goto LABEL_47;
      }
    }

    re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 272, *(v32 + 312));
    v38 = *(v1 + 8);
LABEL_71:
    re::ecs2::UIShadowManager::clearShadowCasterRenderData(*(v38 + 24), *(v32 + 312));
    goto LABEL_72;
  }

LABEL_47:
  v173 = 0;
  *v171 = 0u;
  v172 = 0u;
  v174 = 0x7FFFFFFFLL;
  re::RenderManager::perFrameAllocator(*(v1 + 8));
  v167 = *(v1 + 160);
  if (v167)
  {
    v28 = 0;
    v29 = (*(v1 + 144) + 8);
    while (1)
    {
      v30 = *v29;
      v29 += 6;
      if (v30 < 0)
      {
        break;
      }

      if (v167 == ++v28)
      {
        LODWORD(v28) = *(v1 + 160);
        break;
      }
    }
  }

  else
  {
    LODWORD(v28) = 0;
  }

  if (v28 != v167)
  {
    v53 = &unk_1EE187000;
    v54 = *(v1 + 160);
    do
    {
      v55 = re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v1 + 176, *(*(v1 + 144) + 24 * v28 + 16));
      if (!v55)
      {
        goto LABEL_159;
      }

      v56 = v55;
      v168 = *(v55 + 80);
      if (v168)
      {
        v57 = 0;
        v58 = (*(v55 + 64) + 8);
        while (1)
        {
          v59 = *v58;
          v58 += 6;
          if (v59 < 0)
          {
            break;
          }

          if (v168 == ++v57)
          {
            LODWORD(v57) = *(v55 + 80);
            break;
          }
        }
      }

      else
      {
        LODWORD(v57) = 0;
      }

      if (v57 == v168)
      {
        goto LABEL_159;
      }

      do
      {
        v60 = *(*(v56 + 64) + 24 * v57 + 16);
        if (v60)
        {
          v61 = (v60 + 8);
        }

        v170 = v60;
        v62 = *(v60 + 16);
        v63 = re::ecs2::EntityComponentCollection::get((v62 + 6), v53[474]);
        v64 = v62[39];
        v65 = v64 ^ (v64 >> 30);
        if (!v63)
        {
          v175 = xmmword_1E3047670;
          *v176 = xmmword_1E3047680;
          *&v176[16] = xmmword_1E30476A0;
          v177 = xmmword_1E30474D0;
          *v178 = xmmword_1E3047670;
          *&v178[16] = xmmword_1E3047680;
          v179 = xmmword_1E30476A0;
          v180 = xmmword_1E30474D0;
          v181 = 0x6400000064;
          v182 = 0u;
          memset(v183, 0, 40);
          HIDWORD(v183[1]) = 0x7FFFFFFF;
          v130 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v65) ^ ((0xBF58476D1CE4E5B9 * v65) >> 27));
          v131 = v130 ^ (v130 >> 31);
          if (v171[0])
          {
            v132 = v131 % DWORD2(v172);
            v133 = *(v171[1] + v132);
            if (v133 != 0x7FFFFFFF)
            {
              while (*(v172 + 224 * v133 + 8) != v64)
              {
                LODWORD(v133) = *(v172 + 224 * v133) & 0x7FFFFFFF;
                if (v133 == 0x7FFFFFFF)
                {
                  goto LABEL_110;
                }
              }

              goto LABEL_111;
            }
          }

          else
          {
            LODWORD(v132) = 0;
          }

LABEL_110:
          v134 = re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v171, v132, v131);
          *(v134 + 8) = v64;
          v135 = v180;
          *(v134 + 112) = v179;
          *(v134 + 128) = v135;
          *(v134 + 144) = v181;
          v136 = v177;
          *(v134 + 48) = *&v176[16];
          *(v134 + 64) = v136;
          v137 = *&v178[16];
          *(v134 + 80) = *v178;
          *(v134 + 96) = v137;
          v138 = *v176;
          *(v134 + 16) = v175;
          *(v134 + 32) = v138;
          *(v134 + 200) = 0;
          *(v134 + 152) = v182;
          v182 = 0u;
          v139 = *(&v183[0] + 1);
          *(v134 + 168) = *&v183[0];
          *(v134 + 176) = v139;
          v183[0] = 0u;
          *(v134 + 184) = v183[1];
          v183[1] = xmmword_1E3058120;
          ++HIDWORD(v174);
LABEL_111:
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v182 + 1);
          if (v182)
          {
          }

          goto LABEL_150;
        }

        v66 = v63;
        v67 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v65) ^ ((0xBF58476D1CE4E5B9 * v65) >> 27));
        re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v175, this + 272, v62[39], v67 ^ (v67 >> 31));
        v68 = v175.u32[3];
        if (v175.i32[3] != 0x7FFFFFFF)
        {
          v69 = *(this + 288);
          re::TransformService::worldTransform(*(this + 16), v62, 0, &v185);
          v70 = 0;
          v71 = v186;
          v72 = v187;
          v73 = v71 + v71;
          v74 = v72 + v72;
          v75 = v188;
          v76 = v75 + v75;
          v77 = v71 * (v71 + v71);
          v78 = v72 * (v72 + v72);
          v79 = v75 * (v75 + v75);
          v80 = v73 * v187;
          v81 = v73 * v188;
          v82 = v74 * v188;
          v83 = v74 * v189;
          v84 = v76 * v189;
          v85.i32[3] = 0;
          v85.f32[0] = 1.0 - (v78 + v79);
          v85.f32[1] = (v73 * v187) + v84;
          v85.f32[2] = (v73 * v188) - v83;
          v86 = v73 * v189;
          v87 = 1.0 - (v77 + v79);
          v88.i32[3] = 0;
          v88.f32[0] = v80 - v84;
          v88.f32[1] = v87;
          v88.f32[2] = v82 + v86;
          v89.i32[3] = 0;
          v89.f32[0] = v81 + v83;
          v89.f32[1] = v82 - v86;
          v89.f32[2] = 1.0 - (v77 + v78);
          v90 = vmulq_n_f32(v85, v185.f32[0]);
          v91 = vmulq_laneq_f32(v89, v185, 2);
          v92 = v185.f32[0];
          v93 = *(v66 + 132);
          v94 = *(v66 + 136);
          v95 = HIDWORD(v185.i64[0]);
          v96 = v190;
          v97 = v190;
          v97.i32[3] = 1.0;
          *&v98 = 0;
          *(&v98 + 2) = 1.0 / v185.f32[2];
          HIDWORD(v98) = 1.0;
          v191 = xmmword_1E3047670;
          v192 = xmmword_1E3047680;
          v99 = vmulq_n_f32(v88, v185.f32[1]);
          v193 = xmmword_1E30476A0;
          v194 = v98;
          do
          {
            *(&v175 + v70) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v90, COERCE_FLOAT(*(&v191 + v70))), v99, *(&v191 + v70), 1), v91, *(&v191 + v70), 2), v97, *(&v191 + v70), 3);
            v70 += 16;
          }

          while (v70 != 64);
          v100 = (v69 + 224 * v68);
          v101 = v177;
          v102 = vmulq_f32(v175, 0);
          v103 = vaddq_f32(v177, vmlaq_f32(vaddq_f32(*v176, v102), 0, *&v176[16]));
          v104 = vaddq_f32(v177, vmlaq_f32(vmlaq_f32(v102, 0, *v176), 0, *&v176[16]));
          v105 = vsubq_f32(vdivq_f32(v103, vdupq_laneq_s32(v103, 3)), vdivq_f32(v104, vdupq_laneq_s32(v104, 3)));
          v106 = vmulq_f32(v105, v105);
          *&v107 = v106.f32[2] + vaddv_f32(*v106.f32);
          *v106.f32 = vrsqrte_f32(v107);
          *v106.f32 = vmul_f32(*v106.f32, vrsqrts_f32(v107, vmul_f32(*v106.f32, *v106.f32)));
          v108 = vmulq_n_f32(v105, vmul_f32(*v106.f32, vrsqrts_f32(v107, vmul_f32(*v106.f32, *v106.f32))).f32[0]);
          v109 = vsubq_f32(v177, v96);
          v110 = vmulq_f32(v109, v109);
          *&v111 = v110.f32[2] + vaddv_f32(*v110.f32);
          *v110.f32 = vrsqrte_f32(v111);
          *v110.f32 = vmul_f32(*v110.f32, vrsqrts_f32(v111, vmul_f32(*v110.f32, *v110.f32)));
          v112 = vmulq_n_f32(v109, vmul_f32(*v110.f32, vrsqrts_f32(v111, vmul_f32(*v110.f32, *v110.f32))).f32[0]);
          v113 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
          v114 = vmlaq_f32(vmulq_f32(v113, vnegq_f32(v108)), v112, vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL));
          v115 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
          v116 = vmulq_f32(v114, v114);
          v103.f32[0] = v116.f32[1] + (v116.f32[2] + v116.f32[0]);
          *v116.f32 = vrsqrte_f32(v103.u32[0]);
          *v116.f32 = vmul_f32(*v116.f32, vrsqrts_f32(v103.u32[0], vmul_f32(*v116.f32, *v116.f32)));
          v117 = vmulq_n_f32(v115, vmul_f32(*v116.f32, vrsqrts_f32(v103.u32[0], vmul_f32(*v116.f32, *v116.f32))).f32[0]);
          v118 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL), vnegq_f32(v112)), v117, v113);
          v113.i64[0] = __PAIR64__(v118.u32[0], v117.u32[1]);
          v103.i64[0] = __PAIR64__(v118.u32[1], v117.u32[2]);
          v119 = vmulq_f32(v177, v117);
          v117.i32[1] = v118.i32[2];
          v117.i64[1] = v112.u32[0];
          v100[1] = v117;
          v120 = v100 + 1;
          v117.i32[0] = 0;
          *&v117.i32[1] = 2.0 / (v94 * *&v95);
          *&v121 = 2.0 / (v93 * v92);
          v122 = vmulq_f32(v101, vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL));
          v123 = vadd_f32(vzip1_s32(*v119.i8, *v122.i8), vzip2_s32(*v119.i8, *v122.i8));
          v124 = vextq_s8(v122, v122, 8uLL);
          *v124.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v119, v119, 8uLL), *v124.f32), v123);
          v125 = vmulq_f32(v101, v112);
          v113.i64[1] = v112.u32[1];
          v103.i64[1] = v112.u32[2];
          v124.i64[0] = vnegq_f32(v124).u64[0];
          v124.f32[2] = -(v125.f32[2] + vaddv_f32(*v125.f32));
          v124.i32[3] = 1.0;
          v120[5] = v117.u64[0];
          v120[6] = xmmword_1E306DD20;
          v120[7] = xmmword_1E3086070;
          v120[1] = v113;
          v120[2] = v103;
          v120[3] = v124;
          v120[4] = v121;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v120[9].i64);
          v126 = *(v56 + 32);
          if (v126)
          {
            v127 = 0;
            v128 = (*(v56 + 16) + 8);
            while (1)
            {
              v129 = *v128;
              v128 += 6;
              if (v129 < 0)
              {
                break;
              }

              if (v126 == ++v127)
              {
                LODWORD(v127) = *(v56 + 32);
                break;
              }
            }
          }

          else
          {
            LODWORD(v127) = 0;
          }

          if (v127 != v126)
          {
            v140 = *(v56 + 32);
            do
            {
              v141 = *(*(*(*(v56 + 16) + 24 * v127 + 16) + 16) + 312);
              v175.i64[0] = v141;
              v142 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v141 ^ (v141 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v141 ^ (v141 >> 30))) >> 27));
              v143 = v142 ^ (v142 >> 31);
              v144 = v120[10].u32[2];
              if (v144)
              {
                v145 = v143 % v144;
                v146 = *(v120[9].i64[1] + 4 * (v143 % v144));
                if (v146 != 0x7FFFFFFF)
                {
                  v147 = v120[10].i64[0];
                  while (*(v147 + 24 * v146 + 16) != v141)
                  {
                    LODWORD(v146) = *(v147 + 24 * v146 + 8) & 0x7FFFFFFF;
                    if (v146 == 0x7FFFFFFF)
                    {
                      goto LABEL_123;
                    }
                  }

                  goto LABEL_124;
                }
              }

              else
              {
                LODWORD(v145) = 0;
              }

LABEL_123:
              re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(v120[9].i64, v145, v143, &v175, &v175);
              ++v120[11].i32[2];
              v140 = *(v56 + 32);
LABEL_124:
              if (v140 <= v127 + 1)
              {
                v148 = v127 + 1;
              }

              else
              {
                v148 = v140;
              }

              while (v148 - 1 != v127)
              {
                LODWORD(v127) = v127 + 1;
                if ((*(*(v56 + 16) + 24 * v127 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }
              }

              LODWORD(v127) = v148;
LABEL_131:
              ;
            }

            while (v127 != v126);
          }

          v175.i64[0] = v62[39];
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v120[9].i64, &v175);
          v149 = *(this + 24);
          if (v149)
          {
            (*(*v149 + 48))(&v175);
            if (*v176)
            {
              v150 = *&v176[16];
              v151 = 8 * *v176;
              do
              {
                if (*(*v150 + 312) == v62[39])
                {
                  break;
                }

                *&v191 = *(*v150 + 312);
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v120[9].i64, &v191);
                v150 += 8;
                v151 -= 8;
              }

              while (v151);
            }

            if (v175.i64[0] && *&v176[16])
            {
              (*(*v175.i64[0] + 40))();
            }
          }

          v175 = *v120;
          v152 = v120[1];
          v153 = v120[2];
          v154 = v120[4];
          v177 = v120[3];
          *v178 = v154;
          *v176 = v152;
          *&v176[16] = v153;
          v155 = v120[5];
          v156 = v120[6];
          v157 = v120[7];
          v181 = *v120[8].i8;
          v179 = v156;
          v180 = v157;
          *&v178[16] = v155;
          *&v182 = v120[8].i64[1];
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(&v182 + 8, v120[9].i64);
          v158 = v62[39];
          *&v191 = v158;
          v159 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v158 ^ (v158 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v158 ^ (v158 >> 30))) >> 27));
          v160 = v159 ^ (v159 >> 31);
          if (v171[0])
          {
            v161 = v160 % DWORD2(v172);
            v162 = *(v171[1] + v161);
            v53 = &unk_1EE187000;
            v163 = v170;
            if (v162 != 0x7FFFFFFF)
            {
              while (*(v172 + 224 * v162 + 8) != v158)
              {
                LODWORD(v162) = *(v172 + 224 * v162) & 0x7FFFFFFF;
                if (v162 == 0x7FFFFFFF)
                {
                  goto LABEL_146;
                }
              }

LABEL_147:
              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v182 + 1);
              if (v182)
              {
              }

              if (!v163)
              {
                goto LABEL_151;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v161 = 0;
            v53 = &unk_1EE187000;
            v163 = v170;
          }

LABEL_146:
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long,re::UIShadowRenderData::ReceiverData const&>(v171, v160, v161, &v191, &v175);
          goto LABEL_147;
        }

LABEL_150:

LABEL_151:
        v164 = *(v56 + 80);
        if (v164 <= v57 + 1)
        {
          v164 = v57 + 1;
        }

        while (v164 - 1 != v57)
        {
          LODWORD(v57) = v57 + 1;
          if ((*(*(v56 + 64) + 24 * v57 + 8) & 0x80000000) != 0)
          {
            goto LABEL_157;
          }
        }

        LODWORD(v57) = v164;
LABEL_157:
        ;
      }

      while (v57 != v168);
      v54 = *(this + 160);
LABEL_159:
      if (v54 <= v28 + 1)
      {
        v165 = v28 + 1;
      }

      else
      {
        v165 = v54;
      }

      v1 = this;
      while (v165 - 1 != v28)
      {
        LODWORD(v28) = v28 + 1;
        if ((*(*(this + 144) + 24 * v28 + 8) & 0x80000000) != 0)
        {
          goto LABEL_167;
        }
      }

      LODWORD(v28) = v165;
LABEL_167:
      ;
    }

    while (v28 != v167);
  }

  v166 = **(re::RenderFrameBox::get((*(*(v1 + 8) + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 320);
  (*(v166 + 1160))();
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v1 + 80);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v1 + 128);
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v171);
}

re::MaterialParameterBlock *re::ecs2::UIShadowManager::clearShadowCasterRenderData(re::ecs2::UIShadowManager *this, re::ecs2::Entity *a2)
{
  result = re::MaterialManager::getSystemMaterialParameterBlock(this, a2);
  if (result)
  {
    v3 = result;
    if ((atomic_load_explicit(&qword_1EE1A4C58, memory_order_acquire) & 1) == 0)
    {
      v7 = __cxa_guard_acquire(&qword_1EE1A4C58);
      if (v7)
      {
        qword_1EE1A4C50 = re::hashString(v7, v8);
        __cxa_guard_release(&qword_1EE1A4C58);
      }
    }

    v4 = qword_1EE1A4C50;
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    re::MaterialParameterBlock::removePassTechniqueMapping(v3, v4, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    v5 = qword_1EE1A4C50;
    if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
    }

    v6 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;

    return re::MaterialParameterBlock::removePassTechniqueMapping(v3, v5, v6);
  }

  return result;
}

unint64_t re::hashString(re *this, const char *a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("UIShadowCaster", 0xEuLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("Occlusion", 9uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("StencilIncrement", 0x10uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("Camera", 6uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("PostProcess", 0xBuLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("Opaque", 6uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("RenderGraphDataPipeData", 0x17uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("VisualProxyHighFidelity", 0x17uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

uint64_t re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 120 * v6 + 16;
  }
}

void re::ecs2::UIShadowManager::removeFromShadowGroup(re::ecs2::UIShadowManager *this, re::ecs2::Entity *a2, unint64_t a3)
{
  v16 = a3;
  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v6 = v5;
  if (v5)
  {
    v7 = (v5 + 8);
  }

  v8 = re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 176, a3);
  if (v8)
  {
    v9 = v8;
    v10 = re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::remove(v8, v6);
    re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::remove(v9 + 48, v6);
    if (*(v9 + 28) || *(v9 + 76))
    {
      if (v10)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 128, &v16);
      }
    }

    else
    {
      v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v17, this + 176, a3, v11 ^ (v11 >> 31));
      v12 = v19;
      if (v19 != 0x7FFFFFFF)
      {
        v13 = *(this + 24);
        v14 = *(v13 + 120 * v19) & 0x7FFFFFFF;
        if (v20 == 0x7FFFFFFF)
        {
          *(*(this + 23) + 4 * v18) = v14;
        }

        else
        {
          *(v13 + 120 * v20) = *(v13 + 120 * v20) & 0x80000000 | v14;
        }

        re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v13, v12);
        v15 = *(this + 54);
        *(*(this + 24) + 120 * v12) = *(*(this + 24) + 120 * v12) & 0x80000000 | *(this + 53);
        --*(this + 51);
        *(this + 53) = v12;
        *(this + 54) = v15 + 1;
      }
    }
  }

  if (v6)
  {
  }
}

void re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(a1 + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(a1 + 36);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(a1 + 32);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      LODWORD(v8) = v6 % *(a1 + 24);
      v12 = *(a1 + 32);
      v4 = *a2;
    }

    *(a1 + 32) = v12 + 1;
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
    *(a1 + 36) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  v15 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v11 + 8) = *(*(a1 + 16) + 24 * v11 + 8) & 0x80000000 | *(v15 + 4 * v8);
  *(*(a1 + 16) + 24 * v11) = v6;
  *(*(a1 + 16) + 24 * v11 + 16) = v4;
  if (v4)
  {
    v16 = (v4 + 8);
    v15 = *(a1 + 8);
  }

  *(v15 + 4 * v8) = v11;
  ++*(a1 + 28);
  ++*(a1 + 40);
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = (v4 ^ (v4 >> 31)) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (*(v9 + 24 * v7 + 16) != a2)
  {
    while (1)
    {
      v10 = v7;
      v11 = *(v9 + 24 * v7 + 8);
      v7 = v11 & 0x7FFFFFFF;
      if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v9 + 24 * v7 + 16) == a2)
      {
        *(v9 + 24 * v10 + 8) = *(v9 + 24 * v10 + 8) & 0x80000000 | *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
        goto LABEL_10;
      }
    }
  }

  *(v6 + 4 * v5) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
LABEL_10:
  v12 = *(a1 + 16) + 24 * v7;
  v13 = *(v12 + 8);
  if (v13 < 0)
  {
    *(v12 + 8) = v13 & 0x7FFFFFFF;
    v14 = *(v12 + 16);
    if (v14)
    {

      *(v12 + 16) = 0;
    }
  }

  v15 = *(a1 + 16) + 24 * v7;
  v16 = *(a1 + 40);
  *(v15 + 8) = *(v15 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v16 + 1;
  return 1;
}

void re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v8, a1, a2, v3 ^ (v3 >> 31));
  v4 = v10;
  if (v10 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 224 * v10) & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v9) = v6;
    }

    else
    {
      *(v5 + 224 * v11) = *(v5 + 224 * v11) & 0x80000000 | v6;
    }

    re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v5, v4);
    v7 = *(a1 + 40);
    *(*(a1 + 16) + 224 * v4) = *(*(a1 + 16) + 224 * v4) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v7 + 1;
  }
}

uint64_t (***re::ecs2::UIShadowManager::willAddSceneToECSService(re::ecs2::UIShadowManager *this, re::EventBus **a2))(void)
{
  v56 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v3 = a2[36];
  v46 = 0uLL;
  v47 = 1;
  v48 = 0;
  v49 = 0;
  v4 = re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 32, &v27, &v46);
  v5 = v46.n128_u64[0];
  if (v46.n128_u64[0] && (v47 & 1) == 0)
  {
    v5 = (*(*v46.n128_u64[0] + 40))(v46.n128_u64[0], v49);
  }

  v41 = re::globalAllocators(v5)[2];
  v6 = (*(*v41 + 32))(v41, 32, 0);
  *v6 = &unk_1F5CEC5D0;
  v6[1] = this;
  v6[2] = re::ecs2::UIShadowManager::didActivateUIShadowComponent;
  v6[3] = 0;
  v42 = v6;
  v46.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v3, v40, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v46.n128_u64[1] = v7;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  v8 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v40);
  v38 = re::globalAllocators(v8)[2];
  v9 = (*(*v38 + 32))(v38, 32, 0);
  *v9 = &unk_1F5CEC628;
  v9[1] = this;
  v9[2] = re::ecs2::UIShadowManager::didChangeUIShadowComponent;
  v9[3] = 0;
  v39 = v9;
  v46.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v3, v37, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v46.n128_u64[1] = v10;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v37);
  v35 = re::globalAllocators(v11)[2];
  v12 = (*(*v35 + 32))(v35, 32, 0);
  *v12 = &unk_1F5CEC680;
  v12[1] = this;
  v12[2] = re::ecs2::UIShadowManager::willDeactivateUIShadowComponent;
  v12[3] = 0;
  v36 = v12;
  v46.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v3, v34, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v46.n128_u64[1] = v13;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  v14 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v34);
  v32 = re::globalAllocators(v14)[2];
  v15 = (*(*v32 + 32))(v32, 32, 0);
  *v15 = &unk_1F5CEC6D8;
  v15[1] = this;
  v15[2] = re::ecs2::UIShadowManager::willRemoveUIShadowComponent;
  v15[3] = 0;
  v33 = v15;
  v46.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, v31, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v46.n128_u64[1] = v16;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v31);
  v18 = re::globalAllocators(v17)[2];
  v29 = v18;
  v19 = (*(*v18 + 32))(v18, 32, 0);
  *v19 = &unk_1F5CEC730;
  v19[1] = this;
  v19[2] = re::ecs2::UIShadowManager::didDirtyWorldTransform;
  v19[3] = 0;
  v30 = v19;
  v44 = v18;
  v45 = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>(v43, v28);
  v20 = re::EventBus::getTypeId<re::RenderingWorldTransformCacheDirtyEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(v3, v20);
  v54 = v44;
  v55 = 0;
  v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>(v53, v43);
  v51 = re::globalAllocators(v22)[2];
  v52 = 0;
  v46.n128_u64[0] = &unk_1F5CEC798;
  v49 = v54;
  v50 = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>(&v46.n128_i64[1], v53);
  v52 = &v46;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(v53);
  v23 = re::EventBus::EventInfo::addSubscription(EventInfo, &v46, 0, 0);
  v25 = v24;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(&v46);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(v43);
  v46.n128_u64[0] = v23;
  v46.n128_u64[1] = v25;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(v28);
}

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v10) << 6) + 16;
  }

  v7 = re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::DynamicOverflowArray(v7 + 16, a3);
  ++*(a1 + 40);
  return result;
}

__n128 re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(uint64_t a1, __n128 *a2)
{
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  result = *a2;
  *(v4 + 16 * (*(a1 + 8))++) = *a2;
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::ecs2::UIShadowManager::didDirtyWorldTransform(uint64_t a1, uint64_t a2)
{
  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
  {
    v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v4)
    {
      if (*(v4 + 25) == 1)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 128, (v4 + 32));
      }
    }
  }

  return 0;
}

BOOL re::ecs2::UIShadowManager::willRemoveSceneFromECSService(re::ecs2::UIShadowManager *this, re::ecs2::Scene *a2)
{
  v11 = a2;
  v3 = *(a2 + 36);
  v4 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(this + 32, &v11);
  if (*(v4 + 16))
  {
    v5 = (v4 + 24);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = *(v4 + 8);
  if (v6)
  {
    v7 = &v5[2 * v6];
    do
    {
      v8 = *v5;
      v9 = v5[1];
      v5 += 2;
      re::EventBus::unsubscribe(v3, v8, v9);
    }

    while (v5 != v7);
  }

  return re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 32, &v11);
}

BOOL re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(a1, v5);
}

uint64_t re::ecs2::UIShadowManager::didChangeUIShadow(uint64_t this, unint64_t a2)
{
  v8 = a2;
  if ((*(a2 + 304) & 1) != 0 && (*(a2 + 387) & 1) == 0)
  {
    v2 = this;
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = v3 ^ (v3 >> 31);
    v5 = *(this + 104);
    if (!v5 || (v5 = v4 % v5, v6 = *(*(this + 88) + 4 * v5), v6 == 0x7FFFFFFF))
    {
LABEL_5:
      this = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(this + 80, v5, v4, &v8, &v8);
      ++*(v2 + 120);
      return this;
    }

    v7 = *(this + 96);
    if (*(v7 + 24 * v6 + 16) != a2)
    {
      while (1)
      {
        LODWORD(v6) = *(v7 + 24 * v6 + 8) & 0x7FFFFFFF;
        if (v6 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v7 + 24 * v6 + 16) == a2)
        {
          return this;
        }
      }

      goto LABEL_5;
    }
  }

  return this;
}

void re::ecs2::UIShadowManager::willRemoveUIShadow(re::ecs2::UIShadowManager *this, re::ecs2::Entity *a2)
{
  v7 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 80, &v7);
  re::ecs2::UIShadowManager::clearShadowCasterRenderData(*(*(this + 1) + 24), *(v7 + 39));
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 272, *(v7 + 39));
  v3 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v3)
  {
    v4 = v3;
    re::ecs2::UIShadowManager::removeFromShadowGroup(this, v7, *(v3 + 32));
    v6 = *(v7 + 39);
    v5 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 224, &v6);
    if (v5)
    {
      if (*v5 != *(v4 + 32))
      {
        re::ecs2::UIShadowManager::removeFromShadowGroup(this, v7, *v5);
      }
    }
  }
}

void re::ecs2::UIShadowManager::~UIShadowManager(re::ecs2::UIShadowManager *this)
{
  re::ecs2::UIShadowManager::~UIShadowManager(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 34);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 28);
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 22);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 16);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 10);
  re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 4);
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(uint64_t a1, uint64_t a2)
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

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16) + v6;
      if ((*(v8 + 8) & 0x80000000) != 0)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

double re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
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

void re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 224 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v2 + 160));
    v3 = *(v2 + 152);
    if (v3)
    {

      *(v2 + 152) = 0;
    }
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC5D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC5D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC628;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC628;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC680;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC680;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC6D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC6D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC730;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC730;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(uint64_t a1))(void)
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

double re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
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

double re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 120 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v2 + 64));

    return re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v2 + 16));
  }

  return result;
}

double re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
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

uint64_t re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long,re::UIShadowRenderData::ReceiverData const&>(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, a3, a2);
  *(v8 + 8) = *a4;
  v9 = *(a5 + 80);
  v10 = *(a5 + 96);
  v11 = *(a5 + 112);
  *(v8 + 144) = *(a5 + 128);
  *(v8 + 112) = v10;
  *(v8 + 128) = v11;
  *(v8 + 96) = v9;
  v12 = *(a5 + 16);
  v13 = *(a5 + 32);
  v14 = *(a5 + 64);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 80) = v14;
  *(v8 + 32) = v12;
  *(v8 + 48) = v13;
  *(v8 + 16) = *a5;
  *(v8 + 152) = *(a5 + 136);
  result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v8 + 160, a5 + 144);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 224 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 224 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 224 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 224 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
      }
    }

    else if (v4)
    {
      if (*(a2 + 28) <= 3u)
      {
        v5 = 3;
      }

      else
      {
        v5 = *(a2 + 28);
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = a1[2];
          *&v32[16] = v13;
          a1[2] = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 3);
          v14 = *&v32[32];
          *(a1 + 3) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 152);
            do
            {
              if ((*(v18 - 19) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[7] % *(a1 + 6), v18[7]);
                *(v19 + 8) = *(v18 - 18);
                v20 = *(v18 - 1);
                v21 = *(v18 - 3);
                v22 = *(v18 - 5);
                *(v19 + 96) = *(v18 - 7);
                *(v19 + 112) = v22;
                *(v19 + 128) = v21;
                *(v19 + 144) = v20;
                v23 = *(v18 - 9);
                v24 = *(v18 - 11);
                v25 = *(v18 - 13);
                *(v19 + 32) = *(v18 - 15);
                *(v19 + 48) = v25;
                *(v19 + 64) = v24;
                *(v19 + 80) = v23;
                *(v19 + 16) = *(v18 - 17);
                *(v19 + 152) = *v18;
                *v18 = 0;
                *(v19 + 160) = 0u;
                v19 += 160;
                *(v19 + 32) = 0;
                *(v19 + 16) = 0u;
                *(v19 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v19, v18 + 1);
              }

              ++v17;
              v18 += 28;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v26 = a1[2];
    v27 = *(v26 + 224 * v5);
  }

  else
  {
    v26 = a1[2];
    v27 = *(v26 + 224 * v5);
    *(a1 + 9) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 224 * v5;
  *v29 = v27 | 0x80000000;
  v30 = a1[1];
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 208) = a3;
  ++*(a1 + 7);
  return v26 + 224 * v5;
}

void re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 224 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 120 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 120 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 120 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 120 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = a1[2];
          *&v25[16] = v13;
          a1[2] = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 3);
          v14 = *&v25[32];
          *(a1 + 3) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 64;
            do
            {
              if ((*(v17 - 64) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 48) % *(a1 + 6), *(v17 + 48));
                *(v18 + 8) = *(v17 - 56);
                *(v18 + 48) = 0;
                *(v18 + 32) = 0u;
                *(v18 + 16) = 0u;
                *(v18 + 52) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v18 + 16), (v17 - 48));
                *(v18 + 64) = 0u;
                v18 += 64;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v18, v17);
              }

              v17 += 120;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v19 = a1[2];
    v20 = *(v19 + 120 * v5);
  }

  else
  {
    v19 = a1[2];
    v20 = *(v19 + 120 * v5);
    *(a1 + 9) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 120 * v5;
  *v22 = v20 | 0x80000000;
  v23 = a1[1];
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 112) = a3;
  ++*(a1 + 7);
  return v19 + 120 * v5;
}

void re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 120 * v10, 16);
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

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

void re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24), *(v7 + v5 + 56));
        *(v8 + 8) = *(*(a2 + 16) + v5 + 8);
        result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::DynamicOverflowArray(v8 + 16, *(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<RESubscriptionHandle,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 16))
  {
    if (*(a2 + 8))
    {
      re::DynamicOverflowArray<RESubscriptionHandle,1ul>::move(a1, a2);
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
    *(a1 + 16) = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<RESubscriptionHandle,1ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(a1, v4);
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
        v13 = (v11 + 16 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 16 * v12), 16 * (v4 - v12));
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

    memmove(v10, v7, 16 * v8);
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
    result = memmove(result, v5, 16 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
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

        memcpy(v14, v16, 16 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        v10 = (*(*v5 + 32))(*result, 16 * a2, 8);
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

          result = memcpy(v10, v13, 16 * *(v4 + 1));
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

_anonymous_namespace_ *re::DynamicOverflowArray<RESubscriptionHandle,1ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<RESubscriptionHandle,1ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<RESubscriptionHandle,1ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 1)
    {
      return result;
    }

    v5 = 2;
  }

  else
  {
    v4 = *(result + 3);
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

  return re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(result, a2);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CEC798;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CEC798;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEC798;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEC798;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(a1);
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

BOOL re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + (v2 << 6)) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = a2[3];
    }

    else
    {
      *(v6 + (v5 << 6)) = *(v6 + (v5 << 6)) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + (v8 << 6));
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v10 + 4));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + (v12 << 6));
      v9 = a2[3];
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + (v12 << 6)) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

_anonymous_namespace_ *re::ecs2::PerformDeformationsSystem::deformerSubsystemTypes@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if ((atomic_load_explicit(&qword_1EE1A4D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D18))
  {
    qword_1EE1A4D10 = re::ecs2::introspect_MeshOffsetsSystem(0, v3, v4, v5, v6, v7);
    __cxa_guard_release(&qword_1EE1A4D18);
  }

  v63 = qword_1EE1A4D10;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D28))
  {
    qword_1EE1A4D20 = re::ecs2::introspect_MeshSmoothSystem(0, v8, v9, v10, v11, v12);
    __cxa_guard_release(&qword_1EE1A4D28);
  }

  v63 = qword_1EE1A4D20;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D38))
  {
    qword_1EE1A4D30 = re::ecs2::introspect_SkeletalPoseBufferSystem(0, v13, v14, v15, v16, v17);
    __cxa_guard_release(&qword_1EE1A4D38);
  }

  v63 = qword_1EE1A4D30;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D48))
  {
    qword_1EE1A4D40 = re::ecs2::introspect_BlendShapeWeightsBufferSystem(0, v18, v19, v20, v21, v22);
    __cxa_guard_release(&qword_1EE1A4D48);
  }

  v63 = qword_1EE1A4D40;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D58))
  {
    qword_1EE1A4D50 = re::ecs2::introspect_JiggleSystem(0, v23, v24, v25, v26, v27);
    __cxa_guard_release(&qword_1EE1A4D58);
  }

  v63 = qword_1EE1A4D50;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D68))
  {
    qword_1EE1A4D60 = re::ecs2::introspect_WrapSystem(0, v28, v29, v30, v31, v32);
    __cxa_guard_release(&qword_1EE1A4D68);
  }

  v63 = qword_1EE1A4D60;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D78))
  {
    qword_1EE1A4D70 = re::ecs2::introspect_VertexCacheSystem(0, v33, v34, v35, v36, v37);
    __cxa_guard_release(&qword_1EE1A4D78);
  }

  v63 = qword_1EE1A4D70;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D88))
  {
    qword_1EE1A4D80 = re::ecs2::introspect_SubdivisionSurfaceSystem(0, v38, v39, v40, v41, v42);
    __cxa_guard_release(&qword_1EE1A4D88);
  }

  v63 = qword_1EE1A4D80;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  {
    re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info = re::ecs2::introspect_CustomDeformerSystem(0, v43, v44, v45, v46, v47);
  }

  v63 = re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D98))
  {
    qword_1EE1A4D90 = re::ecs2::introspect_DynamicBoundingBoxSystem(0, v48, v49, v50, v51, v52);
    __cxa_guard_release(&qword_1EE1A4D98);
  }

  v63 = qword_1EE1A4D90;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4DA8))
  {
    qword_1EE1A4DA0 = re::ecs2::introspect_PerformDeformationSystem(0, v53, v54, v55, v56, v57);
    __cxa_guard_release(&qword_1EE1A4DA8);
  }

  v63 = qword_1EE1A4DA0;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
  if ((atomic_load_explicit(&qword_1EE1A4DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4DB8))
  {
    qword_1EE1A4DB0 = re::ecs2::introspect_DeformedDirectMeshSystem(0, v58, v59, v60, v61, v62);
    __cxa_guard_release(&qword_1EE1A4DB8);
  }

  v63 = qword_1EE1A4DB0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &v63);
}

uint64_t (***re::ecs2::PerformDeformationsSystem::addDeformerSubsystemsUsingLambda(uint64_t a1))(void)
{
  v101 = *MEMORY[0x1E69E9840];
  v63 = *(a1 + 24);
  v64 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v62, a1);
  v99 = v63;
  v100 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v98, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D18))
  {
    qword_1EE1A4D10 = re::ecs2::introspect_MeshOffsetsSystem(0, v2, v3, v4, v5, v6);
    __cxa_guard_release(&qword_1EE1A4D18);
  }

  (*(*v100 + 16))(v100, qword_1EE1A4D10 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v98);
  v96 = v63;
  v97 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v95, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D28))
  {
    qword_1EE1A4D20 = re::ecs2::introspect_MeshSmoothSystem(0, v7, v8, v9, v10, v11);
    __cxa_guard_release(&qword_1EE1A4D28);
  }

  (*(*v97 + 16))(v97, qword_1EE1A4D20 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v95);
  v93 = v63;
  v94 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v92, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D38))
  {
    qword_1EE1A4D30 = re::ecs2::introspect_SkeletalPoseBufferSystem(0, v12, v13, v14, v15, v16);
    __cxa_guard_release(&qword_1EE1A4D38);
  }

  (*(*v94 + 16))(v94, qword_1EE1A4D30 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v92);
  v90 = v63;
  v91 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v89, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D48))
  {
    qword_1EE1A4D40 = re::ecs2::introspect_BlendShapeWeightsBufferSystem(0, v17, v18, v19, v20, v21);
    __cxa_guard_release(&qword_1EE1A4D48);
  }

  (*(*v91 + 16))(v91, qword_1EE1A4D40 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v89);
  v87 = v63;
  v88 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v86, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D58))
  {
    qword_1EE1A4D50 = re::ecs2::introspect_JiggleSystem(0, v22, v23, v24, v25, v26);
    __cxa_guard_release(&qword_1EE1A4D58);
  }

  (*(*v88 + 16))(v88, qword_1EE1A4D50 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v86);
  v84 = v63;
  v85 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v83, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D68))
  {
    qword_1EE1A4D60 = re::ecs2::introspect_WrapSystem(0, v27, v28, v29, v30, v31);
    __cxa_guard_release(&qword_1EE1A4D68);
  }

  (*(*v85 + 16))(v85, qword_1EE1A4D60 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v83);
  v81 = v63;
  v82 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v80, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D78))
  {
    qword_1EE1A4D70 = re::ecs2::introspect_VertexCacheSystem(0, v32, v33, v34, v35, v36);
    __cxa_guard_release(&qword_1EE1A4D78);
  }

  (*(*v82 + 16))(v82, qword_1EE1A4D70 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v80);
  v78 = v63;
  v79 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v77, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D88))
  {
    qword_1EE1A4D80 = re::ecs2::introspect_SubdivisionSurfaceSystem(0, v37, v38, v39, v40, v41);
    __cxa_guard_release(&qword_1EE1A4D88);
  }

  (*(*v79 + 16))(v79, qword_1EE1A4D80 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v77);
  v75 = v63;
  v76 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v74, v62);
  {
    re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info = re::ecs2::introspect_CustomDeformerSystem(0, v42, v43, v44, v45, v46);
  }

  (*(*v76 + 16))(v76, re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v74);
  v72 = v63;
  v73 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v71, v62);
  if ((atomic_load_explicit(&qword_1EE1A4D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D98))
  {
    qword_1EE1A4D90 = re::ecs2::introspect_DynamicBoundingBoxSystem(0, v47, v48, v49, v50, v51);
    __cxa_guard_release(&qword_1EE1A4D98);
  }

  (*(*v73 + 16))(v73, qword_1EE1A4D90 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v71);
  v69 = v63;
  v70 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v68, v62);
  if ((atomic_load_explicit(&qword_1EE1A4DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4DA8))
  {
    qword_1EE1A4DA0 = re::ecs2::introspect_PerformDeformationSystem(0, v52, v53, v54, v55, v56);
    __cxa_guard_release(&qword_1EE1A4DA8);
  }

  (*(*v70 + 16))(v70, qword_1EE1A4DA0 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v68);
  v66 = v63;
  v67 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v65, v62);
  if ((atomic_load_explicit(&qword_1EE1A4DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4DB8))
  {
    qword_1EE1A4DB0 = re::ecs2::introspect_DeformedDirectMeshSystem(0, v57, v58, v59, v60, v61);
    __cxa_guard_release(&qword_1EE1A4DB8);
  }

  (*(*v67 + 16))(v67, qword_1EE1A4DB0 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v65);
  return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v62);
}

BOOL re::ecs2::PerformInlineDeformationsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v82 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v71, a5, 0);
  v8 = v71;
  v67 = a4;
  v68 = v71;
  v69 = DWORD2(v71);
  v9 = WORD4(v71);
  v10 = HIWORD(DWORD2(v71));
  if (v71 != a5 || WORD4(v71) != 0xFFFF || v10 != 0xFFFF)
  {
    do
    {
      v13 = v10;
      v14 = *(v8 + 16);
      if (v14 <= v10)
      {
        v70[0] = 0;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v79 = 136315906;
        *&v79[4] = "operator[]";
        *&v79[12] = 1024;
        if (v62)
        {
          v63 = 3;
        }

        else
        {
          v63 = 2;
        }

        *&v79[14] = 797;
        *&v79[18] = 2048;
        *&v79[20] = v13;
        v80 = 2048;
        v81 = v14;
        _os_log_send_and_compose_impl(v63, v70, &v71, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v79, 38, v64, v65);
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(*(*(*(v8 + 32) + 16 * v10) + 8 * v9) + 16);
      v16 = v15;
      do
      {
        v17 = v16;
        v16 = v16[4];
      }

      while (v16);
      v18 = v17[3];
      if (v18)
      {
        v19 = *(v18 + 56);
        if (v19)
        {
          v20 = v15[24];
          if (v20)
          {
            v21 = *(v20 + 40);
            if (v21)
            {
              v22 = atomic_load((v21 + 896));
              if (v22 == 2)
              {
                v23 = v15[25];
                if (v23)
                {
                  v24 = (*(*v19 + 32))(v19);
                  v25 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v24);
                  if (v25)
                  {
                    v26 = v25;
                    v27 = (*(*v19 + 32))(v19);
                    v28 = re::ServiceLocator::serviceOrNull<re::DeformationService>(v27);
                    if (v28)
                    {
                      v29 = v28;
                      v30 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                      if (v30)
                      {
                        v31 = v30;
                        v32 = *(v23 + 49);
                        v65 = v29;
                        if (v32)
                        {
                          v34 = *(v32 + 88);
                          v33 = *(v32 + 96);
                        }

                        else
                        {
                          v34 = 0;
                          v33 = 0;
                        }

                        re::ecs2::SkeletalPoseBufferComponent::resetDeformerInputs(v30, v26, 0, v33, v34);
                        re::ecs2::SkeletalPoseBufferComponent::initializePerRangeEstimators(v31);
                        re::ecs2::SkeletalPoseBufferComponent::update(v31, v26, 0, 0);
                        v35 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v20 + 32));
                        v66 = v35[73];
                        v36 = v35[71];
                        v37 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                        if (v37)
                        {
                          v38 = v37;
                          re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v37, *(v26 + 32));
                          v66 = *(v38 + 26);
                          v64 = *(v38 + 24);
                          v39 = (v38 + 216);
                        }

                        else
                        {
                          v64 = v36;
                          v39 = (v35 + 80);
                        }

                        v40 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                        if (v40)
                        {
                          v42 = v40;
                          re::ecs2::CustomDeformerComponent::updateDeformerInputData(v40, v26, v35, v39);
                          re::ecs2::CustomDeformerComponent::processContinuousUpdateMode(v42, v35, v39);
                        }

                        BoundingBoxInputs = re::ecs2::DynamicBoundingBoxComponent::makeBoundingBoxInputs(v26, v23, v41);
                        if (BoundingBoxInputs)
                        {
                          re::ecs2::DynamicBoundingBoxComponent::updateBoundingBoxes(BoundingBoxInputs, v26);
                        }

                        v44 = (*(*(v26 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v26 + 144) + 16) << 60));
                        v45 = re::RenderManager::perFrameAllocator(v26);
                        re::globalAllocators(v45);
                        v46 = (*(*v45 + 32))(v45, 5960, 8);
                        v47 = re::ecs2::DeformationGPUResources::DeformationGPUResources(v46, v26);
                        v48 = re::globalAllocators(v47)[2];
                        *&v71 = &unk_1F5CEC8E8;
                        *(&v72 + 1) = v48;
                        *&v73 = &v71;
                        v49 = (*(*v45 + 16))(v45, v46, &v71);
                        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v71);
                        v70[0] = 0;
                        v70[1] = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v49 + 8, v44);
                        *v79 = 0xFFFFFFFFFFFFFFFLL;
                        *&v79[8] = 0;
                        *&v79[16] = 0;
                        re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(v79, v26, v49 + 8, (v49 + 5320), v44);
                        v50 = *(v23 + 49);
                        PerFrameMeshDeformationData = re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(v23, v45);
                        *&v71 = v66;
                        *(&v71 + 1) = v64;
                        v52 = v50[2];
                        *&v72 = v50[3];
                        *(&v72 + 1) = v52;
                        v53 = v50[5];
                        *&v73 = v50[6];
                        *(&v73 + 1) = v53;
                        v54 = v50[8];
                        *&v74 = v50[9];
                        *(&v74 + 1) = v54;
                        v55 = v50[11];
                        *&v75 = v50[12];
                        *(&v75 + 1) = v55;
                        v56 = v50[14];
                        v76 = v50[15];
                        v77 = v56;
                        v78 = PerFrameMeshDeformationData;
                        v57 = re::ActiveDeformationData::create(v44, v45);
                        (*(*v65 + 88))(v65, &v71, v57);
                        (*(*v65 + 104))(v65, v45, v70, &v79[8], *&v79[16], v57);
                        v58 = re::RenderFrameBox::get((*(v26 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
                        re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v58 + 4136), *&v79[16]);
                        re::ecs2::PerFrameDeformationCommandData::finalizeForFrame(v79, v26, v49 + 8, v44);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v59 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v68);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v67, v59, *(a3 + 32));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v68);
      v8 = v68;
      v9 = v69;
      v10 = HIWORD(v69);
    }

    while (v68 != a5 || v69 != 0xFFFF || HIWORD(v69) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}