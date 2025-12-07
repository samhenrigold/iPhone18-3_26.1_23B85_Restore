double re::internal::defaultConstructV2<re::ecs2::PassthroughDarkeningComponent>(ArcSharedObject *a1)
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
  *v1 = &unk_1F5CDFEE8;
  *(v1 + 32) = 0;
  *(v1 + 96) = 1065353216;
  *(v1 + 100) = 0;
  result = 0.12500003;
  *(v1 + 104) = 0x3FC000003F800000;
  return result;
}

uint64_t re::IntrospectionOptional<re::Matrix3x3<float>>::IntrospectionOptional()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AF068, 0);
  *(&qword_1EE1AF078 + 6) = 0;
  qword_1EE1AF078 = 0;
  *&xmmword_1EE1AF088 = 0;
  *(&xmmword_1EE1AF088 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AF068 = &unk_1F5CBA310;
  qword_1EE1AF0A0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AF098);
  qword_1EE1AF068 = &unk_1F5CF7550;
  return result;
}

void *re::IntrospectionOptional<re::Matrix3x3<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Matrix3x3<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Matrix3x3<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 16) = 0u;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Matrix3x3<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  if (a2)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    if (a1->n128_u8[0])
    {
      result = *a2;
      v3 = a2[2];
      a1[2] = a2[1];
      a1[3] = v3;
      a1[1] = result;
    }

    else
    {
      a1->n128_u8[0] = 1;
      a1[1] = v4;
      a1[2] = v5;
      result = v6;
      a1[3] = v6;
    }
  }

  else if (a1->n128_u8[0] == 1)
  {
    a1->n128_u8[0] = 0;
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs229PassthroughDarkeningComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::allocInfo_VideoService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_346, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_346))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF140, "VideoService");
    __cxa_guard_release(&_MergedGlobals_346);
  }

  return &unk_1EE1AF140;
}

void re::initInfo_VideoService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x3F1D323CEE935BB4;
  v8[1] = "VideoService";
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
  *(this + 8) = &re::initInfo_VideoService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

_anonymous_namespace_ *re::ecs2::NetworkAssetComponentSystem::willAddSystemToECSService(re::ecs2::NetworkAssetComponentSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::NetworkAssetService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v3);
  *(this + 29) = result;
  return result;
}

uint64_t re::ecs2::NetworkAssetComponentSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

uint64_t re::ecs2::NetworkAssetComponentSystem::willAddSceneToECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v7 = v3;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddComponents,re::ecs2::NetworkAssetComponentSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 8), &v7);
    *&v7 = v3;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::willRemoveComponents,re::ecs2::NetworkAssetComponentSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 272), &v7);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v7 = v3;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddPreloadComponents,re::ecs2::NetworkAssetComponentSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    v6 = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 8), &v7);
    this = *(v3 + 224);
    if (this)
    {
      return (*(*this + 184))(this, a2, v6);
    }
  }

  return this;
}

uint64_t re::ecs2::NetworkAssetComponentSystem::willRemoveSceneFromECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = v3;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddComponents,re::ecs2::NetworkAssetComponentSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 8, &v6);
    *&v6 = v3;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::willRemoveComponents,re::ecs2::NetworkAssetComponentSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 272, &v6);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = v3;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddPreloadComponents,re::ecs2::NetworkAssetComponentSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 8, &v6);
    this = *(v3 + 224);
    if (this)
    {
      return (*(*this + 192))(this, a2);
    }
  }

  return this;
}

void *re::ecs2::allocInfo_NetworkAssetComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF1D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF2E8, "NetworkAssetComponent");
    __cxa_guard_release(&qword_1EE1AF1D8);
  }

  return &unk_1EE1AF2E8;
}

void re::ecs2::initInfo_NetworkAssetComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v46[0] = 0x93E695FE988D5B36;
  v46[1] = "NetworkAssetComponent";
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  *(this + 2) = v47;
  if ((atomic_load_explicit(&qword_1EE1AF1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF1E0))
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
    qword_1EE1AF218 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint64_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "assetId";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AF220 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::DynamicString>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "assetType";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2800000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AF228 = v22;
    v23 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AssetLoadDescriptor>>::get(v23, v24, v25, v26, v27, v28);
    v29 = (*(*v23 + 32))(v23, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "loadDescriptors";
    *(v29 + 16) = &qword_1EE1AF258;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x4800000003;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1AF230 = v29;
    v30 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v30, v31);
    v32 = (*(*v30 + 32))(v30, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "dependencies";
    *(v32 + 16) = qword_1EE1AF298;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x7000000004;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1AF238 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_BOOL(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "isMutable";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0xA000000005;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1AF240 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "metadata";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0xA800000006;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1AF248 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::IntrospectionInfo<re::Optional<unsigned long long>>::get(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "memoryAttributionID";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0xD800000007;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1AF250 = v44;
    __cxa_guard_release(&qword_1EE1AF1E0);
  }

  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1AF218;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkAssetComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkAssetComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkAssetComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkAssetComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221NetworkAssetComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v45 = v47;
}

void re::IntrospectionInfo<re::DynamicArray<re::AssetLoadDescriptor>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1AF208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF208))
  {
    re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1AF208);
  }

  if ((_MergedGlobals_347 & 1) == 0)
  {
    Descriptor = re::introspect_AssetLoadDescriptor(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_347 & 1) == 0)
    {
      v7 = Descriptor;
      _MergedGlobals_347 = 1;
      v8 = *(Descriptor + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AF258, 0);
      qword_1EE1AF268 = 0x2800000003;
      dword_1EE1AF270 = v8;
      word_1EE1AF274 = 0;
      *&xmmword_1EE1AF278 = 0;
      *(&xmmword_1EE1AF278 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AF288 = v7;
      qword_1EE1AF290 = 0;
      qword_1EE1AF258 = &unk_1F5CF7660;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1AF258);
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
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1AF278 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AF210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF210))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(qword_1EE1AF298);
    qword_1EE1AF298[0] = &unk_1F5CF76F8;
    __cxa_guard_release(&qword_1EE1AF210);
  }

  if ((byte_1EE1AF1D1 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_uint64_t(1, v3);
    if ((byte_1EE1AF1D1 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1AF1D1 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(qword_1EE1AF298, 0);
      unk_1EE1AF2A8 = 0x3000000007;
      unk_1EE1AF2B0 = v6;
      unk_1EE1AF2B4 = 0;
      *&xmmword_1EE1AF2B8 = 0;
      *(&xmmword_1EE1AF2B8 + 1) = 0xFFFFFFFFLL;
      unk_1EE1AF2C8 = v2;
      unk_1EE1AF2D0 = 0;
      qword_1EE1AF2D8 = v5;
      unk_1EE1AF2E0 = 0;
      qword_1EE1AF298[0] = &unk_1F5CF76F8;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, qword_1EE1AF298);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AF2B8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::Optional<unsigned long long>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionOptional<unsigned long long>::IntrospectionOptional(&re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint64_t(1, a2);
  if ((re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info, 0);
    qword_1EE186408 = 0x100000000DLL;
    dword_1EE186410 = v8;
    word_1EE186414 = 0;
    *&xmmword_1EE186418 = 0;
    *(&xmmword_1EE186418 + 1) = 0xFFFFFFFFLL;
    qword_1EE186428 = v7;
    unk_1EE186430 = 0;
    re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info = &unk_1F5CF7798;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info);
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
    xmmword_1EE186418 = v14;
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

  return &re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_AssetPreloadComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF1E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF378, "AssetPreloadComponent");
    __cxa_guard_release(&qword_1EE1AF1E8);
  }

  return &unk_1EE1AF378;
}

void re::ecs2::initInfo_AssetPreloadComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xBC3854CE9A184FC8;
  v16[1] = "AssetPreloadComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AF1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF1F8))
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
    qword_1EE1AF1F0 = v14;
    __cxa_guard_release(&qword_1EE1AF1F8);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AF1F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AssetPreloadComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AssetPreloadComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AssetPreloadComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AssetPreloadComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AssetPreloadComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::AssetPreloadComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CB8110;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::AssetPreloadComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CB8110;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::ecs2::allocInfo_NetworkAssetComponentSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF200))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF408, "NetworkAssetComponentSystem");
    __cxa_guard_release(&qword_1EE1AF200);
  }

  return &unk_1EE1AF408;
}

void re::ecs2::initInfo_NetworkAssetComponentSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x2BD7885563705754;
  v8[1] = "NetworkAssetComponentSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xF000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_NetworkAssetComponentSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkAssetComponentSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkAssetComponentSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::NetworkAssetComponentSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::NetworkAssetComponentSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkAssetComponentSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkAssetComponentSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::NetworkAssetComponentSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
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
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF75D0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::NetworkAssetComponentSystem>(_OWORD *a1)
{
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
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF75D0;
  return result;
}

void re::ecs2::NetworkAssetComponentSystem::~NetworkAssetComponentSystem(re::ecs2::NetworkAssetComponentSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddComponents,re::ecs2::NetworkAssetComponentSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 224))
  {
    if (*(a1 + 40))
    {
      v5 = a4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3++;
        (*(**(a1 + 224) + 136))(*(a1 + 224), *(v8 + 32), v8 + 72, *(v8 + 16));
        v7 -= 8;
      }

      while (v7);
    }
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::willRemoveComponents,re::ecs2::NetworkAssetComponentSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 224))
  {
    if (*(a1 + 40) && a4 != 0)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3;
        v9 = (*(**(a1 + 224) + 112))(*(a1 + 224), *(*a3 + 32));
        if ((*(**(a1 + 224) + 144))(*(a1 + 224), *(v8 + 32), v8 + 72) && (v9 & 1) == 0)
        {
          re::AssetManager::cancelLoadingAssetId(*(a1 + 232), *(v8 + 32));
        }

        ++a3;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddPreloadComponents,re::ecs2::NetworkAssetComponentSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 224))
  {
    v4 = a1;
    if (*(a1 + 40) && a4 != 0)
    {
      for (i = 8 * a4; i; i -= 8)
      {
        v9 = *a3;
        v10 = *(*a3 + 16);
        if (v10)
        {
          v11 = *(v10 + 32);
          if (!v11 || (*(v11 + 304) & 0x80) != 0)
          {
            v20 = *re::assetsLogObjects(a1);
            a1 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            if (a1)
            {
              *buf = 0;
              v21 = v20;
              v22 = "Could not find parent of AssetPreloadComponent Entity. Aborting asset preload.";
LABEL_28:
              v26 = 2;
              goto LABEL_29;
            }
          }

          else
          {
            v12 = *(v4 + 224);
            v13 = *(v4 + 232);
            v14 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v14)
            {
              v15 = v14;
              v16 = *(v14 + 32);
              a1 = (*(*v12 + 112))(v12, v16);
              if ((a1 & 1) == 0)
              {
                v17 = *(v15 + 48);
                v18 = v17 >> 1;
                if ((v17 & 1) == 0)
                {
                  v18 = v17 >> 1;
                }

                if (v18)
                {
                  if (v17)
                  {
                    v19 = *(v15 + 56);
                  }

                  else
                  {
                    v19 = (v15 + 49);
                  }

                  v27 = re::internal::AssetTypeRegistry::assetTypeWithName(*(v13 + 1808), v19);
                  if (v27)
                  {
                    v28 = v27;
                    *buf = 0;
                    *&v34[4] = 0u;
                    v35 = 0u;
                    v29 = re::DynamicString::setCapacity(&v34[4], 0);
                    v37 = 0u;
                    v36 = 0u;
                    re::DynamicString::setCapacity(&v36, 0);
                    v38 = 0;
                    re::AssetPath::initAssetIdAssetPath(buf, v16, v28);
                    (**v13)(v32, v13, buf);
                    re::AssetHandle::operator=(v9 + 32, v32);
                    re::AssetHandle::loadAsync((v9 + 32));
                    re::AssetHandle::~AssetHandle(v32);
                    if (v36)
                    {
                      if (BYTE8(v36))
                      {
                        (*(*v36 + 40))();
                      }

                      v37 = 0u;
                      v36 = 0u;
                    }

                    a1 = *&v34[4];
                    if (*&v34[4] && (v34[12] & 1) != 0)
                    {
                      a1 = (*(**&v34[4] + 40))();
                    }

                    goto LABEL_21;
                  }

                  v30 = *re::assetsLogObjects(0);
                  a1 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
                  if (a1)
                  {
                    if (*(v15 + 48))
                    {
                      v31 = *(v15 + 56);
                    }

                    else
                    {
                      v31 = v15 + 49;
                    }

                    *buf = 136315394;
                    *v34 = v31;
                    *&v34[8] = 2048;
                    *&v34[10] = v16;
                    v21 = v30;
                    v22 = "Could not find asset type named '%s' in the type registry. Aborting preload for asset %llu.";
                    v26 = 22;
                    goto LABEL_29;
                  }
                }

                else
                {
                  v25 = *re::assetsLogObjects(a1);
                  a1 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
                  if (a1)
                  {
                    *buf = 134217984;
                    *v34 = v16;
                    v21 = v25;
                    v22 = "NetworkAssetComponent for asset %llu does not have an assetType string. Aborting asset preload.";
                    v26 = 12;
LABEL_29:
                    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v22, buf, v26);
                  }
                }
              }
            }

            else
            {
              v24 = *re::assetsLogObjects(0);
              a1 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
              if (a1)
              {
                *buf = 0;
                v21 = v24;
                v22 = "Could not find NetworkAssetComponent for asset. Aborting asset preload.";
                goto LABEL_28;
              }
            }
          }
        }

        else
        {
          v23 = *re::assetsLogObjects(a1);
          a1 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
          if (a1)
          {
            *buf = 0;
            v21 = v23;
            v22 = "Could not find entity for AssetPreloadComponent. Aborting asset preload.";
            goto LABEL_28;
          }
        }

LABEL_21:
        ++a3;
      }
    }
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AF258, 0);
  *(&qword_1EE1AF268 + 6) = 0;
  qword_1EE1AF268 = 0;
  *&xmmword_1EE1AF278 = 0;
  *(&xmmword_1EE1AF278 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AF258 = &unk_1F5CADA48;
  qword_1EE1AF290 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AF288);
  qword_1EE1AF258 = &unk_1F5CF7660;
  return result;
}

void *re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AssetLoadDescriptor>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AssetLoadDescriptor>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v8 = re::DynamicString::setCapacity(&v12, 0);
  *(&v14 + 1) = 0;
  v15 = 0uLL;
  LODWORD(v16[0]) = 0;
  memset(v16 + 8, 0, 36);
  memset(v17, 0, sizeof(v17));
  re::DynamicString::setCapacity(&v17[8], 0);
  v9.n128_f64[0] = re::DynamicArray<re::AssetLoadDescriptor>::add(a4, &v12);
  if (*&v17[8])
  {
    if (v17[16])
    {
      (*(**&v17[8] + 40))(v9.n128_f64[0]);
    }

    v9 = 0uLL;
    memset(&v17[8], 0, 32);
  }

  if (*&v16[1])
  {
    if (*v17)
    {
      (*(**&v16[1] + 40))(v9);
    }

    *v17 = 0;
    memset(&v16[1], 0, 24);
    ++DWORD2(v16[2]);
  }

  if (*(&v14 + 1))
  {
    if (*(&v16[0] + 1))
    {
      (*(**(&v14 + 1) + 40))(v9);
    }

    *(&v16[0] + 1) = 0;
    v15 = 0uLL;
    *(&v14 + 1) = 0;
    ++LODWORD(v16[0]);
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))(v9);
  }

  v10 = (*(a4 + 4) + 144 * *(a4 + 2) - 144);
  re::introspectionInitElement(a2, a3, a1[6], v10);
  return v10;
}

unint64_t re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 144 * a3;
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

  return *(a2 + 32) + 144 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 144 * v8;
      do
      {
        re::DynamicString::deinit((v9 + 112));
        re::DynamicArray<unsigned long>::deinit(v9 + 72);
        re::DynamicArray<unsigned long>::deinit(v9 + 32);
        re::DynamicString::deinit(v9);
        v9 += 144;
        v10 -= 144;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::AssetLoadDescriptor>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 144 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 144;
        v14 -= 144;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 144 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 144 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 14;
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
    v10 = *(a2 + 16) + 56 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
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
      if ((*(*(a2 + 16) + 56 * v6) & 0x80000000) != 0)
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

uint64_t re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v12, a2);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    v9 = v8 + 40;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 56 * v7;
    *(v10 + 40) = *a3;
    return v10 + 40;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v4, v6, a2);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 56 * v4) & 0x80000000) != 0)
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
          v5 += 14;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 0x10uLL, 8uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionOptional<unsigned long long>::IntrospectionOptional(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBA310;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CF7798;
  return a1;
}

void *re::IntrospectionOptional<unsigned long long>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<unsigned long long>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<unsigned long long>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<unsigned long long>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::NetworkAssetComponent>(uint64_t a1)
{
  *(a1 + 224) = 0;
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CB8088;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  v3 = (v2 + 40);
  re::DynamicString::setCapacity(v3, 0);
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0x7FFFFFFFLL;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221NetworkAssetComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs221AssetPreloadComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 8;
    *(a2 + 8) = 0;
  }
}

double re::ShaderGraphMaterial::ShaderGraphMaterial(re::ShaderGraphMaterial *this, re::RenderManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CF7818;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  *(this + 29) = a2;
  *(this + 31) = 0xFFFFFFFFFFFFFFFLL;
  *(this + 32) = 0;
  *(this + 33) = 0xFFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t re::ShaderGraphMaterial::handle@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 13, a2);
  if (result == -1)
  {
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 21, a2);
    if (result == -1)
    {
      LOWORD(v8) = 0;
      v9 = 0;
      v12 = 0;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v8 = *(a1[22] + 16 * result + 8);
      v10 = (a1[26] + (a1[18] << 6) + (a1[18] >> 2) - 0x61C8864680B583E9) ^ a1[18];
      v12 = 10;
      v9 = 1;
    }
  }

  else
  {
    v7 = a1[14] + 16 * result;
    LOWORD(v8) = *(v7 + 8);
    v9 = *(v7 + 10);
    v10 = (a1[26] + (a1[18] << 6) + (a1[18] >> 2) - 0x61C8864680B583E9) ^ a1[18];
    v11 = *(v7 + 11);
    v12 = 9;
  }

  *a3 = *a2;
  *(a3 + 8) = v8;
  *(a3 + 10) = v9;
  *(a3 + 12) = v12;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  return result;
}

