void re::IntrospectionInfo<re::ecs2::CameraViewport [2]>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1A7A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A28))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7BD0);
    __cxa_guard_release(&qword_1EE1A7A28);
  }

  if ((byte_1EE1A79B3 & 1) == 0)
  {
    byte_1EE1A79B3 = 1;
    v6 = re::ecs2::introspect_CameraViewport(1, a2, a3, a4, a5, a6);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7BD0, v6, 2);
    re::IntrospectionRegistry::add(&unk_1EE1A7BD0, v7);
    re::getPrettyTypeName(&v11, &unk_1EE1A7BD0);
    if (BYTE8(v11))
    {
      v8 = v12;
    }

    else
    {
      v8 = &v11 + 9;
    }

    if (v11 && (BYTE8(v11) & 1) != 0)
    {
      (*(*v11 + 40))();
    }

    v11 = *(v6 + 2);
    xmmword_1EE1A7BF0 = v10;
    if (v13)
    {
      if (v13)
      {
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::SpecifyLaneCommand>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1A7A30, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1A7A30);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1A7AC0);
      qword_1EE1A7AC0 = &unk_1F5CEFC70;
      __cxa_guard_release(&qword_1EE1A7A30);
    }
  }

  if ((byte_1EE1A79B4 & 1) == 0)
  {
    v1 = qword_1EE1A79C8;
    if (qword_1EE1A79C8 || (v1 = re::ecs2::allocInfo_SpecifyLaneCommand(a1), qword_1EE1A79C8 = v1, re::ecs2::initInfo_SpecifyLaneCommand(v1, v2, v3, v4), (byte_1EE1A79B4 & 1) == 0))
    {
      byte_1EE1A79B4 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A7AC0, 0);
      qword_1EE1A7AD0 = 0x2800000003;
      dword_1EE1A7AD8 = v5;
      word_1EE1A7ADC = 0;
      *&xmmword_1EE1A7AE0 = 0;
      *(&xmmword_1EE1A7AE0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A7AF0 = v1;
      unk_1EE1A7AF8 = 0;
      qword_1EE1A7AC0 = &unk_1F5CEFC70;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1A7AC0);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1A7AE0 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_CameraViewDescriptor(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A79D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7D10, "CameraViewDescriptor");
    __cxa_guard_release(&qword_1EE1A79D8);
  }

  return &unk_1EE1A7D10;
}

void re::ecs2::initInfo_CameraViewDescriptor(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v66[0] = 0xA0AAB9439DFEFD32;
  v66[1] = "CameraViewDescriptor";
  if (v66[0])
  {
    if (v66[0])
    {
    }
  }

  *(this + 2) = v67;
  if ((atomic_load_explicit(&qword_1EE1A79D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79D0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_AssetHandle(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "renderGraph";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1A7C18 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_BOOL(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "disableAA";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A7C20 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "enableUnwarp";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1A00000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A7C28 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "disableTonemapping";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1900000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A7C30 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "disableDebugDraw";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1B00000006;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A7C38 = v26;
    v27 = re::introspectionAllocator();
    v28 = re::introspect_Vector4F(1);
    v29 = (*(*v27 + 32))(v27, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clearColor";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x3000000007;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1A7C40 = v29;
    v30 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair>>::get(v30, v31, v32, v33, v34, v35);
    v36 = (*(*v30 + 32))(v30, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "pickupScopeLanes";
    *(v36 + 16) = &qword_1EE1A7A80;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x5000000009;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1A7C48 = v36;
    v37 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair> [2]>::get(v37, v38, v39, v40, v41, v42);
    v43 = (*(*v37 + 32))(v37, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "pickupScopeLanesPerEye";
    *(v43 + 16) = &unk_1EE1A7B88;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x780000000ALL;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1A7C50 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::introspect_ViewMode(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "viewMode";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0xC80000000BLL;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1A7C58 = v47;
    v48 = re::introspectionAllocator();
    re::IntrospectionInfo<re::ecs2::CameraViewport [2]>::get(v48, v49, v50, v51, v52, v53);
    v54 = (*(*v48 + 32))(v48, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "viewport";
    *(v54 + 16) = &unk_1EE1A7BD0;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0xCC0000000CLL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE1A7C60 = v54;
    v55 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::SpecifyLaneCommand>>::get(v55);
    v56 = (*(*v55 + 32))(v55, 72, 8);
    *v56 = 1;
    *(v56 + 8) = "specifyCommands";
    *(v56 + 16) = &qword_1EE1A7AC0;
    *(v56 + 24) = 0;
    *(v56 + 32) = 0x3900000000DLL;
    *(v56 + 40) = 0;
    *(v56 + 48) = 0;
    *(v56 + 56) = 0;
    *(v56 + 64) = 0;
    qword_1EE1A7C68 = v56;
    v57 = re::introspectionAllocator();
    v59 = re::introspect_BOOL(1, v58);
    v60 = (*(*v57 + 32))(v57, 72, 8);
    *v60 = 1;
    *(v60 + 8) = "forceHidePassthroughFeed";
    *(v60 + 16) = v59;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0x1C00000013;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    *(v60 + 56) = 0;
    *(v60 + 64) = 0;
    qword_1EE1A7C70 = v60;
    v61 = re::introspectionAllocator();
    v63 = re::introspect_BOOL(1, v62);
    v64 = (*(*v61 + 32))(v61, 72, 8);
    *v64 = 1;
    *(v64 + 8) = "skipManagedForceClear";
    *(v64 + 16) = v63;
    *(v64 + 24) = 0;
    *(v64 + 32) = 0x2000000014;
    *(v64 + 40) = 0;
    *(v64 + 48) = 0;
    *(v64 + 56) = 0;
    *(v64 + 64) = 0;
    qword_1EE1A7C78 = v64;
    __cxa_guard_release(&qword_1EE1A79D0);
  }

  *(this + 2) = 0x3C000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1A7C18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraViewDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraViewDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraViewDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraViewDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v65 = v67;
}

double re::internal::defaultConstruct<re::ecs2::CameraViewDescriptor>(re *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  v4 = (a3 + 436);
  *(a3 + 48) = xmmword_1E30474D0;
  *(a3 + 68) = 117440767;
  *(a3 + 204) = xmmword_1E308B878;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = -1;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 184) = 0;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 220) = unk_1E308B888;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 272, 8);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 16) = 0u;
  *(a3 + 304) = v6;
  *(a3 + 312) = -1;
  *(a3 + 320) = 1;
  *(a3 + 322) = 0;
  *(a3 + 352) = re::globalAllocators(v6)[2];
  *(a3 + 360) = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  re::Pose<float>::Pose(v14, 0, 0, &v11);
  v7 = v14[1];
  *(a3 + 368) = v14[0];
  *(a3 + 384) = v7;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  re::Pose<float>::Pose(v10, 0, 0, &v11);
  v8 = v10[1];
  *(a3 + 400) = v10[0];
  *(a3 + 416) = v8;
  *(a3 + 432) = 0;
  *v4 = xmmword_1E308B7C0;
  *(a3 + 452) = 0xBDCCCCCD3DCCCCCDLL;
  *(a3 + 460) = 0;
  *(a3 + 464) = xmmword_1E30476A0;
  *(a3 + 480) = 1;
  *(a3 + 488) = 0;
  *(a3 + 496) = 0;
  *(a3 + 512) = 0;
  *(a3 + 592) = 0;
  *(a3 + 672) = 0;
  v4[15] = xmmword_1E308B7C0;
  *(a3 + 692) = 0xBDCCCCCD3DCCCCCDLL;
  *(a3 + 700) = 0;
  *(a3 + 704) = xmmword_1E30476A0;
  *(a3 + 720) = 1;
  *(a3 + 728) = 0;
  *(a3 + 736) = 0;
  *(a3 + 752) = 0;
  *(a3 + 832) = 0;
  *(a3 + 944) = 0;
  *(a3 + 936) = 0;
  *(a3 + 928) = 0;
  result = 0.0;
  *(a3 + 912) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::CameraViewDescriptor>(uint64_t a1)
{
  *(a1 + 32) = 0;
  v2 = (a1 + 436);
  *(a1 + 48) = xmmword_1E30474D0;
  *(a1 + 68) = 117440767;
  *(a1 + 204) = xmmword_1E308B878;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 220) = unk_1E308B888;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 272, 8);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 14) = 0u;
  *(v4 + 15) = 0u;
  *(v4 + 16) = 0u;
  *(a1 + 304) = v4;
  *(a1 + 312) = -1;
  *(a1 + 320) = 1;
  *(a1 + 322) = 0;
  *(a1 + 352) = re::globalAllocators(v4)[2];
  *(a1 + 360) = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  re::Pose<float>::Pose(v12, 0, 0, &v9);
  v5 = v12[1];
  *(a1 + 368) = v12[0];
  *(a1 + 384) = v5;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  re::Pose<float>::Pose(v8, 0, 0, &v9);
  v6 = v8[1];
  *(a1 + 400) = v8[0];
  *(a1 + 416) = v6;
  *(a1 + 432) = 0;
  *v2 = xmmword_1E308B7C0;
  *(a1 + 452) = 0xBDCCCCCD3DCCCCCDLL;
  *(a1 + 460) = 0;
  *(a1 + 464) = xmmword_1E30476A0;
  *(a1 + 480) = 1;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0;
  *(a1 + 592) = 0;
  *(a1 + 672) = 0;
  v2[15] = xmmword_1E308B7C0;
  *(a1 + 692) = 0xBDCCCCCD3DCCCCCDLL;
  *(a1 + 700) = 0;
  *(a1 + 704) = xmmword_1E30476A0;
  *(a1 + 720) = 1;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = 0;
  *(a1 + 832) = 0;
  *(a1 + 944) = 0;
  *(a1 + 936) = 0;
  *(a1 + 928) = 0;
  result = 0.0;
  *(a1 + 912) = 0u;
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::CameraViewDescriptor>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1A7A38, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1A7A38);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1A7B00);
      qword_1EE1A7B00 = &unk_1F5CEFD08;
      __cxa_guard_release(&qword_1EE1A7A38);
    }
  }

  if ((byte_1EE1A79B5 & 1) == 0)
  {
    v1 = qword_1EE1A79E0;
    if (qword_1EE1A79E0 || (v1 = re::ecs2::allocInfo_CameraViewDescriptor(a1), qword_1EE1A79E0 = v1, re::ecs2::initInfo_CameraViewDescriptor(v1, v2, v3, v4), (byte_1EE1A79B5 & 1) == 0))
    {
      byte_1EE1A79B5 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A7B00, 0);
      qword_1EE1A7B10 = 0x2800000003;
      dword_1EE1A7B18 = v5;
      word_1EE1A7B1C = 0;
      *&xmmword_1EE1A7B20 = 0;
      *(&xmmword_1EE1A7B20 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A7B30 = v1;
      unk_1EE1A7B38 = 0;
      qword_1EE1A7B00 = &unk_1F5CEFD08;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1A7B00);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1A7B20 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_CameraViewDescriptorsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A79F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7DA0, "CameraViewDescriptorsComponent");
    __cxa_guard_release(&qword_1EE1A79F0);
  }

  return &unk_1EE1A7DA0;
}

void re::ecs2::initInfo_CameraViewDescriptorsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v22[0] = 0x57901BFF93CFC246;
  v22[1] = "CameraViewDescriptorsComponent";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1A79E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79E8))
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
    qword_1EE1A7A50 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_int(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "renderOrder";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A7A58 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::CameraViewDescriptor>>::get(v19);
    v20 = (*(*v19 + 32))(v19, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "viewDescriptors";
    *(v20 + 16) = &qword_1EE1A7B00;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xC800000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1A7A60 = v20;
    __cxa_guard_release(&qword_1EE1A79E8);
  }

  *(this + 2) = 0x17800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A7A50;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraViewDescriptorsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraViewDescriptorsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraViewDescriptorsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraViewDescriptorsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230CameraViewDescriptorsComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v21 = v23;
}

void *re::ecs2::allocInfo_CameraViewDescriptorsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A79F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7E30, "CameraViewDescriptorsSystem");
    __cxa_guard_release(&qword_1EE1A79F8);
  }

  return &unk_1EE1A7E30;
}

void re::ecs2::initInfo_CameraViewDescriptorsSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x9886566CB711F92;
  v8[1] = "CameraViewDescriptorsSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x27000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_CameraViewDescriptorsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraViewDescriptorsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraViewDescriptorsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::CameraViewDescriptorsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::CameraViewDescriptorsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraViewDescriptorsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraViewDescriptorsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::CameraViewDescriptorsSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[67] = &unk_1F5CEFA60;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 75);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 72);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 69);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::CameraViewDescriptorsSystem>(uint64_t *a1)
{
  a1[67] = &unk_1F5CEFA60;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 75);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 72);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 69);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_TintComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A7A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7EC0, "TintComponent");
    __cxa_guard_release(&qword_1EE1A7A00);
  }

  return &unk_1EE1A7EC0;
}

void re::ecs2::initInfo_TintComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x790C845E74D08844;
  v23[1] = "TintComponent";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1A7A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A08))
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
    qword_1EE1A7A68 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector4F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "tintColor";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1A7A70 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "tintVirtualObject";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x3000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A7A78 = v21;
    __cxa_guard_release(&qword_1EE1A7A08);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A7A68;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TintComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TintComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TintComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TintComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs213TintComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v22 = v24;
}

void re::internal::defaultConstruct<re::ecs2::TintComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE5360;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::TintComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE5360;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
}

uint64_t re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(uint64_t a1, const char *a2, void **a3, uint64_t a4)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  NS::SharedPtr<MTL::Buffer>::operator=((a1 + 88 + 8 * a4), a3);
  return a1;
}

uint64_t re::ecs2::CameraViewDescriptor::updateWithSettings(float32x4_t *this, const re::RuntimeRenderGraphDataStruct *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  *&v75 = 0x504AF4A11108;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v64);
  if (v64 == 1)
  {
    v4 = this[1].u8[8] != v65;
    this[1].i8[8] = v65;
  }

  else
  {
    v4 = 0;
  }

  *&v75 = 0x74A061BF70DDE1D1;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v62);
  if (v62 == 1)
  {
    if (this[20].u8[0] == v63)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[20].i8[0] = v63;
  }

  *&v75 = 0x24E6E6F49E875004;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v60);
  if (v60 == 1)
  {
    if (this[1].u8[10] == v61)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[10] = v61;
  }

  *&v75 = 0x16C48E2908A3AF14;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v58);
  if (v58 == 1)
  {
    if (this[1].u8[9] == v59)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[9] = v59;
  }

  *&v75 = 0x4270C405D50982FLL;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v56);
  if (v56 == 1)
  {
    if (this[1].u8[11] == v57)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[11] = v57;
  }

  *&v75 = 0x4B7000EBA30446C5;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v54);
  if (v54 == 1)
  {
    if (this[1].u8[12] == v55)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[12] = v55;
  }

  *&v75 = 0xC500FCA9BFE3EB2;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v52);
  if (v52 == 1)
  {
    if (this[1].u8[13] == v53)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[13] = v53;
  }

  *&v75 = 0x56A251469A1DLL;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v50);
  if (v50 == 1)
  {
    if (this[1].u8[14] == v51)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[14] = v51;
  }

  *&v75 = 0xC5FA659672DAF62;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v75, &v48);
  if (v48 == 1)
  {
    if (this[2].u8[0] == v49)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[2].i8[0] = v49;
  }

  *&v75 = 0x9A301D2C57116;
  v5 = re::RuntimeRenderGraphDataStruct::getValueOfType<re::Vector4<float>>(a2, &v75, &v46);
  if (v46.n128_u8[0] == 1)
  {
    v5.n128_u64[0] = this[3].u64[0];
    v5.n128_u32[2] = this[3].u32[2];
    v6 = vmvnq_s8(vceqq_f32(v5, v47));
    v6.i32[3] = v6.i32[2];
    if ((vmaxvq_u32(v6) & 0x80000000) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = v4;
    }

    this[3] = v47;
  }

  *&v75 = 0x9A301D2CF0C76;
  re::RuntimeRenderGraphDataStruct::getValueOfType<float>(a2, &v75, v44);
  if (v44[0] == 1)
  {
    if (vabds_f32(this[4].f32[0], v45) > 0.00000011921)
    {
      v4 = 1;
    }

    else
    {
      v4 = v4;
    }

    this[4].f32[0] = v45;
  }

  v41 = 0x15A1511E410CAC8;
  re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned char>(&v42, a2, &v41);
  v41 = 0;
  if (v42 == 1)
  {
    if (this[4].u8[4] == v43)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[4].i8[4] = v43;
  }

  v38 = 0x3B329F1BFF8984EFLL;
  re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned char>(&v39, a2, &v38);
  v38 = 0;
  if (v39 == 1)
  {
    v4 = (v40 | v4) != 0;
    this[4].i8[5] = v40;
  }

  v37 = 0x3B329D0E99C91B0BLL;
  v7 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a2 + 24, &v37);
  if (!v7)
  {
    goto LABEL_64;
  }

  {
    v33 = v7;
    v7 = v33;
    if (v30)
    {
      re::introspect<re::mtl::StencilOperation>(BOOL)::info = re::mtl::introspect_StencilOperation(0, v29);
      v7 = v33;
    }
  }

  if (re::introspect<re::mtl::StencilOperation>(BOOL)::info != *(v7 + 16))
  {
LABEL_64:
    v8 = 0;
    v37 = 0;
LABEL_65:
    v36 = 0x7769DD2C0A86D905;
    re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned int>(a2, &v36, &v75);
    v36 = 0;
    if (v75 == 1)
    {
      if (this[4].u8[6] == BYTE4(v75))
      {
        v4 = v4;
      }

      else
      {
        v4 = 1;
      }

      this[4].i8[6] = BYTE4(v75);
    }

    goto LABEL_75;
  }

  v9 = *(v7 + 36);
  v10 = *(a2 + 94);
  if (v10 <= v9)
  {
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = v10;
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v70 = 866;
    v71 = 2048;
    v72 = v9;
    v73 = 2048;
    v74 = v21;
    _os_log_send_and_compose_impl(v23, &v66, &v75, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
    goto LABEL_97;
  }

  if (*(a2 + 190))
  {
    v11 = a2 + 768;
  }

  else
  {
    v11 = *(a2 + 97);
  }

  v12 = v11[v9];
  v37 = 0;
  v13 = this[4].u8[6];
  this[4].i8[6] = v12;
  v8 = 1;
  if (v13 == v12)
  {
    goto LABEL_65;
  }

LABEL_75:
  v35 = 0x51F9ECF944B29B89;
  v14 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a2 + 24, &v35);
  if (v14)
  {
    v16 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if ((v15 & 1) == 0)
    {
      v33 = v14;
      v16 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
      LODWORD(v15) = v31;
      v14 = v33;
      if (v15)
      {
        re::introspect<re::mtl::CompareFunction>(BOOL)::info = re::mtl::introspect_CompareFunction(0, v32);
        v16 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
        v14 = v33;
      }
    }

    if (v16[85] == *(v14 + 16))
    {
      v15 = *(v14 + 36);
      v17 = *(a2 + 94);
      if (v17 > v15)
      {
        v18 = a2 + 768;
        if ((*(a2 + 760) & 1) == 0)
        {
          v18 = *(a2 + 97);
        }

        LOBYTE(v15) = v18[v15];
        goto LABEL_82;
      }

LABEL_97:
      v66 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v24 = MEMORY[0x1E69E9C10];
      v25 = v15;
      v26 = v17;
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v67 = 136315906;
      v68 = "operator[]";
      v69 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v70 = 866;
      v71 = 2048;
      v72 = v25;
      v73 = 2048;
      v74 = v26;
      _os_log_send_and_compose_impl(v28, &v66, &v75, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v33, v34);
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_82:
  v35 = 0;
  if (v8)
  {
    if (this[4].u8[7] == v15)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[4].i8[7] = v15;
  }

  v34 = 0x331D263FBA10EA83;
  re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned int>(a2, &v34, &v75);
  if (v75 == 1)
  {
    if (this[4].i32[2] == DWORD1(v75))
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[4].i32[2] = DWORD1(v75);
  }

  return v4;
}

uint64_t re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned char>(_BYTE *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  result = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a2 + 24, a3);
  if (!result)
  {
    goto LABEL_4;
  }

  v6 = &unk_1EE187000;
  {
    v17 = result;
    v6 = &unk_1EE187000;
    v16 = v14;
    result = v17;
    if (v16)
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v15);
      v6 = &unk_1EE187000;
      result = v17;
    }
  }

  if (v6[39] == *(result + 16))
  {
    v7 = *(result + 36);
    v8 = *(a2 + 752);
    if (v8 <= v7)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v10 = MEMORY[0x1E69E9C10];
      v11 = v7;
      v12 = v8;
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

      v22 = 866;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      _os_log_send_and_compose_impl(v13, &v18, v27, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    if (*(a2 + 760))
    {
      v9 = a2 + 768;
    }

    else
    {
      v9 = *(a2 + 776);
    }

    *a1 = 1;
    a1[1] = *(v9 + v7);
  }

  else
  {
LABEL_4:
    *a1 = 0;
  }

  return result;
}

