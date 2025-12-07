void re::internal::defaultConstruct<re::ecs2::MeshOffsetsAttributes>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::MeshOffsetsAttributes>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::ecs2::allocInfo_MeshOffsetsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC560))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC718, "MeshOffsetsComponent");
    __cxa_guard_release(&qword_1EE1AC560);
  }

  return &unk_1EE1AC718;
}

void re::ecs2::initInfo_MeshOffsetsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0x55761199A1A25594;
  v27[1] = "MeshOffsetsComponent";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1AC568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC568))
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
    qword_1EE1AC580 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE1AC558;
    if (!qword_1EE1AC558)
    {
      v17 = re::ecs2::allocInfo_MeshOffsetsAttributes(v15);
      qword_1EE1AC558 = v17;
      re::ecs2::initInfo_MeshOffsetsAttributes(v17, v18, v19, v20);
    }

    v21 = (*(*v16 + 32))(v16, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "attributes";
    *(v21 + 16) = v17;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000001;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AC588 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_AssetHandle(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "assignedMeshDeformation";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4800000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1AC590 = v25;
    __cxa_guard_release(&qword_1EE1AC568);
  }

  *(this + 2) = 0xD800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AC580;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshOffsetsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshOffsetsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshOffsetsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshOffsetsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220MeshOffsetsComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void *re::ecs2::allocInfo_MeshOffsetsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC570))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC7A8, "MeshOffsetsSystem");
    __cxa_guard_release(&qword_1EE1AC570);
  }

  return &unk_1EE1AC7A8;
}

void re::ecs2::initInfo_MeshOffsetsSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xE2F769280B31FF04;
  v8[1] = "MeshOffsetsSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x23000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshOffsetsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshOffsetsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshOffsetsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshOffsetsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshOffsetsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshOffsetsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshOffsetsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::MeshOffsetsSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[62] = &unk_1F5CF4FB8;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 32);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshOffsetsSystem>(uint64_t *a1)
{
  a1[62] = &unk_1F5CF4FB8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 32);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::MeshOffsetsComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::MeshOffsetsSystem::~MeshOffsetsSystem(re::ecs2::MeshOffsetsSystem *this)
{
  *(this + 62) = &unk_1F5CF4FB8;
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);

  re::ecs2::System::~System(this);
}

{
  *(this + 62) = &unk_1F5CF4FB8;
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF50C0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF5118;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF5170;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF51C8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF50C0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF5118;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF5170;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF51C8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF50C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF50C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5118;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5118;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5170;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5170;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF51C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF51C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4) + 192 * v8;
  *(v9 + 32) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 1;
  *(v9 + 48) = xmmword_1E3047670;
  *(v9 + 64) = xmmword_1E3047680;
  *(v9 + 80) = xmmword_1E30476A0;
  *(v9 + 96) = xmmword_1E30474D0;
  *(v9 + 112) = xmmword_1E3047670;
  *(v9 + 128) = xmmword_1E3047680;
  *(v9 + 144) = xmmword_1E30476A0;
  *(v9 + 160) = xmmword_1E30474D0;
  *(v9 + 176) = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 192 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 192 * a3;
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

  return *(a2 + 32) + 192 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 192 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 192;
        v11 -= 192;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 192 * v2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 192;
      v4 -= 192;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 192 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 192 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::MeshOffsetsComponent>(uint64_t a1)
{
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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
  *(a1 + 160) = 0u;
  v2 = (a1 + 160);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1030;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 104) = -1;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  inited = objc_initWeak(v2, 0);
  *(a1 + 168) = 0;
  *(a1 + 200) = re::globalAllocators(inited)[2];
  *(a1 + 208) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220MeshOffsetsComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::make::shared::unsafelyInplace<re::ecs2::MeshOffsetsSystem>(void *a1)
{
  bzero(a1, 0x230uLL);
  v3 = re::DeformerFeatureFlags::enableAppDeformation(v2);
  re::ecs2::System::System(a1, v3 ^ 1, 1);
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *a1 = &unk_1F5CF5020;
  a1[32] = 0;
  a1[33] = 0;
  *(a1 + 68) = 1;
  a1[36] = 0;
  a1[37] = 0;
  a1[35] = 0;
  *(a1 + 76) = 0;
  *(a1 + 39) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 98) = 1;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  a1[54] = 0;
  *(a1 + 110) = 1;
  *(a1 + 28) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 473) = 0u;
  re::ecs2::MeshOffsetsComponentStateImpl::MeshOffsetsComponentStateImpl((a1 + 62));
  return a1;
}

void re::introspect_LightType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AC840, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AC848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC848))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1ACA90, "LightType", 4, 4, 1, 1);
      qword_1EE1ACA90 = &unk_1F5D0C658;
      qword_1EE1ACAD0 = &re::introspect_LightType(BOOL)::enumTable;
      dword_1EE1ACAA0 = 9;
      __cxa_guard_release(&qword_1EE1AC848);
    }

    if (_MergedGlobals_316)
    {
      break;
    }

    _MergedGlobals_316 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1ACA90, a2);
    v45 = 0x7B5540A1BAA0;
    v46 = "LightType";
    v49 = 208862;
    v50 = "int";
    v4 = v48[0];
    v5 = v48[1];
    if (v49)
    {
      if (v49)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1ACAD0;
      v49 = v4;
      v50 = v5;
      re::TypeBuilder::beginEnumType(v48, &v45, 1, 1, &v49);
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
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(v48, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
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
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v48, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v48, v26);
      xmmword_1EE1ACAB0 = v47;
      if (v45)
      {
        if (v45)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v46);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v44);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1AC840))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Directional";
      qword_1EE1ACA50 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "DirectionalUnshadowed";
      qword_1EE1ACA58 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Point";
      qword_1EE1ACA60 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "PointUnshadowed";
      qword_1EE1ACA68 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "Spot";
      qword_1EE1ACA70 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "SpotUnshadowed";
      qword_1EE1ACA78 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "Ambient";
      qword_1EE1ACA80 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 7;
      *(v43 + 16) = "RectangleUnshadowed";
      qword_1EE1ACA88 = v43;
      __cxa_guard_release(&qword_1EE1AC840);
    }
  }
}

float re::ecs2::downgradeLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 218);
  v5 = *(this + 880);
  v11 = *(this + 108);
  v13 = v5;
  v12 = v4;
  v6 = re::ColorGamut3F::as(&v11, 0, 3);
  result = v7;
  *&v9 = v6;
  *(&v9 + 2) = v7;
  *(this + 54) = v9;
  *(this + 880) = v10;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_LightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC858))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACC08, "LightComponent");
    __cxa_guard_release(&qword_1EE1AC858);
  }

  return &unk_1EE1ACC08;
}

void re::ecs2::initInfo_LightComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v51[0] = 0x758E810C9880594ELL;
  v51[1] = "LightComponent";
  if (v51[0])
  {
    if (v51[0])
    {
    }
  }

  *(this + 2) = v52;
  if ((atomic_load_explicit(&qword_1EE1AC850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC850))
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
    qword_1EE1ACBB0 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "color";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x36000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1ACBB8 = v17;
    v18 = re::introspectionAllocator();
    re::introspect_LightType(v18, v19);
    v20 = (*(*v18 + 32))(v18, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "type";
    *(v20 + 16) = &qword_1EE1ACA90;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x1C00000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1ACBC0 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_float(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "intensity";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x2000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1ACBC8 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_float(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "angle";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x2400000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1ACBD0 = v28;
    v29 = re::introspectionAllocator();
    v30 = re::introspect_Vector2F(1);
    v31 = (*(*v29 + 32))(v29, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "rectangleArea";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x3000000005;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1ACBD8 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::introspect_BOOL(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "rectDoubleSided";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x3800000006;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1ACBE0 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_float(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "radius";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x2800000007;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1ACBE8 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::introspect_float(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "shadowBias";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x3C00000008;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1ACBF0 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::introspect_ColorGamut(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "colorGamut";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x37000000009;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1ACBF8 = v47;
    v48 = re::introspectionAllocator();
    v49 = (*(*v48 + 32))(v48, 64, 8);
    *v49 = 6;
    *(v49 + 8) = 1;
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    *(v49 + 40) = 1;
    *(v49 + 48) = re::ecs2::downgradeLightComponentFromFall2023;
    *(v49 + 56) = 2;
    qword_1EE1ACC00 = v49;
    __cxa_guard_release(&qword_1EE1AC850);
  }

  *(this + 2) = 0x38000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE1ACBB0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs214LightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v50 = v52;
}

float re::ecs2::downgradeAmbientLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 18);
  v5 = *(this + 80);
  v11 = *(this + 8);
  v13 = v5;
  v12 = v4;
  v6 = re::ColorGamut3F::as(&v11, 0, 3);
  result = v7;
  *&v9 = v6;
  *(&v9 + 2) = v7;
  *(this + 4) = v9;
  *(this + 80) = v10;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_AmbientLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC868))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACC98, "AmbientLightComponent");
    __cxa_guard_release(&qword_1EE1AC868);
  }

  return &unk_1EE1ACC98;
}

void re::ecs2::initInfo_AmbientLightComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v29[0] = 0x895FF577E2580A3ELL;
  v29[1] = "AmbientLightComponent";
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  *(this + 2) = v30;
  if ((atomic_load_explicit(&qword_1EE1AC860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC860))
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
    qword_1EE1AC938 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "color";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AC940 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "intensity";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1C00000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AC948 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_ColorGamut(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "colorGamut";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1AC950 = v25;
    v26 = re::introspectionAllocator();
    v27 = (*(*v26 + 32))(v26, 64, 8);
    *v27 = 6;
    *(v27 + 8) = 1;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0;
    *(v27 + 40) = 1;
    *(v27 + 48) = re::ecs2::downgradeAmbientLightComponentFromFall2023;
    *(v27 + 56) = 2;
    qword_1EE1AC958 = v27;
    __cxa_guard_release(&qword_1EE1AC860);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AC938;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AmbientLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AmbientLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AmbientLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AmbientLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AmbientLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v28 = v30;
}

__n128 re::internal::defaultConstruct<re::ecs2::AmbientLightComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  v3[1].n128_u64[0] = 0;
  v3[1].n128_u8[8] = 0;
  v3->n128_u64[0] = &unk_1F5CDCD18;
  v3[1].n128_u32[3] = 1143652352;
  v3[2].n128_u64[0] = 0;
  v3[2].n128_u64[1] = 0;
  v3[3].n128_u32[0] = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v3[4] = result;
  v3[5].n128_u8[0] = 0;
  return result;
}

__n128 re::internal::defaultConstructV2<re::ecs2::AmbientLightComponent>(ArcSharedObject *a1)
{
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  v1[1].n128_u64[0] = 0;
  v1[1].n128_u8[8] = 0;
  v1->n128_u64[0] = &unk_1F5CDCD18;
  v1[1].n128_u32[3] = 1143652352;
  v1[2].n128_u64[0] = 0;
  v1[2].n128_u64[1] = 0;
  v1[3].n128_u32[0] = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v1[4] = result;
  v1[5].n128_u8[0] = 0;
  return result;
}

float re::ecs2::downgradeDirectionalLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 90);
  v5 = *(this + 368);
  v11 = *(this + 44);
  v13 = v5;
  v12 = v4;
  v6 = re::ColorGamut3F::as(&v11, 0, 3);
  result = v7;
  *&v9 = v6;
  *(&v9 + 2) = v7;
  *(this + 22) = v9;
  *(this + 368) = v10;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_DirectionalLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC878))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACD28, "DirectionalLightComponent");
    __cxa_guard_release(&qword_1EE1AC878);
  }

  return &unk_1EE1ACD28;
}