uint64_t re::ShaderGraphMaterial::handle@<X0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }

      v3 &= ~0x8000000000000000;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v3;
  return re::ShaderGraphMaterial::handle(this, &v8, a3);
}

unint64_t re::ShaderGraphMaterial::getConstant(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 40);
  if (v3 <= v2)
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

  return *(a1 + 56) + v2;
}

int32x2_t re::ShaderGraphMaterial::colorGamut4FValue@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Constant = re::ShaderGraphMaterial::getConstant(a1, a2);
  v6 = *(Constant + 8);
  v7 = *(a1 + 232);
  if (v7)
  {
    v7 = *(v7 + 160);
    if (v7)
    {
      LOBYTE(v7) = *v7;
    }
  }

  v8 = *Constant;
  *a3 = *Constant;
  result = vzip1_s32((v8 >> 32), v6);
  *(a3 + 4) = result;
  *(a3 + 12) = v6.i32[1];
  *(a3 + 16) = v7;
  return result;
}

re::AssetHandle *re::ShaderGraphMaterial::assetHandleValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetHandle *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *(a1 + 80);
  if (v4 <= v3)
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
    v16 = v3;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(a1 + 96) + 24 * *(a2 + 8));

  return re::AssetHandle::AssetHandle(a3, v5);
}

BOOL re::ShaderGraphMaterial::hasParameter(re::ShaderGraphMaterial *this, const char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v2 &= ~0x8000000000000000;
    }
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v2;
  re::ShaderGraphMaterial::handle(this, &v8, v7);
  return (v7[12] & 7) != 0;
}

uint64_t re::ShaderGraphMaterial::removeParameter(int8x16_t **this, const char *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }

      v3 &= ~0x8000000000000000;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v3;
  result = re::ShaderGraphMaterial::handle(this, &v13, &v10);
  v9 = v12 & 7;
  if ((v12 & 7) != 0)
  {
    if (v9 == 2)
    {
      v13 = v10;
      return re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(&v13, this + 21, (this + 8));
    }

    else if (v9 == 1)
    {
      v13 = v10;
      return re::removeNameMappedConstant(&v13, this + 13, this + 3, v11);
    }

    else
    {
      re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Trying to remove a paramter which exists but has an invalid type.", "!Unreachable code", "removeParameter", 241);
      result = _os_crash("assertion failure: (!Unreachable code) Trying to remove a paramter which exists but has an invalid type.");
      __break(1u);
    }
  }

  return result;
}

re::AssetHandle *re::ShaderGraphMaterial::addTexture(unint64_t *a1, uint64_t *a2, re::AssetHandle *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 21, a2);
  if (v6 == -1)
  {
    *buf = *(a1 + 80);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a1 + 21, a2, buf);
    return re::DynamicArray<re::AssetHandle>::add((a1 + 8), a3);
  }

  else
  {
    v7 = a1[22] + 16 * v6;
    v8 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a2;
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0;
      }

      else if (v9)
      {
        v10 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v9);
      }

      else
      {
        v10 = &str_67;
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable texture (%s) that already exists. Overwiting with new value.", buf, 0xCu);
    }

    v12 = *(v7 + 8);
    v13 = a1[10];
    if (v13 <= v12)
    {
      v17 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *buf = 0u;
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

      v21 = 789;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = v13;
      _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
      _os_crash_msg();
      __break(1u);
    }

    return re::AssetHandle::operator=(a1[12] + 24 * v12, a3);
  }
}

unint64_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(uint64_t *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
}

{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (result == -1)
  {

    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

uint64_t re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(void *a1, int8x16_t **a2, uint64_t a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    i64 = a2[1][result].i64;
    re::DynamicArray<re::AssetHandle>::removeStableAt(a3, *(i64 + 8));
    v10 = *(i64 + 8);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::mapValues<void re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(re::WeakStringID,re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &,re::DynamicArray<re::AssetHandle> &)::{lambda(re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &)#1}>(a2, &v10, v8, v9);
    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(a2, a1);
  }

  return result;
}

double re::ShaderGraphMaterial::setConstant@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, size_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = *a2;
  re::ShaderGraphMaterial::handle(a1, &v19, a6);
  v19 = 0;
  if ((*(a6 + 12) & 7) != 0)
  {
    *&result = re::ShaderGraphMaterial::setConstant(v13, a3, a4, a1, a6, a5).n128_u64[0];
  }

  else
  {
    v18 = *a2;
    re::ShaderGraphMaterial::addConstant(a1, &v18, a3, a4, a5);
    v18 = 0;
    v14 = *a2;
    re::ShaderGraphMaterial::handle(a1, &v14, &v15);
    *a6 = v15;
    result = *&v16;
    *(a6 + 8) = v16;
    *(a6 + 24) = v17;
  }

  return result;
}

void *re::ShaderGraphMaterial::addConstant(void *a1, uint64_t *a2, size_t a3, const void *a4, uint8_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 13, a2);
  if (v10 == -1)
  {
    v11 = a1[5] + 3;
    *buf = v11 & 0xFFFC;
    buf[2] = a3;
    buf[3] = a5;
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(a1 + 13, a2, buf);
    v12 = v11 & 0xFFFC;
    re::DynamicArray<BOOL>::resize((a1 + 3), v12 + a3);
    v15 = a1[5];
    if (v15 > v12)
    {
      return memcpy((a1[7] + v12), a4, a3);
    }

    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    a3 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v11 & 0xFFFC;
    v30 = 2048;
    v31 = v15;
    _os_log_send_and_compose_impl(v16, &v23, buf, 80, &dword_1E1C61000, a3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  else
  {
    v11 = a1[14] + 16 * v10;
    v12 = *re::graphicsLogObjects(v10);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = *a2;
    if (*a2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v13)
      {
        v14 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v13);
      }

      else
      {
        v14 = &str_67;
      }

      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_13:
  *buf = 136315138;
  *&buf[4] = v14;
  _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable constant (%s) that already exists. Overwiting with new values.", buf, 0xCu);
LABEL_14:
  v12 = *(v11 + 8);
  v17 = a1[5];
  if (v17 <= v12)
  {
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v17;
    _os_log_send_and_compose_impl(v21, &v23, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  return memcpy((a1[7] + v12), a4, a3);
}

__n128 re::ShaderGraphMaterial::setConstant@<Q0>(uint64_t *__return_ptr a1@<X8>, size_t __n@<X2>, void *__s2@<X3>, void *a4@<X0>, uint64_t a5@<X1>, uint64_t a6@<X4>)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*(a5 + 12) & 8) != 0)
  {
    v12 = (a5 + 8);
    v11 = *(a5 + 8);
    v13 = a4[5];
    if (v13 <= v11)
    {
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

      v22 = 789;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v13;
      _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    v14 = a4[7];
    if (memcmp((v14 + v11), __s2, __n))
    {
      memcpy((v14 + v11), __s2, __n);
    }

    *a1 = *a5;
    result = *v12;
    *(a1 + 1) = *v12;
    *(a1 + 24) = *(a5 + 24);
  }

  else
  {
    v17 = *a5;
    result.n128_f64[0] = re::ShaderGraphMaterial::setConstant(a4, &v17, __n, __s2, a6, a1);
  }

  return result;
}

unint64_t re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(uint64_t *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(a1, a2, a3);
}

{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (result == -1)
  {

    return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

uint64_t re::DrawingManager::addRenderFrameDeltaForNextFrame<re::MaterialParameterTableDelta,re::MaterialParameterTable>(uint64_t a1, uint64_t *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = re::PerFrameAllocatorManager::perFrameAllocator(v4[6], *(*(*(a1 + 256) + 144) + 48) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 40) << 60));
  v6 = (*(*v5 + 32))(v5, 568, 8);
  bzero((v6 + 8), 0x230uLL);
  *v6 = &unk_1F5CD4138;
  objc_initWeak((v6 + 8), 0);
  *v6 = &unk_1F5D03120;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = 0;
  *(v6 + 528) = 0;
  *(v6 + 536) = 0;
  *(v6 + 548) = 0;
  *(v6 + 564) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0;
  *(v6 + 200) = 0;
  *(v6 + 184) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0;
  *(v6 + 248) = 0u;
  *(v6 + 280) = 0;
  *(v6 + 264) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 0;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  *(v6 + 400) = 0;
  *(v6 + 440) = 0;
  *(v6 + 408) = 0u;
  *(v6 + 424) = 0u;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 520) = 0;
  *(v6 + 488) = 0u;
  *(v6 + 504) = 0u;
  v7 = *a2;
  off_1F5D03128(v6, v5);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  objc_storeWeak((v6 + 8), v8);
  if (!*(a1 + 608))
  {
    *(a1 + 608) = v5;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity((a1 + 608), 0);
    *(a1 + 624) += 2;
  }

  v10 = v6;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(a1 + 608, &v10);
  return v6;
}

double re::ShaderGraphMaterial::setBool@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(this, &v10, 1uLL, &v9, 2, a4);
}

double re::ShaderGraphMaterial::setFloat@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, float a3@<S0>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(this, &v10, 4uLL, &v9, 1, a4);
}

double re::ShaderGraphMaterial::setInt@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(this, &v10, 4uLL, &v9, 3, a4);
}

double re::ShaderGraphMaterial::setUint@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(this, &v10, 4uLL, &v9, 7, a4);
}

double re::ShaderGraphMaterial::setVector2F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 8uLL, &v9, 32, a4);
}

double re::ShaderGraphMaterial::setInt2@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 8uLL, &v9, 4, a3);
}

double re::ShaderGraphMaterial::setUint2@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 8uLL, &v9, 8, a3);
}

double re::ShaderGraphMaterial::setVector3F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::ShaderGraphMaterial::setConstant(a1, &v11, 0x10uLL, v10, 33, a5);
}

double re::ShaderGraphMaterial::setColorGamut3F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[0] = a3;
  v19[1] = a4;
  v8 = a1[29];
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v19, v10, 1);
  DWORD2(v11) = v12;
  v18 = v11;
  if (a2)
  {
    v13 = *a2;
    if (*a2)
    {
      v14 = a2[1];
      if (v14)
      {
        v15 = a2 + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v13 &= ~0x8000000000000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v13;
  return re::ShaderGraphMaterial::setConstant(a1, &v20, 0x10uLL, &v18, 20, a5);
}

double re::ShaderGraphMaterial::setColorGamut3F@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v8 = a1[29];
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v16, v10, 1);
  DWORD2(v11) = v12;
  v15 = v11;
  v14 = *a2;
  return re::ShaderGraphMaterial::setConstant(a1, &v14, 0x10uLL, &v15, 20, a5);
}

double re::ShaderGraphMaterial::setInt3@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 0x10uLL, &v9, 5, a3);
}

double re::ShaderGraphMaterial::setUint3@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 0x10uLL, &v9, 9, a3);
}

double re::ShaderGraphMaterial::setVector4F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::ShaderGraphMaterial::setConstant(a1, &v11, 0x10uLL, v10, 34, a5);
}

double re::ShaderGraphMaterial::setColorGamut4F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[29];
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, v15);
  v16 = *v15;
  if (a2)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = a2 + 2;
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }

      v10 &= ~0x8000000000000000;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15[0] = v10;
  return re::ShaderGraphMaterial::setConstant(a1, v15, 0x10uLL, &v16, 21, a4);
}

double re::ShaderGraphMaterial::setColorGamut4F@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[29];
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, &v12);
  v13 = v12;
  v11 = *a2;
  return re::ShaderGraphMaterial::setConstant(a1, &v11, 0x10uLL, &v13, 21, a4);
}

double re::ShaderGraphMaterial::setInt4@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 0x10uLL, &v9, 6, a3);
}

double re::ShaderGraphMaterial::setUint4@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 0x10uLL, &v9, 10, a3);
}

double re::ShaderGraphMaterial::setMatrix2x2F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::ShaderGraphMaterial::setConstant(a1, &v11, 0x10uLL, v10, 48, a5);
}

double re::ShaderGraphMaterial::setMatrix3x3F@<D0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v9, 0x30uLL, a3, 49, a4);
}

double re::ShaderGraphMaterial::setMatrix4x4F@<D0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v9, 0x40uLL, a3, 50, a4);
}

double re::ShaderGraphMaterial::setAssetHandle@<D0>(uint64_t *__return_ptr a1@<X8>, re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, const re::AssetHandle *a3@<X2>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::ShaderGraphMaterial::setAssetHandle(this, &v9, a3, a1);
}

double re::ShaderGraphMaterial::setAssetHandle@<D0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, re::AssetHandle *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *a2;
  re::ShaderGraphMaterial::handle(a1, &v15, a4);
  v15 = 0;
  if ((*(a4 + 12) & 7) != 0)
  {
    *&result = re::ShaderGraphMaterial::setAssetHandle(a1, a4, a3, v9).n128_u64[0];
  }

  else
  {
    v14 = *a2;
    re::ShaderGraphMaterial::addTexture(a1, &v14, a3);
    v14 = 0;
    v10 = *a2;
    re::ShaderGraphMaterial::handle(a1, &v10, &v11);
    *a4 = v11;
    result = *&v12;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
  }

  return result;
}

__n128 re::ShaderGraphMaterial::setAssetHandle@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 12) & 8) != 0)
  {
    v8 = (a2 + 8);
    v7 = *(a2 + 8);
    v9 = a1[10];
    if (v9 <= v7)
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
      v20 = v7;
      v21 = 2048;
      v22 = v9;
      _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
      _os_crash_msg();
      __break(1u);
    }

    v10 = a1[12] + 24 * *(a2 + 8);
    if (*(v10 + 8) != a3[1])
    {
      re::AssetHandle::operator=(v10, a3);
    }

    *a4 = *a2;
    result = *v8;
    *(a4 + 8) = *v8;
    *(a4 + 24) = *(a2 + 24);
  }

  else
  {
    v13 = *a2;
    result.n128_f64[0] = re::ShaderGraphMaterial::setAssetHandle(a1, &v13, a3, a4);
  }

  return result;
}

void re::ShaderGraphMaterial::~ShaderGraphMaterial(re::ShaderGraphMaterial *this)
{
  re::ShaderGraphMaterial::~ShaderGraphMaterial(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CF7818;
  re::DynamicArray<unsigned long>::deinit(this + 24);
  re::DynamicArray<re::AssetHandle>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 104);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 168);
  v2 = *(this + 32);
  if (v2)
  {

    *(this + 32) = 0;
  }

  *(this + 33) = 0xFFFFFFFFFFFFFFFLL;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 168);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 104);
  re::DynamicArray<re::AssetHandle>::deinit(this + 64);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

unint64_t re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(uint64_t *a1, void *a2, _DWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::resize(a1, 1);
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
  v16 = v13 + 16 * v11;
  v17 = a1[1] + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateHashes(a1, a1[1] + 16 * v16);
  return a1[1] + 16 * v16 + 8;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = a1[1] + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateHashes(a1, a1[1] + 16 * v16);
  return a1[1] + 16 * v16 + 8;
}

double re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateHashes(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = v3 ^ *(result + 40);
  v5 = 0xBF58476D1CE4E5B9 * ((*(a2 + 8) | (*(a2 + 11) << 24) | (*(a2 + 10) << 16)) ^ (*(a2 + 11) >> 6));
  v6 = *(result + 48) ^ v3 ^ ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)));
  *(result + 40) = v4;
  *(result + 48) = v6;
  return result;
}

double re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::doResize(uint64_t a1, uint64_t a2)
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
        re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
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
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v21);
}

void *re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::copy(int8x16_t **a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(a1);
  v15[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v16 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v15[0] + 8) + 16 * v11;
        v13 = *v12;
        v14 = *(v12 + 8);
        re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(a1, &v13, &v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

void *re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(int8x16_t **a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(a1);
  v15[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v16 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v15[0] + 8) + 16 * v11;
        v13 = *v12;
        v14 = *(v12 + 8);
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(a1, &v13, &v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

unint64_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(uint64_t *a1, void *a2, _DWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = a1[1] + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(a1, v17);
  return a1[1] + 16 * v16 + 8;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::resize(a1, 1);
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
  v16 = v13 + 16 * v11;
  v17 = a1[1] + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(a1, v17);
  return a1[1] + 16 * v16 + 8;
}

double re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::doResize(a1, v3);
}

double re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::doResize(uint64_t a1, uint64_t a2)
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
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
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
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v21);
}

int8x16_t **re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::mapValues<void re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(re::WeakStringID,re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &,re::DynamicArray<re::AssetHandle> &)::{lambda(re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &)#1}>(int8x16_t **result, unsigned int *a2, double a3, __n128 a4)
{
  v15[0] = result;
  v4 = result[2];
  if (v4 >= 0x10)
  {
    v6 = result;
    v7 = 0;
    v8 = *result;
    v9 = v4 >> 4;
    while (1)
    {
      v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v10 ^ 0xFFFFLL;
      if (v10 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        return result;
      }
    }

    v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
    v12 = v11 - v7;
    v16 = v11 - v7;
    if (v11 + 1 != v7)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(v6, v6[1][v12].i64);
        i64 = v6[1][v16].i64;
        v14 = *(i64 + 8);
        if (v14 >= *a2)
        {
          *(i64 + 8) = v14 - 1;
        }

        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(v6, i64);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v12 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

BOOL re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
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
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(a1, *(a1 + 8) + 16 * v3);
    v10 = *(a1 + 16);
    *(*(a1 + 8) + 16 * v4) = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    if (v10 >= 0x11 && v12.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*(a2 + 8) ^ (*(a2 + 8) >> 30));
  *(result + 48) ^= v3 ^ ((v3 << 6) + (v3 >> 2) + ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) - 0x61C8864680B583E9);
  return result;
}

void *re::allocInfo_AudioSceneService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_348))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF4A0, "AudioSceneService");
    __cxa_guard_release(&_MergedGlobals_348);
  }

  return &unk_1EE1AF4A0;
}

void re::initInfo_AudioSceneService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x75B63B8F740DDEBELL;
  v8[1] = "AudioSceneService";
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
  *(this + 8) = &re::initInfo_AudioSceneService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::ecs2::allocInfo_AudioGeneratorComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_349, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_349))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF558, "AudioGeneratorComponent");
    __cxa_guard_release(&_MergedGlobals_349);
  }

  return &unk_1EE1AF558;
}

