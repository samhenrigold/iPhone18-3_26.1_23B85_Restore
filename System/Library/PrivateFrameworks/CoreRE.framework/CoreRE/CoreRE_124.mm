uint64_t re::AssetHandle::loadedAsset<re::BlendShapeWeightsDefinitionAsset>(re::BlendShapeWeightsDefinitionAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::BlendShapeWeightsDefinitionAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::ecs2::BlendShapeWeightsSystem::removedBlendShapeWeightsBufferHandler(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v17 = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 392), &v17);
  if (v6 != -1)
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 336, *(*(a1 + 400) + 16 * v6 + 8));
    v8 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v8)
    {
      v9 = v8;
      v10 = 24;
      v11 = 0xFFFFFFFFLL;
      do
      {
        v12 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v10), v9);
        if (v12 != -1 && (v13 & 0xFFFFFF00000000) != 0)
        {
          v15 = v12;
          v11 = v13;
          goto LABEL_13;
        }

        v10 += 8;
      }

      while (v10 != 56);
      v15 = -1;
LABEL_13:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(v7, v15, v11);
    }
  }

  return 0;
}

void *re::ecs2::BlendShapeWeightsSystem::update(void *a1, uint64_t a2, uint64_t a3)
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
      v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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
      v14 = v13[896].u64[0];
      if (v14 >= v7)
      {
        v14 = v7;
      }

      v13[896].i64[0] = v14;
      v15 = v13[896].u64[1];
      if (v15 <= v7)
      {
        v15 = v7;
      }

      v13[896].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v7;
      v13[897] = vaddq_s64(v13[897], v16);
      *(v12 + 184) = 0;
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v45, 3033, a1, v7, 0, 0);
  re::StackScratchAllocator::StackScratchAllocator(v59);
  v55 = 1;
  v56 = 0;
  v57 = 0;
  v53 = v59;
  v54 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v53, 0);
  v55 += 2;
  v17 = a1[68];
  if ((v17 & 0x3F) != 0)
  {
    v18 = (v17 >> 6) + 1;
  }

  else
  {
    v18 = v17 >> 6;
  }

  v58 = a1[68];
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
      v23 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 49, v48);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v53, *(a1[50] + 16 * v23 + 8));
      v21 -= 8;
    }

    while (v21);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v53, (a1 + 63));
  v49 = 1;
  v50 = 0;
  v51 = 0;
  v48[0] = v59;
  v48[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v48, 0);
  v49 += 2;
  v24 = a1[68];
  if ((v24 & 0x3F) != 0)
  {
    v25 = (v24 >> 6) + 1;
  }

  else
  {
    v25 = v24 >> 6;
  }

  v52 = a1[68];
  v60 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v48, v25, &v60);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 63), &v53);
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
        v33 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 42), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 63), v48);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 42));
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

_anonymous_namespace_ *re::ecs2::BlendShapeWeightsSystem::willAddSystemToECSService(re::ecs2::BlendShapeWeightsSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 34) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  v4 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v5);
  *(this + 37) = v4;
  *(this + 38) = result;
  return result;
}

void *re::ecs2::BlendShapeWeightsSystem::willRemoveSystemFromECSService(void *this)
{
  this[34] = 0;
  this[37] = 0;
  this[38] = 0;
  return this;
}

uint64_t (***re::ecs2::BlendShapeWeightsSystem::willAddSceneToECSService(re::ecs2::BlendShapeWeightsSystem *this, re::EventBus **a2))(void)
{
  v75[11] = *MEMORY[0x1E69E9840];
  v53 = a2;
  v62 = a2;
  v4 = *(this + 58);
  v5 = *(this + 118);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 480);
    }

    else
    {
      v6 = *(this + 61);
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
    v7 = (this + 480);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 61);
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
    *&v54 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 456, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v54);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::init(v12, this + 336, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, &v62, &v54);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 456, v54);
    v13 = v54;
    goto LABEL_49;
  }

LABEL_17:
  v61 = 0u;
  v54 = 0u;
  *&v55 = 0;
  v56 = 0u;
  v57 = 0u;
  *(&v55 + 1) = -1;
  v58 = 0;
  v59 = 1;
  v60 = 0uLL;
  v14 = *(this + 47);
  *&v61 = 0;
  v15 = *(this + 43);
  DWORD2(v61) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,4ul>::setBucketsCapacity((this + 336), (v14 + 4) >> 2);
    v15 = *(this + 43);
  }

  if (v15 <= v14 >> 2)
  {
    v63 = 0;
    memset(v75, 0, 80);
    v49 = MEMORY[0x1E69E9C10];
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v70 = 858;
    v71 = 2048;
    v72 = v14 >> 2;
    v73 = 2048;
    v74 = v15;
    _os_log_send_and_compose_impl(v50, &v63, v75, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v51, v52);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(this + 352))
  {
    v16 = this + 360;
  }

  else
  {
    v16 = *(this + 46);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 47);
  ++*(this + 96);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v54;
  v20 = v55;
  v21 = v56;
  *(v18 + 48) = v57;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v57 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v54);
  v23 = *(this + 47);
  if (!v23)
  {
    goto LABEL_61;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::init(v24, this + 336, v62);
  v75[0] = *(this + 47) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, &v62, v75);
  v25 = *(this + 47);
  v26 = *(this + 62);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 62) = v25;
  *&v54 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 456), v27, &v54);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 62) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 472))
    {
      v30 = this + 480;
    }

    else
    {
      v30 = *(this + 61);
    }

    *&v30[8 * *(this + 58) - 8] &= v28;
  }

  v31 = *(this + 47);
  v32 = *(this + 68);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 68) = v31;
  *&v54 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 504), v33, &v54);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 68) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 520))
    {
      v36 = this + 528;
    }

    else
    {
      v36 = *(this + 67);
    }

    *&v36[8 * *(this + 64) - 8] &= v34;
  }

  v13 = v75[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 504, v13);
  if (*(this + 568) == 1)
  {
    v38 = *(this + 69);
    v39 = *(v62 + 47);
    LOWORD(v54) = 257;
    DWORD1(v54) = 1023969417;
    BYTE8(v54) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v54);
    result = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 336);
  }

  v40 = a2[36];
  if (v40)
  {
    *&v57 = 0;
    v54 = 0u;
    v55 = 1uLL;
    v56 = 0uLL;
    v41 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 224, &v53, &v54);
    re::BucketArray<RESubscriptionHandle,4ul>::deinit(&v54);
    v42 = v54;
    if (v54)
    {
      if ((v55 & 1) == 0)
      {
        v42 = (*(*v54 + 40))();
      }
    }

    v65 = re::globalAllocators(v43)[2];
    v44 = (*(*v65 + 32))(v65, 32, 0);
    *v44 = &unk_1F5CF2F30;
    v44[1] = this;
    v44[2] = re::ecs2::BlendShapeWeightsSystem::removedBlendShapeWeightsBufferHandler;
    v44[3] = 0;
    v66 = v44;
    v45 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v40, v64, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v47 = v46;
    v48 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(v41);
    *v48 = v45;
    v48[1] = v47;
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v64);
  }

  return result;
}

uint64_t re::ecs2::BlendShapeWeightsSystem::willRemoveSceneFromECSService(re::ecs2::BlendShapeWeightsSystem *this, re::ecs2::Scene *a2)
{
  v21 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 224, &v21);
  if (v3)
  {
    v4 = *(v21 + 36);
    if (v4)
    {
      v5 = v3;
      v6 = *(v3 + 40);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](v5, i);
          re::EventBus::unsubscribe(v4, *v8, v8[1]);
        }
      }
    }

    re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 224, &v21);
  }

  v22 = v21;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 49, &v22);
  if (result != -1)
  {
    v10 = *(this + 50) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 456, *(v10 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 504, *(v10 + 8));
    v11 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, *(v10 + 8));
    if (*v11)
    {
      v12 = v11;
      *v11 = 0;
      v13 = v11 + 1;
      v14 = *(v11[1] + 288);
      if (v14)
      {
        v15 = v11[12];
        if (v15)
        {
          for (j = 0; j != v15; ++j)
          {
            v17 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v12 + 7), j);
            re::EventBus::unsubscribe(v14, *v17, v17[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v12 + 7));
      v18 = 0;
      v19 = v12 + 3;
      do
      {
        v20 = v12[2];
        if (*v20)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v20, v19[v18]);
        }

        v19[v18++] = -1;
      }

      while (v18 != 4);
      *v13 = 0;
      v13[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 392, &v22);
  }

  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<float>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AAF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAF00))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AAF38);
    qword_1EE1AAF38 = &unk_1F5CF30E8;
    __cxa_guard_release(&qword_1EE1AAF00);
  }

  if ((_MergedGlobals_293 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, a2);
    if ((_MergedGlobals_293 & 1) == 0)
    {
      v3 = v2;
      _MergedGlobals_293 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AAF38, 0);
      qword_1EE1AAF48 = 0x2800000003;
      dword_1EE1AAF50 = v4;
      word_1EE1AAF54 = 0;
      *&xmmword_1EE1AAF58 = 0;
      *(&xmmword_1EE1AAF58 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AAF68 = v3;
      unk_1EE1AAF70 = 0;
      qword_1EE1AAF38 = &unk_1F5CF30E8;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1AAF38);
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
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1AAF58 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeights>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1AAF08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAF08))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE1AAF78);
    qword_1EE1AAF78[0] = &unk_1F5CF3180;
    __cxa_guard_release(&qword_1EE1AAF08);
  }

  if ((byte_1EE1AAEE1 & 1) == 0)
  {
    v6 = re::introspect_BlendShapeWeights(1, a2, a3, a4, a5, a6);
    if ((byte_1EE1AAEE1 & 1) == 0)
    {
      v7 = v6;
      byte_1EE1AAEE1 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(qword_1EE1AAF78, 0);
      unk_1EE1AAF88 = 0x2800000003;
      unk_1EE1AAF90 = v8;
      unk_1EE1AAF94 = 0;
      *&xmmword_1EE1AAF98 = 0;
      *(&xmmword_1EE1AAF98 + 1) = 0xFFFFFFFFLL;
      unk_1EE1AAFA8 = v7;
      unk_1EE1AAFB0 = 0;
      qword_1EE1AAF78[0] = &unk_1F5CF3180;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, qword_1EE1AAF78);
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
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1AAF98 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

uint64_t re::ecs2::BlendShapeWeightsComponentVersionUtilities::downgradeBlendShapeWeightsComponentFromFall2023@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 72);
  if (v3)
  {
    v4 = this;
    v5 = *(this + 88);
    v6 = v5 + 32 * v3;
    do
    {
      v15 = 0;
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v7 = *(v5 + 8);
      if (v7)
      {
        v8 = *(v5 + 16);
        v9 = 4 * v7;
        do
        {
          v10 = *v8++;
          v12 = v10;
          re::DynamicArray<float>::add(v13, &v12);
          v9 -= 4;
        }

        while (v9);
      }

      v11 = *(v4 + 344);
      if (v11 >= *(v4 + 336))
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity((v4 + 328), v11 + 1);
        v11 = *(v4 + 344);
      }

      re::DynamicArray<float>::DynamicArray(*(v4 + 360) + 40 * v11, v13);
      ++*(v4 + 344);
      ++*(v4 + 352);
      this = v13[0];
      if (v13[0] && v15)
      {
        this = (*(*v13[0] + 40))();
      }

      v5 += 32;
    }

    while (v5 != v6);
  }

  *a2 = 1;
  return this;
}

void *re::ecs2::allocInfo_BlendShapeWeightsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AAEF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAEF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAFB8, "BlendShapeWeightsComponent");
    __cxa_guard_release(&qword_1EE1AAEF0);
  }

  return &unk_1EE1AAFB8;
}

void re::ecs2::initInfo_BlendShapeWeightsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x881015E46FDA48A4;
  v32[1] = "BlendShapeWeightsComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1AAEE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAEE8))
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
    qword_1EE1AAF10 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<float>>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "blendShapeWeights";
    *(v17 + 16) = &qword_1EE1AAF38;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x14800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AAF18 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "blendShapeWeightsDefinition";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AAF20 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeights>>::get(v22, v23, v24, v25, v26, v27);
    v28 = (*(*v22 + 32))(v22, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "blendWeights";
    *(v28 + 16) = qword_1EE1AAF78;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x3800000003;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1AAF28 = v28;
    v29 = re::introspectionAllocator();
    v30 = (*(*v29 + 32))(v29, 64, 8);
    *v30 = 6;
    *(v30 + 8) = 1;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 40) = 1;
    *(v30 + 48) = re::ecs2::BlendShapeWeightsComponentVersionUtilities::downgradeBlendShapeWeightsComponentFromFall2023;
    *(v30 + 56) = 2;
    qword_1EE1AAF30 = v30;
    __cxa_guard_release(&qword_1EE1AAEE8);
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AAF10;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlendShapeWeightsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlendShapeWeightsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226BlendShapeWeightsComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsComponent>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit((a3 + 41));
  re::FixedArray<CoreIKTransform>::deinit(a3 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 35);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 32);
  re::DynamicArray<re::StringID>::deinit((a3 + 23));
  re::DynamicArray<re::MeshDeformationIndex>::deinit((a3 + 18));
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit((a3 + 13));
  re::DynamicArray<re::BlendShapeWeights>::deinit((a3 + 7));
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsComponent>(uint64_t *a1)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit((a1 + 41));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::DynamicArray<re::StringID>::deinit((a1 + 23));
  re::DynamicArray<re::MeshDeformationIndex>::deinit((a1 + 18));
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit((a1 + 13));
  re::DynamicArray<re::BlendShapeWeights>::deinit((a1 + 7));
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_BlendShapeWeightsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AAEF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAEF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB048, "BlendShapeWeightsSystem");
    __cxa_guard_release(&qword_1EE1AAEF8);
  }

  return &unk_1EE1AB048;
}

void re::ecs2::initInfo_BlendShapeWeightsSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xAD07549E6AE565F4;
  v8[1] = "BlendShapeWeightsSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x24000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_BlendShapeWeightsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlendShapeWeightsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::BlendShapeWeightsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::BlendShapeWeightsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlendShapeWeightsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 42);
  a3[35] = &unk_1F5CF2E38;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 39);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 42);
  a1[35] = &unk_1F5CF2E38;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 39);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1 + 28);

  re::ecs2::System::~System(a1);
}

uint64_t re::ecs2::ComponentType<re::ecs2::BlendShapeWeightsComponent>::makeBindNode@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *v5 = &unk_1F5CF3218;
  result = re::BindPoint::BindPoint((v5 + 1), a2);
  v5[7] = 0;
  *(a3 + 16) = v5;
  return result;
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::BlendShapeWeightsComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::BlendShapeWeightsSystem::~BlendShapeWeightsSystem(re::ecs2::BlendShapeWeightsSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 35) = &unk_1F5CF2E38;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 28);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 35) = &unk_1F5CF2E38;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BlendShapeWeightsSystem,REEventHandlerResult (re::ecs2::BlendShapeWeightsSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BlendShapeWeightsSystem,REEventHandlerResult (re::ecs2::BlendShapeWeightsSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF2F30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BlendShapeWeightsSystem,REEventHandlerResult (re::ecs2::BlendShapeWeightsSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF2F30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF2F88;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF2FE0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF3038;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF3090;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CF2F88;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF2FE0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF3038;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF3090;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF2F88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF2F88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF2FE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF2FE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3038;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3038;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3090;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3090;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BlendShapeWeights>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendShapeWeights>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendShapeWeights>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DynamicArray<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DynamicArray<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DynamicArray<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DynamicArray<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4) + 40 * v8;
  *(v9 + 32) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 1;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 40 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::DynamicArray<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 40 * a3;
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

  return *(a2 + 32) + 40 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 40 * v8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::DynamicArray<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 40 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeights>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeights>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendShapeWeights>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeights>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendShapeWeights>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendShapeWeights>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeights>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendShapeWeights>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendShapeWeights>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendShapeWeights>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = 0u;
  v15 = 0u;
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::BlendShapeWeights>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = re::FixedArray<float>::FixedArray((*(this + 4) + 32 * v8), &v14);
  v10 = *(&v15 + 1);
  v9[3] = *(&v15 + 1);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  ++*(this + 2);
  ++*(this + 6);
  re::BlendShapeWeights::~BlendShapeWeights(&v14);
  v12 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v12);
  return v12;
}

unint64_t re::IntrospectionDynamicArray<re::BlendShapeWeights>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 32 * a3;
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

  return *(a2 + 32) + 32 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendShapeWeights>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 32 * v8;
      do
      {
        re::BlendShapeWeights::~BlendShapeWeights(v9);
        v9 = (v11 + 32);
        v10 -= 32;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::BlendShapeWeights>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendShapeWeights>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::BlendShapeWeights>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 32 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 32;
        v15 -= 32;
      }

      while (v15);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::BlendShapeWeightsComponent>(ArcSharedObject *a1)
{
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 9) = 0u;
  v1 = a1 + 144;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD04C0;
  result = 0.0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  *(v2 + 88) = 0u;
  *(v2 + 116) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = v2 + 104;
  *(v2 + 232) = v1;
  *(v2 + 240) = 0;
  *(v2 + 248) = -1;
  *(v2 + 360) = 0;
  *(v2 + 352) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226BlendShapeWeightsComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::BlendShapeWeightsSystem *re::ecs2::BlendShapeWeightsSystem::BlendShapeWeightsSystem(re::ecs2::BlendShapeWeightsSystem *this)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF2EA0;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 260) = 0x7FFFFFFFLL;
  v3 = v2 + 280;
  *(v2 + 272) = 0;
  *(v2 + 280) = &unk_1F5CF2E38;
  *(v2 + 288) = v2;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 312), v9);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) = 1;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 96) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 118) = 1;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 64) = 0;
  *(this + 130) = 1;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 456), 0);
  *(this + 118) += 2;
  *(this + 62) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 504), 0);
  *(this + 130) += 2;
  *(this + 68) = 0;
  *(this + 69) = this;
  *(this + 70) = v3;
  *(this + 568) = 1;
  return this;
}

