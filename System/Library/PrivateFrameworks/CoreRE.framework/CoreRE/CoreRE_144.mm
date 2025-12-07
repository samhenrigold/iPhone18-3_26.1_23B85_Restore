void *re::ecs2::SkeletalDebugSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v42[0] = a2;
  v42[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v41);
  v5 = a1[28];
  if (!v5 || (*(v5 + 432) & 0x10) != 0)
  {
    v6 = *(a3 + 200);
    if (v6)
    {
      v7 = 0;
      v8 = *(a3 + 216);
      v9 = 8 * v6;
      do
      {
        v10 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v10)
        {
          v11 = *(v10 + 384);
        }

        else
        {
          v11 = 0;
        }

        v7 += v11;
        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v40, 3087, a1, v7, 0, 0);
    re::StackScratchAllocator::StackScratchAllocator(v54);
    v50 = 1;
    v51 = 0;
    v52 = 0;
    v48 = v54;
    v49 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v48, 0);
    v50 += 2;
    v12 = a1[68];
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v53 = a1[68];
    v43[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v48, v13, v43);
    v14 = *(a3 + 200);
    if (v14)
    {
      v15 = *(a3 + 216);
      v16 = 8 * v14;
      do
      {
        v17 = *v15++;
        v43[0] = v17;
        v18 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 49, v43);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v48, *(a1[50] + 16 * v18 + 8));
        v16 -= 8;
      }

      while (v16);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v48, (a1 + 63));
    v44 = 1;
    v45 = 0;
    v46 = 0;
    v43[0] = v54;
    v43[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v43, 0);
    v44 += 2;
    v19 = a1[68];
    if ((v19 & 0x3F) != 0)
    {
      v20 = (v19 >> 6) + 1;
    }

    else
    {
      v20 = v19 >> 6;
    }

    v47 = a1[68];
    v55 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v43, v20, &v55);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 63), &v48);
    v21 = v52;
    if (v50)
    {
      v21 = &v51;
    }

    v22 = v49;
    if ((v49 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v23 = 0;
      while (1)
      {
        v25 = *v21++;
        v24 = v25;
        if (v25)
        {
          break;
        }

        v23 -= 64;
        if (!--v22)
        {
          goto LABEL_40;
        }
      }

      v26 = __clz(__rbit64(v24));
      if (v26 + 1 != v23)
      {
        FirstBitSet = v26 - v23;
        do
        {
          v28 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 42), FirstBitSet);
          v29 = *(*v28 + 224);
          v30 = v28[3];
          v31 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v28[2] + 8, v30);
          if (*(v31 + 40))
          {
            v32 = (*(*v29 + 24))(v29, v42, v28, v30, v31, 0);
          }

          else
          {
            v32 = 0;
          }

          v33 = v28[5];
          v34 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v28[2] + 8, v33);
          if (*(v34 + 40))
          {
            v32 |= (*(*v29 + 32))(v29, v42, v28, v33, v34, 0);
          }

          v35 = v28[6];
          v36 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v28[2] + 8, v35);
          if (*(v36 + 40))
          {
            if (((v32 | (*(*v29 + 40))(v29, v42, v28, v35, v36, 0)) & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else if (!v32)
          {
LABEL_38:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v43, FirstBitSet);
            goto LABEL_39;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v43, FirstBitSet);
LABEL_39:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v48, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_40:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 63), v43);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 42));
    if (v43[0] && (v44 & 1) == 0)
    {
      (*(*v43[0] + 40))();
    }

    if (v48 && (v50 & 1) == 0)
    {
      (*(*v48 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v54);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v40, v37, v38);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v41);
}

unint64_t re::ecs2::SkeletalDebugSystem::willAddSceneToECSService(re::ecs2::SkeletalDebugSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
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
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 456, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::init(v12, this + 336, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 456, v44);
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
  v14 = *(this + 47);
  *&v51 = 0;
  v15 = *(this + 43);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,4ul>::setBucketsCapacity(this + 42, (v14 + 4) >> 2);
    v15 = *(this + 43);
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
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(this + 47);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::init(v24, this + 336, v52);
  *&v62[0] = *(this + 47) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, &v52, v62);
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
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 456), v27, &v44);
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
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 504), v33, &v44);
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

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 504, v13);
  if (*(this + 568) == 1)
  {
    v38 = *(this + 69);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 336);
  }

  return result;
}

uint64_t re::ecs2::SkeletalDebugSystem::willRemoveSceneFromECSService(re::ecs2::SkeletalDebugSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 49, &v15);
  if (result != -1)
  {
    v4 = *(this + 50) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 456, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 504, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 392, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_SkeletalDebugComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_376, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_376))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3348, "SkeletalDebugComponent");
    __cxa_guard_release(&_MergedGlobals_376);
  }

  return &unk_1EE1B3348;
}

void re::ecs2::initInfo_SkeletalDebugComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v50[0] = 0xBC69695610230606;
  v50[1] = "SkeletalDebugComponent";
  if (v50[0])
  {
    if (v50[0])
    {
    }
  }

  *(this + 2) = v51;
  if ((atomic_load_explicit(&qword_1EE1B32E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B32E8))
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
    qword_1EE1B32F8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "drawModelSkeleton";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B3300 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "drawJointNames";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000003;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B3308 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::DynamicString>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "jointNameFilter";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2000000004;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B3310 = v26;
    v27 = re::introspectionAllocator();
    v28 = re::introspect_Vector4F(1);
    v29 = (*(*v27 + 32))(v27, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "textColor";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x4000000005;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1B3318 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "textScale";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5000000006;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1B3320 = v33;
    v34 = re::introspectionAllocator();
    v35 = re::introspect_Vector3F(1);
    v36 = (*(*v34 + 32))(v34, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "boneColor";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x6000000007;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1B3328 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::introspect_float(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "axisLength";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x7000000008;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1B3330 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::introspect_BOOL(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "drawJointsWithDepth";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x1C00000009;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1B3338 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::introspect_BOOL(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "drawJointAxis";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x1B0000000ALL;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1B3340 = v48;
    __cxa_guard_release(&qword_1EE1B32E8);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1B32F8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkeletalDebugComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkeletalDebugComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkeletalDebugComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkeletalDebugComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222SkeletalDebugComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v49 = v51;
}

void *re::internal::defaultDestruct<re::ecs2::SkeletalDebugComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit((a3 + 30));
  re::DynamicString::deinit((a3 + 26));
  re::AssetHandle::~AssetHandle((a3 + 23));
  re::DynamicString::deinit((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::SkeletalDebugComponent>(void *a1)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit((a1 + 30));
  re::DynamicString::deinit((a1 + 26));
  re::AssetHandle::~AssetHandle((a1 + 23));
  re::DynamicString::deinit((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_SkeletalDebugSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B32F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B32F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B33D8, "SkeletalDebugSystem");
    __cxa_guard_release(&qword_1EE1B32F0);
  }

  return &unk_1EE1B33D8;
}

void re::ecs2::initInfo_SkeletalDebugSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xC92384EC8ACA73D2;
  v8[1] = "SkeletalDebugSystem";
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
  *(this + 8) = &re::ecs2::initInfo_SkeletalDebugSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkeletalDebugSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkeletalDebugSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SkeletalDebugSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SkeletalDebugSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkeletalDebugSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkeletalDebugSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::SkeletalDebugSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 42);
  a3[37] = &unk_1F5CFE208;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 39);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::SkeletalDebugSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 42);
  a1[37] = &unk_1F5CFE208;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 39);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::SkeletalDebugComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::SkeletalDebugComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void re::ecs2::SkeletalDebugSystem::~SkeletalDebugSystem(re::ecs2::SkeletalDebugSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CFE208;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CFE208;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::internalDrawArrow(uint64_t result, float32x4_t *a2, float32x4_t *a3, __n128 *a4, float a5, float a6)
{
  v27 = a5;
  v6 = vsubq_f32(*a3, *a2);
  v7 = vmulq_f32(v6, v6);
  v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  if (fabsf(v8) >= 1.0e-10)
  {
    v12 = v8;
    v13 = vrsqrte_f32(LODWORD(v8));
    v14 = vmul_f32(v13, vrsqrts_f32(LODWORD(v12), vmul_f32(v13, v13)));
    v22 = vmulq_n_f32(v6, vmul_f32(v14, vrsqrts_f32(LODWORD(v12), vmul_f32(v14, v14))).f32[0]);
    v15 = re::PrimitiveRenderingContext::addLine(result, a2, a3);
    re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v15, &v27, (result + 240), (result + 518), *(result + 136), *(result + 528), *(result + 1192));
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v15, a4, (result + 200), (result + 517), *(result + 136), *(result + 528), *(result + 1192));
    if (fabsf(v22.f32[2]) >= 0.00001)
    {
      v17.i32[0] = 0;
      v17.f32[1] = -v22.f32[2];
      v16 = v22;
      v17.i64[1] = v22.u32[1];
    }

    else
    {
      v16 = v22;
      v17.i64[1] = 0;
      v17.f32[0] = -v22.f32[1];
      v17.i32[1] = v22.i32[0];
    }

    v18 = vmulq_f32(v17, v17);
    *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v19);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
    v23 = vmulq_n_f32(vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]), a6 * 0.25);
    v25 = vmulq_n_f32(v16, a6);
    v26 = vaddq_f32(vsubq_f32(*a3, v25), v23);
    v20 = re::PrimitiveRenderingContext::addLine(result, a3, &v26);
    re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v20, &v27, (result + 240), (result + 518), *(result + 136), *(result + 528), *(result + 1192));
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v20, a4, (result + 200), (result + 517), *(result + 136), *(result + 528), *(result + 1192));
    v26 = vsubq_f32(vsubq_f32(*a3, v25), v23);
    v21 = re::PrimitiveRenderingContext::addLine(result, a3, &v26);
    re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v21, &v27, (result + 240), (result + 518), *(result + 136), *(result + 528), *(result + 1192));
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v21, a4, (result + 200), (result + 517), *(result + 136), *(result + 528), *(result + 1192));
  }
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFE300;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFE358;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFE3B0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFE408;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CFE300;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFE358;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFE3B0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFE408;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE300;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE300;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE358;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE358;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE3B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE3B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE408;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE408;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::SkeletalDebugComponent>(uint64_t a1)
{
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 208) = 0u;
  v2 = (a1 + 208);
  *(a1 + 32) = 0u;
  v3 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v4 + 16) = 0;
  *v4 = &unk_1F5CE2108;
  *(v4 + 24) = 0x1000000;
  *(v4 + 28) = 0;
  *v3 = 0u;
  *(v4 + 48) = 0u;
  v5 = re::DynamicString::setCapacity(v3, 0);
  *(a1 + 64) = 0x3F8000003F800000;
  *(a1 + 72) = 0x3F8000003F800000;
  *(a1 + 80) = 1084227584;
  *(a1 + 96) = xmmword_1E3074790;
  *(a1 + 112) = 0x3CA3D70A3DCCCCCDLL;
  *(a1 + 120) = 0;
  *(a1 + 128) = xmmword_1E30476A0;
  *(a1 + 144) = xmmword_1E3060D30;
  *(a1 + 160) = xmmword_1E3063230;
  *(a1 + 176) = -1;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  re::DynamicString::setCapacity(v2, 0);
  *(a1 + 272) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs222SkeletalDebugComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ImagePresentationManager::ImagePresentationManager(uint64_t a1, re::StringID *a2)
{
  *a1 = &unk_1F5CFE460;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 104) = re::ServiceLocator::serviceOrNull<re::Engine>(a2);
  *(a1 + 112) = a2;
  *(a1 + 128) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v4 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  if (v4)
  {
    *(a1 + 120) = v4;
  }

  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 8, 8);
  *(a1 + 136) = re::ImagePresentationTextureProcessor::ImagePresentationTextureProcessor(v6, 0);
  return a1;
}

void re::ImagePresentationManager::~ImagePresentationManager(re::ImagePresentationManager *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 9);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 22);
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
    re::internal::destroyPersistent<re::ecs2::ImagePresentationComponentHelper>("~ImagePresentationManager", 43, *(*(this + 9) + 32 * v3 + 16));
    v6 = *(this + 22);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 9) + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v3) = v6;
LABEL_15:
    ;
  }

  re::HashTable<re::ecs2::Entity *,re::ecs2::ImagePresentationComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 56);
  re::internal::destroyPersistent<re::ImagePresentationTextureProcessor>("~ImagePresentationManager", 47, *(this + 17));
  re::AssetHandle::~AssetHandle((this + 144));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 7);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 1);
}

{
  re::ImagePresentationManager::~ImagePresentationManager(this);

  JUMPOUT(0x1E6906520);
}

re *re::internal::destroyPersistent<re::ecs2::ImagePresentationComponentHelper>(re *result, uint64_t a2, id **a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::ecs2::ImagePresentationComponentHelper::~ImagePresentationComponentHelper(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::HashTable<re::ecs2::Entity *,re::ecs2::ImagePresentationComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_66, 4 * v2);
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

        v4 += 8;
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

re *re::internal::destroyPersistent<re::ImagePresentationTextureProcessor>(re *result, uint64_t a2, CFTypeRef *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    if (*a3)
    {
      CFRelease(*a3);
      *a3 = 0;
    }

    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::ImagePresentationManager::registerScene(re::ImagePresentationManager *this, re::EventBus **a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track image presentation component changes.", "eventBus", "registerScene", 53);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track image presentation component changes.");
    __break(1u);
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v5 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v38 = re::globalAllocators(v4)[2];
  v6 = (*(*v38 + 32))(v38, 32, 0);
  *v6 = &unk_1F5CFE4B8;
  v6[1] = this;
  v6[2] = re::ImagePresentationManager::didAddImagePresentationComponent;
  v6[3] = 0;
  v39 = v6;
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v37, v5, 0);
  v9 = v8;
  v10 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v10 = v7;
  v10[1] = v9;
  v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v37);
  v35 = re::globalAllocators(v11)[2];
  v12 = (*(*v35 + 32))(v35, 32, 0);
  *v12 = &unk_1F5CFE510;
  v12[1] = this;
  v12[2] = re::ImagePresentationManager::didChangeImagePresentationComponent;
  v12[3] = 0;
  v36 = v12;
  v13 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v34, v5, 0);
  v15 = v14;
  v16 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v16 = v13;
  v16[1] = v15;
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v34);
  v32 = re::globalAllocators(v17)[2];
  v18 = (*(*v32 + 32))(v32, 32, 0);
  *v18 = &unk_1F5CFE568;
  v18[1] = this;
  v18[2] = re::ImagePresentationManager::willRemoveImagePresentationComponent;
  v18[3] = 0;
  v33 = v18;
  v19 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v31, v5, 0);
  v21 = v20;
  v22 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v22 = v19;
  v22[1] = v21;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v31);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 8, &v30, v24);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v24);
  result = v24[0];
  if (v24[0])
  {
    if ((v25 & 1) == 0)
    {
      return (*(*v24[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ImagePresentationManager::didAddImagePresentationComponent(re *a1, re::ecs2::Entity *a2)
{
  v11 = a2;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 8, 8);
  re::ecs2::ImagePresentationComponentHelper::ImagePresentationComponentHelper(v5);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v11, v6 ^ (v6 >> 31), &v12);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::ecs2::Entity *,re::ecs2::ImagePresentationComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1 + 7, v13, v12);
    v8 = v11;
    *(v7 + 8) = v11;
    *(v7 + 16) = v5;
    ++*(a1 + 24);
  }

  else
  {
    v8 = v11;
  }

  v9 = re::ecs2::EntityComponentCollection::get((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::ImagePresentationComponent::tryToNotifySpatial3DImageOfAddEvent(v9, v11);
  return 0;
}

uint64_t re::ImagePresentationManager::willRemoveImagePresentationComponent(uint64_t a1, unint64_t a2)
{
  SpatialMediaComponentHelper = re::SpatialMediaManager::getSpatialMediaComponentHelper(a1, a2);
  if (SpatialMediaComponentHelper)
  {
    re::ecs2::ImagePresentationComponentHelper::impl::removeImagePresentationMaterialParameters(SpatialMediaComponentHelper, a2, *(a1 + 128));
    v15 = a2;
    v5 = re::SpatialMediaManager::getSpatialMediaComponentHelper(a1, a2);
    if (v5)
    {
      v6 = v5;
      v7 = re::globalAllocators(v5)[2];
      re::ecs2::ImagePresentationComponentHelper::~ImagePresentationComponentHelper(v6);
      (*(*v7 + 40))(v7, v6);
      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v15, v8 ^ (v8 >> 31), v16);
      v9 = v18;
      if (v18 != 0x7FFFFFFF)
      {
        v10 = *(a1 + 72);
        v11 = *(v10 + 32 * v18) & 0x7FFFFFFF;
        if (v19 == 0x7FFFFFFF)
        {
          *(*(a1 + 64) + 4 * v17) = v11;
          v9 = v18;
        }

        else
        {
          *(v10 + 32 * v19) = *(v10 + 32 * v19) & 0x80000000 | v11;
        }

        v12 = *(a1 + 96);
        *(v10 + 32 * v9) = *(a1 + 92);
        --*(a1 + 84);
        *(a1 + 92) = v9;
        *(a1 + 96) = v12 + 1;
      }
    }
  }

  v13 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::ImagePresentationComponent::tryToNotifySpatial3DImageOfRemoveEvent(v13, a2);
  return 0;
}

uint64_t re::ImagePresentationManager::unregisterScene(re::ImagePresentationManager *this, re::ecs2::Scene *a2)
{
  v9 = a2;
  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 8, &v9);
  if (result)
  {
    v4 = *(v9 + 36);
    if (v4)
    {
      v5 = result;
      v6 = *(result + 40);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v5, i);
          re::EventBus::unsubscribe(v4, *v8, v8[1]);
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 8, &v9);
  }

  return result;
}

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE4B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE4B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE510;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE510;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE568;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ImagePresentationManager,REEventHandlerResult (re::ImagePresentationManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE568;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Entity *,re::ecs2::ImagePresentationComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Entity *,re::ecs2::ImagePresentationComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = a1[2];
          *&v26[16] = v13;
          a1[2] = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 3);
          v14 = *&v26[32];
          *(a1 + 3) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ecs2::Entity *,re::ecs2::ImagePresentationComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1, v18[1] % *(a1 + 6), v18[1]);
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v20 = a1[2];
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = a1[2];
    v21 = *(v20 + 32 * v5);
    *(a1 + 9) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = a1[1];
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v20 + 32 * v5;
}

void re::HashTable<re::ecs2::Entity *,re::ecs2::ImagePresentationComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_66, 4 * v10);
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

uint64_t *re::peerVideoStreamingLogObjects(re *this)
{
  {
    re::peerVideoStreamingLogObjects(void)::logObjects = os_log_create("com.apple.re", "PeerVideoStreaming");
  }

  return &re::peerVideoStreamingLogObjects(void)::logObjects;
}

uint64_t re::PeerVideoStreamingLogObjects::loggingEnabled(re::PeerVideoStreamingLogObjects *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "peervideostreaming.log.enabled", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::PeerVideoStreamingLogObjects::loggingEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1352];
}

void re::ecs2::RemoteEffectAudioPlaybackData::~RemoteEffectAudioPlaybackData(re::ecs2::Entity **this)
{
  re::ecs2::RemoteEffectAudioPlaybackData::cleanUpAudioForwarder(this);
  re::ecs2::RemoteEffectAudioPlaybackData::cleanUpAudioToken(this);
  v2 = this[5];
  if (v2)
  {
    re::ecs2::Entity::removeFromSceneOrParent(v2);
    v3 = this[5];
    if (v3)
    {

      this[5] = 0;
    }
  }

  re::AssetHandle::~AssetHandle(this);
}

