void re::ecs2::TimebaseSystem::~TimebaseSystem(re::ecs2::TimebaseSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

__n128 re::make::shared::unsafelyInplace<re::ecs2::TimebaseComponent>(ArcSharedObject *a1)
{
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
  *v1 = &unk_1F5CE4B20;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0;
  v2 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(v1 + 88) = *MEMORY[0x1E6960CC0];
  v4 = *(v2 + 16);
  *(v1 + 104) = v4;
  *(v1 + 112) = result;
  *(v1 + 152) = 0;
  *(v1 + 128) = v4;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs217TimebaseComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TimebaseSystem::willRemoveComponents,re::ecs2::TimebaseSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 224))
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
        (*(**(a1 + 224) + 56))(*(a1 + 224), v8 + 32, 0);
        (*(**(a1 + 224) + 88))(*(a1 + 224), v8 + 32);
        v7 -= 8;
      }

      while (v7);
    }
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TimebaseSystem::didAddComponents,re::ecs2::TimebaseSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 224))
    {
      v5 = a4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 8 * a4;
      do
      {
        v9 = *a3++;
        v10 = *(a1 + 224);
        v12[0] = v7;
        v12[1] = 3221225472;
        v12[2] = ___ZN2re4ecs214TimebaseSystem16didAddComponentsEPNS0_24SceneComponentCollectionINS0_17TimebaseComponentEEENS_5SliceIPS3_EE_block_invoke;
        v12[3] = &__block_descriptor_40_e9_v16__0_v8l;
        v12[4] = v9;
        (*(*v10 + 56))(v10, v9 + 32, v12);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return 0;
}

void re::introspect_RenderPassGroupActiveState(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5068, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5070))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B50D8, "RenderPassGroupActiveState", 1, 1, 1, 1);
      qword_1EE1B50D8 = &unk_1F5D0C658;
      qword_1EE1B5118 = &re::introspect_RenderPassGroupActiveState(BOOL)::enumTable;
      dword_1EE1B50E8 = 9;
      __cxa_guard_release(&qword_1EE1B5070);
    }

    if (_MergedGlobals_397)
    {
      break;
    }

    _MergedGlobals_397 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B50D8, a2);
    v35 = 0xB4A8E64523292C66;
    v36 = "RenderPassGroupActiveState";
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
      v6 = qword_1EE1B5118;
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
      xmmword_1EE1B50F8 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE1B5068))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Always";
      qword_1EE1B50A8 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Never";
      qword_1EE1B50B0 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "DuringFade";
      qword_1EE1B50B8 = v33;
      __cxa_guard_release(&qword_1EE1B5068);
    }
  }
}

re::ecs2::RenderPassGroupComponent *re::ecs2::RenderPassGroupComponent::RenderPassGroupComponent(re::ecs2::RenderPassGroupComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5D00090;
  *(v2 + 25) = 0;
  *(v2 + 32) = 0;
  re::ecs2::EntityFactory::instance(v2);
  uuid_generate_random(v4);
  *(this + 4) = (v4[1] + (v4[0] << 6) + (v4[0] >> 2) - 0x61C8864680B583E9) ^ v4[0];
  return this;
}

void *re::ecs2::allocInfo_RenderPassGroupComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5078))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5120, "RenderPassGroupComponent");
    __cxa_guard_release(&qword_1EE1B5078);
  }

  return &unk_1EE1B5120;
}

void re::ecs2::initInfo_RenderPassGroupComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x58E548ED432D180ALL;
  v23[1] = "RenderPassGroupComponent";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1B5080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5080))
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
    qword_1EE1B50C0 = v14;
    v15 = re::introspectionAllocator();
    re::introspect_RenderPassGroupActiveState(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "activeState";
    *(v17 + 16) = &qword_1EE1B50D8;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1900000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B50C8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "renderOnTop";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1A00000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B50D0 = v21;
    __cxa_guard_release(&qword_1EE1B5080);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B50C0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderPassGroupComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderPassGroupComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderPassGroupComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderPassGroupComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224RenderPassGroupComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v22 = v24;
}

void *re::ecs2::allocInfo_RenderPassGroupReferenceComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5088, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5088))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B51B0, "RenderPassGroupReferenceComponent");
    __cxa_guard_release(&qword_1EE1B5088);
  }

  return &unk_1EE1B51B0;
}

void re::ecs2::initInfo_RenderPassGroupReferenceComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x60306C480623F7D4;
  v20[1] = "RenderPassGroupReferenceComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B5090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5090))
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
    qword_1EE1B5098 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::ecs2::introspect_EntityHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "owner";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B50A0 = v18;
    __cxa_guard_release(&qword_1EE1B5090);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B5098;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderPassGroupReferenceComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderPassGroupReferenceComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderPassGroupReferenceComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderPassGroupReferenceComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs233RenderPassGroupReferenceComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::RenderPassGroupReferenceComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v4 = (this + 32);
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 2) = 0;
  *(this + 24) = 0;
  *this = &unk_1F5CE8850;
  objc_initWeak(v4, 0);
  *(this + 5) = 0;
  *(this + 6) = 0;

  re::ecs2::EntityHandle::reset(v4);
}

void *re::internal::defaultDestruct<re::ecs2::RenderPassGroupReferenceComponent>(uint64_t a1, uint64_t a2, id *a3)
{
  re::ecs2::EntityHandle::reset((a3 + 4));
  objc_destroyWeak(a3 + 4);
  a3[4] = 0;
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::RenderPassGroupReferenceComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8850;
  objc_initWeak(v2, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;

  re::ecs2::EntityHandle::reset(v2);
}

void *re::internal::defaultDestructV2<re::ecs2::RenderPassGroupReferenceComponent>(id *a1)
{
  re::ecs2::EntityHandle::reset((a1 + 4));
  objc_destroyWeak(a1 + 4);
  a1[4] = 0;
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void re::ecs2::RenderPassGroupComponent::~RenderPassGroupComponent(re::ecs2::RenderPassGroupComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs224RenderPassGroupComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs233RenderPassGroupReferenceComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ecs2::MaterialParameterVariant::alloc(re::ecs2::MaterialParameterVariant *this)
{
  v1 = *this;
  if (v1 == 50)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == 49)
  {
    v3 = 9;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 48)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  if (v1 == 34)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (*this <= 0x30u)
  {
    v3 = v5;
  }

  if (v1 == 33)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  if (v1 == 32)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  if (v1 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (*this <= 0x21u)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

void *re::ecs2::allocInfo_MaterialParameterVariant(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5250))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5370, "MaterialParameterVariant");
    __cxa_guard_release(&qword_1EE1B5250);
  }

  return &unk_1EE1B5370;
}

void re::ecs2::initInfo_MaterialParameterVariant(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x54BED66A81F5A806;
  v20[1] = "MaterialParameterVariant";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B5248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5248))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_MaterialParameterType(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "ValueType";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B52B0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<float [16]>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_floatValues";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B52B8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_assetHandleValue";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B52C0 = v18;
    __cxa_guard_release(&qword_1EE1B5248);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B52B0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialParameterVariant>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialParameterVariant>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialParameterVariant>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialParameterVariant>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::MaterialParameterVariant>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::MaterialParameterVariant>(uint64_t result)
{
  *result = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  return result;
}

uint64_t re::ecs2::MaterialOverride::MaterialOverride(uint64_t a1, const re::AssetHandle *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  re::AssetHandle::AssetHandle(v4, a2);
  re::ecs2::MaterialOverride::setMaterialOrDefinition(a1, v4);
  re::AssetHandle::~AssetHandle(v4);
  return a1;
}

void re::ecs2::MaterialOverride::setMaterialOrDefinition(re::MaterialAsset *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a1 + 7) == v2 || *(a1 + 10) == v2)
  {
    return;
  }

  v5 = (a1 + 48);
  v6 = (a1 + 72);
  if (v2)
  {
    v7 = *(v2 + 280);
    v8 = re::MaterialAsset::assetType(a1);
    if (v7 == v8)
    {
      re::AssetHandle::operator=(a1 + 48, a2);
      if (*v6)
      {

        *v6 = 0;
      }

      *(a1 + 10) = 0;
      v9 = *(a1 + 7);
      if (v9)
      {
        v10 = atomic_load((v9 + 896));
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = re::MaterialAsset::assetType(a1);
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = *(v11 + 280);
    if (v12 != re::MaterialDefinitionAsset::assetType(v8) || *(a1 + 10) == a2[1])
    {
      return;
    }

    v13 = *(a1 + 7);
    if (v13)
    {
      v14 = atomic_load((v13 + 896));
      if (v14 == 2)
      {
        if (*v5)
        {

          *v5 = 0;
        }

        *(a1 + 7) = 0;
      }
    }

    re::AssetHandle::operator=(a1 + 72, a2);
    v15 = *(a1 + 10);
    if (v15)
    {
      v10 = atomic_load((v15 + 896));
      v5 = (a1 + 72);
LABEL_20:
      if (v10 == 2)
      {
        return;
      }

      goto LABEL_26;
    }

    v5 = (a1 + 72);
LABEL_26:

    re::AssetHandle::loadAsync(v5);
    return;
  }

  re::MaterialDefinitionAsset::assetType(v8);
}

void re::ecs2::MaterialOverride::setFloat(re::ecs2::MaterialOverride *this, const char *a2, float a3)
{
  __src = a3;
  v10 = 0;
  v11 = &str_67;
  memset(v9, 0, sizeof(v9));
  v7[0] = 1;
  v5 = re::ecs2::MaterialParameterVariant::alloc(v7);
  if (v5)
  {
    memcpy(&v8, &__src, (4 * v5));
  }

  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(this, &v10, v7);
  re::AssetHandle::~AssetHandle(v9);
  if (v10)
  {
    if (v10)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v14);
  v7 = HIDWORD(v15);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::ecs2::MaterialParameterVariant>(a1, &v14, a2, a3);
  }

  ++*(a1 + 40);
  v9 = *(a1 + 16) + 120 * v7;
  v8 = v9 + 24;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v12 = *(a3 + 48);
  *(v9 + 88) = *(a3 + 64);
  *(v9 + 72) = v12;
  *(v9 + 56) = v11;
  *(v9 + 40) = v10;
  *(v9 + 24) = *a3;
  re::AssetHandle::operator=(v9 + 96, (a3 + 72));
  return v8;
}

void re::ecs2::MaterialOverride::floatValue(re::ecs2::MaterialOverride *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v23[0] = 2 * v6;
  v23[1] = a2;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  v11 = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this, v23, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v21);
  if (v22 == 0x7FFFFFFF)
  {
    if (v23[0])
    {
      if (v23[0])
      {
      }
    }
  }

  else
  {
    v12 = *(this + 2) + 120 * v22 + 24;
    if (v23[0])
    {
      if (v23[0])
      {
      }
    }

    if (*v12 == 1)
    {
      v13 = *(v12 + 4);
      *a3 = 1;
LABEL_28:
      *(a3 + 4) = v13;
      return;
    }
  }

  v14 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 48));
  if (v14)
  {
    v15 = *(v14 + 1784);
    if (a2)
    {
      v16 = *a2;
      if (*a2)
      {
        v17 = a2[1];
        if (v17)
        {
          v18 = a2 + 2;
          do
          {
            v16 = 31 * v16 + v17;
            v19 = *v18++;
            v17 = v19;
          }

          while (v19);
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = v16 & 0x7FFFFFFFFFFFFFFFLL;
    re::MaterialParameterBlock::handle(v15, &v20, &v21);
    v20 = 0;
    if ((v22 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v21, 1))
    {
      v13 = *re::ShaderGraphMaterial::getConstant(v15, &v21);
      *a3 = 1;
      goto LABEL_28;
    }
  }

  *a3 = 0;
}

void re::ecs2::MaterialOverride::setVector2F(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
{
  v10 = 0;
  v11 = &str_67;
  __src = a3;
  memset(v9, 0, sizeof(v9));
  v7[0] = 32;
  v5 = re::ecs2::MaterialParameterVariant::alloc(v7);
  if (v5)
  {
    memcpy(&v8, &__src, (4 * v5));
  }

  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, &v10, v7);
  re::AssetHandle::~AssetHandle(v9);
  if (v10)
  {
    if (v10)
    {
    }
  }
}

void re::ecs2::MaterialOverride::vector2FValue(re::ecs2::MaterialOverride *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = 0;
  v22 = &str_67;
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v19 = 2 * v6;
  v20 = a2;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  Constant = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this, &v19, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v17);
  if (v18 == 0x7FFFFFFF)
  {
    if (v19)
    {
      if (v19)
      {
      }
    }

LABEL_17:
    Constant = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 48));
    if (Constant && (v14 = *(Constant + 1784), v16 = v21 >> 1, Constant = re::MaterialParameterBlock::handle(v14, &v16, &v17), v16 = 0, (v18 & 7) != 0) && (Constant = re::MaterialParameterHandle::isParameterType(&v17, 32), Constant))
    {
      Constant = re::ShaderGraphMaterial::getConstant(v14, &v17);
      v15 = *Constant;
      *a3 = 1;
      *(a3 + 8) = v15;
    }

    else
    {
      *a3 = 0;
    }

    goto LABEL_22;
  }

  v12 = *(this + 2) + 120 * v18;
  if (v19)
  {
    if (v19)
    {
    }
  }

  if (*(v12 + 24) != 32)
  {
    goto LABEL_17;
  }

  v13 = *(v12 + 28);
  *a3 = 1;
  *(a3 + 8) = v13;
LABEL_22:
  if (v21)
  {
    if (v21)
    {
    }
  }
}

void re::ecs2::MaterialOverride::setVector3F(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  __src[0] = a3;
  __src[1] = a4;
  v11 = 0;
  v12 = &str_67;
  memset(v10, 0, sizeof(v10));
  v8[0] = 33;
  v6 = re::ecs2::MaterialParameterVariant::alloc(v8);
  if (v6)
  {
    memcpy(&v9, __src, (4 * v6));
  }

  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, &v11, v8);
  re::AssetHandle::~AssetHandle(v10);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

void re::ecs2::MaterialOverride::vector3FValue(re::ecs2::MaterialOverride *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = 0;
  v23 = &str_67;
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v20 = 2 * v6;
  v21 = a2;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  Constant = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this, &v20, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v18);
  if (v19 == 0x7FFFFFFF)
  {
    if (v20)
    {
      if (v20)
      {
      }
    }

LABEL_17:
    Constant = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 48));
    if (Constant && (v14 = *(Constant + 1784), v17 = v22 >> 1, Constant = re::MaterialParameterBlock::handle(v14, &v17, &v18), v17 = 0, (v19 & 7) != 0) && (Constant = re::MaterialParameterHandle::isParameterType(&v18, 33), Constant))
    {
      Constant = re::ShaderGraphMaterial::getConstant(v14, &v18);
      v15 = *Constant;
      v16 = *(Constant + 8);
      *a3 = 1;
      *(a3 + 16) = v15;
      *(a3 + 24) = v16;
    }

    else
    {
      *a3 = 0;
    }

    goto LABEL_22;
  }

  v13 = *(this + 2) + 120 * v19 + 24;
  if (v20)
  {
    if (v20)
    {
    }
  }

  if (*v13 != 33)
  {
    goto LABEL_17;
  }

  *&v12 = *(v13 + 4);
  DWORD2(v12) = *(v13 + 12);
  *a3 = 1;
  *(a3 + 16) = v12;
LABEL_22:
  if (v22)
  {
    if (v22)
    {
    }
  }
}

void re::ecs2::MaterialOverride::setVector4F(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  __src[0] = a3;
  __src[1] = a4;
  v11 = 0;
  v12 = &str_67;
  memset(v10, 0, sizeof(v10));
  v8[0] = 34;
  v6 = re::ecs2::MaterialParameterVariant::alloc(v8);
  if (v6)
  {
    memcpy(&v9, __src, (4 * v6));
  }

  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, &v11, v8);
  re::AssetHandle::~AssetHandle(v10);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

void re::ecs2::MaterialOverride::vector4FValue(re::ecs2::MaterialOverride *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = 0;
  v23 = &str_67;
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v20 = 2 * v6;
  v21 = a2;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  Constant = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this, &v20, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v18);
  if (v19 == 0x7FFFFFFF)
  {
    if (v20)
    {
      if (v20)
      {
      }
    }

LABEL_17:
    Constant = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 48));
    if (Constant && (v14 = *(Constant + 1784), v17 = v22 >> 1, Constant = re::MaterialParameterBlock::handle(v14, &v17, &v18), v17 = 0, (v19 & 7) != 0) && (Constant = re::MaterialParameterHandle::isParameterType(&v18, 34), Constant))
    {
      Constant = re::ShaderGraphMaterial::getConstant(v14, &v18);
      v15 = *Constant;
      v16 = *(Constant + 8);
      *a3 = 1;
      *(a3 + 16) = v15;
      *(a3 + 24) = v16;
    }

    else
    {
      *a3 = 0;
    }

    goto LABEL_22;
  }

  v12 = *(this + 2) + 120 * v19;
  if (v20)
  {
    if (v20)
    {
    }
  }

  if (*(v12 + 24) != 34)
  {
    goto LABEL_17;
  }

  v13 = *(v12 + 28);
  *a3 = 1;
  *(a3 + 16) = v13;
LABEL_22:
  if (v22)
  {
    if (v22)
    {
    }
  }
}

void re::ecs2::MaterialOverride::setMatrix2x2F(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  __src[2] = *MEMORY[0x1E69E9840];
  __src[0] = a3;
  __src[1] = a4;
  v11 = 0;
  v12 = &str_67;
  memset(v10, 0, sizeof(v10));
  v8[0] = 48;
  v6 = re::ecs2::MaterialParameterVariant::alloc(v8);
  if (v6)
  {
    memcpy(&v9, __src, (4 * v6));
  }

  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, &v11, v8);
  re::AssetHandle::~AssetHandle(v10);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

void re::ecs2::MaterialOverride::matrix2x2FValue(re::ecs2::MaterialOverride *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = 0;
  v22 = &str_67;
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v19 = 2 * v6;
  v20 = a2;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  Constant = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this, &v19, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v17);
  if (v18 == 0x7FFFFFFF)
  {
    if (v19)
    {
      if (v19)
      {
      }
    }

LABEL_17:
    Constant = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 48));
    if (Constant && (v15 = *(Constant + 1784), v16 = v21 >> 1, Constant = re::MaterialParameterBlock::handle(v15, &v16, &v17), v16 = 0, (v18 & 7) != 0) && (Constant = re::MaterialParameterHandle::isParameterType(&v17, 48), Constant))
    {
      Constant = re::ShaderGraphMaterial::getConstant(v15, &v17);
      *a3 = 1;
      *(a3 + 8) = *Constant;
    }

    else
    {
      *a3 = 0;
    }

    goto LABEL_22;
  }

  v12 = *(this + 2) + 120 * v18;
  if (v19)
  {
    if (v19)
    {
    }
  }

  if (*(v12 + 24) != 48)
  {
    goto LABEL_17;
  }

  v13 = *(v12 + 28);
  v14 = *(v12 + 36);
  *a3 = 1;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
LABEL_22:
  if (v21)
  {
    if (v21)
    {
    }
  }
}

void re::ecs2::MaterialOverride::setMatrix3x3F(_anonymous_namespace_ *a1, const char *a2, const void *a3)
{
  v11 = 0;
  v12 = &str_67;
  memset(v10, 0, sizeof(v10));
  v8[0] = 49;
  v6 = re::ecs2::MaterialParameterVariant::alloc(v8);
  if (v6)
  {
    memcpy(&v9, a3, (4 * v6));
  }

  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, &v11, v8);
  re::AssetHandle::~AssetHandle(v10);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

void re::ecs2::MaterialOverride::matrix3x3FValue(re::ecs2::MaterialOverride *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = 0;
  v24 = &str_67;
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v21 = 2 * v6;
  v22 = a2;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  Constant = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this, &v21, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v19);
  if (v20 == 0x7FFFFFFF)
  {
    if (v21)
    {
      if (v21)
      {
      }
    }

LABEL_17:
    Constant = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 48));
    if (Constant && (v16 = *(Constant + 1784), v18 = v23 >> 1, Constant = re::MaterialParameterBlock::handle(v16, &v18, &v19), v18 = 0, (v20 & 7) != 0) && (Constant = re::MaterialParameterHandle::isParameterType(&v19, 49), Constant))
    {
      Constant = re::ShaderGraphMaterial::getConstant(v16, &v19);
      v17 = *(Constant + 16);
      *(a3 + 16) = *Constant;
      *(a3 + 32) = v17;
      *(a3 + 48) = *(Constant + 32);
      *a3 = 1;
    }

    else
    {
      *a3 = 0;
    }

    goto LABEL_22;
  }

  v15 = *(this + 2) + 120 * v20 + 24;
  if (v21)
  {
    if (v21)
    {
    }
  }

  if (*v15 != 49)
  {
    goto LABEL_17;
  }

  *&v12 = *(v15 + 4);
  *&v13 = *(v15 + 16);
  *&v14 = *(v15 + 28);
  DWORD2(v12) = *(v15 + 12);
  DWORD2(v13) = *(v15 + 24);
  DWORD2(v14) = *(v15 + 36);
  *a3 = 1;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
LABEL_22:
  if (v23)
  {
    if (v23)
    {
    }
  }
}

void re::ecs2::MaterialOverride::setMatrix4x4F(_anonymous_namespace_ *a1, const char *a2, const void *a3)
{
  v11 = 0;
  v12 = &str_67;
  memset(v10, 0, sizeof(v10));
  v8[0] = 50;
  v6 = re::ecs2::MaterialParameterVariant::alloc(v8);
  if (v6)
  {
    memcpy(&v9, a3, (4 * v6));
  }

  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, &v11, v8);
  re::AssetHandle::~AssetHandle(v10);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

void re::ecs2::MaterialOverride::matrix4x4FValue(re::ecs2::MaterialOverride *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = 0;
  v26 = &str_67;
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v23 = 2 * v6;
  v24 = a2;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  Constant = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this, &v23, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v21);
  if (v22 == 0x7FFFFFFF)
  {
    if (v23)
    {
      if (v23)
      {
      }
    }

LABEL_17:
    Constant = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 48));
    if (Constant && (v17 = *(Constant + 1784), v20 = v25 >> 1, Constant = re::MaterialParameterBlock::handle(v17, &v20, &v21), v20 = 0, (v22 & 7) != 0) && (Constant = re::MaterialParameterHandle::isParameterType(&v21, 50), Constant))
    {
      Constant = re::ShaderGraphMaterial::getConstant(v17, &v21);
      v18 = *(Constant + 16);
      *(a3 + 16) = *Constant;
      *(a3 + 32) = v18;
      v19 = *(Constant + 48);
      *(a3 + 48) = *(Constant + 32);
      *(a3 + 64) = v19;
      *a3 = 1;
    }

    else
    {
      *a3 = 0;
    }

    goto LABEL_22;
  }

  v12 = *(this + 2) + 120 * v22;
  if (v23)
  {
    if (v23)
    {
    }
  }

  if (*(v12 + 24) != 50)
  {
    goto LABEL_17;
  }

  v13 = *(v12 + 28);
  v14 = *(v12 + 44);
  v15 = *(v12 + 60);
  v16 = *(v12 + 76);
  *a3 = 1;
  *(a3 + 16) = v13;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  *(a3 + 64) = v16;
LABEL_22:
  if (v25)
  {
    if (v25)
    {
    }
  }
}