void re::ecs2::initInfo_AudioGeneratorComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x9619D97E206E8B80;
  v24[1] = "AudioGeneratorComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1AF538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF538))
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
    qword_1EE1AF548 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::introspect_AudioSourceSyncState(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "syncState";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2800000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AF550 = v22;
    __cxa_guard_release(&qword_1EE1AF538);
  }

  *(this + 2) = 0x4A000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AF548;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioGeneratorComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioGeneratorComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioGeneratorComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioGeneratorComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223AudioGeneratorComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void *re::ecs2::allocInfo_AudioGeneratorSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF540))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF5E8, "AudioGeneratorSystem");
    __cxa_guard_release(&qword_1EE1AF540);
  }

  return &unk_1EE1AF5E8;
}

void re::ecs2::initInfo_AudioGeneratorSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x7ACD467487E77098;
  v8[1] = "AudioGeneratorSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xF000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioGeneratorSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioGeneratorSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioGeneratorSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioGeneratorSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioGeneratorSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioGeneratorSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioGeneratorSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::AudioGeneratorSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF78B8;
  result[28] = 0;
  result[29] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::AudioGeneratorSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF78B8;
  result[28] = 0;
  result[29] = 0;
  return result;
}

re::ecs2::AudioGeneratorComponent *re::ecs2::AudioGeneratorComponent::AudioGeneratorComponent(re::ecs2::AudioGeneratorComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF7860;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 88) = 9;
  *(v2 + 96) = 1065353216;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 124) = 1065353216;
  *(v2 + 132) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 136) = _D0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 1065353216;
  *(v2 + 168) = 0;
  *(v2 + 208) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 216) = 0u;
  v8 = (v2 + 216);
  v9 = re::DynamicString::setCapacity(v8, 0);
  *(this + 62) = 1;
  *(this + 252) = 0x3E051EB800000000;
  *(this + 65) = 1106247680;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  re::DynamicString::setCapacity(this + 35, 0);
  *(this + 156) = 0;
  v10 = re::AudioSourceState::AudioSourceState((this + 320));
  *(this + 72) = xmmword_1E3094140;
  *(this + 292) = 0;
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], 8, 4);
  *v12 = 0;
  *(this + 4) = v12;
  return this;
}

void re::ecs2::AudioGeneratorComponent::~AudioGeneratorComponent(re::ecs2::AudioGeneratorComponent *this)
{
  *this = &unk_1F5CF7860;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v2);
  }

  re::AudioSourceState::~AudioSourceState((this + 320));
  re::DynamicString::deinit((this + 280));
  re::DynamicString::deinit((this + 216));
  if (*(this + 168) == 1)
  {
    re::DynamicString::deinit((this + 176));
  }

  re::AssetHandle::~AssetHandle((this + 64));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioGeneratorComponent::~AudioGeneratorComponent(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::AudioGeneratorSystem::willAddSystemToECSService(re::ecs2::AudioGeneratorSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v3);
  *(this + 29) = result;
  return result;
}

uint64_t re::ecs2::AudioGeneratorSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

void *re::ecs2::AudioGeneratorSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  if (result[28])
  {
    v4 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v36);
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = &v6[v5];
      v33 = vdupq_n_s64(1uLL);
      do
      {
        v8 = *v6;
        v9 = (*(**(v4 + 224) + 16))(*(v4 + 224), *v6);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v9);
        if (isStatisticCollectionEnabled)
        {
          v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
          v13 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v14 = v13 ? *(v13 + 384) : 0;
          v15 = *(v12 + 152);
          if (v15)
          {
            v16 = v15[1136].u64[0];
            if (v16 >= v14)
            {
              v16 = v14;
            }

            v15[1136].i64[0] = v16;
            v17 = v15[1136].u64[1];
            if (v17 <= v14)
            {
              v17 = v14;
            }

            v15[1136].i64[1] = v17;
            v18.i64[1] = v33.i64[1];
            v18.i64[0] = v14;
            v15[1137] = vaddq_s64(v15[1137], v18);
            *(v12 + 184) = 0;
          }
        }

        v19 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v20 = v19 ? *(v19 + 384) : 0;
        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v35, 3061, v4, v20, 0, 0);
        v21 = *(*(v8 + 104) + 288);
        v22 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v22)
        {
          v25 = *(v22 + 384);
          if (v25)
          {
            v26 = v21 >> 1;
            v27 = *(v22 + 400);
            v28 = 8 * v25;
            do
            {
              v29 = *v27++;
              re::TransformService::worldMatrix(*(v4 + 232), *(v29 + 16), 0, v34);
              v30 = v34[1];
              v31 = v34[2];
              v32 = v34[3];
              *(v29 + 672) = v34[0];
              *(v29 + 688) = v30;
              *(v29 + 704) = v31;
              *(v29 + 720) = v32;
              *(v29 + 800) = v26;
              (*(*v10 + 304))(v10, v29 + 320);
              v28 -= 8;
            }

            while (v28);
          }
        }

        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v35, v23, v24);
        ++v6;
      }

      while (v6 != v7);
    }

    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v36);
  }

  return result;
}

void re::ecs2::AudioGeneratorSystem::~AudioGeneratorSystem(re::ecs2::AudioGeneratorSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223AudioGeneratorComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::PinComponent::pinByName@<X0>(uint64_t *__return_ptr a1@<X8>, re::ecs2::PinComponent *this@<X0>, void *a3@<X1>)
{
  v30 = *MEMORY[0x1E69E9840];
  result = re::ecs2::PinComponent::indexOfPin(&v18, this, a3);
  if (v18 == 1)
  {
    v6 = v19;
    v7 = *(this + 6);
    if (v7 <= v19)
    {
      v20 = 0;
      memset(v29, 0, sizeof(v29));
      v14 = MEMORY[0x1E69E9C10];
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v24 = 797;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = v7;
      _os_log_send_and_compose_impl(v16, &v20, v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v17, v18);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(this + 8) + 240 * v19;
    *a1 = 1;
    a1[2] = &unk_1F5CF49C0;
    re::StringID::StringID((a1 + 3), (v8 + 8));
    v9 = *(v8 + 32);
    v10 = *(v8 + 48);
    v11 = *(v8 + 80);
    *(a1 + 5) = *(v8 + 64);
    *(a1 + 6) = v11;
    *(a1 + 3) = v9;
    *(a1 + 4) = v10;
    re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray((a1 + 14), (v8 + 96));
    v12 = *(v8 + 160);
    *(a1 + 10) = *(v8 + 144);
    *(a1 + 11) = v12;
    v13 = *(v8 + 176);
    *(a1 + 192) = v13;
    if (v13 == 1)
    {
      re::StringID::StringID((a1 + 25), (v8 + 184));
    }

    return re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray((a1 + 27), (v8 + 200));
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

BOOL re::ecs2::PinComponent::indexOfPin(_BOOL8 this, const re::StringID *a2, void *a3)
{
  v4 = this;
  if ((*a3 > 1uLL || (v5 = a3[1]) == 0 || *v5) && (v6 = *(a2 + 6)) != 0)
  {
    v7 = 0;
    v8 = (*(a2 + 8) + 8);
    while (1)
    {
      this = re::StringID::operator==(v8, a3);
      if (this)
      {
        break;
      }

      ++v7;
      v8 += 30;
      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

    *v4 = 1;
    *(v4 + 8) = v7;
  }

  else
  {
LABEL_8:
    *v4 = 0;
  }

  return this;
}

uint64_t re::ecs2::PinComponent::removePin(const re::ecs2::Entity **this, const re::StringID *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  result = re::ecs2::PinComponent::indexOfPin(&v34, this, a2);
  if (v34 != 1)
  {
    return result;
  }

  v4 = v35;
  v5 = this[6];
  if (v5 <= v35)
  {
    v36 = 0;
    v49 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v40 = 789;
    v41 = 2048;
    v42 = v4;
    v43 = 2048;
    v44 = v5;
    _os_log_send_and_compose_impl(v26, &v36, &v45, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v36 = 0;
    v49 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v40 = 789;
    v41 = 2048;
    v42 = v4;
    v43 = 2048;
    v44 = v5;
    _os_log_send_and_compose_impl(v29, &v36, &v45, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v36 = 0;
    v49 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "removeAt";
    v39 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v40 = 931;
    v41 = 2048;
    v42 = v4;
    v43 = 2048;
    v44 = v5;
    _os_log_send_and_compose_impl(v32, &v36, &v45, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
  }

  v6 = this[8] + 240 * v35;
  v7 = *(v6 + 27);
  if (v7)
  {
    v8 = *(v6 + 29);
    do
    {
      WeakRetained = objc_loadWeakRetained(v8);
      if (WeakRetained)
      {
        v10 = WeakRetained;

        v11 = re::ecs2::EntityComponentCollection::get((v10 + 40), re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::AttachedTransformComponent::detach(v11);
        re::ecs2::Component::markDirty(v11);
      }

      v8 += 3;
      --v7;
    }

    while (v7);
    v5 = this[6];
  }

  if (v5 <= v4)
  {
    goto LABEL_26;
  }

  re::DynamicArray<re::ecs2::EntityHandle>::clear(this[8] + 240 * v4 + 200);
  v5 = this[6];
  if (v5 <= v4)
  {
    goto LABEL_30;
  }

  if (v5 - 1 > v4)
  {
    v12 = this[8];
    v13 = (v12 + 240 * v5);
    v14 = (v12 + 240 * v4);
    re::StringID::operator=(v14 + 1, v13 - 29);
    v15 = *(v13 - 13);
    v16 = *(v13 - 12);
    v17 = *(v13 - 10);
    *(v14 + 4) = *(v13 - 11);
    *(v14 + 5) = v17;
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    re::DynamicArray<re::ecs2::PinAlignment>::operator=((v14 + 12), v13 - 18);
    v18 = *(v13 - 5);
    *(v14 + 9) = *(v13 - 6);
    *(v14 + 10) = v18;
    re::Optional<re::StringID>::operator=(v14 + 176, (v13 - 8));
    re::DynamicArray<re::ecs2::EntityHandle>::operator=((v14 + 25), v13 - 5);
    v5 = this[6];
  }

  result = (**(this[8] + 30 * v5 - 30))();
  this[6] = (this[6] - 1);
  ++*(this + 14);
  v19 = this[2];
  if (v19)
  {
    v20 = v19;
    do
    {
      v21 = v20;
      v20 = *(v20 + 4);
    }

    while (v20);
    v22 = *(v21 + 3);
    if (v22)
    {
      result = *(v22 + 56);
      if (result)
      {
        v23 = (*(*result + 32))(result);
        result = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v23);
        if (result)
        {
          result = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(result, v19);
          if (result)
          {
            *(result + 240) = 1;
          }
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::PinComponent::removeAllPins(re::ecs2::PinComponent *this)
{
  if (*(this + 6))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 8) + 240 * v2;
      v4 = *(v3 + 216);
      if (v4)
      {
        v5 = *(v3 + 232);
        do
        {
          WeakRetained = objc_loadWeakRetained(v5);
          if (WeakRetained)
          {
            v7 = WeakRetained;

            v8 = re::ecs2::EntityComponentCollection::get((v7 + 40), re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            re::ecs2::AttachedTransformComponent::detach(v8);
            re::ecs2::Component::markDirty(v8);
          }

          v5 += 3;
          --v4;
        }

        while (v4);
      }

      re::DynamicArray<re::ecs2::EntityHandle>::clear(v3 + 200);
      ++v2;
    }

    while (v2 < *(this + 6));
  }

  result = re::DynamicArray<re::ecs2::Pin>::clear(this + 4);
  v10 = *(this + 2);
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = v11;
      v11 = *(v11 + 4);
    }

    while (v11);
    v13 = *(v12 + 3);
    if (v13)
    {
      result = *(v13 + 56);
      if (result)
      {
        v14 = (*(*result + 32))(result);
        result = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v14);
        if (result)
        {
          result = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(result, v10);
          if (result)
          {
            *(result + 240) = 1;
          }
        }
      }
    }
  }

  return result;
}

void (***re::DynamicArray<re::ecs2::Pin>::clear(void (***result)(void)))(void)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = result[4];
    v4 = 240 * v2;
    result = v3;
    v5 = v1[4];
    do
    {
      v6 = *v5;
      v5 += 30;
      (*v6)(result);
      v3 += 30;
      result = v5;
      v4 -= 240;
    }

    while (v4);
  }

  ++*(v1 + 6);
  return result;
}

void re::ecs2::PinComponent::attachEntity(re::ecs2::PinComponent *this, re::ecs2::Entity *a2, const re::StringID *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  re::ecs2::PinComponent::indexOfPin(&v12, this, a3);
  if (v12 == 1)
  {
    v5 = v13;
    v6 = *(this + 6);
    if (v6 <= v13)
    {
      v14 = 0;
      memset(v23, 0, sizeof(v23));
      v8 = MEMORY[0x1E69E9C10];
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v18 = 789;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v6;
      _os_log_send_and_compose_impl(v10, &v14, v23, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v11, v12);
      _os_crash_msg();
      __break(1u);
    }

    v7 = (*(this + 8) + 240 * v13);

    re::ecs2::Pin::attachEntity(v7, a2);
  }
}

uint64_t re::ecs2::PinComponent::detachEntity(re::ecs2::PinComponent *this, re::ecs2::Entity *a2, const re::StringID *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  result = re::ecs2::PinComponent::indexOfPin(&v13, this, a3);
  if (v13 == 1)
  {
    v6 = v14;
    v7 = *(this + 6);
    if (v7 <= v14)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v9 = MEMORY[0x1E69E9C10];
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v10)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v19 = 789;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      _os_log_send_and_compose_impl(v11, &v15, v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v12, v13);
      _os_crash_msg();
      __break(1u);
    }

    re::ecs2::Pin::detachEntity((*(this + 8) + 240 * v14), a2);
    v8 = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    re::ecs2::AttachedTransformComponent::detach(v8);

    return re::ecs2::Component::markDirty(v8);
  }

  return result;
}

BOOL re::ecs2::PinComponentStateImpl::processDirtyComponents(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v23, 3047, a1, *(a5 + 40), 0, 0);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v20, a5, 0);
  v10 = v20;
  v11 = v21;
  v12 = v21;
  v20 = a4;
  v21 = v10;
  v22 = v11;
  if (v10 != a5 || v12 != 0xFFFFFFFFLL)
  {
    do
    {
      if (*(*(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20) + 16) + 304))
      {
        v14 = v20;
        v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v14, v15, *(a3 + 48));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  v18 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v23, v8, v9);
  return v18;
}

void re::ecs2::PinComponentStateImpl::simToECS(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v103, 3047, a1, *(a6 + 40), 0, 0);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v96, a6, 0);
  v100 = a5;
  v101 = v96;
  v102 = DWORD2(v96);
  v72 = a6;
  if (v96 != a6 || DWORD2(v96) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v11 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v100);
      v12 = v11[2];
      v13 = v12[31];
      v14 = v12[24];
      v15 = re::ecs2::EntityComponentCollection::get((v12 + 6), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v73 = v14;
      v74 = v13;
      v16 = !v13 || v15 == 0;
      v17 = v16 || v14 == 0;
      if (v17 || (v18 = *(v14 + 40)) == 0)
      {
        v76 = 0;
      }

      else
      {
        v19 = atomic_load((v18 + 896));
        v76 = v19 == 2;
      }

      v20 = v11[6];
      if (v20)
      {
        break;
      }

LABEL_51:
      v69 = v100;
      v70 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v101);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a4 + 16), v69, v70, *(a4 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v101);
      if (v101 == v72 && v102 == 0xFFFF && HIWORD(v102) == 0xFFFF)
      {
        goto LABEL_54;
      }
    }

    v21 = 0;
    v75 = v11;
    while (1)
    {
      v22 = v11[8] + 240 * v21;
      if (*(v22 + 176) != 1)
      {
        goto LABEL_21;
      }

      if (v76)
      {
        break;
      }

LABEL_50:
      if (++v21 >= v20)
      {
        goto LABEL_51;
      }
    }

    v23 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v73 + 32));
    re::ecs2::PinSkeletalPoseHelper::pinByName(v74, v23, (v22 + 184), &v96);
    if (v96 == 1)
    {
      (*v97)();
    }

