uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

void *re::ecs2::PerformInlineDeformationsSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v33[0] = a2;
  v33[1] = a3;
  v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v32);
  if (a1[29] && re::DeformerFeatureFlags::enableAppDeformation(v5))
  {
    re::StackScratchAllocator::StackScratchAllocator(v45);
    v41 = 1;
    v42 = 0;
    v43 = 0;
    v39 = v45;
    v40 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v39, 0);
    v41 += 2;
    v6 = a1[64];
    if ((v6 & 0x3F) != 0)
    {
      v7 = (v6 >> 6) + 1;
    }

    else
    {
      v7 = v6 >> 6;
    }

    v44 = a1[64];
    v34[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v39, v7, v34);
    v8 = *(a3 + 200);
    if (v8)
    {
      v9 = *(a3 + 216);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        v34[0] = v11;
        v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 45, v34);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v39, *(a1[46] + 16 * v12 + 8));
        v10 -= 8;
      }

      while (v10);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v39, (a1 + 59));
    v35 = 1;
    v36 = 0;
    v37 = 0;
    v34[0] = v45;
    v34[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v34, 0);
    v35 += 2;
    v13 = a1[64];
    if ((v13 & 0x3F) != 0)
    {
      v14 = (v13 >> 6) + 1;
    }

    else
    {
      v14 = v13 >> 6;
    }

    v38 = a1[64];
    v46 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v34, v14, &v46);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 59), &v39);
    v15 = v43;
    if (v41)
    {
      v15 = &v42;
    }

    v16 = v40;
    if ((v40 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
          v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 38), FirstBitSet);
          v23 = *(*v22 + 224);
          v24 = v22[3];
          v25 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v24);
          if (*(v25 + 40))
          {
            v26 = (*(*v23 + 24))(v23, v33, v22, v24, v25, 0);
          }

          else
          {
            v26 = 0;
          }

          v27 = v22[5];
          v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v27);
          if (*(v28 + 40))
          {
            v26 |= (*(*v23 + 32))(v23, v33, v22, v27, v28, 0);
          }

          v29 = v22[6];
          v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v29);
          if (*(v30 + 40))
          {
            if (((v26 | (*(*v23 + 40))(v23, v33, v22, v29, v30, 0)) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else if (!v26)
          {
LABEL_30:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v34, FirstBitSet);
            goto LABEL_31;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v34, FirstBitSet);
LABEL_31:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v39, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_32:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 59), v34);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 38));
    if (v34[0] && (v35 & 1) == 0)
    {
      (*(*v34[0] + 40))();
    }

    if (v39 && (v41 & 1) == 0)
    {
      (*(*v39 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v45);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v32);
}

unint64_t re::ecs2::PerformInlineDeformationsSystem::willAddSceneToECSService(re::ecs2::PerformInlineDeformationsSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 54);
  v5 = *(this + 110);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 448);
    }

    else
    {
      v6 = *(this + 57);
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
    v7 = (this + 448);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 57);
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
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 424, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::init(v12, this + 304, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 45, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 424, v44);
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
  v14 = *(this + 43);
  *&v51 = 0;
  v15 = *(this + 39);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,4ul>::setBucketsCapacity(this + 38, (v14 + 4) >> 2);
    v15 = *(this + 39);
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

  if (*(this + 320))
  {
    v16 = this + 328;
  }

  else
  {
    v16 = *(this + 42);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 43);
  ++*(this + 88);
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
  v23 = *(this + 43);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::init(v24, this + 304, v52);
  *&v62[0] = *(this + 43) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 45, &v52, v62);
  v25 = *(this + 43);
  v26 = *(this + 58);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 58) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 424), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 58) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 440))
    {
      v30 = this + 448;
    }

    else
    {
      v30 = *(this + 57);
    }

    *&v30[8 * *(this + 54) - 8] &= v28;
  }

  v31 = *(this + 43);
  v32 = *(this + 64);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 64) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 472), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 64) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 488))
    {
      v36 = this + 496;
    }

    else
    {
      v36 = *(this + 63);
    }

    *&v36[8 * *(this + 60) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 472, v13);
  if (*(this + 536) == 1)
  {
    v38 = *(this + 65);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 304);
  }

  return result;
}

uint64_t re::ecs2::PerformInlineDeformationsSystem::willRemoveSceneFromECSService(re::ecs2::PerformInlineDeformationsSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 45, &v15);
  if (result != -1)
  {
    v4 = *(this + 46) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 424, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 472, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 360, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_InlineDeformationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_209, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_209))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4DC0, "InlineDeformationComponent");
    __cxa_guard_release(&_MergedGlobals_209);
  }

  return &unk_1EE1A4DC0;
}

void re::ecs2::initInfo_InlineDeformationComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xFB546C5BFFCACBCCLL;
  v16[1] = "InlineDeformationComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A4D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D00))
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
    qword_1EE1A4CF8 = v14;
    __cxa_guard_release(&qword_1EE1A4D00);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4CF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::InlineDeformationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::InlineDeformationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::InlineDeformationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::InlineDeformationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226InlineDeformationComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::InlineDeformationComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF138;
}

void re::internal::defaultConstructV2<re::ecs2::InlineDeformationComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF138;
}

void *re::ecs2::allocInfo_PerformInlineDeformationsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4E50, "PerformInlineDeformationsSystem");
    __cxa_guard_release(&qword_1EE1A4D08);
  }

  return &unk_1EE1A4E50;
}

void re::ecs2::initInfo_PerformInlineDeformationsSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x1E1E890095C7C018;
  v8[1] = "PerformInlineDeformationsSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x22000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PerformInlineDeformationsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PerformInlineDeformationsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PerformInlineDeformationsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PerformInlineDeformationsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PerformInlineDeformationsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PerformInlineDeformationsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PerformInlineDeformationsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::PerformInlineDeformationsSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 38);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::PerformInlineDeformationsSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 38);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::InlineDeformationComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::InlineDeformationComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void re::ecs2::PerformInlineDeformationsSystem::~PerformInlineDeformationsSystem(re::ecs2::PerformInlineDeformationsSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ActiveDeformationData::create(re *a1, uint64_t a2)
{
  v9[5] = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v4 = (*(*a2 + 32))(a2, 104, 8);
  active = re::ActiveDeformationData::ActiveDeformationData(v4, a1, a2);
  v6 = re::globalAllocators(active)[2];
  v9[0] = &unk_1F5CECAA0;
  v9[3] = v6;
  v9[4] = v9;
  v7 = (*(*a2 + 16))(a2, v4, v9);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v9);
  return v7;
}

void *re::internal::Callable<re::ecs2::anonymous namespace::performInlineDeformation(re::ecs2::Entity *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEC8E8;
  return result;
}

void *re::internal::Callable<re::ecs2::anonymous namespace::performInlineDeformation(re::ecs2::Entity *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEC8E8;
  return result;
}

uint64_t re::ActiveDeformationData::ActiveDeformationData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  re::BucketArray<re::ActiveDeformation,8ul>::init(a1 + 8, a3, 1uLL);
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 64) = a3;
  re::DynamicArray<re::DeformationView>::setCapacity((a1 + 64), 8uLL);
  ++*(a1 + 88);
  return a1;
}

_anonymous_namespace_ *re::BucketArray<re::ActiveDeformation,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ActiveDeformation,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ActiveDeformation,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
        v5 = (*(**v3 + 32))(*v3, 3200, 0);
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

void *re::DynamicArray<re::DeformationView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x110uLL))
        {
          v2 = 272 * a2;
          result = (*(*result + 32))(result, 272 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 272, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v26, v28);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v27, v29);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 272 * v9);
        v11 = v7 + 16;
        v12 = (v8 + 128);
        do
        {
          v13 = *(v12 - 7);
          *(v11 - 8) = *(v12 - 8);
          *(v11 - 7) = v13;
          v15 = *(v12 - 4);
          v14 = *(v12 - 3);
          v16 = *(v12 - 5);
          *(v11 - 16) = *(v12 - 16);
          *(v11 - 4) = v15;
          *(v11 - 3) = v14;
          *(v11 - 5) = v16;
          *(v11 - 6) = *(v12 - 6);
          v17 = *(v12 - 16);
          *(v11 - 16) = v17;
          if (v17 == 1)
          {
            v18 = *v12;
            v19 = v12[1];
            v20 = v12[3];
            *(v11 + 2) = v12[2];
            *(v11 + 3) = v20;
            *v11 = v18;
            *(v11 + 1) = v19;
          }

          v21 = v12 - 8;
          v22 = *(v12 + 64);
          *(v11 + 64) = v22;
          if (v22 == 1)
          {
            v23 = v12[5];
            v24 = v12[6];
            v25 = v12[8];
            *(v11 + 7) = v12[7];
            *(v11 + 8) = v25;
            *(v11 + 5) = v23;
            *(v11 + 6) = v24;
          }

          v11 += 34;
          v12 += 17;
        }

        while (v21 + 17 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::ActiveDeformationData::create(re::FrameCount,re::PerFrameAllocator *)::{lambda(void *)#1},void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  re::DynamicArray<unsigned long>::deinit(*a2 + 64);
  re::BucketArray<re::ActiveDeformation,8ul>::deinit(v2 + 8);

  return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 8);
}

void *re::internal::Callable<re::ActiveDeformationData::create(re::FrameCount,re::PerFrameAllocator *)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CECAA0;
  return result;
}

void *re::internal::Callable<re::ActiveDeformationData::create(re::FrameCount,re::PerFrameAllocator *)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CECAA0;
  return result;
}

uint64_t re::BucketArray<re::ActiveDeformation,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ActiveDeformation,8ul>::operator[](a1, i);
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

unint64_t re::BucketArray<re::ActiveDeformation,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v5 + 8 * v2) + 400 * (a2 & 7);
}

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

  return *(v5 + 8 * v2) + 400 * (a2 & 7);
}

id re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(_anonymous_namespace_ *this, id *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4);
  result = *a2;
  *(v5 + 8 * v4) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::ecs2::MeshSmoothSystem *re::ecs2::MeshSmoothSystem::MeshSmoothSystem(re::ecs2::MeshSmoothSystem *this)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CEDBF8;
  *(this + 32) = 0;
  *(this + 33) = &unk_1F5CEDB90;
  *(this + 34) = this;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  v9[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v9[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v8[0] = v9;
  v8[1] = 2;
  v3 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 280), v8);
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 80) = 1;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 41) = 0;
  *(this + 88) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 1;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 60) = 0;
  *(this + 122) = 1;
  *(this + 521) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 424), 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 472), 0);
  *(this + 122) += 2;
  *(this + 64) = 0;
  *(this + 65) = this;
  *(this + 66) = this + 264;
  *(this + 536) = 1;
  return this;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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
        v5 = (*(**v3 + 32))(*v3, 448, 0);
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

re::ecs2::JiggleSystem *re::ecs2::JiggleSystem::JiggleSystem(re::ecs2::JiggleSystem *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF1218;
  *(this + 32) = &unk_1F5CF11B0;
  *(this + 33) = this;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 272), v4);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 296, this, this + 256, 1);
  return this;
}

uint64_t re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  v8 = (a1 + 120);
  *(a1 + 104) = 0u;
  *(a1 + 56) = 0u;
  v9 = (a1 + 56);
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 217) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  v12 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v8, 0);
  *(a1 + 136) += 2;
  *(a1 + 160) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 168), 0);
  *(a1 + 184) += 2;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;
  *(a1 + 232) = a4;
  return a1;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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
        v5 = (*(**v3 + 32))(*v3, 448, 0);
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

re::ecs2::WrapSystem *re::ecs2::WrapSystem::WrapSystem(re::ecs2::WrapSystem *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CFA818;
  *(this + 32) = &unk_1F5CFA7C0;
  *(this + 33) = this;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 272), v4);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 296, this, this + 256, 1);
  return this;
}

re::ecs2::VertexCacheSystem *re::ecs2::VertexCacheSystem::VertexCacheSystem(re::ecs2::VertexCacheSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF4138;
  *(this + 32) = 0;
  v3 = re::ecs2::VertexCacheComponentStateImpl::VertexCacheComponentStateImpl((this + 264), this);
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 80) = 1;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 41) = 0;
  *(this + 88) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 1;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 60) = 0;
  *(this + 122) = 1;
  *(this + 521) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 424), 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 472), 0);
  *(this + 122) += 2;
  *(this + 64) = 0;
  *(this + 65) = this;
  *(this + 66) = this + 264;
  *(this + 536) = 1;
  return this;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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
        v5 = (*(**v3 + 32))(*v3, 448, 0);
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

re::ecs2::SubdivisionSurfaceSystem *re::ecs2::SubdivisionSurfaceSystem::SubdivisionSurfaceSystem(re::ecs2::SubdivisionSurfaceSystem *this)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CFDD00;
  *(this + 32) = &unk_1F5CFDCA8;
  *(this + 33) = this;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  v4[1] = 1;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v4[0] = v5;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 272), v4);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 296, this, this + 256, 1);
  return this;
}

re::ecs2::CustomDeformerSystem *re::ecs2::CustomDeformerSystem::CustomDeformerSystem(re::ecs2::CustomDeformerSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF1B00;
  v3 = re::ecs2::CustomDeformerSystemComponentStateImpl::CustomDeformerSystemComponentStateImpl(this + 32, this);
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 78) = 1;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 40) = 0;
  *(this + 86) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 1;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 59) = 0;
  *(this + 120) = 1;
  *(this + 513) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 416), 0);
  *(this + 108) += 2;
  *(this + 57) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 464), 0);
  *(this + 120) += 2;
  *(this + 63) = 0;
  *(this + 64) = this;
  *(this + 65) = this + 256;
  *(this + 528) = 1;
  return this;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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
        v5 = (*(**v3 + 32))(*v3, 448, 0);
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

re::ecs2::DynamicBoundingBoxSystem *re::ecs2::DynamicBoundingBoxSystem::DynamicBoundingBoxSystem(re::ecs2::DynamicBoundingBoxSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF4538;
  re::ecs2::DynamicBoundingBoxComponentStateImpl::DynamicBoundingBoxComponentStateImpl(this + 32, this);
  v3 = re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 296, this, this + 256, 1);
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 71) = 0x7FFFFFFF00000000;
  *(this + 144) = 0;
  return this;
}

