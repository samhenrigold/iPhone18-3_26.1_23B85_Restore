void *re::ecs2::allocInfo_AlchemistAnimationParams(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A92E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A92E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9380, "AlchemistAnimationParams");
    __cxa_guard_release(&qword_1EE1A92E0);
  }

  return &unk_1EE1A9380;
}

void re::ecs2::initInfo_AlchemistAnimationParams(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0x710DFC2B57A621B0;
  v27[1] = "AlchemistAnimationParams";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1A92E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A92E8))
  {
    v7 = re::introspectionAllocator();
    re::ecs2::introspect_AlchemistAnimationState(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "state";
    *(v9 + 16) = &qword_1EE1A9338;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1A9310 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::introspect_float(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "effectStrength";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x400000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1A9318 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_float(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "gradientTintStrength";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1A9320 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "timeSinceAnimationStarted";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0xC00000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A9328 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_AssetHandle(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "alchemistLoadingTextureHandle";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x1000000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1A9330 = v25;
    __cxa_guard_release(&qword_1EE1A92E8);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A9310;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AlchemistAnimationParams>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AlchemistAnimationParams>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AlchemistAnimationParams>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AlchemistAnimationParams>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v26 = v28;
}

double re::internal::defaultConstruct<re::ecs2::AlchemistAnimationParams>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  result = 0.0;
  *(a3 + 4) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AlchemistAnimationParams>(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0;
  return result;
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9430))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9478);
    qword_1EE1A9478 = &unk_1F5CF1868;
    __cxa_guard_release(&qword_1EE1A9430);
  }

  if ((_MergedGlobals_272 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_AssetHandle(1, v3);
    if ((_MergedGlobals_272 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_272 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9478, 0);
      qword_1EE1A9488 = 0x3000000007;
      dword_1EE1A9490 = v6;
      word_1EE1A9494 = 0;
      *&xmmword_1EE1A9498 = 0;
      *(&xmmword_1EE1A9498 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A94A8 = v2;
      unk_1EE1A94B0 = 0;
      qword_1EE1A94B8 = v5;
      unk_1EE1A94C0 = 0;
      qword_1EE1A9478 = &unk_1F5CF1868;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1A9478);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9498 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_AudioAnimationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9420))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A94C8, "AudioAnimationComponent");
    __cxa_guard_release(&qword_1EE1A9420);
  }

  return &unk_1EE1A94C8;
}

void re::ecs2::initInfo_AudioAnimationComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v47[0] = 0x2C04ED5A7FFBF85ELL;
  v47[1] = "AudioAnimationComponent";
  if (v47[0])
  {
    if (v47[0])
    {
    }
  }

  *(this + 2) = v48;
  if ((atomic_load_explicit(&qword_1EE1A9418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9418))
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
    qword_1EE1A9438 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::introspect_AudioAnimationState(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "animationState";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A9440 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "animationGain";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x3800000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A9448 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_AssetHandle(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "audioAsset";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x4800000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1A9450 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_float(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "mediaOffset";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x3C00000004;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1A9458 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_float(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "additionalLinearGain";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x4000000005;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1A9460 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_BOOL(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "mute";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x4400000006;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1A9468 = v42;
    v43 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v43, v44);
    v45 = (*(*v43 + 32))(v43, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "animationAssets";
    *(v45 + 16) = &qword_1EE1A9478;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x9800000007;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1A9470 = v45;
    __cxa_guard_release(&qword_1EE1A9418);
  }

  *(this + 2) = 0xF800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1A9438;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioAnimationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioAnimationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioAnimationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioAnimationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223AudioAnimationComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v46 = v48;
}

void *re::ecs2::allocInfo_AudioAnimationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9428))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9558, "AudioAnimationSystem");
    __cxa_guard_release(&qword_1EE1A9428);
  }

  return &unk_1EE1A9558;
}

void re::ecs2::initInfo_AudioAnimationSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x7DC7B6F774A6607ALL;
  v8[1] = "AudioAnimationSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioAnimationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioAnimationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioAnimationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioAnimationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioAnimationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioAnimationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioAnimationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t re::internal::defaultConstruct<re::ecs2::AudioAnimationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF1740;
  *(result + 224) = 0;
  *(result + 240) = 0;
  *(result + 264) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::AudioAnimationSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF1740;
  *(result + 224) = 0;
  *(result + 240) = 0;
  *(result + 264) = 0;
  return result;
}

double re::ecs2::AudioAnimationComponent::AudioAnimationComponent(re::ecs2::AudioAnimationComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF16E8;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 44) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1065353216;
  *(v1 + 64) = 1065353216;
  *(v1 + 68) = 0;
  *(v1 + 128) = 0;
  *(v1 + 144) = 0;
  result = 0.0;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 117) = 0;
  *(v1 + 188) = 0x7FFFFFFFLL;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0;
  *(v1 + 236) = 0x7FFFFFFFLL;
  return result;
}

void re::ecs2::AudioAnimationComponent::~AudioAnimationComponent(re::ecs2::AudioAnimationComponent *this)
{
  *this = &unk_1F5CF16E8;
  v2 = (this + 72);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 25);
  re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 19);
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioAnimationComponent::~AudioAnimationComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AudioAnimationComponent::setAudioAssetForEvent(re::ecs2::AudioAnimationComponent *this, re::AssetHandle *a2, const re::DynamicString *a3)
{
  if (*(a3 + 1))
  {
    v5 = *(a3 + 2);
  }

  else
  {
    v5 = a3 + 9;
  }

  v7 = 0;
  v8 = &str_67;
  v6 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(this + 152, &v7, a2);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void *re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, uint64_t *a2, const re::AssetHandle *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::AssetHandle const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::AssetHandle::operator=(*(a1 + 16) + 48 * v7 + 24, a3);
}

void re::ecs2::AudioAnimationComponent::removeAudioAssetForEvent(re::ecs2::AudioAnimationComponent *this, const re::DynamicString *a2)
{
  if (*(a2 + 1))
  {
    v3 = *(a2 + 2);
  }

  else
  {
    v3 = a2 + 9;
  }

  v6 = 0;
  v7 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) >> 27));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, &v6, v4 ^ (v4 >> 31), v8);
  v5 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 152, v8);
  if (v6)
  {
    if (v6)
    {
    }
  }
}

uint64_t re::ecs2::AudioAnimationComponent::getPlaybackTokenForEvent(re::ecs2::AudioAnimationComponent *this, const re::DynamicString *a2)
{
  if (*(a2 + 1))
  {
    v3 = *(a2 + 2);
  }

  else
  {
    v3 = a2 + 9;
  }

  v8 = 0;
  v9 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, &v8, v4 ^ (v4 >> 31), v10);
  if (v11 == 0x7FFFFFFF)
  {
    if (v8)
    {
      if (v8)
      {
      }
    }

    return 0;
  }

  else
  {
    v7 = *(this + 27) + 32 * v11;
    if (v8)
    {
      if (v8)
      {
      }
    }

    return *(v7 + 24);
  }
}

void re::ecs2::AudioAnimationSystem::willAddSystemToECSService(re::ecs2::AudioAnimationSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 doubleForKey:@"com.apple.re.AudioAnimationSyncThreshold"];
  *(this + 29) = v4;

  if (*(this + 29) == 0.0)
  {
    *(this + 29) = 0x3FA5810624DD2F1BLL;
  }
}

uint64_t re::ecs2::AudioAnimationSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

void re::ecs2::AudioAnimationSystem::willAddSceneToECSService(re::ecs2::AudioAnimationSystem *this, re::ecs2::Scene *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v24 = this;
  *(&v24 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioAnimationSystem::didAddComponents,re::ecs2::AudioAnimationSystem>;
  v25 = 0;
  v26 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 8), &v24);
  v6 = *(a2 + 36);
  if (v6)
  {
    v7 = re::globalAllocators(v5)[2];
    v19 = v7;
    v8 = (*(*v7 + 32))(v7, 32, 0);
    *v8 = &unk_1F5CF1800;
    v8[1] = this;
    v8[2] = re::ecs2::AudioAnimationSystem::animationTimelineEventDidStart;
    v8[3] = 0;
    v20 = v8;
    v16 = v7;
    v17 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(v15, v18);
    v22 = v16;
    v23 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(v21, v15);
    HasTimelineEvent = re::EventBus::getTypeId<REAnimationHasTimelineEventStart>();
    EventInfo = re::EventBus::addOrGetEventInfo(v6, HasTimelineEvent);
    v32 = v22;
    v33 = 0;
    v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(v31, v21);
    v29 = re::globalAllocators(v11)[2];
    v30 = 0;
    *&v24 = &unk_1F5CF1908;
    v27 = v32;
    v28 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(&v24 + 8, v31);
    v30 = &v24;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(v31);
    v12 = re::EventBus::EventInfo::addSubscription(EventInfo, &v24, 0, 0xE32FFACEFE22CE5);
    v14 = v13;
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(&v24);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(v21);
    if ((*(this + 240) & 1) == 0)
    {
      *(this + 240) = 1;
    }

    *(this + 31) = v12;
    *(this + 32) = v14;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(v15);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(v18);
  }
}

uint64_t re::ecs2::AudioAnimationSystem::animationTimelineEventDidStart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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
    return 0;
  }

  v8 = v6;
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  *&buf = 0;
  *(&buf + 1) = &str_67;
  v11 = re::TimelineEventData::parameter<re::StringID>(v9, v10, &buf);
  v12 = v11;
  if (buf)
  {
    if (buf)
    {
    }
  }

  if (v12)
  {
    if (*&v12->var0 > 1uLL || (v13 = v12->var1) == 0 || *v13)
    {
      v14 = *re::audioLogObjects(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v42 = v14;
        var1 = v12->var1;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = var1;
        _os_log_debug_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEBUG, "AudioAnimationSystem: Play audio animation event: %s", &buf, 0xCu);
      }

      v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1))) >> 27));
      v16 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 152, v12, v15 ^ (v15 >> 31), &buf);
      if (HIDWORD(buf) != 0x7FFFFFFF)
      {
        re::AssetHandle::AssetHandle(v46, (*(v5 + 168) + 48 * HIDWORD(buf) + 24));
        v21 = re::ecs2::AudioPlayerComponent::prepare(v8, v46);
        re::AssetHandle::~AssetHandle(v46);
        re::ecs2::AudioPlayerComponent::play(v8, v21, 1);
        buf = 0uLL;
        v48 = 0;
        v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1))) >> 27));
        v11 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 200, v12, v22 ^ (v22 >> 31), &buf);
        v23 = HIDWORD(buf);
        if (HIDWORD(buf) == 0x7FFFFFFF)
        {
          v24 = re::HashTable<re::StringID,unsigned long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v5 + 200, DWORD2(buf), buf);
          v11 = re::StringID::StringID((v24 + 8), v12);
          *(v24 + 24) = v21;
          ++*(v5 + 240);
        }

        else
        {
          ++*(v5 + 240);
          *(*(v5 + 216) + 32 * v23 + 24) = v21;
        }

        v20 = 1;
        goto LABEL_22;
      }

      v17 = *re::audioLogObjects(v16);
      v11 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v11)
      {
        v18 = v17;
        v19 = v12->var1;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_INFO, "AudioAnimationSystem: no audio asset defined for event: %s", &buf, 0xCu);
      }
    }
  }

  v20 = 0;
LABEL_22:
  v25 = *(a3 + 32);
  *&buf = 0;
  *(&buf + 1) = &str_67;
  v26 = re::TimelineEventData::parameter<re::StringID>(v9, v25, &buf);
  v28 = v26;
  if (buf)
  {
    if (buf)
    {
    }
  }

  if (!v28)
  {
    goto LABEL_32;
  }

  if (*v28 <= 1uLL)
  {
    v29 = *(v28 + 1);
    if (v29)
    {
      if (!*v29)
      {
        goto LABEL_32;
      }
    }
  }

  v30 = *re::audioLogObjects(v26);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v44 = v30;
    v45 = *(v28 + 1);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v45;
    _os_log_debug_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEBUG, "AudioAnimationSystem: Stop audio animation event: %s", &buf, 0xCu);
  }

  v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 200, v28, v31 ^ (v31 >> 31), &buf);
  if (HIDWORD(buf) != 0x7FFFFFFF)
  {
    v32 = *(v5 + 216) + 32 * HIDWORD(buf);
    re::ecs2::AudioPlayerComponent::stop(v8, *(v32 + 24));
    re::ecs2::AudioPlayerComponent::destroy(v8, *(v32 + 24));
    v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 200, v28, v33 ^ (v33 >> 31), &buf);
    v34 = HIDWORD(buf);
    if (HIDWORD(buf) != 0x7FFFFFFF)
    {
      v35 = *(v5 + 216);
      v36 = *(v35 + 32 * HIDWORD(buf)) & 0x7FFFFFFF;
      if (v48 == 0x7FFFFFFF)
      {
        *(*(v5 + 208) + 4 * DWORD2(buf)) = v36;
        v34 = HIDWORD(buf);
      }

      else
      {
        *(v35 + 32 * v48) = *(v35 + 32 * v48) & 0x80000000 | v36;
      }

      v37 = (v35 + 32 * v34);
      v38 = *v37;
      if (*v37 < 0)
      {
        *v37 = v38 & 0x7FFFFFFF;
        re::StringID::destroyString((v37 + 2));
        v39 = HIDWORD(buf);
        v35 = *(v5 + 216);
        v38 = *(v35 + 32 * HIDWORD(buf));
        LODWORD(v34) = HIDWORD(buf);
      }

      else
      {
        v39 = v34;
      }

      *(v35 + 32 * v39) = *(v5 + 236) | v38 & 0x80000000;
      --*(v5 + 228);
      v40 = *(v5 + 240) + 1;
      *(v5 + 236) = v34;
      *(v5 + 240) = v40;
    }
  }

  else
  {
LABEL_32:
    if (!v20)
    {
      return 0;
    }
  }

  re::ecs2::AudioAnimationSystem::markAudioPlayerDirty(v5, v27);
  return 0;
}

uint64_t re::ecs2::AudioAnimationSystem::willRemoveSceneFromECSService(re::ecs2::AudioAnimationSystem *this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v6 = this;
  *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioAnimationSystem::didAddComponents,re::ecs2::AudioAnimationSystem>;
  v7 = 0;
  v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 8, &v6);
  result = *(a2 + 36);
  if (result && *(this + 240) == 1)
  {
    result = re::EventBus::unsubscribe(result, *(this + 31), *(this + 32));
    if (*(this + 240) == 1)
    {
      *(this + 240) = 0;
    }
  }

  return result;
}

unint64_t re::TimelineEventData::parameter<re::StringID>(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 17), a3, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v23);
  if (HIDWORD(v23[0]) == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = a1[19] + 40 * HIDWORD(v23[0]);
  if (*(v6 + 32) != 3)
  {
    return 0;
  }

  v7 = *(v6 + 24) + a1[35] * a2;
  v8 = a1[38];
  if (v8 <= v7)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v10 = MEMORY[0x1E69E9C10];
    v11 = v8;
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

    v18 = 797;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v11;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  return a1[40] + 16 * v7;
}

void re::ecs2::AudioAnimationSystem::markAudioPlayerDirty(re::ecs2::AudioAnimationSystem *this, re::ecs2::AudioAnimationComponent *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v4 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 216);
      if (v6)
      {

        re::ecs2::NetworkComponent::markDirty(v6, v5);
      }
    }

    else
    {
      v7 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(this + 12);
        v9 = 134217984;
        v10 = v8;
        _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "Expected AudioPlayerComponent on associated Entity for AudioAnimationComponent (token=%llu)", &v9, 0xCu);
      }
    }
  }
}