void re::ecs2::MaterialOverride::setTexture(_anonymous_namespace_ *a1, const char *a2, const re::AssetHandle *a3)
{
  v10 = 0;
  v11 = &str_67;
  re::AssetHandle::AssetHandle(v7, a3);
  memset(v9, 0, sizeof(v9));
  v8[0] = 64;
  re::AssetHandle::operator=(v9, v7);
  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, &v10, v8);
  re::AssetHandle::~AssetHandle(v9);
  re::AssetHandle::~AssetHandle(v7);
  if (v10)
  {
    if (v10)
    {
    }
  }
}

void re::ecs2::MaterialOverride::clearMarkedMaterial(re::ecs2::MaterialOverride *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    v3 = atomic_load((v1 + 896));
    if (v3 == 2)
    {
      v4 = *(this + 13);
      if (v4)
      {
        v5 = atomic_load((v4 + 896));
        if (v5 == 2)
        {
          ++*(*(this + 13) + 276);
          v6 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 96));
          if (v6)
          {
            *(v6 + 1768) = 0;
          }
        }
      }
    }

    v7 = *(this + 12);
    if (v7)
    {

      *(this + 12) = 0;
    }

    *(this + 13) = 0;
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5290))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B5320);
    qword_1EE1B5320 = &unk_1F5D001A8;
    __cxa_guard_release(&qword_1EE1B5290);
  }

  if ((_MergedGlobals_398 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B5258;
    if (!qword_1EE1B5258)
    {
      v4 = re::ecs2::allocInfo_MaterialParameterVariant(v2);
      qword_1EE1B5258 = v4;
      re::ecs2::initInfo_MaterialParameterVariant(v4, v5, v6, v7);
    }

    if ((_MergedGlobals_398 & 1) == 0)
    {
      _MergedGlobals_398 = 1;
      v8 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B5320, 0);
      qword_1EE1B5330 = 0x3000000007;
      dword_1EE1B5338 = v8;
      word_1EE1B533C = 0;
      *&xmmword_1EE1B5340 = 0;
      *(&xmmword_1EE1B5340 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B5350 = v3;
      unk_1EE1B5358 = 0;
      qword_1EE1B5360 = v4;
      unk_1EE1B5368 = 0;
      qword_1EE1B5320 = &unk_1F5D001A8;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v25, &qword_1EE1B5320);
      if (BYTE8(v25))
      {
        v11 = v26;
      }

      else
      {
        v11 = &v25 + 9;
      }

      if (v25 && (BYTE8(v25) & 1) != 0)
      {
        (*(*v25 + 40))();
      }

      v12 = *(v3 + 32);
      v20 = *(v4 + 2);
      v21 = v12;
      if (v32)
      {
        v19 = v32;
      }

      else
      {
        *&v25 = 0x449AD97C4B77BED4;
        *(&v25 + 1) = "_CompareFunc";
        if (v25)
        {
          if (v25)
          {
          }
        }

        if (!v31)
        {
          v27[0] = 0x449AD97C4B77BED4;
          v27[1] = "_CompareFunc";
          v31 = v25;
          if (v27[0])
          {
            if (v27[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v30, &v25 + 8);
        if (!v31 || (v16 = *v30[2], *&v25 = *(&v31 + 1), *(&v25 + 1) = v16, LODWORD(v26) = -1, (v17 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v30[0] + 768, &v25)) == 0) || !*v17)
        {
          v28 = v31;
          v29 = v21;
        }

        re::StackScratchAllocator::StackScratchAllocator(v27);
        re::TypeBuilder::TypeBuilder(&v25, v27);
        v23 = v20;
        v24 = v21;
        re::TypeBuilder::beginDictionaryType(&v25, &v22, 1, 0x30uLL, 8uLL, &v24, &v23);
        re::TypeBuilder::setConstructor(&v25, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v25, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v25, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v25, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v25, v18);
        re::StackScratchAllocator::~StackScratchAllocator(v27);
      }

      xmmword_1EE1B5340 = v19;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_MaterialOverride(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5268))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5400, "MaterialOverride");
    __cxa_guard_release(&qword_1EE1B5268);
  }

  return &unk_1EE1B5400;
}

void re::ecs2::initInfo_MaterialOverride(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x4BDA5D82C822466;
  v19[1] = "MaterialOverride";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1B5260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5260))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "parameters";
    *(v9 + 16) = &qword_1EE1B5320;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1B52C8 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::introspect_AssetHandle(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "m_material";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x3000000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1B52D0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_AssetHandle(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "m_materialDefinition";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B52D8 = v17;
    __cxa_guard_release(&qword_1EE1B5260);
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B52C8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialOverride>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialOverride>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialOverride>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialOverride>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

double re::internal::defaultConstruct<re::ecs2::MaterialOverride>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 0x7FFFFFFFLL;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  return result;
}

double re::internal::defaultDestruct<re::ecs2::MaterialOverride>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 12));
  re::AssetHandle::~AssetHandle((a3 + 9));
  re::AssetHandle::~AssetHandle((a3 + 6));

  return re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3);
}

double re::internal::defaultConstructV2<re::ecs2::MaterialOverride>(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::ecs2::MaterialOverride>(uint64_t *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 12));
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::AssetHandle::~AssetHandle((a1 + 6));

  return re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void *re::ecs2::allocInfo_MaterialOverrideComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5278))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5490, "MaterialOverrideComponent");
    __cxa_guard_release(&qword_1EE1B5278);
  }

  return &unk_1EE1B5490;
}

void re::ecs2::initInfo_MaterialOverrideComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v18[0] = 0xBB3DCAB0B6EBE814;
  v18[1] = "MaterialOverrideComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1B5280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5280))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "ecs2::Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B52A0 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::MaterialOverride>>::get(v15);
    v16 = (*(*v15 + 32))(v15, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "materialOverrides";
    *(v16 + 16) = &qword_1EE1B52E0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x2000000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1B52A8 = v16;
    __cxa_guard_release(&qword_1EE1B5280);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B52A0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialOverrideComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialOverrideComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialOverrideComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialOverrideComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225MaterialOverrideComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v17 = v19;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::MaterialOverride>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B5298, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B5298);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1B5298);
    }
  }

  if ((byte_1EE1B5241 & 1) == 0)
  {
    v1 = qword_1EE1B5270;
    if (qword_1EE1B5270 || (v1 = re::ecs2::allocInfo_MaterialOverride(a1), qword_1EE1B5270 = v1, re::ecs2::initInfo_MaterialOverride(v1, v2, v3, v4), (byte_1EE1B5241 & 1) == 0))
    {
      byte_1EE1B5241 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B52E0, 0);
      qword_1EE1B52F0 = 0x2800000003;
      *algn_1EE1B52F8 = v5;
      *&algn_1EE1B52F8[4] = 0;
      *&xmmword_1EE1B5300 = 0;
      *(&xmmword_1EE1B5300 + 1) = 0xFFFFFFFFLL;
      unk_1EE1B5310 = v1;
      qword_1EE1B5318 = 0;
      qword_1EE1B52E0 = &unk_1F5D00248;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B52E0);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B5300 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::ecs2::MaterialOverrideComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE88D8;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::MaterialOverrideComponent>(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE88D8;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
}

_anonymous_namespace_ *re::ecs2::MaterialOverrideSystem::willAddSystemToECSService(re::ecs2::MaterialOverrideSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v4);
  *(this + 30) = result;
  return result;
}

void *re::ecs2::MaterialOverrideSystem::willRemoveSystemFromECSService(void *this)
{
  this[28] = 0;
  this[29] = 0;
  this[30] = 0;
  return this;
}

double re::ecs2::MaterialOverrideSystem::willAddSceneToECSService(re::ecs2::MaterialOverrideSystem *this, re::ecs2::Scene *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v5 = this;
  *(&v5 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::MaterialOverrideSystem::willRemoveComponent,re::ecs2::MaterialOverrideSystem>;
  v6 = 0;
  v7 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 272), &v5);
}

void re::ecs2::MaterialOverrideSystem::willRemoveSceneFromECSService(re::ecs2::MaterialOverrideSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v4 = this;
  *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::MaterialOverrideSystem::willRemoveComponent,re::ecs2::MaterialOverrideSystem>;
  v5 = 0;
  v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 272, &v4);
}

void *re::ecs2::MaterialOverrideSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v108 = *MEMORY[0x1E69E9840];
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v83);
  v77 = a1;
  if (a1[30])
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v73 = &v6[v5];
      while (1)
      {
        v7 = v77[28];
        if (v7)
        {
          v78 = (*(v7 + 432) & 0x10) == 0;
        }

        else
        {
          v78 = 0;
        }

        v8 = *v6;
        v9 = re::ecs2::SceneComponentTable::get((*v6 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v74 = v6;
        if (v9)
        {
          v10 = *(v9 + 384);
        }

        else
        {
          v10 = 0;
        }

        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v94, 3027, v77, v10, 0, 0);
        v11 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v11)
        {
          v12 = *(v11 + 384);
          if (v12)
          {
            v13 = *(v11 + 400);
            v14 = v13 + 8 * v12;
            do
            {
              v15 = *(*v13 + 48);
              if (v15)
              {
                v16 = *(*v13 + 64);
                v17 = 120 * v15;
                do
                {
                  re::ecs2::MaterialOverride::clearMarkedMaterial(v16);
                  v16 = (v16 + 120);
                  v17 -= 120;
                }

                while (v17);
              }

              v13 += 8;
            }

            while (v13 != v14);
          }
        }

        v18 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v18)
        {
          v21 = *(v18 + 384);
          if (v21)
          {
            break;
          }
        }

LABEL_85:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v94, v19, v20);
        v6 = v74 + 1;
        if (v74 + 1 == v73)
        {
          return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v83);
        }
      }

      v22 = *(v18 + 400);
      v75 = &v22[v21];
      while (1)
      {
        v23 = *v22;
        v24 = *(*v22 + 48);
        v25 = *(*(*v22 + 16) + 192);
        if (v25)
        {
          if (v25[9] < v24)
          {
            break;
          }
        }

        if (v24)
        {
          v76 = v22;
          v26 = 0;
LABEL_25:
          v27 = 0;
          v82 = v23;
          v79 = v24;
          do
          {
            v28 = *(v23 + 48);
            if (v28 <= v27)
            {
              v84[0] = 0;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              __s2 = 0u;
              v65 = MEMORY[0x1E69E9C10];
              v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v95 = 136315906;
              v96 = "operator[]";
              v97 = 1024;
              if (v66)
              {
                v67 = 3;
              }

              else
              {
                v67 = 2;
              }

              v98 = 789;
              v99 = 2048;
              v100 = v27;
              v101 = 2048;
              v102 = v28;
              _os_log_send_and_compose_impl(v67, v84, &__s2, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v95, 38, v71, v72);
              _os_crash_msg();
              __break(1u);
LABEL_91:
              v84[0] = 0;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              __s2 = 0u;
              v68 = MEMORY[0x1E69E9C10];
              v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v95 = 136315906;
              v96 = "operator[]";
              v97 = 1024;
              if (v69)
              {
                v70 = 3;
              }

              else
              {
                v70 = 2;
              }

              v98 = 789;
              v99 = 2048;
              v100 = v27;
              v101 = 2048;
              v102 = v28;
              _os_log_send_and_compose_impl(v70, v84, &__s2, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v95, 38, v71, v72);
              _os_crash_msg();
              __break(1u);
LABEL_95:
              re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Unsupported m_material parameter type", "!Unreachable code", "updateInternal", 687);
              _os_crash("assertion failure: (!Unreachable code) Unsupported m_material parameter type");
              __break(1u);
LABEL_96:
              std::__throw_bad_variant_access[abi:nn200100]();
            }

            v29 = *(v23 + 64) + 120 * v27;
            v30 = *(v29 + 80);
            if (v30)
            {
              v31 = atomic_load((v30 + 896));
              if (v31 == 2)
              {
                if (*(v29 + 56) == 0 && !v78)
                {
                  v32 = v77[29];
                  if (v32)
                  {
                    v33 = v26;
                    v34 = v77[30];
                    re::AssetHandle::AssetHandle(v93, (v29 + 72));
                    v35 = v34;
                    v26 = v33;
                    re::AssetHelper::makeMutableMaterialMemoryAsset(v35, v32, v93, 2);
                    v36 = *(v29 + 56);
                    *(v29 + 56) = *(&__s2 + 1);
                    *(&__s2 + 1) = v36;
                    v37 = *(v29 + 48);
                    *(v29 + 48) = 0;
                    *(v29 + 48) = __s2;
                    *&__s2 = v37;
                    v38 = *(v29 + 64);
                    *(v29 + 64) = v104;
                    *&v104 = v38;
                    re::AssetHandle::~AssetHandle(&__s2);
                    re::AssetHandle::~AssetHandle(v93);
                  }
                }
              }

              else
              {
                re::AssetHandle::loadAsync((v29 + 72));
              }
            }

            if (v25)
            {
              v28 = v25[9];
              if (v28 <= v27)
              {
                goto LABEL_91;
              }

              v39 = v25[11] + 24 * v27;
              if (*(v39 + 8) != *(v29 + 56))
              {
                re::AssetHandle::operator=(v39, (v29 + 48));
                v26 = 1;
              }
            }

            v40 = *(v29 + 56);
            if (v40)
            {
              v41 = atomic_load((v40 + 896));
              if (v41 == 2)
              {
                ++*(*(v29 + 56) + 276);
                v42 = re::AssetHandle::loadedAsset<re::MaterialAsset>((v29 + 48));
                v43 = *(v29 + 32);
                if (v43)
                {
                  v44 = 0;
                  v45 = *(v29 + 16);
                  while (1)
                  {
                    v46 = *v45;
                    v45 += 30;
                    if (v46 < 0)
                    {
                      break;
                    }

                    if (v43 == ++v44)
                    {
                      LODWORD(v44) = *(v29 + 32);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v44) = 0;
                }

                if (v44 != v43)
                {
                  v80 = v26;
                  v81 = 0;
                  do
                  {
                    v47 = *(v29 + 16) + 120 * v44;
                    v48 = *(v42 + 1784);
                    re::MaterialParameterBlock::handle(&v95, v48, *(v47 + 16));
                    isParameterType = re::MaterialParameterHandle::isParameterType(&v95, 0);
                    v55 = *(v47 + 24);
                    v54 = v47 + 24;
                    v53 = v55;
                    if (isParameterType || re::MaterialParameterHandle::isParameterType(&v95, v53))
                    {
                      if (v53 > 47)
                      {
                        if (v53 > 49)
                        {
                          if (v53 == 50)
                          {
                            v60 = *(v54 + 20);
                            v61 = *(v54 + 36);
                            v62 = *(v54 + 52);
                            __s2 = *(v54 + 4);
                            v104 = v60;
                            v105 = v61;
                            v106 = v62;
                            re::MaterialParameterBlock::setConstant(v86, 0x40uLL, &__s2, v48, &v95, 50);
                            v86[0] = 0;
                          }

                          else
                          {
                            if (v53 != 64)
                            {
                              goto LABEL_95;
                            }

                            v56 = re::AssetHandle::AssetHandle(&__s2, (v54 + 72));
                            if (*(&__s2 + 1) && (v57 = atomic_load((*(&__s2 + 1) + 896)), v57 == 2))
                            {
                              v58 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v56);
                              if (*(v58 + 120))
                              {
                                goto LABEL_96;
                              }

                              re::TextureManager::registerTexture(*(*(v48 + 121) + 56), (v58 + 112), v84);
                              re::MaterialParameterBlock::setTextureHandle(v48, &v95, v84, v85);
                              v85[0] = 0;
                              re::TextureHandle::invalidate(v84);
                            }

                            else
                            {
                              re::AssetHandle::loadAsync(v56);
                              v81 = 1;
                            }

                            re::AssetHandle::~AssetHandle(&__s2);
                          }
                        }

                        else if (v53 == 48)
                        {
                          v59 = *(v54 + 12);
                          *&__s2 = *(v54 + 4);
                          *(&__s2 + 1) = v59;
                          re::MaterialParameterBlock::setConstant(v88, 0x10uLL, &__s2, v48, &v95, 48);
                          v88[0] = 0;
                        }

                        else
                        {
                          *&v50 = *(v54 + 4);
                          *&v51 = *(v54 + 16);
                          *&v52 = *(v54 + 28);
                          DWORD2(v50) = *(v54 + 12);
                          DWORD2(v51) = *(v54 + 24);
                          DWORD2(v52) = *(v54 + 36);
                          __s2 = v50;
                          v104 = v51;
                          v105 = v52;
                          re::MaterialParameterBlock::setConstant(v87, 0x30uLL, &__s2, v48, &v95, 49);
                          v87[0] = 0;
                        }
                      }

                      else if (v53 > 32)
                      {
                        if (v53 == 33)
                        {
                          *&v50 = *(v54 + 4);
                          DWORD2(v50) = *(v54 + 12);
                          __s2 = v50;
                          re::MaterialParameterBlock::setConstant(v90, 0x10uLL, &__s2, v48, &v95, 33);
                          v90[0] = 0;
                        }

                        else
                        {
                          if (v53 != 34)
                          {
                            goto LABEL_95;
                          }

                          __s2 = *(v54 + 4);
                          re::MaterialParameterBlock::setConstant(v89, 0x10uLL, &__s2, v48, &v95, 34);
                          v89[0] = 0;
                        }
                      }

                      else if (v53 == 1)
                      {
                        LODWORD(__s2) = *(v54 + 4);
                        re::MaterialParameterBlock::setConstant(v92, 4uLL, &__s2, v48, &v95, 1);
                        v92[0] = 0;
                      }

                      else
                      {
                        if (v53 != 32)
                        {
                          goto LABEL_95;
                        }

                        *&__s2 = *(v54 + 4);
                        re::MaterialParameterBlock::setConstant(v91, 8uLL, &__s2, v48, &v95, 32);
                        v91[0] = 0;
                      }
                    }

                    v63 = *(v29 + 32);
                    if (v63 <= v44 + 1)
                    {
                      v63 = v44 + 1;
                    }

                    while (v63 - 1 != v44)
                    {
                      LODWORD(v44) = v44 + 1;
                      if ((*(*(v29 + 16) + 120 * v44) & 0x80000000) != 0)
                      {
                        goto LABEL_78;
                      }
                    }

                    LODWORD(v44) = v63;
LABEL_78:
                    ;
                  }

                  while (v44 != v43);
                  v24 = v79;
                  v26 = v80;
                  if (v81)
                  {
                    *(v42 + 1768) = 1;
                    re::AssetHandle::operator=(v29 + 96, (v29 + 48));
                  }
                }
              }
            }

            ++v27;
            v23 = v82;
          }

          while (v27 != v24);
          v22 = v76;
          if (v26)
          {
            re::ecs2::Component::markDirty(v25);
          }
        }

        if (++v22 == v75)
        {
          goto LABEL_85;
        }
      }

      v76 = v22;
      re::DynamicArray<re::AssetHandle>::resize((v25 + 7), v24);
      v26 = 1;
      goto LABEL_25;
    }
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v83);
}

void *re::ecs2::allocInfo_MaterialOverrideSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5288))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5520, "MaterialOverrideSystem");
    __cxa_guard_release(&qword_1EE1B5288);
  }

  return &unk_1EE1B5520;
}

void re::ecs2::initInfo_MaterialOverrideSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xD2A25A77E0157C84;
  v8[1] = "MaterialOverrideSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xF800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MaterialOverrideSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialOverrideSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialOverrideSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MaterialOverrideSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MaterialOverrideSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialOverrideSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialOverrideSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::MaterialOverrideSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 240) = 0;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5D00118;
  result[29] = 0;
  result[30] = 0;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::MaterialOverrideSystem>(uint64_t a1)
{
  *(a1 + 240) = 0;
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
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5D00118;
  result[29] = 0;
  result[30] = 0;
  result[28] = 0;
  return result;
}

void re::ecs2::MaterialOverrideSystem::~MaterialOverrideSystem(re::ecs2::MaterialOverrideSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::ecs2::MaterialParameterVariant>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
  *(v7 + 8) = *a3 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v7 + 16) = a3[1];
  *a3 = 0;
  a3[1] = &str_67;
  *(v7 + 24) = *a4;
  v10 = *(a4 + 32);
  v9 = *(a4 + 48);
  LODWORD(v8) = *(a4 + 64);
  *(v7 + 40) = *(a4 + 16);
  *(v7 + 88) = v8;
  *(v7 + 72) = v9;
  *(v7 + 56) = v10;
  re::AssetHandle::AssetHandle((v7 + 96), (a4 + 72));
  ++*(a1 + 40);
  return v7 + 24;
}

uint64_t re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 120 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 120 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 120 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 120 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 120 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 120 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 120 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 120 * v4;
}

void re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v23, 0, 36);
      *&v23[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v23, v4, a2);
      v5 = *v23;
      *v23 = *a1;
      *a1 = v5;
      v6 = *&v23[16];
      v7 = *(a1 + 16);
      *&v23[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v23[24];
      *&v23[24] = *(a1 + 24);
      v8 = *&v23[32];
      *(a1 + 24) = v9;
      ++*&v23[40];
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if ((*(v7 + v11) & 0x80000000) != 0)
          {
            v13 = v7 + v11;
            v14 = 0xBF58476D1CE4E5B9 * ((*(v13 + 8) >> 31) ^ (*(v13 + 8) >> 1));
            v15 = (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31);
            v16 = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v15 % *(a1 + 24), v15);
            v17 = *(v13 + 8);
            *(v16 + 8) = *(v16 + 8) & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
            *(v16 + 8) = *(v13 + 8) & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
            *(v16 + 16) = *(v13 + 16);
            *(v13 + 8) = 0;
            *(v13 + 16) = &str_67;
            v7 = *&v23[16];
            v18 = *&v23[16] + v11;
            v19 = *(*&v23[16] + v11 + 56);
            v20 = *(*&v23[16] + v11 + 72);
            v21 = *(*&v23[16] + v11 + 88);
            *(v16 + 40) = *(*&v23[16] + v11 + 40);
            *(v16 + 88) = v21;
            *(v16 + 72) = v20;
            *(v16 + 56) = v19;
            *(v16 + 24) = *(v18 + 24);
            re::AssetHandle::AssetHandle((v16 + 96), (v18 + 96));
            v10 = *&v23[32];
          }

          ++v12;
          v11 += 120;
        }

        while (v12 < v10);
      }

      re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v23);
    }
  }

  else
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 3;
    }
  }
}

void *re::IntrospectionHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  memset(v10, 0, sizeof(v10));
  v8 = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  re::AssetHandle::~AssetHandle((&v10[4] + 8));
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 30;
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
    v10 = *(a2 + 16) + 120 * v6;
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
      if ((*(*(a2 + 16) + 120 * v6) & 0x80000000) != 0)
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

void re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
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
        re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 120;
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