re::ecs2::PerformDeformationSystem *re::ecs2::PerformDeformationSystem::PerformDeformationSystem(re::ecs2::PerformDeformationSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF7C40;
  re::ecs2::PerformDeformationSystemComponentStateImpl::PerformDeformationSystemComponentStateImpl((this + 256), this);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 376, this, this + 256, 1);
  return this;
}

re::ecs2::DeformedDirectMeshSystem *re::ecs2::DeformedDirectMeshSystem::DeformedDirectMeshSystem(re::ecs2::DeformedDirectMeshSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF64D8;
  *(this + 32) = 0;
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 264, this, this + 504, 1);
  re::ecs2::DeformedDirectMeshComponentStateImpl::DeformedDirectMeshComponentStateImpl((this + 504));
  *(this + 544) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  return this;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEC940;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEC998;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEC9F0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CECA48;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
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
        *v37 = &unk_1F5CEC940;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEC998;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEC9F0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CECA48;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC940;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC940;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC998;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC998;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC9F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC9F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECA48;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECA48;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226InlineDeformationComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::RenderPassGroupManagerStateTracking *re::ecs2::RenderPassGroupManagerStateTracking::RenderPassGroupManagerStateTracking(re::ecs2::RenderPassGroupManagerStateTracking *this, re::EntitlementManager *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::HierarchyStateTracking(this);
  *v4 = &unk_1F5CECAF8;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0;
  *(v4 + 360) = 0;
  *(v4 + 368) = a2;
  *(v4 + 376) = 0;
  v7[0] = re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v7[1] = re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v7[2] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v6[0] = v7;
  v6[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v4 + 304), v6);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CECBF0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

void re::ecs2::RenderPassGroupManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v94 = *MEMORY[0x1E69E9840];
  if (*(a1 + 352) != 1)
  {
    goto LABEL_35;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 0;
    v5 = (*(a1 + 24) + 8);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a1 + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 == v3)
  {
    goto LABEL_35;
  }

  v7 = &unk_1EE187000;
  v8 = *(a1 + 40);
  v79 = v8;
  do
  {
    v9 = *(*(v2 + 24) + 24 * v4 + 16);
    v10 = *(v7[394] + 16);
    if (*(v9 + 224) <= v10)
    {
      goto LABEL_27;
    }

    v11 = *(*(v9 + 240) + 8 * v10);
    if (!v11)
    {
      goto LABEL_27;
    }

    v12 = *(v11 + 384);
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = *(v11 + 400);
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      v16 = (*v13 + 32);
      if (!*v16)
      {
        goto LABEL_22;
      }

      WeakRetained = objc_loadWeakRetained((*v13 + 32));
      v18 = WeakRetained;
      if (WeakRetained)
      {
        v19 = WeakRetained - 8;
      }

      else
      {
        v19 = 0;
      }

      if (re::ecs2::EntityComponentCollection::get((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
      {
        v91 = v19;
        a1 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a2, &v91);
        if (!a1)
        {
          if (!v18)
          {
            goto LABEL_22;
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        re::ecs2::EntityHandle::reset(v16);
        objc_destroyWeak(v16);
        *v16 = 0;
      }

      a1 = re::ecs2::Component::markDirty(v15);
      if (v18)
      {
        goto LABEL_21;
      }

LABEL_22:
      v13 += 8;
      v14 -= 8;
    }

    while (v14);
    v8 = *(v2 + 40);
    LODWORD(v3) = v79;
    v7 = &unk_1EE187000;
LABEL_27:
    if (v8 <= v4 + 1)
    {
      v20 = v4 + 1;
    }

    else
    {
      v20 = v8;
    }

    while (v20 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(*(v2 + 24) + 24 * v4 + 8) & 0x80000000) != 0)
      {
        goto LABEL_34;
      }
    }

    LODWORD(v4) = v20;
LABEL_34:
    ;
  }

  while (v4 != v3);
LABEL_35:
  v80 = *(a2 + 32);
  if (v80)
  {
    v21 = 0;
    v22 = (*(a2 + 16) + 8);
    while (1)
    {
      v23 = *v22;
      v22 += 6;
      if (v23 < 0)
      {
        break;
      }

      if (v80 == ++v21)
      {
        LODWORD(v21) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v21) = 0;
  }

  if (v21 != v80)
  {
    v24 = *(a2 + 16);
    do
    {
      v25 = *(v24 + 24 * v21 + 16);
      v26 = *(v2 + 360);
      a1 = re::ecs2::RenderPassGroupService::enableRenderPassGroups(a1);
      if (a1)
      {
        if (!*(v2 + 56) || (v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) >> 27)), v28 = *(*(v2 + 64) + 4 * ((v27 ^ (v27 >> 31)) % *(v2 + 80))), v28 == 0x7FFFFFFF))
        {
LABEL_50:
          (*(**v26 + 8))(&v91);
          if (v91)
          {
            v30 = v92;
          }

          else
          {
            v30 = 0;
          }

          v31 = *(v25 + 32);
          if (v31 && (*(v31 + 304) & 0x80) == 0 && ((v84 = *(v25 + 32), (*(**v26 + 8))(&v91), !v91) ? (v32 = 0) : (v32 = v92), v30 == v32))
          {
            v33 = 0;
            v34 = 0;
            while (1)
            {
              v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27));
              re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v2 + 56, &v84, v35 ^ (v35 >> 31), &v91);
              if (HIDWORD(v92) != 0x7FFFFFFF)
              {
                break;
              }

              v36 = re::ecs2::EntityComponentCollection::get((v84 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v36)
              {
                v37 = v84;
                v34 = *(v84 + 312);
                v33 = *(v36 + 26);
                v25 = v84;
              }

              else
              {
                v38 = re::ecs2::EntityComponentCollection::get((v84 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                v37 = v84;
                if (v38)
                {
                  v33 = 0;
                  v34 = 0;
                  v25 = v84;
                }
              }

              v39 = *(v37 + 32);
              if (v39 && (*(v39 + 304) & 0x80) == 0)
              {
                v84 = *(v37 + 32);
                (*(**v26 + 8))(&v91);
                v40 = v91 ? v92 : 0;
                if (v30 == v40)
                {
                  continue;
                }
              }

              goto LABEL_73;
            }

            v78 = *(v2 + 72) + 40 * HIDWORD(v92);
            v34 = *(v78 + 16);
            v33 = *(v78 + 24);
          }

          else
          {
            v33 = 0;
            v34 = 0;
          }

LABEL_73:
          re::StackScratchAllocator::StackScratchAllocator(&v91);
          v84 = 0;
          v85 = 0;
          v86 = 1;
          v88 = 0;
          v89 = 0;
          v87 = 0;
          v90 = 0;
          re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::init(&v84, &v91, 1uLL);
          v41 = re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::addUninitialized(&v84);
          *v41 = v25;
          *(v41 + 8) = v34;
          *(v41 + 16) = v33;
          *(v41 + 24) = v30;
          v42 = v89;
          do
          {
LABEL_74:
            if (!v42)
            {
              while (v85)
              {
                re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v84);
              }

              if (v84 && (v86 & 1) == 0)
              {
                (*(*v84 + 40))();
              }

              re::StackScratchAllocator::~StackScratchAllocator(&v91);
              goto LABEL_130;
            }

            v43 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v84, --v42);
            v44 = v43[1];
            v82 = *v43;
            v83 = v44;
            re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v84, v42);
            v89 = v42;
            ++v90;
          }

          while ((*(v82 + 304) & 1) == 0);
          v45 = re::ecs2::EntityComponentCollection::get((v82 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v45)
          {
            v46 = v45;
LABEL_78:
            if (*(v46 + 25) == 1)
            {
              v47 = 0;
              v48 = 0;
            }

            else
            {
              v47 = *(*(v46 + 16) + 312);
              v48 = *(v46 + 26);
            }

            *(&v82 + 1) = v47;
            LOBYTE(v83) = v48;
          }

          else
          {
            v49 = re::ecs2::EntityComponentCollection::get((v82 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v49)
            {
              v51 = *(v49 + 32);
              v50 = (v49 + 32);
              if (v51)
              {
                v52 = objc_loadWeakRetained(v50);
                if (v52)
                {
                  v53 = v52;
                  v46 = re::ecs2::EntityComponentCollection::get((v52 + 40), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);

                  if (v46)
                  {
                    goto LABEL_78;
                  }
                }
              }
            }
          }

          if (v83 == 1 && re::internal::render_on_top::never_use_this::g_enableRenderOnTopEntitlement == 1)
          {
            v54 = v82;
            if ((atomic_load_explicit(&qword_1EE1A4EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4EE8))
            {
              re::Defaults::BOOLValue(buf, "enableRenderOnTopSPIEntitlement", v75);
              if (buf[0])
              {
                v76 = buf[1];
              }

              else
              {
                v76 = 1;
              }

              _MergedGlobals_210 = v76;
              __cxa_guard_release(&qword_1EE1A4EE8);
            }

            if (_MergedGlobals_210 == 1)
            {
              v55 = *(v54 + 216);
              if (v55)
              {
                OwnerPeerID = *(v55 + 32);
                if (OwnerPeerID)
                {
                  OwnerPeerID = RESyncableGetOwnerPeerID();
                }

                if (!*(v2 + 368))
                {
                  v57 = *re::graphicsLogObjects(OwnerPeerID);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    v72 = *(v82 + 288);
                    if (v72 < 0xFFFFFFFFFFFFFFFELL || (v72 & 1) != 0 || (v73 = "missing name", **(v82 + 296)))
                    {
                      v73 = *(v82 + 296);
                    }

                    v74 = *(v82 + 312);
                    *buf = 134218242;
                    *&buf[4] = v74;
                    *&buf[12] = 2080;
                    *&buf[14] = v73;
                    _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, "Entity %llu (%s) is marked for RenderOnTop but failed entitlement check", buf, 0x16u);
                  }

                  LOBYTE(v83) = 0;
                }
              }
            }
          }

          v59 = *(&v82 + 1);
          v58 = v82;
          if (*(&v82 + 1))
          {
            v60 = v83;
            memset(buf, 0, sizeof(buf));
            v61 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v82 ^ (v82 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v82 ^ (v82 >> 30))) >> 27));
            re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v2 + 56, &v82, v61 ^ (v61 >> 31), buf);
            if (*&buf[12] == 0x7FFFFFFF)
            {
              v62 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v2 + 56, *&buf[8], *buf);
              v58 = v82;
              *(v62 + 8) = v82;
              *(v62 + 16) = v59;
              *(v62 + 24) = v60;
              ++*(v2 + 96);
            }

            else
            {
              v58 = v82;
            }
          }

          v63 = *(v58 + 344);
          if (v63)
          {
            v64 = *(v58 + 360);
            v65 = 8 * v63;
            do
            {
              v67 = *v64++;
              v66 = v67;
              (*(**v26 + 8))(buf);
              if (buf[0])
              {
                v68 = *&buf[8];
              }

              else
              {
                v68 = 0;
              }

              if (*(&v83 + 1) == v68)
              {
                v69 = *(&v82 + 1);
              }

              else
              {
                v69 = 0;
              }

              if (*(&v83 + 1) == v68)
              {
                v70 = v83;
              }

              else
              {
                v70 = 0;
              }

              v71 = re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::addUninitialized(&v84);
              *v71 = v66;
              *(v71 + 8) = v69;
              *(v71 + 16) = v70;
              *(v71 + 24) = v68;
              v65 -= 8;
            }

            while (v65);
            v42 = v89;
          }

          goto LABEL_74;
        }

        v29 = *(v2 + 72);
        while (*(v29 + 40 * v28 + 8) != v25)
        {
          v28 = *(v29 + 40 * v28) & 0x7FFFFFFF;
          if (v28 == 0x7FFFFFFF)
          {
            goto LABEL_50;
          }
        }
      }

LABEL_130:
      v77 = *(a2 + 32);
      v24 = *(a2 + 16);
      if (v77 <= v21 + 1)
      {
        v77 = v21 + 1;
      }

      while (v77 - 1 != v21)
      {
        LODWORD(v21) = v21 + 1;
        if ((*(v24 + 24 * v21 + 8) & 0x80000000) != 0)
        {
          goto LABEL_136;
        }
      }

      LODWORD(v21) = v77;
LABEL_136:
      ;
    }

    while (v21 != v80);
  }

  *(v2 + 352) = 0;
}

void re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::clearEntityHierarchyStateData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    if (*(a1 + 296) != *(a1 + 96))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 248);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v15, v21, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = a2;
    for (i = v19; v19; i = v19)
    {
      v14 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, --v19);
      ++v20;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v14))
      {
        v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
        re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1 + 56, &v14, v5 ^ (v5 >> 31), v22);
        v6 = v24;
        if (v24 != 0x7FFFFFFF)
        {
          v7 = *(a1 + 72);
          v8 = *(v7 + 40 * v24) & 0x7FFFFFFF;
          if (v25 == 0x7FFFFFFF)
          {
            *(*(a1 + 64) + 4 * v23) = v8;
            v6 = v24;
          }

          else
          {
            *(v7 + 40 * v25) = *(v7 + 40 * v25) & 0x80000000 | v8;
          }

          v9 = *(a1 + 96);
          *(v7 + 40 * v6) = *(a1 + 92);
          --*(a1 + 84);
          *(a1 + 92) = v6;
          *(a1 + 96) = v9 + 1;
        }

        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 248, &v14);
        v10 = *(v14 + 344);
        if (v10)
        {
          v11 = *(v14 + 360);
          v12 = 8 * v10;
          do
          {
            v13 = *v11++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = v13;
            v12 -= 8;
          }

          while (v12);
        }
      }
    }

    *(a1 + 296) = *(a1 + 96);
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v15);
    if (v15[0])
    {
      if ((v16 & 1) == 0)
      {
        (*(*v15[0] + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void re::ecs2::RenderPassGroupManager::updateGroupData(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  a1[46] = a2;
  a1[48] = a3;
  (*(v3 + 32))(a1 + 1, a1 + 14);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v4 + 13));
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v4 + 25));
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v4 + 31));
  v4[45] = 0;
  v4[47] = 0;
}