void re::ecs2::RemoteEffectAudioPlaybackData::cleanUpAudioForwarder(re::ecs2::RemoteEffectAudioPlaybackData *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 5);
    if (v3)
    {
      v4 = *(v3 + 4);
      if (v4)
      {
        if ((*(v4 + 304) & 0x80) == 0)
        {
          re::ecs2::AudioComponentForwarder::stopForwardingAudioComponentState(*(this + 4), v4, v3);
          v1 = *(this + 4);
        }
      }
    }

    re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("cleanUpAudioForwarder", 83, v1);
    *(this + 4) = 0;
  }

  else
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v5 = *re::remoteEffectsLogObjects(this);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "CleanUpAudioForwarder() called with invalid forwarder. Aborting", v6, 2u);
      }
    }
  }
}

void re::ecs2::RemoteEffectAudioPlaybackData::cleanUpAudioToken(re::ecs2::RemoteEffectAudioPlaybackData *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v3 = re::ecs2::EntityComponentCollection::get((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v3)
    {
      v4 = *(this + 3);
      if (v4)
      {
        re::ecs2::AudioPlayerComponent::destroy(v3, v4);
      }
    }

    *(this + 3) = 0;
  }
}

void re::ecs2::RemoteEffectsService::setUpAudioPlaybackData(void *a1, uint64_t a2, unint64_t *a3)
{
  re::AssetHandle::AssetHandle(&v39, (a3 + 11));
  v6 = v40;
  re::AssetHandle::~AssetHandle(&v39);
  if (!v6)
  {
    return;
  }

  v7 = a1 + 18;
  v8 = *a3;
  v9 = a1[19];
  if (!*&v9)
  {
    goto LABEL_19;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = *a3;
    if (*&v9 <= v8)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v8;
  }

  v12 = *(*v7 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_19;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  if (v13[2] != v8)
  {
    goto LABEL_18;
  }

  re::AssetHandle::AssetHandle(&v39, (v13 + 3));
  re::AssetHandle::AssetHandle(buf, (a3 + 11));
  if (v40 != v38)
  {
    re::AssetHandle::~AssetHandle(buf);
    re::AssetHandle::~AssetHandle(&v39);
    goto LABEL_22;
  }

  v19 = v13[6];
  re::AssetHandle::~AssetHandle(buf);
  re::AssetHandle::~AssetHandle(&v39);
  if (!v19)
  {
LABEL_22:
    re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, *a3, 0);
    v16 = v13 + 8;
    v17 = v13[8];
    if (v17)
    {
      v18 = (v17 + 8);

      goto LABEL_57;
    }

    v20 = re::ecs2::EntityFactory::instance(v15);
    re::ecs2::EntityFactory::make(&v39, v20, 4uLL);
    v21 = v39;
    if (v39)
    {
      v22 = v39 + 8;
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v13 + 8, v21);
    }

    else if (*v16)
    {

      *v16 = 0;
    }

    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((a2 + 320), &v39);
    v23 = re::ecs2::EntityComponentCollection::add((v39 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v24 = v23;
    if (!v23)
    {
      re::ecs2::Entity::removeFromSceneOrParent(v39);
      if (*v16)
      {

        *v16 = 0;
      }

      *buf = *a3;
      std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__erase_unique<unsigned long long>(v7, buf);
      goto LABEL_54;
    }

    if (*v16)
    {
      v25 = *(*v16 + 32);
      if (v25 && (*(v25 + 304) & 0x80) == 0)
      {
        v26 = re::globalAllocators(v23);
        v27 = (*(*v26[2] + 32))(v26[2], 48, 8);
        *v27 = 0u;
        *(v27 + 16) = 0u;
        *(v27 + 32) = 0;
        *(v27 + 36) = 0x7FFFFFFFLL;
        v13[7] = v27;
        v28 = v13[8];
        v29 = *(v28 + 4);
        if (v29)
        {
          if ((*(v29 + 304) & 0x80) != 0)
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v28 + 4);
          }
        }

        else
        {
          v30 = 0;
        }

        re::ecs2::AudioComponentForwarder::forwardAudioComponentState(v27, v30, v28);
        goto LABEL_54;
      }

      if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
      }

      if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled != 1)
      {
        goto LABEL_54;
      }

      v31 = *re::remoteEffectsLogObjects(v23);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v32 = "SetupAudioForwarder() called with playback entity with no parent. Aborting";
    }

    else
    {
      if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
      }

      if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled != 1)
      {
        goto LABEL_54;
      }

      v31 = *re::remoteEffectsLogObjects(v23);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v32 = "SetupAudioForwarder() called with no playback entity. Aborting";
    }

    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
LABEL_54:
    if (v39)
    {
    }

    if (v24)
    {
LABEL_57:
      re::AssetHandle::AssetHandle(v36, (a3 + 11));
      if (*v16)
      {
        re::AssetHandle::operator=((v13 + 3), v36);
        v33 = re::ecs2::EntityComponentCollection::get((v13[8] + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        re::AssetHandle::AssetHandle(&v39, (v13 + 3));
        v13[6] = re::ecs2::AudioPlayerComponent::prepare(v33, &v39);
        re::AssetHandle::~AssetHandle(&v39);
        if (!v13[6])
        {
          if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
          {
            dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
          }

          if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
          {
            v35 = *re::remoteEffectsLogObjects(v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "prepareAudioToken() failed to prepare asset handle", buf, 2u);
            }
          }
        }
      }

      re::AssetHandle::~AssetHandle(v36);
      re::ecs2::RemoteEffectAudioPlaybackData::fadeToGain((v13 + 3), 0.0, 0.0);
    }
  }
}

void re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(re::ecs2::RemoteEffectsService *this, unint64_t a2, int a3)
{
  v6 = a2;
  HoverAudioPlaybackDataForStyle = re::ecs2::RemoteEffectsService::getHoverAudioPlaybackDataForStyle(this, a2);
  if (HoverAudioPlaybackDataForStyle)
  {
    re::ecs2::RemoteEffectAudioPlaybackData::cleanUpAudioToken(HoverAudioPlaybackDataForStyle);
    if (a3)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__erase_unique<unsigned long long>(this + 18, &v6);
    }
  }
}

void re::ecs2::RemoteEffectAudioPlaybackData::fadeToGain(re::ecs2::RemoteEffectAudioPlaybackData *this, float a2, double a3)
{
  v3 = *(this + 5);
  if (v3)
  {
    if (*(this + 3))
    {
      v7 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v7)
      {
        v8 = *(this + 3);

        re::ecs2::AudioPlayerComponent::fadeToGain(v7, v8, a2, a3);
      }
    }
  }
}

void *re::ecs2::RemoteEffectsService::getHoverAudioPlaybackDataForStyle(re::ecs2::RemoteEffectsService *this, unint64_t a2)
{
  v4 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this + 18, &v4);
  if (result)
  {
    v5 = &v4;
    return std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 18, &v4, &std::piecewise_construct, &v5) + 3;
  }

  return result;
}

void re::ecs2::RemoteEffectAudioPlaybackData::playAudio(re::ecs2::RemoteEffectAudioPlaybackData *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    if (*(this + 3))
    {
      v3 = re::ecs2::EntityComponentCollection::get((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v3)
      {
        v4 = *(this + 3);

        re::ecs2::AudioPlayerComponent::play(v3, v4, 1);
      }
    }
  }
}

BOOL re::ecs2::RemoteEffectAudioPlaybackData::isPlayingAudio(re::ecs2::RemoteEffectAudioPlaybackData *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  if (!*(this + 3))
  {
    return 0;
  }

  v3 = re::ecs2::EntityComponentCollection::get((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 3);

  return re::ecs2::AudioPlayerComponent::isPlaying(v3, v4);
}

void re::ecs2::RemoteEffectsService::updateAudioPlaybackDataIsActive(re::ecs2::RemoteEffectsService *this, re::ecs2::RemoteEffectHoverState *a2, int a3)
{
  if (*(a2 + 161) == 3 && *(a2 + 765) != a3)
  {
    HoverAudioPlaybackDataForStyle = re::ecs2::RemoteEffectsService::getHoverAudioPlaybackDataForStyle(this, *(a2 + 79));
    if (HoverAudioPlaybackDataForStyle)
    {
      v6 = HoverAudioPlaybackDataForStyle;
      v7 = *(a2 + 40);
      if (v7)
      {
        v8 = *(v7 + 48);
      }

      else
      {
        v8 = 0.0;
      }

      v9 = 0.0;
      if (a3)
      {
        v9 = 1.0;
        if (!re::ecs2::RemoteEffectAudioPlaybackData::isPlayingAudio(HoverAudioPlaybackDataForStyle))
        {
          re::ecs2::RemoteEffectAudioPlaybackData::playAudio(v6);
        }
      }

      re::ecs2::RemoteEffectAudioPlaybackData::fadeToGain(v6, v9, v8);
    }
  }
}

void re::ecs2::RemoteEffectsService::audioHoverStateTeardown(re::ecs2::RemoteEffectsService *this, re::ecs2::RemoteEffectHoverState *a2)
{
  if (*(a2 + 78))
  {
    v2 = *(a2 + 161) == 3;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    HoverAudioPlaybackDataForStyle = re::ecs2::RemoteEffectsService::getHoverAudioPlaybackDataForStyle(this, *(a2 + 79));
    if (HoverAudioPlaybackDataForStyle)
    {
      v4 = HoverAudioPlaybackDataForStyle;
      v5 = HoverAudioPlaybackDataForStyle[5];
      if (v5)
      {
        if (HoverAudioPlaybackDataForStyle[3])
        {
          v6 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v6)
          {
            v7 = v4[3];

            re::ecs2::AudioPlayerComponent::stop(v6, v7);
          }
        }
      }
    }
  }
}

void re::ecs2::RemoteEffectsService::updateAudioPlaybackDataFromStyle(re::ecs2::RemoteEffectsService *a1, uint64_t a2, uint64_t a3)
{
  HoverAudioPlaybackDataForStyle = re::ecs2::RemoteEffectsService::getHoverAudioPlaybackDataForStyle(a1, *a3);
  v7 = HoverAudioPlaybackDataForStyle;
  if (*(a3 + 12) == 3)
  {
    if (HoverAudioPlaybackDataForStyle)
    {
      re::AssetHandle::AssetHandle(v12, (a3 + 88));
      re::AssetHandle::AssetHandle(v11, v7);
      v8 = v13;
      v9 = v11[1];
      re::AssetHandle::~AssetHandle(v11);
      re::AssetHandle::~AssetHandle(v12);
      if (v8 != v9)
      {
        re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, *a3, 0);
        re::ecs2::RemoteEffectsService::setUpAudioPlaybackData(a1, a2, a3);
      }
    }

    else
    {

      re::ecs2::RemoteEffectsService::setUpAudioPlaybackData(a1, a2, a3);
    }
  }

  else if (HoverAudioPlaybackDataForStyle)
  {
    v10 = *a3;

    re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, v10, 1);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      re::ecs2::RemoteEffectAudioPlaybackData::~RemoteEffectAudioPlaybackData(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *re::ecs2::allocInfo_DynamicLightShadowComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_377, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_377))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3488, "DynamicLightShadowComponent");
    __cxa_guard_release(&_MergedGlobals_377);
  }

  return &unk_1EE1B3488;
}

void re::ecs2::initInfo_DynamicLightShadowComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x8E6D63D77A0FC50CLL;
  v20[1] = "DynamicLightShadowComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B3470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3470))
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
    qword_1EE1B3478 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "enableDynamicLightShadow";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B3480 = v18;
    __cxa_guard_release(&qword_1EE1B3470);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B3478;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicLightShadowComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicLightShadowComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicLightShadowComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicLightShadowComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227DynamicLightShadowComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::DynamicLightShadowComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6898;
}

void re::internal::defaultConstructV2<re::ecs2::DynamicLightShadowComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6898;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs227DynamicLightShadowComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void re::DynamicArray<re::ecs2::AnimationShadowEntry>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 144 * v2;
    do
    {
      re::ecs2::AnimationShadowEntry::deinit(v3);
      std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100](v3 + 6);
      re::AssetHandle::~AssetHandle((v3 + 3));
      v3 += 18;
      v4 -= 144;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

re::ecs2::AnimationEntry *re::DynamicArray<re::ecs2::AnimationEntry>::clear(re::ecs2::AnimationEntry *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = v2 << 8;
    do
    {
      re::ecs2::AnimationEntry::~AnimationEntry(result);
      result = (v4 + 256);
      v3 -= 256;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

re::ecs2::AnimationComponentEntry *re::DynamicArray<re::ecs2::AnimationComponentEntry>::clear(re::ecs2::AnimationComponentEntry *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 72 * v2;
    do
    {
      re::ecs2::AnimationComponentEntry::~AnimationComponentEntry(result);
      result = (v4 + 72);
      v3 -= 72;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

double re::ecs2::AnimationComponentEntry::deinit(re::ecs2::AnimationComponentEntry *this)
{
  if (*this)
  {

    *this = 0;
  }

  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 11) = 0x80000000;
  *(this + 6) = &str_102;

  return re::AnimationController::stop((this + 56), 0.0);
}

double re::ecs2::AnimationEntry::deinit(re::ecs2::AnimationEntry *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(v2 + 288);
    if (v3)
    {
      v4 = re::globalAllocators(this)[2];
      (**v3)(v3);
      this = (*(*v4 + 40))(v4, v3);
      v2 = *(v1 + 6);
      *(v2 + 288) = 0;
    }

    v5 = re::globalAllocators(this)[2];
    re::FromToByAnimationAssetData<re::GenericSRT<float>>::~FromToByAnimationAssetData(v2);
    (*(*v5 + 40))(v5, v2);
  }

  *(v1 + 6) = 0;
  v6 = *(v1 + 11);
  if (v6)
  {
    CFRelease(v6);
    *(v1 + 11) = 0;
  }

  if (*(v1 + 29))
  {
    WeakRetained = objc_loadWeakRetained(v1 + 28);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = (WeakRetained - 1);
      do
      {
        v10 = v9;
        v9 = *(v9 + 4);
      }

      while (v9);
      v11 = *(v10 + 3);
      if (v11)
      {
        v12 = *(v11 + 56);
        if (v12)
        {
          v13 = (*(*v12 + 32))(v12);
          v14 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v13);
          if (v14)
          {
            v15 = v14;
            v16 = re::ecs2::EntityComponentCollection::getOrAdd((v8 + 5), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            (*(*v15 + 72))(v15, *(v1 + 29), v16 + 32);
            v17 = v8[26];
            if (!v17)
            {
              v17 = re::ecs2::EntityComponentCollection::add((v8 + 5), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            }

            re::ecs2::NetworkComponent::markDirty(v17, v16);
          }
        }
      }
    }

    *(v1 + 29) = 0;
  }

  objc_destroyWeak(v1 + 28);
  *(v1 + 28) = 0;
  v18 = *(v1 + 31);
  if (v18)
  {
    CFRelease(v18);
    *(v1 + 31) = 0;
  }

  if (*v1)
  {

    *v1 = 0;
  }

  *(v1 + 1) = 0;
  v19 = *(v1 + 3);
  if (v19)
  {

    *(v1 + 3) = 0;
  }

  *(v1 + 4) = 0;
  *(v1 + 28) = 512;
  *(v1 + 58) = 0;
  *(v1 + 9) = 0;
  *(v1 + 10) = 0;
  *(v1 + 8) = 0;
  *(v1 + 12) = 0;
  *(v1 + 13) = 0;
  *(v1 + 29) = 0x80000000;
  *(v1 + 112) = 0;
  *(v1 + 15) = &str_102;
  *(v1 + 16) = 0;
  *(v1 + 136) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 140) = result;
  return result;
}

void re::ecs2::AnimationEntry::parentTimebase(re::ecs2::AnimationEntry *this@<X0>, re::ecs2::Entity *a2@<X1>, OpaqueCMTimebase *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 11);
  if (v5)
  {
    *a4 = 1;
LABEL_3:
    *(a4 + 8) = v5;
    return;
  }

  v7 = *(this + 12);
  if (v7)
  {
    if (*(this + 30) == v7)
    {
      *a4 = 1;
      v5 = *(this + 31);
      goto LABEL_3;
    }

    v8 = a2;
    v9 = *(this + 31);
    if (v9)
    {
      CFRelease(v9);
      *(this + 31) = 0;
    }

    if (!v8)
    {
      goto LABEL_17;
    }

    do
    {
      v10 = v8;
      v8 = *(v8 + 4);
    }

    while (v8);
    v11 = *(v10 + 3);
    if (v11 && (v12 = *(v11 + 56)) != 0 && (v13 = (*(*v12 + 32))(v12, a2, a3), (v14 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v13)) != 0) && (v15 = (*(*v14 + 96))(v14, *(this + 12))) != 0)
    {
      *(this + 30) = *(this + 12);
      *(this + 31) = v15;
      *a4 = 1;
      *(a4 + 8) = v15;
    }

    else
    {
LABEL_17:
      *a4 = 0;
    }
  }

  else
  {
    *a4 = 1;
    *(a4 + 8) = a3;
  }
}

void re::ecs2::AnimationShadowEntry::deinit(re::ecs2::AnimationShadowEntry *this)
{
  *this = 0;
  re::AnimationController::stop((this + 8), 0.0);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    std::function<void ()(re::Timeline *)>::operator()(*(this + 10), v3);
  }

  *(this + 88) = 2;
}

id **re::ecs2::AnimationComponent::AnimationComponent(id **this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CFE5C0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 144) = 0;
  *(v2 + 168) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 108) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = 1000;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  re::make::shared::object<re::ecs2::AnimationComponent::AnimationComponentEventDelegate,re::ecs2::AnimationComponent&>(v2, &v5);
  v3 = this[11];
  this[11] = v5;
  v5 = v3;
  if (v3)
  {
  }

  return this;
}

uint64_t anonymous namespace::animationTokenIndex<re::ecs2::AnimationShadowEntry>(uint64_t result, unint64_t a2, char *a3, unint64_t a4)
{
  v4 = &a3[144 * a2];
  v5 = a3;
  if (a2)
  {
    v5 = a3;
    do
    {
      v6 = &v5[144 * (a2 >> 1)];
      v8 = *v6;
      v7 = (v6 + 18);
      v9 = v8 >= a4;
      if (v8 >= a4)
      {
        a2 >>= 1;
      }

      else
      {
        a2 += ~(a2 >> 1);
      }

      if (!v9)
      {
        v5 = v7;
      }
    }

    while (a2);
  }

  if (v5 == v4 || *v5 != a4)
  {
    *result = 0;
  }

  else
  {
    *result = 1;
    *(result + 8) = 0x8E38E38E38E38E39 * ((v5 - a3) >> 4);
  }

  return result;
}

uint64_t re::AssetHandle::loadedAsset<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(re::AssetHandle *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void re::ecs2::AnimationComponent::initOwnershipState(uint64_t *this)
{
  if (!*(this + 248))
  {
    v14[2] = v4;
    v14[3] = v3;
    v14[8] = v1;
    v14[9] = v2;
    v6 = this[2];
    if (v6)
    {
      v7 = *(v6 + 216);
      if (v7)
      {
        if (*(v7 + 32))
        {
          if (RESyncableGetOwnerPeerID())
          {
LABEL_6:
            *(this + 248) = 1;
            return;
          }
        }

        else if (*(v7 + 116) < 0 && *(v7 + 64))
        {
          goto LABEL_6;
        }
      }
    }

    *(this + 248) = 2;
    v8 = re::ecs2::AnimationComponent::parentSimulationTimer(this);
    if (v8)
    {
      (*(*v8 + 48))(v8);
      v10 = this[14];
      if (v10)
      {
        v11 = v9;
        v12 = this[16];
        v13 = v10 << 8;
        do
        {
          re::ecs2::AnimationComponent::animationEntryParentTime(v14, this, v11, v12);
          if (LOBYTE(v14[0]) == 1)
          {
            v12[9] = v14[1];
          }

          v12 += 32;
          v13 -= 256;
        }

        while (v13);
      }
    }
  }
}

_anonymous_namespace_ *re::ecs2::AnimationComponent::parentSimulationTimer(re::ecs2::AnimationComponent *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v2 = v1;
    v1 = *(v1 + 32);
  }

  while (v1);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = (*(*v4 + 32))(v4);

  return re::ServiceLocator::serviceOrNull<re::SimulationTimer>(v5);
}