void re::ecs2::BlendShapeWeightsComponentBindNodeImpl::~BlendShapeWeightsComponentBindNodeImpl(re::ecs2::BlendShapeWeightsComponentBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<re::ecs2::BlendShapeWeightsComponentBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1F5CF3218;
  a2[1] = v3;
  result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
  a2[7] = 0;
  return result;
}

uint64_t re::internal::BindNodeImpl<re::ecs2::BlendShapeWeightsComponentBindNodeImpl>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF3218;
  result = re::BindPoint::BindPoint((a2 + 1), (a1 + 8));
  a2[7] = 0;
  return result;
}

BOOL re::internal::BindNodeImpl<re::ecs2::BlendShapeWeightsComponentBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "@")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

double re::ecs2::BlendShapeWeightsComponentBindNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t re::ecs2::BlendShapeWeightsComponentBindNodeImpl::relativeNodeForKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  if (!v4 || (v5 = result, result = strncmp(*a2, "blendWeights", v4), result) || aBlendweights[v4])
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v7 = *(v5 + 8);
    *v6 = &unk_1F5CF32B0;
    v6[1] = v7;
    result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v6 + 2), (v5 + 16));
    *(a3 + 16) = v6;
  }

  return result;
}

double re::ecs2::BlendShapeWeightsComponentBindNodeImpl::bindPointForKey@<D0>(re *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *re::foundationBindingLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = *a2;
    v8 = 136315138;
    v9 = v7;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed to bind to blend shape index: %s", &v8, 0xCu);
  }

  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

void re::ecs2::BlendWeightsIndexBindNodeImpl::~BlendWeightsIndexBindNodeImpl(re::ecs2::BlendWeightsIndexBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<re::ecs2::BlendWeightsIndexBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF32B0;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<re::ecs2::BlendWeightsIndexBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

double re::ecs2::BlendWeightsIndexBindNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double re::ecs2::BlendWeightsIndexBindNodeImpl::relativeNodeForKey@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void re::ecs2::BlendWeightsIndexBindNodeImpl::bindPointForKey(uint64_t a1@<X0>, const char **a2@<X2>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = *a2;
  if (**a2 - 48 > 9)
  {
    v10 = 1;
  }

  else
  {
    v7 = 1;
    do
    {
      v8 = v7;
      if (v4 == v7)
      {
        break;
      }

      v9 = v6[v7++] - 48;
    }

    while (v9 < 0xA);
    v10 = v8 < v4;
  }

  v11 = re::BindPoint::baseValueUntyped((a1 + 8));
  if (!v11)
  {
LABEL_11:
    *(a3 + 40) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return;
  }

  v12 = v11;
  *(&v27 + 1) = 0;
  v28 = &str_67;
  LOBYTE(v27) = v10;
  v25 = 0;
  v26 = &str_67;
  if (v10)
  {
    re::StringID::operator=(&v27 + 1, &v25);
    goto LABEL_14;
  }

  LODWORD(v29[0]) = 0;
  inited = sscanf(v26, "%u", v29);
  if (inited == 1)
  {
    DWORD1(v27) = v29[0];
LABEL_14:
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0, v19, v20, v21, v22, v23);
    }

    *a3 = re::introspect<re::BlendShapeWeights>(BOOL)::info;
    *(a3 + 40) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    re::BindPoint::addToBindPointStack(a3, (a1 + 8));
    memset(v29, 0, sizeof(v29));
    re::DynamicArray<re::BindPoint::BindPointData>::add((a3 + 8), v29);
    v15 = re::BindPoint::BindPointData::deinit(v29);
    v16 = *(a3 + 40) + 32 * *(a3 + 24);
    *(v16 - 32) = 0;
    v24 = v27;
    v18 = v28;
    *(&v27 + 1) = 0;
    v28 = &str_67;
    *v17 = &unk_1F5CF3348;
    inited = objc_initWeak((v17 + 8), v12 + 8);
    *(v17 + 16) = v24;
    *(v17 + 32) = v18;
    *(v16 - 16) = v17;
    goto LABEL_17;
  }

  *(a3 + 40) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
LABEL_17:
  if (v25)
  {
    if (v25)
    {
    }
  }

  if (BYTE8(v27))
  {
    if (BYTE8(v27))
    {
    }
  }
}

void re::ecs2::BlendWeightsIndexBindPointImpl::~BlendWeightsIndexBindPointImpl(id *this)
{
  re::StringID::destroyString((this + 3));
  objc_destroyWeak(this + 1);
  this[1] = 0;
}

{
  re::StringID::destroyString((this + 3));
  objc_destroyWeak(this + 1);
  this[1] = 0;

  JUMPOUT(0x1E6906520);
}

re::StringID *re::internal::BindPointImpl<re::ecs2::BlendWeightsIndexBindPointImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3348;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  *(a2 + 16) = *(a1 + 16);

  return re::StringID::StringID((a2 + 24), (a1 + 24));
}

re::StringID *re::internal::BindPointImpl<re::ecs2::BlendWeightsIndexBindPointImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3348;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  *(a2 + 16) = *(a1 + 16);

  return re::StringID::StringID((a2 + 24), (a1 + 24));
}

BOOL re::internal::BindPointImpl<re::ecs2::BlendWeightsIndexBindPointImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "(" || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 24), (a2 + 24));
}

unint64_t re::ecs2::BlendWeightsIndexBindPointImpl::hash(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v3 = WeakRetained - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  v5 = (*(a1 + 16) + ((v4 ^ (v4 >> 31)) << 6) + ((v4 ^ (v4 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v4 ^ (v4 >> 31);
  v6 = (*(a1 + 20) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  return ((*(a1 + 24) >> 1) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
}

void re::ecs2::BlendWeightsIndexBindPointImpl::makeAlive(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = re::AssetHandle::loadedAsset<re::BlendShapeWeightsDefinitionAsset>((WeakRetained + 24));
    if (v3)
    {
      v4 = v3;
    }
  }
}

uint64_t re::ecs2::BlendWeightsIndexBindPointImpl::baseValueUntyped(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v3 = (WeakRetained - 1);
  }

  else
  {
    v3 = 0;
  }

  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 16) == 1)
    {
      v8 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>((WeakRetained + 3));
      if (v8)
      {
        v9 = *(v8 + 96);
        if (v9)
        {
          v5 = 0;
          v10 = *(v8 + 112);
          while (!re::StringID::operator==(v10, (a1 + 24)))
          {
            ++v5;
            v10 += 2;
            if (v9 == v5)
            {
              goto LABEL_15;
            }
          }

          v11 = *(v3 + 9);
          if (v11 <= v5)
          {
            v16 = 0;
            memset(v25, 0, sizeof(v25));
            v13 = MEMORY[0x1E69E9C10];
            v17 = 136315906;
            v18 = "operator[]";
            v19 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v14 = 3;
            }

            else
            {
              v14 = 2;
            }

            v20 = 789;
            v21 = 2048;
            v22 = v5;
            v23 = 2048;
            v24 = v11;
            _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
            _os_crash_msg();
            __break(1u);
          }

          v6 = v3 + 88;
          goto LABEL_18;
        }
      }
    }

    else if (!*(a1 + 16))
    {
      v5 = *(a1 + 20);
      if (WeakRetained[8] > v5)
      {
        v6 = WeakRetained + 10;
LABEL_18:
        v7 = *v6 + 32 * v5;
        goto LABEL_19;
      }
    }

LABEL_15:
    v7 = 0;
LABEL_19:

    return v7;
  }

  return 0;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>(re::BlendShapeWeightsDefinitionAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::BlendShapeWeightsDefinitionAsset::assetType(a1);
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

void *re::ecs2::allocInfo_MeshPartInstancesComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB0E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB150, "MeshPartInstancesComponent");
    __cxa_guard_release(&qword_1EE1AB0E0);
  }

  return &unk_1EE1AB150;
}

void re::ecs2::initInfo_MeshPartInstancesComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x91FD4F6D442EA7BELL;
  v16[1] = "MeshPartInstancesComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AB0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB0F0))
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
    qword_1EE1AB0E8 = v14;
    __cxa_guard_release(&qword_1EE1AB0F0);
  }

  *(this + 2) = 0xC000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AB0E8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshPartInstancesComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshPartInstancesComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshPartInstancesComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshPartInstancesComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226MeshPartInstancesComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::ecs2::MeshPartInstancesComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF3570;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 92) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 108) = 0x7FFFFFFFLL;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MeshPartInstancesComponent>(ArcSharedObject *a1)
{
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF3570;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 92) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 108) = 0x7FFFFFFFLL;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  return result;
}

void *re::ecs2::allocInfo_MeshPartInstancesSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB100))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB1E0, "MeshPartInstancesSystem");
    __cxa_guard_release(&qword_1EE1AB100);
  }

  return &unk_1EE1AB1E0;
}

void re::ecs2::initInfo_MeshPartInstancesSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xB162BE8EC620ED1ALL;
  v8[1] = "MeshPartInstancesSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x27800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshPartInstancesSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshPartInstancesSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshPartInstancesSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshPartInstancesSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshPartInstancesSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshPartInstancesSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshPartInstancesSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::MeshPartInstancesSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[67] = &unk_1F5CF3420;
  v4 = a3[77];
  if (v4)
  {

    a3[77] = 0;
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a3 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshPartInstancesSystem>(uint64_t *a1)
{
  a1[67] = &unk_1F5CF3420;
  v2 = a1[77];
  if (v2)
  {

    a1[77] = 0;
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a1 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);

  re::ecs2::System::~System(a1);
}

uint64_t re::ecs2::MeshPartInstancesComponent::getInstanceDataBuffers(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = *(a1 + 48);
  v6 = (*(*a2 + 32))(a2, 24, 8);
  v6[1] = v5;
  v6[2] = 0;
  *v6 = a2;
  if (v5)
  {
    if (v5 >> 61)
    {
      goto LABEL_25;
    }

    v8 = v6;
    v9 = 8 * v5;
    v10 = (*(*a2 + 32))(a2, 8 * v5, 8);
    v8[2] = v10;
    if (v10)
    {
      v12 = v10;
      if (v5 != 1)
      {
        bzero(v10, v9 - 8);
        v12 = (v12 + v9 - 8);
      }

      v13 = 0;
      *v12 = 0;
      while (1)
      {
        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
        re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(&v38, a1 + 72, v13, v14 ^ (v14 >> 31));
        if (HIDWORD(v38) == 0x7FFFFFFF)
        {
          v15 = v8[1];
          if (v15 <= v13)
          {
            v29 = 0;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            v18 = MEMORY[0x1E69E9C10];
            v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v30 = 136315906;
            v31 = "operator[]";
            v32 = 1024;
            if (v19)
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v33 = 468;
            v34 = 2048;
            v35 = v13;
            v36 = 2048;
            v37 = v15;
            _os_log_send_and_compose_impl(v20, &v29, &v38, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v26, v27);
            _os_crash_msg();
            __break(1u);
LABEL_21:
            v29 = 0;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v30 = 136315906;
            v31 = "operator[]";
            v32 = 1024;
            if (v22)
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            v33 = 468;
            v34 = 2048;
            v35 = v13;
            v36 = 2048;
            v37 = v15;
            _os_log_send_and_compose_impl(v23, &v29, &v38, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v26, v27);
            _os_crash_msg();
            __break(1u);
LABEL_25:
            re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v5);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v24, v25);
            __break(1u);
            break;
          }

          *(v8[2] + 8 * v13) = 0;
        }

        else
        {
          re::FramePersistentPooledGPUBuffer::read(*(a1 + 88) + (HIDWORD(v38) << 7) + 16, v4, &v28);
          v15 = v8[1];
          if (v15 <= v13)
          {
            goto LABEL_21;
          }

          v16 = v28;
          *(v8[2] + 8 * v13) = v28;
          if (v16)
          {
          }
        }

        if (v5 == ++v13)
        {
          return v8[2];
        }
      }
    }

    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  return 0;
}

uint64_t re::ecs2::MeshPartInstancesComponent::getInstanceCounts(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48);
  v6 = (*(*a2 + 32))(a2, 24, 8);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  re::FixedArray<int>::init<>(v6, a2, v5);
  if (v5)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a1 + 48);
      if (v8 <= v7)
      {
        break;
      }

      v9 = *(*(a1 + 64) + 8 * v7);
      if (v9)
      {
        v10 = DRBufferGetBytesUsed() >> 6;
      }

      else
      {
        v10 = 0;
      }

      v2 = v6[1];
      if (v2 <= v7)
      {
        goto LABEL_14;
      }

      *(v6[2] + 4 * v7) = v10;

      if (v5 == ++v7)
      {
        return v6[2];
      }
    }

    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 797;
    v23 = 2048;
    v24 = v7;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 468;
    v23 = 2048;
    v24 = v7;
    v25 = 2048;
    v26 = v2;
    _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  return v6[2];
}

void re::ecs2::MeshPartInstancesComponent::initComponentType(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1AB110, memory_order_acquire) & 1) == 0)
  {
    v20 = __cxa_guard_acquire(&qword_1EE1AB110);
    if (v20)
    {
      v21 = qword_1EE1AB0F8;
      if (!qword_1EE1AB0F8)
      {
        v21 = re::ecs2::allocInfo_MeshPartInstancesComponent(v20);
        qword_1EE1AB0F8 = v21;
        re::ecs2::initInfo_MeshPartInstancesComponent(v21, v22, v23, v24);
      }

      qword_1EE1AB108 = v21;
      __cxa_guard_release(&qword_1EE1AB110);
    }
  }

  v2 = strlen(*(qword_1EE1AB108 + 48));
  v30[0] = re::ecs2::Component::dropComponentSuffix(*(qword_1EE1AB108 + 48), v2);
  v30[1] = v3;
  v4 = re::globalAllocators(v30[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v5, v30, 1, 2);
  *v6 = &unk_1F5CF35F8;
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0xFFFFFFFFLL;
  *(v5 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v6 + 24), 0xC0);
  if ((atomic_load_explicit(&qword_1EE1AB110, memory_order_acquire) & 1) == 0)
  {
    v25 = __cxa_guard_acquire(&qword_1EE1AB110);
    if (v25)
    {
      v26 = qword_1EE1AB0F8;
      if (!qword_1EE1AB0F8)
      {
        v26 = re::ecs2::allocInfo_MeshPartInstancesComponent(v25);
        qword_1EE1AB0F8 = v26;
        re::ecs2::initInfo_MeshPartInstancesComponent(v26, v27, v28, v29);
      }

      qword_1EE1AB108 = v26;
      __cxa_guard_release(&qword_1EE1AB110);
    }
  }

  v8 = qword_1EE1AB108;
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

  re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = v5;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  re::ecs2::ComponentTypeRegistry::add(v15, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 1);
  if ((atomic_load_explicit(&qword_1EE1AB118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB118))
  {
    qword_1EE1AB148 = 0;
    *&qword_1EE1AB120 = 0u;
    *&qword_1EE1AB130 = 0u;
    __cxa_guard_release(&qword_1EE1AB118);
  }

  if ((_MergedGlobals_294 & 1) == 0)
  {
    _MergedGlobals_294 = 1;
    v16 = qword_1EE1AB120;
    qword_1EE1AB120 = &__block_literal_global_27;

    v17 = qword_1EE1AB130;
    qword_1EE1AB130 = &__block_literal_global_87;

    v18 = qword_1EE1AB128;
    qword_1EE1AB128 = &__block_literal_global_90;

    v19 = qword_1EE1AB138;
    qword_1EE1AB138 = &__block_literal_global_92;

    qword_1EE1AB140 = re::snapshot::Registry::list(void)::s_head;
    if ((atomic_load_explicit(&qword_1EE1AB110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB110))
    {
      qword_1EE1AB108 = re::internal::getOrCreateInfo("MeshPartInstancesComponent", re::ecs2::allocInfo_MeshPartInstancesComponent, re::ecs2::initInfo_MeshPartInstancesComponent, &qword_1EE1AB0F8, 0);
      __cxa_guard_release(&qword_1EE1AB110);
    }

    qword_1EE1AB148 = qword_1EE1AB108;
    re::snapshot::Registry::list(void)::s_head = &qword_1EE1AB120;
  }

  *(re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 1) = re::ecs2::MeshPartInstancesComponent::clone;
}

re::ecs2::MeshPartInstancesComponent *re::ecs2::MeshPartInstancesComponent::clone(re::ecs2::MeshPartInstancesComponent *this, const re::ecs2::Component *a2)
{
  (*(*re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 32))(&v8);
  v3 = v8;
  if (v8 != this)
  {
    v4 = *(this + 4);
    if (*(v8 + 4))
    {
      v5 = (v8 + 32);
      if (v4)
      {
        re::DynamicArray<re::DirectBuffer>::copy(v5, this + 32);
        ++*(v3 + 14);
      }

      else
      {
        re::DynamicArray<re::DirectBuffer>::clear(v5);
      }
    }

    else if (v4)
    {
      v6 = *(this + 6);
      *(v8 + 4) = v4;
      re::DynamicArray<re::ObjCObject>::setCapacity(v3 + 4, v6);
      ++*(v3 + 14);
      re::DynamicArray<re::DirectBuffer>::copy(v3 + 4, this + 32);
    }
  }

  return v3;
}

BOOL re::ecs2::MeshPartInstancesComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v9 = *(*(a1 + 72) + 232);
  v60 = *(v9 + 112);
  v62 = *(v9 + 208);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(uu2, a5, 0);
  v63 = a4;
  v64 = *uu2;
  v65 = *&uu2[8];
  v61 = a5;
  if (*uu2 == a5 && *&uu2[8] == 0xFFFFFFFFLL)
  {
    goto LABEL_66;
  }

  do
  {
    v11 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v63);
    v12 = v11;
    v13 = *(v11 + 48);
    if (!v60)
    {
      if (!v13)
      {
LABEL_58:
        v43 = v63;
        v44 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v64);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v43, v44, a3[6]);
        goto LABEL_59;
      }