void *re::ecs2::AudioAnimationSystem::update(void *result, int a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (result[28])
  {
    v5 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v63);
    v6 = *(a3 + 200);
    if (v6)
    {
      v7 = *(a3 + 216);
      v61 = &v7[v6];
      v59 = vdupq_n_s64(1uLL).i64[1];
      v8 = &unk_1EE187000;
      v60 = v5;
      while (1)
      {
        v9 = *v7;
        v10 = (*(**(v5 + 224) + 16))(*(v5 + 224), *v7);
        isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v10);
        if (isStatisticCollectionEnabled)
        {
          v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
          v13 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[493]);
          v14 = v13 ? *(v13 + 384) : 0;
          v15 = *(v12 + 152);
          if (v15)
          {
            v16 = v15[1144].u64[0];
            if (v16 >= v14)
            {
              v16 = v14;
            }

            v15[1144].i64[0] = v16;
            v17 = v15[1144].u64[1];
            if (v17 <= v14)
            {
              v17 = v14;
            }

            v15[1144].i64[1] = v17;
            v18.i64[1] = v59;
            v18.i64[0] = v14;
            v15[1145] = vaddq_s64(v15[1145], v18);
            *(v12 + 184) = 0;
          }
        }

        v19 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[493]);
        v20 = v19 ? *(v19 + 384) : 0;
        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v62, 3097, v5, v20, 0, 0);
        v21 = v8;
        v22 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[493]);
        if (v22)
        {
          v25 = *(v22 + 384);
          if (v25)
          {
            break;
          }
        }

LABEL_84:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v62, v23, v24);
        ++v7;
        v8 = v21;
        v5 = v60;
        if (v7 == v61)
        {
          return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v63);
        }
      }

      v26 = *(v22 + 400);
      v27 = 8 * v25;
      while (1)
      {
        v28 = *v26;
        if (!*v26)
        {
          goto LABEL_77;
        }

        v29 = *(v28 + 16);
        if (!v29)
        {
          goto LABEL_77;
        }

        isPlaying = re::ecs2::EntityComponentCollection::get((v29 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!isPlaying)
        {
          v36 = *re::audioLogObjects(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "Expected AudioPlayerComponent on associated Entity", buf, 2u);
          }

          goto LABEL_77;
        }

        v31 = isPlaying;
        v32 = *(v28 + 96);
        v33 = v32 == 0;
        v34 = v32;
        if (!v32)
        {
          if (*(v28 + 44) != 1)
          {
            goto LABEL_77;
          }

          re::AssetHandle::AssetHandle(buf, (v28 + 72));
          *(v28 + 96) = re::ecs2::AudioPlayerComponent::prepare(v31, buf);
          re::AssetHandle::~AssetHandle(buf);
          v34 = *(v28 + 96);
          if (!v34)
          {
            goto LABEL_76;
          }
        }

        v35 = *(v28 + 48);
        if (*(v28 + 104) == v35)
        {
          *(v28 + 40) = 0;
          *(v28 + 32) = 0;
          goto LABEL_71;
        }

        *(v28 + 104) = v35;
        v37 = *(v28 + 40);
        if (v37 <= 0.0)
        {
          goto LABEL_70;
        }

        v38 = *(v28 + 32) - *(v28 + 60);
        if (v38 >= 0.0)
        {
          v41 = *(v28 + 120);
          v42 = re::ecs2::AudioPlayerComponent::assetDurationFor(v31, v34);
          if (v42 != 0.0)
          {
            v44 = fmod(v38, v42);
            if (v41 == 0.0)
            {
              v45 = *re::audioLogObjects(v43);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                *v65 = 134217984;
                *&v65[4] = v44;
                _os_log_debug_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent. Seeking on start to %f seconds", v65, 0xCu);
              }

              re::ecs2::AudioPlayerComponent::setPlaybackPositionFor(v31, v34, v44);
              goto LABEL_47;
            }

            v46 = re::ecs2::AudioPlayerComponent::playbackPositionFor(v31, v34);
            if (vabdd_f64(v44, v46) <= *(v28 + 136) + *&a2)
            {
              v49 = 0;
            }

            else
            {
              re::ecs2::AudioPlayerComponent::setPlaybackPositionFor(v31, v34, v44);
              v48 = *re::audioLogObjects(v47);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                *v65 = 134218240;
                *&v65[4] = v44;
                v66 = 2048;
                v67 = v44 - v46;
                _os_log_debug_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent out of sync. Seeking to %5.4f sec, error = %5.4f sec", v65, 0x16u);
              }

LABEL_47:
              v49 = 1;
              v33 = 1;
            }

            v50 = 0.0;
            v51 = 0.0;
            if ((*(v28 + 68) & 1) == 0)
            {
              v51 = *(v28 + 56) * *(v28 + 64);
            }

            *v65 = v34;
            v52 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v31 + 32, v65);
            if (v52)
            {
              v50 = *(v52 + 100);
            }

            if (v51 != v50)
            {
              if (v41 == 0.0)
              {
                v53 = 0.0;
              }

              else
              {
                v53 = *&a2;
              }

              re::ecs2::AudioPlayerComponent::fadeToGain(v31, v34, v51, v53);
              v33 = 1;
            }

            isPlaying = re::ecs2::AudioPlayerComponent::isPlaying(v31, *(v28 + 96));
            if (isPlaying)
            {
              v54 = 0;
              goto LABEL_68;
            }

            v58 = v49;
            if (*(v28 + 144) != 1)
            {
              goto LABEL_63;
            }

            v55 = *re::audioLogObjects(isPlaying);
            isPlaying = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
            if (isPlaying)
            {
              *v65 = 0;
              _os_log_debug_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent skipping subsequent play command because we already sent a play command.", v65, 2u);
            }

            if ((*(v28 + 144) & 1) == 0)
            {
LABEL_63:
              v56 = *re::audioLogObjects(isPlaying);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                *v65 = 134217984;
                *&v65[4] = v34;
                _os_log_debug_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent sending play(token=%llu)", v65, 0xCu);
              }

              if ((v58 & 1) == 0)
              {
                re::ecs2::AudioPlayerComponent::setPlaybackPositionFor(v31, v34, v44);
              }

              v54 = 1;
              re::ecs2::AudioPlayerComponent::play(v31, v34, 1);
              v33 = 1;
LABEL_68:
              *(v28 + 144) = v54;
            }

            v37 = *(v28 + 40);
LABEL_70:
            if (v37 == 0.0)
            {
LABEL_71:
              if ((*(v28 + 144) & 1) != 0 || (isPlaying = re::ecs2::AudioPlayerComponent::isPlaying(v31, *(v28 + 96)), isPlaying))
              {
                v57 = *re::audioLogObjects(isPlaying);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                {
                  *v65 = 134217984;
                  *&v65[4] = v34;
                  _os_log_debug_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent sending pause(token=%llu)", v65, 0xCu);
                }

                re::ecs2::AudioPlayerComponent::pause(v31, v34);
                *(v28 + 144) = 0;
                *(v28 + 112) = *(v28 + 32);
                *(v28 + 128) = *(v28 + 48);
              }

              else
              {
                *(v28 + 144) = 0;
                *(v28 + 112) = *(v28 + 32);
                *(v28 + 128) = *(v28 + 48);
                if (!v33)
                {
                  goto LABEL_77;
                }
              }
            }

            else
            {
              *(v28 + 112) = *(v28 + 32);
              *(v28 + 128) = *(v28 + 48);
              if (!v33)
              {
                goto LABEL_77;
              }
            }

LABEL_76:
            re::ecs2::AudioAnimationSystem::markAudioPlayerDirty(v28, v23);
          }
        }

        else
        {
          v39 = re::ecs2::AudioPlayerComponent::isPlaying(v31, v34);
          if (v39)
          {
            v40 = *re::audioLogObjects(v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *v65 = 134217984;
              *&v65[4] = v34;
              _os_log_debug_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent sending stop(token=%llu)", v65, 0xCu);
            }

            re::ecs2::AudioPlayerComponent::stop(v31, v34);
            goto LABEL_76;
          }

          if (!v32)
          {
            goto LABEL_76;
          }
        }

LABEL_77:
        ++v26;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_84;
        }
      }
    }

    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v63);
  }

  return result;
}

void re::ecs2::AudioAnimationSystem::~AudioAnimationSystem(re::ecs2::AudioAnimationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioAnimationSystem,REEventHandlerResult (re::ecs2::AudioAnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::AudioAnimationSystem,REEventHandlerResult (re::ecs2::AudioAnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1800;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioAnimationSystem,REEventHandlerResult (re::ecs2::AudioAnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1800;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(uint64_t a1))(void)
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

void *re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(double a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3);
  if (a5 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = a5;
  }

  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a3, a4, v8);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  memset(v10, 0, sizeof(v10));
  v8 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  re::AssetHandle::~AssetHandle(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 12;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 48 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 48 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

double re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 48;
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

void re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 6);
    re::StringID::destroyString((a1 + 2));

    re::AssetHandle::~AssetHandle(v2);
  }
}

void re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[1] = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[2] = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v12 = (*(a2 + 16) + v5);
        result[3] = 0;
        result[4] = 0;
        result[5] = 0;
        result[4] = v12[4];
        v12[4] = 0;
        v13 = result[3];
        result[3] = 0;
        result[3] = v12[3];
        v12[3] = v13;
        v14 = result[5];
        result[5] = v12[5];
        v12[5] = v14;
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 48 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 48 * v4;
}

void re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
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
        re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 48;
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

uint64_t *re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v17);
  v7 = HIDWORD(v18);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v18, v17);
    re::StringID::StringID((v8 + 1), a2);
    v8[3] = 0;
    v8[4] = 0;
    v9 = v8 + 3;
    v9[2] = 0;
    v9[1] = a3[1];
    a3[1] = 0;
    v10 = *v9;
    *v9 = 0;
    *v9 = *a3;
    *a3 = v10;
    v11 = v9[2];
    v9[2] = a3[2];
    a3[2] = v11;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v12 = *(a1 + 16) + 48 * v7;
    v13 = *(v12 + 32);
    *(v12 + 32) = a3[1];
    a3[1] = v13;
    v14 = *(v12 + 24);
    v9 = (v12 + 24);
    *v9 = 0;
    *v9 = *a3;
    *a3 = v14;
    v15 = v9[2];
    v9[2] = a3[2];
    a3[2] = v15;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t *re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 48 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 12;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223AudioAnimationComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::AssetHandle const&>(uint64_t a1, uint64_t a2, uint64_t *a3, const re::AssetHandle *a4)
{
  v7 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v7[1] = v7[1] & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
  v7[1] = *a3 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v7[2] = a3[1];
  *a3 = 0;
  a3[1] = &str_67;
  re::AssetHandle::AssetHandle((v7 + 3), a4);
  ++*(a1 + 40);
  return v7 + 3;
}

BOOL re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 48 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 48 * v5) = *(v6 + 48 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((v6 + 48 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 48 * v9) = *(*(a1 + 16) + 48 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioAnimationSystem::didAddComponents,re::ecs2::AudioAnimationSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a1 + 232);
    v5 = 8 * a4;
    do
    {
      v6 = *a3++;
      *(v6 + 136) = v4;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::EventBus::getTypeId<REAnimationHasTimelineEventStart>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REAnimationHasTimelineEventStart>(void)const::s_id = re::EventBus::typeStringToId(("32REAnimationHasTimelineEventStart" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[10];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF1908;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF1908;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF1908;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF1908;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::HashTable<re::StringID,unsigned long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v29, v9, v8);
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 1) >> 31) ^ (*(v17 - 1) >> 1));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<re::StringID,unsigned long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                v21 = *(v17 - 1);
                v20[1] = v20[1] & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v20[1] = *(v17 - 1) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v22 = v17[1];
                v20[2] = *v17;
                *(v17 - 1) = 0;
                *v17 = &str_67;
                v20[3] = v22;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v29);
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
    v24 = *(v23 + 32 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 32 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 32 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 32 * v4;
}

void *re::ecs2::allocInfo_ThrottleService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_273, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_273))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A95F0, "ThrottleService");
    __cxa_guard_release(&_MergedGlobals_273);
  }

  return &unk_1EE1A95F0;
}

void re::ecs2::initInfo_ThrottleService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x174E2110AB251016;
  v8[1] = "ThrottleService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ThrottleService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ThrottleService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ThrottleService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::ecs2::allocInfo_PreviewSupportComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_274, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_274))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9698, "PreviewSupportComponent");
    __cxa_guard_release(&_MergedGlobals_274);
  }

  return &unk_1EE1A9698;
}

void re::ecs2::initInfo_PreviewSupportComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x71CA9DDC24F30B6CLL;
  v16[1] = "PreviewSupportComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A9690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9690))
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
    qword_1EE1A9688 = v14;
    __cxa_guard_release(&qword_1EE1A9690);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A9688;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PreviewSupportComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PreviewSupportComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PreviewSupportComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PreviewSupportComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223PreviewSupportComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::PreviewSupportComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6E38;
}

void re::internal::defaultConstructV2<re::ecs2::PreviewSupportComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6E38;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs223PreviewSupportComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ecs2::PinHandle::PinHandle(uint64_t a1, const re::ecs2::Entity *a2, const StringID *a3, _OWORD *a4, unsigned __int8 *a5)
{
  v9 = re::ecs2::EntityHandle::EntityHandle(a1, a2);
  re::StringID::StringID((v9 + 24), a3);
  v10 = a4[1];
  *(a1 + 48) = *a4;
  *(a1 + 64) = v10;
  v11 = *a5;
  *(a1 + 80) = v11;
  if (v11 == 1)
  {
    re::StringID::StringID((a1 + 88), (a5 + 8));
  }

  return a1;
}

void re::ecs2::PinHandle::~PinHandle(re::ecs2::PinHandle *this)
{
  if (*(this + 80) == 1)
  {
    re::StringID::destroyString((this + 88));
  }

  re::StringID::destroyString((this + 24));
  re::ecs2::EntityHandle::reset(this);
  objc_destroyWeak(this);
  *this = 0;
}

void re::ecs2::PinHandle::pin(id *this@<X0>, _BYTE *a2@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this);
  if (WeakRetained && (WeakRetained, v5 = objc_loadWeakRetained(this), v5, (v6 = re::ecs2::EntityComponentCollection::get((v5 + 40), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0) && (re::ecs2::PinComponent::pinByName(v32, v6, this + 3), LOBYTE(v32[0]) == 1))
  {
    v31[0] = v33;
    v31[1] = v34;
    if (v35[0])
    {
      v7 = objc_loadWeakRetained(this);

      v8 = v7[30];
      v9 = objc_loadWeakRetained(this);

      if (v8 && (v10 = v9[23]) != 0 && (v11 = *(v10 + 40)) != 0 && (v12 = atomic_load((v11 + 896)), v12 == 2))
      {
        v13 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v10 + 32));
        re::ecs2::PinSkeletalPoseHelper::pinByName(v8, v13, &v36, v25);
        if (v25[0] == 1)
        {
          v29 = v27;
          v30 = v28;
        }

        else
        {
          v29 = 0uLL;
          v30.i64[1] = 0x3F80000000000000;
          v30.i64[0] = 0;
        }

        v16.i64[0] = 0x7F0000007FLL;
        v16.i64[1] = 0x7F0000007FLL;
        v21[0] = vnegq_f32(v16);
        v21[1] = v16;
        v20 = 0;
        v18 = 0;
        v17 = 0uLL;
        LODWORD(v19) = 0;
        re::ecs2::Pin::Pin(v22, (this + 3), &v29, v31, v35, v21, &v17);
        re::Optional<re::ecs2::Pin>::Optional(a2, v22);
        re::ecs2::Pin::~Pin(v22);
        re::DynamicArray<re::ecs2::PinAlignment>::deinit(&v17);
        if (v25[0] == 1)
        {
          (*v26)();
        }
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      v17 = 0uLL;
      v18 = 0;
      v19 = 0x3F80000000000000;
      LOBYTE(v21[0]) = 0;
      v14.i64[0] = 0x7F0000007FLL;
      v14.i64[1] = 0x7F0000007FLL;
      v29 = vnegq_f32(v14);
      v30 = v14;
      v24 = 0;
      memset(v22, 0, sizeof(v22));
      v23 = 0;
      re::ecs2::Pin::Pin(v25, (this + 3), &v17, v31, v21, &v29, v22);
      re::Optional<re::ecs2::Pin>::Optional(a2, v25);
      re::ecs2::Pin::~Pin(v25);
      v15 = re::DynamicArray<re::ecs2::PinAlignment>::deinit(v22);
      if (LOBYTE(v21[0]) == 1 && (BYTE8(v21[0]) & 1) != 0)
      {
        if (BYTE8(v21[0]))
        {
        }
      }
    }

    if (v32[0])
    {
      (*v32[2])();
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t re::Optional<re::ecs2::Pin>::Optional(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 16) = &unk_1F5CF49C0;
  re::StringID::StringID((a1 + 24), (a2 + 8));
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(a1 + 112, (a2 + 96));
  v7 = *(a2 + 160);
  *(a1 + 160) = *(a2 + 144);
  *(a1 + 176) = v7;
  v8 = *(a2 + 176);
  *(a1 + 192) = v8;
  if (v8 == 1)
  {
    re::StringID::StringID((a1 + 200), (a2 + 184));
  }

  re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(a1 + 216, (a2 + 200));
  return a1;
}

void re::ecs2::PinHandle::pinPose(id *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this);
  if (WeakRetained)
  {

    re::ecs2::PinHandle::pin(this, v25);
    if (v25[0] == 1)
    {
      v7 = v27;
      _Q1 = v28;
      if (a2)
      {
        v9 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        v10 = *(this + 3);
        _Q4 = *(this + 4);
        v12 = vnegq_f32(v28);
        v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v12), v10, v9);
        v14 = vaddq_f32(v13, v13);
        v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v12), v15, v9);
        v7 = vaddq_f32(v27, vaddq_f32(vaddq_f32(v10, vmulq_laneq_f32(v15, v28, 3)), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL)));
        _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v12), _Q4, v9);
        v18 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q4, v28, 3);
        _Q3.i32[0] = _Q4.i32[3];
        v19 = vmlaq_laneq_f32(v18, v28, _Q4, 3);
        __asm { FMLA            S4, S3, V1.S[3] }

        v19.i32[3] = _Q4.i32[0];
        _Q1 = v19;
      }

      *a3 = 1;
      *(a3 + 16) = v7;
      *(a3 + 32) = _Q1;
      (*v26)();
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 1;
    v24 = *(this + 4);
    *(a3 + 16) = *(this + 3);
    *(a3 + 32) = v24;
  }
}