LABEL_21:
    v24 = *(v22 + 232);
    v25 = *(v22 + 216);
    v95 = 0;
    v92[1] = 0;
    v93 = 0;
    v91 = 0;
    v92[0] = 0;
    v94 = 0;
    if (v25)
    {
      for (i = 0; i < v25; v91 = i)
      {
        WeakRetained = objc_loadWeakRetained((v24 + 24 * i));
        v28 = WeakRetained;
        if (WeakRetained)
        {
          v29 = WeakRetained - 8;
        }

        else
        {
          v29 = 0;
        }

        if (WeakRetained)
        {
        }

        v30 = re::ecs2::EntityComponentCollection::get((v29 + 48), re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v30)
        {
          v31 = v30;
          v32 = *(v29 + 27);
          if (v28 && (v28[296] & 1) != 0)
          {
            re::ecs2::AttachedTransformComponent::targetPinOffset(&v86, v30);
            re::ecs2::AttachedTransformComponent::sourcePinOffset(&v81, v31);
            v33 = v87;
            v34 = v88;
            v35 = v33 + v33;
            v36 = v34 + v34;
            v37 = v89;
            v38 = v37 + v37;
            v39 = v33 * (v33 + v33);
            v40 = v34 * (v34 + v34);
            v41 = v37 * (v37 + v37);
            v42 = v35 * v88;
            v43 = v35 * v89;
            v44 = v36 * v89;
            v45 = v36 * v90;
            v46 = v38 * v90;
            v47.i32[3] = 0;
            v47.f32[0] = 1.0 - (v40 + v41);
            v47.f32[1] = (v35 * v88) + v46;
            v47.f32[2] = (v35 * v89) - v45;
            v48 = v35 * v90;
            v49 = 1.0 - (v39 + v41);
            v50.i32[3] = 0;
            v50.f32[0] = v42 - v46;
            v50.f32[1] = v49;
            v50.f32[2] = v44 + v48;
            v79 = v50;
            v80 = v47;
            v51.i32[3] = 0;
            v51.f32[0] = v43 + v45;
            v51.f32[1] = v44 - v48;
            v51.f32[2] = 1.0 - (v39 + v40);
            v105.columns[0] = v86;
            v105.columns[0].i32[3] = 1.0;
            v77 = v105.columns[0];
            v78 = v51;
            v105.columns[0].i32[0] = v82;
            v52 = v83;
            v51.f32[0] = v52 + v52;
            v53 = v84;
            v54 = v53 + v53;
            v55 = v105.columns[0].f32[0] * (v105.columns[0].f32[0] + v105.columns[0].f32[0]);
            v50.f32[0] = v52 * (v52 + v52);
            v56 = v53 * (v53 + v53);
            v57 = (v105.columns[0].f32[0] + v105.columns[0].f32[0]) * v83;
            v58 = (v105.columns[0].f32[0] + v105.columns[0].f32[0]) * v84;
            v59 = v51.f32[0] * v84;
            v60 = (v105.columns[0].f32[0] + v105.columns[0].f32[0]) * v85;
            v51.f32[0] = v51.f32[0] * v85;
            v105.columns[0].i32[3] = 0;
            v105.columns[0].f32[0] = 1.0 - (v50.f32[0] + v56);
            v105.columns[0].f32[1] = v57 + (v54 * v85);
            v105.columns[0].f32[2] = v58 - v51.f32[0];
            v105.columns[1].i32[3] = 0;
            v105.columns[1].f32[0] = v57 - (v54 * v85);
            v105.columns[1].f32[1] = 1.0 - (v55 + v56);
            v105.columns[1].f32[2] = v59 + v60;
            v61 = v59 - v60;
            v105.columns[2].i32[3] = 0;
            v105.columns[2].f32[0] = v58 + v51.f32[0];
            v105.columns[2].f32[1] = v61;
            v105.columns[2].f32[2] = 1.0 - (v55 + v50.f32[0]);
            v105.columns[3] = v81;
            v105.columns[3].i32[3] = 1.0;
            v106 = __invert_f4(v105);
            v62 = 0;
            v104 = v106;
            do
            {
              *(&v96 + v62 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, COERCE_FLOAT(*&v104.columns[v62])), v79, *v104.columns[v62].f32, 1), v78, v104.columns[v62], 2), v77, v104.columns[v62], 3);
              ++v62;
            }

            while (v62 != 4);
            v63 = v96;
            v64 = v97;
            v65 = v98;
            v66 = v99;
            if ((*(v31 + 256) & 1) == 0)
            {
              *(v31 + 256) = 1;
            }

            *(v31 + 272) = v63;
            *(v31 + 288) = v64;
            *(v31 + 304) = v65;
            *(v31 + 320) = v66;
          }

          else if (*(v30 + 256) == 1)
          {
            *(v30 + 256) = 0;
          }

          re::ecs2::Component::markDirty(v31);
          re::ecs2::NetworkComponent::markDirty(v32, v31);
        }

        else
        {
          re::DynamicArray<unsigned long>::add(v92, &v91);
        }

        i = v91 + 1;
      }

      v11 = v75;
      if (v93)
      {
        v67 = v95;
        v68 = 8 * v93;
        do
        {
          if (*(v22 + 216) > *v67)
          {
            re::DynamicArray<re::ecs2::EntityHandle>::removeAt(v22 + 200, *v67);
          }

          ++v67;
          v68 -= 8;
        }

        while (v68);
      }
    }

    if (v92[0] && v95)
    {
      (*(*v92[0] + 40))();
    }

    v20 = v11[6];
    goto LABEL_50;
  }

LABEL_54:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v103, v8, v9);
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::Pin>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1AF690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF690))
  {
    re::IntrospectionDynamicArray<re::ecs2::Pin>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1AF690);
  }

  if ((_MergedGlobals_350 & 1) == 0)
  {
    v6 = re::ecs2::introspect_Pin(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_350 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_350 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AF6A8, 0);
      qword_1EE1AF6B8 = 0x2800000003;
      dword_1EE1AF6C0 = v8;
      word_1EE1AF6C4 = 0;
      *&xmmword_1EE1AF6C8 = 0;
      *(&xmmword_1EE1AF6C8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AF6D8 = v7;
      qword_1EE1AF6E0 = 0;
      qword_1EE1AF6A8 = &unk_1F5CF7A68;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1AF6A8);
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
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1AF6C8 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_PinComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF688))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF6E8, "PinComponent");
    __cxa_guard_release(&qword_1EE1AF688);
  }

  return &unk_1EE1AF6E8;
}

void re::ecs2::initInfo_PinComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x3AE3A3F729C1AE10;
  v23[1] = "PinComponent";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1AF680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF680))
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
    qword_1EE1AF698 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::Pin>>::get(v15, v16, v17, v18, v19, v20);
    v21 = (*(*v15 + 32))(v15, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_pins";
    *(v21 + 16) = &qword_1EE1AF6A8;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000001;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AF6A0 = v21;
    __cxa_guard_release(&qword_1EE1AF680);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AF698;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PinComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PinComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PinComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PinComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs212PinComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v22 = v24;
}

void re::internal::defaultConstruct<re::ecs2::PinComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF7978;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
}

void *re::internal::defaultDestruct<re::ecs2::PinComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::ecs2::Pin>::deinit((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::PinComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF7978;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
}

void *re::internal::defaultDestructV2<re::ecs2::PinComponent>(void *a1)
{
  re::DynamicArray<re::ecs2::Pin>::deinit((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PinComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PinComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void re::ecs2::PinComponent::~PinComponent(re::ecs2::PinComponent *this)
{
  re::DynamicArray<re::ecs2::Pin>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DynamicArray<re::ecs2::Pin>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::ecs2::PinAlignment>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::PinAlignment>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::PinAlignment>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::PinAlignment>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::ecs2::EntityHandle>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::EntityHandle>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::EntityHandle>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::EntityHandle>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::Pin>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AF6A8, 0);
  *(&qword_1EE1AF6B8 + 6) = 0;
  qword_1EE1AF6B8 = 0;
  *&xmmword_1EE1AF6C8 = 0;
  *(&xmmword_1EE1AF6C8 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AF6A8 = &unk_1F5CADA48;
  qword_1EE1AF6E0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AF6D8);
  qword_1EE1AF6A8 = &unk_1F5CF7A68;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::Pin>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::Pin>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::Pin>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::Pin>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::Pin>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::Pin>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::Pin>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::Pin>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::Pin>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::Pin>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = &unk_1F5CF49C0;
  v11[1] = 0;
  v11[2] = &str_67;
  v12 = 0u;
  v13 = 0;
  v14 = 0x3F80000000000000;
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v15 = vnegq_f32(v8);
  v16 = v8;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 0;
  v22 = 0u;
  v23 = 0;
  v24 = 0x3F80000000000000;
  v25 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  re::DynamicArray<re::ecs2::Pin>::add(this, v11);
  re::ecs2::Pin::~Pin(v11);
  v9 = (*(this + 4) + 240 * *(this + 2) - 240);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::Pin>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 240 * a3;
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

  return *(a2 + 32) + 240 * a3;
}

uint64_t re::DynamicArray<re::ecs2::Pin>::deinit(uint64_t a1)
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
        v5 = 240 * v4;
        v6 = *(a1 + 32);
        v7 = v6;
        do
        {
          v8 = *v7;
          v7 += 30;
          (*v8)(v3);
          v6 += 30;
          v3 = v7;
          v5 -= 240;
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

void *re::DynamicArray<re::ecs2::Pin>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v10 = 240 * a2;
    v11 = a2;
    do
    {
      result = (**(v3[4] + v10))(v3[4] + v10);
      ++v11;
      v10 += 240;
    }

    while (v11 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::Pin>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 240 * v4 + 232;
      v7.i64[0] = 0x7F0000007FLL;
      v7.i64[1] = 0x7F0000007FLL;
      v8 = vnegq_f32(v7);
      do
      {
        v9 = (v3[4] + v6);
        *(v9 - 29) = &unk_1F5CF49C0;
        *(v9 - 28) = 0;
        *(v9 - 27) = &str_67;
        *(v9 - 25) = 0uLL;
        *(v9 - 23) = 0;
        *(v9 - 22) = 0x3F80000000000000;
        *(v9 - 21) = v8;
        *(v9 - 19) = v7;
        *(v9 - 13) = 0;
        *(v9 - 16) = 0;
        *(v9 - 15) = 0;
        *(v9 - 17) = 0;
        *(v9 - 28) = 0;
        *(v9 - 11) = 0uLL;
        *(v9 - 9) = 0;
        *(v9 - 8) = 0x3F80000000000000;
        *(v9 - 56) = 0;
        *v9 = 0;
        *(v9 - 3) = 0;
        *(v9 - 2) = 0;
        *(v9 - 4) = 0;
        v6 += 240;
        *(v9 - 2) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::Pin>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::Pin>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::Pin>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::Pin>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::ecs2::Pin>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 240 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 240;
        v11 -= 240;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 240 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 240 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs212PinComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::DeformationGPUResources *re::ecs2::DeformationGPUResources::DeformationGPUResources(re::ecs2::DeformationGPUResources *this, re::RenderManager *a2)
{
  *this = 0xFFFFFFFFFFFFFFFLL;
  *(this + 8) = 0;
  v4 = (this + 8);
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 76) = 0x1FFFFFFFFLL;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  bzero(this + 128, 0x143CuLL);
  *(this + 332) = 0u;
  v5 = -512;
  do
  {
    v6 = this + v5;
    *(v6 + 730) = 0xFFFFFFFFFFFFFFFLL;
    *(v6 + 5848) = 0uLL;
    *(v6 + 1466) = 1;
    *(v6 + 734) = 0;
    *(v6 + 736) = 0;
    *(v6 + 735) = 0;
    *(v6 + 1474) = 0;
    v5 += 64;
  }

  while (v5);
  *(this + 732) = 0;
  *(this + 365) = 0u;
  *(this + 1466) = 1;
  *(this + 734) = 0;
  *(this + 1474) = 0;
  *(this + 5880) = 0u;
  *(this + 369) = 0u;
  *(this + 1480) = 1;
  *(this + 741) = 0;
  *(this + 371) = 0u;
  *(this + 1488) = 0;
  re::PerFrameAllocatorGPUManager::init(v4, a2);
  re::DeformationFencePool::init((this + 5320), (a2 + 208));
  return this;
}

void re::ecs2::DeformationGPUResources::~DeformationGPUResources(os_unfair_lock_s **this)
{
  v2 = (this + 1);
  re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual((this + 1), *this);
  re::PerFrameAllocatorGPUManager::deinit(v2);
  re::DeformationFencePool::deinit((this + 665));
  re::DeformationFencePool::~DeformationFencePool((this + 665));
  re::DynamicArray<unsigned long>::deinit((this + 660));
  v3 = 640;
  do
  {
    this[v3 + 13] = 0;
    v3 -= 5;
  }

  while (v3 * 8);
  re::DynamicArray<re::RigComponentConstraint>::deinit((this + 12));
  re::DataArray<re::PerFrameAllocatorGPU>::deinit((this + 3));
  re::DynamicArray<unsigned long>::deinit((this + 3));
}

void *re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(void *result, uint64_t a2, uint64_t a3, re::DeformationFencePool *a4, uint64_t a5)
{
  if (((*result ^ a5) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v14[5] = v5;
    v14[6] = v6;
    v9 = result;
    *result = a5;
    v10 = (result + 1);
    re::DeformationFencePool::setCurrentFrame(a4, *(*(a2 + 144) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(a2 + 144) + 16) << 60), a5);
    re::mtl::CommandQueue::makeCommandBuffer(v14, (*(a2 + 112) + 280));
    if (v10 != v14)
    {
      v11 = v14[0];
      v14[0] = 0;
      v12 = *v10;
      *v10 = v11;
    }

    {
      {
        re::ns::String::String(&re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(re::RenderManager &,re::PerFrameAllocatorGPUManager &,re::DeformationFencePool &,re::FrameCount)::$_0::operator() const(void)::s_ns_string, "Deformation Command Buffer");
      }
    }

    v13 = re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(re::RenderManager &,re::PerFrameAllocatorGPUManager &,re::DeformationFencePool &,re::FrameCount)::$_0::operator() const(void)::s_ns_string;
    [v9[1] setLabel:v13];

    result = re::DeformationFencePool::allocateFence(a4);
    v9[2] = result;
  }

  return result;
}

void re::ecs2::PerFrameDeformationCommandData::finalizeForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*a1 ^ a4) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    re::DrawingManager::trackCommandBufferForFrameCompletion(*(a2 + 112), (a1 + 8), a4);
    [*(a1 + 8) enqueue];
    [*(a1 + 8) commit];
  }

  v5 = *(a1 + 8);
  *a1 = 0xFFFFFFFFFFFFFFFLL;
  *(a1 + 8) = 0;

  *(a1 + 16) = 0;
}

uint64_t re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(re::ecs2::MeshDeformationComponent *this, const re::ecs2::MeshComponent *a2)
{
  if (a2 && (v3 = *(a2 + 5)) != 0 && (v4 = atomic_load((v3 + 896)), v4 != 2))
  {
    re::AssetHandle::loadAsync((a2 + 32));
    result = 0;
  }

  else
  {
    result = 1;
  }

  v6 = *(this + 5);
  if (v6)
  {
    v7 = atomic_load((v6 + 896));
    if (v7 != 2)
    {
      re::AssetHandle::loadAsync((this + 32));
      return 0;
    }
  }

  return result;
}

unint64_t re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData::calculateAllocationHash(re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 15);
  v5 = v4 + 48 * v1;
  do
  {
    v6 = *(v4 + 8);
    if (v6)
    {
      v7 = 0;
      v8 = 72 * v6;
      v9 = (*(v4 + 16) + 8);
      do
      {
        v10 = *v9;
        v9 += 9;
        v7 ^= (v7 << 6) - 0x61C8864680B583E9 + (v7 >> 2) + v10;
        v8 -= 72;
      }

      while (v8);
    }

    else
    {
      v7 = 0;
    }

    result ^= (result << 6) - 0x61C8864680B583E9 + (result >> 2) + v7;
    v4 += 48;
  }

  while (v4 != v5);
  return result;
}

uint64_t re::ecs2::MeshDeformationComponent::update(id *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v145 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v7 = v6[24];
  if (v7)
  {
    re::AssetHandle::AssetHandle(v119, (v7 + 32));
    v11 = v120;
    if (v120)
    {
      v12 = *(v120 + 792);
    }

    else
    {
      v12 = 0;
    }

    v15 = *(v120 + 276);
    v16 = re::AssetHandle::loadedAsset<re::MeshAsset>(v119);
    if (!v16)
    {
      re::ecs2::MeshDeformationComponent::clearRuntimeMeshDeformationData(a1);
      if (v120)
      {
        v25 = atomic_load((v120 + 896));
        if (v25 == 3)
        {
          goto LABEL_84;
        }
      }

      v26 = v119;
LABEL_83:
      re::AssetHandle::loadAsync(v26);
LABEL_84:
      v14 = 0;
LABEL_88:
      re::AssetHandle::~AssetHandle(v119);
      return v14;
    }

    v17 = v16;
    v114 = a1;
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
    v20 = (((v12 ^ (v18 >> 31) ^ v18) << 6) + ((v12 ^ (v18 >> 31) ^ v18) >> 2) + (v19 ^ (v19 >> 31)) - 0x61C8864680B583E9) ^ v12 ^ (v18 >> 31) ^ v18;
    v21 = *(v16 + 584);
    v22 = *(v16 + 568);
    v23 = re::ecs2::EntityComponentCollection::get((v6 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v23)
    {
      v113 = (v23 + 216);
      v117 = *(v23 + 208);
      v22 = *(v23 + 192);
      v24 = 0xBF58476D1CE4E5B9 * (*(v23 + 700) ^ (*(v23 + 700) >> 30));
      v20 ^= (v20 << 6) - 0x61C8864680B583E9 + (v20 >> 2) + ((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) ^ ((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) >> 31));
    }

    else
    {
      v117 = v21;
      v113 = (v17 + 640);
    }

    v26 = (a1 + 4);
    if (a1[5] && (v27 = re::MeshDeformationAsset::assetType(v23), (v28 = re::AssetHandle::assetWithType(v26, v27, 1)) != 0))
    {
      v29 = v28;
      v30 = a1[5];
      if (v30)
      {
        v31 = *(v30 + 792);
      }

      else
      {
        v31 = 0;
      }

      v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) >> 27));
      v20 ^= (v20 << 6) - 0x61C8864680B583E9 + (v20 >> 2) + (v31 ^ (v33 >> 31) ^ v33);
      v32 = a1;
      if (a1[7])
      {
        a1[7] = 0;
        re::DynamicArray<re::DeformationStackDefinition>::deinit((a1 + 19));
        re::DynamicArray<re::MeshDeformationIndex>::deinit((a1 + 24));
        re::ecs2::Component::markDirty(a1);
      }
    }

    else
    {
      v32 = a1;
      if (v20 != a1[7])
      {
        a1[7] = v20;
        re::DynamicArray<re::DeformationStackDefinition>::deinit((a1 + 19));
        re::DynamicArray<re::MeshDeformationIndex>::deinit((a1 + 24));
        re::MeshDeformationAsset::init((a1 + 19), v17, 0, 0);
        v20 = a1[7];
      }

      v29 = (a1 + 19);
    }

    v112 = (a1 + 4);
    if (a2)
    {
      v20 ^= (v20 << 6) + (v20 >> 2) - 0xB36702970AA7E04;
      if (v32[8] != v20)
      {
        if (v32 + 9 != v29)
        {
          v34 = *v29;
          if (v32[9])
          {
            v35 = v32 + 9;
            if (v34)
            {
              re::DynamicArray<re::DeformationStackDefinition>::copy(v35, v29);
              ++*(v32 + 24);
            }

            else
            {
              re::DynamicArray<re::DeformationStackDefinition>::clear(v35);
            }
          }

          else if (v34)
          {
            v36 = v29[2];
            v32[9] = v34;
            re::DynamicArray<re::DeformationStackDefinition>::setCapacity(v32 + 9, v36);
            ++*(v32 + 24);
            re::DynamicArray<re::DeformationStackDefinition>::copy(v32 + 9, v29);
          }
        }

        if (v32 + 14 != (v29 + 5))
        {
          v38 = v29[5];
          if (v32[14])
          {
            v39 = v32 + 14;
            if (v38)
            {
              re::DynamicArray<re::MeshDeformationIndex>::copy(v39, (v29 + 5));
              ++*(v32 + 34);
            }

            else
            {
              re::DynamicArray<re::MeshDeformationIndex>::clear(v39);
            }
          }

          else if (v38)
          {
            v40 = v29[7];
            v32[14] = v38;
            re::DynamicArray<re::MeshDeformationIndex>::setCapacity(v32 + 14, v40);
            ++*(v32 + 34);
            re::DynamicArray<re::MeshDeformationIndex>::copy(v32 + 14, (v29 + 5));
          }
        }

        re::MeshDeformationAsset::forceVertexFrameSkinning((v32 + 9));
        v32[8] = v20;
      }

      v29 = (v32 + 9);
    }

    else if (v32[8])
    {
      v32[8] = 0;
      re::DynamicArray<re::DeformationStackDefinition>::deinit((v32 + 9));
      re::DynamicArray<re::MeshDeformationIndex>::deinit((v32 + 14));
    }

    v41 = (v32 + 29);
    re::MeshDeformationRuntimeData::update<re::MeshAsset>((v32 + 29), a4, a5, v29, v17, v113, v20);
    v42 = v32[49];
    if (v42 && *v42 == v32[31])
    {
LABEL_81:
      v81 = v32[5];
      if (!v81 || (v82 = atomic_load(v81 + 224), v82 != 1) && ((v83 = v32[5]) == 0 || (v84 = atomic_load(v83 + 224)) != 0))
      {
        v14 = 1;
        goto LABEL_88;
      }

      goto LABEL_83;
    }

    v116 = v22;
    v43 = *(a3 + 144);
    if (v43)
    {
      v44 = (v43 + 8);
    }

    else
    {
      v44 = 0;
    }

    inited = objc_initWeak(&location, v44);
    v46 = re::globalAllocators(inited);
    v47 = (*(*v46[2] + 32))(v46[2], 128, 8);
    v48 = *(a3 + 32);
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
    *(v47 + 64) = 0u;
    *(v47 + 80) = 0u;
    *(v47 + 96) = 0u;
    *(v47 + 112) = 0u;
    *v47 = 0u;
    *(v47 + 16) = 0u;
    v49 = v32[32];
    *v47 = v32[31];
    *(v47 + 16) = v49;
    if (!v49)
    {
      *(v47 + 64) = 0;
      *(v47 + 88) = 0;
LABEL_64:
      *(v47 + 112) = v49;
      if (!v49)
      {
        goto LABEL_69;
      }

      v64 = 48 * v49;
      *(v47 + 120) = v65;
      if (v65)
      {
        v67 = v65;
        if (v49 != 1)
        {
          bzero(v65, v64 - 48);
          v67 = (v67 + v64 - 48);
        }

        v67[1] = 0u;
        v67[2] = 0u;
        *v67 = 0u;
LABEL_69:
        v68 = *(v32 + 92);
        v129 = v32 + 29;
        v130 = v68 - 1;
        v125 = v32 + 29;
        v126 = v68 - 1;
        v127 = 0;
        v128 = 0;
        v69 = re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v122, &v129);
        v70 = 0;
        v71 = 0;
        while (v70 != v123 || v128 != v124)
        {
          v49 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(&v125);
          v72 = re::MeshDeformationRuntimeData::meshDeformationHandle(v41, v49, WORD2(v49));
          v121 = re::MeshDeformationRuntimeData::deformationStackHandle(v41, v72);
          v73 = v71;
          v74 = *(v47 + 16);
          if (v74 <= v71)
          {
            v131 = 0;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            *buf = 0u;
            v86 = MEMORY[0x1E69E9C10];
            v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v132 = 136315906;
            v133 = "operator[]";
            v134 = 1024;
            if (v87)
            {
              v88 = 3;
            }

            else
            {
              v88 = 2;
            }

            v135 = 468;
            v136 = 2048;
            v137 = v73;
            v138 = 2048;
            v139 = v74;
            _os_log_send_and_compose_impl(v88, &v131, buf, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v110, v111);
            _os_crash_msg();
            __break(1u);
LABEL_94:
            v131 = 0;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            *buf = 0u;
            v89 = MEMORY[0x1E69E9C10];
            v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v132 = 136315906;
            v133 = "operator[]";
            v134 = 1024;
            if (v90)
            {
              v91 = 3;
            }

            else
            {
              v91 = 2;
            }

            v135 = 468;
            v136 = 2048;
            v137 = v73;
            v138 = 2048;
            v139 = v74;
            _os_log_send_and_compose_impl(v91, &v131, buf, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v110, v111);
            _os_crash_msg();
            __break(1u);
LABEL_98:
            v131 = 0;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            *buf = 0u;
            v92 = MEMORY[0x1E69E9C10];
            v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v132 = 136315906;
            v133 = "operator[]";
            v134 = 1024;
            if (v93)
            {
              v94 = 3;
            }

            else
            {
              v94 = 2;
            }

            v135 = 468;
            v136 = 2048;
            v137 = v73;
            v138 = 2048;
            v139 = v74;
            _os_log_send_and_compose_impl(v94, &v131, buf, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v110, v111);
            _os_crash_msg();
            __break(1u);
LABEL_102:
            re::internal::assertLog(6, v77, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v78, v116);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v104, v107);
            __break(1u);
LABEL_103:
            v131 = 0;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            *buf = 0u;
            v95 = MEMORY[0x1E69E9C10];
            v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v132 = 136315906;
            v133 = "operator[]";
            v134 = 1024;
            if (v96)
            {
              v97 = 3;
            }

            else
            {
              v97 = 2;
            }

            v135 = 797;
            v136 = 2048;
            v137 = v74;
            v138 = 2048;
            v139 = v49;
            _os_log_send_and_compose_impl(v97, &v131, buf, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v110, v111);
            _os_crash_msg();
            __break(1u);
LABEL_107:
            v131 = 0;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            *buf = 0u;
            v98 = MEMORY[0x1E69E9C10];
            v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v132 = 136315906;
            v133 = "operator[]";
            v134 = 1024;
            if (v99)
            {
              v100 = 3;
            }

            else
            {
              v100 = 2;
            }

            v135 = 797;
            v136 = 2048;
            v137 = v74;
            v138 = 2048;
            v139 = v49;
            _os_log_send_and_compose_impl(v100, &v131, buf, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v110, v111);
            _os_crash_msg();
            __break(1u);
LABEL_111:
            v131 = 0;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            *buf = 0u;
            v101 = MEMORY[0x1E69E9C10];
            v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v132 = 136315906;
            v133 = "operator[]";
            v134 = 1024;
            if (v102)
            {
              v103 = 3;
            }

            else
            {
              v103 = 2;
            }

            v135 = 468;
            v136 = 2048;
            v137 = v73;
            v138 = 2048;
            v139 = v49;
            _os_log_send_and_compose_impl(v103, &v131, buf, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v110, v111);
            _os_crash_msg();
            __break(1u);
LABEL_115:
            re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v49);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v105, v108);
            __break(1u);
            goto LABEL_116;
          }

          v75 = *(v47 + 24) + 8 * v71;
          *v75 = v49;
          *(v75 + 4) = WORD2(v49);
          v74 = *(v47 + 40);
          if (v74 <= v71)
          {
            goto LABEL_94;
          }

          *(*(v47 + 48) + 8 * v71) = v121;
          v74 = *(v47 + 112);
          if (v74 <= v71)
          {
            goto LABEL_98;
          }

          v74 = *(v47 + 120) + 48 * v71;
          v76 = (*(*a4 + 72))(a4, &v121);
          re::DeformationBufferAllocator::init(v74, v76);
          v78 = v49;
          if (v116 <= v49)
          {
            goto LABEL_102;
          }

          v79 = *(v117 + 8 * v49);
          v74 = WORD1(v79);
          v49 = v48[11];
          if (v49 <= WORD1(v79))
          {
            goto LABEL_103;
          }

          v80 = *(*(v48[13] + 16 * WORD1(v79)) + 144 * v79 + 16);
          v74 = WORD1(v80);
          v49 = v48[3];
          if (v49 <= WORD1(v80))
          {
            goto LABEL_107;
          }

          v49 = *(v47 + 64);
          if (v49 <= v71)
          {
            goto LABEL_111;
          }

          *(*(v47 + 72) + 8 * v71++) = *(v48[5] + 16 * WORD1(v80)) + 864 * v80 + 144;
          v69 = re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v125);
          v70 = v127;
        }

        memset(buf, 0, sizeof(buf));
        *&v141 = 0;
        *(&v141 + 1) = re::globalAllocators(v69)[2];
        *&v142 = 0;
        v32 = v114;
        re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::reset(v114 + 48, &location, v47, buf);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
        objc_destroyWeak(&location);
        location = 0;
        v26 = v112;
        goto LABEL_81;
      }

      goto LABEL_119;
    }

    if (v49 >> 61)
    {
      goto LABEL_115;
    }

    *(v47 + 24) = v52;
    if (v52)
    {
      v54 = v49 - 1;
      if (v49 != 1)
      {
        do
        {
          *v52 = -1;
          *(v52 + 2) = -1;
          v52 = (v52 + 8);
          --v54;
        }

        while (v54);
      }

      *v52 = -1;
      *(v52 + 2) = -1;
      *(v47 + 64) = v49;
      *(v47 + 72) = v55;
      if (v55)
      {
        v57 = v55;
        if (v49 != 1)
        {
          bzero(v55, 8 * v49 - 8);
          v57 += v49 - 1;
        }

        *v57 = 0;
        *(v47 + 88) = v49;
        if (v49 < 0x186186186186187)
        {
          *(v47 + 96) = v59;
          if (!v59)
          {
            goto LABEL_120;
          }

          v61 = v59;
          if (v49 != 1)
          {
            bzero(v59, 168 * v49 - 168);
            v61 = (v61 + 168 * v49 - 168);
          }

          *(v61 + 20) = 0;
          *(v61 + 8) = 0u;
          *(v61 + 9) = 0u;
          *(v61 + 6) = 0u;
          *(v61 + 7) = 0u;
          *(v61 + 4) = 0u;
          *(v61 + 5) = 0u;
          *(v61 + 2) = 0u;
          *(v61 + 3) = 0u;
          *v61 = 0u;
          *(v61 + 1) = 0u;
          goto LABEL_64;
        }

LABEL_118:
        re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 168, v49);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v106, v109);
        __break(1u);
