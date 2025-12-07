uint64_t re::ecs2::ECSManager::ECSManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_1F5D01D08;
  *(a1 + 32) = a3;
  v6 = re::ecs2::SceneGroupCollection::SceneGroupCollection(a1 + 40, a1);
  *(a1 + 384) = 0xFFFFFFFFLL;
  *(a1 + 392) = -1;
  *(a1 + 404) = 0;
  *(a1 + 396) = 0;
  *(a1 + 412) = 0;
  *(a1 + 416) = -1;
  *(a1 + 424) = 0;
  *(a1 + 428) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 480) = 0;
  *(a1 + 384) = re::ecs2::SceneGroupCollection::createSceneGroup(a1 + 40, 0, *(a1 + 32));
  return a1;
}

void re::ecs2::ECSManager::~ECSManager(re::ecs2::ECSManager *this)
{
  re::ecs2::SceneGroupCollection::deinit((this + 40));
  v2 = *(this + 59);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](this + 432, i);
      objc_destroyWeak(v4);
      *v4 = 0;
    }
  }

  while (*(this + 55))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 54);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 432);
  *(this + 59) = 0;
  ++*(this + 120);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 432);
  re::ecs2::SceneGroupCollection::~SceneGroupCollection((this + 40));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::ECSManager::~ECSManager(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ECSManager::addSystem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4;
  v7 = (a1 + 384);
  if ((a4 & 0xFFFFFF00000000) != 0)
  {
    v7 = &v9;
  }

  v8 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v7);

  re::ecs2::SceneGroup::addSystem(v8, (a1 + 48), a2, a3);
}

void re::ecs2::ECSManager::removeSystem(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a3;
  v5 = (a1 + 384);
  if ((a3 & 0xFFFFFF00000000) != 0)
  {
    v5 = &v7;
  }

  v6 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v5);

  re::ecs2::SceneGroup::removeSystem(v6, (a1 + 48), a2);
}

void re::ecs2::ECSManager::addSystemDependency(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 57);
  re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::add(&a1[80], a2);

  os_unfair_lock_unlock(a1 + 57);
}

uint64_t *re::ecs2::ECSManager::outputDeviceSystemTasks@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = this[4];
  if (!v3)
  {
    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = 1;
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    return this;
  }

  v4 = this;
  v5 = *(v3 + 40);
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 4) = 1;
  a1[3] = 0;
  a1[4] = 0;
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  a1[8] = v5;
  *&v40 = 0;
  this = re::DynamicOverflowArray<unsigned long long,5ul>::resize(a1, v6, &v40);
  v7 = v4 + 6;
  v29 = v4 + 6;
  if (*(v4 + 22))
  {
    v30 = 0;
    if (!v4[8])
    {
      v31 = 0;
      v44 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v11 = MEMORY[0x1E69E9C10];
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v35 = 797;
      v36 = 2048;
      v37 = 0;
      v38 = 2048;
      v39 = 0;
      _os_log_send_and_compose_impl(v12, &v31, &v40, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v28, v29);
      this = _os_crash_msg();
      __break(1u);
      return this;
    }

    v8 = (v4 + 6);
    if (!**(v4[10] + 8))
    {
      this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v29);
      v8 = v29;
    }
  }

  else
  {
    v30 = -1;
    v8 = (v4 + 6);
  }

  v29 = v8;
  v9 = v30;
  v10 = HIWORD(v30);
  if (v7 == v8)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v13 = v10;
    v14 = *(v8 + 16);
    if (v14 <= v10)
    {
      goto LABEL_37;
    }

    v13 = *(*(v8 + 32) + 16 * v10);
    v15 = *(v13 + 8 * v9);
    if (*(v15 + 48) == 1)
    {
      v16 = *(v15 + 200);
      if (v16)
      {
        break;
      }
    }

LABEL_31:
    this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v29);
    v8 = v29;
    v9 = v30;
    v10 = HIWORD(v30);
    if (v29 == v7)
    {
LABEL_18:
      if (v9 == 0xFFFF && v10 == 0xFFFF)
      {
        return this;
      }
    }
  }

  v14 = *(v15 + 216);
  v17 = 8 * v16;
  while (1)
  {
    v18 = re::ecs2::System::taskHandle(*(v13 + 8 * v9), *v14);
    if (v18 < v5)
    {
      break;
    }

LABEL_30:
    ++v14;
    v17 -= 8;
    if (!v17)
    {
      goto LABEL_31;
    }
  }

  v19 = v18 >> 6;
  v20 = a1[1];
  if (v20 > v18 >> 6)
  {
    if (a1[2])
    {
      v21 = a1 + 3;
    }

    else
    {
      v21 = a1[4];
    }

    v21[v19] |= 1 << v18;
    goto LABEL_30;
  }

  v31 = 0;
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = MEMORY[0x1E69E9C10];
  v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v32 = 136315906;
  v33 = "operator[]";
  v34 = 1024;
  if (v23)
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  v35 = 858;
  v36 = 2048;
  v37 = v19;
  v38 = 2048;
  v39 = v20;
  _os_log_send_and_compose_impl(v24, &v31, &v40, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v28, v29);
  _os_crash_msg();
  __break(1u);
LABEL_37:
  v31 = 0;
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = MEMORY[0x1E69E9C10];
  v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v32 = 136315906;
  v33 = "operator[]";
  v34 = 1024;
  if (v26)
  {
    v27 = 3;
  }

  else
  {
    v27 = 2;
  }

  v35 = 797;
  v36 = 2048;
  v37 = v13;
  v38 = 2048;
  v39 = v14;
  _os_log_send_and_compose_impl(v27, &v31, &v40, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v28, v29);
  this = _os_crash_msg();
  __break(1u);
  return this;
}

void re::ecs2::ECSManager::configurePreparePhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = 0xEEC0FA23AB2AF7FCLL;
  v12 = "ECSManager::Prepare Profiling Begin";
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 260;
  v17 = 1023969417;
  v18 = 0;
  v21 = re::globalAllocators(a1)[2];
  v22 = &v19;
  v19 = &unk_1F5D01E98;
  v20 = a1;
  v23 = a4;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v11);
  if (v24)
  {
    if (v28)
    {
      (*(*v24 + 40))();
    }

    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    ++v27;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v11)
  {
    if (v11)
    {
    }
  }

  re::ecs2::SceneGroupCollection::configurePhaseECSSystems((a1 + 40), a2, a3, 0, a4);
  v11 = 0xA9F037AB534ABAE0;
  v12 = "ECSManager::Prepare Profiling End";
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 260;
  v17 = 1023969417;
  v18 = 0;
  v21 = re::globalAllocators(v9)[2];
  v22 = &v19;
  v19 = &unk_1F5D01EF0;
  v20 = a1;
  v23 = a4;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v11);
  if (v24)
  {
    if (v28)
    {
      (*(*v24 + 40))();
    }

    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    ++v27;
  }

  v10 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

void re::ecs2::ECSManager::configureSimulatePhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = 0xD448DC82DA1AF396;
  v13 = "ECSManager::Simulate Profiling Begin";
  v14 = 1;
  v15 = 0;
  v16 = 0;
  LOWORD(v17) = 260;
  HIDWORD(v17) = 1023969417;
  v18 = 0;
  v22 = re::globalAllocators(a1)[2];
  v23 = &v19;
  v19 = &unk_1F5D01F48;
  v20 = a1;
  v24 = a4;
  v25 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v12);
  if (v25)
  {
    if (v29)
    {
      (*(*v25 + 40))();
    }

    v29 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    ++v28;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v12)
  {
    if (v12)
    {
    }
  }

  re::ecs2::SceneGroupCollection::configurePhaseECSSystems((a1 + 40), a2, a3, 1, a4);
  *(a1 + 416) = -1;
  if (*(a1 + 408))
  {
    v12 = 0x170A146AA311E622;
    v13 = "ECS Update Callback";
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v17 = *(a1 + 360);
    v18 = *(a1 + 368);
    v22 = re::globalAllocators(v9)[2];
    v23 = &v19;
    v19 = &unk_1F5D01FA0;
    v20 = a1;
    v24 = a4;
    v25 = 0;
    v29 = 0;
    v28 = 0;
    v26 = 0;
    v27 = 0;
    *(a1 + 416) = re::Scheduler::ScheduleDescriptor::addTask(a3, &v12);
    if (v25)
    {
      if (v29)
      {
        (*(*v25 + 40))();
      }

      v29 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      ++v28;
    }

    v9 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
    if (v12)
    {
      if (v12)
      {
      }
    }
  }

  v12 = 0xFBB13980CD58D4FALL;
  v13 = "ECSManager::Simulate Profiling End";
  v14 = 1;
  v15 = 0;
  v16 = 0;
  LOWORD(v17) = 260;
  HIDWORD(v17) = 1023969417;
  v18 = 0;
  v10 = re::globalAllocators(v9)[2];
  v21 = a1;
  v22 = v10;
  v19 = &unk_1F5D01FF8;
  v20 = a1;
  v23 = &v19;
  v24 = a4;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v12);
  if (v25)
  {
    if (v29)
    {
      (*(*v25 + 40))();
    }

    v29 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    ++v28;
  }

  v11 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v12)
  {
    if (v12)
    {
    }
  }
}

void re::ecs2::ECSManager::configureCommitPhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = 0xD1BE049E450061BCLL;
  v12 = "ECSManager::Commit Profiling Begin";
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 260;
  v17 = 1023969417;
  v18 = 0;
  v21 = re::globalAllocators(a1)[2];
  v22 = &v19;
  v19 = &unk_1F5D02050;
  v20 = a1;
  v23 = a4;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v11);
  if (v24)
  {
    if (v28)
    {
      (*(*v24 + 40))();
    }

    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    ++v27;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v11)
  {
    if (v11)
    {
    }
  }

  re::ecs2::SceneGroupCollection::configurePhaseECSSystems((a1 + 40), a2, a3, 2, a4);
  v11 = 0x37A0906342EF94A0;
  v12 = "ECSManager::Commit Profiling End";
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 260;
  v17 = 1023969417;
  v18 = 0;
  v21 = re::globalAllocators(v9)[2];
  v22 = &v19;
  v19 = &unk_1F5D020A8;
  v20 = a1;
  v23 = a4;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v11);
  if (v24)
  {
    if (v28)
    {
      (*(*v24 + 40))();
    }

    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    ++v27;
  }

  v10 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

float re::ecs2::ECSManager::setUpdateCallback(re::ecs2::ECSManager *this, void (*a2)(re::ecs2::ECSManager *))
{
  *(this + 51) = a2;
  re::ecs2::SceneGroupCollection::forceSystemConfiguration((this + 40));
  v4 = *(this + 4);
  if (v4)
  {
    result = *(v4 + 756);
    if (result > 0.0)
    {
      *(v4 + 756) = 0;
      result = fminf(*(v4 + 752), 0.0);
      *(v4 + 752) = result;
    }
  }

  return result;
}

uint64_t re::ecs2::ECSManager::resolveEntityHandle(re::ecs2::ECSManager *this, const re::ecs2::EntityHandle *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 1);
  v3 = this + 160;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v34, this + 160, 0);
  v4 = *&v34[0];
  v23 = *&v34[0];
  v24 = DWORD2(v34[0]);
  v5 = WORD4(v34[0]);
  v6 = HIWORD(DWORD2(v34[0]));
  v7 = v3 == *&v34[0] && WORD4(v34[0]) == 0xFFFF;
  v8 = 0;
  if (!v7 || v6 != 0xFFFF)
  {
    do
    {
      v10 = v6;
      v11 = *(v4 + 16);
      if (v11 <= v6)
      {
        v25 = 0;
        memset(v34, 0, sizeof(v34));
        v19 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v29 = 797;
        v30 = 2048;
        v31 = v10;
        v32 = 2048;
        v33 = v11;
        _os_log_send_and_compose_impl(v21, &v25, v34, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22, v23);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *(*(v4 + 32) + 16 * v6) + 240 * v5;
      v13 = *(v12 + 200);
      if (v13)
      {
        v14 = *(v12 + 216);
        v15 = 8 * v13;
        do
        {
          v16 = *v14;
          *&v34[0] = v2;
          v17 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v16 + 152, v34);
          if (v17)
          {
            v8 = *(v17 + 8);
            if (v8)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v8 = *(v16 + 104);
            if (*(v8 + 312) == *&v34[0])
            {
              goto LABEL_17;
            }
          }

          ++v14;
          v15 -= 8;
        }

        while (v15);
        v8 = 0;
      }

LABEL_17:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
      v4 = v23;
      v5 = v24;
      v6 = HIWORD(v24);
    }

    while (v23 != v3 || v24 != 0xFFFF || HIWORD(v24) != 0xFFFF);
  }

  return v8;
}

uint64_t re::ecs2::ECSManager::sceneGroupCollection(re::ecs2::ECSManager *this)
{
  return this + 40;
}

{
  return this + 40;
}

uint64_t re::ecs2::ECSManager::setSceneNetworkingMode(uint64_t a1, int a2)
{
  result = re::ecs2::SceneGroupCollection::sceneCount((a1 + 40));
  if (!result)
  {
    *(a1 + 424) = a2;
  }

  return result;
}

uint64_t re::ecs2::ECSManager::setDefaultCustomSystemTaskOptions(void *a1, float *a2)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[52];
    if (v5 != -1)
    {
      re::Scheduler::setTaskOptions(v4, v5, a2);
    }
  }

  return re::ecs2::SceneGroupCollection::setDefaultCustomSystemTaskOptions((a1 + 5), a2);
}

uint64_t re::ecs2::ECSManager::customSystemAtID(re::ecs2::ECSManager *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v3 = re::DataArray<re::ecs2::SceneGroup>::get(this + 160, *(this + 48));
  v4 = *(v3 + 144);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 160);
  v6 = 8 * v4;
  while (*(*v5 + 28) != a2)
  {
    v5 += 8;
    v6 -= 8;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(*v5 + 48) == 2)
  {
    return *v5;
  }

  else
  {
    return 0;
  }
}

uint64_t re::ecs2::ECSManager::sceneGroup(uint64_t a1, int a2)
{
  return re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, a2);
}

{
  return re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, a2);
}

void re::ecs2::ECSManager::enqueueComponentToMarkDirty(re::ecs2::ECSManager *this, const re::ecs2::Component *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2 + 8;
  }

  else
  {
    v3 = 0;
  }

  objc_initWeak(&location, v3);
  v4 = *(this + 59);
  v5 = *(this + 55);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::setBucketsCapacity((this + 432), (v4 + 32) >> 5);
    v5 = *(this + 55);
  }

  if (v5 <= v4 >> 5)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v4 >> 5;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, location);
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 448))
  {
    v6 = this + 456;
  }

  else
  {
    v6 = *(this + 58);
  }

  v7 = *&v6[8 * (v4 >> 5)];
  ++*(this + 59);
  ++*(this + 120);
  v8 = (v7 + 8 * (v4 & 0x1F));
  *v8 = 0;
  objc_moveWeak(v8, &location);
  objc_destroyWeak(&location);
}

void re::ecs2::ECSManager::flushComponentToMarkDirtyQueue(re::ecs2::ECSManager *this)
{
  for (i = *(this + 59); i; i = *(this + 59))
  {
    v3 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](this + 432, i - 1);
    WeakRetained = objc_loadWeakRetained(v3);
    re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::removeLast(this + 432);
    if (WeakRetained)
    {
      if (WeakRetained[16] == 1)
      {
        re::ecs2::Component::markDirty(WeakRetained - 1);
      }
    }
  }
}

void re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::removeLast(uint64_t a1)
{
  v2 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, *(a1 + 40) - 1);
  objc_destroyWeak(v2);
  *v2 = 0;
  --*(a1 + 40);
  ++*(a1 + 48);
}

uint64_t re::ecs2::ECSManager::removeAndAddRealityRendererScenes(re::ecs2::ECSManager *this)
{
  v1 = this + 160;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v16, this + 160, 0);
  if (v1 != v16 || v17 != 0xFFFFFFFFLL)
  {
    do
    {
      v4 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v16);
      if (*(v4 + 8) == 2)
      {
        v5 = v4;
        v6 = *(v4 + 200);
        if (v6)
        {
          v7 = *(v4 + 216);
          v8 = &v7[v6];
          do
          {
            v9 = *(v5 + 144);
            if (v9)
            {
              v10 = *v7;
              v11 = *(v5 + 160);
              v12 = 8 * v9;
              do
              {
                v13 = *v11++;
                (*(*v13 + 56))(v13, v10);
                (*(*v13 + 48))(v13, v10);
                v12 -= 8;
              }

              while (v12);
            }

            ++v7;
          }

          while (v7 != v8);
        }
      }

      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v16);
    }

    while (v16 != v1 || v17 != 0xFFFF || WORD1(v17) != 0xFFFF);
  }

  return result;
}

void re::ecs2::ECSManager::destroySceneGroup(uint64_t a1, unint64_t a2)
{
  re::ecs2::ECSManager::clearScenes(a1, a2);
  re::DataArray<re::ecs2::SceneGroup>::destroy(a1 + 160, a2);
  *(a1 + 376) = 1;
}

void re::ecs2::ECSManager::clearScenes(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v3 = (a1 + 384);
  if ((a2 & 0xFFFFFF00000000) != 0)
  {
    v3 = &v10;
  }

  v4 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v3);
  v5 = *(v4 + 200);
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = *re::ecs2::EntityComponentCollection::operator[](v6 + 176, 0);
      v9 = v7;
      if (v7)
      {
        v8 = (v7 + 8);
        re::ecs2::ECSManager::removeScene(a1, &v9);
      }

      else
      {
        re::ecs2::ECSManager::removeScene(a1, &v9);
      }

      --v5;
    }

    while (v5);
  }
}

void re::ecs2::ECSManager::addScene(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v40 = a3;
  v3 = a1 + 48;
  v4 = &v40;
  if ((a3 & 0xFFFFFF00000000) == 0)
  {
    v4 = a1 + 48;
  }

  v5 = *v4;
  v6 = *(*a2 + 376);
  if (v6 == v5 && ((v6 ^ v5) & 0xFFFFFF00000000) == 0)
  {
    return;
  }

  v10 = v5;
  v11 = WORD1(v5);
  v12 = HIDWORD(v5);
  if ((v6 & 0xFFFFFF00000000) != 0)
  {
    re::ecs2::ECSManager::removeScene(a1, a2);
  }

  v14 = v5 == *v3 && WORD1(v5) == WORD1(*v3) && ((*v3 ^ v5) & 0xFFFFFF00000000) == 0;
  if (!v14 || !*(*a2 + 80))
  {
    goto LABEL_16;
  }

  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v41, (a1 + 20), 0);
  if (a1 + 20 == v41 && v42 == 0xFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v21 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v41);
    if (*(v21 + 8) == 1 && *(v21 + 200) != 0)
    {
      v23 = v21;
      v24 = re::ecs2::EntityComponentCollection::operator[](v21 + 176, 0);
      v25 = *(*v24 + 80);
      if (v25 == *(*a2 + 80))
      {
        break;
      }
    }

LABEL_37:
    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v41);
    if (v41 == a1 + 20 && v42 == 0xFFFF && WORD1(v42) == 0xFFFF)
    {
      goto LABEL_47;
    }
  }

  if (v25)
  {
    v26 = *(*v24 + 96);
    v27 = v26 + 16 * v25;
    v28 = *(*a2 + 96);
    while (*v26 == *v28)
    {
      v29 = v28[1];
      if (*(v26 + 8) != v29 || *(v26 + 10) != WORD1(v29) || ((*(v26 + 12) ^ HIDWORD(v29)) & 0xFFFFFF) != 0)
      {
        break;
      }

      v26 += 16;
      v28 += 2;
      if (v26 == v27)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_37;
  }

LABEL_46:
  v12 = *(v23 + 20);
  v10 = *(v23 + 16);
  v11 = HIWORD(*(v23 + 16));
LABEL_47:
  v32 = *v3;
  if (v10 == *v3 && v11 == WORD1(v32) && ((v12 ^ HIDWORD(v32)) & 0xFFFFFF) == 0)
  {
    SceneGroup = re::ecs2::SceneGroupCollection::createSceneGroup((a1 + 5), 1, a1[4]);
    v34 = SceneGroup;
    v10 = SceneGroup;
    v11 = WORD1(SceneGroup);
    v12 = HIDWORD(SceneGroup);
    v35 = *(*a2 + 80);
    if (v35)
    {
      v36 = *(*a2 + 96);
      v37 = 16 * v35;
      do
      {
        v38 = re::ecs2::SystemRegistry::registerSystem((a1 + 6), v36);
        v39 = re::DataArray<re::ecs2::SceneGroup>::get((a1 + 20), v34);
        re::ecs2::SceneGroup::addSystem(v39, a1 + 6, v38, 0xFFFFFFFFLL);
        v36 += 2;
        v37 -= 16;
      }

      while (v37);
    }
  }

LABEL_16:
  *(*a2 + 376) = (v11 << 16) | (v12 << 32) | v10;
  v15 = re::DataArray<re::ecs2::SceneGroup>::get((a1 + 20), (v11 << 16) | v10);
  v16 = v15 + 22;
  v17 = *a2;
  v18 = v15[25];
  v41 = v17;
  if (v17)
  {
    v19 = (v17 + 8);
  }

  (*(v15[22] + 24))(v16, v18, &v41);
  v20 = v15[25];
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((v15 + 23), &v41);
  (*(v15[22] + 48))(v16, v20, &v41);
  if (v41)
  {
  }
}