BOOL re::ecs2::PinHandle::operator==(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1);
  if (WeakRetained)
  {
    v5 = WeakRetained - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_loadWeakRetained(a2);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  if (v5 != v7)
  {
    return 0;
  }

  result = re::StringID::operator==((a1 + 24), (a2 + 24));
  if (result)
  {
    v9 = vceqq_f32(*(a1 + 48), *(a2 + 48));
    v9.i32[3] = v9.i32[2];
    if ((vminvq_u32(v9) & 0x80000000) == 0)
    {
      return 0;
    }

    return vminvq_u32(vceqq_f32(*(a1 + 64), *(a2 + 64))) >> 31;
  }

  return result;
}

uint64_t *re::IntrospectionInfo<re::Optional<re::StringID>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionOptional<re::StringID>::IntrospectionOptional(&re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  if ((re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info, 0);
    qword_1EE1865B8 = 0x180000000DLL;
    dword_1EE1865C0 = v8;
    word_1EE1865C4 = 0;
    *&xmmword_1EE1865C8 = 0;
    *(&xmmword_1EE1865C8 + 1) = 0xFFFFFFFFLL;
    qword_1EE1865D8 = v7;
    unk_1EE1865E0 = 0;
    re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info = &unk_1F5CF1960;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE1865C8 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_PinHandle(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9730))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9758, "PinHandle");
    __cxa_guard_release(&qword_1EE1A9730);
  }

  return &unk_1EE1A9758;
}

void re::ecs2::initInfo_PinHandle(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x818C5825CFFALL;
  v23[1] = "PinHandle";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&_MergedGlobals_275, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_275))
  {
    v7 = re::introspectionAllocator();
    v9 = re::ecs2::introspect_EntityHandle(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_entityHandle";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1A9738 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_pinName";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A9740 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_PoseF(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "m_offsetFromPin";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x3000000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1A9748 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::IntrospectionInfo<re::Optional<re::StringID>>::get(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_pinSkeletalJointName";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A9750 = v21;
    __cxa_guard_release(&_MergedGlobals_275);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A9738;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PinHandle>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PinHandle>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PinHandle>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PinHandle>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}

void re::internal::defaultConstruct<re::ecs2::PinHandle>(int a1, int a2, id *location)
{
  objc_initWeak(location, 0);
  location[1] = 0;
  location[2] = 0;
  re::ecs2::EntityHandle::reset(location);
  location[3] = 0;
  location[4] = &str_67;
  location[6] = 0;
  location[7] = 0;
  location[8] = 0;
  location[9] = 0x3F80000000000000;
  *(location + 80) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::PinHandle>(uint64_t a1)
{
  objc_initWeak(a1, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  re::ecs2::EntityHandle::reset(a1);
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3F80000000000000;
  *(a1 + 80) = 0;
}

void re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginOptionalType(v10, a2, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionOptional<re::StringID>::IntrospectionOptional(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBA310;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CF1960;
  return a1;
}

void *re::IntrospectionOptional<re::StringID>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::StringID>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::StringID>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4[0] = 1;
    v5 = 0;
    v6 = &str_67;
  }

  else
  {
    v4[0] = 0;
  }

  v3 = re::Optional<re::StringID>::operator=(a2, v4);
  if (v4[0] == 1 && (v5 & 1) != 0)
  {
    if (v5)
    {
    }
  }
}

uint64_t re::IntrospectionOptional<re::StringID>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

void re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, const StringID *a2)
{
  if (a2)
  {
    v4[0] = 1;
    re::StringID::StringID(&v5, a2);
  }

  else
  {
    v4[0] = 0;
  }

  v3 = re::Optional<re::StringID>::operator=(a1, v4);
  if (v4[0] == 1 && (v5 & 1) != 0)
  {
    if (v5)
    {
    }
  }
}

void re::ecs2::introspect_GroundingShadowFadeBehaviorNearPhysicalObjects(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A97F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A97F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A97F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A9868, "GroundingShadowFadeBehaviorNearPhysicalObjects", 4, 4, 1, 1);
      qword_1EE1A9868 = &unk_1F5D0C658;
      qword_1EE1A98A8 = &re::ecs2::introspect_GroundingShadowFadeBehaviorNearPhysicalObjects(BOOL)::enumTable;
      dword_1EE1A9878 = 9;
      __cxa_guard_release(&qword_1EE1A97F8);
    }

    if (_MergedGlobals_276)
    {
      break;
    }

    _MergedGlobals_276 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A9868, a2);
    v35 = 0xC6305B05C0246B98;
    v36 = "GroundingShadowFadeBehaviorNearPhysicalObjects";
    v39 = 208862;
    v40 = "int";
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
      v6 = qword_1EE1A98A8;
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
      xmmword_1EE1A9888 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE1A97F0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Default";
      qword_1EE1A9810 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Fade";
      qword_1EE1A9818 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Constant";
      qword_1EE1A9820 = v33;
      __cxa_guard_release(&qword_1EE1A97F0);
    }
  }
}

void *re::ecs2::allocInfo_GroundingShadowComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9800))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A98B0, "GroundingShadowComponent");
    __cxa_guard_release(&qword_1EE1A9800);
  }

  return &unk_1EE1A98B0;
}

void re::ecs2::initInfo_GroundingShadowComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v43[0] = 0xB9FED500E734E2C4;
  v43[1] = "GroundingShadowComponent";
  if (v43[0])
  {
    if (v43[0])
    {
    }
  }

  *(this + 2) = v44;
  if ((atomic_load_explicit(&qword_1EE1A9808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9808))
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
    qword_1EE1A9828 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "enableIBLShadow";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A9830 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "enableMeshShadow";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1B00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A9838 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "enableReceiveIBLShadow";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1A00000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A9840 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "enableReceiveMeshShadow";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1C00000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1A9848 = v30;
    v31 = re::introspectionAllocator();
    re::ecs2::introspect_GroundingShadowFadeBehaviorNearPhysicalObjects(v31, v32);
    v33 = (*(*v31 + 32))(v31, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "shadowFadeBehaviorNearPhysicalObjects";
    *(v33 + 16) = &qword_1EE1A9868;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x2400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1A9850 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_float(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "meshShadowIntensity";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x2000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1A9858 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_uint32_t(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "modeBitFlags";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x2800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1A9860 = v41;
    __cxa_guard_release(&qword_1EE1A9808);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1A9828;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::GroundingShadowComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::GroundingShadowComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::GroundingShadowComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::GroundingShadowComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224GroundingShadowComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v42 = v44;
}

double re::internal::defaultConstruct<re::ecs2::GroundingShadowComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *v3 = &unk_1F5CE6650;
  *&result = 0x1000000010000;
  *(v3 + 24) = 0x10000;
  *(v3 + 28) = 1;
  *(v3 + 32) = 1065353216;
  *(v3 + 36) = 0;
  *(v3 + 44) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::GroundingShadowComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *v1 = &unk_1F5CE6650;
  *&result = 0x1000000010000;
  *(v1 + 24) = 0x10000;
  *(v1 + 28) = 1;
  *(v1 + 32) = 1065353216;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs224GroundingShadowComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 10;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::setEntityAttributes(unint64_t *this, re::ecs2::Entity *a2, const re::StringID *a3)
{
  if (this)
  {
    re::StringID::operator=(this + 36, a2);
    *(this + 76) |= 0x1400u;

    re::ecs2::Entity::setSelfEnabled(this, 0);
  }
}

double re::ecs2::buildCollisionShapeAssetHandle(re::ecs2 *this, __n128 a2, float a3, float a4)
{
  v4 = this;
  v19 = 0;
  a2.n128_f32[1] = a3;
  a2.n128_f32[2] = a4;
  v21 = a2;
  memset(v18, 0, sizeof(v18));
  v20 = 0x7FFFFFFFLL;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v17 = 0x7FFFFFFFLL;
  {
    this = re::initCollision(this);
  }

  v6 = re::globalAllocators(this);
  v7 = (*(*v5 + 32))(v5, v6[2], &v21);
  CollisionShapeAsset = re::AssetHelper::makeCollisionShapeAsset(v4, v7, v18, v15, 0);
  v13[0] = 0;
  v13[2] = 0;
  v13[3] = 0x3F80000000000000;
  v13[1] = 3164854026;
  {
    CollisionShapeAsset = re::initCollision(CollisionShapeAsset);
  }

  v10 = re::globalAllocators(CollisionShapeAsset)[2];
  v22 = v7;
  v11 = (*(*v9 + 160))(v9, v10, &v22, v13, 1, 0, 0);
  v22 = v7;
  re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::add(v18, &v22, v14);
  re::AssetHelper::makeCollisionShapeAsset(v4, v11, v18, v15, 0);
  re::AssetHandle::~AssetHandle(v14);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v15);
  return re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v18);
}

re::AssetHandle *re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::add(uint64_t a1, void *a2, const re::AssetHandle *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 48 * HIDWORD(v10) + 16);
  }

  v7 = re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = re::AssetHandle::AssetHandle((v7 + 16), a3);
  ++*(a1 + 40);
  return result;
}

re::MediaDefaults *re::ecs2::createPlane(re::MediaDefaults *result, float *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = re::MediaDefaults::logEnabled(result);
    if (v4)
    {
      v16 = *re::mediaLogObjects(v4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *a2;
        v18 = a2[1];
        v19 = a2[2];
        v20 = a2[3];
        v21 = a2[4];
        v22 = *(a2 + 20);
        v23 = *(a2 + 21);
        v24 = a2[6];
        v25 = *(a2 + 28);
        v26 = 134220032;
        v27 = v17;
        v28 = 2048;
        v29 = v18;
        v30 = 2048;
        v31 = v19;
        v32 = 2048;
        v33 = v20;
        v34 = 2048;
        v35 = v21;
        v36 = 1024;
        v37 = v22;
        v38 = 1024;
        v39 = v23;
        v40 = 2048;
        v41 = v24;
        v42 = 1024;
        v43 = v25;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] createPlane: width: %f, height: %f, flatDepth: %f, cornerRadius: %f,theta: %f, positiveWrap: %d, enableSpecularAndFresnel: %d, bevelFrontDepth: %fcustomUV: %d", &v26, 0x50u);
      }
    }

    v5 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v7 = v5;
    v8 = *a2;
    *(v5 + 48) = *a2;
    *(v5 + 44) = a2[2];
    *(v5 + 40) = 0;
    *&v9 = a2[3];
    if (*&v9 == 0.0 || *&v9 > 0.0 && ((*&v6 = *&v9 + *&v9, *&v8 > (*&v9 + *&v9)) ? (v10 = a2[1] <= *&v6) : (v10 = 1), !v10))
    {
      *(v5 + 56) = LODWORD(v9);
      *(v5 + 32) = 16;
    }

    *(v5 + 26) = 64;
    *(v5 + 64) = a2[4];
    if (*(a2 + 21))
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      *(v5 + 36) = 0;
    }

    *(v5 + 60) = v11;
    if ((atomic_load_explicit(&qword_1EE1A9948, memory_order_acquire) & 1) == 0)
    {
      v5 = __cxa_guard_acquire(&qword_1EE1A9948);
      if (v5)
      {
        _MergedGlobals_277 = *(a2 + 6);
        __cxa_guard_release(&qword_1EE1A9948);
      }
    }

    if (*(a2 + 28) == 1)
    {
      if (*(a2 + 21) == 1)
      {
        v7[13].i32[0] = _MergedGlobals_277;
      }

      v7[12] = vdup_lane_s32(*(a2 + 8), 0);
      v7[11] = 1056964608;
      v7[9] = *(a2 + 12);
      v7[10] = *(a2 + 10);
      v12 = re::MediaDefaults::logEnabled(v5);
      if (v12)
      {
        v14 = *re::mediaLogObjects(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = a2[8];
          v26 = 134217984;
          v27 = v15;
          _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] createPlane with uvScale: %f", &v26, 0xCu);
        }
      }
    }

    else
    {
      v13 = 1056964608;
      *v7[11].i8 = xmmword_1E30747B0;
      if (*(a2 + 21) == 1)
      {
        LODWORD(v13) = _MergedGlobals_277;
        v7[13].i32[0] = _MergedGlobals_277;
      }

      else
      {
        v7[13].i32[0] = 0;
      }
    }

    re::ecs2::UILayerGeometryComponent::buildGeomMesh(v7, *&v13, v9, v6);
    return re::ecs2::Component::markDirty(v7);
  }

  return result;
}

uint64_t re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 48 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 40) = a3;
  ++*(a1 + 28);
  return v7 + 48 * v5;
}

void re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

void *re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::move(void *result, uint64_t a2)
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
        result = re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::allocEntry(v4, *(v7 + v5 + 40) % *(v4 + 6), *(v7 + v5 + 40));
        result[1] = *(*(a2 + 16) + v5 + 8);
        v8 = (*(a2 + 16) + v5);
        result[3] = 0;
        result[4] = 0;
        result[2] = 0;
        result[3] = v8[3];
        v8[3] = 0;
        v9 = result[2];
        result[2] = 0;
        result[2] = v8[2];
        v8[2] = v9;
        v10 = result[4];
        result[4] = v8[4];
        v8[4] = v10;
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

void *re::ecs2::allocInfo_UILayerGeometryService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_278))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9958, "UILayerGeometryService");
    __cxa_guard_release(&_MergedGlobals_278);
  }

  return &unk_1EE1A9958;
}

void re::ecs2::initInfo_UILayerGeometryService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x2FEC9E4C8A81EA0CLL;
  v8[1] = "UILayerGeometryService";
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
  *(this + 8) = &re::ecs2::initInfo_UILayerGeometryService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::ShadowManager::ShadowManager(re::ShadowManager *this)
{
  *this = &unk_1F5CF19E0;
  *(this + 4) = 1065353216;
  *(this + 20) = xmmword_1E3072DE0;
  *(this + 9) = 3;
  *(this + 40) = xmmword_1E3072DF0;
  *(this + 28) = 0;
  *(this + 58) = 1;
  *(this + 4) = xmmword_1E3072E00;
  *(this + 20) = 1061158912;
  *(this + 84) = 1;
  *(this + 88) = xmmword_1E3072E10;
  *(this + 104) = xmmword_1E3072E20;
  *(this + 15) = 0x3DCCCCCD41F00000;
  *(this + 32) = 1097877340;
  *(this + 132) = 1;
  *(this + 9) = xmmword_1E30476B0;
  *(this + 160) = 1;
  *(this + 22) = 0x3F8000003F2D42C4;
  *(this + 23) = 0x193F800000;
  *(this + 12) = xmmword_1E3072E30;
  *(this + 26) = 1056964608;
  *(this + 54) = 0x40000000;
  *(this + 110) = 256;
  *(this + 28) = 0x3F80000000000000;
  *(this + 66) = 0;
  result = 0.0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 268) = 0x7FFFFFFFLL;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 316) = 0x7FFFFFFFLL;
  *(this + 41) = 1;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 116) = 0;
  *(this + 468) = 0x7FFFFFFFLL;
  *(this + 60) = 0;
  return result;
}