uint64_t re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t a3)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v18);
  v7 = HIDWORD(v19);
  if (HIDWORD(v19) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v19, v18);
    re::StringID::StringID((v8 + 8), a2);
    v9 = v8 + 24;
    *(v8 + 24) = *a3;
    v10 = *(a3 + 16);
    v11 = *(a3 + 32);
    v12 = *(a3 + 48);
    *(v8 + 88) = *(a3 + 64);
    *(v8 + 72) = v12;
    *(v8 + 56) = v11;
    *(v8 + 40) = v10;
    re::AssetHandle::AssetHandle((v8 + 96), (a3 + 72));
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v13 = *(a1 + 16) + 120 * v7;
    v9 = v13 + 24;
    v14 = *(a3 + 16);
    v15 = *(a3 + 32);
    v16 = *(a3 + 48);
    *(v13 + 88) = *(a3 + 64);
    *(v13 + 72) = v16;
    *(v13 + 56) = v15;
    *(v13 + 40) = v14;
    *(v13 + 24) = *a3;
    re::AssetHandle::operator=(v13 + 96, (a3 + 72));
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 120 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 120 * v4) & 0x80000000) != 0)
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
          v5 += 30;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 120 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 120 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1B52E0, 0);
  *(&qword_1EE1B52F0 + 6) = 0;
  qword_1EE1B52F0 = 0;
  *&xmmword_1EE1B5300 = 0;
  *(&xmmword_1EE1B5300 + 1) = 0xFFFFFFFFLL;
  qword_1EE1B52E0 = &unk_1F5CADA48;
  qword_1EE1B5318 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&unk_1EE1B5310);
  qword_1EE1B52E0 = &unk_1F5D00248;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::MaterialOverride>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::MaterialOverride>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  DWORD1(v11) = 0x7FFFFFFF;
  v13 = 0u;
  v14 = 0;
  re::DynamicArray<re::ecs2::MaterialOverride>::add(this, v10);
  re::AssetHandle::~AssetHandle(&v13);
  re::AssetHandle::~AssetHandle((&v12[1] + 8));
  re::AssetHandle::~AssetHandle(v12);
  re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v10);
  v8 = (*(this + 4) + 120 * *(this + 2) - 120);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::MaterialOverride>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 120 * a3;
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

  return *(a2 + 32) + 120 * a3;
}

void *re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(v5, a2);
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
        v10 = &v8[15 * v9];
        v11 = v7;
        do
        {
          *(v11 + 8) = 0;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          *(v11 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11, v8);
          v11[6] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[7] = v8[7];
          v8[7] = 0;
          v12 = v11[6];
          v11[6] = 0;
          v11[6] = v8[6];
          v8[6] = v12;
          v13 = v11[8];
          v11[8] = v8[8];
          v8[8] = v13;
          v11[9] = 0;
          v11[10] = 0;
          v11[11] = 0;
          v11[10] = v8[10];
          v8[10] = 0;
          v14 = v11[9];
          v11[9] = 0;
          v11[9] = v8[9];
          v8[9] = v14;
          v15 = v11[11];
          v11[11] = v8[11];
          v8[11] = v15;
          v11[12] = 0;
          v11[13] = 0;
          v11[14] = 0;
          v11[13] = v8[13];
          v8[13] = 0;
          v16 = v11[12];
          v11[12] = 0;
          v11[12] = v8[12];
          v8[12] = v16;
          v17 = v11[14];
          v11[14] = v8[14];
          v8[14] = v17;
          re::AssetHandle::~AssetHandle((v8 + 12));
          re::AssetHandle::~AssetHandle((v8 + 9));
          re::AssetHandle::~AssetHandle((v8 + 6));
          re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v8);
          v8 += 15;
          v11 += 15;
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

void re::DynamicArray<re::ecs2::MaterialOverride>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 120 * a2;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::AssetHandle::~AssetHandle((v10 + 12));
      re::AssetHandle::~AssetHandle((v10 + 9));
      re::AssetHandle::~AssetHandle((v10 + 6));
      re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v10);
      ++v9;
      v8 += 120;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 120 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 36) = 0x7FFFFFFF;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 96) = 0uLL;
        *(v7 + 112) = 0;
        v6 += 120;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t *re::DynamicArray<re::ecs2::MaterialOverride>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::MaterialOverride>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 120 * v4;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v5, a2);
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 56) = a2[7];
  a2[7] = 0;
  v7 = *(v5 + 48);
  *(v5 + 48) = 0;
  *(v5 + 48) = a2[6];
  a2[6] = v7;
  v8 = *(v5 + 64);
  *(v5 + 64) = a2[8];
  a2[8] = v8;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 80) = a2[10];
  a2[10] = 0;
  v9 = *(v5 + 72);
  *(v5 + 72) = 0;
  *(v5 + 72) = a2[9];
  a2[9] = v9;
  v10 = *(v5 + 88);
  *(v5 + 88) = a2[11];
  a2[11] = v10;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 104) = a2[13];
  a2[13] = 0;
  v11 = *(v5 + 96);
  *(v5 + 96) = 0;
  *(v5 + 96) = a2[12];
  a2[12] = v11;
  v12 = *(v5 + 112);
  *(v5 + 112) = a2[14];
  a2[14] = v12;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::MaterialOverride>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 120 * v8;
      do
      {
        re::AssetHandle::~AssetHandle((v9 + 12));
        re::AssetHandle::~AssetHandle((v9 + 9));
        re::AssetHandle::~AssetHandle((v9 + 6));
        re::HashTable<re::StringID,re::ecs2::MaterialParameterVariant,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
        v9 += 15;
        v10 -= 120;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::ecs2::MaterialOverride>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::MaterialOverride>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ecs2::MaterialOverride>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 120 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 120;
        v14 -= 120;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 120 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 120 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::MaterialOverride>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs225MaterialOverrideComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::MaterialOverrideSystem::willRemoveComponent,re::ecs2::MaterialOverrideSystem>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v5 = a3 + 8 * a4;
    do
    {
      v6 = *(*v4 + 48);
      if (v6)
      {
        v7 = *(*v4 + 64);
        v8 = 120 * v6;
        do
        {
          re::ecs2::MaterialOverride::clearMarkedMaterial(v7);
          v7 = (v7 + 120);
          v8 -= 120;
        }

        while (v8);
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::MaterialOverrideComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

re *re::ecs2::ECSStateCommand::commandEntity(re::ecs2::ECSStateCommand *this, const re::BindPoint *a2)
{
  v37[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 6) || !re::BindPoint::isAlive((this + 24)) || (v4 = re::BindPoint::valueUntyped((this + 24))) == 0)
  {
    if (*(a2 + 3) && re::BindPoint::isAlive(a2))
    {
      v5 = re::BindPoint::valueUntyped(a2);
      v4 = v5;
      if (*(this + 1) <= 1uLL)
      {
        v6 = *(this + 2);
        if (v6)
        {
          if (!*v6)
          {
            *(this + 3) = *a2;
            re::DynamicArray<re::BindPoint::BindPointData>::operator=(this + 32, a2 + 1);
            return v4;
          }
        }
      }

      re::makeBindNode(v37, v5);
      v7 = strlen(*(this + 2));
      *buf = *(this + 2);
      *&buf[8] = v7;
      {
        re::introspect<re::ecs2::Entity>(BOOL)::info = re::ecs2::introspect_Entity(0, v24, v25, v26, v27, v28);
      }

      re::BindNode::bindPoint(&v34, v37, re::introspect<re::ecs2::Entity>(BOOL)::info, buf);
      if (!v35[2] || (isAlive = re::BindPoint::isAlive(&v34), !isAlive) || (isAlive = re::BindPoint::valueUntyped(&v34), (v9 = isAlive) == 0))
      {
        if (!v4)
        {
          goto LABEL_49;
        }

        v10 = *(v4 + 43);
        if (!v10)
        {
          goto LABEL_49;
        }

        v11 = *(v4 + 45);
        v12 = 8 * v10;
        while (1)
        {
          v9 = *v11;
          isAlive = re::StringID::operator==((*v11 + 288), this + 1);
          if (isAlive)
          {
            break;
          }

          ++v11;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_21;
          }
        }

        if (!v9)
        {
LABEL_49:
          do
          {
LABEL_21:
            v13 = v4;
            v4 = *(v4 + 4);
          }

          while (v4);
          v14 = *(v13 + 3);
          v15 = *(v14 + 128);
          if (!v15)
          {
            goto LABEL_37;
          }

          v16 = *(v14 + 144);
          v17 = &v16[v15];
          while (1)
          {
            v9 = *v16;
            isAlive = re::StringID::operator==((*v16 + 288), this + 1);
            if (isAlive)
            {
              break;
            }

            if ((*(v9 + 304) & 0x20) != 0)
            {
              v18 = *(v9 + 344);
              if (v18)
              {
                v19 = *(v9 + 360);
                v20 = 8 * v18;
                while (1)
                {
                  v9 = *v19;
                  isAlive = re::StringID::operator==((*v19 + 288), this + 1);
                  if (isAlive)
                  {
                    break;
                  }

                  ++v19;
                  v20 -= 8;
                  if (!v20)
                  {
                    goto LABEL_32;
                  }
                }

                if (v9)
                {
                  goto LABEL_35;
                }
              }
            }

LABEL_32:
            if (++v16 == v17)
            {
              goto LABEL_37;
            }
          }

          if (!v9)
          {
LABEL_37:
            v21 = *re::foundationCoreLogObjects(isAlive);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v23 = *(this + 2);
              *buf = 136315138;
              *&buf[4] = v23;
              _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Cannot create targetEntityBindPoint from %s.", buf, 0xCu);
            }

            v9 = 0;
LABEL_40:
            re::DynamicArray<re::BindPoint::BindPointData>::deinit(v35);
            re::DynamicArray<re::BindPoint::BindPointData>::deinit(v35);
            re::BindNode::deinit(v37);
            return v9;
          }
        }
      }

LABEL_35:
      {
        re::introspect<re::ecs2::Entity>(BOOL)::info = re::ecs2::introspect_Entity(0, v29, v30, v31, v32, v33);
      }

      re::makeBindPoint(buf, re::introspect<re::ecs2::Entity>(BOOL)::info, v9);
      *(this + 3) = *buf;
      re::DynamicArray<re::RigDataValue>::operator=(this + 32, &buf[8]);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
      goto LABEL_40;
    }

    return 0;
  }

  return v4;
}

unint64_t *re::ecs2::AnimationPlayCommand::setParameter(unint64_t *this, const re::StringID *a2, const re::StringID *a3)
{
  if (*a2 >> 1 == 0x6E8A02F1A8ADD80FLL)
  {
    v4 = this;
    v5 = *(a2 + 1);
    if (v5 == "AnimationName" || (this = strcmp(v5, "AnimationName"), !this))
    {

      return re::StringID::operator=(v4 + 10, a3);
    }
  }

  return this;
}

char *re::ecs2::AnimationPlayCommand::setParameter(char *this, const re::StringID *a2, char a3)
{
  if (*a2 >> 1 == 0x1A4DFD60A1B7848DLL)
  {
    v4 = this;
    this = *(a2 + 1);
    if (this == "SetExitTimeFromAnimation" || (this = strcmp(this, "SetExitTimeFromAnimation"), !this))
    {
      v4[96] = a3;
    }
  }

  return this;
}

unint64_t *re::ecs2::AnimationPlayCommand::getParameter(unint64_t *this, const re::StringID *a2, re::StringID *a3)
{
  if (*a2 >> 1 == 0x6E8A02F1A8ADD80FLL)
  {
    v4 = this;
    v5 = *(a2 + 1);
    if (v5 == "AnimationName" || (this = strcmp(v5, "AnimationName"), !this))
    {

      return re::StringID::operator=(a3, v4 + 10);
    }
  }

  return this;
}

char *re::ecs2::AnimationPlayCommand::getParameter(char *this, const re::StringID *a2, BOOL *a3)
{
  if (*a2 >> 1 == 0x1A4DFD60A1B7848DLL)
  {
    v4 = this;
    this = *(a2 + 1);
    if (this == "SetExitTimeFromAnimation" || (this = strcmp(this, "SetExitTimeFromAnimation"), !this))
    {
      *a3 = v4[96];
    }
  }

  return this;
}