LABEL_119:
        re::internal::assertLog(4, v66, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
LABEL_120:
        re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
      }
    }

    else
    {
LABEL_116:
      re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    re::internal::assertLog(4, v56, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    goto LABEL_118;
  }

  v13 = *re::foundationCoreLogObjects(a1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v37 = v6[39];
    *buf = 134217984;
    *&buf[4] = v37;
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Dependent MeshComponent removed from Entity - %llu with MeshDeformationComponent", buf, 0xCu);
  }

  re::ecs2::MeshDeformationComponent::clearRuntimeMeshDeformationData(a1);
  return 0;
}

void *re::ecs2::MeshDeformationComponent::clearRuntimeMeshDeformationData(id *this)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::reset(this + 48, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  result = re::MeshDeformationRuntimeData::clear((this + 29));
  this[29] = 0;
  this[30] = 0;
  this[55] = 0;
  return result;
}

uint64_t re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(re *a1, uint64_t a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v4 = (*(*a2 + 32))(a2, 24, 8);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v5 = re::globalAllocators(v4)[2];
  v7[0] = &unk_1F5CF7CD0;
  v7[3] = v5;
  v7[4] = v7;
  *(a1 + 55) = (*(*a2 + 16))(a2, v4, v7);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v7);
  return *(a1 + 55);
}

BOOL re::ecs2::MeshDeformationComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
      v13 = *(*(v12 + 16) + 192);
      if (v13 && *(v13 + 40))
      {
        v14 = v19;
        v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v14, v15, a3[5]);
      }

      else
      {
        v16 = v19;
        v17 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v16, v17, a3[4]);
        re::ecs2::MeshDeformationComponent::clearRuntimeMeshDeformationData(v12);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

re *re::ecs2::MeshDeformationComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(*(*(*(a1 + 8) + 224) + 688));
  if (v9)
  {
    v10 = (*(*v9 + 120))(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 8);
  v12 = *(v11 + 240);
  result = re::ServiceLocator::serviceOrNull<re::DeformationService>(*(*(v11 + 224) + 688));
  if (result)
  {
    v14 = *(*(a1 + 8) + 232);
    if (v14)
    {
      v15 = result;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v24, a5, 0);
      v17 = v24;
      v16 = v25;
      v24 = a4;
      v25 = v17;
      v26 = v16;
      if (v17 != a5 || v16 != 0xFFFFFFFFLL)
      {
        do
        {
          v18 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v24);
          if (re::ecs2::MeshDeformationComponent::update(v18, v10, v14, v15, v12))
          {
            v19 = v24;
            v20 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v25);
            re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v19, v20, *(a3 + 48));
          }

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
        }

        while (v25 != a5 || v26 != 0xFFFF || HIWORD(v26) != 0xFFFF);
      }

      return (*(a5 + 40) != 0);
    }

    else
    {
      v23 = *re::foundationCoreLogObjects(result);
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LOWORD(v24) = 0;
        _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "MeshDeformationComponentStateImpl::processPreparingComponents attempted without RenderManager", &v24, 2u);
        return 0;
      }
    }
  }

  return result;
}

void *re::ecs2::MeshDeformationSystem::update(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a2;
  v22[1] = a3;
  v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v21);
  v6 = *(a3 + 200);
  if (v6)
  {
    v7 = 0;
    v8 = *(a3 + 216);
    v9 = 8 * v6;
    do
    {
      v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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
      v14 = v13[888].u64[0];
      if (v14 >= v7)
      {
        v14 = v7;
      }

      v13[888].i64[0] = v14;
      v15 = v13[888].u64[1];
      if (v15 <= v7)
      {
        v15 = v7;
      }

      v13[888].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v7;
      v13[889] = vaddq_s64(v13[889], v16);
      *(v12 + 184) = 0;
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v20, 3039, a1, v7, 0, 0);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 288), v22, 0);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v20, v17, v18);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v21);
}

uint64_t re::ecs2::MeshDeformationSystem::willAddSystemToECSService(re::ecs2::MeshDeformationSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::service<re::AssetService>(v4);
  v6 = re::MeshDeformationAsset::assetType(v5);
  v7 = *(v5 + 226);
  v10 = v6;
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v10);
  result = (*(**v8 + 128))(*v8);
  *(this + 30) = *v8;
  return result;
}

void *re::ecs2::MeshDeformationSystem::willRemoveSystemFromECSService(void *this)
{
  this[28] = 0;
  this[29] = 0;
  this[30] = 0;
  return this;
}

uint64_t re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::removeScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 56), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 64) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 120, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 168, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 56, &v15);
  }

  return result;
}

re::ecs2::PerformDeformationSystemComponentStateImpl *re::ecs2::PerformDeformationSystemComponentStateImpl::PerformDeformationSystemComponentStateImpl(re::ecs2::PerformDeformationSystemComponentStateImpl *this, re::ecs2::PerformDeformationSystem *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF7B40;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v3 = (this + 16);
  inited = objc_initWeak(this + 5, 0);
  *(this + 6) = 0;
  *(this + 10) = re::globalAllocators(inited)[2];
  *(this + 11) = 0;
  *(this + 12) = 0xFFFFFFFFFFFFFFFLL;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v7[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v7[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v7[2] = re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
  v6[0] = v7;
  v6[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(v3, v6);
  return this;
}

uint64_t re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CF7D28;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::DeformationGPUResources>(location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

BOOL re::ecs2::PerformDeformationSystemComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v26, a5, 0);
  v8 = v26;
  v9 = v27;
  v10 = v27;
  v26 = a4;
  v27 = v8;
  v28 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v26);
      v13 = *(v12 + 16);
      *(v12 + 440) = 0;
      v14 = a3 + 4;
      if (*(v13 + 192))
      {
        v15 = *(v13 + 98);
        v14 = a3 + 5;
        if (*(v13 + 98))
        {
          v16 = (re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 16);
          v17 = *(v13 + 104);
          v18 = vld1q_dup_s16(v16);
          v19 = 1;
          while (1)
          {
            v20 = vandq_s8(vceqq_s16(v18, *v17), xmmword_1E306AC00);
            v20.i16[0] = vmaxvq_u16(v20);
            if (v20.i32[0])
            {
              break;
            }

            v19 -= 8;
            ++v17;
            if (!--v15)
            {
              v14 = a3 + 5;
              goto LABEL_14;
            }
          }

          if (v20.u16[0] - v19 >= *(v13 + 96))
          {
            v14 = a3 + 5;
          }

          else
          {
            v14 = a3 + 4;
          }
        }
      }

LABEL_14:
      v21 = v26;
      v22 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v27);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v21, v22, *v14);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v27);
    }

    while (v27 != a5 || v28 != 0xFFFF || HIWORD(v28) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::PerformDeformationSystemComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::Engine::createDrawingManager(*(*(a1 + 8) + 224));
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
      if (re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(v12, *(*(v12 + 2) + 192)))
      {
        v13 = *(v12 + 49);
        v14 = a3 + 4;
        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = a3 + 6;
          }

          else
          {
            v14 = a3 + 4;
          }
        }

        v15 = v20;
        v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v15, v16, *v14);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::PerformDeformationSystemComponentStateImpl::processUpdatingComponents(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = re::ServiceLocator::serviceOrNull<re::DeformationService>(*(*(a1[1] + 224) + 688));
  if (v8)
  {
    v9 = v8;
    v10 = *(a1[1] + 232);
    v11 = (*(*(v10 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v10 + 144) + 16) << 60));
    v12 = re::RenderManager::perFrameAllocator(v10);
    v13 = a1[6];
    v54[0] = 0;
    v54[1] = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v13 + 8, v11);
    v37 = a1;
    re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(a1 + 12, *(a1[1] + 232), v14, (a1[6] + 5320), v11);
    v15 = re::ActiveDeformationData::create(v11, v12);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v38, a5, 0);
    v51 = a4;
    v52 = v38;
    v53 = v39;
    if (v38 != a5 || v39 != 0xFFFFFFFFLL)
    {
      do
      {
        v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v51);
        v17 = *(v16 + 2);
        v18 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((*(v17 + 192) + 32));
        v19 = *(v18 + 584);
        v20 = *(v18 + 568);
        v21 = re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v21)
        {
          v22 = v21;
          re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v21, *(v10 + 32));
          v19 = *(v22 + 26);
          v20 = *(v22 + 24);
        }

        v23 = *(v16 + 49);
        PerFrameMeshDeformationData = re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(v16, v12);
        v38 = v19;
        v39 = v20;
        v25 = v23[2];
        v40 = v23[3];
        v41 = v25;
        v26 = v23[5];
        v42 = v23[6];
        v43 = v26;
        v27 = v23[8];
        v44 = v23[9];
        v45 = v27;
        v28 = v23[11];
        v46 = v23[12];
        v47 = v28;
        v29 = v23[14];
        v48 = v23[15];
        v49 = v29;
        v50 = PerFrameMeshDeformationData;
        (*(*v9 + 88))(v9, &v38, v15);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v52);
      }

      while (v52 != a5 || v53 != 0xFFFF || HIWORD(v53) != 0xFFFF);
    }

    (*(*v9 + 104))(v9, v12, v54, v37 + 13, v37[14], v15);
    v30 = re::RenderFrameBox::get((*(*(v37[1] + 232) + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v30 + 4136), v37[14]);
    return *(a5 + 40) != 0;
  }

  else
  {
    v32 = re::introspect<re::DeformationService>();
    re::StringID::invalid(&v51);
    re::internal::missingServiceErrorMessage(&v38, v32, &v51);
    re::DynamicString::~DynamicString(&v38);
    re::StringID::~StringID(&v51);
    v33 = re::introspect<re::DeformationService>();
    re::StringID::invalid(&v51);
    re::internal::missingServiceErrorMessage(&v38, v33, &v51);
    if (v39)
    {
      v35 = v40;
    }

    else
    {
      v35 = &v39 + 1;
    }

    re::internal::assertLog(5, v34, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v35);
    re::DynamicString::~DynamicString(&v38);
    re::StringID::~StringID(&v51);
    result = _os_crash("assertion failure: (service) %s", v36);
    __break(1u);
  }

  return result;
}