LABEL_47:
      v37 = 0;
      while (1)
      {
        v17 = *(v12 + 48);
        if (v17 <= v37)
        {
          v66 = 0;
          v69 = 0u;
          memset(v68, 0, sizeof(v68));
          *uu2 = 0u;
          v51 = MEMORY[0x1E69E9C10];
          v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          *&v72[12] = 1024;
          if (v52)
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          *&v72[14] = 789;
          *&v72[18] = 2048;
          *&v72[20] = v37;
          v73 = 2048;
          v74 = v17;
          _os_log_send_and_compose_impl(v53, &v66, uu2, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v57, v58);
          _os_crash_msg();
          __break(1u);
LABEL_71:
          v66 = 0;
          v69 = 0u;
          memset(v68, 0, sizeof(v68));
          *uu2 = 0u;
          v54 = MEMORY[0x1E69E9C10];
          v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          *&v72[12] = 1024;
          if (v55)
          {
            v56 = 3;
          }

          else
          {
            v56 = 2;
          }

          *&v72[14] = 789;
          *&v72[18] = 2048;
          *&v72[20] = v5;
          v73 = 2048;
          v74 = v17;
          _os_log_send_and_compose_impl(v56, &v66, uu2, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v57, v58);
          _os_crash_msg();
          __break(1u);
LABEL_75:
          re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
          goto LABEL_76;
        }

        *v72 = *(*(v12 + 64) + 8 * v37);
        re::DirectBuffer::getResourceId(v72, uu2);
        v38 = (*&uu2[8] + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
        v39 = *(a1 + 48);
        if (v39)
        {
          v40 = v38 % v39;
          v41 = *(*(a1 + 32) + 4 * (v38 % v39));
          if (v41 != 0x7FFFFFFF)
          {
            v42 = *(a1 + 40);
            while (uuid_compare((v42 + 32 * v41 + 12), uu2))
            {
              v42 = *(a1 + 40);
              v41 = *(v42 + 32 * v41 + 8) & 0x7FFFFFFF;
              if (v41 == 0x7FFFFFFF)
              {
                goto LABEL_56;
              }
            }

            goto LABEL_57;
          }
        }

        else
        {
          LODWORD(v40) = 0;
        }

LABEL_56:
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v40, v38, uu2, uu2);
        ++*(a1 + 64);
LABEL_57:

        if (++v37 == v13)
        {
          goto LABEL_58;
        }
      }
    }

    if (*(v11 + 100))
    {
      v14 = *(v11 + 96);
      if (v14)
      {
        memset_pattern16(*(v11 + 80), &unk_1E304C660, 4 * v14);
      }

      if (*(v12 + 104))
      {
        v15 = 0;
        do
        {
          re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(*(v12 + 88), v15++);
        }

        while (v15 < *(v12 + 104));
      }

      *(v12 + 100) = 0;
      *(v12 + 104) = 0;
      v16 = *(v12 + 112) + 1;
      *(v12 + 108) = 0x7FFFFFFF;
      *(v12 + 112) = v16;
    }

    if (!v13)
    {
      goto LABEL_58;
    }

    v5 = 0;
    while (1)
    {
      v17 = *(v12 + 48);
      if (v17 <= v5)
      {
        goto LABEL_71;
      }

      v18 = *(*(v12 + 64) + 8 * v5);
      if (v18)
      {
        break;
      }

LABEL_44:
      if (v13 == ++v5)
      {
        goto LABEL_47;
      }
    }

    v19 = v18;
    v20 = DRBufferCopyDescriptor();
    Capacity = DRBufferDescriptorGetCapacity();
    if (Capacity < 0x2625A040)
    {
      v22 = (4 * Capacity) & 0xFFFFFF00;
      v23 = v62;
      memset(uu2, 0, sizeof(uu2));
      memset(v68 + 8, 0, 32);
      LODWORD(v68[0]) = 1;
      DWORD2(v68[2]) = 1;
      v69 = 0uLL;
      v24 = v23;
      v70 = v24;
      v71 = v22;
      memset(v72, 0, 24);
      v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
      re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v72, v12 + 72, v5, v25 ^ (v25 >> 31));
      v27 = *&v72[12];
      if (*&v72[12] == 0x7FFFFFFF)
      {
        v28 = re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v12 + 72, *&v72[8], *v72);
        *(v28 + 8) = v5;
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v28 + 16, uu2);
        re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::DynamicOverflowArray(v28 + 56, &v68[1] + 8);
        v29 = 0;
        v30 = v70;
        v70 = 0;
        *(v28 + 96) = v30;
        *(v28 + 104) = v71;
        ++*(v12 + 112);
      }

      else
      {
        ++*(v12 + 112);
        v31 = *(v12 + 88) + (v27 << 7) + 16;
        if (v31 != uu2)
        {
          if (*v31 && *uu2 && *v31 != *uu2)
          {
            goto LABEL_75;
          }

          if (v68[0])
          {
            if (*&uu2[8])
            {
              re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(v31, uu2);
            }

            else
            {
              re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v31);
              *v31 = *uu2;
              LODWORD(v68[0]) += 2;
              *(v31 + 16) += 2;
            }
          }

          else
          {
            *(*(v12 + 88) + (v27 << 7) + 24) = 0;
            *(v31 + 16) += 2;
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(v31, uu2);
          }

          v33 = *(v31 + 40);
          if (v33 && *(&v68[1] + 1) && v33 != *(&v68[1] + 1))
          {
LABEL_76:
            re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
            _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
            __break(1u);
          }

          if (BYTE8(v68[2]))
          {
            if (*&v68[2])
            {
              re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::move(v31 + 40, &v68[1] + 8);
            }

            else
            {
              re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit((v31 + 40));
              *(v31 + 40) = *(&v68[1] + 1);
              DWORD2(v68[2]) += 2;
              *(v31 + 56) += 2;
            }
          }

          else
          {
            re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::clear(v31 + 40);
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap((v31 + 40), &v68[1] + 1);
          }

          v34 = v70;
          v70 = 0;
          v35 = *(v31 + 80);
          *(v31 + 80) = v34;
        }

        *(v31 + 88) = v71;
        v29 = v70;
      }

      re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit(&v68[1] + 1);
      if (*uu2)
      {
        v36 = v68[0];
        if ((v68[0] & 1) == 0)
        {
          (*(**uu2 + 40))();
          v36 = v68[0];
        }

        memset(uu2, 0, sizeof(uu2));
        LODWORD(v68[0]) = (v36 | 1) + 2;
      }

      goto LABEL_44;
    }

    v45 = v63;
    v46 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v64);
    v47 = re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v45, v46, a3[4]);
    v48 = *re::graphicsLogObjects(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *uu2 = 67109120;
      *&uu2[4] = 10000000;
      _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "Disabling MeshInstancesComponent. Attempted to render beyond the per component vertex limit of %u", uu2, 8u);
    }

LABEL_59:
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v64);
  }

  while (v64 != v61 || v65 != 0xFFFF || HIWORD(v65) != 0xFFFF);
LABEL_66:
  v49 = *(v61 + 40) != 0;

  return v49;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::MeshPartInstancesComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 + 72) + 232);
  v6 = *(v5 + 112);
  if (!v6)
  {
    return 0;
  }

  v42 = *(v5 + 208);
  v10 = *(*(*(a1 + 72) + 232) + 144);
  v41 = re::RenderFrameBox::get((v6 + 328), 0xFFFFFFFFFFFFFFFuLL);
  v40 = (*(**(*(a1 + 72) + 256) + 24))(*(*(a1 + 72) + 256));
  v11 = *(v6 + 280);
  v59 = 0;
  v60 = v11;
  v58 = 0;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v65, a5, 0);
  v55 = a4;
  v56 = v65[0];
  v57 = v65[1];
  if (v65[0] == a5 && LODWORD(v65[1]) == 0xFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v39 = a5;
    do
    {
      v14 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v55);
      v15 = v14[1].i64[0];
      (*(*v40 + 8))(v65);
      v16 = v15;
      do
      {
        v17 = v16;
        v16 = *(v16 + 4);
      }

      while (v16);
      if (LOBYTE(v65[0]))
      {
        v18 = v65[1];
      }

      else
      {
        v18 = 0;
      }

      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v54, *(v17 + 3), v18, v41);
      v65[0] = (v54 >> 1);
      v19 = **(re::RenderFrameData::stream((v41 + 33), v65) + 48);
      v20 = (*(v19 + 920))();
      if (v20)
      {
        if (*(v20 + 5))
        {
          v21 = *re::BucketArray<RESubscriptionHandle,4ul>::operator[](v20, 0);
        }

        else
        {
          v21 = 0uLL;
        }

        v43 = v21;
        re::TransformService::worldMatrixForRendering(v52, *(*(a1 + 72) + 288), v15, 1);
        v46 = v52[1];
        v47 = v52[0];
        v45 = v52[2];
        v22 = vsubq_f32(v53, v43);
        v22.i32[3] = v53.i32[3];
        v44 = v22;
        if (v14[3].i64[0])
        {
          v23 = 0;
          do
          {
            v24 = *(v14[4].i64[0] + 8 * v23);
            v51 = v24;
            if (v24)
            {
              if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v14[9], v46), vceqq_f32(v14[8], v47)), vandq_s8(vceqq_f32(v14[10], v45), vceqq_f32(v14[11], v44)))) & 0x80000000) == 0 || (re::DirectBuffer::getResourceId(&v51, v65), re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::contains(a1 + 24, v65)))
              {
                v25 = v59;
                if (!v59)
                {
                  re::mtl::CommandQueue::makeCommandBuffer(v65, &v60);
                  v26 = v65[0];
                  v65[0] = 0;
                  v59 = v26;

                  re::mtl::CommandBuffer::makeComputeCommandEncoder(v65, &v59);
                  v27 = v65[0];
                  v65[0] = 0;

                  v65[0] = [v42 newFence];
                  NS::SharedPtr<MTL::Texture>::operator=(&v58, v65);
                  if (v65[0])
                  {
                  }

                  v28 = *(a1 + 80);
                  if (!v28)
                  {
                    v29 = *(*(a1 + 72) + 232);
                    v30 = *(v29 + 48);
                    v31 = *(v29 + 208);
                    re::ShaderManager::makeComputePipelineDescriptor(&v61, v30);
                    v65[1] = 0;
                    v66 = 0uLL;
                    re::DynamicString::setCapacity(v65, 0);
                    v67[0] = 0;
                    v68 = 0;
                    memset(v71, 0, sizeof(v71));
                    v72 = 0;
                    v73 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v63 = "dr::expandInstances";
                    v64.i64[0] = 19;
                    re::DynamicString::operator=(v65, &v63);
                    ComputePipelineState = re::getOrCreateComputePipelineState(*(*(a1 + 72) + 232), v65);
                    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 80), ComputePipelineState);
                    if (v76)
                    {

                      v76 = 0;
                    }

                    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v71);
                    if (v68 == 1 && v69)
                    {
                      if (BYTE8(v69))
                      {
                        (*(*v69 + 40))();
                      }

                      v69 = 0u;
                      v70 = 0u;
                    }

                    if (v67[0] == 1 && *&v67[8])
                    {
                      if (v67[16])
                      {
                        (*(**&v67[8] + 40))();
                      }

                      memset(&v67[8], 0, 32);
                    }

                    if (v65[0] && (v65[1] & 1) != 0)
                    {
                      (*(*v65[0] + 40))();
                    }

                    if (v61)
                    {
                    }

                    v28 = *(a1 + 80);
                  }

                  [v27 setComputePipelineState:{v28, v39}];
                  v25 = v59;
                  v12 = v27;
                }

                v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
                re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v65, &v14[4].i64[1], v23, v34 ^ (v34 >> 31));
                re::FramePersistentPooledGPUBuffer::replace(&v50, (v14[5].i64[1] + (HIDWORD(v65[1]) << 7) + 16), v10);
                v35 = v25;
                v48 = v35;
                re::DirectBuffer::readUsing(&v48, &v49);

                v36 = [v50 length] >> 8;
                *v65 = v47;
                v66 = v46;
                *v67 = v45;
                *&v67[16] = v44;
                *&v67[32] = v36;
                [v12 setBuffer:v49 offset:0 atIndex:0];
                [v12 setBuffer:v50 offset:0 atIndex:1];
                [v12 setBytes:v65 length:80 atIndex:2];
                v37 = [*(a1 + 80) maxTotalThreadsPerThreadgroup];
                v63 = (v36 + v37 - 1) / v37;
                v64 = vdupq_n_s64(1uLL);
                v61 = v37;
                v62 = v64;
                [v12 dispatchThreadgroups:&v63 threadsPerThreadgroup:&v61];
                if (v49)
                {
                }

                if (v50)
                {
                }

                v24 = v51;
              }
            }

            ++v23;
          }

          while (v23 < v14[3].i64[0]);
        }

        v14[8] = v47;
        v14[9] = v46;
        v14[10] = v45;
        v14[11] = v44;
        a5 = v39;
      }

      if (v54)
      {
        if (v54)
        {
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v56);
    }

    while (v56 != a5 || v57 != 0xFFFF || HIWORD(v57) != 0xFFFF);
    if (v59)
    {
      [v12 updateFence:v58];
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v41 + 517), &v58);
      objc_msgSend_endEncoding(v12);
      [v59 commit];
    }
  }

  re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(a1 + 24);
  v13 = a5[10] != 0;
  if (v58)
  {
  }

  return v13;
}

uint64_t re::ecs2::MeshPartInstancesComponentStateImpl::directResourceDidUpdateEvent(uint64_t a1, int a2, uint64_t a3)
{
  v5 = (*(a3 + 8) + (*a3 << 6) + (*a3 >> 2) - 0x61C8864680B583E9) ^ *a3;
  v6 = *(a1 + 48);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 32) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v7, v5, a3, a3);
    ++*(a1 + 64);
    return 0;
  }

  v9 = *(a1 + 40);
  while (uuid_compare((v9 + 32 * v8 + 12), a3))
  {
    v9 = *(a1 + 40);
    v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

void re::ecs2::MeshPartInstancesSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v31[0] = a2;
  v31[1] = a3;
  v3 = a1[28];
  if (v3 && (*(v3 + 432) & 0x10) != 0)
  {
    re::StackScratchAllocator::StackScratchAllocator(v43);
    v39 = 1;
    v40 = 0;
    v41 = 0;
    v37 = v43;
    v38 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v37, 0);
    v39 += 2;
    v6 = a1[63];
    if ((v6 & 0x3F) != 0)
    {
      v7 = (v6 >> 6) + 1;
    }

    else
    {
      v7 = v6 >> 6;
    }

    v42 = a1[63];
    v32[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v37, v7, v32);
    v8 = *(a3 + 200);
    if (v8)
    {
      v9 = *(a3 + 216);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        v32[0] = v11;
        v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 44, v32);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v37, *(a1[45] + 16 * v12 + 8));
        v10 -= 8;
      }

      while (v10);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v37, (a1 + 58));
    v33 = 1;
    v34 = 0;
    v35 = 0;
    v32[0] = v43;
    v32[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v32, 0);
    v33 += 2;
    v13 = a1[63];
    if ((v13 & 0x3F) != 0)
    {
      v14 = (v13 >> 6) + 1;
    }

    else
    {
      v14 = v13 >> 6;
    }

    v36 = a1[63];
    v44 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v32, v14, &v44);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 58), &v37);
    v15 = v41;
    if (v39)
    {
      v15 = &v40;
    }

    v16 = v38;
    if ((v38 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v17 = 0;
      while (1)
      {
        v19 = *v15++;
        v18 = v19;
        if (v19)
        {
          break;
        }

        v17 -= 64;
        if (!--v16)
        {
          goto LABEL_32;
        }
      }

      v20 = __clz(__rbit64(v18));
      if (v20 + 1 != v17)
      {
        FirstBitSet = v20 - v17;
        do
        {
          v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 37), FirstBitSet);
          v23 = *(*v22 + 224);
          v24 = v22[3];
          v25 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v24);
          if (*(v25 + 40))
          {
            v26 = (*(*v23 + 24))(v23, v31, v22, v24, v25, 0);
          }

          else
          {
            v26 = 0;
          }

          v27 = v22[5];
          v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v27);
          if (*(v28 + 40))
          {
            v26 |= (*(*v23 + 32))(v23, v31, v22, v27, v28, 0);
          }

          v29 = v22[6];
          v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v29);
          if (*(v30 + 40))
          {
            if (((v26 | (*(*v23 + 40))(v23, v31, v22, v29, v30, 0)) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else if (!v26)
          {
LABEL_30:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v32, FirstBitSet);
            goto LABEL_31;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v32, FirstBitSet);
LABEL_31:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v37, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_32:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 58), v32);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 37));
    if (v32[0] && (v33 & 1) == 0)
    {
      (*(*v32[0] + 40))(v32[0], v35);
    }

    if (v37)
    {
      if ((v39 & 1) == 0)
      {
        (*(*v37 + 40))(v37, v41);
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v43);
  }
}