void re::ecs2::AnimationPlayCommand::executeCommand(uint64_t a1, uint64_t a2, uint64_t a3, int a4, re::BindPoint *a5)
{
  v8 = re::ecs2::ECSStateCommand::commandEntity(a1, a5);
  if (v8)
  {
    v9 = v8;
    v10 = re::ecs2::EntityComponentCollection::getOrAdd((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v11 = re::ecs2::EntityComponentCollection::get((v9 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v11)
    {
      v12 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((v11 + 32));
      if (v12)
      {
        v13 = v12;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v14 = *(v12 + 136);
        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = *(v12 + 152);
        v16 = 24 * v14;
        while (1)
        {
          v17 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
          v18 = *(v15 + 1);
          if (v18)
          {
            v18 = v18[35];
          }

          if (v17 == v18)
          {
            v23 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(v15);
            if (!v23)
            {
              goto LABEL_17;
            }

            v24 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v23);
            if (!v24)
            {
              goto LABEL_17;
            }

            v22 = *(v24 + 16);
            if (!v22)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v19 = re::TimelineAsset::assetType(v17);
            v20 = *(v15 + 1);
            if (!v20)
            {
              goto LABEL_17;
            }

            if (v19 != *(v20 + 280))
            {
              goto LABEL_17;
            }

            v21 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v15);
            if (!v21)
            {
              goto LABEL_17;
            }

            v22 = *(v21 + 8);
          }

          if (re::StringID::operator==((v22 + 24), (a1 + 80)))
          {
            re::AssetHandle::operator=(&v65, v15);
            if (v66)
            {
              goto LABEL_38;
            }

LABEL_18:
            v25 = v13[12];
            if (!v25)
            {
              goto LABEL_24;
            }

            v26 = v13[14];
            v27 = 40 * v25;
            while (!re::StringID::operator==((a1 + 80), v26))
            {
              v26 += 5;
              v27 -= 40;
              if (!v27)
              {
                goto LABEL_24;
              }
            }

            re::AssetHandle::operator=(&v65, v26 + 2);
            if (!v66)
            {
LABEL_24:
              v28 = v13[7];
              if (!v28)
              {
                goto LABEL_30;
              }

              v29 = v13[9];
              v30 = 40 * v28;
              while (!re::StringID::operator==((a1 + 80), v29))
              {
                v29 += 5;
                v30 -= 40;
                if (!v30)
                {
                  goto LABEL_30;
                }
              }

              re::AssetHandle::operator=(&v65, v29 + 2);
              if (!v66)
              {
LABEL_30:
                v31 = v13[2];
                if (!v31)
                {
                  goto LABEL_73;
                }

                v32 = (v13[4] + 72);
                v33 = 120 * v31;
                while (!re::StringID::operator==((a1 + 80), v32 - 2))
                {
                  v32 += 15;
                  v33 -= 120;
                  if (!v33)
                  {
                    goto LABEL_73;
                  }
                }

                re::AssetHandle::operator=(&v65, v32);
                if (!v66)
                {
LABEL_73:
                  re::AssetHandle::~AssetHandle(&v65);
                  return;
                }
              }
            }

LABEL_38:
            if (*(a1 + 96) == 1)
            {
              v34 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
              v35 = v66;
              if (v66)
              {
                v35 = *(v66 + 280);
              }

              if (v34 == v35)
              {
                v39 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(&v65);
                v37 = 0.0;
                if (v39)
                {
                  v40 = v39;
                  v41 = re::TimelineAsset::assetType(v39);
                  v42 = *(v40 + 1);
                  if (v42)
                  {
                    if (v41 == *(v42 + 280))
                    {
                      v38 = v40;
LABEL_49:
                      v43 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v38);
                      if (v43)
                      {
                        v44 = *(v43 + 16);
                        if (v44)
                        {
                          v37 = (*(*v44 + 40))(v44);
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v36 = re::TimelineAsset::assetType(v34);
                v37 = 0.0;
                if (v66 && v36 == *(v66 + 280))
                {
                  v38 = &v65;
                  goto LABEL_49;
                }
              }

              v45 = re::StateMachine::currentState(a2, a3);
              v46 = *(v45 + 24);
              v47 = 0.0;
              v48 = 0.0;
              if (v46)
              {
                v49 = *(v45 + 40);
                v50 = 8 * v46;
                do
                {
                  v51 = *v49++;
                  v52 = *(v51 + 72);
                  if (v48 < v52)
                  {
                    v48 = v52;
                  }

                  v50 -= 8;
                }

                while (v50);
              }

              if (v37 > v48)
              {
                v47 = v37 - v48;
              }

              if (v47 >= 0.0)
              {
                *(v45 + 104) = v47;
              }
            }

            BYTE8(v63) = 0;
            HIDWORD(v63) = 0x80000000;
            v64 = "";
            LODWORD(v63) = 0;
            DWORD1(v63) = *(a2 + 40);
            re::AssetHandle::AssetHandle(v62, &v65);
            *(a1 + 72) = re::ecs2::AnimationComponent::play(v10, v62, &v63, 0, 0);
            re::AssetHandle::~AssetHandle(v62);
            re::ecs2::Component::markDirty(v10);
            v53 = re::StateMachine::previousState(a2, a3);
            if (v53)
            {
              re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(&v59, (v53 + 48));
              v54 = v61;
              if (v60)
              {
                v55 = 8 * v60;
                v56 = v61;
                do
                {
                  if (*v56)
                  {
                    if (v57)
                    {
                      v57[9] = 0;
                    }
                  }

                  ++v56;
                  v55 -= 8;
                }

                while (v55);
              }

              if (v59)
              {
                v58 = v54 == 0;
              }

              else
              {
                v58 = 1;
              }

              if (!v58)
              {
                (*(*v59 + 40))();
              }
            }

            goto LABEL_73;
          }

LABEL_17:
          v15 = (v15 + 24);
          v16 -= 24;
          if (!v16)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }
}

uint64_t re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(re::AnimationLibraryAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::AnimationLibraryAsset::assetType(a1);
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

uint64_t re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(re::AssetHandle *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
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

uint64_t re::ecs2::AnimationStopCommand::executeCommand(re::ecs2::ECSStateCommand *a1, uint64_t a2, uint64_t a3, int a4, re::BindPoint *a5)
{
  result = re::ecs2::ECSStateCommand::commandEntity(a1, a5);
  if (result)
  {
    result = re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v8 = result;
      result = re::StateMachine::previousState(a2, a3);
      if (result)
      {
        re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(&v14, (result + 48));
        if (v15)
        {
          v9 = v16;
          v10 = 8 * v15;
          do
          {
            if (*v9)
            {
              if (v11)
              {
                v12 = v11;
                v13 = v11[9];
                if (v13)
                {
                  re::ecs2::AnimationComponent::stop(v8, v13, 0.0);
                  re::ecs2::Component::markDirty(v8);
                  v12[9] = 0;
                }
              }
            }

            ++v9;
            v10 -= 8;
          }

          while (v10);
        }

        result = v14;
        if (v14)
        {
          if (v16)
          {
            return (*(*v14 + 40))();
          }
        }
      }
    }
  }

  return result;
}

re *re::ecs2::AnimationStopAllCommand::executeCommand(re::ecs2::ECSStateCommand *a1, int a2, int a3, int a4, re::BindPoint *a5)
{
  result = re::ecs2::ECSStateCommand::commandEntity(a1, a5);
  if (result)
  {
    result = re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v6 = result;
      re::ecs2::AnimationComponent::stopAll(result);

      return re::ecs2::Component::markDirty(v6);
    }
  }

  return result;
}

char *re::ecs2::AnimationSetPlaybackTimeCommand::setParameter(char *this, const re::StringID *a2, double a3)
{
  if (*a2 >> 1 == 0x1D797F455A966BA8)
  {
    v4 = this;
    this = *(a2 + 1);
    if (this == "PlaybackTime" || (this = strcmp(this, "PlaybackTime"), !this))
    {
      *(v4 + 10) = a3;
    }
  }

  return this;
}

double re::ecs2::AnimationSetPlaybackTimeCommand::getParameter(re::ecs2::AnimationSetPlaybackTimeCommand *this, const re::StringID *a2, double *a3)
{
  if (*a2 >> 1 == 0x1D797F455A966BA8)
  {
    v5 = *(a2 + 1);
    if (v5 == "PlaybackTime" || !strcmp(v5, "PlaybackTime"))
    {
      result = *(this + 10);
      *a3 = result;
    }
  }

  return result;
}

void *re::ecs2::AnimationSetPlaybackTimeCommand::executeCommand(uint64_t a1, uint64_t a2, uint64_t a3, int a4, re::BindPoint *a5)
{
  result = re::ecs2::ECSStateCommand::commandEntity(a1, a5);
  if (result)
  {
    result = re::ecs2::EntityComponentCollection::get((result + 6), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v9 = result;
      result = re::StateMachine::previousState(a2, a3);
      if (result)
      {
        re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(&v15, result + 6);
        if (v16)
        {
          v10 = v17;
          v11 = 8 * v16;
          do
          {
            if (*v10)
            {
              if (v12)
              {
                v13 = v12[9];
                if (v13)
                {
                  re::ecs2::AnimationComponent::setAnimationPlaybackTime(v9, v13, *(a1 + 80));
                  re::ecs2::Component::markDirty(v9);
                }
              }
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        result = v15;
        if (v15 && v17)
        {
          result = (*(*v15 + 40))();
        }
      }

      v14 = *(a1 + 72);
      if (v14)
      {
        re::ecs2::AnimationComponent::setAnimationPlaybackTime(v9, v14, *(a1 + 80));
        return re::ecs2::Component::markDirty(v9);
      }
    }
  }

  return result;
}

void re::ecs2::AnimationPlayCommand::~AnimationPlayCommand(re::ecs2::AnimationPlayCommand *this)
{
  *this = &unk_1F5D002F8;
  v2 = this + 32;
  re::StringID::destroyString((this + 80));
  *this = &unk_1F5CF08E8;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v2);
  re::StringID::destroyString((this + 8));
}

{
  *this = &unk_1F5D002F8;
  v2 = this + 32;
  re::StringID::destroyString((this + 80));
  *this = &unk_1F5CF08E8;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v2);
  re::StringID::destroyString((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AnimationStopCommand::~AnimationStopCommand(re::ecs2::AnimationStopCommand *this)
{
  *this = &unk_1F5CF08E8;
  v2 = (this + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::StringID::destroyString(v2);
}

{
  *this = &unk_1F5CF08E8;
  v2 = (this + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::StringID::destroyString(v2);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AnimationStopAllCommand::~AnimationStopAllCommand(re::ecs2::AnimationStopAllCommand *this)
{
  *this = &unk_1F5CF08E8;
  v2 = (this + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::StringID::destroyString(v2);
}

{
  *this = &unk_1F5CF08E8;
  v2 = (this + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::StringID::destroyString(v2);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AnimationSetPlaybackTimeCommand::~AnimationSetPlaybackTimeCommand(re::ecs2::AnimationSetPlaybackTimeCommand *this)
{
  *this = &unk_1F5CF08E8;
  v2 = (this + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::StringID::destroyString(v2);
}

{
  *this = &unk_1F5CF08E8;
  v2 = (this + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::StringID::destroyString(v2);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::VideoPlayerComponent::~VideoPlayerComponent(re::ecs2::VideoPlayerComponent *this)
{
  *this = &unk_1F5D005D8;
  re::DynamicString::deinit((this + 144));
  re::AssetHandle::~AssetHandle((this + 64));
  re::AssetHandle::~AssetHandle((this + 40));
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::VideoPlayerComponent::~VideoPlayerComponent(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::VideoPlayerComponent::setVideoAsset(re *a1, uint64_t *a2)
{
  if (*(a1 + 6) != a2[1])
  {
    v4 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Resetting VideoAsset load request.", v7, 2u);
    }

    v5 = *(a1 + 4);
    if (v5)
    {

      *(a1 + 4) = 0;
    }
  }

  return re::AssetHandle::operator=(a1 + 40, a2);
}

void re::ecs2::VideoPlayerComponent::setDesiredSpatialVideoMode(re::ecs2::Component *a1, int a2)
{
  if (*(a1 + 177) != a2)
  {
    *(a1 + 177) = a2;
    v3 = *(a1 + 2);
    if (v3)
    {
      v4 = *(v3 + 216);
      if (v4)
      {
        re::ecs2::NetworkComponent::markDirty(v4, a1);
      }
    }
  }
}

void re::ecs2::VideoPlayerComponent::preloadVideoAsset(re::ecs2::VideoPlayerComponent *this, re::AssetManager *a2)
{
  if (*(this + 6))
  {
    v4 = re::AssetHandle::loadedAsset<re::VideoAsset>((this + 40));
    if (v4)
    {
      v6 = *(v4 + 112);
      v5 = (v4 + 112);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___ZN2re4ecs220VideoPlayerComponent17preloadVideoAssetEPNS_12AssetManagerE_block_invoke;
      v7[3] = &__block_descriptor_48_e5_v8__0l;
      v7[4] = this;
      v7[5] = a2;
      if (v6 != -1)
      {
        dispatch_once(v5, v7);
      }
    }
  }
}

uint64_t ___ZN2re4ecs220VideoPlayerComponent17preloadVideoAssetEPNS_12AssetManagerE_block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  re::AssetManager::makeLoadRequest(v9, *(a1 + 40));
  v2 = *(v1 + 32);
  v3 = v9[0];
  *(v1 + 32) = v9[0];
  v9[0] = v2;
  if (v2)
  {

    v3 = *(v1 + 32);
  }

  v9[0] = &unk_1F5D00680;
  v9[1] = &__block_literal_global_33;
  v9[3] = v9;
  re::AssetLoadRequest::setShouldLoadAndWaitForResourceSharingClients(v3, 1, 1, v6);
  if ((v6[0] & 1) == 0)
  {
  }

  re::AssetLoadRequest::addAsset(*(v1 + 32), (v1 + 40));
  v4 = *(v1 + 32);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v8, v9);
  re::AssetLoadRequest::setCompletionHandler(v4, v8, 0);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v8);
  return std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v9);
}

void ___ZN2re4ecs220VideoPlayerComponent17preloadVideoAssetEPNS_12AssetManagerE_block_invoke_2(re *a1, int a2)
{
  v3 = *re::videoLogObjects(a1);
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "[REAssetManagerPreloadVideoAsset] Completed preloading video asset load request", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "[REAssetManagerPreloadVideoAsset] Failed to create an asset load request", v4, 2u);
  }
}

double re::ecs2::VideoPlayerComponent::getBounds@<D0>(float32x4_t *__return_ptr a1@<X8>, re::ecs2::VideoPlayerComponent *this@<X0>)
{
  v3 = *(this + 2);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + 344);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(v3 + 360);
  v6 = 8 * v4;
  while (1)
  {
    v7 = *v5;
    if ((*(*v5 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
    {
      v8 = *(v7 + 296);
      if (v8 == "__InternalVPC-Screen__" || !strcmp(v8, "__InternalVPC-Screen__"))
      {
        break;
      }
    }

    ++v5;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v9 = *(v7 + 192);
  if (v9 && (v10 = re::AssetHandle::loadedAsset<re::MeshAsset>((v9 + 32))) != 0)
  {
    v12[0] = xmmword_1E3047670;
    v12[1] = xmmword_1E3047680;
    v12[2] = xmmword_1E30476A0;
    v12[3] = xmmword_1E30474D0;
    *&result = re::MeshAsset::aabbFromMesh(v10, v12, a1).n128_u64[0];
  }

  else
  {
LABEL_12:
    result = -0.0000305175998;
    *a1 = xmmword_1E309E540;
    a1[1] = xmmword_1E309E550;
  }

  return result;
}

void *re::ecs2::allocInfo_VideoPlayerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B55B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B55B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B55C0, "VideoPlayerComponent");
    __cxa_guard_release(&qword_1EE1B55B8);
  }

  return &unk_1EE1B55C0;
}

void re::ecs2::initInfo_VideoPlayerComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v103[0] = 0xE22DC2D7425E8282;
  v103[1] = "VideoPlayerComponent";
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  *(this + 2) = v104;
  if ((atomic_load_explicit(&_MergedGlobals_399, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_399))
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
    qword_1EE1B5650 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_videoAsset";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B5658 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "m_enableReflections";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x6000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B5660 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "m_screenRoundedCornerEnabled";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x6100000008;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B5668 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "m_screenAspectRatioAnimationEnabled";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x6200000009;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B5670 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_uint64_t(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "m_guid";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x580000000DLL;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B5678 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_BOOL(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "m_screenDeferAspectRatioTransitionToApp";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x630000000FLL;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1B5680 = v38;
    v39 = re::introspectionAllocator();
    v40 = re::ecs2::introspect_HDRDumpInfo(1);
    v41 = (*(*v39 + 32))(v39, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "m_dumpInfo";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x7000000010;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1B5688 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::ecs2::introspect_VideoViewingMode(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "m_desiredViewingMode";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xB000000011;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1B5690 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_BOOL(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "m_lowLatencyEnabled";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB800000018;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE1B5698 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_float(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "m_screenWrapTheta";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xBC00000019;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE1B56A0 = v53;
    v54 = re::introspectionAllocator();
    v56 = re::introspect_BOOL(1, v55);
    v57 = (*(*v54 + 32))(v54, 72, 8);
    *v57 = 1;
    *(v57 + 8) = "m_screenWrapPositive";
    *(v57 + 16) = v56;
    *(v57 + 24) = 0;
    *(v57 + 32) = 0xC40000001ALL;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0;
    *(v57 + 56) = 0;
    *(v57 + 64) = 0;
    qword_1EE1B56A8 = v57;
    v58 = re::introspectionAllocator();
    v60 = re::introspect_BOOL(1, v59);
    v61 = (*(*v58 + 32))(v58, 72, 8);
    *v61 = 1;
    *(v61 + 8) = "m_screenWrapAnimation";
    *(v61 + 16) = v60;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0xC50000001BLL;
    *(v61 + 40) = 0;
    *(v61 + 48) = 0;
    *(v61 + 56) = 0;
    *(v61 + 64) = 0;
    qword_1EE1B56B0 = v61;
    v62 = re::introspectionAllocator();
    v64 = re::introspect_BOOL(1, v63);
    v65 = (*(*v62 + 32))(v62, 72, 8);
    *v65 = 1;
    *(v65 + 8) = "m_usesCurvedUIStyleSystemTreatments";
    *(v65 + 16) = v64;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0xC60000001CLL;
    *(v65 + 40) = 0;
    *(v65 + 48) = 0;
    *(v65 + 56) = 0;
    *(v65 + 64) = 0;
    qword_1EE1B56B8 = v65;
    v66 = re::introspectionAllocator();
    v68 = re::introspect_float(1, v67);
    v69 = (*(*v66 + 32))(v66, 72, 8);
    *v69 = 1;
    *(v69 + 8) = "m_videoBlurTargetAspectRatio";
    *(v69 + 16) = v68;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0x6400000020;
    *(v69 + 40) = 0;
    *(v69 + 48) = 0;
    *(v69 + 56) = 0;
    *(v69 + 64) = 0;
    qword_1EE1B56C0 = v69;
    v70 = re::introspectionAllocator();
    v72 = re::introspect_float(1, v71);
    v73 = (*(*v70 + 32))(v70, 72, 8);
    *v73 = 1;
    *(v73 + 8) = "m_videoBlurFadeTime";
    *(v73 + 16) = v72;
    *(v73 + 24) = 0;
    *(v73 + 32) = 0x6800000021;
    *(v73 + 40) = 0;
    *(v73 + 48) = 0;
    *(v73 + 56) = 0;
    *(v73 + 64) = 0;
    qword_1EE1B56C8 = v73;
    v74 = re::introspectionAllocator();
    v76 = re::introspect_int(1, v75);
    v77 = (*(*v74 + 32))(v74, 72, 8);
    *v77 = 1;
    *(v77 + 8) = "m_specifiedVideoBlurState";
    *(v77 + 16) = v76;
    *(v77 + 24) = 0;
    *(v77 + 32) = 0x6C00000022;
    *(v77 + 40) = 0;
    *(v77 + 48) = 0;
    *(v77 + 56) = 0;
    *(v77 + 64) = 0;
    qword_1EE1B56D0 = v77;
    v78 = re::introspectionAllocator();
    v80 = re::introspect_BOOL(1, v79);
    v81 = (*(*v78 + 32))(v78, 72, 8);
    *v81 = 1;
    *(v81 + 8) = "m_enableScreenWarpCollisionModel";
    *(v81 + 16) = v80;
    *(v81 + 24) = 0;
    *(v81 + 32) = 0xC800000023;
    *(v81 + 40) = 0;
    *(v81 + 48) = 0;
    *(v81 + 56) = 0;
    *(v81 + 64) = 0;
    qword_1EE1B56D8 = v81;
    v82 = re::introspectionAllocator();
    v84 = re::introspect_float(1, v83);
    v85 = (*(*v82 + 32))(v82, 72, 8);
    *v85 = 1;
    *(v85 + 8) = "m_screenAspectRatio";
    *(v85 + 16) = v84;
    *(v85 + 24) = 0;
    *(v85 + 32) = 0xC000000024;
    *(v85 + 40) = 0;
    *(v85 + 48) = 0;
    *(v85 + 56) = 0;
    *(v85 + 64) = 0;
    qword_1EE1B56E0 = v85;
    v86 = re::introspectionAllocator();
    v88 = re::introspect_BOOL(1, v87);
    v89 = (*(*v86 + 32))(v86, 72, 8);
    *v89 = 1;
    *(v89 + 8) = "m_scaleRoundedCorner";
    *(v89 + 16) = v88;
    *(v89 + 24) = 0;
    *(v89 + 32) = 0xC700000026;
    *(v89 + 40) = 0;
    *(v89 + 48) = 0;
    *(v89 + 56) = 0;
    *(v89 + 64) = 0;
    qword_1EE1B56E8 = v89;
    v90 = re::introspectionAllocator();
    v92 = re::ecs2::introspect_SpatialVideoMode(1, v91);
    v93 = (*(*v90 + 32))(v90, 72, 8);
    *v93 = 1;
    *(v93 + 8) = "m_desiredSpatialVideoMode";
    *(v93 + 16) = v92;
    *(v93 + 24) = 0;
    *(v93 + 32) = 0xB100000028;
    *(v93 + 40) = 0;
    *(v93 + 48) = 0;
    *(v93 + 56) = 0;
    *(v93 + 64) = 0;
    qword_1EE1B56F0 = v93;
    v94 = re::introspectionAllocator();
    v96 = re::introspect_float(1, v95);
    v97 = (*(*v94 + 32))(v94, 72, 8);
    *v97 = 1;
    *(v97 + 8) = "m_loadingTextureAspectRatioHint";
    *(v97 + 16) = v96;
    *(v97 + 24) = 0;
    *(v97 + 32) = 0xCC00000029;
    *(v97 + 40) = 0;
    *(v97 + 48) = 0;
    *(v97 + 56) = 0;
    *(v97 + 64) = 0;
    qword_1EE1B56F8 = v97;
    v98 = re::introspectionAllocator();
    v100 = re::introspect_AssetHandle(1, v99);
    v101 = (*(*v98 + 32))(v98, 72, 8);
    *v101 = 1;
    *(v101 + 8) = "m_loadingAsset";
    *(v101 + 16) = v100;
    *(v101 + 24) = 0;
    *(v101 + 32) = 0x400000002ALL;
    *(v101 + 40) = 0;
    *(v101 + 48) = 0;
    *(v101 + 56) = 0;
    *(v101 + 64) = 0;
    qword_1EE1B5700 = v101;
    __cxa_guard_release(&_MergedGlobals_399);
  }

  *(this + 2) = 0xD800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 23;
  *(this + 8) = &qword_1EE1B5650;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoPlayerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoPlayerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoPlayerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoPlayerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220VideoPlayerComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v102 = v104;
}

void std::__function::__func<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>,void ()(BOOL)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D00680;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::VideoPlayerComponent>(uint64_t a1)
{
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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
  *(a1 + 144) = 0u;
  v2 = (a1 + 144);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D005D8;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0;
  re::DynamicString::setCapacity(v2, 0);
  *(a1 + 176) = 1;
  *(a1 + 180) = 1055286886;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 195) = 0;
  *(a1 + 199) = 1;
  *(a1 + 204) = 0x428CA2313FE3D70ALL;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220VideoPlayerComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::ThrottleManager::update(re::ecs2::ThrottleManager *this, float a2)
{
  v3 = *(this + 29);
  if (v3 <= 0.0)
  {
    *(this + 30) = 0;
    *(this + 16) = 0;
  }

  else
  {
    v4 = *(this + 30) - a2;
    *(this + 30) = v4;
    if (v4 <= 0.0)
    {
      ++*(this + 16);
      *(this + 30) = v3 + fmodf(v4, v3);
    }
  }

  if (*(this + 112) == 1)
  {
    v5 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(this + 3));
    if (v5)
    {
      v6 = (*(*v5 + 288))(v5) + 120;
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v19, v6, 0);
      if (v6 != v19 || v20 != 0xFFFFFFFFLL)
      {
        do
        {
          v8 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v19);
          v9 = *(v8 + 200);
          if (v9)
          {
            v10 = *(v8 + 216);
            v11 = v10 + 8 * v9;
            do
            {
              v12 = re::ecs2::SceneComponentTable::get((*v10 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v12)
              {
                v13 = *(v12 + 384);
                if (v13)
                {
                  v14 = *(v12 + 400);
                  v15 = 8 * v13;
                  do
                  {
                    v16 = *v14++;
                    re::ecs2::Component::markDirty(v16);
                    v15 -= 8;
                  }

                  while (v15);
                }
              }

              v10 += 8;
            }

            while (v10 != v11);
          }

          re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v19);
        }

        while (v19 != v6 || v20 != 0xFFFF || WORD1(v20) != 0xFFFF);
      }
    }

    *(this + 112) = 0;
  }
}

void re::ecs2::ThrottleManager::init(uint64_t a1, re::StringID *a2)
{
  *(a1 + 24) = a2;
  v3 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v3 + 8))(&v6);
  v4 = *(a1 + 88);
  *(a1 + 88) = v6;
  v6 = v4;
  v5 = *(a1 + 104);
  *(a1 + 104) = v7;
  v7 = v5;
  re::AssetHandle::~AssetHandle(&v6);
}

uint64_t re::ecs2::ThrottleManager::setThrottleForPeer(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v26, a1 + 32, a2, v6 ^ (v6 >> 31));
  v7 = HIDWORD(v27);
  if (HIDWORD(v27) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1 + 32, v27, v26);
    *(v8 + 8) = a2;
    *(v8 + 16) = *a3;
    ++*(a1 + 72);
  }

  else
  {
    ++*(a1 + 72);
    *(*(a1 + 48) + 32 * v7 + 16) = *a3;
  }

  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(a1 + 24));
  v10 = (*(*v9 + 288))(v9) + 120;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v26, v10, 0);
  if (v10 != v26 || v27 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v26);
      v14 = *(v13 + 200);
      if (v14)
      {
        v15 = *(v13 + 216);
        v16 = v15 + 8 * v14;
        do
        {
          v17 = re::ecs2::SceneComponentTable::get((*v15 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v17)
          {
            v18 = *(v17 + 384);
            if (v18)
            {
              v19 = *(v17 + 400);
              v20 = 8 * v18;
              do
              {
                if (*(*v19 + 32))
                {
                  OwnerPeerID = RESyncableGetOwnerPeerID();
                }

                else
                {
                  OwnerPeerID = *(*v19 + 64);
                }

                if (OwnerPeerID == a2)
                {
                  v22 = *(*v19 + 16);
                  if ((*a3 == 2) == ((*(v22 + 304) & 0x40) == 0))
                  {
                    re::ecs2::Entity::setGhosted(*(*v19 + 16), *a3 == 2);
                  }

                  v23 = re::ecs2::EntityComponentCollection::getOrAdd((v22 + 48), re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                  if (*(v23 + 28) != *a3 || *(v23 + 32) != *(a3 + 4))
                  {
                    *(v23 + 28) = *a3;
                    re::ecs2::Component::markDirty(v23);
                  }
                }

                v19 += 8;
                v20 -= 8;
              }

              while (v20);
            }
          }

          v15 += 8;
        }

        while (v15 != v16);
      }

      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v26);
    }

    while (v26 != v10 || v27 != 0xFFFF || WORD1(v27) != 0xFFFF);
  }

  return result;
}

uint64_t re::ecs2::ThrottleManager::throttleForPeer(re::ecs2::ThrottleManager *this, unint64_t a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v8, this + 32, a2, v5);
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return *(*(this + 6) + 32 * HIDWORD(v9) + 16);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v8, this + 32, a2, v5);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    v6 = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(this + 32, v9, v8);
    *(v6 + 8) = a2;
    *(v6 + 16) = 0;
    ++*(this + 18);
  }

  return 0;
}

uint64_t re::ecs2::ThrottleManager::resetThrottleForPeer(re::ecs2::ThrottleManager *this, unint64_t a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v11, this + 32, a2, v4 ^ (v4 >> 31));
  v6 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v7 = *(this + 6);
    v8 = (v7 + 32 * v13);
    v9 = *v8 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(this + 5) + 4 * v12) = v9;
    }

    else
    {
      *(v7 + 32 * v14) = *(v7 + 32 * v14) & 0x80000000 | v9;
    }

    v10 = *(this + 18);
    *v8 = *(this + 17);
    --*(this + 15);
    *(this + 17) = v6;
    *(this + 18) = v10 + 1;
  }

  return result;
}

void re::ecs2::ThrottleManager::~ThrottleManager(re::ecs2::ThrottleManager *this)
{
  re::AssetHandle::~AssetHandle((this + 88));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AssetHandle::~AssetHandle((this + 88));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::ThrottleManager::setThrottleForceSkinnedNormals(uint64_t this, int a2)
{
  if (*(this + 113) != a2)
  {
    *(this + 113) = a2;
    *(this + 112) = 1;
  }

  return this;
}

void *re::ecs2::allocInfo_AllowsCASeparatedProxyComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_400))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5728, "AllowsCASeparatedProxyComponent");
    __cxa_guard_release(&_MergedGlobals_400);
  }

  return &unk_1EE1B5728;
}

void re::ecs2::initInfo_AllowsCASeparatedProxyComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xEC25AF0849649990;
  v20[1] = "AllowsCASeparatedProxyComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B5710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5710))
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
    qword_1EE1B5718 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "validId";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B5720 = v18;
    __cxa_guard_release(&qword_1EE1B5710);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B5718;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AllowsCASeparatedProxyComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AllowsCASeparatedProxyComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AllowsCASeparatedProxyComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AllowsCASeparatedProxyComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs231AllowsCASeparatedProxyComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::AllowsCASeparatedProxyComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE46E8;
}

void re::internal::defaultConstructV2<re::ecs2::AllowsCASeparatedProxyComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE46E8;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs231AllowsCASeparatedProxyComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

BOOL re::ecs2::DeferredActivationComponentStateImpl::processDirtyComponents(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1))
  {
    v37 = 0;
    v34[1] = 0;
    v35 = 0;
    v36 = 0;
    re::DynamicArray<float *>::setCapacity(v34, 0);
    ++v36;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
    v8 = *buf;
    v32 = *buf;
    v33 = *&buf[8];
    v9 = *&buf[8];
    v10 = *&buf[10];
    if (*buf != a5 || *&buf[8] != 0xFFFF || *&buf[10] != 0xFFFF)
    {
      do
      {
        v11 = v10;
        v12 = *(v8 + 16);
        if (v12 <= v10)
        {
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          *buf = 0u;
          v28 = MEMORY[0x1E69E9C10];
          v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v29)
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          v42 = 797;
          v43 = 2048;
          v44 = v11;
          v45 = 2048;
          v46 = v12;
          _os_log_send_and_compose_impl(v30, &v38, buf, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v31, a4);
          _os_crash_msg();
          __break(1u);
        }

        v13 = *(*(*(v8 + 32) + 16 * v10) + 8 * v9);
        v14 = *(v13 + 32);
        if (!v14)
        {
          (*(**(a1 + 1) + 208))(buf);
          v15 = *(v13 + 32);
          v16 = *buf;
          *(v13 + 32) = *buf;
          *buf = v15;
          if (v15)
          {

            v16 = *(v13 + 32);
          }

          re::ecs2::ComponentHelper::addToLoadRequest(v16, *(v13 + 16), 1);
          v14 = *(v13 + 32);
        }

        v17 = *(v14 + 24);
        os_unfair_lock_lock(v17 + 64);
        os_unfair_lock_opaque = v17[100]._os_unfair_lock_opaque;
        os_unfair_lock_unlock(v17 + 64);
        if (os_unfair_lock_opaque)
        {
          *buf = *(v13 + 16);
          re::DynamicArray<re::TransitionCondition *>::add(v34, buf);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v32);
        v8 = v32;
        v9 = v33;
        v10 = HIWORD(v33);
      }

      while (v32 != a5 || v33 != 0xFFFF || HIWORD(v33) != 0xFFFF);
    }

    if (v35)
    {
      v19 = v37;
      v20 = 8 * v35;
      do
      {
        v21 = *v19;
        re::ecs2::EntityComponentCollection::remove((*v19 + 48), re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        re::ecs2::Entity::setSelfEnabled(v21, 1);
        v24 = *(v21 + 27);
        if (v24)
        {
          re::ecs2::NetworkComponent::markEntityDirty(v24, 0xFF, v22, v23);
        }

        ++v19;
        v20 -= 8;
      }

      while (v20);
    }

    v25 = *(a5 + 40) != 0;
    if (v34[0] && v37)
    {
      (*(*v34[0] + 40))();
    }
  }

  else
  {
    v26 = *re::ecsComponentsLogObjects(a1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "AssetService not found.", buf, 2u);
    }

    return 0;
  }

  return v25;
}

_anonymous_namespace_ *re::ecs2::DeferredActivationSystem::willAddSystemToECSService(re::ecs2::DeferredActivationSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  if (v3)
  {
    v4 = (*(v3 + 432) >> 4) & 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  *(this + 224) = v4;
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v5);
  *(this + 30) = result;
  return result;
}

unint64_t re::ecs2::DeferredActivationSystem::willAddSceneToECSService(re::ecs2::DeferredActivationSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 47);
  v5 = *(this + 96);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 392);
    }

    else
    {
      v6 = *(this + 50);
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
    v7 = (this + 392);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 50);
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
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 368, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 248, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::init(v12, this + 248, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 38, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 368, v44);
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
  v14 = *(this + 36);
  *&v51 = 0;
  v15 = *(this + 32);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,4ul>::setBucketsCapacity((this + 248), (v14 + 4) >> 2);
    v15 = *(this + 32);
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

  if (*(this + 264))
  {
    v16 = this + 272;
  }

  else
  {
    v16 = *(this + 35);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 36);
  ++*(this + 74);
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
  v23 = *(this + 36);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 248, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::init(v24, this + 248, v52);
  *&v62[0] = *(this + 36) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 38, &v52, v62);
  v25 = *(this + 36);
  v26 = *(this + 51);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 51) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 368), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 51) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 384))
    {
      v30 = this + 392;
    }

    else
    {
      v30 = *(this + 50);
    }

    *&v30[8 * *(this + 47) - 8] &= v28;
  }

  v31 = *(this + 36);
  v32 = *(this + 57);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 57) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 416), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 57) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 432))
    {
      v36 = this + 440;
    }

    else
    {
      v36 = *(this + 56);
    }

    *&v36[8 * *(this + 53) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 416, v13);
  if (*(this + 480) == 1)
  {
    v38 = *(this + 58);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 248);
  }

  return result;
}