uint64_t re::ecs2::ECSManager::removeScene(uint64_t a1, uint64_t *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 376);
  if ((v2 & 0xFFFFFF00000000) == 0)
  {
    return 0;
  }

  v5 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *(*a2 + 376));
  v6 = v5;
  v7 = *a2;
  v8 = *(v5 + 216);
  v9 = *(v5 + 200);
  if (v9)
  {
    v10 = 8 * v9;
    for (i = *(v5 + 216); *i != v7; ++i)
    {
      v10 -= 8;
      if (!v10)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(v5 + 216);
  }

  if (i == (v8 + 8 * v9))
  {
    return 0;
  }

  v12 = (i - v8) >> 3;
  v13 = *(v5 + 208);
  v36 = *a2;
  if (v7)
  {
    v14 = (v7 + 8);
  }

  (*(*(v6 + 176) + 32))(v6 + 176, v12, &v36);
  v15 = *(v6 + 208);
  v16 = *(v6 + 200);
  if (v13 != v15)
  {
    v17 = *(v6 + 216);
    if (v16)
    {
      v18 = 8 * v16;
      v19 = *(v6 + 216);
      while (*v19 != v36)
      {
        ++v19;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v19 = *(v6 + 216);
    }

    if (v19 == (v17 + 8 * v16))
    {
LABEL_29:
      v28 = 0;
      goto LABEL_30;
    }

    v12 = (v19 - v17) >> 3;
  }

  if (v16 <= v12)
  {
    v37 = 0;
    memset(v46, 0, sizeof(v46));
    v32 = MEMORY[0x1E69E9C10];
    v33 = v16;
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v38 = 136315906;
    v39 = "removeStableAt";
    v40 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v41 = 969;
    v42 = 2048;
    v43 = v12;
    v44 = 2048;
    v45 = v33;
    _os_log_send_and_compose_impl(v35, &v37, v46, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v36);
    _os_crash_msg();
    __break(1u);
  }

  v20 = v16 - 1;
  v21 = *(v6 + 216);
  if (v16 - 1 > v12)
  {
    v22 = (v21 + 8 * v12);
    v23 = v22 + 1;
    if (v22 + 1 != (v21 + 8 * v16))
    {
      v24 = *v22;
      v25 = 8 * v16 - 8 * v12 - 8;
      do
      {
        *(v23 - 1) = *v23;
        *v23++ = v24;
        v25 -= 8;
      }

      while (v25);
      v21 = *(v6 + 216);
    }
  }

  v26 = v21 + 8 * v16;
  v27 = *(v26 - 8);
  if (v27)
  {

    *(v26 - 8) = 0;
    v20 = *(v6 + 200) - 1;
    v15 = *(v6 + 208);
  }

  *(v6 + 200) = v20;
  *(v6 + 208) = v15 + 1;
  (*(*(v6 + 176) + 56))(v6 + 176, v12, &v36);
  v28 = 1;
LABEL_30:
  if (v36)
  {
  }

  if (!v28)
  {
    return 0;
  }

  *(*a2 + 376) = 0xFFFFFFFFLL;
  v29 = *(a1 + 384);
  if (v2 == v29 && ((v29 ^ v2) & 0xFFFFFF00000000) == 0 || !*(*a2 + 80))
  {
    return 1;
  }

  v30 = 1;
  if (!*(re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, v2) + 200))
  {
    re::ecs2::ECSManager::clearScenes(a1, v2);
    re::DataArray<re::ecs2::SceneGroup>::destroy(a1 + 160, v2);
    *(a1 + 376) = 1;
  }

  return v30;
}

void re::ecs2::ECSManager::insertScene(uint64_t a1, unint64_t a2, uint64_t *a3, size_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v31 = a4;
  v6 = (a1 + 384);
  if ((a4 & 0xFFFFFF00000000) != 0)
  {
    v6 = &v31;
  }

  v7 = *v6;
  *(*a3 + 376) = *v6;
  v8 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, v7);
  v9 = v8 + 176;
  v10 = *a3;
  v32 = v10;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  v12 = (*(*(v8 + 176) + 24))(v9, a2, &v32);
  v13 = *(v8 + 200);
  if (v13 >= a2)
  {
    v15 = v13 + 1;
    if (v13 + 1 <= a2)
    {
      v33 = 0;
      memset(buf, 0, sizeof(buf));
      v27 = MEMORY[0x1E69E9C10];
      v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "insert";
      v36 = 1024;
      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v37 = 855;
      v38 = 2048;
      v39 = a2;
      v40 = 2048;
      v41 = v15;
      _os_log_send_and_compose_impl(v29, &v33, buf, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v30, v31);
      _os_crash_msg();
      __break(1u);
    }

    if (v13 >= *(v8 + 192))
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity((v8 + 184), v13 + 1);
      v13 = *(v8 + 200);
    }

    v16 = *(v8 + 216);
    v17 = (v16 + 8 * v13);
    if (v13 <= a2)
    {
      v25 = v32;
      *v17 = v32;
      if (v25)
      {
        v26 = (v25 + 8);
      }
    }

    else
    {
      *v17 = *(v17 - 1);
      *(v17 - 1) = 0;
      if (v17 - 1 != (v16 + 8 * a2))
      {
        v18 = *(v17 - 1);
        v19 = v17 - 2;
        v20 = 8 * a2 - 8 * v13 + 8;
        do
        {
          v21 = *v19;
          *v19 = v18;
          v19[1] = v21;
          --v19;
          v20 += 8;
        }

        while (v20);
        v16 = *(v8 + 216);
      }

      v22 = v32;
      v23 = *(v16 + 8 * a2);
      if (v23 != v32)
      {
        if (v32)
        {
          v24 = (v32 + 8);
          v23 = *(v16 + 8 * a2);
        }

        if (v23)
        {
        }

        *(v16 + 8 * a2) = v22;
      }
    }

    ++*(v8 + 200);
    ++*(v8 + 208);
    (*(*(v8 + 176) + 48))(v9, a2, &v32);
  }

  else
  {
    v14 = *re::foundationCoreLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "void re::Collection<re::SharedPtr<re::ecs2::Scene>>::insert(size_t, const T &) [T = re::SharedPtr<re::ecs2::Scene>]";
      WORD6(buf[0]) = 2048;
      *(buf + 14) = a2;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s: index %zu invalid after willInsert(), not inserting", buf, 0x16u);
    }
  }

  if (v32)
  {
  }
}

void re::ecs2::ECSManager::removeSceneAt(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10 = a3;
  v5 = (a1 + 384);
  if ((a3 & 0xFFFFFF00000000) != 0)
  {
    v5 = &v10;
  }

  v6 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v5);
  v7 = *re::ecs2::EntityComponentCollection::operator[](v6 + 176, a2);
  v9 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
    re::ecs2::ECSManager::removeScene(a1, &v9);
  }

  else
  {
    re::ecs2::ECSManager::removeScene(a1, &v9);
  }
}

uint64_t re::ecs2::ECSManager::clearAllScenes(re::ecs2::ECSManager *this)
{
  v1 = this + 160;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v8, this + 160, 0);
  if (v1 != v8 || v9 != 0xFFFFFFFFLL)
  {
    do
    {
      v4 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v8);
      v5 = re::DataArray<re::ecs2::SceneGroup>::get(v1, v4);
      re::ecs2::SceneGroup::clearScenes(v5);
      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v8);
    }

    while (v8 != v1 || v9 != 0xFFFF || WORD1(v9) != 0xFFFF);
  }

  return result;
}

uint64_t re::ecs2::ECSManager::scenes(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = (a1 + 384);
  if ((a2 & 0xFFFFFF00000000) != 0)
  {
    v2 = &v4;
  }

  return re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v2) + 176;
}

uint64_t re::ecs2::ECSManager::activeScenes(re::ecs2::ECSManager *this)
{
  v3 = *(this + 49);
  v1 = &v3;
  if ((v3 & 0xFFFFFF00000000) == 0)
  {
    v1 = (this + 384);
  }

  return re::DataArray<re::ecs2::SceneGroup>::get(this + 160, *v1) + 176;
}

uint64_t re::ecs2::ECSManager::scheduler(uint64_t a1, int a2)
{
  return *(re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, a2) + 72);
}

{
  return *(re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, a2) + 72);
}

uint64_t re::ecs2::SceneGroupCollection::SceneGroupCollection(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v3 = re::ecs2::SystemRegistry::SystemRegistry((a1 + 8));
  *(a1 + 184) = 0;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 312) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 320) = 515;
  *(a1 + 324) = 1023969417;
  *(a1 + 328) = 0;
  re::ecs2::CustomSystemRegistry::init((a1 + 184));
  *(a1 + 336) = 0;
  return a1;
}

uint64_t re::DataArray<re::ecs2::SceneGroup>::DataArray(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 52) = 0x1FFFFFFFFLL;
  *a1 = a2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  *(a1 + 44) = a3;
  re::DataArray<re::ecs2::SceneGroup>::allocBlock(a1);
  return a1;
}

re::ecs2::SystemRegistry *re::ecs2::SystemRegistry::SystemRegistry(re::ecs2::SystemRegistry *this)
{
  *(this + 24) = 0;
  *(this + 5) = 0u;
  *(this + 4) = 0u;
  *(this + 100) = 0x7FFFFFFFLL;
  return this;
}

uint64_t re::DataArray<re::SharedPtr<re::ecs2::System>>::DataArray(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 52) = 0x1FFFFFFFFLL;
  *a1 = a2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  *(a1 + 44) = a3;
  re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock(a1);
  return a1;
}

void re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::operator()(uint64_t a1)
{
  v1 = re::internal::enableSignposts(0, 0);
  if (v1)
  {
    v1 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v1);
  if (isStatisticCollectionEnabled)
  {
    v3 = re::profilerThreadContext(isStatisticCollectionEnabled);

    re::ProfilerThreadContext::pushTimeScope(v3);
  }
}

void *re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01E98;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01E98;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::popTimeScope(v2, 0xDu);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01EF0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01EF0;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::operator()(uint64_t a1)
{
  v1 = re::internal::enableSignposts(0, 0);
  if (v1)
  {
    v1 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v1);
  if (isStatisticCollectionEnabled)
  {
    v3 = re::profilerThreadContext(isStatisticCollectionEnabled);

    re::ProfilerThreadContext::pushTimeScope(v3);
  }
}

void *re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01F48;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01F48;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::operator()(uint64_t a1)
{
  v3 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v13, 3007, *(a1 + 8), 0, 0, 0);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v5 + 152))
    {
      v1 = mach_absolute_time();
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 8) + 408))();
  if (v5)
  {
    if (*(v5 + 152))
    {
      v8 = mach_absolute_time();
      v9 = *(v5 + 152);
      if (v9)
      {
        v10 = v9[1024].u64[0];
        if (v10 >= v8 - v1)
        {
          v10 = v8 - v1;
        }

        v9[1024].i64[0] = v10;
        v11 = v9[1024].u64[1];
        if (v11 <= v8 - v1)
        {
          v11 = v8 - v1;
        }

        v9[1024].i64[1] = v11;
        v12 = vdupq_n_s64(1uLL);
        v12.i64[0] = v8 - v1;
        v9[1025] = vaddq_s64(v9[1025], v12);
        *(v5 + 184) = 0;
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v13, v6, v7);
}

void *re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01FA0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01FA0;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_2,void ()(float)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 392);
  if ((v2 & 0xFFFFFF00000000) == 0)
  {
    v2 = *(v1 + 384);
  }

  v3 = re::DataArray<re::ecs2::SceneGroup>::tryGet(v1 + 160, v2);
  if (v3 && (v4 = *(v3 + 200)) != 0)
  {
    v5 = 0;
    v6 = *(v3 + 216);
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v5 += *(v8 + 128);
      v7 -= 8;
    }

    while (v7);
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v10 = re::internal::enableSignposts(0, 0);
  if (v10)
  {
    v10 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v10);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v12 = *(isStatisticCollectionEnabled + 152);
    if (v12)
    {
      v13 = v12[952].u64[0];
      if (v13 >= v9)
      {
        v13 = v9;
      }

      v12[952].i64[0] = v13;
      v14 = v12[952].u64[1];
      if (v14 <= v9)
      {
        v14 = v9;
      }

      v12[952].i64[1] = v14;
      v15 = vdupq_n_s64(1uLL);
      v15.i64[0] = v9;
      v12[953] = vaddq_s64(v12[953], v15);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v16 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v16)
  {
    v17 = re::profilerThreadContext(v16);
    re::ProfilerThreadContext::popTimeScope(v17, 0xEu);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_2,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D01FF8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_2,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D01FF8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::operator()(uint64_t a1)
{
  v1 = re::internal::enableSignposts(0, 0);
  if (v1)
  {
    v1 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v1);
  if (isStatisticCollectionEnabled)
  {
    v3 = re::profilerThreadContext(isStatisticCollectionEnabled);

    re::ProfilerThreadContext::pushTimeScope(v3);
  }
}

void *re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02050;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02050;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::popTimeScope(v2, 0xFu);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D020A8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D020A8;
  a2[1] = v2;
  return a2;
}

void *re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

void re::EncoderHelper::encodeBase64(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[1])
  {
    a3[1] = 1;
    v4 = a3[2];
  }

  else
  {
    *(a3 + 8) = 0;
    v4 = a3 + 9;
  }

  *v4 = 0;
  if (a2)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v5 = [v8 base64EncodedStringWithOptions:0];
    v6 = [v5 UTF8String];
    v7 = strlen(v6);
    re::DynamicString::append(a3, v6, v7);
  }
}

uint64_t re::EncoderHelper::decodeBase64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  if (!a2)
  {
    return 1;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a1 length:a2 encoding:1 freeWhenDone:0];
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:1];
  v6 = v5;
  if (v5 && [v5 length])
  {
    re::DynamicArray<char>::resize(a3, [v6 length]);
    re::DynamicArray<char>::copy(a3, 0, [v6 bytes], objc_msgSend(v6, "length"));
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_anonymous_namespace_ *re::DynamicArray<char>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, size_t __len)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!__len)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v20 = 0;
    memset(v26, 0, sizeof(v26));
    v13 = MEMORY[0x1E69E9C10];
    *v21 = 136315906;
    *&v21[4] = "copy";
    *&v21[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    *&v21[14] = 643;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v8;
    _os_log_send_and_compose_impl(v14, &v20, v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v17, v19);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v20, *v21);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v15, v16, v18);
    __break(1u);
  }

  v4 = __len;
  v9 = a2 + __len;
  if (__CFADD__(a2, __len))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + a2), __src, __len);
  }

  else
  {
    re::DynamicArray<char>::growCapacity(this, a2 + __len);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + v5), __src, v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + v5), &__src[v12], v4 - v12);
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<char>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<char>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<char>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::exportToKtx(const char *a1@<X0>, id *a2@<X1>, re *a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v137 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 2);
  if (v10 == 1)
  {
    v92 = a6;
    v19 = *a2;
    if ([*(*a2 + 3) textureType] == 5)
    {
      v23 = 6;
    }

    else
    {
      v23 = 1;
    }

    v88 = v23;
    FaceOrArrayLength = re::internal::getFaceOrArrayLength(v19, v22);
    v25 = *(v19 + 48);
    v27 = v120[0];
    if (LOBYTE(v120[0]) != 1)
    {
      v35 = *re::pipelineLogObjects(v26);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Failed to write KTX header to output stream", buf, 2u);
      }

      *v92 = v27;
      v36 = v121[0];
      *(v92 + 8) = *(&v120[0] + 1);
      *(v92 + 32) = v36;
      *(v92 + 16) = v120[1];
      memset(v120 + 8, 0, 24);
      return;
    }

    if (v25 < 1)
    {
LABEL_23:
      *v92 = 1;
      return;
    }

    v28 = 0;
    v29 = 32;
    while (1)
    {
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      *buf = 0u;
      v99 = 0u;
      *&v128 = 0;
      [*(v19 + 24) pixelFormat];
      [*(v19 + 24) width];
      [*(v19 + 24) height];
      [*(v19 + 24) depth];
      re::ktxMipInfo(&v128, buf);
      LODWORD(v115) = v104;
      if ([*(v19 + 24) textureType] == 3)
      {
        v30 = DWORD2(v103);
        LODWORD(v115) = [*(v19 + 24) arrayLength] * v30;
      }

      v31 = (*(*a1 + 16))(a1, &v115, 4);
      if (v31 != 4)
      {
        v45 = "Failed to write KTX image size to output stream";
        goto LABEL_38;
      }

      v32 = *(v19 + 48);
      if (v32 <= v28)
      {
        v124 = 0;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        v73 = MEMORY[0x1E69E9C10];
        v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v135 = 136315906;
        *&v135[4] = "operator[]";
        *&v135[12] = 1024;
        if (v74)
        {
          v75 = 3;
        }

        else
        {
          v75 = 2;
        }

        *&v135[14] = 797;
        *&v135[18] = 2048;
        *&v135[20] = v28;
        *&v135[28] = 2048;
        *&v135[30] = v32;
        _os_log_send_and_compose_impl(v75, &v124, &v128, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v82, v83);
        _os_crash_msg();
        __break(1u);
      }

      v33 = (v115 * v88);
      v34 = (*(*a1 + 16))(a1, *(*(v19 + 64) + v29), v33);
      if (v34 != v33)
      {
        break;
      }

      ++v28;
      v29 += 40;
      if ((v25 & 0x7FFFFFFF) == v28)
      {
        goto LABEL_23;
      }
    }

    v45 = "Failed to write KTX image to output stream";
LABEL_38:
    re::DynamicString::DynamicString(v135, &v128);
    *v92 = 0;
    v46 = *&v135[24];
    *(v92 + 8) = *v135;
    *(v92 + 32) = v46;
    *(v92 + 16) = *&v135[8];
    goto LABEL_39;
  }

  if (v10)
  {
    v76 = std::__throw_bad_variant_access[abi:nn200100]();
    re::exportToKtxWithRGBA8ToASTCCompression(v76, v77, v78, v79, v80, v81);
    return;
  }

  if (!*a2)
  {
    v37 = *buf;
    v38 = v99;
    *a6 = 0;
    *(a6 + 8) = v37;
    *(a6 + 24) = v38;
    return;
  }

  v87 = [*a2 mipmapLevelCount];
  v90 = re::internal::getFaceOrArrayLength(a2);
  *buf = *a2;
  *&buf[8] = 0;
  re::internal::synchronizeTextureMipmaps(buf, v13);
  if (*&buf[8] != -1)
  {
    (off_1F5D020F0[*&buf[8]])(&v128, buf);
  }

  (*(*a1 + 24))(a1, 0);
  v15 = v124;
  if ((v124 & 1) == 0)
  {
    v39 = *re::pipelineLogObjects(v14);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Failed to write KTX header to output stream", buf, 2u);
    }

    *a6 = v15;
    v40 = v127;
    *(a6 + 8) = v125;
    *(a6 + 32) = v40;
    *(a6 + 16) = v126;
    v125 = 0;
    v126 = 0uLL;