uint64_t (***re::ecs2::MeshPartInstancesSystem::willAddSystemToECSService(re::ecs2::MeshPartInstancesSystem *this))(void)
{
  v15 = *MEMORY[0x1E69E9840];
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(v2);
  *(this + 78) = v3;
  v4 = re::globalAllocators(v3)[2];
  v13 = v4;
  v5 = (*(*v4 + 32))(v4, 32, 0);
  *v5 = &unk_1F5CF3518;
  v5[1] = this + 536;
  v5[2] = re::ecs2::MeshPartInstancesComponentStateImpl::directResourceDidUpdateEvent;
  v5[3] = 0;
  v14 = v5;
  v6 = *(*(*(this + 76) + 224) + 1512);
  v10 = v4;
  v11 = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(v9, v12);
  *(this + 68) = re::EventBus::subscribe<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(v6, v9, 0, 0);
  *(this + 69) = v7;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v9);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v12);
}

double re::ecs2::MeshPartInstancesSystem::willRemoveSystemFromECSService(re::ecs2::MeshPartInstancesSystem *this)
{
  re::EventBus::unsubscribe(*(*(*(this + 76) + 224) + 1512), *(this + 68), *(this + 69));
  *(this + 78) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  return result;
}

unint64_t re::ecs2::MeshPartInstancesSystem::willAddSceneToECSService(re::ecs2::MeshPartInstancesSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 53);
  v5 = *(this + 108);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 440);
    }

    else
    {
      v6 = *(this + 56);
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
    v7 = (this + 440);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 56);
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
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 416, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::init(v12, this + 296, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 44, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 416, v44);
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
  v14 = *(this + 42);
  *&v51 = 0;
  v15 = *(this + 38);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,4ul>::setBucketsCapacity(this + 37, (v14 + 4) >> 2);
    v15 = *(this + 38);
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

  if (*(this + 312))
  {
    v16 = this + 320;
  }

  else
  {
    v16 = *(this + 41);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 42);
  ++*(this + 86);
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
  v23 = *(this + 42);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::init(v24, this + 296, v52);
  *&v62[0] = *(this + 42) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 44, &v52, v62);
  v25 = *(this + 42);
  v26 = *(this + 57);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 57) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 416), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 57) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 432))
    {
      v30 = this + 440;
    }

    else
    {
      v30 = *(this + 56);
    }

    *&v30[8 * *(this + 53) - 8] &= v28;
  }

  v31 = *(this + 42);
  v32 = *(this + 63);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 63) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 464), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 63) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 480))
    {
      v36 = this + 488;
    }

    else
    {
      v36 = *(this + 62);
    }

    *&v36[8 * *(this + 59) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 464, v13);
  if (*(this + 528) == 1)
  {
    v38 = *(this + 64);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 296);
  }

  return result;
}

uint64_t re::ecs2::MeshPartInstancesSystem::willRemoveSceneFromECSService(re::ecs2::MeshPartInstancesSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 44, &v15);
  if (result != -1)
  {
    v4 = *(this + 45) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 416, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 464, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 352, &v15);
  }

  return result;
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::MeshPartInstancesComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::MeshPartInstancesComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

void re::ecs2::MeshPartInstancesSystem::~MeshPartInstancesSystem(re::ecs2::MeshPartInstancesSystem *this)
{
  *(this + 67) = &unk_1F5CF3420;
  v2 = *(this + 77);
  if (v2)
  {

    *(this + 77) = 0;
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);

  re::ecs2::System::~System(this);
}

{
  *(this + 67) = &unk_1F5CF3420;
  v2 = *(this + 77);
  if (v2)
  {

    *(this + 77) = 0;
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (a1[2])
      {
        v3 = (a1 + 3);
      }

      else
      {
        v3 = a1[4];
      }

      v4 = 8 * v2;
      do
      {
        if (*v3)
        {

          *v3 = 0;
        }

        ++v3;
        v4 -= 8;
      }

      while (v4);
    }

    v5 = *(a1 + 4);
    if ((v5 & 1) == 0)
    {
      (*(**a1 + 40))(*a1, a1[4]);
      v5 = *(a1 + 4);
    }

    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = (v5 | 1) + 2;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshPartInstancesComponentStateImpl,REEventHandlerResult (re::ecs2::MeshPartInstancesComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::MeshPartInstancesComponentStateImpl,REEventHandlerResult (re::ecs2::MeshPartInstancesComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3518;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshPartInstancesComponentStateImpl,REEventHandlerResult (re::ecs2::MeshPartInstancesComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3518;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::DynamicArray<re::DirectBuffer>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v5 = a2;
    do
    {
    }

    while (v5 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ObjCObject>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      bzero((*(a1 + 32) + 8 * v4), 8 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::ecs2::MeshPartInstancesComponent::~MeshPartInstancesComponent(re::ecs2::MeshPartInstancesComponent *this)
{
  *this = &unk_1F5CF3570;
  v2 = this + 32;
  re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 9);
  re::DynamicArray<re::ObjCObject>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF3570;
  v2 = this + 32;
  re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 9);
  re::DynamicArray<re::ObjCObject>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(a1[2], v3++);
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

uint64_t re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = result + (a2 << 7);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;

    re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit((v2 + 56));

    return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 16);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226MeshPartInstancesComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

uint64_t re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + (v6 << 7) + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 7)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 7) + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + (v8 << 7)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
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

double re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::doMakeComponent@<D0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 192, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF3570;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 92) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 108) = 0x7FFFFFFFLL;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *a1 = v3;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CF3668;
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

uint64_t re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1AB110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB110))
  {
    qword_1EE1AB108 = re::internal::getOrCreateInfo("MeshPartInstancesComponent", re::ecs2::allocInfo_MeshPartInstancesComponent, re::ecs2::initInfo_MeshPartInstancesComponent, &qword_1EE1AB0F8, 0);
    __cxa_guard_release(&qword_1EE1AB110);
  }

  return qword_1EE1AB108;
}

__n128 re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CF35F8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::MeshPartInstancesComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::MeshPartInstancesComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CF3668;
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

BOOL ___ZN2re8snapshot8Registry3addINS_4ecs226MeshPartInstancesComponentEEEPKNS1_5EntryEv_block_invoke(int a1, re::snapshot::BufferEncoder *this, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  __src = *(a3 + 48);
  re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
  v5 = *(a3 + 48);
  if (v5)
  {
    v6 = *(a3 + 64);
    v7 = 8 * v5;
    do
    {
      re::internalEncode<re::snapshot::EncoderRaw>(this, v6);
      v6 = (v6 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    v9 = v8 >> 1;
  }

  else
  {
    v9 = v8 >> 1;
  }

  return v9 == 0;
}

BOOL ___ZN2re8snapshot8Registry3addINS_4ecs226MeshPartInstancesComponentEEEPKNS1_5EntryEv_block_invoke_2(int a1, re::snapshot::EncoderOPACK *this, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  re::snapshot::EncoderOPACK::beginObject(this);
  v5 = *(this + 4);
  if (v5 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v6 = *(this + 1);
    *(this + 4) = v5 + 1;
    *(v6 + v5) = 9;
  }

  v7 = *(a3 + 48);
  re::snapshot::EncoderOPACK::beginArray(this, v7);
  v8 = *(a3 + 48);
  if (v8)
  {
    v9 = *(a3 + 64);
    v10 = 8 * v8;
    do
    {
      re::internalEncode<re::snapshot::EncoderOPACK>(this, v9);
      v9 = (v9 + 8);
      v10 -= 8;
    }

    while (v10);
  }

  re::snapshot::EncoderOPACK::endArray(this, v7);
  re::snapshot::EncoderOPACK::endObject(this);
  v11 = *(this + 6);
  if (v11)
  {
    v12 = v11 >> 1;
  }

  else
  {
    v12 = v11 >> 1;
  }

  return v12 == 0;
}

uint64_t ___ZN2re8snapshot8Registry3addINS_4ecs226MeshPartInstancesComponentEEEPKNS1_5EntryEv_block_invoke_3(int a1, re::snapshot::DecoderRaw *this, void *a3)
{
  if (a3)
  {
    v12 = 0;
    if (!re::snapshot::DecoderRaw::beginArray(this, &v12))
    {
LABEL_20:
      v7 = *(this + 44) ^ 1;
      return v7 & 1;
    }

    v5 = v12;
    if (v12 == -1 || a3[5] >= v12)
    {
      if (!v12)
      {
        v8 = 1;
        LODWORD(v9) = 1;
LABEL_18:
        if (v8 != v9)
        {
          re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
        }

        goto LABEL_20;
      }

      v8 = v12 + 1;
      if (v12 == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      re::DynamicArray<re::ObjCObject>::setCapacity(a3 + 4, v12);
      v8 = v5 + 1;
    }

    v9 = 1;
    v10 = v5;
    while (v8 != v9)
    {
      --v10;
      re::DynamicArray<re::DirectBuffer>::resize((a3 + 4), v9);
      re::internalDecode<re::snapshot::DecoderRaw>(this, (a3[8] + 8 * a3[6] - 8));
      ++v9;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
    goto LABEL_20;
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t ___ZN2re8snapshot8Registry3addINS_4ecs226MeshPartInstancesComponentEEEPKNS1_5EntryEv_block_invoke_4(int a1, const char **this, uint64_t a3)
{
  if (a3)
  {
    if (re::snapshot::DecoderOPACK::beginObject(this, 0))
    {
      if (re::snapshot::DecoderOPACK::beginField<1>(this, v5, v6))
      {
        v14 = 0;
        if (re::snapshot::DecoderOPACK::beginData(this, &v14, 1))
        {
          v8 = v14;
          if ((v14 & 7) != 0)
          {
            re::snapshot::BufferDecoder::error(this, "Bad data: %zu bytes, expected multiple of %zu");
          }

          else
          {
            re::DynamicArray<re::DirectBuffer>::resize(a3 + 32, v14 >> 3);
            re::snapshot::BufferDecoder::readRaw(this, *(a3 + 64), v8);
          }
        }

        else if (re::snapshot::DecoderOPACK::beginArray(this, &v14))
        {
          v10 = v14;
          if (v14 != -1 && *(a3 + 40) < v14)
          {
            re::DynamicArray<re::ObjCObject>::setCapacity((a3 + 32), v14);
          }

          LODWORD(v11) = 1;
          if (v10 + 1 > 1)
          {
            v12 = v10 + 1;
          }

          else
          {
            v12 = 1;
          }

          if (re::snapshot::DecoderOPACK::endArray(this, &v14))
          {
LABEL_20:
            if (v10 + 1 != v11)
            {
              re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
            }
          }

          else
          {
            if (v10 != -1)
            {
              v11 = 1;
              while (v12 != v11)
              {
                re::DynamicArray<re::DirectBuffer>::resize(a3 + 32, v11);
                re::internalDecode<re::snapshot::DecoderOPACK>(this, (*(a3 + 64) + 8 * *(a3 + 48) - 8));
                ++v11;
                if (re::snapshot::DecoderOPACK::endArray(this, &v14))
                {
                  goto LABEL_20;
                }
              }
            }

            re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
          }
        }

        re::snapshot::DecoderOPACK::endField(this);
      }

      re::snapshot::DecoderOPACK::endObject(this, 0, v7);
    }

    v9 = *(this + 44) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void re::DynamicArray<re::DirectBuffer>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ObjCObject>::setCapacity(a1, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = a1[2];
    v15 = a1[4];
    if (v14)
    {
      v16 = 8 * v14;
      do
      {
        v17 = *v13++;
        objc_storeStrong(v15++, v17);
        v16 -= 8;
      }

      while (v16);
      v15 = a1[4];
      v14 = a1[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v18 = &v13[v14];
      v19 = &v15[v14];
      v20 = 8 * v4 - 8 * v14;
      do
      {
        v21 = *v18++;
        *v19++ = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        v9 = *v7++;
        objc_storeStrong(v6++, v9);
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[v4];
      v11 = 8 * v5 - 8 * v4;
      do
      {
        v12 = *v10++;

        v11 -= 8;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::DirectBuffer>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;

      v4 -= 8;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 < *(a1 + 8))
  {
    if (*(a2 + 16))
    {
      v5 = (a2 + 24);
    }

    else
    {
      v5 = *(a2 + 32);
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 24);
      if (!v4)
      {
LABEL_7:
        if ((v6 & 1) == 0)
        {
LABEL_8:
          v8 = *(a1 + 32);
          goto LABEL_21;
        }

LABEL_20:
        v8 = a1 + 24;
LABEL_21:
        v15 = *(a1 + 8);
        if (v4 != v15)
        {
          v16 = (v8 + 8 * v4);
          v17 = 8 * v15 - 8 * v4;
          do
          {
            if (*v16)
            {

              *v16 = 0;
            }

            ++v16;
            v17 -= 8;
          }

          while (v17);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v14 = 8 * v4;
    do
    {
      NS::SharedPtr<MTL::Texture>::operator=(v7++, v5++);
      v14 -= 8;
    }

    while (v14);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(a1, v4);
  if (*(a2 + 16))
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_28:
    v18 = 8 * v10;
    do
    {
      NS::SharedPtr<MTL::Texture>::operator=(v12++, v9++);
      v18 -= 8;
    }

    while (v18);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v13 = a1 + 24;
    goto LABEL_32;
  }

  v12 = (a1 + 24);
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_14:
  if (v11)
  {
    goto LABEL_31;
  }

LABEL_15:
  v13 = *(a1 + 32);
LABEL_32:
  v19 = *(a1 + 8);
  v20 = *(a2 + 32);
  if (*(a2 + 16))
  {
    v20 = a2 + 24;
  }

  if (v19 != v4)
  {
    v21 = (v20 + 8 * v19);
    v22 = (v13 + 8 * v19);
    v23 = 8 * v4 - 8 * v19;
    do
    {
      *v22++ = *v21;
      *v21++ = 0;
      v23 -= 8;
    }

    while (v23);
  }

LABEL_37:
  *(a1 + 8) = v4;
  re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::clear(a2);
  *(a2 + 16) += 2;
  *(a1 + 16) += 2;
}

void re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 24);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v5 = 8 * v2;
  do
  {
    if (*v4)
    {

      *v4 = 0;
    }

    ++v4;
    v5 -= 8;
  }

  while (v5);
  v3 = *(a1 + 16);
LABEL_10:
  *(a1 + 16) = v3 + 2;
}

uint64_t re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
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
            v17 = (v13 + 96);
            do
            {
              if ((*(v17 - 12) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24), v17[3]);
                *(v18 + 8) = *(v17 - 11);
                re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v18 + 16, (v17 - 10));
                re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::DynamicOverflowArray(v18 + 56, (v17 - 5));
                v19 = *v17;
                *v17 = 0;
                *(v18 + 96) = v19;
                *(v18 + 104) = *(v17 + 1);
              }

              v17 += 16;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v26);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + (v5 << 7));
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + (v5 << 7));
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + (v5 << 7);
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 120) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + (v5 << 7);
}

uint64_t re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
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
      re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::move(a1, a2);
    }

    else
    {
      re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit(a1);
      *a1 = *a2;
      *(a2 + 16) += 2;
      *(a1 + 16) += 2;
    }
  }

  else
  {
    re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::clear(a1);
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF3758;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF37B0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF3808;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF3860;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF3758;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF37B0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF3808;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF3860;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3758;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3758;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF37B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF37B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3808;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3808;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3860;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3860;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_UIGroundingShadowComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB280))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB288, "UIGroundingShadowComponent");
    __cxa_guard_release(&qword_1EE1AB280);
  }

  return &unk_1EE1AB288;
}