uint64_t re::ecs2::DeferredActivationSystem::willRemoveSceneFromECSService(re::ecs2::DeferredActivationSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 38, &v15);
  if (result != -1)
  {
    v4 = *(this + 39) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 368, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 416, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 248, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 304, &v15);
  }

  return result;
}

void re::ecs2::DeferredActivationSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  if (*(a1 + 224) == 1)
  {
    re::StackScratchAllocator::StackScratchAllocator(v42);
    v38 = 1;
    v39 = 0;
    v40 = 0;
    v36 = v42;
    v37 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
    v38 += 2;
    v5 = *(a1 + 456);
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    v41 = *(a1 + 456);
    v31[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        v31[0] = v10;
        v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 304), v31);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(*(a1 + 312) + 16 * v11 + 8));
        v9 -= 8;
      }

      while (v9);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, a1 + 416);
    v32 = 1;
    v33 = 0;
    v34 = 0;
    v31[0] = v42;
    v31[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
    v32 += 2;
    v12 = *(a1 + 456);
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v35 = *(a1 + 456);
    v43 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(a1 + 416, &v36);
    v14 = v40;
    if (v38)
    {
      v14 = &v39;
    }

    v15 = v37;
    if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
          goto LABEL_31;
        }
      }

      v19 = __clz(__rbit64(v17));
      if (v19 + 1 != v16)
      {
        FirstBitSet = v19 - v16;
        do
        {
          v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 248, FirstBitSet);
          v22 = *(*v21 + 224);
          v23 = v21[3];
          v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
          if (*(v24 + 40))
          {
            v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
          }

          else
          {
            v25 = 0;
          }

          v26 = v21[5];
          v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
          if (*(v27 + 40))
          {
            v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
          }

          v28 = v21[6];
          v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
          if (*(v29 + 40))
          {
            if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else if (!v25)
          {
LABEL_29:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
            goto LABEL_30;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_30:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_31:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(a1 + 416, v31);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 248);
    if (v31[0] && (v32 & 1) == 0)
    {
      (*(*v31[0] + 40))(v31[0], v34);
    }

    if (v36)
    {
      if ((v38 & 1) == 0)
      {
        (*(*v36 + 40))(v36, v40);
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v42);
  }
}

void *re::ecs2::allocInfo_DeferredActivationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_401, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_401))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B57C0, "DeferredActivationSystem");
    __cxa_guard_release(&_MergedGlobals_401);
  }

  return &unk_1EE1B57C0;
}

void re::ecs2::initInfo_DeferredActivationSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xE1E98252F161208;
  v8[1] = "DeferredActivationSystem";
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
  *(this + 8) = &re::ecs2::initInfo_DeferredActivationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DeferredActivationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DeferredActivationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DeferredActivationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DeferredActivationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DeferredActivationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DeferredActivationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::DeferredActivationSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 31);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::DeferredActivationSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 31);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::DeferredActivationComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DeferredActivationComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void re::ecs2::DeferredActivationSystem::~DeferredActivationSystem(re::ecs2::DeferredActivationSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 31);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 31);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5D008C8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5D00920;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5D00978;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5D009D0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5D008C8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5D00920;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5D00978;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5D009D0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D008C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D008C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00920;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00920;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00978;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00978;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D009D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D009D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DeferredActivationComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

re::ecs2::DeferredActivationSystem *re::ecs2::DeferredActivationSystem::DeferredActivationSystem(re::ecs2::DeferredActivationSystem *this)
{
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5D00838;
  *(v2 + 224) = 0;
  v3 = v2 + 232;
  *(v2 + 232) = &unk_1F5D007D0;
  *(v2 + 256) = 0;
  *(v2 + 248) = 0;
  v4 = v2 + 248;
  *(v2 + 264) = 1;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  *(v2 + 272) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 1;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0;
  *(v2 + 432) = 1;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 465) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 368), 0);
  *(this + 96) += 2;
  *(this + 51) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 416), 0);
  *(this + 108) += 2;
  *(this + 57) = 0;
  *(this + 58) = this;
  *(this + 59) = v3;
  *(this + 480) = 1;
  return this;
}

uint64_t checkFromNetworkComponent(re::ecs2::Entity *a1, unint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 27);
  if (v6)
  {
    v7 = *(v6 + 32) ? RESyncableGetOwnerPeerID() : *(v6 + 64);
    if (v7 == a2)
    {
      return 1;
    }
  }

  if (a3 > 4)
  {
    return 0;
  }

  v9 = *(a1 + 43);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a1 + 45);
  v11 = 8 * v9 - 8;
  do
  {
    v12 = *v10++;
    result = checkFromNetworkComponent(v12, a2, a3 + 1);
    if (result)
    {
      break;
    }

    v13 = v11;
    v11 -= 8;
  }

  while (v13);
  return result;
}

uint64_t enableCaptureDaemonEntities(void)
{
  v0 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v0 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v2)
    {
      enableCaptureDaemonEntities(void)::enable = enableCaptureDaemonEntities(void)::$_0::operator()(v2, v3);
      v0 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v0[1496];
}

uint64_t enableCaptureDaemonEntities(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v6, "trace.captureDaemonEntities", a2);
  if (LOBYTE(v6[0]))
  {
    v3 = BYTE1(v6[0]);
  }

  else
  {
    v3 = 1;
  }

  v4 = *re::ecsComponentsLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v6[0]) = 67109120;
    HIDWORD(v6[0]) = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[StateRecorderSystem] CaptureDaemonEntities enabled: %d", v6, 8u);
  }

  return v3 & 1;
}

uint64_t isAppTLE(uint64_t result, const re::DynamicString *a2, unint64_t a3)
{
  if (result)
  {
    v5 = result;
    result = 0;
    v6 = *(a2 + 1);
    v7 = (v6 & 1) != 0 ? v6 >> 1 : v6 >> 1;
    if (a3 && v7)
    {
      v8 = *(v5 + 37);
      v9 = strlen(v8);
      if (!enableCaptureDaemonEntities())
      {
        return checkFromNetworkComponent(v5, a3, 0);
      }

      v10 = *(a2 + 1);
      v11 = (v10 & 1) != 0 ? *(a2 + 2) : a2 + 9;
      v12 = v10 >> 1;
      v13 = v10 >> 1;
      if (*(a2 + 1))
      {
        v13 = v12;
      }

      if (&v8[v9] == std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(v8, &v8[v9], v11, &v11[v13]))
      {
        return checkFromNetworkComponent(v5, a3, 0);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t re::ecs2::StateRecorderSystem::isAppTLE(re::ecs2::StateRecorderSystem *this, re::ecs2::Entity *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (*(**(this + 38) + 104))(*(this + 38));
  if (!v4)
  {
    return 0;
  }

  v5 = (v3 + 40 * v4);
  v6 = v3;
  do
  {
    v7 = *v6;
    v6 += 5;
    v8 = isAppTLE(a2, (v3 + 8), v7);
    if (v8)
    {
      break;
    }

    v3 = v6;
  }

  while (v6 != v5);
  return v8;
}

uint64_t re::ecs2::StateRecorderSystem::shouldEntityBeInAppEntitySet(re::ecs2::StateRecorderSystem *this, re::ecs2::Entity *a2)
{
  v2 = a2;
  v4 = *(a2 + 4);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) != 0)
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 312);
    if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 344, &v6))
    {
      return 1;
    }

    v4 = *(v2 + 4);
    if (v4)
    {
LABEL_11:
      do
      {
        if ((*(v4 + 304) & 0x80) != 0)
        {
          break;
        }

        v2 = v4;
        v4 = *(v4 + 32);
      }

      while (v4);
    }
  }

  return re::ecs2::StateRecorderSystem::isAppTLE(this, v2);
}

uint64_t re::ecs2::StateRecorderSystem::processDeferredEntries(re::ecs2::StateRecorderSystem *this)
{
  v2 = *(this + 51);
  if (v2)
  {
    v3 = *(this + 53);
    v4 = v2 << 6;
    do
    {
      if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 344, v3))
      {
        v5 = *(v3 + 16);
        if (v5 == 3)
        {
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 344, v3);
        }

        else if (v5 == 1)
        {
          re::DynamicArray<re::TraceEntry>::add((*(this + 36) + 16), v3);
        }
      }

      v3 += 64;
      v4 -= 64;
    }

    while (v4);
  }

  return re::DynamicArray<re::TraceEntry>::clear(this + 392);
}

void re::ecs2::introspect_RayCastType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5858, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5860))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B58B0, "RayCastType", 4, 4, 1, 1);
      qword_1EE1B58B0 = &unk_1F5D0C658;
      qword_1EE1B58F0 = &re::ecs2::introspect_RayCastType(BOOL)::enumTable;
      dword_1EE1B58C0 = 9;
      __cxa_guard_release(&qword_1EE1B5860);
    }

    if (_MergedGlobals_402)
    {
      break;
    }

    _MergedGlobals_402 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B58B0, a2);
    v35 = 0x1F085B2B6C18286;
    v36 = "RayCastType";
    v39 = 0x607DD0F01DCLL;
    v40 = "uint32_t";
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
      v6 = qword_1EE1B58F0;
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
      xmmword_1EE1B58D0 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE1B5858))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "None";
      qword_1EE1B5878 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Once";
      qword_1EE1B5880 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Continuous";
      qword_1EE1B5888 = v33;
      __cxa_guard_release(&qword_1EE1B5858);
    }
  }
}

void *re::ecs2::allocInfo_RayCastComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5868))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B58F8, "RayCastComponent");
    __cxa_guard_release(&qword_1EE1B5868);
  }

  return &unk_1EE1B58F8;
}

void re::ecs2::initInfo_RayCastComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v35[0] = 0xD990FAE43A9F9128;
  v35[1] = "RayCastComponent";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE1B5870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5870))
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
    qword_1EE1B5890 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::introspect_RayF(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "ray";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B5898 = v22;
    v23 = re::introspectionAllocator();
    re::ecs2::introspect_RayCastType(v23, v24);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "cast";
    *(v25 + 16) = &qword_1EE1B58B0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1B58A0 = v25;
    v26 = re::introspectionAllocator();
    v32 = re::introspect_CollisionCastConfiguration(1, v27, v28, v29, v30, v31);
    v33 = (*(*v26 + 32))(v26, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "castConfiguration";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x6000000003;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1B58A8 = v33;
    __cxa_guard_release(&qword_1EE1B5870);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B5890;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RayCastComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RayCastComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RayCastComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RayCastComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs216RayCastComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v34 = v36;
}

double re::internal::defaultConstruct<re::ecs2::RayCastComponent>(int a1, int a2, ArcSharedObject *this)
{
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
  *v3 = &unk_1F5CE1438;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *(v3 + 80) = 2;
  *(v3 + 96) = 0;
  *(v3 + 100) = -1;
  *(v3 + 116) = 0;
  *(v3 + 108) = 0;
  *(v3 + 124) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::RayCastComponent>(ArcSharedObject *a1)
{
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
  *v1 = &unk_1F5CE1438;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 80) = 2;
  *(v1 + 96) = 0;
  *(v1 + 100) = -1;
  *(v1 + 116) = 0;
  *(v1 + 108) = 0;
  *(v1 + 124) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs216RayCastComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::deepCopyMaterialParameterBlock(re::MaterialParameterBlock *a1, re::MaterialParameterBlock *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v162 = *MEMORY[0x1E69E9840];
  v8 = (*(**(*(a4 + 16) + 56) + 32))(*(*(a4 + 16) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v8);
  re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(&v152, a2);
  v10 = v152;
  if (v152)
  {
    v149 = v152 + 200;
    v11 = *(v152 + 27);
    if (v11 >= 0x10)
    {
      v12 = 0;
      v13 = *(v152 + 25);
      v14 = v11 >> 4;
      while (1)
      {
        v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v150 = (v15 ^ 0xFFFFLL);
        if (v15 != 0xFFFFLL)
        {
          break;
        }

        v12 -= 16;
        ++v13;
        if (!--v14)
        {
          goto LABEL_100;
        }
      }

      v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
      v17 = v16 - v12;
      v151 = v16 - v12;
      if (v16 + 1 != v12)
      {
        v18 = a3;
        do
        {
          v19 = (*(v149 + 8) + 16 * v17);
          v146 = *v19;
          re::MaterialParameterBlock::handle(a1, &v146, &v147);
          v146 = 0;
          v141 = *v19;
          re::MaterialParameterBlock::handle(a2, &v141, &v142);
          v141 = 0;
          v20 = BYTE4(v143) & 7;
          if (v20)
          {
            if (!re::MaterialParameterHandle::isParameterType(&v142, 50) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 50))
            {
              if (!re::MaterialParameterHandle::isParameterType(&v142, 49) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 49))
              {
                if (!re::MaterialParameterHandle::isParameterType(&v142, 48) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 48))
                {
                  if (!re::MaterialParameterHandle::isParameterType(&v142, 34) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 34))
                  {
                    if (!re::MaterialParameterHandle::isParameterType(&v142, 33) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 33))
                    {
                      if (!re::MaterialParameterHandle::isParameterType(&v142, 32) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 32))
                      {
                        if (!re::MaterialParameterHandle::isParameterType(&v142, 1) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 1))
                        {
                          if (!re::MaterialParameterHandle::isParameterType(&v142, 6) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 6))
                          {
                            if (!re::MaterialParameterHandle::isParameterType(&v142, 5) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 5))
                            {
                              if (!re::MaterialParameterHandle::isParameterType(&v142, 4) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 4))
                              {
                                if (!re::MaterialParameterHandle::isParameterType(&v142, 3) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 3))
                                {
                                  if (!re::MaterialParameterHandle::isParameterType(&v142, 10) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 10))
                                  {
                                    if (!re::MaterialParameterHandle::isParameterType(&v142, 9) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 9))
                                    {
                                      if (!re::MaterialParameterHandle::isParameterType(&v142, 8) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 8))
                                      {
                                        if (!re::MaterialParameterHandle::isParameterType(&v142, 7) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 7))
                                        {
                                          if (!re::MaterialParameterHandle::isParameterType(&v142, 2) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 2))
                                          {
                                            if (!re::MaterialParameterHandle::isParameterType(&v142, 21) || (v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 21))
                                            {
                                              isParameterType = re::MaterialParameterHandle::isParameterType(&v142, 20);
                                              if (!isParameterType || (v148 & 7) != 0 && (isParameterType = re::MaterialParameterHandle::isParameterType(&v147, 20)))
                                              {
                                                v22 = *re::graphicsLogObjects(isParameterType);
                                                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                                                {
                                                  if (v142 == 0x7FFFFFFFFFFFFFFFLL)
                                                  {
                                                    v23 = 0;
                                                  }

                                                  else if (v142)
                                                  {
                                                    snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v142);
                                                    v23 = re::WeakStringID::debugStr(void)const::msg;
                                                  }

                                                  else
                                                  {
                                                    v23 = &str_67;
                                                  }

                                                  if (v20 > 2)
                                                  {
                                                    if (v20 == 3)
                                                    {
                                                      v58 = 128;
                                                    }

                                                    else if (v20 == 4)
                                                    {
                                                      v58 = 192;
                                                    }

                                                    else
                                                    {
                                                      v58 = 0;
                                                    }
                                                  }

                                                  else if (v20 == 1)
                                                  {
                                                    v58 = v145;
                                                  }

                                                  else
                                                  {
                                                    v58 = 64;
                                                  }

                                                  *buf = 136315394;
                                                  *&buf[4] = v23;
                                                  *&buf[12] = 1024;
                                                  *&buf[14] = v58;
                                                  _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "deepCopyMaterialParameterBlock - parameter handle with name %s, parameterType %hhu not supported.", buf, 0x12u);
                                                }
                                              }

                                              else
                                              {
                                                v56 = re::MaterialParameterBlock::colorGamut3FValue(a2, &v142);
                                                v119 = *v19;
                                                v98 = v98 & 0xFFFFFF0000000000 | v57 & 0xFFFFFFFFFFLL;
                                                re::MaterialParameterBlock::setColorGamut3F(a1, &v119, v56, v98, v120);
                                                v119 = 0;
                                                v120[0] = 0;
                                              }
                                            }

                                            else
                                            {
                                              re::MaterialParameterBlock::colorGamut4FValue(a2, &v142, buf);
                                              v123 = *v19;
                                              v121 = *buf;
                                              v122 = *&buf[16];
                                              re::MaterialParameterBlock::setColorGamut4F(a1, &v123, &v121, v124);
                                              v123 = 0;
                                              v124[0] = 0;
                                            }
                                          }

                                          else
                                          {
                                            Constant = re::ShaderGraphMaterial::getConstant(a2, &v142);
                                            v55 = *v19;
                                            LOBYTE(v121) = *Constant;
                                            *buf = v55;
                                            re::MaterialParameterBlock::setConstant(a1, buf, 1uLL, &v121, 2, v125);
                                            v125[0] = 0;
                                          }
                                        }

                                        else
                                        {
                                          v52 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                                          v53 = *v19;
                                          LODWORD(v121) = *v52;
                                          *buf = v53;
                                          re::MaterialParameterBlock::setConstant(a1, buf, 4uLL, &v121, 7, v126);
                                          v126[0] = 0;
                                        }
                                      }

                                      else
                                      {
                                        v50 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                                        v51 = *v19;
                                        *buf = *v50;
                                        *&v121 = v51;
                                        re::MaterialParameterBlock::setConstant(a1, &v121, 8uLL, buf, 8, v127);
                                        v127[0] = 0;
                                      }
                                    }

                                    else
                                    {
                                      v48 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                                      v49 = *v19;
                                      *buf = *v48;
                                      *&v121 = v49;
                                      re::MaterialParameterBlock::setConstant(a1, &v121, 0x10uLL, buf, 9, v128);
                                      v128[0] = 0;
                                    }
                                  }

                                  else
                                  {
                                    v46 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                                    v47 = *v19;
                                    *buf = *v46;
                                    *&v121 = v47;
                                    re::MaterialParameterBlock::setConstant(a1, &v121, 0x10uLL, buf, 10, v129);
                                    v129[0] = 0;
                                  }
                                }

                                else
                                {
                                  v44 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                                  v45 = *v19;
                                  LODWORD(v121) = *v44;
                                  *buf = v45;
                                  re::MaterialParameterBlock::setConstant(a1, buf, 4uLL, &v121, 3, v130);
                                  v130[0] = 0;
                                }
                              }

                              else
                              {
                                v42 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                                v43 = *v19;
                                *buf = *v42;
                                *&v121 = v43;
                                re::MaterialParameterBlock::setConstant(a1, &v121, 8uLL, buf, 4, v131);
                                v131[0] = 0;
                              }
                            }

                            else
                            {
                              v40 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                              v41 = *v19;
                              *buf = *v40;
                              *&v121 = v41;
                              re::MaterialParameterBlock::setConstant(a1, &v121, 0x10uLL, buf, 5, v132);
                              v132[0] = 0;
                            }
                          }

                          else
                          {
                            v38 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                            v39 = *v19;
                            *buf = *v38;
                            *&v121 = v39;
                            re::MaterialParameterBlock::setConstant(a1, &v121, 0x10uLL, buf, 6, v133);
                            v133[0] = 0;
                          }
                        }

                        else
                        {
                          v36 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                          v37 = *v19;
                          LODWORD(v121) = *v36;
                          *buf = v37;
                          re::MaterialParameterBlock::setConstant(a1, buf, 4uLL, &v121, 1, v134);
                          v134[0] = 0;
                        }
                      }

                      else
                      {
                        v34 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                        v35 = *v19;
                        *buf = *v34;
                        *&v121 = v35;
                        re::MaterialParameterBlock::setConstant(a1, &v121, 8uLL, buf, 32, v135);
                        v135[0] = 0;
                      }
                    }

                    else
                    {
                      v31 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                      v32 = v31[1];
                      v33 = *v19;
                      *buf = *v31;
                      *&buf[8] = v32;
                      *&v121 = v33;
                      re::MaterialParameterBlock::setConstant(a1, &v121, 0x10uLL, buf, 33, v136);
                      v136[0] = 0;
                    }
                  }

                  else
                  {
                    v28 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                    v29 = v28[1];
                    v30 = *v19;
                    *buf = *v28;
                    *&buf[8] = v29;
                    *&v121 = v30;
                    re::MaterialParameterBlock::setConstant(a1, &v121, 0x10uLL, buf, 34, v137);
                    v137[0] = 0;
                  }
                }

                else
                {
                  v26 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                  v27 = *v19;
                  *buf = *v26;
                  *&v121 = v27;
                  re::MaterialParameterBlock::setConstant(a1, &v121, 0x10uLL, buf, 48, v138);
                  v138[0] = 0;
                }
              }

              else
              {
                v25 = re::ShaderGraphMaterial::getConstant(a2, &v142);
                *buf = *v25;
                *&buf[16] = v25[1];
                v160 = v25[2];
                *&v121 = *v19;
                re::MaterialParameterBlock::setConstant(a1, &v121, 0x30uLL, buf, 49, v139);
                v139[0] = 0;
              }
            }

            else
            {
              v24 = re::ShaderGraphMaterial::getConstant(a2, &v142);
              *buf = *v24;
              *&buf[16] = v24[1];
              v160 = v24[2];
              v161 = v24[3];
              *&v121 = *v19;
              re::MaterialParameterBlock::setConstant(a1, &v121, 0x40uLL, buf, 50, v140);
              v140[0] = 0;
            }
          }

          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v149);
          v17 = v151;
        }

        while (v151 != -1);
        v10 = v152;
        a3 = v18;
      }
    }