double re::ecs2::RenderPassGroupManager::addBoundsTable(uint64_t a1, StringID *a2, uint64_t a3, uint64_t a4)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFFLL;
  if (*(a1 + 440) < (a3 & 0xFFFFFFFFFFFFFFFuLL))
  {
    re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 392);
    *(a1 + 440) = v8;
  }

  v10 = *a4;
  v9 = *(a4 + 8);
  v19 = *a4;
  *a4 = 0u;
  v11 = *(a4 + 16);
  v18 = v9;
  v20 = v9;
  v21 = v11;
  *(a4 + 16) = 0;
  v12 = *(a4 + 24);
  v13 = *(a4 + 28);
  *&v22 = __PAIR64__(v13, v12);
  v15 = *(a4 + 32);
  v14 = *(a4 + 36);
  *(&v22 + 1) = __PAIR64__(v14, v15);
  *(a4 + 24) = xmmword_1E3058120;
  v23 = 1;
  v25 = 0;
  v24 = 0u;
  re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v24, a1 + 392, a2);
  if (HIDWORD(v24) == 0x7FFFFFFF)
  {
    v16 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 392, DWORD2(v24), v24);
    re::StringID::StringID((v16 + 8), a2);
    *(v16 + 24) = a3;
    *(v16 + 32) = v10;
    v19 = 0;
    v20 = 0;
    *(v16 + 40) = v18;
    *(v16 + 48) = v11;
    v21 = 0;
    *(v16 + 56) = v12;
    *(v16 + 60) = v13;
    *(v16 + 64) = v15;
    *(v16 + 68) = v14;
    v22 = xmmword_1E3058120;
    *(v16 + 72) = 1;
    ++*(a1 + 432);
  }

  return re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v19);
}

void re::ecs2::RenderPassGroupManager::mergeBoundsTable(uint64_t a1, StringID *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 440) == (a3 & 0xFFFFFFFFFFFFFFFLL) && (re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v28, a1 + 392, a2), HIDWORD(v29) != 0x7FFFFFFF))
  {
    v8 = *(a4 + 32);
    if (v8)
    {
      v9 = 0;
      v10 = *(a4 + 16);
      while (1)
      {
        v11 = *v10;
        v10 += 20;
        if (v11 < 0)
        {
          break;
        }

        if (v8 == ++v9)
        {
          LODWORD(v9) = *(a4 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (v9 != v8)
    {
      v12 = *(a1 + 408) + 80 * HIDWORD(v29);
      v13 = *(a4 + 16);
      do
      {
        v14 = v13 + 80 * v9;
        v16 = *(v14 + 8);
        v15 = v14 + 8;
        v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v12 + 32, v15, v17 ^ (v17 >> 31), &v28);
        if (HIDWORD(v29) == 0x7FFFFFFF)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v18 = 0xBF58476D1CE4E5B9 * (*v15 ^ (*v15 >> 30));
          re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v12 + 32, v15, (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), &v28);
          if (HIDWORD(v29) == 0x7FFFFFFF)
          {
            v19 = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v12 + 32, v29, v28);
            *(v19 + 8) = *v15;
            v20 = *(v15 + 8);
            v21 = *(v15 + 40);
            *(v19 + 32) = *(v15 + 24);
            *(v19 + 48) = v21;
            *(v19 + 16) = v20;
            ++*(v12 + 72);
          }
        }

        else
        {
          v22 = *(v12 + 48) + 80 * HIDWORD(v29);
          v23 = *(v15 + 8);
          v24 = *(v22 + 16);
          v25 = *(v22 + 32);
          v24.i32[3] = 0;
          v23.i32[3] = 0;
          *(v22 + 16) = vminnmq_f32(v24, v23);
          v26 = *(v15 + 24);
          v25.i32[3] = 0;
          v26.i32[3] = 0;
          *(v22 + 32) = vmaxnmq_f32(v25, v26);
          *(v22 + 48) |= *(v15 + 40);
        }

        if (*(a4 + 32) <= (v9 + 1))
        {
          v27 = v9 + 1;
        }

        else
        {
          v27 = *(a4 + 32);
        }

        v13 = *(a4 + 16);
        while (v27 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(v13 + 80 * v9) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }
        }

        LODWORD(v9) = v27;
LABEL_26:
        ;
      }

      while (v9 != v8);
    }
  }

  else
  {

    re::ecs2::RenderPassGroupManager::addBoundsTable(a1, a2, a3, a4);
  }
}

uint64_t re::ecs2::RenderPassGroupManager::boundsTable(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFFFLL;
  if (*(a1 + 440) < (a3 & 0xFFFFFFFFFFFFFFFuLL))
  {
    re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 392);
    *(a1 + 440) = v6;
  }

  re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11, a1 + 392, a2);
  if (v12 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 408) + 80 * v12;
  v9 = *(v8 + 24) ^ a3;
  v10 = v8 + 32;
  if ((v9 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t re::ecs2::RenderPassGroupManager::computeCanUseRenderPassGroupsForSorting(uint64_t a1, unint64_t a2, StringID *a3, uint64_t a4, int a5, int a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v11 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 64, &v19);
  if (v11)
  {
    v12 = *(v11 + 8) ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = re::ecs2::EntityComponentCollection::get((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = a6 & ~a5 & v12;
  }

  if (v14 == 1 && (*&a3->var0 < 0xFFFFFFFFFFFFFFFELL || (*&a3->var0 & 1) != 0 || *a3->var1))
  {
    v15 = *(a1 + 496);
    v16 = a4 & 0xFFFFFFFFFFFFFFFLL;
    if (v15 == (a4 & 0xFFFFFFFFFFFFFFFLL) && (v13 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v23, a1 + 448, a3), DWORD1(v24) != 0x7FFFFFFF))
    {
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(*(a1 + 464) + 80 * DWORD1(v24) + 32, &v19);
    }

    else
    {
      if (v15 < v16)
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 448);
        *(a1 + 496) = v16;
      }

      v30[0] = v19;
      memset(v20, 0, sizeof(v20));
      v21 = 0;
      v22 = 0x7FFFFFFFLL;
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v20, v30);
      v23 = a4;
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::HashSetBase(&v24, v20);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v27, a1 + 448, a3);
      if (HIDWORD(v28) == 0x7FFFFFFF)
      {
        v17 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 448, v28, v27);
        re::StringID::StringID((v17 + 8), a3);
        *(v17 + 24) = v23;
        *(v17 + 72) = 0;
        *(v17 + 32) = v24;
        v24 = 0uLL;
        *(v17 + 48) = v25;
        v25 = 0;
        *(v17 + 56) = v26;
        v26 = xmmword_1E3058120;
        ++*(a1 + 488);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v24);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v20);
    }
  }

  return v14 ^ 1u;
}

uint64_t re::ecs2::RenderPassGroupManager::getPerFrameDisqualifiedEntities@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFFLL;
  if (*(a1 + 496) < (a3 & 0xFFFFFFFFFFFFFFFuLL))
  {
    re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 448);
    *(a1 + 496) = v8;
  }

  result = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v13, a1 + 448, a2);
  if (v14 == 0x7FFFFFFF || (v10 = *(a1 + 464) + 80 * v14, v12 = *(v10 + 24), v11 = v10 + 24, ((v12 ^ a3) & 0xFFFFFFFFFFFFFFFLL) != 0))
  {
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 36) = 0x7FFFFFFF;
  }

  else
  {

    return re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::HashSetBase(a4, v11 + 8);
  }

  return result;
}

void re::ecs2::RenderPassGroupManagerStateTracking::~RenderPassGroupManagerStateTracking(re::ecs2::RenderPassGroupManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::RenderPassGroupManager::~RenderPassGroupManager(re::ecs2::RenderPassGroupManager *this)
{
  re::ecs2::RenderPassGroupManager::~RenderPassGroupManager(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 56);
  re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 49);
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::~HierarchyStateTracking(this + 1);
}

uint64_t re::ecs2::RenderPassGroupManager::registerScene(re::ecs2::RenderPassGroupManager *this, re::EventBus **a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track entity state changes.");
    __break(1u);
  }

  v4 = (this + 8);
  v44[0] = 0;
  v44[1] = 0;
  v45 = 1;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v52 = re::globalAllocators(v5)[2];
      v10 = (*(*v52 + 32))(v52, 32, 0);
      *v10 = &unk_1F5CECC30;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CECD38;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v53 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v51, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v25)[2];
  v26 = (*(*v52 + 32))(v52, 32, 0);
  *v26 = &unk_1F5CECD90;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v53 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v51, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v31)[2];
  v32 = (*(*v52 + 32))(v52, 32, 0);
  *v32 = &unk_1F5CECDE8;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v53 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v51, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v51);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v50, v44);
  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  v39 = *(this + 10);
  if (v39)
  {
    v40 = v38 % v39;
    v41 = *(*(this + 3) + 4 * (v38 % v39));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(this + 4);
      if (*(v42 + 24 * v41 + 16) == v50)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v41) = *(v42 + 24 * v41 + 8) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v42 + 24 * v41 + 16) == v50)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 16, v40, v38, &v50, &v50);
  ++*(this + 14);
LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v44);
  result = v44[0];
  if (v44[0])
  {
    if ((v45 & 1) == 0)
    {
      return (*(*v44[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::RenderPassGroupManager::unregisterScene(re::ecs2::RenderPassGroupManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, v12[1]);
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

BOOL re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 80 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 80 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 80 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        v8 = v12;
        v13 = *(v10 + 80 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 80 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v29, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 3) >> 31) ^ (*(v17 - 3) >> 1));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                v21 = *(v17 - 3);
                *(v20 + 8) = *(v20 + 8) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                *(v20 + 8) = *(v17 - 3) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                *(v20 + 16) = *(v17 - 2);
                *(v17 - 3) = 0;
                *(v17 - 2) = &str_67;
                v22 = *(v17 - 1);
                *(v20 + 32) = 0u;
                v20 += 32;
                *(v20 - 8) = v22;
                *(v20 + 16) = 0u;
                *(v20 + 32) = 0;
                *(v20 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v20, v17);
              }

              v17 += 10;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v29);
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
    v24 = *(v23 + 80 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 80 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 80 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 80 * v4;
}

double re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 8));
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

double re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 8);
    re::StringID::destroyString((a1 + 2));

    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CECBF0;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

double re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 8));
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

double re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 8);
    re::StringID::destroyString((a1 + 2));

    return re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
  }

  return result;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CECC88;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CECCE0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECC30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECC30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECC88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECC88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECCE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECCE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECD38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECD38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECD90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECD90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECDE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECDE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 1024, 0);
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

uint64_t re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
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
  return v5 + 32 * (v2 & 0x1F);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

void re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v29, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 3) >> 31) ^ (*(v17 - 3) >> 1));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                v21 = *(v17 - 3);
                *(v20 + 8) = *(v20 + 8) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                *(v20 + 8) = *(v17 - 3) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                *(v20 + 16) = *(v17 - 2);
                *(v17 - 3) = 0;
                *(v17 - 2) = &str_67;
                v22 = *(v17 - 1);
                *(v20 + 32) = 0u;
                v20 += 32;
                *(v20 - 8) = v22;
                *(v20 + 16) = 0u;
                *(v20 + 32) = 0;
                *(v20 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v20, v17);
              }

              v17 += 10;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v29);
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
    v24 = *(v23 + 80 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 80 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 80 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 80 * v4;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 80 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 80 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 80 * v8) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24), *(v7 + v5 + 64));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        v9 = *(v8 + 16);
        v10 = *(v8 + 48);
        *(result + 32) = *(v8 + 32);
        *(result + 48) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

void re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void *re::ecs2::allocInfo_ClusterShadowSeparatorComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_211, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_211))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4F58, "ClusterShadowSeparatorComponent");
    __cxa_guard_release(&_MergedGlobals_211);
  }

  return &unk_1EE1A4F58;
}

void re::ecs2::initInfo_ClusterShadowSeparatorComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x4E424AB8BF52B1A4;
  v16[1] = "ClusterShadowSeparatorComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A4F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F00))
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
    qword_1EE1A4EF8 = v14;
    __cxa_guard_release(&qword_1EE1A4F00);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4EF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClusterShadowSeparatorComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClusterShadowSeparatorComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClusterShadowSeparatorComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClusterShadowSeparatorComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs231ClusterShadowSeparatorComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::ClusterShadowSeparatorComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF978;
}

void re::internal::defaultConstructV2<re::ecs2::ClusterShadowSeparatorComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF978;
}

void *re::ecs2::allocInfo_ClusterShadowMarkerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4FE8, "ClusterShadowMarkerComponent");
    __cxa_guard_release(&qword_1EE1A4F08);
  }

  return &unk_1EE1A4FE8;
}

void re::ecs2::initInfo_ClusterShadowMarkerComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xD5DA40D47753ADD2;
  v16[1] = "ClusterShadowMarkerComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A4F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F18))
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
    qword_1EE1A4F10 = v14;
    __cxa_guard_release(&qword_1EE1A4F18);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4F10;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClusterShadowMarkerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClusterShadowMarkerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClusterShadowMarkerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClusterShadowMarkerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228ClusterShadowMarkerComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::ClusterShadowMarkerComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF810;
}

void re::internal::defaultConstructV2<re::ecs2::ClusterShadowMarkerComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF810;
}

void *re::ecs2::allocInfo_ShadowClusterComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5078, "ShadowClusterComponent");
    __cxa_guard_release(&qword_1EE1A4F20);
  }

  return &unk_1EE1A5078;
}

void re::ecs2::initInfo_ShadowClusterComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xDFE7254011F9DB06;
  v16[1] = "ShadowClusterComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A4F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F30))
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
    qword_1EE1A4F28 = v14;
    __cxa_guard_release(&qword_1EE1A4F30);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4F28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowClusterComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowClusterComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowClusterComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowClusterComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222ShadowClusterComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::ShadowClusterComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF6A8;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 76) = 1;
}

void *re::internal::defaultDestruct<re::ecs2::ShadowClusterComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::ShadowClusterComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF6A8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 76) = 1;
}

void *re::internal::defaultDestructV2<re::ecs2::ShadowClusterComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_ShadowClusterRootComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5108, "ShadowClusterRootComponent");
    __cxa_guard_release(&qword_1EE1A4F38);
  }

  return &unk_1EE1A5108;
}

void re::ecs2::initInfo_ShadowClusterRootComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xE94DDA63926F6F82;
  v16[1] = "ShadowClusterRootComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A4F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F48))
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
    qword_1EE1A4F40 = v14;
    __cxa_guard_release(&qword_1EE1A4F48);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4F40;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowClusterRootComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowClusterRootComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowClusterRootComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowClusterRootComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226ShadowClusterRootComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