void re::ecs2::AnimationComponent::animationEntryParentTime(double *__return_ptr a1@<X8>, re::ecs2::Entity **this@<X0>, double a3@<D0>, const re::ecs2::AnimationEntry *a4@<X1>)
{
  re::ecs2::AnimationEntry::parentTimebase(a4, this[2], this[29], v8);
  if (v8[0])
  {
    if (timebase)
    {
      CMTimebaseGetTime(&time, timebase);
      Seconds = CMTimeGetSeconds(&time);
      *a1 = 1;
      a1[1] = Seconds;
    }

    else
    {
      *a1 = 1;
      a1[1] = a3;
    }
  }

  else
  {
    *a1 = 0;
  }
}

re::ecs2::AnimationEntry *re::ecs2::AnimationComponent::processFinishedAnimations(re::ecs2::AnimationEntry *this, re::ecs2::Component *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = this;
  v57 = *MEMORY[0x1E69E9840];
  if (*(this + 248) != 2)
  {
    if (*(this + 14))
    {
      v39 = 3;
    }

    else
    {
      v39 = 1;
    }

    *(this + 248) = v39;
    return this;
  }

  if (!*(this + 20))
  {
    goto LABEL_49;
  }

  v8 = 0;
  v6 = 0;
LABEL_4:
  v9 = ~v6 << 8;
  do
  {
    v5 = *(v7 + 176) + (v6 << 8);
    if (*(v5 + 57) == 2)
    {
      v25 = *(v5 + 192);
      if (v25)
      {
        v26 = *(v5 + 208);
        v27 = &v26[2 * v25];
        do
        {
          v28 = *(v7 + 16);
          do
          {
            v29 = v28;
            v28 = *(v28 + 32);
          }

          while (v28);
          v30 = *(v29 + 24);
          *&v56[0] = *v26;
          v31 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v30 + 152, v56);
          if (v31)
          {
            v32 = *(v31 + 8);
            if (v32)
            {
              v33 = re::ecs2::EntityComponentCollection::get((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v33)
              {
                re::ecs2::AnimationComponent::stop(v33, v26[1], 0.0);
              }
            }
          }

          v26 += 2;
        }

        while (v26 != v27);
      }

      v34 = *(v5 + 128);
      re::ecs2::AnimationComponent::willModifyWithStringKey(v7, v34, "AnimationPlaybackController.isValid");
      v5 = *(v7 + 160);
      if (v5 <= v6)
      {
        goto LABEL_58;
      }

      v35 = *(v7 + 176);
      if (v5 - 1 > v6)
      {
        v36 = (v35 + (v6 << 8));
        if (v36 + 16 != (v35 + (v5 << 8)))
        {
          v37 = v9 + (v5 << 8);
          do
          {
            v38 = v36 + 16;
            re::ecs2::AnimationEntry::operator=(v36, v36 + 16);
            v36 = v38;
            v37 -= 256;
          }

          while (v37);
          v5 = *(v7 + 160);
          v35 = *(v7 + 176);
        }
      }

      re::ecs2::AnimationEntry::~AnimationEntry((v35 + (v5 << 8) - 256));
      --*(v7 + 160);
      ++*(v7 + 168);
      re::ecs2::AnimationComponent::didModifyWithStringKey(v7, v34, "AnimationPlaybackController.isValid");
      *(v7 + 136) = 0;
      v8 = 1;
      if (v6 >= *(v7 + 160))
      {
LABEL_48:
        re::ecs2::NetworkComponent::markComponentDirty(v7, a2, a3, a4, a5);
        goto LABEL_49;
      }

      goto LABEL_4;
    }

    v10 = *(v7 + 16);
    if (*(v5 + 88) != *(v5 + 232) && v10 != 0)
    {
      do
      {
        v12 = v10;
        v10 = *(v10 + 32);
      }

      while (v10);
      v13 = *(v12 + 24);
      if (v13)
      {
        v14 = *(v13 + 56);
        if (v14)
        {
          v15 = (*(*v14 + 32))(v14, a2, a3, a4, a5);
          v16 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v15);
          if (v16)
          {
            v17 = v16;
            LOBYTE(v56[0]) = 0;
            SceneDataEntity = makeSceneDataEntity(v13, v56, 1, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
            v19 = re::ecs2::EntityComponentCollection::getOrAdd((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v19)
            {
              v20 = v19;
              v21 = *(v5 + 232);
              if (v21)
              {
                (*(*v17 + 72))(v17, v21, v19 + 32);
                v22 = *(SceneDataEntity + 27);
                if (!v22)
                {
                  v22 = re::ecs2::EntityComponentCollection::add((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                }

                re::ecs2::NetworkComponent::markDirty(v22, v20);
                *(v5 + 232) = 0;
              }

              *(v5 + 96) = 0;
              a2 = *(v5 + 88);
              if (a2)
              {
                v23 = (*(*v17 + 64))(v17, a2, v20 + 32, 0);
                v24 = *(SceneDataEntity + 27);
                if (!v24)
                {
                  v24 = re::ecs2::EntityComponentCollection::add((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                }

                re::ecs2::NetworkComponent::markDirty(v24, v20);
                if (v23)
                {
                  objc_storeWeak((v5 + 224), SceneDataEntity + 8);
                  *(v5 + 96) = v23;
                  *(v5 + 232) = *(v5 + 88);
                }
              }
            }
          }
        }
      }
    }

    ++v6;
    v9 -= 256;
  }

  while (v6 < *(v7 + 160));
  if (v8)
  {
    goto LABEL_48;
  }

LABEL_49:
  this = re::ecs2::AnimationComponent::synchronizeOwnedAnimationEntries(v7);
  v41 = *(v7 + 160);
  if (v41 != *(v7 + 112))
  {
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Owned animation entries expected to match animation entries.", "m_ownedAnimationEntries.size() == m_animationEntries.size()", "processFinishedAnimations", 754);
    _os_crash("assertion failure: (m_ownedAnimationEntries.size() == m_animationEntries.size()) Owned animation entries expected to match animation entries.");
    __break(1u);
LABEL_58:
    v47 = 0;
    memset(v56, 0, sizeof(v56));
    v43 = MEMORY[0x1E69E9C10];
    v48 = 136315906;
    v49 = "removeStableAt";
    v50 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v51 = 969;
    v52 = 2048;
    v53 = v6;
    v54 = 2048;
    v55 = v5;
    _os_log_send_and_compose_impl(v44, &v47, v56, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
  }

  if (v41)
  {
    v42 = 2;
  }

  else
  {
    v42 = 1;
  }

  *(v7 + 248) = v42;
  if (!v41)
  {

    return re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity((v7 + 144), 0);
  }

  return this;
}

uint64_t re::ecs2::AnimationComponent::stop(re::ecs2::AnimationComponent *this, unint64_t a2, float a3)
{
  v4 = *(this + 20);
  if (v4)
  {
    v6 = *(this + 22) + 128;
    v7 = v4 << 8;
    while (*v6 != a2)
    {
      v6 += 256;
      v7 -= 256;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    if (a3 <= 0.0)
    {
      re::ecs2::AnimationComponent::willModifyWithStringKey(this, a2, "AnimationPlaybackController.isStopped");
      *(v6 - 71) = 2;
      re::ecs2::AnimationComponent::didModifyWithStringKey(this, a2, "AnimationPlaybackController.isStopped");
      v8 = *v6;
      re::ecs2::AnimationComponent::willModifyWithStringKey(this, *v6, "AnimationPlaybackController.isComplete");
      re::ecs2::AnimationComponent::didModifyWithStringKey(this, v8, "AnimationPlaybackController.isComplete");
    }

    else
    {
      *(v6 + 20) = a3;
      *(v6 - 71) = 4;
    }

    *(this + 34) = 0;
  }

LABEL_10:

  return re::ecs2::Component::enqueueMarkDirty(this);
}

re::ecs2::AnimationEntry *re::ecs2::AnimationComponent::synchronizeOwnedAnimationEntries(re::ecs2::AnimationEntry *this)
{
  if ((*(this + 249) & 1) == 0)
  {
    v1 = this;
    if (*(this + 248) == 2)
    {
      v2 = *(this + 34);
      if (!v2 || *(this + 30) != v2)
      {
        this = re::DynamicArray<re::ecs2::AnimationEntry>::clear((this + 96));
        v3 = *(v1 + 18);
        if (*(v1 + 12))
        {
          v4 = (v1 + 96);
          if (v3)
          {
            this = re::DynamicArray<re::ecs2::AnimationEntry>::copy(v4, v1 + 144);
            ++*(v1 + 30);
          }

          else
          {
            this = re::DynamicArray<re::ecs2::AnimationEntry>::clear(v4);
          }
        }

        else if (v3)
        {
          v5 = *(v1 + 20);
          *(v1 + 12) = v3;
          re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(v1 + 12, v5);
          ++*(v1 + 30);
          this = re::DynamicArray<re::ecs2::AnimationEntry>::copy(v1 + 12, v1 + 144);
        }

        *(v1 + 34) = *(v1 + 30);
        if (!*(v1 + 14))
        {

          return re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(v1 + 12, 0);
        }
      }
    }
  }

  return this;
}

void re::ecs2::AnimationComponent::processDefaultTimebaseChanges(re::ecs2::AnimationComponent *this)
{
  if (*(this + 9) != *(this + 30))
  {
    v2 = *(this + 2);
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *(v2 + 32);
      }

      while (v2);
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = *(v4 + 56);
        if (v5)
        {
          v6 = (*(*v5 + 32))(v5);
          v7 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v6);
          v8 = (*(*v7 + 96))(v7, *(this + 9));
          if (v8)
          {
            v9 = v8;
            v10 = *(this + 29);
            if (v10)
            {
              CFRelease(v10);
            }

            v11 = *(this + 9);
            *(this + 29) = v9;
            *(this + 30) = v11;
          }
        }
      }
    }
  }
}

uint64_t re::ecs2::AnimationComponent::processActiveAnimations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = *MEMORY[0x1E69E9840];
  v7 = 0uLL;
  __asm { FMOV            V8.2S, #1.0 }

  v12 = 1;
  do
  {
    *(a1 + 249) = 1;
    v13 = *(a1 + 200);
    v14 = *(a1 + 112);
    if (!v13)
    {
      goto LABEL_37;
    }

    if (!v14)
    {
LABEL_33:
      v30 = 144 * v14;
      v31 = v14;
      do
      {
        v32 = (*(a1 + 216) + v30);
        re::ecs2::AnimationShadowEntry::deinit(v32);
        std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100](v32 + 6);
        re::AssetHandle::~AssetHandle((v32 + 3));
        ++v31;
        v30 += 144;
      }

      while (v31 < *(a1 + 200));
      *(a1 + 200) = v14;
      ++*(a1 + 208);
      if (!v14)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v15 = 0;
    do
    {
      v16 = *(a1 + 128) + (v15 << 8);
      v17 = *(a1 + 216);
      v18 = (v17 + 144 * v15);
      v19 = *(v16 + 128);
      if (v19 <= *v18)
      {
        if (v19 < *v18)
        {
          v81 = 0;
          *&v82[4] = v7;
          v83 = v7;
          v78 = v7;
          v79 = v7;
          v76 = v7;
          v77 = v7;
          v74 = v7;
          v75 = v7;
          BYTE8(v79) = 2;
          v80 = 0;
          *v82 = _D8;
          v14 = v13 + 1;
          v82[12] = 0;
          if (v13 + 1 <= v15)
          {
            goto LABEL_79;
          }

          if (v13 >= *(a1 + 192))
          {
            re::DynamicArray<re::ecs2::AnimationShadowEntry>::growCapacity((a1 + 184), v13 + 1, 0);
            v7 = 0uLL;
            v13 = *(a1 + 200);
            v17 = *(a1 + 216);
          }

          v23 = v17 + 144 * v13;
          if (v13 <= v15)
          {
            *(v23 + 80) = 0;
            *v23 = v7;
            *(v23 + 16) = v7;
            *(v23 + 32) = v7;
            *(v23 + 48) = 0;
            *(v23 + 88) = 2;
            *(v23 + 96) = 0;
            *(v23 + 104) = 0;
            *(v23 + 108) = _D8;
            *(v23 + 116) = 0;
            *(v23 + 120) = 0;
          }

          else
          {
            *(v23 + 80) = 0;
            *v23 = v7;
            *(v23 + 16) = v7;
            *(v23 + 32) = v7;
            *(v23 + 48) = 0;
            *(v23 + 88) = 2;
            *(v23 + 96) = 0;
            *(v23 + 104) = 0;
            *(v23 + 108) = _D8;
            *(v23 + 116) = 0;
            *(v23 + 120) = 0;
            re::ecs2::AnimationShadowEntry::operator=(v23, (v23 - 144));
            v24 = *(a1 + 216);
            v25 = *(a1 + 200);
            v26 = (v24 + 144 * v25 - 144);
            if (v26 != (v24 + 144 * v15))
            {
              v27 = 144 * v15 - 144 * v25 + 144;
              do
              {
                v28 = v26 - 18;
                re::ecs2::AnimationShadowEntry::operator=(v26, v26 - 18);
                v26 = v28;
                v27 += 144;
              }

              while (v27);
              v24 = *(a1 + 216);
            }

            v23 = v24 + 144 * v15;
          }

          re::ecs2::AnimationShadowEntry::operator=(v23, &v74);
          ++*(a1 + 200);
          ++*(a1 + 208);
          re::ecs2::AnimationShadowEntry::deinit(&v74);
          std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100](&v77);
          re::AssetHandle::~AssetHandle((&v75 + 8));
          v14 = *(a1 + 200);
          if (v14 <= v15)
          {
            goto LABEL_83;
          }

          v18 = (*(a1 + 216) + 144 * v15);
        }

        ++v15;
        v13 = *(a1 + 200);
      }

      else
      {
        if (v13 <= v15)
        {
          *v84 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v91[0] = 136315906;
          *&v91[1] = "removeStableAt";
          LOWORD(v91[3]) = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          *(&v91[3] + 2) = 969;
          HIWORD(v91[4]) = 2048;
          *&v91[5] = v15;
          LOWORD(v91[7]) = 2048;
          *(&v91[7] + 2) = v13;
          _os_log_send_and_compose_impl(v60, v84, &v74, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v91, 38, v69, v70);
          _os_crash_msg();
          __break(1u);
LABEL_79:
          v73 = 0;
          v92 = 0u;
          v93 = 0u;
          memset(v91, 0, sizeof(v91));
          v61 = MEMORY[0x1E69E9C10];
          v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v84 = 136315906;
          *&v84[4] = "insert";
          v85 = 1024;
          if (v62)
          {
            v63 = 3;
          }

          else
          {
            v63 = 2;
          }

          v86 = 887;
          v87 = 2048;
          v88 = v15;
          v89 = 2048;
          v90 = v14;
          _os_log_send_and_compose_impl(v63, &v73, v91, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v69, v70);
          _os_crash_msg();
          __break(1u);
LABEL_83:
          *v84 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v64 = MEMORY[0x1E69E9C10];
          v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v91[0] = 136315906;
          *&v91[1] = "operator[]";
          LOWORD(v91[3]) = 1024;
          if (v65)
          {
            v66 = 3;
          }

          else
          {
            v66 = 2;
          }

          *(&v91[3] + 2) = 789;
          HIWORD(v91[4]) = 2048;
          *&v91[5] = v15;
          LOWORD(v91[7]) = 2048;
          *(&v91[7] + 2) = v14;
          _os_log_send_and_compose_impl(v66, v84, &v74, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v91, 38, v69, v70);
          _os_crash_msg();
          __break(1u);
          goto LABEL_87;
        }

        if (v13 - 1 > v15 && v18 + 18 != (v17 + 144 * v13))
        {
          v20 = 144 * v13 - 144 * v15 - 144;
          do
          {
            v21 = v18 + 18;
            re::ecs2::AnimationShadowEntry::operator=(v18, v18 + 18);
            v18 = v21;
            v20 -= 144;
          }

          while (v20);
          v13 = *(a1 + 200);
          v17 = *(a1 + 216);
        }

        v22 = v17 + 144 * v13;
        re::ecs2::AnimationShadowEntry::deinit((v22 - 144));
        std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100]((v22 - 96));
        re::AssetHandle::~AssetHandle((v22 - 120));
        v13 = *(a1 + 200) - 1;
        *(a1 + 200) = v13;
        ++*(a1 + 208);
      }

      v14 = *(a1 + 112);
      _CF = v15 >= v13 || v15 >= v14;
      v7 = 0uLL;
    }

    while (!_CF);
    if (v13 > v14)
    {
      goto LABEL_33;
    }

LABEL_37:
    if (v13 >= v14)
    {
      v14 = v13;
      if (!v13)
      {
        goto LABEL_46;
      }

LABEL_45:
      v40 = *(a1 + 112);
      if (v14 == v40)
      {
        goto LABEL_46;
      }

LABEL_87:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Expected shadow entry count(%zu) to match entry count (%zu)!", "!m_shadowEntries.size() || m_shadowEntries.size() == m_animationEntries.size()", "processActiveAnimations", 880, v14, v40);
      _os_crash("assertion failure: (!m_shadowEntries.size() || m_shadowEntries.size() == m_animationEntries.size()) Expected shadow entry count(%zu) to match entry count (%zu)!", v67, v68);
      __break(1u);
    }

    v33 = v13 << 8;
    v34 = 0uLL;
    do
    {
      v35 = *(a1 + 128);
      v81 = 0;
      *&v82[4] = v34;
      v83 = v34;
      v78 = v34;
      v79 = v34;
      v76 = v34;
      v77 = v34;
      v74 = v34;
      v75 = v34;
      BYTE8(v79) = 2;
      v80 = 0;
      *v82 = _D8;
      v82[12] = 0;
      v36 = *(a1 + 200);
      v37 = 0uLL;
      if (v36 >= *(a1 + 192))
      {
        re::DynamicArray<re::ecs2::AnimationShadowEntry>::growCapacity((a1 + 184), v36 + 1, 0);
        v37 = 0uLL;
        v36 = *(a1 + 200);
      }

      v38 = *(a1 + 216) + 144 * v36;
      *(v38 + 80) = 0;
      *v38 = v37;
      *(v38 + 16) = v37;
      *(v38 + 32) = v37;
      *(v38 + 48) = 0;
      *(v38 + 88) = 2;
      *(v38 + 96) = 0;
      *(v38 + 104) = 0;
      *(v38 + 108) = _D8;
      *(v38 + 116) = 0;
      *(v38 + 120) = 0;
      re::ecs2::AnimationShadowEntry::operator=(v38, &v74);
      ++*(a1 + 200);
      ++*(a1 + 208);
      re::ecs2::AnimationShadowEntry::deinit(&v74);
      std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100](&v77);
      re::AssetHandle::~AssetHandle((&v75 + 8));
      v34 = 0uLL;
      v12 &= v39;
      ++v13;
      v33 += 256;
    }

    while (v13 < *(a1 + 112));
    v14 = *(a1 + 200);
    if (v14)
    {
      goto LABEL_45;
    }

LABEL_46:
    v41 = *(a1 + 16);
    if (v41)
    {
      v42 = *(v41 + 27);
      if (v42)
      {
        if (!*(v42 + 4))
        {
          goto LABEL_51;
        }

        if (RESyncableIsAuthoritative())
        {
          v14 = *(a1 + 200);
LABEL_51:
          if (v14)
          {
            v71 = v42;
            v72 = v41;
            LOBYTE(v43) = 0;
            v44 = 0;
            v45 = (*(a1 + 216) + 88);
            v46 = 144 * v14;
            do
            {
              if (!*v45)
              {
                v47 = v45[16] & 4;
                v48 = *(v45 - 7);
                if (!v48)
                {
                  goto LABEL_59;
                }

                v49 = atomic_load((v48 + 896));
                if (v49 != 2)
                {
                  goto LABEL_59;
                }

                v50 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
                v51 = *(v45 - 7);
                if (v51)
                {
                  v51 = v51[35];
                }

                if (v50 == v51)
                {
                  v52 = re::AssetHandle::loadedAsset<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>((v45 - 64));
                  if (v52)
                  {
                    re::AnimationSceneEntityData::markTargetEntityAsDirty(v52 + 24, v72, v47 == 0);
                  }
                }

                else
                {
LABEL_59:
                  v43 = v43 & 1 | (v47 >> 2);
                  v44 |= v47 == 0;
                }
              }

              v45 += 144;
              v46 -= 144;
            }

            while (v46);
            if ((v44 & 1) != 0 && (v53 = *(v72 + 23)) != 0)
            {
              v54 = v71;
              re::ecs2::NetworkComponent::markDirty(v71, v53);
              if ((v43 & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              v54 = v71;
              if ((v43 & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            v55 = *(v72 + 32);
            if (v55)
            {
              re::ecs2::NetworkComponent::markDirty(v54, v55);
            }
          }
        }
      }
    }

LABEL_71:
    *(a1 + 249) = 0;
    v56 = *(a1 + 136);
    re::ecs2::AnimationComponent::synchronizeOwnedAnimationEntries(a1);
    v7 = 0uLL;
  }

  while (v56 != *(a1 + 136));
  if (!*(a1 + 200))
  {
    re::DynamicArray<re::ecs2::AnimationShadowEntry>::setCapacity((a1 + 184), 0);
  }

  return v12 & 1;
}

uint64_t anonymous namespace::processAnimationState(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, OpaqueCMTimebase *a5)
{
  v114 = *MEMORY[0x1E69E9840];
  re::ecs2::AnimationEntry::parentTimebase(a1, *(a4 + 16), a5, v103);
  if (v103[0] != 1)
  {
    return 0;
  }

  v11 = *(a1 + 57);
  if (v11 == *(a2 + 88))
  {
    v12 = 0;
    goto LABEL_4;
  }

  if (v11 == 2)
  {
    re::ecs2::AnimationShadowEntry::deinit(a2);
    return 1;
  }

  v37 = *(a1 + 128);
  if (v37 != *a2)
  {
    *a2 = v37;
    *(a2 + 104) = *(a1 + 136);
  }

  v38 = a2[1];
  if (v38)
  {
    v9 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(v38 + (a2[2] >> 56 << 6) + 72, a2[2]);
    if (v9)
    {
      v12 = 0;
      v39 = *(a1 + 57);
      goto LABEL_82;
    }
  }

  if (!*(a1 + 48))
  {
    re::AssetHandle::AssetHandle(v102, a1);
    re::AssetHandle::~AssetHandle(v102);
    re::AssetHandle::operator=((a2 + 3), a1);
    if (Timeline)
    {
      goto LABEL_78;
    }

    return 0;
  }

  *v108 = &unk_1F5CFE810;
  *&v108[24] = v108;
  *&v111 = &buf[8];
  *&buf[8] = &unk_1F5CFE810;
  *buf = 0;
  v58 = a2[6];
  a2[6] = v57;
  if (v58)
  {
    std::function<void ()(re::Timeline *)>::operator()(a2[10], v58);
  }

  v59 = a2[10];
  a2[10] = 0;
  if (v59 == a2 + 7)
  {
    (*(*v59 + 32))(v59);
  }

  else if (v59)
  {
    (*(*v59 + 40))(v59);
  }

  v62 = v111;
  if (v111)
  {
    if (v111 == &buf[8])
    {
      a2[10] = (a2 + 7);
      (*(*v62 + 24))(v62, a2 + 7);
    }

    else
    {
      a2[10] = v111;
      *&v111 = 0;
    }
  }

  else
  {
    a2[10] = 0;
  }

  std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100](buf);
  std::__function::__value_func<void ()(re::Timeline *)>::~__value_func[abi:nn200100](v108);
  Timeline = a2[6];
  if (!Timeline)
  {
    return 0;
  }

LABEL_78:
  *v108 = *(a1 + 104);
  *&v108[16] = *(a1 + 120);
  a2[1] = (*(*a3 + 80))(a3, Timeline, buf, v108, *(a1 + 136), a4 + 88, *(a1 + 216), *(a4 + 80));
  a2[2] = v63;
  v10 = re::BindNode::deinit(buf);
  v64 = a2[1];
  if (v64)
  {
    v65 = *a2;
    v9 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(v64 + (a2[2] >> 56 << 6) + 72, a2[2]);
    if (v9)
    {
      *(v9 + 20) = v65;
    }
  }

  v39 = *(a1 + 57);
  v12 = 1;
  if (*(a1 + 57))
  {
LABEL_82:
    if (v39 > 2)
    {
      if (v39 != 3 && v39 != 5)
      {
LABEL_89:
        v66 = *re::ecsComponentsLogObjects(v9);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = *(a1 + 57);
          *buf = 67109120;
          *&buf[4] = v67;
          _os_log_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_DEFAULT, "Unexpected animiation playback state: %u", buf, 8u);
        }

        goto LABEL_4;
      }
    }

    else
    {
      if (!v39)
      {
        re::AnimationController::resume(a2 + 1);
        v12 = 1;
        goto LABEL_4;
      }

      if (v39 != 1)
      {
        goto LABEL_89;
      }
    }

    re::AnimationController::pause(a2 + 1);
  }

LABEL_4:
  *(a2 + 88) = *(a1 + 57);
  v13 = *(a1 + 140);
  if (*(a2 + 27) != v13)
  {
    re::AnimationController::setSpeed((a2 + 1), v13);
    *(a2 + 27) = *(a1 + 140);
  }

  v14 = *(a1 + 144);
  if (*(a2 + 28) != v14)
  {
    re::AnimationController::setBlendFactor((a2 + 1), v14, 0);
    *(a2 + 28) = *(a1 + 144);
    v12 = 1;
  }

  v15 = v104;
  if (v104 != a2[12])
  {
    re::AnimationController::setParentClockOrTimebase(a2 + 1, v104);
    a2[12] = v15;
  }

  if (*(a2 + 89) != *(a1 + 58))
  {
    re::AnimationController::setTime(a2 + 1, *(a1 + 80));
    *(a2 + 89) = *(a1 + 58);
    v12 = 1;
  }

  LODWORD(v10) = *(a1 + 148);
  if (*(a2 + 29) != *&v10)
  {
    re::AnimationController::stop((a2 + 1), v10);
    *(a2 + 29) = *(a1 + 148);
  }

  v16 = *(a2 + 120);
  if (v16 == 1 && *(a1 + 152))
  {
    if (a2[16] == *(a1 + 160) && a2[17] == *(a1 + 168))
    {
      goto LABEL_131;
    }
  }

  else if ((v16 & 1) == 0 && !*(a1 + 152))
  {
    goto LABEL_131;
  }

  if (*(a1 + 152))
  {
    re::AnimationController::timebase(a2 + 1, buf);
    if (buf[0] != 1)
    {
      goto LABEL_125;
    }

    v17 = *(a1 + 168);
    if (!v17)
    {
      goto LABEL_125;
    }

    v18 = *(a4 + 16);
    if (!v18)
    {
      goto LABEL_125;
    }

    v19 = *a2;
    v20 = *(a4 + 16);
    do
    {
      v21 = v20;
      v20 = *(v20 + 32);
    }

    while (v20);
    v22 = *(v21 + 24);
    if (!v22)
    {
      goto LABEL_125;
    }

    *buf = *(a1 + 160);
    v23 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v22 + 152, buf);
    if (!v23)
    {
      goto LABEL_125;
    }

    v24 = *(v23 + 8);
    if (!v24)
    {
      goto LABEL_125;
    }

    v25 = re::ecs2::EntityComponentCollection::get((v24 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (!v25)
    {
      goto LABEL_125;
    }

    v26 = v25;
    if ((v105 & 1) == 0)
    {
      goto LABEL_125;
    }

    v27 = *(v26 + 200);
    if (v27 > v106)
    {
      v28 = re::AnimationController::setParentController((a2 + 1), (*(v26 + 216) + 144 * v106 + 8));
      v29 = *(v26 + 160);
      v30 = *(v26 + 176);
      if (v29)
      {
        v31 = *(v26 + 176);
        v32 = *(v26 + 160);
        do
        {
          v33 = v32 >> 1;
          v34 = v31 + (v32 >> 1 << 8);
          v35 = *(v34 + 128);
          v36 = v34 + 256;
          v32 += ~(v32 >> 1);
          if (v35 < v17)
          {
            v31 = v36;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      else
      {
        v31 = *(v26 + 176);
      }

      if (v31 != v30 + (v29 << 8) && *(v31 + 128) == v17)
      {
        v17 = (v31 - v30) >> 8;
        if (v29 > v17)
        {
          v72 = *(v18 + 312);
          v73 = v30 + (v17 << 8);
          v75 = *(v73 + 184);
          v74 = *(v73 + 192);
          if (v74 >= v75)
          {
            v76 = v74 + 1;
            if (v75 < v74 + 1)
            {
              v101 = v72;
              if (*(v73 + 176))
              {
                v77 = 2 * v75;
                if (!v75)
                {
                  v77 = 8;
                }

                if (v77 <= v76)
                {
                  v78 = v74 + 1;
                }

                else
                {
                  v78 = v77;
                }

                re::DynamicArray<re::RigNodeConstraint>::setCapacity((v73 + 176), v78);
              }

              else
              {
                re::DynamicArray<re::RigNodeConstraint>::setCapacity((v73 + 176), v76);
                ++*(v73 + 200);
              }

              v72 = v101;
            }

            v74 = *(v73 + 192);
          }

          v82 = (*(v73 + 208) + 16 * v74);
          *v82 = v72;
          v82[1] = v19;
          *(v73 + 192) = v74 + 1;
          ++*(v73 + 200);
LABEL_124:
          *(v26 + 136) = 0;
          goto LABEL_125;
        }

        goto LABEL_142;
      }

LABEL_125:
      if (a2[15])
      {
        if ((*(a1 + 152) & 1) == 0)
        {
          *(a2 + 120) = 0;
          goto LABEL_131;
        }
      }

      else
      {
        if ((*(a1 + 152) & 1) == 0)
        {
          goto LABEL_131;
        }

        *(a2 + 120) = 1;
      }

      *(a2 + 8) = *(a1 + 160);
LABEL_131:
      if (v12)
      {
        re::AnimationController::updateAndApply((a2 + 1));
      }

      return 1;
    }

    v107 = 0;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    *buf = 0u;
    v83 = MEMORY[0x1E69E9C10];
    v84 = v106;
    v85 = v27;
    v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v108 = 136315906;
    *&v108[4] = "operator[]";
    *&v108[12] = 1024;
    if (v86)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    *&v108[14] = 789;
    *&v108[18] = 2048;
    *&v108[20] = v84;
    *&v108[28] = 2048;
    *&v108[30] = v85;
    _os_log_send_and_compose_impl(v87, &v107, buf, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_138:
    v105 = 0;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    *buf = 0u;
    v88 = MEMORY[0x1E69E9C10];
    v89 = v48;
    v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v108 = 136315906;
    *&v108[4] = "operator[]";
    *&v108[12] = 1024;
    if (v90)
    {
      v91 = 3;
    }

    else
    {
      v91 = 2;
    }

    *&v108[14] = 789;
    *&v108[18] = 2048;
    *&v108[20] = v18;
    *&v108[28] = 2048;
    *&v108[30] = v89;
    _os_log_send_and_compose_impl(v91, &v105, buf, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_142:
    v105 = 0;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    *buf = 0u;
    v92 = MEMORY[0x1E69E9C10];
    v93 = v29;
    v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v108 = 136315906;
    *&v108[4] = "operator[]";
    *&v108[12] = 1024;
    if (v94)
    {
      v95 = 3;
    }

    else
    {
      v95 = 2;
    }

    *&v108[14] = 789;
    *&v108[18] = 2048;
    *&v108[20] = v17;
    *&v108[28] = 2048;
    *&v108[30] = v93;
    _os_log_send_and_compose_impl(v95, &v105, buf, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
    goto LABEL_146;
  }

  if (!*(a2 + 120))
  {
    goto LABEL_125;
  }

  v40 = a2[17];
  if (!v40)
  {
    goto LABEL_125;
  }

  v41 = *(a4 + 16);
  if (!v41)
  {
    goto LABEL_125;
  }

  v17 = *a2;
  v42 = *(a4 + 16);
  do
  {
    v43 = v42;
    v42 = *(v42 + 32);
  }

  while (v42);
  v44 = *(v43 + 24);
  if (!v44)
  {
    goto LABEL_125;
  }

  *buf = a2[16];
  v45 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v44 + 152, buf);
  if (!v45)
  {
    goto LABEL_125;
  }

  v46 = *(v45 + 8);
  if (!v46)
  {
    goto LABEL_125;
  }

  v47 = re::ecs2::EntityComponentCollection::get((v46 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v47)
  {
    goto LABEL_125;
  }

  v26 = v47;
  re::AnimationController::setParentController((a2 + 1), 0);
  v48 = *(v26 + 160);
  v49 = *(v26 + 176);
  if (v48)
  {
    v50 = *(v26 + 176);
    v51 = *(v26 + 160);
    do
    {
      v52 = v51 >> 1;
      v53 = v50 + (v51 >> 1 << 8);
      v54 = *(v53 + 128);
      v55 = v53 + 256;
      v51 += ~(v51 >> 1);
      if (v54 < v40)
      {
        v50 = v55;
      }

      else
      {
        v51 = v52;
      }
    }

    while (v51);
  }

  else
  {
    v50 = *(v26 + 176);
  }

  if (v50 == v49 + (v48 << 8) || *(v50 + 128) != v40)
  {
    goto LABEL_125;
  }

  v18 = (v50 - v49) >> 8;
  if (v48 <= v18)
  {
    goto LABEL_138;
  }

  v68 = v49 + (v18 << 8);
  v69 = *(v68 + 208);
  v18 = *(v68 + 192);
  v70 = v69;
  if (v18)
  {
    v71 = 16 * v18;
    v70 = *(v68 + 208);
    while (*v70 != *(v41 + 312) || *(v70 + 1) != v17)
    {
      v70 += 16;
      v71 -= 16;
      if (!v71)
      {
        goto LABEL_124;
      }
    }
  }

  v79 = &v69[16 * v18];
  if (v70 == v79)
  {
    goto LABEL_124;
  }

  v80 = v70 - v69;
  v17 = v80 >> 4;
  if (v18 > v80 >> 4)
  {
    v81 = v18 - 1;
    if (v18 - 1 > v17)
    {
      *&v69[v80] = *(v79 - 1);
      v81 = *(v68 + 192) - 1;
    }

    *(v68 + 192) = v81;
    ++*(v68 + 200);
    goto LABEL_124;
  }

LABEL_146:
  v105 = 0;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  *buf = 0u;
  v96 = MEMORY[0x1E69E9C10];
  v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v108 = 136315906;
  *&v108[4] = "removeAt";
  *&v108[12] = 1024;
  if (v97)
  {
    v98 = 3;
  }

  else
  {
    v98 = 2;
  }

  *&v108[14] = 931;
  *&v108[18] = 2048;
  *&v108[20] = v17;
  *&v108[28] = 2048;
  *&v108[30] = v18;
  _os_log_send_and_compose_impl(v98, &v105, buf, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v99, v100);
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void re::ecs2::AnimationComponent::resume(re::ecs2::AnimationComponent *this, re::ecs2::AnimationEntry *a2, _BOOL4 a3)
{
  v6 = re::ecs2::AnimationComponent::parentSimulationTimer(this);
  if (!v6)
  {
    return;
  }

  v7 = (*(*v6 + 48))(v6);
  v8 = *(a2 + 57);
  if (a3)
  {
    if (v8 != 5 && v8 != 3)
    {
      return;
    }

    v10 = *(a2 + 16);
    re::ecs2::AnimationComponent::willModifyWithStringKey(this, v10, "AnimationPlaybackController.isPlaying");
    *(a2 + 57) = 0;
    re::ecs2::AnimationComponent::didModifyWithStringKey(this, v10, "AnimationPlaybackController.isPlaying");
    v11 = *(a2 + 16);
    re::ecs2::AnimationComponent::willModifyWithStringKey(this, v11, "AnimationPlaybackController.isPaused");
    re::ecs2::AnimationComponent::didModifyWithStringKey(this, v11, "AnimationPlaybackController.isPaused");
    re::ecs2::AnimationComponent::animationEntryParentTime(v30, this, v7, a2);
    if (LOBYTE(v30[0]) == 1)
    {
      v7 = v30[1];
    }

    else
    {
      v13 = *re::ecsComponentsLogObjects(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Animation activated while desynchronized, possible inconsistent state.", v29, 2u);
      }
    }
  }

  else
  {
    if (v8 != 1)
    {
      return;
    }

    if (*(*(this + 2) + 304))
    {
      v14 = *(a2 + 16);
      re::ecs2::AnimationComponent::willModifyWithStringKey(this, v14, "AnimationPlaybackController.isPlaying");
      *(a2 + 57) = 0;
      re::ecs2::AnimationComponent::didModifyWithStringKey(this, v14, "AnimationPlaybackController.isPlaying");
      v15 = *(a2 + 16);
      re::ecs2::AnimationComponent::willModifyWithStringKey(this, v15, "AnimationPlaybackController.isPaused");
      re::ecs2::AnimationComponent::didModifyWithStringKey(this, v15, "AnimationPlaybackController.isPaused");
    }

    else
    {
      *(a2 + 57) = 3;
    }
  }

  *(a2 + 9) = v7;
  v16 = *(a2 + 24);
  if (v16)
  {
    v17 = *(a2 + 26);
    v18 = v17 + 16 * v16;
    do
    {
      v19 = *(this + 2);
      do
      {
        v20 = v19;
        v19 = *(v19 + 32);
      }

      while (v19);
      v21 = *(v20 + 24);
      v30[0] = *v17;
      v22 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v21 + 152, v30);
      if (v22)
      {
        v23 = *(v22 + 8);
        if (v23)
        {
          v24 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v24)
          {
            v25 = v24;
            v26 = *(v24 + 20);
            if (v26)
            {
              v27 = *(v24 + 22);
              v28 = v26 << 8;
              while (*(v27 + 16) != *(v17 + 8))
              {
                v27 = (v27 + 256);
                v28 -= 256;
                if (!v28)
                {
                  goto LABEL_29;
                }
              }

              re::ecs2::AnimationComponent::resume(v24, v27, a3);
            }

LABEL_29:
            re::ecs2::Component::enqueueMarkDirty(v25);
          }
        }
      }

      v17 += 16;
    }

    while (v17 != v18);
  }

  *(this + 34) = 0;
}

void re::ecs2::AnimationComponent::pauseAnimationsForDeactivation(uint64_t this)
{
  if (*(this + 248) == 2)
  {
    v2 = *(this + 160);
    if (v2)
    {
      v3 = *(this + 176);
      v4 = v2 << 8;
      do
      {
        re::ecs2::AnimationComponent::pause(this, v3, 1);
        v3 = (v3 + 256);
        v4 -= 256;
      }

      while (v4);
    }

    *(this + 136) = 0;
  }
}

void re::ecs2::AnimationComponent::pause(re::ecs2::AnimationComponent *this, re::ecs2::AnimationEntry *a2, _BOOL4 a3)
{
  if (*(a2 + 57))
  {
    return;
  }

  v37 = v6;
  v38 = v5;
  v39 = v3;
  v40 = v4;
  v10 = re::ecs2::AnimationComponent::parentSimulationTimer(this);
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = *(a2 + 16);
  re::ecs2::AnimationComponent::willModifyWithStringKey(this, v12, "AnimationPlaybackController.isPaused");
  if (a3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  *(a2 + 57) = v13;
  re::ecs2::AnimationComponent::didModifyWithStringKey(this, v12, "AnimationPlaybackController.isPaused");
  v14 = *(a2 + 16);
  re::ecs2::AnimationComponent::willModifyWithStringKey(this, v14, "AnimationPlaybackController.isPlaying");
  re::ecs2::AnimationComponent::didModifyWithStringKey(this, v14, "AnimationPlaybackController.isPlaying");
  v15 = (*(*v11 + 48))(v11);
  v16 = *(a2 + 9);
  re::ecs2::AnimationComponent::animationEntryParentTime(&v34, this, v15, a2);
  if (LOBYTE(v34) == 1)
  {
    v18 = *(a2 + 10) + (v35 - v16) * *(a2 + 35);
    *(a2 + 9) = v35;
    *(a2 + 10) = v18;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = *re::ecsComponentsLogObjects(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Animation deactivated while desynchronized, possible inconsistent state.", buf, 2u);
    }

    v20 = *(a2 + 10) + (v15 - v16) * *(a2 + 35);
    *(a2 + 9) = v15;
    *(a2 + 10) = v20;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  ++*(a2 + 58);
LABEL_13:
  v21 = *(a2 + 24);
  if (v21)
  {
    v22 = *(a2 + 26);
    v23 = &v22[2 * v21];
    do
    {
      v24 = *(this + 2);
      do
      {
        v25 = v24;
        v24 = *(v24 + 32);
      }

      while (v24);
      v26 = *(v25 + 24);
      *buf = *v22;
      v27 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v26 + 152, buf);
      if (v27)
      {
        v28 = *(v27 + 8);
        if (v28)
        {
          v29 = re::ecs2::EntityComponentCollection::get((v28 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v29)
          {
            v30 = v29;
            v31 = *(v29 + 20);
            if (v31)
            {
              v32 = *(v29 + 22);
              v33 = v31 << 8;
              while (*(v32 + 16) != v22[1])
              {
                v32 = (v32 + 256);
                v33 -= 256;
                if (!v33)
                {
                  goto LABEL_26;
                }
              }

              re::ecs2::AnimationComponent::pause(v29, v32, a3);
            }

LABEL_26:
            re::ecs2::Component::enqueueMarkDirty(v30);
          }
        }
      }

      v22 += 2;
    }

    while (v22 != v23);
  }

  *(this + 34) = 0;
}

void re::ecs2::AnimationComponent::detachAnimations(re::ecs2::AnimationComponent *this)
{
  if (*(this + 248) == 2)
  {
    re::ecs2::AnimationComponent::pauseAnimationsForDeactivation(this);
    v3 = *(this + 20);
    if (v3)
    {
      v4 = v3 << 8;
      v5 = (*(this + 22) + 57);
      do
      {
        if (*v5 == 3)
        {
          *v5 = 5;
        }

        v5 += 256;
        v4 -= 256;
      }

      while (v4);
    }

    re::DynamicArray<re::ecs2::AnimationShadowEntry>::clear(this + 184);
  }
}

unint64_t re::ecs2::AnimationComponent::play(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v10 = *(a1 + 16);
  if (!v10 || (v11 = *(v10 + 216)) == 0 || !*(v11 + 32) || (IsAuthoritative = RESyncableIsAuthoritative(), (IsAuthoritative & 1) != 0))
  {
    re::ecs2::AnimationEntry::AnimationEntry(v30);
    v13 = re::ecs2::AnimationComponent::parentSimulationTimer(a1);
    if (v13 && (*(v10 + 304) & 1) != 0)
    {
      v34 = (*(*v13 + 48))(v13);
      v14 = v38;
      re::ecs2::AnimationComponent::willModifyWithStringKey(a1, v38, "AnimationPlaybackController.isPlaying");
      v33 = 0;
      re::ecs2::AnimationComponent::didModifyWithStringKey(a1, v14, "AnimationPlaybackController.isPlaying");
    }

    else
    {
      v34 = 0.0;
      v33 = 3;
    }

    *(a1 + 248) = 2;
    v15 = *(a1 + 224) + 1;
    do
    {
      v16 = v15;
      v15 = 1;
    }

    while (!v16);
    *(a1 + 224) = v16;
    v36 = *a3;
    v37 = *(a3 + 2);
    v38 = v16;
    v35 = 0;
    v32 = v5;
    v39 = v6;
    re::AssetHandle::operator=(v31, a2);
    v17 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
    v18 = a2[1];
    if (v18)
    {
      v19 = *(v18 + 280);
    }

    else
    {
      v19 = 0;
    }

    if (v17 == v19)
    {
      re::AssetHandle::loadNow(v18, 0);
      v22 = re::AssetHandle::loadedAsset<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(a2);
      if (!v22)
      {
        goto LABEL_21;
      }

      v23 = v22;
      re::AnimationSceneEntityData::prepareEntityHierarchyForAnimationScene((v22 + 24), *(a1 + 16), ((v6 >> 1) & 1));
      re::AnimationScene::debugLogAnimationSceneData(v23);
    }

    else if (*(v18 + 328) == 1 && *(*(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a2) + 8) + 8) == 17)
    {
      v20 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a2);
      v21 = *(v20 + 1);
LABEL_21:
      re::DynamicArray<re::ecs2::AnimationEntry>::add(a1 + 144, v30);
      *(a1 + 136) = 0;
      if ((v6 & 2) != 0)
      {
        re::ecs2::NetworkComponent::markComponentDirty(a1, v24, v25, v26, v27);
      }

      re::ecs2::AnimationComponent::synchronizeOwnedAnimationEntries(a1);
      re::ecs2::AnimationEntry::~AnimationEntry(v30);
      return v16;
    }

    re::AssetHandle::operator=(v30, a2);
    goto LABEL_21;
  }

  v29 = *re::ecsComponentsLogObjects(IsAuthoritative);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Cannot play animation on entity, current process is non-authoritative.", v30, 2u);
  }

  return 0;
}

__int128 *re::DynamicArray<re::ecs2::AnimationEntry>::add(uint64_t a1, __int128 *a2)
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

        re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::ecs2::AnimationEntry::AnimationEntry(*(a1 + 32) + (v5 << 8), a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::ecs2::AnimationComponent::setSwiftObject(re::ecs2::AnimationComponent *this, unint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(this + 14);
  v5 = *(this + 16);
  if (v4)
  {
    v6 = *(this + 16);
    v7 = *(this + 14);
    do
    {
      v8 = v7 >> 1;
      v9 = v6 + (v7 >> 1 << 8);
      v10 = *(v9 + 128);
      v11 = v9 + 256;
      v7 += ~(v7 >> 1);
      if (v10 < a2)
      {
        v6 = v11;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  else
  {
    v6 = *(this + 16);
  }

  if (v6 == v5 + (v4 << 8) || *(v6 + 128) != a2)
  {
    v20 = *re::ecsComponentsLogObjects(this);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Could not add observation on AnimationPlaybackController instance. No entry found with the given token: %llu", buf, 0xCu);
    }
  }

  else
  {
    v12 = (v6 - v5) >> 8;
    if (v4 <= v12)
    {
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      *buf = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v12;
      v34 = 2048;
      v35 = v4;
      _os_log_send_and_compose_impl(v22, &v27, buf, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
      goto LABEL_29;
    }

    *(v5 + (v12 << 8) + 216) = a3;
    v4 = *(this + 20);
    if (v4)
    {
      v13 = *(this + 22);
      v14 = v13;
      v15 = *(this + 20);
      do
      {
        v16 = v15 >> 1;
        v17 = v14 + (v15 >> 1 << 8);
        v18 = *(v17 + 128);
        v19 = v17 + 256;
        v15 += ~(v15 >> 1);
        if (v18 < a2)
        {
          v14 = v19;
        }

        else
        {
          v15 = v16;
        }
      }

      while (v15);
      if (v14 != v13 + (v4 << 8) && *(v14 + 128) == a2)
      {
        if (v4 > v12)
        {
          *(v13 + (v12 << 8) + 216) = a3;
          return;
        }

LABEL_29:
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *buf = 0u;
        v23 = MEMORY[0x1E69E9C10];
        v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        if (v24)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v31 = 789;
        v32 = 2048;
        v33 = v12;
        v34 = 2048;
        v35 = v4;
        _os_log_send_and_compose_impl(v25, &v27, buf, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
        _os_crash_msg();
        __break(1u);
      }
    }
  }
}

uint64_t re::ecs2::AnimationComponent::resetObservation(uint64_t this, unint64_t a2, void *a3)
{
  v3 = this;
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(this + 112);
  v5 = *(this + 128);
  if (v4)
  {
    v6 = *(this + 128);
    v7 = *(this + 112);
    do
    {
      v8 = v7 >> 1;
      v9 = v6 + (v7 >> 1 << 8);
      v10 = *(v9 + 128);
      v11 = v9 + 256;
      v7 += ~(v7 >> 1);
      if (v10 < a2)
      {
        v6 = v11;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  else
  {
    v6 = *(this + 128);
  }

  if (v6 != v5 + (v4 << 8) && *(v6 + 128) == a2)
  {
    v12 = (v6 - v5) >> 8;
    if (v4 <= v12)
    {
      v38 = 0;
      v53 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v41 = 136315906;
      v42 = "operator[]";
      v43 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v44 = 789;
      v45 = 2048;
      v46 = v12;
      v47 = 2048;
      v48 = v4;
      _os_log_send_and_compose_impl(v29, &v38, &v49, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v37);
      _os_crash_msg();
      __break(1u);
      goto LABEL_34;
    }

    v13 = v5 + (v12 << 8);
    v15 = *(v13 + 216);
    v14 = (v13 + 216);
    if (v15 == a3)
    {
      *v14 = 0;
      v4 = *(this + 160);
      v16 = *(this + 176);
      if (v4)
      {
        v17 = *(this + 176);
        v18 = *(this + 160);
        do
        {
          v19 = v18 >> 1;
          v20 = v17 + (v18 >> 1 << 8);
          v21 = *(v20 + 128);
          v22 = v20 + 256;
          v18 += ~(v18 >> 1);
          if (v21 < a2)
          {
            v17 = v22;
          }

          else
          {
            v18 = v19;
          }
        }

        while (v18);
      }

      else
      {
        v17 = *(this + 176);
      }

      if (v17 != v16 + (v4 << 8) && *(v17 + 128) == a2)
      {
        v12 = (v17 - v16) >> 8;
        if (v4 > v12)
        {
          *(v16 + (v12 << 8) + 216) = 0;
          if (v38 != 1)
          {
            return this;
          }

          v4 = v39;
          v23 = *(v3 + 200);
          if (v23 > v39)
          {
            v24 = *(v3 + 216) + 144 * v39;
            v27 = *(v24 + 8);
            v25 = v24 + 8;
            v26 = v27;
            if (v27)
            {
              this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(v26 + (*(v25 + 8) >> 56 << 6) + 72, *(v25 + 8));
              if (this)
              {
                *(this + 256) = 0;
                *(this + 264) = 0;
              }
            }

            return this;
          }

LABEL_38:
          v40 = 0;
          v53 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v33 = MEMORY[0x1E69E9C10];
          v34 = v23;
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v41 = 136315906;
          v42 = "operator[]";
          v43 = 1024;
          if (v35)
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          v44 = 789;
          v45 = 2048;
          v46 = v4;
          v47 = 2048;
          v48 = v34;
          _os_log_send_and_compose_impl(v36, &v40, &v49, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v37, v38);
          _os_crash_msg();
          __break(1u);
        }

LABEL_34:
        v38 = 0;
        v53 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v41 = 136315906;
        v42 = "operator[]";
        v43 = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v44 = 789;
        v45 = 2048;
        v46 = v12;
        v47 = 2048;
        v48 = v4;
        _os_log_send_and_compose_impl(v32, &v38, &v49, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v37);
        _os_crash_msg();
        __break(1u);
        goto LABEL_38;
      }
    }
  }

  return this;
}

uint64_t re::ecs2::AnimationComponent::willModifyWithStringKey(uint64_t this, unint64_t a2, char *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = 144;
  if (!*(this + 160))
  {
    v3 = 96;
  }

  v4 = this + v3;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = v8 >> 1;
      v10 = v7 + (v8 >> 1 << 8);
      v11 = *(v10 + 128);
      v12 = v10 + 256;
      v8 += ~(v8 >> 1);
      if (v11 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
  }

  else
  {
    v7 = v6;
  }

  if (v7 != v6 + (v5 << 8) && *(v7 + 128) == a2)
  {
    v13 = (v7 - v6) >> 8;
    if (v5 <= v13)
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

      v25 = 797;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v5;
      _os_log_send_and_compose_impl(v19, &v21, v30, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
    }

    v14 = v6 + (v13 << 8);
    v16 = *(v14 + 216);
    v15 = v14 + 216;
    if (v16)
    {
      v17 = *(this + 80);
      this += 80;
      if (v17)
      {

        return realitykit_willSetWithString(this, v15, a3);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::AnimationComponent::didModifyWithStringKey(uint64_t this, unint64_t a2, char *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = 144;
  if (!*(this + 160))
  {
    v3 = 96;
  }

  v4 = this + v3;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = v8 >> 1;
      v10 = v7 + (v8 >> 1 << 8);
      v11 = *(v10 + 128);
      v12 = v10 + 256;
      v8 += ~(v8 >> 1);
      if (v11 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
  }

  else
  {
    v7 = v6;
  }

  if (v7 != v6 + (v5 << 8) && *(v7 + 128) == a2)
  {
    v13 = (v7 - v6) >> 8;
    if (v5 <= v13)
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

      v25 = 797;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v5;
      _os_log_send_and_compose_impl(v19, &v21, v30, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
    }

    v14 = v6 + (v13 << 8);
    v16 = *(v14 + 216);
    v15 = v14 + 216;
    if (v16)
    {
      v17 = *(this + 80);
      this += 80;
      if (v17)
      {

        return realitykit_didSetWithString(this, v15, a3);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::AnimationComponent::animationEntry(re::ecs2::AnimationComponent *this, unint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = 144;
  if (!*(this + 20))
  {
    v2 = 96;
  }

  v3 = this + v2;
  v4 = *(v3 + 2);
  v5 = *(v3 + 4);
  if (v4)
  {
    v6 = v5;
    v7 = v4;
    do
    {
      v8 = v7 >> 1;
      v9 = v6 + (v7 >> 1 << 8);
      v10 = *(v9 + 128);
      v11 = v9 + 256;
      v7 += ~(v7 >> 1);
      if (v10 < a2)
      {
        v6 = v11;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  else
  {
    v6 = v5;
  }

  if (v6 == v5 + (v4 << 8) || *(v6 + 128) != a2)
  {
    return 0;
  }

  v12 = v6 - v5;
  if (v4 <= v12 >> 8)
  {
    v14 = v12 >> 8;
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v15 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 797;
    v23 = 2048;
    v24 = v14;
    v25 = 2048;
    v26 = v4;
    _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  return v5 + v12;
}

re::ecs2::AnimationComponentEntry *re::ecs2::AnimationComponent::stopAll(re::ecs2::AnimationComponent *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = v2 << 8;
    v4 = (*(this + 22) + 128);
    do
    {
      v5 = *v4;
      re::ecs2::AnimationComponent::willModifyWithStringKey(this, *v4, "AnimationPlaybackController.isStopped");
      *(v4 - 71) = 2;
      re::ecs2::AnimationComponent::didModifyWithStringKey(this, v5, "AnimationPlaybackController.isStopped");
      v6 = *v4;
      re::ecs2::AnimationComponent::willModifyWithStringKey(this, *v4, "AnimationPlaybackController.isComplete");
      re::ecs2::AnimationComponent::didModifyWithStringKey(this, v6, "AnimationPlaybackController.isComplete");
      *(this + 34) = 0;
      v4 += 32;
      v3 -= 256;
    }

    while (v3);
  }

  v7 = *(this + 6);
  if (v7)
  {
    v8 = 72 * v7;
    v9 = (*(this + 8) + 56);
    do
    {
      re::AnimationController::stop(v9, 0.0);
      v9 = (v9 + 72);
      v8 -= 72;
    }

    while (v8);
  }

  return re::DynamicArray<re::ecs2::AnimationComponentEntry>::clear((this + 32));
}

void re::ecs2::AnimationComponent::animationDuration(uint64_t this@<X0>, unint64_t a2@<X1>, _anonymous_namespace_ *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = 144;
  if (!*(this + 160))
  {
    v3 = 96;
  }

  v4 = this + v3;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = v8 >> 1;
      v10 = v7 + (v8 >> 1 << 8);
      v11 = *(v10 + 128);
      v12 = v10 + 256;
      v8 += ~(v8 >> 1);
      if (v11 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
  }

  else
  {
    v7 = v6;
  }

  if (v7 == v6 + (v5 << 8) || *(v7 + 128) != a2)
  {
    *a3 = 0;
  }

  else
  {
    v13 = v7 - v6;
    if (v5 <= v13 >> 8)
    {
      v14 = v13 >> 8;
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v15 = MEMORY[0x1E69E9C10];
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v22 = 797;
      v23 = 2048;
      v24 = v14;
      v25 = 2048;
      v26 = v5;
      _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }
  }
}

void anonymous namespace::getTimelineDuration(_anonymous_namespace_ *this, const re::ecs2::AnimationEntry *a2)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    *this = 1;
    v4 = *(v3 + 80);
  }

  else
  {
    re::AssetHandle::AssetHandle(v6, a2);
    re::AssetHandle::~AssetHandle(v6);
    if (!Timeline)
    {
      *this = 0;
      return;
    }

    (*(*Timeline + 40))(Timeline);
    *this = 1;
  }

  *(this + 1) = v4;
}

void re::ecs2::AnimationComponent::fadeBlendFactor(re::ecs2::AnimationComponent *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  if (v14)
  {
    v5 = v15;
    v6 = *(this + 25);
    if (v6 <= v15)
    {
      v16 = 0;
      memset(v25, 0, sizeof(v25));
      v10 = MEMORY[0x1E69E9C10];
      v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v20 = 797;
      v21 = 2048;
      v22 = v5;
      v23 = 2048;
      v24 = v6;
      _os_log_send_and_compose_impl(v12, &v16, v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v13, v14);
      _os_crash_msg();
      __break(1u);
    }

    v7 = *(this + 27) + 144 * v15;
    v8 = re::AnimationController::timeline((v7 + 8));
    v9 = re::AnimationController::blendFactor((v7 + 8), v8);
    *a3 = 1;
    *(a3 + 4) = v9;
  }

  else
  {
    *a3 = 0;
  }
}

void re::ecs2::AnimationComponent::animationPlaybackTime(re::ecs2::AnimationComponent *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v6 = 144;
  if (!*(this + 20))
  {
    v6 = 96;
  }

  v7 = this + v6;
  v8 = *(v7 + 2);
  v9 = *(v7 + 4);
  if (v8)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      v12 = v11 >> 1;
      v13 = v10 + (v11 >> 1 << 8);
      v14 = *(v13 + 128);
      v15 = v13 + 256;
      v11 += ~(v11 >> 1);
      if (v14 < a2)
      {
        v10 = v15;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
  }

  else
  {
    v10 = v9;
  }

  if (v10 == v9 + (v8 << 8) || *(v10 + 128) != a2)
  {
    goto LABEL_33;
  }

  v16 = v10 - v9;
  if (v8 <= v16 >> 8)
  {
    v26 = v16 >> 8;
    v34 = 0;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v37 = 136315906;
    *v38 = "operator[]";
    *&v38[8] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    *&v38[10] = 797;
    v39 = 2048;
    v40 = v26;
    v41 = 2048;
    v42 = v8;
    _os_log_send_and_compose_impl(v28, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  v17 = v9 + v16;
  if (*(v9 + v16 + 57) == 2 || (v18 = *(v17 + 64), v18 != (re::ecs2::AnimationComponent::currentFrameCount(*(this + 2)) & 0xFFFFFFFFFFFFFFFLL)))
  {
    if (v34 != 1)
    {
      goto LABEL_21;
    }

    v3 = v35;
    v20 = *(this + 25);
    if (v20 > v35)
    {
      v21 = *(this + 27) + 144 * v35;
      if (*(v21 + 89) == *(v17 + 58))
      {
        re::AnimationController::time((v21 + 8), a3);
        return;
      }

LABEL_21:
      if ((v43 & 1) == 0)
      {
        goto LABEL_33;
      }

      v22 = *(v17 + 57);
      if (v22 > 2)
      {
        if (v22 != 5 && v22 != 3)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!*(v17 + 57))
        {
          v24 = re::ecs2::AnimationComponent::parentSimulationTimer(this);
          if (!v24)
          {
            goto LABEL_33;
          }

          v25 = (*(*v24 + 48))(v24);
          re::ecs2::AnimationComponent::animationEntryParentTime(&v37, this, v25, v17);
          if ((v37 & 1) == 0)
          {
            goto LABEL_33;
          }

          v19 = *(v17 + 80) + (*&v38[4] - *(v17 + 72)) * *(v17 + 140);
          goto LABEL_32;
        }

        if (v22 != 1)
        {
          goto LABEL_33;
        }
      }

      v19 = *(v17 + 80);
LABEL_32:
      if (v19 <= *(&v43 + 1))
      {
        *a3 = 1;
        goto LABEL_35;
      }

LABEL_33:
      *a3 = 0;
      return;
    }

LABEL_43:
    v36 = 0;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = v20;
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    *v38 = "operator[]";
    *&v38[8] = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *&v38[10] = 797;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    v42 = v30;
    _os_log_send_and_compose_impl(v32, &v36, &v43, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
  }

  *a3 = 1;
  v19 = *(v17 + 80);
LABEL_35:
  *(a3 + 8) = v19;
}

unint64_t re::ecs2::AnimationComponent::currentFrameCount(re::ecs2::AnimationComponent *this)
{
  if (!this)
  {
    return 0xFFFFFFFFFFFFFFFLL;
  }

  do
  {
    v1 = this;
    this = *(this + 4);
  }

  while (this);
  v2 = *(v1 + 3);
  if (v2 && (v3 = *(v2 + 56)) != 0 && (v4 = (*(*v3 + 32))(v3), (v5 = re::ServiceLocator::serviceOrNull<re::FrameManager>(v4)) != 0))
  {
    return *(v5 + 3) & 0xFFFFFFFFFFFFFFFLL | (*(v5 + 2) << 60);
  }

  else
  {
    return 0xFFFFFFFFFFFFFFFLL;
  }
}

void re::ecs2::AnimationComponent::setAnimationPlaybackTime(re::ecs2::AnimationComponent *this, unint64_t a2, double a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(this + 20);
  v7 = *(this + 22);
  if (v6)
  {
    v8 = *(this + 22);
    v9 = *(this + 20);
    do
    {
      v10 = v9 >> 1;
      v11 = v8 + (v9 >> 1 << 8);
      v12 = *(v11 + 128);
      v13 = v11 + 256;
      v9 += ~(v9 >> 1);
      if (v12 < a2)
      {
        v8 = v13;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
  }

  else
  {
    v8 = *(this + 22);
  }

  if (v8 == v7 + (v6 << 8) || *(v8 + 128) != a2)
  {
    v19 = *re::ecsComponentsLogObjects(this);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Cannot set playback time for invalid animation token: %llu", buf, 0xCu);
    }
  }

  else
  {
    v14 = v8 - v7;
    if (v6 <= v14 >> 8)
    {
      v21 = v14 >> 8;
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      *buf = 0u;
      v22 = MEMORY[0x1E69E9C10];
      *v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v21;
      v32 = 2048;
      v33 = v6;
      _os_log_send_and_compose_impl(v23, &v25, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v26, 38, v24);
      _os_crash_msg();
      __break(1u);
    }

    v15 = v7 + v14;
    v16 = re::ecs2::AnimationComponent::parentSimulationTimer(this);
    if (v16)
    {
      v17 = (*(*v16 + 48))(v16);
      re::ecs2::AnimationComponent::animationEntryParentTime(buf, this, v17, v15);
      if (buf[0] == 1)
      {
        v17 = *&buf[8];
      }

      else
      {
        v20 = *re::ecsComponentsLogObjects(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Animation setting playback time while desynchronized, possible inconsistent state.", v26, 2u);
        }
      }

      *(v15 + 72) = v17;
    }

    *(v15 + 80) = a3;
    *(this + 34) = 0;
    ++*(v15 + 58);
    *(v15 + 64) = re::ecs2::AnimationComponent::currentFrameCount(*(this + 2)) & 0xFFFFFFFFFFFFFFFLL;
  }
}

uint64_t re::ecs2::AnimationComponent::animationPlaybackSpeed@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = 144;
  if (!*(this + 160))
  {
    v3 = 96;
  }

  v4 = this + v3;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = v8 >> 1;
      v10 = v7 + (v8 >> 1 << 8);
      v11 = *(v10 + 128);
      v12 = v10 + 256;
      v8 += ~(v8 >> 1);
      if (v11 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
  }

  else
  {
    v7 = v6;
  }

  if (v7 == v6 + (v5 << 8) || *(v7 + 128) != a2)
  {
    *a3 = 0;
  }

  else
  {
    v13 = (v7 - v6) >> 8;
    if (v5 <= v13)
    {
      v17 = 0;
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

      v21 = 797;
      v22 = 2048;
      v23 = v13;
      v24 = 2048;
      v25 = v5;
      _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
      _os_crash_msg();
      __break(1u);
    }

    *a3 = 1;
    *(a3 + 4) = *(v6 + (v13 << 8) + 140);
  }

  return this;
}

uint64_t re::ecs2::AnimationComponent::setAnimationPlaybackSpeed(re::ecs2::AnimationComponent *this, unint64_t a2, float a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = *(this + 20);
  v7 = *(this + 22);
  v8 = v7 + (v6 << 8);
  if (v6)
  {
    v9 = *(this + 22);
    do
    {
      v10 = v6 >> 1;
      v11 = v9 + (v6 >> 1 << 8);
      v12 = *(v11 + 128);
      v13 = v11 + 256;
      v6 += ~(v6 >> 1);
      if (v12 < a2)
      {
        v9 = v13;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v6);
  }

  else
  {
    v9 = *(this + 22);
  }

  if (v9 == v8 || *(v9 + 128) != a2)
  {
    v20 = *re::ecsComponentsLogObjects(this);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v21)
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Cannot set playback speed for invalid animation token: %llu", buf, 0xCu);
      return 0;
    }
  }

  else
  {
    v14 = v9 - v7;
    re::ecs2::AnimationComponent::animationPlaybackTime(this, a2, v29);
    v15 = *(this + 20);
    if (v15 <= v14 >> 8)
    {
      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      *buf = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v31 = 136315906;
      v32 = "operator[]";
      v33 = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v34 = 789;
      v35 = 2048;
      v36 = v14 >> 8;
      v37 = 2048;
      v38 = v15;
      _os_log_send_and_compose_impl(v27, &v30, buf, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v28, v29[0]);
      _os_crash_msg();
      __break(1u);
    }

    v16 = *(this + 22) + v14;
    *(v16 + 140) = a3;
    *(this + 34) = 0;
    v17 = re::ecs2::AnimationComponent::parentSimulationTimer(this);
    if (v17)
    {
      v18 = (*(*v17 + 48))(v17);
      re::ecs2::AnimationComponent::animationEntryParentTime(buf, this, v18, v16);
      if (buf[0] == 1)
      {
        v18 = *&buf[8];
      }

      else
      {
        v23 = *re::ecsComponentsLogObjects(v19);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 0;
          _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Animation setting playback speed while desynchronized, possible inconsistent state.", v31, 2u);
        }
      }

      *(v16 + 72) = v18;
    }

    if (LOBYTE(v29[0]) == 1)
    {
      v24 = *&v29[1];
    }

    else
    {
      re::ecs2::AnimationComponent::animationDuration(this, a2, buf);
      v24 = *&buf[8];
      if (!buf[0])
      {
        v24 = 0.0;
      }
    }

    *(v16 + 80) = v24;
    return 1;
  }

  return result;
}

uint64_t re::ecs2::AnimationComponent::animationBlendFactor@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = 144;
  if (!*(this + 160))
  {
    v3 = 96;
  }

  v4 = this + v3;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = v8 >> 1;
      v10 = v7 + (v8 >> 1 << 8);
      v11 = *(v10 + 128);
      v12 = v10 + 256;
      v8 += ~(v8 >> 1);
      if (v11 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
  }

  else
  {
    v7 = v6;
  }

  if (v7 == v6 + (v5 << 8) || *(v7 + 128) != a2)
  {
    *a3 = 0;
  }

  else
  {
    v13 = (v7 - v6) >> 8;
    if (v5 <= v13)
    {
      v17 = 0;
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

      v21 = 797;
      v22 = 2048;
      v23 = v13;
      v24 = 2048;
      v25 = v5;
      _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
      _os_crash_msg();
      __break(1u);
    }

    *a3 = 1;
    *(a3 + 4) = *(v6 + (v13 << 8) + 144);
  }

  return this;
}

uint64_t re::ecs2::AnimationComponent::setAnimationBlendFactor(re::ecs2::AnimationComponent *this, unint64_t a2, float a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(this + 20);
  v5 = *(this + 22);
  if (v4)
  {
    v6 = *(this + 22);
    v7 = *(this + 20);
    do
    {
      v8 = v7 >> 1;
      v9 = v6 + (v7 >> 1 << 8);
      v10 = *(v9 + 128);
      v11 = v9 + 256;
      v7 += ~(v7 >> 1);
      if (v10 < a2)
      {
        v6 = v11;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  else
  {
    v6 = *(this + 22);
  }

  if (v6 == v5 + (v4 << 8) || *(v6 + 128) != a2)
  {
    v14 = *re::ecsComponentsLogObjects(this);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v15)
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Cannot set blend factor for invalid animation token: %llu", buf, 0xCu);
      return 0;
    }
  }

  else
  {
    v12 = (v6 - v5) >> 8;
    if (v4 <= v12)
    {
      v19 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *buf = 0u;
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

      v23 = 789;
      v24 = 2048;
      v25 = v12;
      v26 = 2048;
      v27 = v4;
      _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
      _os_crash_msg();
      __break(1u);
    }

    *(v5 + (v12 << 8) + 144) = a3;
    *(this + 34) = 0;
    return 1;
  }

  return result;
}

void re::ecs2::AnimationComponent::animationParentTimebase(re::ecs2::AnimationComponent *this@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = 144;
  if (!*(this + 20))
  {
    v3 = 96;
  }

  v4 = this + v3;
  v5 = *(v4 + 2);
  v6 = *(v4 + 4);
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = v8 >> 1;
      v10 = v7 + (v8 >> 1 << 8);
      v11 = *(v10 + 128);
      v12 = v10 + 256;
      v8 += ~(v8 >> 1);
      if (v11 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
  }

  else
  {
    v7 = v6;
  }

  if (v7 == v6 + (v5 << 8) || *(v7 + 128) != a2)
  {
    *a3 = 0;
  }

  else
  {
    v13 = v7 - v6;
    if (v5 <= v13 >> 8)
    {
      v15 = v13 >> 8;
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

      v23 = 797;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v5;
      _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(this + 2);

    re::ecs2::AnimationEntry::parentTimebase((v6 + v13), v14, 0, a3);
  }
}

void re::ecs2::AnimationComponent::setAnimationParentTimebase(re::ecs2::AnimationComponent *this, unint64_t a2, OpaqueCMTimebase *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(this + 20);
  v6 = *(this + 22);
  v7 = v6 + (v5 << 8);
  if (v5)
  {
    v8 = *(this + 22);
    do
    {
      v9 = v5 >> 1;
      v10 = v8 + (v5 >> 1 << 8);
      v11 = *(v10 + 128);
      v12 = v10 + 256;
      v5 += ~(v5 >> 1);
      if (v11 < a2)
      {
        v8 = v12;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v5);
  }

  else
  {
    v8 = *(this + 22);
  }

  if (v8 != v7 && *(v8 + 128) == a2)
  {
    v13 = re::ecs2::AnimationComponent::parentSimulationTimer(this);
    if (v13)
    {
      v14 = v8 - v6;
      v15 = (v8 - v6) >> 8;
      v16 = *(this + 20);
      if (v16 <= v15)
      {
        v26 = 0;
        memset(time, 0, sizeof(time));
        v23 = MEMORY[0x1E69E9C10];
        v27 = 136315906;
        *v28 = "operator[]";
        *&v28[8] = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        *&v28[10] = 789;
        v29 = 2048;
        v30 = v15;
        v31 = 2048;
        v32 = v16;
        _os_log_send_and_compose_impl(v24, &v26, time, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
        _os_crash_msg();
        __break(1u);
      }

      v17 = *(this + 22) + v14;
      v18 = (*(*v13 + 48))(v13);
      re::ecs2::AnimationComponent::animationEntryParentTime(&v27, this, v18, v17);
      Seconds = v18;
      if (a3)
      {
        CMTimebaseGetTime(time, a3);
        Seconds = CMTimeGetSeconds(time);
      }

      if (v27 == 1)
      {
        v18 = *&v28[4];
      }

      else
      {
        v21 = *re::ecsComponentsLogObjects(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *time = 0;
          _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Animation setting timebase while desynchronized, possible inconsistent state.", time, 2u);
        }
      }

      *(v17 + 72) = Seconds - (v18 - *(v17 + 72));
      v22 = *(v17 + 88);
      if (v22)
      {
        CFRelease(v22);
      }

      *(v17 + 88) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      *(this + 34) = 0;
    }
  }
}

uint64_t re::ecs2::AnimationComponent::shadowAnimationController(re::ecs2::AnimationComponent *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  do
  {
    v5 = v2;
    v2 = *(v2 + 32);
  }

  while (v2);
  v6 = *(v5 + 24);
  if (!v6)
  {
    return 0;
  }

  if (!*(v6 + 56))
  {
    return 0;
  }

  re::ecs2::AnimationComponent::initOwnershipState(this);
  re::ecs2::AnimationComponent::processFinishedAnimations(this, v7, v8, v9, v10);
  re::ecs2::AnimationComponent::processDefaultTimebaseChanges(this);
  v11 = (*(**(v6 + 56) + 32))(*(v6 + 56));
  v12 = re::ServiceLocator::serviceOrNull<re::AnimationService>(v11);
  re::ecs2::AnimationComponent::processActiveAnimations(this, v12, v13, v14, v15);
  v16 = *(this + 25);
  if (!v16)
  {
    return 0;
  }

  result = *(this + 27) + 8;
  v18 = 144 * v16;
  while (*(result - 8) != a2)
  {
    result += 144;
    v18 -= 144;
    if (!v18)
    {
      return 0;
    }
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::AnimationService>(uint64_t a1)
{
  {
    re::introspect<re::AnimationService>(BOOL)::info = re::introspect_AnimationService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::AnimationService>(BOOL)::info;
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

uint64_t re::ecs2::AnimationComponent::AnimationComponentEventDelegate::addEvent(uint64_t result, char a2, void *a3, uint64_t a4, double a5)
{
  v8 = result;
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 && (result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*a3 + (a3[1] >> 56 << 6) + 72, a3[1])) != 0)
  {
    v9 = *(result + 160);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 48);
  if (v11 + 1 > 8 * v12)
  {
    v12 = *(v8 + 48);
  }

  if (v12 <= v11 >> 3)
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

    v24 = 858;
    v25 = 2048;
    v26 = v11 >> 3;
    v27 = 2048;
    v28 = v12;
    _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  if (*(v8 + 56))
  {
    v13 = v8 + 64;
  }

  else
  {
    v13 = *(v8 + 72);
  }

  v14 = a5;
  v15 = *(v13 + 8 * (v11 >> 3));
  ++*(v8 + 80);
  ++*(v8 + 88);
  v16 = v15 + 40 * (v11 & 7);
  *v16 = a2;
  *(v16 + 8) = v9;
  *(v16 + 16) = v14;
  *(v16 + 20) = v10;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  return result;
}

void re::ecs2::AnimationComponent::AnimationComponentEventDelegate::publishTimelineEvent(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v85 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v19 = WeakRetained[1];
    if (!v19)
    {
LABEL_66:

      return;
    }

    v20 = WeakRetained[1];
    v21 = (v19 + 8);
    v22 = v19;
    do
    {
      v23 = v22;
      v22 = *(v22 + 32);
    }

    while (v22);
    v24 = *(v23 + 24);
    if (!v24)
    {
      goto LABEL_62;
    }

    v25 = (*(**(v24 + 56) + 32))(*(v24 + 56));
    v26 = re::ServiceLocator::serviceOrNull<re::Engine>(v25);
    if (!v26)
    {
      goto LABEL_62;
    }

    v74 = *(v26 + 189);
    if (!v74)
    {
      goto LABEL_62;
    }

    if (a8)
    {
      v27 = *(a8 + 40);
    }

    else
    {
      v27 = 0.0;
    }

    v28 = *(a5 + 80);
    if (v28)
    {
      v29 = v28 + 1;
      v73 = a7;
      v30 = v19;
      v31 = v28;
      v32 = v27;
      v26 = v29;
      v27 = v32;
      v28 = v31;
      v19 = v30;
      a7 = v73;
    }

    if (a2 <= 8)
    {
      if (a2 <= 6)
      {
        if (a2 != 5)
        {
          if (a2 == 6)
          {
            *&v77 = a9;
            v33 = v28[4];
            *&v79 = *(a4 + 24);
            v34 = *(a8 + 8);
            DWORD2(v79) = *(a8 + 4);
            *buf = v20;
            v76 = a3;
            *(&v77 + 1) = v33;
            *&v78 = a6;
            *(&v78 + 1) = v28 + 3;
            *&v80 = v34;
            if (*(a8 + 32))
            {
              v35 = a8;
            }

            else
            {
              v35 = 0;
            }

            *(&v80 + 1) = v35;
            v81 = a7;
            v82 = v27;
            v83 = *(a8 + 48);
            v84 = *(a8 + 56);
            v36 = (v28[3] >> 1);
            HasTimelineEvent = re::EventBus::getTypeId<REAnimationHasTimelineEventUpdate>();
            v38 = v74;
            v39 = v20;
            v40 = 112;
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        v81 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        *buf = v20;
        v76 = a3;
        v47 = a9;
        *&v77 = v47;
        *(&v77 + 1) = v28[4];
        *&v78 = a6;
        *(&v78 + 1) = v28 + 3;
        *&v79 = a7;
        if (*(a8 + 32))
        {
          v48 = a8;
        }

        else
        {
          v48 = 0;
        }

        *(&v79 + 1) = v48;
        *&v80 = v27;
        *(&v80 + 1) = *(a8 + 48);
        LOBYTE(v81) = *(a8 + 56);
        v49 = *(a8 + 8);
        v82 = *(a4 + 24);
        v83 = v49;
        v50 = (v28[3] >> 1);
        v51 = re::EventBus::getTypeId<REAnimationHasTimelineEventStart>();
        re::EventBus::publish(v74, v20, v51, buf, 0x68uLL, v50);
        v52 = v20;
        do
        {
          v53 = v52;
          v52 = *(v52 + 32);
        }

        while (v52);
        if (*(v53 + 24))
        {
          v54 = v20;
          do
          {
            v55 = v54;
            v54 = *(v54 + 32);
          }

          while (v54);
          v56 = *(*(v55 + 24) + 288);
          if (v56)
          {
            re::EventBus::publish<re::ecs2::Entity,REAnimationHasTimelineEventStart>(v56, v20, buf, (v28[3] >> 1));
          }
        }

LABEL_60:
        if (v28)
        {
          goto LABEL_61;
        }

        do
        {
LABEL_62:
          v71 = v20;
          v20 = *(v20 + 32);
        }

        while (v20);
        v72 = *(v71 + 24);
        if (v72)
        {
          (*(**(v72 + 56) + 248))(*(v72 + 56));
        }

        goto LABEL_66;
      }

      if (a2 == 7)
      {
        v81 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        *buf = v20;
        v76 = a3;
        v58 = a9;
        *&v77 = v58;
        v59 = v28 + 3;
        *(&v77 + 1) = v28[4];
        *&v78 = a6;
        *(&v78 + 1) = v28 + 3;
        *&v79 = a7;
        if (a8)
        {
          if (*(a8 + 32))
          {
            v60 = a8;
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v60 = 0;
        }

        *(&v79 + 1) = v60;
        *&v80 = v27;
        *(&v80 + 1) = *(a8 + 48);
        LOBYTE(v81) = *(a8 + 56);
        v62 = (*v59 >> 1);
        v63 = re::EventBus::getTypeId<REAnimationHasTimelineEventEnd>();
        re::EventBus::publish(v74, v20, v63, buf, 0x58uLL, v62);
        v64 = v20;
        do
        {
          v65 = v64;
          v64 = *(v64 + 32);
        }

        while (v64);
        if (*(v65 + 24))
        {
          v66 = v20;
          do
          {
            v67 = v66;
            v66 = *(v66 + 32);
          }

          while (v66);
          v68 = *(*(v67 + 24) + 288);
          if (v68)
          {
            v69 = (*v59 >> 1);
            v70 = re::EventBus::getTypeId<REAnimationHasTimelineEventEnd>();
            re::EventBus::publish(v68, v20, v70, buf, 0x58uLL, v69);
          }
        }

        goto LABEL_60;
      }

      *buf = v20;
      v76 = a3;
      v43 = a9;
      *&v77 = v43;
      *(&v77 + 1) = v28[4];
      v44 = *(a4 + 24);
      if (!*(a4 + 16))
      {
        v44 = -1.0;
      }

      *&v78 = v44;
      *(&v78 + 1) = v28 + 3;
      *&v79 = a7;
      *(&v79 + 1) = v27;
      v36 = (v28[3] >> 1);
      Type = re::EventBus::getTypeId<REAnimationTimelineEventPause>();
      goto LABEL_42;
    }

    if (a2 > 10)
    {
      if (a2 == 11)
      {
        *buf = v20;
        v76 = a3;
        *&v77 = v28[4];
        *(&v77 + 1) = v28 + 3;
        *&v78 = a7;
        *(&v78 + 1) = v27;
        v36 = (v28[3] >> 1);
        v46 = re::EventBus::getTypeId<REAnimationTimelineEventTerminated>();
      }

      else
      {
        if (a2 != 12)
        {
LABEL_50:
          v61 = *re::animationLogObjects(v26);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = a2;
            _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Unexpected event state %d", buf, 8u);
          }

          goto LABEL_60;
        }

        *buf = v20;
        v76 = a3;
        *&v77 = v28[4];
        *(&v77 + 1) = v28 + 3;
        *&v78 = a7;
        *(&v78 + 1) = v27;
        v36 = (v28[3] >> 1);
        v46 = re::EventBus::getTypeId<REAnimationTimelineEventCreated>();
      }

      HasTimelineEvent = v46;
      v38 = v74;
      v39 = v20;
      v40 = 48;
    }

    else
    {
      if (a2 == 9)
      {
        *buf = v20;
        v76 = a3;
        v57 = a9;
        *&v77 = v57;
        *(&v77 + 1) = v28[4];
        *&v78 = *(a4 + 24);
        *(&v78 + 1) = v28 + 3;
        *&v79 = a7;
        *(&v79 + 1) = v27;
        v36 = (v28[3] >> 1);
        Type = re::EventBus::getTypeId<REAnimationTimelineEventResume>();
LABEL_42:
        HasTimelineEvent = Type;
        v38 = v74;
        v39 = v20;
        v40 = 64;
        goto LABEL_49;
      }

      *buf = v20;
      v76 = a3;
      v41 = a9;
      *&v77 = v41;
      *(&v77 + 1) = v28[4];
      *&v78 = a6;
      *(&v78 + 1) = v28 + 3;
      *&v79 = a7;
      *(&v79 + 1) = v27;
      *&v80 = *(a8 + 48);
      BYTE8(v80) = *(a8 + 56);
      v42 = *(a8 + 8);
      v81 = *(a4 + 24);
      v82 = v42;
      v36 = (v28[3] >> 1);
      HasTimelineEvent = re::EventBus::getTypeId<REAnimationTimelineEventSkipped>();
      v38 = v74;
      v39 = v20;
      v40 = 96;
    }

LABEL_49:
    re::EventBus::publish(v38, v39, HasTimelineEvent, buf, v40, v36);
LABEL_61:

    goto LABEL_62;
  }
}

uint64_t re::EventBus::publish<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::EventBus *a1, size_t a2, const void *a3, const void *a4)
{
  HasTimelineEvent = re::EventBus::getTypeId<REAnimationHasTimelineEventStart>();

  return re::EventBus::publish(a1, a2, HasTimelineEvent, a3, 0x68uLL, a4);
}

void re::ecs2::AnimationComponent::setParentAnimation(re::ecs2::AnimationComponent *this, unint64_t a2, re::ecs2::Entity *a3, unint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *(this + 20);
  v8 = *(this + 22);
  if (v7)
  {
    v9 = *(this + 22);
    v10 = *(this + 20);
    do
    {
      v11 = v10 >> 1;
      v12 = v9 + (v10 >> 1 << 8);
      v13 = *(v12 + 128);
      v14 = v12 + 256;
      v10 += ~(v10 >> 1);
      if (v13 < a2)
      {
        v9 = v14;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  else
  {
    v9 = *(this + 22);
  }

  if (v9 != v8 + (v7 << 8) && *(v9 + 128) == a2)
  {
    v15 = (v9 - v8) >> 8;
    if (a3)
    {
      v16 = *(a3 + 39);
    }

    else
    {
      v16 = 0;
    }

    if (v7 <= v15)
    {
      v31 = 0;
      memset(v40, 0, sizeof(v40));
      v28 = MEMORY[0x1E69E9C10];
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v35 = 789;
      v36 = 2048;
      v37 = v15;
      v38 = 2048;
      v39 = v7;
      _os_log_send_and_compose_impl(v29, &v31, v40, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
      _os_crash_msg();
      __break(1u);
    }

    v17 = v8 + (v15 << 8);
    v19 = *(v17 + 152);
    v18 = v17 + 152;
    if ((v19 & 1) == 0)
    {
      *v18 = 1;
    }

    *(v18 + 8) = v16;
    *(v18 + 16) = a4;
    *(this + 34) = 0;
    v20 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v20)
    {
      v21 = re::ecs2::AnimationComponent::animationEntry(v20, a4);
      if (v21 && (*(v21 + 57) & 0xFD) == 1)
      {
        v22 = *(this + 20);
        if (v22)
        {
          v23 = *(this + 22);
          v24 = v22 << 8;
          while (*(v23 + 16) != a2)
          {
            v23 = (v23 + 256);
            v24 -= 256;
            if (!v24)
            {
              return;
            }
          }

          re::ecs2::AnimationComponent::pause(this, v23, 0);
        }
      }

      else
      {
        v25 = *(this + 20);
        if (v25)
        {
          v26 = *(this + 22);
          v27 = v25 << 8;
          while (*(v26 + 16) != a2)
          {
            v26 = (v26 + 256);
            v27 -= 256;
            if (!v27)
            {
              return;
            }
          }

          re::ecs2::AnimationComponent::resume(this, v26, 0);
        }
      }
    }
  }
}

void re::ecs2::AnimationComponent::AnimationComponentEventDelegate::publishEvents(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 4);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (!*(this + 6))
    {
      *(this + 6) = 1;
      v4 = WeakRetained[1];
      if (v4)
      {
        v5 = (v4 + 8);
        v6 = v3[1];
        if (v6)
        {
          v7 = v3[1];
          do
          {
            v8 = v7;
            v7 = *(v7 + 32);
          }

          while (v7);
          if (*(v8 + 24))
          {
            do
            {
              v9 = v6;
              v6 = *(v6 + 32);
            }

            while (v6);
            v10 = *(*(v9 + 24) + 288);
            if (v10)
            {
              goto LABEL_83;
            }
          }
        }

        v11 = v4;
        do
        {
          v12 = v11;
          v11 = *(v11 + 32);
        }

        while (v11);
        v13 = *(v12 + 24);
        if (v13)
        {
          v14 = *(v13 + 56);
          if (v14)
          {
            v15 = (*(*v14 + 32))(v14);
            v16 = re::ServiceLocator::serviceOrNull<re::Engine>(v15);
            if (v16)
            {
              v10 = *(v16 + 189);
              if (v10)
              {
LABEL_83:
                if (this[10])
                {
                  for (i = 0; i < this[10]; ++i)
                  {
                    v18 = re::BucketArray<re::BufferSlice,8ul>::operator[]((this + 5), i);
                    v19 = v18;
                    v20 = *v18;
                    if (v20 > 2)
                    {
                      if (v20 == 3)
                      {
                        v35 = *(v18 + 1);
                        v57 = v4;
                        v58 = v35;
                        v59 = *(v18 + 2);
                        if ((atomic_load_explicit(&qword_1EE1B3698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3698))
                        {
                          qword_1EE1B3690 = re::EventBus::typeStringToId(("25REAnimationHasLoopedEvent" & 0x7FFFFFFFFFFFFFFFLL), v48);
                          __cxa_guard_release(&qword_1EE1B3698);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B3690, &v57, 0x18uLL, 0);
                        v57 = *(v19 + 1);
                        v58 = *(v19 + 2);
                        if ((atomic_load_explicit(&qword_1EE1B36A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B36A8))
                        {
                          qword_1EE1B36A0 = re::EventBus::typeStringToId(("22REAnimationLoopedEvent" & 0x7FFFFFFFFFFFFFFFLL), v49);
                          __cxa_guard_release(&qword_1EE1B36A8);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B36A0, &v57, 0x10uLL, 0);
                        v36 = *(v19 + 1);
                        LODWORD(v57) = 0;
                        HIDWORD(v57) = v36;
                        v58 = *(v19 + 2);
                        if ((atomic_load_explicit(&qword_1EE1B36B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B36B8))
                        {
                          qword_1EE1B36B0 = re::EventBus::typeStringToId(("23REAnimationDidLoopEvent" & 0x7FFFFFFFFFFFFFFFLL), v50);
                          __cxa_guard_release(&qword_1EE1B36B8);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B36B0, &v57, 0x10uLL, 0);
                        v37 = *(v19 + 1);
                        LODWORD(v57) = 0;
                        HIDWORD(v57) = v37;
                        v58 = *(v19 + 2);
                        if ((atomic_load_explicit(&qword_1EE1B36C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B36C8))
                        {
                          qword_1EE1B36C0 = re::EventBus::typeStringToId(("20REAnimationLoopEvent" & 0x7FFFFFFFFFFFFFFFLL), v51);
                          __cxa_guard_release(&qword_1EE1B36C8);
                        }

                        v24 = qword_1EE1B36C0;
                        v32 = v10;
                        v33 = v4;
                        v34 = 16;
                        goto LABEL_42;
                      }

                      if (v20 == 4)
                      {
                        v25 = *(v18 + 1);
                        v57 = v4;
                        v58 = v25;
                        LODWORD(v59) = *(v18 + 4);
                        HasTerminated = re::EventBus::getTypeId<REAnimationHasTerminatedEvent>();
                        re::EventBus::publish(v10, v4, HasTerminated, &v57, 0x18uLL, 0);
                        v57 = *(v19 + 1);
                        LODWORD(v58) = *(v19 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B36E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B36E8))
                        {
                          qword_1EE1B36E0 = re::EventBus::typeStringToId(("26REAnimationTerminatedEvent" & 0x7FFFFFFFFFFFFFFFLL), v42);
                          __cxa_guard_release(&qword_1EE1B36E8);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B36E0, &v57, 0x10uLL, 0);
                        v27 = *(v19 + 1);
                        LODWORD(v57) = 0;
                        HIDWORD(v57) = v27;
                        LODWORD(v58) = *(v19 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B36F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B36F8))
                        {
                          qword_1EE1B36F0 = re::EventBus::typeStringToId(("28REAnimationDidTerminateEvent" & 0x7FFFFFFFFFFFFFFFLL), v43);
                          __cxa_guard_release(&qword_1EE1B36F8);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B36F0, &v57, 0xCuLL, 0);
                        v28 = *(v19 + 1);
                        LODWORD(v57) = 0;
                        HIDWORD(v57) = v28;
                        LODWORD(v58) = *(v19 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B3708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3708))
                        {
                          qword_1EE1B3700 = re::EventBus::typeStringToId(("25REAnimationTerminateEvent" & 0x7FFFFFFFFFFFFFFFLL), v44);
                          __cxa_guard_release(&qword_1EE1B3708);
                        }

                        v24 = qword_1EE1B3700;
LABEL_36:
                        v32 = v10;
                        v33 = v4;
                        v34 = 12;
LABEL_42:
                        re::EventBus::publish(v32, v33, v24, &v57, v34, 0);
                      }
                    }

                    else
                    {
                      if (v20 == 1)
                      {
                        v29 = *(v18 + 1);
                        v57 = v4;
                        v58 = v29;
                        if ((atomic_load_explicit(&qword_1EE1B3628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3628))
                        {
                          qword_1EE1B3620 = re::EventBus::typeStringToId(("26REAnimationHasStartedEvent" & 0x7FFFFFFFFFFFFFFFLL), v45);
                          __cxa_guard_release(&qword_1EE1B3628);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B3620, &v57, 0x10uLL, 0);
                        v30 = *(v19 + 1);
                        LODWORD(v57) = 0;
                        HIDWORD(v57) = v30;
                        LODWORD(v58) = *(v19 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B3638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3638))
                        {
                          qword_1EE1B3630 = re::EventBus::typeStringToId(("24REAnimationDidStartEvent" & 0x7FFFFFFFFFFFFFFFLL), v46);
                          __cxa_guard_release(&qword_1EE1B3638);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B3630, &v57, 0xCuLL, 0);
                        v31 = *(v19 + 1);
                        LODWORD(v57) = 0;
                        HIDWORD(v57) = v31;
                        LODWORD(v58) = *(v19 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B3648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3648))
                        {
                          qword_1EE1B3640 = re::EventBus::typeStringToId(("21REAnimationStartEvent" & 0x7FFFFFFFFFFFFFFFLL), v47);
                          __cxa_guard_release(&qword_1EE1B3648);
                        }

                        v24 = qword_1EE1B3640;
                        goto LABEL_36;
                      }

                      if (v20 == 2)
                      {
                        v21 = *(v18 + 1);
                        v57 = v4;
                        v58 = v21;
                        LODWORD(v59) = *(v18 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B3658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3658))
                        {
                          qword_1EE1B3650 = re::EventBus::typeStringToId(("28REAnimationHasCompletedEvent" & 0x7FFFFFFFFFFFFFFFLL), v38);
                          __cxa_guard_release(&qword_1EE1B3658);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B3650, &v57, 0x18uLL, 0);
                        v57 = *(v19 + 1);
                        LODWORD(v58) = *(v19 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B3668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3668))
                        {
                          qword_1EE1B3660 = re::EventBus::typeStringToId(("25REAnimationCompletedEvent" & 0x7FFFFFFFFFFFFFFFLL), v39);
                          __cxa_guard_release(&qword_1EE1B3668);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B3660, &v57, 0x10uLL, 0);
                        v22 = *(v19 + 1);
                        LODWORD(v57) = 0;
                        HIDWORD(v57) = v22;
                        LODWORD(v58) = *(v19 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B3678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3678))
                        {
                          qword_1EE1B3670 = re::EventBus::typeStringToId(("27REAnimationDidCompleteEvent" & 0x7FFFFFFFFFFFFFFFLL), v40);
                          __cxa_guard_release(&qword_1EE1B3678);
                        }

                        re::EventBus::publish(v10, v4, qword_1EE1B3670, &v57, 0xCuLL, 0);
                        v23 = *(v19 + 1);
                        LODWORD(v57) = 0;
                        HIDWORD(v57) = v23;
                        LODWORD(v58) = *(v19 + 4);
                        if ((atomic_load_explicit(&qword_1EE1B3688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3688))
                        {
                          qword_1EE1B3680 = re::EventBus::typeStringToId(("24REAnimationCompleteEvent" & 0x7FFFFFFFFFFFFFFFLL), v41);
                          __cxa_guard_release(&qword_1EE1B3688);
                        }

                        v24 = qword_1EE1B3680;
                        goto LABEL_36;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v52 = this[10];
      if (v52)
      {
        for (j = 0; j != v52; ++j)
        {
          v54 = re::BucketArray<re::BufferSlice,8ul>::operator[]((this + 5), j);
          v55 = *(v54 + 24);
          if (v55)
          {
            v56 = v54;

            *(v56 + 24) = 0;
          }
        }
      }

      this[10] = 0;
      ++*(this + 22);
      --*(this + 6);
      if (v4)
      {
      }
    }
  }
}

BOOL re::ecs2::AnimationComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v26, a5, 0);
  v9 = v26;
  v10 = v27;
  v11 = v27;
  v26 = a4;
  v27 = v9;
  v28 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v26);
      v14 = *(v13 + 16);
      v15 = a3 + 4;
      if (v14)
      {
        v16 = v13;
        v17 = *(v14 + 216);
        if (v17 && (!*(v17 + 32) || RESyncableIsAuthoritative()))
        {
          v18 = *(v16 + 248) == 2;
        }

        else
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v18 = (*(v19 + 432) >> 4) & 1;
          }

          else
          {
            v18 = 0;
          }
        }

        re::ecs2::AnimationComponent::initOwnershipState(v16);
        if (*(v16 + 248))
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        v15 = a3 + 4;
        if (!v20)
        {
          re::ecs2::AnimationComponent::processDefaultTimebaseChanges(v16);
          v15 = a3 + 5;
        }
      }

      v21 = v26;
      v22 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v27);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v21, v22, *v15);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v27);
    }

    while (v27 != a5 || v28 != 0xFFFF || HIWORD(v28) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::ecs2::AnimationComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = (*(**(a1 + 16) + 16))(*(a1 + 16), a3[1]);
  if (result)
  {
    v9 = result;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v27, a5, 0);
    v10 = v27;
    v11 = v28;
    v12 = v28;
    v27 = a4;
    v28 = v10;
    v29 = v11;
    if (v10 != a5 || v12 != 0xFFFFFFFFLL)
    {
      do
      {
        v14 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v27);
        ++*(*(v14 + 11) + 24);
        re::ecs2::AnimationComponent::processFinishedAnimations(v14, v15, v16, v17, v18);
        active = re::ecs2::AnimationComponent::processActiveAnimations(v14, v9, v19, v20, v21);
        v23 = *(v14 + 11);
        v24 = *(v23 + 24) - 1;
        *(v23 + 24) = v24;
        if (!v24 && *(v23 + 80))
        {
          (*(*v23 + 48))(v23);
        }

        if (active)
        {
          v25 = v27;
          v26 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v28);
          re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v25, v26, a3[4]);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v28);
      }

      while (v28 != a5 || v29 != 0xFFFF || HIWORD(v29) != 0xFFFF);
    }

    return *(a5 + 40) != 0;
  }

  return result;
}

BOOL re::ecs2::AnimationComponentStateImplLegacy::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v25, a5, 0);
  v9 = v25;
  v10 = v26;
  v11 = v26;
  v25 = a4;
  v26 = v9;
  v27 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v25);
      v14 = *(v13 + 16);
      if (v14)
      {
        break;
      }

LABEL_16:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v26);
      if (v26 == a5 && v27 == 0xFFFF && HIWORD(v27) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v15 = v13;
    v16 = *(v14 + 216);
    if (v16 && (!*(v16 + 32) || RESyncableIsAuthoritative()))
    {
      LOBYTE(v17) = *(v15 + 248) == 2;
    }

    else
    {
      v18 = *(a1 + 8);
      v19 = a3 + 4;
      if (!v18)
      {
LABEL_15:
        v20 = v25;
        v21 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v26);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v20, v21, *v19);
        goto LABEL_16;
      }

      v17 = (*(v18 + 432) >> 4) & 1;
    }

    if (((*(v15 + 48) != 0) & v17) != 0)
    {
      v19 = a3 + 5;
    }

    else
    {
      v19 = a3 + 4;
    }

    goto LABEL_15;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::AnimationComponentStateImplLegacy::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  result = (*(**(a1 + 16) + 16))(*(a1 + 16), *(a3 + 8));
  if (result)
  {
    v8 = result;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v42, a5, 0);
    v35 = a4;
    v36 = *&v42[0];
    v37 = DWORD2(v42[0]);
    if (*&v42[0] != a5 || DWORD2(v42[0]) != 0xFFFFFFFFLL)
    {
      do
      {
        v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v35);
        v12 = *(v10 + 16);
        if (v12)
        {
          if (*(v12 + 304))
          {
            v13 = v10;
            v14 = *(v10 + 48);
            if (v14)
            {
              v15 = 0;
              for (i = 0; i != v14; ++i)
              {
                v17 = *(v13 + 6);
                if (v17 <= i)
                {
                  v38 = 0;
                  memset(v42, 0, sizeof(v42));
                  v30 = MEMORY[0x1E69E9C10];
                  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v39 = 136315906;
                  *&v39[4] = "operator[]";
                  *&v39[12] = 1024;
                  if (v31)
                  {
                    v32 = 3;
                  }

                  else
                  {
                    v32 = 2;
                  }

                  *&v39[14] = 789;
                  *&v39[18] = 2048;
                  *&v39[20] = i;
                  v40 = 2048;
                  v41 = v17;
                  _os_log_send_and_compose_impl(v32, &v38, v42, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v33, v34[0]);
                  _os_crash_msg();
                  __break(1u);
                }

                v18 = *(v13 + 8);
                v19 = v18 + v15;
                v20 = *(v18 + v15 + 25);
                if (v20 == 2)
                {
                  LODWORD(v11) = *(v19 + 36);
                  v11 = re::AnimationController::stop((v19 + 56), v11);
                  *(v19 + 25) = 0;
                }

                else if (v20 == 1)
                {
                  re::AssetHandle::AssetHandle(v34, (v18 + v15));
                  re::AssetHandle::~AssetHandle(v34);
                  if (Timeline)
                  {
                    v22 = v18 + v15;
                    v23 = *(v22 + 32);
                    *&v39[16] = *(v22 + 48);
                    *v39 = v23;
                    v24 = (*(*v8 + 72))(v8, Timeline, v42, v39, 4, v13 + 11);
                    *(v22 + 56) = v24;
                    *(v22 + 64) = v25;
                    v26 = (v22 + 56);
                    if (v24)
                    {
                      v27 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(v24 + (v25 >> 56 << 6) + 72, v25);
                      if (v27)
                      {
                        *(v27 + 160) = i;
                      }
                    }

                    re::AnimationController::updateAndApply(v26);
                    *(v19 + 25) = 0;
                    v11 = re::BindNode::deinit(v42);
                  }
                }

                v15 += 72;
              }
            }
          }
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v36);
      }

      while (v36 != a5 || v37 != 0xFFFF || HIWORD(v37) != 0xFFFF);
    }

    return *(a5 + 40) != 0;
  }

  return result;
}

re::AssetHandle *anonymous namespace::getTimeline(re::AssetHandle *result)
{
  v1 = *(result + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  v3 = atomic_load((v1 + 896));
  if (v3 != 2)
  {
    goto LABEL_10;
  }

  v4 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v5 = *(v2 + 1);
  if (v5)
  {
    v5 = v5[35];
  }

  if (v4 != v5)
  {
    v6 = re::TimelineAsset::assetType(v4);
    v8 = *(*(v2 + 1) + 280);
    if (v6 != v8)
    {
      re::internal::assertLog(5, v7, "assertion failure: '%s' (%s:line %i) Unknown timeline asset handle type: %s", "!Unreachable code", "getTimeline", 127, *v8);
      result = _os_crash("assertion failure: (!Unreachable code) Unknown timeline asset handle type: %s", v11);
      __break(1u);
      return result;
    }

    result = v2;
    goto LABEL_8;
  }

  result = re::AssetHandle::loadedAsset<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(v2);
  if (!result)
  {
    return result;
  }

  v9 = *(result + 1);
  if (!v9)
  {
    return 0;
  }

  v10 = atomic_load((v9 + 896));
  if (v10 != 2)
  {
LABEL_10:
    re::AssetHandle::loadAsync(result);
    return 0;
  }

LABEL_8:
  result = re::AssetHandle::loadedAsset<re::TimelineAsset>(result);
  if (result)
  {
    return *(result + 2);
  }

  return result;
}

void anonymous namespace::getAnimationTarget(uint64_t *a1, re *this, int a3)
{
  if (a3 == 2)
  {
    v7 = *(this + 2);
    do
    {
      v8 = v7;
      v7 = *(v7 + 32);
    }

    while (v7);
    v10 = *(*(v8 + 24) + 56);

    re::makeBindNode(v10, a1);
  }

  else if (a3 == 1)
  {
    v3 = *(this + 2);
    do
    {
      v4 = v3;
      v3 = *(v3 + 32);
    }

    while (v3);
    v6 = *(v4 + 24);

    re::makeBindNode(v6, a1);
  }

  else if (a3)
  {
    re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) Invalid animation component target.", "!Unreachable code", "getAnimationTarget", 84);
    _os_crash("assertion failure: (!Unreachable code) Invalid animation component target.");
    __break(1u);
  }

  else
  {

    re::makeEntityBindNodeForComponent(a1, this);
  }
}

unint64_t re::ecs2::AnimationSystem::willAddSceneToECSService(re::ecs2::AnimationSystem *this, re::EventBus **a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v3 = a2[36];
  if (v3)
  {
    v35[0] = 0;
    v35[1] = 0;
    v36 = 1;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v40 = 0;
    v4 = re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    Type = re::EventBus::getTypeId<REComponentDidActivateEvent>();
    EventInfo = re::EventBus::addOrGetEventInfo(v3, Type);
    v7 = re::globalAllocators(EventInfo)[2];
    v54[0] = &unk_1F5CFED20;
    v55 = v7;
    v56 = v54;
    re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(v54, 0, &v51);
    v8 = re::EventBus::EventInfo::addSubscription(EventInfo, &v51, 0, v4);
    v10 = v9;
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(&v51);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v54);
    v11 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v35);
    *v11 = v8;
    v11[1] = v10;
    v14 = v13;
    v15 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v35);
    *v15 = v12;
    *(v15 + 1) = v14;
    v46 = re::globalAllocators(v15)[2];
    v16 = (*(*v46 + 32))(v46, 32, 0);
    *v16 = &unk_1F5CFE8A0;
    v16[1] = this;
    v16[2] = re::ecs2::AnimationSystem::willRemoveComponentHandler;
    v16[3] = 0;
    v47 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, v45, re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v35);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v45);
    v22 = re::globalAllocators(v21)[2];
    v43 = v22;
    v23 = (*(*v22 + 32))(v22, 32, 0);
    *v23 = &unk_1F5CFE8F8;
    v23[1] = this;
    v23[2] = re::ecs2::AnimationSystem::animationTerminatedHandler;
    v23[3] = 0;
    v44 = v23;
    v49 = v22;
    v50 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::operator=<24ul>(v48, v42);
    HasTerminated = re::EventBus::getTypeId<REAnimationHasTerminatedEvent>();
    v25 = re::EventBus::addOrGetEventInfo(v3, HasTerminated);
    v55 = v49;
    v56 = 0;
    v26 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::operator=<24ul>(v54, v48);
    v52[5] = re::globalAllocators(v26)[2];
    v53 = 0;
    v51 = &unk_1F5CFE9B8;
    v52[3] = v55;
    v52[4] = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::operator=<24ul>(v52, v54);
    v53 = &v51;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::destroyCallable(v54);
    v27 = re::EventBus::EventInfo::addSubscription(v25, &v51, 0, 0);
    v29 = v28;
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(&v51);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::destroyCallable(v48);
    v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v35);
    *v30 = v27;
    v30[1] = v29;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::destroyCallable(v42);
    v51 = 0;
    v52[0] = 0;
    v52[1] = 0;
    v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(this + 224, &v41, v31 ^ (v31 >> 31), &v51);
    if (HIDWORD(v52[0]) == 0x7FFFFFFF)
    {
      v32 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(this + 224, v52[0], v51);
      v33 = v41;
      *(v32 + 16) = 0;
      v32 += 16;
      *(v32 - 8) = v33;
      *(v32 + 8) = 0;
      *(v32 + 16) = 1;
      *(v32 + 32) = 0;
      *(v32 + 40) = 0;
      *(v32 + 24) = 0;
      *(v32 + 48) = 0;
      re::BucketArray<RESubscriptionHandle,8ul>::swap(v32, v35);
      ++*(this + 66);
    }

    re::BucketArray<RESubscriptionHandle,8ul>::deinit(v35);
    if (v35[0] && (v36 & 1) == 0)
    {
      (*(*v35[0] + 40))();
    }

    a2 = v41;
  }

  re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::addScene(this + 360, a2);
  return re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::addScene(this + 624, v41);
}

uint64_t anonymous namespace::activateComponent(uint64_t a1)
{
  v1 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v1)
  {
    v2 = v1;
    if (*(v1 + 248) == 2)
    {
      if (re::ecs2::AnimationComponent::parentSimulationTimer(v1))
      {
        v3 = *(v2 + 20);
        if (v3)
        {
          v4 = *(v2 + 22);
          v5 = v3 << 8;
          do
          {
            re::ecs2::AnimationComponent::resume(v2, v4, 1);
            v4 = (v4 + 256);
            v5 -= 256;
          }

          while (v5);
        }
      }
    }
  }

  return 0;
}

uint64_t anonymous namespace::deactivateComponent(uint64_t a1)
{
  v1 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v1)
  {
    re::ecs2::AnimationComponent::pauseAnimationsForDeactivation(v1);
  }

  return 0;
}

uint64_t re::ecs2::AnimationSystem::willRemoveComponentHandler(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {
    re::ecs2::AnimationComponent::detachAnimations(v2);
  }

  return 0;
}

uint64_t re::ecs2::AnimationSystem::animationTerminatedHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 248) == 2)
    {
      v6 = re::ecs2::AnimationComponent::animationEntry(v4, *(a3 + 8));
      if (v6)
      {
        if (*(v6 + 57) != 5)
        {
          re::ecs2::AnimationComponent::stop(v5, *(a3 + 8), 0.0);
          re::ecs2::NetworkComponent::markComponentDirty(v5, v7, v8, v9, v10);
          re::ecs2::Component::markDirty(v5);
        }
      }
    }
  }

  return 0;
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::addScene(unint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 144);
    }

    else
    {
      v6 = *(a1 + 152);
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
    v7 = (a1 + 144);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 152);
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
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 120, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::init(v12, a1, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 120, v44);
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
  v14 = *(a1 + 40);
  *&v51 = 0;
  v15 = *(a1 + 8);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,4ul>::setBucketsCapacity(a1, (v14 + 4) >> 2);
    v15 = *(a1 + 8);
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

  if (*(a1 + 16))
  {
    v16 = a1 + 24;
  }

  else
  {
    v16 = *(a1 + 32);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
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
  v23 = *(a1 + 40);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::init(v24, a1, v52);
  *&v62[0] = *(a1 + 40) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v52, v62);
  v25 = *(a1 + 40);
  v26 = *(a1 + 160);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 160) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 120), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 160) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 136))
    {
      v30 = a1 + 144;
    }

    else
    {
      v30 = *(a1 + 152);
    }

    *(v30 + 8 * *(a1 + 128) - 8) &= v28;
  }

  v31 = *(a1 + 40);
  v32 = *(a1 + 208);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 208) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 168), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 208) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 184))
    {
      v36 = a1 + 192;
    }

    else
    {
      v36 = *(a1 + 200);
    }

    *(v36 + 8 * *(a1 + 176) - 8) &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 168, v13);
  if (*(a1 + 232) == 1)
  {
    v38 = *(a1 + 216);
    v39 = *(v52 + 376);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::AnimationSystem::willAddSystemToECSService(re::ecs2::AnimationSystem *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 40) = re::ServiceLocator::serviceOrNull<re::ecs2::AnimationSceneService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::Engine>(v3);
  *(this + 41) = result;
  v5 = *(result + 189);
  if (v5)
  {
    v10 = re::globalAllocators(result)[2];
    v6 = (*(*v10 + 32))(v10, 32, 0);
    *v6 = &unk_1F5CFE960;
    v6[1] = this;
    v6[2] = re::ecs2::AnimationSystem::sceneWillRemoveHandler;
    v6[3] = 0;
    v11 = v6;
    *(this + 34) = re::EventBus::subscribe<re::ecs2::Scene,RESceneWillRemoveEvent>(v5, v9, 0, 0);
    *(this + 35) = v7;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(v9);
    result = *(this + 41);
  }

  v8 = *(this + 40);
  *(this + 43) = result;
  *(this + 44) = v8;
  *(this + 76) = result;
  *(this + 77) = v8;
  return result;
}