void re::ecs2::initInfo_DirectionalLightComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v33[0] = 0x661AEDCCAE0735E2;
  v33[1] = "DirectionalLightComponent";
  if (v33[0])
  {
    if (v33[0])
    {
    }
  }

  *(this + 2) = v34;
  if ((atomic_load_explicit(&qword_1EE1AC870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC870))
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
    qword_1EE1AC9B0 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "color";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x16000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AC9B8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "intensity";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1C00000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AC9C0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_BOOL(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "isProxy";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x2000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1AC9C8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_ColorGamut(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "colorGamut";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x17000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1AC9D0 = v29;
    v30 = re::introspectionAllocator();
    v31 = (*(*v30 + 32))(v30, 64, 8);
    *v31 = 6;
    *(v31 + 8) = 1;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = 1;
    *(v31 + 48) = re::ecs2::downgradeDirectionalLightComponentFromFall2023;
    *(v31 + 56) = 2;
    qword_1EE1AC9D8 = v31;
    __cxa_guard_release(&qword_1EE1AC870);
  }

  *(this + 2) = 0x18000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1AC9B0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DirectionalLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DirectionalLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DirectionalLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DirectionalLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225DirectionalLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v32 = v34;
}

re::ecs2::DirectionalLightComponent *re::internal::defaultConstruct<re::ecs2::DirectionalLightComponent>(int a1, int a2, re::ecs2::DirectionalLightComponent *this)
{
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  return re::ecs2::DirectionalLightComponent::DirectionalLightComponent(this);
}

re::ecs2::DirectionalLightComponent *re::internal::defaultConstructV2<re::ecs2::DirectionalLightComponent>(re::ecs2::DirectionalLightComponent *this)
{
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  return re::ecs2::DirectionalLightComponent::DirectionalLightComponent(this);
}

float re::ecs2::downgradeSpotLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 74);
  v5 = *(this + 304);
  v11 = *(this + 36);
  v13 = v5;
  v12 = v4;
  v6 = re::ColorGamut3F::as(&v11, 0, 3);
  result = v7;
  *&v9 = v6;
  *(&v9 + 2) = v7;
  *(this + 18) = v9;
  *(this + 304) = v10;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_SpotLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC888))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACDB8, "SpotLightComponent");
    __cxa_guard_release(&qword_1EE1AC888);
  }

  return &unk_1EE1ACDB8;
}

void re::ecs2::initInfo_SpotLightComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v45[0] = 0xA41086BFAF11EC92;
  v45[1] = "SpotLightComponent";
  if (v45[0])
  {
    if (v45[0])
    {
    }
  }

  *(this + 2) = v46;
  if ((atomic_load_explicit(&qword_1EE1AC880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC880))
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
    qword_1EE1ACAD8 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "color";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x12000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1ACAE0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "intensity";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1C00000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1ACAE8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "outerAngle";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x2000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1ACAF0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "innerAngle";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x2400000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1ACAF8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "attenuationRadius";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x2800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1ACB00 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_ColorGamut(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "colorGamut";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x13000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1ACB08 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_float(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "attenuationFalloffExponent";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x2C00000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1ACB10 = v41;
    v42 = re::introspectionAllocator();
    v43 = (*(*v42 + 32))(v42, 64, 8);
    *v43 = 6;
    *(v43 + 8) = 1;
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    *(v43 + 40) = 1;
    *(v43 + 48) = re::ecs2::downgradeSpotLightComponentFromFall2023;
    *(v43 + 56) = 2;
    qword_1EE1ACB18 = v43;
    __cxa_guard_release(&qword_1EE1AC880);
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1ACAD8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpotLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpotLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpotLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpotLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218SpotLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v44 = v46;
}

re::ecs2::SpotLightComponent *re::internal::defaultConstruct<re::ecs2::SpotLightComponent>(int a1, int a2, re::ecs2::SpotLightComponent *this)
{
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  return re::ecs2::SpotLightComponent::SpotLightComponent(this);
}

re::ecs2::SpotLightComponent *re::internal::defaultConstructV2<re::ecs2::SpotLightComponent>(re::ecs2::SpotLightComponent *this)
{
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  return re::ecs2::SpotLightComponent::SpotLightComponent(this);
}

float re::ecs2::downgradePointLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 70);
  v5 = *(this + 288);
  v11 = *(this + 34);
  v13 = v5;
  v12 = v4;
  v6 = re::ColorGamut3F::as(&v11, 0, 3);
  result = v7;
  *&v9 = v6;
  *(&v9 + 2) = v7;
  *(this + 17) = v9;
  *(this + 288) = v10;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_PointLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC898))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACE48, "PointLightComponent");
    __cxa_guard_release(&qword_1EE1AC898);
  }

  return &unk_1EE1ACE48;
}

void re::ecs2::initInfo_PointLightComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v37[0] = 0x7C7634670D0A9C2ELL;
  v37[1] = "PointLightComponent";
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  *(this + 2) = v38;
  if ((atomic_load_explicit(&qword_1EE1AC890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC890))
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
    qword_1EE1AC9E0 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "color";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x11000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AC9E8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "intensity";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1C00000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AC9F0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "attenuationRadius";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x2000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1AC9F8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_ColorGamut(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "colorGamut";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x12000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1ACA00 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "attenuationFalloffExponent";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x2400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1ACA08 = v33;
    v34 = re::introspectionAllocator();
    v35 = (*(*v34 + 32))(v34, 64, 8);
    *v35 = 6;
    *(v35 + 8) = 1;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    *(v35 + 40) = 1;
    *(v35 + 48) = re::ecs2::downgradePointLightComponentFromFall2023;
    *(v35 + 56) = 2;
    qword_1EE1ACA10 = v35;
    __cxa_guard_release(&qword_1EE1AC890);
  }

  *(this + 2) = 0x13000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1AC9E0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PointLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PointLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PointLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PointLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219PointLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v36 = v38;
}

re::ecs2::PointLightComponent *re::internal::defaultConstruct<re::ecs2::PointLightComponent>(int a1, int a2, re::ecs2::PointLightComponent *this)
{
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
  return re::ecs2::PointLightComponent::PointLightComponent(this);
}

re::ecs2::PointLightComponent *re::internal::defaultConstructV2<re::ecs2::PointLightComponent>(re::ecs2::PointLightComponent *this)
{
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
  return re::ecs2::PointLightComponent::PointLightComponent(this);
}

float re::ecs2::downgradeRectAreaLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 50);
  v5 = *(this + 208);
  v11 = *(this + 24);
  v13 = v5;
  v12 = v4;
  v6 = re::ColorGamut3F::as(&v11, 0, 3);
  result = v7;
  *&v9 = v6;
  *(&v9 + 2) = v7;
  *(this + 12) = v9;
  *(this + 208) = v10;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_RectAreaLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACED8, "RectAreaLightComponent");
    __cxa_guard_release(&qword_1EE1AC8A8);
  }

  return &unk_1EE1ACED8;
}

void re::ecs2::initInfo_RectAreaLightComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0x253CA3D5FF302730;
  v36[1] = "RectAreaLightComponent";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1AC8A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8A0))
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
    qword_1EE1ACA18 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "color";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0xC000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1ACA20 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "intensity";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1C00000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1ACA28 = v21;
    v22 = re::introspectionAllocator();
    v23 = re::introspect_Vector2F(1);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "extents";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x2000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1ACA30 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_BOOL(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "emitsDoubleSided";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x2800000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1ACA38 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_ColorGamut(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "colorGamut";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0xD000000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1ACA40 = v32;
    v33 = re::introspectionAllocator();
    v34 = (*(*v33 + 32))(v33, 64, 8);
    *v34 = 6;
    *(v34 + 8) = 1;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 40) = 1;
    *(v34 + 48) = re::ecs2::downgradeRectAreaLightComponentFromFall2023;
    *(v34 + 56) = 2;
    qword_1EE1ACA48 = v34;
    __cxa_guard_release(&qword_1EE1AC8A0);
  }

  *(this + 2) = 0xE000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1ACA18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RectAreaLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RectAreaLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RectAreaLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RectAreaLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222RectAreaLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v35 = v37;
}

re::ecs2::RectAreaLightComponent *re::internal::defaultConstruct<re::ecs2::RectAreaLightComponent>(int a1, int a2, re::ecs2::RectAreaLightComponent *this)
{
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  return re::ecs2::RectAreaLightComponent::RectAreaLightComponent(this);
}

re::ecs2::RectAreaLightComponent *re::internal::defaultConstructV2<re::ecs2::RectAreaLightComponent>(re::ecs2::RectAreaLightComponent *this)
{
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  return re::ecs2::RectAreaLightComponent::RectAreaLightComponent(this);
}

float re::ecs2::downgradeFrustumLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 78);
  v5 = *(this + 320);
  v11 = *(this + 38);
  v13 = v5;
  v12 = v4;
  v6 = re::ColorGamut3F::as(&v11, 0, 3);
  result = v7;
  *&v9 = v6;
  *(&v9 + 2) = v7;
  *(this + 19) = v9;
  *(this + 320) = v10;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_FrustumLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACF68, "FrustumLightComponent");
    __cxa_guard_release(&qword_1EE1AC8B8);
  }

  return &unk_1EE1ACF68;
}

void re::ecs2::initInfo_FrustumLightComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v44[0] = 0x199383482F3684D2;
  v44[1] = "FrustumLightComponent";
  if (v44[0])
  {
    if (v44[0])
    {
    }
  }

  *(this + 2) = v45;
  if ((atomic_load_explicit(&qword_1EE1AC8B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8B0))
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
    qword_1EE1ACB20 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "color";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x13000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1ACB28 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "intensity";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1C00000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1ACB30 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "outerAngle";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x2000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1ACB38 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "innerAngle";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x2400000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1ACB40 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "attenuationRadius";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x2800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1ACB48 = v33;
    v34 = re::introspectionAllocator();
    v35 = re::introspect_Vector2F(1);
    v36 = (*(*v34 + 32))(v34, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "extents";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x3000000006;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1ACB50 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::introspect_ColorGamut(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "colorGamut";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x14000000007;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1ACB58 = v40;
    v41 = re::introspectionAllocator();
    v42 = (*(*v41 + 32))(v41, 64, 8);
    *v42 = 6;
    *(v42 + 8) = 1;
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    *(v42 + 40) = 1;
    *(v42 + 48) = re::ecs2::downgradeFrustumLightComponentFromFall2023;
    *(v42 + 56) = 2;
    qword_1EE1ACB60 = v42;
    __cxa_guard_release(&qword_1EE1AC8B0);
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1ACB20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::FrustumLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::FrustumLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::FrustumLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::FrustumLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221FrustumLightComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v43 = v45;
}

re::ecs2::FrustumLightComponent *re::internal::defaultConstruct<re::ecs2::FrustumLightComponent>(int a1, int a2, re::ecs2::FrustumLightComponent *this)
{
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
  return re::ecs2::FrustumLightComponent::FrustumLightComponent(this);
}

re::ecs2::FrustumLightComponent *re::internal::defaultConstructV2<re::ecs2::FrustumLightComponent>(re::ecs2::FrustumLightComponent *this)
{
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
  return re::ecs2::FrustumLightComponent::FrustumLightComponent(this);
}

void *re::ecs2::allocInfo_FilterMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACFF8, "FilterMapComponent");
    __cxa_guard_release(&qword_1EE1AC8C0);
  }

  return &unk_1EE1ACFF8;
}

void re::ecs2::initInfo_FilterMapComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x4F276BC591308D72;
  v20[1] = "FilterMapComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1AC8C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8C8))
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
    qword_1EE1AC910 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "material";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AC918 = v18;
    __cxa_guard_release(&qword_1EE1AC8C8);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000038;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AC910;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::FilterMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::FilterMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::FilterMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::FilterMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218FilterMapComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::FilterMapComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDD990;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::FilterMapComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD990;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::ecs2::allocInfo_ShadowMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8D0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD088, "ShadowMapComponent");
    __cxa_guard_release(&qword_1EE1AC8D0);
  }

  return &unk_1EE1AD088;
}

void re::ecs2::initInfo_ShadowMapComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0xD3AD1E1D3F2970C2;
  v24[1] = "ShadowMapComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1AC8D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8D8))
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
    qword_1EE1AC920 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "depthBias";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AC928 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "distance";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AC930 = v22;
    __cxa_guard_release(&qword_1EE1AC8D8);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AC920;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218ShadowMapComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

double re::internal::defaultConstruct<re::ecs2::ShadowMapComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDD3F0;
  result = 2048.00048;
  *(v3 + 28) = 0x40A000003F800000;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ShadowMapComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD3F0;
  result = 2048.00048;
  *(v1 + 28) = 0x40A000003F800000;
  return result;
}

void *re::ecs2::allocInfo_PointLightShadowMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD118, "PointLightShadowMapComponent");
    __cxa_guard_release(&qword_1EE1AC8E0);
  }

  return &unk_1EE1AD118;
}