void re::ShadowManager::~ShadowManager(re::ShadowManager *this)
{
  *this = &unk_1F5CF19E0;

  v2 = *(this + 54);
  if (v2)
  {
    v3 = (this + 432);
    v4 = *(this + 116);
    if (v4)
    {
      v5 = 0;
      for (i = 0; i < v4; ++i)
      {
        v7 = *(this + 56);
        v8 = *(v7 + v5);
        if (v8 < 0)
        {
          v9 = v7 + v5;
          *(v7 + v5) = v8 & 0x7FFFFFFF;
          v10 = *(v7 + v5 + 16);
          if (v10)
          {

            *(v9 + 16) = 0;
            v4 = *(this + 116);
          }
        }

        v5 += 32;
      }

      v2 = *v3;
    }

    (*(*v2 + 40))(v2, *(this + 55));
    *(this + 116) = 0;
    *v3 = 0u;
    *(this + 28) = 0u;
    *(this + 468) = 0x7FFFFFFFLL;
  }

  re::AssetHandle::~AssetHandle((this + 408));
  re::AssetHandle::~AssetHandle((this + 384));
  re::AssetHandle::~AssetHandle((this + 360));
  re::AssetHandle::~AssetHandle((this + 336));
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 35);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 29);
}

{
  re::ShadowManager::~ShadowManager(this);

  JUMPOUT(0x1E6906520);
}