void re::ecs2::initInfo_UIGroundingShadowComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x53C0B058511FFECLL;
  v16[1] = "UIGroundingShadowComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB278))
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
    _MergedGlobals_295 = v14;
    __cxa_guard_release(&qword_1EE1AB278);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_295;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UIGroundingShadowComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UIGroundingShadowComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UIGroundingShadowComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UIGroundingShadowComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226UIGroundingShadowComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultDestruct<re::ecs2::UIGroundingShadowComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_destroyWeak((a3 + 40));
  *(a3 + 40) = 0;
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::UIGroundingShadowComponent>(uint64_t a1)
{
  objc_destroyWeak((a1 + 40));
  *(a1 + 40) = 0;
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

ArcSharedObject *re::make::shared::unsafelyInplace<re::ecs2::UIGroundingShadowComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CE7788;
  *(v2 + 32) = 0;
  objc_initWeak((v2 + 40), 0);
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226UIGroundingShadowComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::RenderCallbacksComponent *re::ecs2::RenderCallbacksComponent::RenderCallbacksComponent(re::ecs2::RenderCallbacksComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF38B8;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 76) = 0u;
  *(v2 + 92) = 0x7FFFFFFFLL;
  *(v2 + 136) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 104) = 0;
  v3 = (v2 + 104);
  *(v2 + 144) = 0;
  v4 = re::globalAllocators(v2);
  re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(this + 56, v4[2], 16);
  *v3 = re::globalAllocators(v5)[2];
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3, 0x10uLL);
  ++*(this + 32);
  return this;
}

void re::ecs2::RenderCallbacksSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 224);
  if (v4 && (*(v4 + 432) & 0x10) == 0)
  {
    return;
  }

  v5 = *(a3 + 200);
  if (!v5)
  {
    return;
  }

  v6 = *(a3 + 216);
  v7 = &v6[v5];
  v8 = &unk_1EE187000;
  v36 = v7;
  do
  {
    v9 = *(v3 + 232);
    if (!v9)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 39);
      _os_crash("assertion failure: (m_renderManager) ");
      __break(1u);
    }

    v10 = *v6;
    v11 = *(v9 + 112);
    if (v11)
    {
      v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
    }

    else
    {
      v12 = 0;
    }

    v13 = re::ecs2::SceneComponentTable::get((v10 + 25), v8[476]);
    if (!v13)
    {
      goto LABEL_38;
    }

    v14 = *(v13 + 384);
    if (!v14)
    {
      goto LABEL_38;
    }

    v15 = *(v13 + 400);
    if (v14 != 1)
    {
      v16 = *re::graphicsLogObjects(v13);
      v13 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v17 = v16;
        v18 = v10[5];
        *buf = 136315394;
        *&buf[4] = "updateSceneInternal";
        *&buf[12] = 2080;
        *&buf[14] = v18;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "%s: more than 1 RenderCallbacksComponent found on scene: %s.Only first component will be processed.\n", buf, 0x16u);
      }
    }

    v19 = *v15;
    if ((*(v19 + 144) & 1) == 0)
    {
      v20 = *(v19 + 48);
      if (v20)
      {
        if (!*(v3 + 232))
        {
          v34 = *re::graphicsLogObjects(v13);
          v3 = a1;
          v7 = v36;
          v8 = &unk_1EE187000;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "updateSceneInternal";
            _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "%s: invalid RenderManager.\n", buf, 0xCu);
          }

          goto LABEL_38;
        }

        v21 = v20;
        v20[2]();

        *(v19 + 144) = 1;
        v3 = a1;
      }
    }

    v22 = (*(**(v3 + 256) + 24))(*(v3 + 256));
    (*(*v22 + 8))(buf);
    if (buf[0])
    {
      v23 = *&buf[8];
    }

    else
    {
      v23 = 0;
    }

    re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v38, v10, v23, v12);
    memset(buf, 0, sizeof(buf));
    v40 = 0x7FFFFFFFLL;
    if (!*(v19 + 32))
    {
      goto LABEL_34;
    }

    re::ObjCObject::operator=(buf, (v19 + 32));
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(&buf[8], v19 + 56);
    v24 = *(v19 + 120);
    if (!v24)
    {
      goto LABEL_33;
    }

    v25 = *(v19 + 136);
    v26 = &v25[v24];
    do
    {
      v27 = *v25;
      v37 = v27;
      v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
      v29 = v28 ^ (v28 >> 31);
      if (!*&buf[32])
      {
        LODWORD(v30) = 0;
LABEL_30:
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(&buf[8], v30, v29, &v37, &v37);
        ++HIDWORD(v40);
        goto LABEL_31;
      }

      v30 = v29 % *&buf[32];
      v31 = *(*&buf[16] + 4 * v30);
      if (v31 == 0x7FFFFFFF)
      {
        goto LABEL_30;
      }

      while (*(*&buf[24] + 24 * v31 + 16) != v27)
      {
        LODWORD(v31) = *(*&buf[24] + 24 * v31 + 8) & 0x7FFFFFFF;
        if (v31 == 0x7FFFFFFF)
        {
          goto LABEL_30;
        }
      }

LABEL_31:
      ++v25;
    }

    while (v25 != v26);
    *(v19 + 120) = 0;
    ++*(v19 + 128);
LABEL_33:
    v37 = v38 >> 1;
    v32 = **(re::RenderFrameData::stream((v12 + 33), &v37) + 48);
    (*(v32 + 1032))();
LABEL_34:
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&buf[8]);

    if (v38)
    {
      if (v38)
      {
      }
    }

    v7 = v36;
    v8 = &unk_1EE187000;
LABEL_38:
    ++v6;
  }

  while (v6 != v7);
}

void *re::ecs2::allocInfo_RenderCallbacksComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_296, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_296))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB338, "RenderCallbacksComponent");
    __cxa_guard_release(&_MergedGlobals_296);
  }

  return &unk_1EE1AB338;
}

void re::ecs2::initInfo_RenderCallbacksComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xD3BBB33D62F7084ALL;
  v16[1] = "RenderCallbacksComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AB328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB328))
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
    qword_1EE1AB320 = v14;
    __cxa_guard_release(&qword_1EE1AB328);
  }

  *(this + 2) = 0x9800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AB320;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderCallbacksComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderCallbacksComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderCallbacksComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderCallbacksComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224RenderCallbacksComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::ecs2::allocInfo_RenderCallbacksSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB330))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB3C8, "RenderCallbacksSystem");
    __cxa_guard_release(&qword_1EE1AB330);
  }

  return &unk_1EE1AB3C8;
}

void re::ecs2::initInfo_RenderCallbacksSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xD5A6B6E0F52B380ELL;
  v8[1] = "RenderCallbacksSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_RenderCallbacksSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderCallbacksSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderCallbacksSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::RenderCallbacksSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::RenderCallbacksSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderCallbacksSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderCallbacksSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::RenderCallbacksSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF3910;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::RenderCallbacksSystem>(uint64_t a1)
{
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF3910;
  return result;
}

void re::ecs2::RenderCallbacksSystem::~RenderCallbacksSystem(re::ecs2::RenderCallbacksSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::RenderCallbacksComponent::~RenderCallbacksComponent(re::ecs2::RenderCallbacksComponent *this)
{
  *this = &unk_1F5CF38B8;
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 7);

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF38B8;
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 7);

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
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

      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v4, v5);
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
    }
  }

  return a1;
}

void re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v4);
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
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

void re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_40, 4 * v2);
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

void _ZZN2re8internal15setIntroVersionINS_4ecs224RenderCallbacksComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

__n128 re::PeerVideoStreamingEncoder::operator=(__int128 *a1, __int128 *a2)
{
  if (a2 != a1)
  {
    v2 = *a1;
    v3 = *(a1 + 2);
    v4 = *(a2 + 4);
    *a1 = *a2;
    *(a1 + 4) = v4;
    *(a2 + 4) = v3;
    *a2 = v2;
    v5 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    result = a1[2];
    v7 = *(a1 + 6);
    v8 = *(a2 + 12);
    a1[2] = a2[2];
    *(a1 + 12) = v8;
    *(a2 + 12) = v7;
    a2[2] = result;
    v9 = *(a1 + 7);
    v10 = *(a1 + 8);
    v11 = *(a2 + 8);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 8) = v11;
    *(a2 + 7) = v9;
    *(a2 + 8) = v10;
  }

  return result;
}

void re::PeerVideoStreamingEncoder::~PeerVideoStreamingEncoder(re::PeerVideoStreamingEncoder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    VTCompressionSessionInvalidate(*(this + 3));
    CFRelease(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    CVPixelBufferPoolRelease(v3);
    *(this + 7) = 0;
  }
}

void re::PeerVideoStreamingEncoder::createPixelBufferFromPool(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 56);
  if (v5)
  {
    if (*a2 == *(a1 + 32) && *(a2 + 1) == *(a1 + 40) && *(a2 + 4) == *(a1 + 48))
    {
      goto LABEL_18;
    }

    v6 = *a2;
    *(a1 + 48) = *(a2 + 4);
    *(a1 + 32) = v6;
    CVPixelBufferPoolRelease(v5);
    *(a1 + 56) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 48) = *(a2 + 4);
    *(a1 + 32) = v7;
  }

  v8 = re::PeerVideoStreamingUtils::cvPixelFormatFromMTLPixelFormat(*(a1 + 48), a2);
  *v34 = *MEMORY[0x1E6966208];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 32)];
  *pixelBufferOut = v9;
  v35 = *MEMORY[0x1E69660B8];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 40)];
  *&pixelBufferOut[8] = v10;
  v36 = *MEMORY[0x1E6966130];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  v37 = *MEMORY[0x1E6966100];
  *&pixelBufferOut[16] = v11;
  v29 = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:pixelBufferOut forKeys:v34 count:4];

  poolOut = 0;
  v13 = CVPixelBufferPoolCreate(0, 0, v12, &poolOut);
  if (v13)
  {
    v14 = v13;
    v15 = *re::peerVideoStreamingLogObjects(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v33 = v14;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Error creating pixel buffer pool. errCode: %d", buf, 8u);
    }

    *(a1 + 56) = 0;
  }

  else
  {
    v5 = poolOut;

    *(a1 + 56) = v5;
    if (v5)
    {
      goto LABEL_18;
    }
  }

  v17 = *re::peerVideoStreamingLogObjects(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v18)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    *pixelBufferOut = 134218752;
    *&pixelBufferOut[4] = a1;
    *&pixelBufferOut[12] = 2048;
    *&pixelBufferOut[14] = v24;
    *&pixelBufferOut[22] = 2048;
    v29 = v25;
    v30 = 1024;
    v31 = v26;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Invalid pixel buffer pool for encoder 0x%p, w:%zu, h:%zu, format:%d", pixelBufferOut, 0x26u);
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    v19 = *re::peerVideoStreamingLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *pixelBufferOut = 0;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Could not create pixel buffer because could not create a pixel buffer pool", pixelBufferOut, 2u);
    }

    *a3 = 0;
    return;
  }

LABEL_18:
  *pixelBufferOut = 0;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, v5, pixelBufferOut);
  if (PixelBuffer)
  {
    v21 = PixelBuffer;
    v22 = *re::peerVideoStreamingLogObjects(PixelBuffer);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 67109120;
      *&v34[4] = v21;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to create CVPixelBuffer, errCode: %d", v34, 8u);
    }

    v23 = 0;
  }

  else
  {
    v23 = *pixelBufferOut;
  }

  *a3 = v23;
}

void re::PeerVideoStreamingEncoder::encodeFrame(uint64_t *a1, CVPixelBufferRef *a2, uint64_t a3, uint64_t a4, id *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = re::internal::enableSignposts(0, 0);
  if (v10)
  {
    v10 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (v10)
    {
      v10 = kdebug_trace();
    }
  }

  if (!*a2)
  {
    v12 = *re::peerVideoStreamingLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v73.value) = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid arg to encodeFrame: pixelBuffer is nullptr", &v73, 2u);
    }

    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      goto LABEL_25;
    }

    return;
  }

  re::VideoBufferInfo::VideoBufferInfo(&v59, *a2);
  v11 = a1[3];
  if (v11)
  {
    if (v59 == *a1 && v60 == *(a1 + 4))
    {
      goto LABEL_52;
    }

    *a1 = v59;
    *(a1 + 4) = v60;
    VTCompressionSessionInvalidate(v11);
    CFRelease(v11);
  }

  else
  {
    *a1 = v59;
    *(a1 + 4) = v60;
  }

  duration.value = *MEMORY[0x1E6984270];
  presentationTimeStamp.value = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&presentationTimeStamp forKeys:&duration count:1];
  session = 0;
  v14 = VTCompressionSessionCreate(0, *a1, *(a1 + 2), 0x6D757861u, v13, 0, 0, 0, 0, &session);
  v15 = v14;
  v16 = *re::peerVideoStreamingLogObjects(v14);
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v57 = v16;
      re::VideoBufferInfo::debugStr(a1, &v73);
      v58 = (v73.timescale & 1) != 0 ? v73.epoch : (&v73.timescale + 1);
      LODWORD(buf.value) = 67109378;
      HIDWORD(buf.value) = v15;
      LOWORD(buf.timescale) = 2080;
      *(&buf.timescale + 2) = v58;
      _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, "Error creating compression session, errCode: %d. Info: %s", &buf, 0x12u);

      if (v73.value)
      {
        if (v73.timescale)
        {
          (*(*v73.value + 40))();
        }
      }
    }

    a1[3] = 0;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v16;
      re::VideoBufferInfo::debugStr(a1, &v73);
      v22 = (v73.timescale & 1) != 0 ? v73.epoch : (&v73.timescale + 1);
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = v22;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Created compression session with info: %s", &buf, 0xCu);

      if (v73.value)
      {
        if (v73.timescale)
        {
          (*(*v73.value + 40))();
        }
      }
    }

    v23 = *MEMORY[0x1E695E4C0];
    v24 = VTSessionSetProperty(session, *MEMORY[0x1E6983518], *MEMORY[0x1E695E4C0]);
    if (v24)
    {
      v25 = v24;
      v26 = *re::peerVideoStreamingLogObjects(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v25;
        _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to disable frame reordering, errCode: %d", &v73, 8u);
      }
    }

    v27 = VTSessionSetProperty(session, *MEMORY[0x1E6983860], v23);
    if (v27)
    {
      v28 = v27;
      v29 = *re::peerVideoStreamingLogObjects(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v28;
        _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Failed to disable throttling, errCode: %d", &v73, 8u);
      }
    }

    v30 = *MEMORY[0x1E695E4D0];
    v31 = VTSessionSetProperty(session, *MEMORY[0x1E69837F0], *MEMORY[0x1E695E4D0]);
    if (v31)
    {
      v32 = v31;
      v33 = *re::peerVideoStreamingLogObjects(v31);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v32;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to enable real time compression, errCode: %d", &v73, 8u);
      }
    }

    v34 = VTSessionSetProperty(session, *MEMORY[0x1E6983700], &unk_1F5D42A08);
    if (v34)
    {
      v35 = v34;
      v36 = *re::peerVideoStreamingLogObjects(v34);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v35;
        _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Failed to set make keyframe interval duration, errCode: %d", &v73, 8u);
      }
    }

    v37 = VTSessionSetProperty(session, *MEMORY[0x1E6983530], v30);
    if (v37)
    {
      v38 = v37;
      v39 = *re::peerVideoStreamingLogObjects(v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v38;
        _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Failed to enable temporal compression, errCode: %d", &v73, 8u);
      }
    }

    v40 = VTCompressionSessionPrepareToEncodeFrames(session);
    if (v40)
    {
      v41 = v40;
      v42 = *re::peerVideoStreamingLogObjects(v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v41;
        _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Error preparing compression session: %d", &v73, 8u);
      }
    }

    v11 = session;

    a1[3] = v11;
    if (v11)
    {
      goto LABEL_52;
    }
  }

  v18 = *re::peerVideoStreamingLogObjects(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (v19)
  {
    v54 = *a1;
    v55 = a1[1];
    v56 = *(a1 + 4);
    LODWORD(v73.value) = 134218752;
    *(&v73.value + 4) = a1;
    LOWORD(v73.flags) = 2048;
    *(&v73.flags + 2) = v54;
    HIWORD(v73.epoch) = 2048;
    v74 = v55;
    v75 = 1024;
    v76 = v56;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Invalid compression session for encoder 0x%p, w:%zu, h:%zu, format:%d", &v73, 0x26u);
  }

  v11 = a1[3];
  if (v11)
  {
LABEL_52:
    v43 = a1[8];
    a1[8] = v43 + 1;
    v44 = applesauce::dispatch::v1::queue::get(a5);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN2re25PeerVideoStreamingEncoder11encodeFrameERKNS_15InputVideoFrameEbNS_8FunctionIFvP20opaqueCMSampleBufferEEEN10applesauce8dispatch2v15queueE_block_invoke;
    aBlock[3] = &unk_1F5CF39F8;
    v69 = a1;
    v70 = a2;
    v71 = v43;
    v45 = v44;
    v46 = *(a4 + 24);
    v68 = v45;
    v72[3] = v46;
    v72[4] = 0;
    re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(v72, a4);
    v47 = _Block_copy(aBlock);
    v65 = *MEMORY[0x1E6983BD8];
    v48 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v66 = v48;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];

    memset(&v73, 0, sizeof(v73));
    CMTimeMake(&v73, v43, 1);
    memset(&buf, 0, sizeof(buf));
    CMTimeMake(&buf, 1, 90);
    v50 = *a2;
    presentationTimeStamp = v73;
    duration = buf;
    v51 = VTCompressionSessionEncodeFrameWithOutputHandler(v11, v50, &presentationTimeStamp, &duration, v49, 0, v47);
    if (v51)
    {
      v52 = v51;
      v53 = *re::peerVideoStreamingLogObjects(v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        LODWORD(presentationTimeStamp.value) = 67109120;
        HIDWORD(presentationTimeStamp.value) = v52;
        _os_log_error_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_ERROR, "Failed to encode frame, errCode %d", &presentationTimeStamp, 8u);
      }
    }

    re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(v72);
    return;
  }

  v20 = *re::peerVideoStreamingLogObjects(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v73.value) = 0;
    _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Could not create compression session for encodeFrame", &v73, 2u);
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
LABEL_25:
    kdebug_trace();
  }
}