void re::ecs2::initInfo_PointLightShadowMapComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0xE3B8089A156ED0CELL;
  v32[1] = "PointLightShadowMapComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1AC8E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8E8))
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
    qword_1EE1AC960 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "depthBias";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AC968 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "cullMode";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AC970 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::Optional<float>>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "zNear";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2400000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1AC978 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::IntrospectionInfo<re::Optional<float>>::get(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "zFar";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2C00000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1AC980 = v30;
    __cxa_guard_release(&qword_1EE1AC8E8);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000038;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AC960;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PointLightShadowMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PointLightShadowMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PointLightShadowMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PointLightShadowMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228PointLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

uint64_t *re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionOptionalBase::IntrospectionOptionalBase(&re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info) = &unk_1F5CF5450;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::mtl::introspect_CullMode(1, a2);
  if ((re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info, 0);
    qword_1EE186648 = 0x20000000DLL;
    dword_1EE186650 = v8;
    word_1EE186654 = 0;
    *&xmmword_1EE186658 = 0;
    *(&xmmword_1EE186658 + 1) = 0xFFFFFFFFLL;
    qword_1EE186668 = v7;
    unk_1EE186670 = 0;
    re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info = &unk_1F5CF5450;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info);
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
    xmmword_1EE186658 = v14;
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

  return &re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info;
}

void re::internal::defaultConstruct<re::ecs2::PointLightShadowMapComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDD558;
  *(v3 + 28) = 1065353216;
  *(v3 + 32) = 0;
  *(v3 + 36) = 0;
  *(v3 + 44) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::PointLightShadowMapComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD558;
  *(v1 + 28) = 1065353216;
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
}

void *re::ecs2::allocInfo_DirectionalLightShadowMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD1A8, "DirectionalLightShadowMapComponent");
    __cxa_guard_release(&qword_1EE1AC8F0);
  }

  return &unk_1EE1AD1A8;
}

void re::ecs2::initInfo_DirectionalLightShadowMapComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v48[0] = 0x392F7D3B7831E19ALL;
  v48[1] = "DirectionalLightShadowMapComponent";
  if (v48[0])
  {
    if (v48[0])
    {
    }
  }

  *(this + 2) = v49;
  if ((atomic_load_explicit(&qword_1EE1AC8F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8F8))
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
    qword_1EE1ACB68 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "depthBias";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1ACB70 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "distance";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1ACB78 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "cullMode";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2400000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1ACB80 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "automaticallyAdjustsShadowProjection";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2600000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1ACB88 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_float(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "zNear";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x2800000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1ACB90 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_float(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "zFar";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x2C00000006;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1ACB98 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_float(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "orthographicScale";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x3000000007;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1ACBA0 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_BOOL(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "useDiameterBounds";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x3400000008;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE1ACBA8 = v46;
    __cxa_guard_release(&qword_1EE1AC8F8);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1ACB68;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DirectionalLightShadowMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DirectionalLightShadowMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DirectionalLightShadowMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DirectionalLightShadowMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs234DirectionalLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v47 = v49;
}

void *re::ecs2::allocInfo_SpotLightShadowMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC900))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD238, "SpotLightShadowMapComponent");
    __cxa_guard_release(&qword_1EE1AC900);
  }

  return &unk_1EE1AD238;
}

void re::ecs2::initInfo_SpotLightShadowMapComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x695021DC2B51B0EALL;
  v32[1] = "SpotLightShadowMapComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1AC908, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC908))
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
    qword_1EE1AC988 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "depthBias";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AC990 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "cullMode";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AC998 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::Optional<float>>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "zNear";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2400000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1AC9A0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::IntrospectionInfo<re::Optional<float>>::get(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "zFar";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2C00000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1AC9A8 = v30;
    __cxa_guard_release(&qword_1EE1AC908);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AC988;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpotLightShadowMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpotLightShadowMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpotLightShadowMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpotLightShadowMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227SpotLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void re::internal::defaultConstruct<re::ecs2::SpotLightShadowMapComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDD828;
  *(v3 + 28) = 1065353216;
  *(v3 + 32) = 0;
  *(v3 + 36) = 0;
  *(v3 + 44) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SpotLightShadowMapComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD828;
  *(v1 + 28) = 1065353216;
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
}

void re::ecs2::DirectionalLightComponent::adjustedIntroReleaseInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *((*(*a1 + 40))(a1) + 32);

  getAdjustedRelease(a3, v3, v5);
}

void getAdjustedRelease(uint64_t a1, int a2, const char *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 == 4)
  {
    re::getRequiredDeploymentTargetsForRelease(0xC, &v16);
    if (v17)
    {
      v5 = v19;
    }

    else
    {
      v5 = v18;
    }

    snprintf(__str, 0x100uLL, "%s %s %s %s", a3, "on visionOS is available for", v5, "and later.");
    v6 = v16;
    if (v16 && (v17 & 1) != 0)
    {
      v6 = (*(*v16 + 40))();
    }

    v17 = 0;
    LODWORD(v16) = 12;
    v11 = 0;
    v12 = &str_67;
    v7 = strlen(__str);
    v13[0] = 1;
    v14 = v11;
    v15 = v12;
    v11 = 0;
    v12 = &str_67;
    v8 = re::Optional<re::StringID>::operator=(&v17, v13);
    if (v13[0] == 1)
    {
      if (v14)
      {
        if (v14)
        {
        }
      }

      v14 = 0;
      v15 = &str_67;
    }

    if (v11)
    {
      if (v11)
      {
      }
    }

    *a1 = 1;
    *(a1 + 8) = v16;
    v9 = v17;
    *(a1 + 16) = v17;
    if (v9 == 1)
    {
      v10 = v20;
      *(a1 + 24) = v19;
      *(a1 + 32) = v10;
    }
  }

  else
  {
    *a1 = 0;
  }
}

void re::ecs2::SpotLightComponent::adjustedIntroReleaseInfo(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *((*(*a1 + 40))(a1) + 32);

  getAdjustedRelease(a3, a2, v5);
}

void re::ecs2::PointLightComponent::adjustedIntroReleaseInfo(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *((*(*a1 + 40))(a1) + 32);

  getAdjustedRelease(a3, a2, v5);
}

void re::ecs2::DirectionalLightComponent::~DirectionalLightComponent(re::ecs2::DirectionalLightComponent *this)
{
  *this = &unk_1F5CF52B8;
  v2 = (this + 48);
  re::DynamicString::deinit((this + 208));
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF52B8;
  v2 = (this + 48);
  re::DynamicString::deinit((this + 208));
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SpotLightComponent::~SpotLightComponent(re::ecs2::SpotLightComponent *this)
{
  *this = &unk_1F5CF5340;
  v2 = *(this + 35);
  if (v2)
  {

    *(this + 35) = 0;
  }

  re::DynamicString::deinit((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF5340;
  v2 = *(this + 35);
  if (v2)
  {

    *(this + 35) = 0;
  }

  re::DynamicString::deinit((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PointLightComponent::~PointLightComponent(re::ecs2::PointLightComponent *this)
{
  *this = &unk_1F5CF53C8;
  re::DynamicString::deinit((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF53C8;
  re::DynamicString::deinit((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::make::shared::unsafelyInplace<re::ecs2::LightComponent>(void *a1)
{
  bzero(a1, 0x380uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CDCA48;
  *(a1 + 7) = 3;
  a1[4] = 0x42B4000046D2A785;
  *(a1 + 10) = 1120403456;
  a1[6] = 0;
  *(a1 + 56) = 0;
  *(a1 + 15) = 1008981770;
  *(a1 + 5) = 0u;
  *(a1 + 4) = 0u;
  v3 = re::DynamicString::setCapacity(a1 + 8, 0);
  *(a1 + 44) = 0;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 180) = 0x412000003C23D70ALL;
  *(a1 + 188) = 0;
  *(a1 + 196) = 0;
  *(a1 + 198) = 16842752;
  *(a1 + 51) = 1065353216;
  a1[26] = 0;
  *(a1 + 15) = 0u;
  *(a1 + 14) = 0u;
  v4 = re::DynamicString::setCapacity(a1 + 28, 0);
  *(a1 + 84) = 0;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 340) = 0x412000003C23D70ALL;
  *(a1 + 223) = 0;
  *(a1 + 448) = 0;
  *(a1 + 22) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 429) = 0u;
  *(a1 + 57) = 0u;
  *(a1 + 59) = 0u;
  a1[61] = 0;
  v5 = re::DynamicString::setCapacity(a1 + 58, 0);
  *(a1 + 144) = 0;
  *(a1 + 34) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 580) = 0x412000003C23D70ALL;
  *(a1 + 339) = 0;
  *(a1 + 37) = 0u;
  *(a1 + 38) = 0u;
  *(a1 + 39) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 669) = 0;
  *(a1 + 43) = 0u;
  *(a1 + 44) = 0u;
  re::DynamicString::setCapacity(a1 + 86, 0);
  *(a1 + 48) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 45) = 0u;
  a1[100] = 0x3C23D70A00000000;
  *(a1 + 202) = 1092616192;
  a1[102] = 0;
  *(a1 + 824) = 0;
  *(a1 + 52) = 0u;
  *(a1 + 212) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 54) = _Q0;
  *(a1 + 880) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs214LightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs221AmbientLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs225DirectionalLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs218SpotLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs219PointLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs222RectAreaLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs221FrustumLightComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs218FilterMapComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs218ShadowMapComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 2uLL, 1uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionOptional<re::mtl::CullMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::CullMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::CullMode>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::mtl::CullMode>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs228PointLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

double re::make::shared::unsafelyInplace<re::ecs2::DirectionalLightShadowMapComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD6C0;
  *(v1 + 28) = 0x40A000003F800000;
  *(v1 + 36) = 0;
  *(v1 + 38) = 1;
  result = 524288.117;
  *(v1 + 40) = 0x412000003C23D70ALL;
  *(v1 + 48) = 1065353216;
  *(v1 + 52) = 1;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs234DirectionalLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs227SpotLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::VisualProxyCaptureHelper::visualProxyStartCapturing(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = a2;
  do
  {
    v9 = v8;
    v8 = *(v8 + 32);
  }

  while (v8);
  v10 = (*(**(*(v9 + 24) + 56) + 32))(*(*(v9 + 24) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v10);
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    return result;
  }

  v14 = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v15 = *a3;
  if (*(a1 + 48) != v15)
  {
    LOBYTE(v16) = a3[1];
    goto LABEL_11;
  }

  v16 = a3[1];
  if (*(a1 + 49) != v16)
  {
    goto LABEL_11;
  }

  v17 = *(a1 + 56);
  if (v17 == 1 && a3[8])
  {
    LOBYTE(v16) = *(a1 + 49);
    if (*(a1 + 64) == *(a3 + 2))
    {
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  if (v17)
  {
    LOBYTE(v16) = *(a1 + 49);
    goto LABEL_11;
  }

  LOBYTE(v16) = *(a1 + 49);
  if (a3[8])
  {
LABEL_11:
    *(a1 + 48) = v15;
    *(a1 + 49) = v16;
    re::Optional<re::ArcWeakPtr<re::ecs2::Entity>>::operator=(a1 + 56, (a3 + 8));
    v18 = 1;
    goto LABEL_12;
  }

LABEL_41:
  v18 = 0;
LABEL_12:
  v19 = a3 + 40;
  if (*(a3 + 5))
  {
    re::TextureHandle::metalTexture(&v27, (a1 + 32));
    v20 = *v19 != v27;
    if (v27)
    {
    }
  }

  else
  {
    v20 = 0;
  }

  if ((*a3 & 1) == 0 && (!*(a1 + 40) || *(a1 + 32) == 0 || v20))
  {
    v21 = *(v11 + 7);
    v30 = 0;
    if (*v19)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(&v30, a3 + 5);
    }

    else
    {
      re::DynamicString::format(&v27, "rootEntity-%s_scope", v13, *(a2 + 296));
      if (v28)
      {
        v25 = *&v29[7];
      }

      else
      {
        v25 = v29;
      }

      re::TextureManager::createRenderTarget(v21, *(a3 + 6), *(a3 + 7), *(a3 + 8), 1u, v25, 5, 0xFFFF, &v26);
      NS::SharedPtr<MTL::Texture>::operator=(&v30, &v26);
      if (v26)
      {
      }

      if (v27 && (v28 & 1) != 0)
      {
        (*(*v27 + 40))();
      }
    }

    re::TextureManager::registerTexture(v21, &v30, &v27);
    re::TextureHandle::operator=(a1 + 32, &v27);
    re::TextureHandle::invalidate(&v27);
    if (v30)
    {
    }

    goto LABEL_24;
  }

  if (v18)
  {
LABEL_24:
    re::ecs2::Component::markDirty(a1);
  }

  *(v14 + 176) = a1;
  *(v14 + 32) = *a3;
  re::Optional<re::ArcWeakPtr<re::ecs2::Entity>>::operator=(v14 + 40, (a3 + 8));
  v22 = *(a3 + 8);
  *(v14 + 56) = *(a3 + 3);
  *(v14 + 64) = v22;
  NS::SharedPtr<MTL::Buffer>::operator=((v14 + 72), a3 + 5);
  v23 = *(v14 + 80);
  v24 = *(a3 + 6);
  *(v14 + 80) = v24;
  if (v24)
  {
    CFRetain(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::operator=(v14 + 88, (a3 + 56));
  return re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>(v14 + 136, a4);
}

uint64_t re::Optional<re::ArcWeakPtr<re::ecs2::Entity>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::ArcWeakPtr<re::ecs2::UISortingComponent>::operator=(v3, (a2 + 8));
    }

    else
    {
      objc_destroyWeak(v3);
      *(a1 + 8) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    objc_copyWeak((a1 + 8), (a2 + 8));
  }

  return a1;
}

{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(v3, (a2 + 8));
    }

    else
    {
      objc_destroyWeak(v3);
      *(a1 + 8) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    objc_moveWeak((a1 + 8), (a2 + 8));
  }

  return a1;
}

uint64_t re::ecs2::VisualProxyCaptureHelper::isUnderHighFidelityVisualProxyTree(re::ecs2::VisualProxyCaptureHelper *this, const re::ecs2::Entity *a2)
{
  if (this)
  {
    v2 = this;
    while (1)
    {
      v3 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v3)
      {
        break;
      }

      v2 = *(v2 + 4);
      if (!v2 || (*(v2 + 304) & 0x80) != 0)
      {
        v4 = 0;
        return v4 & 1;
      }
    }

    v4 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unsigned int *re::ecs2::VisualProxyCaptureHelper::markVisualProxyScope(re::ecs2::VisualProxyCaptureHelper *this, re::ecs2::Entity *a2)
{
  v2 = a2;
  result = re::ecs2::EntityComponentCollection::getOrAdd((this + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = result[7];
  if (((1 << v2) & v4) == 0)
  {
    result[7] = v4 | (1 << v2);

    return re::ecs2::Component::markDirty(result);
  }

  return result;
}

uint64_t re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
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

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(a1, v4, v5);
      re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::copy(a1, a2);
    }
  }

  return a1;
}

void re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::setCapacity(a1, v4);
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
        re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

void re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
            re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
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

uint64_t re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void *re::ecs2::allocInfo_RayCastResultComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_317, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_317))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD2F8, "RayCastResultComponent");
    __cxa_guard_release(&_MergedGlobals_317);
  }

  return &unk_1EE1AD2F8;
}

void re::ecs2::initInfo_RayCastResultComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v26[0] = 0x7F36C6B09A4F476ELL;
  v26[1] = "RayCastResultComponent";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1AD2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD2D0))
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
    qword_1EE1AD2D8 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "hitWorldPosition";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AD2E0 = v17;
    v18 = re::introspectionAllocator();
    v19 = re::introspect_Vector3F(1);
    v20 = (*(*v18 + 32))(v18, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "hitWorldNormal";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x3000000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1AD2E8 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::ecs2::introspect_EntityHandle(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "hitEntity";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x4000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1AD2F0 = v24;
    __cxa_guard_release(&qword_1EE1AD2D0);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AD2D8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RayCastResultComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RayCastResultComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RayCastResultComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RayCastResultComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222RayCastResultComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v25 = v27;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::RayCastResultComponent>(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v2 = (a1 + 64);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE15A0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  objc_initWeak(v2, 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  re::ecs2::EntityHandle::reset(v2);
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs222RayCastResultComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::introspect_ReferenceLoadingPolicy(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AD390, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AD398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD398))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AD418, "ReferenceLoadingPolicy", 1, 1, 1, 1);
      qword_1EE1AD418 = &unk_1F5D0C658;
      qword_1EE1AD458 = &re::ecs2::introspect_ReferenceLoadingPolicy(BOOL)::enumTable;
      dword_1EE1AD428 = 9;
      __cxa_guard_release(&qword_1EE1AD398);
    }

    if (_MergedGlobals_318)
    {
      break;
    }

    _MergedGlobals_318 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AD418, a2);
    v33 = 0xC2DBD2F3D2E34846;
    v34 = "ReferenceLoadingPolicy";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1AD458;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1AD438 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v32);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1AD390))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Immediate";
      qword_1EE1AD3C0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "OnDemand";
      qword_1EE1AD3C8 = v31;
      __cxa_guard_release(&qword_1EE1AD390);
    }
  }
}