uint64_t re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned int>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  result = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (!result)
  {
    goto LABEL_4;
  }

  v6 = &unk_1EE187000;
  {
    v17 = result;
    v6 = &unk_1EE187000;
    v16 = v14;
    result = v17;
    if (v16)
    {
      re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v15);
      v6 = &unk_1EE187000;
      result = v17;
    }
  }

  if (v6[37] == *(result + 16))
  {
    v7 = *(result + 36);
    v8 = *(a1 + 752);
    if (v8 <= v7)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v10 = MEMORY[0x1E69E9C10];
      v11 = v7;
      v12 = v8;
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

      v22 = 866;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      _os_log_send_and_compose_impl(v13, &v18, v27, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 760))
    {
      v9 = a1 + 768;
    }

    else
    {
      v9 = *(a1 + 776);
    }

    *a3 = 1;
    *(a3 + 4) = *(v9 + v7);
  }

  else
  {
LABEL_4:
    *a3 = 0;
  }

  return result;
}

uint64_t re::ecs2::CameraViewDescriptor::tryGetSpecifyByLane(re::ecs2::CameraViewDescriptor *this, const char *__s2)
{
  v2 = *(this + 116);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 118);
  v5 = 136 * v2;
  while (1)
  {
    v6 = (*(v4 + 8) & 1) != 0 ? *(v4 + 16) : (v4 + 9);
    if (!strcmp(v6, __s2))
    {
      break;
    }

    v4 += 136;
    v5 -= 136;
    if (!v5)
    {
      return 0;
    }
  }

  return v4;
}

BOOL re::ecs2::CameraViewDescriptor::operator==(float32x4_t *a1, float32x4_t *a2)
{
  if (a1[1].u8[8] != a2[1].u8[8] || a1[1].u8[9] != a2[1].u8[9] || a1[1].u8[10] != a2[1].u8[10] || a1[1].u8[11] != a2[1].u8[11] || a1[1].u8[13] != a2[1].u8[13] || a1[20].u8[0] != a2[20].u8[0] || a1[1].u8[12] != a2[1].u8[12] || a1[1].u8[14] != a2[1].u8[14] || a1[20].u8[1] != a2[20].u8[1] || a1[20].u8[2] != a2[20].u8[2] || a1[2].u8[0] != a2[2].u8[0] || a1[1].u8[15] != a2[1].u8[15] || (vminvq_u32(vceqq_f32(a1[3], a2[3])) & 0x80000000) == 0 || a1[4].f32[0] != a2[4].f32[0])
  {
    return 0;
  }

  v24 = v2;
  v25 = v3;
  if (a1[4].u8[4] != a2[4].u8[4] || a1[4].u8[5] != a2[4].u8[5] || a1[4].u8[6] != a2[4].u8[6] || a1[4].u8[7] != a2[4].u8[7] || a1[12].u8[8] != a2[12].u8[8] || a1[4].i32[2] != a2[4].i32[2])
  {
    return 0;
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &a1[2 * v5 + 23];
    v9 = v8[1];
    v23[0] = *v8;
    v23[1] = v9;
    v10 = &a2[2 * v5 + 23];
    v11 = v10[1];
    v22[0] = *v10;
    v22[1] = v11;
    result = re::areAlmostEqual<float>(v23, v22);
    if (!result)
    {
      break;
    }

    if (!re::Projection::operator==(&a1[15 * v5 + 27], &a2[15 * v5 + 27]))
    {
      return 0;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v12 = a1[6].i64[0];
      if (v12 != a2[6].i64[0] || !std::equal[abi:nn200100]<re::ecs2::ScopeLanePair const*,re::ecs2::ScopeLanePair const*>(a1[7].i64[0], a1[7].i64[0] + (v12 << 6), a2[7].i64[0]))
      {
        return 1;
      }

      v13 = 0;
      for (i = 1; ; i = 0)
      {
        v15 = 5 * v13;
        v16 = &a1[7].i8[8 * v15 + 8];
        v17 = &a2[7].i8[8 * v15 + 8];
        v18 = *(v16 + 2);
        if (v18 != *(v17 + 2))
        {
          break;
        }

        result = std::equal[abi:nn200100]<re::ecs2::ScopeLanePair const*,re::ecs2::ScopeLanePair const*>(*(v16 + 4), *(v16 + 4) + (v18 << 6), *(v17 + 4));
        v19 = i & result;
        v13 = 1;
        if (!v19)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(unint64_t this)
{
  if (this < 0x10000)
  {
    return 0;
  }

  if (!(this >> 17))
  {
    return 1;
  }

  if (this >> 16 <= 2)
  {
    return 2;
  }

  re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) Invalid handle passed", "!Unreachable code", "handleToTypeAndIndex", 327, v1, v2);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid handle passed");
  __break(1u);
  return result;
}

re::ecs2::CameraViewDescriptor *re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(_anonymous_namespace_ *this, re::ecs2::CameraViewDescriptor *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::ecs2::CameraViewDescriptor::CameraViewDescriptor((*(this + 4) + 960 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::add(uint64_t a1, re::ecs2::CameraViewDescriptor *a2)
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

        re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = re::ecs2::CameraViewDescriptor::CameraViewDescriptor((*(a1 + 32) + 1008 * v5), a2);
  *(v11 + 123) = *(a2 + 123);
  *(v11 + 124) = 0;
  result = re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v11 + 960, a2 + 960);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::ecs2::CameraViewDescriptorsComponent::clearSpecifyCommands(re::ecs2::CameraViewDescriptorsComponent *this, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  if (ViewDescriptor)
  {
    v3 = ViewDescriptor + 912;

    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::clear(v3);
  }

  else
  {
    v4 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "View descriptor not found (invalid handle)", v5, 2u);
    }
  }
}

void re::DynamicArray<re::ecs2::SpecifyLaneCommand>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = (v3 + 136 * v2);
    do
    {
      for (i = 112; i != 96; i -= 8)
      {
        v6 = *(v3 + i);
        if (v6)
        {

          *(v3 + i) = 0;
        }
      }

      do
      {
        v7 = *(v3 + i);
        if (v7)
        {

          *(v3 + i) = 0;
        }

        i -= 8;
      }

      while (i != 80);
      for (j = 56; j != 8; j -= 24)
      {
        re::AssetHandle::~AssetHandle((v3 + j));
      }

      re::DynamicString::deinit(v3);
      v3 = (v3 + 136);
    }

    while (v3 != v4);
  }

  ++*(a1 + 24);
}

BOOL re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, __n128 *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (!ViewDescriptor)
  {
    v9 = *re::graphicsLogObjects(0);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "View descriptor not found (invalid handle)";
LABEL_33:
    v20 = v9;
    v21 = 2;
    goto LABEL_34;
  }

  v6 = ViewDescriptor;
  v7 = re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(a2);
  v8 = a3[5].n128_u32[0] == -1 && a3[5].n128_u32[1] == -1;
  if (a3[2].n128_u64[1])
  {
    v12 = 0;
  }

  else
  {
    v12 = a3[4].n128_u64[0] == 0;
  }

  if (a3[5].n128_u64[1])
  {
    v13 = 0;
  }

  else
  {
    v13 = a3[6].n128_u64[0] == 0;
  }

  if (a3[6].n128_u64[1])
  {
    v14 = 0;
    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3[7].n128_u64[0] == 0;
    if (v7)
    {
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v9 = *re::graphicsLogObjects(v7);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "For serialized view descriptor layerHandle must be kInvalidRenderLayerHandle";
    goto LABEL_33;
  }

  if (!v13)
  {
    v9 = *re::graphicsLogObjects(v7);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "For serialized view descriptor textures must not be set";
    goto LABEL_33;
  }

  if (!v14)
  {
    v9 = *re::graphicsLogObjects(v7);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "For serialized view descriptor texture descriptors must not be set";
    goto LABEL_33;
  }

  if (v12)
  {
    v9 = *re::graphicsLogObjects(v7);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "For serialized view descriptor renderTarget must not be null";
    goto LABEL_33;
  }

LABEL_17:
  v15 = !v8;
  v16 = !v12;
  v17 = !v13;
  v18 = !v14;
  if (!v12 + !v8 + !v13 + !v14 == 1)
  {
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::add(v6 + 912, a3);
    return 1;
  }

  v19 = *re::graphicsLogObjects(v7);
  result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v22[0] = 67109888;
    v22[1] = v15;
    v23 = 1024;
    v24 = v17;
    v25 = 1024;
    v26 = v18;
    v27 = 1024;
    v28 = v16;
    v11 = "Exactly one set of properties on a specify command must be valid. Validity: Layer handles=%d, textures=%d, descriptors=%d, render targets=%d";
    v20 = v19;
    v21 = 26;
LABEL_34:
    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, v11, v22, v21);
    return 0;
  }

  return result;
}

__n128 re::DynamicArray<re::ecs2::SpecifyLaneCommand>::add(uint64_t a1, __n128 *a2)
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

        re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 136 * v5;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = a2[1].n128_u64[1];
  v12 = a2->n128_u64[1];
  *v11 = a2->n128_u64[0];
  a2->n128_u64[0] = 0;
  v13 = a2[1].n128_u64[0];
  a2[1].n128_u64[1] = 0;
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v13;
  a2->n128_u64[1] = v15;
  a2[1].n128_u64[0] = v14;
  v16 = (v11 + 32);
  v17 = a2 + 3;
  v18 = 2;
  do
  {
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[1] = v17[-1].n128_u64[1];
    v17[-1].n128_u64[1] = 0;
    v19 = *v16;
    *v16 = 0;
    *v16 = v17[-1].n128_u64[0];
    v17[-1].n128_u64[0] = v19;
    v20 = v16[2];
    v16[2] = v17->n128_u64[0];
    v17->n128_u64[0] = v20;
    v17 = (v17 + 24);
    v16 += 3;
    --v18;
  }

  while (v18);
  *(v11 + 80) = a2[5].n128_u64[0];
  *(v11 + 88) = a2[5].n128_u64[1];
  a2[5].n128_u64[1] = 0;
  result = a2[6];
  *(v11 + 96) = result;
  a2[6].n128_u64[0] = 0;
  a2[6].n128_u64[1] = 0;
  *(v11 + 112) = a2[7].n128_u64[0];
  a2[7].n128_u64[0] = 0;
  v22 = a2[7].n128_u64[1];
  *(v11 + 128) = a2[8].n128_u32[0];
  *(v11 + 120) = v22;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(re::ecs2::CameraViewDescriptorsComponent *this, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  v3 = re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(a2);
  if (v3 == 2)
  {
    if (v4 < *(this + 37))
    {
      v5 = *(this + 39);
      v6 = 1008;
      return v5 + v4 * v6;
    }
  }

  else if (v3 == 1)
  {
    if (v4 < *(this + 32))
    {
      v5 = *(this + 34);
      goto LABEL_8;
    }
  }

  else if (!v3 && v4 < *(this + 27))
  {
    v5 = *(this + 29);
LABEL_8:
    v6 = 960;
    return v5 + v4 * v6;
  }

  return 0;
}

uint64_t *re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::ecs2::CameraViewDescriptor::CameraViewDescriptor((*(this + 4) + 960 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::DynamicString *re::ecs2::CameraViewDescriptorsComponent::viewScopeNameFromCache@<X0>(re::ecs2::CameraViewDescriptorsComponent *this@<X0>, re::ecs2::CameraViewDescriptorsComponent *a2@<X1>, uint64_t a3@<X2>, re::DynamicString *a4@<X8>)
{
  v8 = re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(a2);
  v10 = v9;
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  if (ViewDescriptor && !*(ViewDescriptor + 200))
  {
    v12 = 0;
  }

  else if (a3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v12) ^ ((0xBF58476D1CE4E5B9 * v12) >> 27));
  v14 = 0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30));
  v15 = ((v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9 + ((((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31)) + ((v13 ^ (v13 >> 31)) << 6) + ((v13 ^ (v13 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v13 ^ (v13 >> 31))) ^ v10;
  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
  v17 = v16 ^ (v16 >> 31);
  re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(&v29, this + 328, v15, v17);
  if (HIDWORD(v30) == 0x7FFFFFFF)
  {
    v18 = *(this + 2);
    if (**(v18 + 296))
    {
      v19 = *(v18 + 296);
    }

    else
    {
      v19 = "Camera";
    }

    v20 = "Right";
    if (!a3)
    {
      v20 = "Left";
    }

    if (v12)
    {
      v21 = v20;
    }

    else
    {
      v21 = "Mono";
    }

    v22 = (*(*this + 24))(this);
    re::DynamicString::format(a4, v22, "%s_%d_%zu_%llX_%s", v23, v19, v8, v10, *(v18 + 312), v21);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(&v29, this + 328, v15, v17);
    v24 = HIDWORD(v30);
    if (HIDWORD(v30) == 0x7FFFFFFF)
    {
      v25 = re::HashTable<unsigned long,re::DynamicString,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(this + 328, v30, v29);
      *(v25 + 8) = v15;
      result = re::DynamicString::DynamicString((v25 + 16), a4);
      ++*(this + 92);
    }

    else
    {
      ++*(this + 92);
      v28 = (*(this + 43) + 56 * v24 + 16);

      return re::DynamicString::operator=(v28, a4);
    }
  }

  else
  {
    v27 = (*(this + 43) + 56 * HIDWORD(v30) + 16);

    return re::DynamicString::DynamicString(a4, v27);
  }

  return result;
}

re::DynamicString *re::ecs2::CameraViewDescriptorsComponent::viewScopeName@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::ecs2::CameraViewDescriptorsComponent *this@<X0>, re::ecs2::CameraViewDescriptorsComponent *a3@<X1>, re::ecs2::Entity *a4@<X3>, re::Allocator *a5@<X4>, uint64_t a6@<X2>)
{
  if (*(this + 2))
  {

    return re::ecs2::CameraViewDescriptorsComponent::viewScopeNameFromCache(this, a3, a6, a1);
  }

  else
  {
    if (**(a4 + 37))
    {
      v13 = *(a4 + 37);
    }

    else
    {
      v13 = "Camera";
    }

    v14 = re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(a3);
    re::DynamicString::format(&v21, a5, "%d_%zu_%llu", v16, v14, v15, *(a4 + 39));
    ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a3);
    if (ViewDescriptor && !*(ViewDescriptor + 200))
    {
      if (v22)
      {
        v19 = v24;
      }

      else
      {
        v19 = v23;
      }

      v20 = "_Mono";
    }

    else
    {
      v19 = v24;
      if ((v22 & 1) == 0)
      {
        v19 = v23;
      }

      if (a6)
      {
        v20 = "_Right";
      }

      else
      {
        v20 = "_Left";
      }
    }

    re::DynamicString::format(a1, a5, "%s_%s%s", v18, v13, v19, v20);
    result = v21;
    if (v21 && (v22 & 1) != 0)
    {
      return (*(*v21 + 40))();
    }
  }

  return result;
}

re::ecs2::CameraViewDescriptorsComponentStateImpl *re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewDescriptorsComponentStateImpl(re::ecs2::CameraViewDescriptorsComponentStateImpl *this, re::ecs2::CameraViewDescriptorsSystem *a2)
{
  __src[5] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CEFA60;
  *(this + 1) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 1) = 0u;
  __src[0] = re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  __src[1] = re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  __src[2] = re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  __src[3] = re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  __src[4] = re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v12[0] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v12[1] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v12[2] = re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v7 = __src;
  v8 = 5;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 16), &v7);
  v7 = v12;
  v8 = 3;
  v3 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 40), &v7);
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  re::DynamicArray<float *>::setCapacity(&v7, 5uLL);
  ++v10;
  re::DynamicArray<char const*>::copy(&v7, 0, __src, 5);
  for (i = 0; i != 3; ++i)
  {
    v6[0] = v12[i];
    re::DynamicArray<re::TransitionCondition *>::add(&v7, v6);
  }

  v6[0] = v11;
  v6[1] = v9;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 64), v6);
  if (v7 && v11)
  {
    (*(*v7 + 40))();
  }

  return this;
}

re::ecs2::Component *re::ecs2::CameraViewDescriptorsComponentStateImpl::didDependentComponentChange(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v9 = result;
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = *(a1 + 32);
    while (*v12 != a4)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v12 = *(a1 + 32);
  }

  if (v12 == (*(a1 + 32) + 8 * v10))
  {
LABEL_17:
    if (re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
    {
      v18 = *(re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 40);
    }

    else
    {
      v18 = 1;
    }

    v19 = (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4) | v18 & 1;

    return re::ecs2::CameraViewDescriptorsComponentStateImpl::hierarchicallyDirtyEntities(a3, a4, v19, a2);
  }

  else if (result)
  {
    v13 = 24;
    v14 = 0xFFFFFFFFLL;
    do
    {
      v15 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v13), v9);
      if (v15 != -1 && (v16 & 0xFFFFFF00000000) != 0)
      {
        v20 = v15;
        v14 = v16;
        goto LABEL_24;
      }

      v13 += 8;
    }

    while (v13 != 56);
    v20 = -1;