LABEL_31:
    v41 = v125;
    if (v125 && (v126 & 1) != 0)
    {
      goto LABEL_41;
    }

    return;
  }

  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  *buf = 0u;
  v99 = 0u;
  *&v128 = *a2;
  DWORD2(v128) = 0;
  if (DWORD2(v128) != -1)
  {
    v16 = (off_1F5D020F0[DWORD2(v128)])(v120, &v128);
  }

  v17 = v104;
  if (!HIDWORD(v104))
  {
    v93 = a6;
    LOBYTE(v120[1]) = 0;
    *&v120[0] = &unk_1F5CCF6E8;
    *(&v120[0] + 1) = "re::ExportToKtxAllocator";
    memset(v121, 0, sizeof(v121));
    v122 = 0;
    v123 = 0x7FFFFFFFLL;
    v42 = [*a2 storageMode];
    v115 = [*a2 device];
    v116 = 0;
    v117 = 65793;
    v118 = 1;
    v119 = 0;
    memset(v114, 0, sizeof(v114));
    v85 = v115;
    *buf = v85;
    *&buf[8] = @"exportToKtx staging buffer";
    v99 = 0uLL;
    LODWORD(v100) = 1;
    *(&v100 + 1) = 0;
    *&v101 = 0;
    v106 = 0;
    v107 = 0;
    v105 = 0;
    v108 = 0;
    v112 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    CFRetain(@"exportToKtx staging buffer");
    v43 = v42;
    if (v42 == 2)
    {
      *&v128 = 0x3ADDA33AE87CF491;
      *(&v128 + 1) = "exportToKtxQueue";
      re::internal::BlitCommandQueue::init(v114, &v115, &v128);
      v44 = 0;
    }

    else
    {
      *&v128 = (*(**(&v120[1] + 1) + 32))(*(&v120[1] + 1), v17, 0);
      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(v121, &v128);
      v44 = v128;
    }

    if (v87 < 1)
    {
LABEL_88:
      *v93 = 1;
      goto LABEL_94;
    }

    v47 = 0;
    v84 = v87 & 0x7FFFFFFF;
    v48 = 0uLL;
    while (1)
    {
      v134 = 0;
      v132 = v48;
      v133 = v48;
      v130 = v48;
      v131 = v48;
      v128 = v48;
      v129 = v48;
      *v135 = *a2;
      *&v135[8] = 0;
      if (*&v135[8] != -1)
      {
        (off_1F5D020F0[*&v135[8]])(v95, v135);
      }

      v49 = v134;
      v97 = v134;
      v50 = [*a2 textureType];
      v51 = v97;
      if (v50 == 3)
      {
        v51 = v97 * v90;
        v97 *= v90;
      }

      v52 = v90;
      if (v51 >= 0x18000)
      {
        v52 = 0x20000 / v49 <= 1 ? 1 : 0x20000 / v49;
        if (v47)
        {
          (*(*a1 + 24))(a1, 0);
        }
      }

      v53 = (*(*a1 + 16))(a1, &v97, 4);
      if (v53 != 4)
      {
        break;
      }

      v86 = *(&v133 + 1);
      v89 = v133;
      v94 = 0;
      if (v90)
      {
        v54 = 0;
        v55 = v49;
        v56 = v52;
        while (1)
        {
          if (!--v56)
          {
            if (v54)
            {
              (*(*a1 + 24))(a1, 0);
              v54 = v94;
            }

            v57 = v90 - v54;
            if (v57 >= v52 + (v52 >> 1))
            {
              v56 = v52;
            }

            else
            {
              v56 = v57;
            }
          }

          if (v43 == 2)
          {
            v58 = re::internal::BlitCommandQueue::blitCommandEncoder(v114);
            if ([*a2 textureType] == 7)
            {
              v59 = 0;
            }

            else
            {
              v59 = &v94;
            }

            v60 = re::internal::TextureInMetalBuffers::addTextureToBufferCommands(buf, a2, v47, v58, v59, &v133, 1);
            if ((v60 & 1) == 0)
            {
              v69 = *v135;
              v70 = *&v135[16];
              v71 = *&v135[24];
              *v93 = 0;
              *(v93 + 8) = v69;
              *(v93 + 24) = v70;
              *(v93 + 32) = v71;
              goto LABEL_94;
            }

            re::internal::BlitCommandQueue::commit(v114);
            re::internal::BlitCommandQueue::waitUntilCompleted(v135, v114);
            if (v135[0])
            {
              if ((v112 & 1) == 0)
              {
                re::internal::TextureInMetalBuffers::createTextureData(buf, 0);
              }

              if (v113)
              {
                v62 = 1;
                v44 = v113;
              }

              else
              {
                v62 = 0;
                v64 = *v95;
                v65 = *&v95[16];
                v66 = v96;
                *v93 = 0;
                *(v93 + 8) = v64;
                *(v93 + 24) = v65;
                *(v93 + 32) = v66;
              }
            }

            else
            {
              re::DynamicString::DynamicString(v95, &v135[8]);
              v62 = 0;
              *v93 = 0;
              *(v93 + 8) = *v95;
              *(v93 + 32) = v96;
              *(v93 + 16) = *&v95[8];
            }

            if (v135[0] & 1) == 0 && *&v135[8] && (v135[16])
            {
              (*(**&v135[8] + 40))();
            }

            if ((v62 & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          else
          {
            bzero(v44, v55);
            v63 = *a2;
            memset(v135, 0, 24);
            *&v135[24] = v128;
            v136 = v129;
            [v63 getBytes:v44 bytesPerRow:v89 bytesPerImage:v86 fromRegion:v135 mipmapLevel:v47 slice:v94];
          }

          v67 = (*(*a1 + 16))(a1, v44, v55);
          if (v67 != v55)
          {
            v68 = "Failed to write KTX image to output stream";
            goto LABEL_90;
          }

          v54 = v94 + 1;
          v94 = v54;
          v48 = 0uLL;
          if (v54 >= v90)
          {
            goto LABEL_87;
          }
        }
      }

      v48 = 0uLL;
LABEL_87:
      if (++v47 == v84)
      {
        goto LABEL_88;
      }
    }

    v68 = "Failed to write KTX image size to output stream";
LABEL_90:
    re::DynamicString::DynamicString(v95, v135);
    *v93 = 0;
    *(v93 + 8) = *v95;
    *(v93 + 32) = v96;
    *(v93 + 16) = *&v95[8];
    if (*v135 && (v135[8] & 1) != 0)
    {
      (*(**v135 + 40))();
    }

LABEL_94:
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(buf);
    re::internal::BlitCommandQueue::~BlitCommandQueue(v114, v72);

    re::AutoFreeAllocator::~AutoFreeAllocator(v120);
    if (v124)
    {
      return;
    }

    goto LABEL_31;
  }

  re::DynamicString::DynamicString(v120, &v128);
  *a6 = 0;
  v18 = *(&v120[1] + 1);
  *(a6 + 8) = *&v120[0];
  *(a6 + 32) = v18;
  *(a6 + 16) = *(v120 + 8);
LABEL_39:
  v41 = v128;
  if (v128 && (BYTE8(v128) & 1) != 0)
  {
LABEL_41:
    (*(*v41 + 40))();
  }
}

uint64_t re::exportToKtxWithRGBA8ToASTCCompression(const char *a1, re::TextureData *this, re *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = *MEMORY[0x1E69E9840];
  *&v71 = a4;
  *(&v71 + 1) = a5;
  if (!re::TextureData::isValid(this))
  {
LABEL_41:
    LOBYTE(MTLPixelFormat) = 0;
    return MTLPixelFormat & 1;
  }

  re::TextureData::pixelFormat(this);
  if (((v11 - 10) > 0x3D || ((1 << (v11 - 10)) & 0x3000000000008003) == 0) && v11 != 115)
  {
    v41 = *re::pipelineLogObjects(v11);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v48 = v41;
      re::TextureData::pixelFormat(this);
      *buf = 67109120;
      *&buf[4] = v49;
      _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "Unsupported metal format for ASTC compression: %d", buf, 8u);
    }

    goto LABEL_41;
  }

  v12 = HIDWORD(a4);
  if (*(this + 2))
  {
    v13 = 0;
  }

  else
  {
    v13 = [*this device];
  }

  v14 = v13;
  v66 = v14;
  v67 = 0;
  v68 = 65793;
  v69 = 1;
  v70 = 0;
  if (!v12)
  {
    re::TextureData::pixelFormat(this);
    LODWORD(v12) = re::getASTCDefaultMode(v15);
    DWORD1(v71) = v12;
  }

  MTLPixelFormat = re::getMTLPixelFormat(a4, v12);
  if (MTLPixelFormat)
  {
    v55 = v14;
    FaceOrArrayLength = re::internal::getFaceOrArrayLength(this, v16);
    re::TextureData::mipmapLevelCount(this);
    v20 = v19;
    re::internal::synchronizeTextureMipmaps(this, v21);
    v22 = re::TextureData::textureType(this);
    v23 = re::TextureData::width(this);
    v24 = re::TextureData::height(this);
    v25 = re::TextureData::depth(this);
    v54 = FaceOrArrayLength;
    if (v62[0])
    {
      re::logTextureCompressionInfo("exportToKtxWithRGBA8ToASTCCompression", this, &v71);
      v27 = re::TextureData::textureType(this);
      v59 = 0;
      memset(v60, 0, sizeof(v60));
      v58[2] = 0;
      v58[0] = 0;
      v58[1] = 8;
      v61 = dispatch_get_global_queue(21, 0);
      if (v20 < 1)
      {
LABEL_36:
        LOBYTE(MTLPixelFormat) = 1;
        v14 = v55;
      }

      else
      {
        v53 = MTLPixelFormat;
        v28 = 0;
        LOBYTE(MTLPixelFormat) = 0;
        v29 = v20 & 0x7FFFFFFF;
        v30 = 0uLL;
        v51 = v29;
        while (1)
        {
          v86 = 0;
          v84 = v30;
          v85 = v30;
          v82 = v30;
          v83 = v30;
          *buf = v30;
          v81 = v30;
          if (v27 == 7)
          {
            v31 = v81;
          }

          else
          {
            v31 = v54;
          }

          if (v27 == 7)
          {
            v32 = v86;
          }

          else
          {
            v32 = v54 * DWORD2(v85);
          }

          v33 = re::TextureData::textureType(this);
          v34 = DWORD2(v85);
          if (v33 != 5)
          {
            v34 = v32;
          }

          v57 = v34;
          v35 = (*(*a1 + 16))(a1, &v57, 4);
          if (v35 != 4)
          {
            v45 = *re::pipelineLogObjects(v35);
            v14 = v55;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *v75 = 0;
              _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "Failed to write KTX image size to output stream", v75, 2u);
            }

            goto LABEL_61;
          }

          v56 = 0;
          if (v31)
          {
            break;
          }

          v39 = 0;
LABEL_34:
          v30 = 0uLL;
          if (v39 != v32)
          {
            v46 = *re::pipelineLogObjects(v35);
            v14 = v55;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              *v75 = 67109376;
              v76 = v56;
              LOWORD(v77) = 1024;
              *(&v77 + 2) = v32;
              _os_log_fault_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_FAULT, "Unexpected buffer size for ASTC-compressed texture (got %u, expected %u)", v75, 0xEu);
            }

            goto LABEL_61;
          }

          LOBYTE(MTLPixelFormat) = ++v28 >= v29;
          if (v28 == v29)
          {
            goto LABEL_36;
          }
        }

        v52 = MTLPixelFormat;
        v36 = 0;
        while (1)
        {
          v37 = v27 == 7 ? 0 : v36;
          v38 = v27 == 7 ? v36 : 0;
          v74[0] = &unk_1F5D02168;
          v74[1] = &v56;
          v74[2] = a1;
          v74[3] = v74;
          re::copyTextureBytesToASTCCompression(&v66, this, &v71, a6, v28, v37, v38, v58, v75, v74);
          v35 = std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](v74);
          if ((v75[0] & 1) == 0)
          {
            break;
          }

          if (v31 == ++v36)
          {
            v39 = v56;
            LOBYTE(MTLPixelFormat) = v52;
            v29 = v51;
            goto LABEL_34;
          }
        }

        v43 = *re::pipelineLogObjects(v35);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          if (v78)
          {
            v50 = *&v79[7];
          }

          else
          {
            v50 = v79;
          }

          *v72 = 136315138;
          v73 = v50;
          _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, "Failed to write KTX image: %s", v72, 0xCu);
        }

        v14 = v55;
        LOBYTE(MTLPixelFormat) = v52;
        if (v75[0] & 1) == 0 && v77 && (v78)
        {
          (*(*v77 + 40))();
        }
      }

LABEL_61:
      if (*&v60[4])
      {
        astcenc_context_free(*&v60[4]);
        *&v60[4] = 0;
      }
    }

    else
    {
      v42 = *re::pipelineLogObjects(v26);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR) && ((v64 & 1) != 0 ? (v44 = *&v65[7]) : (v44 = v65), *buf = 136315138, *&buf[4] = v44, _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Failed to write KTX header to output stream: %s", buf, 0xCu), (v62[0] & 1) != 0))
      {
        LOBYTE(MTLPixelFormat) = 0;
        v14 = v55;
      }

      else
      {
        v14 = v55;
        if (v63 && (v64 & 1) != 0)
        {
          (*(*v63 + 40))();
        }

        LOBYTE(MTLPixelFormat) = 0;
      }
    }

    v40 = v67;
  }

  else
  {
    v40 = 0;
  }

  return MTLPixelFormat & 1;
}

void re::anonymous namespace::writeKtxHeader(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, re *a5, unsigned int a6, unsigned int a7, int a8, int a9, int a10, int a11, uint64_t a12, unsigned int a13)
{
  v14 = a4;
  v15 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v44 = 0xBB31312058544BABLL;
  v45 = 169478669;
  v46 = 67305985;
  v18 = &xmmword_1E30FD278;
  v19 = 8432;
  while (*(v18 - 5) != a4)
  {
    v18 = (v18 + 68);
    v19 -= 68;
    if (!v19)
    {
      re::DynamicString::format(&v35, "Unsupported pixel format: %d", a2, a4);
      goto LABEL_5;
    }
  }

  v47 = *v18;
  v48 = *(v18 + 4);
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    goto LABEL_11;
  }

  if (a3 == 7)
  {
    goto LABEL_12;
  }

  if (a3 == 5)
  {
LABEL_11:
    a8 = 0;
LABEL_12:
    v49 = __PAIR64__(a7, a6);
    v50 = a8;
    LOBYTE(v37) = 0;
    v35 = &unk_1F5CCF6E8;
    v36 = "re::ExportToKtxAllocator";
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    v41 = 0x7FFFFFFFLL;
    v34 = 0;
    StandardKtxMetadata = re::makeStandardKtxMetadata(v14, a5, 0, &v35, &v34);
    v21 = StandardKtxMetadata;
    if (a12)
    {
      v22 = a13;
    }

    else
    {
      v22 = 0;
    }

    v23 = StandardKtxMetadata + v22;
    if (v15 == 3)
    {
      v24 = a9;
    }

    else
    {
      v24 = 0;
    }

    if (v15 == 3)
    {
      v25 = 1;
    }

    else
    {
      v25 = a9;
    }

    v51 = v24;
    v52 = v25;
    v53 = a11;
    v54 = (v23 + 3) & 0xFFFFFFFC;
    v26 = (*(*a2 + 16))(a2, &v44, 64);
    v27 = v26 == 64;
    if (v21)
    {
      v28 = v26;
      v26 = (*(*a2 + 16))(a2, v34, v21);
      v27 = v28 == 64 && v26 == v21;
    }

    if (a12)
    {
      if (a13 >= 1)
      {
        v26 = (*(*a2 + 16))(a2, a12, a13);
        if (v26 != a13)
        {
          v27 = 0;
        }
      }
    }

    if ((v23 & 3) != 0)
    {
      *v42 = 0;
      v26 = (*(*a2 + 16))(a2, v42, v23 & 3);
      if (v26 == (v23 & 3) && v27)
      {
        goto LABEL_37;
      }
    }

    else if (v27)
    {
LABEL_37:
      *a1 = 1;
LABEL_40:
      re::AutoFreeAllocator::~AutoFreeAllocator(&v35);
      return;
    }

    v31 = *v42;
    v32 = *&v42[16];
    v33 = v43;
    *a1 = 0;
    *(a1 + 8) = v31;
    *(a1 + 24) = v32;
    *(a1 + 32) = v33;
    goto LABEL_40;
  }

  re::DynamicString::format(&v35, "Unsupported texture type: %d", a2, a3);
LABEL_5:
  re::DynamicString::DynamicString(v42, &v35);
  *a1 = 0;
  *(a1 + 8) = *v42;
  *(a1 + 32) = v43;
  *(a1 + 16) = *&v42[8];
  if (v35)
  {
    if (v36)
    {
      (*(*v35 + 40))();
    }
  }
}

void re::anonymous namespace::ktxMipInfo(void *a1, id *this, uint64_t a3, id a4)
{
  v4 = a4;
  if (*(this + 2))
  {
    v7 = 0;
  }

  else
  {
    v7 = [*this device];
  }

  v8 = v7;
  v9 = v7;
  if (!v4)
  {
    re::TextureData::pixelFormat(this);
  }

  re::TextureData::width(this);
  re::TextureData::height(this);
  re::TextureData::depth(this);
  if (!*(this + 2))
  {
    [*this sampleCount];
  }

  re::ktxMipInfo(&v9, a1);
}

uint64_t re::shouldASTCCompress(re::TextureData *a1, int a2, _DWORD *a3)
{
  result = re::TextureData::isValid(a1);
  if (result)
  {
    result = 0;
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return result;
        }

        if (!*a3)
        {
          return 0;
        }
      }

      re::TextureData::pixelFormat(a1);
      if (re::getASTCBlockSize(v8))
      {
        return 0;
      }

      re::TextureData::pixelFormat(a1);
      v11 = v10;
      result = 1;
      if (((v11 - 10) > 0x3D || ((1 << (v11 - 10)) & 0x3000000000008003) == 0) && v11 != 115)
      {
        return 0;
      }
    }

    else if (!a2 || a2 == 2)
    {
      re::TextureData::pixelFormat(a1);
      if (v7 == 70)
      {
        return 1;
      }

      else
      {
        re::TextureData::pixelFormat(a1);
        return v9 == 71;
      }
    }
  }

  return result;
}

uint64_t re::estimateExportedTextureSizeWithCompressionOptions(id *a1, re::TextureData *this, int a3, unsigned int *a4)
{
  if (!re::TextureData::isValid(this))
  {
    return 0;
  }

  re::TextureData::pixelFormat(this);
  if (re::shouldASTCCompress(this, a3, a4) && a3 == 4)
  {
    v9 = *a4;
    ASTCDefaultMode = a4[1];
    if (!ASTCDefaultMode)
    {
      re::TextureData::pixelFormat(this);
      ASTCDefaultMode = re::getASTCDefaultMode(v10);
    }

    re::getMTLPixelFormat(v9, ASTCDefaultMode);
  }

  re::TextureData::mipmapLevelCount(this);
  if (!v12)
  {
    return 64;
  }

  v13 = 0;
  v11 = 64;
  do
  {
    v20 = 0;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    re::TextureData::width(this);
    re::TextureData::height(this);
    re::TextureData::depth(this);
    re::ktxMipInfo(a1, v18);
    if (re::TextureData::textureType(this) == 3)
    {
      v14 = *(&v19 + 1);
      v15 = re::TextureData::arrayLength(this) * v14;
    }

    else if (re::TextureData::textureType(this) == 5)
    {
      v15 = 6 * *(&v19 + 1);
    }

    else
    {
      v15 = v20;
    }

    v11 += v15;
    ++v13;
    re::TextureData::mipmapLevelCount(this);
  }

  while (v13 < v16);
  return v11;
}

uint64_t re::canExportToKtx(re *this, const re::TextureData *a2)
{
  v3 = re::TextureData::textureType(this);
  if (v3 < 0xA)
  {
    return (0xACu >> v3) & 1;
  }

  re::TextureData::textureType(this);
  v5 = re::TextureData::textureType(this);
  re::internal::assertLog(5, v6, "assertion failure: '%s' (%s:line %i) Unexpected texture type: %u.", "!Unreachable code", "canExportToKtx", 550, v5);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected texture type: %u.", v7);
  __break(1u);
  return result;
}

uint64_t re::copySourceKTX(re *a1, uint64_t a2)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = re::globalAllocators(a1)[2];
  v15[0] = &unk_1F5D02110;
  v15[1] = a2;
  v15[3] = v4;
  v15[4] = v15;
  (*(*v3 + 48))(&v11, v3, v15);
  v5 = re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v15);
  v6 = v11;
  if ((v11 & 1) == 0)
  {
    v7 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = re::WrappedError::localizedDescription(&v12);
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Failed to read asset blob source: '%s'.", buf, 0xCu);
    }

    if ((v11 & 1) == 0)
    {
    }
  }

  return v6;
}

void re::internal::Callable<re::copySourceKTX(re::SharedPtr<re::InputStreamSource> &,re::StreamWriter &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = (*(*a2 + 104))(a2, 64, &v49);
  if (v6)
  {
    v34 = a3;
    v41 = 0;
    v38[1] = 0;
    v39 = 0;
    v38[0] = 0;
    v40 = 0;
    if (v49 == 0xBB31312058544BABLL && v50 == 169478669 && v51 == 67305985)
    {
      v36 = v58;
      if (v57 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v57;
      }

      if (v56)
      {
        v11 = v56;
      }

      else
      {
        v11 = v10;
      }

      v12 = &xmmword_1E30FD278 + 3;
      v13 = 8432;
      while (v52 != *(v12 - 3) || v54 != *(v12 - 1) || v55 != *v12)
      {
        v12 += 17;
        v13 -= 68;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v32 = *(v12 - 2);
      if (v53 != v32)
      {
        v33 = *re::pipelineLogObjects(v6);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110144;
          *&buf[4] = v52;
          *&buf[8] = 1024;
          *&buf[10] = v54;
          *&buf[14] = 1024;
          LODWORD(v43) = v55;
          WORD2(v43) = 1024;
          *(&v43 + 6) = v32;
          WORD5(v43) = 1024;
          HIDWORD(v43) = v53;
          _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "KTX with type 0x%x, format 0x%x, internal format 0x%x has unexpected type size (expected: %u, actual: %u)", buf, 0x20u);
        }
      }

LABEL_24:
      if (v36)
      {
        v14 = 0;
        v15 = v59 + 68;
        if (v11 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11;
        }

        v35 = v16;
        while (1)
        {
          v48 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          *buf = 0u;
          v43 = 0u;
          *v37 = 0;
          re::ktxMipInfo(v37, buf);
          v18 = v48;
          if (HIDWORD(v48))
          {
            break;
          }

          if (v48 <= 0x17FFF)
          {
            if (v48 * v11 <= 0x17FFF)
            {
              goto LABEL_51;
            }

            v20 = 0x20000 / v48;
            if (0x20000 / v48 >= v11)
            {
              v20 = v11;
            }

            if (v20 <= 1)
            {
              v21 = 1;
            }

            else
            {
              v21 = v20;
            }

            if (v11 != v21 >> 1)
            {
              v22 = 0;
              do
              {
                v23 = v11 - v22;
                if (v21 < v11 - v22)
                {
                  v23 = v21;
                }

                *v37 = v15 + v23 * v18;
                re::DynamicArray<unsigned long>::add(v38, v37);
                v22 += v21;
              }

              while (v22 < v11 - (v21 >> 1));
            }
          }

          else
          {
            v19 = v35;
            do
            {
              *v37 = v15 + v18;
              re::DynamicArray<unsigned long>::add(v38, v37);
              v15 = 0;
              --v19;
            }

            while (v19);
          }

          ++v14;
          v15 = 4;
          if (v14 == v36)
          {
            goto LABEL_51;
          }
        }

        v25 = *re::pipelineLogObjects(v17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v37 = 0;
          _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Overflow when computing image block bytes during KTX load", v37, 2u);
        }

        v39 = 0;
        ++v40;
      }
    }

LABEL_51:
    if (v39)
    {
      v26 = *v41;
    }

    else
    {
      v26 = -1;
    }

    (*(**(a1 + 8) + 24))(*(a1 + 8), 0);
    (*(**(a1 + 8) + 16))(*(a1 + 8), &v49, 64);
    *buf = 0;
    *v37 = 0;
    if ((*(*a2 + 16))(a2, buf, v37))
    {
      v27 = 0;
      do
      {
        v28 = *buf;
        v29 = *v37;
        if (v26 <= *v37)
        {
          v31 = v27 + 1;
          do
          {
            v27 = v31;
            if (v26)
            {
              (*(**(a1 + 8) + 16))(*(a1 + 8), v28, v26);
              *v37 -= v26;
              v28 += v26;
            }

            if (v27 >= v39)
            {
              v26 = -1;
            }

            else
            {
              v26 = v41[v27];
            }

            (*(**(a1 + 8) + 24))(*(a1 + 8), 0);
            v29 = *v37;
            v31 = v27 + 1;
          }

          while (v26 <= *v37);
          v30 = *v37;
        }

        else
        {
          v30 = *v37;
        }

        if (v29 >= 1)
        {
          (*(**(a1 + 8) + 16))(*(a1 + 8), v28, v30);
          v26 -= *v37;
        }
      }

      while (((*(*a2 + 16))(a2, buf, v37) & 1) != 0);
    }

    *v34 = 1;
    if (v38[0])
    {
      if (v41)
      {
        (*(*v38[0] + 40))();
      }
    }
  }

  else
  {
    re::WrappedError::make(buf, @"kRETexturePipelineErrorDomain", 0, "Could not load source KTX data for pass through");
    v24 = *buf;
    *buf = 0;
    *a3 = 0;
    *(a3 + 8) = v24;
  }
}

void *re::internal::Callable<re::copySourceKTX(re::SharedPtr<re::InputStreamSource> &,re::StreamWriter &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02110;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::copySourceKTX(re::SharedPtr<re::InputStreamSource> &,re::StreamWriter &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02110;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0,std::allocator<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D02168;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0,std::allocator<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a2 + 8))(a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *v7 += v6;
  v9 = (*(*a2 + 16))(a2);
  v10 = (*(*a2 + 8))(a2);
  v11 = (*(*v8 + 16))(v8, v9, v10);
  v12 = (*(*a2 + 8))(a2);
  if (v11 == v12)
  {
    *a3 = 1;
  }

  else
  {
    result = v16;
    v14 = v17;
    v15 = v18;
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
  }

  return result;
}

uint64_t std::__function::__func<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0,std::allocator<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::internal::addAttributesByName(uint64_t this, uint64_t *a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      v6 = re::internal::GeomAttributeContainer::attributeByIndex(v4, i);
      v7 = *(v6 + 8);
      v19 = v7;
      this = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a2, &v19);
      if (this == -1)
      {
        if (!a2[7])
        {
        }

        v8 = a2[4];
        if (!v8 || a2[2] > (8 * v8))
        {
          re::HashBrown<char const*,re::GeomAttribute *,re::internal::HashName,re::internal::HashName,void,false>::resize(a2);
        }

        v9 = re::Hash<re::DynamicString>::operator()(&v20, v7) % (a2[2] >> 4);
        while (1)
        {
          v10 = *a2;
          v11 = re::Hash<re::DynamicString>::operator()(&v21, v7);
          v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_1E304FAD0)))), 0x3830282018100800)));
          if (v12 < 0x40)
          {
            break;
          }

          if (++v9 == a2[2] >> 4)
          {
            v9 = 0;
          }

          if (v9 == re::Hash<re::DynamicString>::operator()(&v23, v7) % (a2[2] >> 4))
          {
            re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
            this = _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
            __break(1u);
            return this;
          }
        }

        v14 = v10 + 16 * v9;
        v15 = *(v14 + v12);
        *(v14 + v12) = v11 & 0x7F;
        v16 = 16 * (v12 + 16 * v9);
        *(a2[1] + v16) = v7;
        *(a2[1] + v16 + 8) = v6;
        if (v15 == 255)
        {
          v17 = -1;
        }

        else
        {
          v17 = 0;
        }

        v18.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v18.i64[1] = v17;
        *(a2 + 3) = vaddq_s64(*(a2 + 3), v18);
        this = re::Hash<re::DynamicString>::operator()(&v22, *(a2[1] + v16));
        a2[5] ^= this;
      }
    }
  }

  return this;
}