void re::ecs2::introspect_ReferenceLoadingState(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AD3A0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AD3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD3A8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AD460, "ReferenceLoadingState", 1, 1, 1, 1);
      qword_1EE1AD460 = &unk_1F5D0C658;
      qword_1EE1AD4A0 = &re::ecs2::introspect_ReferenceLoadingState(BOOL)::enumTable;
      dword_1EE1AD470 = 9;
      __cxa_guard_release(&qword_1EE1AD3A8);
    }

    if (byte_1EE1AD389)
    {
      break;
    }

    byte_1EE1AD389 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AD460, a2);
    v35 = 0x92AC409C83054700;
    v36 = "ReferenceLoadingState";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
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
      v6 = qword_1EE1AD4A0;
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
      xmmword_1EE1AD480 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE1AD3A0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "NotLoaded";
      qword_1EE1AD3D0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Loading";
      qword_1EE1AD3D8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Loaded";
      qword_1EE1AD3E0 = v33;
      __cxa_guard_release(&qword_1EE1AD3A0);
    }
  }
}

void *re::ecs2::allocInfo_ReferenceComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD3B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD4A8, "ReferenceComponent");
    __cxa_guard_release(&qword_1EE1AD3B0);
  }

  return &unk_1EE1AD4A8;
}

void re::ecs2::initInfo_ReferenceComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v34[0] = 0x41AC874E67497C24;
  v34[1] = "ReferenceComponent";
  if (v34[0])
  {
    if (v34[0])
    {
    }
  }

  *(this + 2) = v35;
  if ((atomic_load_explicit(&qword_1EE1AD3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD3B8))
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
    qword_1EE1AD3E8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicString>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "entityName";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AD3F0 = v18;
    v19 = re::introspectionAllocator();
    re::ecs2::introspect_ReferenceLoadingPolicy(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "policy";
    *(v21 + 16) = &qword_1EE1AD418;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x6100000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AD3F8 = v21;
    v22 = re::introspectionAllocator();
    re::ecs2::introspect_ReferenceLoadingState(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "state";
    *(v24 + 16) = &qword_1EE1AD460;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x6200000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1AD400 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::ecs2::introspect_EntityHandle(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "subscene";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x6800000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1AD408 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::IntrospectionInfo<re::DynamicString>::get(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "bundlePath";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x4000000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1AD410 = v32;
    __cxa_guard_release(&qword_1EE1AD3B8);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1AD3E8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ReferenceComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ReferenceComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ReferenceComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ReferenceComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218ReferenceComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v33 = v35;
}

void *re::internal::defaultDestruct<re::ecs2::ReferenceComponent>(uint64_t a1, uint64_t a2, id *a3)
{
  re::ecs2::EntityHandle::reset((a3 + 13));
  objc_destroyWeak(a3 + 13);
  a3[13] = 0;
  re::DynamicString::deinit((a3 + 8));
  re::DynamicString::deinit((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::ReferenceComponent>(id *a1)
{
  re::ecs2::EntityHandle::reset((a1 + 13));
  objc_destroyWeak(a1 + 13);
  a1[13] = 0;
  re::DynamicString::deinit((a1 + 8));
  re::DynamicString::deinit((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

uint64_t re::ecs2::ReferenceComponent::makeSyncInfo(re::IntrospectionBase **this)
{
  v2 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetTypeId();
  v3 = &unk_1EE187000;
  {
    v3 = &unk_1EE187000;
    if (v5)
    {
      re::introspect<re::ecs2::ReferenceComponent>(BOOL)::info = re::internal::getOrCreateInfo("ReferenceComponent", re::ecs2::allocInfo_ReferenceComponent, re::ecs2::initInfo_ReferenceComponent, &re::internal::introspectionInfoStorage<re::ecs2::ReferenceComponent>, this);
      v3 = &unk_1EE187000;
    }
  }

  re::getPrettyTypeName(&v6, v3[121]);
  RESyncSyncableTypeInfoSetDebugName();
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  RESyncSyncableTypeInfoSetSupportsNetworkSync();
  return v2;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::ReferenceComponent>(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v2 = (a1 + 64);
  *(a1 + 32) = 0u;
  v3 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CE4850;
  *v3 = 0u;
  *(v4 + 48) = 0u;
  v5 = re::DynamicString::setCapacity(v3, 0);
  *(a1 + 80) = 0u;
  *v2 = 0u;
  re::DynamicString::setCapacity(v2, 0);
  *(a1 + 96) = 0;
  *(a1 + 98) = 0;
  objc_initWeak((a1 + 104), 0);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  re::ecs2::EntityHandle::reset((a1 + 104));
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218ReferenceComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::~PhysicsJointDefinitionAndRuntimeCollection(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this)
{
  *this = &unk_1F5CF54D0;
  v1 = this + 8;
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 48);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(v1);
}

{
  *this = &unk_1F5CF54D0;
  v1 = this + 8;
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 48);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(v1);

  JUMPOUT(0x1E6906520);
}

char *re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::runtimeJoint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, unint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((*(this + 10) + 8 * a2));
  if (!WeakRetained)
  {
    return 0;
  }

  v3 = WeakRetained - 8;

  return v3;
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::addJoint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, const re::ecs2::PhysicsJointDefinition *a2, const re::ecs2::Scene *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(this, 1);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::add((this + 8), a2);
  inited = objc_initWeak(&v24, 0);
  v7 = *(this + 7);
  v8 = *(this + 8);
  if (v8 >= v7)
  {
    v9 = v8 + 1;
    if (v7 < v8 + 1)
    {
      if (*(this + 6))
      {
        v10 = 2 * v7;
        v11 = v7 == 0;
        v12 = 8;
        if (!v11)
        {
          v12 = v10;
        }

        if (v12 <= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v12;
        }

        re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(this + 6, v13);
      }

      else
      {
        re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(this + 6, v9);
        ++*(this + 18);
      }
    }

    v8 = *(this + 8);
  }

  v14 = (*(this + 10) + 8 * v8);
  *v14 = 0;
  objc_moveWeak(v14, &v24);
  ++*(this + 8);
  ++*(this + 18);
  objc_destroyWeak(&v24);
  uuid_generate_random(&v24);
  v15 = (*v25 + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583E9) ^ v24;
  *(this + 11) = v15;
  *(this + 12) = v15;
  v16 = re::ecs2::EntityHandle::resolve(a2 + 16, a3);
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 37);
  }

  else
  {
    v18 = "null";
  }

  v19 = re::ecs2::EntityHandle::resolve(a2 + 128, a3);
  v20 = v19;
  if (v19)
  {
    v21 = *(v19 + 37);
  }

  else
  {
    v21 = "null";
  }

  v22 = *re::physicsLogObjects(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(this + 6) - 1;
    LODWORD(v24) = 67110146;
    HIDWORD(v24) = v23;
    *v25 = 2080;
    *&v25[2] = v18;
    v26 = 2048;
    v27 = v17;
    v28 = 2080;
    v29 = v21;
    v30 = 2048;
    v31 = v20;
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::addJoint(): index=%d, Entity %s (%p), Entity %s (%p)", &v24, 0x30u);
  }
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 12) != *(this + 11))
  {
    v4 = *re::physicsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(this + 11);
      v5 = *(this + 12);
      v16 = 134218240;
      v17 = v5;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(): m_lastGuid=%llu m_guid=%llu", &v16, 0x16u);
    }

    if (*(this + 8))
    {
      v7 = 0;
      do
      {
        re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v7++, a2);
      }

      while (*(this + 8) > v7);
    }

    v8 = *(this + 3);
    objc_initWeak(&v16, 0);
    v9 = *(this + 8);
    if (v9 >= v8)
    {
      if (v9 <= v8)
      {
LABEL_18:
        objc_destroyWeak(&v16);
        *(this + 12) = *(this + 11);
        return;
      }

      v13 = 8 * v8;
      v14 = v8;
      do
      {
        v15 = *(this + 10);
        objc_destroyWeak((v15 + v13));
        *(v15 + 8 * v14++) = 0;
        v13 += 8;
      }

      while (v14 < *(this + 8));
    }

    else
    {
      if (*(this + 7) < v8)
      {
        re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(this + 6, v8);
        v9 = *(this + 8);
      }

      v10 = v8 - v9;
      if (v8 > v9)
      {
        v11 = 8 * v9;
        do
        {
          v12 = *(this + 10);
          *(v12 + v11) = 0;
          objc_copyWeak((v12 + v11), &v16);
          v11 += 8;
          --v10;
        }

        while (v10);
      }
    }

    *(this + 8) = v8;
    ++*(this + 18);
    goto LABEL_18;
  }
}

__n128 re::DynamicArray<re::ecs2::PhysicsJointDefinition>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 304 * v4;
  *v5 = *a2;
  re::ecs2::EntityHandle::EntityHandle((v5 + 16), (a2 + 16));
  re::StringID::StringID((v5 + 40), (a2 + 40));
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  v7 = *(a2 + 96);
  *(v5 + 96) = v7;
  if (v7 == 1)
  {
    re::StringID::StringID((v5 + 104), (a2 + 104));
  }

  re::ecs2::EntityHandle::EntityHandle((v5 + 128), (a2 + 128));
  re::StringID::StringID((v5 + 152), (a2 + 152));
  v8 = *(a2 + 192);
  *(v5 + 176) = *(a2 + 176);
  *(v5 + 192) = v8;
  v9 = *(a2 + 208);
  *(v5 + 208) = v9;
  if (v9 == 1)
  {
    re::StringID::StringID((v5 + 216), (a2 + 216));
  }

  result = *(a2 + 240);
  v11 = *(a2 + 256);
  v12 = *(a2 + 272);
  *(v5 + 284) = *(a2 + 284);
  *(v5 + 256) = v11;
  *(v5 + 272) = v12;
  *(v5 + 240) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteJoint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, unint64_t a2, int a3)
{
  v53 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(this, a3);
  v6 = *(this + 3);
  if (v6 <= a2)
  {
    v41 = 0;
    v51 = 0u;
    v52 = 0u;
    memset(out, 0, sizeof(out));
    v32 = MEMORY[0x1E69E9C10];
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v45 = 789;
    v46 = 2048;
    v47 = a2;
    v48 = 2048;
    v49 = v6;
    _os_log_send_and_compose_impl(v33, &v41, out, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v40);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(this + 5) + 304 * a2;
  WeakRetained = objc_loadWeakRetained((v7 + 16));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = WeakRetained - 8;

    v11 = *(v9 + 36);
  }

  else
  {
    v10 = 0;
    v11 = "null";
  }

  v12 = objc_loadWeakRetained((v7 + 128));
  if (v12)
  {
    v13 = v12;
    v14 = v12 - 8;

    v15 = *(v13 + 36);
  }

  else
  {
    v14 = 0;
    v15 = "null";
  }

  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, a2, a3);
  v6 = *(this + 3);
  if (v6 <= a2)
  {
LABEL_26:
    v41 = 0;
    v51 = 0u;
    v52 = 0u;
    memset(out, 0, sizeof(out));
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "removeStableAt";
    v44 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v45 = 969;
    v46 = 2048;
    v47 = a2;
    v48 = 2048;
    v49 = v6;
    _os_log_send_and_compose_impl(v36, &v41, out, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v40);
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v16 = *(this + 5);
  if (v6 - 1 > a2 && v16 + 304 * a2 + 304 != v16 + 304 * v6)
  {
    v17 = 304 * a2;
    v18 = 304 * v6 - 304;
    do
    {
      v19 = v16 + v17;
      *(v16 + 304 * a2) = *(v16 + 304 * a2 + 304);
      re::ecs2::EntityHandle::operator=((v16 + v17 + 16), (v16 + v17 + 320));
      re::StringID::operator=((v19 + 40), (v19 + 344));
      v20 = *(v16 + v17 + 384);
      *(v19 + 64) = *(v19 + 368);
      *(v19 + 80) = v20;
      re::Optional<re::StringID>::operator=((v19 + 96), v19 + 400);
      re::ecs2::EntityHandle::operator=((v19 + 128), (v19 + 432));
      re::StringID::operator=((v19 + 152), (v19 + 456));
      v21 = *(v16 + v17 + 496);
      *(v19 + 176) = *(v19 + 480);
      *(v19 + 192) = v21;
      re::Optional<re::StringID>::operator=((v19 + 208), v19 + 512);
      v22 = *(v16 + v17 + 560);
      *(v19 + 240) = *(v19 + 544);
      *(v19 + 256) = v22;
      *(v19 + 272) = *(v19 + 576);
      *(v19 + 284) = *(v19 + 588);
      v16 += 304;
      v18 -= 304;
    }

    while (v17 != v18);
    v6 = *(this + 3);
    v16 = *(this + 5);
  }

  v23 = v16 + 304 * v6;
  re::ecs2::PinHandle::~PinHandle((v23 - 176));
  re::ecs2::PinHandle::~PinHandle((v23 - 288));
  --*(this + 3);
  ++*(this + 8);
  v6 = *(this + 8);
  if (v6 <= a2)
  {
LABEL_30:
    v41 = 0;
    v51 = 0u;
    v52 = 0u;
    memset(out, 0, sizeof(out));
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "removeStableAt";
    v44 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v45 = 969;
    v46 = 2048;
    v47 = a2;
    v48 = 2048;
    v49 = v6;
    _os_log_send_and_compose_impl(v39, &v41, out, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v40);
    _os_crash_msg();
    __break(1u);
  }

  if (v6 - 1 > a2)
  {
    v24 = *(this + 10);
    v25 = (v24 + 8 * a2);
    v26 = (v24 + 8 * v6);
    if (v25 + 1 != v26)
    {
      do
      {
        objc_destroyWeak(v25);
        *v25 = 0;
        v27 = v25 + 2;
        objc_moveWeak(v25, v25 + 1);
        ++v25;
      }

      while (v27 != v26);
      v6 = *(this + 8);
    }
  }

  v28 = *(this + 10) + 8 * v6;
  objc_destroyWeak((v28 - 8));
  *(v28 - 8) = 0;
  --*(this + 8);
  ++*(this + 18);
  uuid_generate_random(out);
  v29 = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
  *(this + 11) = v29;
  *(this + 12) = v29;
  v31 = *re::physicsLogObjects(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *out = 67110146;
    *&out[4] = a2;
    *&out[8] = 2080;
    *&out[10] = v11;
    *&out[18] = 2048;
    *&out[20] = v10;
    *&out[28] = 2080;
    *&out[30] = v15;
    *&out[38] = 2048;
    *&out[40] = v14;
    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::deleteJoint(): index=%d, Entity %s (%p), Entity %s (%p)", out, 0x30u);
  }
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, unint64_t a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(this + 8);
  if (v5 <= a2)
  {
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

    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((*(this + 10) + 8 * a2));
  if (!WeakRetained)
  {
    return;
  }

  v9 = WeakRetained;

  v10 = v9[5];
  if (v10)
  {
    re::PhysicsJointCollection::deleteJoint(v10 + 136, (v9 - 1), a3);
    if (a3)
    {
      v9[5] = 0;
    }
  }

  v3 = *(this + 8);
  if (v3 <= a2)
  {
LABEL_13:
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

    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v3;
    _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  v11 = (*(this + 10) + 8 * a2);
  objc_destroyWeak(v11);
  *v11 = 0;
}

uint64_t re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::setJoints(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *a1, uint64_t a2, unint64_t a3, const re::ecs2::Scene *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(a1, 1);
  v11 = *re::physicsLogObjects(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 3);
    *buf = 67109376;
    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = v12;
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(): Begin, new joint count=%d, existing joint count=%d", buf, 0xEu);
  }

  v55 = 0;
  v52[1] = 0;
  v53 = 0;
  v52[0] = 0;
  v54 = 0;
  v13 = *(a1 + 3);
  buf[0] = 0;
  v14 = re::DynamicArray<BOOL>::resize(v52, v13, buf);
  v51 = 0;
  v48[1] = 0;
  v49 = 0;
  v47 = 0;
  v48[0] = 0;
  v50 = 0;
  if (a3)
  {
    v16 = 0;
    do
    {
      v17 = a2 + 304 * v16;
      v18 = re::ecs2::EntityHandle::resolve(v17 + 16, a4);
      v19 = v18;
      if (v18)
      {
        v20 = *(v18 + 37);
      }

      else
      {
        v20 = "null";
      }

      v21 = re::ecs2::EntityHandle::resolve(v17 + 128, a4);
      v22 = v21;
      if (v21)
      {
        v23 = *(v21 + 37);
      }

      else
      {
        v23 = "null";
      }

      if (!*(a1 + 3))
      {
        goto LABEL_24;
      }

      v5 = 0;
      while (1)
      {
        v24 = re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::joint(a1, v5);
        v21 = re::ecs2::PhysicsJointDefinition::operator==(v17, v24);
        if (v21)
        {
          break;
        }

        if (++v5 >= *(a1 + 3))
        {
          goto LABEL_24;
        }
      }

      v4 = v53;
      if (v53 <= v5)
      {
        goto LABEL_52;
      }

      if (*(v55 + v5) == 1)
      {
        v25 = *re::physicsLogObjects(v21);
        v21 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          *buf = 67110402;
          *&buf[4] = v47;
          *&buf[8] = 1024;
          *&buf[10] = v5;
          *&buf[14] = 2080;
          *&buf[16] = v20;
          *&buf[24] = 2048;
          *&buf[26] = v19;
          *&buf[34] = 2080;
          *&buf[36] = v23;
          *&buf[44] = 2048;
          *&buf[46] = v22;
          _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(: New joint %d matches an already matched existing joint %d, Entity %s (%p), Entity %s (%p)", buf, 0x36u);
        }
      }

      v4 = v53;
      if (v53 <= v5)
      {
        goto LABEL_56;
      }

      *(v55 + v5) = 1;
      if (v5 == -1)
      {
LABEL_24:
        v4 = *re::physicsLogObjects(v21);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110146;
          *&buf[4] = v47;
          *&buf[8] = 2080;
          *&buf[10] = v20;
          *&buf[18] = 2048;
          *&buf[20] = v19;
          *&buf[28] = 2080;
          *&buf[30] = v23;
          *&buf[38] = 2048;
          *&buf[40] = v22;
          _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(: New joint %d does not match any existing joint, Entity %s (%p), Entity %s (%p)", buf, 0x30u);
        }

        v14 = re::DynamicArray<unsigned long>::add(v48, &v47);
      }

      else
      {
        v4 = *re::physicsLogObjects(v21);
        v14 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          *buf = 67110402;
          *&buf[4] = v47;
          *&buf[8] = 1024;
          *&buf[10] = v5;
          *&buf[14] = 2080;
          *&buf[16] = v20;
          *&buf[24] = 2048;
          *&buf[26] = v19;
          *&buf[34] = 2080;
          *&buf[36] = v23;
          *&buf[44] = 2048;
          *&buf[46] = v22;
          _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(: New joint %d matches an existing joint %d, Entity %s (%p), Entity %s (%p)", buf, 0x36u);
        }
      }

      v16 = v47 + 1;
      v47 = v16;
    }

    while (v16 < a3);
  }

  if (*(a1 + 3) >= 1)
  {
    v26 = (*(a1 + 3) & 0x7FFFFFFFLL) - 1;
    while (1)
    {
      v27 = v53;
      if (v53 <= v26)
      {
        break;
      }

      if ((*(v55 + v26) & 1) == 0)
      {
        re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteJoint(a1, v26, 1);
      }

      v28 = v26-- + 1;
      if (v28 <= 1)
      {
        goto LABEL_34;
      }
    }

    v56 = 0;
    v66 = 0u;
    memset(buf, 0, sizeof(buf));
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v57 = 136315906;
    v58 = "operator[]";
    v59 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v60 = 789;
    v61 = 2048;
    v62 = v26;
    v63 = 2048;
    v64 = v27;
    _os_log_send_and_compose_impl(v36, &v56, buf, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
    goto LABEL_51;
  }

LABEL_34:
  if (v49)
  {
    v29 = 0;
    while (1)
    {
      v30 = *(v51 + 8 * v29);
      if (a3 <= v30)
      {
        break;
      }

      re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::addJoint(a1, (a2 + 304 * v30), a4);
      if (++v29 >= v49)
      {
        goto LABEL_38;
      }
    }

LABEL_51:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v30, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v43, v44);
    __break(1u);
LABEL_52:
    v56 = 0;
    v66 = 0u;
    memset(buf, 0, sizeof(buf));
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v57 = 136315906;
    v58 = "operator[]";
    v59 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v60 = 789;
    v61 = 2048;
    v62 = v5;
    v63 = 2048;
    v64 = v4;
    _os_log_send_and_compose_impl(v39, &v56, buf, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v56 = 0;
    v66 = 0u;
    memset(buf, 0, sizeof(buf));
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v57 = 136315906;
    v58 = "operator[]";
    v59 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v60 = 789;
    v61 = 2048;
    v62 = v5;
    v63 = 2048;
    v64 = v4;
    _os_log_send_and_compose_impl(v42, &v56, buf, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
  }

LABEL_38:
  v31 = *re::physicsLogObjects(v14);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 3);
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(): End, resulting joint count=%d", buf, 8u);
  }

  if (v48[0] && v51)
  {
    (*(*v48[0] + 40))();
  }

  result = v52[0];
  if (v52[0])
  {
    if (v55)
    {
      return (*(*v52[0] + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<BOOL>::resize(void *result, unint64_t a2, unsigned __int8 *a3)
{
  v4 = result;
  v5 = result[2];
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<BOOL>::setCapacity(result, a2);
      v5 = v4[2];
    }

    if (a2 > v5)
    {
      result = memset((v4[4] + v5), *a3, a2 - v5);
    }
  }

  v4[2] = a2;
  ++*(v4 + 6);
  return result;
}

unint64_t re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::joint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
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

  return *(this + 5) + 304 * a2;
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::auditAndSyncRuntimeJoints(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, int a2, re::PhysicsSimulation *a3, re::ecs2::Scene *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(this, 0);
  if ((a2 & 1) == 0 && *(this + 8))
  {
    v9 = 0;
    do
    {
      re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v9++, 0);
    }

    while (*(this + 8) > v9);
  }

  if (a3 && a4)
  {
    if (*(this + 3) >= 1)
    {
      v10 = *(this + 3) & 0x7FFFFFFFLL;
      v11 = v10 + 1;
      v12 = 8 * v10 - 8;
      v13 = 304 * v10 - 304;
      do
      {
        v14 = v11 - 2;
        v15 = re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::joint(this, v11 - 2);
        v16 = re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::runtimeJoint(this, v11 - 2);
        v31 = 0;
        v32 = 0;
        memset(buf, 0, sizeof(buf));
        *&v35 = 0;
        *(&v35 + 1) = 0x3F80000000000000;
        memset(v33, 0, 24);
        *&v33[24] = 0x3F80000000000000;
        DataToCreateRuntimeJoint = re::ecs2::PhysicsJointDefinition::getDataToCreateRuntimeJoint(v15, a3, a4, v16, &v32, buf, &v31, v33);
        if (DataToCreateRuntimeJoint == 3)
        {
          re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteJoint(this, v11 - 2, 0);
        }

        else
        {
          v19 = DataToCreateRuntimeJoint;
          if (DataToCreateRuntimeJoint == 2)
          {
            if (v16)
            {
              re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v11 - 2, 0);
            }
          }

          else
          {
            if (DataToCreateRuntimeJoint == 1 && v16)
            {
              re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v11 - 2, 0);
              v16 = 0;
            }

            if (v19 <= 1 && !v16 && a2)
            {
              v20 = *(this + 3);
              if (v20 <= v14)
              {
                v32 = 0;
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                *buf = 0u;
                v25 = MEMORY[0x1E69E9C10];
                v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v33 = 136315906;
                *&v33[4] = "operator[]";
                *&v33[12] = 1024;
                if (v26)
                {
                  v27 = 3;
                }

                else
                {
                  v27 = 2;
                }

                *&v33[14] = 789;
                *&v33[18] = 2048;
                *&v33[20] = v11 - 2;
                *&v33[28] = 2048;
                *&v33[30] = v20;
                _os_log_send_and_compose_impl(v27, &v32, buf, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v33, 38, v31);
                _os_crash_msg();
                __break(1u);
LABEL_38:
                v32 = 0;
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                *buf = 0u;
                v28 = MEMORY[0x1E69E9C10];
                v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v33 = 136315906;
                *&v33[4] = "operator[]";
                *&v33[12] = 1024;
                if (v29)
                {
                  v30 = 3;
                }

                else
                {
                  v30 = 2;
                }

                *&v33[14] = 789;
                *&v33[18] = 2048;
                *&v33[20] = v11 - 2;
                *&v33[28] = 2048;
                *&v33[30] = v20;
                _os_log_send_and_compose_impl(v30, &v32, buf, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v33, 38, v31);
                _os_crash_msg();
                __break(1u);
              }

              RuntimeJoint = re::ecs2::PhysicsRuntimeJointFactory::createRuntimeJoint((*(this + 5) + v13), a3, a4, v18);
              v20 = *(this + 8);
              if (v20 <= v14)
              {
                goto LABEL_38;
              }

              if (RuntimeJoint)
              {
                v22 = RuntimeJoint + 8;
              }

              else
              {
                v22 = 0;
              }

              objc_storeWeak((*(this + 10) + v12), v22);
            }
          }
        }

        --v11;
        v12 -= 8;
        v13 -= 304;
      }

      while (v11 > 1);
    }
  }

  else
  {
    if (*(this + 8))
    {
      v23 = 0;
      do
      {
        re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v23++, 0);
      }

      while (*(this + 8) > v23);
    }

    v24 = *re::physicsLogObjects(v8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::auditAndSyncRuntimeJoints(): Simulation or scene is null", buf, 2u);
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::PhysicsJointDefinition>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1AD550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD550))
  {
    re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1AD550);
  }

  if ((_MergedGlobals_319 & 1) == 0)
  {
    v6 = re::ecs2::introspect_PhysicsJointDefinition(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_319 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_319 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AD568, 0);
      qword_1EE1AD578 = 0x2800000003;
      dword_1EE1AD580 = v8;
      word_1EE1AD584 = 0;
      *&xmmword_1EE1AD588 = 0;
      *(&xmmword_1EE1AD588 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AD598 = v7;
      qword_1EE1AD5A0 = 0;
      qword_1EE1AD568 = &unk_1F5CF5500;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1AD568);
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
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1AD588 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_PhysicsJointDefinitionAndRuntimeCollection(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD548))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD5A8, "PhysicsJointDefinitionAndRuntimeCollection");
    __cxa_guard_release(&qword_1EE1AD548);
  }

  return &unk_1EE1AD5A8;
}