LABEL_24:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a2, v20, v14);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::ecs2::CameraViewDescriptorsComponentStateImpl::hierarchicallyDirtyEntities(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 6), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (a3)
  {
    v9 = result;
    if (result)
    {
      v10 = 24;
      v11 = 0xFFFFFFFFLL;
      do
      {
        v12 = re::ecs2::ComponentBucketsBase::componentHandle(*(a4 + 16), *(a4 + v10), v9);
        if (v12 != -1 && (v13 & 0xFFFFFF00000000) != 0)
        {
          v15 = v12;
          v11 = v13;
          goto LABEL_11;
        }

        v10 += 8;
      }

      while (v10 != 56);
      v15 = -1;
LABEL_11:
      result = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a4, v15, v11);
    }
  }

  v16 = a1[43];
  if (v16)
  {
    v17 = a1[45];
    v18 = v17 + 8 * v16;
    v19 = xmmword_1E306AC00;
    do
    {
      result = *v17;
      v20 = *(*v17 + 98);
      if (*(*v17 + 98))
      {
        v21 = (a2 + 16);
        v22 = *(result + 104);
        v23 = vld1q_dup_s16(v21);
        v24 = 1;
        while (1)
        {
          v25 = vandq_s8(vceqq_s16(v23, *v22), v19);
          v25.i16[0] = vmaxvq_u16(v25);
          if (v25.i32[0])
          {
            break;
          }

          v24 -= 8;
          ++v22;
          if (!--v20)
          {
            goto LABEL_20;
          }
        }

        if (v25.u16[0] - v24 < *(result + 96))
        {
          break;
        }
      }

LABEL_20:
      result = re::ecs2::CameraViewDescriptorsComponentStateImpl::hierarchicallyDirtyEntities(result, a2, 1, a4);
      v19 = xmmword_1E306AC00;
      v17 += 8;
    }

    while (v17 != v18);
  }

  return result;
}

uint64_t re::ecs2::CameraViewDescriptorsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v74 = *(*(a2 + 8) + 8);
  v8 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::RenderOptionsService>(v8);
  if (v9)
  {
    v76[0] = (*(*v9 + 16))(v9);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v77, a5, 0);
    v11 = v77;
    v10 = v78;
    v77 = a4;
    v78 = v11;
    LODWORD(v79) = v10;
    if (v11 != a5 || v10 != 0xFFFFFFFFLL)
    {
      do
      {
        v37 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v77);
        v38 = *(v37 + 16);
        if (*re::ecs2::RenderOptions::forEntity(v76, v38) == 1 && (v39 = *(v38 + 98), *(v38 + 98)))
        {
          v40 = (re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v41 = *(v38 + 104);
          v42 = vld1q_dup_s16(v40);
          v43 = 1;
          v44 = v41;
          v45 = *(v38 + 98);
          while (1)
          {
            v46 = vandq_s8(vceqq_s16(v42, *v44), xmmword_1E306AC00);
            v46.i16[0] = vmaxvq_u16(v46);
            if (v46.i32[0])
            {
              break;
            }

            v43 -= 8;
            ++v44;
            if (!--v45)
            {
              goto LABEL_36;
            }
          }

          if (v46.u16[0] - v43 < *(v38 + 96))
          {
            goto LABEL_46;
          }

LABEL_36:
          v47 = (re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v48 = vld1q_dup_s16(v47);
          v49 = 1;
          v50 = *(v38 + 104);
          v51 = *(v38 + 98);
          while (1)
          {
            v52 = vandq_s8(vceqq_s16(v48, *v50), xmmword_1E306AC00);
            v52.i16[0] = vmaxvq_u16(v52);
            if (v52.i32[0])
            {
              break;
            }

            v49 -= 8;
            ++v50;
            if (!--v51)
            {
              goto LABEL_41;
            }
          }

          if (v52.u16[0] - v49 < *(v38 + 96))
          {
            goto LABEL_46;
          }

LABEL_41:
          v53 = (re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v54 = vld1q_dup_s16(v53);
          v55 = 1;
          while (1)
          {
            v56 = vandq_s8(vceqq_s16(v54, *v41), xmmword_1E306AC00);
            v56.i16[0] = vmaxvq_u16(v56);
            if (v56.i32[0])
            {
              break;
            }

            v55 -= 8;
            ++v41;
            if (!--v39)
            {
              goto LABEL_54;
            }
          }

          if (v56.u16[0] - v55 >= *(v38 + 96))
          {
            goto LABEL_54;
          }

LABEL_46:
          WeakRetained = objc_loadWeakRetained((v37 + 32));
          v58 = WeakRetained;
          if (WeakRetained)
          {
            v59 = WeakRetained - 8;
          }

          else
          {
            v59 = 0;
          }

          v28 = *(v38 + 98);
          if (*(v38 + 98))
          {
            v60 = (re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v27 = *(v38 + 104);
            v61 = vld1q_dup_s16(v60);
            v62 = 1;
            v63 = v27;
            v64 = *(v38 + 98);
            while (1)
            {
              v65 = vandq_s8(vceqq_s16(v61, *v63), xmmword_1E306AC00);
              v65.i16[0] = vmaxvq_u16(v65);
              if (v65.i32[0])
              {
                break;
              }

              v62 -= 8;
              ++v63;
              if (!--v64)
              {
                goto LABEL_7;
              }
            }

            if (v65.u16[0] - v62 < *(v38 + 96))
            {
              v12 = re::ecs2::EntityComponentCollection::get((v38 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              v13 = *(*(a1 + 8) + 232);
              goto LABEL_19;
            }

LABEL_7:
            v15 = (re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v16 = vld1q_dup_s16(v15);
            v17 = 1;
            v18 = *(v38 + 104);
            v19 = *(v38 + 98);
            while (1)
            {
              v20 = vandq_s8(vceqq_s16(v16, *v18), xmmword_1E306AC00);
              v20.i16[0] = vmaxvq_u16(v20);
              if (v20.i32[0])
              {
                break;
              }

              v17 -= 8;
              ++v18;
              if (!--v19)
              {
                goto LABEL_13;
              }
            }

            if (v20.u16[0] - v17 < *(v38 + 96))
            {
              v21 = re::ecs2::EntityComponentCollection::get((v38 + 48), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              v22 = *(*(a1 + 8) + 232);
              goto LABEL_19;
            }

LABEL_13:
            v23 = (re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v24 = vld1q_dup_s16(v23);
            v25 = 1;
            while (1)
            {
              v26 = vandq_s8(vceqq_s16(v24, *v27), xmmword_1E306AC00);
              v26.i16[0] = vmaxvq_u16(v26);
              if (v26.i32[0])
              {
                break;
              }

              v25 -= 8;
              ++v27;
              if (!--v28)
              {
                goto LABEL_22;
              }
            }

            if (v26.u16[0] - v25 >= *(v38 + 96))
            {
              goto LABEL_22;
            }

            v29 = re::ecs2::EntityComponentCollection::get((v38 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v30 = *(*(a1 + 8) + 232);
LABEL_19:
            if (v14 == 2)
            {
              v31 = v77;
              v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v78);
              v33 = a3[2];
              v34 = a3[5];
              goto LABEL_23;
            }

            if (v14 == 1)
            {
              v35 = v77;
              v36 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v78);
              re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a3, v35, v36);
              if (v58)
              {
                goto LABEL_25;
              }

              goto LABEL_55;
            }

            if (v14)
            {
              goto LABEL_24;
            }
          }

LABEL_22:
          v31 = v77;
          v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v78);
          v33 = a3[2];
          v34 = a3[6];
LABEL_23:
          re::ecs2::ComponentBucketsBase::moveComponent(v33, v31, v32, v34);
LABEL_24:
          if (v58)
          {
LABEL_25:
          }
        }

        else
        {
LABEL_54:
          v66 = v77;
          v67 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v78);
          re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v66, v67, a3[4]);
        }

LABEL_55:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v78);
      }

      while (v78 != a5 || v79 != 0xFFFF || WORD1(v79) != 0xFFFF);
    }

    return *(a5 + 40) != 0;
  }

  else
  {
    v69 = re::introspect<re::ecs2::RenderOptionsService>();
    re::StringID::invalid(v76);
    re::internal::missingServiceErrorMessage(&v77, v69, v76);
    re::DynamicString::~DynamicString(&v77);
    re::StringID::~StringID(v76);
    v70 = re::introspect<re::ecs2::RenderOptionsService>();
    re::StringID::invalid(v76);
    re::internal::missingServiceErrorMessage(&v77, v70, v76);
    if (v78)
    {
      v72 = v79;
    }

    else
    {
      v72 = &v78 + 1;
    }

    re::internal::assertLog(5, v71, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v72);
    re::DynamicString::~DynamicString(&v77);
    re::StringID::~StringID(v76);
    result = _os_crash("assertion failure: (service) %s", v73);
    __break(1u);
  }

  return result;
}

BOOL re::ecs2::CameraViewDescriptorsComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(a2 + 8) + 8);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v25, a5, 0);
  v13 = v25;
  v14 = v26;
  v15 = v26;
  v25 = a4;
  v26 = v13;
  v27 = v14;
  if (v13 != a5 || v15 != 0xFFFFFFFFLL)
  {
    do
    {
      v17 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v25);
      if (re::ecs2::CameraViewDescriptorsHelper::setCameraViewsRenderGraphFileProviders(*(v17 + 16), (v12 != 2)))
      {
        v18 = v25;
        v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v26);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v18, v19, *(a3 + 48));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v26);
    }

    while (v26 != a5 || v27 != 0xFFFF || HIWORD(v27) != 0xFFFF);
  }

  v22 = *(a3 + 48);
  v23 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a3 + 16) + 8, v22);
  if (!*(v23 + 40))
  {
    (*(*a1 + 40))(a1, a2, a3, v22, v23, a6);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  j = a3;
  v7 = a1;
  v213 = *MEMORY[0x1E69E9840];
  v183 = *(a3 + 8);
  *v176 = *(*(a1 + 1) + 232);
  v8 = *(*v176 + 112);
  if (v8)
  {
    a1 = re::RenderFrameBox::get((v8 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v10 = re::globalAllocators(a1);
  v177 = v9;
  v11 = re::PerFrameAllocatorManager::perFrameAllocator(v10[6], *(v9 + 48));
  v201 = 0;
  v199 = 0;
  v200 = 0;
  v198[1] = 0;
  v181 = v11;
  v198[0] = v11;
  re::DynamicArray<float *>::setCapacity(v198, 0);
  ++v200;
  v182 = j;
  v12 = *(j + 40);
  v13 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(j + 16) + 8, v12);
  v175 = *(*(a2 + 8) + 8);
  v180 = (*(**(*(v7 + 1) + 256) + 24))(*(*(v7 + 1) + 256));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v188, v13, 0);
  *&v209 = v12;
  *(&v209 + 1) = v188;
  LODWORD(v210) = v189;
  if (v13 != v188 || (v14 = 0, v15 = 0, v16 = 0, v17 = 0, v189 != 0xFFFFFFFFLL))
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    j = &v209;
    while (1)
    {
      v121 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v209);
      *v205 = v121;
      re::DynamicArray<re::RigDataValue *>::add(v198, v205);
      v188 = v121;
      v190 = 0;
      if (v121[27])
      {
        v122 = 0;
        goto LABEL_141;
      }

      if (v121[32])
      {
        break;
      }

      if (v121[37])
      {
        v122 = 2;
LABEL_141:
        v123 = 0;
        v124 = 0;
        LODWORD(v189) = v122;
        do
        {
          v125 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(&v188);
          if (*(v125 + 240))
          {
            v126 = 1;
          }

          else
          {
            v126 = *(v125 + 272) != 0;
          }

          v127 = *(v125 + 200) != 0;
          v124 = (*(v125 + 928) + v124) << v127;
          v123 = (v126 + v123) << v127;
          if (*(v125 + 296))
          {
            ++v16;
          }

          if (*(v125 + 288))
          {
            ++v17;
          }

          re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v188);
        }

        while (v188 != v121 || v189 != 3 || v190);
        goto LABEL_152;
      }

      v124 = 0;
      v123 = 0;
LABEL_152:
      v14 += v123;
      v15 += v124;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v209 + 4);
      if (*(&v209 + 1) == v13 && v210 == 0xFFFF && WORD1(v210) == 0xFFFF)
      {
        goto LABEL_6;
      }
    }

    v122 = 1;
    goto LABEL_141;
  }

LABEL_6:
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v188, a5, 0);
  *&v209 = a4;
  *(&v209 + 1) = v188;
  LODWORD(v210) = v189;
  if (v188 != a5 || v189 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v20 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v209);
      *v205 = v20;
      re::DynamicArray<re::RigDataValue *>::add(v198, v205);
      v188 = v20;
      v190 = 0;
      if (v20[27])
      {
        v21 = 0;
        goto LABEL_16;
      }

      if (v20[32])
      {
        break;
      }

      if (v20[37])
      {
        v21 = 2;
LABEL_16:
        v19 = 0;
        v18 = 0;
        LODWORD(v189) = v21;
        do
        {
          v22 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(&v188);
          if (*(v22 + 240))
          {
            v23 = 1;
          }

          else
          {
            v23 = *(v22 + 272) != 0;
          }

          v24 = *(v22 + 200) != 0;
          v18 = (*(v22 + 928) + v18) << v24;
          v19 = (v23 + v19) << v24;
          if (*(v22 + 296))
          {
            ++v16;
          }

          if (*(v22 + 288))
          {
            ++v17;
          }

          re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v188);
        }

        while (v188 != v20 || v189 != 3 || v190);
        goto LABEL_27;
      }

      v18 = 0;
      v19 = 0;
LABEL_27:
      v14 += v19;
      v15 += v18;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v209 + 4);
      if (*(&v209 + 1) == a5 && v210 == 0xFFFF && WORD1(v210) == 0xFFFF)
      {
        goto LABEL_30;
      }
    }

    v21 = 1;
    goto LABEL_16;
  }