LABEL_100:
    v142 = v10 + 688;
    v59 = *(v10 + 88);
    if (v59 >= 0x10)
    {
      v60 = 0;
      v61 = *(v10 + 86);
      v62 = v59 >> 4;
      while (1)
      {
        v63 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v61), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v143 = v63 ^ 0xFFFFLL;
        if (v63 != 0xFFFFLL)
        {
          break;
        }

        v60 -= 16;
        ++v61;
        if (!--v62)
        {
          goto LABEL_144;
        }
      }

      v64 = __clz(__rbit64(v63 ^ 0xFFFFLL));
      v65 = v64 - v60;
      v144 = v64 - v60;
      if (v64 + 1 != v60)
      {
        v99 = v9;
        v100 = a3;
        do
        {
          v66 = (*(v142 + 1) + 16 * v65);
          v118 = *v66;
          re::MaterialParameterBlock::handle(a1, &v118, buf);
          v118 = 0;
          if ((buf[12] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(buf, 64))
          {
            v117 = *v66;
            re::MaterialParameterBlock::handle(a2, &v117, &v147);
            v117 = 0;
            if ((v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 64))
            {
              re::MaterialParameterBlock::textureHandleValue(a2, &v147, &v121);
              v115 = *v66;
              re::MaterialParameterBlock::setTextureHandle(a1, &v115, &v121, v116);
              v115 = 0;
              v116[0] = 0;
              if (re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(a3, v66))
              {
                v113 = *v66;
                re::MaterialParameterBlock::setTextureHandle(a1, &v113, &v121, v114);
                v113 = 0;
                v114[0] = 0;
              }

              else
              {
                v67 = v4;
                v68 = (*(**(*(v4 + 16) + 56) + 32))(*(*(v4 + 16) + 56));
                v69 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v68);
                v101 = *(v69 + 7);
                re::TextureHandle::metalTexture(&v158, &v121);
                v157 = *(v69 + 26);
                v70 = v158;
                v71 = [v158 usage] | 4;
                v156 = v71;
                v72 = [v70 pixelFormat];
                v154 = 0;
                v155 = v72;
                v149 = 2;
                TextureCompressionType = re::mtl::getTextureCompressionType(&v157, &v154, &v155, &v156, &v149);
                v74 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
                if (([v70 sampleCount] & 0xFFFFFFFE) != 0)
                {
                  v75 = 4;
                }

                else
                {
                  v75 = 2;
                }

                [v74 setTextureType_];
                [v74 setWidth_];
                [v74 setHeight_];
                [v74 setMipmapLevelCount_];
                [v74 setUsage_];
                [v74 setStorageMode_];
                [v74 setPixelFormat_];
                if (([v74 respondsToSelector_] & 1) != 0 || objc_msgSend(v74, sel_methodSignatureForSelector_, sel_setCompressionType_))
                {
                  [v74 setCompressionType_];
                }

                [v74 setSampleCount_];
                [v74 setProtectionOptions_];
                re::mtl::Device::makeTexture(&v153, v74, &v157);
                v149 = 0;
                v150 = 0;
                NS::SharedPtr<MTL::Buffer>::operator=(&v149, &v158);
                v76 = NS::SharedPtr<MTL::Buffer>::operator=(&v150, &v153);
                v4 = v67;
                v77 = *(v67 + 24);
                v78 = *(v77 + 8);
                v79 = *(v77 + 16);
                a3 = v100;
                if (v79 >= v78)
                {
                  v80 = v79 + 1;
                  if (v78 < v79 + 1)
                  {
                    if (*v77)
                    {
                      v81 = 2 * v78;
                      v82 = v78 == 0;
                      v83 = 8;
                      if (!v82)
                      {
                        v83 = v81;
                      }

                      if (v83 <= v80)
                      {
                        v84 = v80;
                      }

                      else
                      {
                        v84 = v83;
                      }

                      re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::setCapacity(*(v67 + 24), v84);
                    }

                    else
                    {
                      re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::setCapacity(v77, v80);
                      ++*(v77 + 24);
                    }
                  }

                  v79 = *(v77 + 16);
                }

                v85 = (*(v77 + 32) + 16 * v79);
                *v85 = v149;
                v85[1] = v150;
                ++*(v77 + 16);
                ++*(v77 + 24);
                re::TextureManager::registerTexture(v101, &v153, v112);
                if (v150)
                {

                  v150 = 0;
                }

                if (v149)
                {
                }

                if (v153)
                {
                }

                if (v74)
                {
                }

                if (v158)
                {
                }

                v110 = *v66;
                re::MaterialParameterBlock::setTextureHandle(a1, &v110, v112, v111);
                v110 = 0;
                v111[0] = 0;
                re::TextureHandle::invalidate(v112);
              }

              re::TextureHandle::invalidate(&v121);
            }
          }

          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v142);
          v65 = v144;
        }

        while (v144 != -1);
        v10 = v152;
        v9 = v99;
      }
    }

LABEL_144:
    v142 = v10 + 264;
    v86 = *(v10 + 35);
    if (v86 >= 0x10)
    {
      v87 = 0;
      v88 = *(v10 + 33);
      v89 = v86 >> 4;
      while (1)
      {
        v90 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v88), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v143 = v90 ^ 0xFFFFLL;
        if (v90 != 0xFFFFLL)
        {
          break;
        }

        v87 -= 16;
        ++v88;
        if (!--v89)
        {
          goto LABEL_162;
        }
      }

      v91 = __clz(__rbit64(v90 ^ 0xFFFFLL));
      v92 = v91 - v87;
      v144 = v91 - v87;
      if (v91 + 1 != v87)
      {
        do
        {
          v93 = (*(v142 + 1) + 16 * v92);
          v109 = *v93;
          re::MaterialParameterBlock::handle(a1, &v109, buf);
          v109 = 0;
          if ((buf[12] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(buf, 128))
          {
            v108 = *v93;
            re::MaterialParameterBlock::handle(a2, &v108, &v147);
            v108 = 0;
            if ((v148 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v147, 128))
            {
              v94 = *re::MaterialParameterBlock::bufferValue(a2, &v147);
              v95 = *(v9 + 26);
              v96 = [v95 newBufferWithLength:objc_msgSend(v94 options:{sel_length), 0}];
              memcpy([v96 contents], objc_msgSend(v94, sel_contents), objc_msgSend(v94, sel_length));
              [v94 length];
              v106 = *v93;
              v102[0] = v96;
              v103 = 0;
              v104 = 0;
              v105 = [v96 length];
              v97 = re::MaterialParameterBlock::setBuffer(a1, &v106, v102, v107);
              v107[0] = 0;
              if (v103 != -1)
              {
                (off_1F5D00A18[v103])(&v149, v102, v97);
              }

              v103 = -1;
              v106 = 0;
              if (v96)
              {
              }

              if (v94)
              {
              }
            }
          }

          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v142);
          v92 = v144;
        }

        while (v144 != -1);
        v10 = v152;
      }
    }

LABEL_162:
    if (v10)
    {
    }
  }
}

unint64_t re::ecs2::ensureParametersBlockIndexExists(re::ecs2 *this, unint64_t a2, uint64_t a3, re::RenderManager *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v6 = *(this + 11);
  if (v6 <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(this + 72, a2 + 1);
    v6 = *(this + 11);
  }

  if (v6 <= a2)
  {
    v21 = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v6;
    _os_log_send_and_compose_impl(v11, &v21, &v30, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  if (!*(*(this + 13) + 8 * a2))
  {
    re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(&v20, &v19);
    v6 = *(this + 11);
    if (v6 <= a2)
    {
      goto LABEL_18;
    }

    v7 = *(this + 13);
    v8 = *(v7 + 8 * a2);
    *(v7 + 8 * a2) = v19;
    v19 = v8;
    if (v8)
    {

      v6 = *(this + 11);
    }
  }

  if (v6 <= a2)
  {
LABEL_14:
    v21 = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v6;
    _os_log_send_and_compose_impl(v14, &v21, &v30, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v19);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v21 = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v6;
    _os_log_send_and_compose_impl(v17, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v19);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 13) + 8 * a2;
}

uint64_t re::ecs2::getOrAddMaterialParameterBlockArrayComponentWithMaterialCount(re::ecs2 *this, re::ecs2::Entity *a2)
{
  v3 = *(this + 26);
  if (!v3)
  {
    v3 = re::ecs2::EntityComponentCollection::add((this + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  if (*(v3 + 88) < a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v3 + 72, a2);
  }

  return v3;
}

void re::ecs2::deepCopyMaterialParameter(uint64_t *a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  v6 = *(*a1 + 192);
  if (!v6)
  {
    goto LABEL_62;
  }

  v60 = *(v6 + 72);
  if (!v60)
  {
    goto LABEL_62;
  }

  v7 = 0;
  v8 = 0;
  v9 = *(v4 + 208);
  v59 = *(*a1 + 192);
  v57 = a1[1];
  do
  {
    v10 = v7;
    v11 = *(v6 + 72);
    if (v11 <= v8)
    {
      *buf = 0;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v70 = 0u;
      v71 = 0u;
      v47 = MEMORY[0x1E69E9C10];
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v62[0]) = 136315906;
      *(v62 + 4) = "operator[]";
      WORD6(v62[0]) = 1024;
      if (v48)
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      *(v62 + 14) = 789;
      WORD1(v62[1]) = 2048;
      *(&v62[1] + 4) = v8;
      WORD6(v62[1]) = 2048;
      *(&v62[1] + 14) = v11;
      _os_log_send_and_compose_impl(v49, buf, &v70, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
      goto LABEL_70;
    }

    v12 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((*(v6 + 88) + 24 * v8));
    memset(v62, 0, sizeof(v62));
    DWORD1(v62[2]) = 0x7FFFFFFF;
    if (!v12)
    {
      v7 = v10;
      if (!v9)
      {
        goto LABEL_55;
      }

LABEL_14:
      if (v8 >= v9[11] || !*(v9[13] + 8 * v8))
      {
        goto LABEL_55;
      }

      if (!v7)
      {
        v7 = re::ecs2::getOrAddMaterialParameterBlockArrayComponentWithMaterialCount(v5, v60);
      }

      v58 = v7;
      v11 = v9[6];
      if (v11 > v8)
      {
        v17 = (v9[8] + 32 * v8);
        v18 = *v17;
        if (!*v17)
        {
          v18 = v17[1];
        }

        v19 = *(v18 + 336);
        if (v19)
        {
          v20 = 0;
          v21 = *(v18 + 320);
          do
          {
            if ((*v21 & 0x80000000) != 0)
            {
              goto LABEL_27;
            }

            v21 += 80;
            ++v20;
          }

          while (v19 != v20);
          LODWORD(v20) = *(v18 + 336);
        }

        else
        {
          LODWORD(v20) = 0;
        }

LABEL_27:
        v22 = *(v18 + 336);
        while (1)
        {
LABEL_28:
          if (v20 == v19)
          {
            v38 = re::ecs2::ensureParametersBlockIndexExists(v58, v8, a2, v13);
            v11 = v9[11];
            if (v11 > v8)
            {
              re::ecs2::deepCopyMaterialParameterBlock(*v38, *(v9[13] + 8 * v8), v62, a1);
              v5 = v57;
              v7 = v58;
              goto LABEL_55;
            }

LABEL_74:
            v61 = 0;
            v73 = 0u;
            v74 = 0u;
            v72 = 0u;
            v70 = 0u;
            v71 = 0u;
            v53 = MEMORY[0x1E69E9C10];
            v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            *&buf[4] = "operator[]";
            v64 = 1024;
            if (v54)
            {
              v55 = 3;
            }

            else
            {
              v55 = 2;
            }

            v65 = 789;
            v66 = 2048;
            v67 = v8;
            v68 = 2048;
            v69 = v11;
            _os_log_send_and_compose_impl(v55, &v61, &v70, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v56, v57);
            _os_crash_msg();
            __break(1u);
          }

          v23 = *(v18 + 320) + 320 * v20;
          v25 = *(v23 + 32);
          v24 = v23 + 32;
          if (v25 == 64)
          {
            break;
          }

LABEL_46:
          if (v22 <= v20 + 1)
          {
            v37 = v20 + 1;
          }

          else
          {
            v37 = v22;
          }

          while (v37 - 1 != v20)
          {
            LODWORD(v20) = v20 + 1;
            if ((*(*(v18 + 320) + 320 * v20) & 0x80000000) != 0)
            {
              goto LABEL_28;
            }
          }

          LODWORD(v20) = v37;
        }

        v26 = re::AssetHandle::AssetHandle(&v70, (v24 + 80));
        if (*(&v70 + 1) && (v27 = atomic_load((*(&v70 + 1) + 896)), v27 == 2))
        {
          if (*(*(&v70 + 1) + 328) == 1)
          {
            v28 = *(v24 - 24);
            v29 = v28 >> 1;
            *buf = v28 >> 1;
            v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v28 >> 31) ^ (v28 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v28 >> 31) ^ (v28 >> 1))) >> 27));
            v31 = v30 ^ (v30 >> 31);
            if (DWORD2(v62[1]))
            {
              v32 = v31 % DWORD2(v62[1]);
              v33 = *(*(&v62[0] + 1) + 4 * v32);
              if (v33 != 0x7FFFFFFF)
              {
                while (*(*&v62[1] + 16 * v33 + 8) != v29)
                {
                  v33 = *(*&v62[1] + 16 * v33) & 0x7FFFFFFF;
                  if (v33 == 0x7FFFFFFF)
                  {
                    goto LABEL_44;
                  }
                }

                goto LABEL_45;
              }
            }

            else
            {
              LODWORD(v32) = 0;
            }

LABEL_44:
            re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(v62, v32, v31, buf, buf);
            ++DWORD2(v62[2]);
          }
        }

        else
        {
          v34 = *re::ecsComponentsLogObjects(v26);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = re::AssetHandle::assetInfo(&v70);
            if (v35[17])
            {
              v36 = v35[18];
            }

            else
            {
              v36 = v35 + 137;
            }

            *buf = 136315138;
            *&buf[4] = v36;
            _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Texture asset handle %s is not loaded and can't be cached", buf, 0xCu);
          }
        }

LABEL_45:
        re::AssetHandle::~AssetHandle(&v70);
        v22 = *(v18 + 336);
        goto LABEL_46;
      }

LABEL_70:
      v61 = 0;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v70 = 0u;
      v71 = 0u;
      v50 = MEMORY[0x1E69E9C10];
      v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      v64 = 1024;
      if (v51)
      {
        v52 = 3;
      }

      else
      {
        v52 = 2;
      }

      v65 = 789;
      v66 = 2048;
      v67 = v8;
      v68 = 2048;
      v69 = v11;
      _os_log_send_and_compose_impl(v52, &v61, &v70, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    v14 = v12;
    v15 = *(v12 + 1784);
    v7 = v10;
    if (v15 && !re::MaterialParameterBlock::isEmpty(v15))
    {
      if (!v10)
      {
        v7 = re::ecs2::getOrAddMaterialParameterBlockArrayComponentWithMaterialCount(v5, v60);
      }

      v16 = re::ecs2::ensureParametersBlockIndexExists(v7, v8, a2, v13);
      re::ecs2::deepCopyMaterialParameterBlock(*v16, *(v14 + 1784), v62, a1);
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_55:
    v39 = *(a2 + 24);
    v40 = *(v4 + 312);
    if (re::MaterialManager::entityHasSystemMaterialParameterBlock(v39, v40))
    {
      if (!v7)
      {
        v7 = re::ecs2::getOrAddMaterialParameterBlockArrayComponentWithMaterialCount(v5, v60);
        v40 = *(v4 + 312);
      }

      v41 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v39, v40);
      v43 = *re::ecs2::ensureParametersBlockIndexExists(v7, v8, a2, v42);
      v72 = 0u;
      v70 = 0u;
      v71 = 0u;
      DWORD1(v72) = 0x7FFFFFFF;
      re::ecs2::deepCopyMaterialParameterBlock(v43, v41, &v70, a1);
      re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v70);
    }

    re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v62);
    ++v8;
    v6 = v59;
  }

  while (v8 != v60);
  if (v7)
  {
    re::ecs2::Component::markDirty(v7);
  }

LABEL_62:
  v44 = *(v5 + 43);
  if (v44)
  {
    for (i = 0; i != v44; ++i)
    {
      a1[1] = *re::ecs2::EntityComponentCollection::operator[](v5 + 320, i);
      *a1 = *re::ecs2::EntityComponentCollection::operator[](v4 + 320, i);
      v46 = *(a1 + 1);
      v70 = *a1;
      v71 = v46;
      re::ecs2::deepCopyMaterialParameter(&v70, a2);
    }
  }
}

double re::ecs2::VisualCopyHelper::makeVisualCopyEntity@<D0>(re::ecs2::ECSHelper *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, re::ecs2::Entity **a7@<X8>)
{
  v18 = a5;
  re::ecs2::ECSHelper::deepCopyEntity(a1, 1, &v18, 0, re::ecs2::isComponentTypeExcludedForVisualCopy, a7);
  v12 = *a7;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v17 = 0x7FFFFFFFLL;
  re::internal::MeshSortGroupFixupTable::fixupMeshSortGroupsForEntity(v15, v12);
  v14[0] = a1;
  v14[1] = v12;
  v14[2] = a3;
  v14[3] = a2;
  re::ecs2::deepCopyMaterialParameter(v14, a4);
  return re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v15);
}

uint64_t re::ecs2::isComponentTypeExcludedForVisualCopy(re::ecs2 *this, uint64_t *a2, void *a3)
{
  v3 = 0;
  if (re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::StaticTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::ClippingPrimitiveComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this && re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this)
  {
    v4 = *a2;
    v5 = *(*a2 + 32);
    if (v5)
    {
      v6 = 0;
      v7 = (*(v4 + 16) + 8);
      while (1)
      {
        v8 = *v7;
        v7 += 6;
        if (v8 < 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          LODWORD(v6) = *(*a2 + 32);
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

    else
    {
      v9 = *(v4 + 16);
      do
      {
        v10 = *(v9 + 24 * v6 + 16);
        v11 = v10 == this;
        v3 = v10 != this;
        if (v11)
        {
          break;
        }

        v12 = v5 <= v6 + 1 ? v6 + 1 : *(*a2 + 32);
        while (v12 - 1 != v6)
        {
          LODWORD(v6) = v6 + 1;
          if ((*(v9 + 24 * v6 + 8) & 0x80000000) != 0)
          {
            goto LABEL_34;
          }
        }

        LODWORD(v6) = v12;
LABEL_34:
        ;
      }

      while (v6 != v5);
    }
  }

  return v3;
}

void *re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 16;
          v11 += 2;
          v10 -= 16;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

re::ecs2::ClippingParameterDataStateTracking *re::ecs2::ClippingParameterDataStateTracking::ClippingParameterDataStateTracking(re::ecs2::ClippingParameterDataStateTracking *this)
{
  v16[11] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5D00B70;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 44) = 0x7FFFFFFFLL;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  v2 = this + 56;
  *(this + 22) = 0;
  *(this + 92) = 0x7FFFFFFFLL;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  v3 = this + 104;
  *(this + 34) = 0;
  *(this + 140) = 0x7FFFFFFFLL;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  v4 = this + 152;
  *(this + 46) = 0;
  *(this + 188) = 0x7FFFFFFFLL;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  v5 = this + 200;
  *(this + 58) = 0;
  *(this + 236) = 0x7FFFFFFFLL;
  *(this + 248) = 0u;
  *(this + 70) = 0;
  *(this + 264) = 0u;
  *(this + 284) = 0x7FFFFFFFLL;
  *(this + 74) = -1;
  *this = &unk_1F5D00A38;
  *(this + 24) = 0u;
  *(this + 100) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 364) = 0u;
  *(this + 404) = 0x1FFFFFFFFLL;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 176) = 0;
  *(this + 708) = 0x7FFFFFFFLL;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 188) = 0;
  *(this + 756) = 0x7FFFFFFFLL;
  re::ecs2::ClippingParametersRegistry::ClippingParametersRegistry((this + 768));
  *(this + 114) = 0;
  *(this + 56) = 0u;
  v16[0] = re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v16[1] = re::ecs2::ComponentImpl<re::ecs2::ClippingPrimitiveComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v16[2] = re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v16[3] = re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
  v16[4] = re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v16[5] = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v16[6] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v16[7] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v16[8] = re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v16[9] = re::ecs2::ComponentImpl<re::ecs2::PortalComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v16[10] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v13 = v16;
  v14 = 11;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 304), &v13);
  v13 = &v15;
  v14 = 1;
  v15 = re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v9 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 328), &v13);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 44, 0);
  ++*(this + 94);
  *(this + 99) = 8;
  re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::allocBlock(this + 44);
  re::Defaults::uintValue(&v13, "clipping.SDFTextures.partitionSize", v10);
  if (v13)
  {
    v11 = WORD2(v13);
  }

  else
  {
    v11 = 16;
  }

  *(this + 460) = v11;
  return this;
}

uint64_t re::ecs2::ClippingParameterDataStateTracking::invalidateTransformEventHandler<REBillboardTransformChangedEvent>(re::ecs2::ClippingParameterDataStateTracking *a1, re::ecs2::Entity *a2)
{
  v4 = a2;
  if (a2)
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
    re::ecs2::ClippingParameterDataStateTracking::clearEntityHierarchyStateData(a1, v4);
  }

  return 0;
}

uint64_t re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 208 * a2;
  }

  else
  {
    return 0;
  }
}

void re::ecs2::ClippingParameterDataStateTracking::buildPerEntityStateForDirtyEntityHierarchies(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v417 = *MEMORY[0x1E69E9840];
  v4 = (*(**(a1 + 912) + 32))(*(a1 + 912));
  v318 = re::ServiceLocator::service<re::TransformService>(v4);
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = (*(a2 + 16) + 8);
    while (1)
    {
      v8 = *v7;
      v7 += 6;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        v6 = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v341 = v3;
  if (v6 != v5)
  {
    v9 = *(a2 + 16);
    v10.i64[0] = 0x7F0000007FLL;
    v10.i64[1] = 0x7F0000007FLL;
    v342 = vnegq_f32(v10);
    v315 = *(a2 + 32);
    v316 = a2;
    while (1)
    {
      v11 = *(v9 + 24 * v6 + 16);
      v12 = *(v11 + 32);
      if (v12 && (*(v12 + 304) & 0x80) == 0)
      {
        *buf = *(v11 + 32);
        if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a2, buf))
        {
          goto LABEL_241;
        }

        while (1)
        {
          v13 = *(*buf + 32);
          if (!v13 || (*(v13 + 304) & 0x80) != 0)
          {
            break;
          }

          *buf = *(*buf + 32);
          if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a2, buf))
          {
            goto LABEL_241;
          }
        }
      }

      v14 = *(v3 + 896);
      v319 = *(v3 + 904);
      if (*(v3 + 56))
      {
        v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
        v16 = *(*(v3 + 64) + 4 * ((v15 ^ (v15 >> 31)) % *(v3 + 80)));
        if (v16 != 0x7FFFFFFF)
        {
          v17 = *(v3 + 72);
          while (*(v17 + 224 * v16 + 8) != v11)
          {
            v16 = *(v17 + 224 * v16) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_21;
            }
          }

          goto LABEL_241;
        }
      }