uint64_t re::ecs2::AnimationSystem::sceneWillRemoveHandler(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {
    v3 = *(v2 + 384);
    if (v3)
    {
      v4 = *(v2 + 400);
      v5 = 8 * v3;
      do
      {
        v6 = *v4++;
        re::ecs2::AnimationComponent::detachAnimations(v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return 0;
}

uint64_t re::ecs2::AnimationSystem::willRemoveSceneFromECSService(re::ecs2::AnimationSystem *this, re::ecs2::Scene *a2)
{
  v10 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 224, &v10);
  if (v3)
  {
    v4 = *(v10 + 36);
    if (v4)
    {
      v5 = v3;
      v6 = *(v3 + 40);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v5, i);
          re::EventBus::unsubscribe(v4, *v8, v8[1]);
        }
      }
    }

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 224, &v10);
  }

  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::removeScene(this + 360, v10);
  return re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::removeScene(this + 624, v10);
}

uint64_t re::ecs2::AnimationSystem::willRemoveSystemFromECSService(re::ecs2::AnimationSystem *this)
{
  result = *(*(this + 41) + 1512);
  if (result)
  {
    result = re::EventBus::unsubscribe(result, *(this + 34), *(this + 35));
  }

  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 77) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  return result;
}

void *re::ecs2::AnimationSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v22[0] = a2;
  v22[1] = a3;
  if ((a2 & 0x100000000) == 0)
  {
    v3 = result;
    if (result[40])
    {
      v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v21);
      v6 = *(a3 + 200);
      if (v6)
      {
        v7 = 0;
        v8 = *(a3 + 216);
        v9 = 8 * v6;
        do
        {
          v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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
          v14 = v13[864].u64[0];
          if (v14 >= v7)
          {
            v14 = v7;
          }

          v13[864].i64[0] = v14;
          v15 = v13[864].u64[1];
          if (v15 <= v7)
          {
            v15 = v7;
          }

          v13[864].i64[1] = v15;
          v16 = vdupq_n_s64(1uLL);
          v16.i64[0] = v7;
          v13[865] = vaddq_s64(v13[865], v16);
          *(v12 + 184) = 0;
        }
      }

      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v20, 3029, v3, v7, 0, 0);
      re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::update(v3 + 45, v22);
      v19 = v3[41];
      if (v19)
      {
        if ((*(v19 + 432) & 0x10) != 0)
        {
          re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::update(v3 + 78, v22);
        }
      }

      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v20, v17, v18);
      return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v21);
    }
  }

  return result;
}