void re::ShadowManager::getShadowParams(re::ShadowManager *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 12);
  *(a3 + 160) = *(this + 11);
  *(a3 + 176) = v4;
  *(a3 + 192) = *(this + 13);
  v5 = *(this + 8);
  *(a3 + 96) = *(this + 7);
  *(a3 + 112) = v5;
  v6 = *(this + 10);
  *(a3 + 128) = *(this + 9);
  *(a3 + 144) = v6;
  v7 = *(this + 4);
  *(a3 + 32) = *(this + 3);
  *(a3 + 48) = v7;
  v8 = *(this + 6);
  *(a3 + 64) = *(this + 5);
  *(a3 + 80) = v8;
  v9 = *(this + 2);
  *a3 = *(this + 1);
  *(a3 + 16) = v9;
  if ((atomic_load_explicit(&qword_1EE1A99F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A99F0))
  {
    re::Defaults::BOOLValue(&v52, "MeshShadow.EnableTweaking", a2);
    if (v52)
    {
      v51 = BYTE1(v52);
    }

    else
    {
      v51 = 0;
    }

    _MergedGlobals_279 = v51;
    __cxa_guard_release(&qword_1EE1A99F0);
  }

  if (_MergedGlobals_279 == 1)
  {
    re::Defaults::BOOLValue(&v52, "MeshShadow.ForceShadowUpdate", a2);
    if (v52 == 1)
    {
      *(a3 + 40) = BYTE1(v52);
    }

    re::Defaults::uintValue(&v52, "MeshShadow.TileResolution", v10);
    if (v52 == 1)
    {
      *(a3 + 4) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.BlurSizeScale", v11);
    if (v52 == 1)
    {
      *a3 = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.IntensityScale", v12);
    if (v52 == 1)
    {
      *(a3 + 60) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.OpacityCurveFactor", v13);
    if (v52 == 1)
    {
      *(a3 + 64) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.BoundsDecayRate", v14);
    if (v52 == 1)
    {
      *(a3 + 48) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.BelowReceiverDecayRate", v15);
    if (v52 == 1)
    {
      *(a3 + 56) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.ReceiverDecayRate", v16);
    if (v52 == 1)
    {
      *(a3 + 52) = HIDWORD(v52);
    }

    re::Defaults::BOOLValue(&v52, "MeshShadow.EnableNearFade", v17);
    if (v52 == 1)
    {
      *(a3 + 68) = BYTE1(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.NearFadeStart", v18);
    if (v52 == 1)
    {
      *(a3 + 72) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.NearFadeEnd", v19);
    if (v52 == 1)
    {
      *(a3 + 76) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.NearFadeNormalizationDistance", v20);
    if (v52 == 1)
    {
      *(a3 + 80) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.FalloffBias", v21);
    if (v52 == 1)
    {
      *(a3 + 84) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.DepthErrorMultiplier", v22);
    if (v52 == 1)
    {
      *(a3 + 88) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.OffsetMeshShadow", v23);
    if (v52 == 1)
    {
      *(a3 + 96) = HIDWORD(v52);
    }

    re::Defaults::BOOLValue(&v52, "MeshShadow.DebugClearShadowTextureArray", v24);
    if (v52 == 1)
    {
      *(a3 + 41) = BYTE1(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.NormalThresholdForFlatShadow", v25);
    if (v52 == 1)
    {
      *(a3 + 104) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.FadeRangeMultiplier", v26);
    if (v52 == 1)
    {
      *(a3 + 108) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.MaxMipDistance", v27);
    if (v52 == 1)
    {
      *(a3 + 92) = HIDWORD(v52);
    }

    re::Defaults::uintValue(&v52, "MeshShadow.NumMips", v28);
    if (v52 == 1)
    {
      *(a3 + 16) = HIDWORD(v52);
    }

    re::Defaults::uintValue(&v52, "MeshShadow.MinContentWidth", v29);
    if (v52 == 1)
    {
      *(a3 + 12) = HIDWORD(v52);
    }

    re::Defaults::uintValue(&v52, "MeshShadow.MinContentWidthUI", v30);
    if (v52 == 1)
    {
      *(a3 + 20) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.MinBlurRadiusInWorldSpace", v31);
    if (v52 == 1)
    {
      *(a3 + 28) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.MinZFar", v32);
    if (v52 == 1)
    {
      *(a3 + 32) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.MaxCasterBias", v33);
    if (v52 == 1)
    {
      *(a3 + 36) = HIDWORD(v52);
    }

    re::Defaults::intValue(&v52, "MeshShadow.PlaneProxy.Steps", v34);
    if (v52 == 1)
    {
      *(a3 + 172) = HIDWORD(v52);
    }

    re::Defaults::BOOLValue(&v52, "MeshShadow.PlaneProxy.UseCylindricalProxy", v35);
    if (v52 == 1)
    {
      *(a3 + 205) = BYTE1(v52);
    }

    re::Defaults::BOOLValue(&v52, "MeshShadow.PlaneProxy.RegenerateMesh", v36);
    if (v52 == 1)
    {
      *(a3 + 204) = BYTE1(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.DepthRatio", v37);
    if (v52 == 1)
    {
      *(a3 + 160) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.WidthRatio", v38);
    if (v52 == 1)
    {
      *(a3 + 164) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.CurveFactor", v39);
    if (v52 == 1)
    {
      *(a3 + 200) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.zTop", v40);
    if (v52 == 1)
    {
      *(a3 + 176) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.zBottom", v41);
    if (v52 == 1)
    {
      *(a3 + 180) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.xTop", v42);
    if (v52 == 1)
    {
      *(a3 + 184) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.xBottom", v43);
    if (v52 == 1)
    {
      *(a3 + 188) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.yTop", v44);
    if (v52 == 1)
    {
      *(a3 + 192) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.yBottom", v45);
    if (v52 == 1)
    {
      *(a3 + 196) = HIDWORD(v52);
    }

    re::Defaults::floatValue(&v52, "MeshShadow.PlaneProxy.TiltFadeOpacityFalloffExp", v46);
    if (v52 == 1)
    {
      *(a3 + 112) = HIDWORD(v52);
    }

    re::Defaults::BOOLValue(&v52, "MeshShadow.PlaneProxy.EnablePlaneProxyTiltFade", v47);
    if (v52 == 1)
    {
      *(a3 + 116) = BYTE1(v52);
    }
  }

  v48 = *(a3 + 4) + (21 << (*(a3 + 16) - 1)) - 1;
  v49 = v48 | (v48 >> 1) | ((v48 | (v48 >> 1)) >> 2);
  v50 = v49 | (v49 >> 4) | ((v49 | (v49 >> 4)) >> 8);
  *(a3 + 8) = (v50 | HIWORD(v50)) + 1;
}

float re::ShadowManager::getClusterData@<S0>(re::ShadowManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 28);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(a2 + 8, this + 232);
  *(a2 + 56) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  result = NAN;
  *(a2 + 92) = 0x7FFFFFFFLL;
  v5 = *(this + 35);
  if (v5)
  {
    if (*(this + 77) <= 3u)
    {
      v6 = 3;
    }

    else
    {
      v6 = *(this + 77);
    }

    re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(a2 + 56, v5, v6);
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::copy(a2 + 56, this + 280);
  }

  *(a2 + 104) = *(this + 41);
  if (re::ShadowManager::getMutableDeprecatedShadowParams(void)::deprecatedShadowParams == 1)
  {
    result = *&dword_1ECF1C4AC;
    *a2 = dword_1ECF1C4AC;
  }

  if (byte_1ECF1C4B0 == 1)
  {
    result = *&dword_1ECF1C4B4;
    *(a2 + 4) = dword_1ECF1C4B4;
  }

  return result;
}

void re::ShadowManager::transformForShadowProxy(re::ShadowManager *a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  re::ShadowManager::getShadowParams(a1, a2, v10);
  if (v10[205] == 1)
  {

    re::internal::shadows::calcCylShadowProxyLocalTransform(a2, a3, a4);
  }

  else
  {
    v7 = re::MeshShadowCasterParams::PlaneProxyParams::calcShadowProxyThicknessInLocalCoord(a2, a3);
    v8 = a2->i32[0];
    v9 = a2->i32[1];
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = v8;
    *(a4 + 20) = v9;
    *(a4 + 40) = v7;
    *(a4 + 60) = 1065353216;
  }
}

void re::ShadowManager::setShadowClusterRootUpdateHandler(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 480);
  *(a1 + 480) = v3;
}

void re::ShadowManager::clearShadowClusterRootUpdateHandler(re::ShadowManager *this)
{
  v1 = *(this + 60);
  *(this + 60) = 0;
}

id re::ShadowManager::getShadowClusterRootUpdateHandler(const void **this)
{
  v1 = _Block_copy(this[60]);

  return v1;
}

void re::ShadowManager::init(uint64_t a1, re::StringID *a2)
{
  v4 = (a1 + 360);
  v5 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v5 + 8))(&v19);
  v6 = *v4;
  *v4 = v19;
  v19 = v6;
  v7 = *(a1 + 376);
  *(a1 + 376) = v20;
  v20 = v7;
  re::AssetHandle::~AssetHandle(&v19);
  v8 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v8 + 8))(&v19);
  v9 = *(a1 + 336);
  *(a1 + 336) = v19;
  v19 = v9;
  v10 = *(a1 + 352);
  *(a1 + 352) = v20;
  v20 = v10;
  re::AssetHandle::~AssetHandle(&v19);
  v11 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v11 + 8))(&v19);
  v12 = *(a1 + 384);
  *(a1 + 384) = v19;
  v19 = v12;
  v13 = *(a1 + 400);
  *(a1 + 400) = v20;
  v20 = v13;
  re::AssetHandle::~AssetHandle(&v19);
  v14 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v14 + 8))(&v19);
  v15 = v4[3];
  v4[3] = v19;
  v19 = v15;
  v16 = *(a1 + 424);
  *(a1 + 424) = v20;
  v20 = v16;
  re::AssetHandle::~AssetHandle(&v19);
  re::internal::shadows::initializeMeshShadowDefaults(v17, v18);
}

void re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::setCapacity(a1, v4);
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
        re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 32;
    }
  }
}

void re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(v13, v4, a2);
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
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 32;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v13);
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

uint64_t re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 32 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 32 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 32 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 32 * v8 + 8) = *(*(a1 + 16) + 32 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v8) = a3;
  *(*(a1 + 16) + 32 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

uint64_t re::ecs2::CustomDeformerComponent::getInputObjectCount(re::ecs2::CustomDeformerComponent *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 6);
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

  return *(*(this + 8) + 120 * a2 + 56);
}

uint64_t re::ecs2::CustomDeformerComponent::getInputObject(re::ecs2::CustomDeformerComponent *this, unint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  if (v4 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v5 = MEMORY[0x1E69E9C10];
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

    v17 = 797;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
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

    v17 = 797;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3;
  v6 = *(this + 8) + 120 * a2;
  v4 = *(v6 + 56);
  if (v4 <= a3)
  {
    goto LABEL_8;
  }

  return **(*(v6 + 72) + 96 * a3 + 48);
}

unint64_t re::ecs2::CustomDeformerComponent::getInputObjectMeshID(re::ecs2::CustomDeformerComponent *this, unint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  if (v4 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v5 = MEMORY[0x1E69E9C10];
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

    v17 = 797;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
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

    v17 = 797;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3;
  v6 = *(this + 8) + 120 * a2;
  v4 = *(v6 + 56);
  if (v4 <= a3)
  {
    goto LABEL_8;
  }

  return *(v6 + 72) + 96 * a3;
}

void re::ecs2::CustomDeformerComponent::setCustomDeformerDeformationModel(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a1[6];
  if (v10 <= a3)
  {
    do
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::add((a1 + 4), &v16);
      re::DynamicArray<re::MeshDeformationIndex>::deinit(v21);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v18 + 8);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v16);
      ++v10;
    }

    while (v10 <= a3);
    v10 = a1[6];
  }

  if (v10 <= a3)
  {
    v15 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = a3;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v13, &v15, &v16, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  re::ecs2::CustomDeformerComponent::CustomDeformerData::addMappedDeformationDataToArray(a2, a4, a5, a1[8] + 120 * a3);
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::add(_anonymous_namespace_ *result, uint64_t a2)
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

        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 120 * v5;
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
  *(v11 + 112) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 80) = 0;
  *(v11 + 104) = 0;
  v18 = *(a2 + 88);
  *(v11 + 80) = *(a2 + 80);
  *(v11 + 88) = v18;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v19 = *(v11 + 96);
  *(v11 + 96) = *(a2 + 96);
  *(a2 + 96) = v19;
  v20 = *(v11 + 112);
  *(v11 + 112) = *(a2 + 112);
  *(a2 + 112) = v20;
  ++*(a2 + 104);
  ++*(v11 + 104);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void re::ecs2::CustomDeformerComponent::setCustomDeformerDeformationInput(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a1[6];
  if (v10 <= a3)
  {
    do
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::add((a1 + 4), &v16);
      re::DynamicArray<re::MeshDeformationIndex>::deinit(v21);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v18 + 8);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v16);
      ++v10;
    }

    while (v10 <= a3);
    v10 = a1[6];
  }

  if (v10 <= a3)
  {
    v15 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = a3;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v13, &v15, &v16, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  re::ecs2::CustomDeformerComponent::CustomDeformerData::addMappedDeformationDataToArray(a2, a4, a5, a1[8] + 120 * a3 + 40);
}

void re::ecs2::CustomDeformerComponent::setForceContinuousDeformations(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v7 = a2;
  v54 = *MEMORY[0x1E69E9840];
  v9 = a1[6];
  if (v9 <= a2)
  {
    do
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::add((a1 + 4), &v39);
      re::DynamicArray<re::MeshDeformationIndex>::deinit(v44);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v41 + 8);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v39);
      ++v9;
    }

    while (v9 <= v7);
    v9 = a1[6];
  }

  if (v9 <= v7)
  {
    goto LABEL_40;
  }

  v10 = a1[8] + 120 * v7;
  v11 = *(v10 + 96);
  if (!v11)
  {
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  while (1)
  {
    v4 = *(v10 + 96);
    if (v4 <= v7)
    {
      v38 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v49 = 789;
      v50 = 2048;
      v51 = v7;
      v52 = 2048;
      v53 = v4;
      _os_log_send_and_compose_impl(v30, &v38, &v39, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v37);
      _os_crash_msg();
      __break(1u);
LABEL_40:
      v38 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v49 = 789;
      v50 = 2048;
      v51 = v7;
      v52 = 2048;
      v53 = v9;
      _os_log_send_and_compose_impl(v33, &v38, &v39, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v37);
      _os_crash_msg();
      __break(1u);
LABEL_44:
      v38 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "removeStableAt";
      v48 = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v49 = 969;
      v50 = 2048;
      v51 = v7;
      v52 = 2048;
      v53 = v4;
      _os_log_send_and_compose_impl(v36, &v38, &v39, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v37);
      _os_crash_msg();
      __break(1u);
    }

    if (re::MeshIdentifierAsset::operator==((*(v10 + 112) + v9), a3))
    {
      break;
    }

    ++v7;
    v9 += 48;
    if (v11 == v7)
    {
      goto LABEL_18;
    }
  }

  v4 = *(v10 + 96);
  if (v4 <= v7)
  {
    goto LABEL_44;
  }

  v12 = *(v10 + 112);
  if (v4 - 1 > v7 && 48 * v4 - 48 != v9)
  {
    v13 = 0;
    v14 = 48 * v4 - v9 - 48;
    v15 = v12 + v9;
    do
    {
      *(v15 + v13) = *(v15 + v13 + 48);
      re::StringID::operator=((v15 + v13 + 8), (v15 + v13 + 56));
      re::StringID::operator=((v15 + v13 + 24), (v15 + v13 + 72));
      *(v12 + v13 + v9 + 40) = *(v12 + v13 + v9 + 88);
      v13 += 48;
    }

    while (v14 != v13);
    v4 = *(v10 + 96);
    v12 = *(v10 + 112);
  }

  v16 = v12 + 48 * v4;
  re::StringID::destroyString((v16 - 24));
  re::StringID::destroyString((v16 - 40));
  --*(v10 + 96);
  ++*(v10 + 104);
  if (a4)
  {
LABEL_18:
    LOBYTE(v39) = *a3;
    re::StringID::StringID((&v39 + 8), (a3 + 8));
    v17 = re::StringID::StringID((&v40 + 8), (a3 + 24));
    BYTE8(v41) = a4;
    v18 = *(v10 + 88);
    v19 = *(v10 + 96);
    if (v19 >= v18)
    {
      v20 = v19 + 1;
      if (v18 < v19 + 1)
      {
        if (*(v10 + 80))
        {
          v21 = 2 * v18;
          v22 = v18 == 0;
          v23 = 8;
          if (!v22)
          {
            v23 = v21;
          }

          if (v23 <= v20)
          {
            v24 = v20;
          }

          else
          {
            v24 = v23;
          }

          v17 = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::ForcedContinuousDeformations>::setCapacity((v10 + 80), v24);
        }

        else
        {
          v17 = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::ForcedContinuousDeformations>::setCapacity((v10 + 80), v20);
          ++*(v10 + 104);
        }
      }

      v19 = *(v10 + 96);
    }

    v25 = *(v10 + 112) + 48 * v19;
    *v25 = v39;
    v26 = BYTE8(v39);
    *(v25 + 8) = *(v25 + 8) & 0xFFFFFFFFFFFFFFFELL | BYTE8(v39) & 1;
    *(v25 + 8) = *(&v39 + 1) & 0xFFFFFFFFFFFFFFFELL | v26 & 1;
    *(v25 + 16) = v40;
    *(&v39 + 1) = 0;
    *&v40 = &str_67;
    v27 = BYTE8(v40);
    *(v25 + 24) = *(v25 + 24) & 0xFFFFFFFFFFFFFFFELL | BYTE8(v40) & 1;
    *(v25 + 24) = *(&v40 + 1) & 0xFFFFFFFFFFFFFFFELL | v27 & 1;
    *(v25 + 32) = v41;
    *(&v40 + 1) = 0;
    *&v41 = &str_67;
    *(v25 + 40) = BYTE8(v41);
    ++*(v10 + 96);
    ++*(v10 + 104);
    if (BYTE8(v40))
    {
      if (BYTE8(v40))
      {
      }
    }

    *(&v40 + 1) = 0;
    *&v41 = &str_67;
    if (BYTE8(v39))
    {
      if (BYTE8(v39))
      {
      }
    }
  }
}

uint64_t *re::ecs2::CustomDeformerComponent::updateDeformerInputData(re::ecs2::CustomDeformerComponent *this, const re::RenderManager *a2, const re::MeshAsset *a3, const re::MeshNameMap *a4)
{
  v95 = *MEMORY[0x1E69E9840];
  v8 = *(*(this + 2) + 200);
  v9 = *(v8 + 256);
  v10 = *(a2 + 18);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  inited = objc_initWeak(&location, v11);
  v13 = re::globalAllocators(inited);
  v14 = (*(*v13[2] + 32))(v13[2], 24, 8);
  *(v14 + 1) = v9;
  *(v14 + 2) = 0;
  if (v9)
  {
    if (v9 >= 0x666666666666667)
    {
      goto LABEL_72;
    }

    *(v14 + 2) = v16;
    if (!v16)
    {
LABEL_73:
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v18 = v9 - 1;
    if (v9 != 1)
    {
      do
      {
        v16[4] = 0;
        v16[1] = 0;
        v16[2] = 0;
        *v16 = 0;
        *(v16 + 6) = 0;
        v16 += 5;
        --v18;
      }

      while (v18);
    }

    v16[4] = 0;
    v16[1] = 0;
    v16[2] = 0;
    *v16 = 0;
    *(v16 + 6) = 0;
  }

  v69 = v8;
  v19 = (v8 + 232);
  v90 = 0uLL;
  *&v91 = 0;
  *(&v91 + 1) = re::globalAllocators(v16)[2];
  *&v92 = 0;
  re::FramePersistentPtr<re::ecs2::CustomDeformerComponent::CustomDeformerInputs,re::FrameManager>::reset(this + 9, &location, v14, &v90);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v90);
  objc_destroyWeak(&location);
  location = 0;
  v70 = *(this + 6);
  if (v70)
  {
    v5 = 0;
    do
    {
      v20 = *(this + 6);
      if (v20 <= v5)
      {
        goto LABEL_68;
      }

      v71 = (*(this + 8) + 120 * v5);
      v21 = v71[2];
      v75 = v5 + 1;
      if (v21)
      {
        v22 = v71[4];
        v72 = v22 + 96 * v21;
        do
        {
          re::MeshNameMap::meshInstancePartsForIdentifier(&v90, a4, v22);
          *v80 = a3;
          *&v80[8] = a4;
          *&v80[16] = v90;
          v83 = v92;
          v84 = 0;
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v80[24], &v90 + 8);
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v90 + 8);
          v20 = *&v80[16];
          if (*&v80[16])
          {
            for (i = 0; v20 != i; ++i)
            {
              *&v90 = i;
              v24 = (*(*v84 + 16))(v84, &v90);
              started = re::MeshNameMap::meshPartStartIndexForInstance(a4, v24);
              *&v90 = i;
              v25 = (*(*v84 + 16))(v84, &v90);
              v26 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex(v19, started + WORD2(v25));
              if (v9 > v26)
              {
                v27 = v26;
                v28 = *(this + 10);
                started = *(v28 + 8);
                if (started <= v26)
                {
                  v76 = 0;
                  v93 = 0u;
                  v94 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v90 = 0u;
                  v45 = MEMORY[0x1E69E9C10];
                  v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v85 = 136315906;
                  *&v85[4] = "operator[]";
                  *&v85[12] = 1024;
                  if (v46)
                  {
                    v47 = 3;
                  }

                  else
                  {
                    v47 = 2;
                  }

                  *&v85[14] = 468;
                  v86 = 2048;
                  v87 = v27;
                  v88 = 2048;
                  v89 = started;
                  _os_log_send_and_compose_impl(v47, &v76, &v90, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v67, v68);
                  _os_crash_msg();
                  __break(1u);
LABEL_51:
                  v76 = 0;
                  v93 = 0u;
                  v94 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v90 = 0u;
                  v48 = MEMORY[0x1E69E9C10];
                  v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v85 = 136315906;
                  *&v85[4] = "operator[]";
                  *&v85[12] = 1024;
                  if (v49)
                  {
                    v50 = 3;
                  }

                  else
                  {
                    v50 = 2;
                  }

                  *&v85[14] = 789;
                  v86 = 2048;
                  v87 = v5;
                  v88 = 2048;
                  v89 = v27;
                  _os_log_send_and_compose_impl(v50, &v76, &v90, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v67, v68);
                  _os_crash_msg();
                  __break(1u);
LABEL_55:
                  v76 = 0;
                  v93 = 0u;
                  v94 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v90 = 0u;
                  v51 = MEMORY[0x1E69E9C10];
                  v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v85 = 136315906;
                  *&v85[4] = "operator[]";
                  *&v85[12] = 1024;
                  if (v52)
                  {
                    v53 = 3;
                  }

                  else
                  {
                    v53 = 2;
                  }

                  *&v85[14] = 468;
                  v86 = 2048;
                  v87 = v27;
                  v88 = 2048;
                  v89 = started;
                  _os_log_send_and_compose_impl(v53, &v76, &v90, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v67, v68);
                  _os_crash_msg();
                  __break(1u);
LABEL_59:
                  v76 = 0;
                  v93 = 0u;
                  v94 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v90 = 0u;
                  v54 = MEMORY[0x1E69E9C10];
                  v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v85 = 136315906;
                  *&v85[4] = "operator[]";
                  *&v85[12] = 1024;
                  if (v55)
                  {
                    v56 = 3;
                  }

                  else
                  {
                    v56 = 2;
                  }

                  *&v85[14] = 789;
                  v86 = 2048;
                  v87 = v5;
                  v88 = 2048;
                  v89 = v27;
                  _os_log_send_and_compose_impl(v56, &v76, &v90, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v67, v68);
                  _os_crash_msg();
                  __break(1u);
LABEL_63:
                  re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v27, a4);
                  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v63, v65);
                  __break(1u);
LABEL_64:
                  v79 = 0;
                  v93 = 0u;
                  v94 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v90 = 0u;
                  v57 = MEMORY[0x1E69E9C10];
                  v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v80 = 136315906;
                  *&v80[4] = "operator[]";
                  *&v80[12] = 1024;
                  if (v58)
                  {
                    v59 = 3;
                  }

                  else
                  {
                    v59 = 2;
                  }

                  *&v80[14] = 468;
                  *&v80[18] = 2048;
                  *&v80[20] = v27;
                  v81 = 2048;
                  v82 = started;
                  _os_log_send_and_compose_impl(v59, &v79, &v90, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v80, 38, v67, v68);
                  _os_crash_msg();
                  __break(1u);
LABEL_68:
                  *v85 = 0;
                  v93 = 0u;
                  v94 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v90 = 0u;
                  v60 = MEMORY[0x1E69E9C10];
                  v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v80 = 136315906;
                  *&v80[4] = "operator[]";
                  *&v80[12] = 1024;
                  if (v61)
                  {
                    v62 = 3;
                  }

                  else
                  {
                    v62 = 2;
                  }

                  *&v80[14] = 789;
                  *&v80[18] = 2048;
                  *&v80[20] = v5;
                  v81 = 2048;
                  v82 = v20;
                  _os_log_send_and_compose_impl(v62, v85, &v90, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v80, 38, v67, v68);
                  _os_crash_msg();
                  __break(1u);
LABEL_72:
                  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v9);
                  _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v64, v66);
                  __break(1u);
                  goto LABEL_73;
                }

                started = *(v28 + 16) + 40 * v26;
                v27 = *(started + 16);
                if (v5 >= v27)
                {
                  re::DynamicArray<re::CustomDeformerInputData>::resize(started, v75);
                  v27 = *(started + 16);
                }

                if (v27 <= v5)
                {
                  goto LABEL_51;
                }

                v29 = *(v22 + 48);
                if (v29)
                {
                  *(*(started + 32) + 16 * v5) = *v29;
                }
              }
            }
          }

          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v80[24]);
          v22 += 96;
        }

        while (v22 != v72);
      }

      v30 = v71[7];
      if (v30)
      {
        v31 = v71[9];
        v73 = v31 + 96 * v30;
        do
        {
          re::MeshNameMap::meshInstancePartsForIdentifier(&v90, a4, v31);
          *v80 = a3;
          *&v80[8] = a4;
          *&v80[16] = v90;
          v83 = v92;
          v84 = 0;
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v80[24], &v90 + 8);
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v90 + 8);
          v20 = *&v80[16];
          if (*&v80[16])
          {
            for (j = 0; v20 != j; ++j)
            {
              *&v90 = j;
              v33 = (*(*v84 + 16))(v84, &v90);
              started = re::MeshNameMap::meshPartStartIndexForInstance(a4, v33);
              *&v90 = j;
              v34 = (*(*v84 + 16))(v84, &v90);
              v35 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex(v19, started + WORD2(v34));
              if (v9 > v35)
              {
                v27 = v35;
                v36 = *(this + 10);
                started = *(v36 + 8);
                if (started <= v35)
                {
                  goto LABEL_55;
                }

                started = *(v36 + 16) + 40 * v35;
                v27 = *(started + 16);
                if (v5 >= v27)
                {
                  re::DynamicArray<re::CustomDeformerInputData>::resize(started, v75);
                  v27 = *(started + 16);
                }

                if (v27 <= v5)
                {
                  goto LABEL_59;
                }

                v37 = *(v31 + 48);
                if (v37)
                {
                  *(*(started + 32) + 16 * v5 + 8) = *v37;
                }
              }
            }
          }

          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v80[24]);
          v31 += 96;
        }

        while (v31 != v73);
      }

      ++v5;
    }

    while (v75 != v70);
  }

  v38 = *(v69 + 392);
  a4 = *(v38 + 88);
  v20 = *(v38 + 96);
  v76 = v19;
  v77 = 11;
  *v85 = v19;
  *&v85[8] = 11;
  *&v85[16] = 0;
  while (1)
  {
    result = re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v90, &v76);
    if (*&v85[12] == HIDWORD(v90) && *&v85[16] == v91)
    {
      return result;
    }

    v40 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(v85);
    v27 = v40;
    if (a4 <= v40)
    {
      goto LABEL_63;
    }

    v42 = *(this + 10);
    started = *(v42 + 8);
    if (started <= v40)
    {
      goto LABEL_64;
    }

    v43 = v20 + 168 * v40;
    v44 = *(v42 + 16) + 40 * v40;
    ++*(v43 + 11);
    *(v43 + 112) = v44;
    re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(v85);
  }
}