LABEL_30:
  v25 = v177;
  re::RenderFrame::reserveDynamicArraysSize(v177, v14, v15, v16, v17);
  v26 = v201;
  v27 = v199;
  v28 = 126 - 2 * __clz(v199);
  if (v199)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v179 = &v201[v199];
  std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,false>(v201, v179, v29, 1);
  v30 = *(*v176 + 319);
  v188 = 0;
  LODWORD(v189) = 0;
  v190 = 0;
  v191 = 0;
  v194 = 0u;
  v195 = 0u;
  v196 = 0;
  v197 = 0x7FFFFFFFLL;
  if (!v27)
  {
    v128 = 0;
LABEL_159:
    v129 = v192;
    v130 = &v192[88 * v128];
    v120 = 1;
    goto LABEL_163;
  }

  v31 = xmmword_1E306AC00;
  v32 = v182;
  do
  {
    v185 = v26;
    v33 = *v26;
    v34 = *(*v26 + 16);
    v35 = *(v34 + 98);
    if (*(v34 + 98))
    {
      v36 = (re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v37 = *(v34 + 104);
      v38 = vld1q_dup_s16(v36);
      v39 = 1;
      v40 = v37;
      v41 = *(v34 + 98);
      while (1)
      {
        v42 = vandq_s8(vceqq_s16(v38, *v40), v31);
        v42.i16[0] = vmaxvq_u16(v42);
        if (v42.i32[0])
        {
          break;
        }

        v39 -= 8;
        ++v40;
        if (!--v41)
        {
          goto LABEL_42;
        }
      }

      if (v42.u16[0] - v39 < *(v34 + 96))
      {
        v43 = re::ecs2::EntityComponentCollection::get((v34 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::PerspectiveCameraComponent>(*v176, v33, v175 == 2, v43, v34);
        goto LABEL_54;
      }

LABEL_42:
      v44 = (re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v45 = vld1q_dup_s16(v44);
      v46 = 1;
      v47 = *(v34 + 104);
      v48 = *(v34 + 98);
      while (1)
      {
        v49 = vandq_s8(vceqq_s16(v45, *v47), v31);
        v49.i16[0] = vmaxvq_u16(v49);
        if (v49.i32[0])
        {
          break;
        }

        v46 -= 8;
        ++v47;
        if (!--v48)
        {
          goto LABEL_48;
        }
      }

      if (v49.u16[0] - v46 < *(v34 + 96))
      {
        v50 = re::ecs2::EntityComponentCollection::get((v34 + 48), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::OrthographicCameraComponent>(*v176, v33, v175 == 2, v50, v34);
        goto LABEL_54;
      }

LABEL_48:
      v51 = (re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v52 = vld1q_dup_s16(v51);
      v53 = 1;
      while (1)
      {
        v54 = vandq_s8(vceqq_s16(v52, *v37), v31);
        v54.i16[0] = vmaxvq_u16(v54);
        if (v54.i32[0])
        {
          break;
        }

        v53 -= 8;
        ++v37;
        if (!--v35)
        {
          goto LABEL_54;
        }
      }

      if (v54.u16[0] - v53 < *(v34 + 96))
      {
        v55 = re::ecs2::EntityComponentCollection::get((v34 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::CustomMatrixCameraComponent>(*v176, v33, v175 == 2, v55, v34);
      }
    }

LABEL_54:
    objc_destroyWeak((v33 + 32));
    *(v33 + 32) = 0;
    v56 = *(v33 + 296);
    if (v56)
    {
      *(v33 + 296) = 0;
      v57 = *(v33 + 312);
      v58 = 1008 * v56;
      do
      {
        re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v57 + 960);
        re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v57);
        v57 = (v57 + 1008);
        v58 -= 1008;
      }

      while (v58);
      ++*(v33 + 304);
      for (i = 24; i != 56; i += 8)
      {
        v60 = re::ecs2::ComponentBucketsBase::componentHandle(*(v32 + 16), *(v32 + i), v33);
        if (v60 != -1 && (v61 & 0xFFFFFF00000000) != 0)
        {
          v63 = v60;
          v64 = v61;
          goto LABEL_65;
        }
      }

      v63 = -1;
      v64 = 0xFFFFFFFFLL;
LABEL_65:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(v32, v63, v64);
    }

    (*(*v180 + 8))(&v209);
    if (v209)
    {
      v65 = *(&v209 + 1);
    }

    else
    {
      v65 = 0;
    }

    v186 = v65;
    v66 = v205;
    memset(&v205[8], 0, 20);
    *&v205[32] = 0;
    LODWORD(j) = v181;
    *v205 = v181;
    re::DynamicArray<re::CameraView>::setCapacity(v205, 0);
    ++*&v205[24];
    v206 = 0uLL;
    v207 = 0;
    v208 = 0;
    *&v205[40] = v181;
    v67 = v205;
    v68 = re::DynamicArray<re::CameraMultiView>::setCapacity(&v205[40], 0);
    v70 = v207++;
    if (HIDWORD(v195))
    {
      v71 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(&v194, &v186, v205);
      goto LABEL_94;
    }

    v72 = v190;
    v66 = 88;
    if (!v190)
    {
      goto LABEL_91;
    }

    v73 = 88 * v190;
    v74 = 88 * v190;
    v71 = &v193;
    do
    {
      if (*(v71 - 1) == v65)
      {
        goto LABEL_94;
      }

      v71 += 11;
      v74 -= 88;
    }

    while (v74);
    j = &v194;
    if ((v190 & 0xFFFFFFF8) != 0)
    {
      v75 = v192;
      if (v194)
      {
        goto LABEL_81;
      }

      v76 = v188;
      if (!v188)
      {
      }

      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(&v194, v76, 16);
      if (v190)
      {
        v73 = 88 * v190;
LABEL_81:
        v65 = &v192[v73];
        do
        {
          v77 = 0xBF58476D1CE4E5B9 * (*v75 ^ (*v75 >> 30));
          v78 = (0x94D049BB133111EBLL * (v77 ^ (v77 >> 27))) ^ ((0x94D049BB133111EBLL * (v77 ^ (v77 >> 27))) >> 31);
          if (v194)
          {
            v79 = v78 % DWORD2(v195);
            v80 = *(*(&v194 + 1) + 4 * v79);
            if (v80 != 0x7FFFFFFF)
            {
              while (*(v195 + 96 * v80 + 8) != *v75)
              {
                LODWORD(v80) = *(v195 + 96 * v80) & 0x7FFFFFFF;
                if (v80 == 0x7FFFFFFF)
                {
                  goto LABEL_88;
                }
              }

              goto LABEL_89;
            }
          }

          else
          {
            LODWORD(v79) = 0;
          }

LABEL_88:
          v81 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(&v194, v79, v78);
          v82 = *v75;
          *(v81 + 48) = 0;
          *(v81 + 40) = 0;
          *(v81 + 24) = 0;
          *(v81 + 32) = 0;
          *(v81 + 8) = v82;
          *(v81 + 16) = 0;
          *(v81 + 16) = *(v75 + 1);
          *(v75 + 1) = 0;
          *(v81 + 24) = *(v75 + 2);
          *(v75 + 2) = 0;
          v83 = *(v81 + 32);
          *(v81 + 32) = *(v75 + 3);
          *(v75 + 3) = v83;
          v84 = *(v81 + 48);
          *(v81 + 48) = *(v75 + 5);
          *(v75 + 5) = v84;
          ++*(v75 + 8);
          ++*(v81 + 40);
          *(v81 + 88) = 0;
          *(v81 + 64) = 0;
          *(v81 + 72) = 0;
          *(v81 + 56) = 0;
          *(v81 + 80) = 0;
          *(v81 + 56) = *(v75 + 6);
          *(v75 + 6) = 0;
          *(v81 + 64) = *(v75 + 7);
          *(v75 + 7) = 0;
          v85 = *(v81 + 72);
          *(v81 + 72) = *(v75 + 8);
          *(v75 + 8) = v85;
          v86 = *(v81 + 88);
          *(v81 + 88) = *(v75 + 10);
          *(v75 + 10) = v86;
          ++*(v75 + 18);
          ++*(v81 + 80);
          ++HIDWORD(v197);
LABEL_89:
          v75 += 88;
        }

        while (v75 != v65);
      }

      re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays>,8ul>::clear(&v190);
      v71 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(&v194, &v186, v205);
      v32 = v182;
    }

    else
    {
LABEL_91:
      v87 = *v205;
      *&v209 = v65;
      *(&v209 + 1) = *v205;
      memset(v205, 0, 24);
      v88 = *&v205[8];
      *&v210 = *&v205[8];
      ++*&v205[24];
      v89 = *&v205[32];
      v90 = v206;
      *&v205[32] = 0u;
      v206 = 0u;
      v91 = v208;
      v208 = 0;
      v207 = v70 + 2;
      if (v190 >= 8)
      {
        goto LABEL_219;
      }

      j = v192;
      v92 = &v192[88 * v190];
      *v92 = v65;
      *(v92 + 1) = v87;
      *(&v209 + 1) = 0;
      *(v92 + 1) = v88;
      v210 = 0uLL;
      *(v92 + 8) = 1;
      *(v92 + 40) = v89;
      *(v211 + 8) = 0uLL;
      *(v92 + 56) = v90;
      *(&v211[1] + 8) = 0uLL;
      *(v92 + 10) = v91;
      v212 = 0;
      LODWORD(v211[0]) = 2;
      DWORD2(v211[2]) = 2;
      *(v92 + 18) = 1;
      v190 = v72 + 1;
      ++v191;
      v65 = &v209;
      re::DynamicArray<re::CameraMultiView>::deinit(&v211[1]);
      re::DynamicArray<re::CameraView>::deinit(&v209 + 8);
      v94 = v190 - 1;
      if (!v190)
      {
        goto LABEL_213;
      }

      v71 = &v192[88 * v94 + 8];
    }

LABEL_94:
    re::DynamicArray<re::CameraMultiView>::deinit(&v205[40]);
    re::DynamicArray<re::CameraView>::deinit(v205);
    v96 = *(v33 + 56);
    if (v96)
    {
      v97 = v71[2];
      if (v97 == -1)
      {
        v202 = 0;
        v210 = 0u;
        memset(v211, 0, sizeof(v211));
        v209 = 0u;
        v154 = MEMORY[0x1E69E9C10];
        v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v205 = 136315906;
        *&v205[4] = "copy";
        *&v205[12] = 1024;
        if (v155)
        {
          v156 = 3;
        }

        else
        {
          v156 = 2;
        }

        *&v205[14] = 643;
        *&v205[18] = 2048;
        *&v205[20] = -1;
        *&v205[28] = 2048;
        *&v205[30] = 0;
        _os_log_send_and_compose_impl(v156, &v202, &v209, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v169, v172);
        _os_crash_msg();
        __break(1u);
LABEL_207:
        re::internal::assertLog(7, v95, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v97, v97, v96);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v163, v166, v170);
        __break(1u);
LABEL_208:
        v30 = v67 + 1;
        v202 = 0;
        v210 = 0u;
        memset(v211, 0, sizeof(v211));
        v209 = 0u;
        v157 = MEMORY[0x1E69E9C10];
        v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v205 = 136315906;
        *&v205[4] = "copy";
        *&v205[12] = 1024;
        if (v158)
        {
          v159 = 3;
        }

        else
        {
          v159 = 2;
        }

        *&v205[14] = 643;
        *&v205[18] = 2048;
        *&v205[20] = v67;
        *&v205[28] = 2048;
        *&v205[30] = v67 + 1;
        _os_log_send_and_compose_impl(v159, &v202, &v209, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v169, v172);
        _os_crash_msg();
        __break(1u);
LABEL_212:
        re::internal::assertLog(7, v95, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v67, v67, v66);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v164, v167, v171);
        __break(1u);
LABEL_213:
        re::internal::assertLog(6, v93, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v94, 0);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v165, v168);
        __break(1u);
        goto LABEL_214;
      }

      v65 = v97 + v96;
      if (__CFADD__(v97, v96))
      {
        goto LABEL_207;
      }

      v98 = *(v33 + 72);
      if (v97 >= v65)
      {
        v65 = v71[4] + 1552 * v97;
        j = 1552 * v96;
        do
        {
          re::CameraView::operator=(v65, v98);
          v98 += 1552;
          v65 += 1552;
          j -= 1552;
        }

        while (j);
      }

      else
      {
        re::DynamicArray<re::CameraView>::growCapacity(v71, v97 + v96);
        v99 = v71[2];
        v100 = v71[4];
        v101 = v97;
        v102 = v99 - v97;
        if (v99 != v97)
        {
          v173 = v99 - v97;
          v174 = v71[2];
          v103 = v100 + 1552 * v97;
          j = 1552 * v99 - 1552 * v97;
          v104 = v98;
          do
          {
            re::CameraView::operator=(v103, v104);
            v104 += 1552;
            v103 += 1552;
            j -= 1552;
          }

          while (j);
          v100 = v71[4];
          v101 = v71[2];
          v102 = v173;
          v99 = v174;
        }

        if (v102 != v96)
        {
          v105 = (v98 + 1552 * v102);
          v106 = (v100 + 1552 * v101);
          j = 1552 * v96 + 1552 * v97 - 1552 * v99;
          do
          {
            v107 = re::CameraView::CameraView(v106, v105);
            v105 = (v105 + 1552);
            v106 = (v107 + 1552);
            j -= 1552;
          }

          while (j);
        }

        v71[2] = v65;
        v32 = v182;
      }

      ++*(v71 + 6);
      v25 = v177;
    }

    v66 = *(v33 + 96);
    v31 = xmmword_1E306AC00;
    if (v66)
    {
      v67 = v71[7];
      if (v67 == -1)
      {
        goto LABEL_208;
      }

      v65 = v67 + v66;
      if (__CFADD__(v67, v66))
      {
        goto LABEL_212;
      }

      v108 = *(v33 + 112);
      if (v67 >= v65)
      {
        std::__copy_impl::operator()[abi:nn200100]<re::CameraMultiView const*,re::CameraMultiView const*,re::CameraMultiView*>(*(v33 + 112), v108 + 3120 * v66, v71[9] + 3120 * v67);
      }

      else
      {
        re::DynamicArray<re::CameraMultiView>::growCapacity((v71 + 5), v67 + v66);
        j = v71[7] - v67;
        v109 = v108 + 3120 * j;
        std::__copy_impl::operator()[abi:nn200100]<re::CameraMultiView const*,re::CameraMultiView const*,re::CameraMultiView*>(v108, v109, v71[9] + 3120 * v67);
        if (j != v66)
        {
          v110 = v108 + 3120 * v66;
          v111 = v71[9] + 3120 * v71[7];
          do
          {
            for (j = 0; j != 3104; j += 1552)
            {
              re::CameraView::CameraView((v111 + j), (v109 + j));
            }

            *(v111 + 3104) = *(v109 + 3104);
            v109 += 3120;
            v111 += 3120;
          }

          while (v109 != v110);
        }

        v71[7] = v65;
      }

      ++*(v71 + 16);
      v32 = v182;
      v31 = xmmword_1E306AC00;
    }

    v112 = v71[2];
    if (v112)
    {
      v113 = 1552 * v112;
      v114 = (v71[4] + 1173);
      do
      {
        v30 = (*v114 | v30 & 1) != 0;
        v114 += 1552;
        v113 -= 1552;
      }

      while (v113);
    }

    v115 = v71[7];
    if (v115)
    {
      v116 = 3120 * v115;
      v117 = (v71[9] + 1173);
      do
      {
        v30 = (*v117 | v30 & 1) != 0;
        v117 += 3120;
        v116 -= 3120;
      }

      while (v116);
    }

    v26 = v185 + 1;
  }

  while (v185 + 1 != v179);
  if (!HIDWORD(v195))
  {
    v128 = v190;
    goto LABEL_159;
  }

  LODWORD(v26) = v196;
  if (v196)
  {
    j = 0;
    v118 = v195;
    while (1)
    {
      v119 = *v118;
      v118 += 24;
      if (v119 < 0)
      {
        break;
      }

      if (v196 == ++j)
      {
        v120 = 0;
        LODWORD(j) = v196;
        goto LABEL_162;
      }
    }

    v120 = 0;
  }

  else
  {
    v120 = 0;
    LODWORD(j) = 0;
  }

LABEL_162:
  v129 = &v194;
  v130 = &v194;
LABEL_163:
  while (2)
  {
    if (v120)
    {
      if (v129 == v130)
      {
        break;
      }

      v131 = v129 + 1;
      v132 = v129;
      goto LABEL_168;
    }

    if (v26 != j)
    {
      v133 = v129[2] + 96 * j;
      v132 = (v133 + 8);
      v131 = (v133 + 16);
LABEL_168:
      v134 = re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v209, v183, *v132, v25);
      if (*(v131 + 2))
      {
        *v205 = v209 >> 1;
        v135 = **(re::RenderFrameData::stream((v25 + 264), v205) + 48);
        v134 = (*(v135 + 544))();
      }

      if (*(v131 + 7))
      {
        *v205 = v209 >> 1;
        v136 = **(re::RenderFrameData::stream((v25 + 264), v205) + 48);
        v134 = (*(v136 + 576))();
      }

      if (v209)
      {
        if (v209)
        {
        }
      }

      if (v120)
      {
        v129 += 11;
      }

      else
      {
        v137 = j + 1;
        if (*(v129 + 8) <= (j + 1))
        {
          LODWORD(j) = j + 1;
        }

        else
        {
          LODWORD(j) = *(v129 + 8);
        }

        while (j != v137)
        {
          v138 = v137;
          v139 = *(v129[2] + 24 * v137++);
          if (v139 < 0)
          {
            LODWORD(j) = v138;
            goto LABEL_163;
          }
        }
      }

      continue;
    }

    break;
  }

  if (v30)
  {
    v186 = &unk_1F5CEFB58;
    v187 = 1;
    *&v209 = 0xC1ECEDF69A9CD01;
    v140 = re::RenderFrameData::stream((v25 + 264), &v209);
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v140, &v204, &v209);
    if (HIDWORD(v209) == 0x7FFFFFFF)
    {
      v141 = *(*(v140 + 48) + 8);
      v142 = (*(*v141 + 32))(v141, 56, 8);
      *v142 = 0;
      *(v142 + 8) = 0;
      *(v142 + 16) = 1;
      *(v142 + 32) = 0;
      *(v142 + 40) = 0;
      *(v142 + 24) = 0;
      *(v142 + 48) = 0;
      v143 = re::BucketArray<re::PipelineCompilationData,4ul>::init(v142, v141, 1uLL);
      *&v205[24] = re::globalAllocators(v143)[2];
      *v205 = &unk_1F5CEFDD0;
      *&v205[8] = v141;
      *&v205[32] = v205;
      *&v209 = std::__any_imp::_SmallHandler<re::BucketArray<re::PipelineCompilationData,4ul> *>::__handle[abi:nn200100];
      *(&v209 + 1) = v142;
      *(&v211[1] + 1) = *&v205[24];
      *&v211[2] = 0;
      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(v211, v205);
      v144 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v140, &v204, &v209);
      if (*&v211[2])
      {
        v202 = &v209;
        (*(**&v211[2] + 16))(*&v211[2], &v202);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v211);
      if (v209)
      {
        (v209)(0, &v209, 0, 0, 0);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v205);
    }

    else
    {
      v144 = (*(v140 + 16) + 96 * HIDWORD(v209) + 16);
    }

    v202 = &unk_1F5CEFB58;
    v203 = v187;
    v147 = *(v146 + 40);
    v65 = *(v146 + 8);
    if (v147 + 1 > 4 * v65)
    {
      re::BucketArray<re::PipelineCompilationData,4ul>::setBucketsCapacity(v146, (v147 + 4) >> 2);
      v65 = *(v146 + 8);
    }

    v30 = v147 >> 2;
    if (v65 > v147 >> 2)
    {
      if (*(v146 + 16))
      {
        v148 = v146 + 24;
      }

      else
      {
        v148 = *(v146 + 32);
      }

      v149 = *(v148 + 8 * v30);
      ++*(v146 + 40);
      ++*(v146 + 48);
      v150 = v149 + 16 * (v147 & 3);
      *v150 = &unk_1F5CEFB58;
      *(v150 + 8) = v203;
      v151 = *(v146 + 40);
      if (v151)
      {
        re::BucketArray<RESubscriptionHandle,4ul>::operator[](v146, v151 - 1);
        goto LABEL_199;
      }

LABEL_218:
      re::internal::assertLog(4, v145, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
LABEL_219:
      re::internal::assertLog(4, v69, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
    }

LABEL_214:
    v204 = 0;
    v210 = 0u;
    memset(v211, 0, sizeof(v211));
    v209 = 0u;
    v160 = MEMORY[0x1E69E9C10];
    v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v205 = 136315906;
    *&v205[4] = "operator[]";
    *&v205[12] = 1024;
    if (v161)
    {
      v162 = 3;
    }

    else
    {
      v162 = 2;
    }

    *&v205[14] = 858;
    *&v205[18] = 2048;
    *&v205[20] = v30;
    *&v205[28] = 2048;
    *&v205[30] = v65;
    _os_log_send_and_compose_impl(v162, &v204, &v209, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v169, v172);
    _os_crash_msg();
    __break(1u);
    goto LABEL_218;
  }

LABEL_199:
  *&v209 = &unk_1F5CEFB98;
  BYTE8(v209) = 0;
  (*(**(v25 + 40) + 80))(*(v25 + 40), &v209);
  v152 = *(a5 + 40);
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays>,8ul>::clear(&v190);
  re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(&v194);
  v188 = 0;
  LODWORD(v189) = 0;
  re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(&v194);
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays>,8ul>::clear(&v190);
  if (v198[0] && v201)
  {
    (*(*v198[0] + 40))();
  }

  return v152 != 0;
}

void *re::ecs2::CameraViewDescriptorsSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v103 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v88 = a3;
  v5 = result[28];
  if (!v5 || (*(v5 + 432) & 0x10) != 0)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v86);
    v6 = *(a3 + 200);
    if (v6)
    {
      v7 = *(a3 + 216);
      v8 = &v7[v6];
      do
      {
        *&v94 = *v7;
        v9 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 352), &v94);
        if (v9 == -1)
        {
          v10 = 0;
        }

        else
        {
          v10 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v4 + 296, *(*(v4 + 360) + 16 * v9 + 8));
        }

        v11 = v10[5];
        v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v10[2] + 8, v11);
        v13 = v10[6];
        v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v10[2] + 8, v13);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v94, v12, 0);
        *&v98 = v11;
        *(&v98 + 1) = v94;
        v99 = DWORD2(v94);
        if (v12 != v94 || DWORD2(v94) != 0xFFFFFFFFLL)
        {
          do
          {
            v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v98);
            re::DrawingManager::getLayersWithPendingSizeOrScaleChanges(*(*(v4 + 232) + 112), &v94);
            markDirtyIfComponentUsesLayer(v16, *v96, v95);
            if (v94 && *v96)
            {
              (*(*v94 + 40))();
            }

            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v98 + 4);
          }

          while (*(&v98 + 1) != v12 || v99 != 0xFFFF || HIWORD(v99) != 0xFFFF);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v94, v14, 0);
        *&v98 = v13;
        *(&v98 + 1) = v94;
        v99 = DWORD2(v94);
        if (v14 != v94 || DWORD2(v94) != 0xFFFFFFFFLL)
        {
          do
          {
            v19 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v98);
            re::DrawingManager::getLayersWithPendingSizeOrScaleChanges(*(*(v4 + 232) + 112), &v94);
            markDirtyIfComponentUsesLayer(v19, *v96, v95);
            if (v94 && *v96)
            {
              (*(*v94 + 40))();
            }

            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v98 + 4);
          }

          while (*(&v98 + 1) != v14 || v99 != 0xFFFF || HIWORD(v99) != 0xFFFF);
        }

        ++v7;
      }

      while (v7 != v8);
    }

    re::StackScratchAllocator::StackScratchAllocator(&v94);
    v99 = 1;
    v100 = 0;
    v101 = 0;
    *&v98 = &v94;
    *(&v98 + 1) = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v98, 0);
    v99 += 2;
    v22 = *(v4 + 504);
    if ((v22 & 0x3F) != 0)
    {
      v23 = (v22 >> 6) + 1;
    }

    else
    {
      v23 = v22 >> 6;
    }

    v102 = *(v4 + 504);
    v89[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v98, v23, v89);
    v24 = *(v88 + 200);
    if (v24)
    {
      v25 = *(v88 + 216);
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        v89[0] = v27;
        v28 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 352), v89);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v98, *(*(v4 + 360) + 16 * v28 + 8));
        v26 -= 8;
      }

      while (v26);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v98, v4 + 464);
    v90 = 1;
    v91 = 0;
    v92 = 0;
    v89[0] = &v94;
    v89[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v89, 0);
    v90 += 2;
    v29 = *(v4 + 504);
    if ((v29 & 0x3F) != 0)
    {
      v30 = (v29 >> 6) + 1;
    }

    else
    {
      v30 = v29 >> 6;
    }

    v93 = *(v4 + 504);
    v97 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v89, v30, &v97);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v4 + 464, &v98);
    v31 = v101;
    if (v99)
    {
      v31 = &v100;
    }

    v32 = *(&v98 + 1);
    if ((*(&v98 + 1) & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v33 = 0;
      while (1)
      {
        v35 = *v31++;
        v34 = v35;
        if (v35)
        {
          break;
        }

        v33 -= 64;
        if (!--v32)
        {
          goto LABEL_66;
        }
      }

      v36 = __clz(__rbit64(v34));
      if (v36 + 1 != v33)
      {
        FirstBitSet = v36 - v33;
        do
        {
          v38 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v4 + 296, FirstBitSet);
          v39 = *(*v38 + 224);
          v40 = v38[3];
          v41 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v38[2] + 8, v40);
          if (*(v41 + 40))
          {
            v42 = (*(*v39 + 24))(v39, &v87, v38, v40, v41, 0);
          }

          else
          {
            v42 = 0;
          }

          v43 = v38[5];
          v44 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v38[2] + 8, v43);
          if (*(v44 + 40))
          {
            v42 |= (*(*v39 + 32))(v39, &v87, v38, v43, v44, 0);
          }

          v45 = v38[6];
          v46 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v38[2] + 8, v45);
          if (*(v46 + 40))
          {
            if (((v42 | (*(*v39 + 40))(v39, &v87, v38, v45, v46, 0)) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else if (!v42)
          {
LABEL_64:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v89, FirstBitSet);
            goto LABEL_65;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v89, FirstBitSet);
LABEL_65:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v98, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_66:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(v4 + 464, v89);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4 + 296);
    if (v89[0] && (v90 & 1) == 0)
    {
      (*(*v89[0] + 40))();
    }

    if (v98 && (v99 & 1) == 0)
    {
      (*(*v98 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(&v94);
    v47 = *(v88 + 200);
    if (v47)
    {
      v48 = *(v88 + 216);
      v84 = &v48[v47];
      do
      {
        v49 = *v48;
        if (*v48)
        {
          v50 = re::ecs2::SceneComponentTable::get((v49 + 200), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v50)
          {
            v51 = *(v50 + 384);
          }

          else
          {
            v51 = 0;
          }

          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v89, 3009, v4, v51, 0, 0);
          v53 = *(v4 + 232);
          if (!v53)
          {
            re::internal::assertLog(4, v52, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 987);
            _os_crash("assertion failure: (m_renderManager) ");
            __break(1u);
          }

          v54 = *(v53 + 112);
          if (v54)
          {
            v55 = re::RenderFrameBox::get((v54 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v55 = 0;
          }

          v56 = *(v55 + 392);
          v57 = (*(**(v4 + 256) + 24))(*(v4 + 256));
          v58 = (*(*v57 + 16))(v57);
          v59 = *(v58 + 124);
          if (!v59)
          {
            v59 = *(v58 + 16);
          }

          *v96 = 0;
          v94 = 0u;
          v95 = 0u;
          *&v96[4] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v94, v56, v59 + 1);
          v60 = re::ecs2::SceneComponentTable::get((v49 + 200), re::ecs2::ComponentImpl<re::ecs2::TintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v60)
          {
            v61 = *(v60 + 384);
            if (v61)
            {
              v62 = *(v60 + 400);
              v63 = &v62[v61];
              do
              {
                v64 = *v62;
                if (*(*(*v62 + 16) + 304))
                {
                  (*(*v57 + 8))(&v98, v57);
                  if (v98)
                  {
                    v65 = *(&v98 + 1);
                  }

                  else
                  {
                    v65 = 0;
                  }

                  v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v65 ^ (v65 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v65 ^ (v65 >> 30))) >> 27));
                  v67 = v66 ^ (v66 >> 31);
                  if (!v94)
                  {
                    LODWORD(v68) = 0;
LABEL_102:
                    v85 = *(v64 + 32);
                    v72 = *(v64 + 48);
LABEL_103:
                    v73 = re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v94, v68, v67);
                    *(v73 + 8) = v65;
                    *(v73 + 16) = v85;
                    *(v73 + 32) = v72;
                    *(v73 + 33) = v98;
                    *(v73 + 40) = *(&v98 + 7);
                    ++*&v96[8];
                    goto LABEL_104;
                  }

                  v68 = v67 % DWORD2(v95);
                  v69 = *(*(&v94 + 1) + 4 * v68);
                  if (v69 == 0x7FFFFFFF)
                  {
                    goto LABEL_102;
                  }

                  v70 = *(*(&v94 + 1) + 4 * v68);
                  while (*(v95 + (v70 << 6) + 8) != v65)
                  {
                    v70 = *(v95 + (v70 << 6)) & 0x7FFFFFFF;
                    if (v70 == 0x7FFFFFFF)
                    {
                      if (*(v95 + (v69 << 6) + 8) == v65)
                      {
                        break;
                      }

                      v71 = *(v64 + 32);
                      v72 = *(v64 + 48);
                      while (1)
                      {
                        v69 = *(v95 + (v69 << 6)) & 0x7FFFFFFF;
                        if (v69 == 0x7FFFFFFF)
                        {
                          break;
                        }

                        if (*(v95 + (v69 << 6) + 8) == v65)
                        {
                          goto LABEL_104;
                        }
                      }

                      v85 = v71;
                      goto LABEL_103;
                    }
                  }
                }

LABEL_104:
                ++v62;
              }

              while (v62 != v63);
            }
          }

          v74 = *v96;
          if (*v96)
          {
            v75 = 0;
            v76 = v95;
            while (1)
            {
              v77 = *v76;
              v76 += 16;
              if (v77 < 0)
              {
                break;
              }

              if (*v96 == ++v75)
              {
                LODWORD(v75) = *v96;
                break;
              }
            }
          }

          else
          {
            LODWORD(v75) = 0;
          }

          if (v75 != *v96)
          {
            v78 = v95;
            do
            {
              re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v98, v49, *(v78 + (v75 << 6) + 8), v55);
              v97 = v98 >> 1;
              v79 = **(re::RenderFrameData::stream((v55 + 264), &v97) + 48);
              v80 = (*(v79 + 440))();
              if (v98)
              {
                if (v98)
                {
                }
              }

              if (*v96 <= (v75 + 1))
              {
                v81 = v75 + 1;
              }

              else
              {
                v81 = *v96;
              }

              v78 = v95;
              while (v81 - 1 != v75)
              {
                LODWORD(v75) = v75 + 1;
                if ((*(v95 + (v75 << 6)) & 0x80000000) != 0)
                {
                  goto LABEL_127;
                }
              }

              LODWORD(v75) = v81;
LABEL_127:
              ;
            }

            while (v75 != v74);
          }

          re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v94);
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v89, v82, v83);
        }

        ++v48;
      }

      while (v48 != v84);
    }

    return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v86);
  }

  return result;
}