void re::ecs2::initInfo_PhysicsJointDefinitionAndRuntimeCollection(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x6B0B6CA5207AC9EALL;
  v19[1] = "PhysicsJointDefinitionAndRuntimeCollection";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1AD540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD540))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::PhysicsJointDefinition>>::get(v7, v8, v9, v10, v11, v12);
    v13 = (*(*v7 + 32))(v7, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "m_joints";
    *(v13 + 16) = &qword_1EE1AD568;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x800000001;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1AD558 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_uint64_t(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "m_guid";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x5800000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AD560 = v17;
    __cxa_guard_release(&qword_1EE1AD540);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AD558;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

double re::internal::defaultConstruct<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CF54D0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>(uint64_t a1)
{
  *a1 = &unk_1F5CF54D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(uint64_t a1)
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
        v5 = 304 * v4;
        v6 = (v3 + 128);
        do
        {
          re::ecs2::PinHandle::~PinHandle(v6);
          re::ecs2::PinHandle::~PinHandle((v6 - 112));
          v6 = (v6 + 304);
          v5 -= 304;
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

_anonymous_namespace_ *re::DynamicArray<re::ecs2::PhysicsJointDefinition>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(v5, a2);
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
        v10 = 304 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::ecs2::PhysicsJointDefinition>(v8, v11);
          v8 += 304;
          v11 += 304;
          v10 -= 304;
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

void re::ObjectHelper::move<re::ecs2::PhysicsJointDefinition>(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  re::ecs2::EntityHandle::EntityHandle((a2 + 16), (a1 + 16));
  re::StringID::StringID((a2 + 40), (a1 + 40));
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  v5 = *(a1 + 96);
  *(a2 + 96) = v5;
  if (v5 == 1)
  {
    re::StringID::StringID((a2 + 104), (a1 + 104));
  }

  re::ecs2::EntityHandle::EntityHandle((a2 + 128), (a1 + 128));
  re::StringID::StringID((a2 + 152), (a1 + 152));
  v6 = *(a1 + 192);
  *(a2 + 176) = *(a1 + 176);
  *(a2 + 192) = v6;
  v7 = *(a1 + 208);
  *(a2 + 208) = v7;
  if (v7 == 1)
  {
    re::StringID::StringID((a2 + 216), (a1 + 216));
  }

  v8 = *(a1 + 240);
  v9 = *(a1 + 256);
  v10 = *(a1 + 272);
  *(a2 + 284) = *(a1 + 284);
  *(a2 + 256) = v9;
  *(a2 + 272) = v10;
  *(a2 + 240) = v8;
  re::ecs2::PinHandle::~PinHandle((a1 + 128));

  re::ecs2::PinHandle::~PinHandle((a1 + 16));
}

_BYTE *re::Optional<re::StringID>::operator=(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::StringID::operator=(v3, (a2 + 8));
    }

    else
    {
      re::StringID::destroyString(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::StringID::StringID((a1 + 8), (a2 + 8));
  }

  return a1;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AD568, 0);
  *(&qword_1EE1AD578 + 6) = 0;
  qword_1EE1AD578 = 0;
  *&xmmword_1EE1AD588 = 0;
  *(&xmmword_1EE1AD588 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AD568 = &unk_1F5CADA48;
  qword_1EE1AD5A0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AD598);
  qword_1EE1AD568 = &unk_1F5CF5500;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinition::PhysicsJointDefinition(v19);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 304 * v8;
  *v9 = v19[0];
  re::ecs2::EntityHandle::EntityHandle((v9 + 16), v20);
  re::StringID::StringID((v9 + 40), v21);
  v10 = *&v21[5];
  *(v9 + 64) = *&v21[3];
  *(v9 + 80) = v10;
  v11 = v22;
  *(v9 + 96) = v22;
  if (v11 == 1)
  {
    re::StringID::StringID((v9 + 104), &v23);
  }

  re::ecs2::EntityHandle::EntityHandle((v9 + 128), v24);
  re::StringID::StringID((v9 + 152), v25);
  v12 = *&v25[5];
  *(v9 + 176) = *&v25[3];
  *(v9 + 192) = v12;
  v13 = v26;
  *(v9 + 208) = v26;
  if (v13 == 1)
  {
    re::StringID::StringID((v9 + 216), v27);
  }

  v14 = *&v27[3];
  v15 = *&v27[5];
  v16 = v28[0];
  *(v9 + 284) = *(v28 + 12);
  *(v9 + 256) = v15;
  *(v9 + 272) = v16;
  *(v9 + 240) = v14;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::ecs2::PinHandle::~PinHandle(v24);
  re::ecs2::PinHandle::~PinHandle(v20);
  v17 = (*(a4 + 32) + 304 * *(a4 + 16) - 304);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::ecs2::PhysicsJointDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v7 = 304 * a2 + 128;
    v8 = a2;
    do
    {
      re::ecs2::PinHandle::~PinHandle((*(a1 + 32) + v7));
      re::ecs2::PinHandle::~PinHandle((v9 - 112));
      ++v8;
      v7 += 304;
    }

    while (v8 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 304 * v4;
      do
      {
        re::ecs2::PhysicsJointDefinition::PhysicsJointDefinition((*(a1 + 32) + v6));
        v6 += 304;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

re::ecs2::PhysicsJointDefinition *re::ecs2::PhysicsJointDefinition::PhysicsJointDefinition(re::ecs2::PhysicsJointDefinition *this)
{
  *this = 0;
  objc_initWeak(this + 2, 0);
  *(this + 3) = 0;
  *(this + 4) = 0;
  re::ecs2::EntityHandle::reset((this + 16));
  *(this + 5) = 0;
  *(this + 6) = &str_67;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0x3F80000000000000;
  *(this + 96) = 0;
  objc_initWeak(this + 16, 0);
  *(this + 17) = 0;
  *(this + 18) = 0;
  re::ecs2::EntityHandle::reset((this + 128));
  *(this + 19) = 0;
  *(this + 20) = &str_67;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0x3F80000000000000;
  *(this + 208) = 0;
  *(this + 240) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v7 = -_D0;
  *(this + 244) = v7;
  *(this + 252) = v7;
  v8 = 268;
  *(this + 260) = v7;
  do
  {
    *(this + v8) = v7;
    v8 += 8;
  }

  while (v8 != 292);
  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 304 * v8;
      v10 = (*(a1 + 32) + 128);
      do
      {
        re::ecs2::PinHandle::~PinHandle(v10);
        re::ecs2::PinHandle::~PinHandle((v10 - 112));
        v10 = (v10 + 304);
        v9 -= 304;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 304 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 304;
        v14 -= 304;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::ecs2::allocInfo_SceneUnderstandingMeshSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_320))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD640, "SceneUnderstandingMeshSystem");
    __cxa_guard_release(&_MergedGlobals_320);
  }

  return &unk_1EE1AD640;
}

void re::ecs2::initInfo_SceneUnderstandingMeshSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x3CF52F60DF61D568;
  v8[1] = "SceneUnderstandingMeshSystem";
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
  *(this + 8) = &re::ecs2::initInfo_SceneUnderstandingMeshSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneUnderstandingMeshSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneUnderstandingMeshSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SceneUnderstandingMeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SceneUnderstandingMeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingMeshSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneUnderstandingMeshSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::SceneUnderstandingMeshSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
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
  *(v3 + 296) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF5598;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingMeshSystem>(_OWORD *a1)
{
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
  *(v1 + 296) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF5598;
  return result;
}

_anonymous_namespace_ *re::ecs2::SceneUnderstandingMeshSystem::willAddSystemToECSService(re::ecs2::SceneUnderstandingMeshSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::SceneUnderstandingService>(v2);
  *(this + 37) = result;
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::SceneUnderstandingService>(uint64_t a1)
{
  {
    re::introspect<re::SceneUnderstandingService>(BOOL)::info = re::introspect_SceneUnderstandingService(0);
  }

  v2 = re::introspect<re::SceneUnderstandingService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

double re::ecs2::SceneUnderstandingMeshSystem::willRemoveSystemFromECSService(re::ecs2::SceneUnderstandingMeshSystem *this)
{
  result = 0.0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  return result;
}

void re::ecs2::SceneUnderstandingMeshSystem::update(re::ProfilerConfig *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v104 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 28);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    if (*(a1 + 37))
    {
      v5 = *(a3 + 200);
      if (v5)
      {
        v6 = *(a3 + 216);
        v7 = 8 * v5;
        v56 = vdupq_n_s64(1uLL);
        v8 = &unk_1EE187000;
        v9 = &unk_1ECF17000;
        while (1)
        {
          v10 = *v6;
          isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
          if (isStatisticCollectionEnabled)
          {
            v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
            if (*(v12 + 152))
            {
              v57 = mach_absolute_time();
            }
          }

          else
          {
            v12 = 0;
          }

          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v66, 3093, v3, 0, 0, 0);
          v14 = *(v3 + 29);
          if (!v14)
          {
            break;
          }

          v15 = *(v14 + 112);
          if (v15)
          {
            v16 = re::RenderFrameBox::get((v15 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v16 = 0;
          }

          re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v65, v10, 0, v16);
          v17 = re::ecs2::SceneComponentTable::get((v10 + 200), *(v8 + 3056));
          if (v17 && *(v17 + 384))
          {
            v20 = v9[1928];
            v21 = **(v17 + 400);
            v59[17] = *(v21 + 25);
            v60 = *(v21 + 26);
            v63 = v20;
            if (*(v21 + 30))
            {
              v22 = 1;
            }

            else
            {
              if (re::ecs2::ShadowHelper::forceEnableMeshProjectiveShadows(void)::onceToken != -1)
              {
                dispatch_once(&re::ecs2::ShadowHelper::forceEnableMeshProjectiveShadows(void)::onceToken, &__block_literal_global_18);
              }

              v22 = re::ecs2::ShadowHelper::forceEnableMeshProjectiveShadows(void)::g_forceEnableMeshProjectiveShadows;
            }

            v64 = v22 & 1;
            re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v59, 7502, v3, 0, 0, 0);
            v61 = (*(**(v3 + 37) + 56))(*(v3 + 37));
            v62 = (*(**(v3 + 37) + 72))(*(v3 + 37));
            v80 = (v65 >> 1);
            v23 = **(re::RenderFrameData::stream((v16 + 33), &v80) + 48);
            (*(v23 + 1000))();
            (*(**(v3 + 37) + 120))(&v68);
            v26 = v70[1];
            if (v69 == 1 && v70[0] && v70[1])
            {
              v58 = v65 >> 1;
              v27 = re::RenderFrameData::stream((v16 + 33), &v58);
              re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v27, &v67, &v80);
              if (HIDWORD(v81) == 0x7FFFFFFF)
              {
                v28 = *(*(v27 + 48) + 8);
                v29 = (*(*v28 + 32))(v28, 56, 8);
                *v29 = 0;
                *(v29 + 8) = 0;
                *(v29 + 16) = 1;
                *(v29 + 32) = 0;
                *(v29 + 40) = 0;
                *(v29 + 24) = 0;
                *(v29 + 48) = 0;
                v30 = re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::init(v29, v28, 1uLL);
                v31 = re::globalAllocators(v30)[2];
                *&v99 = &unk_1F5CF5670;
                *(&v99 + 1) = v28;
                *(&v100 + 1) = v31;
                *&v101 = &v99;
                v80 = std::__any_imp::_SmallHandler<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__handle[abi:nn200100];
                v81 = v29;
                *(&v84 + 1) = v31;
                *&v85 = 0;
                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v83, &v99);
                v32 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v27, &v67, &v80);
                if (v85)
                {
                  *v92 = &v80;
                  (*(*v85 + 16))(v85, v92);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v83);
                if (v80)
                {
                  (v80)(0, &v80, 0, 0, 0);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v99);
              }

              else
              {
                v32 = (*(v27 + 16) + 96 * HIDWORD(v81) + 16);
              }

              LOBYTE(v81) = v69;
              v82 = *v70;
              v87 = v75;
              v88 = v76;
              v85 = v73;
              v86 = v74;
              *(v91 + 10) = *(v79 + 10);
              v90 = v78;
              v91[0] = v79[0];
              v89 = v77;
              v83 = v71;
              v84 = v72;
              v35 = *(v34 + 40);
              v70[0] = 0;
              v70[1] = 0;
              v10 = *(v34 + 8);
              v80 = &unk_1F5CF56C8;
              if (v35 + 1 > 4 * v10)
              {
                re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::setBucketsCapacity(v34, (v35 + 4) >> 2);
                v10 = *(v34 + 8);
              }

              v8 = v35 >> 2;
              if (v10 <= v35 >> 2)
              {
                goto LABEL_59;
              }

              if (*(v34 + 16))
              {
                v36 = v34 + 24;
              }

              else
              {
                v36 = *(v34 + 32);
              }

              v37 = *(v36 + 8 * v8);
              ++*(v34 + 40);
              ++*(v34 + 48);
              v38 = v37 + 192 * (v35 & 3);
              *v38 = &unk_1F5CF56C8;
              *(v38 + 8) = v81;
              *(v38 + 16) = v82;
              *&v82 = 0;
              *(v38 + 24) = *(&v82 + 1);
              v39 = v84;
              *(v38 + 32) = v83;
              *(v38 + 48) = v39;
              v40 = v85;
              v41 = v86;
              v42 = v88;
              *(v38 + 96) = v87;
              *(v38 + 112) = v42;
              *(v38 + 64) = v40;
              *(v38 + 80) = v41;
              v43 = v89;
              v44 = v90;
              v45 = v91[0];
              *(v38 + 170) = *(v91 + 10);
              *(v38 + 144) = v44;
              *(v38 + 160) = v45;
              *(v38 + 128) = v43;
              v46 = *(v34 + 40);
              if (!v46)
              {
                goto LABEL_63;
              }

              re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::operator[](v34, v46 - 1);
              v26 = v70[1];
              v8 = 0x1EE187000;
              v9 = &unk_1ECF17000;
            }

            if (v26)
            {

              v70[1] = 0;
            }

            if (v70[0])
            {
            }

            re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v59, v24, v25);
          }

          if (v65)
          {
            if (v65)
            {
            }
          }

          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v66, v18, v19);
          if (v12)
          {
            if (*(v12 + 152))
            {
              a1 = mach_absolute_time();
              v47 = *(v12 + 152);
              if (v47)
              {
                v48 = v47[1040].i64[0];
                if (v48 >= a1 - v57)
                {
                  v48 = a1 - v57;
                }

                v47[1040].i64[0] = v48;
                v49 = v47[1040].i64[1];
                if (v49 <= a1 - v57)
                {
                  v49 = a1 - v57;
                }

                v47[1040].i64[1] = v49;
                v50.i64[1] = v56.i64[1];
                v50.i64[0] = a1 - v57;
                v47[1041] = vaddq_s64(v47[1041], v50);
                *(v12 + 184) = 0;
              }
            }
          }

          ++v6;
          v7 -= 8;
          if (!v7)
          {
            return;
          }
        }

        re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 61, v56.i64[0]);
        _os_crash("assertion failure: (m_renderManager) ");
        __break(1u);