uint64_t (***___ZN2re25PeerVideoStreamingEncoder11encodeFrameERKNS_15InputVideoFrameEbNS_8FunctionIFvP20opaqueCMSampleBufferEEEN10applesauce8dispatch2v15queueE_block_invoke(NSObject **a1, int a2, char a3, CFTypeRef cf))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "CompressionOutputHandler. Failed with errCode: %d", buf, 8u);
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
  }

  else if ((a3 & 2) != 0)
  {
    v10 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[7];
      *buf = 134217984;
      v16 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Encoder dropped frame with timestamp %lld", buf, 0xCu);
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
  }

  else if (cf)
  {
    CFRetain(cf);
    v9 = a1[4];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3321888768;
    v13[2] = ___ZN2re25PeerVideoStreamingEncoder11encodeFrameERKNS_15InputVideoFrameEbNS_8FunctionIFvP20opaqueCMSampleBufferEEEN10applesauce8dispatch2v15queueE_block_invoke_1;
    v13[3] = &__block_descriptor_80_a8_32c46_ZTSN2re8FunctionIFvP20opaqueCMSampleBufferEEE_e5_v8__0l;
    v14[3] = a1[11];
    v14[4] = 0;
    re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(v14, (a1 + 8));
    v14[5] = cf;
    dispatch_async(v9, v13);
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    return re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(v14);
  }

  else
  {
    v12 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "CMSampleBuffer for encoded frame is null.", buf, 2u);
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
  }

  return result;
}

void ___ZN2re25PeerVideoStreamingEncoder11encodeFrameERKNS_15InputVideoFrameEbNS_8FunctionIFvP20opaqueCMSampleBufferEEEN10applesauce8dispatch2v15queueE_block_invoke_1(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v4 = *(v3 + 8);
  (*(*v2 + 16))(v2, &v4);
  CFRelease(*(a1 + 72));
}

uint64_t __copy_helper_block_a8_32c46_ZTSN2re8FunctionIFvP20opaqueCMSampleBufferEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  return re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(a1 + 32, a2 + 32);
}

uint64_t __copy_helper_block_a8_64c46_ZTSN2re8FunctionIFvP20opaqueCMSampleBufferEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = 0;
  return re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(a1 + 64, a2 + 64);
}

float32x4_t re::ecs2::MeshComponentHelper::computeEntityMeshBounds@<Q0>(uint64_t a1@<X0>, int a2@<W1>, float32x4_t *a3@<X2>, int a4@<W3>, float32x4_t *a5@<X8>)
{
  if (a1)
  {
    v6 = a4;
    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    *a5 = vnegq_f32(result);
    a5[1] = result;
    if (!a4 || (a4 & ~*(a1 + 304)) == 0)
    {
      if (a2)
      {
        if (*(a1 + 344))
        {
        }
      }
    }
  }

  else
  {
    v11 = *re::ecsCoreLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Null entity passed to computeEntityMeshBoundsAnchored!", v12, 2u);
    }

    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    *a5 = vnegq_f32(result);
    a5[1] = result;
  }

  return result;
}

void anonymous namespace::extendBounds(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v5 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 192);
  v7 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v8 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v9 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v9)
  {
    re::ecs2::VideoPlayerComponent::getBounds(v63, v9);
    re::AABB::transform(v63, a2, &v65);
    v10 = *a3;
    v11 = a3[1];
    v10.i32[3] = 0;
    v12 = v65;
    v13 = v66;
    v12.i32[3] = 0;
    v11.i32[3] = 0;
    v13.i32[3] = 0;
    *a3 = vminnmq_f32(v10, v12);
    a3[1] = vmaxnmq_f32(v11, v13);
  }

  if (v6)
  {
    v14 = re::AssetHandle::loadedAsset<re::MeshAsset>((v6 + 32));
    if (v14)
    {
      if (v8)
      {
        re::ecs2::InstanceGroupBoundsComponent::computeObjectBoundsUncached(&v65, v8);
        re::AABB::transform(&v65, a2, v63);
        v16 = *a3;
        v15 = a3[1];
        v16.i32[3] = 0;
        v17 = *v63;
        v18 = *&v63[16];
      }

      else
      {
        if (v7)
        {
          v19 = v5;
          do
          {
            v20 = v19;
            v19 = *(v19 + 32);
          }

          while (v19);
          if (*(v20 + 24))
          {
            do
            {
              v21 = v5;
              v5 = *(v5 + 32);
            }

            while (v5);
            v22 = (*(**(*(v21 + 24) + 56) + 32))(*(*(v21 + 24) + 56));
            v23 = *(re::ServiceLocator::service<re::RenderManager>(v22) + 4);
            re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v7, v23);
            v24 = *(v7 + 24);
            if (v24)
            {
              v25 = *(v7 + 26);
              v26 = &v25[v24];
              v27 = *(v23 + 11);
              v28 = *a2;
              v29 = a2[1];
              v30.i64[0] = 0x7F0000007FLL;
              v30.i64[1] = 0x7F0000007FLL;
              v31 = vnegq_f32(v30);
              v32 = a2[2];
              v33 = a2[3];
              v58 = v29;
              v59 = *a2;
              v56 = v33;
              v57 = v32;
              do
              {
                v34 = WORD1(*v25);
                if (v27 <= v34)
                {
                  v62 = 0;
                  v69 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v65 = 0u;
                  v66 = 0u;
                  v50 = MEMORY[0x1E69E9C10];
                  v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v63 = 136315906;
                  *&v63[4] = "operator[]";
                  *&v63[12] = 1024;
                  if (v51)
                  {
                    v52 = 3;
                  }

                  else
                  {
                    v52 = 2;
                  }

                  *&v63[14] = 797;
                  *&v63[18] = 2048;
                  *&v63[20] = v34;
                  *&v63[28] = 2048;
                  *&v63[30] = v27;
                  _os_log_send_and_compose_impl(v52, &v62, &v65, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v56.u64[0], v56.u64[1]);
                  _os_crash_msg();
                  __break(1u);
LABEL_30:
                  v62 = 0;
                  v69 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v65 = 0u;
                  v66 = 0u;
                  v53 = MEMORY[0x1E69E9C10];
                  v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v63 = 136315906;
                  *&v63[4] = "operator[]";
                  *&v63[12] = 1024;
                  if (v54)
                  {
                    v55 = 3;
                  }

                  else
                  {
                    v55 = 2;
                  }

                  *&v63[14] = 797;
                  *&v63[18] = 2048;
                  *&v63[20] = v8;
                  *&v63[28] = 2048;
                  *&v63[30] = v34;
                  _os_log_send_and_compose_impl(v55, &v62, &v65, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v56.u64[0], v56.u64[1]);
                  _os_crash_msg();
                  __break(1u);
                }

                v35 = *(*(v23 + 13) + 16 * v34) + 144 * *v25;
                v36 = *(v35 + 16);
                v8 = WORD1(v36);
                v34 = *(v23 + 3);
                if (v34 <= WORD1(v36))
                {
                  goto LABEL_30;
                }

                v60 = v31;
                v61 = v30;
                v37 = 0;
                v38 = *(*(v23 + 5) + 16 * WORD1(v36));
                v39 = *(v35 + 48);
                v40 = *(v35 + 64);
                v41 = *(v35 + 80);
                *v63 = *(v35 + 32);
                *&v63[16] = v39;
                *&v63[32] = v40;
                v64 = v41;
                do
                {
                  *(&v65 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*&v63[v37])), v29, *&v63[v37], 1), v32, *&v63[v37], 2), v33, *&v63[v37], 3);
                  v37 += 16;
                }

                while (v37 != 64);
                re::AABB::transform(v38 + 864 * v36 + 16, &v65, v63);
                v33 = v56;
                v32 = v57;
                v29 = v58;
                v28 = v59;
                v43 = v60;
                v42 = v61;
                v43.i32[3] = 0;
                v44 = *v63;
                v45 = *&v63[16];
                v44.i32[3] = 0;
                v42.i32[3] = 0;
                v31 = vminnmq_f32(v43, v44);
                v45.i32[3] = 0;
                v30 = vmaxnmq_f32(v42, v45);
                ++v25;
              }

              while (v25 != v26);
            }

            else
            {
              v30.i64[0] = 0x7F0000007FLL;
              v30.i64[1] = 0x7F0000007FLL;
              v31 = vnegq_f32(v30);
            }

            v48 = *a3;
            v49 = a3[1];
            v48.i32[3] = 0;
            v31.i32[3] = 0;
            v49.i32[3] = 0;
            v46 = vminnmq_f32(v48, v31);
            v30.i32[3] = 0;
            v47 = vmaxnmq_f32(v49, v30);
            goto LABEL_22;
          }
        }

        re::MeshAsset::aabbFromMesh(v14, a2, &v65);
        v16 = *a3;
        v15 = a3[1];
        v16.i32[3] = 0;
        v17 = v65;
        v18 = v66;
      }

      v17.i32[3] = 0;
      v15.i32[3] = 0;
      v46 = vminnmq_f32(v16, v17);
      v18.i32[3] = 0;
      v47 = vmaxnmq_f32(v15, v18);
LABEL_22:
      *a3 = v46;
      a3[1] = v47;
    }
  }
}

uint64_t anonymous namespace::extendChildBounds(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  v4 = *(result + 344);
  if (v4)
  {
    v8 = *(result + 360);
    v9 = v8 + 8 * v4;
    do
    {
      result = re::ecs2::EntityComponentCollection::get((*v8 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!result)
      {
        result = *v8;
        if ((a3 & 1) != 0 || (~*(result + 304) & 0x2008) == 0)
        {
          v10 = *(result + 256);
          if (v10)
          {
            v11 = 0;
            v12 = *(v10 + 48);
            v13 = *(v10 + 52);
            v14 = v12 + v12;
            v15 = v13 + v13;
            v16 = *(v10 + 56);
            v17 = *(v10 + 60);
            v18 = v16 + v16;
            v19 = v12 * (v12 + v12);
            v20 = v13 * (v13 + v13);
            v21 = v16 * (v16 + v16);
            v22 = v14 * v13;
            v23 = v14 * v16;
            v24 = v15 * v16;
            v25 = v15 * v17;
            v26 = v18 * v17;
            v27.i32[3] = 0;
            v27.f32[0] = 1.0 - (v20 + v21);
            v27.f32[1] = v22 + v26;
            v27.f32[2] = v23 - v25;
            v28 = v14 * v17;
            v29 = 1.0 - (v19 + v21);
            v30.i32[3] = 0;
            v30.f32[0] = v22 - v26;
            v30.f32[1] = v29;
            v30.f32[2] = v24 + v28;
            v31.i32[3] = 0;
            v31.f32[0] = v23 + v25;
            v31.f32[1] = v24 - v28;
            v31.f32[2] = 1.0 - (v19 + v20);
            v32 = *(v10 + 32);
            v33 = vmulq_n_f32(v27, v32.f32[0]);
            v34 = vmulq_laneq_f32(v31, v32, 2);
            v35 = *(v10 + 64);
            HIDWORD(v35) = 1.0;
            v36 = *a2;
            v37 = a2[1];
            v38 = a2[2];
            v39 = a2[3];
            v40 = vmulq_n_f32(v30, COERCE_FLOAT(HIDWORD(*(v10 + 32))));
            v43[0] = v33;
            v43[1] = v40;
            v43[2] = v34;
            v43[3] = v35;
            do
            {
              v44[v11] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(v43[v11])), v37, *&v43[v11], 1), v38, v43[v11], 2), v39, v43[v11], 3);
              ++v11;
            }

            while (v11 != 4);
          }

          else
          {
            v41 = a2[1];
            v44[0] = *a2;
            v44[1] = v41;
            v42 = a2[3];
            v44[2] = a2[2];
            v44[3] = v42;
          }

          result = *v8;
          if (*(*v8 + 344))
          {
          }
        }
      }

      v8 += 8;
    }

    while (v8 != v9);
  }

  return result;
}

float32x4_t re::ecs2::MeshComponentHelper::computeEntityMeshTightBounds@<Q0>(uint64_t a1@<X0>, int a2@<W1>, float32x4_t *a3@<X2>, int a4@<W3>, float32x4_t *a5@<X8>)
{
  if (a1)
  {
    v6 = a4;
    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    *a5 = vnegq_f32(result);
    a5[1] = result;
    if (!a4 || (a4 & ~*(a1 + 304)) == 0)
    {
      if (a2)
      {
        if (*(a1 + 344))
        {
        }
      }
    }
  }

  else
  {
    v11 = *re::ecsCoreLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Null entity passed to computeEntityMeshTightBounds!", v12, 2u);
    }

    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    *a5 = vnegq_f32(result);
    a5[1] = result;
  }

  return result;
}

float32x4_t anonymous namespace::extendTightBounds(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  if (a1)
  {
    v5 = re::AssetHandle::loadedAsset<re::MeshAsset>((a1 + 32));
    if (v5)
    {
      re::MeshAsset::tightAABBFromMesh(v5, a2, v11);
      v7 = *a3;
      v8 = a3[1];
      v7.i32[3] = 0;
      v9 = v11[0];
      v10 = v11[1];
      v9.i32[3] = 0;
      v8.i32[3] = 0;
      result = vminnmq_f32(v7, v9);
      v10.i32[3] = 0;
      *a3 = result;
      a3[1] = vmaxnmq_f32(v8, v10);
    }
  }

  return result;
}