void re::DynamicArray<re::CustomDeformerInputData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::CustomDeformerInputData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 16 * v4), 16 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::ecs2::CustomDeformerComponent::processContinuousUpdateMode(re::ecs2::CustomDeformerComponent *this, const re::MeshAsset *a2, const re::MeshNameMap *a3)
{
  v4 = this;
  v108 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  v83 = 0;
  v84 = 0;
  v85 = 1;
  v86 = 0;
  v87 = 0;
  v6 = *(a3 + 42);
  v70 = v5;
  if (v6)
  {
    v6 = *(*(a3 + 43) + 4 * v6 - 4);
  }

  if ((v6 & 0x3F) != 0)
  {
    v7 = (v6 >> 6) + 1;
  }

  else
  {
    v7 = v6 >> 6;
  }

  v88 = v6;
  *&v103 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v83, v7, &v103);
  v73 = *(v4 + 6);
  if (v73)
  {
    v8 = 0;
    v71 = &v86;
    v72 = v4;
    while (1)
    {
      v9 = *(v4 + 6);
      if (v9 <= v8)
      {
        v77 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v103 = 0u;
        v67 = MEMORY[0x1E69E9C10];
        v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        if (v68)
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        *&v90[14] = 789;
        *&v90[18] = 2048;
        *&v90[20] = v8;
        v91 = 2048;
        v92 = v9;
        _os_log_send_and_compose_impl(v69, &v77, &v103, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v70, &v86);
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(v4 + 8);
      v77 = 0;
      v78 = 0;
      v79 = 1;
      v80 = 0;
      v81 = 0;
      v11 = *(a3 + 42);
      if (v11)
      {
        v11 = *(*(a3 + 43) + 4 * v11 - 4);
      }

      if ((v11 & 0x3F) != 0)
      {
        v12 = (v11 >> 6) + 1;
      }

      else
      {
        v12 = v11 >> 6;
      }

      v82 = v11;
      *&v103 = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v77, v12, &v103);
      v74 = v8;
      v75 = v10 + 120 * v8;
      v13 = *(v75 + 96);
      if (v13)
      {
        v14 = *(v75 + 112);
        v15 = &v14[48 * v13];
        do
        {
          re::MeshNameMap::meshInstancePartsForIdentifier(&v103, a3, v14);
          *v90 = a2;
          *&v90[8] = a3;
          *&v90[16] = v103;
          v93 = v105;
          v94 = 0;
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v90[24], &v103 + 8);
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v103 + 8);
          v16 = *&v90[16];
          if (*&v90[16])
          {
            for (i = 0; v16 != i; ++i)
            {
              *&v103 = i;
              v18 = (*(*v94 + 16))(v94, &v103);
              started = re::MeshNameMap::meshPartStartIndexForInstance(a3, v18);
              *&v103 = i;
              v20 = (*(*v94 + 16))(v94, &v103);
              v21 = 1 << (started + BYTE4(v20));
              v22 = (started + WORD2(v20)) >> 6;
              v23 = v78;
              if (v14[40] == 1)
              {
                if (v78 <= v22)
                {
                  v89 = 0;
                  v106 = 0u;
                  v107 = 0u;
                  v104 = 0u;
                  v105 = 0u;
                  v103 = 0u;
                  v45 = MEMORY[0x1E69E9C10];
                  v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v95 = 136315906;
                  v96 = "operator[]";
                  v97 = 1024;
                  if (v46)
                  {
                    v47 = 3;
                  }

                  else
                  {
                    v47 = 2;
                  }

                  v98 = 858;
                  v99 = 2048;
                  v100 = v22;
                  v101 = 2048;
                  v102 = v23;
                  _os_log_send_and_compose_impl(v47, &v89, &v103, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v95, 38, v70, &v86);
                  _os_crash_msg();
                  __break(1u);
LABEL_78:
                  v89 = 0;
                  v106 = 0u;
                  v107 = 0u;
                  v104 = 0u;
                  v105 = 0u;
                  v103 = 0u;
                  v48 = MEMORY[0x1E69E9C10];
                  v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v95 = 136315906;
                  v96 = "operator[]";
                  v97 = 1024;
                  if (v49)
                  {
                    v50 = 3;
                  }

                  else
                  {
                    v50 = 2;
                  }

                  v98 = 858;
                  v99 = 2048;
                  v100 = v22;
                  v101 = 2048;
                  v102 = v23;
                  _os_log_send_and_compose_impl(v50, &v89, &v103, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v95, 38, v70, v71);
                  _os_crash_msg();
                  __break(1u);
LABEL_82:
                  if (v41)
                  {
                    v51 = 0;
                    v52 = 8 * v41;
                    v53 = v42;
                    do
                    {
                      v54 = *v53++;
                      v51 |= v54;
                      v52 -= 8;
                    }

                    while (v52);
                    if (v51)
                    {
                      goto LABEL_86;
                    }
                  }

LABEL_91:
                  v62 = 0;
                  goto LABEL_98;
                }

                if (v79)
                {
                  v24 = &v80;
                }

                else
                {
                  v24 = v81;
                }

                v25 = v24[v22] | v21;
              }

              else
              {
                if (v78 <= v22)
                {
                  goto LABEL_78;
                }

                if (v79)
                {
                  v24 = &v80;
                }

                else
                {
                  v24 = v81;
                }

                v25 = v24[v22] & ~v21;
              }

              v24[v22] = v25;
            }
          }

          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v90[24]);
          v14 += 48;
        }

        while (v14 != v15);
      }

      v26 = v78;
      v27 = v81;
      if (v79)
      {
        v27 = &v80;
      }

      if (v78 >= 0xB)
      {
        break;
      }

      v29 = v74;
      if (v78)
      {
        v30 = 0;
        v31 = 8 * v78;
        do
        {
          v32 = *v27++;
          v30 |= v32;
          v31 -= 8;
        }

        while (v31);
        if (v30)
        {
          goto LABEL_42;
        }
      }

LABEL_59:
      v38 = *(v75 + 96);
      *(v75 + 96) = 0;
      if (v38)
      {
        v39 = 48 * v38;
        v40 = (*(v75 + 112) + 24);
        do
        {
          re::StringID::destroyString(v40);
          re::StringID::destroyString((v40 - 16));
          v40 = (v40 + 48);
          v39 -= 48;
        }

        while (v39);
      }

      ++*(v75 + 104);
      v4 = v72;
LABEL_63:
      if (v77 && (v79 & 1) == 0)
      {
        (*(*v77 + 40))();
      }

      v8 = v29 + 1;
      if (v8 == v73)
      {
        goto LABEL_67;
      }
    }

    v28 = 8 * v78;
    v29 = v74;
    while (!*v27)
    {
      ++v27;
      v28 -= 8;
      if (!v28)
      {
        goto LABEL_59;
      }
    }

LABEL_42:
    v4 = v72;
    if (v82 > v88)
    {
      if ((v82 & 0x3F) != 0)
      {
        v33 = (v82 >> 6) + 1;
      }

      else
      {
        v33 = v82 >> 6;
      }

      v88 = v82;
      *&v103 = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v83, v33, &v103);
      v26 = v78;
    }

    if (v26 >= v84)
    {
      v26 = v84;
    }

    if (v26)
    {
      for (j = 0; j != v26; ++j)
      {
        if (v79)
        {
          v35 = &v80;
        }

        else
        {
          v35 = v81;
        }

        v36 = v35[j];
        if (v85)
        {
          v37 = &v86;
        }

        else
        {
          v37 = v87;
        }

        v37[j] |= v36;
      }
    }

    goto LABEL_63;
  }

LABEL_67:
  v41 = v84;
  v42 = v87;
  if (v85)
  {
    v42 = &v86;
  }

  if (v84 < 0xB)
  {
    goto LABEL_82;
  }

  v43 = 8 * v84;
  v44 = v42;
  while (!*v44)
  {
    ++v44;
    v43 -= 8;
    if (!v43)
    {
      goto LABEL_91;
    }
  }

LABEL_86:
  if ((v41 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v55 = 0;
    v56 = *(v70 + 200);
    v57 = *(v56 + 392);
    v59 = *(v57 + 88);
    v58 = *(v57 + 96);
    while (1)
    {
      v61 = *v42++;
      v60 = v61;
      if (v61)
      {
        break;
      }

      v55 -= 64;
      if (!--v41)
      {
        goto LABEL_97;
      }
    }

    v63 = __clz(__rbit64(v60));
    if (v63 + 1 != v55)
    {
      FirstBitSet = v63 - v55;
      do
      {
        v65 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex((v56 + 232), FirstBitSet);
        if (v59 > v65)
        {
          ++*(v58 + 168 * v65 + 11);
        }

        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v83, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_97:
  v62 = 1;
LABEL_98:
  if (v83 && (v85 & 1) == 0)
  {
    (*(*v83 + 40))();
  }

  return v62;
}

BOOL re::MeshIdentifierAsset::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || !re::StringID::operator==(a1 + 1, a2 + 1))
  {
    return 0;
  }

  return re::StringID::operator==(a1 + 3, a2 + 3);
}

void re::ecs2::CustomDeformerComponent::CustomDeformerData::addMappedDeformationDataToArray(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v41[7] = *MEMORY[0x1E69E9840];
  if (*(a4 + 16))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = 96 * v9 + 40;
      while (re::MeshIdentifierAsset::operator==((*(a4 + 32) + v10 - 40), a2))
      {
        ++v9;
        v11 = *(a4 + 16);
        v10 += 96;
        if (v9 >= v11)
        {
          goto LABEL_10;
        }
      }

      if (v8 != v9)
      {
        v12 = *(a4 + 32);
        v13 = v12 + v10;
        v14 = v12 + 96 * v8;
        *v14 = *(v13 - 40);
        re::StringID::operator=((v14 + 8), (v13 - 32));
        re::StringID::operator=((v14 + 24), (v13 - 16));
        re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::operator=((v14 + 40), v13);
      }

      ++v9;
      ++v8;
      v11 = *(a4 + 16);
    }

    while (v9 < v11);
LABEL_10:
    if (v8 != v11)
    {
      v15 = 96 * v11 - 96 * v8;
      v16 = (*(a4 + 32) + 96 * v8 + 40);
      do
      {
        re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::~FramePersistentPtr(v16);
        re::StringID::destroyString((v16 - 2));
        re::StringID::destroyString((v16 - 4));
        v16 += 12;
        v15 -= 96;
      }

      while (v15);
      *(a4 + 16) = v8;
      ++*(a4 + 24);
    }
  }

  v36 = *a2;
  re::StringID::StringID(&v37, (a2 + 8));
  v17 = re::StringID::StringID(&v39, (a2 + 24));
  v18 = *(a1 + 144);
  v19 = re::globalAllocators(v17);
  v20 = (*(*v19[2] + 32))(v19[2], 40, 8);
  v21 = *a3;
  *a3 = 0;
  *v20 = v21;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100]((v20 + 1), (a3 + 1));
  if (v18)
  {
    v22 = (v18 + 8);
  }

  else
  {
    v22 = 0;
  }

  inited = objc_initWeak(v41, v22);
  v41[1] = v20;
  v24 = re::globalAllocators(inited);
  v41[5] = v24[2];
  v41[6] = 0;
  v25 = *(a4 + 8);
  v26 = *(a4 + 16);
  if (v26 >= v25)
  {
    v27 = v26 + 1;
    if (v25 < v26 + 1)
    {
      if (*a4)
      {
        v28 = 2 * v25;
        v29 = v25 == 0;
        v30 = 8;
        if (!v29)
        {
          v30 = v28;
        }

        if (v30 <= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v30;
        }

        re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::setCapacity(a4, v31);
      }

      else
      {
        re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::setCapacity(a4, v27);
        ++*(a4 + 24);
      }
    }

    v26 = *(a4 + 16);
  }

  v32 = *(a4 + 32) + 96 * v26;
  *v32 = v36;
  v33 = v37;
  *(v32 + 8) = *(v32 + 8) & 0xFFFFFFFFFFFFFFFELL | v37 & 1;
  *(v32 + 8) = v37 & 0xFFFFFFFFFFFFFFFELL | v33 & 1;
  *(v32 + 16) = v38;
  v37 = 0;
  v38 = &str_67;
  v34 = v39;
  *(v32 + 24) = *(v32 + 24) & 0xFFFFFFFFFFFFFFFELL | v39 & 1;
  *(v32 + 24) = v39 & 0xFFFFFFFFFFFFFFFELL | v34 & 1;
  *(v32 + 32) = v40;
  v39 = 0;
  v40 = &str_67;
  re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::FramePersistentPtr(v32 + 40, v41);
  ++*(a4 + 16);
  ++*(a4 + 24);
  v35 = re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::~FramePersistentPtr(v41);
  if (v39)
  {
    if (v39)
    {
    }
  }

  v39 = 0;
  v40 = &str_67;
  if (v37)
  {
    if (v37)
    {
    }
  }
}

void *re::ecs2::CustomDeformerSystemComponentStateImpl::CustomDeformerSystemComponentStateImpl(void *a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CF1A98;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 2), v4);
  return a1;
}

BOOL re::ecs2::CustomDeformerSystemComponentStateImpl::processDirtyComponents(re::DeformerFeatureFlags *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  isCustomDeformerLoggingEnabled = re::DeformerFeatureFlags::isCustomDeformerLoggingEnabled(a1);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v52 = a4;
  v53 = *buf;
  v54 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v52);
      v11 = *(v10 + 16);
      v12 = v11[24];
      v13 = v11[25];
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = a3 + 4;
        if (!isCustomDeformerLoggingEnabled)
        {
          goto LABEL_36;
        }

        v16 = *(v10 + 16);
        do
        {
          v17 = v16;
          v16 = *(v16 + 32);
        }

        while (v16);
        v18 = (*(**(*(v17 + 24) + 56) + 32))(*(*(v17 + 24) + 56));
        v19 = re::ServiceLocator::service<re::FrameManager>(v18);
        v20 = *re::ecsComponentsLogObjects(v19);
        v15 = a3 + 4;
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          goto LABEL_36;
        }

        v21 = *(v19 + 3) & 0xFFFFFFFFFFFFFFFLL;
        v22 = v11[37];
        *buf = 134218242;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        v23 = v20;
        v24 = "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, missing mesh or mesh deformation for entity - %s";
      }

      else
      {
        if (!v13[30])
        {
          goto LABEL_30;
        }

        v25 = v13[46];
        if (v25 <= 0xB)
        {
          v55 = 0;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          memset(buf, 0, sizeof(buf));
          v48 = MEMORY[0x1E69E9C10];
          v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v56 = 136315906;
          v57 = "operator[]";
          v58 = 1024;
          if (v49)
          {
            v50 = 3;
          }

          else
          {
            v50 = 2;
          }

          v59 = 476;
          v60 = 2048;
          v61 = 11;
          v62 = 2048;
          v63 = v25;
          _os_log_send_and_compose_impl(v50, &v55, buf, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v51, (a3 + 5));
          _os_crash_msg();
          __break(1u);
        }

        v26 = v13[49];
        v27 = !*(v13[47] + 1064) || v26 == 0;
        if (!v27 && *(v12 + 40))
        {
          v15 = a3 + 5;
          if (*(v10 + 48))
          {
            goto LABEL_36;
          }

          v28 = *(v26 + 88);
          if (v28)
          {
            v29 = 168 * v28;
            v30 = (*(v26 + 96) + 112);
            do
            {
              ++*(v30 - 101);
              *v30 = 0;
              v30 += 21;
              v29 -= 168;
            }

            while (v29);
          }

          v31 = v11;
          v15 = a3 + 4;
          if (!isCustomDeformerLoggingEnabled)
          {
            goto LABEL_36;
          }

          do
          {
            v32 = v31;
            v31 = v31[4];
          }

          while (v31);
          v33 = (*(**(v32[3] + 56) + 32))(*(v32[3] + 56));
          v34 = re::ServiceLocator::service<re::FrameManager>(v33);
          v35 = *re::ecsComponentsLogObjects(v34);
          v15 = a3 + 4;
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          v36 = *(v34 + 3) & 0xFFFFFFFFFFFFFFFLL;
          v37 = v11[37];
          *buf = 134218242;
          *&buf[4] = v36;
          *&buf[12] = 2080;
          *&buf[14] = v37;
          v23 = v35;
          v24 = "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, not custom deformation data set for entity - %s";
        }

        else
        {
LABEL_30:
          v15 = a3 + 4;
          if (!isCustomDeformerLoggingEnabled)
          {
            goto LABEL_36;
          }

          v38 = *(v10 + 16);
          do
          {
            v39 = v38;
            v38 = *(v38 + 32);
          }

          while (v38);
          v40 = (*(**(*(v39 + 24) + 56) + 32))(*(*(v39 + 24) + 56));
          v41 = re::ServiceLocator::service<re::FrameManager>(v40);
          v42 = *re::ecsComponentsLogObjects(v41);
          v15 = a3 + 4;
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          v43 = *(v41 + 3) & 0xFFFFFFFFFFFFFFFLL;
          v44 = v11[37];
          *buf = 134218242;
          *&buf[4] = v43;
          *&buf[12] = 2080;
          *&buf[14] = v44;
          v23 = v42;
          v24 = "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, custom deformer not assigned for entity - %s";
        }
      }

      _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_INFO, v24, buf, 0x16u);
      v15 = a3 + 4;