double re::internal::GeomAttributeManager::copy(re::internal::GeomAttributeContainer *this, re::internal::GeomAttributeManager *a2)
{
  if (a2 != this)
  {
    re::internal::GeomAttributeContainer::copy(this, a2);
    re::internal::GeomAttributeContainer::copy((this + 112), (a2 + 112));
    re::internal::GeomAttributeContainer::copy((this + 224), (a2 + 224));
    re::internal::GeomAttributeContainer::copy((this + 336), (a2 + 336));
    re::internal::GeomAttributeContainer::copy((this + 448), (a2 + 448));

    return re::internal::GeomAttributeManager::copyAttributeTable(this, a2);
  }

  return result;
}

double re::internal::GeomAttributeManager::copyAttributeTable(re::internal::GeomAttributeManager *this, re::internal::GeomAttributeManager *a2)
{
  *(a2 + 72) = 0;
  ++*(a2 + 146);
  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(a2 + 75);
  memset(v10, 0, sizeof(v10));
  re::internal::addAttributesByName(a2, v10);
  re::internal::addAttributesByName(a2 + 112, v10);
  re::internal::addAttributesByName(a2 + 224, v10);
  re::internal::addAttributesByName(a2 + 336, v10);
  re::internal::addAttributesByName(a2 + 448, v10);
  if (*(this + 72))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v9 = *(*(*(this + 74) + 8 * v4) + 8);
      v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(v10, &v9);
      re::internal::GeomAttributeManager::addAttributeToTable(a2, *(*(&v10[0] + 1) + 16 * v6 + 8));
      v4 = v5;
    }

    while (*(this + 72) > v5++);
  }

  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v10);
  return re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v10);
}

re::internal::GeomAttributeManager *re::internal::GeomAttributeManager::GeomAttributeManager(re::internal::GeomAttributeManager *this)
{
  v2 = re::internal::GeomAttributeContainer::GeomAttributeContainer(this, 0);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(v2 + 112, 1);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 224, 2);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 336, 3);
  v3 = re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 448, 4);
  *(this + 74) = 0;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  *(this + 146) = 0;
  v4 = re::DynamicArray<float *>::setCapacity(this + 70, 1uLL);
  ++*(this + 146);
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *this = 1;
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 5);
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      (*(*v8 + 80))(v8, *this);
      v7 -= 8;
    }

    while (v7);
  }

  return this;
}

re::internal::GeomAttributeManager *re::internal::GeomAttributeManager::GeomAttributeManager(re::internal::GeomAttributeManager *this, const re::internal::GeomAttributeManager *a2)
{
  v4 = re::internal::GeomAttributeContainer::GeomAttributeContainer(this, 0);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(v4 + 112, 1);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 224, 2);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 336, 3);
  v5 = re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 448, 4);
  *(this + 74) = 0;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  *(this + 146) = 0;
  v6 = re::DynamicArray<float *>::setCapacity(this + 70, 1uLL);
  ++*(this + 146);
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  re::internal::GeomAttributeManager::copy(a2, this);
  return this;
}

void re::internal::GeomAttributeManager::~GeomAttributeManager(re::internal::GeomAttributeManager *this)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 600);
  re::DynamicArray<unsigned long>::deinit(this + 560);
  re::internal::GeomAttributeContainer::clearAttributes((this + 448), v2);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 496);
  re::DynamicArray<unsigned long>::deinit(this + 456);
  re::internal::GeomAttributeContainer::clearAttributes((this + 336), v3);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 384);
  re::DynamicArray<unsigned long>::deinit(this + 344);
  re::internal::GeomAttributeContainer::clearAttributes((this + 224), v4);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 272);
  re::DynamicArray<unsigned long>::deinit(this + 232);
  re::internal::GeomAttributeContainer::clearAttributes((this + 112), v5);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::internal::GeomAttributeContainer::clearAttributes(this, v6);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

_anonymous_namespace_ *re::internal::GeomAttributeManager::addAttributeToTable(_anonymous_namespace_ *this, re::GeomAttribute *a2)
{
  v5 = a2;
  if (a2)
  {
    v2 = this;
    v4 = *(a2 + 1);
    v3 = *(this + 72);
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(this + 75, &v4, &v3);
    return re::DynamicArray<re::TransitionCondition *>::add((v2 + 560), &v5);
  }

  return this;
}

re::GeomAttribute *re::internal::GeomAttributeManager::addAttribute(re::internal::GeomAttributeManager *a1, char *a2, int a3, uint64_t a4)
{
  v4 = a4;
  v8 = re::internal::GeomAttributeManager::attributeByName(a1, a2);
  if (v8)
  {
    v10 = v8;
    if (*(v8 + 16) != a3 || *(v8 + 17) != v4)
    {
      return 0;
    }

    return v10;
  }

  if (a3 <= 1)
  {
    v11 = a1;
    if (!a3)
    {
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      v11 = (a1 + 112);
      goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v11 = (a1 + 224);
        goto LABEL_15;
      case 3:
        v11 = (a1 + 336);
        goto LABEL_15;
      case 4:
        v11 = (a1 + 448);
LABEL_15:
        v10 = re::internal::GeomAttributeContainer::addAttribute(v11, a2, v4);
        re::internal::GeomAttributeManager::addAttributeToTable(a1, v10);
        return v10;
    }
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Unexpected attribute rate", "!Unreachable code", "containerByRate", 158);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected attribute rate");
  __break(1u);
  return result;
}

uint64_t re::internal::GeomAttributeManager::deleteAttribute(re::internal::GeomAttributeManager *this, char *a2)
{
  v3 = this;
  v36 = *MEMORY[0x1E69E9840];
  v21 = a2;
  result = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 75, &v21);
  if (result == -1)
  {
    return result;
  }

  v5 = *(v3 + 76) + 16 * result;
  v8 = *(v5 + 8);
  v6 = (v5 + 8);
  v7 = v8;
  v9 = *(v3 + 72);
  if (v9 <= v8)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v15, &v22, &v31, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v10 = *(*(*(v3 + 74) + 8 * v7) + 16);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove(v3 + 600, &v21);
  v11 = *v6;
  if (--v9 > v11)
  {
    v2 = *(v3 + 72);
    if (v2 > v9)
    {
      *(*(v3 + 74) + 8 * v11) = *(*(v3 + 74) + 8 * v9);
      *&v31 = *(*(*(v3 + 74) + 8 * v11) + 8);
      re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addOrReplace(v3 + 75, &v31, v6);
      goto LABEL_6;
    }

LABEL_21:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
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
    v28 = v9;
    v29 = 2048;
    v30 = v2;
    _os_log_send_and_compose_impl(v18, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
  }

LABEL_6:
  re::DynamicArray<double>::resize(v3 + 560, v9);
  if (v10 <= 1)
  {
    if (v10)
    {
      v3 = (v3 + 112);
    }
  }

  else
  {
    switch(v10)
    {
      case 2:
        v3 = (v3 + 224);
        break;
      case 3:
        v3 = (v3 + 336);
        break;
      case 4:
        v3 = (v3 + 448);
        break;
      default:
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Unexpected attribute rate", "!Unreachable code", "containerByRate", 158);
        result = _os_crash("assertion failure: (!Unreachable code) Unexpected attribute rate");
        __break(1u);
        return result;
    }
  }

  return re::internal::GeomAttributeContainer::deleteAttribute(v3, v21);
}

BOOL re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove(uint64_t a1, char **a2)
{
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1, a2);
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
    *(a1 + 40) ^= re::Hash<re::DynamicString>::operator()(&v14, *(*(a1 + 8) + 16 * v3));
    v10.i64[0] = -1;
    v10.i64[1] = v8;
    v11 = vaddq_s64(*(a1 + 24), v10);
    *(a1 + 24) = v11;
    v12 = *(a1 + 16);
    if (v12 >= 0x11 && v11.i64[0] < v12 >> 2)
    {
      re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

unint64_t re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addOrReplace(uint64_t *a1, char **a2, _DWORD *a3)
{
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = a1[1] + 16 * v6;
    *(v7 + 8) = *a3;
    return v7 + 8;
  }
}

uint64_t re::internal::GeomAttributeManager::attributeCount(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return *(a1 + 24);
    }

    if (a2 == 1)
    {
      a1 += 112;
      return *(a1 + 24);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        a1 += 224;
        return *(a1 + 24);
      case 3:
        a1 += 336;
        return *(a1 + 24);
      case 4:
        a1 += 448;
        return *(a1 + 24);
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute rate", "!Unreachable code", "containerByRate", 135, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected attribute rate");
  __break(1u);
  return result;
}

uint64_t re::internal::GeomAttributeManager::attributeByIndex(re::internal::GeomAttributeManager *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 72);
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
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 74) + 8 * a2);
}

{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 72);
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
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 74) + 8 * a2);
}

uint64_t re::internal::GeomAttributeManager::attributeByName(re::internal::GeomAttributeManager *this, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v19[0] = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 75, v19);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*(this + 76) + 16 * v3 + 8);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(this + 72);
  if (v5 <= v4)
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
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 74) + 8 * v4);
}

{
  v20 = *MEMORY[0x1E69E9840];
  *&v19[0] = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 75, v19);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*(this + 76) + 16 * v3 + 8);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(this + 72);
  if (v5 <= v4)
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
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 74) + 8 * v4);
}

uint64_t re::internal::GeomAttributeManager::attributeByIndex(re::internal::GeomAttributeContainer *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a1 = (a1 + 112);

        return re::internal::GeomAttributeContainer::attributeByIndex(a1, a2);
      }

      goto LABEL_20;
    }

LABEL_14:

    return re::internal::GeomAttributeContainer::attributeByIndex(a1, a2);
  }

  switch(a3)
  {
    case 2:
      a1 = (a1 + 224);
      goto LABEL_14;
    case 3:
      a1 = (a1 + 336);

      return re::internal::GeomAttributeContainer::attributeByIndex(a1, a2);
    case 4:
      a1 = (a1 + 448);

      return re::internal::GeomAttributeContainer::attributeByIndex(a1, a2);
  }

LABEL_20:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute rate", "!Unreachable code", "containerByRate", 135, v3, v4);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected attribute rate");
  __break(1u);
  return result;
}

int8x16_t **re::internal::GeomAttributeManager::clear(int8x16_t **this, re::GeomAttribute *a2)
{
  *this = 0;
  re::internal::GeomAttributeContainer::clearAttributes(this, a2);
  *(this + 28) = 0;
  re::internal::GeomAttributeContainer::clearAttributes((this + 14), v3);
  *(this + 56) = 0;
  re::internal::GeomAttributeContainer::clearAttributes((this + 28), v4);
  *(this + 84) = 0;
  re::internal::GeomAttributeContainer::clearAttributes((this + 42), v5);
  *(this + 112) = 0;
  re::internal::GeomAttributeContainer::clearAttributes((this + 56), v6);
  this[72] = 0;
  ++*(this + 146);
  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(this + 75);
  *this = 1;
  v8 = this[3];
  if (v8)
  {
    v9 = this[5];
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      result = (*(*v11 + 80))(v11, *this);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

int *re::internal::GeomAttributeManager::reorderFaces(uint64_t a1, uint64_t *a2)
{
  v98[11] = *MEMORY[0x1E69E9840];
  result = re::internal::GeomAttributeContainer::reorder(a1 + 224, a2);
  v5 = *(a1 + 360);
  v6 = a2[2];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return result;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 336), v9);
    result = re::internal::accessFaceVaryingAttributeSubmesh(v10, v11);
    if (*(result + 140))
    {
      v12 = result[32] == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 && (result[12] ? (v13 = *(result + 60) == 0) : (v13 = 1), v13 ? (v14 = result[6] == v6) : (v14 = 0), v14))
    {
      v82 = *result;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v83, result + 1);
      if (!v84)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v83, 1uLL);
      }

      re::internal::GeomBaseTopology::reorderFaces(&v82, a2);
      *v87 = 0xFFFFFFFF00000000;
      v15 = -1;
      *&v87[8] = -1;
      LOBYTE(v88) = 0;
      if (v6 == -1)
      {
        v16 = 0;
        v17 = -1;
      }

      else
      {
        v15 = 0;
        *&v87[8] = v6 - 1;
        v16 = v6;
        v17 = v6 - 1;
        *v87 = v6;
      }

      *&v89[2] = v16;
      v77 = __PAIR64__(v15, v16);
      v78 = v17;
      v79 = 0;
      LODWORD(v80[0]) = v16;
      LODWORD(v93) = v82;
      *(&v93 + 1) = v83;
      v18 = v84;
      v83 = 0;
      v84 = 0uLL;
      v94 = v18;
      *(&v95 + 1) = v86;
      v86 = 0;
      LODWORD(v95) = 1;
      v82 = 0;
      v85 += 2;
      re::GeomIndexMap::GeomIndexMap(&v96, v87);
      re::GeomIndexMap::GeomIndexMap(v98, &v77);
      if (v79)
      {
        if (v79 == 2)
        {
          v20.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v80);
        }

        else
        {
          if (v79 != 1)
          {
            goto LABEL_130;
          }

          if (v80[0])
          {
            v19 = v81;
            if (v81)
            {
              (*(*v80[0] + 40))();
            }
          }
        }
      }

      if (v88)
      {
        if (v88 == 2)
        {
          v20.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v89[2]);
        }

        else
        {
          if (v88 != 1)
          {
            goto LABEL_131;
          }

          if (*&v89[2] && v92)
          {
            (*(**&v89[2] + 40))(v20);
          }
        }
      }

      (*(*v10 + 72))(v10, &v93, v20);
      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v93, v21);
      result = v83;
      if (v83 && v86)
      {
        result = (*(*v83 + 40))();
      }
    }

    else
    {
      v8 = 1;
    }

    ++v9;
  }

  while (v5 != v9);
  if ((v8 & 1) == 0)
  {
    return result;
  }

  v76 = 0;
  v73[1] = 0;
  v74 = 0;
  v73[0] = 0;
  v75 = 0;
  v22 = v6;
  re::DynamicArray<unsigned int>::resize(v73, v6, &re::kInvalidMeshIndex);
  v23 = 0;
  v24 = a2[2];
  v25 = a2[4];
  v26 = v74;
  v27 = v76;
  do
  {
    if (v24 == v23)
    {
      goto LABEL_121;
    }

    v10 = *(v25 + 4 * v23);
    if (v26 <= v10)
    {
LABEL_125:
      v77 = 0;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      v60 = MEMORY[0x1E69E9C10];
      v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v87 = 136315906;
      *&v87[4] = "operator[]";
      v88 = 1024;
      if (v61)
      {
        v62 = 3;
      }

      else
      {
        v62 = 2;
      }

      *v89 = 789;
      *&v89[4] = 2048;
      *&v89[6] = v10;
      v90 = 2048;
      v91 = v26;
      _os_log_send_and_compose_impl(v62, &v77, &v93, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v63, v64);
      _os_crash_msg();
      __break(1u);
LABEL_129:
      re::internal::assertLog(4, v38, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
LABEL_130:
      re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
LABEL_131:
      re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
LABEL_132:
      re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
LABEL_133:
      re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
    }

    *(v27 + 4 * v10) = v23++;
  }

  while (v6 != v23);
  v28 = 0;
  do
  {
    v10 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 336), v28);
    v30 = re::internal::accessFaceVaryingAttributeSubmesh(v10, v29);
    v32 = v30;
    if (*(v30 + 140))
    {
      v33 = *(v30 + 128) == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      if (*(v30 + 48))
      {
        v34 = *(v30 + 60) == 0;
      }

      else
      {
        v34 = 1;
      }

      v36 = *(v30 + 24);
      if (v34 && v36 == v6)
      {
        goto LABEL_104;
      }

      v37 = v36;
    }

    else
    {
      v36 = *(v30 + 24);
      v37 = v36;
    }

    v72 = 0;
    v69[1] = 0;
    v70 = 0;
    v68 = 0;
    v69[0] = 0;
    v71 = 0;
    v65[1] = 0;
    v66 = 0;
    v65[0] = 0;
    v67 = 0;
    re::DynamicArray<unsigned int>::resize(v69, v37, &re::kInvalidMeshIndex);
    re::DynamicArray<unsigned int>::resize(v65, v22, &re::kInvalidMeshIndex);
    if (v36)
    {
      v39 = 0;
      v40 = v36;
      while (1)
      {
        LODWORD(v93) = v39;
        v41 = *(v32 + 60);
        if (v41 == 2)
        {
          break;
        }

        if (v41 == 1)
        {
          if (*(v32 + 80) > v39)
          {
            v42 = *(*(v32 + 96) + 4 * v39);
            goto LABEL_75;
          }

LABEL_74:
          v42 = -1;
          goto LABEL_75;
        }

        if (*(v32 + 60))
        {
          goto LABEL_129;
        }

        if (v39 >= *(v32 + 64))
        {
          v42 = -1;
        }

        else
        {
          v42 = v39;
        }

LABEL_75:
        v24 = v42;
        v44 = v74;
        if (v74 <= v42)
        {
          v77 = 0;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v48 = MEMORY[0x1E69E9C10];
          v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v87 = 136315906;
          *&v87[4] = "operator[]";
          v88 = 1024;
          if (v49)
          {
            v50 = 3;
          }

          else
          {
            v50 = 2;
          }

          *v89 = 789;
          *&v89[4] = 2048;
          *&v89[6] = v24;
          v90 = 2048;
          v91 = v44;
          _os_log_send_and_compose_impl(v50, &v77, &v93, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v63, v64);
          _os_crash_msg();
          __break(1u);
LABEL_113:
          v77 = 0;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v51 = MEMORY[0x1E69E9C10];
          v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v87 = 136315906;
          *&v87[4] = "operator[]";
          v88 = 1024;
          if (v52)
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          *v89 = 789;
          *&v89[4] = 2048;
          *&v89[6] = v39;
          v90 = 2048;
          v91 = v44;
          _os_log_send_and_compose_impl(v53, &v77, &v93, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v63, v64);
          _os_crash_msg();
          __break(1u);
LABEL_117:
          v77 = 0;
          v26 = &v82;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v54 = MEMORY[0x1E69E9C10];
          v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v87 = 136315906;
          *&v87[4] = "operator[]";
          v88 = 1024;
          if (v55)
          {
            v56 = 3;
          }

          else
          {
            v56 = 2;
          }

          *v89 = 789;
          *&v89[4] = 2048;
          *&v89[6] = v24;
          v90 = 2048;
          v91 = v44;
          _os_log_send_and_compose_impl(v56, &v77, &v93, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v63, v64);
          _os_crash_msg();
          __break(1u);
LABEL_121:
          v77 = 0;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v57 = MEMORY[0x1E69E9C10];
          v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v87 = 136315906;
          *&v87[4] = "operator[]";
          v88 = 1024;
          if (v58)
          {
            v59 = 3;
          }

          else
          {
            v59 = 2;
          }

          *v89 = 797;
          *&v89[4] = 2048;
          *&v89[6] = v24;
          v90 = 2048;
          v91 = v24;
          _os_log_send_and_compose_impl(v59, &v77, &v93, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v63, v64);
          _os_crash_msg();
          __break(1u);
          goto LABEL_125;
        }

        v44 = v70;
        if (v70 <= v39)
        {
          goto LABEL_113;
        }

        v24 = *(v76 + 4 * v42);
        *(v72 + 4 * v39) = v24;
        v44 = v66;
        if (v66 <= v24)
        {
          goto LABEL_117;
        }

        *(v68 + 4 * v24) = v39++;
        if (v40 == v39)
        {
          goto LABEL_79;
        }
      }

      v43 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v32 + 64), &v93);
      if (v43 != -1)
      {
        v42 = *(*(v32 + 72) + 8 * v43 + 4);
        goto LABEL_75;
      }

      goto LABEL_74;
    }

LABEL_79:
    v82 = *v32;
    re::DynamicArray<re::GeomCell4>::DynamicArray(&v83, (v32 + 8));
    if (!v84)
    {
      re::DynamicArray<re::BlendNode>::setCapacity(&v83, 1uLL);
    }

    re::GeomIndexMap::GeomIndexMap(v87, v69);
    re::GeomIndexMap::GeomIndexMap(&v77, v65);
    LODWORD(v93) = v82;
    *(&v93 + 1) = v83;
    v45 = v84;
    v83 = 0;
    v84 = 0uLL;
    v94 = v45;
    *(&v95 + 1) = v86;
    v86 = 0;
    LODWORD(v95) = 1;
    v82 = 0;
    v85 += 2;
    re::GeomIndexMap::GeomIndexMap(&v96, v87);
    re::GeomIndexMap::GeomIndexMap(v98, &v77);
    (*(*v10 + 72))(v10, &v93);
    re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v93, v46);
    if (v79)
    {
      if (v79 == 2)
      {
        v31.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v80);
      }

      else
      {
        if (v79 != 1)
        {
          goto LABEL_132;
        }

        if (v80[0])
        {
          v47 = v81;
          if (v81)
          {
            (*(*v80[0] + 40))();
          }
        }
      }
    }

    v22 = v6;
    if (v88)
    {
      if (v88 == 2)
      {
        v31.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v89[2]);
      }

      else
      {
        if (v88 != 1)
        {
          goto LABEL_133;
        }

        if (*&v89[2] && v92)
        {
          (*(**&v89[2] + 40))(v31);
        }
      }
    }

    if (v83 && v86)
    {
      (*(*v83 + 40))(v31);
    }

    if (v65[0] && v68)
    {
      (*(*v65[0] + 40))(v31);
    }

    if (v69[0] && v72)
    {
      (*(*v69[0] + 40))(v31);
    }

LABEL_104:
    ++v28;
  }

  while (v28 != v5);
  result = v73[0];
  if (v73[0])
  {
    if (v76)
    {
      return (*(*v73[0] + 40))(v31);
    }
  }

  return result;
}