uint64_t anonymous namespace::extendChildTightBounds(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  v4 = *(result + 344);
  if (v4)
  {
    v8 = *(result + 360);
    v9 = &v8[v4];
    do
    {
      result = re::ecs2::EntityComponentCollection::get((*v8 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!result)
      {
        v10 = *v8;
        if ((a3 & 1) != 0 || (~*(v10 + 304) & 0x2008) == 0)
        {
          v11 = *(v10 + 256);
          if (v11)
          {
            v12 = 0;
            v13 = *(v11 + 48);
            v14 = *(v11 + 52);
            v15 = v13 + v13;
            v16 = v14 + v14;
            v17 = *(v11 + 56);
            v18 = *(v11 + 60);
            v19 = v17 + v17;
            v20 = v13 * (v13 + v13);
            v21 = v14 * (v14 + v14);
            v22 = v17 * (v17 + v17);
            v23 = v15 * v14;
            v24 = v15 * v17;
            v25 = v16 * v17;
            v26 = v16 * v18;
            v27 = v19 * v18;
            v28.i32[3] = 0;
            v28.f32[0] = 1.0 - (v21 + v22);
            v28.f32[1] = v23 + v27;
            v28.f32[2] = v24 - v26;
            v29 = v15 * v18;
            v30 = 1.0 - (v20 + v22);
            v31.i32[3] = 0;
            v31.f32[0] = v23 - v27;
            v31.f32[1] = v30;
            v31.f32[2] = v25 + v29;
            v32.i32[3] = 0;
            v32.f32[0] = v24 + v26;
            v32.f32[1] = v25 - v29;
            v32.f32[2] = 1.0 - (v20 + v21);
            v33 = *(v11 + 32);
            v34 = vmulq_n_f32(v28, v33.f32[0]);
            v35 = vmulq_laneq_f32(v32, v33, 2);
            v36 = *(v11 + 64);
            HIDWORD(v36) = 1.0;
            v37 = *a2;
            v38 = a2[1];
            v39 = a2[2];
            v40 = a2[3];
            v41 = vmulq_n_f32(v31, COERCE_FLOAT(HIDWORD(*(v11 + 32))));
            v44[0] = v34;
            v44[1] = v41;
            v44[2] = v35;
            v44[3] = v36;
            do
            {
              v45[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(v44[v12])), v38, *&v44[v12], 1), v39, v44[v12], 2), v40, v44[v12], 3);
              ++v12;
            }

            while (v12 != 4);
          }

          else
          {
            v42 = a2[1];
            v45[0] = *a2;
            v45[1] = v42;
            v43 = a2[3];
            v45[2] = a2[2];
            v45[3] = v43;
          }

          result = *v8;
          if (*(*v8 + 344))
          {
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  return result;
}

void re::ecs2::MeshComponentHelper::repairedMaterialHandles(uint64_t a1@<X0>, void *a2@<X1>, re::AssetHandle *a3@<X2>, re::AssetHandle *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  MaxMaterialIndex = re::MeshManager::findMaxMaterialIndex(a2, (a1 + 552));
  *(a6 + 32) = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  v11 = MaxMaterialIndex + 1;
  re::DynamicArray<re::AssetHandle>::setCapacity(a6, v11);
  ++*(a6 + 24);
  if (a5)
  {
    v12 = 24 * a5;
    while (1)
    {
      v13 = *(a4 + 1);
      if (v13)
      {
        v14 = atomic_load((v13 + 896));
        v15 = a4;
        if (v14 == 2)
        {
          goto LABEL_7;
        }
      }

      v16 = *(a3 + 1);
      if (!v16)
      {
        break;
      }

      v17 = atomic_load((v16 + 896));
      v15 = a3;
      if (v17 != 2)
      {
        v18 = *(a3 + 1);
        goto LABEL_10;
      }

LABEL_7:
      re::DynamicArray<re::AssetHandle>::add(a6, v15);
      a4 = (a4 + 24);
      v12 -= 24;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    v18 = 0;
LABEL_10:
    re::AssetHandle::loadNow(v18, 0);
    v15 = a3;
    goto LABEL_7;
  }

LABEL_12:
  if (*(a6 + 16) < v11)
  {
    v19 = *(a3 + 1);
    if (v19)
    {
      v20 = atomic_load((v19 + 896));
      if (v20 == 2)
      {
        goto LABEL_19;
      }

      v21 = *(a3 + 1);
    }

    else
    {
      v21 = 0;
    }

    re::AssetHandle::loadNow(v21, 0);
LABEL_19:
    while (*(a6 + 16) < v11)
    {
      re::DynamicArray<re::AssetHandle>::add(a6, a3);
    }
  }
}

void re::ecs2::MeshComponentHelper::overrideMaterials(uint64_t a1, void *a2, re::MaterialAsset *a3, void *a4, void *a5, void *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  MaxMaterialIndex = re::MeshManager::findMaxMaterialIndex(a2, (a1 + 552));
  v11 = (MaxMaterialIndex + 1);
  if (!*a4)
  {
  }

  if (!*a5)
  {
  }

  if (*a6)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v11)
  {
LABEL_9:
    for (i = 0; v11 != i; ++i)
    {
      v13 = *(a3 + 1);
      if (v13)
      {
        v14 = atomic_load((v13 + 896));
        if (v14 == 2)
        {
          v15 = re::AssetHandle::loadedAsset<re::MaterialAsset>(a3);
          v16 = a4[1];
          if (v16 <= i)
          {
            v31 = 0;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v40 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v32 = 136315906;
            v33 = "operator[]";
            v34 = 1024;
            if (v22)
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            v35 = 468;
            v36 = 2048;
            v37 = i;
            v38 = 2048;
            v39 = v16;
            _os_log_send_and_compose_impl(v23, &v31, &v40, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
            _os_crash_msg();
            __break(1u);
LABEL_27:
            v31 = 0;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v40 = 0u;
            v24 = MEMORY[0x1E69E9C10];
            v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v32 = 136315906;
            v33 = "operator[]";
            v34 = 1024;
            if (v25)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v35 = 468;
            v36 = 2048;
            v37 = i;
            v38 = 2048;
            v39 = v16;
            _os_log_send_and_compose_impl(v26, &v31, &v40, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
            _os_crash_msg();
            __break(1u);
LABEL_31:
            v31 = 0;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v40 = 0u;
            v27 = MEMORY[0x1E69E9C10];
            v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v32 = 136315906;
            v33 = "operator[]";
            v34 = 1024;
            if (v28)
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }

            v35 = 468;
            v36 = 2048;
            v37 = i;
            v38 = 2048;
            v39 = v16;
            _os_log_send_and_compose_impl(v29, &v31, &v40, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
            _os_crash_msg();
            __break(1u);
          }

          *(a4[2] + 8 * i) = *(v15 + 1776);
          v17 = *(v15 + 1784);
          if (re::MaterialParameterBlock::isEmpty(v17))
          {
            v16 = a5[1];
            if (v16 <= i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(&v30, v17);
            v18 = re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(a6);
            v19 = v30;
            *v18 = v30;
            if (v19)
            {
              v20 = (v19 + 8);
              v16 = a5[1];
              if (v16 <= i)
              {
                goto LABEL_27;
              }

              *(a5[2] + 8 * i) = v19;

              continue;
            }

            v16 = a5[1];
            if (v16 <= i)
            {
              goto LABEL_27;
            }
          }

          *(a5[2] + 8 * i) = 0;
        }
      }
    }
  }
}

uint64_t re::ecs2::MeshComponentHelper::areRequiredAssetsLoaded(re::ecs2::MeshComponentHelper *this, const re::ecs2::MeshComponent *a2)
{
  v3 = *(this + 5);
  if (v3 && (v4 = atomic_load((v3 + 896)), v4 == 2))
  {
    v5 = 1;
  }

  else
  {
    re::AssetHandle::loadAsync((this + 32));
    v5 = 0;
  }

  v6 = *(this + 5);
  if (v6 && *(v6 + 24))
  {
    v7 = *(this + 9);
    if (v7)
    {
      v8 = *(this + 11);
      v9 = 24 * v7;
      do
      {
        v10 = *(v8 + 1);
        if (v10)
        {
          v11 = atomic_load((v10 + 896));
          if (v11 != 3)
          {
            if (*(v8 + 1))
            {
              v12 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v8);
              if (!v12 || *(v12 + 1768) == 1)
              {
                re::AssetHandle::loadAsync(v8);
                v5 = 0;
              }
            }
          }
        }

        v8 = (v8 + 24);
        v9 -= 24;
      }

      while (v9);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t re::ecs2::MeshComponentHelper::computeTriangleCount(re::ecs2::MeshComponentHelper *this, const re::ecs2::MeshComponent *a2)
{
  v3 = *(this + 2);
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  if (!*(v4 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(this + 5);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = atomic_load((v5 + 896));
  if (v6 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 2);
  do
  {
    v8 = v7;
    v7 = *(v7 + 32);
  }

  while (v7);
  v9 = (*(**(*(v8 + 24) + 56) + 32))(*(*(v8 + 24) + 56), a2);
  v10 = *(re::ServiceLocator::service<re::RenderManager>(v9) + 4);
  v11 = re::AssetHandle::loadedAsset<re::MeshAsset>((this + 32));
  v12 = *(v11 + 568);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  v14 = *(v11 + 584);
  v15 = &v14[v12];
  do
  {
    v16 = re::DataArray<re::MeshInstance>::tryGet(v10 + 72, *v14);
    v17 = re::DataArray<re::MeshModel>::tryGet(v10 + 8, *(v16 + 16));
    v18 = *(v17 + 56);
    if (v18)
    {
      v19 = *(v17 + 64);
      v20 = 544 * v18;
      do
      {
        re::MeshPart::computeTriangleCount(v19);
        v13 = (v21 + v13);
        v19 += 68;
        v20 -= 544;
      }

      while (v20);
    }

    ++v14;
  }

  while (v14 != v15);
  return v13;
}

BOOL re::ecs2::MeshComponentHelper::isMappedToOcclusionPass(re::ecs2::MeshComponentHelper *this, const re::ecs2::MeshComponent *a2)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = 24 * v2 - 24;
    v4 = *(this + 11);
    while (1)
    {
      re::AssetHandle::AssetHandle(v14, v4);
      v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v14);
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 1776);
      if (!v6)
      {
        break;
      }

      {
        if (v11)
        {
          re::ecs2::MeshComponentHelper::isMappedToOcclusionPass(re::ecs2::MeshComponent const&)::occlusionKey = re::hashString(v11, v12);
        }
      }

      v7 = re::ecs2::MeshComponentHelper::isMappedToOcclusionPass(re::ecs2::MeshComponent const&)::occlusionKey;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      PassTechniqueMapping = re::MaterialParameterTable::tryGetPassTechniqueMapping((v6 + 304), v7, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v9 = PassTechniqueMapping != 0;
      re::AssetHandle::~AssetHandle(v14);
      if (PassTechniqueMapping)
      {
        v4 = (v4 + 24);
        v10 = v3;
        v3 -= 24;
        if (v10)
        {
          continue;
        }
      }

      return v9;
    }

    re::AssetHandle::~AssetHandle(v14);
  }

  return 0;
}

void re::ecs2::MeshComponentHelper::fixLegacyParametersColorGamut(re::RenderManager *a1, uint64_t a2, re::ecs2::MaterialParameterBlockArrayComponent *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 11);
  v8 = *(a3 + 6);
  if (v7 < v8)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a3 + 72, *(a3 + 6));
    do
    {
      v10 = re::globalAllocators(v9);
      v11 = (*(*v10[2] + 32))(v10[2], 1008, 8);
      v9 = re::MaterialParameterBlock::MaterialParameterBlock(v11, a1);
      v12 = *(a3 + 11);
      if (v12 <= v7)
      {
        v42 = 0;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        *v51 = 0u;
        v36 = MEMORY[0x1E69E9C10];
        v43 = 136315906;
        v44 = "operator[]";
        v45 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v46 = 789;
        v47 = 2048;
        v48 = v7;
        v49 = 2048;
        v50 = v12;
        _os_log_send_and_compose_impl(v37, &v42, v51, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
        _os_crash_msg();
        __break(1u);
LABEL_45:
        v42 = 0;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        *v51 = 0u;
        v38 = MEMORY[0x1E69E9C10];
        v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v43 = 136315906;
        v44 = "operator[]";
        v45 = 1024;
        if (v39)
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        v46 = 789;
        v47 = 2048;
        v48 = v8;
        v49 = 2048;
        v50 = v3;
        _os_log_send_and_compose_impl(v40, &v42, v51, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
        _os_crash_msg();
        __break(1u);
      }

      v13 = *(a3 + 13);
      v14 = *(v13 + 8 * v7);
      *(v13 + 8 * v7) = v9;
      if (v14)
      {
      }

      ++v7;
    }

    while (v8 != v7);
  }

  if (*(a2 + 16))
  {
    v8 = 0;
    while (*(a3 + 6) > v8)
    {
      v15 = (*(a2 + 32) + 24 * v8);
      v16 = *(v15 + 1);
      if (v16)
      {
        v17 = atomic_load((v16 + 896));
        if (v17 == 2)
        {
          v18 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v15);
          v19 = *(v18 + 48);
          if (v19)
          {
            v20 = atomic_load((v19 + 896));
            if (v20 == 2)
            {
              v21 = v18;
              v22 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>((v18 + 40));
              v3 = *(a3 + 6);
              if (v3 <= v8)
              {
                goto LABEL_45;
              }

              v23 = v22;
              v24 = (*(a3 + 8) + 32 * v8);
              v25 = *v24;
              if (!*v24)
              {
                v25 = v24[1];
              }

              v26 = *(v25 + 336);
              if (v26)
              {
                v27 = 0;
                v28 = *(v25 + 320);
                while ((*v28 & 0x80000000) == 0)
                {
                  v28 += 80;
                  if (v26 == ++v27)
                  {
                    LODWORD(v27) = *(v25 + 336);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v27) = 0;
              }

              if (v27 != v26)
              {
                do
                {
                  v29 = *(v25 + 320);
                  if ((*(v29 + 320 * v27 + 280) & 1) == 0)
                  {
                    *v51 = *(v29 + 320 * v27 + 8) >> 1;
                    v30 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v21 + 1792, v51);
                    if (!v30 || (v31 = *(v30 + 20)) == 0)
                    {
                      *v51 = *(*(v25 + 320) + 320 * v27 + 8) >> 1;
                      v32 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v23 + 2280, v51);
                      if (!v32)
                      {
                        goto LABEL_31;
                      }

                      v31 = *(v32 + 20);
                    }

                    if ((v31 & 0xFE) == 0x14)
                    {
                      v33 = *(v25 + 320) + 320 * v27;
                      *(v33 + 280) = 1;
                      re::ecs2::MaterialParameterBlockArrayComponent::updateParameterBlockValue(a3, a1, (v33 + 8), (v33 + 32), v8, 0, v51);
                    }
                  }

LABEL_31:
                  v34 = *(v25 + 336);
                  if (v34 <= v27 + 1)
                  {
                    v35 = v27 + 1;
                  }

                  else
                  {
                    v35 = *(v25 + 336);
                  }

                  while (v35 - 1 != v27)
                  {
                    LODWORD(v27) = v27 + 1;
                    if ((*(*(v25 + 320) + 320 * v27) & 0x80000000) != 0)
                    {
                      goto LABEL_38;
                    }
                  }

                  LODWORD(v27) = v35;
LABEL_38:
                  ;
                }

                while (v27 != v34);
              }
            }
          }
        }
      }

      if (++v8 >= *(a2 + 16))
      {
        return;
      }
    }
  }
}

float32x4_t re::ecs2::MeshComponentHelper::addRenderPassGroupBoundsTable(uint64_t a1)
{
  v2 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(*a1, (a1 + 8));
  if (v2)
  {
    v4 = v2;
    re::AABB::transform(*(a1 + 16), *(a1 + 24), &v17);
    if (*(a1 + 40))
    {
      v5 = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v4, (a1 + 40));
      v6 = *v5;
      v7 = v5[1];
      v6.i32[3] = 0;
      v8 = v17;
      v9 = v18;
      v8.i32[3] = 0;
      result = vminnmq_f32(v6, v8);
      v7.i32[3] = 0;
      v9.i32[3] = 0;
      *v5 = result;
      v5[1] = vmaxnmq_f32(v7, v9);
      v5[2].i8[0] |= *(a1 + 49);
    }

    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    if (v11)
    {
      v12 = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v4, v10);
      v13 = *v12;
      v14 = v12[1];
      v13.i32[3] = 0;
      v15 = v17;
      v16 = v18;
      v15.i32[3] = 0;
      v14.i32[3] = 0;
      result = vminnmq_f32(v13, v15);
      v16.i32[3] = 0;
      *v12 = result;
      v12[1] = vmaxnmq_f32(v14, v16);
    }
  }

  return result;
}

float32x4_t *re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, unint64_t *a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 80 * HIDWORD(v10) + 16);
  }

  v5 = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  v6 = *a2;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v5[1] = vnegq_f32(v7);
  result = v5 + 1;
  result[-1].i64[1] = v6;
  result[2].i64[0] = 0;
  result[2].i64[1] = 0;
  result[1] = v7;
  ++*(a1 + 40);
  return result;
}

re::ecs2::ClippingParametersRegistry *re::ecs2::ClippingParametersRegistry::ClippingParametersRegistry(re::ecs2::ClippingParametersRegistry *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v2 = re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(this, 0x400uLL);
  ++*(this + 6);
  v3 = re::DynamicArray<int>::setCapacity(this + 5, 0x400uLL);
  ++*(this + 16);
  re::DynamicArray<unsigned short>::setCapacity(this + 10, 0x400uLL);
  ++*(this + 26);
  return this;
}

void re::ecs2::ClippingParametersRegistry::~ClippingParametersRegistry(re::ecs2::ClippingParametersRegistry *this)
{
  v2 = *(this + 15);
  if (v2)
  {

    *(this + 15) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v12[5] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 15))
  {
    re::make::shared::object<re::ecs2::ShareableClippingParameters>(a1, v12);
    v4 = *(v3 + 15);
    v5 = v12[0];
    *(v3 + 15) = v12[0];
    v12[0] = v4;
    if (v4)
    {

      v5 = *(v3 + 15);
    }

    v6 = *(v3 + 2);
    v12[0] = *(v3 + 4);
    v12[1] = v6;
    a1 = re::FixedArray<re::UberClippingParametersEntry>::operator=((v5 + 24), v12);
  }

  re::globalAllocators(a1);
  v7 = (*(*a2 + 32))(a2, 8, 8);
  v8 = v7;
  v9 = *(v3 + 15);
  *v7 = v9;
  if (v9)
  {
    v7 = (v9 + 8);
  }

  v10 = re::globalAllocators(v7)[2];
  v12[0] = &unk_1F5CF3A38;
  v12[3] = v10;
  v12[4] = v12;
  (*(*a2 + 16))(a2, v8, v12);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v12);
  return *(*(v3 + 15) + 40);
}

_anonymous_namespace_ *re::FixedArray<re::UberClippingParametersEntry>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::UberClippingParametersEntry>::copy(a1, a2);
  }

  return a1;
}

void re::ecs2::ClippingParametersRegistry::add(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = *(*(a1 + 112) + 2 * v6 - 2);
    *(a1 + 96) = v6 - 1;
    ++*(a1 + 104);
    v8 = *(a1 + 16);
    if (v8 <= v7)
    {
      v33 = 0;
      memset(v42, 0, sizeof(v42));
      v30 = MEMORY[0x1E69E9C10];
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v37 = 789;
      v38 = 2048;
      v39 = v7;
      v40 = 2048;
      v41 = v8;
      _os_log_send_and_compose_impl(v31, &v33, v42, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(a1 + 32) + 96 * v7);
    v10 = a2[1];
    *v9 = *a2;
    v9[1] = v10;
    v11 = a2[2];
    v12 = a2[3];
    v13 = a2[5];
    v9[4] = a2[4];
    v9[5] = v13;
    v9[2] = v11;
    v9[3] = v12;
    v15 = (a1 + 120);
    v14 = *(a1 + 120);
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = *(a1 + 16);
    if (v16 > 0x3FF)
    {
      *a3 = 0;
      return;
    }

    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v16 >= v17)
    {
      if (*a1)
      {
        v19 = 2 * v17;
        v20 = v17 == 0;
        v21 = 8;
        if (!v20)
        {
          v21 = v19;
        }

        if (v21 <= v16 + 1)
        {
          v22 = v16 + 1;
        }

        else
        {
          v22 = v21;
        }

        re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(a1, v22);
      }

      else
      {
        re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(a1, v16 + 1);
        ++*(a1 + 24);
      }

      v18 = *(a1 + 16);
    }

    v23 = (*(a1 + 32) + 96 * v18);
    v24 = a2[1];
    *v23 = *a2;
    v23[1] = v24;
    v25 = a2[2];
    v26 = a2[3];
    v27 = a2[5];
    v23[4] = a2[4];
    v23[5] = v27;
    v23[2] = v25;
    v23[3] = v26;
    ++*(a1 + 16);
    ++*(a1 + 24);
    LODWORD(v42[0]) = 0;
    re::DynamicArray<int>::add((a1 + 40), v42);
    v29 = *(a1 + 120);
    v15 = (a1 + 120);
    v28 = v29;
    if (!v29)
    {
      LOWORD(v7) = v16;
      goto LABEL_20;
    }

    LOWORD(v7) = v16;
  }

  *v15 = 0;