LABEL_36:
      v45 = v52;
      v46 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v53);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v45, v46, *v15);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v53);
    }

    while (v53 != a5 || v54 != 0xFFFF || HIWORD(v54) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

_anonymous_namespace_ *re::ServiceLocator::service<re::FrameManager>(re::StringID *a1)
{
  result = re::ServiceLocator::serviceOrNull<re::FrameManager>(a1);
  if (!result)
  {
    v2 = re::introspect<re::FrameManager>();
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v2, v7);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    v3 = re::introspect<re::FrameManager>();
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::CustomDeformerSystemComponentStateImpl::processPreparingComponents(re::DeformerFeatureFlags *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  isCustomDeformerLoggingEnabled = re::DeformerFeatureFlags::isCustomDeformerLoggingEnabled(a1);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
  v10 = v43;
  v11 = v44;
  v12 = v44;
  v43 = a4;
  v44 = v10;
  v45 = v11;
  if (v10 != a5 || v12 != 0xFFFFFFFFLL)
  {
    do
    {
      v14 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v43);
      v15 = *(v14 + 2);
      v16 = v15[24];
      v17 = re::AssetHandle::loadedAsset<re::MeshAsset>((v16 + 32));
      if (v17)
      {
        v18 = v17;
        v19 = (v17 + 640);
        v20 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v20)
        {
          v21 = (v20 + 216);
        }

        else
        {
          v21 = v19;
        }

        re::ecs2::CustomDeformerComponent::updateDeformerInputData(v14, *(*(a1 + 1) + 232), v18, v21);
        v22 = v43;
        v23 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
        v24 = a3[2];
        v25 = a3[6];
      }

      else
      {
        v26 = *(v16 + 40);
        if (!v26 || (v27 = atomic_load((v26 + 896)), v27 != 3))
        {
          if (isCustomDeformerLoggingEnabled)
          {
            v35 = v15;
            do
            {
              v36 = v35;
              v35 = v35[4];
            }

            while (v35);
            v37 = (*(**(v36[3] + 56) + 32))(*(v36[3] + 56));
            v38 = re::ServiceLocator::service<re::FrameManager>(v37);
            v39 = *re::ecsComponentsLogObjects(v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = *(v38 + 3) & 0xFFFFFFFFFFFFFFFLL;
              v41 = v15[37];
              *buf = 134218242;
              v47 = v40;
              v48 = 2080;
              v49 = v41;
              _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_INFO, "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, mesh still loading for entity - %s", buf, 0x16u);
            }
          }

          re::AssetHandle::loadAsync((v16 + 32));
          goto LABEL_25;
        }

        if (isCustomDeformerLoggingEnabled)
        {
          v28 = v15;
          do
          {
            v29 = v28;
            v28 = v28[4];
          }

          while (v28);
          v30 = (*(**(v29[3] + 56) + 32))(*(v29[3] + 56));
          v31 = re::ServiceLocator::service<re::FrameManager>(v30);
          v32 = *re::ecsComponentsLogObjects(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = *(v31 + 3) & 0xFFFFFFFFFFFFFFFLL;
            v34 = v15[37];
            *buf = 134218242;
            v47 = v33;
            v48 = 2080;
            v49 = v34;
            _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_INFO, "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, mesh failed to load for entity - %s", buf, 0x16u);
          }
        }

        v22 = v43;
        v23 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
        v24 = a3[2];
        v25 = a3[4];
      }

      re::ecs2::ComponentBucketsBase::moveComponent(v24, v22, v23, v25);
LABEL_25:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v44);
    }

    while (v44 != a5 || v45 != 0xFFFF || HIWORD(v45) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::CustomDeformerSystemComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v20, a5, 0);
  v8 = v20;
  v9 = v21;
  v10 = v21;
  v20 = a4;
  v21 = v8;
  v22 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20);
      v13 = *(v12 + 2);
      v14 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((*(v13 + 192) + 32));
      v15 = re::ecs2::EntityComponentCollection::get((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v15)
      {
        v16 = (v15 + 216);
      }

      else
      {
        v16 = (v14 + 640);
      }

      if ((re::ecs2::CustomDeformerComponent::processContinuousUpdateMode(v12, v14, v16) & 1) == 0)
      {
        v17 = v20;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v17, v18, *(a3 + 32));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

void *re::ecs2::CustomDeformerSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  re::StackScratchAllocator::StackScratchAllocator(v44);
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v38 = v44;
  v39 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
  v40 += 2;
  v5 = a1[63];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v43 = a1[63];
  v33[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v38, v6, v33);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v33[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 44, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[45] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 58));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v12 = a1[63];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v37 = a1[63];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 58), &v38);
  v14 = v42;
  if (v40)
  {
    v14 = &v41;
  }

  v15 = v39;
  if ((v39 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 37), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v32, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v32, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v32, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 58), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 37));
  if (v33[0] && (v34 & 1) == 0)
  {
    (*(*v33[0] + 40))();
  }

  if (v38 && (v40 & 1) == 0)
  {
    (*(*v38 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v44);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

unint64_t re::ecs2::CustomDeformerSystem::willAddSceneToECSService(re::ecs2::CustomDeformerSystem *this, re::ecs2::Scene *a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::init(v12, this + 296, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,4ul>::setBucketsCapacity(this + 37, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::init(v24, this + 296, v52);
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

uint64_t re::ecs2::CustomDeformerSystem::willRemoveSceneFromECSService(re::ecs2::CustomDeformerSystem *this, re::ecs2::Scene *a2)
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

void *re::ecs2::allocInfo_CustomDeformerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_280))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9A18, "CustomDeformerComponent");
    __cxa_guard_release(&_MergedGlobals_280);
  }

  return &unk_1EE1A9A18;
}

void re::ecs2::initInfo_CustomDeformerComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xBE4AC62966A262B4;
  v16[1] = "CustomDeformerComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A9A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9A08))
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
    qword_1EE1A9A00 = v14;
    __cxa_guard_release(&qword_1EE1A9A08);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A9A00;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CustomDeformerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CustomDeformerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CustomDeformerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CustomDeformerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223CustomDeformerComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::ecs2::allocInfo_CustomDeformerSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9A10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9AA8, "CustomDeformerSystem");
    __cxa_guard_release(&qword_1EE1A9A10);
  }

  return &unk_1EE1A9AA8;
}

void re::ecs2::initInfo_CustomDeformerSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xCEE3922955205E4;
  v8[1] = "CustomDeformerSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_CustomDeformerSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CustomDeformerSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CustomDeformerSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::CustomDeformerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::CustomDeformerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CustomDeformerSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CustomDeformerSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::CustomDeformerSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);
  a3[32] = &unk_1F5CF1A98;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 34);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::CustomDeformerSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);
  a1[32] = &unk_1F5CF1A98;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 34);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::CustomDeformerComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::CustomDeformerSystem::~CustomDeformerSystem(re::ecs2::CustomDeformerSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF1A98;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF1A98;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x78uLL))
        {
          v2 = 120 * a2;
          result = (*(*result + 32))(result, 120 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 120, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
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
        v10 = v8 + 120 * v9;
        v11 = v7 + 7;
        do
        {
          *(v11 - 3) = 0;
          *(v11 - 6) = 0;
          *(v11 - 5) = 0;
          *(v11 - 7) = 0;
          *(v11 - 8) = 0;
          v12 = *(v8 + 8);
          *(v11 - 7) = *v8;
          *(v11 - 6) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 5);
          *(v11 - 5) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *(v11 - 3);
          *(v11 - 3) = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 8);
          v11[2] = 0;
          *(v11 - 1) = 0;
          *v11 = 0;
          *(v11 - 2) = 0;
          *(v11 + 2) = 0;
          v15 = *(v8 + 48);
          *(v11 - 2) = *(v8 + 40);
          *(v8 + 40) = 0;
          *(v11 - 1) = v15;
          *(v8 + 48) = 0;
          v16 = *v11;
          *v11 = *(v8 + 56);
          *(v8 + 56) = v16;
          v17 = v11[2];
          v11[2] = *(v8 + 72);
          *(v8 + 72) = v17;
          ++*(v8 + 64);
          ++*(v11 + 2);
          v11[7] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v18 = *(v8 + 88);
          v11[3] = *(v8 + 80);
          *(v8 + 80) = 0;
          v11[4] = v18;
          *(v8 + 88) = 0;
          v19 = v11[5];
          v11[5] = *(v8 + 96);
          *(v8 + 96) = v19;
          v20 = v11[7];
          v11[7] = *(v8 + 112);
          *(v8 + 112) = v20;
          ++*(v8 + 104);
          ++*(v11 + 12);
          re::DynamicArray<re::MeshDeformationIndex>::deinit(v8 + 80);
          re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(v8 + 40);
          re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(v8);
          v11 += 15;
          v8 += 120;
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

void *re::DynamicArray<re::CustomDeformerInputData>::setCapacity(void *result, unint64_t a2)
{
  if (result[1] == a2)
  {
    return result;
  }

  v4 = result;
  if (result[2] > a2)
  {
    return result;
  }

  v5 = *result;
  if (!*v4)
  {
    result = re::DynamicArray<re::CustomDeformerInputData>::setCapacity(v4, a2);
    ++*(v4 + 6);
    return result;
  }

  if (a2 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
    __break(1u);
    goto LABEL_12;
  }

  v2 = 16 * a2;
  result = (*(*v5 + 32))(v5, 16 * a2, 8);
  if (!result)
  {
LABEL_12:
    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v4 + 8));
    result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
    __break(1u);
    return result;
  }

  v7 = result;
  if (v4[1])
  {
    memcpy(result, v4[4], 16 * v4[2]);
    result = (*(**v4 + 40))(*v4, v4[4]);
  }

  v4[4] = v7;
  v4[1] = a2;
  return result;
}

void *re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::ForcedContinuousDeformations>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::ForcedContinuousDeformations>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
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
        v10 = v8 + 48 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 8);
          v12 = *(v8 + 8);
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | *(v8 + 8) & 1;
          v11[1] = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = &str_67;
          *(v8 + 8) = 0;
          v15 = *(v8 + 24);
          v14 = v8 + 24;
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[3] = *v14 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[4] = *(v14 + 8);
          *v14 = 0;
          *(v14 + 8) = &str_67;
          *(v11 + 40) = *(v14 + 16);
          re::StringID::destroyString(v14);
          re::StringID::destroyString(v13);
          v11 += 6;
          v8 = v14 + 24;
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

id *re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::operator=(id *from, uint64_t a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  objc_moveWeak(v6, from);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(from, a2);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a2, v6);
  objc_destroyWeak(v6);
  v4 = from[1];
  from[1] = *(a2 + 8);
  *(a2 + 8) = v4;
  v6[3] = from[5];
  v6[4] = 0;
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(v6, (from + 2));
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((from + 2), a2 + 16);
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(a2 + 16, v6);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v6);
  return from;
}

void *re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
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
        v10 = (v8 + 96 * v9);
        v11 = (v7 + 5);
        v12 = (v8 + 40);
        do
        {
          *(v11 - 40) = *(v12 - 40);
          v13 = *(v12 - 4);
          *(v11 - 32) = *(v11 - 32) & 0xFFFFFFFFFFFFFFFELL | *(v12 - 4) & 1;
          *(v11 - 32) = *(v12 - 4) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          *(v11 - 24) = *(v12 - 3);
          *(v12 - 3) = &str_67;
          *(v12 - 4) = 0;
          v14 = *(v12 - 2);
          *(v11 - 16) = *(v11 - 16) & 0xFFFFFFFFFFFFFFFELL | *(v12 - 2) & 1;
          *(v11 - 16) = *(v12 - 2) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
          *(v11 - 8) = *(v12 - 1);
          *(v12 - 1) = &str_67;
          *(v12 - 2) = 0;
          re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::FramePersistentPtr(v11, v12);
          re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::~FramePersistentPtr(v12);
          re::StringID::destroyString((v12 - 2));
          re::StringID::destroyString((v12 - 4));
          v11 += 96;
          v15 = v12 + 7;
          v12 += 12;
        }

        while (v15 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

id *re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::FramePersistentPtr(uint64_t a1, uint64_t a2)
{
  inited = objc_initWeak(a1, 0);
  *(a1 + 8) = 0;
  *(a1 + 40) = re::globalAllocators(inited)[2];
  *(a1 + 48) = 0;

  return re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::operator=(a1, a2);
}

uint64_t re::introspect<re::FrameManager>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::FrameManager>(BOOL)::info = re::introspect_FrameManager(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[239];
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF1B90;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF1BE8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF1C40;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF1C98;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF1B90;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF1BE8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF1C40;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF1C98;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1B90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1B90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1BE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1BE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1C40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1C40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1C98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1C98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::CustomDeformerComponent>(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD97C8;
  *(v2 + 64) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  inited = objc_initWeak((v2 + 72), 0);
  *(a1 + 80) = 0;
  *(a1 + 112) = re::globalAllocators(inited)[2];
  *(a1 + 120) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223CustomDeformerComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 7;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_DebugMeshComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_281, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_281))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9B58, "DebugMeshComponent");
    __cxa_guard_release(&_MergedGlobals_281);
  }

  return &unk_1EE1A9B58;
}

void re::ecs2::initInfo_DebugMeshComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xE189FFFAC063EC3ALL;
  v20[1] = "DebugMeshComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A9B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9B40))
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
    qword_1EE1A9B48 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicString>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "shaderDebugMode";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A9B50 = v18;
    __cxa_guard_release(&qword_1EE1A9B40);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A9B48;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DebugMeshComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DebugMeshComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DebugMeshComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DebugMeshComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218DebugMeshComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::internal::defaultConstruct<re::ecs2::DebugMeshComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v3 = (this + 32);
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CDBC70;
  *v3 = 0u;
  *(v4 + 48) = 0u;

  return re::DynamicString::setCapacity(v3, 0);
}

void *re::internal::defaultConstructV2<re::ecs2::DebugMeshComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v1 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CDBC70;
  *v1 = 0u;
  *(v2 + 48) = 0u;

  return re::DynamicString::setCapacity(v1, 0);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218DebugMeshComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 3;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_InputTargetComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9BF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9CB8, "InputTargetComponent");
    __cxa_guard_release(&qword_1EE1A9BF0);
  }

  return &unk_1EE1A9CB8;
}

void re::ecs2::initInfo_InputTargetComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v43[0] = 0xE32789C8E68F8AC4;
  v43[1] = "InputTargetComponent";
  if (v43[0])
  {
    if (v43[0])
    {
    }
  }

  *(this + 2) = v44;
  if ((atomic_load_explicit(&qword_1EE1A9BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9BF8))
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
    qword_1EE1A9C30 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "allowsIndirectInput";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1B00000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A9C38 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "enabled";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1C00000003;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A9C40 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "isHandAnchored";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1D00000004;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A9C48 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::ecs2::introspect_AnchoringOrientation(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "handAnchoringChirality";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1E00000005;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1A9C50 = v30;
    v31 = re::introspectionAllocator();
    re::ecs2::introspect_InputTargetHitTestingType(v31, v32);
    v33 = (*(*v31 + 32))(v31, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "hitTestingType";
    *(v33 + 16) = &qword_1EE1A9C70;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x1F00000006;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1A9C58 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "allowsDirectTouchInput";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x1900000007;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1A9C60 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_BOOL(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "allowsDirectPinchInput";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x1A00000008;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1A9C68 = v41;
    __cxa_guard_release(&qword_1EE1A9BF8);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1A9C30;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::InputTargetComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::InputTargetComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::InputTargetComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::InputTargetComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220InputTargetComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v42 = v44;
}

void re::internal::defaultConstruct<re::ecs2::InputTargetComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF1CF0;
  *(v3 + 25) = 16843009;
  *(v3 + 29) = -256;
  *(v3 + 31) = 1;
}

void re::internal::defaultConstructV2<re::ecs2::InputTargetComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF1CF0;
  *(v1 + 25) = 16843009;
  *(v1 + 29) = -256;
  *(v1 + 31) = 1;
}

void re::ecs2::introspect_InputTargetHitTestingType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9C00, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A9C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9C08))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A9C70, "InputTargetHitTestingType", 1, 1, 1, 1);
      qword_1EE1A9C70 = &unk_1F5D0C658;
      qword_1EE1A9CB0 = &re::ecs2::introspect_InputTargetHitTestingType(BOOL)::enumTable;
      dword_1EE1A9C80 = 9;
      __cxa_guard_release(&qword_1EE1A9C08);
    }

    if (_MergedGlobals_282)
    {
      break;
    }

    _MergedGlobals_282 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A9C70, a2);
    v37 = 0xD9B509DEEBC34D24;
    v38 = "InputTargetHitTestingType";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A9CB0;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1A9C90 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1A9C00))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Unknown";
      qword_1EE1A9C10 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Strong";
      qword_1EE1A9C18 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Weak";
      qword_1EE1A9C20 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Hierarchical";
      qword_1EE1A9C28 = v35;
      __cxa_guard_release(&qword_1EE1A9C00);
    }
  }
}