float32x4_t re::internal::defaultConstruct<re::ecs2::ShadowClusterRootComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  v3[1].i64[0] = 0;
  v3[1].i8[8] = 0;
  v3->i64[0] = &unk_1F5CE6168;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  v3[2] = vnegq_f32(result);
  v3[3] = result;
  return result;
}

float32x4_t re::internal::defaultConstructV2<re::ecs2::ShadowClusterRootComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  v1[1].i64[0] = 0;
  v1[1].i8[8] = 0;
  v1->i64[0] = &unk_1F5CE6168;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  v1[2] = vnegq_f32(result);
  v1[3] = result;
  return result;
}

void *re::ecs2::allocInfo_ShadowClusterSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5198, "ShadowClusterSystem");
    __cxa_guard_release(&qword_1EE1A4F50);
  }

  return &unk_1EE1A5198;
}

void re::ecs2::initInfo_ShadowClusterSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xCF3FEC89DB6BBED2;
  v8[1] = "ShadowClusterSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x19000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ShadowClusterSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowClusterSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowClusterSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ShadowClusterSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ShadowClusterSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowClusterSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowClusterSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::ShadowClusterSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CECE40;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0;
  *(v3 + 332) = 0x7FFFFFFFLL;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0;
  *(v3 + 380) = 0x7FFFFFFFLL;
  *(v3 + 392) = 1;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::ShadowClusterSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 43);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 37);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::ShadowClusterSystem>(_OWORD *a1)
{
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CECE40;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0;
  *(v1 + 332) = 0x7FFFFFFFLL;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0;
  *(v1 + 380) = 0x7FFFFFFFLL;
  *(v1 + 392) = 1;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::ShadowClusterSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 43);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 37);

  re::ecs2::System::~System(a1);
}

re *re::ecs2::ShadowClusterSystem::willAddSceneToECSService(re *this, re::EventBus **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v2 = a2[36];
  if (v2)
  {
    v4 = this;
    v5 = re::globalAllocators(this)[2];
    v21 = v5;
    v6 = (*(*v5 + 32))(v5, 32, 0);
    *v6 = &unk_1F5CECED0;
    v6[1] = v4;
    v6[2] = re::ecs2::ShadowClusterSystem::onEntityReparented;
    v6[3] = 0;
    v22 = v6;
    Type = re::EventBus::getTypeId<RESceneEntityDidReparentEvent>();
    EventInfo = re::EventBus::addOrGetEventInfo(v2, Type);
    v29 = v5;
    v30 = 0;
    v9 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(v28, v20);
    v26 = re::globalAllocators(v9)[2];
    v27 = 0;
    *&v23[0] = &unk_1F5CECF90;
    v24 = v29;
    v25 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(v23 + 8, v28);
    v27 = v23;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v28);
    v10 = re::EventBus::EventInfo::addSubscription(EventInfo, v23, a2, 0);
    v12 = v11;
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v23);
    *&v23[0] = v10;
    *(&v23[0] + 1) = v12;
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(v4 + 296, &v16, v23);
    v13 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v20);
    v18 = re::globalAllocators(v13)[2];
    v14 = (*(*v18 + 32))(v18, 32, 0);
    *v14 = &unk_1F5CECF38;
    v14[1] = v4;
    v14[2] = re::ecs2::ShadowClusterSystem::onComponentWillRemove;
    v14[3] = 0;
    v19 = v14;
    *&v23[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v17, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    *(&v23[0] + 1) = v15;
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(v4 + 344, &v16, v23);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v17);
  }

  return this;
}

uint64_t re::ecs2::ShadowClusterSystem::onEntityReparented(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  v22 = *(v3 + 240);
  if (v22)
  {
    if (!re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
    {
      if (*a3)
      {
        if (*(*a3 + 240))
        {
          v7 = *(a1 + 248);
          if (v7)
          {
            v8 = (*(*v7 + 40))(v7);
            v21 = 0;
            v18[1] = 0;
            v19 = 0;
            v18[0] = 0;
            v20 = 0;
            re::DynamicArray<re::RigDataValue *>::add(v18, &v22);
            while (v19)
            {
              v9 = *(v21 + 8 * v19-- - 8);
              ++v20;
              v10 = *(v9 + 16);
              v11 = *(v10 + 344);
              if (v11)
              {
                v12 = *(v10 + 360);
                v13 = 8 * v11;
                do
                {
                  v14 = *v12;
                  if (*v12)
                  {
                    v15 = (v14 + 8);
                  }

                  v17 = *(v14 + 240);
                  if (v17)
                  {
                    re::DynamicArray<re::RigDataValue *>::add(v18, &v17);
                  }

                  ++v12;
                  v13 -= 8;
                }

                while (v13);
              }

              v16 = *(v3 + 240);
              if (v16)
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v8 + 8, (v16 + 64));
              }
            }

            if (v18[0] && v21)
            {
              (*(*v18[0] + 40))();
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::ShadowClusterSystem::onComponentWillRemove(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 240);
  if (v2)
  {
    v3 = *(a1 + 248);
    if (v3)
    {
      v4 = (*(*v3 + 40))(v3);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v4 + 8, (v2 + 64));
    }
  }

  return 0;
}

BOOL re::ecs2::ShadowClusterSystem::willRemoveSceneFromECSService(_BOOL8 this, re::ecs2::Scene *a2)
{
  v6 = a2;
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = this;
    v4 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](this + 296, &v6);
    re::EventBus::unsubscribe(v2, *v4, v4[1]);
    v5 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](v3 + 344, &v6);
    re::EventBus::unsubscribe(v2, *v5, v5[1]);
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v3 + 296, &v6);
    return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v3 + 344, &v6);
  }

  return this;
}

uint64_t re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 40 * v6 + 16;
}

void re::ecs2::ShadowClusterSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 392) != 1)
  {
    return;
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    if ((*(v4 + 432) & 0x10) == 0)
    {
      return;
    }
  }

  v5 = *(a1 + 248);
  if (!v5)
  {
    return;
  }

  v6 = *(a3 + 200);
  if (!v6)
  {
    goto LABEL_79;
  }

  v7 = *(a3 + 216);
  v70 = &v7[v6];
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v69 = vnegq_f32(v8);
  do
  {
    v9 = *v7;
    v10 = (*(**(a1 + 248) + 40))(*(a1 + 248), a2);
    v11 = re::ecs2::SceneComponentTable::get((v9 + 200), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v11)
    {
      v12 = *(v11 + 400);
      v13 = *(v11 + 384);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v76[0] = v12;
    v76[1] = v13;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v75);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v74, 3101, a1, v13, 0, 0);
    v14 = (*(**(a1 + 256) + 24))(*(a1 + 256));
    v73 = v14;
    v15 = 8 * v13;
    if (!v13)
    {
      goto LABEL_26;
    }

    v16 = v14;
    v71 = v13;
    v72 = v7;
    v17 = 8 * v13;
    v18 = v12;
    do
    {
      v19 = *v18;
      v20 = (*v18 + 64);
      if (!*v20)
      {
        goto LABEL_19;
      }

      v21 = *(v19[2] + 192);
      (*(*v16 + 8))(&v80, v16);
      v22 = v80.i64[1];
      if (!v80.i8[0])
      {
        v22 = 0;
      }

      v23 = v19[5];
      if (!v21 || v23 != *(v21 + 40))
      {
        v24 = v19[6];
        v19[5] = 0;
        v19[6] = 0;
        v25 = v19[4];
        v19[4] = 0;
        v80.i64[0] = v25;
        v80.i64[1] = v23;
        *&v81 = v24;
        re::AssetHandle::~AssetHandle(&v80);
LABEL_18:
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v10 + 8, v20);
        re::ecs2::Component::markDirty(v19);
        goto LABEL_19;
      }

      if (v19[7] != v22)
      {
        v19[7] = v22;
        goto LABEL_18;
      }

LABEL_19:
      ++v18;
      v17 -= 8;
    }

    while (v17);
    v26 = v15;
    v27 = v12;
    v13 = v71;
    v7 = v72;
    do
    {
      v28 = *v27;
      if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v10 + 8, (*v27 + 64)))
      {
        v28[8] = 0;
        re::ecs2::Component::markDirty(v28);
      }

      ++v27;
      v26 -= 8;
    }

    while (v26);
LABEL_26:
    v80.i64[0] = (*(**(a1 + 272) + 16))(*(a1 + 272));
    if (v13)
    {
      v31 = &v12[v13];
      v32 = v12;
      do
      {
        v29 = *(*v32 + 16);
        if (v29)
        {
          v33 = re::ecs2::RenderOptions::forEntity(&v80, v29);
          v34 = v33[16] ? v33[17] : 1;
          v35 = *v32;
          if (*(*v32 + 76) != v34)
          {
            *(v35 + 76) = v34;
            re::ecs2::Component::markDirty(v35);
          }
        }

        ++v32;
        v15 -= 8;
      }

      while (v15);
      do
      {
        if (*(a1 + 248))
        {
          v67 = *v12;
          if (*(*v12 + 76) == 1 && !*(v67 + 64))
          {
            v36 = *(v67 + 16);
            v37 = v36[24];
            if (v37)
            {
              v38 = *(v37 + 5);
              if (v38)
              {
                v39 = atomic_load((v38 + 896));
                if (v39 == 2 && !re::ecs2::MeshComponentHelper::isMappedToOcclusionPass(v37, v29))
                {
                  v40 = (*(**(a1 + 248) + 40))(*(a1 + 248));
                  (*(*v73 + 8))(&v80);
                  if (v80.i8[0])
                  {
                    v41 = v80.i64[1];
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v42 = v36[4];
                  if (!v42 || (*(v42 + 304) & 0x80) != 0)
                  {
                    re::ecs2::EntityComponentCollection::get((v36 + 6), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                  }

                  else
                  {
                    v43 = re::ecs2::EntityComponentCollection::get((v36 + 6), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                    do
                    {
                      if (!*(v42 + 240))
                      {
                        break;
                      }

                      v44 = v42;
                      (*(*v73 + 8))(&v80);
                      v45 = v80.i8[0] ? v80.i64[1] : 0;
                      if (v41 != v45)
                      {
                        break;
                      }

                      if (re::ecs2::EntityComponentCollection::get((v36 + 6), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
                      {
                        *&v65 = 0x7F0000007FLL;
                        *(&v65 + 1) = 0x7F0000007FLL;
                        v80 = v69;
                        v81 = v65;
                        v66 = *(v40 + 104);
                        *(v40 + 104) = v66 + 1;
                        re::ecs2::ShadowClusterSystem::trySetPhysicsCluster(a1, v36, v66, &v73, &v80);
                        goto LABEL_76;
                      }

                      v46 = re::ecs2::EntityComponentCollection::get((v42 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                      if (v43 && v46 && *(v43 + 40) != *(v46 + 40))
                      {
                        break;
                      }

                      v42 = *(v42 + 32);
                      if (!v42)
                      {
                        v36 = v44;
                        break;
                      }

                      v36 = v44;
                    }

                    while ((*(v42 + 304) & 0x80) == 0);
                  }

                  v82 = 0;
                  v80 = 0u;
                  v81 = 0u;
                  v83 = 0x7FFFFFFFLL;
                  re::ecs2::ShadowClusterSystem::recursivelyCluster(v77, a1, v36, v76, &v73, &v80);
                  if (v78)
                  {
                    v47 = v79;
                    v48 = &v79[10 * v78];
                    do
                    {
                      v49 = v47[2];
                      if (v49)
                      {
                        v50 = v47[4];
                        v51 = &v50[2 * v49];
                        v52.i64[0] = 0x7F0000007FLL;
                        v52.i64[1] = 0x7F0000007FLL;
                        v53 = vnegq_f32(v52);
                        do
                        {
                          v54 = *v50;
                          v55 = v50[1];
                          v50 += 2;
                          v53.i32[3] = 0;
                          v54.i32[3] = 0;
                          v52.i32[3] = 0;
                          v53 = vminnmq_f32(v53, v54);
                          v55.i32[3] = 0;
                          v52 = vmaxnmq_f32(v52, v55);
                        }

                        while (v50 != v51);
                        v56 = vsubq_f32(v52, v53);
                      }

                      else
                      {
                        v56.i64[0] = 0x7F0000007FLL;
                        v56.i32[2] = 127;
                      }

                      v57 = *(v40 + 104);
                      *(v40 + 104) = v57 + 1;
                      v58 = v47[7];
                      if (v58)
                      {
                        v56.i32[3] = 0;
                        v59 = vmaxnmq_f32(v56, 0);
                        v60 = vmulq_f32(v59, v59);
                        v60.f32[0] = sqrtf(v60.f32[2] + vaddv_f32(*v60.f32));
                        v61 = fminf(fminf(v59.f32[0], v59.f32[2]), v59.f32[1]) / fmaxf((v60.f32[0] * 0.5) + (v60.f32[0] * 0.5), 0.0001);
                        v62 = v47[9];
                        v63 = 8 * v58;
                        do
                        {
                          v64 = *v62++;
                          *(v64 + 72) = v61;
                          *(v64 + 64) = v57;
                          re::ecs2::Component::markDirty(v64);
                          v63 -= 8;
                        }

                        while (v63);
                      }

                      v47 += 10;
                    }

                    while (v47 != v48);
                  }

                  re::DynamicArray<re::RigBasicConstraint>::deinit(v77);
                  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v80);
                }
              }
            }
          }
        }

LABEL_76:
        ++v12;
      }

      while (v12 != v31);
    }

    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v74, v29, v30);
    re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v75);
    ++v7;
  }

  while (v7 != v70);
  v5 = *(a1 + 248);
LABEL_79:
  v68 = (*(*v5 + 40))(v5, a2) + 8;

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v68);
}

uint64_t re::ecs2::ShadowClusterSystem::trySetPhysicsCluster(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, float32x4_t *a5)
{
  v10 = a2[30];
  v11 = a2[24];
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = atomic_load((v12 + 896));
      if (v13 != 2)
      {
        return 0;
      }

      v14 = *(a1 + 288);
      v15 = re::AssetHandle::loadedAsset<re::MeshAsset>((v11 + 32));
      v43 = xmmword_1E3047670;
      v44 = xmmword_1E3047680;
      v45 = xmmword_1E30476A0;
      v46 = xmmword_1E30474D0;
      re::MeshAsset::aabbFromMesh(v15, &v43, &v47);
      re::TransformService::worldMatrix(v14, *(v11 + 16), 0, &v43);
      v16 = vcgtq_f32(v47, v48);
      v16.i32[3] = v16.i32[2];
      v17 = vmaxvq_u32(v16);
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      v19 = vmulq_f32(vaddq_f32(v47, v48), v18);
      v20 = v17 < 0;
      if (v17 >= 0)
      {
        v21 = v19.i64[1];
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19.i64[0];
      }

      v23.i64[0] = v22;
      v23.i64[1] = v21;
      v42[0] = vaddq_f32(vsubq_f32(v47, v23), v23);
      v42[1] = vaddq_f32(vsubq_f32(v48, v23), v23);
      re::AABB::transform(v42, &v43, v41);
      v24 = *a5;
      v25 = a5[1];
      v24.i32[3] = 0;
      v26 = v41[0];
      v27 = v41[1];
      v26.i32[3] = 0;
      v25.i32[3] = 0;
      v27.i32[3] = 0;
      *a5 = vminnmq_f32(v24, v26);
      a5[1] = vmaxnmq_f32(v25, v27);
    }
  }

  if (a2[43])
  {
    v28 = 0;
    v29 = 1;
    do
    {
      v30 = re::ecs2::EntityComponentCollection::operator[]((a2 + 40), v28);
      v31 = re::ecs2::ShadowClusterSystem::trySetPhysicsCluster(a1, *v30, a3, a4, a5);
      v28 = v29++;
      if (v31)
      {
        v32 = a2[43] > v28;
      }

      else
      {
        v32 = 0;
      }
    }

    while (v32);
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  (*(**a4 + 8))(&v43);
  if (v43)
  {
    v33 = *(&v43 + 1);
  }

  else
  {
    v33 = 0;
  }

  if (v10)
  {
    v34 = v11 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    if (!v10)
    {
      return 1;
    }

    goto LABEL_31;
  }

  if (!*(v11 + 40))
  {
LABEL_31:
    *(v10 + 76) = 0;
    *(v10 + 64) = 0;
    v39 = *(v10 + 32);
    v40 = *(v10 + 48);
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 32) = 0;
    v43 = v39;
    *&v44 = v40;
    re::AssetHandle::~AssetHandle(&v43);
    goto LABEL_32;
  }

  v36 = vsubq_f32(a5[1], *a5);
  v36.i32[3] = 0;
  v37 = vmaxnmq_f32(v36, 0);
  v38 = vmulq_f32(v37, v37);
  v38.f32[0] = sqrtf(v38.f32[2] + vaddv_f32(*v38.f32));
  *(v10 + 72) = fminf(fminf(v37.f32[0], v37.f32[2]), v37.f32[1]) / fmaxf((v38.f32[0] * 0.5) + (v38.f32[0] * 0.5), 0.0001);
  *(v10 + 64) = a3;
  re::AssetHandle::operator=(v10 + 32, (v11 + 32));