void re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::update(void *a1, uint64_t a2)
{
  re::StackScratchAllocator::StackScratchAllocator(v41);
  v37 = 1;
  v38 = 0;
  v39 = 0;
  v35 = v41;
  v36 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v35, 0);
  v37 += 2;
  v4 = a1[26];
  if ((v4 & 0x3F) != 0)
  {
    v5 = (v4 >> 6) + 1;
  }

  else
  {
    v5 = v4 >> 6;
  }

  v40 = a1[26];
  v30[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v35, v5, v30);
  v6 = *(a2 + 8);
  v7 = *(v6 + 200);
  if (v7)
  {
    v8 = *(v6 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v30[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 7, v30);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v35, *(a1[8] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v35, (a1 + 21));
  v31 = 1;
  v32 = 0;
  v33 = 0;
  v30[0] = v41;
  v30[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v30, 0);
  v31 += 2;
  v12 = a1[26];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v34 = a1[26];
  v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v30, v13, &v42);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 21), &v35);
  v14 = v39;
  if (v37)
  {
    v14 = &v38;
  }

  v15 = v36;
  if ((v36 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, a2, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, a2, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, a2, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v30, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v30, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v35, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 21), v30);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  if (v30[0] && (v31 & 1) == 0)
  {
    (*(*v30[0] + 40))();
  }

  if (v35 && (v37 & 1) == 0)
  {
    (*(*v35 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v41);
}

void re::ecs2::introspect_AnimationComponentTarget(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B3520, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B3528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3528))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B38E0, "AnimationComponentTarget", 1, 1, 1, 1);
      qword_1EE1B38E0 = &unk_1F5D0C658;
      qword_1EE1B3920 = &re::ecs2::introspect_AnimationComponentTarget(BOOL)::enumTable;
      dword_1EE1B38F0 = 9;
      __cxa_guard_release(&qword_1EE1B3528);
    }

    if (_MergedGlobals_378)
    {
      break;
    }

    _MergedGlobals_378 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B38E0, a2);
    v35 = 0xC1A027EF051A1D4;
    v36 = "AnimationComponentTarget";
    v39 = 6104748;
    v40 = "char";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B3920;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B3900 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v34);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B3520))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Entity";
      qword_1EE1B3740 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Scene";
      qword_1EE1B3748 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Service";
      qword_1EE1B3750 = v33;
      __cxa_guard_release(&qword_1EE1B3520);
    }
  }
}