void *re::ecs2::PerformDeformationSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v8);
  if (a1[29])
  {
    v4 = a1[38];
    if (v4)
    {
      v5 = *(*(a1[33] + 232) + 144);
      re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual((v4 + 8), (*(v5 + 32) & 0xFFFFFFFFFFFFFFFLL | (*(v5 + 16) << 60)));
    }

    re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update(a1 + 47, v9, 0);
    re::ecs2::PerFrameDeformationCommandData::finalizeForFrame((a1 + 44), *(a1[33] + 232), v6, *(*(*(a1[33] + 232) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1[33] + 232) + 144) + 16) << 60));
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v8);
}

void re::ecs2::PerformDeformationSystem::willAddSystemToECSService(id *this)
{
  v10[5] = *MEMORY[0x1E69E9840];
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  v2 = *(this[33] + 29);
  if (v2 && *(v2 + 208))
  {
    v3 = *(v2 + 144);
    if (v3)
    {
      v4 = (v3 + 8);
    }

    else
    {
      v4 = 0;
    }

    inited = objc_initWeak(&location, v4);
    v6 = re::globalAllocators(inited);
    v7 = (*(*v6[2] + 32))(v6[2], 5960, 8);
    v8 = re::ecs2::DeformationGPUResources::DeformationGPUResources(v7, *(this[33] + 29));
    memset(v10, 0, 24);
    v10[3] = re::globalAllocators(v8)[2];
    v10[4] = 0;
    re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(this + 37, &location, v7, v10);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v10);
    objc_destroyWeak(&location);
  }
}

double re::ecs2::PerformDeformationSystem::willRemoveSystemFromECSService(re::ecs2::PerformDeformationSystem *this)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 33) + 232);
  if (v2 && *(v2 + 208))
  {
    **(this + 38) = *(*(v2 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v2 + 144) + 16) << 60);
    inited = objc_initWeak(&location, 0);
    memset(v6, 0, 24);
    v6[3] = re::globalAllocators(inited)[2];
    v6[4] = 0;
    re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(this + 37, &location, 0, v6);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v6);
    objc_destroyWeak(&location);
  }

  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void *re::ecs2::allocInfo_MeshDeformationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_351, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_351))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF7A8, "MeshDeformationComponent");
    __cxa_guard_release(&_MergedGlobals_351);
  }

  return &unk_1EE1AF7A8;
}

void re::ecs2::initInfo_MeshDeformationComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x590DB2F18B38DE74;
  v20[1] = "MeshDeformationComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1AF780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF780))
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
    qword_1EE1AF798 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "meshDeformationAssetHandle";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AF7A0 = v18;
    __cxa_guard_release(&qword_1EE1AF780);
  }

  *(this + 2) = 0x1C000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AF798;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshDeformationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshDeformationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshDeformationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshDeformationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224MeshDeformationComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::ecs2::allocInfo_MeshDeformationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF788))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF838, "MeshDeformationSystem");
    __cxa_guard_release(&qword_1EE1AF788);
  }

  return &unk_1EE1AF838;
}

void re::ecs2::initInfo_MeshDeformationSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xA362AF4CADF32224;
  v8[1] = "MeshDeformationSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x21000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshDeformationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshDeformationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshDeformationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshDeformationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshDeformationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshDeformationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshDeformationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::MeshDeformationSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 36);
  a3[31] = &unk_1F5CF7B00;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 33);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshDeformationSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 36);
  a1[31] = &unk_1F5CF7B00;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 33);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PerformDeformationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF790))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF8C8, "PerformDeformationSystem");
    __cxa_guard_release(&qword_1EE1AF790);
  }

  return &unk_1EE1AF8C8;
}

void re::ecs2::initInfo_PerformDeformationSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x6FEEDF872A0C54BCLL;
  v8[1] = "PerformDeformationSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x26800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PerformDeformationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PerformDeformationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PerformDeformationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PerformDeformationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PerformDeformationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PerformDeformationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PerformDeformationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::PerformDeformationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates((a3 + 376));
  *(a3 + 256) = &unk_1F5CF7B40;

  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr((a3 + 296));
  re::FixedArray<CoreIKTransform>::deinit((a3 + 272));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::PerformDeformationSystem>(uint64_t a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates((a1 + 376));
  *(a1 + 256) = &unk_1F5CF7B40;

  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr((a1 + 296));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 272));

  re::ecs2::System::~System(a1);
}

void re::ecs2::MeshDeformationSystem::~MeshDeformationSystem(re::ecs2::MeshDeformationSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 36);
  *(this + 31) = &unk_1F5CF7B00;
  re::FixedArray<CoreIKTransform>::deinit(this + 33);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 36);
  *(this + 31) = &unk_1F5CF7B00;
  re::FixedArray<CoreIKTransform>::deinit(this + 33);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PerformDeformationSystem::~PerformDeformationSystem(re::ecs2::PerformDeformationSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 47);
  *(this + 32) = &unk_1F5CF7B40;

  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr(this + 37);
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 47);
  *(this + 32) = &unk_1F5CF7B40;

  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr(this + 37);
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::DeformationFencePool::~DeformationFencePool(re::DeformationFencePool *this)
{
  re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::deinit(this + 584);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 584);
  re::BucketArray<unsigned long,8ul>::deinit(this + 528);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 528);
  for (i = 464; i != -48; i -= 64)
  {
    re::BucketArray<unsigned long,8ul>::deinit(this + i);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + i);
  }
}

uint64_t re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, i);
      if (*v4)
      {

        *v4 = 0;
      }
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

void *re::DynamicArray<re::DeformationStackDefinition>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::DynamicArray<re::DeformationDefinition>::operator=(v13, v11);
        v11 += 5;
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = &v11[v15];
      result = (v13 + 8 * v15);
      v17 = 40 * v4 - 8 * v15;
      do
      {
        v18 = re::DynamicArray<re::DeformationDefinition>::DynamicArray(result, v16);
        v16 += 5;
        result = (v18 + 40);
        v17 -= 40;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        result = re::DynamicArray<re::DeformationDefinition>::operator=(v6, v7);
        v7 += 5;
        v6 += 40;
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<re::DeformationDefinition>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::DeformationDefinition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::DeformationDefinition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::DeformationDefinition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::DeformationDefinition>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::DeformationDefinition>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 40 * v2;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v3 + 2);
      re::StringID::destroyString(v3);
      v3 += 5;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::DynamicArray<re::MeshDeformationIndex>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex *,re::MeshDeformationIndex *,re::MeshDeformationIndex *>(&v15, *(a2 + 32), (*(a2 + 32) + 48 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = v9 + 48 * v4;
      v11 = a1[4];
      v12 = 48 * v8;
      do
      {
        v13 = v9 + v12;
        *(v11 + v12) = *(v9 + v12);
        re::StringID::StringID((v11 + v12 + 8), (v9 + v12 + 8));
        re::StringID::StringID((v11 + v12 + 24), (v9 + v12 + 24));
        *(v11 + v12 + 40) = *(v9 + v12 + 40);
        v9 += 48;
        v11 += 48;
      }

      while (v13 + 48 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex *,re::MeshDeformationIndex *,re::MeshDeformationIndex *>(&v14, *(a2 + 32), (*(a2 + 32) + 48 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = 48 * v5 - 48 * v4;
      v7 = (a1[4] + 48 * v4 + 24);
      do
      {
        re::StringID::destroyString(v7);
        re::StringID::destroyString((v7 - 16));
        v7 = (v7 + 48);
        v6 -= 48;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex *,re::MeshDeformationIndex *,re::MeshDeformationIndex *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 3;
    do
    {
      *a4 = *(v7 - 24);
      re::StringID::operator=((a4 + 8), v7 - 2);
      re::StringID::operator=((a4 + 24), v7);
      *(a4 + 40) = v7[2];
      a4 += 48;
      v8 = v7 + 3;
      v7 += 6;
    }

    while (v8 != a3);
    return a3;
  }

  return result;
}

void re::internal::Callable<re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(re::PerFrameAllocator &)::$_0,void ()(void *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (**a2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = 24 * v3;
      v5 = (v2[2] + 8);
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          if (*v5)
          {
            (*(*v6 + 40))(v6, v5[1]);
            *v5 = 0;
            v5[1] = 0;
          }

          *(v5 - 1) = 0;
        }

        v5 += 3;
        v4 -= 24;
      }

      while (v4);
      (*(**v2 + 40))(*v2, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }
}

void *re::internal::Callable<re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(re::PerFrameAllocator &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF7CD0;
  return result;
}

void *re::internal::Callable<re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(re::PerFrameAllocator &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF7CD0;
  return result;
}

id *re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

_anonymous_namespace_ *re::FixedArray<re::ecs2::ComponentTypeBase const*>::FixedArray(_anonymous_namespace_ *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::FixedArray<re::ecs2::ComponentTypeBase const*>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::introspect<re::DeformationService>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::DeformationService>(BOOL)::info = re::introspect_DeformationService(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[210];
}

os_unfair_lock_s **re::internal::destroyPersistent<re::ecs2::DeformationGPUResources>(os_unfair_lock_s **result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::ecs2::DeformationGPUResources::~DeformationGPUResources(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::DeformationGPUResources*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF7D28;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::DeformationGPUResources*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF7D28;
  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::MeshDeformationComponent>(uint64_t a1)
{
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD0348;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 240) = 0;
  *(v2 + 248) = -1;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  inited = objc_initWeak((v2 + 384), 0);
  *(a1 + 392) = 0;
  *(a1 + 424) = re::globalAllocators(inited)[2];
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs224MeshDeformationComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::MeshDeformationSystem *re::ecs2::MeshDeformationSystem::MeshDeformationSystem(re::ecs2::MeshDeformationSystem *this)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF7B98;
  v3 = (v2 + 31);
  v2[28] = 0;
  v2[29] = 0;
  v2[30] = 0;
  v2[31] = &unk_1F5CF7B00;
  v2[32] = v2;
  v2[33] = 0;
  v2[34] = 0;
  v2[35] = 0;
  v6[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v6[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[0] = v6;
  v5[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 33), v5);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 288, this, v3, 1);
  return this;
}

double re::ecs2::RigidBodyComponent::updateRigidBody(id *this, re::ecs2::ColliderComponent *a2)
{
  if (*(this + 30) != *(this[42] + 52))
  {
    WeakRetained = objc_loadWeakRetained(this + 35);
    if (WeakRetained)
    {
      WeakRetained[232] = 1;
    }
  }

  re::RigidBody::setMotionType(this[42], *(this + 30));
  v5 = this[42];
  v5[304] = *(this + 132);
  (*(*v5 + 432))();
  v6 = this[42];
  v6[55] = *(this + 34);
  (*(*v6 + 432))();
  (*(*this[42] + 184))(this[42], *(this + 140));
  (*(*this[42] + 192))(this[42], *(this + 141));
  (*(*this[42] + 200))(this[42], *(this + 142));
  (*(*this[42] + 136))(this[42], *(this + 143));
  (*(*this[42] + 144))(this[42], *(this + 144));
  (*(*this[42] + 152))(this[42], *(this + 145));
  (*(*this[42] + 288))();
  v7.n128_u32[0] = *(this + 37);
  v8.n128_u32[0] = *(this + 38);
  (*(*this[42] + 336))(v7, v8);
  (*(*this[42] + 344))();
  v9 = this[42];
  *(v9[4].i64[1] + 88) = *(v9[4].i64[1] + 88) & 0xFFFFFFFB | (4 * ((*(a2 + 15) >> 2) & 1));
  v10 = *(this + 10);
  v11 = vmvnq_s8(vceqzq_f32(v10));
  v11.i32[3] = v11.i32[2];
  if ((vmaxvq_u32(v11) & 0x80000000) != 0)
  {
    v9[15] = vaddq_f32(v10, v9[15]);
    *(this + 10) = 0u;
  }

  v12 = *(this + 11);
  v13 = vmvnq_s8(vceqzq_f32(v12));
  v13.i32[3] = v13.i32[2];
  if ((vmaxvq_u32(v13) & 0x80000000) != 0)
  {
    *(this[42] + 16) = vaddq_f32(v12, *(this[42] + 16));
    *(this + 11) = 0u;
  }

  v14 = *(this + 12);
  v15 = vmvnq_s8(vceqzq_f32(v14));
  v15.i32[3] = v15.i32[2];
  if ((vmaxvq_u32(v15) & 0x80000000) != 0)
  {
    *(this[42] + 17) = vaddq_f32(v14, *(this[42] + 17));
    *(this + 12) = 0u;
  }

  v16 = *(this + 13);
  v17 = vmvnq_s8(vceqzq_f32(v16));
  v17.i32[3] = v17.i32[2];
  if ((vmaxvq_u32(v17) & 0x80000000) != 0)
  {
    *(this[42] + 18) = vaddq_f32(v16, *(this[42] + 18));
    v16.i64[0] = 0;
    *(this + 13) = 0u;
  }

  return *v16.i64;
}

void re::ecs2::RigidBodyComponent::removeFromSimulation(re::ecs2::RigidBodyComponent *this)
{
  v9[4] = *MEMORY[0x1E69E9840];
  if (*(this + 42))
  {
    WeakRetained = objc_loadWeakRetained(this + 35);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      re::PhysicsJointCollection::deleteJointsReferencingRigidBody((WeakRetained + 16), *(this + 42));
      re::RigidBodyCollection::remove(v3 + 9, *(this + 42));
      objc_destroyWeak(this + 35);
      *(this + 35) = 0;
    }

    v4 = *(this + 42);
    v9[0] = &unk_1F5CF7DE8;
    v9[3] = v9;
    v8[3] = v8;
    v7 = v4;
    v8[0] = &unk_1F5CF7DE8;
    std::__function::__value_func<void ()(re::RigidBody *)>::~__value_func[abi:nn200100](v9);
    std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::operator=[abi:nn200100](this + 44, &v7);
    std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::~unique_ptr[abi:nn200100](&v7);
    *(this + 42) = 0;
    re::AssetHandle::operator=(this + 248, this + 12);
    v5 = *(this + 2);
    if (v5)
    {
      v6 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v6)
      {
        re::ecs2::ColliderComponent::removeFromSimulation(v6);
      }
    }
  }
}

uint64_t *std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::RigidBody *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::RigidBody *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

void re::ecs2::RigidBodyComponent::teleport(re::ecs2::RigidBodyComponent *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(this + 2);
  v7 = *(v6 + 216);
  if (v7 && *(v7 + 4))
  {
    if (!RESyncableIsAuthoritative())
    {
      return;
    }

    v6 = *(this + 2);
  }

  ++*(this + 31);
  v8 = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v8)
  {
    v9 = v8;
    *(v8 + 80) = *(this + 31);
    re::ecs2::Component::markDirty(v8);
    if (v7)
    {

      re::ecs2::NetworkComponent::markDirty(v7, v9);
    }
  }
}

re::ecs2::RigidBodyComponentStateImpl *re::ecs2::RigidBodyComponentStateImpl::RigidBodyComponentStateImpl(re::ecs2::RigidBodyComponentStateImpl *this)
{
  v4[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF7D80;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[2] = re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  v3[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 8), v3);
  return this;
}

BOOL re::ecs2::RigidBodyComponentStateImpl::processDirtyComponents(_BOOL8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v46, 3047, a1, *(a5 + 40), 0, 0);
  v8 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v12 = v9, v13 = a3[1], v14 = (*(*v9 + 24))(v9), v15 = (*(*v12 + 40))(v12, v13), v45[0] = v14, (v45[1] = v15) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v42, a5, 0);
    v17 = v42;
    v16 = v43;
    v42 = a4;
    v43 = v17;
    v44 = v16;
    if (v17 != a5 || v16 != 0xFFFFFFFFLL)
    {
      do
      {
        v24 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v42);
        v25 = *(v24 + 16);
        v26 = re::ecs2::EntityComponentCollection::get((v25 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v26)
        {
          v27 = v26;
          v28 = *(v25 + 98);
          if (!*(v25 + 98))
          {
            goto LABEL_27;
          }

          v29 = (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v30 = *(v25 + 104);
          v31 = vld1q_dup_s16(v29);
          v32 = 1;
          while (1)
          {
            v33 = vandq_s8(vceqq_s16(v31, *v30), xmmword_1E306AC00);
            v33.i16[0] = vmaxvq_u16(v33);
            if (v33.i32[0])
            {
              break;
            }

            v32 -= 8;
            ++v30;
            if (!--v28)
            {
              goto LABEL_27;
            }
          }

          if (v33.u16[0] - v32 < *(v25 + 96))
          {
            v34 = *re::ecsComponentsLogObjects(v26);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v41 = 0;
              _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Rigid Body component cannot exist on the same entity that contains a character controller component. Deactivating component.", &v41, 2u);
            }
          }

          else
          {
LABEL_27:
            v35 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v45, v25);
            if (v35)
            {
              v36 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v35);
            }

            else
            {
              v36 = 0;
            }

            if (*(v25 + 304))
            {
              v18 = *(v27 + 5);
              if (v18)
              {
                if (v36)
                {
                  v19 = *(v24 + 336);
                  if (!v19 || *(v24 + 104) != *(v24 + 256) || !re::MassFrame::operator==((v24 + 32), v19 + 5) || *(v27 + 10) != v18)
                  {
                    goto LABEL_16;
                  }

                  WeakRetained = objc_loadWeakRetained((v24 + 280));
                  if (WeakRetained)
                  {
                    v21 = WeakRetained - 8;
                  }

                  else
                  {
                    v21 = 0;
                  }

                  if (v21 != v36)
                  {
LABEL_16:
                    re::ecs2::RigidBodyComponent::removeFromSimulation(v24);
                  }

                  v22 = v42;
                  v23 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v43);
                  re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v22, v23, a3[5]);
                  goto LABEL_32;
                }
              }
            }
          }
        }

        v37 = v42;
        v38 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v43);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v37, v38, a3[4]);
        re::ecs2::RigidBodyComponent::removeFromSimulation(v24);