uint64_t re::internal::GeomBaseTopology::reorderFaces(uint64_t a1, uint64_t *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  re::DynamicArray<float>::DynamicArray(&v35, a2);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v37;
    do
    {
      if (v6 <= v4)
      {
        goto LABEL_37;
      }

      v7 = v38;
      if (v5 != *(v38 + 4 * v4))
      {
        v6 = *(a1 + 24);
        if (v6 <= v4)
        {
          goto LABEL_41;
        }

        v40 = *(*(a1 + 40) + 16 * v4);
        v4 = v5;
        v8 = v5;
        while (1)
        {
          v6 = *(v7 + 4 * v4);
          if (v5 == v6)
          {
            break;
          }

          v9 = *(a1 + 24);
          if (v9 <= v6)
          {
            v39 = 0;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v41 = 136315906;
            v42 = "operator[]";
            v43 = 1024;
            if (v12)
            {
              v13 = 3;
            }

            else
            {
              v13 = 2;
            }

            v44 = 789;
            v45 = 2048;
            v46 = v6;
            v47 = 2048;
            v48 = v9;
            _os_log_send_and_compose_impl(v13, &v39, &v49, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
            _os_crash_msg();
            __break(1u);
LABEL_25:
            v39 = 0;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v14 = MEMORY[0x1E69E9C10];
            v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v41 = 136315906;
            v42 = "operator[]";
            v43 = 1024;
            if (v15)
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v44 = 789;
            v45 = 2048;
            v46 = v4;
            v47 = 2048;
            v48 = v9;
            _os_log_send_and_compose_impl(v16, &v39, &v49, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
            _os_crash_msg();
            __break(1u);
LABEL_29:
            v39 = 0;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v41 = 136315906;
            v42 = "operator[]";
            v43 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v44 = 789;
            v45 = 2048;
            v46 = v4;
            v47 = 2048;
            v48 = v9;
            _os_log_send_and_compose_impl(v19, &v39, &v49, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
            _os_crash_msg();
            __break(1u);
LABEL_33:
            v39 = 0;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v41 = 136315906;
            v42 = "operator[]";
            v43 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v44 = 789;
            v45 = 2048;
            v46 = v6;
            v47 = 2048;
            v48 = v9;
            _os_log_send_and_compose_impl(v22, &v39, &v49, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
            _os_crash_msg();
            __break(1u);
LABEL_37:
            *&v40 = 0;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v41 = 136315906;
            v42 = "operator[]";
            v43 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v44 = 789;
            v45 = 2048;
            v46 = v4;
            v47 = 2048;
            v48 = v6;
            _os_log_send_and_compose_impl(v25, &v40, &v49, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
            _os_crash_msg();
            __break(1u);
LABEL_41:
            *&v40 = 0;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v41 = 136315906;
            v42 = "operator[]";
            v43 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v44 = 789;
            v45 = 2048;
            v46 = v4;
            v47 = 2048;
            v48 = v6;
            _os_log_send_and_compose_impl(v28, &v40, &v49, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
            _os_crash_msg();
            __break(1u);
LABEL_45:
            v39 = 0;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v41 = 136315906;
            v42 = "operator[]";
            v43 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v44 = 789;
            v45 = 2048;
            v46 = v4;
            v47 = 2048;
            v48 = v6;
            _os_log_send_and_compose_impl(v31, &v39, &v49, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
            _os_crash_msg();
            __break(1u);
            goto LABEL_49;
          }

          if (v9 <= v4)
          {
            goto LABEL_25;
          }

          *(*(a1 + 40) + 16 * v4) = *(*(a1 + 40) + 16 * v6);
          v9 = v37;
          if (v37 <= v4)
          {
            goto LABEL_29;
          }

          v7 = v38;
          *(v38 + 4 * v4) = v8;
          v4 = v6;
          v8 = v6;
          if (v9 <= v6)
          {
            goto LABEL_33;
          }
        }

        v6 = *(a1 + 24);
        if (v6 <= v4)
        {
          goto LABEL_45;
        }

        *(*(a1 + 40) + 16 * v4) = v40;
        v6 = v37;
        if (v37 <= v4)
        {
LABEL_49:
          v39 = 0;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v49 = 0u;
          v32 = MEMORY[0x1E69E9C10];
          v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v41 = 136315906;
          v42 = "operator[]";
          v43 = 1024;
          if (v33)
          {
            v34 = 3;
          }

          else
          {
            v34 = 2;
          }

          v44 = 789;
          v45 = 2048;
          v46 = v4;
          v47 = 2048;
          v48 = v6;
          _os_log_send_and_compose_impl(v34, &v39, &v49, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
          _os_crash_msg();
          __break(1u);
        }

        *(v38 + 4 * v4) = v8;
      }

      v4 = ++v5;
    }

    while (v3 > v5);
  }

  result = v35;
  if (v35 && v38)
  {
    return (*(*v35 + 40))();
  }

  return result;
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeManager::GeomAttributeManager(uint64_t a1, uint64_t a2)
{
  v4 = re::internal::GeomAttributeContainer::GeomAttributeContainer(a1);
  re::internal::GeomAttributeContainer::GeomAttributeContainer((v4 + 112));
  re::internal::GeomAttributeContainer::GeomAttributeContainer((a1 + 224));
  re::internal::GeomAttributeContainer::GeomAttributeContainer((a1 + 336));
  re::internal::GeomAttributeContainer::GeomAttributeContainer((a1 + 448));
  *(a1 + 584) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0;

  return re::internal::GeomAttributeManager::operator=(a1, a2);
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeManager::operator=(re::internal::GeomAttributeContainer *this, uint64_t a2)
{
  if (this != a2)
  {
    re::internal::GeomAttributeContainer::operator=(this, a2);
    re::internal::GeomAttributeContainer::operator=((this + 112), a2 + 112);
    re::internal::GeomAttributeContainer::operator=((this + 224), a2 + 224);
    re::internal::GeomAttributeContainer::operator=((this + 336), a2 + 336);
    re::internal::GeomAttributeContainer::operator=((this + 448), a2 + 448);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(this + 75, (a2 + 600));
    re::DynamicArray<re::GeomAttribute *>::operator=(this + 70, (a2 + 560));
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear((a2 + 600));
    *(a2 + 576) = 0;
    ++*(a2 + 584);
  }

  return this;
}

uint64_t *re::DynamicArray<re::GeomAttribute *>::operator=(uint64_t *result, uint64_t *a2)
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

re::GeomAttribute *re::internal::GeomAttributeManager::replaceVertexWithFaceVaryingAttribute(uint64_t *a1, char *a2, re *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1 + 75, &v21);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = a1[76] + 16 * v6;
  v10 = *(v7 + 8);
  v8 = (v7 + 8);
  v9 = v10;
  v11 = a1[72];
  if (v11 <= v10)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = v11;
    v29 = 2048;
    v30 = v3;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1[74] + 8 * v9);
  FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(v21, *(v12 + 17), a3);
  re::GeomAttribute::copyValues(v12, FaceVaryingAttribute);
  v11 = *v8;
  v3 = a1[72];
  if (v3 <= v11)
  {
    goto LABEL_11;
  }

  *(a1[74] + 8 * v11) = FaceVaryingAttribute;
  *&v31 = *(v12 + 8);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove((a1 + 75), &v31);
  *&v31 = *(FaceVaryingAttribute + 1);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(a1 + 75, &v31, v8);
  re::internal::GeomAttributeContainer::addAttribute((a1 + 42), FaceVaryingAttribute);
  re::internal::GeomAttributeContainer::deleteAttribute((a1 + 14), v21);
  return FaceVaryingAttribute;
}

unint64_t re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(uint64_t *a1, char **a2, _DWORD *a3)
{
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(a1, a2, a3);
}

{
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(a1, a2, a3);
}

re::GeomAttribute *re::internal::GeomAttributeManager::replaceFaceWithFaceVaryingAttribute(uint64_t *a1, char *a2, re *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1 + 75, &v21);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = a1[76] + 16 * v6;
  v10 = *(v7 + 8);
  v8 = (v7 + 8);
  v9 = v10;
  v11 = a1[72];
  if (v11 <= v10)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = v11;
    v29 = 2048;
    v30 = v3;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1[74] + 8 * v9);
  FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(v21, *(v12 + 17), a3);
  re::GeomAttribute::copyValues(v12, FaceVaryingAttribute);
  v11 = *v8;
  v3 = a1[72];
  if (v3 <= v11)
  {
    goto LABEL_11;
  }

  *(a1[74] + 8 * v11) = FaceVaryingAttribute;
  *&v31 = *(v12 + 8);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove((a1 + 75), &v31);
  *&v31 = *(FaceVaryingAttribute + 1);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(a1 + 75, &v31, v8);
  re::internal::GeomAttributeContainer::addAttribute((a1 + 42), FaceVaryingAttribute);
  re::internal::GeomAttributeContainer::deleteAttribute((a1 + 28), v21);
  return FaceVaryingAttribute;
}

uint64_t re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh(void *a1, char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v5 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1 + 75, &v13);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = *(a1[76] + 16 * v5 + 8);
  v7 = a1[72];
  if (v7 <= v6)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = v6;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1[74] + 8 * v6);
  (*(*v8 + 72))(v8, a3);
  return v8;
}

re::GeomAttribute *re::internal::GeomAttributeManager::addFaceVaryingAttribute(uint64_t a1, const char *a2, uint64_t a3, re::internal::GeomAttributeFaceVaryingSubmesh *a4)
{
  if (re::internal::GeomAttributeManager::attributeByName(a1, a2))
  {
    return 0;
  }

  FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(a2, a3, a4);
  v8 = re::internal::GeomAttributeContainer::addAttribute((a1 + 336), FaceVaryingAttribute);
  re::internal::GeomAttributeManager::addAttributeToTable(a1, v8);
  return v8;
}

uint64_t re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(uint64_t *a1, char **a2)
{
  if (!a1[7] || a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::DynamicString>::operator()(&v16, *a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::DynamicString>::operator()(&v17, *a2);
    v15 = *(v5 + 16 * v4);
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v15), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = __clz(__rbit64(v7));
    if (v8 <= 0x3F)
    {
      break;
    }

LABEL_10:
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v15, v13), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v12 = -1;
    if (v4 == re::Hash<re::DynamicString>::operator()(&v18, *a2) % (a1[2] >> 4))
    {
      return v12;
    }
  }

  v9 = 16 * v4;
  v10 = *a2;
  v11 = a1[1];
  while (1)
  {
    v12 = v8 + v9;
    if (!strcmp(v10, *(v11 + 16 * (v8 + v9))))
    {
      return v12;
    }

    if (v8 <= 0x3E)
    {
      v8 = __clz(__rbit64((-2 << v8) & v7));
      if (v8 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t re::DynamicArray<re::GeomCell4>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::BlendNode>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::GeomCell4>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::GeomCell4>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::BlendNode>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 16 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 16 * v5, (*(a2 + 32) + 16 * v5), 16 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 16 * v4);
  }

  v3[2] = v4;
  return result;
}

void re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(re::internal::GeomAttributeFaceVaryingSubmesh *this, uint64_t a2)
{
  v3 = *(this + 140);
  if (v3 == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 144);
  }

  else if (v3 == 1)
  {
    re::DynamicArray<unsigned long>::deinit(this + 144);
  }

  else
  {
    if (*(this + 140))
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      goto LABEL_15;
    }

    *(this + 36) = 0;
  }

  v4 = *(this + 60);
  if (v4 == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 64);
    goto LABEL_13;
  }

  if (v4 == 1)
  {
    re::DynamicArray<unsigned long>::deinit(this + 64);
    goto LABEL_13;
  }

  if (!*(this + 60))
  {
    *(this + 16) = 0;
LABEL_13:
    re::DynamicArray<unsigned long>::deinit(this + 8);
    return;
  }

LABEL_15:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
}

uint64_t re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(void *a1, unsigned int *a2)
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
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
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
    if (v4 == *(a1[1] + 8 * (v13 + v14)))
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

void re::HashBrown<char const*,re::GeomAttribute *,re::internal::HashName,re::internal::HashName,void,false>::resize(uint64_t a1)
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
  memset(v41, 0, sizeof(v41));
  v9 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v41, v8, v3);
  v39[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v39[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_27;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v40 = v15 - v11;
    if (v15 + 1 != v11)
    {
      v38 = vdupq_n_s64(1uLL).u64[0];
      while (1)
      {
        v17 = *(v39[0] + 8);
        if (*(&v41[3] + 1))
        {
          v18 = *&v41[2];
          if (*&v41[2])
          {
            goto LABEL_14;
          }
        }

        else
        {
          *&v41[1] = 16;
          *&v31 = -1;
          *(&v31 + 1) = -1;
          **&v41[0] = v31;
          v18 = *&v41[1];
          *(&v41[0] + 1) = *&v41[0] + 16;
          *(&v41[1] + 1) = 0;
          v41[2] = *&v41[1];
          *&v41[3] = 0;
          if (*&v41[1])
          {
LABEL_14:
            if (*&v41[1] <= (8 * v18))
            {
              goto LABEL_15;
            }
          }
        }

        re::HashBrown<char const*,re::GeomAttribute *,re::internal::HashName,re::internal::HashName,void,false>::resize(v41);
LABEL_15:
        v19 = (v17 + 16 * v16);
        v20 = re::Hash<re::DynamicString>::operator()(&v42, *v19);
        v21 = v20 % (*&v41[1] >> 4);
        while (1)
        {
          v22 = *&v41[0];
          v23 = re::Hash<re::DynamicString>::operator()(&v42, *v19);
          v24 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v22 + 16 * v21)), xmmword_1E304FAD0)))), 0x3830282018100800)));
          if (v24 < 0x40)
          {
            break;
          }

          if (v21 + 1 == *&v41[1] >> 4)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }
        }

        v25 = v22 + 16 * v21;
        v26 = *(v25 + v24);
        *(v25 + v24) = v23 & 0x7F;
        v27 = 16 * (v24 + 16 * v21);
        *(*(&v41[0] + 1) + v27) = *v19;
        if (v26 == 255)
        {
          v28 = -1;
        }

        else
        {
          v28 = 0;
        }

        v29.i64[0] = v38;
        v29.i64[1] = v28;
        *(&v41[1] + 8) = vaddq_s64(*(&v41[1] + 8), v29);
        v30 = re::Hash<re::DynamicString>::operator()(&v42, *(*(&v41[0] + 1) + v27));
        *(&v41[2] + 1) ^= v30;
        v9 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v39);
        v16 = v40;
        if (v40 == -1)
        {
          v10 = *(a1 + 16);
          break;
        }
      }
    }
  }

LABEL_27:
  v32 = *(&v41[3] + 1);
  *(&v41[3] + 1) = *(a1 + 56);
  v33 = v41[0];
  v34 = v41[1];
  v41[0] = *a1;
  *&v41[1] = v10;
  v35 = v41[2];
  v36 = *(a1 + 40);
  *(a1 + 48) = *&v41[3];
  *(a1 + 56) = v32;
  *(&v41[2] + 8) = v36;
  v37 = *(a1 + 24);
  *a1 = v33;
  *(a1 + 16) = v34;
  *(a1 + 32) = v35;
  *(&v41[1] + 8) = v37;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v41);
}

double re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::doResize(a1, v3);
}

double re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::doResize(uint64_t a1, uint64_t a2)
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
        re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
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

unint64_t re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(uint64_t *a1, char **a2, _DWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || a1[2] > (8 * v6))
  {
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::DynamicString>::operator()(&v18, *a2) % (a1[2] >> 4);
  while (1)
  {
    v8 = *a1;
    v9 = re::Hash<re::DynamicString>::operator()(&v19, *a2);
    v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v10 < 0x40)
    {
      break;
    }

    if (v7 + 1 == a1[2] >> 4)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = v10 + 16 * v7;
  *(a1[1] + 16 * v13) = *a2;
  v14 = a1[1] + 16 * v13;
  *(v14 + 8) = *a3;
  if (v12 == 255)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v16.i64[1] = v15;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v16);
  a1[5] ^= re::Hash<re::DynamicString>::operator()(&v20, *v14);
  return a1[1] + 16 * v13 + 8;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || a1[2] > (8 * v6))
  {
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::DynamicString>::operator()(&v19, *a2) % (a1[2] >> 4);
  while (1)
  {
    v8 = *a1;
    v9 = re::Hash<re::DynamicString>::operator()(&v20, *a2);
    v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v10 < 0x40)
    {
      break;
    }

    if (++v7 == a1[2] >> 4)
    {
      v7 = 0;
    }

    if (v7 == re::Hash<re::DynamicString>::operator()(&v22, *a2) % (a1[2] >> 4))
    {
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      result = _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      return result;
    }
  }

  v12 = v8 + 16 * v7;
  v13 = *(v12 + v10);
  *(v12 + v10) = v9 & 0x7F;
  v14 = v10 + 16 * v7;
  *(a1[1] + 16 * v14) = *a2;
  v15 = a1[1] + 16 * v14;
  *(v15 + 8) = *a3;
  if (v13 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v17);
  a1[5] ^= re::Hash<re::DynamicString>::operator()(&v21, *v15);
  return a1[1] + 16 * v14 + 8;
}

_anonymous_namespace_ *re::internal::clip2DTriangleWithPolygon(void *a1, uint64_t a2, unint64_t a3, _anonymous_namespace_ *this)
{
  v67 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  ++*(this + 6);
  re::DynamicArray<unsigned long>::add(this, a1);
  re::DynamicArray<unsigned long>::add(this, a1 + 1);
  result = re::DynamicArray<unsigned long>::add(this, a1 + 2);
  v10 = a3;
  if (a3)
  {
    v11 = 0;
    v48 = a3;
    v49 = a3;
    while (1)
    {
      re::DynamicArray<unsigned long>::DynamicArray(&v50, this);
      *(this + 2) = 0;
      ++*(this + 6);
      if (v11 == a3)
      {
        goto LABEL_38;
      }

      v13 = v11 + 1;
      if (v11 + 1 == v10)
      {
        v4 = 0;
      }

      else
      {
        v4 = v11 + 1;
      }

      if (a3 <= v4)
      {
        goto LABEL_39;
      }

      v14 = v51;
      if (v51)
      {
        break;
      }

LABEL_25:
      result = v50;
      if (v50)
      {
        if (v52)
        {
          result = (*(*v50 + 40))();
        }
      }

      ++v11;
      v10 = v48;
      a3 = v49;
      if (v13 == v48)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = 0;
    while (1)
    {
      a3 = v51;
      if (v51 <= v16)
      {
        break;
      }

      v10 = (v14 + v16 - 1) % v14;
      if (v51 <= v10)
      {
        goto LABEL_34;
      }

      v17 = v52;
      v18 = *(a2 + 8 * v11);
      v19 = *(v52 + v15);
      v20 = *(a2 + 8 * v4);
      v21 = vsub_f32(v18, v19);
      v22 = vsub_f32(v20, v19);
      v23 = *(v52 + 8 * v10);
      v24 = vsub_f32(v18, v23);
      v25 = vsub_f32(v20, v23);
      v26 = vneg_f32(vzip2_s32(v24, v21));
      v27 = vmvn_s8(vcgez_f32(vmla_f32(vmul_f32(vzip1_s32(v25, v22), v26), vzip2_s32(v25, v22), vzip1_s32(v24, v21))));
      if (v27.i8[4])
      {
        if ((v27.i8[0] & 1) == 0)
        {
          v28 = vsub_f32(v20, v18);
          v29 = vsub_f32(v23, v19);
          v30 = (-v29.f32[1] * v28.f32[0]) + (v29.f32[0] * v28.f32[1]);
          if ((v30 * v30) <= 0.0)
          {
            v31 = vmul_f32(vadd_f32(v19, v23), 0x3F0000003F000000);
          }

          else
          {
            v31 = vadd_f32(v19, vmul_n_f32(v29, (vmul_lane_f32(v28, v26, 1).f32[0] + (*v21.i32 * v28.f32[1])) / v30));
          }

          *&v62 = v31;
          re::DynamicArray<unsigned long>::add(this, &v62);
        }
      }

      else
      {
        if (v27.i8[0])
        {
          v32 = vsub_f32(v20, v18);
          v33 = vsub_f32(v23, v19);
          v34 = (-v33.f32[1] * v32.f32[0]) + (v33.f32[0] * v32.f32[1]);
          if ((v34 * v34) <= 0.0)
          {
            v35 = vmul_f32(vadd_f32(v19, v23), 0x3F0000003F000000);
          }

          else
          {
            v35 = vadd_f32(v19, vmul_n_f32(v33, (vmul_lane_f32(v32, v26, 1).f32[0] + (*v21.i32 * v32.f32[1])) / v34));
          }

          *&v62 = v35;
          re::DynamicArray<unsigned long>::add(this, &v62);
        }

        re::DynamicArray<unsigned long>::add(this, (v17 + v15));
      }

      ++v16;
      v15 += 8;
      if (v14 == v16)
      {
        goto LABEL_25;
      }
    }

    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v16;
    v60 = 2048;
    v61 = a3;
    _os_log_send_and_compose_impl(v38, &v53, &v62, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v46, v47);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v10;
    v60 = 2048;
    v61 = a3;
    _os_log_send_and_compose_impl(v41, &v53, &v62, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v46, v47);
    _os_crash_msg();
    __break(1u);
LABEL_38:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v42, v44);
    __break(1u);
LABEL_39:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v43, v45);
    __break(1u);
  }

  return result;
}