void re::ecs2::InputTargetComponent::~InputTargetComponent(re::ecs2::InputTargetComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220InputTargetComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 9;
    *(a2 + 8) = 0;
  }
}

BOOL re::KeyValueStore::isSupportedValueType(re::KeyValueStore *this, const re::IntrospectionBase *a2)
{
  v3 = &unk_1EE187000;
  {
    v3 = &unk_1EE187000;
    if (v13)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v14);
      v3 = &unk_1EE187000;
    }
  }

  if (v3[42] == this)
  {
    return 1;
  }

  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v15)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v16);
      v4 = &unk_1EE187000;
    }
  }

  if (v4[40] == this)
  {
    return 1;
  }

  v5 = &unk_1EE187000;
  {
    v5 = &unk_1EE187000;
    if (v17)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v18);
      v5 = &unk_1EE187000;
    }
  }

  if (v5[41] == this)
  {
    return 1;
  }

  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v19)
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v20);
      v6 = &unk_1EE187000;
    }
  }

  if (v6[38] == this)
  {
    return 1;
  }

  v7 = &unk_1EE187000;
  {
    v7 = &unk_1EE187000;
    if (v21)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v7 = &unk_1EE187000;
    }
  }

  if (v7[48] == this)
  {
    return 1;
  }

  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v22)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v8 = &unk_1EE187000;
    }
  }

  if (v8[47] == this)
  {
    return 1;
  }

  v9 = &unk_1EE187000;
  {
    v9 = &unk_1EE187000;
    if (v23)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v9 = &unk_1EE187000;
    }
  }

  if (v9[46] == this)
  {
    return 1;
  }

  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v24)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      v10 = &unk_1EE187000;
    }
  }

  if (v10[245] == this)
  {
    return 1;
  }

  v11 = &unk_1EE187000;
  {
    v11 = &unk_1EE187000;
    if (v25)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v11 = &unk_1EE187000;
    }
  }

  return v11[248] == this || re::introspect<re::DynamicString>() == this || re::introspect<re::SkeletalPose>() == this || re::introspect<re::DynamicArray<float>>() == this || re::introspect<re::DynamicArray<re::Vector3<float>>>() == this || re::introspect<long long>(0) == this || re::introspect<re::BlendShapeWeights>() == this || re::introspect<unsigned char>(0) == this;
}

uint64_t re::introspect<re::Quaternion<float>>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[245];
}

uint64_t re::introspect<re::GenericSRT<float>>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[248];
}

uint64_t re::introspect<re::DynamicString>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[231];
}

uint64_t re::introspect<re::SkeletalPose>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v3, v4, v5, v6, v7);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 95);
}

char *re::introspect<re::DynamicArray<float>>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[95];
}

char *re::introspect<re::DynamicArray<re::Vector3<float>>>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0, v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[97];
}

char *re::introspect<long long>(unsigned int a1)
{
  v1 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v1 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v3)
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(a1, v4);
      v1 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v1[24];
}

uint64_t re::introspect<re::BlendShapeWeights>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0, v3, v4, v5, v6, v7);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 109);
}

uint64_t re::introspect<unsigned char>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(a1, v4);
      v1 = &unk_1EE187000;
    }
  }

  return v1[39];
}

void re::KeyValueStore::addOrReplaceValue(re::KeyValueStore *this, const re::IntrospectionBase *a2, StringID *a3, __n128 *a4)
{
  v8 = &unk_1EE187000;
  if (a4)
  {
    if ((explicit & 1) == 0)
    {
      v8 = &unk_1EE187000;
      if (v19)
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v20);
        v8 = &unk_1EE187000;
      }
    }

    if (v8[42] == a2)
    {

      re::KeyValueStore::addOrReplaceValue<BOOL>(this, a3, a4);
    }

    else
    {
      v10 = &unk_1EE187000;
      {
        v10 = &unk_1EE187000;
        if (v21)
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v22);
          v10 = &unk_1EE187000;
        }
      }

      if (v10[40] == a2)
      {

        re::KeyValueStore::addOrReplaceValue<float>(this, a3, a4);
      }

      else
      {
        v11 = &unk_1EE187000;
        {
          v11 = &unk_1EE187000;
          if (v24)
          {
            re::introspect<double>(BOOL)::info = re::introspect_double(0, v25);
            v11 = &unk_1EE187000;
          }
        }

        if (v11[41] == a2)
        {

          re::KeyValueStore::addOrReplaceValue<double>(this, a3, a4);
        }

        else
        {
          v12 = &unk_1EE187000;
          {
            v12 = &unk_1EE187000;
            if (v27)
            {
              re::introspect<int>(BOOL)::info = re::introspect_int(0, v28);
              v12 = &unk_1EE187000;
            }
          }

          if (v12[38] == a2)
          {

            re::KeyValueStore::addOrReplaceValue<int>(this, a3, a4);
          }

          else
          {
            v13 = &unk_1EE187000;
            {
              v13 = &unk_1EE187000;
              if (v30)
              {
                re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
                v13 = &unk_1EE187000;
              }
            }

            if (v13[48] == a2)
            {

              re::KeyValueStore::addOrReplaceValue<re::Vector2<float>>(this, a3, a4);
            }

            else
            {
              v14 = &unk_1EE187000;
              {
                v14 = &unk_1EE187000;
                if (v32)
                {
                  re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
                  v14 = &unk_1EE187000;
                }
              }

              if (v14[47] == a2)
              {

                re::KeyValueStore::addOrReplaceValue<re::Vector3<float>>(this, a3, a4);
              }

              else
              {
                v15 = &unk_1EE187000;
                {
                  v15 = &unk_1EE187000;
                  if (v33)
                  {
                    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
                    v15 = &unk_1EE187000;
                  }
                }

                if (v15[46] == a2)
                {

                  re::KeyValueStore::addOrReplaceValue<re::Vector4<float>>(this, a3, a4);
                }

                else
                {
                  v16 = &unk_1EE187000;
                  {
                    v16 = &unk_1EE187000;
                    if (v34)
                    {
                      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
                      v16 = &unk_1EE187000;
                    }
                  }

                  if (v16[245] == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::Quaternion<float>>(this, a3, a4);
                  }

                  else if (re::introspect<re::GenericSRT<float>>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::GenericSRT<float>>(this, a3, a4);
                  }

                  else if (re::introspect<re::DynamicString>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::DynamicString>(this, a3, a4);
                  }

                  else if (re::introspect<re::SkeletalPose>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::SkeletalPose>(this, a3, a4);
                  }

                  else if (re::introspect<re::DynamicArray<float>>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::DynamicArray<float>>(this, a3, a4);
                  }

                  else if (re::introspect<re::DynamicArray<re::Vector3<float>>>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::DynamicArray<re::Vector3<float>>>(this, a3, a4);
                  }

                  else if (re::introspect<long long>(0) == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<long long>(this, a3, a4);
                  }

                  else if (re::introspect<re::BlendShapeWeights>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::BlendShapeWeights>(this, a3, a4);
                  }

                  else if (re::introspect<unsigned char>(0) == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<unsigned char>(this, a3, a4);
                  }
                }
              }
            }
          }
        }
      }
    }

    return;
  }

  {
    re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v23);
  }

  if (re::introspect<BOOL>(BOOL)::info == a2)
  {
    LOBYTE(v35) = 0;
    re::KeyValueStore::addOrReplaceValue<BOOL>(this, a3, &v35);
    return;
  }

  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v26);
  }

  if (re::introspect<float>(BOOL)::info == a2)
  {
    LODWORD(v35) = 0;
    re::KeyValueStore::addOrReplaceValue<float>(this, a3, &v35);
    return;
  }

  {
    re::introspect<double>(BOOL)::info = re::introspect_double(0, v29);
  }

  if (re::introspect<double>(BOOL)::info == a2)
  {
    *&v35 = 0;
    re::KeyValueStore::addOrReplaceValue<double>(this, a3, &v35);
    return;
  }

  {
    re::introspect<int>(BOOL)::info = re::introspect_int(0, v31);
  }

  if (re::introspect<int>(BOOL)::info == a2)
  {
    LODWORD(v35) = 0;
    re::KeyValueStore::addOrReplaceValue<int>(this, a3, &v35);
    return;
  }

  {
    re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
  }

  if (re::introspect<re::Vector2<float>>(BOOL)::info == a2)
  {
    *&v35 = 0;
    re::KeyValueStore::addOrReplaceValue<re::Vector2<float>>(this, a3, &v35);
    return;
  }

  {
    re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
  }

  if (re::introspect<re::Vector3<float>>(BOOL)::info == a2)
  {
    v35 = 0u;
    re::KeyValueStore::addOrReplaceValue<re::Vector3<float>>(this, a3, &v35);
    return;
  }

  {
    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
  }

  if (re::introspect<re::Vector4<float>>(BOOL)::info == a2)
  {
    v35 = 0uLL;
    re::KeyValueStore::addOrReplaceValue<re::Vector4<float>>(this, a3, &v35);
    return;
  }

  if (re::introspect<re::Quaternion<float>>(0) == a2)
  {
    v35 = xmmword_1E30474D0;
    re::KeyValueStore::addOrReplaceValue<re::Quaternion<float>>(this, a3, &v35);
    return;
  }

  if (re::introspect<re::GenericSRT<float>>() == a2)
  {
    *&v35 = 0x3F8000003F800000;
    *(&v35 + 1) = 1065353216;
    *&v36 = 0;
    *(&v36 + 1) = 0x3F80000000000000;
    v37 = 0uLL;
    re::KeyValueStore::addOrReplaceValue<re::GenericSRT<float>>(this, a3, &v35);
    return;
  }

  if (re::introspect<re::DynamicString>() == a2)
  {
    re::DynamicString::DynamicString(&v35);
    re::KeyValueStore::addOrReplaceValue<re::DynamicString>(this, a3, &v35);
    v17 = v35;
    if (!v35 || (BYTE8(v35) & 1) == 0)
    {
      return;
    }

    v18 = v36;
LABEL_113:
    (*(*v17 + 40))(v17, v18);
    return;
  }

  if (re::introspect<re::SkeletalPose>() == a2)
  {
    v39 = 0;
    v40 = 0;
    v37 = 0u;
    v38 = 0u;
    *&v35 = 0;
    v36 = 0u;
    *(&v35 + 1) = &str_67;
    v41 = 0;
    re::KeyValueStore::addOrReplaceValue<re::SkeletalPose>(this, a3, &v35);
    re::SkeletalPose::~SkeletalPose(&v35);
    return;
  }

  if (re::introspect<re::DynamicArray<float>>() == a2)
  {
    *&v37 = 0;
    *&v36 = 0;
    v35 = 0uLL;
    DWORD2(v36) = 0;
    re::KeyValueStore::addOrReplaceValue<re::DynamicArray<float>>(this, a3, &v35);
LABEL_111:
    v17 = v35;
    if (!v35)
    {
      return;
    }

    v18 = v37;
    if (!v37)
    {
      return;
    }

    goto LABEL_113;
  }

  if (re::introspect<re::DynamicArray<re::Vector3<float>>>() == a2)
  {
    *&v37 = 0;
    *&v36 = 0;
    v35 = 0uLL;
    DWORD2(v36) = 0;
    re::KeyValueStore::addOrReplaceValue<re::DynamicArray<re::Vector3<float>>>(this, a3, &v35);
    goto LABEL_111;
  }

  if (re::introspect<long long>(0) == a2)
  {
    *&v35 = 0;
    re::KeyValueStore::addOrReplaceValue<long long>(this, a3, &v35);
  }

  else if (re::introspect<re::BlendShapeWeights>() == a2)
  {
    v35 = 0u;
    v36 = 0u;
    re::KeyValueStore::addOrReplaceValue<re::BlendShapeWeights>(this, a3, &v35);
    re::BlendShapeWeights::~BlendShapeWeights(&v35);
  }

  else if (re::introspect<unsigned char>(0) == a2)
  {
    LOBYTE(v35) = 0;
    re::KeyValueStore::addOrReplaceValue<unsigned char>(this, a3, &v35);
  }
}

uint64_t re::KeyValueStore::addOrReplaceValue<double>(re::KeyValueStore *a1, StringID *a2, void *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<double>(BOOL)::info = re::introspect_double(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<double>(BOOL)::info)
    {
      return re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 152, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v13);
    }
  }

  v17 = re::introspect<double>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 152, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<int>(re::KeyValueStore *a1, StringID *a2, _DWORD *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<int>(BOOL)::info = re::introspect_int(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<int>(BOOL)::info)
    {
      return re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 200, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v13);
    }
  }

  v17 = re::introspect<int>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 200, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<re::Vector2<float>>(re::KeyValueStore *a1, StringID *a2, void *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::Vector2<float>>(BOOL)::info)
    {
      return re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 248, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
    }
  }

  v15 = re::introspect<re::Vector2<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  return re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 248, a2, a3);
}

double re::KeyValueStore::addOrReplaceValue<re::Vector3<float>>(re::KeyValueStore *a1, StringID *a2, __n128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::Vector3<float>>(BOOL)::info)
    {
      *&result = re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 296, a2, a3).n128_u64[0];
      return result;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }
  }

  v15 = re::introspect<re::Vector3<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 296, a2, a3);
  return result;
}

double re::KeyValueStore::addOrReplaceValue<re::Vector4<float>>(re::KeyValueStore *a1, StringID *a2, __n128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::Vector4<float>>(BOOL)::info)
    {
      *&result = re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 344, a2, a3).n128_u64[0];
      return result;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
    }
  }

  v15 = re::introspect<re::Vector4<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 344, a2, a3);
  return result;
}

double re::KeyValueStore::addOrReplaceValue<re::Quaternion<float>>(re::KeyValueStore *a1, StringID *a2, __n128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::Quaternion<float>>(BOOL)::info)
    {
      *&result = re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 392, a2, a3).n128_u64[0];
      return result;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
    }
  }

  v15 = re::introspect<re::Quaternion<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 392, a2, a3);
  return result;
}

double re::KeyValueStore::addOrReplaceValue<re::GenericSRT<float>>(re::KeyValueStore *a1, StringID *a2, __int128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::GenericSRT<float>>(BOOL)::info)
    {
      *&result = re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 440, a2, a3).n128_u64[0];
      return result;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }
  }

  v15 = re::introspect<re::GenericSRT<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 440, a2, a3);
  return result;
}

re::DynamicString *re::KeyValueStore::addOrReplaceValue<re::DynamicString>(re::KeyValueStore *a1, StringID *a2, const re::DynamicString *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<re::DynamicString>(BOOL)::info)
    {
      return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 488, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v13);
    }
  }

  v17 = re::introspect<re::DynamicString>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 488, a2, a3);
}

void *re::KeyValueStore::addOrReplaceValue<re::SkeletalPose>(uint64_t a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v29);
  if (HIDWORD(v30) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 24) + 32 * HIDWORD(v30);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v28 = v8;
    v8 = v28;
    if (v22)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v23, v24, v25, v26, v27);
      v8 = v28;
    }
  }

  if (v8 != re::introspect<re::SkeletalPose>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v29);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v29);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v17, v18, v19, v20, v21);
    }

    v29 = re::introspect<re::SkeletalPose>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v29);
    return re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 536, a2, a3);
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v29, a1 + 536, a2);
  v15 = HIDWORD(v30);
  if (HIDWORD(v30) != 0x7FFFFFFF)
  {
    ++*(a1 + 576);
    v16 = *(a1 + 552) + 112 * v15;
    v13 = v16 + 24;
    re::StringID::operator=((v16 + 24), a3);
    re::FixedArray<re::GenericSRT<float>>::operator=((v16 + 40), a3 + 2);
    re::DynamicArray<BOOL>::operator=(v16 + 64, a3 + 5);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v16 + 104), a3[10]);
    return v13;
  }

  return re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::SkeletalPose const&>(a1 + 536, v29, v30, a2, a3);
}