LABEL_59:
        v67 = 0;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v99 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v92 = 136315906;
        *&v92[4] = "operator[]";
        v93 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v94 = 858;
        v95 = 2048;
        v96 = v8;
        v97 = 2048;
        v98 = v10;
        _os_log_send_and_compose_impl(v53, &v67, &v99, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
LABEL_63:
        re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
        _os_crash("assertion failure: (m_size > 0) Array is empty");
        __break(1u);
      }
    }
  }
}

void re::SceneUnderstandingGuidedFilterOcclusionData::~SceneUnderstandingGuidedFilterOcclusionData(re::SceneUnderstandingGuidedFilterOcclusionData *this)
{
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }
}

{
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneUnderstandingMeshSystem::~SceneUnderstandingMeshSystem(re::ecs2::SceneUnderstandingMeshSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 768, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::SceneUnderstandingGuidedFilterOcclusionData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::operator[](v4, i);
        v8 = *(v7 + 24);
        if (v8)
        {

          *(v7 + 24) = 0;
        }

        v9 = *(v7 + 16);
        if (v9)
        {

          *(v7 + 16) = 0;
        }
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v10 = *(*v2 + 40);

    return v10(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::SceneUnderstandingGuidedFilterOcclusionData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5670;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::SceneUnderstandingGuidedFilterOcclusionData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5670;
  a2[1] = v2;
  return a2;
}

unint64_t re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v5 + 8 * v2) + 192 * (a2 & 3);
}