LABEL_32:
  *(v10 + 56) = v33;
  re::ecs2::Component::markDirty(v10);
  return 1;
}

void *anonymous namespace::getScaledWorldAABB(float32x4_t *this, re::ecs2::TransformComponent **a2, re::TransformService *a3, float a4)
{
  v7 = re::AssetHandle::loadedAsset<re::MeshAsset>((a2 + 4));
  v19[0] = xmmword_1E3047670;
  v19[1] = xmmword_1E3047680;
  v19[2] = xmmword_1E30476A0;
  v19[3] = xmmword_1E30474D0;
  re::MeshAsset::aabbFromMesh(v7, v19, &v20);
  re::TransformService::worldMatrix(a3, a2[2], 0, v19);
  v8 = vcgtq_f32(v20, v21);
  v8.i32[3] = v8.i32[2];
  v9 = vmaxvq_u32(v8);
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(vaddq_f32(v20, v21), v10);
  v12 = v9 < 0;
  if (v9 >= 0)
  {
    v13 = v11.i64[1];
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11.i64[0];
  }

  v15.i64[0] = v14;
  v15.i64[1] = v13;
  v18[0] = vaddq_f32(vmulq_n_f32(vsubq_f32(v20, v15), a4), v15);
  v18[1] = vaddq_f32(vmulq_n_f32(vsubq_f32(v21, v15), a4), v15);
  return re::AABB::transform(v18, v19, this);
}

void re::ecs2::ShadowClusterSystem::recursivelyCluster(uint64_t a1, uint64_t a2, void *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  v7 = a3[30];
  v60 = v7;
  if (v7)
  {
    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, 0);
    ++*(a1 + 24);
    (*(**a5 + 8))(&v63);
    if (v63)
    {
      v10 = *(&v63 + 1);
    }

    else
    {
      v10 = 0;
    }

    v11 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (a3[43])
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = re::ecs2::EntityComponentCollection::operator[]((a3 + 40), v13);
        v16 = *v15;
        if (!re::ecs2::EntityComponentCollection::get((*v15 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
        {
          (*(**a5 + 8))(&v63);
          v17 = v63 ? *(&v63 + 1) : 0;
          if (v10 == v17)
          {
            v18 = re::ecs2::EntityComponentCollection::get((v16 + 6), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (!v12 || !v18 || *(v12 + 40) == *(v18 + 40))
            {
              re::ecs2::ShadowClusterSystem::recursivelyCluster(&v63, a2, v16, a4, a5, a6);
              if (v64)
              {
                v19 = 0;
                v20 = 1;
                do
                {
                  re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::add(a1, v65 + 80 * v19);
                  v19 = v20;
                  v40 = v64 > v20++;
                }

                while (v40);
              }

              re::DynamicArray<re::RigBasicConstraint>::deinit(&v63);
            }
          }
        }

        v13 = ++v14;
      }

      while (a3[43] > v14);
    }

    (*(**(a2 + 248) + 32))(&v57);
    v21 = *(&v57 + 1);
    re::ecs2::ShadowClusterSystem::mergeClusters(&v63, a1, a1, *&v57);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1, &v63);
    re::DynamicArray<re::RigBasicConstraint>::deinit(&v63);
    if (*(v7 + 76))
    {
      v22 = (v7 + 64);
      if (*(v7 + 64))
      {
        v23 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a6, (v7 + 64));
        if (!v23)
        {
          v24 = *v22;
          v75 = 0;
          v72.i64[1] = 0;
          v73 = 0;
          v74 = 0;
          v25 = re::DynamicArray<re::AABB>::setCapacity(&v72, 0);
          ++v74;
          v71 = 0;
          v69[1] = 0;
          v69[2] = 0;
          v70 = 0;
          re::DynamicArray<float *>::setCapacity(v69, 0);
          ++v70;
          v26 = *(a2 + 248);
          if (v26)
          {
            (*(*v26 + 32))(&v63);
            v53 = *(&v63 + 1);
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(&v66 + 1);
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v63 + 1);
            v27 = a4[1];
            if (v27)
            {
              v28 = *a4;
              v29 = 8 * v27;
              do
              {
                v30 = *v28;
                v62 = v30;
                if (*(v30 + 64) == v24)
                {
                  v31 = *(*(v30 + 16) + 192);
                  if (v31)
                  {
                    v32 = *(v31 + 40);
                    if (v32)
                    {
                      v33 = atomic_load((v32 + 896));
                      if (v33 == 2)
                      {
                        v34 = *(a2 + 288);
                        v35 = re::AssetHandle::loadedAsset<re::MeshAsset>((v31 + 32));
                        v63 = xmmword_1E3047670;
                        v64 = xmmword_1E3047680;
                        v65 = xmmword_1E30476A0;
                        v66 = xmmword_1E30474D0;
                        re::MeshAsset::aabbFromMesh(v35, &v63, &v77);
                        re::TransformService::worldMatrix(v34, *(v31 + 16), 0, &v63);
                        v36 = vcgtq_f32(v77, v78);
                        v36.i32[3] = v36.i32[2];
                        v37 = vmaxvq_u32(v36);
                        v38.i64[0] = 0x3F0000003F000000;
                        v38.i64[1] = 0x3F0000003F000000;
                        v39 = vmulq_f32(vaddq_f32(v77, v78), v38);
                        v40 = v37 < 0;
                        if (v37 >= 0)
                        {
                          v41 = v39.i64[1];
                        }

                        else
                        {
                          v41 = 0;
                        }

                        if (v40)
                        {
                          v42 = 0;
                        }

                        else
                        {
                          v42 = v39.i64[0];
                        }

                        v43.i64[0] = v42;
                        v43.i64[1] = v41;
                        v76[0] = vaddq_f32(vmulq_n_f32(vsubq_f32(v77, v43), v53), v43);
                        v76[1] = vaddq_f32(vmulq_n_f32(vsubq_f32(v78, v43), v53), v43);
                        re::AABB::transform(v76, &v63, v61);
                        re::DynamicArray<re::AABB>::add(&v72, v61);
                        re::DynamicArray<re::RigDataValue *>::add(v69, &v62);
                      }
                    }
                  }
                }

                ++v28;
                v29 -= 8;
              }

              while (v29);
            }
          }

          re::DynamicArray<re::AABB>::DynamicArray(&v63, &v72);
          re::DynamicArray<char const*>::DynamicArray(&v65 + 8, v69);
          if (v69[0] && v71)
          {
            (*(*v69[0] + 40))();
          }

          if (v72.i64[0] && v75)
          {
            (*(*v72.i64[0] + 40))(v72.i64[0]);
          }

          re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::add(a1, &v63);
          if (*(&v65 + 1))
          {
            if (v68)
            {
              (*(**(&v65 + 1) + 40))();
            }

            v68 = 0;
            v66 = 0uLL;
            *(&v65 + 1) = 0;
            ++v67;
          }

          if (v63)
          {
            if (v65)
            {
              (*(*v63 + 40))();
            }
          }

          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a6, v22);
        }
      }

      else
      {
        v44 = a3[24];
        if (v44 && (v45 = *(v44 + 40)) != 0 && (v46 = atomic_load((v45 + 896)), v46 != 3))
        {
          re::AssetHandle::operator=(v7 + 32, (v44 + 32));
          *(v7 + 56) = v10;
          re::ecs2::Component::markDirty(v7);
          v49 = *(v44 + 40);
          if (v49)
          {
            v50 = atomic_load((v49 + 896));
            if (v50 == 2)
            {
              *&v65 = 0;
              *&v64 = 0;
              v63 = 0uLL;
              DWORD2(v64) = 0;
              re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::resize(&v63);
              v51 = v64;
              v52 = v65;
              re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::operator[](v64);
              re::DynamicArray<re::AABB>::add(v52, &v72);
              re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::operator[](v51);
              re::DynamicArray<re::RigDataValue *>::add((v52 + 40), &v60);
              re::ecs2::ShadowClusterSystem::mergeClusters(&v72, &v63, a1, 0.0);
              re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1, &v72);
              re::DynamicArray<re::RigBasicConstraint>::deinit(&v72);
              re::DynamicArray<re::RigBasicConstraint>::deinit(&v63);
            }
          }
        }

        else
        {
          *(v7 + 64) = 0;
          v47 = *(v7 + 32);
          v48 = *(v7 + 48);
          *(v7 + 40) = 0;
          *(v7 + 48) = 0;
          *(v7 + 32) = 0;
          v63 = v47;
          *&v64 = v48;
          re::AssetHandle::~AssetHandle(&v63);
          *(v7 + 56) = v10;
          re::ecs2::Component::markDirty(v7);
        }
      }
    }

    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v59);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v58);
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