re::ecs2::CameraViewDescriptorsComponent *markDirtyIfComponentUsesLayer(re::ecs2::CameraViewDescriptorsComponent *this, int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = this;
    v5 = &a2[a3];
    v6 = *(this + 32);
    while (!v6)
    {
LABEL_11:
      if (++v3 == v5)
      {
        return this;
      }
    }

    v7 = 0;
    v8 = *v3;
    while (1)
    {
      this = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v4, (v7 + 0x10000));
      v9 = *(this + 116);
      if (v9)
      {
        break;
      }

LABEL_10:
      ++v7;
      v6 = *(v4 + 32);
      if (v7 >= v6)
      {
        goto LABEL_11;
      }
    }

    v10 = 136 * v9;
    v11 = (*(this + 118) + 84);
    while (v8 != *(v11 - 1) && v8 != *v11)
    {
      v11 += 34;
      v10 -= 136;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    return re::ecs2::Component::markDirty(v4);
  }

  return this;
}

unint64_t re::ecs2::CameraViewDescriptorsSystem::willAddSceneToECSService(re::ecs2::CameraViewDescriptorsSystem *this, re::ecs2::Scene *a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::init(v12, this + 296, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,4ul>::setBucketsCapacity(this + 37, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::init(v24, this + 296, v52);
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

uint64_t re::ecs2::CameraViewDescriptorsSystem::willRemoveSceneFromECSService(re::ecs2::CameraViewDescriptorsSystem *this, re::ecs2::Scene *a2)
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

void re::ecs2::CameraViewDescriptorsComponent::snapshot(re *a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v25 = xmmword_1E30474D0;
  v27 = 117440767;
  v40 = xmmword_1E308B878;
  memset(v24, 0, 33);
  v26 = 0;
  v28 = -1;
  v29 = 0;
  v30 = 0u;
  v38 = 0;
  v39 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v34 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  v41 = unk_1E308B888;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 272, 8);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *(v7 + 7) = 0u;
  *(v7 + 8) = 0u;
  *(v7 + 9) = 0u;
  *(v7 + 10) = 0u;
  *(v7 + 11) = 0u;
  *(v7 + 12) = 0u;
  *(v7 + 13) = 0u;
  *(v7 + 14) = 0u;
  *(v7 + 15) = 0u;
  *(v7 + 16) = 0u;
  v46 = v7;
  v47 = -1;
  v48 = 1;
  v49 = 0;
  v50 = re::globalAllocators(v7)[2];
  v51 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0u;
  re::Pose<float>::Pose(v81, 0, 0, &v82);
  v52 = *v81;
  v53 = *&v81[16];
  v83 = 0u;
  v84 = 0u;
  v82 = 0u;
  re::Pose<float>::Pose(v23, 0, 0, &v82);
  v54 = v23[0];
  v55 = v23[1];
  v56 = 0;
  v57 = xmmword_1E308B7C0;
  v58 = 0xBDCCCCCD3DCCCCCDLL;
  v59 = 0;
  v60 = xmmword_1E30476A0;
  v61 = 1;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = xmmword_1E308B7C0;
  v68 = 0xBDCCCCCD3DCCCCCDLL;
  v69 = 0;
  v70 = xmmword_1E30476A0;
  v71 = 1;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0u;
  v80[3] = re::globalAllocators(v8)[2];
  v80[4] = 0;
  v9 = *(a2 + 16);
  if (v9 <= 1)
  {
    if (v9 != 1)
    {
      *&v23[0] = 0;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v81 = 136315906;
      *&v81[4] = "operator[]";
      *&v81[12] = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      *&v81[14] = 789;
      *&v81[18] = 2048;
      *&v81[20] = 0;
      *&v81[28] = 2048;
      *&v81[30] = 0;
      _os_log_send_and_compose_impl(v19, v23, &v82, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v81, 38, v20, v21);
      _os_crash_msg();
      __break(1u);
    }

    v10 = [**(a2 + 32) arrayLength] > 1;
  }

  else
  {
    v10 = 2;
  }

  v39 = v10;
  HIBYTE(v48) = 1;
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v80, a3);
  re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::add(a1 + 280, v24);
  if (*(a2 + 16))
  {
    v11 = 0;
    v12 = *(a1 + 37);
    do
    {
      v21 = *(*(a2 + 32) + 8 * v11);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(&v22, "Color", &v21, v11);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v12 + 0x1FFFF), &v22);
      for (i = 14; i != 12; --i)
      {
        v14 = v22.n128_u64[i];
        if (v14)
        {

          v22.n128_u64[i] = 0;
        }
      }

      do
      {
        v15 = v22.n128_u64[i];
        if (v15)
        {

          v22.n128_u64[i] = 0;
        }

        --i;
      }

      while (i != 10);
      for (j = 56; j != 8; j -= 24)
      {
        re::AssetHandle::~AssetHandle((&v22 + j));
      }

      if (v22.n128_u64[0])
      {
        if (v22.n128_u8[8])
        {
          (*(*v22.n128_u64[0] + 40))();
        }

        memset(&v22, 0, 32);
      }

      if (v21)
      {

        v21 = 0;
      }

      ++v11;
    }

    while (*(a2 + 16) > v11);
  }

  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v80);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v24);
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::snapshotWithSettings(re *a1, uint64_t a2, const re::RuntimeRenderGraphDataStruct *a3, uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = xmmword_1E30474D0;
  v31 = 117440767;
  v44 = xmmword_1E308B878;
  memset(v27, 0, sizeof(v27));
  v30 = 0;
  v32 = -1;
  v33 = 0;
  v34 = 0u;
  v42 = 0;
  v43 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v38 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v45 = unk_1E308B888;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 272, 8);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  *(v9 + 13) = 0u;
  *(v9 + 14) = 0u;
  *(v9 + 15) = 0u;
  *(v9 + 16) = 0u;
  v50 = v9;
  v51 = -1;
  v52 = 1;
  v53 = 0;
  v54 = re::globalAllocators(v9)[2];
  v55 = 0;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  re::Pose<float>::Pose(v85, 0, 0, &v86);
  v56 = *v85;
  v57 = *&v85[16];
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  re::Pose<float>::Pose(v26, 0, 0, &v86);
  v58 = v26[0];
  v59 = v26[1];
  v60 = 0;
  v61 = xmmword_1E308B7C0;
  v62 = 0xBDCCCCCD3DCCCCCDLL;
  v63 = 0;
  v64 = xmmword_1E30476A0;
  v65 = 1;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = xmmword_1E308B7C0;
  v72 = 0xBDCCCCCD3DCCCCCDLL;
  v73 = 0;
  v74 = xmmword_1E30476A0;
  v75 = 1;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0u;
  v84[3] = re::globalAllocators(v10)[2];
  v84[4] = 0;
  v11 = *(a2 + 16);
  if (v11 <= 1)
  {
    if (v11 != 1)
    {
      *&v26[0] = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v85 = 136315906;
      *&v85[4] = "operator[]";
      *&v85[12] = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v85[14] = 789;
      *&v85[18] = 2048;
      *&v85[20] = 0;
      *&v85[28] = 2048;
      *&v85[30] = 0;
      _os_log_send_and_compose_impl(v22, v26, &v86, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v23, v24);
      _os_crash_msg();
      __break(1u);
    }

    v12 = [**(a2 + 32) arrayLength] > 1;
  }

  else
  {
    v12 = 2;
  }

  v43 = v12;
  HIBYTE(v52) = 1;
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v84, a4);
  re::ecs2::CameraViewDescriptor::updateWithSettings(v27, a3);
  re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::add(a1 + 280, v27);
  v13 = *(a1 + 37);
  if (*(a2 + 16))
  {
    v14 = 0;
    do
    {
      v24 = *(*(a2 + 32) + 8 * v14);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(&v25, "Color", &v24, v14);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v13 + 0x1FFFF), &v25);
      for (i = 14; i != 12; --i)
      {
        v16 = v25.n128_u64[i];
        if (v16)
        {

          v25.n128_u64[i] = 0;
        }
      }

      do
      {
        v17 = v25.n128_u64[i];
        if (v17)
        {

          v25.n128_u64[i] = 0;
        }

        --i;
      }

      while (i != 10);
      for (j = 56; j != 8; j -= 24)
      {
        re::AssetHandle::~AssetHandle((&v25 + j));
      }

      if (v25.n128_u64[0])
      {
        if (v25.n128_u8[8])
        {
          (*(*v25.n128_u64[0] + 40))();
        }

        memset(&v25, 0, 32);
      }

      if (v24)
      {

        v24 = 0;
      }

      ++v14;
    }

    while (*(a2 + 16) > v14);
  }

  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v84);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v27);
  return v13 + 0x1FFFF;
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::selectionWithSettings(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const re::RuntimeRenderGraphDataStruct *a15, uint64_t a16)
{
  v238 = *MEMORY[0x1E69E9840];
  v178 = 0;
  v179 = xmmword_1E30474D0;
  v181 = 117440767;
  v20 = v232;
  v194 = xmmword_1E308B878;
  v177 = 0u;
  v176 = 0u;
  v180 = 0;
  v182 = -1;
  v183 = 0;
  v184 = 0u;
  v192 = 0;
  v193 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0;
  v188 = 0;
  v189 = 0u;
  v190 = 0u;
  v191 = 0;
  v195 = unk_1E308B888;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v21 = re::globalAllocators(a1);
  v22 = (*(*v21[2] + 32))(v21[2], 272, 8);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  v200 = v22;
  v201 = -1;
  v202 = 1;
  v203 = 0;
  v204 = re::globalAllocators(v22)[2];
  v205 = 0;
  v234 = 0u;
  v235 = 0u;
  v233 = 0u;
  re::Pose<float>::Pose(v232, 0, 0, &v233);
  v206[0] = *v232;
  v206[1] = *&v232[16];
  v234 = 0u;
  v235 = 0u;
  v233 = 0u;
  re::Pose<float>::Pose(v175, 0, 0, &v233);
  v206[2] = v175[0];
  v206[3] = v175[1];
  v207 = 0;
  v208 = xmmword_1E308B7C0;
  v209 = 0xBDCCCCCD3DCCCCCDLL;
  v210 = 0;
  v211 = xmmword_1E30476A0;
  v212 = 1;
  v213 = 0;
  v214 = 0;
  v215[0] = 0;
  v216[0] = 0;
  v217 = 0;
  v218 = xmmword_1E308B7C0;
  v219 = 0xBDCCCCCD3DCCCCCDLL;
  v220 = 0;
  v221 = xmmword_1E30476A0;
  v222 = 1;
  v223 = 0;
  v224 = 0;
  v225 = 0;
  v226 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0u;
  v231[3] = re::globalAllocators(v23)[2];
  v231[4] = 0;
  v24 = *(a5 + 16);
  if (v24 <= 1)
  {
    if (v24 != 1)
    {
      goto LABEL_222;
    }

    v25 = [**(a5 + 32) arrayLength] > 1;
  }

  else
  {
    v25 = 2;
  }

  v193 = v25;
  HIBYTE(v202) = 1;
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v231, a16);
  re::ecs2::CameraViewDescriptor::updateWithSettings(&v176, a15);
  re::AssetHandle::operator=(&v176, a2);
  WORD4(v177) = 257;
  v26 = *(a3 + 16);
  if (v26)
  {
    v27 = v206;
    v28 = *(a3 + 32);
    do
    {
      v29 = *v28;
      v30 = v28[1];
      v28 += 2;
      *v27 = v29;
      v27[1] = v30;
      v27 += 2;
      --v26;
    }

    while (v26);
  }

  v31 = *(a4 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = *(a4 + 32);
    do
    {
      v34 = &v176 + v32;
      *(v34 + 27) = *(v33 + v32);
      v35 = *(v33 + v32 + 16);
      v36 = *(v33 + v32 + 32);
      v37 = *(v33 + v32 + 48);
      *(v34 + 248) = *(v33 + v32 + 64);
      *(v34 + 29) = v36;
      *(v34 + 30) = v37;
      *(v34 + 28) = v35;
      if (v215[v32])
      {
        if (*(v33 + v32 + 80))
        {
          v38 = &v176.f32[v32 / 4];
          v39 = *(v33 + v32 + 96);
          v40 = *(v33 + v32 + 112);
          v41 = *(v33 + v32 + 144);
          v38[35] = *(v33 + v32 + 128);
          v38[36] = v41;
          v38[33] = v39;
          v38[34] = v40;
        }

        else
        {
          v34[512] = 0;
        }
      }

      else if (*(v33 + v32 + 80))
      {
        v34[512] = 1;
        v42 = &v176.f32[v32 / 4];
        v43 = *(v33 + v32 + 96);
        v44 = *(v33 + v32 + 112);
        v45 = *(v33 + v32 + 144);
        v42[35] = *(v33 + v32 + 128);
        v42[36] = v45;
        v42[33] = v43;
        v42[34] = v44;
      }

      v46 = &v176 + v32;
      if (v216[v32])
      {
        if (*(v33 + v32 + 160))
        {
          v47 = &v176.f32[v32 / 4];
          v48 = *(v33 + v32 + 176);
          v49 = *(v33 + v32 + 192);
          v50 = *(v33 + v32 + 224);
          v47[40] = *(v33 + v32 + 208);
          v47[41] = v50;
          v47[38] = v48;
          v47[39] = v49;
        }

        else
        {
          v46[592] = 0;
        }
      }

      else if (*(v33 + v32 + 160))
      {
        v46[592] = 1;
        v51 = &v176.f32[v32 / 4];
        v52 = *(v33 + v32 + 176);
        v53 = *(v33 + v32 + 192);
        v54 = *(v33 + v32 + 224);
        v51[40] = *(v33 + v32 + 208);
        v51[41] = v54;
        v51[38] = v52;
        v51[39] = v53;
      }

      v32 += 240;
      --v31;
    }

    while (v31);
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::add(a1 + 280, &v176);
  v152 = *(a1 + 37);
  if (*(a5 + 16))
  {
    v55 = 0;
    v148 = a14;
    v146 = a5;
    while (1)
    {
      v56 = *(a5 + 32);
      v57 = v55;
      v173 = *(v56 + 8 * v55);
      v154 = v57;
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v174, "SelectionColor0", &v173, v57);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v174);
      for (i = 14; i != 12; --i)
      {
        v59 = v174[0].n128_u64[i];
        if (v59)
        {

          v174[0].n128_u64[i] = 0;
        }
      }

      do
      {
        v60 = v174[0].n128_u64[i];
        if (v60)
        {

          v174[0].n128_u64[i] = 0;
        }

        --i;
      }

      while (i != 10);
      for (j = 56; j != 8; j -= 24)
      {
        re::AssetHandle::~AssetHandle((v174 + j));
      }

      if (v174[0].n128_u64[0])
      {
        if (v174[0].n128_u8[8])
        {
          (*(*v174[0].n128_u64[0] + 40))();
        }

        memset(v174, 0, 32);
      }

      if (v173)
      {

        v173 = 0;
      }

      v62 = *(a6 + 16);
      if (v62 <= v154)
      {
        break;
      }

      v171 = *(*(a6 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v172, "SelectionColor1", &v171, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v172);
      for (k = 14; k != 12; --k)
      {
        v64 = v172[0].n128_u64[k];
        if (v64)
        {

          v172[0].n128_u64[k] = 0;
        }
      }

      do
      {
        v65 = v172[0].n128_u64[k];
        if (v65)
        {

          v172[0].n128_u64[k] = 0;
        }

        --k;
      }

      while (k != 10);
      for (m = 56; m != 8; m -= 24)
      {
        re::AssetHandle::~AssetHandle((v172 + m));
      }

      if (v172[0].n128_u64[0])
      {
        if (v172[0].n128_u8[8])
        {
          (*(*v172[0].n128_u64[0] + 40))();
        }

        memset(v172, 0, 32);
      }

      if (v171)
      {

        v171 = 0;
      }

      v62 = *(a7 + 16);
      v67 = v154;
      if (v62 <= v154)
      {
        goto LABEL_190;
      }

      v169 = *(*(a7 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v170, "SelectionColor2", &v169, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v170);
      for (n = 14; n != 12; --n)
      {
        v69 = v170[0].n128_u64[n];
        if (v69)
        {

          v170[0].n128_u64[n] = 0;
        }
      }

      do
      {
        v70 = v170[0].n128_u64[n];
        if (v70)
        {

          v170[0].n128_u64[n] = 0;
        }

        --n;
      }

      while (n != 10);
      for (ii = 56; ii != 8; ii -= 24)
      {
        re::AssetHandle::~AssetHandle((v170 + ii));
      }

      if (v170[0].n128_u64[0])
      {
        if (v170[0].n128_u8[8])
        {
          (*(*v170[0].n128_u64[0] + 40))();
        }

        memset(v170, 0, 32);
      }

      if (v169)
      {

        v169 = 0;
      }

      v62 = *(a8 + 16);
      v72 = v154;
      if (v62 <= v154)
      {
        goto LABEL_194;
      }

      v167 = *(*(a8 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v168, "SelectionColor3", &v167, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v168);
      for (jj = 14; jj != 12; --jj)
      {
        v74 = v168[0].n128_u64[jj];
        if (v74)
        {

          v168[0].n128_u64[jj] = 0;
        }
      }

      do
      {
        v75 = v168[0].n128_u64[jj];
        if (v75)
        {

          v168[0].n128_u64[jj] = 0;
        }

        --jj;
      }

      while (jj != 10);
      for (kk = 56; kk != 8; kk -= 24)
      {
        re::AssetHandle::~AssetHandle((v168 + kk));
      }

      if (v168[0].n128_u64[0])
      {
        if (v168[0].n128_u8[8])
        {
          (*(*v168[0].n128_u64[0] + 40))();
        }

        memset(v168, 0, 32);
      }

      if (v167)
      {

        v167 = 0;
      }

      v62 = *(a9 + 16);
      v77 = v154;
      if (v62 <= v154)
      {
        goto LABEL_198;
      }

      v165 = *(*(a9 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v166, "SelectionColor4", &v165, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v166);
      for (mm = 14; mm != 12; --mm)
      {
        v79 = v166[0].n128_u64[mm];
        if (v79)
        {

          v166[0].n128_u64[mm] = 0;
        }
      }

      do
      {
        v80 = v166[0].n128_u64[mm];
        if (v80)
        {

          v166[0].n128_u64[mm] = 0;
        }

        --mm;
      }

      while (mm != 10);
      for (nn = 56; nn != 8; nn -= 24)
      {
        re::AssetHandle::~AssetHandle((v166 + nn));
      }

      if (v166[0].n128_u64[0])
      {
        if (v166[0].n128_u8[8])
        {
          (*(*v166[0].n128_u64[0] + 40))();
        }

        memset(v166, 0, 32);
      }

      if (v165)
      {

        v165 = 0;
      }

      v62 = *(a10 + 16);
      v82 = v154;
      if (v62 <= v154)
      {
        goto LABEL_202;
      }

      v163 = *(*(a10 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v164, "SelectionColor5", &v163, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v164);
      for (i1 = 14; i1 != 12; --i1)
      {
        v84 = v164[0].n128_u64[i1];
        if (v84)
        {

          v164[0].n128_u64[i1] = 0;
        }
      }

      do
      {
        v85 = v164[0].n128_u64[i1];
        if (v85)
        {

          v164[0].n128_u64[i1] = 0;
        }

        --i1;
      }

      while (i1 != 10);
      for (i2 = 56; i2 != 8; i2 -= 24)
      {
        re::AssetHandle::~AssetHandle((v164 + i2));
      }

      if (v164[0].n128_u64[0])
      {
        if (v164[0].n128_u8[8])
        {
          (*(*v164[0].n128_u64[0] + 40))();
        }

        memset(v164, 0, 32);
      }

      if (v163)
      {

        v163 = 0;
      }

      v62 = *(a11 + 16);
      v87 = v154;
      if (v62 <= v154)
      {
        goto LABEL_206;
      }

      v161 = *(*(a11 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v162, "SelectionColor6", &v161, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v162);
      for (i3 = 14; i3 != 12; --i3)
      {
        v89 = v162[0].n128_u64[i3];
        if (v89)
        {

          v162[0].n128_u64[i3] = 0;
        }
      }

      do
      {
        v90 = v162[0].n128_u64[i3];
        if (v90)
        {

          v162[0].n128_u64[i3] = 0;
        }

        --i3;
      }

      while (i3 != 10);
      for (i4 = 56; i4 != 8; i4 -= 24)
      {
        re::AssetHandle::~AssetHandle((v162 + i4));
      }

      if (v162[0].n128_u64[0])
      {
        if (v162[0].n128_u8[8])
        {
          (*(*v162[0].n128_u64[0] + 40))();
        }

        memset(v162, 0, 32);
      }

      if (v161)
      {

        v161 = 0;
      }

      v62 = *(a12 + 16);
      v92 = v154;
      if (v62 <= v154)
      {
        goto LABEL_210;
      }

      v159 = *(*(a12 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v160, "SelectionColor7", &v159, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v160);
      for (i5 = 14; i5 != 12; --i5)
      {
        v94 = v160[0].n128_u64[i5];
        if (v94)
        {

          v160[0].n128_u64[i5] = 0;
        }
      }

      do
      {
        v95 = v160[0].n128_u64[i5];
        if (v95)
        {

          v160[0].n128_u64[i5] = 0;
        }

        --i5;
      }

      while (i5 != 10);
      for (i6 = 56; i6 != 8; i6 -= 24)
      {
        re::AssetHandle::~AssetHandle((v160 + i6));
      }

      if (v160[0].n128_u64[0])
      {
        if (v160[0].n128_u8[8])
        {
          (*(*v160[0].n128_u64[0] + 40))();
        }

        memset(v160, 0, 32);
      }

      if (v159)
      {

        v159 = 0;
      }

      v62 = *(a13 + 16);
      v97 = v154;
      if (v62 <= v154)
      {
        goto LABEL_214;
      }

      v157 = *(*(a13 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v158, "SelectionDepth0", &v157, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), v158);
      for (i7 = 14; i7 != 12; --i7)
      {
        v99 = v158[0].n128_u64[i7];
        if (v99)
        {

          v158[0].n128_u64[i7] = 0;
        }
      }

      do
      {
        v100 = v158[0].n128_u64[i7];
        if (v100)
        {

          v158[0].n128_u64[i7] = 0;
        }

        --i7;
      }

      while (i7 != 10);
      for (i8 = 56; i8 != 8; i8 -= 24)
      {
        re::AssetHandle::~AssetHandle((v158 + i8));
      }

      if (v158[0].n128_u64[0])
      {
        if (v158[0].n128_u8[8])
        {
          (*(*v158[0].n128_u64[0] + 40))();
        }

        memset(v158, 0, 32);
      }

      if (v157)
      {

        v157 = 0;
      }

      v62 = *(a14 + 16);
      v102 = v154;
      if (v62 <= v154)
      {
        goto LABEL_218;
      }

      v155 = *(*(a14 + 32) + 8 * v154);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(&v156, "SelectionStencil0", &v155, v154);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v152 + 0x1FFFF), &v156);
      for (i9 = 14; i9 != 12; --i9)
      {
        v104 = v156.n128_u64[i9];
        if (v104)
        {

          v156.n128_u64[i9] = 0;
        }
      }

      do
      {
        v105 = v156.n128_u64[i9];
        if (v105)
        {

          v156.n128_u64[i9] = 0;
        }

        --i9;
      }

      while (i9 != 10);
      for (i10 = 56; i10 != 8; i10 -= 24)
      {
        re::AssetHandle::~AssetHandle((&v156 + i10));
      }

      a5 = v146;
      if (v156.n128_u64[0])
      {
        if (v156.n128_u8[8])
        {
          (*(*v156.n128_u64[0] + 40))();
        }

        memset(&v156, 0, 32);
      }

      if (v155)
      {

        v155 = 0;
      }

      v55 = v154 + 1;
      if (*(v146 + 16) <= v154 + 1)
      {
        goto LABEL_185;
      }
    }

    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v108 = MEMORY[0x1E69E9C10];
    v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v109)
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v154;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v110, v175, &v233, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, a14);
    _os_crash_msg();
    __break(1u);
LABEL_190:
    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = v67;
    v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v113)
    {
      v114 = 3;
    }

    else
    {
      v114 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v112;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v114, v175, &v233, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, v148);
    _os_crash_msg();
    __break(1u);
LABEL_194:
    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v115 = MEMORY[0x1E69E9C10];
    v116 = v72;
    v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v117)
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v116;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v118, v175, &v233, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, v148);
    _os_crash_msg();
    __break(1u);