LABEL_32:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v43);
      }

      while (v43 != a5 || v44 != 0xFFFF || HIWORD(v44) != 0xFFFF);
    }

    v39 = *(a5 + 40) != 0;
  }

  else
  {
    v39 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v46, v10, v11);
  return v39;
}

BOOL re::ecs2::RigidBodyComponentStateImpl::processPreparingComponents(_BOOL8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v70, 3047, a1, *(a5 + 40), 0, 0);
  v8 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (!v9 || (v12 = v9, v13 = a3[1], v14 = (*(*v9 + 24))(v9), v15 = (*(*v12 + 40))(v12, v13), v69[0] = v14, (v69[1] = v15) == 0))
  {
    v16 = 0;
    goto LABEL_7;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v66 = a4;
  v67 = *buf;
  v68 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    v18 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    while (1)
    {
      v19 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v66);
      v20 = *(v19 + 16);
      v21 = re::ecs2::EntityComponentCollection::get((v20 + 6), v18[67]);
      v23 = v21;
      v24 = v21[5];
      if (v24 && (v25 = atomic_load((v24 + 896)), v25 == 2))
      {
        v26 = 1;
      }

      else
      {
        re::AssetHandle::loadAsync((v21 + 4));
        v26 = 0;
      }

      if (*(v19 + 104))
      {
        v27 = re::PhysicsMaterialAsset::assetType(v21);
        v28 = re::AssetHandle::assetWithType((v19 + 96), v27, 1);
        if (!v28)
        {
          re::AssetHandle::loadAsync((v19 + 96));
LABEL_24:
          re::ecs2::RigidBodyComponent::removeFromSimulation(v19);
          goto LABEL_31;
        }

        v29 = *(v28 + 8);
      }

      else
      {
        v30 = re::PhysicsFactory::defaultFactory(v21, v22);
        v29 = (*(*v30 + 24))(v30);
      }

      if (v29)
      {
        v31 = v26;
      }

      else
      {
        v31 = 0;
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(v19 + 336))
      {
        goto LABEL_22;
      }

      v36 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v69, v20);
      re::TransformService::worldMatrix(*(v36 + 8), v20, 0, buf);
      re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v36, buf, v62);
      v72 = xmmword_1E30474D0;
      *buf = 0u;
      v71 = 0u;
      v37 = re::decomposeScaleRotationTranslation<float>(v62, buf, &v72, &v71);
      v63 = *buf;
      v64 = v72;
      v65 = v71;
      v38 = vmulq_f32(v72, v72);
      v39 = vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)));
      if (v39 != 1.0 && fabsf(v39 + -1.0) > 0.00001)
      {
        v40 = *re::ecsComponentsLogObjects(v37);
        v18 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "NaN or non-unit rotation detected in transform (RigidBody). Skipping.", buf, 2u);
        }

        re::ecs2::RigidBodyComponent::removeFromSimulation(v19);
        v32 = v66;
        v33 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v67);
        v34 = a3[2];
        v35 = a3[4];
        goto LABEL_30;
      }

      v41 = re::ecs2::EntityComponentCollection::get((v20 + 6), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      re::internal::RigidBodyUpdateStagingData::RigidBodyUpdateStagingData(v62, v19, v41, v20[27], v42);
      v43 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v36);
      v61 = DWORD1(v62[0]);
      v44 = (*(*v12 + 120))(v12);
      (*(*v12 + 136))(v12);
      if (*(v19 + 148) < 0.0)
      {
        *(v19 + 148) = v44;
      }

      if (*(v19 + 152) < 0.0)
      {
        *(v19 + 152) = v45;
      }

      v46 = re::AssetHandle::blockUntilLoaded<re::CollisionShapeAsset>((v23 + 4));
      v48 = *(v46 + 1);
      v49 = *(v19 + 352);
      v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
      v51 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v48 ^ (v48 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v48 ^ (v48 >> 30))) >> 27));
      v52 = (((v50 ^ (v50 >> 31)) << 6) + ((v50 ^ (v50 >> 31)) >> 2) - 0x61C8864680B583E9 + (v51 ^ (v51 >> 31))) ^ v50 ^ (v50 >> 31);
      if (!v49)
      {
        goto LABEL_44;
      }

      if (v52 != *(v19 + 344) || !re::MassFrame::operator==((v19 + 32), v49 + 5))
      {
        break;
      }

      *(v19 + 352) = 0;
LABEL_45:
      *(v19 + 336) = v49;
      *(v19 + 344) = v52;
      re::RigidBodyCollection::add((v43 + 80), v49);
      objc_storeWeak((v19 + 280), (v43 + 8));
      *buf = v65;
      v74 = v64;
      v54 = *(v19 + 336);
      v55 = v64;
      v54[1] = v65;
      v54[2] = v55;
      (*(*v54 + 64))(v54, buf);
      re::ecs2::RigidBodyComponent::updateRigidBody(v19, v23);
      re::AssetHandle::operator=(v19 + 248, (v19 + 96));
      v56 = *(v19 + 120);
      *(v19 + 272) = *(v19 + 124);
      *(v19 + 288) = v56;
      re::ecs2::ColliderComponent::setUnmanagedCollisionObject(v23, *(*(v19 + 336) + 72));
      v57 = v23[8];
      v58 = *(*(v19 + 336) + 72);
      if (v58[4] != v57)
      {
        v58[4] = v57;
        (*(*v58 + 80))(v58);
        v58 = *(*(v19 + 336) + 72);
      }

      v18 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      re::CollisionObject::setScale(v58, &v63);
      v59 = *(v19 + 336);
      *(v59[9] + 40) = *(v19 + 16);
      v60 = *v59;
      if (*(v19 + 25) == 1)
      {
        (*(v60 + 304))();
      }

      else
      {
        (*(v60 + 312))();
      }

      re::RigidBody::setMotionType(*(v19 + 336), v61);
LABEL_22:
      re::ecs2::RigidBodyComponent::updateRigidBody(v19, v23);
      v32 = v66;
      v33 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v67);
      v34 = a3[2];
      v35 = a3[6];
LABEL_30:
      re::ecs2::ComponentBucketsBase::moveComponent(v34, v32, v33, v35);
LABEL_31:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v67);
      if (v67 == a5 && v68 == 0xFFFF && HIWORD(v68) == 0xFFFF)
      {
        goto LABEL_5;
      }
    }

    *(v19 + 352) = 0;
    v46 = std::function<void ()(re::RigidBody *)>::operator()(v19 + 360, v49);
LABEL_44:
    v53 = re::PhysicsFactory::defaultFactory(v46, v47);
    *buf = v29;
    v49 = (*(*v53 + 40))(v53, re::PhysicsFactory::m_defaultAllocator, v48, v19 + 32, buf, 1);
    goto LABEL_45;
  }

LABEL_5:
  v16 = *(a5 + 40) != 0;
LABEL_7:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v70, v10, v11);
  return v16;
}

BOOL re::ecs2::RigidBodyComponentStateImpl::processUpdatingComponents(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v172 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v160, 3047, a1, *(a5 + 40), 0, 0);
  v10 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v10);
  if (v11 && (v14 = v11, v15 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56)), v139 = re::ServiceLocator::service<re::TransformService>(v15), v16 = *(a3 + 8), v17 = (*(*v14 + 24))(v14), v18 = (*(*v14 + 40))(v14, v16), v159[0] = v17, (v159[1] = v18) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v167, a5, 0);
    v156 = a4;
    v157 = v167.i64[0];
    v158 = v167.i32[2];
    if (v167.i64[0] != a5 || v167.u32[2] != 0xFFFFFFFFLL)
    {
      while (1)
      {
        v19 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v156);
        v20 = *(v19 + 16);
        v21 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v159, v20);
        v22 = v21;
        if (!a6 || re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v21) == a6)
        {
          break;
        }

LABEL_93:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v157);
        if (v157 == a5 && v158 == 0xFFFF && HIWORD(v158) == 0xFFFF)
        {
          goto LABEL_96;
        }
      }

      re::TransformService::worldMatrix(*(v22 + 8), v20, 0, &v167);
      re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v22, &v167, v155);
      v167 = 0u;
      v161 = xmmword_1E30474D0;
      *v171 = 0u;
      re::decomposeScaleRotationTranslation<float>(v155, &v167, &v161, v171);
      v153 = *v171;
      v154 = v161;
      v152 = v167;
      v23 = re::ecs2::EntityComponentCollection::get((v20 + 6), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      re::internal::RigidBodyUpdateStagingData::RigidBodyUpdateStagingData(&v148, v19, v23, v20[27], v24);
      if (v149 == 1)
      {
        v25 = (v19 + 304);
        v26 = *(v19 + 320);
        if (v26 != *v154.i32 && vabds_f32(v26, *v154.i32) > 0.001 || (v27 = *(v19 + 324), v27 != *&v154.i32[1]) && vabds_f32(v27, *&v154.i32[1]) > 0.001 || (v28 = *(v19 + 328), v28 != *&v154.i32[2]) && vabds_f32(v28, *&v154.i32[2]) > 0.001 || (v29 = *(v19 + 332), v29 != *&v154.i32[3]) && vabds_f32(v29, *&v154.i32[3]) > 0.001 || *v25 != *&v153 && vabds_f32(*v25, *&v153) > 0.001 || (v30 = *(v19 + 308), v30 != *(&v153 + 1)) && vabds_f32(v30, *(&v153 + 1)) > 0.001 || (v31 = *(v19 + 312), v31 != *(&v153 + 2)) && vabds_f32(v31, *(&v153 + 2)) > 0.001)
        {
          v32 = *(v19 + 336);
          v33 = v154;
          v32[1] = v153;
          v32[2] = v33;
          (*(*v32 + 64))(v32, &v153);
          v34 = v154;
          *v25 = v153;
          *(v19 + 320) = v34;
          if (!v23)
          {
            goto LABEL_90;
          }

          goto LABEL_38;
        }

LABEL_37:
        if (!v23)
        {
LABEL_90:
          re::CollisionObject::setScale(*(*(v19 + 336) + 72), &v152);
          *(v19 + 272) = *(v19 + 124);
          v135 = *(re::ecs2::EntityComponentCollection::get((v20 + 6), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 64);
          v136 = *(*(v19 + 336) + 72);
          if (v136[4] != v135)
          {
            v136[4] = v135;
            (*(*v136 + 80))(v136);
          }

          *(v19 + 288) = v151;
          goto LABEL_93;
        }

LABEL_38:
        v167.i8[0] = 0;
        v161.i8[0] = 0;
        v80 = *(v19 + 288);
        if (v80 != 2 || v151 == 2)
        {
          if (!v151)
          {
            v167.i8[0] = 1;
            v168 = 0uLL;
            v161.i8[0] = 1;
            v162 = 0uLL;
            goto LABEL_82;
          }

          if (v151 != 1)
          {
            if (*(v23 + 144) == *(v23 + 148))
            {
              if (*(v23 + 176) == *(v23 + 180))
              {
                if (v80 != 2 || (v149 & 1) != 0 || v151 != 2)
                {
                  goto LABEL_84;
                }

                v167.i8[0] = 1;
                v168 = *(v23 + 96);
                v83 = (v23 + 112);
                goto LABEL_68;
              }

              v132 = 0;
              *&v171[15] = *(v23 + 160);
LABEL_73:
              v161.i8[0] = 1;
              v162 = *&v171[15];
LABEL_74:
              if (v80 == 2 && (v149 & 1) == 0 && v151 == 2)
              {
                if (!v132)
                {
                  v167.i8[0] = 1;
                }

                v168 = *(v23 + 96);
                v83 = (v23 + 112);
                goto LABEL_80;
              }

              if (!v132)
              {
LABEL_83:
                (*(**(v19 + 336) + 240))(*(v19 + 336), &v162);
LABEL_84:
                if ((v149 & 1) == 0)
                {
                  v133 = *(v23 + 25);
                  if (v133 != (*(**(v19 + 336) + 296))(*(v19 + 336)))
                  {
                    v134 = **(v19 + 336);
                    if (*(v23 + 25) == 1)
                    {
                      (*(v134 + 304))();
                    }

                    else
                    {
                      (*(v134 + 312))();
                    }
                  }
                }

                *(v23 + 26) = 0;
                goto LABEL_90;
              }

LABEL_82:
              (*(**(v19 + 336) + 224))(*(v19 + 336), &v168);
              if ((v161.i8[0] & 1) == 0)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            }

            v82 = 0;
            v167.i8[0] = 1;
LABEL_63:
            v168 = *(v23 + 128);
            if (*(v23 + 176) == *(v23 + 180))
            {
              if (v80 != 2 || (v149 & 1) != 0 || v151 != 2)
              {
                goto LABEL_82;
              }

              v168 = *(v23 + 96);
              v83 = (v23 + 112);
              if (v82)
              {
LABEL_80:
                v162 = *v83;
                goto LABEL_82;
              }

LABEL_68:
              v161.i8[0] = 1;
              goto LABEL_80;
            }

            *&v171[15] = *(v23 + 160);
            if (v82)
            {
LABEL_70:
              v162 = *(v23 + 160);
              v132 = 1;
              goto LABEL_74;
            }

            v132 = 1;
            goto LABEL_73;
          }

          v167.i8[0] = 1;
          v81 = *(v23 + 112);
          v168 = *(v23 + 96);
          v161.i8[0] = 1;
          v162 = v81;
        }

        else
        {
          v167.i8[0] = 1;
          v168 = 0uLL;
          v161.i8[0] = 1;
          v162 = 0uLL;
          if (!v151)
          {
            goto LABEL_82;
          }
        }

        if (*(v23 + 144) == *(v23 + 148))
        {
          if (*(v23 + 176) == *(v23 + 180))
          {
            goto LABEL_82;
          }

          goto LABEL_70;
        }

        v82 = 1;
        goto LABEL_63;
      }

      v35 = v20[32];
      if (v35)
      {
        if (!v23)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v35 = re::ecs2::EntityComponentCollection::add((v20 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (!v23)
        {
LABEL_33:
          if (v151 == 2 && *(v19 + 124) == *(v19 + 272))
          {
            (*(**(v19 + 336) + 40))(v171);
            v58 = *&v171[16];
            v59 = *&v171[20];
            v60 = v58 + v58;
            v61 = v59 + v59;
            v62 = *&v171[24];
            v63 = v62 + v62;
            v64 = v58 * (v58 + v58);
            v65 = v59 * (v59 + v59);
            v66 = v62 * (v62 + v62);
            v67 = v60 * *&v171[20];
            v68 = v60 * *&v171[24];
            v69 = v61 * *&v171[24];
            v70 = v60 * *&v171[28];
            v71 = v61 * *&v171[28];
            v72.i32[3] = 0;
            v72.f32[0] = 1.0 - (v65 + v66);
            v72.f32[1] = v67 + (v63 * *&v171[28]);
            v72.f32[2] = v68 - v71;
            v73.i32[3] = 0;
            v73.f32[0] = v67 - (v63 * *&v171[28]);
            v73.f32[1] = 1.0 - (v64 + v66);
            v73.f32[2] = v69 + v70;
            v74.i32[3] = 0;
            v74.f32[0] = v68 + v71;
            v74.f32[1] = v69 - v70;
            v74.f32[2] = 1.0 - (v64 + v65);
            v167 = vmulq_n_f32(v72, v152.f32[0]);
            v168 = vmulq_n_f32(v73, v152.f32[1]);
            v75 = *v171;
            v75.i32[3] = 1.0;
            v169 = vmulq_laneq_f32(v74, v152, 2);
            v170 = v75;
            re::ecs2::PhysicsSimulationData::localTransformFromPhysicsSimulationSpace(v22, &v167, v20, &v161);
            v77 = v162;
            v76 = v163;
            *(v35 + 32) = v161;
            *(v35 + 48) = v77;
            *(v35 + 64) = v76;
            re::ecs2::Component::markDirty(v35);
          }

          else
          {
            v78 = *(v19 + 336);
            v79 = v154;
            v78[1] = v153;
            v78[2] = v79;
            (*(*v78 + 64))(v78, &v153);
          }

          goto LABEL_37;
        }
      }

      if (v150)
      {
        (*(**(v19 + 336) + 40))(&v143);
        v36 = v144;
        v37 = v145;
        v38 = v36 + v36;
        v39 = v37 + v37;
        v40 = v146;
        v41 = v40 + v40;
        v42 = v36 * (v36 + v36);
        v43 = v37 * (v37 + v37);
        v44 = v40 * (v40 + v40);
        v45 = v38 * v145;
        v46 = v38 * v146;
        v47 = v39 * v146;
        v48 = v38 * v147;
        v49 = v39 * v147;
        v50.i32[3] = 0;
        v50.f32[0] = 1.0 - (v43 + v44);
        v50.f32[1] = v45 + (v41 * v147);
        v50.f32[2] = v46 - v49;
        v51.i32[3] = 0;
        v51.f32[0] = v45 - (v41 * v147);
        v51.f32[1] = 1.0 - (v42 + v44);
        v51.f32[2] = v47 + v48;
        v52.i32[3] = 0;
        v52.f32[0] = v46 + v49;
        v52.f32[1] = v47 - v48;
        v52.f32[2] = 1.0 - (v42 + v43);
        v167 = vmulq_n_f32(v50, v152.f32[0]);
        v168 = vmulq_n_f32(v51, v152.f32[1]);
        v53 = v143;
        v53.i32[3] = 1.0;
        v169 = vmulq_laneq_f32(v52, v152, 2);
        v170 = v53;
        re::ecs2::PhysicsSimulationData::localTransformFromPhysicsSimulationSpace(v22, &v167, v20, v171);
        re::lerp<float>(v171, v23 + 32, &v140, 0.1);
        v55 = v141;
        v54 = v142;
        *(v35 + 32) = v140;
        *(v35 + 48) = v55;
        *(v35 + 64) = v54;
        re::ecs2::Component::markDirty(v35);
        v56 = v20[4];
        if (v56)
        {
          if ((*(v56 + 304) & 0x80) != 0)
          {
            v57 = 0;
          }

          else
          {
            v57 = v20[4];
          }
        }

        else
        {
          v57 = 0;
        }

        re::TransformService::worldTransform(v139, v57, 0, &v167);
        v84 = 0;
        v85 = v168.f32[0];
        v86 = v85 + v85;
        v87 = v168.f32[2];
        v88 = v87 + v87;
        v89 = v85 * (v85 + v85);
        v90 = v168.f32[1] * (v168.f32[1] + v168.f32[1]);
        v91 = v87 * (v87 + v87);
        v92 = v86 * v168.f32[1];
        v93 = v86 * v168.f32[2];
        v94 = (v168.f32[1] + v168.f32[1]) * v168.f32[2];
        v95 = (v168.f32[1] + v168.f32[1]) * v168.f32[3];
        v96 = v88 * v168.f32[3];
        v97.i32[3] = 0;
        v97.f32[0] = 1.0 - (v90 + v91);
        v97.f32[1] = (v86 * v168.f32[1]) + v96;
        v97.f32[2] = (v86 * v168.f32[2]) - v95;
        v98 = v86 * v168.f32[3];
        v99.i32[3] = 0;
        v99.f32[0] = v93 + v95;
        v99.f32[1] = v94 - v98;
        v99.f32[2] = 1.0 - (v89 + v90);
        *&v100 = v94 + v98;
        v101.f32[0] = v92 - v96;
        v101.f32[1] = 1.0 - (v89 + v91);
        v101.i64[1] = v100;
        v102 = v169;
        v102.i32[3] = 1.0;
        v103 = *(v22 + 176);
        v104 = *(v22 + 192);
        v105 = *(v22 + 208);
        v106 = *(v22 + 224);
        v161 = vmulq_n_f32(v97, v167.f32[0]);
        v162 = vmulq_n_f32(v101, v167.f32[1]);
        v163 = vmulq_laneq_f32(v99, v167, 2);
        v164 = v102;
        do
        {
          *(&v167 + v84) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(&v161 + v84))), v104, *&v161.i8[v84], 1), v105, *(&v161 + v84), 2), v106, *(&v161 + v84), 3);
          v84 += 16;
        }

        while (v84 != 64);
        v107 = 0;
        v108 = *&v141;
        v109 = v108 + v108;
        v110 = *(&v141 + 2);
        v111 = v110 + v110;
        v112 = v108 * (v108 + v108);
        v113 = *(&v141 + 1) * (*(&v141 + 1) + *(&v141 + 1));
        v114 = v110 * (v110 + v110);
        v115 = v109 * *(&v141 + 1);
        v116 = v109 * *(&v141 + 2);
        v117 = (*(&v141 + 1) + *(&v141 + 1)) * *(&v141 + 2);
        v118 = (*(&v141 + 1) + *(&v141 + 1)) * *(&v141 + 3);
        v119 = v111 * *(&v141 + 3);
        v120.i32[3] = 0;
        v120.f32[0] = 1.0 - (v113 + v114);
        v120.f32[1] = (v109 * *(&v141 + 1)) + v119;
        v120.f32[2] = (v109 * *(&v141 + 2)) - v118;
        v121 = v109 * *(&v141 + 3);
        v122.i32[3] = 0;
        v122.f32[0] = v116 + v118;
        v122.f32[1] = v117 - v121;
        v122.f32[2] = 1.0 - (v112 + v113);
        v123 = v167;
        v124 = v168;
        *&v125 = v117 + v121;
        v126.f32[0] = v115 - v119;
        v126.f32[1] = 1.0 - (v112 + v114);
        v126.i64[1] = v125;
        v127 = v142;
        v127.i32[3] = 1.0;
        v128 = v169;
        v129 = v170;
        v161 = vmulq_n_f32(v120, v140.f32[0]);
        v162 = vmulq_n_f32(v126, v140.f32[1]);
        v163 = vmulq_laneq_f32(v122, v140, 2);
        v164 = v127;
        do
        {
          *(&v167 + v107) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v123, COERCE_FLOAT(*(&v161 + v107))), v124, *&v161.i8[v107], 1), v128, *(&v161 + v107), 2), v129, *(&v161 + v107), 3);
          v107 += 16;
        }

        while (v107 != 64);
        v161 = 0u;
        v165 = 0u;
        v166 = xmmword_1E30474D0;
        re::decomposeScaleRotationTranslation<float>(&v167, &v161, &v166, &v165);
        v167 = v165;
        v168 = v166;
        v130 = *(v19 + 336);
        v131 = v166;
        v130[1] = v165;
        v130[2] = v131;
        (*(*v130 + 64))(v130, &v167);
        goto LABEL_38;
      }

      goto LABEL_33;
    }