__n128 re::DynamicArray<re::AABB>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AABB>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::ecs2::ShadowClusterSystem::mergeClusters(uint64_t a1, uint64_t *a2, uint64_t *a3, float a4)
{
  v131 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    a2 = a3;
    goto LABEL_8;
  }

  v6 = a2;
  if (!a3[2])
  {
LABEL_8:

    re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::DynamicArray(a1, a2);
    return;
  }

  re::StackScratchAllocator::StackScratchAllocator(v114);
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v113 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v110, v114, 3);
  v109 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v105 = v114;
  re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v105, 0);
  ++v108;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v100 = v114;
  re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v100, 0);
  ++v103;
  v8 = v6[2];
  if (v8)
  {
    v9 = 0;
    v10 = 80 * v8;
    v11 = (v6[4] + 16);
    do
    {
      v12 = *v11;
      v11 += 10;
      v9 += v12;
      v10 -= 80;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = a3[2];
  if (v13)
  {
    v14 = 0;
    v15 = 80 * v13;
    v16 = (a3[4] + 16);
    do
    {
      v17 = *v16;
      v16 += 10;
      v14 += v17;
      v15 -= 80;
    }

    while (v15);
  }

  else
  {
    v14 = 0;
  }

  if (v106 < v9)
  {
    re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v105, v9);
  }

  if (v101 < v14)
  {
    re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v100, v14);
  }

  v18 = v6[2];
  if (v18)
  {
    v19 = v6[4];
    v20 = v19 + 80 * v18;
    v86 = vdupq_n_s32(0x3727C5ACu);
    v89 = vdupq_n_s32(0xB727C5AC);
    do
    {
      v21 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&v110, v19);
      if (!v21)
      {
        v126.i64[0] = v19;
        LODWORD(v93) = HIDWORD(v111);
        v21 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::add(&v110, &v126, &v93);
      }

      v22 = *(v19 + 16);
      v24 = v86;
      v23 = v89;
      if (v22)
      {
        v25 = *v21;
        v26 = *(v19 + 32);
        v27 = &v26[2 * v22];
        do
        {
          v28 = *v26;
          v29 = v26[1];
          v26 += 2;
          v126 = vaddq_f32(v28, v23);
          v127 = vaddq_f32(v29, v24);
          LODWORD(v128) = v25;
          re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::add(&v105, &v126);
          v24 = v86;
          v23 = v89;
        }

        while (v26 != v27);
      }

      v19 += 80;
    }

    while (v19 != v20);
  }

  v30 = a3[2];
  if (v30)
  {
    v31 = a3[4];
    v32 = v31 + 80 * v30;
    v87 = vdupq_n_s32(0x3727C5ACu);
    v90 = vdupq_n_s32(0xB727C5AC);
    do
    {
      v33 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&v110, v31);
      if (!v33)
      {
        v126.i64[0] = v31;
        LODWORD(v93) = HIDWORD(v111);
        v33 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::add(&v110, &v126, &v93);
      }

      v34 = *(v31 + 16);
      v36 = v87;
      v35 = v90;
      if (v34)
      {
        v37 = *v33;
        v38 = *(v31 + 32);
        v39 = &v38[2 * v34];
        do
        {
          v40 = *v38;
          v41 = v38[1];
          v38 += 2;
          v126 = vaddq_f32(v40, v35);
          v127 = vaddq_f32(v41, v36);
          LODWORD(v128) = v37;
          re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::add(&v100, &v126);
          v36 = v87;
          v35 = v90;
        }

        while (v38 != v39);
      }

      v31 += 80;
    }

    while (v31 != v32);
  }

  v42 = HIDWORD(v111);
  v98 = HIDWORD(v111);
  v99 = 0;
  v97 = v114;
  if (HIDWORD(v111))
  {
    v43 = (*(v114[0] + 32))(v114, 8 * HIDWORD(v111), 4);
    v99 = v43;
    if (!v43)
    {
      goto LABEL_110;
    }

    v45 = v43;
    v46 = v42 - 1;
    if (v42 != 1)
    {
      v45 = v43;
      do
      {
        *v45++ = 0x100000000;
        --v46;
      }

      while (v46);
    }

    *v45 = 0x100000000;
    v47 = v98;
    if (v98)
    {
      v48 = 1;
      do
      {
        *v43 = v48 - 1;
        v43 += 2;
      }

      while (v47 > v48++);
    }
  }

  v116[0] = &unk_1F5CECFE8;
  v116[1] = &v97;
  v116[2] = LODWORD(a4);
  v117 = v116;
  v91 = v109;
  v88 = v104;
  re::intersectAABBArrays(v109);
  if (v117 == v116)
  {
    (*(*v117 + 32))(v117);
  }

  else if (v117)
  {
    (*(*v117 + 40))();
  }

  v50 = *v6;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = v50;
  re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v96 = 0x7FFFFFFFLL;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(&v93, v114, 3);
  if (v42)
  {
    for (i = 0; i != v42; ++i)
    {
      if (i == re::UnionFind::findSet(&v97, i))
      {
        v52 = *(a1 + 16);
        v126 = 0uLL;
        v127.i32[2] = 0;
        v127.i64[0] = 0;
        *(&v130 + 1) = 0;
        v128 = 0u;
        v129 = 0u;
        LODWORD(v130) = 0;
        re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::add(a1, &v126);
        if (*(&v128 + 1) && *(&v130 + 1))
        {
          (*(**(&v128 + 1) + 40))();
        }

        if (v126.i64[0] && v128)
        {
          (*(*v126.i64[0] + 40))();
        }

        v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (i ^ (i >> 30))) ^ ((0xBF58476D1CE4E5B9 * (i ^ (i >> 30))) >> 27));
        v54 = v53 ^ (v53 >> 31);
        if (v93)
        {
          v55 = v54 % DWORD2(v94);
          v56 = *(*(&v93 + 1) + 4 * v55);
          if (v56 != 0x7FFFFFFF)
          {
            while (i != *(v94 + 24 * v56 + 4))
            {
              LODWORD(v56) = *(v94 + 24 * v56) & 0x7FFFFFFF;
              if (v56 == 0x7FFFFFFF)
              {
                goto LABEL_64;
              }
            }

            continue;
          }
        }

        else
        {
          LODWORD(v55) = 0;
        }

LABEL_64:
        v57 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v93, v55, v54);
        *(v57 + 4) = i;
        *(v57 + 8) = v52;
        ++HIDWORD(v96);
      }
    }
  }

  v58 = v112;
  if (v112)
  {
    v59 = 0;
    v60 = v111;
    while (1)
    {
      v61 = *v60;
      v60 += 8;
      if (v61 < 0)
      {
        break;
      }

      if (v112 == ++v59)
      {
        LODWORD(v59) = v112;
        break;
      }
    }
  }

  else
  {
    LODWORD(v59) = 0;
  }

  if (v59 != v112)
  {
    v62 = v111;
    while (1)
    {
      v63 = v62 + 32 * v59;
      v126.i32[0] = re::UnionFind::findSet(&v97, *(v63 + 16));
      v64 = *re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](&v93, &v126);
      v67 = *(v63 + 8);
      v66 = (v63 + 8);
      v65 = v67;
      v68 = v67[2];
      if (!v68)
      {
        goto LABEL_80;
      }

      v69 = v65[4];
      v70 = 32 * v68;
      do
      {
        v71 = v69[1];
        v92[0] = *v69;
        v92[1] = v71;
        v72 = *(a1 + 16);
        if (v72 <= v64)
        {
          v115 = 0;
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v126 = 0u;
          v78 = MEMORY[0x1E69E9C10];
          v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v118 = 136315906;
          v119 = "operator[]";
          v120 = 1024;
          if (v79)
          {
            v80 = 3;
          }

          else
          {
            v80 = 2;
          }

          v121 = 789;
          v122 = 2048;
          v123 = v64;
          v124 = 2048;
          v125 = v72;
          _os_log_send_and_compose_impl(v80, &v115, &v126, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v84, v85);
          _os_crash_msg();
          __break(1u);
          goto LABEL_106;
        }

        re::DynamicArray<re::AABB>::add((*(a1 + 32) + 80 * v64), v92);
        v69 += 2;
        v70 -= 32;
      }

      while (v70);
      v65 = *v66;
LABEL_80:
      v73 = v65[7];
      if (v73)
      {
        break;
      }

LABEL_84:
      if (v58 <= v59 + 1)
      {
        v76 = v59 + 1;
      }

      else
      {
        v76 = v58;
      }

      while (v76 - 1 != v59)
      {
        LODWORD(v59) = v59 + 1;
        if ((*(v62 + 32 * v59) & 0x80000000) != 0)
        {
          goto LABEL_91;
        }
      }

      LODWORD(v59) = v76;
LABEL_91:
      if (v59 == v58)
      {
        goto LABEL_92;
      }
    }

    v74 = v65[9];
    v75 = 8 * v73;
    while (1)
    {
      v115 = *v74;
      v66 = *(a1 + 16);
      if (v66 <= v64)
      {
        break;
      }

      re::DynamicArray<re::RigDataValue *>::add((*(a1 + 32) + 80 * v64 + 40), &v115);
      ++v74;
      v75 -= 8;
      if (!v75)
      {
        goto LABEL_84;
      }
    }

LABEL_106:
    *&v92[0] = 0;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    v81 = MEMORY[0x1E69E9C10];
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    v119 = "operator[]";
    v120 = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    v121 = 789;
    v122 = 2048;
    v123 = v64;
    v124 = 2048;
    v125 = v66;
    _os_log_send_and_compose_impl(v83, v92, &v126, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v84, v85);
    _os_crash_msg();
    __break(1u);
LABEL_110:
    re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

LABEL_92:
  v77.n128_f64[0] = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v93);
  if (v97 && v98)
  {
    (*(*v97 + 40))(v77.n128_f64[0]);
  }

  if (v100 && v88)
  {
    (*(*v100 + 40))(v77);
  }

  if (v105)
  {
    if (v91)
    {
      (*(*v105 + 40))(v77);
    }
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v110);
  re::StackScratchAllocator::~StackScratchAllocator(v114);
}

uint64_t re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::add(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

__n128 re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 48 * v5;
  result = *a2;
  v13 = *(a2 + 32);
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 32) = v13;
  *v11 = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::add(_anonymous_namespace_ *result, uint64_t a2)
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

        result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 80 * v5;
  *(v11 + 32) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 0;
  v12 = *(a2 + 8);
  *v11 = *a2;
  *(v11 + 8) = v12;
  *a2 = 0;
  *(a2 + 8) = 0;
  v13 = *(v11 + 16);
  *(v11 + 16) = *(a2 + 16);
  *(a2 + 16) = v13;
  v14 = *(v11 + 32);
  *(v11 + 32) = *(a2 + 32);
  *(a2 + 32) = v14;
  ++*(a2 + 24);
  ++*(v11 + 24);
  *(v11 + 72) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 40) = 0;
  *(v11 + 64) = 0;
  v15 = *(a2 + 48);
  *(v11 + 40) = *(a2 + 40);
  *(v11 + 48) = v15;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v16 = *(v11 + 56);
  *(v11 + 56) = *(a2 + 56);
  *(a2 + 56) = v16;
  v17 = *(v11 + 72);
  *(v11 + 72) = *(a2 + 72);
  *(a2 + 72) = v17;
  ++*(a2 + 64);
  ++*(v11 + 64);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 24 * v6 + 8;
}

uint64_t re::UnionFind::findSet(re::UnionFind *this, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 1);
  if (v3 <= a2)
  {
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 468;
    v20 = 2048;
    v21 = v2;
    v22 = 2048;
    v23 = v3;
    _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v4 = a2;
  v6 = *(*(this + 2) + 8 * a2);
  if (v6 != v4)
  {
    Set = re::UnionFind::findSet(this, v6);
    v3 = *(this + 1);
    if (v3 > v2)
    {
      v4 = Set;
      *(*(this + 2) + 8 * v2) = Set;
      return v4;
    }

LABEL_10:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 468;
    v20 = 2048;
    v21 = v2;
    v22 = 2048;
    v23 = v3;
    _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  return v4;
}

uint64_t re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::operator[](uint64_t result)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v4 = 0;
    memset(v13, 0, sizeof(v13));
    v1 = MEMORY[0x1E69E9C10];
    v5 = 136315906;
    v6 = "operator[]";
    v7 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    v8 = 789;
    v9 = 2048;
    v10 = 0;
    v11 = 2048;
    v12 = 0;
    _os_log_send_and_compose_impl(v2, &v4, v13, 80, &dword_1E1C61000, v1, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v5, 38, v3);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::resize(void *result)
{
  v1 = result[2];
  if (v1 != 1)
  {
    v2 = result;
    if (v1)
    {
      v4 = 1;
      v5 = 80;
      do
      {
        v6 = v2[4] + v5;
        re::DynamicArray<unsigned long>::deinit(v6 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v6);
        ++v4;
        v5 += 80;
      }

      while (v4 < v2[2]);
    }

    else if (result[1] || (result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(result, 1uLL), !v2[2]))
    {
      v3 = v2[4];
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 24) = 0;
      *(v3 + 16) = 0;
      *(v3 + 72) = 0;
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0;
    }

    v2[2] = 1;
    ++*(v2 + 6);
  }

  return result;
}

void re::ecs2::ShadowClusterSystem::~ShadowClusterSystem(re::ecs2::ShadowClusterSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 43);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 43);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECED0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECED0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECF38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECF38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 32;
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

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs231ClusterShadowSeparatorComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 2;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs228ClusterShadowMarkerComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 2;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs222ShadowClusterComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 3;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226ShadowClusterRootComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable(a1);
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

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CECF90;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CECF90;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CECF90;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CECF90;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::DynamicArray<re::AABB>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 16);
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
            memcpy(v7, v5[4], 32 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::AABB>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::AABB>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::AABB>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AABB>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::AABB>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::AABB>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 32 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 32 * v5, (*(a2 + 32) + 32 * v5), 32 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 32 * v4);
  }

  v3[2] = v4;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::AABB>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::AABB>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AABB>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, a2[2]);
      std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *>(a2[4], (a2[4] + 80 * *(a1 + 16)), *(a1 + 32));
      v10 = *(a1 + 16);
      if (v10 != v6)
      {
        v11 = 5 * v10;
        v12 = (a2[4] + 16 * v11);
        v13 = *(a1 + 32) + 16 * v11;
        v14 = 80 * v6 - 16 * v11;
        do
        {
          re::DynamicArray<re::AABB>::DynamicArray(v13, v12);
          re::DynamicArray<char const*>::DynamicArray(v13 + 40, v12 + 5);
          v12 += 10;
          v13 += 80;
          v14 -= 80;
        }

        while (v14);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *>(a2[4], (a2[4] + 80 * v6), *(a1 + 32));
      v7 = *(a1 + 16);
      if (v6 != v7)
      {
        v8 = *(a1 + 32) + 80 * v6;
        v9 = 80 * v7 - 80 * v6;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v8 + 40);
          re::DynamicArray<unsigned long>::deinit(v8);
          v8 += 80;
          v9 -= 80;
        }

        while (v9);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

void **std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *>(void **result, void **a2, void **a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = &a3[v6];
      v8 = &v5[v6];
      result = re::DynamicArray<re::AABB>::operator=(&a3[v6], &v5[v6]);
      if (v5 != a3)
      {
        v9 = v8[5];
        if (v7[5])
        {
          if (v9)
          {
            result = re::DynamicArray<char const*>::copy(v7 + 5, (v8 + 5));
            v10 = &a3[v6];
          }

          else
          {
            v10 = &a3[v6];
            a3[v6 + 7] = 0;
          }

          ++*(v10 + 16);
        }

        else if (v9)
        {
          v11 = v5[v6 + 7];
          v7[5] = v9;
          re::DynamicArray<float *>::setCapacity(v7 + 5, v11);
          ++LODWORD(a3[v6 + 8]);
          result = re::DynamicArray<char const*>::copy(v7 + 5, (v8 + 5));
        }
      }

      v6 += 10;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::AABB>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AABB>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AABB>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AABB>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 16);
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
            memcpy(v7, v5[4], 48 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
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
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24), *(v17 + 8));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
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
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