LABEL_198:
    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v119 = MEMORY[0x1E69E9C10];
    v120 = v77;
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v120;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v122, v175, &v233, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, v148);
    _os_crash_msg();
    __break(1u);
LABEL_202:
    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = v82;
    v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v125)
    {
      v126 = 3;
    }

    else
    {
      v126 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v124;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v126, v175, &v233, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, v148);
    _os_crash_msg();
    __break(1u);
LABEL_206:
    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v127 = MEMORY[0x1E69E9C10];
    v128 = v87;
    v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v129)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v128;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v130, v175, &v233, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, v148);
    _os_crash_msg();
    __break(1u);
LABEL_210:
    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v131 = MEMORY[0x1E69E9C10];
    v132 = v92;
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v132;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v134, v175, &v233, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, v148);
    _os_crash_msg();
    __break(1u);
LABEL_214:
    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v135 = MEMORY[0x1E69E9C10];
    v136 = v97;
    v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v137)
    {
      v138 = 3;
    }

    else
    {
      v138 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v136;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v138, v175, &v233, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, v148);
    _os_crash_msg();
    __break(1u);
LABEL_218:
    *&v175[0] = 0;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    v139 = MEMORY[0x1E69E9C10];
    v20 = v102;
    v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *&v232[4] = "operator[]";
    *&v232[12] = 1024;
    if (v140)
    {
      v141 = 3;
    }

    else
    {
      v141 = 2;
    }

    *&v232[14] = 789;
    *&v232[18] = 2048;
    *&v232[20] = v20;
    *&v232[28] = 2048;
    *&v232[30] = v62;
    _os_log_send_and_compose_impl(v141, v175, &v233, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v146, v148);
    _os_crash_msg();
    __break(1u);
LABEL_222:
    *&v175[0] = 0;
    *(v20 + 6) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 3) = 0u;
    v142 = MEMORY[0x1E69E9C10];
    v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v232 = 136315906;
    *(v20 + 4) = "operator[]";
    *&v232[12] = 1024;
    if (v143)
    {
      v144 = 3;
    }

    else
    {
      v144 = 2;
    }

    *(v20 + 14) = 789;
    *&v232[18] = 2048;
    *(v20 + 20) = 0;
    *&v232[28] = 2048;
    *(v20 + 30) = 0;
    _os_log_send_and_compose_impl(v144, v175, &v233, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v145, v147);
    _os_crash_msg();
    __break(1u);
  }

LABEL_185:
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v231);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v176);
  return v152 + 0x1FFFF;
}

void re::ecs2::CameraViewDescriptorsComponent::getAspect(re::ecs2::CameraViewDescriptorsComponent *this, re::ecs2::CameraViewDescriptorsComponent *a2, uint64_t a3, re::DrawingManager **a4, double a5)
{
  v31 = a4;
  v6 = *(this + 27);
  if (v6 != 1)
  {
    if (!v6 && !*(this + 32))
    {
      v7 = a4[14];
      if (v7)
      {

        goto LABEL_36;
      }

      return;
    }

    goto LABEL_10;
  }

  if (*(this + 32) || *(*(this + 29) + 928))
  {
LABEL_10:
    ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
    if (!ViewDescriptor)
    {
      return;
    }

    v9 = ViewDescriptor;
    v10 = *(ViewDescriptor + 200) ? a3 : 0;
    if (!*(ViewDescriptor + 928))
    {
      return;
    }

    v11 = 0;
    v12 = 8 * v10;
    v13 = 4 * v10 + 80;
    v14 = 32;
    v15 = 24 * v10;
    while (1)
    {
      v16 = *(v9 + 944);
      re::AssetHandle::AssetHandle(v32, (v16 + v14 + v15));
      if (*(v9 + 200) == 1)
      {
        re::AssetHandle::operator=(v32, (v16 + v14));
      }

      if (v33)
      {
        v18 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v32);
        if (*(v18 + 120))
        {
          v26 = std::__throw_bad_variant_access[abi:nn200100]();
          re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(v26, v27, v28, v29, v30);
          return;
        }

        v19 = *(v18 + 112);
        [v19 width];
        [v19 height];
        if (v19)
        {
        }
      }

      else
      {
        v20 = *(v16 + v13);
        if (v20 != -1)
        {
          v21 = v31[14];
          if (v21)
          {
            re::DrawingManager::layerAspect(v21, v20, v17);
          }

          goto LABEL_31;
        }

        v22 = v16 + v12;
        v23 = *(v16 + v12 + 88);
        if (v23)
        {
          [v23 width];
          v24 = *(v22 + 88);
LABEL_30:
          [v24 height];
          goto LABEL_31;
        }

        v25 = *(v22 + 104);
        if (v25)
        {
          [v25 width];
          v24 = *(v22 + 104);
          goto LABEL_30;
        }
      }

LABEL_31:
      re::AssetHandle::~AssetHandle(v32);
      ++v11;
      v12 += 136;
      v13 += 136;
      v14 += 136;
      if (*(v9 + 928) <= v11)
      {
        return;
      }
    }
  }

  LODWORD(a5) = *(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0) + 212);
  v7 = v31[14];
  if (v7)
  {
LABEL_36:
    re::DrawingManager::layerAspect(v7, 0, a5);
  }
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(re::ecs2::CameraViewDescriptorsComponent *this, uint64_t a2, float *a3, double a4, double a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = *(this + 27);
  if (v8 != 1)
  {
    if (!v8)
    {
      if (*(this + 32))
      {
        v49 = this;
        v51 = 0;
        goto LABEL_19;
      }

      goto LABEL_8;
    }

LABEL_6:
    v9 = 0;
    v49 = this;
    v51 = 0;
    goto LABEL_23;
  }

  if (*(this + 32))
  {
    goto LABEL_6;
  }

  if (!*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0) + 928))
  {
LABEL_8:
    v10 = *(a2 + 112);
    if (v10 && *(v10 + 1688) && **(v10 + 1704))
    {
      LayerSize = re::DrawingManager::getLayerSize(v10, 0, a4, a5);
      *a3 = LayerSize;
      a3[1] = v12;
      return v12 != 0.0 && LayerSize != 0.0;
    }
  }

  v15 = *(this + 27);
  v49 = this;
  v51 = 0;
  if (!v15)
  {
LABEL_19:
    if (*(this + 32))
    {
      v9 = 1;
    }

    else
    {
      if (!*(this + 37))
      {
        return 0;
      }

      v9 = 2;
    }

    goto LABEL_23;
  }

  v9 = 0;
LABEL_23:
  v50 = v9;
  while (1)
  {
    v16 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(&v49);
    if (*(v16 + 928))
    {
      break;
    }

LABEL_34:
    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v49);
    if (v49 == this && v50 == 3 && v51 == 0)
    {
      return 0;
    }
  }

  v17 = v16;
  v19 = *(v16 + 212);
  v18 = *(v16 + 216);
  re::AssetHandle::AssetHandle(v48, (*(v16 + 944) + 32));
  if (v48[1])
  {
    v29 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v48);
    if (*(v29 + 120))
    {
      v46 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::ecs2::CameraViewDescriptorsComponentStateImpl::dependsOnComponents(v46);
    }

    v30 = *(v29 + 112);
    *a3 = v19 * [v30 width];
    a3[1] = v18 * [v30 height];
    if (v30)
    {
    }