LABEL_20:
  *a3 = 1;
  *(a3 + 2) = v7;
}

uint64_t re::ecs2::ClippingParametersRegistry::registerClippingParameterDataRefs(uint64_t result, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 152);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 56);
    do
    {
      v5 = *(a2 + 176);
      if (*(a2 + 160))
      {
        v5 = a2 + 168;
      }

      v6 = *(v5 + 2 * v3);
      if (v4 <= v6)
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
        v16 = v6;
        v17 = 2048;
        v18 = v4;
        _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
        _os_crash_msg();
        __break(1u);
      }

      ++*(*(result + 72) + 4 * v6);
      ++v3;
    }

    while (v2 != v3);
  }

  return result;
}

void re::ecs2::ClippingParametersRegistry::unregisterClippingParameterDataRefs(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 152);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 168;
    do
    {
      if (*(a2 + 160))
      {
        v7 = v6;
      }

      else
      {
        v7 = *(a2 + 176);
      }

      HIWORD(v16) = *(v7 + 2 * v5);
      v8 = HIWORD(v16);
      v9 = *(a1 + 56);
      if (v9 <= HIWORD(v16))
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v13 = MEMORY[0x1E69E9C10];
        v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (v14)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 789;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v9;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(a1 + 72);
      v11 = *(v10 + 4 * HIWORD(v16)) - 1;
      *(v10 + 4 * HIWORD(v16)) = v11;
      if (!v11)
      {
        re::DynamicArray<unsigned short>::add((a1 + 80), &v16 + 3);
      }

      ++v5;
    }

    while (v3 != v5);
  }

  if (*(a1 + 96) == *(a1 + 16))
  {
    *(a1 + 16) = 0;
    ++*(a1 + 24);
    *(a1 + 56) = 0;
    ++*(a1 + 64);
    *(a1 + 96) = 0;
    ++*(a1 + 104);
    v12 = *(a1 + 120);
    if (v12)
    {

      *(a1 + 120) = 0;
    }
  }
}

void re::internal::Callable<re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries(re::PerFrameAllocator *)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {

    *v2 = 0;
  }
}

void *re::internal::Callable<re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries(re::PerFrameAllocator *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF3A38;
  return result;
}

void *re::internal::Callable<re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries(re::PerFrameAllocator *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF3A38;
  return result;
}

void *re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
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
            memcpy(v7, v5[4], 96 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::make::shared::object<re::ecs2::ShareableClippingParameters>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 48, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CF3A90;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *a2 = v4;
}

void re::ecs2::ShareableClippingParameters::~ShareableClippingParameters(re::ecs2::ShareableClippingParameters *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<re::UberClippingParametersEntry>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 96 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
  }

  return result;
}

void re::FixedArray<re::UberClippingParametersEntry>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 96 * a3;
  v6 = (*(*a2 + 32))(a2, 96 * a3, 16);
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
    bzero(v6, v5 - 96);
    v8 = (v8 + v5 - 96);
  }

  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
}

uint64_t re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(re::ecs2::IntrospectedNetworkTypeHelper *this, const re::ecs2::ComponentTypeBase *a2, const re::IntrospectionBase *a3)
{
  result = (*(*this + 8))(this, a2, a3);
  if (result)
  {
    if (result)
    {
      if (*(a2 + 4) != 8)
      {
        return 0;
      }

      v6 = *(a2 + 14);
      if (!v6)
      {
        return 0;
      }

      for (i = *(a2 + 8); ; ++i)
      {
        v8 = *i;
        if (**i == 1)
        {
          break;
        }

        if (!--v6)
        {
          return 0;
        }
      }

      if (!*(v8 + 10) && !strcmp("object", v8[1]) && (v9 = v8[2]) != 0 && *(v9 + 4) == 1 && (v10 = *(v9 + 6)) != 0 && *(v10 + 16) == 8 && (!re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(re::ecs2::ComponentTypeBase const&,re::IntrospectionBase const&)::$_0::__invoke(v10) ? (v11 = *(v10 + 56) == 0) : (v11 = 1), v11))
      {
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void re::ecs2::IntrospectedNetworkTypeHelper::registerSwiftComponent(re::ecs2::IntrospectedNetworkTypeHelper *this, const char *a2)
{
  {
  }

  v3 = strncmp(this, "CustomComponent", 0xFuLL);
  v6 = 0;
  v7 = &str_67;
  if (v3)
  {
    v4 = this;
  }

  else
  {
    v4 = this + 15;
  }

  if (v6)
  {
    if (v6)
    {
    }
  }
}

void *re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 8) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v11 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(a1, v7, v5, a2, a2);
    ++*(a1 + 40);
    return (*(a1 + 16) + 24 * v11 + 8);
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = (v9 + 24 * v8 + 8);
    if (re::StringID::operator==(v10, a2))
    {
      return v10;
    }

    v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }
}

uint64_t re::ecs2::IntrospectedNetworkTypeHelper::serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  SyncObjectContextEntry = RESyncGetSyncObjectContextEntry();
  memset(&v7[1], 0, 24);
  *(SyncObjectContextEntry + 472) = v7;
  result = RESyncCommitCaptureSnapshot();
  *(SyncObjectContextEntry + 472) = 0;
  return result;
}

uint64_t re::ecs2::IntrospectedNetworkTypeHelper::deserialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SyncObjectContextEntry = RESyncGetSyncObjectContextEntry();
  v6[2] = 0;
  v6[3] = 0;
  v6[0] = 0;
  *(SyncObjectContextEntry + 472) = v6;
  *(SyncObjectContextEntry + 464) = RESyncableGetFromPeerID();
  result = RESyncableReadState();
  *(SyncObjectContextEntry + 472) = 0;
  return result;
}

void anonymous namespace::decodeEntity(_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  objc_initWeak(a2, 0);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  re::ecs2::EntityHandle::reset(a2);
  if (this && *this)
  {
    v5 = 0;
    if (sscanf(this, "%llu", &v5) == 1)
    {
      v4 = v5;
      re::ecs2::EntityHandle::reset(a2);
      *(a2 + 8) = v4;
    }
  }
}

void re::ecs2::IntrospectedNetworkTypeHelper::SyncInfo::~SyncInfo(re::ecs2::IntrospectedNetworkTypeHelper::SyncInfo *this)
{
  if (*this)
  {
    RESyncRelease();
    *this = 0;
  }

  v2 = *(this + 2);
  if (v2)
  {
    _Block_release(v2);
    *(this + 2) = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    _Block_release(v3);
    *(this + 1) = 0;
  }
}

uint64_t re::ecs2::IntrospectedNetworkTypeHelper::makeTypeInfo@<X0>(const re::IntrospectionBase *a2@<X2>, const re::ecs2::ComponentTypeBase *a3@<X3>, uint64_t a4@<X1>, uint64_t *a5@<X8>)
{
  v96 = *MEMORY[0x1E69E9840];
  if (a2 && (*(*a2 + 64))(a2, a4, a2, a3))
  {
    v8 = (*(*a2 + 64))(a2);
    RESyncSyncableTypeInfoSetTypeId();
    result = RESyncSyncableTypeInfoSupportsNetworkSync();
    if (result)
    {
      v10 = RESyncRetain();
      result = re::NetworkSystemFeatureFlags::enableAltSharedApp(v10);
      *a5 = v8;
      if (result)
      {
        v11 = RESyncSyncableTypeInfoGetWriteSnapshotCb();
        v12 = RESyncBitWriterBackedRequiredSize();
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke;
        aBlock[3] = &unk_1E871DD00;
        aBlock[4] = v11;
        aBlock[5] = v12;
        a5[1] = _Block_copy(aBlock);
        SnapshotCb = RESyncSyncableTypeInfoGetReadSnapshotCb();
        RequiredSize = RESyncBitReaderGetRequiredSize();
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 0x40000000;
        v92[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2;
        v92[3] = &unk_1E871DD28;
        v92[4] = SnapshotCb;
        v92[5] = RequiredSize;
        result = _Block_copy(v92);
        a5[2] = result;
      }

      else
      {
        a5[1] = 0;
        a5[2] = 0;
      }
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
    }

    return result;
  }

  v91 = 0;
  memset(v89, 0, sizeof(v89));
  v90 = 0;
  if (*(a4 + 16) != 8)
  {
    goto LABEL_15;
  }

  re::getDowngradeFunctions(a4, 2u, buf);
  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::operator=(v89, buf);
  v15 = *buf;
  if (*buf && v95)
  {
    v15 = (*(**buf + 40))(*buf);
  }

  if (*(a4 + 16) == 8 && (v16 = re::snapshot::Registry::list(void)::s_head) != 0)
  {
    v17 = *(a4 + 48);
    while (*(v16 + 40) != a4)
    {
      v16 = *(v16 + 32);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v31 = *re::ecsNetworkLogObjects(v15);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136380675;
      *&buf[4] = v17;
      _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_INFO, "Found static snapshot entry for '%{private}s'", buf, 0xCu);
    }

    v20 = v88;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 0x40000000;
    v88[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_6;
    v88[3] = &__block_descriptor_tmp_8_2;
    v88[4] = v16;
    v88[5] = v17;
    v32 = v17;
    v19 = v87;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 0x40000000;
    v87[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_9;
    v87[3] = &__block_descriptor_tmp_10_0;
    v87[4] = v16;
    v87[5] = v32;
    v21 = v86;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 0x40000000;
    v86[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_11;
    v86[3] = &__block_descriptor_tmp_13;
    v86[4] = v16;
    v86[5] = v32;
    v18 = v85;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 0x40000000;
    v85[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_14;
    v85[3] = &__block_descriptor_tmp_15;
    v85[4] = v16;
    v85[5] = v32;
  }

  else
  {
LABEL_15:
    v18 = 0;
    v19 = 0;
    v20 = v84;
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 0x40000000;
    v84[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_16;
    v84[3] = &__block_descriptor_tmp_17_0;
    v84[4] = a4;
    v21 = v83;
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 0x40000000;
    v83[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_18;
    v83[3] = &__block_descriptor_tmp_19;
    v83[4] = a4;
  }

  v22 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetTypeId();
  re::getPrettyTypeName(buf, a4);
  RESyncSyncableTypeInfoSetDebugName();
  v23 = *buf;
  if (*buf && (buf[8] & 1) != 0)
  {
    v23 = (*(**buf + 40))();
  }

  a5[1] = 0;
  a5[2] = 0;
  *a5 = v22;
  if (re::NetworkSystemFeatureFlags::enableAltSharedApp(v23))
  {
    for (i = re::snapshot::Registry::list(void)::s_head; i; i = *(i + 32))
    {
      if (*(i + 40) == a4)
      {
        break;
      }
    }

    if (a2 && (*(*a2 + 8))(a2))
    {
      if (i)
      {
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 0x40000000;
        v82[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_20;
        v82[3] = &__block_descriptor_tmp_21;
        v82[4] = i;
        a5[1] = _Block_copy(v82);
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 0x40000000;
        v81[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_22;
        v81[3] = &__block_descriptor_tmp_23_0;
        v81[4] = i;
        v26 = v81;
      }

      else
      {
        v33 = *(a2 + 12);
        v43 = *(a2 + 13);
        if (re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(a2, a4, v25))
        {
          v34 = re::ecs2::g_encodeComponent;
          if (v33)
          {
            v34 = v33;
          }

          v80[0] = MEMORY[0x1E69E9820];
          v80[1] = 0x40000000;
          v80[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3;
          v80[3] = &__block_descriptor_tmp_25_0;
          if (v43)
          {
            v35 = v43;
          }

          else
          {
            v35 = re::ecs2::g_decodeComponent;
          }

          v80[4] = v34;
          v80[5] = a2;
          a5[1] = _Block_copy(v80);
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 0x40000000;
          v79[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_26;
          v79[3] = &__block_descriptor_tmp_27_0;
          v79[4] = v35;
          v79[5] = a2;
          v26 = v79;
        }

        else
        {
          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 0x40000000;
          v78[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_28;
          v78[3] = &__block_descriptor_tmp_29;
          v78[4] = a4;
          a5[1] = _Block_copy(v78);
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 0x40000000;
          v77[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_30;
          v77[3] = &__block_descriptor_tmp_31;
          v77[4] = a4;
          v26 = v77;
        }
      }

      a5[2] = _Block_copy(v26);
      goto LABEL_47;
    }

    if (i)
    {
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 0x40000000;
      v76[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_4;
      v76[3] = &__block_descriptor_tmp_32;
      v76[4] = i;
      v27 = _Block_copy(v76);
      v28 = v75;
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 0x40000000;
      v29 = &__block_descriptor_tmp_33;
      v30 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_5;
    }

    else
    {
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 0x40000000;
      v74[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_6;
      v74[3] = &__block_descriptor_tmp_34;
      v74[4] = a4;
      v27 = _Block_copy(v74);
      v28 = v73;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 0x40000000;
      v29 = &__block_descriptor_tmp_35;
      v30 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_7;
      i = a4;
    }

    a5[1] = v27;
    v28[2] = v30;
    v28[3] = v29;
    v28[4] = i;
    a5[2] = _Block_copy(v28);
  }

  if (!a2)
  {
LABEL_58:
    if (!v19)
    {
      v19 = v70;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 0x40000000;
      v70[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_58;
      v70[3] = &__block_descriptor_tmp_59;
      v70[4] = a4;
    }

    v42 = 0;
    if (!v18)
    {
      v18 = v69;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 0x40000000;
      v69[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_60;
      v69[3] = &__block_descriptor_tmp_61;
      v69[4] = a4;
    }

    goto LABEL_67;
  }

LABEL_47:
  shouldSerializeAsJson = (*(*a2 + 8))(a2);
  if (!shouldSerializeAsJson)
  {
    goto LABEL_58;
  }

  v39 = *(a2 + 12);
  v38 = *(a2 + 13);
  if (*(a2 + 6) == 0)
  {
    shouldSerializeAsJson = re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(a2, a4, v37);
    if (!shouldSerializeAsJson)
    {
      v42 = 1;
      goto LABEL_63;
    }

    v39 = re::ecs2::g_encodeComponent;
    v38 = re::ecs2::g_decodeComponent;
  }

  if ((!v39 || v38) && (v39 || !v38))
  {
    v42 = 1;
    if (v39)
    {
      v19 = v20;
      v18 = v21;
      if (v38)
      {
        v19 = v72;
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 0x40000000;
        v72[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_5_54;
        v72[3] = &__block_descriptor_tmp_55;
        v72[4] = v39;
        v72[5] = a2;
        v21 = v71;
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 0x40000000;
        v71[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_56;
        v71[3] = &__block_descriptor_tmp_57;
        v71[4] = v38;
        v71[5] = a2;
        v18 = v71;
      }

      goto LABEL_67;
    }

LABEL_63:
    v19 = v20;
    v18 = v21;
LABEL_67:
    v64 = MEMORY[0x1E69E9820];
    v65 = 0x40000000;
    v66 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_62;
    v67 = &unk_1E871E050;
    v68 = v18;
    RESyncSyncableTypeInfoSetReadSnapshotCb();
    v59 = MEMORY[0x1E69E9820];
    v60 = 0x40000000;
    v61 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_64;
    v62 = &unk_1E871E078;
    v63 = v19;
    RESyncSyncableTypeInfoSetWriteSnapshotCb();
    v49 = MEMORY[0x1E69E9820];
    v50 = 0x40000000;
    v51 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_66;
    v52 = &unk_1E871E0A0;
    v58 = v42;
    v55 = a4;
    v56 = v22;
    v57 = a4;
    v53 = v21;
    v54 = v19;
    RESyncSyncableTypeInfoSetReadPayloadCb();
    v48 = v42;
    re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(v44, v89);
    v47 = a4;
    RESyncSyncableTypeInfoSetWritePayloadCb();
    if (v44[0])
    {
      if (v46)
      {
        (*(*v44[0] + 40))();
      }

      v46 = 0;
      memset(v44, 0, sizeof(v44));
      ++v45;
    }

    goto LABEL_71;
  }

  v40 = *re::ecsNetworkLogObjects(shouldSerializeAsJson);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *(a2 + 4);
    *buf = 136315138;
    *&buf[4] = v41;
    _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Custom Component %s has an encode or decode function, but not both.  This is incompatible with RESync.  Treating as opaque type.", buf, 0xCu);
  }

  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
LABEL_71:
  result = v89[0];
  if (v89[0] && v91)
  {
    return (*(*v89[0] + 40))();
  }

  return result;
}