__n128 std::__function::__func<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0,std::allocator<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0>,void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECFE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0,std::allocator<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0>,void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>::operator()(uint64_t result, float32x4_t *a2, float32x4_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = vsubq_f32(a2[1], *a2);
  v3.i32[3] = 0;
  v4 = vsubq_f32(a3[1], *a3);
  v4.i32[3] = 0;
  v5 = vmaxnmq_f32(v3, 0);
  v6 = vmaxnmq_f32(v4, 0);
  *v5.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)), vadd_f32(vzip1_s32(*v5.i8, *v6.i8), vzip2_s32(*v5.i8, *v6.i8)));
  v7 = vdiv_f32(*v5.i8, vdup_lane_s32(*v5.i8, 1)).f32[0];
  if (v7 > 1.0)
  {
    v7 = 1.0 / v7;
  }

  if (v7 >= *(result + 16))
  {
    v8 = *(result + 8);
    v9 = a3[2].u32[0];
    Set = re::UnionFind::findSet(v8, a2[2].u32[0]);
    result = re::UnionFind::findSet(v8, v9);
    if (Set != result)
    {
      v11 = Set;
      v12 = *(v8 + 1);
      if (v12 <= Set)
      {
        v34 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = v11;
        v35 = 136315906;
        v36 = "operator[]";
        v37 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v38 = 468;
        v39 = 2048;
        v40 = v21;
        v41 = 2048;
        v42 = v12;
        _os_log_send_and_compose_impl(v22, &v34, &v43, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        v13 = result;
        if (v12 > result)
        {
          v14 = *(v8 + 2);
          v15 = *(v14 + 8 * Set + 4);
          v16 = *(v14 + 8 * result + 4);
          if (v15 >= v16)
          {
            v17 = result;
          }

          else
          {
            v17 = Set;
          }

          if (v12 > v17)
          {
            if (v15 >= v16)
            {
              v18 = Set;
            }

            else
            {
              v18 = result;
            }

            v19 = (v14 + 8 * v17);
            *v19 = v18;
            if (v12 > v18)
            {
              *(v14 + 8 * v18 + 4) += v19[1];
              return result;
            }

LABEL_29:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v30 = MEMORY[0x1E69E9C10];
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

            v38 = 468;
            v39 = 2048;
            v40 = v18;
            v41 = 2048;
            v42 = v12;
            _os_log_send_and_compose_impl(v32, &v34, &v43, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
          }

LABEL_25:
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          v18 = v17;
          v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          v36 = "operator[]";
          v37 = 1024;
          if (v28)
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          v38 = 468;
          v39 = 2048;
          v40 = v18;
          v41 = 2048;
          v42 = v12;
          _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
          _os_crash_msg();
          __break(1u);
          goto LABEL_29;
        }
      }

      v34 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = v13;
      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35 = 136315906;
      v36 = "operator[]";
      v37 = 1024;
      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v38 = 468;
      v39 = 2048;
      v40 = v24;
      v41 = 2048;
      v42 = v12;
      _os_log_send_and_compose_impl(v26, &v34, &v43, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0,std::allocator<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0>,void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::ecs2::allocInfo_ClippingBoxComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5230))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5260, "ClippingBoxComponent");
    __cxa_guard_release(&qword_1EE1A5230);
  }

  return &unk_1EE1A5260;
}

void re::ecs2::initInfo_ClippingBoxComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v30[0] = 0xEBF69FF01B370AE8;
  v30[1] = "ClippingBoxComponent";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&_MergedGlobals_212, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_212))
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
    qword_1EE1A5238 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "m_localBoundsMin";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1A5240 = v17;
    v18 = re::introspectionAllocator();
    v19 = re::introspect_Vector3F(1);
    v20 = (*(*v18 + 32))(v18, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "m_localBoundsMax";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x3000000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1A5248 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_BOOL(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "m_clipChildren";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x4400000004;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1A5250 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_float(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "m_featherIntervalFraction";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x4000000005;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1A5258 = v28;
    __cxa_guard_release(&_MergedGlobals_212);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A5238;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClippingBoxComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClippingBoxComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClippingBoxComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClippingBoxComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220ClippingBoxComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v29 = v31;
}

void re::internal::defaultConstruct<re::ecs2::ClippingBoxComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDB160;
  *(v3 + 32) = 0xBF000000BF000000;
  *(v3 + 40) = 3204448256;
  *(v3 + 48) = 0x3F0000003F000000;
  *(v3 + 56) = 1056964608;
  *(v3 + 64) = 0;
  *(v3 + 68) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::ClippingBoxComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDB160;
  *(v1 + 32) = 0xBF000000BF000000;
  *(v1 + 40) = 3204448256;
  *(v1 + 48) = 0x3F0000003F000000;
  *(v1 + 56) = 1056964608;
  *(v1 + 64) = 0;
  *(v1 + 68) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs220ClippingBoxComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_TintService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_213, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_213))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A52F8, "TintService");
    __cxa_guard_release(&_MergedGlobals_213);
  }

  return &unk_1EE1A52F8;
}

void re::ecs2::initInfo_TintService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x1FD9D995C2CE634;
  v8[1] = "TintService";
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
  *(this + 8) = &re::ecs2::initInfo_TintService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::ecs2::introspect_PinAlignmentType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A5390, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A5398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5398))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A5410, "PinAlignmentType", 1, 1, 1, 1);
      qword_1EE1A5410 = &unk_1F5D0C658;
      qword_1EE1A5450 = &re::ecs2::introspect_PinAlignmentType(BOOL)::enumTable;
      dword_1EE1A5420 = 9;
      __cxa_guard_release(&qword_1EE1A5398);
    }

    if (_MergedGlobals_214)
    {
      break;
    }

    _MergedGlobals_214 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A5410, a2);
    v43 = 0xEA05251A419B7090;
    v44 = "PinAlignmentType";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A5450;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1A5430 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v42);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1A5390))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Rigid";
      qword_1EE1A53D8 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "PointToPoint";
      qword_1EE1A53E0 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "DirectionToDirection";
      qword_1EE1A53E8 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "PointToLine";
      qword_1EE1A53F0 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "PointToPlane";
      qword_1EE1A53F8 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "LineToLine";
      qword_1EE1A5400 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "PlaneToPlane";
      qword_1EE1A5408 = v41;
      __cxa_guard_release(&qword_1EE1A5390);
    }
  }
}

void *re::ecs2::allocInfo_PinAlignment(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A53A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A53A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5458, "PinAlignment");
    __cxa_guard_release(&qword_1EE1A53A8);
  }

  return &unk_1EE1A5458;
}

void re::ecs2::initInfo_PinAlignment(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v25[0] = 0x3AE3A0B4A362B7DCLL;
  v25[1] = "PinAlignment";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1A53A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A53A0))
  {
    v7 = re::introspectionAllocator();
    re::ecs2::introspect_PinAlignmentType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "m_type";
    *(v9 + 16) = &qword_1EE1A5410;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1A53B0 = v9;
    v10 = re::introspectionAllocator();
    v11 = re::introspect_PoseF(1);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "m_sourcePose";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1A53B8 = v12;
    v13 = re::introspectionAllocator();
    v14 = re::introspect_PoseF(1);
    v15 = (*(*v13 + 32))(v13, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "m_targetPose";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x3000000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1A53C0 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_BOOL(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "m_isSameOrientation";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x5000000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1A53C8 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "m_values";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x5800000005;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1A53D0 = v23;
    __cxa_guard_release(&qword_1EE1A53A0);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A53B0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PinAlignment>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PinAlignment>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PinAlignment>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PinAlignment>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v24 = v26;
}

double re::internal::defaultConstruct<re::ecs2::PinAlignment>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0x3F80000000000000;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0x3F80000000000000;
  *(a3 + 80) = 1;
  *(a3 + 120) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 112) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PinAlignment>(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3F80000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3F80000000000000;
  *(a1 + 80) = 1;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  return result;
}

_anonymous_namespace_ *re::ecs2::FrameProfilingSystem::willAddSystemToECSService(re::ecs2::FrameProfilingSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v2);
  if (result)
  {
    (*(*result + 8))(&v9);
    v4 = *(this + 14);
    *(this + 14) = v9;
    v9 = v4;
    v5 = *(this + 30);
    *(this + 30) = v10;
    v10 = v5;
    re::AssetHandle::~AssetHandle(&v9);
    v6 = (*(**(this + 5) + 32))(*(this + 5));
    *(this + 36) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v6);
    v7 = (*(**(this + 5) + 32))(*(this + 5));
    result = re::ServiceLocator::serviceOrNull<re::Engine>(v7);
    *(this + 35) = result;
    v8 = *(this + 36);
    if (v8)
    {
      *(this + 37) = *(v8 + 64);
    }
  }

  return result;
}

__n128 re::ecs2::FrameProfilingSystem::willRemoveSystemFromECSService(re::ecs2::FrameProfilingSystem *this)
{
  if (*(this + 272) == 1)
  {
    v2 = *(this + 36);
    if (v2)
    {
      v3 = *(v2 + 112);
      if (v3)
      {
        v4 = *(v3 + 296);
      }

      else
      {
        v4 = 0;
      }

      re::StringID::StringID(v11, (this + 248));
      v11[2] = *(this + 33);
      v5 = re::RenderGraphManager::removeProvider(v4, v11);
      if (v11[0])
      {
        if (v11[0])
        {
        }
      }

      v11[0] = 0;
      v11[1] = &str_67;
      *(this + 272) = 0;
    }
  }

  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  v6 = *(this + 14);
  v7 = *(this + 30);
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  v9 = v6;
  v10 = v7;
  re::AssetHandle::~AssetHandle(&v9);
  return result;
}

void re::ecs2::FrameProfilingSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 288);
  if (!v3)
  {
    return;
  }

  v5 = *(a1 + 280);
  if (!v5 || !*(a1 + 296) || (*(v5 + 432) & 0x10) == 0 || *(a3 + 8) == 2)
  {
    return;
  }

  v6 = *(v3 + 112);
  if (!v6)
  {
    if ((*(a1 + 272) & 1) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

  shouldRenderProfilerNode = re::DrawingManager::shouldRenderProfilerNode(v6);
  if (!shouldRenderProfilerNode)
  {
    if (!*(a1 + 272))
    {
      return;
    }

    v10 = *(*(a1 + 288) + 112);
    if (v10)
    {
      v11 = *(v10 + 296);
LABEL_17:
      re::StringID::StringID(v49, (a1 + 248));
      v50 = *(a1 + 264);
      re::RenderGraphManager::removeProvider(v11, v49);
      re::StringID::destroyString(v49);
      *(a1 + 272) = 0;
      return;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if ((*(a1 + 272) & 1) == 0)
  {
    v8 = *(*(a1 + 288) + 112);
    if (v8)
    {
      v9 = *(v8 + 296);
    }

    else
    {
      v9 = 0;
    }

    v12 = re::globalAllocators(shouldRenderProfilerNode);
    v13 = (*(*v12[2] + 32))(v12[2], 40, 8);
    re::ProfilerOverlayRenderGraphProvider::ProfilerOverlayRenderGraphProvider(v13, v51);
    re::RenderGraphManager::addProviderInternal(&v67, v9, "ProfilerOverlay", v13, 0, 1);
    re::StringID::operator=((a1 + 248), &v67);
    *(a1 + 264) = v69;
    re::StringID::destroyString(&v67);
    if (*&v51[0].var0)
    {
      if (v51[0].var1)
      {
        (*(**&v51[0].var0 + 40))();
      }

      memset(v51, 0, sizeof(v51));
    }

    *(a1 + 272) = 1;
  }

  v14 = *(a1 + 288);
  v15 = *(v14 + 14);
  if (v15)
  {
    v16 = *(v15 + 1648);
    if (v16)
    {
      v17 = *(a1 + 232);
      if (v17 && (v18 = atomic_load((v17 + 896)), v18 == 2))
      {
        v19 = re::RenderManager::perFrameAllocator(v14);
        v66 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v62 = v19;
        re::DynamicArray<re::RenderProfilerText>::setCapacity(&v62, 0);
        ++v65;
        re::DynamicArray<re::RenderProfilerText>::setCapacity(&v62, 1uLL);
        v20 = *(v16 + 320);
        if (v20)
        {
          v21 = *(v16 + 336);
          v22 = 48 * v20;
          do
          {
            re::StringID::invalid(&v67);
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v74 = -1;
            v75 = 0;
            v76 = 0;
            v77 = re::kInvalidStringRenderHandle;
            v69 = xmmword_1E30872B0;
            re::makeFontID(&v52, (a1 + 224));
            v24 = *&v52.var0;
            var1 = v52.var1;
            *&v52.var0 = 0;
            v52.var1 = &str_67;
            v26 = v67;
            v27 = v68;
            v67 = v24;
            v68 = var1;
            if (v26)
            {
              if (*&v52.var0)
              {
                if (*&v52.var0)
                {
                }
              }
            }

            v29 = re::StringID::invalid(&v52);
            *&v53 = 0x3F8000003F800000;
            *(&v53 + 1) = 0x3F8000003F800000;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            re::DynamicString::setCapacity(&v58, 0);
            v60 = -1;
            v61 = 0x2800000006;
            re::StringID::operator=(&v52, &v67);
            v53 = v69;
            v54 = v70;
            v55 = v71;
            v56 = v72;
            v57 = v73;
            v30 = re::DynamicString::operator=(&v58, v21);
            v60 = -1;
            v61 = *(v21 + 4);
            v31 = v64;
            if (v64 >= v63)
            {
              if (v63 < v64 + 1)
              {
                if (v62)
                {
                  v32 = 8;
                  if (v63)
                  {
                    v32 = 2 * v63;
                  }

                  if (v32 <= v64 + 1)
                  {
                    v33 = v64 + 1;
                  }

                  else
                  {
                    v33 = v32;
                  }

                  re::DynamicArray<re::RenderProfilerText>::setCapacity(&v62, v33);
                }

                else
                {
                  re::DynamicArray<re::RenderProfilerText>::setCapacity(&v62, v31 + 1);
                  ++v65;
                }
              }

              v31 = v64;
            }

            v34 = v66 + 144 * v31;
            re::StringID::StringID(v34, &v52);
            *(v34 + 16) = v53;
            v35 = v54;
            v36 = v55;
            v37 = v57;
            *(v34 + 64) = v56;
            *(v34 + 80) = v37;
            *(v34 + 32) = v35;
            *(v34 + 48) = v36;
            re::DynamicString::DynamicString((v34 + 96), &v58);
            *(v34 + 128) = v60;
            *(v34 + 136) = v61;
            v64 = v31 + 1;
            ++v65;
            v38 = v58;
            if (v58)
            {
              if (BYTE8(v58))
              {
                v38 = (*(*v58 + 40))();
              }

              v58 = 0u;
              v59 = 0u;
            }

            if (*&v52.var0)
            {
              if (*&v52.var0)
              {
              }
            }

            if (v67)
            {
              if (v67)
              {
              }
            }

            v21 = (v21 + 48);
            v22 -= 48;
          }

          while (v22);
        }

        v39 = *(*(a1 + 288) + 112);
        if (v39)
        {
          v40 = re::RenderFrameBox::get((v39 + 328), 0xFFFFFFFFFFFFFFFuLL);
        }

        else
        {
          v40 = 0;
        }

        if (v64)
        {
          (*(**(v40 + 320) + 48))(*(v40 + 320), &v62);
        }

        re::DynamicArray<re::RenderText>::deinit(&v62);
      }

      else
      {
        re::AssetHandle::loadAsync((a1 + 224));
      }
    }
  }

  v41 = *(a1 + 288);
  v42 = *(v41 + 112);
  if (v42)
  {
    v43 = *(v42 + 1664);
    if (v43)
    {
      if ((re::ProfilerManager::isProcessorEnabled<re::ProfilerFlameChartProcessor,void>(*(v42 + 1664)) & 1) != 0 || (re::ProfilerManager::isProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(v43) & 1) != 0 || re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(v43))
      {
        v44 = *(a1 + 232);
        if (v44 && (v45 = atomic_load((v44 + 896)), v45 == 2))
        {
          v47 = *(v41 + 8);
          v46 = (v41 + 8);
          if (v47 <= 1)
          {
            re::makeFontID(&v67, (a1 + 224));
            v48 = re::StringID::operator=(v46, &v67);
            if (v67)
            {
              if (v67)
              {
              }
            }
          }
        }

        else
        {
          re::AssetHandle::loadAsync((a1 + 224));
        }
      }
    }
  }
}

void *re::DynamicArray<re::RenderProfilerText>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderProfilerText>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
        v10 = &v8[18 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = *(v8 + 2);
          v15 = *(v8 + 4);
          v14 = *(v8 + 5);
          *(v11 + 3) = *(v8 + 3);
          *(v11 + 4) = v15;
          *(v11 + 2) = v13;
          *(v11 + 1) = *(v8 + 1);
          *(v11 + 5) = v14;
          *(v11 + 6) = 0u;
          *(v11 + 7) = 0u;
          v11[12] = v8[12];
          v8[12] = 0;
          v16 = v11[14];
          v11[14] = v8[14];
          v8[14] = v16;
          *(v11 + 15) = *(v8 + 15);
          v8[15] = 0;
          v17 = v11[13];
          v11[13] = v8[13];
          v8[13] = v17;
          v11[17] = v8[17];
          re::DynamicString::deinit((v8 + 12));
          re::StringID::destroyString(v8);
          v11 += 18;
          v8 += 18;
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

uint64_t re::ProfilerManager::isProcessorEnabled<re::ProfilerFlameChartProcessor,void>(uint64_t a1)
{
  v5 = re::ProfilerManager::getProcessorId<re::ProfilerFlameChartProcessor>();
  os_unfair_lock_lock((a1 + 16));
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 480), &v5);
  if (v2)
  {
    v3 = *(v2[3] + 8);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3 & 1;
}

uint64_t re::ProfilerManager::isProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(uint64_t a1)
{
  v5 = re::ProfilerManager::getProcessorId<re::ProfilerMiniHUDProcessor>();
  os_unfair_lock_lock((a1 + 16));
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 480), &v5);
  if (v2)
  {
    v3 = *(v2[3] + 8);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3 & 1;
}

uint64_t re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(uint64_t a1)
{
  v5 = re::ProfilerManager::getProcessorId<re::ProfilerDetailedHUDProcessor>();
  os_unfair_lock_lock((a1 + 16));
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 480), &v5);
  if (v2)
  {
    v3 = *(v2[3] + 8);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3 & 1;
}

void *re::ecs2::allocInfo_FrameProfilingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_215, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_215))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A54F0, "FrameProfilingSystem");
    __cxa_guard_release(&_MergedGlobals_215);
  }

  return &unk_1EE1A54F0;
}