LABEL_51:
    v14 = 1;
    goto LABEL_52;
  }

  if (!*(v17 + 928))
  {
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v61 = 0u;
    v62 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v56 = 797;
    v57 = 2048;
    v58 = 0;
    v59 = 2048;
    v60 = 0;
    _os_log_send_and_compose_impl(v39, &v52, &v61, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v47, v48[0]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_64;
  }

  v22 = *(v17 + 944);
  v23 = *(v22 + 80);
  if (v23 == -1 || (v24 = *(a2 + 112)) == 0 || *(v24 + 211) <= v23 || !*(*(v24 + 213) + 32 * v23))
  {
    v25 = *(v22 + 88);
    if (!v25)
    {
      v26 = *(v22 + 104);
      if (!v26)
      {
        re::AssetHandle::~AssetHandle(v48);
        goto LABEL_34;
      }

      *a3 = v19 * [v26 width];
      if (*(v17 + 928))
      {
        v31 = *(*(v17 + 944) + 104);
        goto LABEL_50;
      }

LABEL_68:
      v52 = 0;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v61 = 0u;
      v62 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      if (v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      v56 = 797;
      v57 = 2048;
      v58 = 0;
      v59 = 2048;
      v60 = 0;
      _os_log_send_and_compose_impl(v45, &v52, &v61, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v47, v48[0]);
      _os_crash_msg();
      __break(1u);
    }

    *a3 = v19 * [v25 width];
    if (*(v17 + 928))
    {
      v31 = *(*(v17 + 944) + 88);
LABEL_50:
      a3[1] = v18 * [v31 height];
      goto LABEL_51;
    }

LABEL_64:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v61 = 0u;
    v62 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v56 = 797;
    v57 = 2048;
    v58 = 0;
    v59 = 2048;
    v60 = 0;
    _os_log_send_and_compose_impl(v42, &v52, &v61, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v47, v48[0]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_68;
  }

  v33 = v19 * re::DrawingManager::getLayerSize(v24, v23, v20, v21);
  v35 = v18 * v34;
  *a3 = v33;
  a3[1] = v35;
  v14 = v35 != 0.0 && v33 != 0.0;
LABEL_52:
  re::AssetHandle::~AssetHandle(v48);
  return v14;
}

void re::ecs2::CameraViewDescriptorsSystem::~CameraViewDescriptorsSystem(re::ecs2::CameraViewDescriptorsSystem *this)
{
  *(this + 67) = &unk_1F5CEFA60;
  re::FixedArray<CoreIKTransform>::deinit(this + 75);
  re::FixedArray<CoreIKTransform>::deinit(this + 72);
  re::FixedArray<CoreIKTransform>::deinit(this + 69);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);

  re::ecs2::System::~System(this);
}

{
  *(this + 67) = &unk_1F5CEFA60;
  re::FixedArray<CoreIKTransform>::deinit(this + 75);
  re::FixedArray<CoreIKTransform>::deinit(this + 72);
  re::FixedArray<CoreIKTransform>::deinit(this + 69);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  result = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (!result)
  {
    goto LABEL_4;
  }

  v6 = &unk_1EE187000;
  {
    v17 = result;
    v6 = &unk_1EE187000;
    v16 = v14;
    result = v17;
    if (v16)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v15);
      v6 = &unk_1EE187000;
      result = v17;
    }
  }

  if (v6[42] == *(result + 16))
  {
    v7 = *(result + 36);
    v8 = *(a1 + 752);
    if (v8 <= v7)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v10 = MEMORY[0x1E69E9C10];
      v11 = v7;
      v12 = v8;
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

      v22 = 866;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      _os_log_send_and_compose_impl(v13, &v18, v27, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 760))
    {
      v9 = a1 + 768;
    }

    else
    {
      v9 = *(a1 + 776);
    }

    *a3 = 1;
    a3[1] = *(v9 + v7);
  }

  else
  {
LABEL_4:
    *a3 = 0;
  }

  return result;
}

uint64_t re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(uint64_t a1, void *a2)
{
  if (*(a1 + 700))
  {
    return re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 672, a2);
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 80 * v3;
  for (result = a1 + 40; *(result - 8) != *a2; result += 80)
  {
    v4 -= 80;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

__n128 re::RuntimeRenderGraphDataStruct::getValueOfType<re::Vector4<float>>@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = &unk_1EE187000;
  {
    v17 = v5;
    v7 = &unk_1EE187000;
    v16 = v15;
    v5 = v17;
    if (v16)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v7 = &unk_1EE187000;
      v5 = v17;
    }
  }

  if (v7[46] == *(v5 + 16))
  {
    v8 = *(v5 + 36);
    v9 = *(a1 + 752);
    if (v9 <= v8)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v11 = MEMORY[0x1E69E9C10];
      v12 = v8;
      v13 = v9;
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v22 = 866;
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = v13;
      _os_log_send_and_compose_impl(v14, &v18, v27, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 760))
    {
      v10 = a1 + 768;
    }

    else
    {
      v10 = *(a1 + 776);
    }

    a3->n128_u8[0] = 1;
    result = *(v10 + v8);
    a3[1] = result;
  }

  else
  {
LABEL_4:
    a3->n128_u8[0] = 0;
  }

  return result;
}

float re::RuntimeRenderGraphDataStruct::getValueOfType<float>@<S0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = &unk_1EE187000;
  {
    v18 = v5;
    v7 = &unk_1EE187000;
    v17 = v15;
    v5 = v18;
    if (v17)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v16);
      v7 = &unk_1EE187000;
      v5 = v18;
    }
  }

  if (v7[40] == *(v5 + 16))
  {
    v8 = *(v5 + 36);
    v9 = *(a1 + 752);
    if (v9 <= v8)
    {
      v19 = 0;
      memset(v28, 0, sizeof(v28));
      v11 = MEMORY[0x1E69E9C10];
      v12 = v8;
      v13 = v9;
      v20 = 136315906;
      v21 = "operator[]";
      v22 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v23 = 866;
      v24 = 2048;
      v25 = v12;
      v26 = 2048;
      v27 = v13;
      _os_log_send_and_compose_impl(v14, &v19, v28, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 760))
    {
      v10 = a1 + 768;
    }

    else
    {
      v10 = *(a1 + 776);
    }

    *a3 = 1;
    result = *(v10 + v8);
    *(a3 + 4) = result;
  }

  else
  {
LABEL_4:
    *a3 = 0;
  }

  return result;
}

BOOL re::Projection::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (vabds_f32(*(a1 + 4), *(a2 + 4)) > 0.00001 || vabds_f32(*(a1 + 8), *(a2 + 8)) > 0.00001 || vabds_f32(*(a1 + 12), *(a2 + 12)) > 0.00001 || vabds_f32(*(a1 + 16), *(a2 + 16)) > 0.00001 || vabds_f32(*(a1 + 20), *(a2 + 20)) > 0.00001 || vabds_f32(*(a1 + 24), *(a2 + 24)) > 0.00001 || *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  result = re::areAlmostEqual<float>((a1 + 32), (a2 + 32));
  if (!result)
  {
    return result;
  }

  if (*(a1 + 48) == *(a2 + 48) && ((v5 = *(a1 + 56), v6 = *(a2 + 56), v5 == v6) || vabds_f32(v5, v6) <= 0.00001) && ((v7 = *(a1 + 60), v8 = *(a2 + 60), v7 == v8) || vabds_f32(v7, v8) <= 0.00001) && *(a1 + 64) == *(a2 + 64))
  {
    return *(a1 + 65) == *(a2 + 65);
  }

  else
  {
    return 0;
  }
}

re::ecs2::CameraViewDescriptor *re::ecs2::CameraViewDescriptor::CameraViewDescriptor(re::ecs2::CameraViewDescriptor *this)
{
  *(this + 32) = 0;
  v2 = (this + 436);
  *(this + 3) = xmmword_1E30474D0;
  *(this + 17) = 117440767;
  *(this + 204) = xmmword_1E308B878;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 16) = 0;
  *(this + 18) = -1;
  *(this + 10) = 0;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 200) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 46) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 220) = unk_1E308B888;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 272, 8);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 14) = 0u;
  *(v4 + 15) = 0u;
  *(v4 + 16) = 0u;
  *(this + 38) = v4;
  *(this + 39) = -1;
  *(this + 160) = 1;
  *(this + 322) = 0;
  *(this + 44) = re::globalAllocators(v4)[2];
  *(this + 45) = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  re::Pose<float>::Pose(v12, 0, 0, &v9);
  v5 = v12[1];
  *(this + 23) = v12[0];
  *(this + 24) = v5;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  re::Pose<float>::Pose(v8, 0, 0, &v9);
  v6 = v8[1];
  *(this + 25) = v8[0];
  *(this + 26) = v6;
  *(this + 108) = 0;
  *v2 = xmmword_1E308B7C0;
  *(this + 452) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 460) = 0;
  *(this + 29) = xmmword_1E30476A0;
  *(this + 120) = 1;
  *(this + 61) = 0;
  *(this + 248) = 0;
  *(this + 512) = 0;
  *(this + 592) = 0;
  *(this + 168) = 0;
  v2[15] = xmmword_1E308B7C0;
  *(this + 692) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 700) = 0;
  *(this + 44) = xmmword_1E30476A0;
  *(this + 180) = 1;
  *(this + 91) = 0;
  *(this + 368) = 0;
  *(this + 752) = 0;
  *(this + 832) = 0;
  *(this + 118) = 0;
  *(this + 234) = 0;
  *(this + 116) = 0;
  *(this + 57) = 0u;
  return this;
}

void *re::DynamicArray<re::CameraMultiView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::CameraMultiView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC30uLL))
        {
          v2 = 3120 * a2;
          result = (*(*result + 32))(result, 3120 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 3120, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = v8 + 3120 * v9;
        v11 = v7;
        do
        {
          for (i = 0; i != 388; i += 194)
          {
            re::CameraView::CameraView(&v11[i], v8 + i * 8);
          }

          *(v11 + 1552) = *(v8 + 3104);
          v13 = 3104;
          do
          {
            re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v8 + v13 - 368);
            re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v8 + v13 - 928);
            re::DynamicArray<re::RenderGraphFileProvider>::deinit(v8 + v13 - 976);
            re::DynamicString::deinit((v8 + v13 - 1552));
            v13 -= 1552;
          }

          while (v13);
          v8 += 3120;
          v11 += 390;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::ScopeLanePair>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v8 = re::DynamicString::setCapacity(&v12, 0);
  memset(&v14[16], 0, 24);
  re::DynamicString::setCapacity(&v14[8], 0);
  v9.n128_f64[0] = re::DynamicArray<re::ecs2::ScopeLanePair>::add(a4, &v12);
  if (*&v14[8])
  {
    if (v14[16])
    {
      (*(**&v14[8] + 40))(v9.n128_f64[0]);
    }

    v9 = 0uLL;
    memset(&v14[8], 0, 32);
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))(v9);
  }

  v10 = (*(a4 + 4) + (*(a4 + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, a1[6], v10);
  return v10;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + (a3 << 6);
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

  return *(a2 + 32) + (a3 << 6);
}

void re::DynamicArray<re::ecs2::ScopeLanePair>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = a2 << 6;
    v10 = a2;
    do
    {
      v11 = *(v3 + 4) + v9;
      re::DynamicString::deinit((v11 + 32));
      re::DynamicString::deinit(v11);
      ++v10;
      v9 += 64;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 6;
      do
      {
        v7 = *(v3 + 4) + v6;
        *(v7 + 48) = 0u;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        *(v7 + 32) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 32) = 0u;
        a1 = re::DynamicString::setCapacity((v7 + 32), 0);
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

double re::DynamicArray<re::ecs2::ScopeLanePair>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::ScopeLanePair>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = a2[3];
  v7 = a2[1];
  *v5 = *a2;
  *a2 = 0;
  v8 = a2[2];
  a2[3] = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  a2[1] = v10;
  a2[2] = v9;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 56) = a2[7];
  v11 = a2[5];
  *(v5 + 32) = a2[4];
  a2[4] = 0;
  v12 = a2[6];
  a2[7] = 0;
  v14 = *(v5 + 40);
  v13 = *(v5 + 48);
  *(v5 + 40) = v11;
  *(v5 + 48) = v12;
  a2[5] = v14;
  a2[6] = v13;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::ScopeLanePair>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::ScopeLanePair>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::ScopeLanePair>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::ecs2::ScopeLanePair>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = v2 << 6;
    do
    {
      re::DynamicString::deinit((v3 + 32));
      re::DynamicString::deinit(v3);
      v3 += 64;
      v4 -= 64;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  re::DynamicString::setCapacity(&v15, 0);
  memset(v17 + 8, 0, 48);
  *(&v17[3] + 1) = -1;
  v18 = 0u;
  memset(v19, 0, 28);
  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::add(a4, &v15);
  for (i = 14; i != 12; --i)
  {
    v9 = (&v15)[i];
    if (v9)
    {

      (&v15)[i] = 0;
    }
  }

  for (j = 12; j != 10; --j)
  {
    v11 = (&v15)[j];
    if (v11)
    {

      (&v15)[j] = 0;
    }
  }

  for (k = 7; k != 1; k -= 3)
  {
    re::AssetHandle::~AssetHandle(&(&v15)[k]);
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  v13 = (*(a4 + 32) + 136 * *(a4 + 16) - 136);
  re::introspectionInitElement(a2, a3, a1[6], v13);
  return v13;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 136 * a3;
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

  return *(a2 + 32) + 136 * a3;
}

void *re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_27;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
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
LABEL_27:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 136 * v9;
        v11 = v7;
        do
        {
          v12 = 0;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v13 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v14 = *(v8 + 16);
          *(v8 + 24) = 0;
          v16 = v11[1];
          v15 = v11[2];
          v11[1] = v13;
          v11[2] = v14;
          *(v8 + 8) = v16;
          *(v8 + 16) = v15;
          do
          {
            v17 = &v11[v12];
            v18 = (v8 + v12 * 8);
            v17[4] = 0;
            v17[5] = 0;
            v17[6] = 0;
            v17[5] = *(v8 + v12 * 8 + 40);
            v18[5] = 0;
            v19 = v11[v12 + 4];
            v17[4] = 0;
            v17[4] = *(v8 + v12 * 8 + 32);
            v18[4] = v19;
            v20 = v11[v12 + 6];
            v17[6] = *(v8 + v12 * 8 + 48);
            v18[6] = v20;
            v12 += 3;
          }

          while (v12 != 6);
          v11[10] = *(v8 + 80);
          v11[11] = *(v8 + 88);
          *(v8 + 88) = 0;
          *(v11 + 6) = *(v8 + 96);
          *(v8 + 96) = 0;
          *(v8 + 104) = 0;
          v11[14] = *(v8 + 112);
          *(v8 + 112) = 0;
          v21 = *(v8 + 120);
          *(v11 + 32) = *(v8 + 128);
          v11[15] = v21;
          for (i = 112; i != 96; i -= 8)
          {
            v23 = *(v8 + i);
            if (v23)
            {

              *(v8 + i) = 0;
            }
          }

          do
          {
            v24 = *(v8 + i);
            if (v24)
            {

              *(v8 + i) = 0;
            }

            i -= 8;
          }

          while (i != 80);
          for (j = 56; j != 8; j -= 24)
          {
            re::AssetHandle::~AssetHandle((v8 + j));
          }

          re::DynamicString::deinit(v8);
          v8 += 136;
          v11 += 17;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_27;
    }
  }

  return result;
}

void re::DynamicArray<re::ecs2::SpecifyLaneCommand>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 136 * a2 + 112;
    v9 = 136 * a2 + 96;
    v10 = 136 * a2 + 56;
    v22 = a2;
    v11 = a2;
    do
    {
      v12 = 0;
      v13 = *(v3 + 4);
      v14 = v13 + v8;
      do
      {
        v15 = *(v14 + v12);
        if (v15)
        {

          *(v14 + v12) = 0;
        }

        v12 -= 8;
      }

      while (v12 != -16);
      v16 = 0;
      v17 = v13 + v9;
      do
      {
        v18 = *(v17 + v16);
        if (v18)
        {

          *(v17 + v16) = 0;
        }

        v16 -= 8;
      }

      while (v16 != -16);
      v19 = (v13 + v10);
      v20 = -48;
      do
      {
        re::AssetHandle::~AssetHandle(v19);
        v19 = (v21 - 24);
        v20 += 24;
      }

      while (v20);
      re::DynamicString::deinit((v13 + 136 * v11++));
      v8 += 136;
      v9 += 136;
      v10 += 136;
    }

    while (v11 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v22 = a2;
    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 136 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *(v7 + 128) = 0;
        *(v7 + 96) = 0u;
        *(v7 + 112) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 80) = -1;
        *(v7 + 88) = 0u;
        *(v7 + 104) = 0u;
        v6 += 136;
        *(v7 + 116) = 0u;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = v22;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 136 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 136;
        v11 -= 136;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 136 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 136 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  bzero(v18, 0x3C0uLL);
  v19 = xmmword_1E30474D0;
  v20 = -1;
  v21 = 1792;
  v22 = -1;
  v23 = 0;
  v33 = xmmword_1E308B878;
  v24 = 0u;
  v25 = 0;
  v32 = 0;
  v26 = 0u;
  v27 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0;
  v31 = 0;
  v34 = unk_1E308B888;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 272, 8);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 14) = 0u;
  *(v10 + 15) = 0u;
  *(v10 + 16) = 0u;
  v39 = v10;
  v40 = -1;
  v41 = 1;
  v42 = 0;
  v43 = re::globalAllocators(v10)[2];
  v44 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  re::Pose<float>::Pose(v17, 0, 0, &v14);
  v45 = v17[0];
  v46 = v17[1];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  re::Pose<float>::Pose(v13, 0, 0, &v14);
  v47 = v13[0];
  v48 = v13[1];
  v49 = 0;
  v50 = xmmword_1E308B7C0;
  v51 = 0xBDCCCCCD3DCCCCCDLL;
  v52 = 0;
  v53 = xmmword_1E30476A0;
  v54 = 1;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = xmmword_1E308B7C0;
  v61 = 0xBDCCCCCD3DCCCCCDLL;
  v62 = 0;
  v63 = xmmword_1E30476A0;
  v64 = 1;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0u;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(a4, v18);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v18);
  v11 = (*(a4 + 4) + 960 * *(a4 + 2) - 960);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 960 * a3;
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

  return *(a2 + 32) + 960 * a3;
}