void re::ecs2::introspect_AnimationComponentRequest(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B3530, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B3538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3538))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B3928, "AnimationComponentRequest", 1, 1, 1, 1);
      qword_1EE1B3928 = &unk_1F5D0C658;
      qword_1EE1B3968 = &re::ecs2::introspect_AnimationComponentRequest(BOOL)::enumTable;
      dword_1EE1B3938 = 9;
      __cxa_guard_release(&qword_1EE1B3538);
    }

    if (byte_1EE1B3519)
    {
      break;
    }

    byte_1EE1B3519 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B3928, a2);
    v35 = 0x77264D5E53E0FCACLL;
    v36 = "AnimationComponentRequest";
    v39 = 6104748;
    v40 = "char";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B3968;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B3948 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v34);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B3530))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "None";
      qword_1EE1B3758 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Start";
      qword_1EE1B3760 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Stop";
      qword_1EE1B3768 = v33;
      __cxa_guard_release(&qword_1EE1B3530);
    }
  }
}

void re::ecs2::introspect_AnimationEntryState(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B3540, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B3548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3548))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B3970, "AnimationEntryState", 1, 1, 1, 1);
      qword_1EE1B3970 = &unk_1F5D0C658;
      qword_1EE1B39B0 = &re::ecs2::introspect_AnimationEntryState(BOOL)::enumTable;
      dword_1EE1B3980 = 9;
      __cxa_guard_release(&qword_1EE1B3548);
    }

    if (byte_1EE1B351A)
    {
      break;
    }

    byte_1EE1B351A = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B3970, a2);
    v39 = 0x3630FE52B2D2DB86;
    v40 = "AnimationEntryState";
    v43 = 6104748;
    v44 = "char";
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
      v6 = qword_1EE1B39B0;
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
      xmmword_1EE1B3990 = v41;
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
    if (__cxa_guard_acquire(&qword_1EE1B3540))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Playing";
      qword_1EE1B3790 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Paused";
      qword_1EE1B3798 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Stopped";
      qword_1EE1B37A0 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "DeactivatePaused";
      qword_1EE1B37A8 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "FadeOut";
      qword_1EE1B37B0 = v37;
      __cxa_guard_release(&qword_1EE1B3540);
    }
  }
}