LABEL_21:
      (*(**v14 + 8))(buf);
      if (buf[0])
      {
        v18 = *&buf[8];
      }

      else
      {
        v18 = 0;
      }

      for (i = *(v11 + 32); i; i = *(v22 + 32))
      {
        if ((*(i + 304) & 0x80) != 0)
        {
          break;
        }

        *&v395 = i;
        if (re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v3 + 56, &v395))
        {
          break;
        }

        (*(**v14 + 8))(buf);
        v20 = buf[0] ? *&buf[8] : 0;
        if (v18 != v20)
        {
          break;
        }

        v21 = re::ecs2::EntityComponentCollection::get((v395 + 48), re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
        if (v21)
        {
          if (*(v21 + 25))
          {
            break;
          }
        }

        v22 = v395;
        v23 = *(v395 + 160);
        if (v23)
        {
          if ((*(v23 + 112) & 1) == 0)
          {
            if (*(v395 + 192))
            {
              v11 = v395;
            }

            continue;
          }
        }

        else
        {
          v24 = re::ecs2::EntityComponentCollection::get((v395 + 48), re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (!v24)
          {
            v22 = v395;
            continue;
          }

          v22 = v395;
          if ((*(v24 + 68) & 1) == 0 && !*(v395 + 192))
          {
            continue;
          }
        }

        v11 = v22;
      }

      v378 = 0;
      v377 = 0;
      v379 = 1;
      v380 = 0;
      v381 = 0;
      v416.columns[0] = xmmword_1E3047670;
      v416.columns[1] = xmmword_1E3047680;
      v416.columns[2] = xmmword_1E30476A0;
      v416.columns[3] = xmmword_1E30474D0;
      v25 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      if (!v25 || (*(v25 + 25) & 1) == 0)
      {
        break;
      }

      v26 = 1;
      if (v11)
      {
        goto LABEL_83;
      }

LABEL_89:
      v44.i64[0] = 0x7F0000007FLL;
      v44.i64[1] = 0x7F0000007FLL;
      *&v45 = 0x7F0000007FLL;
      *(&v45 + 1) = 0x7F0000007FLL;
      v335 = vnegq_f32(v44);
      v338 = v45;
LABEL_96:
      v376 = __invert_f4(v416);
      re::StackScratchAllocator::StackScratchAllocator(&v395);
      v370[1] = 0;
      v370[0] = 0;
      v371 = 1;
      v373 = 0;
      v374 = 0;
      v372 = 0;
      v375 = 0;
      re::BucketArray<re::Matrix4x4<float>,8ul>::init(v370, &v395, 1uLL);
      v364 = 0;
      v363 = 0;
      v365 = 1;
      v367 = 0;
      v368 = 0;
      v366 = 0;
      v369 = 0;
      re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::init(&v363, &v395, 1uLL);
      *buf = &v416;
      *&buf[8] = &v376;
      *&buf[16] = v11;
      re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(&buf[24], &v377);
      *&buf[64] = v338;
      *&buf[80] = v335;
      v387.i64[0] = v18;
      v387.i8[8] = v26;
      v47 = re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::add(&v363, buf);
      if (*&buf[24] && (buf[40] & 1) == 0)
      {
        (*(**&buf[24] + 40))(v47);
      }

      v48 = v368;
      if (v368)
      {
        while (1)
        {
          v49 = v48 - 1;
          v50 = re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::operator[](&v363, v48 - 1);
          v51 = *(v50 + 16);
          v344 = *v50;
          v345 = v51;
          re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v346, (v50 + 24));
          v52 = *(v50 + 64);
          v53 = *(v50 + 80);
          *&v349[9] = *(v50 + 89);
          v348 = v52;
          *v349 = v53;
          v54 = re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::operator[](&v363, v49);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v54 + 24);
          v368 = v49;
          ++v369;
          v55 = v341;
          if (*(v345 + 304))
          {
            break;
          }

LABEL_226:
          if (v346[0] && (v347 & 1) == 0)
          {
            (*(*v346[0] + 40))();
          }

          v48 = v368;
          if (!v368)
          {
            goto LABEL_230;
          }
        }

        if (*(v341 + 56))
        {
          v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v345 ^ (v345 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v345 ^ (v345 >> 30))) >> 27));
          v57 = *(*(v341 + 64) + 4 * ((v56 ^ (v56 >> 31)) % *(v341 + 80)));
          if (v57 != 0x7FFFFFFF)
          {
            v58 = *(v341 + 72);
            while (*(v58 + 224 * v57 + 8) != v345)
            {
              v57 = *(v58 + 224 * v57) & 0x7FFFFFFF;
              if (v57 == 0x7FFFFFFF)
              {
                goto LABEL_106;
              }
            }

            goto LABEL_226;
          }
        }

LABEL_106:
        v59 = *(&v344 + 1);
        v60 = v344;
        if (re::ecs2::EntityComponentCollection::get((v345 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
        {
          v325 = *(*(&v344 + 1) + 16);
          v328 = **(&v344 + 1);
          v321 = *(*(&v344 + 1) + 48);
          v323 = *(*(&v344 + 1) + 32);
          re::TransformService::worldMatrixForRendering(&v382, v318, v345, 1);
          v61 = re::BucketArray<re::Matrix4x4<float>,8ul>::addUninitialized(v370);
          v63 = v385;
          v65 = v382;
          v64 = v383;
          *(v61 + 32) = v384;
          *(v61 + 48) = v63;
          *v61 = v65;
          *(v61 + 16) = v64;
          if (!v374)
          {
            re::internal::assertLog(4, v62, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
            _os_crash("assertion failure: (m_size > 0) Array is empty");
            __break(1u);
LABEL_407:
            re::internal::assertLog(4, v67, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
            _os_crash("assertion failure: (m_size > 0) Array is empty");
            __break(1u);
LABEL_408:
            v376.columns[0].i64[0] = 0;
            v411 = 0u;
            v410 = 0u;
            v409 = 0u;
            v408 = 0u;
            v407 = 0u;
            v304 = MEMORY[0x1E69E9C10];
            v305 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v416.columns[0].i32[0] = 136315906;
            *(v416.columns[0].i64 + 4) = "operator[]";
            v416.columns[0].i16[6] = 1024;
            if (v305)
            {
              v306 = 3;
            }

            else
            {
              v306 = 2;
            }

            *(&v416.columns[0].i32[3] + 2) = 789;
            v416.columns[1].i16[1] = 2048;
            *(v416.columns[1].i64 + 4) = v6;
            v416.columns[1].i16[6] = 2048;
            *(&v416.columns[1].i64[1] + 6) = 0;
            _os_log_send_and_compose_impl(v306, &v376, &v407, 80, &dword_1E1C61000, v304, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v416, 38, v311, v312);
            _os_crash_msg();
            __break(1u);
LABEL_412:
            v376.columns[0].i64[0] = 0;
            v411 = 0u;
            v410 = 0u;
            v409 = 0u;
            v408 = 0u;
            v407 = 0u;
            v307 = MEMORY[0x1E69E9C10];
            v308 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v416.columns[0].i32[0] = 136315906;
            *(v416.columns[0].i64 + 4) = "operator[]";
            v416.columns[0].i16[6] = 1024;
            if (v308)
            {
              v309 = 3;
            }

            else
            {
              v309 = 2;
            }

            *(&v416.columns[0].i32[3] + 2) = 789;
            v416.columns[1].i16[1] = 2048;
            *(v416.columns[1].i64 + 4) = v6;
            v416.columns[1].i16[6] = 2048;
            *(&v416.columns[1].i64[1] + 6) = v55;
            _os_log_send_and_compose_impl(v309, &v376, &v407, 80, &dword_1E1C61000, v307, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v416, 38, v311, v312);
            _os_crash_msg();
            __break(1u);
LABEL_416:
            re::internal::assertLog(5, v259, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v49);
            _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v310);
            __break(1u);
          }

          v59 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v370, v374 - 1);
          v418.columns[0] = v382;
          v418.columns[1] = v383;
          v418.columns[2] = v384;
          v418.columns[3] = v385;
          v419 = __invert_f4(v418);
          v336 = v419.columns[1];
          v339 = v419.columns[0];
          v331 = v419.columns[3];
          v333 = v419.columns[2];
          v66 = re::BucketArray<re::Matrix4x4<float>,8ul>::addUninitialized(v370);
          *v66 = v339;
          v66[1] = v336;
          v66[2] = v333;
          v66[3] = v331;
          if (!v374)
          {
            goto LABEL_407;
          }

          v68 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v370, v374 - 1);
          v60 = v68;
          v69.i64[0] = 0x7F0000007FLL;
          v69.i64[1] = 0x7F0000007FLL;
          v70 = vceqq_f32(v348, v69);
          v70.i32[3] = v70.i32[2];
          if ((vminvq_u32(v70) & 0x80000000) == 0 || (v71 = vceqq_f32(*v349, v342), v71.i32[3] = v71.i32[2], (vminvq_u32(v71) & 0x80000000) == 0))
          {
            v72 = 0;
            v73 = *v68;
            v74 = v68[1];
            v75 = v68[2];
            v76 = v68[3];
            v407 = v328;
            v408 = v325;
            v409 = v323;
            v410 = v321;
            do
            {
              *&buf[v72] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v407 + v72))), v74, *&v407.f32[v72 / 4], 1), v75, *(&v407 + v72), 2), v76, *(&v407 + v72), 3);
              v72 += 16;
            }

            while (v72 != 64);
            re::AABB::transform(&v348, buf, &v407);
            v348 = v407;
            *v349 = v408;
          }
        }

        v77.i64[0] = 0x7F0000007FLL;
        v77.i64[1] = 0x7F0000007FLL;
        v361 = v342;
        v362 = v77;
        v78 = *(v345 + 20);
        if (v78)
        {
          _Q0 = *(v78 + 64);
          _Q1 = *(v78 + 80);
          _Q0.i32[3] = *(v78 + 108);
          v334 = vcvt_f16_f32(_Q0);
          __asm { FCVT            H0, S1 }

          v332 = _Q0.i16[0];
          v85 = vextq_s8(_Q1, _Q1, 8uLL);
          *v85.f32 = vext_s8(*_Q1.i8, *v85.f32, 4uLL);
          v337 = vcvt_f16_f32(v85).u32[0];
          if (re::s_debugSettingsManager)
          {
            v407.i32[0] = 0;
            *buf = 0x417EAC0DEDDBE5AELL;
            *&buf[8] = "clipping:featherOverride";
            v86 = re::DebugSettingsManager::getWithErrorCode<float>(re::s_debugSettingsManager, buf, &v407);
            v88 = v86;
            if (buf[0])
            {
              if (buf[0])
              {
              }
            }

            if (!v88)
            {
              _S0 = v407.i32[0];
              __asm { FCVT            H1, S0 }

              v90 = vzip1_s16(_D1.u16[0], _D1.u16[0]);
              v90.i16[2] = _D1.i16[0];
              v332 = _D1.i16[0];
              v334 = v90;
              v337 = vdup_lane_s16(_D1, 0).u32[0];
            }
          }

          v91 = *(v78 + 32);
          *&buf[16] = *(v78 + 48);
          v361 = v91;
          v362 = *&buf[16];
          v340 = *(v78 + 112);
          v92 = *(v78 + 113);
          v329 = *(v78 + 104);
          v93 = *(v78 + 96);
          v326 = HIWORD(v337);
LABEL_124:
          v98 = 1;
        }

        else
        {
          v94 = re::ecs2::EntityComponentCollection::get((v345 + 48), re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v329 = 0.0;
          if (v94)
          {
            _S0 = *(v94 + 64);
            __asm { FCVT            H2, S0 }

            v97 = *(v94 + 32);
            *&buf[16] = *(v94 + 48);
            v361 = v97;
            v362 = *&buf[16];
            v340 = *(v94 + 68);
            *v97.f32 = vzip1_s16(_H2, _H2);
            v92 = 1;
            v97.i16[2] = _H2;
            v334 = *v97.f32;
            v93 = 0x3F8000003F800000;
            LOWORD(v337) = _H2;
            v326 = _H2;
            v332 = _H2;
            goto LABEL_124;
          }

          v98 = 0;
          v334 = 0;
          v326 = 0;
          v92 = 1;
          v93 = 0x3F8000003F800000;
          v340 = 1;
          LOWORD(v337) = 0;
          v332 = 0;
        }

        if (v349[24] == 1)
        {
          v99.i64[0] = 0x7F0000007FLL;
          v99.i64[1] = 0x7F0000007FLL;
          v359 = v99;
          v360 = v342;
          v355 = 0;
          v354 = 0;
          v356 = 1;
          v357 = 0;
          v358 = 0;
        }

        else
        {
          v359 = v348;
          v360 = *v349;
          re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(&v354, v346);
        }

        v100 = v345;
        if (v98 && v340 & 1 | v92 & (*(v345 + 24) != 0))
        {
          re::TransformService::worldMatrixForRendering(&v382, v318, v345, 1);
          v420.columns[2] = v384;
          v420.columns[3] = v385;
          v420.columns[0] = v382;
          v420.columns[1] = v383;
          v421 = __invert_f4(v420);
          v322 = v421.columns[0];
          v324 = v421.columns[2];
          v317 = v421.columns[1];
          v102 = v421.columns[2];
          v421.columns[0] = vsubq_f32(v362, v361);
          v421.columns[0].i32[3] = 0;
          v353 = vmaxnmq_f32(v421.columns[0], 0);
          if (vmuls_lane_f32(vmuls_lane_f32(v353.f32[0], *v353.f32, 1), v353, 2) <= 0.00001 || (v103 = vsubq_f32(v360, v359), v103.i32[3] = 0, v104 = vmaxnmq_f32(v103, 0), vmuls_lane_f32(vmuls_lane_f32(v104.f32[0], *v104.f32, 1), v104, 2) <= 0.00001))
          {
            if ((atomic_exchange(&_MergedGlobals_403, 1u) & 1) == 0)
            {
              v114 = *re::ecsComponentsLogObjects(v101);
              v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
              v102 = v324;
              if (v115)
              {
                v116 = *(v345 + 37);
                *buf = 136315138;
                *&buf[4] = v116;
                _os_log_impl(&dword_1E1C61000, v114, OS_LOG_TYPE_DEFAULT, "Warning entity '%s'will be culled as the bounding clip volume is zero", buf, 0xCu);
                v102 = v324;
              }
            }

            v359 = 0u;
            v360 = 0u;
            v55 = v341;
          }

          else
          {
            v313 = v359;
            v314 = v360;
            v105 = 0;
            v106 = *v60;
            v107 = v60[1];
            v108 = v60[2];
            v109 = v60[3];
            v407 = v382;
            v408 = v383;
            v409 = v384;
            v410 = v385;
            do
            {
              *&buf[v105] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, COERCE_FLOAT(*(&v407 + v105))), v107, *&v407.f32[v105 / 4], 1), v108, *(&v407 + v105), 2), v109, *(&v407 + v105), 3);
              v105 += 16;
            }

            while (v105 != 64);
            re::AABB::transform(&v361, buf, &v407);
            v111 = v313;
            v110 = v314;
            v111.i32[3] = 0;
            v112 = v407;
            v113 = v408;
            v112.i32[3] = 0;
            v110.i32[3] = 0;
            v113.i32[3] = 0;
            v359 = vmaxnmq_f32(v111, v112);
            v360 = vminnmq_f32(v110, v113);
            v102 = v324;
          }

          if (v329 <= 0.0)
          {
            v130 = 0;
            v128 = 0;
            v129 = 0uLL;
          }

          else
          {
            re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(buf, v93, v329);
            v117 = 1.5287;
            v118.i32[0] = 1069787979;
            if (*buf < 1.0)
            {
              v118.i32[0] = 1.0;
              if (*buf > 0.0)
              {
                v118.f32[0] = (*buf * 0.52866) + 1.0;
              }
            }

            v102 = v324;
            if (*&buf[4] < 1.0)
            {
              v117 = 1.0;
              if (*&buf[4] > 0.0)
              {
                v117 = (*&buf[4] * 0.52866) + 1.0;
              }
            }

            v118.f32[1] = v117;
            v119 = *(v55 + 920);
            v120 = (v119 - 1);
            v121 = *&v93 * v120;
            v122 = *(&v93 + 1) * v120;
            *&v123 = (*&v93 * v120) - floorf(*&v93 * v120);
            *(&v123 + 1) = v122 - floorf(v122);
            v124 = vcvtms_s32_f32(v121);
            v125 = vcvtps_s32_f32(v121);
            *&v129 = vmul_n_f32(v118, v329);
            v126 = vcvtps_s32_f32(v122);
            v127 = v119 * vcvtms_s32_f32(v122);
            v128 = (v127 + v124) | ((v127 + v125) << 16) | ((v119 * v126 + v124) << 32) | ((v119 * v126 + v125) << 48);
            *(&v129 + 1) = v353.i64[0];
            v130 = v123;
          }

          v131 = 0;
          v132 = vcgtq_f32(v361, v362);
          v132.i32[3] = v132.i32[2];
          v133.i64[0] = 0x3F0000003F000000;
          v133.i64[1] = 0x3F0000003F000000;
          v134 = vmulq_f32(vaddq_f32(v361, v362), v133);
          v135 = v134.i64[1];
          v136 = *v134.f32;
          if ((vmaxvq_u32(v132) & 0x80000000) != 0)
          {
            v135 = 0;
            v136 = 0;
          }

          *v137.f32 = v136;
          v137.i64[1] = v135;
          v138 = vaddq_f32(v385, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v136.f32[0]), v383, v136, 1), v384, v137, 2));
          v352 = vdivq_f32(v138, vdupq_laneq_s32(v138, 3));
          v409 = 0u;
          v408 = 0u;
          v407 = 0u;
          *v410.f32 = v334;
          v410.i16[4] = v332;
          v410.i16[5] = v337;
          v410.i32[3] = v326;
          v139 = v317;
          v140 = COERCE_DOUBLE(vzip1_s32(*&vextq_s8(v322, v322, 8uLL), *&vextq_s8(v139, v139, 8uLL)));
          v141 = COERCE_DOUBLE(vzip2_s32(*v322.i8, *v317.f32));
          v142 = COERCE_DOUBLE(vzip1_s32(*v322.i8, *v317.f32));
          do
          {
            v139.i32[0] = v353.i32[v131];
            v143 = 0uLL;
            if (*v139.i32 != 0.0)
            {
              if (v131 == 2)
              {
                v144 = v102.f32[2];
              }

              else
              {
                v144 = v102.f32[1];
              }

              if (v131 == 2)
              {
                v145 = v140;
              }

              else
              {
                v145 = v141;
              }

              if (v131)
              {
                v146 = v144;
              }

              else
              {
                v146 = v102.f32[0];
              }

              if (v131)
              {
                *v143.i64 = v145;
              }

              else
              {
                *v143.i64 = v142;
              }

              v143.f32[2] = v146;
              v139 = vdupq_lane_s32(*v139.i8, 0);
              v143 = vdivq_f32(v143, v139);
            }

            v143.i32[3] = v352.i32[v131];
            *(&v407 + v131++) = v143;
          }

          while (v131 != 3);
          *buf = v407;
          *&buf[16] = v408;
          *&buf[32] = v409;
          *&buf[48] = v410;
          *&buf[64] = v129;
          *&buf[80] = v128;
          *&buf[88] = v130;
          re::ecs2::ClippingParametersRegistry::add(v55 + 768, buf, v350);
          if (v350[0])
          {
            if (v92)
            {
              re::DynamicOverflowArray<unsigned short,8ul>::add(&v354, &v351);
            }

            if (v340)
            {
              re::DynamicOverflowArray<unsigned short,8ul>::add(v346, &v351);
              v348 = v359;
              *v349 = v360;
            }
          }

          else if ((atomic_exchange(byte_1EE1B5989, 1u) & 1) == 0)
          {
            v148 = *re::ecsComponentsLogObjects(v147);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              v149 = *(v345 + 37);
              *v412 = 134218242;
              v413 = 1024;
              v414 = 2080;
              v415 = v149;
              _os_log_impl(&dword_1E1C61000, v148, OS_LOG_TYPE_DEFAULT, "Current frame has more than %zu unique clip primitives. Unable to add clip primitive for entity '%s'.", v412, 0x16u);
            }
          }

          v100 = v345;
        }

        v150 = re::ecs2::RenderOptions::forEntity(v319, v100);
        v151 = v355;
        if (v150[18] == 1 && (v150[19] & 1) != 0)
        {
          if ((v349[24] & 1) == 0)
          {
            v152 = *&v349[16];
            v153 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((v55 + 608), *&v349[16]);
            if (v153 == -1)
            {
              memset(buf, 0, 48);
              *&buf[36] = 0x7FFFFFFF;
              v155 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((v55 + 608), v152);
              if (v155 == -1)
              {
                v154 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd((v55 + 608), &v349[16], buf);
              }

              else
              {
                v154 = (*(v55 + 616) + 56 * v155 + 8);
              }

              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
            }

            else
            {
              v154 = (*(v55 + 616) + 56 * v153 + 8);
            }

            re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v154, &v345);
            re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v55 + 672, &v345);
          }

          if (v151 || (v349[24] & 1) == 0)
          {
LABEL_190:
            *buf = *&v349[16];
            v156 = *v59;
            v157 = *(v59 + 16);
            v158 = *(v59 + 48);
            *&buf[48] = *(v59 + 32);
            *&buf[64] = v158;
            *&buf[16] = v156;
            *&buf[32] = v157;
            *&buf[80] = v359;
            v387 = v360;
            re::AABB::transform(&v359, v59, &v388);
            re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(&v390, &v354);
            *v393 = 0;
            *&v393[4] = 0;
            v393[6] = v340 & 1;
            v407 = 0uLL;
            v408.i64[0] = 0;
            v159 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v345 ^ (v345 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v345 ^ (v345 >> 30))) >> 27));
            re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v55 + 56, &v345, v159 ^ (v159 >> 31), &v407);
            if (v407.i32[3] == 0x7FFFFFFF)
            {
              v160 = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v55 + 56, v407.u32[2], v407.u64[0]);
              *(v160 + 8) = v345;
              v161 = v160 + 16;
              v162 = v388;
              *(v160 + 112) = v387;
              *(v160 + 128) = v162;
              *(v160 + 144) = v389;
              v163 = *&buf[48];
              *(v160 + 48) = *&buf[32];
              *(v160 + 64) = v163;
              v164 = *&buf[80];
              *(v160 + 80) = *&buf[64];
              *(v160 + 96) = v164;
              v165 = *&buf[16];
              *(v160 + 16) = *buf;
              *(v160 + 32) = v165;
              re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v160 + 160, &v390);
              *(v160 + 200) = *v393;
              *(v160 + 203) = *&v393[3];
              v55 = v341;
              ++*(v341 + 96);
            }

            else
            {
              v161 = *(v55 + 72) + 224 * v407.u32[3] + 16;
            }

            if (v390.i64[0] && (v391[0] & 1) == 0)
            {
              (*(*v390.i64[0] + 40))();
            }

            re::ecs2::ClippingParametersRegistry::registerClippingParameterDataRefs(v55 + 768, v161);
          }
        }

        else if (v355)
        {
          goto LABEL_190;
        }

        v166 = v345;
        v167 = *(v345 + 28);
        v407.i64[0] = v167;
        if (v167 && *(v167 + 129) == 1)
        {
          v168 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v167 ^ (v167 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v167 ^ (v167 >> 30))) >> 27));
          v169 = v168 ^ (v168 >> 31);
          v170 = *(v55 + 744);
          if (v170)
          {
            v171 = v169 % v170;
            v172 = *(*(v55 + 728) + 4 * (v169 % v170));
            if (v172 != 0x7FFFFFFF)
            {
              v173 = *(v55 + 736);
              while (*(v173 + 24 * v172 + 16) != v167)
              {
                LODWORD(v172) = *(v173 + 24 * v172 + 8) & 0x7FFFFFFF;
                if (v172 == 0x7FFFFFFF)
                {
                  goto LABEL_206;
                }
              }

              goto LABEL_207;
            }
          }

          else
          {
            LODWORD(v171) = 0;
          }

LABEL_206:
          re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::addAsCopy(v55 + 720, v171, v169, &v407, &v407);
          ++*(v55 + 760);
          v166 = v345;
        }