LABEL_96:
    v137 = *(a5 + 40) != 0;
  }

  else
  {
    v137 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v160, v12, v13);
  return v137;
}

void re::ecs2::RigidBodyComponentStateImpl::simToECS(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v77, 3047, a1, *(a6 + 40), 0, 0);
  v10 = (*(**(*(a4 + 8) + 56) + 32))(*(*(a4 + 8) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v10);
  if (v11)
  {
    v14 = v11;
    v15 = *(a4 + 8);
    v16 = (*(*v11 + 24))(v11);
    v17 = (*(*v14 + 40))(v14, v15);
    v76[0] = v16;
    v76[1] = v17;
    if (v17)
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v79, a6, 0);
      v73 = a5;
      v74 = v79.i64[0];
      v75 = v79.i32[2];
      if (v79.i64[0] != a6 || v79.u32[2] != 0xFFFFFFFFLL)
      {
        do
        {
          v54 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v73);
          v55 = *(v54 + 16);
          v56 = re::ecs2::EntityComponentCollection::get((v55 + 6), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v57 = v55[27];
          re::internal::RigidBodyUpdateStagingData::RigidBodyUpdateStagingData(v72, v54, v56, v57, v58);
          if (v72[1])
          {
            v59 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v76, v55);
            if (re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v59) == a2)
            {
              re::TransformService::worldMatrix(*(v59 + 8), v55, 0, &v79);
              re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v59, &v79, &v69);
              v62 = v70;
              v63 = v69;
              v18 = vmulq_f32(v69, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v71, v71, 0xCuLL), v71, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL))), vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL), vextq_s8(vextq_s8(v70, v70, 0xCuLL), v70, 8uLL)));
              v19 = (v18.f32[2] + vaddv_f32(*v18.f32)) <= 0.0;
              v20 = -1.0;
              if (!v19)
              {
                v20 = 1.0;
              }

              v64 = v20;
              v65 = v71;
              (*(**(v54 + 336) + 40))(&v79);
              v21 = v80;
              v67 = v79;
              (*(**(v54 + 336) + 40))(v68);
              v22 = v55[32];
              if (!v22)
              {
                v22 = re::ecs2::EntityComponentCollection::add((v55 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              }

              if (!re::areAlmostEqual<float>(v68, (v54 + 304)))
              {
                v23 = vmulq_f32(v63, v63);
                v24 = vmulq_f32(v62, v62);
                v25 = vadd_f32(vzip1_s32(*v23.i8, *v24.i8), vzip2_s32(*v23.i8, *v24.i8));
                v26 = vextq_s8(v23, v23, 8uLL);
                *v26.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v26.f32, *&vextq_s8(v24, v24, 8uLL)), v25));
                v27 = vmulq_f32(v65, v65);
                v26.i32[2] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
                v66 = vmulq_n_f32(v26, v64);
                re::ecs2::Component::willSet(v22);
                v28 = v21.f32[0] * (v21.f32[0] + v21.f32[0]);
                v29 = v21.f32[1] * (v21.f32[1] + v21.f32[1]);
                v30 = v21.f32[2] * (v21.f32[2] + v21.f32[2]);
                v31 = (v21.f32[0] + v21.f32[0]) * v21.f32[1];
                v32 = (v21.f32[0] + v21.f32[0]) * v21.f32[2];
                v33 = (v21.f32[1] + v21.f32[1]) * v21.f32[2];
                v34 = (v21.f32[0] + v21.f32[0]) * v21.f32[3];
                v35 = (v21.f32[1] + v21.f32[1]) * v21.f32[3];
                v36 = (v21.f32[2] + v21.f32[2]) * v21.f32[3];
                v37.i32[3] = 0;
                v37.f32[0] = 1.0 - (v29 + v30);
                v37.f32[1] = v31 + v36;
                v38.i32[3] = 0;
                v37.f32[2] = v32 - v35;
                v39.i32[3] = 0;
                v39.f32[0] = v31 - v36;
                v39.f32[1] = 1.0 - (v28 + v30);
                v39.f32[2] = v33 + v34;
                v38.f32[0] = v32 + v35;
                v38.f32[1] = v33 - v34;
                v38.f32[2] = 1.0 - (v28 + v29);
                v79 = vmulq_n_f32(v37, v66.f32[0]);
                v80 = vmulq_n_f32(v39, v66.f32[1]);
                v40 = v67;
                v40.i32[3] = 1.0;
                v81 = vmulq_laneq_f32(v38, v66, 2);
                v82 = v40;
                re::ecs2::PhysicsSimulationData::localTransformFromPhysicsSimulationSpace(v59, &v79, v55, v78);
                v42 = v78[1];
                v41 = v78[2];
                *(v22 + 32) = v78[0];
                *(v22 + 48) = v42;
                *(v22 + 64) = v41;
                re::ecs2::Component::didSet(v22);
                re::ecs2::Component::markDirty(v22);
                if (v72[0] && ((*(**(v54 + 336) + 296))(*(v54 + 336)) & 1) == 0)
                {
                  re::ecs2::NetworkComponent::markDirty(v57, v22);
                }
              }

              (*(**(v54 + 336) + 40))(&v79);
              v43 = v80;
              *(v54 + 304) = v79;
              *(v54 + 320) = v43;
              if (v56)
              {
                v44 = *(v56 + 144);
                *(v56 + 148) = v44;
                v45 = *(v56 + 176);
                *(v56 + 180) = v45;
                if (v72[2])
                {
                  v46 = 0;
                  v47 = 0;
                  *(v56 + 96) = 0;
                  *(v56 + 104) = 0;
                  *(v56 + 152) = v44;
                }

                else
                {
                  *(v56 + 96) = (*(**(v54 + 336) + 216))(*(v54 + 336));
                  *(v56 + 104) = v48;
                  *(v56 + 152) = *(v56 + 148);
                  v46 = (*(**(v54 + 336) + 232))(*(v54 + 336));
                  v45 = *(v56 + 180);
                }

                *(v56 + 112) = v46;
                *(v56 + 120) = v47;
                *(v56 + 184) = v45;
                v49 = *(v56 + 25);
                v50 = (*(**(v54 + 336) + 296))();
                *(v56 + 25) = v50;
                if ((v49 != 1 || (v50 & 1) == 0) && v72[0])
                {
                  re::ecs2::Component::markDirty(v56);
                  re::ecs2::NetworkComponent::markDirty(v57, v56);
                  v50 = *(v56 + 25);
                }

                if (v49 != v50)
                {
                  v51 = *(v59 + 32);
                  if (v51)
                  {
                    v52 = *(v54 + 336);
                    v53 = (*(*v52 + 296))(v52);
                    (*(*v51 + 16))(v51, v52, v53);
                  }
                }
              }
            }
          }

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v74);
        }

        while (v74 != a6 || v75 != 0xFFFF || HIWORD(v75) != 0xFFFF);
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v77, v12, v13);
}

void *re::ecs2::allocInfo_RigidBodyComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_352, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_352))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF968, "RigidBodyComponent");
    __cxa_guard_release(&_MergedGlobals_352);
  }

  return &unk_1EE1AF968;
}

void re::ecs2::initInfo_RigidBodyComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v89[0] = 0x1479C03CF7280260;
  v89[1] = "RigidBodyComponent";
  if (v89[0])
  {
    if (v89[0])
    {
    }
  }

  *(this + 2) = v90;
  if ((atomic_load_explicit(&qword_1EE1AF960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF960))
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
    qword_1EE1AF9F8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "setSleepOnCreation";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AFA00 = v18;
    v19 = re::introspectionAllocator();
    v20 = re::introspect_MassFrame(1);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "massFrame";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1AFA08 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_AssetHandle(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "material";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1AFA10 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_MotionType(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "motionType";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1AFA18 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_uint32_t(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "version_deprecated";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8000000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1AFA20 = v33;
    v34 = re::introspectionAllocator();
    v35 = (*(*v34 + 32))(v34, 24, 8);
    *v35 = 5;
    *(v35 + 8) = "version";
    *(v35 + 16) = "version_deprecated";
    qword_1EE1AFA28 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_BOOL(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "isCCDEnabled";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x8400000006;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1AFA30 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::introspect_float(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "ccdVelocityThreshold";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x8800000007;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1AFA38 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::introspect_BOOL(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "lockRotationX";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x8C00000008;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1AFA40 = v47;
    v48 = re::introspectionAllocator();
    v50 = re::introspect_BOOL(1, v49);
    v51 = (*(*v48 + 32))(v48, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "lockRotationY";
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0x8D00000009;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE1AFA48 = v51;
    v52 = re::introspectionAllocator();
    v54 = re::introspect_BOOL(1, v53);
    v55 = (*(*v52 + 32))(v52, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "lockRotationZ";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0x8E0000000ALL;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE1AFA50 = v55;
    v56 = re::introspectionAllocator();
    v58 = re::introspect_BOOL(1, v57);
    v59 = (*(*v56 + 32))(v56, 72, 8);
    *v59 = 1;
    *(v59 + 8) = "lockTranslationX";
    *(v59 + 16) = v58;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0x8F0000000BLL;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    qword_1EE1AFA58 = v59;
    v60 = re::introspectionAllocator();
    v62 = re::introspect_BOOL(1, v61);
    v63 = (*(*v60 + 32))(v60, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "lockTranslationY";
    *(v63 + 16) = v62;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x900000000CLL;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE1AFA60 = v63;
    v64 = re::introspectionAllocator();
    v66 = re::introspect_BOOL(1, v65);
    v67 = (*(*v64 + 32))(v64, 72, 8);
    *v67 = 1;
    *(v67 + 8) = "lockTranslationZ";
    *(v67 + 16) = v66;
    *(v67 + 24) = 0;
    *(v67 + 32) = 0x910000000DLL;
    *(v67 + 40) = 0;
    *(v67 + 48) = 0;
    *(v67 + 56) = 0;
    *(v67 + 64) = 0;
    qword_1EE1AFA68 = v67;
    v68 = re::introspectionAllocator();
    v70 = re::introspect_BOOL(1, v69);
    v71 = (*(*v68 + 32))(v68, 72, 8);
    *v71 = 1;
    *(v71 + 8) = "canSleep";
    *(v71 + 16) = v70;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0x920000000ELL;
    *(v71 + 40) = 0;
    *(v71 + 48) = 0;
    *(v71 + 56) = 0;
    *(v71 + 64) = 0;
    qword_1EE1AFA70 = v71;
    v72 = re::introspectionAllocator();
    v74 = re::introspect_BOOL(1, v73);
    v75 = (*(*v72 + 32))(v72, 72, 8);
    *v75 = 1;
    *(v75 + 8) = "remoteAuthorityAllowed";
    *(v75 + 16) = v74;
    *(v75 + 24) = 0;
    *(v75 + 32) = 0x930000000FLL;
    *(v75 + 40) = 0;
    *(v75 + 48) = 0;
    *(v75 + 56) = 0;
    *(v75 + 64) = 0;
    qword_1EE1AFA78 = v75;
    v76 = re::introspectionAllocator();
    v78 = re::introspect_float(1, v77);
    v79 = (*(*v76 + 32))(v76, 72, 8);
    *v79 = 1;
    *(v79 + 8) = "linearDamping";
    *(v79 + 16) = v78;
    *(v79 + 24) = 0;
    *(v79 + 32) = 0x9400000010;
    *(v79 + 40) = 0;
    *(v79 + 48) = 0;
    *(v79 + 56) = 0;
    *(v79 + 64) = 0;
    qword_1EE1AFA80 = v79;
    v80 = re::introspectionAllocator();
    v82 = re::introspect_float(1, v81);
    v83 = (*(*v80 + 32))(v80, 72, 8);
    *v83 = 1;
    *(v83 + 8) = "angularDamping";
    *(v83 + 16) = v82;
    *(v83 + 24) = 0;
    *(v83 + 32) = 0x9800000011;
    *(v83 + 40) = 0;
    *(v83 + 48) = 0;
    *(v83 + 56) = 0;
    *(v83 + 64) = 0;
    qword_1EE1AFA88 = v83;
    v84 = re::introspectionAllocator();
    v86 = re::introspect_BOOL(1, v85);
    v87 = (*(*v84 + 32))(v84, 72, 8);
    *v87 = 1;
    *(v87 + 8) = "gravityEnabled";
    *(v87 + 16) = v86;
    *(v87 + 24) = 0;
    *(v87 + 32) = 0x9C00000012;
    *(v87 + 40) = 0;
    *(v87 + 48) = 0;
    *(v87 + 56) = 0;
    *(v87 + 64) = 0;
    qword_1EE1AFA90 = v87;
    __cxa_guard_release(&qword_1EE1AF960);
  }

  *(this + 2) = 0x19000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 20;
  *(this + 8) = &qword_1EE1AF9F8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RigidBodyComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RigidBodyComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RigidBodyComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RigidBodyComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218RigidBodyComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v88 = v90;
}