BOOL re::internal::triangleIntersectsAABB(unint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  v246 = *MEMORY[0x1E69E9840];
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  if (*(a5 + 8) <= 5uLL)
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a5, 6uLL);
  }

  v10 = *a2;
  v11 = *a1;
  v12 = vsubq_f32(*a2, *a1);
  v13 = *a3;
  v14 = vsubq_f32(*a3, *a1);
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v12)), v14, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v16 = fabsf(v15.f32[0]);
  v17 = fabsf(v15.f32[1]);
  v18 = *a1;
  LODWORD(v19) = *(a1 + 8);
  v20 = a2->i64[0];
  v21 = a2->i64[1];
  if (v16 >= 0.00001 || v17 >= 0.00001)
  {
    v32 = fabsf(v15.f32[2]);
    if (v32 >= 0.00001 || v17 >= 0.00001)
    {
      if (v32 < 0.00001 && v16 < 0.00001)
      {
        v41 = a4->f32[2];
        if (v19 == v41 || (v42 = fabsf(v19), vabds_f32(v19, v41) < (((v42 + fabsf(v41)) + 1.0) * 0.00001)) || (v43 = a4[1].f32[2], v19 == v43) || vabds_f32(v19, v43) < (((v42 + fabsf(v43)) + 1.0) * 0.00001))
        {
          v11.i32[1] = HIDWORD(*a1);
          v10.i32[1] = HIDWORD(a2->i64[0]);
          v13.i32[1] = HIDWORD(a3->i64[0]);
          v44 = a4->i64[0];
          v45 = a4[1].i64[0];
          *&v230 = 0;
          *&v229 = 0;
          v228 = 0uLL;
          DWORD2(v229) = 0;
          v234.i64[0] = v44;
          v234.i64[1] = __PAIR64__(HIDWORD(v44), v45);
          HIDWORD(v44) = HIDWORD(v45);
          *&v235 = v45;
          *(&v235 + 1) = v44;
          *v224 = v11.i64[0];
          *&v224[8] = v10.i64[0];
          *&v224[16] = v13.i64[0];
          re::internal::clip2DTriangleWithPolygon(v224, &v234, 4uLL, &v228);
          re::DynamicArray<re::Vector3<float>>::resize(a5, v229);
          if (v229)
          {
            v29 = 0;
            do
            {
              v30 = *(a5 + 16);
              if (v30 <= v29)
              {
                goto LABEL_130;
              }

              *&v46 = *(v230 + 8 * v29);
              DWORD2(v46) = *(a1 + 8);
              *(*(a5 + 32) + 16 * v29++) = v46;
            }

            while (v229 > v29);
          }

LABEL_35:
          v47 = *(a5 + 16) != 0;
          if (v228 && v230)
          {
            (*(*v228 + 40))();
          }

          return v47;
        }
      }
    }

    else
    {
      v33 = a4->f32[1];
      if (v33 == *(&v18 + 1) || (v34 = fabsf(*(&v18 + 1)), vabds_f32(*(&v18 + 1), v33) < (((v34 + fabsf(v33)) + 1.0) * 0.00001)) || (v35 = a4[1].f32[1], v35 == *(&v18 + 1)) || vabds_f32(*(&v18 + 1), v35) < (((v34 + fabsf(v35)) + 1.0) * 0.00001))
      {
        v11.i32[1] = *(a1 + 8);
        v10.i32[1] = a2->i64[1];
        v13.i32[1] = a3->i64[1];
        LODWORD(v36) = a4->i32[0];
        v37 = a4[1].i32[0];
        LODWORD(v38) = v37;
        HIDWORD(v38) = a4[1].i32[2];
        *&v235 = v38;
        LODWORD(v38) = v36;
        HIDWORD(v36) = a4->i32[2];
        *&v230 = 0;
        *&v229 = 0;
        v228 = 0uLL;
        v234.i64[0] = v36;
        LODWORD(v36) = v37;
        DWORD2(v229) = 0;
        v234.i64[1] = v36;
        *(&v235 + 1) = v38;
        *v224 = v11.i64[0];
        *&v224[8] = v10.i64[0];
        *&v224[16] = v13.i64[0];
        re::internal::clip2DTriangleWithPolygon(v224, &v234, 4uLL, &v228);
        re::DynamicArray<re::Vector3<float>>::resize(a5, v229);
        if (v229)
        {
          v40 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(a5 + 16);
            if (v30 <= v29)
            {
              goto LABEL_126;
            }

            LODWORD(v39) = *(v230 + v40);
            DWORD1(v39) = *(a1 + 4);
            DWORD2(v39) = *(v230 + v40 + 4);
            *(*(a5 + 32) + 16 * v29++) = v39;
            v40 += 8;
            if (v229 <= v29)
            {
              goto LABEL_35;
            }
          }
        }

        goto LABEL_35;
      }
    }
  }

  else if (a4->f32[0] == *&v18 || (v22 = fabsf(*&v18), vabds_f32(*&v18, a4->f32[0]) < (((v22 + fabsf(a4->f32[0])) + 1.0) * 0.00001)) || (v23 = a4[1].f32[0], v23 == *&v18) || vabds_f32(*&v18, v23) < (((v22 + fabsf(v23)) + 1.0) * 0.00001))
  {
    v24 = __PAIR64__(LODWORD(v19), HIDWORD(v18));
    v25 = __PAIR64__(a3->i64[1], HIDWORD(a3->i64[0]));
    v26 = *(a4->i64 + 4);
    v27 = *(a4[1].i64 + 4);
    *&v230 = 0;
    *&v229 = 0;
    v228 = 0uLL;
    DWORD2(v229) = 0;
    v234.i64[0] = v26;
    v234.i64[1] = __PAIR64__(HIDWORD(v26), v27);
    HIDWORD(v26) = HIDWORD(v27);
    *&v235 = v27;
    *(&v235 + 1) = v26;
    *v224 = v24;
    *&v224[8] = __PAIR64__(v21, HIDWORD(v20));
    *&v224[16] = v25;
    re::internal::clip2DTriangleWithPolygon(v224, &v234, 4uLL, &v228);
    re::DynamicArray<re::Vector3<float>>::resize(a5, v229);
    if (v229)
    {
      v28 = 0;
      v29 = 0;
      while (1)
      {
        v30 = *(a5 + 16);
        if (v30 <= v29)
        {
          break;
        }

        v31 = *a1;
        v31.i32[1] = *(v230 + v28);
        v31.i32[2] = *(v230 + v28 + 4);
        *(*(a5 + 32) + 16 * v29++) = v31;
        v28 += 8;
        if (v229 <= v29)
        {
          goto LABEL_35;
        }
      }

      *v219 = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v189 = MEMORY[0x1E69E9C10];
      v190 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v224 = 136315906;
      *&v224[4] = "operator[]";
      *&v224[12] = 1024;
      if (v190)
      {
        v191 = 3;
      }

      else
      {
        v191 = 2;
      }

      *&v224[14] = 789;
      *&v224[18] = 2048;
      *&v224[20] = v29;
      *&v224[28] = 2048;
      *&v224[30] = v30;
      _os_log_send_and_compose_impl(v191, v219, &v234, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v204, v207);
      _os_crash_msg();
      __break(1u);
LABEL_126:
      *v219 = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v192 = MEMORY[0x1E69E9C10];
      v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v224 = 136315906;
      *&v224[4] = "operator[]";
      *&v224[12] = 1024;
      if (v193)
      {
        v194 = 3;
      }

      else
      {
        v194 = 2;
      }

      *&v224[14] = 789;
      *&v224[18] = 2048;
      *&v224[20] = v29;
      *&v224[28] = 2048;
      *&v224[30] = v30;
      _os_log_send_and_compose_impl(v194, v219, &v234, 80, &dword_1E1C61000, v192, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v204, v207);
      _os_crash_msg();
      __break(1u);
LABEL_130:
      *v219 = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v195 = MEMORY[0x1E69E9C10];
      v196 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v224 = 136315906;
      *&v224[4] = "operator[]";
      *&v224[12] = 1024;
      if (v196)
      {
        v197 = 3;
      }

      else
      {
        v197 = 2;
      }

      *&v224[14] = 789;
      *&v224[18] = 2048;
      *&v224[20] = v29;
      *&v224[28] = 2048;
      *&v224[30] = v30;
      _os_log_send_and_compose_impl(v197, v219, &v234, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v204, v207);
      _os_crash_msg();
      __break(1u);
LABEL_134:
      *v219 = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v198 = MEMORY[0x1E69E9C10];
      v199 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v224 = 136315906;
      *&v224[4] = "operator[]";
      *&v224[12] = 1024;
      if (v199)
      {
        v200 = 3;
      }

      else
      {
        v200 = 2;
      }

      *&v224[14] = 789;
      *&v224[18] = 2048;
      *&v224[20] = a1;
      *&v224[28] = 2048;
      *&v224[30] = v29;
      _os_log_send_and_compose_impl(v200, v219, &v234, 80, &dword_1E1C61000, v198, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v206.u64[0], v206.u64[1]);
      _os_crash_msg();
      __break(1u);
      goto LABEL_138;
    }

    goto LABEL_35;
  }

  if (!re::triangleOverlapsBox(a1, a2, a3, a4, a4 + 1))
  {
    return 0;
  }

  *(a5 + 16) = 0;
  v48 = *(a5 + 24);
  *(a5 + 24) = v48 + 1;
  v49 = vsubq_f32(*a2, *a1);
  v50 = vsubq_f32(*a3, *a1);
  v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
  v52 = vmulq_f32(v51, v51);
  v53 = v52.f32[1] + (v52.f32[2] + v52.f32[0]);
  if (fabsf(v53) < 1.0e-12)
  {
    return 0;
  }

  v54 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
  v51.i32[1] = 0;
  v55 = v53;
  v56 = vrsqrte_f32(LODWORD(v53));
  v57 = vmul_f32(v56, vrsqrts_f32(LODWORD(v55), vmul_f32(v56, v56)));
  v58 = vmulq_n_f32(v54, vmul_f32(v57, vrsqrts_f32(LODWORD(v55), vmul_f32(v57, v57))).f32[0]);
  v66 = vaddq_f32(vaddq_f32(*a2, *a1), *a3);
  __asm { FMOV            V4.4S, #3.0 }

  v64 = vdivq_f32(v66, _Q4);
  *(a5 + 24) = v48 + 2;
  v65 = *a4;
  v68 = *a4;
  v66.i32[0] = a4[1].i32[0];
  v67 = a4[1].f32[1];
  v68.f32[1] = v67;
  LODWORD(v69) = HIDWORD(a4->i64[0]);
  v70 = a4[1].f32[2];
  v71 = *a4;
  v71.f32[2] = v70;
  *&v72 = v66.f32[0] - COERCE_FLOAT(*a4);
  v73.i32[0] = 0;
  v73.i64[1] = 0;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v74 = v68;
  v74.i32[2] = v65.i32[2];
  v75 = v72;
  v76 = vmulq_f32(v58, v72);
  v77 = v76.f32[2] + vaddv_f32(*v76.f32);
  v78 = 0;
  if (fabsf(v77) >= 0.00001)
  {
    v79 = vmulq_f32(v58, v65);
    v80 = vmulq_f32(v64, v58);
    v81 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *&vextq_s8(v80, v80, 8uLL)), vadd_f32(vzip1_s32(*v79.i8, *v80.i8), vzip2_s32(*v79.i8, *v80.i8)));
    v82 = -(v81.f32[0] - v81.f32[1]) / v77;
    v83 = &v234;
    if (v82 >= -0.000001 && v82 <= 1.0)
    {
      v234 = vaddq_f32(v65, vmulq_n_f32(v75, v82));
      v83 = &v235;
      v78 = 1;
    }

    v84 = vmulq_f32(v58, v74);
    v85 = -((v84.f32[2] + vaddv_f32(*v84.f32)) - v81.f32[1]) / v77;
    if (v85 >= -0.000001 && v85 <= 1.0)
    {
      *v83 = vaddq_f32(v74, vmulq_n_f32(v75, v85));
      ++v78;
    }

    v68.f32[2] = v70;
    v86 = vmulq_f32(v58, v71);
    v87 = -((v86.f32[2] + vaddv_f32(*v86.f32)) - v81.f32[1]) / v77;
    if (v87 >= -0.000001 && v87 <= 1.0)
    {
      *(&v234 + v78++) = vaddq_f32(v71, vmulq_n_f32(v75, v87));
    }

    v88 = vmulq_f32(v58, v68);
    v89 = -((v88.f32[2] + vaddv_f32(*v88.f32)) - v81.f32[1]) / v77;
    if (v89 >= -0.000001 && v89 <= 1.0)
    {
      *(&v234 + v78++) = vaddq_f32(v68, vmulq_n_f32(v75, v89));
    }
  }

  v90 = v65;
  v90.i32[0] = v66.i32[0];
  v73.f32[1] = v67 - v69;
  v91 = vmulq_f32(v58, v73);
  v92 = v91.f32[2] + vaddv_f32(*v91.f32);
  if (fabsf(v92) >= 0.00001)
  {
    v93 = vmulq_f32(v58, v65);
    v94 = vmulq_f32(v64, v58);
    v95 = vadd_f32(vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *&vextq_s8(v94, v94, 8uLL)), vadd_f32(vzip1_s32(*v93.i8, *v94.i8), vzip2_s32(*v93.i8, *v94.i8)));
    v96 = -(v95.f32[0] - v95.f32[1]) / v92;
    if (v96 >= -0.000001 && v96 <= 1.0)
    {
      *(&v234 + v78++) = vaddq_f32(v65, vmulq_n_f32(v73, v96));
    }

    v97 = v66;
    v97.i32[1] = v65.i32[1];
    v98 = vmulq_f32(v58, v90);
    v99 = -((v98.f32[2] + vaddv_f32(*v98.f32)) - v95.f32[1]) / v92;
    if (v99 >= -0.000001 && v99 <= 1.0)
    {
      *(&v234 + v78++) = vaddq_f32(v90, vmulq_n_f32(v73, v99));
    }

    v97.f32[2] = v70;
    v100 = vmulq_f32(v58, v71);
    v101 = -((v100.f32[2] + vaddv_f32(*v100.f32)) - v95.f32[1]) / v92;
    if (v101 >= -0.000001 && v101 <= 1.0)
    {
      *(&v234 + v78++) = vaddq_f32(v71, vmulq_n_f32(v73, v101));
    }

    v102 = vmulq_f32(v58, v97);
    v103 = -((v102.f32[2] + vaddv_f32(*v102.f32)) - v95.f32[1]) / v92;
    if (v103 >= -0.000001 && v103 <= 1.0)
    {
      *(&v234 + v78++) = vaddq_f32(v97, vmulq_n_f32(v73, v103));
    }
  }

  *&v104 = v70 - v65.f32[2];
  v105.i64[0] = 0;
  v105.i64[1] = v104;
  v106 = vmulq_f32(v58, v105);
  v107 = v106.f32[2] + vaddv_f32(*v106.f32);
  if (fabsf(v107) < 0.00001)
  {
    goto LABEL_67;
  }

  v108 = vmulq_f32(v58, v65);
  v109 = vmulq_f32(v64, v58);
  v110 = vadd_f32(vzip1_s32(*&vextq_s8(v108, v108, 8uLL), *&vextq_s8(v109, v109, 8uLL)), vadd_f32(vzip1_s32(*v108.i8, *v109.i8), vzip2_s32(*v108.i8, *v109.i8)));
  v111 = -(v110.f32[0] - v110.f32[1]) / v107;
  if (v111 >= -0.000001 && v111 <= 1.0)
  {
    *(&v234 + v78++) = vaddq_f32(v65, vmulq_n_f32(v105, v111));
  }

  v66.f32[1] = v67;
  v112 = vmulq_f32(v58, v90);
  v113 = -((v112.f32[2] + vaddv_f32(*v112.f32)) - v110.f32[1]) / v107;
  if (v113 >= -0.000001 && v113 <= 1.0)
  {
    *(&v234 + v78++) = vaddq_f32(v90, vmulq_n_f32(v105, v113));
  }

  v66.i32[2] = v65.i32[2];
  v114 = vmulq_f32(v58, v74);
  v115 = -((v114.f32[2] + vaddv_f32(*v114.f32)) - v110.f32[1]) / v107;
  if (v115 >= -0.000001 && v115 <= 1.0)
  {
    *(&v234 + v78++) = vaddq_f32(v74, vmulq_n_f32(v105, v115));
  }

  v116 = vmulq_f32(v58, v66);
  v117 = -((v116.f32[2] + vaddv_f32(*v116.f32)) - v110.f32[1]) / v107;
  if (v117 < -0.000001 || v117 > 1.0)
  {
LABEL_67:
    if (v78)
    {
      goto LABEL_81;
    }

    return 0;
  }

  *(&v234 + v78++) = vaddq_f32(v66, vmulq_n_f32(v105, v117));