void *re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x3C0uLL))
        {
          v2 = 960 * a2;
          result = (*(*result + 32))(result, 960 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 960, a2);
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
        v10 = 960 * v9;
        v11 = v7;
        do
        {
          re::ecs2::CameraViewDescriptor::CameraViewDescriptor(v11, v8);
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v8);
          v8 += 120;
          v11 += 120;
          v10 -= 960;
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

uint64_t *re::ecs2::CameraViewDescriptor::CameraViewDescriptor(uint64_t *a1, uint64_t *a2)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[1] = a2[1];
  a2[1] = 0;
  v5 = *a1;
  *a1 = 0;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[2];
  a1[2] = a2[2];
  a2[2] = v6;
  v7 = *(a2 + 3);
  v8 = *(a2 + 5);
  v9 = *(a2 + 7);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 7) = v9;
  *(a1 + 5) = v8;
  *(a1 + 3) = v7;
  a1[14] = 0;
  a1[11] = 0;
  a1[12] = 0;
  a1[10] = 0;
  *(a1 + 26) = 0;
  v10 = a2[11];
  a1[10] = a2[10];
  a1[11] = v10;
  a2[10] = 0;
  a2[11] = 0;
  v11 = a1[12];
  a1[12] = a2[12];
  a2[12] = v11;
  v12 = a1[14];
  a1[14] = a2[14];
  a2[14] = v12;
  ++*(a2 + 26);
  ++*(a1 + 26);
  do
  {
    v13 = &a1[v4];
    v14 = &a2[v4];
    v13[19] = 0;
    v13[16] = 0;
    v13[17] = 0;
    v13[15] = 0;
    *(v13 + 36) = 0;
    v15 = a2[v4 + 16];
    v13[15] = a2[v4 + 15];
    v13[16] = v15;
    v14[15] = 0;
    v14[16] = 0;
    v16 = a1[v4 + 17];
    v13[17] = a2[v4 + 17];
    v14[17] = v16;
    v17 = a1[v4 + 19];
    v13[19] = a2[v4 + 19];
    v14[19] = v17;
    *(v14 + 36) = LODWORD(a2[v4 + 18]) + 1;
    *(v13 + 36) = LODWORD(a1[v4 + 18]) + 1;
    v4 += 5;
  }

  while (v4 != 10);
  v18 = *(a2 + 25);
  v19 = *(a2 + 27);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 27) = v19;
  *(a1 + 25) = v18;
  a1[30] = a2[30];
  a2[30] = 0;
  a1[31] = a2[31];
  a2[31] = 0;
  a1[32] = a2[32];
  a2[32] = 0;
  *(a1 + 33) = *(a2 + 33);
  a2[33] = 0;
  a2[34] = 0;
  *(a1 + 35) = *(a2 + 35);
  v20 = *(a2 + 37);
  a2[35] = 0;
  a2[36] = 0;
  a2[37] = 0;
  *(a1 + 37) = v20;
  a2[38] = 0;
  v21 = a2[39];
  *(a1 + 319) = *(a2 + 319);
  a1[39] = v21;
  a1[44] = a2[44];
  a1[45] = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>((a1 + 41), (a2 + 41));
  for (i = 46; i != 54; i += 4)
  {
    v23 = &a1[i];
    v24 = *&a2[i + 2];
    *v23 = *&a2[i];
    *(v23 + 1) = v24;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    v27 = v25;
    v28 = 30 * v26;
    v29 = &a1[v28 + 54];
    v30 = &a2[v28 + 54];
    *v29 = *v30;
    v31 = *(v30 + 1);
    v32 = *(v30 + 2);
    v33 = *(v30 + 3);
    *(v29 + 32) = *(v30 + 32);
    *(v29 + 2) = v32;
    *(v29 + 3) = v33;
    *(v29 + 1) = v31;
    v34 = *(v30 + 80);
    *(v29 + 80) = v34;
    if (v34 == 1)
    {
      v35 = *(v30 + 6);
      v36 = *(v30 + 7);
      v37 = *(v30 + 9);
      *(v29 + 8) = *(v30 + 8);
      *(v29 + 9) = v37;
      *(v29 + 6) = v35;
      *(v29 + 7) = v36;
    }

    v38 = *(v30 + 160);
    *(v29 + 160) = v38;
    if (v38 == 1)
    {
      v39 = *(v30 + 11);
      v40 = *(v30 + 12);
      v41 = *(v30 + 14);
      *(v29 + 13) = *(v30 + 13);
      *(v29 + 14) = v41;
      *(v29 + 11) = v39;
      *(v29 + 12) = v40;
    }

    v25 = 1;
    v26 = 1;
  }

  while ((v27 & 1) == 0);
  a1[118] = 0;
  a1[114] = 0;
  a1[116] = 0;
  a1[115] = 0;
  *(a1 + 234) = 0;
  a1[114] = a2[114];
  a2[114] = 0;
  a1[115] = a2[115];
  a2[115] = 0;
  v42 = a1[116];
  a1[116] = a2[116];
  a2[116] = v42;
  v43 = a1[118];
  a1[118] = a2[118];
  a2[118] = v43;
  ++*(a2 + 234);
  ++*(a1 + 234);
  return a1;
}

void re::DynamicArray<re::ecs2::CameraViewDescriptor>::resize(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v13 = 960 * a2;
    v14 = a2;
    do
    {
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor((*(a1 + 32) + v13));
      ++v2;
      v13 += 960;
    }

    while (v2 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v14 = v2;
    v5 = v2 - v4;
    if (v2 > v4)
    {
      v6 = 960 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        bzero(v7, 0x3C0uLL);
        *(v7 + 48) = xmmword_1E30474D0;
        *(v7 + 68) = -1;
        *(v7 + 70) = 1792;
        *(v7 + 72) = -1;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0u;
        *(v7 + 104) = 0;
        *(v7 + 200) = 0;
        *(v7 + 112) = 0u;
        *(v7 + 128) = 0u;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0u;
        *(v7 + 168) = 0u;
        *(v7 + 184) = 0;
        *(v7 + 204) = xmmword_1E308B878;
        *(v7 + 220) = unk_1E308B888;
        *(v7 + 272) = 0u;
        *(v7 + 288) = 0u;
        *(v7 + 240) = 0u;
        *(v7 + 256) = 0u;
        v9 = re::globalAllocators(v8);
        v10 = (*(*v9[2] + 32))(v9[2], 272, 8);
        *v10 = 0u;
        *(v10 + 1) = 0u;
        *(v10 + 2) = 0u;
        *(v10 + 3) = 0u;
        *(v10 + 4) = 0u;
        *(v10 + 5) = 0u;
        *(v10 + 6) = 0u;
        *(v10 + 7) = 0u;
        *(v10 + 8) = 0u;
        *(v10 + 9) = 0u;
        *(v10 + 10) = 0u;
        *(v10 + 11) = 0u;
        *(v10 + 12) = 0u;
        *(v10 + 13) = 0u;
        *(v10 + 14) = 0u;
        *(v10 + 15) = 0u;
        *(v10 + 16) = 0u;
        *(v7 + 304) = v10;
        *(v7 + 312) = -1;
        *(v7 + 320) = 1;
        *(v7 + 322) = 0;
        *(v7 + 352) = re::globalAllocators(v10)[2];
        *(v7 + 360) = 0;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        re::Pose<float>::Pose(v19, 0, 0, &v16);
        v11 = v19[1];
        *(v7 + 368) = v19[0];
        *(v7 + 384) = v11;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        re::Pose<float>::Pose(v15, 0, 0, &v16);
        v12 = v15[1];
        *(v7 + 400) = v15[0];
        *(v7 + 416) = v12;
        *(v7 + 432) = 0;
        *(v7 + 436) = xmmword_1E308B7C0;
        *(v7 + 452) = 0xBDCCCCCD3DCCCCCDLL;
        *(v7 + 460) = 0;
        *(v7 + 464) = xmmword_1E30476A0;
        *(v7 + 480) = 1;
        *(v7 + 488) = 0;
        *(v7 + 496) = 0;
        *(v7 + 512) = 0;
        *(v7 + 592) = 0;
        *(v7 + 672) = 0;
        *(v7 + 676) = xmmword_1E308B7C0;
        *(v7 + 692) = 0xBDCCCCCD3DCCCCCDLL;
        *(v7 + 700) = 0;
        *(v7 + 704) = xmmword_1E30476A0;
        *(v7 + 720) = 1;
        *(v7 + 728) = 0;
        *(v7 + 736) = 0;
        *(v7 + 752) = 0;
        *(v7 + 832) = 0;
        *(v7 + 944) = 0;
        *(v7 + 936) = 0;
        *(v7 + 928) = 0;
        v6 += 960;
        *(v7 + 912) = 0u;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = v14;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 960 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 960;
        v11 -= 960;
      }

      while (v11);
    }
  }
}

re::ecs2::CameraViewDescriptor *re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear(re::ecs2::CameraViewDescriptor *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 960 * v2;
    do
    {
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(result);
      result = (v4 + 960);
      v3 -= 960;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 960 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 960 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::CameraViewDescriptorsComponent>(uint64_t a1)
{
  *(a1 + 368) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
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
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDACD0;
  *(v3 + 28) = 0;
  objc_initWeak(v2, 0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 312) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 364) = 0x7FFFFFFFLL;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs230CameraViewDescriptorsComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs213TintComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

BOOL std::equal[abi:nn200100]<re::ecs2::ScopeLanePair const*,re::ecs2::ScopeLanePair const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = a1;
  while (1)
  {
    result = re::DynamicString::operator==(v5, a3);
    if (!result)
    {
      break;
    }

    v7 = v5 + 32;
    v8 = a3 + 32;
    result = re::DynamicString::operator==(v7, v8);
    if (!result)
    {
      break;
    }

    v5 = v7 + 32;
    a3 = v8 + 32;
    if (v5 == a2)
    {
      return 1;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::CameraViewDescriptor>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

re::ecs2::CameraViewDescriptor *re::ecs2::CameraViewDescriptor::CameraViewDescriptor(re::ecs2::CameraViewDescriptor *this, const re::ecs2::CameraViewDescriptor *a2)
{
  v4 = re::AssetHandle::AssetHandle(this, a2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(v4 + 18) = *(a2 + 18);
  *(v4 + 56) = v7;
  *(v4 + 40) = v6;
  *(v4 + 24) = v5;
  re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(v4 + 80, a2 + 10);
  for (i = 120; i != 200; i += 40)
  {
    re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(this + i, (a2 + i));
  }

  v9 = *(a2 + 200);
  v10 = *(a2 + 216);
  *(this + 58) = *(a2 + 58);
  *(this + 216) = v10;
  *(this + 200) = v9;
  for (j = 240; j != 256; j += 8)
  {
    *(this + j) = *(a2 + j);
  }

  do
  {
    *(this + j) = *(a2 + j);
    j += 8;
  }

  while (j != 272);
  do
  {
    *(this + j) = *(a2 + j);
    j += 8;
  }

  while (j != 288);
  *(this + 36) = *(a2 + 36);
  re::mtl::RenderCommandEncoder::RenderCommandEncoder((this + 296), a2 + 37);
  v12 = *(a2 + 39);
  *(this + 319) = *(a2 + 319);
  *(this + 39) = v12;
  *(this + 44) = *(a2 + 44);
  *(this + 45) = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(this + 328, a2 + 328);
  for (k = 368; k != 432; k += 32)
  {
    v14 = (this + k);
    v15 = *(a2 + k + 16);
    *v14 = *(a2 + k);
    v14[1] = v15;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v18 = v16;
    v19 = 240 * v17;
    v20 = this + v19 + 432;
    v21 = a2 + v19 + 432;
    *v20 = *v21;
    v22 = *(v21 + 1);
    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    *(v20 + 32) = *(v21 + 32);
    *(v20 + 2) = v23;
    *(v20 + 3) = v24;
    *(v20 + 1) = v22;
    v25 = v21[80];
    v20[80] = v25;
    if (v25 == 1)
    {
      v26 = *(v21 + 6);
      v27 = *(v21 + 7);
      v28 = *(v21 + 9);
      *(v20 + 8) = *(v21 + 8);
      *(v20 + 9) = v28;
      *(v20 + 6) = v26;
      *(v20 + 7) = v27;
    }

    v29 = v21[160];
    v20[160] = v29;
    if (v29 == 1)
    {
      v30 = *(v21 + 11);
      v31 = *(v21 + 12);
      v32 = *(v21 + 14);
      *(v20 + 13) = *(v21 + 13);
      *(v20 + 14) = v32;
      *(v20 + 11) = v30;
      *(v20 + 12) = v31;
    }

    v16 = 1;
    v17 = 1;
  }

  while ((v18 & 1) == 0);
  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::DynamicArray(this + 912, a2 + 114);
  return this;
}

uint64_t re::DynamicArray<re::ecs2::SpecifyLaneCommand>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::ecs2::SpecifyLaneCommand>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *>(&v23, *(a2 + 32), (*(a2 + 32) + 136 * *(a1 + 16)), *(a1 + 32));
    v13 = *(a1 + 16);
    if (v13 != v4)
    {
      v14 = *(a2 + 32);
      v15 = v14 + 136 * v4;
      v16 = 17 * v13;
      v17 = v14 + 8 * v16;
      v18 = *(a1 + 32) + 8 * v16;
      do
      {
        re::DynamicString::DynamicString(v18, v17);
        for (i = 32; i != 80; i += 24)
        {
          re::AssetHandle::AssetHandle((v18 + i), (v17 + i));
        }

        *(v18 + 80) = *(v17 + 80);
        for (j = 88; j != 104; j += 8)
        {
          *(v18 + j) = *(v17 + j);
        }

        do
        {
          *(v18 + j) = *(v17 + j);
          j += 8;
        }

        while (j != 120);
        v21 = *(v17 + 120);
        *(v18 + 128) = *(v17 + 128);
        *(v18 + 120) = v21;
        v17 += 136;
        v18 += 136;
      }

      while (v17 != v15);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *>(&v22, *(a2 + 32), (*(a2 + 32) + 136 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32);
      v7 = (v6 + 136 * v5);
      v8 = (v6 + 136 * v4);
      do
      {
        for (k = 112; k != 96; k -= 8)
        {
          v10 = *(v8 + k);
          if (v10)
          {

            *(v8 + k) = 0;
          }
        }

        do
        {
          v11 = *(v8 + k);
          if (v11)
          {

            *(v8 + k) = 0;
          }

          k -= 8;
        }

        while (k != 80);
        for (m = 56; m != 8; m -= 24)
        {
          re::AssetHandle::~AssetHandle((v8 + m));
        }

        re::DynamicString::deinit(v8);
        v8 = (v8 + 136);
      }

      while (v8 != v7);
    }
  }

  *(a1 + 16) = v4;
}

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      for (i = 32; i != 80; i += 24)
      {
        re::AssetHandle::operator=(this + i, (v5 + i));
      }

      *(this + 10) = *(v5 + 10);
      for (j = 88; j != 104; j += 8)
      {
        NS::SharedPtr<MTL::Buffer>::operator=((this + j), (v5 + j));
      }

      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=((this + j), (v5 + j));
        j += 8;
      }

      while (j != 120);
      v9 = *(v5 + 15);
      *(this + 32) = *(v5 + 32);
      *(this + 15) = v9;
      v5 = (v5 + 136);
      this = (this + 136);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x3F0uLL))
        {
          v2 = 1008 * a2;
          result = (*(*result + 32))(result, 1008 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1008, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = 0;
        v11 = 1008 * v9;
        do
        {
          v12 = re::ecs2::CameraViewDescriptor::CameraViewDescriptor(&v7[v10 / 8], (v8 + v10));
          v12[123] = *(v8 + v10 + 984);
          v12[124] = 0;
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>((v12 + 120), v8 + v10 + 960);
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v8 + v10 + 960);
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor((v8 + v10));
          v10 += 1008;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::DynamicString,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 24);
            do
            {
              if ((*(v18 - 3) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::DynamicString,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v18[3] % *(a1 + 24), v18[3]);
                *(v19 + 8) = *(v18 - 2);
                *(v19 + 16) = 0u;
                *(v19 + 32) = 0u;
                *(v19 + 40) = v18[2];
                v20 = *v18;
                *(v19 + 16) = *(v18 - 1);
                *(v18 - 1) = 0;
                v21 = v18[1];
                v18[2] = 0;
                v23 = *(v19 + 24);
                v22 = *(v19 + 32);
                *(v19 + 24) = v20;
                *(v19 + 32) = v21;
                *v18 = v23;
                v18[1] = v22;
              }

              v18 += 7;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::DynamicString,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 56 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 56 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 56 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 48) = a3;
  ++*(a1 + 28);
  return v24 + 56 * v5;
}

uint64_t re::introspect<re::ecs2::RenderOptionsService>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::RenderOptionsService>(BOOL)::info = re::ecs2::introspect_RenderOptionsService(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[102];
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 28) < *(*v8 + 28))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 28);
      v90 = *(*v8 + 28);
      v91 = *(v87 + 28);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = v8 + 1;
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = v8 + 2;
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = v8 + 2;
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v141 = *(a2 - 1);
      if (*(v141 + 28) < *(v85 + 28))
      {
        *v86 = v141;
        *(a2 - 1) = v85;
        v142 = *v86;
        v143 = *v84;
        v144 = *(v142 + 28);
        if (v144 < *(v143 + 28))
        {
          v8[1] = v142;
          v8[2] = v143;
          v145 = *v8;
          if (v144 < *(*v8 + 28))
          {
            *v8 = v142;
            v8[1] = v145;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 8;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 28);
            if (v101 < *(v100 + 28))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102) = v100;
                v103 = v102 - 8;
                if (v102 == 8)
                {
                  break;
                }

                v100 = *(v8 + v102 - 16);
                v102 -= 8;
                if (v101 >= *(v100 + 28))
                {
                  v104 = (v8 + v103);
                  goto LABEL_130;
                }
              }

              v104 = v8;
LABEL_130:
              *v104 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v138 = *v7;
          v137 = v7[1];
          v7 = v94;
          v139 = *(v137 + 28);
          if (v139 < *(v138 + 28))
          {
            v140 = v7;
            do
            {
              *v140 = v138;
              v138 = *(v140 - 2);
              --v140;
            }

            while (v139 < *(v138 + 28));
            *v140 = v137;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[v108];
            v110 = *v109;
            if (2 * v107 + 2 < v9 && *(v110 + 28) < *(v109[1] + 28))
            {
              v110 = v109[1];
              ++v109;
              v108 = 2 * v107 + 2;
            }

            result = &v8[v107];
            v111 = *result;
            v112 = *(*result + 28);
            if (*(v110 + 28) >= v112)
            {
              do
              {
                v113 = v109;
                *result = v110;
                if (v105 < v108)
                {
                  break;
                }

                v114 = (2 * v108) | 1;
                v109 = &v8[v114];
                v115 = 2 * v108 + 2;
                v110 = *v109;
                if (v115 < v9 && *(v110 + 28) < *(v109[1] + 28))
                {
                  v110 = v109[1];
                  ++v109;
                  v114 = v115;
                }

                result = v113;
                v108 = v114;
              }

              while (*(v110 + 28) >= v112);
              *v113 = v111;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v116 = 0;
          v117 = *v8;
          v118 = v8;
          do
          {
            v119 = &v118[v116];
            v120 = v119 + 1;
            v121 = v119[1];
            v122 = (2 * v116) | 1;
            v116 = 2 * v116 + 2;
            if (v116 >= v9)
            {
              v116 = v122;
            }

            else
            {
              v125 = v119[2];
              v123 = v119 + 2;
              v124 = v125;
              result = *(v121 + 28);
              if (result >= *(v125 + 28))
              {
                v116 = v122;
              }

              else
              {
                v121 = v124;
                v120 = v123;
              }
            }

            *v118 = v121;
            v118 = v120;
          }

          while (v116 <= ((v9 - 2) >> 1));
          if (v120 == --a2)
          {
            *v120 = v117;
          }

          else
          {
            *v120 = *a2;
            *a2 = v117;
            v126 = (v120 - v8 + 8) >> 3;
            v127 = v126 < 2;
            v128 = v126 - 2;
            if (!v127)
            {
              v129 = v128 >> 1;
              v130 = &v8[v129];
              v131 = *v130;
              v132 = *v120;
              v133 = *(*v120 + 28);
              if (*(*v130 + 28) < v133)
              {
                do
                {
                  v134 = v130;
                  *v120 = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = &v8[v129];
                  v131 = *v130;
                  v120 = v134;
                }

                while (*(*v130 + 28) < v133);
                *v134 = v132;
              }
            }
          }

          v127 = v9-- <= 2;
        }

        while (!v127);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 28);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 28);
      v17 = *(*v8 + 28);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 28) < *(*v8 + 28))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 28) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 28);
      v29 = *(v27 + 28);
      v30 = *(a2 - 2);
      v31 = *(v30 + 28);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 28) < *(v32 + 28))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 28) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 28);
      v40 = *(v38 + 28);
      v41 = *(a2 - 3);
      v42 = *(v41 + 28);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 28) < *(v43 + 28))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 28) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 28);
      v48 = *(*v25 + 28);
      v49 = *v35;
      v50 = *(*v35 + 28);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 28);
    v21 = *(*v11 + 28);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 28) < *(*v11 + 28))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 28) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 28);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 28) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 28) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 28) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 28) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 28) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 28);
      if (*(*(v8 - 1) + 28) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 28))
      {
        v68 = (v8 + 1);
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v68 += 8;
        }

        while (v53 >= *(*v8 + 28));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 28));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 28));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 28));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 28));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 28);
  v81 = *(*v8 + 28);
  v82 = *(a2 - 1);
  v83 = *(v82 + 28);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v136 = *v8;
      v135 = v8[1];
      if (*(v135 + 28) < *(*v8 + 28))
      {
        *v8 = v135;
        v8[1] = v136;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v146 = *(a2 - 1);
      if (*(v146 + 28) >= v81)
      {
        return result;
      }

      v8[1] = v146;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}