void re::ecs2::initInfo_FrameProfilingSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x51BA0A3EA7E549D0;
  v8[1] = "FrameProfilingSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x13000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_FrameProfilingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::FrameProfilingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::FrameProfilingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::FrameProfilingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::FrameProfilingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::FrameProfilingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::FrameProfilingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::FrameProfilingSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 248));
  re::AssetHandle::~AssetHandle((a3 + 224));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::FrameProfilingSystem>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 248));
  re::AssetHandle::~AssetHandle((a1 + 224));

  re::ecs2::System::~System(a1);
}

void re::ecs2::FrameProfilingSystem::~FrameProfilingSystem(re::ecs2::FrameProfilingSystem *this)
{
  re::StringID::destroyString((this + 248));
  re::AssetHandle::~AssetHandle((this + 224));

  re::ecs2::System::~System(this);
}

{
  re::StringID::destroyString((this + 248));
  re::AssetHandle::~AssetHandle((this + 224));
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ProfilerOverlayRenderGraphProvider::ProfilerOverlayRenderGraphProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D12318;
  return a1;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::FrameProfilingSystem>(uint64_t a1)
{
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
  v2 = re::ecs2::System::System(a1, 1);
  *v2 = &unk_1F5CED078;
  v2[29] = 0;
  v2[30] = 0;
  v2[28] = 0;
  re::StringID::invalid((v2 + 31));
  *(a1 + 272) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  return a1;
}

uint64_t re::ecs2::CustomDockingAnimationSerialize(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:0];
    re::EncoderHelper::encodeBase64([v6 bytes], objc_msgSend(v6, "length"), a4);
  }

  return 1;
}

uint64_t re::ecs2::CustomDockingAnimationDeserialize(int a1, int a2, int a3, void **a4, char *__s)
{
  v14 = 0;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  v13 = 0;
  v7 = strlen(__s);
  re::EncoderHelper::decodeBase64(__s, v7, v11);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:v12];
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:0];
  re::ObjCObject::operator=(a4, v9);

  if (v11[0] && v14)
  {
    (*(*v11[0] + 40))();
  }

  return 1;
}

void re::ecs2::CustomDockingRegionComponent::setDockAnimation(void **this, objc_object *a2, objc_object *a3)
{
  v5 = a3;
  re::ObjCObject::operator=(this + 12, a2);
  re::ObjCObject::operator=(this + 13, v5);
}

id re::ecs2::CustomDockingRegionComponent::getDockAnimation(uint64_t a1, void *a2, void *a3)
{
  *a2 = *(a1 + 96);
  result = *(a1 + 104);
  *a3 = result;
  return result;
}

uint64_t re::ecs2::CustomDockingRegionComponent::getCustomDockingRegionComponentFromScene(uint64_t a1)
{
  v1 = *(re::ecs2::ComponentImpl<re::ecs2::CustomDockingRegionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a1 + 224) <= v1)
  {
    return 0;
  }

  v2 = *(*(a1 + 240) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 384);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 400);
  v5 = 8 * v3;
  while (1)
  {
    result = *v4;
    v7 = *(*v4 + 16);
    if (v7)
    {
      if (*(v7 + 304))
      {
        break;
      }
    }

    v4 += 8;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

void re::ecs2::introspect_DockTransitionStyle(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A5588, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A5590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5590))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A5618, "DockTransitionStyle", 1, 1, 1, 1);
      qword_1EE1A5618 = &unk_1F5D0C658;
      qword_1EE1A5658 = &re::ecs2::introspect_DockTransitionStyle(BOOL)::enumTable;
      dword_1EE1A5628 = 9;
      __cxa_guard_release(&qword_1EE1A5590);
    }

    if (_MergedGlobals_216)
    {
      break;
    }

    _MergedGlobals_216 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A5618, a2);
    v43 = 0x7F7AD97148E63D12;
    v44 = "DockTransitionStyle";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A5658;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1A5638 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v42);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1A5588))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "DockTransitionStyleDefault";
      qword_1EE1A55E0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "DockTransitionStyleGroundSkim";
      qword_1EE1A55E8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "DockTransitionStyleSwoop";
      qword_1EE1A55F0 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "DockTransitionStyleCustom0";
      qword_1EE1A55F8 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "DockTransitionStyleCustom1";
      qword_1EE1A5600 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "DockTransitionStyleCustom2";
      qword_1EE1A5608 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "DockTransitionStyleCustom3";
      qword_1EE1A5610 = v41;
      __cxa_guard_release(&qword_1EE1A5588);
    }
  }
}

void re::ecs2::introspect_CustomDockingAnimation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A5598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5598))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A5660, "CustomDockingAnimation", 8, 8, 0, 0);
    qword_1EE1A5660 = &unk_1F5D0C698;
    qword_1EE1A56A0 = re::internal::defaultConstruct<re::ecs2::CustomDockingAnimation>;
    qword_1EE1A56A8 = re::ecs2::CustomDockingAnimationSerialize;
    qword_1EE1A56B0 = re::ecs2::CustomDockingAnimationDeserialize;
    qword_1EE1A56C0 = 0;
    unk_1EE1A56C8 = 0;
    qword_1EE1A56B8 = re::ecs2::CustomDockingAnimationDeepCopy;
    dword_1EE1A5670 = 11;
    __cxa_guard_release(&qword_1EE1A5598);
  }

  if ((byte_1EE1A5581 & 1) == 0)
  {
    byte_1EE1A5581 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A5660, a2);
    v3[0] = 0xE978F8F3B334924CLL;
    v3[1] = "CustomDockingAnimation";
    unk_1EE1A5680 = v4;
    if (v3[0])
    {
      if (v3[0])
      {
      }
    }
  }
}

void *re::ecs2::allocInfo_CustomDockingRegionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A55A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A55A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A56D0, "CustomDockingRegionComponent");
    __cxa_guard_release(&qword_1EE1A55A8);
  }

  return &unk_1EE1A56D0;
}

void re::ecs2::initInfo_CustomDockingRegionComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0x7AC04804869D2916;
  v36[1] = "CustomDockingRegionComponent";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1A55A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A55A0))
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
    qword_1EE1A55B0 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::introspect_AABB(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "m_bounds";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A55B8 = v22;
    v23 = re::introspectionAllocator();
    re::ecs2::introspect_DockTransitionStyle(v23, v24);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "m_transitionStyle";
    *(v25 + 16) = &qword_1EE1A5618;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4000000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1A55C0 = v25;
    v26 = re::introspectionAllocator();
    v27 = re::introspect_Vector3F(1);
    v28 = (*(*v26 + 32))(v26, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "m_dockPosition";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x5000000003;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1A55C8 = v28;
    v29 = re::introspectionAllocator();
    re::ecs2::introspect_CustomDockingAnimation(v29, v30);
    v31 = (*(*v29 + 32))(v29, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "m_dockAnimation";
    *(v31 + 16) = &qword_1EE1A5660;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x6000000004;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1A55D0 = v31;
    v32 = re::introspectionAllocator();
    re::ecs2::introspect_CustomDockingAnimation(v32, v33);
    v34 = (*(*v32 + 32))(v32, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "m_undockAnimation";
    *(v34 + 16) = &qword_1EE1A5660;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x6800000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1A55D8 = v34;
    __cxa_guard_release(&qword_1EE1A55A0);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1A55B0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CustomDockingRegionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CustomDockingRegionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CustomDockingRegionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CustomDockingRegionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228CustomDockingRegionComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v35 = v37;
}

double re::internal::defaultConstruct<re::ecs2::CustomDockingRegionComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDBB08;
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *(v3 + 32) = vnegq_f32(v4);
  *(v3 + 48) = v4;
  *(v3 + 64) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::CustomDockingRegionComponent>(ArcSharedObject *a1)
{
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDBB08;
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(v1 + 32) = vnegq_f32(v2);
  *(v1 + 48) = v2;
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs228CustomDockingRegionComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

void ___ZN2re21UISortingFeatureFlags26enableCARESortingManagerV2Ev_block_invoke(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(&v5, "UISortingEnableCARESortingManagerV2", a2);
  if (v5 == 1)
  {
    re::UISortingFeatureFlags::gEnableCARESortingManagerV2 = BYTE1(v5);
  }

  v3 = *re::sortingLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::UISortingFeatureFlags::gEnableCARESortingManagerV2)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "UISortingEnableCARESortingManagerV2 is now %s.", &v5, 0xCu);
  }
}

void ___ZN2re21UISortingFeatureFlags30enableCodirectionalAsSortGroupEv_block_invoke(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(&v5, "UISortingEnableCodirectionalAsSortGroup", a2);
  if (v5 == 1)
  {
    re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup = BYTE1(v5);
  }

  v3 = *re::sortingLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "UISortingEnableCodirectionalAsSortGroup is now %s.", &v5, 0xCu);
  }
}

void ___ZN2re21UISortingFeatureFlags42enableUISorterByByCodirectionalGroupConfigEv_block_invoke(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(&v5, "UISortingEnableUISorterByCodirectionalGroupConfig", a2);
  if (v5 == 1)
  {
    re::UISortingFeatureFlags::gEnableUISorterByCodirectionalGroupConfig = BYTE1(v5);
  }

  v3 = *re::sortingLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::UISortingFeatureFlags::gEnableUISorterByCodirectionalGroupConfig)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "UISortingEnableEnableUISorterByCodirectionalGroupConfig is now %s.", &v5, 0xCu);
  }
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(int a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  {
    re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::IntrospectionDynamicArray(&re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v7 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v7)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info;
    }

    v9 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::lock(v9);
  }

  v10 = re::ecs2::introspect_VideoMaterialAttachment(1, a2, a3, a4, a5, a6);
  if ((re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v11 = v10;
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::isInitialized = 1;
    v12 = *(v10 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info, 0);
    qword_1EE186AB8 = 0x2800000003;
    dword_1EE186AC0 = v12;
    word_1EE186AC4 = 0;
    *&xmmword_1EE186AC8 = 0;
    *(&xmmword_1EE186AC8 + 1) = 0xFFFFFFFFLL;
    qword_1EE186AD8 = v11;
    unk_1EE186AE0 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info = &unk_1F5CED168;
    re::IntrospectionRegistry::add(v13, v14);
    re::getPrettyTypeName(&v19, &re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info);
    if (BYTE8(v19))
    {
      v15 = v20;
    }

    else
    {
      v15 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v19 = *(v11 + 32);
    xmmword_1EE186AC8 = v18;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v16 = re::introspectionSharedMutex(v10);
    std::__shared_mutex_base::unlock(v16);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_ImageBasedReflectionReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5768))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5780, "ImageBasedReflectionReceiverComponent");
    __cxa_guard_release(&qword_1EE1A5768);
  }

  return &unk_1EE1A5780;
}

void re::ecs2::initInfo_ImageBasedReflectionReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x25EE020AF0649916;
  v24[1] = "ImageBasedReflectionReceiverComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&_MergedGlobals_217, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_217))
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
    qword_1EE1A5770 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "m_attachments";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A5778 = v22;
    __cxa_guard_release(&_MergedGlobals_217);
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A5770;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedReflectionReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedReflectionReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs237ImageBasedReflectionReceiverComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionReceiverComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 14) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE5B18;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 72) = 0;
  *(v3 + 112) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
}