LABEL_81:
  v118 = vmulq_f32(v49, v49);
  *&v119 = v118.f32[2] + vaddv_f32(*v118.f32);
  *v118.f32 = vrsqrte_f32(v119);
  *v118.f32 = vmul_f32(*v118.f32, vrsqrts_f32(v119, vmul_f32(*v118.f32, *v118.f32)));
  v120 = vmulq_n_f32(v49, vmul_f32(*v118.f32, vrsqrts_f32(v119, vmul_f32(*v118.f32, *v118.f32))).f32[0]);
  v121 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
  v215 = v120;
  v122 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL), vnegq_f32(v58)), v120, v121);
  v123 = vmulq_f32(v122, v122);
  *v51.i32 = v123.f32[1] + (v123.f32[2] + v123.f32[0]);
  *v123.f32 = vrsqrte_f32(*v51.i8);
  *v123.f32 = vmul_f32(*v123.f32, vrsqrts_f32(*v51.i8, vmul_f32(*v123.f32, *v123.f32)));
  LODWORD(v124) = vmul_f32(*v123.f32, vrsqrts_f32(*v51.i8, vmul_f32(*v123.f32, *v123.f32))).u32[0];
  v125 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
  v126 = *&v58.i32[2];
  v127 = vmlaq_f32(vmulq_f32(v58, xmmword_1E30661F0), xmmword_1E30476A0, v121);
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v128 = vmulq_f32(v127, v127);
  v129 = v128.f32[1] + (v128.f32[2] + v128.f32[0]);
  v216 = v64;
  if (v129 <= 1.0e-10)
  {
    v157 = &v228;
    if (v126 >= 0.0)
    {
      v162 = &v234;
      v163 = v78;
      do
      {
        v164 = v162->i64[0];
        ++v162;
        *v157++ = v164;
        --v163;
      }

      while (v163);
    }

    else
    {
      v158 = &v228 + 1;
      v159 = &v234.f32[1];
      v160 = v78;
      do
      {
        v161 = -*v159;
        *(v158 - 1) = *(v159 - 1);
        *v158 = v161;
        v158 += 2;
        v159 += 4;
        --v160;
      }

      while (v160);
    }
  }

  else
  {
    v208 = v125;
    v210 = v124;
    v130 = v129;
    v131 = vrsqrte_f32(LODWORD(v129));
    v132 = vmul_f32(v131, vrsqrts_f32(LODWORD(v130), vmul_f32(v131, v131)));
    v212 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v127, v127), v127, 0xCuLL), vmul_f32(v132, vrsqrts_f32(LODWORD(v130), vmul_f32(v132, v132))).f32[0]);
    v133 = acosf(v126);
    v134 = v212;
    v135 = vmulq_f32(v134, v134);
    v136 = v135.f32[2] + vaddv_f32(*v135.f32);
    if (fabsf(v136) >= 1.0e-10)
    {
      v137 = v136;
      v138 = vrsqrte_f32(LODWORD(v136));
      v139 = vmul_f32(v138, vrsqrts_f32(LODWORD(v137), vmul_f32(v138, v138)));
      v134 = vmulq_n_f32(v212, vmul_f32(v139, vrsqrts_f32(LODWORD(v137), vmul_f32(v139, v139))).f32[0]);
    }

    v213 = v134;
    v205 = vmulq_f32(v134, v134).f32[0];
    v140 = vmuls_lane_f32(v134.f32[1], *v134.f32, 1);
    v141 = vmuls_lane_f32(v134.f32[2], v134, 2);
    v142 = vmuls_lane_f32(v134.f32[0], *v134.f32, 1);
    v143 = vmuls_lane_f32(v134.f32[0], v134, 2);
    v144 = vmuls_lane_f32(v134.f32[1], v134, 2);
    v145 = __sincosf_stret(v133);
    v146 = vmuls_lane_f32(v145.__sinval, *v213.f32, 1);
    v149.f32[0] = vmuls_lane_f32(v145.__sinval, v213, 2);
    v147 = -(v149.f32[0] - (v142 * (1.0 - v145.__cosval)));
    v148 = v149.f32[0] + (v142 * (1.0 - v145.__cosval));
    v149.i32[3] = 0;
    v149.f32[0] = v205 + (v145.__cosval * (1.0 - v205));
    v149.f32[1] = v148;
    v150.f32[0] = v147;
    v152 = &v228;
    v153 = &v234;
    v154 = v78;
    v125 = v208;
    v124 = v210;
    do
    {
      v155 = *v153++;
      v149.f32[2] = -(v146 - (v143 * (1.0 - v145.__cosval)));
      v151.i64[1] = COERCE_UNSIGNED_INT(v141 + (v145.__cosval * (1.0 - v141)));
      v150.i64[1] = COERCE_UNSIGNED_INT((v145.__sinval * v213.f32[0]) + (v144 * (1.0 - v145.__cosval)));
      v151.f32[1] = -((v145.__sinval * v213.f32[0]) - (v144 * (1.0 - v145.__cosval)));
      v150.f32[1] = v140 + (v145.__cosval * (1.0 - v140));
      v151.f32[0] = v146 + (v143 * (1.0 - v145.__cosval));
      v156 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, v155.f32[0]), v150, *v155.f32, 1), v151, v155, 2), xmmword_1E30474D0);
      *v152++ = vdiv_f32(*v156.i8, *&vdupq_laneq_s32(v156, 3));
      --v154;
    }

    while (v154);
  }

  v165 = 0;
  v166 = 0;
  v167 = vmulq_n_f32(v125, v124);
  v168 = &v228 + 1;
  do
  {
    v169 = *(v168 - 1);
    v170 = &v228 + 2 * v166;
    if (v169 < *v170 || v169 == *v170 && *v168 < v170[1])
    {
      v166 = v165;
    }

    ++v165;
    v168 += 2;
  }

  while (v78 != v165);
  v214 = v167;
  v171 = v78 - 1;
  v172 = (&v234 + v166);
  re::DynamicArray<re::Vector3<float>>::add(a5, v172);
  if (v166 != v171)
  {
    v173 = *v172;
    *v172 = *(&v234 + v171);
    *(&v234 + v171) = v173;
    v173.n128_u64[0] = *(&v228 + v166);
    *(&v228 + v166) = *(&v228 + v171);
    *(&v228 + v171) = v173.n128_u64[0];
  }

  if (v171)
  {
    *&v224[32] = xmmword_1E30A0528;
    v225 = unk_1E30A0538;
    v226 = xmmword_1E30A0548;
    *v224 = xmmword_1E30A0508;
    *&v224[16] = unk_1E30A0518;
    v227 = 10;
    *v219 = &v228;
    *&v219[8] = &v228 + 8 * v171;
    std::__introsort<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,false>(v224, &v224[8 * v171], v219, 126 - 2 * __clz(v171), 1);
    for (i = 0; i != v171; ++i)
    {
      re::DynamicArray<re::Vector3<float>>::add(a5, &v234 + *&v224[8 * i]);
    }
  }

  v175 = *(a5 + 16);
  if (!v175)
  {
    return 0;
  }

  v206 = *a1;
  v209 = *a2;
  v211 = *a3;
  *&v230 = 0;
  *&v229 = 0;
  v228 = 0uLL;
  DWORD2(v229) = 0;
  re::DynamicArray<unsigned long>::resize(&v228, v175);
  if (*(a5 + 16))
  {
    a1 = 0;
    do
    {
      v29 = v229;
      if (v229 <= a1)
      {
        goto LABEL_134;
      }

      v176 = vsubq_f32(*(*(a5 + 32) + 16 * a1), v216);
      v177 = vmulq_f32(v215, v176);
      v178 = vmulq_f32(v214, v176);
      *(v230 + 8 * a1++) = vadd_f32(vzip1_s32(*&vextq_s8(v177, v177, 8uLL), *&vextq_s8(v178, v178, 8uLL)), vadd_f32(vzip1_s32(*v177.i8, *v178.i8), vzip2_s32(*v177.i8, *v178.i8)));
    }

    while (*(a5 + 16) > a1);
  }

  v179 = vsubq_f32(v206, v216);
  v180 = vmulq_f32(v215, v179);
  v181 = vmulq_f32(v214, v179);
  *v181.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v180, v180, 8uLL), *&vextq_s8(v181, v181, 8uLL)), vadd_f32(vzip1_s32(*v180.i8, *v181.i8), vzip2_s32(*v180.i8, *v181.i8)));
  v182 = vsubq_f32(v209, v216);
  v183 = vmulq_f32(v215, v182);
  v184 = vmulq_f32(v214, v182);
  *v184.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v183, v183, 8uLL), *&vextq_s8(v184, v184, 8uLL)), vadd_f32(vzip1_s32(*v183.i8, *v184.i8), vzip2_s32(*v183.i8, *v184.i8)));
  v185 = vsubq_f32(v211, v216);
  v186 = vmulq_f32(v215, v185);
  v187 = vmulq_f32(v214, v185);
  *&v224[32] = 0;
  memset(v224, 0, 28);
  v218[0] = v181.i64[0];
  v218[1] = v184.i64[0];
  v218[2] = vadd_f32(vzip1_s32(*&vextq_s8(v186, v186, 8uLL), *&vextq_s8(v187, v187, 8uLL)), vadd_f32(vzip1_s32(*v186.i8, *v187.i8), vzip2_s32(*v186.i8, *v187.i8)));
  re::internal::clip2DTriangleWithPolygon(v218, v230, v229, v224);
  re::DynamicArray<re::Vector3<float>>::resize(a5, *&v224[16]);
  if (*&v224[16])
  {
    a1 = 0;
    while (1)
    {
      v29 = *(a5 + 16);
      if (v29 <= a1)
      {
        break;
      }

      *(*(a5 + 32) + 16 * a1) = vaddq_f32(vmulq_lane_f32(v214, *(*&v224[32] + 8 * a1), 1), vaddq_f32(v216, vmulq_n_f32(v215, COERCE_FLOAT(*(*&v224[32] + 8 * a1)))));
      if (*&v224[16] <= ++a1)
      {
        goto LABEL_113;
      }
    }

LABEL_138:
    v217[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v201 = MEMORY[0x1E69E9C10];
    v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v219 = 136315906;
    *&v219[4] = "operator[]";
    *&v219[12] = 1024;
    if (v202)
    {
      v203 = 3;
    }

    else
    {
      v203 = 2;
    }

    *&v219[14] = 789;
    v220 = 2048;
    v221 = a1;
    v222 = 2048;
    v223 = v29;
    _os_log_send_and_compose_impl(v203, v217, &v234, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v219, 38, v206.u64[0], v206.u64[1]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_113:
  if (*v224 && *&v224[32])
  {
    (*(**v224 + 40))();
  }

  if (v228 && v230)
  {
    (*(*v228 + 40))();
  }

  return *(a5 + 16) != 0;
}

float re::internal::computeAreaOfFaceInBox(unsigned int a1, float32x4_t *a2, float32x4_t *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v5.i32[3] = 0;
  v6 = vminnmq_f32(v5, xmmword_1E306D4A0);
  v7 = vmaxnmq_f32(v5, xmmword_1E306D4B0);
  v6.i32[3] = 0;
  v8 = a2[1];
  v8.i32[3] = 0;
  v9 = vminnmq_f32(v6, v8);
  v7.i32[3] = 0;
  v10 = vmaxnmq_f32(v7, v8);
  v11 = a2 + 2;
  v9.i32[3] = 0;
  v12 = a2[2];
  v12.i32[3] = 0;
  v13 = vminnmq_f32(v9, v12);
  v10.i32[3] = 0;
  v14 = vmaxnmq_f32(v10, v12);
  v15 = *a3;
  v16 = vcgtq_f32(*a3, v13);
  v16.i32[3] = v16.i32[2];
  if ((vmaxvq_u32(v16) & 0x80000000) != 0 || (v17 = a3[1], v18 = vcgtq_f32(v13, v17), v18.i32[3] = v18.i32[2], (vmaxvq_u32(v18) & 0x80000000) != 0) || (v19 = vcgtq_f32(v15, v14), v19.i32[3] = v19.i32[2], (vmaxvq_u32(v19) & 0x80000000) != 0) || (v20 = vcgtq_f32(v14, v17), v20.i32[3] = v20.i32[2], (vmaxvq_u32(v20) & 0x80000000) != 0))
  {
    v27 = vcgtq_f32(v15, v14);
    v27.i32[3] = v27.i32[2];
    v26 = 0.0;
    if ((vmaxvq_u32(v27) & 0x80000000) == 0)
    {
      v28 = vcgtq_f32(v13, a3[1]);
      v28.i32[3] = v28.i32[2];
      if ((vmaxvq_u32(v28) & 0x80000000) == 0)
      {
        v49 = 0;
        v46 = 0;
        v47 = 0;
        v45 = 0;
        v48 = 0;
        if (a1 >= 3)
        {
          v29 = 0;
          v30 = a1 - 2;
          do
          {
            v31 = &v11[v29++];
            re::internal::triangleIntersectsAABB(a2, &a2[v29], v31, a3, &v45);
            v32 = v47;
            if (v47 >= 3)
            {
              v33 = 3;
              v34 = 2;
              do
              {
                v35 = v33 - 2;
                if (v47 <= v35)
                {
                  v50 = 0;
                  memset(v59, 0, sizeof(v59));
                  v42 = MEMORY[0x1E69E9C10];
                  v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v51 = 136315906;
                  v52 = "operator[]";
                  v53 = 1024;
                  if (v43)
                  {
                    v44 = 3;
                  }

                  else
                  {
                    v44 = 2;
                  }

                  v54 = 789;
                  v55 = 2048;
                  v56 = v35;
                  v57 = 2048;
                  v58 = v32;
                  _os_log_send_and_compose_impl(v44, &v50, v59, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v45, v46);
                  _os_crash_msg();
                  __break(1u);
                }

                v36 = vsubq_f32(v49[v35], *v49);
                v37 = vsubq_f32(v49[v34], *v49);
                v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(v36)), v37, vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL));
                v39 = vmulq_f32(v38, v38);
                v26 = v26 + (sqrtf(v39.f32[1] + (v39.f32[2] + v39.f32[0])) * 0.5);
                v34 = v33;
              }

              while (v47 > v33++);
            }
          }

          while (v29 != v30);
          if (v45 && v49)
          {
            (*(*v45 + 40))();
          }
        }
      }
    }
  }

  else
  {
    v21 = *a2;
    if (a1 == 4)
    {
      v21 = a2[3];
    }

    v22 = vsubq_f32(a2[2], *a2);
    v23 = vsubq_f32(a2[1], v21);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v23)), v22, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    v25 = vmulq_f32(v24, v24);
    return sqrtf(v25.f32[1] + (v25.f32[2] + v25.f32[0])) * 0.5;
  }

  return v26;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,false>(uint64_t result, float *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 2;
  k = v9;
  while (1)
  {
    v9 = k;
    v12 = (a2 - k) >> 3;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v116 = *a3;
          v117 = a3[1];

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(k, k + 1, a2 - 1, v116, v117);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(k, k + 1, k + 2, a2 - 1, a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(k, k + 1, k + 2, k + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v118 = *(a2 - 1);
        v119 = *k;
        v120 = a3[1];
        v121 = (*a3 + 8 * v118);
        v122 = *v121;
        v123 = *v120;
        v124 = (*a3 + 8 * *k);
        v125 = *v124;
        if (*v121 == *v120 && v125 == v123)
        {
          v122 = v121[1];
          v125 = v124[1];
        }

        else
        {
          if (v122 == v123 || v125 == v123)
          {
            if (v122 == v123)
            {
              return result;
            }

            goto LABEL_560;
          }

          v263 = v121[1];
          v264 = v124[1];
          if (v263 < v264)
          {
LABEL_560:
            *k = v118;
            *(a2 - 1) = v119;
            return result;
          }

          if (v263 != v264)
          {
            return result;
          }

          if (v263 <= v120[1])
          {
            if (v122 >= v125)
            {
              return result;
            }

            goto LABEL_560;
          }
        }

        if (v122 <= v125)
        {
          return result;
        }

        goto LABEL_560;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (k == a2)
      {
        return result;
      }

      v154 = (v12 - 2) >> 1;
      v155 = *a3;
      v156 = a3[1];
      v157 = v154;
      while (1)
      {
        v158 = v157;
        if (v154 < v157)
        {
          goto LABEL_434;
        }

        v159 = (2 * v157) | 1;
        v160 = &k[v159];
        if (2 * v158 + 2 >= v12)
        {
          v163 = *v156;
        }

        else
        {
          v161 = (v155 + 8 * *v160);
          v162 = *v161;
          v163 = *v156;
          v164 = (v155 + 8 * v160[1]);
          v165 = *v164;
          if (*v161 == *v156 && v165 == v163)
          {
            v162 = v161[1];
            v165 = v164[1];
            goto LABEL_368;
          }

          if (v162 != v163 && v165 != v163)
          {
            v168 = v161[1];
            v169 = v164[1];
            if (v168 >= v169)
            {
              if (v168 != v169)
              {
                goto LABEL_372;
              }

              if (v168 > v156[1])
              {
LABEL_368:
                if (v162 <= v165)
                {
                  goto LABEL_372;
                }
              }

              else if (v162 >= v165)
              {
                goto LABEL_372;
              }
            }

LABEL_371:
            ++v160;
            v159 = 2 * v158 + 2;
            goto LABEL_372;
          }

          if (v162 != v163)
          {
            goto LABEL_371;
          }
        }

LABEL_372:
        v170 = k[v158];
        v171 = (v155 + 8 * *v160);
        v172 = *v171;
        v173 = (v155 + 8 * v170);
        v174 = *v173;
        if (*v171 == v163 && v174 == v163)
        {
          if (v171[1] > v173[1])
          {
            goto LABEL_434;
          }
        }

        else if (v172 == v163 || v174 == v163)
        {
          if (v172 != v163)
          {
            goto LABEL_434;
          }
        }

        else
        {
          v196 = v171[1];
          v197 = v173[1];
          if (v196 < v197)
          {
            goto LABEL_434;
          }

          if (v196 == v197)
          {
            if (v196 <= v156[1])
            {
              if (v172 < v174)
              {
                goto LABEL_434;
              }
            }

            else if (v172 > v174)
            {
              goto LABEL_434;
            }
          }
        }

        k[v158] = *v160;
        while (1)
        {
          if (v154 < v159)
          {
            goto LABEL_433;
          }

          v177 = v160;
          v178 = 2 * v159;
          v159 = (2 * v159) | 1;
          v160 = &k[v159];
          v179 = v178 + 2;
          v180 = *v156;
          if (v179 >= v12)
          {
            goto LABEL_403;
          }

          v181 = (v155 + 8 * *v160);
          v182 = *v181;
          v183 = (v155 + 8 * v160[1]);
          v184 = *v183;
          if (*v181 == v180 && v184 == v180)
          {
            v182 = v181[1];
            v184 = v183[1];
LABEL_399:
            if (v182 > v184)
            {
              goto LABEL_402;
            }

            goto LABEL_403;
          }

          if (v182 == v180 || v184 == v180)
          {
            if (v182 == v180)
            {
              goto LABEL_403;
            }

LABEL_402:
            ++v160;
            v159 = v179;
            goto LABEL_403;
          }

          v187 = v181[1];
          v188 = v183[1];
          if (v187 < v188)
          {
            goto LABEL_402;
          }

          if (v187 == v188)
          {
            if (v187 > v156[1])
            {
              goto LABEL_399;
            }

            if (v182 < v184)
            {
              goto LABEL_402;
            }
          }

LABEL_403:
          v189 = (v155 + 8 * *v160);
          v190 = *v189;
          v191 = *v173;
          if (*v189 == v180 && v191 == v180)
          {
            if (v189[1] > v173[1])
            {
              goto LABEL_432;
            }

            goto LABEL_415;
          }

          if (v190 == v180 || v191 == v180)
          {
            if (v190 != v180)
            {
              goto LABEL_432;
            }

            goto LABEL_415;
          }

          v194 = v189[1];
          v195 = v173[1];
          if (v194 < v195)
          {
            goto LABEL_432;
          }

          if (v194 == v195)
          {
            break;
          }

LABEL_415:
          *v177 = *v160;
        }

        if (v194 > v156[1])
        {
          if (v190 > v191)
          {
            goto LABEL_432;
          }

          goto LABEL_415;
        }

        if (v190 >= v191)
        {
          goto LABEL_415;
        }

LABEL_432:
        v160 = v177;
LABEL_433:
        *v160 = v170;
LABEL_434:
        v157 = v158 - 1;
        if (!v158)
        {
LABEL_466:
          v209 = 0;
          v210 = *k;
          v211 = *a3;
          v212 = a3[1];
          v200 = k;
          while (1)
          {
            v213 = v200;
            v214 = &v200[2 * v209];
            v200 = v214 + 2;
            v215 = 2 * v209;
            result = (2 * v209) | 1;
            v209 = result;
            v216 = v215 + 2;
            if (v216 < v12)
            {
              v218 = *(v214 + 2);
              v217 = v214 + 4;
              result = v211 + 8 * *(v217 - 1);
              v219 = *result;
              v220 = *v212;
              v221 = (v211 + 8 * v218);
              v222 = *v221;
              if (*result == *v212 && v222 == v220)
              {
                v219 = *(result + 4);
                v222 = v221[1];
                goto LABEL_480;
              }

              if (v219 != v220 && v222 != v220)
              {
                v225 = *(result + 4);
                v226 = v221[1];
                if (v225 >= v226)
                {
                  if (v225 != v226)
                  {
                    goto LABEL_484;
                  }

                  if (v225 > v212[1])
                  {
LABEL_480:
                    if (v219 <= v222)
                    {
                      goto LABEL_484;
                    }
                  }

                  else if (v219 >= v222)
                  {
                    goto LABEL_484;
                  }
                }

LABEL_483:
                v200 = v217;
                v209 = v216;
                goto LABEL_484;
              }

              if (v219 != v220)
              {
                goto LABEL_483;
              }
            }

LABEL_484:
            *v213 = *v200;
            if (v209 > ((v12 - 2) >> 1))
            {
              a2 -= 2;
              if (v200 == a2)
              {
                goto LABEL_509;
              }

              *v200 = *a2;
              *a2 = v210;
              v227 = (v200 - k + 8) >> 3;
              v228 = v227 - 2;
              if (v227 < 2)
              {
                goto LABEL_510;
              }

              v199 = v228 >> 1;
              v206 = &k[v228 >> 1];
              v210 = *v200;
              result = v211 + 8 * *v206;
              v229 = *result;
              v230 = *v212;
              v231 = (v211 + 8 * *v200);
              v232 = *v231;
              if (*result == *v212 && v232 == v230)
              {
                v229 = *(result + 4);
                v232 = v231[1];
                goto LABEL_504;
              }

              if (v229 == v230 || v232 == v230)
              {
                if (v229 == v230)
                {
                  goto LABEL_510;
                }

LABEL_507:
                *v200 = *v206;
                if (v228 < 2)
                {
LABEL_508:
                  v200 = v206;
LABEL_509:
                  *v200 = v210;
                  goto LABEL_510;
                }

                while (2)
                {
                  v198 = v199 - 1;
                  v199 = (v199 - 1) >> 1;
                  v200 = &k[v199];
                  result = v211 + 8 * *v200;
                  v201 = *result;
                  v202 = *v212;
                  v203 = *v231;
                  if (*result != *v212 || v203 != v202)
                  {
                    if (v201 == v202 || v203 == v202)
                    {
                      if (v201 == v202)
                      {
                        goto LABEL_508;
                      }
                    }

                    else
                    {
                      v207 = *(result + 4);
                      v208 = v231[1];
                      if (v207 >= v208)
                      {
                        if (v207 != v208)
                        {
                          goto LABEL_508;
                        }

                        if (v207 <= v212[1])
                        {
                          if (v201 >= v203)
                          {
                            goto LABEL_508;
                          }

                          goto LABEL_455;
                        }

LABEL_454:
                        if (v201 <= v203)
                        {
                          goto LABEL_508;
                        }
                      }
                    }

LABEL_455:
                    *v206 = *v200;
                    v206 = &k[v199];
                    if (v198 <= 1)
                    {
                      goto LABEL_509;
                    }

                    continue;
                  }

                  break;
                }

                v201 = *(result + 4);
                v203 = v231[1];
                goto LABEL_454;
              }

              v235 = *(result + 4);
              v236 = v231[1];
              if (v235 < v236)
              {
                goto LABEL_507;
              }

              if (v235 == v236)
              {
                if (v235 <= v212[1])
                {
                  if (v229 < v232)
                  {
                    goto LABEL_507;
                  }

                  goto LABEL_510;
                }

LABEL_504:
                if (v229 > v232)
                {
                  goto LABEL_507;
                }
              }

LABEL_510:
              if (v12-- <= 2)
              {
                return result;
              }

              goto LABEL_466;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &k[v12 >> 1];
    v15 = *a3;
    v16 = a3[1];
    if (v12 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(&v9[v12 >> 1], v9, a2 - 1, v15, v16);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(v9, &v9[v12 >> 1], a2 - 1, v15, v16);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(v9 + 1, v14 - 1, a2 - 2, *a3, a3[1]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(v9 + 2, &v9[v13 + 1], a2 - 3, *a3, a3[1]);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(v14 - 1, v14, &v9[v13 + 1], *a3, a3[1]);
      v17 = *v9;
      *v9 = *v14;
      *v14 = v17;
    }

    --a4;
    v18 = *v9;
    v19 = *a3;
    v20 = a3[1];
    v21 = *v20;
    v22 = (*a3 + 8 * *v9);
    if (a5)
    {
      v23 = *(v19 + 8 * v18);
LABEL_46:
      for (i = 0; ; ++i)
      {
        v36 = v9[i + 1];
        v37 = (v19 + 8 * v36);
        v38 = *v37;
        if (*v37 == v21 && v23 == v21)
        {
          if (v37[1] <= v22[1])
          {
            goto LABEL_67;
          }

          continue;
        }

        if (v38 == v21 || v23 == v21)
        {
          if (v38 == v21)
          {
            goto LABEL_67;
          }

          continue;
        }

        v41 = v37[1];
        v42 = v22[1];
        if (v41 < v42)
        {
          continue;
        }

        if (v41 != v42)
        {
          goto LABEL_67;
        }

        if (v41 <= v20[1])
        {
          break;
        }

        if (v38 <= v23)
        {
          goto LABEL_67;
        }

LABEL_66:
        ;
      }

      if (v38 < v23)
      {
        goto LABEL_66;
      }

LABEL_67:
      v43 = &v9[i];
      v44 = &v9[i + 1];
      j = a2 - 2;
      if (i * 8)
      {
        while (1)
        {
          v46 = (v19 + 8 * *j);
          v47 = *v46;
          if (*v46 == v21 && v23 == v21)
          {
            if (v46[1] > v22[1])
            {
              goto LABEL_115;
            }
          }

          else if (v47 == v21 || v23 == v21)
          {
            if (v47 != v21)
            {
              goto LABEL_115;
            }
          }

          else
          {
            v50 = v46[1];
            v51 = v22[1];
            if (v50 < v51)
            {
              goto LABEL_115;
            }

            if (v50 == v51)
            {
              if (v50 <= v20[1])
              {
                if (v47 < v23)
                {
                  goto LABEL_115;
                }
              }

              else if (v47 > v23)
              {
                goto LABEL_115;
              }
            }
          }

          j -= 2;
        }
      }

      j = a2;
      if (v44 < a2)
      {
        for (j = a2 - 2; ; j -= 2)
        {
          v52 = (v19 + 8 * *j);
          v53 = *v52;
          if (*v52 == v21 && v23 == v21)
          {
            if (v44 >= j || v52[1] > v22[1])
            {
              break;
            }
          }

          else if (v53 == v21 || v23 == v21)
          {
            if (v44 >= j || v53 != v21)
            {
              break;
            }
          }

          else
          {
            v56 = v52[1];
            v57 = v22[1];
            if (v56 < v57)
            {
              break;
            }

            if (v56 == v57)
            {
              if (v56 <= v20[1])
              {
                if (v44 >= j || v53 < v23)
                {
                  break;
                }
              }

              else if (v44 >= j || v53 > v23)
              {
                break;
              }
            }

            else if (v44 >= j)
            {
              break;
            }
          }
        }
      }

LABEL_115:
      if (v44 >= j)
      {
        goto LABEL_158;
      }

      v58 = *j;
      v59 = v44;
      v60 = j;
      while (2)
      {
        *v59++ = v58;
        *v60 = v36;
        v61 = *v20;
        v62 = *v22;
        while (2)
        {
          v36 = *v59;
          v63 = (v19 + 8 * *v59);
          v64 = *v63;
          if (*v63 == v61 && v62 == v61)
          {
            if (v63[1] <= v22[1])
            {
              goto LABEL_146;
            }

            goto LABEL_137;
          }

          if (v64 == v61 || v62 == v61)
          {
            if (v64 == v61)
            {
              goto LABEL_146;
            }

            goto LABEL_137;
          }

          v67 = v63[1];
          v68 = v22[1];
          if (v67 < v68)
          {
            goto LABEL_137;
          }

          if (v67 != v68)
          {
            goto LABEL_146;
          }

          if (v67 <= v20[1])
          {
            if (v64 >= v62)
            {
              goto LABEL_146;
            }

LABEL_137:
            ++v59;
            continue;
          }

          break;
        }

        if (v64 > v62)
        {
          goto LABEL_137;
        }

        do
        {
          while (1)
          {
LABEL_146:
            while (1)
            {
              v71 = *(v60 - 1);
              v60 -= 2;
              v58 = v71;
              v72 = (v19 + 8 * v71);
              v73 = *v72;
              if (*v72 != v61 || v62 != v61)
              {
                break;
              }

              if (v72[1] > v22[1])
              {
                goto LABEL_156;
              }
            }

            if (v73 == v61 || v62 == v61)
            {
              break;
            }

            v69 = v72[1];
            v70 = v22[1];
            if (v69 < v70)
            {
              goto LABEL_156;
            }

            if (v69 == v70)
            {
              if (v69 <= v20[1])
              {
                if (v73 < v62)
                {
                  goto LABEL_156;
                }
              }

              else if (v73 > v62)
              {
                goto LABEL_156;
              }
            }
          }
        }

        while (v73 == v61);
LABEL_156:
        if (v59 < v60)
        {
          continue;
        }

        break;
      }

      v43 = v59 - 1;
LABEL_158:
      if (v43 != v9)
      {
        *v9 = *v43;
      }

      *v43 = v18;
      if (v44 < j)
      {
LABEL_163:
        result = std::__introsort<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,false>(v9, v43, a3, a4, a5 & 1);
        a5 = 0;
        k = v43 + 1;
      }

      else
      {
        v76 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *>(v9, v43, a3);
        k = v43 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *>(v43 + 1, a2, a3);
        if (result)
        {
          a2 = v43;
          if (v76)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v76)
        {
          goto LABEL_163;
        }
      }
    }

    else
    {
      v24 = (v19 + 8 * *(v9 - 1));
      v25 = *v24;
      v23 = *v22;
      if (*v24 == v21 && v23 == v21)
      {
        if (v24[1] > v22[1])
        {
          goto LABEL_46;
        }
      }

      else if (v25 == v21 || v23 == v21)
      {
        if (v25 != v21)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v33 = v24[1];
        v34 = v22[1];
        if (v33 < v34)
        {
          goto LABEL_46;
        }

        if (v33 == v34)
        {
          if (v33 <= v20[1])
          {
            if (v25 < v23)
            {
              goto LABEL_46;
            }
          }

          else if (v25 > v23)
          {
            goto LABEL_46;
          }
        }
      }

      v28 = *v10;
      v29 = (v19 + 8 * *v10);
      v30 = *v29;
      if (v23 == v21 && v30 == v21)
      {
        if (v22[1] > v29[1])
        {
          goto LABEL_188;
        }
      }

      else if (v23 == v21 || v30 == v21)
      {
        if (v23 != v21)
        {
          goto LABEL_188;
        }
      }

      else
      {
        v83 = v22[1];
        v84 = v29[1];
        if (v83 < v84)
        {
          goto LABEL_188;
        }

        if (v83 == v84)
        {
          if (v83 <= v20[1])
          {
            if (v23 < v30)
            {
LABEL_188:
              for (k = v9 + 1; ; ++k)
              {
                v85 = (v19 + 8 * *k);
                v86 = *v85;
                if (v23 == v21 && v86 == v21)
                {
                  if (v22[1] > v85[1])
                  {
                    goto LABEL_208;
                  }
                }

                else if (v23 == v21 || v86 == v21)
                {
                  if (v23 != v21)
                  {
                    goto LABEL_208;
                  }
                }

                else
                {
                  v89 = v22[1];
                  v90 = v85[1];
                  if (v89 < v90)
                  {
                    goto LABEL_208;
                  }

                  if (v89 == v90)
                  {
                    if (v89 <= v20[1])
                    {
                      if (v23 < v86)
                      {
                        goto LABEL_208;
                      }
                    }

                    else if (v23 > v86)
                    {
                      goto LABEL_208;
                    }
                  }
                }
              }
            }
          }

          else if (v23 > v30)
          {
            goto LABEL_188;
          }
        }
      }

      for (k = v9 + 1; k < a2; ++k)
      {
        v77 = (v19 + 8 * *k);
        v78 = *v77;
        if (v23 == v21 && v78 == v21)
        {
          if (v22[1] > v77[1])
          {
            break;
          }
        }

        else if (v23 == v21 || v78 == v21)
        {
          if (v23 != v21)
          {
            break;
          }
        }

        else
        {
          v81 = v22[1];
          v82 = v77[1];
          if (v81 < v82)
          {
            break;
          }

          if (v81 == v82)
          {
            if (v81 <= v20[1])
            {
              if (v23 < v78)
              {
                break;
              }
            }

            else if (v23 > v78)
            {
              break;
            }
          }
        }
      }

LABEL_208:
      m = a2;
      if (k < a2)
      {
        for (m = a2 - 2; ; m -= 2)
        {
          v92 = v19 + 8 * v28;
          if (v23 == v21 && v30 == v21)
          {
            if (v22[1] <= *(v92 + 4))
            {
              break;
            }
          }

          else if (v23 == v21 || v30 == v21)
          {
            if (v23 == v21)
            {
              break;
            }
          }

          else
          {
            v95 = v22[1];
            v96 = *(v92 + 4);
            if (v95 >= v96)
            {
              if (v95 != v96)
              {
                break;
              }

              if (v95 <= v20[1])
              {
                if (v23 >= v30)
                {
                  break;
                }
              }

              else if (v23 <= v30)
              {
                break;
              }
            }
          }

          v97 = *(m - 1);
          v28 = v97;
          v30 = *(v19 + 8 * v97);
        }
      }

      if (k >= m)
      {
        goto LABEL_272;
      }

      v98 = *k;
      v99 = *m;
      do
      {
        *k++ = v99;
        *m = v98;
        v100 = *v22;
        v101 = *v20;
        while (1)
        {
          v98 = *k;
          v102 = (v19 + 8 * *k);
          v103 = *v102;
          if (v100 == v101 && v103 == v101)
          {
            if (v22[1] > v102[1])
            {
              goto LABEL_252;
            }

            goto LABEL_245;
          }

          if (v100 != v101 && v103 != v101)
          {
            break;
          }

          if (v100 != v101)
          {
            goto LABEL_252;
          }

LABEL_245:
          ++k;
        }

        v106 = v22[1];
        v107 = v102[1];
        if (v106 < v107)
        {
          goto LABEL_252;
        }

        if (v106 != v107)
        {
          goto LABEL_245;
        }

        if (v106 <= v20[1])
        {
          if (v100 < v103)
          {
            goto LABEL_252;
          }

          goto LABEL_245;
        }

        if (v100 <= v103)
        {
          goto LABEL_245;
        }

        while (1)
        {
          do
          {
            while (1)
            {
LABEL_252:
              while (1)
              {
                v108 = *(m - 1);
                m -= 2;
                v99 = v108;
                v109 = (v19 + 8 * v108);
                v110 = *v109;
                if (v100 != v101 || v110 != v101)
                {
                  break;
                }

                if (v22[1] <= v109[1])
                {
                  goto LABEL_271;
                }
              }

              if (v100 != v101 && v110 != v101)
              {
                break;
              }

              if (v100 == v101)
              {
                goto LABEL_271;
              }
            }

            v113 = v22[1];
            v114 = v109[1];
          }

          while (v113 < v114);
          if (v113 != v114)
          {
            break;
          }

          if (v113 <= v20[1])
          {
            if (v100 >= v110)
            {
              break;
            }
          }

          else if (v100 <= v110)
          {
            break;
          }
        }

LABEL_271:
        ;
      }

      while (k < m);
LABEL_272:
      v115 = k - 1;
      if (k - 1 != v9)
      {
        *v9 = *v115;
      }

      a5 = 0;
      *v115 = v18;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (k == a2)
    {
      return result;
    }

    v238 = k + 1;
    if (k + 1 == a2)
    {
      return result;
    }

    v239 = *a3;
    v240 = a3[1];
    while (1)
    {
      v241 = v9;
      v9 = v238;
      v243 = *v241;
      v242 = v241[1];
      v244 = (v239 + 8 * v242);
      v245 = *v244;
      v246 = *v240;
      v247 = (v239 + 8 * *v241);
      v248 = *v247;
      if (*v244 == *v240 && v248 == v246)
      {
        break;
      }

      if (v245 == v246 || v248 == v246)
      {
        if (v245 == v246)
        {
          goto LABEL_553;
        }

LABEL_534:
        while (2)
        {
          while (1)
          {
            v253 = v241;
            v254 = *--v241;
            v241[2] = v243;
            v243 = v254;
            v255 = *v244;
            v256 = *v240;
            v257 = (v239 + 8 * v254);
            v258 = *v257;
            if (*v244 == *v240 && v258 == v256)
            {
              break;
            }

            if (v255 == v256 || v258 == v256)
            {
              if (v255 == v256)
              {
                goto LABEL_552;
              }

              continue;
            }

            v261 = v244[1];
            v262 = v257[1];
            if (v261 < v262)
            {
              continue;
            }

            if (v261 != v262)
            {
              goto LABEL_552;
            }

            if (v261 > v240[1])
            {
              goto LABEL_546;
            }

            if (v255 >= v258)
            {
LABEL_552:
              *v253 = v242;
              goto LABEL_553;
            }
          }

          v255 = v244[1];
          v258 = v257[1];
LABEL_546:
          if (v255 <= v258)
          {
            goto LABEL_552;
          }

          continue;
        }
      }

      v251 = v244[1];
      v252 = v247[1];
      if (v251 < v252)
      {
        goto LABEL_534;
      }

      if (v251 == v252)
      {
        if (v251 > v240[1])
        {
          goto LABEL_531;
        }

        if (v245 < v248)
        {
          goto LABEL_534;
        }
      }

LABEL_553:
      v238 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }

    v245 = v244[1];
    v248 = v247[1];
LABEL_531:
    if (v245 > v248)
    {
      goto LABEL_534;
    }

    goto LABEL_553;
  }

  if (k == a2)
  {
    return result;
  }

  v128 = k + 1;
  if (k + 1 == a2)
  {
    return result;
  }

  v129 = 0;
  v130 = *a3;
  v131 = a3[1];
  v132 = k;
  while (2)
  {
    v133 = v132;
    v132 = v128;
    v134 = v133[1];
    v135 = (v130 + 8 * v134);
    v136 = *v135;
    v137 = *v131;
    v138 = (v130 + 8 * *v133);
    v139 = *v138;
    if (*v135 == *v131 && v139 == v137)
    {
      v136 = v135[1];
      v139 = v138[1];
LABEL_319:
      if (v136 <= v139)
      {
        goto LABEL_349;
      }

      goto LABEL_322;
    }

    if (v136 == v137 || v139 == v137)
    {
      if (v136 == v137)
      {
        goto LABEL_349;
      }

      goto LABEL_322;
    }

    v142 = v135[1];
    v143 = v138[1];
    if (v142 < v143)
    {
      goto LABEL_322;
    }

    if (v142 != v143)
    {
      goto LABEL_349;
    }

    if (v142 > v131[1])
    {
      goto LABEL_319;
    }

    if (v136 >= v139)
    {
      goto LABEL_349;
    }

LABEL_322:
    v133[1] = *v133;
    v144 = k;
    if (v133 == k)
    {
      goto LABEL_348;
    }

    v145 = v129;
    while (2)
    {
      v146 = *(k + v145 - 8);
      v147 = *v135;
      v148 = *v131;
      result = v130 + 8 * v146;
      v149 = *result;
      if (*v135 == *v131 && v149 == v148)
      {
        v147 = v135[1];
        v149 = *(result + 4);
        goto LABEL_336;
      }

      if (v147 == v148 || v149 == v148)
      {
        if (v147 == v148)
        {
          v144 = (k + v145);
          goto LABEL_348;
        }

LABEL_337:
        --v133;
        *(k + v145) = v146;
        v145 -= 8;
        if (!v145)
        {
          v144 = k;
          goto LABEL_348;
        }

        continue;
      }

      break;
    }

    v152 = v135[1];
    v153 = *(result + 4);
    if (v152 < v153)
    {
      goto LABEL_337;
    }

    if (v152 != v153)
    {
      goto LABEL_343;
    }

    if (v152 > v131[1])
    {
LABEL_336:
      if (v147 <= v149)
      {
        goto LABEL_343;
      }

      goto LABEL_337;
    }

    if (v147 < v149)
    {
      goto LABEL_337;
    }

LABEL_343:
    v144 = v133;
LABEL_348:
    *v144 = v134;
LABEL_349:
    v128 = v132 + 1;
    v129 += 8;
    if (v132 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, float *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = (a4 + 8 * *a2);
  v8 = *v7;
  v9 = *a5;
  v10 = (a4 + 8 * *result);
  v11 = *v10;
  if (*v7 == *a5 && v11 == v9)
  {
    v17 = v7[1];
    if (v17 > v10[1])
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v8 == v9 || v11 == v9)
  {
    if (v8 != v9)
    {
      v14 = *a3;
      v15 = *(a4 + 8 * *a3);
      v16 = v15 == v9;
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  v17 = v7[1];
  v22 = v10[1];
  if (v17 < v22)
  {
    goto LABEL_25;
  }

  if (v17 != v22)
  {
LABEL_13:
    v18 = (a4 + 8 * *a3);
    v19 = *v18;
    if (v8 == v9 && v19 == v9)
    {
      if (v18[1] <= v7[1])
      {
        return result;
      }
    }

    else if (v8 == v9 || v19 == v9)
    {
      if (v19 == v9)
      {
        return result;
      }
    }

    else
    {
      v33 = v18[1];
      v34 = v7[1];
      if (v33 >= v34)
      {
        if (v33 != v34)
        {
          return result;
        }

        if (v33 <= a5[1])
        {
          if (v19 >= v8)
          {
            return result;
          }
        }

        else if (v19 <= v8)
        {
          return result;
        }
      }
    }

    *a2 = *a3;
    *a3 = v5;
    v35 = *result;
    v36 = (a4 + 8 * *a2);
    v37 = *v36;
    v38 = *a5;
    v39 = (a4 + 8 * *result);
    v40 = *v39;
    if (*v36 == *a5 && v40 == v38)
    {
      v37 = v36[1];
      v40 = v39[1];
    }

    else
    {
      if (v37 == v38 || v40 == v38)
      {
        if (v37 == v38)
        {
          return result;
        }

        goto LABEL_75;
      }

      v43 = v36[1];
      v44 = v39[1];
      if (v43 < v44)
      {
        goto LABEL_75;
      }

      if (v43 != v44)
      {
        return result;
      }

      if (v43 <= a5[1])
      {
        if (v37 >= v40)
        {
          return result;
        }

LABEL_75:
        *result = *a2;
        *a2 = v35;
        return result;
      }
    }

    if (v37 <= v40)
    {
      return result;
    }

    goto LABEL_75;
  }

  if (v17 > a5[1])
  {
    if (v8 > v11)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v8 >= v11)
  {
    goto LABEL_13;
  }

LABEL_25:
  v14 = *a3;
  v23 = (a4 + 8 * *a3);
  v15 = *v23;
  v16 = *v23 == v9;
  if (v8 == v9 && v15 == v9)
  {
    if (v23[1] <= v17)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_29:
  if (v8 == v9 || v16)
  {
    if (v16)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v25 = *(a4 + 8 * v14 + 4);
  v26 = v7[1];
  if (v25 < v26)
  {
    goto LABEL_39;
  }

  if (v25 != v26)
  {
    goto LABEL_41;
  }

  if (v25 > a5[1])
  {
    if (v15 <= v8)
    {
      goto LABEL_41;
    }

LABEL_39:
    *result = v14;
LABEL_82:
    *a3 = v6;
    return result;
  }

  if (v15 < v8)
  {
    goto LABEL_39;
  }

LABEL_41:
  *result = v5;
  *a2 = v6;
  v27 = (a4 + 8 * *a3);
  v28 = *v27;
  v29 = *a5;
  v30 = *v10;
  if (*v27 == *a5 && v30 == v29)
  {
    v28 = v27[1];
    v30 = v10[1];
LABEL_72:
    if (v28 > v30)
    {
      goto LABEL_81;
    }

    return result;
  }

  if (v28 == v29 || v30 == v29)
  {
    if (v28 != v29)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v45 = v27[1];
    v46 = v10[1];
    if (v45 < v46)
    {
LABEL_81:
      *a2 = *a3;
      goto LABEL_82;
    }

    if (v45 == v46)
    {
      if (v45 <= a5[1])
      {
        if (v28 < v30)
        {
          goto LABEL_81;
        }

        return result;
      }

      goto LABEL_72;
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a2, a3, *a5, *(a5 + 8));
  v11 = *a3;
  v13 = *a5;
  v12 = *(a5 + 8);
  v14 = (*a5 + 8 * *a4);
  v15 = *v14;
  v16 = *v12;
  v17 = (*a5 + 8 * *a3);
  v18 = *v17;
  if (*v14 == *v12 && v18 == v16)
  {
    v15 = v14[1];
    v18 = v17[1];
    goto LABEL_13;
  }

  if (v15 != v16 && v18 != v16)
  {
    v21 = v14[1];
    v22 = v17[1];
    if (v21 < v22)
    {
      goto LABEL_16;
    }

    if (v21 != v22)
    {
      return result;
    }

    if (v21 <= v12[1])
    {
      if (v15 >= v18)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_13:
    if (v15 <= v18)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v15 == v16)
  {
    return result;
  }

LABEL_16:
  *a3 = *a4;
  *a4 = v11;
  v23 = *a2;
  v24 = (v13 + 8 * *a3);
  v25 = *v24;
  v26 = *v12;
  v27 = (v13 + 8 * *a2);
  v28 = *v27;
  if (*v24 == *v12 && v28 == v26)
  {
    v25 = v24[1];
    v28 = v27[1];
LABEL_28:
    if (v25 <= v28)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v25 == v26 || v28 == v26)
  {
    if (v25 == v26)
    {
      return result;
    }

    goto LABEL_31;
  }

  v31 = v24[1];
  v32 = v27[1];
  if (v31 >= v32)
  {
    if (v31 != v32)
    {
      return result;
    }

    if (v31 <= v12[1])
    {
      if (v25 >= v28)
      {
        return result;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_31:
  *a2 = *a3;
  *a3 = v23;
  v33 = *a1;
  v34 = (v13 + 8 * *a2);
  v35 = *v34;
  v36 = *v12;
  v37 = (v13 + 8 * *a1);
  v38 = *v37;
  if (*v34 == *v12 && v38 == v36)
  {
    v35 = v34[1];
    v38 = v37[1];
    goto LABEL_43;
  }

  if (v35 == v36 || v38 == v36)
  {
    if (v35 == v36)
    {
      return result;
    }

    goto LABEL_50;
  }

  v41 = v34[1];
  v42 = v37[1];
  if (v41 < v42)
  {
LABEL_50:
    *a1 = *a2;
    *a2 = v33;
    return result;
  }

  if (v41 == v42)
  {
    if (v41 <= v12[1])
    {
      if (v35 >= v38)
      {
        return result;
      }

      goto LABEL_50;
    }

LABEL_43:
    if (v35 <= v38)
    {
      return result;
    }

    goto LABEL_50;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a2, a3, a4, a6);
  v13 = *a4;
  v15 = *a6;
  v14 = a6[1];
  v16 = (*a6 + 8 * *a5);
  v17 = *v16;
  v18 = *v14;
  v19 = (*a6 + 8 * *a4);
  v20 = *v19;
  if (*v16 == *v14 && v20 == v18)
  {
    v17 = v16[1];
    v20 = v19[1];
    goto LABEL_13;
  }

  if (v17 != v18 && v20 != v18)
  {
    v23 = v16[1];
    v24 = v19[1];
    if (v23 < v24)
    {
      goto LABEL_16;
    }

    if (v23 != v24)
    {
      return result;
    }

    if (v23 <= v14[1])
    {
      if (v17 >= v20)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_13:
    if (v17 <= v20)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v17 == v18)
  {
    return result;
  }

LABEL_16:
  *a4 = *a5;
  *a5 = v13;
  v25 = *a3;
  v26 = (v15 + 8 * *a4);
  v27 = *v26;
  v28 = *v14;
  v29 = (v15 + 8 * *a3);
  v30 = *v29;
  if (*v26 == *v14 && v30 == v28)
  {
    v27 = v26[1];
    v30 = v29[1];
    goto LABEL_28;
  }

  if (v27 != v28 && v30 != v28)
  {
    v33 = v26[1];
    v34 = v29[1];
    if (v33 < v34)
    {
      goto LABEL_31;
    }

    if (v33 != v34)
    {
      return result;
    }

    if (v33 <= v14[1])
    {
      if (v27 >= v30)
      {
        return result;
      }

      goto LABEL_31;
    }

LABEL_28:
    if (v27 <= v30)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v27 == v28)
  {
    return result;
  }

LABEL_31:
  *a3 = *a4;
  *a4 = v25;
  v35 = *a2;
  v36 = (v15 + 8 * *a3);
  v37 = *v36;
  v38 = *v14;
  v39 = (v15 + 8 * *a2);
  v40 = *v39;
  if (*v36 == *v14 && v40 == v38)
  {
    v37 = v36[1];
    v40 = v39[1];
LABEL_43:
    if (v37 <= v40)
    {
      return result;
    }

    goto LABEL_50;
  }

  if (v37 == v38 || v40 == v38)
  {
    if (v37 == v38)
    {
      return result;
    }

LABEL_50:
    *a2 = *a3;
    *a3 = v35;
    v45 = *a1;
    v46 = (v15 + 8 * *a2);
    v47 = *v46;
    v48 = *v14;
    v49 = (v15 + 8 * *a1);
    v50 = *v49;
    if (*v46 == *v14 && v50 == v48)
    {
      v47 = v46[1];
      v50 = v49[1];
    }

    else
    {
      if (v47 == v48 || v50 == v48)
      {
        if (v47 == v48)
        {
          return result;
        }

        goto LABEL_67;
      }

      v51 = v46[1];
      v52 = v49[1];
      if (v51 < v52)
      {
LABEL_67:
        *a1 = *a2;
        *a2 = v45;
        return result;
      }

      if (v51 != v52)
      {
        return result;
      }

      if (v51 <= v14[1])
      {
        if (v47 >= v50)
        {
          return result;
        }

        goto LABEL_67;
      }
    }

    if (v47 <= v50)
    {
      return result;
    }

    goto LABEL_67;
  }

  v43 = v36[1];
  v44 = v39[1];
  if (v43 < v44)
  {
    goto LABEL_50;
  }

  if (v43 == v44)
  {
    if (v43 <= v14[1])
    {
      if (v37 >= v40)
      {
        return result;
      }

      goto LABEL_50;
    }

    goto LABEL_43;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a1 + 1, a2 - 1, *a3, *(a3 + 8));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = *(a3 + 8);
      v10 = (*a3 + 8 * v7);
      v11 = *v10;
      v12 = *v9;
      v13 = (*a3 + 8 * *a1);
      v14 = *v13;
      if (*v10 == *v9 && v14 == v12)
      {
        v11 = v10[1];
        v14 = v13[1];
      }

      else
      {
        if (v11 == v12 || v14 == v12)
        {
          if (v11 == v12)
          {
            return 1;
          }

          goto LABEL_70;
        }

        v43 = v10[1];
        v44 = v13[1];
        if (v43 < v44)
        {
LABEL_70:
          *a1 = v7;
          *(a2 - 1) = v8;
          return 1;
        }

        if (v43 != v44)
        {
          return 1;
        }

        if (v43 <= v9[1])
        {
          if (v11 < v14)
          {
            goto LABEL_70;
          }

          return 1;
        }
      }

      if (v11 > v14)
      {
        goto LABEL_70;
      }

      return 1;
    }
  }

  v17 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, *a3, *(a3 + 8));
  v18 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v21 = *a3;
  v22 = *(a3 + 8);
  while (2)
  {
    v23 = *v18;
    v24 = (v21 + 8 * *v18);
    v25 = *v24;
    v26 = *v22;
    v27 = (v21 + 8 * *v17);
    v28 = *v27;
    if (*v24 == *v22 && v28 == v26)
    {
      v25 = v24[1];
      v28 = v27[1];
LABEL_34:
      if (v25 <= v28)
      {
        goto LABEL_59;
      }

      goto LABEL_37;
    }

    if (v25 == v26 || v28 == v26)
    {
      if (v25 == v26)
      {
        goto LABEL_59;
      }

      goto LABEL_37;
    }

    v31 = v24[1];
    v32 = v27[1];
    if (v31 >= v32)
    {
      if (v31 != v32)
      {
        goto LABEL_59;
      }

      if (v31 <= v22[1])
      {
        if (v25 >= v28)
        {
          goto LABEL_59;
        }

        goto LABEL_37;
      }

      goto LABEL_34;
    }

LABEL_37:
    *v18 = *v17;
    v33 = v19;
    while (1)
    {
      v34 = *(a1 + v33 + 8);
      v35 = *v24;
      v36 = *v22;
      v37 = (v21 + 8 * v34);
      v38 = *v37;
      if (*v24 == *v22 && v38 == v36)
      {
        v35 = v24[1];
        v38 = v37[1];
LABEL_50:
        if (v35 <= v38)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

      if (v35 == v36 || v38 == v36)
      {
        if (v35 == v36)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

      v41 = v24[1];
      v42 = v37[1];
      if (v41 >= v42)
      {
        break;
      }

LABEL_51:
      --v17;
      *(a1 + v33 + 16) = v34;
      v33 -= 8;
      if (v33 == -16)
      {
        v17 = a1;
        goto LABEL_58;
      }
    }

    if (v41 == v42)
    {
      if (v41 <= v22[1])
      {
        if (v35 >= v38)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v17 = (a1 + v33 + 16);
LABEL_58:
    *v17 = v23;
    if (++v20 != 8)
    {
LABEL_59:
      v17 = v18;
      v19 += 8;
      if (++v18 == a2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 1 == a2;
  }
}