void *re::allocInfo_ShadowService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_321, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_321))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD6D8, "ShadowService");
    __cxa_guard_release(&_MergedGlobals_321);
  }

  return &unk_1EE1AD6D8;
}

void re::initInfo_ShadowService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x622CD9D971A522AALL;
  v8[1] = "ShadowService";
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
  *(this + 8) = &re::initInfo_ShadowService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::ecs2::allocInfo_AccessibilityComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD770))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD878, "AccessibilityComponent");
    __cxa_guard_release(&qword_1EE1AD770);
  }

  return &unk_1EE1AD878;
}

void re::ecs2::initInfo_AccessibilityComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v66[0] = 0xA4CC9857620F7EDELL;
  v66[1] = "AccessibilityComponent";
  if (v66[0])
  {
    if (v66[0])
    {
    }
  }

  *(this + 2) = v67;
  if ((atomic_load_explicit(&qword_1EE1AD778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD778))
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
    qword_1EE1AD810 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "isRoot";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AD818 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "isEnabled";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AD820 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "identifier";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1AD828 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "label";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x4800000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1AD830 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "description";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x7000000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1AD838 = v34;
    v35 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::accessibility::CustomContent>>::get(v35, v36, v37, v38, v39, v40);
    v41 = (*(*v35 + 32))(v35, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "customContent";
    *(v41 + 16) = &qword_1EE1AD790;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000006;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1AD840 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "value";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xC000000007;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1AD848 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_uint64_t(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "traits";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xE800000008;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE1AD850 = v49;
    v50 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<long>>::get(v50, v51);
    v52 = (*(*v50 + 32))(v50, 72, 8);
    *v52 = 1;
    *(v52 + 8) = "systemRotors";
    *(v52 + 16) = qword_1EE1AD7D0;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0xF000000009;
    *(v52 + 40) = 0;
    *(v52 + 48) = 0;
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    qword_1EE1AD858 = v52;
    v53 = re::introspectionAllocator();
    v55 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v54);
    v56 = (*(*v53 + 32))(v53, 72, 8);
    *v56 = 1;
    *(v56 + 8) = "customRotors";
    *(v56 + 16) = v55;
    *(v56 + 24) = 0;
    *(v56 + 32) = 0x1180000000ALL;
    *(v56 + 40) = 0;
    *(v56 + 48) = 0;
    *(v56 + 56) = 0;
    *(v56 + 64) = 0;
    qword_1EE1AD860 = v56;
    v57 = re::introspectionAllocator();
    v59 = re::introspect_uint64_t(1, v58);
    v60 = (*(*v57 + 32))(v57, 72, 8);
    *v60 = 1;
    *(v60 + 8) = "systemActions";
    *(v60 + 16) = v59;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0x1400000000BLL;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    *(v60 + 56) = 0;
    *(v60 + 64) = 0;
    qword_1EE1AD868 = v60;
    v61 = re::introspectionAllocator();
    v63 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v62);
    v64 = (*(*v61 + 32))(v61, 72, 8);
    *v64 = 1;
    *(v64 + 8) = "customActions";
    *(v64 + 16) = v63;
    *(v64 + 24) = 0;
    *(v64 + 32) = 0x1480000000CLL;
    *(v64 + 40) = 0;
    *(v64 + 48) = 0;
    *(v64 + 56) = 0;
    *(v64 + 64) = 0;
    qword_1EE1AD870 = v64;
    __cxa_guard_release(&qword_1EE1AD778);
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1AD810;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AccessibilityComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AccessibilityComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AccessibilityComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AccessibilityComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222AccessibilityComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v65 = v67;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::accessibility::CustomContent>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1AD780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD780))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AD790);
    qword_1EE1AD790 = &unk_1F5CF56F0;
    __cxa_guard_release(&qword_1EE1AD780);
  }

  if ((_MergedGlobals_322 & 1) == 0)
  {
    v6 = re::ecs2::accessibility::introspect_CustomContent(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_322 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_322 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AD790, 0);
      qword_1EE1AD7A0 = 0x2800000003;
      dword_1EE1AD7A8 = v8;
      word_1EE1AD7AC = 0;
      *&xmmword_1EE1AD7B0 = 0;
      *(&xmmword_1EE1AD7B0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AD7C0 = v7;
      unk_1EE1AD7C8 = 0;
      qword_1EE1AD790 = &unk_1F5CF56F0;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1AD790);
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
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1AD7B0 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<long>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AD788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD788))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE1AD7D0);
    qword_1EE1AD7D0[0] = &unk_1F5CF5788;
    __cxa_guard_release(&qword_1EE1AD788);
  }

  if ((byte_1EE1AD769 & 1) == 0)
  {
    v2 = re::introspect_long(1, a2);
    if ((byte_1EE1AD769 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1AD769 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(qword_1EE1AD7D0, 0);
      unk_1EE1AD7E0 = 0x2800000003;
      unk_1EE1AD7E8 = v4;
      unk_1EE1AD7EC = 0;
      *&xmmword_1EE1AD7F0 = 0;
      *(&xmmword_1EE1AD7F0 + 1) = 0xFFFFFFFFLL;
      unk_1EE1AD800 = v3;
      unk_1EE1AD808 = 0;
      qword_1EE1AD7D0[0] = &unk_1F5CF5788;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, qword_1EE1AD7D0);
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

      v11 = *(v3 + 2);
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
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1AD7F0 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void *re::internal::defaultDestruct<re::ecs2::AccessibilityComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicString>::deinit(a3 + 328);
  re::DynamicArray<re::DynamicString>::deinit(a3 + 280);
  re::DynamicArray<unsigned long>::deinit(a3 + 240);
  if (*(a3 + 192) == 1)
  {
    re::DynamicString::deinit((a3 + 200));
  }

  re::DynamicArray<re::ecs2::accessibility::CustomContent>::deinit(a3 + 152);
  if (*(a3 + 112) == 1)
  {
    re::DynamicString::deinit((a3 + 120));
  }

  if (*(a3 + 72) == 1)
  {
    re::DynamicString::deinit((a3 + 80));
  }

  if (*(a3 + 32) == 1)
  {
    re::DynamicString::deinit((a3 + 40));
  }

  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::AccessibilityComponent>(uint64_t a1)
{
  re::DynamicArray<re::DynamicString>::deinit(a1 + 328);
  re::DynamicArray<re::DynamicString>::deinit(a1 + 280);
  re::DynamicArray<unsigned long>::deinit(a1 + 240);
  if (*(a1 + 192) == 1)
  {
    re::DynamicString::deinit((a1 + 200));
  }

  re::DynamicArray<re::ecs2::accessibility::CustomContent>::deinit(a1 + 152);
  if (*(a1 + 112) == 1)
  {
    re::DynamicString::deinit((a1 + 120));
  }

  if (*(a1 + 72) == 1)
  {
    re::DynamicString::deinit((a1 + 80));
  }

  if (*(a1 + 32) == 1)
  {
    re::DynamicString::deinit((a1 + 40));
  }

  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void *re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::accessibility::CustomContent>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::accessibility::CustomContent>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = re::DynamicString::setCapacity(&v15, 0);
  v18 = 0uLL;
  *&v19 = 0;
  re::DynamicString::setCapacity(&v17 + 1, 0);
  v9 = *(a4 + 16);
  if (v9 >= *(a4 + 8))
  {
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::growCapacity(a4, v9 + 1);
    v9 = *(a4 + 16);
  }

  v10 = *(a4 + 32) + 72 * v9;
  *v10 = v15;
  *(v10 + 8) = v16;
  v11 = *(&v17 + 1);
  *(v10 + 24) = v17;
  *(v10 + 32) = v11;
  *(v10 + 56) = v19;
  *(v10 + 40) = v18;
  *(v10 + 64) = BYTE8(v19);
  v12 = *(a4 + 16);
  *(a4 + 16) = v12 + 1;
  ++*(a4 + 24);
  v13 = (*(a4 + 32) + 72 * v12);
  re::introspectionInitElement(a2, a3, a1[6], v13);
  return v13;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 72 * a3;
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

  return *(a2 + 32) + 72 * a3;
}

void *re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
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
        v10 = v8 + 72 * v9;
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
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[7] = *(v8 + 56);
          *(v8 + 56) = 0;
          v17 = v11[5];
          v16 = v11[6];
          v18 = *(v8 + 48);
          v11[5] = *(v8 + 40);
          v11[6] = v18;
          *(v8 + 40) = v17;
          *(v8 + 48) = v16;
          *(v11 + 64) = *(v8 + 64);
          re::DynamicString::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v11 += 9;
          v8 += 72;
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

void re::DynamicArray<re::ecs2::accessibility::CustomContent>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = 72 * a2;
    v10 = a2;
    do
    {
      v11 = *(v3 + 4) + v9;
      re::DynamicString::deinit((v11 + 32));
      re::DynamicString::deinit(v11);
      ++v10;
      v9 += 72;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 72 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        v7 += 32;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        v6 += 72;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::accessibility::CustomContent>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::accessibility::CustomContent>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 72 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 72;
        v11 -= 72;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::ecs2::accessibility::CustomContent>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 72 * v2;
    do
    {
      re::DynamicString::deinit((v3 + 32));
      re::DynamicString::deinit(v3);
      v3 += 72;
      v4 -= 72;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 72 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 72 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<long>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<long>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<long>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<long>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<long>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 8 * a3;
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

  return *(a2 + 32) + 8 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<float *>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<float *>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<double>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::AccessibilityComponent>(ArcSharedObject *a1)
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
  *(a1 + 9) = 0u;
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD8DC8;
  *(v1 + 25) = 0;
  *(v1 + 32) = 0;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 184) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  *(v1 + 176) = 0;
  *(v1 + 192) = 0;
  *(v1 + 360) = 0;
  result = 0.0;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0;
  *(v1 + 304) = 0;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 340) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs222AccessibilityComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 2;
  *(a2 + 8) = 0;
  return result;
}

re::snapshot::BufferDecoder *re::ecs2::HierarchicalFadeComponent::snapshotMapFields<re::snapshot::DecoderRaw>(uint64_t a1, const char **a2)
{
  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v6)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0, v7, v8, v9, v10, v11);
      v4 = &unk_1EE187000;
    }
  }

  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a2, a1, v4[54]);
  re::snapshot::DecoderRaw::operator>>(a2, (a1 + 28));

  return re::snapshot::DecoderRaw::operator>>(a2, (a1 + 32));
}