LABEL_207:
        v174 = *(v166 + 43);
        if (v174)
        {
          v175 = *(v166 + 45);
          v176 = 8 * v174;
          do
          {
            v177 = *v175;
            v178 = re::ecs2::EntityComponentCollection::get((*v175 + 48), re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v178)
            {
              v179 = *(v178 + 25);
            }

            else
            {
              v179 = 0;
            }

            (*(**v14 + 8))(buf);
            if (buf[0])
            {
              v180 = *&buf[8];
            }

            else
            {
              v180 = 0;
            }

            if (*&v349[16] != v180 || (v179 & 1) != 0)
            {
              *buf = v60;
              *&buf[8] = v59;
              *&buf[16] = v177;
              *&buf[32] = 0;
              *&buf[40] = 1;
              *&buf[48] = 0uLL;
              *&v182 = 0x7F0000007FLL;
              *(&v182 + 1) = 0x7F0000007FLL;
              *&buf[64] = v182;
              *&buf[80] = v342;
              v387.i64[0] = v180;
              v181 = (v349[24] | v179) & 1;
            }

            else
            {
              *buf = v60;
              *&buf[8] = v59;
              *&buf[16] = v177;
              re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(&buf[24], v346);
              *&buf[64] = v348;
              *&buf[80] = *v349;
              v387.i64[0] = *&v349[16];
              v181 = v349[24];
            }

            v387.i8[8] = v181;
            v47 = re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::add(&v363, buf);
            if (*&buf[24] && (buf[40] & 1) == 0)
            {
              (*(**&buf[24] + 40))(v47);
            }

            ++v175;
            v176 -= 8;
          }

          while (v176);
        }

        if (v354 && (v356 & 1) == 0)
        {
          (*(*v354 + 40))();
        }

        goto LABEL_226;
      }

LABEL_230:
      while (v364)
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v363);
      }

      v3 = v341;
      LODWORD(v5) = v315;
      a2 = v316;
      if (v363 && (v365 & 1) == 0)
      {
        (*(*v363 + 40))(v47);
      }

      re::BucketArray<re::Matrix4x4<float>,8ul>::deinit(v370);
      if (v370[0] && (v371 & 1) == 0)
      {
        (*(*v370[0] + 40))();
      }

      re::StackScratchAllocator::~StackScratchAllocator(&v395);
      if (v377 && (v379 & 1) == 0)
      {
        (*(*v377 + 40))();
      }

LABEL_241:
      LODWORD(v183) = *(a2 + 32);
      v9 = *(a2 + 16);
      if (v183 <= v6 + 1)
      {
        v183 = (v6 + 1);
      }

      else
      {
        v183 = v183;
      }

      while (v183 - 1 != v6)
      {
        v6 = (v6 + 1);
        if ((*(v9 + 24 * v6 + 8) & 0x80000000) != 0)
        {
          goto LABEL_248;
        }
      }

      v6 = v183;
LABEL_248:
      if (v6 == v5)
      {
        goto LABEL_249;
      }
    }

    (*(**v14 + 8))(buf);
    if (buf[0])
    {
      v27 = *&buf[8];
    }

    else
    {
      v27 = 0;
    }

    (*(**v14 + 8))(buf);
    if (buf[0])
    {
      v28 = *&buf[8];
    }

    else
    {
      v28 = 0;
    }

    if (v27 == v28)
    {
      v29 = *(v11 + 32);
      if (v29 && (*(v29 + 304) & 0x80) != 0)
      {
        v29 = 0;
      }

      *buf = v29;
      v30 = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v3 + 56, buf);
      v31 = v30;
      v32 = *(v11 + 32);
      if (v32)
      {
        if ((*(v32 + 304) & 0x80) != 0)
        {
          v33 = 0;
        }

        else
        {
          v33 = *(v11 + 32);
        }

        if (v30)
        {
LABEL_63:
          v34 = v30;
          while ((*(v34 + 190) & 1) == 0)
          {
            (*(**v14 + 8))(buf);
            v35 = buf[0] ? *&buf[8] : 0;
            (*(**v14 + 8))(buf);
            v36 = buf[0] ? *&buf[8] : 0;
            if (v35 != v36)
            {
              break;
            }

            v37 = *(v33 + 32);
            if (v37 && (*(v37 + 304) & 0x80) != 0)
            {
              v37 = 0;
            }

            *buf = v37;
            v34 = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v341 + 56, buf);
            if (!v34)
            {
              v38.i64[0] = 0x7F0000007FLL;
              v38.i64[1] = 0x7F0000007FLL;
              *&v39 = 0x7F0000007FLL;
              *(&v39 + 1) = 0x7F0000007FLL;
              v338 = v39;
              v40 = vnegq_f32(v38);
              goto LABEL_95;
            }
          }

          v41 = (v34 + 144);
          if (&v377 != (v34 + 144))
          {
            v42 = *v41;
            if (v377)
            {
              if (v42)
              {
                re::DynamicOverflowArray<unsigned short,8ul>::copy(&v377, v34 + 144);
              }

              else
              {
                v378 = 0;
              }

              v379 += 2;
            }

            else if (v42)
            {
              v46 = *(v34 + 152);
              v377 = *v41;
              re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(&v377, v46);
              v379 += 2;
              re::DynamicOverflowArray<unsigned short,8ul>::copy(&v377, v34 + 144);
            }
          }

          v40 = *(v34 + 96);
          v338 = *(v34 + 80);
LABEL_95:
          v335 = v40;
          v26 = 0;
          v416 = __invert_f4(*(v31 + 16));
          goto LABEL_96;
        }
      }

      else
      {
        v33 = 0;
        if (v30)
        {
          goto LABEL_63;
        }
      }
    }

    v26 = 0;
LABEL_83:
    v43 = v11;
    while (!re::ecs2::EntityComponentCollection::get((v43 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
    {
      v43 = *(v43 + 32);
      if (!v43 || (*(v43 + 304) & 0x80) != 0)
      {
        goto LABEL_89;
      }
    }

    re::TransformService::worldMatrixForRendering(buf, v318, v43, 1);
    v416 = __invert_f4(*buf);
    goto LABEL_89;
  }

LABEL_249:
  v184 = *(v3 + 896);
  v185 = *(v3 + 912);
  re::StackScratchAllocator::StackScratchAllocator(&v344);
  v384.i32[0] = 0;
  v382 = 0u;
  v383 = 0u;
  *(v384.i64 + 4) = 0x7FFFFFFFLL;
  re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(&v382, &v344, 3);
  v186 = *(v3 + 704);
  if (v186)
  {
    v187 = v3;
    v188 = 0;
    v189 = (*(v187 + 688) + 8);
    while (1)
    {
      v190 = *v189;
      v189 += 6;
      if (v190 < 0)
      {
        break;
      }

      if (v186 == ++v188)
      {
        LODWORD(v188) = v186;
        break;
      }
    }
  }

  else
  {
    LODWORD(v188) = 0;
  }

  if (v188 != v186)
  {
    v191 = *(v341 + 688);
    do
    {
      v192 = *(v191 + 24 * v188 + 16);
      (*(**v184 + 8))(buf);
      if (buf[0])
      {
        v193 = *&buf[8];
      }

      else
      {
        v193 = 0;
      }

      v194 = (*(**v184 + 40))(*v184, v193);
      v195 = v194;
      v196 = *(v194 + 32);
      if (v196)
      {
        v197 = 0;
        v198 = (*(v194 + 16) + 8);
        while (1)
        {
          v199 = *v198;
          v198 += 6;
          if (v199 < 0)
          {
            break;
          }

          if (v196 == ++v197)
          {
            LODWORD(v197) = *(v194 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v197) = 0;
      }

      if (v197 != v196)
      {
        v200 = *(v194 + 16);
        v201 = *(v194 + 32);
        do
        {
          v202 = *(v200 + 24 * v197 + 16);
          if (*(v202 + 129) == 1)
          {
            v203 = *(v202 + 16);
            *buf = v192;
            *&buf[8] = v203;
            re::HashSetBase<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::internal::ValueAsKey<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,true,false>::add(&v382, buf);
            v201 = *(v195 + 32);
            v200 = *(v195 + 16);
          }

          if (v201 <= v197 + 1)
          {
            v204 = v197 + 1;
          }

          else
          {
            v204 = v201;
          }

          while (v204 - 1 != v197)
          {
            LODWORD(v197) = v197 + 1;
            if ((*(v200 + 24 * v197 + 8) & 0x80000000) != 0)
            {
              goto LABEL_277;
            }
          }

          LODWORD(v197) = v204;
LABEL_277:
          ;
        }

        while (v197 != v196);
      }

      v205 = *(v341 + 704);
      v191 = *(v341 + 688);
      if (v205 <= v188 + 1)
      {
        v205 = v188 + 1;
      }

      while (v205 - 1 != v188)
      {
        LODWORD(v188) = v188 + 1;
        if ((*(v191 + 24 * v188 + 8) & 0x80000000) != 0)
        {
          goto LABEL_284;
        }
      }

      LODWORD(v188) = v205;
LABEL_284:
      ;
    }

    while (v188 != v186);
  }

  v206 = *(v341 + 752);
  if (v206)
  {
    v207 = 0;
    v208 = (*(v341 + 736) + 8);
    while (1)
    {
      v209 = *v208;
      v208 += 6;
      if (v209 < 0)
      {
        break;
      }

      if (v206 == ++v207)
      {
        LODWORD(v207) = *(v341 + 752);
        break;
      }
    }
  }

  else
  {
    LODWORD(v207) = 0;
  }

  if (v207 != v206)
  {
    v210 = *(v341 + 736);
    do
    {
      v211 = *(v210 + 24 * v207 + 16);
      v212 = re::ecs2::PortalComponent::targetWorldRootToken(v211, v185);
      v213 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((v341 + 608), v212);
      if (v213 != -1)
      {
        v214 = *(v341 + 616) + 56 * v213;
        v215 = *(v214 + 40);
        if (v215)
        {
          v216 = 0;
          v217 = (*(v214 + 24) + 8);
          while (1)
          {
            v218 = *v217;
            v217 += 6;
            if (v218 < 0)
            {
              break;
            }

            if (v215 == ++v216)
            {
              LODWORD(v216) = *(v214 + 40);
              break;
            }
          }
        }

        else
        {
          LODWORD(v216) = 0;
        }

LABEL_306:
        while (v216 != v215)
        {
          v219 = *(v211 + 16);
          *buf = *(*(v214 + 24) + 24 * v216 + 16);
          *&buf[8] = v219;
          re::HashSetBase<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::internal::ValueAsKey<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,true,false>::add(&v382, buf);
          v220 = *(v214 + 40);
          if (v220 <= v216 + 1)
          {
            v220 = v216 + 1;
          }

          while (v220 - 1 != v216)
          {
            LODWORD(v216) = v216 + 1;
            if ((*(*(v214 + 24) + 24 * v216 + 8) & 0x80000000) != 0)
            {
              goto LABEL_306;
            }
          }

          LODWORD(v216) = v220;
        }
      }

      v221 = *(v341 + 752);
      v210 = *(v341 + 736);
      if (v221 <= v207 + 1)
      {
        v221 = v207 + 1;
      }

      while (v221 - 1 != v207)
      {
        LODWORD(v207) = v207 + 1;
        if ((*(v210 + 24 * v207 + 8) & 0x80000000) != 0)
        {
          goto LABEL_313;
        }
      }

      LODWORD(v207) = v221;
LABEL_313:
      ;
    }

    while (v207 != v206);
  }

  v222 = v384.i32[0];
  if (v384.i32[0])
  {
    v223 = 0;
    v224 = (v383.i64[0] + 8);
    while (1)
    {
      v225 = *v224;
      v224 += 8;
      if (v225 < 0)
      {
        break;
      }

      if (v384.u32[0] == ++v223)
      {
        LODWORD(v223) = v384.i32[0];
        break;
      }
    }
  }

  else
  {
    LODWORD(v223) = 0;
  }

  v226 = v341;
  if (v223 != v384.i32[0])
  {
    v343 = (v341 + 544);
    v232 = v383.i64[0];
    v233.i64[0] = 0x7F0000007FLL;
    v233.i64[1] = 0x7F0000007FLL;
    v330 = vnegq_f32(v233);
    v320 = v384.i32[0];
    do
    {
      v234 = v232 + 32 * v223;
      v370[0] = *(v234 + 16);
      v363 = *(v234 + 24);
      v235 = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v226 + 56, v370);
      v236 = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v226 + 56, &v363);
      v55 = v236;
      v396.columns[0] = xmmword_1E3047670;
      v396.columns[1] = xmmword_1E3047680;
      v396.columns[2] = xmmword_1E30476A0;
      v396.columns[3] = xmmword_1E30474D0;
      v237.i64[0] = 0x7F0000007FLL;
      v237.i64[1] = 0x7F0000007FLL;
      v397 = v237;
      v398 = v330;
      v399 = v237;
      v400 = v330;
      v401 = 0;
      v402 = 0;
      v403 = 1;
      v404 = 0;
      v405 = 0;
      *v406 = 0;
      v406[6] = 1;
      if (v235)
      {
        *&v395 = *v235;
        v238 = *(v235 + 16);
        v239 = *(v235 + 32);
        v240 = *(v235 + 64);
        v396.columns[2] = *(v235 + 48);
        v396.columns[3] = v240;
        v396.columns[0] = v238;
        v396.columns[1] = v239;
        v241 = *(v235 + 96);
        v397 = *(v235 + 80);
        v398 = v241;
        v242 = *(v235 + 128);
        v399 = *(v235 + 112);
        v400 = v242;
        v406[6] = *(v235 + 190);
        v243 = *(v235 + 152);
        if (v236)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v243 = 0;
        if (v236)
        {
LABEL_335:
          v244 = *(v236 + 152);
          re::DynamicOverflowArray<unsigned short,8ul>::resize(&v401, v244 + v243);
          v422 = __invert_f4(v396);
          v245 = 0;
          v246 = *(v55 + 32);
          v247 = *(v55 + 48);
          v248 = *(v55 + 64);
          v407 = *(v55 + 16);
          v408 = v246;
          v409 = v247;
          v410 = v248;
          do
          {
            *&buf[v245] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422.columns[0], COERCE_FLOAT(*(&v407 + v245))), v422.columns[1], *&v407.f32[v245 / 4], 1), v422.columns[2], *(&v407 + v245), 2), v422.columns[3], *(&v407 + v245), 3);
            v245 += 16;
          }

          while (v245 != 64);
          re::AABB::transform(v55 + 80, buf, &v407);
          v249 = v397;
          v250 = v398;
          v249.i32[3] = 0;
          v251 = v407;
          v252 = v408;
          v251.i32[3] = 0;
          v250.i32[3] = 0;
          v252.i32[3] = 0;
          v397 = vmaxnmq_f32(v249, v251);
          v398 = vminnmq_f32(v250, v252);
          v253 = v399;
          v254 = v400;
          v253.i32[3] = 0;
          v255 = *(v55 + 112);
          v256 = *(v55 + 128);
          v255.i32[3] = 0;
          v254.i32[3] = 0;
          v256.i32[3] = 0;
          v399 = vmaxnmq_f32(v253, v255);
          v400 = vminnmq_f32(v254, v256);
          if (*(v55 + 160))
          {
            v257 = (v55 + 168);
          }

          else
          {
            v257 = *(v55 + 176);
          }

          re::DynamicOverflowArray<unsigned short,8ul>::copy(&v401, 0, v257, v244);
          goto LABEL_343;
        }
      }

      re::DynamicOverflowArray<unsigned short,8ul>::resize(&v401, v243);
      v244 = 0;
LABEL_343:
      v226 = v341;
      if (v235)
      {
        if (*(v235 + 160))
        {
          v258 = (v235 + 168);
        }

        else
        {
          v258 = *(v235 + 176);
        }

        re::DynamicOverflowArray<unsigned short,8ul>::copy(&v401, v244, v258, v243);
      }

      if (v402)
      {
        re::ecs2::ClippingParametersRegistry::registerClippingParameterDataRefs(v341 + 768, &v395);
        *buf = v363;
        *&buf[8] = v370[0];
        v388 = v398;
        v389 = v399;
        v390 = v400;
        *&buf[32] = v396;
        v387 = v397;
        *&buf[16] = v395;
        re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v391, &v401);
        v394[0] = *v406;
        *(v394 + 3) = *&v406[3];
        v260 = *(v341 + 408);
        if ((v260 + 1) >> 24)
        {
          v261 = 1;
        }

        else
        {
          v261 = v260 + 1;
        }

        *(v341 + 408) = v261;
        v49 = *(v341 + 404);
        v6 = *(v341 + 406);
        if (v49 == 0xFFFF && v6 == 0xFFFF)
        {
          if (*(v341 + 400) >= *(v341 + 396))
          {
            re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::allocBlock((v341 + 352));
          }

          v262 = *(v341 + 368);
          v6 = (v262 - 1);
          if (!v262)
          {
            goto LABEL_408;
          }

          v49 = *(v341 + 400);
          if (v49 >= 0x10000)
          {
            goto LABEL_416;
          }

          v263 = (*(v341 + 384) + 16 * v6);
          *(v341 + 400) = v49 + 1;
          *(v263[1] + 4 * v49) = *(v341 + 408);
          v264 = *v263 + 208 * v49;
        }

        else
        {
          v55 = *(v341 + 368);
          if (v55 <= v6)
          {
            goto LABEL_412;
          }

          v265 = (*(v341 + 384) + 16 * v6);
          *(v265[1] + 4 * v49) = v261;
          v264 = *v265 + 208 * v49;
          *(v341 + 404) = *v264;
        }

        ++*(v341 + 392);
        *v264 = *buf;
        v266 = *&buf[80];
        v268 = *&buf[32];
        v267 = *&buf[48];
        *(v264 + 64) = *&buf[64];
        *(v264 + 80) = v266;
        *(v264 + 32) = v268;
        *(v264 + 48) = v267;
        v269 = v390;
        v271 = v387;
        v270 = v388;
        *(v264 + 128) = v389;
        *(v264 + 144) = v269;
        *(v264 + 96) = v271;
        *(v264 + 112) = v270;
        *(v264 + 16) = *&buf[16];
        re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v264 + 160, v391);
        v272 = v394[0];
        *(v264 + 203) = *(v394 + 3);
        *(v264 + 200) = v272;
        v273 = v49 + (v6 << 16) + ((*(v341 + 408) & 0xFFFFFF) << 32);
        v407.i64[0] = v273;
        if (v391[0] && (v392 & 1) == 0)
        {
          (*(*v391[0] + 40))();
        }

        v274 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find((v341 + 416), v370[0]);
        if (v274 == -1)
        {
          *&buf[8] = 0;
          *buf = 0;
          *&buf[16] = 1;
          *&buf[24] = 0;
          *&buf[32] = 0;
          v275 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::addNew((v341 + 416), v370, buf);
          if (*buf && (buf[16] & 1) == 0)
          {
            (*(**buf + 40))();
          }
        }

        else
        {
          v275 = (*(v341 + 424) + 96 * v274 + 8);
        }

        re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>::add(v275, &v407);
        v276 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find((v341 + 480), v363);
        if (v276 == -1)
        {
          *&buf[8] = 0;
          *buf = 0;
          *&buf[16] = 1;
          *&buf[24] = 0;
          *&buf[32] = 0;
          v277 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::addNew((v341 + 480), &v363, buf);
          if (*buf && (buf[16] & 1) == 0)
          {
            (*(**buf + 40))();
          }
        }

        else
        {
          v277 = (*(v341 + 488) + 96 * v276 + 8);
        }

        re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>::add(v277, &v407);
        v278 = v370[0];
        v279 = v363;
        v280 = re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::find(v343, v370[0], v363);
        if (v280 != -1)
        {
          v281 = *(*(v341 + 552) + 24 * v280 + 16);
          if (re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::tryGet(v341 + 352, v281))
          {
            re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::destroy(v341 + 352, v281);
            v278 = v370[0];
            v279 = v363;
          }
        }

        v282 = re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::find(v343, v278, v279);
        if (v282 == -1)
        {
          if (!*(v341 + 600))
          {
          }

          v327 = v273;
          v283 = *(v341 + 576);
          if (!v283 || (v284 = *(v341 + 560), v284 > 8 * v283))
          {
            re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::resize(v343, 1u);
            v284 = *(v341 + 560);
          }

          v285 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v278 ^ (v278 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v278 ^ (v278 >> 30))) >> 27));
          v286 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v279 ^ (v279 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v279 ^ (v279 >> 30))) >> 27));
          v287 = ((v286 ^ (v286 >> 31)) - 0x61C8864680B583E9 + ((v285 ^ (v285 >> 31)) << 6) + ((v285 ^ (v285 >> 31)) >> 2)) ^ v285 ^ (v285 >> 31);
          v288 = v284 >> 4;
          v289 = v287 % (v284 >> 4);
          v290 = *v343;
          while (1)
          {
            v291 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v290 + 16 * v289)), xmmword_1E304FAD0)))), 0x3830282018100800)));
            if (v291 < 0x40)
            {
              break;
            }

            if (++v289 == v288)
            {
              v289 = 0;
            }

            if (v289 == re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>::operator()(v278, v279) % v288)
            {
              re::internal::assertLog(4, v292, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
              _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
              __break(1u);
              return;
            }
          }

          v293 = v290 + 16 * v289;
          v294 = *(v293 + v291);
          *(v293 + v291) = v287 & 0x7F;
          v295 = v291 + 16 * v289;
          v226 = v341;
          v296 = 3 * v295;
          v297 = (*(v341 + 552) + 8 * v296);
          *v297 = v278;
          v297[1] = v279;
          *(*(v341 + 552) + 8 * v296 + 16) = v327;
          if (v294 == 255)
          {
            v298 = -1;
          }

          else
          {
            v298 = 0;
          }

          v299.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v299.i64[1] = v298;
          *(v341 + 568) = vaddq_s64(*(v341 + 568), v299);
          v300 = (*(v341 + 552) + 8 * v296);
          v301 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v300 ^ (*v300 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v300 ^ (*v300 >> 30))) >> 27));
          v302 = 0xBF58476D1CE4E5B9 * (v300[1] ^ (v300[1] >> 30));
          *(v341 + 584) ^= v301 ^ (v301 >> 31) ^ (((0x94D049BB133111EBLL * (v302 ^ (v302 >> 27))) ^ ((0x94D049BB133111EBLL * (v302 ^ (v302 >> 27))) >> 31)) - 0x61C8864680B583E9 + ((v301 ^ (v301 >> 31)) << 6) + ((v301 ^ (v301 >> 31)) >> 2));
          v222 = v320;
        }

        else
        {
          v226 = v341;
          *(*(v341 + 552) + 24 * v282 + 16) = v273;
        }
      }

      if (v401 && (v403 & 1) == 0)
      {
        (*(*v401 + 40))();
      }

      v232 = v383.i64[0];
      if (v384.i32[0] <= (v223 + 1))
      {
        v303 = v223 + 1;
      }

      else
      {
        v303 = v384.i32[0];
      }

      while (v303 - 1 != v223)
      {
        v223 = (v223 + 1);
        if ((*(v383.i64[0] + 32 * v223 + 8) & 0x80000000) != 0)
        {
          goto LABEL_403;
        }
      }

      LODWORD(v223) = v303;
LABEL_403:
      ;
    }

    while (v223 != v222);
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(&v382);
  re::StackScratchAllocator::~StackScratchAllocator(&v344);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v226 + 672);
  if (*(v341 + 748))
  {
    v227 = *(v226 + 744);
    if (v227)
    {
      memset_pattern16(*(v226 + 728), &unk_1E304C660, 4 * v227);
    }

    v228 = *(v226 + 752);
    if (v228)
    {
      v229 = 8;
      do
      {
        v230 = *(v226 + 736);
        v231 = *(v230 + v229);
        if (v231 < 0)
        {
          *(v230 + v229) = v231 & 0x7FFFFFFF;
        }

        v229 += 24;
        --v228;
      }

      while (v228);
    }

    *(v226 + 756) = 0x7FFFFFFF;
    *(v341 + 748) = 0;
    *(v341 + 752) = 0;
    ++*(v226 + 760);
  }
}