BOOL re::ecs2::HierarchicalFadeComponent::snapshotMapFields<re::snapshot::DecoderOPACK>(uint64_t a1, const char **a2)
{
  re::snapshot::DecoderOPACK::field<0,re::ecs2::Component>(a2, a1, "Component");
  re::snapshot::DecoderOPACK::field<1,float>(a2, (a1 + 28), "opacity");

  return re::snapshot::DecoderOPACK::field<4,BOOL>(a2, (a1 + 32), "useDepthPrePass");
}

re::snapshot::BufferEncoder *re::ecs2::HierarchicalFadeComponent::snapshotMapFields<re::snapshot::EncoderRaw>(uint64_t a1, re::snapshot::EncoderRaw *a2)
{
  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v6)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0, v7, v8, v9, v10, v11);
      v4 = &unk_1EE187000;
    }
  }

  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a2, a1, v4[54]);
  __src = *(a1 + 28);
  re::snapshot::BufferEncoder::writeRaw<true>(a2, &__src, 4uLL);
  v13 = *(a1 + 32);
  return re::snapshot::BufferEncoder::writeRaw<true>(a2, &v13, 1uLL);
}

re::snapshot::BufferEncoder *re::ecs2::HierarchicalFadeComponent::snapshotMapFields<re::snapshot::EncoderOPACK>(uint64_t a1, re::snapshot::EncoderOPACK *this)
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

  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v13)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0, v14, v15, v16, v17, v18);
      v6 = &unk_1EE187000;
    }
  }

  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a1, v6[54]);
  v7 = *(this + 4);
  if (v7 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v8 = *(this + 1);
    *(this + 4) = v7 + 1;
    *(v8 + v7) = 9;
  }

  re::snapshot::EncoderOPACK::operator<<(this, *(a1 + 28));
  v9 = *(this + 4);
  if (v9 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 4);
  }

  else
  {
    v10 = *(this + 1);
    *(this + 4) = v9 + 1;
    *(v10 + v9) = 12;
  }

  v11 = *(a1 + 32);

  return re::snapshot::EncoderOPACK::operator<<(this, v11);
}

uint64_t re::ecs2::HierarchicalFadeComponent::getUseDepthPrePass(re::ecs2::HierarchicalFadeComponent *this)
{
  if (*(this + 32) == 1)
  {
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    {
      v9 = v1;
      v10 = v2;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      if (v6)
      {
        re::Defaults::BOOLValue(v8, "disableDepthPrepassForFade", v7);
        useDepthPrePassForFade(void)::kUseDepthPrePassForFade = v8[0] & v8[1] ^ 1;
        v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      }
    }

    v4 = v3[1224];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t re::ecs2::HierarchicalFadeComponent::getFadeGroupID@<X0>(re::ecs2::HierarchicalFadeComponent *this@<X0>, uint64_t a2@<X8>)
{
  result = re::ecs2::EntityComponentCollection::get((*(this + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if ((!result || *(result + 25) == 1) && (result = re::ecs2::HierarchicalFadeComponent::getUseDepthPrePass(this), result))
  {
    v5 = *(*(this + 2) + 312);
    *a2 = 1;
    *(a2 + 8) = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *re::ecs2::allocInfo_HierarchicalFadeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD910))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD948, "HierarchicalFadeComponent");
    __cxa_guard_release(&qword_1EE1AD910);
  }

  return &unk_1EE1AD948;
}

void re::ecs2::initInfo_HierarchicalFadeComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x54B04082FD869170;
  v24[1] = "HierarchicalFadeComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&_MergedGlobals_323, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_323))
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
    qword_1EE1AD930 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "opacity";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AD938 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "useDepthPrePass";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AD940 = v22;
    __cxa_guard_release(&_MergedGlobals_323);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AD930;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HierarchicalFadeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HierarchicalFadeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HierarchicalFadeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HierarchicalFadeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225HierarchicalFadeComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::ecs2::HierarchicalFadeComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8308;
  *(v3 + 28) = 1065353216;
  *(v3 + 32) = 1;
}

void re::internal::defaultConstructV2<re::ecs2::HierarchicalFadeComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8308;
  *(v1 + 28) = 1065353216;
  *(v1 + 32) = 1;
}

void *re::ecs2::allocInfo_HierarchicalFadeSecondaryOpacityMarkerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD918))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD9D8, "HierarchicalFadeSecondaryOpacityMarkerComponent");
    __cxa_guard_release(&qword_1EE1AD918);
  }

  return &unk_1EE1AD9D8;
}

void re::ecs2::initInfo_HierarchicalFadeSecondaryOpacityMarkerComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x9018DAA3288F7CCELL;
  v16[1] = "HierarchicalFadeSecondaryOpacityMarkerComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AD928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD928))
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
    qword_1EE1AD920 = v14;
    __cxa_guard_release(&qword_1EE1AD928);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AD920;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs247HierarchicalFadeSecondaryOpacityMarkerComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}