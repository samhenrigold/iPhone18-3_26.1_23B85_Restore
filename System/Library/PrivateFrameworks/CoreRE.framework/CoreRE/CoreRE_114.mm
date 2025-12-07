uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *a5 = 0;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

uint64_t re::DebugSettingsManager::getWithErrorCode<float>(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*(a1 + 112) != 1)
  {
    return 3;
  }

  if (!a3)
  {
    return 4;
  }

  std::mutex::lock((a1 + 48));
  v6 = re::DebugSettingsManager::contains<float>(a1, a2);
  if (!v6)
  {
    v7 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v13);
    v8 = *(a1 + 16) + 40 * v14;
    v10 = *(v8 + 24);
    v9 = v8 + 24;
    if (v10 == 1)
    {
      v11 = *(v9 + 8);
      if (v11 == 1)
      {
        *a3 = *(v9 + 4);
      }

      v6 = v11 != 1;
    }

    else
    {
      v6 = 5;
    }
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

uint64_t re::DebugSettingsManager::contains<float>(uint64_t a1, void *a2)
{
  if (*(a1 + 112) != 1)
  {
    return 3;
  }

  v12 = v2;
  v13 = v3;
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v10);
  if (v11 == 0x7FFFFFFF)
  {
    return 1;
  }

  v7 = *(a1 + 16) + 40 * v11;
  v9 = *(v7 + 24);
  v8 = v7 + 24;
  if (v9 == 1 && *(v8 + 8) != 1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void *re::ecs2::allocInfo_EmbeddedStereoContentComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_239, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_239))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7688, "EmbeddedStereoContentComponent");
    __cxa_guard_release(&_MergedGlobals_239);
  }

  return &unk_1EE1A7688;
}

void re::ecs2::initInfo_EmbeddedStereoContentComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v50[0] = 0xDF65E95A430EB7CCLL;
  v50[1] = "EmbeddedStereoContentComponent";
  if (v50[0])
  {
    if (v50[0])
    {
    }
  }

  *(this + 2) = v51;
  if ((atomic_load_explicit(&qword_1EE1A7638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7638))
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
    qword_1EE1A7640 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::ecs2::introspect_WorldRootToken(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "worldRootToken";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A7648 = v22;
    v23 = re::introspectionAllocator();
    v24 = re::introspect_PoseF(1);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "fixedPerspectivePose";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x3000000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1A7650 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_BOOL(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "useFixedPerspective";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x6400000003;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1A7658 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_BOOL(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "allowsCrossing";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x6600000004;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1A7660 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "isStereo";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x6700000005;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1A7668 = v37;
    v38 = re::introspectionAllocator();
    v39 = re::introspect_Vector3F(1);
    v40 = (*(*v38 + 32))(v38, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "clearColor";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x5000000006;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1A7670 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::introspect_BOOL(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "enableClipping";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x6500000007;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1A7678 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::introspect_float(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "lightingBlendDistance";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x6000000008;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1A7680 = v48;
    __cxa_guard_release(&qword_1EE1A7638);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1A7640;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::EmbeddedStereoContentComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::EmbeddedStereoContentComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::EmbeddedStereoContentComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::EmbeddedStereoContentComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230EmbeddedStereoContentComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v49 = v51;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::EmbeddedStereoContentComponent>(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CDB678;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1065353216;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0x3F80000000000000;
  *(v2 + 80) = 0u;
  if (re::PortalUserDefaults::portalLightingBlendDistance(void)::onceToken != -1)
  {
    dispatch_once(&re::PortalUserDefaults::portalLightingBlendDistance(void)::onceToken, &__block_literal_global_33);
  }

  *(a1 + 96) = re::PortalUserDefaults::portalLightingBlendDistance(void)::portalLightingBlendDistance;
  *(a1 + 100) = 0x1000000;
  *(a1 + 104) = 0;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs230EmbeddedStereoContentComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::buildCurvedCollisionShapeAssetHandle(re::ecs2 *this, re::AssetManager *a2, float a3, float a4, float a5, float a6)
{
  v71 = *MEMORY[0x1E69E9840];
  v50 = 65548;
  v51 = 4 * (a4 > 0.0);
  v54 = a4;
  v52 = a5;
  v53 = a6;
  v55 = 0;
  v56 = 4;
  re::GeomMesh::GeomMesh(v47, 0);
  re::buildPlane(v47, &v50);
  re::internal::wrapGeometryAroundCylinder(v47, v47, 1, a3);
  inited = re::GeomMesh::accessVertexPositions(v47);
  v10 = inited;
  LODWORD(v12) = v11;
  v46 = 0;
  v43[1] = 0;
  v44 = 0;
  v43[0] = 0;
  v13 = (3 * v11);
  v45 = 0;
  if (v13)
  {
    inited = re::DynamicArray<int>::setCapacity(v43, v13);
  }

  v12 = v12;
  if (v12)
  {
    do
    {
      re::DynamicArray<float>::add(v43, v10);
      re::DynamicArray<float>::add(v43, v10 + 1);
      re::DynamicArray<float>::add(v43, v10 + 2);
      v10 += 4;
      --v12;
    }

    while (v12);
  }

  v42 = 0;
  v39[1] = 0;
  v40 = 0;
  v39[0] = 0;
  v41 = 0;
  v14 = v48;
  if (3 * v48)
  {
    inited = re::DynamicArray<unsigned short>::setCapacity(v39, (3 * v48));
    v14 = v48;
  }

  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v6 = 3;
LABEL_9:
    *&v58[32] = 0;
    memset(v58, 0, 28);
    if (v14 > v16)
    {
      v17 = v49;
      if (*(v49 + 16 * v16 + 12) == -1)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      re::DynamicArray<float>::resize(v58, v14);
      v18 = 0;
      v19 = *&v58[16];
      v20 = *&v58[32];
      do
      {
        if (v19 == v18)
        {
          v57 = 0;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v66 = 0u;
          v28 = MEMORY[0x1E69E9C10];
          v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v59 = 136315906;
          *&v59[4] = "operator[]";
          v60 = 1024;
          if (v29)
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          v61 = 789;
          v62 = 2048;
          v63 = v19;
          v64 = 2048;
          v65 = v19;
          _os_log_send_and_compose_impl(v30, &v57, &v66, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v38, v39[0]);
          _os_crash_msg();
          __break(1u);
          goto LABEL_37;
        }

        *(v20 + 4 * v18) = *(v15 + 4 * v18 + v17);
        ++v18;
      }

      while (v14 != v18);
      v19 = 0;
      while (1)
      {
        v17 = *&v58[16];
        if (*&v58[16] <= v19)
        {
          break;
        }

        LOWORD(v66) = *(*&v58[32] + 4 * v19);
        re::DynamicArray<unsigned short>::add(v39, &v66);
        if (v14 == ++v19)
        {
          inited = *v58;
          if (*v58 && *&v58[32])
          {
            inited = (*(**v58 + 40))();
          }

          ++v16;
          v14 = v48;
          v15 += 2;
          if (v16 < v48)
          {
            goto LABEL_9;
          }

          goto LABEL_23;
        }
      }

LABEL_37:
      v57 = 0;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v59 = 136315906;
      *&v59[4] = "operator[]";
      v60 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v61 = 789;
      v62 = 2048;
      v63 = v19;
      v64 = 2048;
      v65 = v17;
      _os_log_send_and_compose_impl(v33, &v57, &v66, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v38, v39[0]);
      _os_crash_msg();
      __break(1u);
    }

    v57 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v59 = 136315906;
    *&v59[4] = "operator[]";
    v60 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v61 = 797;
    v62 = 2048;
    v63 = v16;
    v64 = 2048;
    v65 = v14;
    _os_log_send_and_compose_impl(v35, &v57, &v66, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v38, v39[0]);
    inited = _os_crash_msg();
    __break(1u);
  }

  else
  {
LABEL_23:
    v15 = &unk_1EE1C8000;
    {
      goto LABEL_24;
    }
  }

  inited = re::initCollision(inited);
  v21 = v15[252];
LABEL_24:
  v22 = re::globalAllocators(inited);
  if (!v44)
  {
    *v59 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *&v58[4] = "operator[]";
    *&v58[12] = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    *&v58[14] = 789;
    *&v58[18] = 2048;
    *&v58[20] = 0;
    *&v58[28] = 2048;
    *&v58[30] = 0;
    _os_log_send_and_compose_impl(v37, v59, &v66, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v38, v39[0]);
    v24 = _os_crash_msg();
    __break(1u);
    goto LABEL_50;
  }

  v6 = 1;
  LOBYTE(v38) = 1;
  v23 = (*(*v21 + 152))(v21, v22[2], v46, v44 / 3, 12, v42, v40, 1, 0, 0, v38);
  re::AssetHelper::makeIndexedTriangleMeshAsset(a2, v23, 0);
  v24 = re::AssetHandle::blockUntilLoaded<re::IndexedTriangleMeshAsset>(v59);
  v21 = v24;
  v25 = v15[252];
  if (!v25)
  {
LABEL_50:
    v24 = re::initCollision(v24);
    v25 = v15[252];
  }

  v26 = re::globalAllocators(v24);
  v27 = (*(*v25 + 144))(v25, v26[2], *(v21 + 1));
  LODWORD(v68) = 0;
  v66 = 0u;
  v67 = 0u;
  *(&v68 + 4) = 0x7FFFFFFFLL;
  memset(v58, 0, 36);
  *&v58[36] = 0x7FFFFFFFLL;
  v57 = *(v21 + 1);
  re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::addOrReplace(v58, &v57, v59);
  re::AssetHelper::makeCollisionShapeAsset(a2, v27, &v66, v58, 0);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v58);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v66);
  re::AssetHandle::~AssetHandle(v59);
  if (v39[0] && v42)
  {
    (*(*v39[0] + 40))();
  }

  if (v43[0] && v46)
  {
    (*(*v43[0] + 40))();
  }

  re::GeomMesh::~GeomMesh(v47);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::IndexedTriangleMeshAsset>(re::IndexedTriangleMeshAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::IndexedTriangleMeshAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

re::AssetHandle *re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::addOrReplace(uint64_t a1, void *a2, const re::AssetHandle *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::allocEntry(a1, v11, v10);
    *(v8 + 8) = *a2;
    result = re::AssetHandle::AssetHandle((v8 + 16), a3);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::AssetHandle::operator=(*(a1 + 16) + 48 * v7 + 16, a3);
  }

  return result;
}

void re::ecs2::VideoPlayerComponentHelper::impl::~impl(id *this)
{
  re::ecs2::VideoPlayerComponentHelper::impl::removeVideoEntityHierarchy(this);
  re::AssetHandle::~AssetHandle((this + 1833));
  objc_destroyWeak(this + 1832);
  this[1832] = 0;
  objc_destroyWeak(this + 1831);
  this[1831] = 0;
  objc_destroyWeak(this + 1830);
  this[1830] = 0;
  media::OpacityAnimationEngine::~OpacityAnimationEngine((this + 1566));
  media::MediaScreenAnimationEngine::~MediaScreenAnimationEngine((this + 6));
}

void re::ecs2::VideoPlayerComponentHelper::impl::removeVideoEntityHierarchy(id *this)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this + 1830);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = *(WeakRetained + 3);
    if (v4 && (*(v4 + 304) & 0x80) == 0)
    {
      v5 = re::ecs2::EntityComponentCollection::get((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v6 = v5;
        LOBYTE(v14[0]) = 0;
        re::ecs2::VideoPlayerStatusComponent::setMediaInfo(v5, v14);
        LOBYTE(v14[0]) = 0;
        re::ecs2::VideoPlayerStatusComponent::setContentInfo(v6, v14);
      }

      else
      {
        v13 = *re::videoLogObjects(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14[0] = 67109120;
          v14[1] = 5808;
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoPlayerStatusComp is nullptr", v14, 8u);
        }
      }
    }
  }

  v7 = objc_loadWeakRetained(this + 1830);
  if (v7)
  {
    v8 = v7;
    v9 = (v7 - 8);
    re::ecs2::Entity::setSelfEnabled((v7 - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v9);
    objc_destroyWeak(this + 1830);
    this[1830] = 0;
  }

  v10 = objc_loadWeakRetained(this + 1831);
  if (v10)
  {
    v11 = v10;
    v12 = (v10 - 8);
    re::ecs2::Entity::setSelfEnabled((v10 - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v12);
    objc_destroyWeak(this + 1831);
    this[1831] = 0;
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::setEntityVisibility(re::ecs2::VideoPlayerComponentHelper::impl *this, BOOL a2, re::ecs2::Entity *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v4 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 874;
    v5 = "VideoPlayerComponentHelper line: %d, entity is nullptr";
    goto LABEL_11;
  }

  v3 = *(this + 29);
  if (!v3)
  {
    v4 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 876;
    v5 = "VideoPlayerComponentHelper line: %d, renderOptionsComponent is nullptr";
LABEL_11:
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 8u);
    return;
  }

  *(v3 + 25) = 0;

  re::ecs2::Component::markDirty(v3);
}

void re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(uint64_t a1, unsigned __int8 *a2, __int128 *a3, re::AssetHandle *a4, re::AssetManager *a5, uint64_t a6, uint64_t a7)
{
  v253 = *MEMORY[0x1E69E9840];
  if (!a3 || !a5)
  {
    return;
  }

  v11 = a3;
  v13 = a1;
  v14 = (a1 + 8);
  if ((a1 + 8) == a2)
  {
    if (*(a1 + 10) & 1) != 0 || (*(a1 + 11))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = *(a1 + 8);
    v16 = *a2;
    v17 = *(a1 + 9);
    if (__PAIR64__(v17, v15) == __PAIR64__(a2[1], v16))
    {
      *(a1 + 10) = 0;
      goto LABEL_13;
    }

    *(a1 + 10) = (v15 ^ 1) & v16;
    v18 = *a2;
    v19 = *a2 ^ 1;
    *(a1 + 11) = v15 & v19;
    *(a1 + 12) = a2[1] & ~v17 & 1;
    v20 = a2[1];
    *(a1 + 13) = v17 & ~v20 & 1;
    *(a1 + 8) = v18;
    *(a1 + 9) = v20;
    if (v15)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

    if (v21)
    {
LABEL_15:
      v22 = *re::videoLogObjects(a1);
      a1 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v23 = *v14;
        v24 = a2[1];
        buf[0].i32[0] = 67109376;
        buf[0].i32[1] = v23;
        buf[0].i16[4] = 1024;
        *(&buf[0].i32[2] + 2) = v24;
        _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Setting viewport info in VideoPlayerComponentHelper - mono viewport enabled(%d), stereo viewport enabled(%d)", buf, 0xEu);
      }

      goto LABEL_17;
    }
  }

LABEL_13:
  if ((*(a1 + 12) & 1) != 0 || *(a1 + 13) == 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  v25 = *v14;
  if ((v25 & 1) == 0 && v13[9] != 1)
  {
    return;
  }

  hasVideoEntityHierarchy = re::ecs2::VideoPlayerComponentHelper::impl::hasVideoEntityHierarchy(a1, v11);
  if (hasVideoEntityHierarchy)
  {
    v27 = *(v11 + 43);
    if (v27)
    {
      v28 = *(v11 + 45);
      v29 = 8 * v27;
      v30 = 8 * v27;
      v31 = v28;
      while (1)
      {
        v32 = *v31;
        if ((*(*v31 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
        {
          v33 = *(v32 + 296);
          if (v33 == "__InternalVPC-Screen__" || !strcmp(v33, "__InternalVPC-Screen__"))
          {
            break;
          }
        }

        ++v31;
        v30 -= 8;
        if (!v30)
        {
          v32 = 0;
          break;
        }
      }

      while (1)
      {
        v34 = *v28;
        if ((*(*v28 + 288) ^ 0x931CC76C0DD179BALL) <= 1)
        {
          v35 = *(v34 + 37);
          if (v35 == "__InternalVPC-ScreenGlowEntity__" || !strcmp(v35, "__InternalVPC-ScreenGlowEntity__"))
          {
            break;
          }
        }

        ++v28;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
      v32 = 0;
LABEL_55:
      v34 = 0;
    }

    if (v25)
    {
      *&v232.var0 = 0xD0AE8347A834160;
      v232.var1 = "__InternalVPC-CyclopEye__";
      v49 = re::ecs2::Entity::findInHierarchyByName(v11, &v232);
      v50 = v49;
      if (*&v232.var0)
      {
        if (*&v232.var0)
        {
        }
      }

      *&v232.var0 = 0;
      v232.var1 = &str_67;
    }

    else
    {
      v50 = 0;
    }

    if (v13[9] == 1)
    {
      *&v231.var0 = 0x98636CD79C3E2C92;
      v231.var1 = "__InternalVPC-LeftEye__";
      v51 = re::ecs2::Entity::findInHierarchyByName(v11, &v231);
      v52 = v51;
      if (*&v231.var0)
      {
        if (*&v231.var0)
        {
        }
      }

      *&v231.var0 = 0;
      v231.var1 = &str_67;
      *&v230.var0 = 0x740B54E87609516CLL;
      v230.var1 = "__InternalVPC-RightEye__";
      v53 = re::ecs2::Entity::findInHierarchyByName(v11, &v230);
      v54 = v53;
      if (*&v230.var0)
      {
        if (*&v230.var0)
        {
        }
      }

      *&v230.var0 = 0;
      v230.var1 = &str_67;
    }

    else
    {
      v54 = 0;
      v52 = 0;
    }

    *&v229.var0 = 0x74088E8F787C2E0ELL;
    v229.var1 = "__InternalVPC-DRMEnity__";
    v55 = re::ecs2::Entity::findInHierarchyByName(v11, &v229);
    v224 = v55;
    if (*&v229.var0)
    {
      if (*&v229.var0)
      {
      }
    }

    *&v229.var0 = 0;
    v229.var1 = &str_67;
    v56 = *(v11 + 43);
    if (v56)
    {
      v226 = v50;
      v57 = v52;
      v58 = *(v11 + 45);
      v59 = 8 * v56;
      while (1)
      {
        v60 = *v58;
        if ((*(*v58 + 288) ^ 0xB71EB2016BE7B4AuLL) <= 1)
        {
          v55 = *(v60 + 296);
          if (v55 == "__InternalVPC-PortalWorld__")
          {
            break;
          }

          v55 = strcmp(v55, "__InternalVPC-PortalWorld__");
          if (!v55)
          {
            break;
          }
        }

        ++v58;
        v59 -= 8;
        if (!v59)
        {
          v60 = 0;
          break;
        }
      }

      v52 = v57;
      v50 = v226;
      if (!v32)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v60 = 0;
      if (!v32)
      {
LABEL_82:
        v61 = *re::videoLogObjects(v55);
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        buf[0].i16[0] = 0;
        v62 = "[VideoPlayerComponentHelper]->Update :: One of the Required Entites is a nullptr";
LABEL_167:
        v129 = v61;
        v130 = 2;
        goto LABEL_168;
      }
    }

LABEL_144:
    if (!re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
    {
      v61 = *re::videoLogObjects(0);
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      buf[0].i16[0] = 0;
      v62 = "[VideoPlayerComponentHelper]->Update :: VideoPlayerStatusComponent is a nullptr";
      goto LABEL_167;
    }

    v117 = v11;
    v118 = re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v118)
    {
      v204 = *re::videoLogObjects(0);
      if (!os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      buf[0].i64[0] = 0x62204000100;
      v62 = "VideoPlayerComponentHelper line: %d, videoPlayerComp is nullptr";
      v129 = v204;
      v130 = 8;
LABEL_168:
      _os_log_error_impl(&dword_1E1C61000, v129, OS_LOG_TYPE_ERROR, v62, buf, v130);
      return;
    }

    v13[4] = *(v118 + 184);
    if (*v13 != 1)
    {
LABEL_287:
      v201 = re::ecs2::EntityComponentCollection::get((v117 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v13[7] != 1 && v13[2] == 1)
      {
        if (v201)
        {
          buf[0].i8[0] = 1;
          re::ecs2::VideoPlayerStatusComponent::setContentInfo(v201, buf);
          v13[7] = v13[2];
        }

        else
        {
          v202 = re::VideoDefaults::logEnabled(0);
          if (v202)
          {
            v213 = *re::videoLogObjects(v202);
            if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].i16[0] = 0;
              _os_log_impl(&dword_1E1C61000, v213, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper::impl::update] videoPlayerStatusComp is a null ptr", buf, 2u);
            }
          }
        }
      }

      return;
    }

    *v13 = 0;
    v13[14] = *(v118 + 96);
    v119 = *re::videoLogObjects(v118);
    v120 = os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT);
    if (v120)
    {
      v121 = v13[2];
      if (v13[2] || (v122 = v13[3], v122 != 1))
      {
        v122 = v13[2];
      }

      buf[0].i32[0] = 67109376;
      buf[0].i32[1] = v121;
      buf[0].i16[4] = 1024;
      *(&buf[0].i32[2] + 2) = v122;
      _os_log_impl(&dword_1E1C61000, v119, OS_LOG_TYPE_DEFAULT, "Changing VideoEntityHierarchyState: content type - %hhu, effective content type - %hhu", buf, 0xEu);
    }

    v123 = *(v32 + 32);
    if (!v123 || (*(v123 + 304) & 0x80) != 0)
    {
      v124 = *re::videoLogObjects(v120);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        buf[0].i16[0] = 0;
        _os_log_error_impl(&dword_1E1C61000, v124, OS_LOG_TYPE_ERROR, "[VideoPlayerComponentHelper]->changeVideoEntityHierarchyState :: VideoPlayerEntity is a nullptr", buf, 2u);
      }
    }

    v125 = re::ecs2::EntityComponentCollection::get((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v13[2] != 1 && (v13[2] || v13[3] != 1))
    {
      re::ecs2::Entity::setSelfEnabled(v32, 0);
      re::ecs2::Entity::setSelfEnabled(v34, 0);
      if (v50)
      {
        re::ecs2::Entity::setSelfEnabled(v50, 0);
      }

      v132 = v224;
      if (v52)
      {
        re::ecs2::Entity::setSelfEnabled(v52, 0);
      }

      if (v54)
      {
        re::ecs2::Entity::setSelfEnabled(v54, 0);
      }

      if (v60)
      {
        re::ecs2::Entity::setSelfEnabled(v60, 0);
      }

      if (v224)
      {
        if (re::ecs2::EntityComponentCollection::add((v224 + 12), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
        {
          re::ecs2::EntityComponentCollection::remove((v224 + 12), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        re::ecs2::Entity::setSelfEnabled(v224, 0);
      }

      v133 = *re::videoLogObjects(v131);
      v134 = os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT);
      if (v134)
      {
        buf[0].i16[0] = 0;
        _os_log_impl(&dword_1E1C61000, v133, OS_LOG_TYPE_DEFAULT, "Invalid media type set for VideoEntity", buf, 2u);
      }

      goto LABEL_270;
    }

    re::ecs2::Entity::setSelfEnabled(v32, 1);
    if (!v125 || *(v125 + 25) != 1)
    {
LABEL_253:
      if (v50)
      {
        re::ecs2::Entity::setSelfEnabled(v50, 0);
      }

      v132 = v224;
      if (v52)
      {
        re::ecs2::Entity::setSelfEnabled(v52, 0);
      }

      if (v54)
      {
        re::ecs2::Entity::setSelfEnabled(v54, 0);
      }

      if (v60)
      {
        re::ecs2::Entity::setSelfEnabled(v60, 0);
      }

      if (v224)
      {
        if (re::ecs2::EntityComponentCollection::add((v224 + 12), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
        {
          re::ecs2::EntityComponentCollection::remove((v224 + 12), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        re::ecs2::Entity::setSelfEnabled(v224, 0);
      }

      v186 = v13[14];
      v187 = re::VideoDefaults::logEnabled(v126);
      if (v186 == 1)
      {
        if (v187)
        {
          v214 = *re::videoLogObjects(v187);
          if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].i16[0] = 0;
            _os_log_impl(&dword_1E1C61000, v214, OS_LOG_TYPE_DEFAULT, "ImageBasedReflections are on", buf, 2u);
          }
        }

        v134 = re::ecs2::EntityComponentCollection::getOrAdd((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        if (v187)
        {
          v215 = *re::videoLogObjects(v187);
          if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].i16[0] = 0;
            _os_log_impl(&dword_1E1C61000, v215, OS_LOG_TYPE_DEFAULT, "ImageBasedReflections are off", buf, 2u);
          }
        }

        re::ecs2::EntityComponentCollection::remove((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

LABEL_270:
      v188 = *re::videoLogObjects(v134);
      v189 = os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT);
      if (v189)
      {
        v190 = *(v32 + 304) & 1;
        buf[0].i32[0] = 67109120;
        buf[0].i32[1] = v190;
        _os_log_impl(&dword_1E1C61000, v188, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state screenEntity: %d", buf, 8u);
      }

      if (v50)
      {
        v191 = *re::videoLogObjects(v189);
        v189 = os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT);
        if (v189)
        {
          v192 = *(v50 + 76) & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v192;
          _os_log_impl(&dword_1E1C61000, v191, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state cyclopEyeEntity: %d", buf, 8u);
        }
      }

      if (v52)
      {
        v193 = *re::videoLogObjects(v189);
        v189 = os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT);
        if (v189)
        {
          v194 = *(v52 + 76) & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v194;
          _os_log_impl(&dword_1E1C61000, v193, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state leftEyeEntity: %d", buf, 8u);
        }
      }

      if (v54)
      {
        v195 = *re::videoLogObjects(v189);
        v189 = os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT);
        if (v189)
        {
          v196 = *(v54 + 76) & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v196;
          _os_log_impl(&dword_1E1C61000, v195, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state rightEyeEntity: %d", buf, 8u);
        }
      }

      if (v60)
      {
        v197 = *re::videoLogObjects(v189);
        v189 = os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT);
        if (v189)
        {
          v198 = *(v60 + 304) & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v198;
          _os_log_impl(&dword_1E1C61000, v197, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state portalWorldEntity: %d", buf, 8u);
        }
      }

      if (v132)
      {
        v199 = *re::videoLogObjects(v189);
        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
        {
          v200 = v224[76] & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v200;
          _os_log_impl(&dword_1E1C61000, v199, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state drmEntity: %d", buf, 8u);
        }
      }

      goto LABEL_287;
    }

    v127 = re::VideoDefaults::logEnabled(v126);
    if (!v127 || (v216 = *re::videoLogObjects(v127), !os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT)))
    {
LABEL_162:
      v128 = !v13[2] && v13[3] == 1 || v13[2] == 1;
      re::ecs2::Entity::setSelfEnabled(v34, v128);
      goto LABEL_253;
    }

    if (v13[2])
    {
      v217 = v13[2];
      if (v217 != 1)
      {
        goto LABEL_324;
      }
    }

    else if (v13[3] != 1)
    {
      v217 = 0;
LABEL_324:
      v218 = "Disabling";
      goto LABEL_325;
    }

    v218 = "Enabling";
    v217 = 1;
LABEL_325:
    buf[0].i32[0] = 67109378;
    buf[0].i32[1] = v217;
    buf[0].i16[4] = 2080;
    *(&buf[0].i64[1] + 2) = v218;
    _os_log_impl(&dword_1E1C61000, v216, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->changeVideoEntityHierarchyState :: content type - %hhu, %s the Screen Glow Entity", buf, 0x12u);
    v117 = v11;
    goto LABEL_162;
  }

  if (!*(v11 + 32))
  {
    hasVideoEntityHierarchy = re::ecs2::EntityComponentCollection::add((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v228 = a5;
  v221 = a4;
  v36 = re::VideoDefaults::logEnabled(hasVideoEntityHierarchy);
  if (v36)
  {
    v203 = *re::videoLogObjects(v36);
    if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v203, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper::impl::buildVideoEntityHierarchy]: build video entity hierarchy", buf, 2u);
    }
  }

  v37 = 14640;
  WeakRetained = objc_loadWeakRetained(v13 + 1830);
  if (WeakRetained)
  {
    goto LABEL_36;
  }

  v63 = re::ecs2::EntityFactory::instance(0);
  v64 = re::ecs2::EntityFactory::make(&v245, v63, 4uLL);
  v65 = v245;
  if (v245)
  {
    v66 = re::VideoDefaults::logEnabled(v64);
    if (v66)
    {
      v205 = *re::videoLogObjects(v66);
      if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].i16[0] = 0;
        _os_log_impl(&dword_1E1C61000, v205, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createScreenEntity :: Created the Screen Entity and now Configuring it.", buf, 2u);
      }
    }

    buf[0].i64[0] = 0xF4664E2E6A44E25ALL;
    buf[0].i64[1] = "__InternalVPC-Screen__";
    re::StringID::operator=(v65 + 36, buf[0].i64);
    *(v65 + 76) |= 0x1400u;
    re::ecs2::Entity::setSelfEnabled(v65, 0);
    re::ecs2::EntityComponentCollection::remove((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v67 = re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (a7)
    {
      v68 = v67;
      buf[0] = xmmword_1E3047670;
      buf[1] = xmmword_1E3047680;
      v251[0] = xmmword_1E30476A0;
      v251[1] = xmmword_1E30474D0;
      v69 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v246 = 0u;
      *v249 = xmmword_1E30474D0;
      v244 = 0u;
      re::decomposeScaleRotationTranslation<float>(buf, &v246, v249, &v244);
      v70 = *(&v246 + 1);
      v71 = *v249;
      v72 = *&v249[8];
      v73 = v244;
      *(v69 + 32) = v246;
      *(v69 + 40) = v70;
      *(v69 + 48) = v71;
      *(v69 + 56) = v72;
      *(v69 + 64) = v73;
      v74 = *(v65 + 29);
      if (!v74)
      {
        v74 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      v74[25] = 1;
      v74[35] = 1;
      if ((v74[30] & 1) == 0)
      {
        v74[30] = 1;
      }

      v74[31] = 1;
      re::AssetHandle::AssetHandle(&v244, (a7 + 8));
      re::AssetHandle::loadAsync(&v244);
      if (v68)
      {
        v76 = *(v68 + 188);
        v77 = *(v68 + 196);
      }

      else
      {
        v77 = 0;
        v76 = 0;
      }

      DWORD2(v247) = 0;
      LODWORD(v248[0]) = 1065353216;
      *(v248 + 8) = xmmword_1E3063230;
      __asm { FMOV            V1.2S, #1.0 }

      v246 = _D1;
      BYTE12(v247) = 0;
      LODWORD(v247) = v76;
      WORD2(v247) = v77 & 1;
      v177 = re::VideoDefaults::logLevel(v75);
      if (v177 >= 2)
      {
        goto LABEL_309;
      }

      goto LABEL_238;
    }

    v136 = *re::videoLogObjects(v67);
    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
    {
      buf[0].i16[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v136, OS_LOG_TYPE_ERROR, "[VideoPlayerComponentHelper]->addComponentsToScreenEntity :: Since video manager is nil, can't add components to screenEntity", buf, 2u);
    }

    goto LABEL_246;
  }

  while (1)
  {
    v39 = objc_loadWeakRetained(v13 + 1831);
    v40 = v228;
    if (v39)
    {
      goto LABEL_38;
    }

    v78 = re::ecs2::EntityFactory::instance(0);
    v79 = re::ecs2::EntityFactory::make(&v245, v78, 4uLL);
    v80 = v245;
    if (!v245)
    {
      goto LABEL_39;
    }

    v81 = re::VideoDefaults::logEnabled(v79);
    if (v81)
    {
      v206 = *re::videoLogObjects(v81);
      if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].i16[0] = 0;
        _os_log_impl(&dword_1E1C61000, v206, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createScreenGlowEntity :: Created the Screen Glow Entity and now Configuring it.", buf, 2u);
      }
    }

    buf[0].i64[0] = 0x931CC76C0DD179BALL;
    buf[0].i64[1] = "__InternalVPC-ScreenGlowEntity__";
    re::StringID::operator=(v80 + 36, buf[0].i64);
    *(v80 + 76) |= 0x1400u;
    re::ecs2::Entity::setSelfEnabled(v80, 0);
    re::ecs2::EntityComponentCollection::remove((v80 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v246 = xmmword_1E3047670;
    v247 = xmmword_1E3047680;
    v248[0] = xmmword_1E30476A0;
    v248[1] = xmmword_1E30474D0;
    v82 = re::ecs2::EntityComponentCollection::add((v80 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    buf[0] = 0u;
    *v249 = xmmword_1E30474D0;
    v244 = 0u;
    re::decomposeScaleRotationTranslation<float>(&v246, buf, v249, &v244);
    v83 = buf[0].i64[1];
    v84 = *v249;
    v85 = *&v249[8];
    v86 = v244;
    *(v82 + 32) = buf[0].i64[0];
    *(v82 + 40) = v83;
    *(v82 + 48) = v84;
    *(v82 + 56) = v85;
    *(v82 + 64) = v86;
    v87 = *(v80 + 29);
    if (!v87)
    {
      v87 = re::ecs2::EntityComponentCollection::add((v80 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    v87[25] = 1;
    v87[35] = 1;
    if ((v87[30] & 1) == 0)
    {
      v87[30] = 1;
    }

    v87[31] = 1;
    re::AssetManager::assetHandle(v228, "engine:BuiltinRenderGraphResources/SFBSystemShell/rectLightSpill.rematerial", &v244);
    v88 = re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v68 = v88;
    if (v88)
    {
      v90 = *(v88 + 188);
    }

    else
    {
      v90 = 0.0;
    }

    re::ecs2::VideoPlayerComponentHelper::impl::createInvertedPlane(v13, v80, 1.5, 1.5, v90, v89);
    v137 = *(v80 + 24);
    if (!v137)
    {
      v137 = re::ecs2::EntityComponentCollection::add((v80 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    }

    re::DynamicArray<re::AssetHandle>::add((v137 + 56), &v244);
    v37 = v245;
    v138 = re::ecs2::EntityComponentCollection::add((v245 + 48), re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v139 = re::ecs2::EntityComponentCollection::add((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v65 = v139;
    v140 = v68 ? *(v68 + 180) : 0.45;
    v142 = *(v138 + 104);
    v141 = *(v138 + 108);
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(v139, 1uLL);
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v65 + 72, 1uLL);
    if (*(v65 + 6))
    {
      break;
    }

    *&v242 = 0;
    v252 = 0u;
    memset(v251, 0, sizeof(v251));
    memset(buf, 0, sizeof(buf));
    v207 = MEMORY[0x1E69E9C10];
    v208 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v249 = 136315906;
    *&v249[4] = "operator[]";
    *&v249[12] = 1024;
    if (v208)
    {
      v209 = 3;
    }

    else
    {
      v209 = 2;
    }

    *&v249[14] = 789;
    *&v249[18] = 2048;
    *&v249[20] = 0;
    *&v249[28] = 2048;
    *&v249[30] = 0;
    _os_log_send_and_compose_impl(v209, &v242, buf, 80, &dword_1E1C61000, v207, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v249, 38, v221, v222);
    _os_crash_msg();
    __break(1u);
LABEL_305:
    *&v242 = 0;
    v11 = &v242;
    v252 = 0u;
    memset(v251, 0, sizeof(v251));
    memset(buf, 0, sizeof(buf));
    v13 = MEMORY[0x1E69E9C10];
    v210 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v249 = 136315906;
    *&v249[4] = "operator[]";
    *&v249[12] = 1024;
    if (v210)
    {
      v211 = 3;
    }

    else
    {
      v211 = 2;
    }

    *&v249[14] = 789;
    *&v249[18] = 2048;
    *&v249[20] = 0;
    *&v249[28] = 2048;
    *&v249[30] = 0;
    _os_log_send_and_compose_impl(v211, &v242, buf, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v249, 38, v221, v222);
    v177 = _os_crash_msg();
    __break(1u);
LABEL_309:
    v212 = *re::videoLogObjects(v177);
    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
    {
      *v249 = 134218496;
      *&v249[4] = 0x3FF0000000000000;
      *&v249[12] = 2048;
      *&v249[14] = 0x3FF0000000000000;
      *&v249[22] = 2048;
      *&v249[24] = 0;
      _os_log_impl(&dword_1E1C61000, v212, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->addComponentsToScreenEntity:: #SpatialGallery :: Width and Height == {%f,%f}; RoundedCornerRadiusInMeters == %f", v249, 0x20u);
    }

LABEL_238:
    re::ecs2::createPlane(v65, &v246);
    v178 = *(v65 + 24);
    if (!v178)
    {
      v178 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    }

    re::DynamicArray<re::AssetHandle>::add((v178 + 56), &v244);
    v179 = re::ecs2::EntityComponentCollection::get((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v179)
    {
      *(v179 + 108) = 1;
      re::ecs2::Component::markDirty(v179);
    }

    v180 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    memset(v249, 0, 24);
    if (*(v68 + 200) == 1)
    {
      re::ecs2::buildCurvedCollisionShapeAssetHandle(&v242, v228, 0.0, 0.0, 1.0, 1.0);
    }

    else
    {
      v181.n128_u32[0] = 1.0;
      re::ecs2::buildCollisionShapeAssetHandle(v228, v181, 1.0, 0.0);
    }

    *v249 = v242;
    v242 = 0uLL;
    *&v249[16] = v243;
    v243 = 0;
    re::AssetHandle::~AssetHandle(&v242);
    re::AssetHandle::operator=((v180 + 4), v249);
    re::ecs2::Component::markDirty(v180);
    v182 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *(v182 + 25) = 16843009;
    re::ecs2::Component::markDirty(v182);
    v183 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::AssetHandle::operator=(v183 + 32, &v244);
    re::ecs2::VideoPlayerComponentHelper::impl::addAttachmentsToVideoComponent(v183, v184);
    re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    re::AssetHandle::~AssetHandle(v249);
    re::AssetHandle::~AssetHandle(&v244);
LABEL_246:
    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 40, &v245);
    if (v245)
    {
      v185 = v245 + 8;
    }

    else
    {
      v185 = 0;
    }

    objc_initWeak(buf, v185);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(&v13[v37], buf);
    objc_destroyWeak(buf);
    if (v245)
    {
      WeakRetained = v245 + 8;
LABEL_36:

      continue;
    }
  }

  v143 = *(v65 + 8);
  ++*(v143 + 16);
  v144 = *v143;
  *buf[0].i32 = v140 * v142;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v144, "intensity", 1, buf);
  if (!*(v65 + 6))
  {
    goto LABEL_305;
  }

  v145 = *(v65 + 8);
  ++*(v145 + 16);
  v146 = *v145;
  buf[0].i32[0] = v141;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v146, "sampleSpread", 1, buf);
  re::ecs2::Component::markDirty(v65);
  v147 = re::ecs2::EntityComponentCollection::add((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetHandle::operator=(v147 + 32, &v244);
  *(v147 + 331) = 1;
  if (v68)
  {
    *(v147 + 56) = *(v68 + 176);
    *(v147 + 75) = *(v68 + 177);
  }

  re::ecs2::VideoPlayerComponentHelper::impl::addAttachmentsToVideoComponent(v147, v148);
  re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 40, &v245);
  if (v245)
  {
    v149 = v245 + 8;
  }

  else
  {
    v149 = 0;
  }

  objc_initWeak(buf, v149);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(v13 + 1831, buf);
  objc_destroyWeak(buf);
  re::AssetHandle::~AssetHandle(&v244);
  v40 = v228;
  if (v245)
  {
    v39 = v245 + 8;
LABEL_38:
  }

LABEL_39:
  v41 = objc_loadWeakRetained(v13 + 1832);
  if (v41)
  {
LABEL_40:

    goto LABEL_41;
  }

  v91 = re::ecs2::EntityFactory::instance(0);
  re::ecs2::EntityFactory::make(&v245, v91, 4uLL);
  v92 = v245;
  buf[0].i64[0] = 0x74088E8F787C2E0ELL;
  buf[0].i64[1] = "__InternalVPC-DRMEnity__";
  re::ecs2::setEntityAttributes(v245, buf, v93);
  if (buf[0].i8[0])
  {
    if (buf[0].i8[0])
    {
    }
  }

  re::ecs2::EntityComponentCollection::remove((v92 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v92)
  {
    v135 = *re::videoLogObjects(v95);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      buf[0].i16[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v135, OS_LOG_TYPE_ERROR, "[VideoPlayerComponentHelper]->createDRMEntity :: Since drmEntity is nil, can't add components to drmEntity", buf, 2u);
    }

    goto LABEL_41;
  }

  v96 = re::AssetHandle::AssetHandle(&v244, (a7 + 32));
  if (*(&v244 + 1))
  {
    v97 = atomic_load((*(&v244 + 1) + 896));
    v98 = v97 == 2;
  }

  else
  {
    v98 = 0;
  }

  v150 = *re::videoLogObjects(v96);
  v151 = os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT);
  if (v98)
  {
    if (v151)
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v150, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createDRMEntity :: Loading DRM image is fully loaded", buf, 2u);
    }
  }

  else
  {
    if (v151)
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v150, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createDRMEntity :: Loading DRM image synchronously since not loaded asynchronously up to this point", buf, 2u);
    }

    re::AssetHandle::loadNow(*(&v244 + 1), 0);
  }

  v152 = re::ecs2::EntityComponentCollection::add((v245 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v153 = 0;
  v246 = xmmword_1E3047670;
  v247 = xmmword_1E3047680;
  v248[0] = xmmword_1E30476A0;
  v248[1] = xmmword_1E30474D0;
  do
  {
    buf[v153 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*(&v246 + v153))), xmmword_1E3047680, *(&v246 + v153), 1), xmmword_1E30476A0, *(&v246 + v153), 2), xmmword_1E30474D0, *(&v246 + v153), 3);
    v153 += 16;
  }

  while (v153 != 64);
  v246 = 0u;
  *v249 = xmmword_1E30474D0;
  v242 = 0u;
  re::decomposeScaleRotationTranslation<float>(buf, &v246, v249, &v242);
  v154 = *(&v246 + 1);
  v155 = *v249;
  v156 = *&v249[8];
  v157 = v242;
  *(v152 + 32) = v246;
  *(v152 + 40) = v154;
  *(v152 + 48) = v155;
  *(v152 + 56) = v156;
  *(v152 + 64) = v157;
  v158 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v244);
  if (!v158)
  {
    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 40, &v245);
    if (v245)
    {
      v171 = v245 + 8;
    }

    else
    {
      v171 = 0;
    }

    objc_initWeak(buf, v171);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(v13 + 1832, buf);
    objc_destroyWeak(buf);
LABEL_234:
    re::AssetHandle::~AssetHandle(&v244);
    if (v245)
    {
      v41 = v245 + 8;
      goto LABEL_40;
    }

LABEL_41:
    v42 = *(v11 + 43);
    if (v42)
    {
      v43 = *(v11 + 45);
      v44 = 8 * v42;
      v45 = 8 * v42;
      v46 = v43;
      while (1)
      {
        v32 = *v46;
        if ((*(*v46 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
        {
          v47 = *(v32 + 296);
          if (v47 == "__InternalVPC-Screen__" || !strcmp(v47, "__InternalVPC-Screen__"))
          {
            break;
          }
        }

        ++v46;
        v45 -= 8;
        if (!v45)
        {
          v32 = 0;
          break;
        }
      }

      while (1)
      {
        v34 = *v43;
        if ((*(*v43 + 288) ^ 0x931CC76C0DD179BALL) <= 1)
        {
          v48 = *(v34 + 37);
          if (v48 == "__InternalVPC-ScreenGlowEntity__" || !strcmp(v48, "__InternalVPC-ScreenGlowEntity__"))
          {
            break;
          }
        }

        ++v43;
        v44 -= 8;
        if (!v44)
        {
          v34 = 0;
          break;
        }
      }
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    if (*v14 == 1)
    {
      *&v238.var0 = 0xD0AE8347A834160;
      v238.var1 = "__InternalVPC-CyclopEye__";
      v99 = re::ecs2::Entity::findInHierarchyByName(v11, &v238);
      v100 = v99;
      if (*&v238.var0)
      {
        if (*&v238.var0)
        {
        }
      }

      *&v238.var0 = 0;
      v238.var1 = &str_67;
    }

    else
    {
      v100 = 0;
    }

    if (v13[9] == 1)
    {
      *&v237.var0 = 0x98636CD79C3E2C92;
      v237.var1 = "__InternalVPC-LeftEye__";
      v101 = re::ecs2::Entity::findInHierarchyByName(v11, &v237);
      v52 = v101;
      if (*&v237.var0)
      {
        if (*&v237.var0)
        {
        }
      }

      *&v237.var0 = 0;
      v237.var1 = &str_67;
      *&v236.var0 = 0x740B54E87609516CLL;
      v236.var1 = "__InternalVPC-RightEye__";
      v102 = v11;
      v103 = re::ecs2::Entity::findInHierarchyByName(v11, &v236);
      v104 = v103;
      if (*&v236.var0)
      {
        if (*&v236.var0)
        {
        }
      }

      *&v236.var0 = 0;
      v236.var1 = &str_67;
    }

    else
    {
      v102 = v11;
      v104 = 0;
      v52 = 0;
    }

    v105 = v102;
    v106 = *(v102 + 43);
    v225 = v104;
    if (v106)
    {
      v223 = v13;
      v107 = v52;
      v108 = v100;
      v109 = v105;
      v110 = *(v105 + 45);
      v111 = 8 * v106;
      while (1)
      {
        v60 = *v110;
        if ((*(*v110 + 288) ^ 0xB71EB2016BE7B4AuLL) <= 1)
        {
          v112 = *(v60 + 296);
          if (v112 == "__InternalVPC-PortalWorld__" || !strcmp(v112, "__InternalVPC-PortalWorld__"))
          {
            break;
          }
        }

        ++v110;
        v111 -= 8;
        if (!v111)
        {
          v60 = 0;
          break;
        }
      }

      v100 = v108;
      v52 = v107;
      v105 = v109;
      v13 = v223;
    }

    else
    {
      v60 = 0;
    }

    *&v235.var0 = 0x74088E8F787C2E0ELL;
    v235.var1 = "__InternalVPC-DRMEnity__";
    v11 = v105;
    v113 = re::ecs2::Entity::findInHierarchyByName(v105, &v235);
    v224 = v113;
    if (*&v235.var0)
    {
      if (*&v235.var0)
      {
      }
    }

    *&v235.var0 = 0;
    v235.var1 = &str_67;
    re::AssetHandle::AssetHandle(v234, v221);
    v227 = v100;
    re::ecs2::VideoPlayerComponentHelper::impl::setVideo(v13, v32, v34, v100, v52, v225, v234);
    re::AssetHandle::~AssetHandle(v234);
    re::FunctionBase<24ul,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::destroyCallable((v13 + 48));
    *(v13 + 6) = &unk_1F5CEF440;
    *(v13 + 7) = v13;
    *(v13 + 8) = v228;
    *(v13 + 10) = v13 + 48;
    v114 = re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v55 = re::AssetHandle::loadedAsset<re::VideoAsset>(v221);
    if (v55)
    {
      if (v114)
      {
        v115 = v55;
        re::AssetHandle::AssetHandle(v233, v221);
        re::AssetHandle::operator=(v114 + 128, v233);
        re::AssetHandle::~AssetHandle(v233);
        v116 = *(v115 + 208);
        if (v116)
        {
          if (*v116 && (*(v114 + 120) & 1) == 0)
          {
            re::ecs2::VideoPlayerStatusComponent::setVideoReceiverEndpointAvailable(v114, 1);
          }
        }
      }
    }

    v54 = v225;
    v50 = v227;
    if (!v32)
    {
      goto LABEL_82;
    }

    goto LABEL_144;
  }

  v159 = v158;
  if (!*(v158 + 120))
  {
    v160 = *(v158 + 112);
    v161 = *(v245 + 29);
    if (!v161)
    {
      v161 = re::ecs2::EntityComponentCollection::add((v245 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    v161[25] = 1;
    v161[35] = 1;
    if ((v161[30] & 1) == 0)
    {
      v161[30] = 1;
    }

    v161[31] = 1;
    re::AssetManager::assetHandle(v40, "engine:transparentUnlit.rematerial", &v242);
    buf[0].i64[1] = 0;
    *(&buf[0].i64[1] + 6) = 0;
    buf[1].i32[2] = 0;
    LODWORD(v251[0]) = 1065353216;
    *(v251 + 8) = xmmword_1E3063230;
    v162 = [v160 width];
    *buf[0].i32 = v162 / [v160 height];
    buf[0].i32[1] = 1065353216;
    buf[1].i8[12] = 0;
    *(&buf[0].i64[1] + 4) = 0;
    buf[1].i8[4] = 0;
    re::ecs2::createPlane(v245, buf[0].i32);
    v163 = *(v245 + 24);
    if (!v163)
    {
      v163 = re::ecs2::EntityComponentCollection::add((v245 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    }

    re::DynamicArray<re::AssetHandle>::add((v163 + 56), &v242);
    v164 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(a6 + 24), *(v245 + 39));
    v241 = 0x34EAA28FD9A1AC37;
    v165 = re::MaterialParameterBlock::setTextureHandle(v164, &v241, (v159 + 8), &v246);
    *&v246 = 0;
    v166 = [objc_msgSend(MEMORY[0x1E6974170] alloc];
    [v166 setRAddressMode_];
    [v166 setSAddressMode_];
    [v166 setTAddressMode_];
    [v166 setMinFilter_];
    [v166 setMagFilter_];
    [v166 setMipFilter_];
    v167 = *(a6 + 208);
    v168 = [v167 newSamplerStateWithDescriptor_];
    v169 = v168;
    v240 = v169;
    re::MaterialParameterBlock::setSampler(v164, "textureBaseColor_sampler", &v240, v249);
    *v249 = 0;
    if (v169)
    {
    }

    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 40, &v245);
    if (v245)
    {
      v170 = v245 + 8;
    }

    else
    {
      v170 = 0;
    }

    objc_initWeak(&location, v170);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(v13 + 1832, &location);
    objc_destroyWeak(&location);
    if (v168)
    {
    }

    if (v166)
    {
    }

    re::AssetHandle::~AssetHandle(&v242);
    if (v160)
    {
    }

    goto LABEL_234;
  }

  v219 = std::__throw_bad_variant_access[abi:nn200100]();
  re::ecs2::VideoPlayerComponentHelper::impl::hasVideoEntityHierarchy(v219, v220);
}

uint64_t re::ecs2::VideoPlayerComponentHelper::impl::hasVideoEntityHierarchy(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 305) & 8) != 0)
  {
    return 0;
  }

  if (*(a2 + 387))
  {
    return 0;
  }

  v2 = *(a2 + 344);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 360);
  v4 = 8 * v2;
  while (1)
  {
    if ((*(*v3 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
    {
      v5 = *(*v3 + 296);
      if (v5 == "__InternalVPC-Screen__" || !strcmp(v5, "__InternalVPC-Screen__"))
      {
        break;
      }
    }

    v3 += 8;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

void re::ecs2::VideoPlayerComponentHelper::impl::setVideo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const re::AssetHandle *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v13 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v13)
    {
      v14 = v13;
      *(v13 + 331) = 1;
      re::AssetHandle::AssetHandle(v32, a7);
      re::AssetHandle::operator=(v14 + 208, v32);
      *(v14 + 73) = 0;
      re::AssetHandle::~AssetHandle(v32);
    }

    else
    {
      v23 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v34 = 5730;
        _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }

  if (a3)
  {
    v15 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v15)
    {
      v16 = v15;
      *(v15 + 331) = 1;
      re::AssetHandle::AssetHandle(v31, a7);
      re::AssetHandle::operator=(v16 + 208, v31);
      *(v16 + 73) = 0;
      re::AssetHandle::~AssetHandle(v31);
      *(v16 + 332) = 2;
    }

    else
    {
      v24 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v34 = 5739;
        _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }

  if (a4 && (*(a1 + 8) & 1) != 0)
  {
    v17 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v17)
    {
      v18 = v17;
      *(v17 + 331) = 1;
      re::AssetHandle::AssetHandle(v30, a7);
      re::AssetHandle::operator=(v18 + 208, v30);
      *(v18 + 73) = 0;
      re::AssetHandle::~AssetHandle(v30);
    }

    else
    {
      v25 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v34 = 5750;
        _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }

  if (*(a1 + 9) == 1)
  {
    if (a5)
    {
      v19 = re::ecs2::EntityComponentCollection::get((a5 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v19)
      {
        v20 = v19;
        *(v19 + 331) = 1;
        re::AssetHandle::AssetHandle(v29, a7);
        re::AssetHandle::operator=(v20 + 208, v29);
        *(v20 + 73) = 0;
        re::AssetHandle::~AssetHandle(v29);
      }

      else
      {
        v26 = *re::videoLogObjects(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v34 = 5760;
          _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
        }
      }
    }

    if (a6)
    {
      v21 = re::ecs2::EntityComponentCollection::get((a6 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v21)
      {
        v22 = v21;
        *(v21 + 331) = 1;
        re::AssetHandle::AssetHandle(v28, a7);
        re::AssetHandle::operator=(v22 + 208, v28);
        *(v22 + 73) = 0;
        re::AssetHandle::~AssetHandle(v28);
      }

      else
      {
        v27 = *re::videoLogObjects(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v34 = 5768;
          _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
        }
      }
    }
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::postBufferRetrievalUpdate(re::ecs2::VideoPlayerComponentHelper::impl *this, float a2, re::ecs2::VideoPlayerComponentHelper::impl ***a3, re::AssetManager *a4, re::MaterialManager **a5)
{
  v239 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    return;
  }

  v10 = re::VideoDefaults::logLevel(this);
  if (v10 >= 3)
  {
    v189 = *re::videoLogObjects(v10);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v189, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][VideoPlayerComponentHelper]->postBufferRetrievalUpdate :: Updating the SpatialMediaMaterialParameters", buf, 2u);
    }
  }

  v11 = *(this + 1837);
  if (v11)
  {
    SpatialMediaComponentHelper = re::SpatialMediaManager::getSpatialMediaComponentHelper(v11, a3);
    if (SpatialMediaComponentHelper)
    {
      re::ecs2::SpatialMediaComponentHelper::impl::updateSpatialMediaMaterialParameters(*SpatialMediaComponentHelper, a3, a5);
    }
  }

  v13 = a3[43];
  if (v13)
  {
    v14 = a3[45];
    v15 = 8 * v13;
    v16 = 8 * v13;
    v17 = v14;
    while (1)
    {
      v18 = *v17;
      if ((*(*v17 + 36) ^ 0xF4664E2E6A44E25ALL) <= 1)
      {
        v19 = *(v18 + 37);
        if (v19 == "__InternalVPC-Screen__" || !strcmp(v19, "__InternalVPC-Screen__"))
        {
          break;
        }
      }

      ++v17;
      v16 -= 8;
      if (!v16)
      {
        v18 = 0;
        break;
      }
    }

    while (1)
    {
      v20 = *v14;
      if ((*(*v14 + 36) ^ 0x931CC76C0DD179BALL) <= 1)
      {
        v21 = *(v20 + 37);
        if (v21 == "__InternalVPC-ScreenGlowEntity__" || !strcmp(v21, "__InternalVPC-ScreenGlowEntity__"))
        {
          break;
        }
      }

      ++v14;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v18 = 0;
LABEL_20:
    v20 = 0;
  }

  *&v230.var0 = 0x74088E8F787C2E0ELL;
  v230.var1 = "__InternalVPC-DRMEnity__";
  v22 = re::ecs2::Entity::findInHierarchyByName(a3, &v230);
  v23 = v22;
  if (*&v230.var0)
  {
    if (*&v230.var0)
    {
    }
  }

  *&v230.var0 = 0;
  v230.var1 = &str_67;
  if (!v18 || !v20 || !v23)
  {
    v60 = *re::videoLogObjects(v22);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v61 = "[VideoPlayerComponentHelper]->postBufferRetrievalUpdate :: ScreenEntity or ScreenGlowEntity or DRMEntity is a nullptr";
    v62 = v60;
    v63 = 2;
    goto LABEL_72;
  }

  v24 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v24)
  {
    v190 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 1986;
    v61 = "VideoPlayerComponentHelper line: %d, videoPlayerComp is nullptr";
    v62 = v190;
    v63 = 8;
LABEL_72:
    _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, v61, buf, v63);
    return;
  }

  v25 = v24;
  if ((*(this + 1) & 1) == 0 && *(this + 2) == 1)
  {
    v24 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v24)
    {
      v28 = *(v24 + 64);
      if (v28 != 0.0 && fabsf(v28) > 0.001 || (v29 = *(v24 + 68), v29 != 0.0) && fabsf(v29) > 0.001)
      {
        re::ecs2::VideoPlayerComponentHelper::impl::setEntityVisibility(v18, v26, v27);
        re::ecs2::VideoPlayerComponentHelper::impl::setEntityVisibility(v20, v30, v31);
        re::ecs2::VideoPlayerComponentHelper::impl::setEntityVisibility(v23, v32, v33);
        *(this + 1) = 1;
        v35 = *re::videoLogObjects(v34);
        v24 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          v36 = *(this + 1);
          *buf = 67109120;
          *&buf[4] = v36;
          _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper][impl]->postBufferRetrieval :: VideoPlayerComponentHelper sets video entities visibility: %d", buf, 8u);
        }
      }
    }

    else
    {
      v193 = *re::videoLogObjects(0);
      v24 = os_log_type_enabled(v193, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        *buf = 67109120;
        *&buf[4] = 864;
        _os_log_error_impl(&dword_1E1C61000, v193, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }

  v229 = this + 2;
  v37 = 2;
  if (!*(this + 2))
  {
    v37 = 3;
  }

  if (*(this + v37) != 1)
  {
    goto LABEL_213;
  }

  if (!*(this + 2))
  {
    goto LABEL_84;
  }

  v38 = re::VideoDefaults::logEnabled(v24);
  if (v38)
  {
    v191 = *re::videoLogObjects(v38);
    v38 = os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v191, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Screen Entity is valid", buf, 2u);
    }
  }

  v39 = re::VideoDefaults::logEnabled(v38);
  if (v39)
  {
    v194 = *re::videoLogObjects(v39);
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v194, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Screen Entity is valid", buf, 2u);
    }
  }

  v40 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v40)
  {
    v195 = *re::videoLogObjects(0);
    v24 = os_log_type_enabled(v195, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      goto LABEL_84;
    }

    *buf = 67109120;
    *&buf[4] = 609;
    v65 = "VideoPlayerComponentHelper line: %d, screenVideoComponent is nullptr";
LABEL_290:
    v66 = v195;
    v67 = 8;
    goto LABEL_79;
  }

  v41 = v40;
  if (*(v25 + 176) != *(this + 5))
  {
    WeakRetained = objc_loadWeakRetained(this + 1831);
    if (!WeakRetained || (v43 = WeakRetained, v44 = re::ecs2::EntityComponentCollection::get((WeakRetained + 40), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType), v43, !v44))
    {
      v64 = *re::videoLogObjects(WeakRetained);
      v24 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
      if (!v24)
      {
        goto LABEL_84;
      }

      *buf = 0;
      v65 = "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: screenGlowVideoComponent is nullptr";
LABEL_78:
      v66 = v64;
      v67 = 2;
LABEL_79:
      _os_log_error_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_ERROR, v65, buf, v67);
      goto LABEL_84;
    }

    v45 = re::VideoDefaults::logEnabled(WeakRetained);
    if (v45)
    {
      v210 = *re::videoLogObjects(v45);
      if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
      {
        v211 = *(this + 5);
        v212 = *(v25 + 176);
        *buf = 67109376;
        *&buf[4] = v211;
        *&buf[8] = 1024;
        *&buf[10] = v212;
        _os_log_impl(&dword_1E1C61000, v210, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Preferred viewing mode has changed from %d to %d", buf, 0xEu);
      }
    }

    v46 = *(v25 + 176);
    v41[56] = v46;
    *(v44 + 56) = v46;
    *(this + 5) = v46;
  }

  if (*(v25 + 177) == *(this + 6))
  {
    goto LABEL_54;
  }

  v47 = objc_loadWeakRetained(this + 1831);
  if (!v47 || (v48 = v47, v49 = re::ecs2::EntityComponentCollection::get((v47 + 40), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType), v48, !v49))
  {
    v64 = *re::videoLogObjects(v47);
    v24 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      goto LABEL_84;
    }

    *buf = 0;
    v65 = "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: screenGlowVideoComponent is nullptr";
    goto LABEL_78;
  }

  v50 = re::VideoDefaults::logEnabled(v47);
  if (v50)
  {
    v214 = *re::videoLogObjects(v50);
    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
    {
      v215 = *(this + 6);
      v216 = *(v25 + 177);
      *buf = 67109376;
      *&buf[4] = v215;
      *&buf[8] = 1024;
      *&buf[10] = v216;
      _os_log_impl(&dword_1E1C61000, v214, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Desired media mode has changed from %d to %d", buf, 0xEu);
    }
  }

  v51 = *(v25 + 177);
  v41[75] = v51;
  *(v49 + 75) = v51;
  *(this + 6) = v51;
LABEL_54:
  v52 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v52)
  {
    v195 = *re::videoLogObjects(0);
    v24 = os_log_type_enabled(v195, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      goto LABEL_84;
    }

    *buf = 67109120;
    *&buf[4] = 657;
    v65 = "VideoPlayerComponentHelper line: %d, videoPlayerStatusComp is nullptr";
    goto LABEL_290;
  }

  v53 = v52;
  if (*(v52 + 88) != v41[57])
  {
    v52 = re::VideoDefaults::logEnabled(v52);
    if (v52)
    {
      v204 = *re::videoLogObjects(v52);
      v52 = os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT);
      if (v52)
      {
        v205 = *(v53 + 88);
        v206 = v41[57];
        *buf = 67109376;
        *&buf[4] = v205;
        *&buf[8] = 1024;
        *&buf[10] = v206;
        _os_log_impl(&dword_1E1C61000, v204, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Current viewing mode has changed from %d to %d", buf, 0xEu);
      }
    }

    v54 = v41[57];
    if (*(v53 + 88) != v54)
    {
      *(v53 + 88) = v54;
      v52 = *(*(v53 + 16) + 216);
      if (v52)
      {
        re::ecs2::NetworkComponent::markDirty(v52, v53);
      }
    }
  }

  v55 = re::VideoDefaults::logEnabled(v52);
  if (v55)
  {
    v198 = *re::videoLogObjects(v55);
    v55 = os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT);
    if (v55)
    {
      v199 = v41[57];
      *buf = 67109376;
      *&buf[4] = v199;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      _os_log_impl(&dword_1E1C61000, v198, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Screen Current Viewing Mode == %d; Unknown == %d", buf, 0xEu);
    }
  }

  if (*(v53 + 208) != v41[74])
  {
    v55 = re::VideoDefaults::logEnabled(v55);
    if (v55)
    {
      v207 = *re::videoLogObjects(v55);
      v55 = os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT);
      if (v55)
      {
        v208 = *(v53 + 208);
        v209 = v41[74];
        *buf = 67109376;
        *&buf[4] = v208;
        *&buf[8] = 1024;
        *&buf[10] = v209;
        _os_log_impl(&dword_1E1C61000, v207, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Current viewing mode has changed from %d to %d", buf, 0xEu);
      }
    }

    v56 = v41[74];
    if (*(v53 + 208) != v56)
    {
      *(v53 + 208) = v56;
      v55 = *(*(v53 + 16) + 216);
      if (v55)
      {
        re::ecs2::NetworkComponent::markDirty(v55, v53);
      }
    }
  }

  v24 = re::VideoDefaults::logEnabled(v55);
  if (v24)
  {
    v200 = *re::videoLogObjects(v24);
    v24 = os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      v201 = v41[74];
      *buf = 67109376;
      *&buf[4] = v201;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      _os_log_impl(&dword_1E1C61000, v200, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Current Spatial Video Mode == %d; Unknown == %d", buf, 0xEu);
    }
  }

  if (v41[57])
  {
    v57 = re::VideoDefaults::logEnabled(v24);
    if (v57)
    {
      v202 = *re::videoLogObjects(v57);
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
      {
        v203 = v41[57];
        *buf = 67109120;
        *&buf[4] = v203;
        _os_log_impl(&dword_1E1C61000, v202, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Viewing Mode is %d and setting the videoReadyToRender to true", buf, 8u);
      }
    }

    v58 = v53;
    v59 = 1;
  }

  else
  {
    if (!*(v53 + 88))
    {
      goto LABEL_84;
    }

    v68 = re::VideoDefaults::logEnabled(v24);
    if (v68)
    {
      v219 = *re::videoLogObjects(v68);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        v220 = v41[57];
        *buf = 67109120;
        *&buf[4] = v220;
        _os_log_impl(&dword_1E1C61000, v219, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Viewing Mode is %d and setting the videoReadyToRender to false", buf, 8u);
      }
    }

    v58 = v53;
    v59 = 0;
  }

  re::ecs2::VideoPlayerStatusComponent::setVideoIsReadyToRender(v58, v59);
LABEL_84:
  v69 = this + 3;
  if (*v229)
  {
    v69 = this + 2;
  }

  if (*v69 == 1 || *(v25 + 72))
  {
    v70 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v73 = this + 12288;
    if (!v70)
    {
      v192 = *re::videoLogObjects(0);
      v76 = os_log_type_enabled(v192, OS_LOG_TYPE_ERROR);
      if (v76)
      {
        *buf = 67109120;
        *&buf[4] = 2561;
        _os_log_error_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }

      LODWORD(v83) = 0;
      goto LABEL_266;
    }

    v74 = v70;
    v75 = *(v25 + 99);
    *(this + 12498) = v75;
    *(v70 + 257) = v75;
    v76 = media::MediaScreenAnimationEngine::update(this + 48, a2, v71, v72);
    v77 = *(v25 + 192);
    v79 = v74[8].f32[0];
    v78 = v74[8].f32[1];
    if (((v79 == 0.0 || fabsf(v79) <= 0.001) && (v78 == 0.0 || fabsf(v78) <= 0.001) || v78 <= 0.0) && v77 <= 0.0)
    {
      v76 = re::VideoDefaults::loadingTexAndHintEnabled(v76);
      if (!v76 || !*(v25 + 72) || (*(this + 1) & 1) != 0)
      {
LABEL_107:
        LODWORD(v83) = 0;
        goto LABEL_108;
      }

      v78 = v74[8].f32[1];
    }

    v80 = 0.0;
    if (v78 > 0.0)
    {
      v80 = v74[8].f32[0] / v78;
    }

    if (v77 <= 0.0)
    {
      v76 = re::VideoDefaults::loadingTexAndHintEnabled(v76);
      if (v76 && (*(this + 1) & 1) == 0)
      {
        v77 = v80;
        if (*(v25 + 72))
        {
          v76 = re::VideoDefaults::logLevel(v76);
          if (v76 >= 3)
          {
            v224 = *re::videoLogObjects(v76);
            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              v225 = *(v25 + 204);
              *buf = 134217984;
              *&buf[4] = v225;
              _os_log_impl(&dword_1E1C61000, v224, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][VideoPlayerComponentHelper]->screenEntityAnimation :: New Aspect ratio is %f", buf, 0xCu);
            }

            v73 = this + 12288;
          }

          v77 = *(v25 + 204);
        }
      }

      else
      {
        v77 = v80;
      }
    }

    v81 = roundf(v77 * 100.0) / 100.0;
    v82 = *(this + 7);
    if (v81 == v82 || vabds_f32(v81, v82) < (((fabsf(v82) + fabsf(v81)) + 1.0) * 0.00001))
    {
      goto LABEL_107;
    }

    v227 = v81;
    *(this + 7) = v81;
    v136 = *re::videoLogObjects(v76);
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      v137 = v74[8].f32[0];
      v138 = v74[8].f32[1];
      v139 = *(this + 7);
      v140 = *(this + 12498);
      *buf = 134219008;
      *&buf[4] = v137;
      *&buf[12] = 2048;
      v232 = v138;
      v233 = 2048;
      v234 = v139;
      v235 = 2048;
      v236 = v82;
      v237 = 1024;
      v238 = v140;
      _os_log_impl(&dword_1E1C61000, v136, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] New video dimension: {%f, %f}, Screen new aspect ratio: %f, prev aspect ratio: %f, m_isScreenDeferAspectRatioTransitionToApp: %d", buf, 0x30u);
    }

    v142 = this + 12288;
    v143 = v227;
    if (*(this + 12499) != 1)
    {
LABEL_234:
      v228 = v23;
      if (v142[210] == 1)
      {
        v157 = *(this + 6);
        if (v157 <= 0.0 || (v158 = *(this + 7), v158 <= 0.0) || v157 != v158 && vabds_f32(v157, v158) > 0.001)
        {
          v159 = *re::videoLogObjects(v141);
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
          {
            v160 = *(this + 6);
            v161 = *(this + 7);
            *buf = 134218240;
            *&buf[4] = v160;
            *&buf[12] = 2048;
            v232 = v161;
            _os_log_impl(&dword_1E1C61000, v159, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] Scale ratio and content ratio are not matched yet, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", buf, 0x16u);
          }

          v142 = this + 12288;
        }

        if (v142[211] == 1)
        {
          v142[211] = 0;
        }
      }

      else
      {
        __asm { FMOV            V0.2S, #1.0 }

        *&_D0 = v143;
        *(this + 2) = _D0;
        v166 = re::VideoDefaults::logLevel(v141);
        if (v166 >= 2)
        {
          v221 = *re::videoLogObjects(v166);
          if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
          {
            v222 = *(this + 4);
            v223 = *(this + 5);
            *buf = 134218240;
            *&buf[4] = v222;
            *&buf[12] = 2048;
            v232 = v223;
            _os_log_impl(&dword_1E1C61000, v221, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][VideoPlayerComponentHelper]->screenEntityAnimation :: Setting is Current Screen Entity Mesh Size to [%f,%f]", buf, 0x16u);
          }

          v142 = this + 12288;
        }

        v167 = *(v25 + 98);
        v142[209] = v167;
        if (v142[211] & 1) == 0 && (v167)
        {
          v168 = media::MediaScreenAnimationEngine::add(this + 12, 0);
          v83 = v168;
          if (v168)
          {
            *buf = 0x4376BD773F800000;
            *&buf[8] = 1106990019;
            media::FloatSpringAnimation::setSpringParam(v168, buf);
            v169 = [*(v83 + 40) duration];
            *&v170 = v170;
            *(v83 + 12) = LODWORD(v170);
            *(v83 + 16) = v82;
            *(v83 + 20) = v227;
            v171 = *re::videoLogObjects(v169);
            if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
            {
              v172 = *(v83 + 12);
              *buf = 134218496;
              *&buf[4] = v172;
              *&buf[12] = 2048;
              v232 = v82;
              v233 = 2048;
              v234 = v227;
              _os_log_impl(&dword_1E1C61000, v171, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] post m_isScreenSizeAnimationEnabled animation, duration: %f from aspect ratio: %f to aspect ratio: %f", buf, 0x20u);
            }

            media::MediaScreenAnimationEngine::update(this + 48, 0.0, v173, v174);
            LODWORD(v83) = 0;
          }

          goto LABEL_255;
        }

        v142[211] = 0;
        *(this + 22) = v227;
        v175 = *re::videoLogObjects(v166);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v227;
          _os_log_impl(&dword_1E1C61000, v175, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] Generate first mesh for the initial playback with aspect ratio: %f", buf, 0xCu);
        }
      }

      LODWORD(v83) = 1;
LABEL_255:
      v176 = *(this + 16);
      v177 = v74[8];
      v178 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v178)
      {
        v179 = v178;
        v180 = vmvn_s8(vceq_f32(v178[9], v176));
        if ((vpmax_u32(v180, v180).u32[0] & 0x80000000) != 0)
        {
          v178[9] = v176;
          v178 = *(*&v178[2] + 216);
          if (v178)
          {
            re::ecs2::NetworkComponent::markDirty(v178, v179);
          }
        }

        v181 = vmvn_s8(vceq_f32(v179[10], v177));
        if ((vpmax_u32(v181, v181).u32[0] & 0x80000000) != 0)
        {
          v179[10] = v177;
          v178 = *(*&v179[2] + 216);
          if (v178)
          {
            re::ecs2::NetworkComponent::markDirty(v178, v179);
          }
        }

        v182 = *re::videoLogObjects(v178);
        v183 = os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT);
        if (v183)
        {
          v184 = v179[9].f32[0];
          v185 = v179[9].f32[1];
          *buf = 134218240;
          *&buf[4] = v184;
          *&buf[12] = 2048;
          v232 = v185;
          _os_log_impl(&dword_1E1C61000, v182, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] UpdatePlayerScreenSize as %f x %f", buf, 0x16u);
        }

        v186 = *re::videoLogObjects(v183);
        v76 = os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT);
        v23 = v228;
        if (v76)
        {
          v187 = v179[10].f32[0];
          v188 = v179[10].f32[1];
          *buf = 134218240;
          *&buf[4] = v187;
          *&buf[12] = 2048;
          v232 = v188;
          _os_log_impl(&dword_1E1C61000, v186, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] UpdateScreenVideoDimension as %f x %f", buf, 0x16u);
        }
      }

      else
      {
        v213 = *re::videoLogObjects(0);
        v76 = os_log_type_enabled(v213, OS_LOG_TYPE_ERROR);
        if (v76)
        {
          *buf = 67109120;
          *&buf[4] = 3139;
          _os_log_error_impl(&dword_1E1C61000, v213, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoPlayerStatusComponent is nullptr", buf, 8u);
        }

        v23 = v228;
      }

LABEL_266:
      v73 = this + 12288;
LABEL_108:
      if (v73[210] == 1)
      {
        v84 = a3[32];
        if (v84)
        {
          v85 = *(v84 + 9);
          if (v85 > 0.0)
          {
            v86 = *(v84 + 8) / v85;
            if (*(this + 6) != v86)
            {
              *(this + 6) = v86;
              v76 = re::VideoDefaults::logEnabled(v76);
              if (v76)
              {
                v217 = *re::videoLogObjects(v76);
                if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
                {
                  v218 = *(this + 6);
                  *buf = 134217984;
                  *&buf[4] = v218;
                  _os_log_impl(&dword_1E1C61000, v217, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] m_currentVideoEntityScaleAspectRatio is updated: %f", buf, 0xCu);
                }

                v73 = this + 12288;
              }

              v87 = *(this + 6);
              if (v87 <= 0.0 || (v88 = *(this + 7), v88 <= 0.0) || (LODWORD(v83) = 1, v87 != v88) && vabds_f32(v87, v88) > 0.001)
              {
                v89 = *re::videoLogObjects(v76);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = *(this + 6);
                  v91 = *(this + 7);
                  *buf = 134218240;
                  *&buf[4] = v90;
                  *&buf[12] = 2048;
                  v232 = v91;
                  _os_log_impl(&dword_1E1C61000, v89, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] Scale ratio and content ratio are not matched yet, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", buf, 0x16u);
                }

                LODWORD(v83) = 1;
              }
            }
          }
        }
      }

      v92 = a3[32];
      if (v92)
      {
        v93 = *(v92 + 8);
        if (v93 < *(v92 + 9))
        {
          v93 = *(v92 + 9);
        }

        if (*(this + 8) != v93)
        {
          *(this + 8) = v93;
          v94 = re::VideoDefaults::logEnabled(v76);
          if (v94)
          {
            v196 = *re::videoLogObjects(v94);
            if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
            {
              v197 = *(this + 8);
              *buf = 134217984;
              *&buf[4] = v197;
              _os_log_impl(&dword_1E1C61000, v196, OS_LOG_TYPE_DEFAULT, "[regenerateScreenMesh] m_currentVideoEntityScaleMax is updated: %f", buf, 0xCu);
            }

            LODWORD(v83) = 1;
            v73 = this + 12288;
          }

          else
          {
            LODWORD(v83) = 1;
          }
        }
      }

      v95 = *(v25 + 196);
      if (*(this + 40) != v95)
      {
        *(this + 40) = v95;
        LODWORD(v83) = 1;
      }

      v96 = *(this + 9);
      v97 = *(v25 + 188);
      if (v96 != v97)
      {
        *(this + 9) = v97;
        if (*(v25 + 197) == 1)
        {
          v98 = media::MediaScreenAnimationEngine::add(this + 12, 2u);
          if (v98)
          {
            v99 = v98;
            *buf = 0x4376BD773F800000;
            *&buf[8] = 1106990019;
            media::FloatSpringAnimation::setSpringParam(v98, buf);
            v100 = [*(v99 + 40) duration];
            *&v101 = v101;
            *(v99 + 12) = LODWORD(v101);
            *(v99 + 16) = v96;
            *(v99 + 20) = *(this + 9);
            v102 = *re::videoLogObjects(v100);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              v103 = *(this + 9);
              v104 = *(v99 + 12);
              *buf = 134218240;
              *&buf[4] = v103;
              *&buf[12] = 2048;
              v232 = v104;
              _os_log_impl(&dword_1E1C61000, v102, OS_LOG_TYPE_DEFAULT, "[regenerateScreenMesh] post m_screenWrapTheta animation: m_screenWrapTheta: %f, duration: %f", buf, 0x16u);
            }

            v73 = this + 12288;
          }
        }

        else
        {
          *(this + 24) = v97;
          LODWORD(v83) = 1;
        }
      }

      v105 = re::AssetHandle::loadedAsset<re::VideoAsset>((v25 + 40));
      if (!v105)
      {
        goto LABEL_151;
      }

      v106 = *(v105 + 208);
      if (v106 && (v106[640].i8[0] & 1) != 0 && *(v105 + 973) == 1)
      {
        v107 = v106[638];
        v108 = v106[639];
        v109 = v106[637];
        if (v73[2488] == 1)
        {
          v110 = *(this + 14760);
          if ((vceq_f32(v110, v107).u8[0] & 1) != 0 || fabsf(vsub_f32(v110, v107).f32[0]) <= 0.000001) && (v110.f32[1] == v107.f32[1] || vabds_f32(v110.f32[1], v107.f32[1]) <= 0.000001) && ((v111 = *(this + 14768), (vceq_f32(v111, v108).u8[0]) || fabsf(vsub_f32(v111, v108).f32[0]) <= 0.000001) && (v111.f32[1] == v108.f32[1] || vabds_f32(v111.f32[1], v108.f32[1]) <= 0.000001))
          {
            *(this + 1844) = v109;
            *(this + 1845) = v107;
            *(this + 1846) = v108;
            if ((v83 & 1) == 0)
            {
              goto LABEL_168;
            }
          }

          else
          {
            *(this + 1844) = v109;
            *(this + 1845) = v107;
            *(this + 1846) = v108;
          }
        }

        else
        {
          *(this + 1844) = v109;
          *(this + 1845) = v107;
          *(this + 1846) = v108;
          v73[2488] = 1;
        }

        goto LABEL_152;
      }

      if (v73[2488] == 1)
      {
        v73[2488] = 0;
      }

      else
      {
LABEL_151:
        if (!v83)
        {
          goto LABEL_168;
        }
      }

LABEL_152:
      if (*(this + 7) > 0.0)
      {
        v112 = -10320;
        do
        {
          v113 = *(this + v112 + 10432);
          if (v113)
          {
            _ZF = 1;
          }

          else
          {
            _ZF = v112 == 0;
          }

          v112 += 2064;
        }

        while (!_ZF);
        if (!v113)
        {
          v115 = *re::videoLogObjects(v105);
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] forceRegenerateMesh when animation enigine is idle", buf, 2u);
          }

          v117 = *re::videoLogObjects(v116);
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v117, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->screenEntityAnimation:: #SpatialGallery :: Regenerate Mesh", buf, 2u);
          }

          re::ecs2::VideoPlayerComponentHelper::impl::regenerateScreenMesh(this, v18, v20, a4, *(this + 2), v73[210], *(this + 40), *(this + 23), *(this + 9));
          if (v73[210] == 1)
          {
            *(this + 22) = *(this + 4);
          }
        }
      }

      goto LABEL_168;
    }

    v144 = *(this + 12496);
    v145 = *(v25 + 97);
    if (v144 == v145)
    {
      if ((v144 & 1) == 0)
      {
        goto LABEL_234;
      }
    }

    else
    {
      *(this + 12496) = v145;
      if (!v145)
      {
        goto LABEL_234;
      }
    }

    if (v74[9].i8[2] != 1)
    {
      if (!*(v25 + 72))
      {
        v155 = 22.0;
        goto LABEL_231;
      }

      v141 = re::VideoDefaults::logLevel(v141);
      if (v141 >= 3)
      {
        v226 = *re::videoLogObjects(v141);
        if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v226, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][VideoPlayerComponentHelper]->screenEntityAnimation :: Setting is Spatial Mode to true for the rounded corners", buf, 2u);
        }
      }
    }

    v155 = 46.0;
LABEL_231:
    *(this + 23) = v155;
    v156 = *re::videoLogObjects(v141);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v156, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] Force generating rounded corner for the first time showing the video", buf, 2u);
    }

    v142 = this + 12288;
    v143 = v227;
    goto LABEL_234;
  }

  v118 = *re::videoLogObjects(v24);
  v73 = this + 12288;
  if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v118, OS_LOG_TYPE_ERROR, "[VideoPlayerComponentHelper]->screenEntityAnimation ::  This content is not Screen Content and there is no Loading Asset", buf, 2u);
  }

LABEL_168:
  if (*(v25 + 48))
  {
    v119 = re::AssetHandle::loadedAsset<re::VideoAsset>((v25 + 40));
  }

  else
  {
    v119 = 0;
  }

  v120 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v121 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v121)
  {
    v122 = *(v121 + 72);
    v123 = *(v121 + 80);
    *(this + 1839) = v122;
    *(this + 1840) = v123;
    if (!v120)
    {
      goto LABEL_213;
    }
  }

  else
  {
    v122 = *(this + 14712);
    v123 = *(this + 14720);
    if (!v120)
    {
      goto LABEL_213;
    }
  }

  v124 = *(this + 3682) > 1.0;
  if (v119)
  {
    v125 = *(v119 + 208);
    v126 = v125 ? *(v125 + 5088) : 0.0;
    if (fabsf(v126) >= 0.000001)
    {
      v124 = 2;
    }
  }

  v127 = *(this + 3683) + 1.0;
  *(v120 + 264) = v122;
  *(v120 + 272) = v123;
  *(v120 + 280) = vmul_f32(vadd_f32(v122, v123), 0x3F0000003F000000);
  *(v120 + 288) = v127;
  *(v120 + 292) = v124;
  if (!v73[212])
  {
    *(v120 + 312) = 1065353216;
    *(v120 + 296) = re::ecs2::kDefaultVideoBlurParams;
    v73[236] = 0;
    goto LABEL_213;
  }

  if (*(this + 7) > 0.0 && re::ecs2::VideoComponent::isVideoBlurTextureAvailable(v120))
  {
    v128 = (this + 112);
    v129 = 10320;
    do
    {
      v130 = *v128;
      if (*v128)
      {
        v131 = 1;
      }

      else
      {
        v131 = v129 == 0;
      }

      v129 -= 2064;
      v128 += 258;
    }

    while (!v131);
    v132 = 28;
    if (v130)
    {
      v132 = 88;
    }

    v133 = *(this + v132);
    v134 = v73[212];
    if (v134 == 2)
    {
      v135 = *(this + 3130);
      if (v135 == 0.0)
      {
        *(this + 3129) = v133;
      }
    }

    else
    {
      v146 = 1.0;
      if ((v134 & 0xFE) != 2)
      {
LABEL_210:
        v149 = *(this + 3129);
        v150 = *(this + 3126);
        if (v150 == 0.0)
        {
          v150 = *(this + 3129);
        }

        *(v120 + 296) = v134;
        *(v120 + 300) = v146;
        *(v120 + 304) = v149;
        *(v120 + 308) = v150;
        *(v120 + 312) = v133;
        goto LABEL_213;
      }

      v135 = *(this + 3130);
    }

    v147 = v135 + a2;
    if (*(this + 3127) <= v147)
    {
      v147 = *(this + 3127);
    }

    *(this + 3130) = v147;
    v148 = fminf(v147 * *(this + 3128), 1.0);
    v146 = 1.0 - v148;
    if (v134 == 2)
    {
      v146 = v148;
    }

    if (v148 == 1.0)
    {
      LOBYTE(v134) = v134 == 2;
      *(this + 3130) = 0;
      v73[212] = v134;
    }

    goto LABEL_210;
  }

LABEL_213:
  if (*(v25 + 48))
  {
    v151 = re::AssetHandle::loadedAsset<re::VideoAsset>((v25 + 40));
    if (*(v151 + 8) == 1 && re::VideoDefaults::drmIconEnabled(v151))
    {
      re::ecs2::Entity::setSelfEnabled(v23, 1);
      if (*v229 == 1 || !*v229 && *(this + 3) == 1)
      {
        *&v153 = (*(a3[32] + 9) * 0.052083) / *(a3[32] + 8);
        HIDWORD(v153) = 1029002581;
        LODWORD(v152) = 1.0;
        v154 = *(v23 + 32);
        re::ecs2::TransformComponent::setLocalScale(v154, v153, v152, 0);
        re::ecs2::Component::markDirty(v154);
      }
    }

    else
    {
      re::ecs2::Entity::setSelfEnabled(v23, 0);
    }
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::regenerateScreenMesh(uint64_t a1, void *a2, uint64_t a3, re::AssetManager *a4, uint64_t a5, int a6, char a7, float a8, float a9)
{
  v13 = *&a5;
  v136 = *MEMORY[0x1E69E9840];
  v18 = a1 + 12288;
  v120 = a5;
  v19 = re::VideoDefaults::logEnabled(a1);
  if ((v19 & 1) != 0 || (v19 = re::VideoDefaults::logLevel(v19), v19 >= 2))
  {
    v86 = *re::videoLogObjects(v19);
    v19 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      v87 = *(v18 + 210);
      v88 = *(a1 + 32);
      *buf = 134219520;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = a8;
      *&buf[22] = 1024;
      *&buf[24] = a6;
      *&buf[28] = 2048;
      *&buf[30] = v88;
      *&buf[38] = 2048;
      *&buf[40] = v13;
      *v134 = 2048;
      *&v134[2] = v120.f32[1];
      LOWORD(v135) = 1024;
      *(&v135 + 2) = v87;
      _os_log_impl(&dword_1E1C61000, v86, OS_LOG_TYPE_DEFAULT, "[regenerateScreenMesh]: aspectRatio: %f, cornerRadiusInPts: %f, customUV: %d, m_currentVideoEntityScaleMax: %f, size: (%f, %f), m_isScreenDeferAspectRatioTransitionToApp: %d", buf, 0x40u);
    }
  }

  if (!a2)
  {
    return;
  }

  v20 = a2[4];
  if (!v20 || (*(v20 + 304) & 0x80) != 0)
  {
    return;
  }

  v21 = *(v20 + 256);
  if (!v21)
  {
    v89 = *re::videoLogObjects(v19);
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 2257;
    v90 = "VideoPlayerComponentHelper line: %d, videoEntityTFComp is nullptr";
    goto LABEL_85;
  }

  v22 = a2[32];
  if (!v22)
  {
    v89 = *re::videoLogObjects(v19);
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 2259;
    v90 = "VideoPlayerComponentHelper line: %d, tfComp is nullptr";
LABEL_85:
    _os_log_error_impl(&dword_1E1C61000, v89, OS_LOG_TYPE_ERROR, v90, buf, 8u);
    return;
  }

  v23 = re::ecs2::EntityComponentCollection::get((v20 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v23)
  {
    v24 = v23;
    if (*(v18 + 210) == 1)
    {
      v25 = v21[2];
      if (fminf(fminf(v25.f32[0], COERCE_FLOAT(v21[2].i64[1])), COERCE_FLOAT(HIDWORD(v21[2].i64[0]))) > 0.0)
      {
        __asm { FMOV            V1.4S, #1.0 }

        v31 = vdivq_f32(_Q1, v25);
        re::ecs2::TransformComponent::setLocalScale(v22, v31.i64[0], v31.i64[1], 0);
        v120 = *v21[2].f32;
        v32 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v119 = v32 != 0;
        if (v32)
        {
          v117 = v22;
          if (*(v32 + 216) && (v33 = re::AssetHandle::loadedAsset<re::VideoAsset>((v32 + 208))) != 0 && (v34 = v33, (v35 = *(v33 + 208)) != 0) && (v35[640].i8[0] & 1) != 0 && *(v33 + 973) == 1)
          {
            v36 = v35[638];
            v37 = re::VideoAsset::dimensions(v33);
            v38 = *(v34 + 208);
            if (!v38 || (v38[640].i8[0] & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:nn200100]();
              re::ecs2::VideoPlayerComponentHelper::impl::createInvertedPlane(v110, v111, v112, v113, v114, v115);
              return;
            }

            v120 = vmul_f32(v120, vdiv_f32(v36, v37));
            v39 = vdiv_f32(vadd_f32(vmul_f32(vsub_f32(v36, v37), 0x3F0000003F000000), v38[639]), vdiv_f32(v36, v120));
            v22 = v117;
            LODWORD(v40) = v39.i32[0];
            *(&v40 + 1) = -v39.f32[1];
            v41 = vaddq_f32(v117[4], v40);
            re::ecs2::TransformComponent::setLocalPosition(v21, v41.i64[0], v41.i64[1], 0);
            v42 = re::ecs2::Component::markDirty(v21);
            v32 = re::VideoDefaults::logEnabled(v42);
            if (!v32)
            {
              goto LABEL_28;
            }

            v43 = *re::videoLogObjects(v32);
            if (v120.f32[1] == 0.0)
            {
              v32 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
              if (v32)
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, "[PFRM] invalid aspect ratio due to 0 height in mesh size", buf, 2u);
              }
            }

            else
            {
              v32 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
              if (v32)
              {
                *buf = 134217984;
                *&buf[4] = (v120.f32[0] / v120.f32[1]);
                _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "[PFRM] new aspect ratio: %f", buf, 0xCu);
              }
            }
          }

          else
          {
            re::ecs2::TransformComponent::setLocalPosition(v21, 0, 0, 0);
            v32 = re::ecs2::Component::markDirty(v21);
          }

          v22 = v117;
        }

LABEL_28:
        v44 = re::VideoDefaults::logEnabled(v32);
        if (v44)
        {
          v96 = *re::videoLogObjects(v44);
          v97 = os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT);
          if (v97)
          {
            *buf = 134218240;
            *&buf[4] = v120.f32[0];
            *&buf[12] = 2048;
            *&buf[14] = v120.f32[1];
            _os_log_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] new mesh size: %f, %f", buf, 0x16u);
          }

          v98 = *re::videoLogObjects(v97);
          v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
          if (v99)
          {
            v100 = v98;
            v101 = v22[2].f32[0];
            v102 = v22[2].f32[1];
            v103 = v22[2].f32[2];
            *buf = 134218496;
            *&buf[4] = v101;
            *&buf[12] = 2048;
            *&buf[14] = v102;
            *&buf[22] = 2048;
            *&buf[24] = v103;
            _os_log_impl(&dword_1E1C61000, v100, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] screen entity local scale: %f, %f, %f", buf, 0x20u);
          }

          v104 = *re::videoLogObjects(v99);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            v105 = v104;
            v106 = v22[4].f32[0];
            v107 = v22[4].f32[1];
            v108 = v22[4].f32[2];
            *buf = 134218496;
            *&buf[4] = v106;
            *&buf[12] = 2048;
            *&buf[14] = v107;
            *&buf[22] = 2048;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v105, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] screen entity local translation: %f, %f, %f", buf, 0x20u);
          }
        }

LABEL_29:
        v45 = re::ecs2::Component::markDirty(v22);
        v46 = *re::videoLogObjects(v45);
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (v47)
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "[ScreenAnimation] Radius in Meters is still 0 after it should be, or maybe the app doesn't have CA context. Defaulting back to one to hopefully avoid possible UI issues", buf, 2u);
        }

        v48 = a8 * 0.001;
        v129 = 0.0;
        v127 = 0;
        *&v128[2] = 0;
        v131 = 1065353216;
        v132 = xmmword_1E3063230;
        v126 = v120;
        *v128 = v48;
        v130 = a6;
        if (a6)
        {
          v49 = re::VideoDefaults::logEnabled(v47);
          if (v49)
          {
            v92 = *re::videoLogObjects(v49);
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              v93 = *(v18 + 210);
              v94 = *(a1 + 24);
              v95 = *(a1 + 28);
              *buf = 134218752;
              *&buf[4] = v120.f32[0];
              *&buf[12] = 1024;
              *&buf[14] = v93;
              *&buf[18] = 2048;
              *&buf[20] = v94;
              *&buf[28] = 2048;
              *&buf[30] = v95;
              _os_log_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] updateCustomUVParams: planeGeometryWidth: %f, m_isScreenDeferAspectRatioTransitionToApp: %d, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", buf, 0x26u);
            }
          }

          v50 = *(a1 + 28);
          v51 = v120.f32[0];
          if (v50 <= 0.0)
          {
            v52 = *(a1 + 14728);
          }

          else
          {
            if (*(v18 + 210) == 1)
            {
              v51 = *(a1 + 24);
            }

            v52 = v51 / v50;
            *(a1 + 14728) = v52;
            if (v52 > 0.99 && v52 < 1.01)
            {
              *(a1 + 14728) = 1065353216;
              *(a1 + 14712) = 0;
              *(a1 + 14720) = 0x3F8000003F800000;
              v52 = 1.0;
            }
          }

          v131 = LODWORD(v52);
          v132 = *(v18 + 2424);
        }

        *&v128[4] = a9;
        v128[8] = a7;
        re::ecs2::createPlane(a2, &v126);
        v123 = 0;
        v124 = 0;
        v125 = 0;
        if (*(v24 + 200) == 1)
        {
          re::ecs2::buildCurvedCollisionShapeAssetHandle(buf, a4, a9, v48, v120.f32[0], v120.f32[1]);
        }

        else
        {
          v53.n128_u32[0] = v120.i32[0];
          re::ecs2::buildCollisionShapeAssetHandle(a4, v53, v120.f32[1], 0.0);
        }

        v54 = *&buf[8];
        v123 = *buf;
        v124 = *&buf[8];
        memset(buf, 0, 24);
        v125 = *&buf[16];
        re::AssetHandle::~AssetHandle(buf);
        re::AssetHandle::loadNow(v54, 0);
        v55 = a2[24];
        if (!v55)
        {
          v91 = *re::videoLogObjects(0);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = 2435;
            _os_log_error_impl(&dword_1E1C61000, v91, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, meshComponent is nullptr", buf, 8u);
          }

          goto LABEL_73;
        }

        re::ecs2::Component::markDirty(v55);
        v56 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v56)
        {
          v57 = v56;
          re::AssetHandle::operator=(v56 + 32, &v123);
          v58 = re::ecs2::Component::markDirty(v57);
        }

        else
        {
          v59 = *re::videoLogObjects(0);
          v58 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
          if (v58)
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_ERROR, "[ScreenAnimation] Can't update colliderComponent as it is nil for screenEntity", buf, 2u);
          }
        }

        v60 = *re::videoLogObjects(v58);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          *&buf[4] = v120.f32[0];
          *&buf[12] = 2048;
          *&buf[14] = v120.f32[1];
          *&buf[22] = 2048;
          *&buf[24] = v48;
          *&buf[32] = 2048;
          *&buf[34] = v129;
          _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] final size: (%f, %f), radiusInMeters: %f, bevelFrontDepthInMeters: %.4f", buf, 0x2Au);
        }

        v61 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v62 = v61;
        if (v61)
        {
          v63 = re::AssetHandle::loadedAsset<re::VideoAsset>((v61 + 208));
          if (v63)
          {
            v64 = re::AssetHandle::AssetHandle(v121, (v62 + 208));
            v65.i32[1] = v120.i32[1];
            v66 = vdup_n_s32(0x21Cu);
            v66.i32[0] = ((v120.f32[0] / v120.f32[1]) * 540.0);
            *v65.i32 = (v120.f32[0] / v120.f32[1]) * 24.0;
            v67 = *v65.i32;
            v65.i8[0] = *(v62 + 74);
            v68.i32[0] = 1;
            v118 = vmin_s32(vmax_s32(v66, 0), 0x80000000800);
            v116 = vmin_s32(vmax_s32(vbsl_s8(vdup_lane_s8(vceq_s8(v65, v68), 0), 0x4000000040, (v67 | 0x1800000000)), 0), 0x10000000100);
            v69 = *re::videoLogObjects(v64);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v70 = v69;
              v71 = v22[2].f32[0];
              v72 = v22[2].f32[1];
              *buf = 134219776;
              *&buf[4] = v120.f32[0];
              *&buf[12] = 2048;
              *&buf[14] = v120.f32[1];
              *&buf[22] = 1024;
              *&buf[24] = v118.i32[0];
              *&buf[28] = 1024;
              *&buf[30] = v118.i32[1];
              *&buf[34] = 1024;
              *&buf[36] = v116.i32[0];
              *&buf[40] = 1024;
              *&buf[42] = v116.i32[1];
              *&buf[46] = 2048;
              *v134 = v71;
              *&v134[8] = 2048;
              v135 = v72;
              _os_log_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->regenerateScreenMesh:: Size (%f, %f) : Specular Dimensions == x=%i y=%i && Diffuse Dimensions == x=%i y=%i && Transform Scale (%f, %f)", buf, 0x42u);
            }

            re::AssetHandle::mutateAssetCommon(v121);
            ++*(v122 + 69);
            v73 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(v121);
            if (v73)
            {
              *(v73 + 248) = v118;
              *(v73 + 232) = v116;
              v74 = v122;
              *(v122 + 256) = 1;
              re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v74);
              re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v122);
            }

            re::AssetHandle::payloadDidChangeIfPossible(v121);
            re::AssetHandle::~AssetHandle(v121);
            if (!a3)
            {
              goto LABEL_73;
            }

LABEL_61:
            if ((((*(a3 + 304) & 8) == 0) & ~v119) != 0)
            {
              goto LABEL_73;
            }

            v76 = *(a3 + 32);
            if (!v76 || (*(v76 + 304) & 0x80) != 0)
            {
              goto LABEL_73;
            }

            if (*(v62 + 216))
            {
              v63 = re::AssetHandle::loadedAsset<re::VideoAsset>((v62 + 208));
              if (*(v18 + 210))
              {
                if (!v63)
                {
                  goto LABEL_73;
                }

                v77 = *(v63 + 208);
                if (!v77 || (*(v77 + 5120) & 1) == 0)
                {
                  goto LABEL_73;
                }
              }

LABEL_71:
              v78 = v22[2].f32[0] * v120.f32[0];
              v79 = v78 * re::VideoDefaults::glowSizeXModifier(v63);
              v80 = vmuls_lane_f32(v22[2].f32[1], v120, 1);
              v82 = v80 * re::VideoDefaults::glowSizeYModifier(v81);
              v84 = re::VideoDefaults::logEnabled(v83);
              if (v84)
              {
                v109 = *re::videoLogObjects(v84);
                if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  *&buf[4] = v79;
                  *&buf[12] = 2048;
                  *&buf[14] = v82;
                  _os_log_impl(&dword_1E1C61000, v109, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->regenerateScreenMesh ::          glowSize.x : %f, glowSize.y : %f ", buf, 0x16u);
                }
              }

              re::ecs2::VideoPlayerComponentHelper::impl::createInvertedPlane(a1, a3, v79, v82, a9, v85);
              goto LABEL_73;
            }

            if ((*(v18 + 210) & 1) == 0)
            {
              goto LABEL_71;
            }

LABEL_73:
            re::AssetHandle::~AssetHandle(&v123);
            return;
          }
        }

        else
        {
          v75 = *re::videoLogObjects(0);
          v63 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
          if (v63)
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v75, OS_LOG_TYPE_ERROR, "[ScreenAnimation] Can't update spillMap as videoComponent is nil for screenEntity", buf, 2u);
            if (!a3)
            {
              goto LABEL_73;
            }

            goto LABEL_61;
          }
        }

        if (!a3)
        {
          goto LABEL_73;
        }

        goto LABEL_61;
      }
    }

    else
    {
      re::ecs2::TransformComponent::setLocalScale(v22, 0x3F8000003F800000, 1065353216, 0);
      if (*(v24 + 199) == 1)
      {
        v119 = 0;
        a8 = a8 / *(a1 + 32);
        goto LABEL_29;
      }
    }

    v119 = 0;
    goto LABEL_29;
  }

  v89 = *re::videoLogObjects(0);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 2262;
    v90 = "VideoPlayerComponentHelper line: %d, videoPlayerComponent is nullptr";
    goto LABEL_85;
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::createInvertedPlane(re::ecs2::VideoPlayerComponentHelper::impl *this, re::ecs2::Entity *a2, float a3, float a4, float a5, float a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = re::VideoDefaults::logEnabled(this);
  if (v11)
  {
    v14 = *re::videoLogObjects(v11);
    v11 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v15 = *(this + 12498);
      v16 = *(this + 6);
      v17 = *(this + 7);
      v22 = 134219520;
      v23 = a3;
      v24 = 2048;
      v25 = a4;
      v26 = 2048;
      v27 = 0;
      v28 = 1024;
      v29 = 0;
      v30 = 1024;
      v31 = v15;
      v32 = 2048;
      v33 = v16;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createInvertedPlaneAsset :: width: %f, height: %f, cornerRadius: %f, customUV: %d, m_isScreenDeferAspectRatioTransitionToApp: %d, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", &v22, 0x40u);
    }
  }

  if (a2)
  {
    v12 = re::VideoDefaults::logEnabled(v11);
    if (v12)
    {
      v18 = *re::videoLogObjects(v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(this + 12498);
        v20 = *(this + 6);
        v21 = *(this + 7);
        v22 = 134219520;
        v23 = a3;
        v24 = 2048;
        v25 = a4;
        v26 = 2048;
        v27 = 0;
        v28 = 1024;
        v29 = 0;
        v30 = 1024;
        v31 = v19;
        v32 = 2048;
        v33 = v20;
        v34 = 2048;
        v35 = v21;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] createPlane: width: %f, height: %f, cornerRadius: %f, customUV: %d, m_isScreenDeferAspectRatioTransitionToApp: %d, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", &v22, 0x40u);
      }
    }

    v13 = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *(v13 + 48) = a3;
    *(v13 + 52) = a4;
    *(v13 + 40) = 0;
    *(v13 + 36) = 0;
    *(v13 + 56) = 0;
    *(v13 + 32) = 16;
    *(v13 + 26) = 64;
    *(v13 + 64) = a5;
    *(v13 + 69) = 1;
    re::ecs2::Component::markDirty(v13);
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::updateAudioSrcPosition(uint64_t a1, re::ecs2::VideoAudioControlSystem *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  VideoAudioControlComponentUnderneathParent = re::ecs2::VideoAudioControlSystem::getVideoAudioControlComponentUnderneathParent(a2, a2);
  if (!VideoAudioControlComponentUnderneathParent || (v5 = *(VideoAudioControlComponentUnderneathParent + 2)) == 0)
  {
    VideoAudioControlComponentUnderneathParent = re::ecs2::VideoAudioTetherSystem::getAudioTetherControlComponentUnderneathParent(a2, v5);
    if (!VideoAudioControlComponentUnderneathParent)
    {
      return;
    }

    v5 = *(VideoAudioControlComponentUnderneathParent + 2);
    if (!v5)
    {
      return;
    }
  }

  v6 = *(v5 + 32);
  if (!v6)
  {
    v11 = *re::videoLogObjects(VideoAudioControlComponentUnderneathParent);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 2981;
    v12 = "VideoPlayerComponentHelper line: %d, audioTFComp is nullptr";
    goto LABEL_21;
  }

  if (!*(a2 + 32))
  {
    v11 = *re::videoLogObjects(VideoAudioControlComponentUnderneathParent);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 2983;
    v12 = "VideoPlayerComponentHelper line: %d, parentTFComp is nullptr";
LABEL_21:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 8u);
    return;
  }

  if (*(a1 + 2) == 1 || !*(a1 + 2) && *(a1 + 3) == 1)
  {
    re::TransformService::worldTransform(*(a1 + 14688), v5, 0, buf);
    re::TransformService::worldTransform(*(a1 + 14688), a2, 0, v15);
    v8 = vmvnq_s8(vceqq_f32(*buf, v15[0]));
    v8.i32[3] = v8.i32[2];
    if ((vmaxvq_u32(v8) & 0x80000000) != 0 || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v17, v15[1]))) & 0x80000000) != 0 || (v9 = vmvnq_s8(vceqq_f32(v18, v15[2])), v9.i32[3] = v9.i32[2], (vmaxvq_u32(v9) & 0x80000000) != 0))
    {
      v10 = re::VideoDefaults::logEnabled(v7);
      if (v10)
      {
        v13 = *re::videoLogObjects(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->updateAudioSrcPosition :: Video :: Updating the AudioSrc's World SRT", v14, 2u);
        }
      }

      re::TransformService::worldTransform(*(a1 + 14688), a2, 0, v14);
      re::ecs2::TransformComponent::setWorldSRT(v6, v14, 0);
      re::ecs2::Component::markDirty(v6);
    }
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::setVideoAssetContentInfo(re::VideoDefaults *a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = re::VideoDefaults::logEnabled(a1);
  if (v4)
  {
    v7 = *re::videoLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = a2[1];
      v10[0] = 67109376;
      v10[1] = v8;
      v11 = 1024;
      v12 = v9;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper::impl::VideoAssetContentInfo]: contentType is set to %d, stereoType is set to %d", v10, 0xEu);
    }
  }

  v5 = *(a1 + 2);
  v6 = *a2;
  if (v5 != v6)
  {
    *(a1 + 3) = v5;
    *(a1 + 2) = v6;
    *a1 = 1;
    *(a1 + 5) = 0;
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::handleEntitiesPosition(re::TransformService **this, re::ecs2::Entity *a2)
{
  v4 = re::VideoDefaults::logEnabled(this);
  if (v4)
  {
    v27 = *re::videoLogObjects(v4);
    v4 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Starting the process of updating the entity positions", buf, 2u);
    }
  }

  if (a2)
  {
    if (re::VideoDefaults::loadingTexAndHintEnabled(v4))
    {
      v5 = *(this + 1) == 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v6)
    {
      if (*(v6 + 72))
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = 2;
    if (!*(this + 2))
    {
      v8 = 3;
    }

    if (*(this + v8) == 1 || v7)
    {
      v10 = *(a2 + 43);
      if (v10)
      {
        v11 = *(a2 + 45);
        v12 = 8 * v10;
        v13 = 8 * v10;
        v14 = v11;
        while (1)
        {
          v15 = *v14;
          if ((*(*v14 + 36) ^ 0xF4664E2E6A44E25ALL) <= 1)
          {
            v6 = *(v15 + 37);
            if (v6 == "__InternalVPC-Screen__")
            {
              break;
            }

            v6 = strcmp(v6, "__InternalVPC-Screen__");
            if (!v6)
            {
              break;
            }
          }

          ++v14;
          v13 -= 8;
          if (!v13)
          {
            v15 = 0;
            break;
          }
        }

        while (1)
        {
          v16 = *v11;
          if ((*(*v11 + 36) ^ 0x931CC76C0DD179BALL) <= 1)
          {
            v6 = *(v16 + 37);
            if (v6 == "__InternalVPC-ScreenGlowEntity__")
            {
              break;
            }

            v6 = strcmp(v6, "__InternalVPC-ScreenGlowEntity__");
            if (!v6)
            {
              break;
            }
          }

          ++v11;
          v12 -= 8;
          if (!v12)
          {
            v16 = 0;
            break;
          }
        }

        if (v15)
        {
          v17 = *(v15 + 32);
          if (!v17)
          {
            v25 = *re::videoLogObjects(v6);
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 0;
            v26 = "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Screen Transform Component is nullptr";
            goto LABEL_46;
          }

          if (!*(a2 + 32))
          {
            v25 = *re::videoLogObjects(v6);
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 0;
            v26 = "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Screen Parent Transform Component is nullptr";
            goto LABEL_46;
          }

          re::TransformService::worldTransform(this[1836], v15, 0, buf);
          v31 = v33;
          re::TransformService::worldTransform(this[1836], a2, 0, buf);
          v30 = v33;
          v19 = vmvnq_s8(vceqq_f32(v31, v33));
          v19.i32[3] = v19.i32[2];
          if ((vmaxvq_u32(v19) & 0x80000000) != 0)
          {
            v20 = re::VideoDefaults::logEnabled(v18);
            if (v20)
            {
              v28 = *re::videoLogObjects(v20);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Updating the screenEntity's World Position", buf, 2u);
              }
            }

            v18 = re::ecs2::TransformComponent::setWorldPosition(v17, v30.i64[0], v30.i64[1]);
          }

          if (v16)
          {
            v21 = *(v16 + 32);
            if (v21)
            {
              re::TransformService::worldTransform(this[1836], v16, 0, buf);
              v23 = vmvnq_s8(vceqq_f32(v33, v30));
              v23.i32[3] = v23.i32[2];
              if ((vmaxvq_u32(v23) & 0x80000000) != 0)
              {
                v24 = re::VideoDefaults::logEnabled(v22);
                if (v24)
                {
                  v29 = *re::videoLogObjects(v24);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Updating the Screen Glow Entity World Position", buf, 2u);
                  }
                }

                re::ecs2::TransformComponent::setWorldPosition(v21, v30.i64[0], v30.i64[1]);
                re::ecs2::Component::markDirty(v21);
              }

              return;
            }

            v25 = *re::videoLogObjects(v18);
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 0;
            v26 = "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Screen Glow Entity Transform Component is nullptr";
LABEL_46:
            _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
          }
        }
      }
    }
  }
}

uint64_t re::ecs2::VideoPlayerComponentHelper::impl::isVideoEntityHierarchyValid(re::ecs2::VideoPlayerComponentHelper::impl *this, re::ecs2::Entity *a2)
{
  result = re::ecs2::VideoPlayerComponentHelper::impl::hasVideoEntityHierarchy(this, a2);
  if (result)
  {
    return re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
  }

  return result;
}

void re::ecs2::VideoPlayerComponentHelper::impl::startVideoBlurFadeIn(re::ecs2::VideoPlayerComponentHelper::impl *this, float a2, float a3)
{
  if (*(this + 12500) == 3)
  {
    v7 = v3;
    v8 = v4;
    v5 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Invalid blur transition.", v6, 2u);
    }
  }

  else if (!*(this + 12500))
  {
    *(this + 12500) = 2;
    *(this + 3126) = a2;
    *(this + 3127) = a3;
    *(this + 3128) = 1.0 / a3;
    *(this + 12524) = 1;
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::startVideoBlurFadeOut(re::ecs2::VideoPlayerComponentHelper::impl *this)
{
  v3 = *(this + 12500);
  if (v3 == 2)
  {
    v6 = v1;
    v7 = v2;
    v4 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Invalid blur transition.", v5, 2u);
    }
  }

  else if (v3 == 1)
  {
    *(this + 12500) = 3;
  }
}

uint64_t re::ecs2::VideoPlayerComponentHelper::impl::diffuseLightSpillNeeded(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1831);
  if (!WeakRetained)
  {
    return 0;
  }

  v2 = WeakRetained;
  v3 = (*(WeakRetained + 74) >> 3) & 1;
  v4 = *(WeakRetained + 3);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) == 0)
    {
      v5 = re::ecs2::EntityComponentCollection::get((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        if (*(v5 + 177) == 1)
        {
          v3 = 1;
        }

        else
        {
          v3 = v3;
        }
      }
    }
  }

  return v3;
}

void re::ecs2::VideoPlayerComponentHelper::impl::addAttachmentsToVideoComponent(re::ecs2::VideoPlayerComponentHelper::impl *this, re::ecs2::VideoComponent *a2)
{
  *&v52.var0 = 0xE7EFB84B1970EB62;
  v52.var1 = "REVideoAttachmentTextureVideoLoading";
  v53 = 0;
  v54 = &str_67;
  v3 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v52);
  if (v53)
  {
    if (v53)
    {
    }
  }

  v53 = 0;
  v54 = &str_67;
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  *&v52.var0 = 0;
  v52.var1 = &str_67;
  *&v49.var0 = 0xC49C914A9995F024;
  v49.var1 = "REVideoAttachmentTextureVideoBlur";
  v50 = 0;
  v51 = &str_67;
  v4 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v49);
  if (v50)
  {
    if (v50)
    {
    }
  }

  v50 = 0;
  v51 = &str_67;
  if (*&v49.var0)
  {
    if (*&v49.var0)
    {
    }
  }

  *&v49.var0 = 0;
  v49.var1 = &str_67;
  *&v46.var0 = 0xFFB9D6614348A962;
  v46.var1 = "REVideoAttachmentChannelID1TexturePlane0";
  v47 = 0;
  v48 = &str_67;
  v5 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v46);
  if (v47)
  {
    if (v47)
    {
    }
  }

  v47 = 0;
  v48 = &str_67;
  if (*&v46.var0)
  {
    if (*&v46.var0)
    {
    }
  }

  *&v46.var0 = 0;
  v46.var1 = &str_67;
  *&v43.var0 = 0xFFB9D6614348A964;
  v43.var1 = "REVideoAttachmentChannelID1TexturePlane1";
  v44 = 0;
  v45 = &str_67;
  v6 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v43);
  if (v44)
  {
    if (v44)
    {
    }
  }

  v44 = 0;
  v45 = &str_67;
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }

  *&v43.var0 = 0;
  v43.var1 = &str_67;
  *&v40.var0 = 0xFFB9D6614348A966;
  v40.var1 = "REVideoAttachmentChannelID1TexturePlane2";
  v41 = 0;
  v42 = &str_67;
  v7 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v40);
  if (v41)
  {
    if (v41)
    {
    }
  }

  v41 = 0;
  v42 = &str_67;
  if (*&v40.var0)
  {
    if (*&v40.var0)
    {
    }
  }

  *&v40.var0 = 0;
  v40.var1 = &str_67;
  *&v37.var0 = 0xA572F05B07043CA0;
  v37.var1 = "REVideoAttachmentChannelID2TexturePlane0";
  v38 = 0;
  v39 = &str_67;
  v8 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v37);
  if (v38)
  {
    if (v38)
    {
    }
  }

  v38 = 0;
  v39 = &str_67;
  if (*&v37.var0)
  {
    if (*&v37.var0)
    {
    }
  }

  *&v37.var0 = 0;
  v37.var1 = &str_67;
  *&v34.var0 = 0xA572F05B07043CA2;
  v34.var1 = "REVideoAttachmentChannelID2TexturePlane1";
  v35 = 0;
  v36 = &str_67;
  v9 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0;
  v36 = &str_67;
  if (*&v34.var0)
  {
    if (*&v34.var0)
    {
    }
  }

  *&v34.var0 = 0;
  v34.var1 = &str_67;
  *&v31.var0 = 0xA572F05B07043CA4;
  v31.var1 = "REVideoAttachmentChannelID2TexturePlane2";
  v32 = 0;
  v33 = &str_67;
  v10 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v31);
  if (v32)
  {
    if (v32)
    {
    }
  }

  v32 = 0;
  v33 = &str_67;
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0;
  v31.var1 = &str_67;
  *&v28.var0 = 0x83807E236D5174B2;
  v28.var1 = "REVideoAttachmentConstantYCbCrMatrix";
  v29 = 0;
  v30 = &str_67;
  v11 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v28);
  if (v29)
  {
    if (v29)
    {
    }
  }

  v29 = 0;
  v30 = &str_67;
  if (*&v28.var0)
  {
    if (*&v28.var0)
    {
    }
  }

  *&v28.var0 = 0;
  v28.var1 = &str_67;
  *&v25.var0 = 0x652E145D102D3908;
  v25.var1 = "REVideoAttachmentConstantImageFunction";
  v26 = 0;
  v27 = &str_67;
  v12 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v25);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0;
  v27 = &str_67;
  if (*&v25.var0)
  {
    if (*&v25.var0)
    {
    }
  }

  *&v25.var0 = 0;
  v25.var1 = &str_67;
  *&v22.var0 = 0x963DA5D75AB5D342;
  v22.var1 = "REVideoAttachmentSpill";
  v23 = 0;
  v24 = &str_67;
  v13 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v22);
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }

  *&v22.var0 = 0;
  v22.var1 = &str_67;
  *&v19.var0 = 0xFFFDBC97C8B59A5ELL;
  v19.var1 = "REVideoAttachmentChannelID1TextureSpill";
  v20 = 0x99DA15AE15EB5CE4;
  v21 = "spillDiffuse[0]";
  v14 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v19);
  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0;
  v21 = &str_67;
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  *&v19.var0 = 0;
  v19.var1 = &str_67;
  *&v16.var0 = 0x15DA6AD9A5BBA760;
  v16.var1 = "REVideoAttachmentChannelID2TextureSpill";
  v17 = 0x99DA15AE15EB5D22;
  v18 = "spillDiffuse[1]";
  v15 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v16);
  if (v17)
  {
    if (v17)
    {
    }
  }

  v17 = 0;
  v18 = &str_67;
  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }
}

re *re::ecs2::VideoPlayerComponentHelper::VideoPlayerComponentHelper(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 14808, 8);
  bzero(v9, 0x39D8uLL);
  re::ecs2::VideoPlayerComponentHelper::impl::impl(v9);
  *a1 = v9;
  v9[1836] = a2;
  v9[1837] = a3;
  v9[1838] = a4;
  return a1;
}

void re::ecs2::VideoPlayerComponentHelper::~VideoPlayerComponentHelper(id **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = re::globalAllocators(this)[2];
    re::ecs2::VideoPlayerComponentHelper::impl::~impl(v1);
    (*(*v2 + 40))(v2, v1);
  }
}

void re::ecs2::VideoPlayerComponentHelper::preBufferRetrievalUpdate(unsigned __int8 **a1, unsigned __int8 *a2, __int128 *a3, re::AssetHandle *a4, re::AssetManager *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  re::AssetHandle::AssetHandle(v13, a4);
  re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(v12, a2, a3, v13, a5, a6, a7);
  re::AssetHandle::~AssetHandle(v13);
}

void re::ecs2::VideoPlayerComponentHelper::updateAudioSrcPosition(uint64_t *a1, re::ecs2::VideoAudioControlSystem *a2, const re::AssetHandle *a3)
{
  v4 = *a1;
  re::AssetHandle::AssetHandle(v5, a3);
  re::ecs2::VideoPlayerComponentHelper::impl::updateAudioSrcPosition(v4, a2);
  re::AssetHandle::~AssetHandle(v5);
}

void re::ecs2::VideoPlayerComponentHelper::setVideo(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const re::AssetHandle *a7)
{
  v12 = *a1;
  re::AssetHandle::AssetHandle(v13, a7);
  re::ecs2::VideoPlayerComponentHelper::impl::setVideo(v12, a2, a3, a4, a5, a6, v13);
  re::AssetHandle::~AssetHandle(v13);
}

unint64_t re::ecs2::VideoPlayerComponentHelper::getViewportInfoForCurrentFrame(re::ecs2::VideoPlayerComponentHelper *this, const re::ecs2::Scene *a2)
{
  if (this && (v2 = *(re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8), *(this + 28) > v2) && (v3 = *(*(this + 30) + 8 * v2)) != 0 && (v4 = *(v3 + 384)) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(v3 + 400);
    v8 = 8 * v4;
    do
    {
      v9 = *v7;
      v10 = (*v7)[2];
      if (v10 && (*(v10 + 304) & 1) != 0)
      {
        v12 = 0;
        v13 = 0;
        re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(v9, &v13, &v12);
        if (!((v13 == 0) | v6 & 1))
        {
          v6 = 1;
        }

        if (v12 && (v5 & 1) == 0)
        {
          v5 = 1;
        }
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return v6 | (v5 << 8);
}

uint64_t *re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(uint64_t *this, unint64_t *a2, unint64_t *a3)
{
  v5 = this;
  *a2 = 0;
  *a3 = 0;
  v10 = this;
  v12 = 0;
  if (this[27])
  {
    v6 = 0;
  }

  else if (this[32])
  {
    v6 = 1;
  }

  else
  {
    if (!this[37])
    {
      return this;
    }

    v6 = 2;
  }

  v11 = v6;
  do
  {
    if (*(re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(&v10) + 200))
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    ++*v7;
    this = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v10);
  }

  while (v10 != v5 || v11 != 3 || v12 != 0);
  return this;
}

void media::OpacityAnimationEngine::~OpacityAnimationEngine(media::OpacityAnimationEngine *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 8 * v2;
    v4 = (this + 64);
    do
    {
      v5 = *v4++;
      re::internal::destroyPersistent<media::FloatAnimation>("~OpacityAnimationEngine", 23, v5);
      v3 -= 8;
    }

    while (v3);
  }

  *(this + 6) = 0;
  ++*(this + 14);
  re::FunctionBase<24ul,void ()(float)>::destroyCallable(this);
}

re::ecs2::VideoPlayerComponentHelper::impl *re::ecs2::VideoPlayerComponentHelper::impl::impl(re::ecs2::VideoPlayerComponentHelper::impl *this)
{
  v2 = this + 12288;
  *(this + 7) = 0;
  *this = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 2) = _D0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  v8 = re::globalAllocators(this);
  *(this + 9) = v8[2];
  *(this + 10) = 0;
  *(this + 88) = xmmword_1E308AA90;
  *(this + 13) = 0x3F80000000000000;
  v9 = -12384;
  do
  {
    v10 = this + v9;
    *(v10 + 1562) = 0;
    *(v10 + 3126) = 0;
    v9 += 2064;
  }

  while (v9);
  *(this + 3124) = 0x1000000;
  v2[212] = 0;
  *(this + 12504) = 0u;
  *(this + 12517) = 0;
  *(this + 1569) = re::globalAllocators(v8)[2];
  *(this + 1570) = 0;
  *(this + 3142) = 0;
  *(this + 1572) = 0;
  *(this + 3146) = 0;
  objc_initWeak(this + 1830, 0);
  objc_initWeak(this + 1831, 0);
  objc_initWeak(this + 1832, 0);
  *(this + 14664) = 0u;
  *(this + 14680) = 0u;
  *(this + 14696) = 0u;
  *(this + 1839) = 0;
  *(this + 1840) = 0x3F8000003F800000;
  *(this + 1841) = 1065353216;
  *(v2 + 1224) = 0;
  *(this + 3685) = 0;
  v2[2456] = -1;
  v2[2464] = 0;
  v2[2488] = 0;
  *(this + 1848) = 0;
  *(this + 1850) = 0;
  *(this + 1849) = 0;
  return this;
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2);
  switch(v1)
  {
    case 2:
      v2 = a1[2];
      v7 = *(*a1 + 296);
      if (v7 > v2)
      {
        v4 = *(*a1 + 312);
        v6 = 1008;
        return v4 + v2 * v6;
      }

LABEL_18:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v14 = v2;
      v15 = v7;
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v28 = 789;
      v29 = 2048;
      v30 = v14;
      v31 = 2048;
      v32 = v15;
      _os_log_send_and_compose_impl(v17, &v24, &v33, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    case 1:
      v2 = a1[2];
      v5 = *(*a1 + 256);
      if (v5 > v2)
      {
        v4 = *(*a1 + 272);
        goto LABEL_8;
      }

      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v9 = MEMORY[0x1E69E9C10];
      v10 = v2;
      v11 = v5;
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v28 = 789;
      v29 = 2048;
      v30 = v10;
      v31 = 2048;
      v32 = v11;
      _os_log_send_and_compose_impl(v12, &v24, &v33, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
      goto LABEL_18;
    case 0:
      v2 = a1[2];
      v3 = *(*a1 + 216);
      if (v3 > v2)
      {
        v4 = *(*a1 + 232);
LABEL_8:
        v6 = 960;
        return v4 + v2 * v6;
      }

LABEL_22:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = v2;
      v20 = v3;
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v28 = 789;
      v29 = 2048;
      v30 = v19;
      v31 = 2048;
      v32 = v20;
      _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
      break;
  }

  return 0;
}

uint64_t re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::move(a1, v9);
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

void *re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::move(void *result, uint64_t a2)
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
        result = re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::allocEntry(v4, *(v7 + v5 + 40) % *(v4 + 6), *(v7 + v5 + 40));
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

void re::internal::Callable<re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(float,vpc::ViewportInfo const&,re::ecs2::Entity *,re::AssetHandle,re::AssetManager *,re::RenderManager *,re::VideoManager *)::$_0,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::operator()(uint64_t a1, float *a2, float *a3, float *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v7 + 14640));
  if (WeakRetained)
  {

    v10 = re::VideoDefaults::logEnabled(v9);
    if (v10)
    {
      v34 = *re::videoLogObjects(v10);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v38 = v36;
        v39 = 2048;
        v40 = v5;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] m_screenMeshAnimationEngine.onUpdate: aspect ratio: %f, cornerRadius: %f", buf, 0x16u);
      }
    }

    v11 = objc_loadWeakRetained((v7 + 14640));
    v12 = v11 - 8;
    if (!v11)
    {
      v12 = 0;
    }

    v13 = *(v12 + 4);
    if ((*(v13 + 304) & 0x80) != 0)
    {
      v13 = 0;
    }

    v14 = re::ecs2::EntityComponentCollection::get((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v11)
    {
    }

    if (v14)
    {
      v15 = objc_loadWeakRetained((v7 + 14640));
      v16 = v15 - 8;
      if (!v15)
      {
        v16 = 0;
      }

      v17 = *(v16 + 4);
      if ((*(v17 + 304) & 0x80) != 0)
      {
        v17 = 0;
      }

      v18 = *(re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 196);
      if (v15)
      {
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = objc_loadWeakRetained((v7 + 14640));
    v20 = v19;
    if (v19)
    {
      v21 = v19 - 8;
    }

    else
    {
      v21 = 0;
    }

    v22 = objc_loadWeakRetained((v7 + 14648));
    v23 = v22;
    if (v22)
    {
      v24 = v22 - 8;
    }

    else
    {
      v24 = 0;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *&_D0 = v36;
    re::ecs2::VideoPlayerComponentHelper::impl::regenerateScreenMesh(v7, v21, v24, *(a1 + 16), _D0, 1, v18, v5, v6);
    if (v23)
    {
    }

    if (v20)
    {
    }

    v30 = objc_loadWeakRetained((v7 + 14640));
    v31 = v30 - 8;
    if (!v30)
    {
      v31 = 0;
    }

    v32 = re::ecs2::EntityComponentCollection::get((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v33 = v32;
    if (v30)
    {
    }

    if (v33)
    {
      if (*(v7 + 28) < v36)
      {
        *(v33 + 257) = 1;
      }
    }

    else
    {
      v35 = *re::videoLogObjects(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v38) = 1384;
        _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }
}

uint64_t re::internal::Callable<re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(float,vpc::ViewportInfo const&,re::ecs2::Entity *,re::AssetHandle,re::AssetManager *,re::RenderManager *,re::VideoManager *)::$_0,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF440;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(float,vpc::ViewportInfo const&,re::ecs2::Entity *,re::AssetHandle,re::AssetManager *,re::RenderManager *,re::VideoManager *)::$_0,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF440;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::ecs2::allocInfo_AudioMixerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_240))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7740, "AudioMixerComponent");
    __cxa_guard_release(&_MergedGlobals_240);
  }

  return &unk_1EE1A7740;
}

void re::ecs2::initInfo_AudioMixerComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x8F1F37482BD3D894;
  v20[1] = "AudioMixerComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A7720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7720))
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
    qword_1EE1A7730 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "mixGroups";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A7738 = v18;
    __cxa_guard_release(&qword_1EE1A7720);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A7730;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioMixerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioMixerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioMixerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioMixerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219AudioMixerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

uint64_t *re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info) = &unk_1F5CEF5C0;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v23);
    v3 = re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v23);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint64_t(1, a2);
  v12 = re::introspect_AudioMixGroup(1, v7, v8, v9, v10, v11);
  if ((re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v13 = v12;
    re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::isInitialized = 1;
    v14 = *(v12 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info, 0);
    qword_1EE186218 = 0x3000000007;
    dword_1EE186220 = v14;
    word_1EE186224 = 0;
    *&xmmword_1EE186228 = 0;
    *(&xmmword_1EE186228 + 1) = 0xFFFFFFFFLL;
    qword_1EE186238 = v6;
    unk_1EE186240 = 0;
    qword_1EE186248 = v13;
    unk_1EE186250 = 0;
    re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info = &unk_1F5CEF5C0;
    re::IntrospectionRegistry::add(v15, v16);
    re::getPrettyTypeName(&v23, &re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info);
    if (BYTE8(v23))
    {
      v17 = v24;
    }

    else
    {
      v17 = &v23 + 9;
    }

    if (v23 && (BYTE8(v23) & 1) != 0)
    {
      (*(*v23 + 40))();
    }

    v18 = v6[2];
    v22 = *(v13 + 32);
    v23 = v18;
    xmmword_1EE186228 = v21;
    if (v25)
    {
      if (v25)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v19 = re::introspectionSharedMutex(v12);
    std::__shared_mutex_base::unlock(v19);
  }

  return &re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::ecs2::AudioMixerComponent>(int a1, int a2, ArcSharedObject *this)
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
  *v3 = &unk_1F5CEF4A8;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioMixerComponent>(ArcSharedObject *a1)
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
  *v1 = &unk_1F5CEF4A8;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *(v1 + 116) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_AudioMixerSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A7728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7728))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A77D0, "AudioMixerSystem");
    __cxa_guard_release(&qword_1EE1A7728);
  }

  return &unk_1EE1A77D0;
}

void re::ecs2::initInfo_AudioMixerSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xBEC6F30AB275C04;
  v8[1] = "AudioMixerSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioMixerSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioMixerSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioMixerSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioMixerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioMixerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioMixerSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioMixerSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::AudioMixerSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CEF500;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::AudioMixerSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CEF500;
  result[28] = 0;
  return result;
}

void re::ecs2::AudioMixerComponent::~AudioMixerComponent(re::ecs2::AudioMixerComponent *this)
{
  *this = &unk_1F5CEF4A8;
  v2 = (this + 32);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 10);
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioMixerComponent::~AudioMixerComponent(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::AudioMixerComponent::markMixGroupGainChangeClean(re::ecs2::AudioMixerComponent *this, unint64_t a2)
{
  v5 = a2;
  result = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v5);
  if (result)
  {
    v4 = *(result + 124);
    return re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(this + 80, &v5, &v4);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 152 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v13);
  v7 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::AudioMixGroup const&>(a1, &v13, a2, a3);
  }

  ++*(a1 + 40);
  v9 = *(a1 + 16) + 152 * v7;
  v8 = v9 + 16;
  re::DynamicString::operator=((v9 + 16), a3);
  *(v9 + 48) = *(a3 + 32);
  re::DynamicArray<unsigned long long>::operator=(v9 + 64, (a3 + 48));
  v10 = *(a3 + 120);
  v11 = *(a3 + 104);
  *(v9 + 104) = *(a3 + 88);
  *(v9 + 120) = v11;
  *(v9 + 136) = v10;
  return v8;
}

_anonymous_namespace_ *re::ecs2::AudioMixerSystem::willAddSystemToECSService(re::ecs2::AudioMixerSystem *this)
{
  result = *(this + 5);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v3);
    *(this + 28) = result;
  }

  return result;
}

double re::ecs2::AudioMixerSystem::willAddSceneToECSService(re::ecs2::AudioMixerSystem *this, re::ecs2::Scene *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v5 = this;
    *(&v5 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::activateComponents,re::ecs2::AudioMixerSystem>;
    v6 = 0;
    v7 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 96), &v5);
    *&v5 = this;
    *(&v5 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::deactivateComponents,re::ecs2::AudioMixerSystem>;
    v6 = 0;
    v7 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 184), &v5);
  }

  return result;
}

void re::ecs2::AudioMixerSystem::willRemoveSceneFromECSService(re::ecs2::AudioMixerSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::activateComponents,re::ecs2::AudioMixerSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 96, &v4);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::deactivateComponents,re::ecs2::AudioMixerSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 184, &v4);
  }
}

void *re::ecs2::AudioMixerSystem::update(void *result, int a2, uint64_t a3)
{
  v175 = *MEMORY[0x1E69E9840];
  if (result[28])
  {
    v5 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&v160);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v159, 3095, v5, 1, 0, 0);
    v8 = *(a3 + 200);
    if (!v8)
    {
      goto LABEL_246;
    }

    v9 = *(a3 + 216);
    v148 = &v9[v8];
    v10 = *&a2;
    v11 = &unk_1EE187000;
    __asm { FMOV            V9.2S, #1.0 }

    v147 = v5;
    while (1)
    {
      v16 = *v9;
      v17 = (*(**(v5 + 224) + 16))(*(v5 + 224), *v9);
      if (!v17)
      {
        goto LABEL_245;
      }

      v150 = v9;
      v18 = *(*(v16 + 104) + 288);
      v151 = v17;
      v19 = (*(*v17 + 744))();
      v166 = 0u;
      v167 = 0u;
      v168 = 1065353216;
      v157 = v16;
      v20 = re::ecs2::SceneComponentTable::get((v16 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v20)
      {
        v21 = *(v20 + 384);
        if (v21)
        {
          v22 = *(v20 + 400);
          v23 = 8 * v21;
          while (1)
          {
            v24 = *v22;
            v25 = *(*v22 + 16);
            if (v25)
            {
              break;
            }

LABEL_22:
            ++v22;
            v23 -= 8;
            if (!v23)
            {
              goto LABEL_23;
            }
          }

          v26 = *(v25 + 216);
          if (!v26)
          {
            goto LABEL_12;
          }

          if (re::ecs2::NetworkComponent::owningProcessType(*(v25 + 216)))
          {
LABEL_18:
            v29 = re::ecs2::EntityComponentCollection::get((*(v24 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v29)
            {
              v30 = (v29 + 32);
              v31 = (v29 + 32);
            }

            else
            {
              v30 = &re::kInvalidAudioPlaybackConnectionIdentifier;
              v31 = &re::kInvalidAudioPlaybackConnectionIdentifier;
            }

            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v166, v30, v31);
            goto LABEL_22;
          }

          v25 = *(v24 + 16);
          if (v25)
          {
LABEL_12:
            v27 = re::ecs2::EntityComponentCollection::get((v25 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v27)
            {
              v25 = *(v27 + 32);
            }

            else
            {
              v25 = 0;
            }
          }

          if (v25 != v19)
          {
            v28 = re::ecs2::EntityComponentCollection::getOrAdd((*(v24 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            *(v28 + 4) = v19;
            if (v26)
            {
              re::ecs2::NetworkComponent::markDirty(v26, v28);
            }
          }

          goto LABEL_18;
        }
      }

LABEL_23:
      v32 = re::ecs2::SceneComponentTable::get((v157 + 200), v11[491]);
      if (v32)
      {
        v33 = *(v32 + 384);
        if (v33)
        {
          v34 = *(v32 + 400);
          v35 = 8 * v33;
          do
          {
            v36 = *(*v34 + 16);
            if (v36)
            {
              v37 = *(v36 + 216);
              if (!v37 || !re::ecs2::NetworkComponent::owningProcessType(*(v36 + 216)))
              {
                v38 = re::ecs2::EntityComponentCollection::getOrAdd((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
                if (*(v38 + 4) != v19)
                {
                  *(v38 + 4) = v19;
                  if (v37)
                  {
                    re::ecs2::NetworkComponent::markDirty(v37, v38);
                  }
                }
              }
            }

            v34 += 8;
            v35 -= 8;
          }

          while (v35);
        }
      }

      if (((*(*v151 + 568))(v151) & 1) == 0)
      {
        v136 = re::ecs2::SceneComponentTable::get((v157 + 200), v11[491]);
        if (v136)
        {
          v137 = *(v136 + 384);
          if (v137)
          {
            v138 = *(v136 + 400);
            v139 = &v138[v137];
            do
            {
              v140 = *v138;
              v141 = *(*v138 + 64);
              if (v141)
              {
                v142 = 0;
                v143 = *(v140 + 48);
                while (1)
                {
                  v144 = *v143;
                  v143 += 38;
                  if (v144 < 0)
                  {
                    break;
                  }

                  if (v141 == ++v142)
                  {
                    LODWORD(v142) = *(*v138 + 64);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v142) = 0;
              }

LABEL_242:
              while (v142 != v141)
              {
                v145 = *(v140 + 48) + 152 * v142;
                re::ecs2::AudioMixerComponent::markMixGroupGainChangeClean(v140, *(v145 + 48));
                re::AudioMixGroup::applyRamp((v145 + 16), v10);
                v146 = *(v140 + 64);
                if (v146 <= v142 + 1)
                {
                  v146 = v142 + 1;
                }

                while (v146 - 1 != v142)
                {
                  LODWORD(v142) = v142 + 1;
                  if ((*(*(v140 + 48) + 152 * v142) & 0x80000000) != 0)
                  {
                    goto LABEL_242;
                  }
                }

                LODWORD(v142) = v146;
              }

              ++v138;
            }

            while (v138 != v139);
          }
        }

        goto LABEL_244;
      }

      v39 = v157;
      v158 = v167;
      if (!v167)
      {
        goto LABEL_244;
      }

      v152 = v18 >> 1;
      do
      {
        v40 = *(v39 + 224);
        v41 = *(re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
        if (v40 <= v41)
        {
          goto LABEL_225;
        }

        v42 = *(*(v157 + 240) + 8 * v41);
        if (!v42)
        {
          goto LABEL_225;
        }

        v43 = *(v42 + 384);
        if (!v43)
        {
          goto LABEL_225;
        }

        v44 = 0;
        v45 = 0;
        v46 = v158[2];
        v47 = *(v42 + 400);
        v48 = 8 * v43;
        do
        {
          v49 = *v47;
          v50 = *(*v47 + 16);
          if (v50 && (*(v50 + 304) & 1) != 0)
          {
            v51 = re::ecs2::EntityComponentCollection::get((v50 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            v52 = v51 ? *(v51 + 32) : 0;
            if (v52 == v46)
            {
              v53 = *(*(v49 + 16) + 216);
              if (!v53)
              {
                goto LABEL_52;
              }

              v54 = re::ecs2::NetworkComponent::owningProcessType(v53);
              if (((v54 != 0) & v44) == 0)
              {
                v45 = v49;
                v44 = 1;
              }

              if (!v54)
              {
                goto LABEL_52;
              }
            }
          }

          ++v47;
          v48 -= 8;
        }

        while (v48);
        v49 = v45;
        if ((v44 & 1) == 0)
        {
          goto LABEL_225;
        }

LABEL_52:
        v55 = *(*(v49 + 16) + 216);
        if (v55)
        {
          v56 = re::ecs2::NetworkComponent::owningProcessType(v55);
          if (v56)
          {
            _ZF = v158[2] == 0;
          }

          else
          {
            _ZF = 0;
          }

          if (_ZF)
          {
            goto LABEL_225;
          }

          v149 = v56 != 0;
        }

        else
        {
          v149 = 0;
        }

        *__p = 0u;
        *v164 = 0u;
        v165 = 1065353216;
        v58 = re::ecs2::SceneComponentTable::get((v157 + 200), v11[491]);
        if (!v58)
        {
          goto LABEL_116;
        }

        v59 = *(v58 + 384);
        if (!v59)
        {
          goto LABEL_116;
        }

        v60 = *(v58 + 400);
        v155 = &v60[v59];
        do
        {
          v61 = *v60;
          v62 = *(re::ecs2::EntityComponentCollection::get((*(*v60 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType) + 32);
          if (v62 != v158[2])
          {
            goto LABEL_71;
          }

          v153 = v60;
          v63 = *(v61 + 64);
          if (v63)
          {
            v64 = 0;
            v65 = *(v61 + 48);
            while (1)
            {
              v66 = *v65;
              v65 += 38;
              if (v66 < 0)
              {
                break;
              }

              if (v63 == ++v64)
              {
                v64 = *(v61 + 64);
                break;
              }
            }
          }

          else
          {
            v64 = 0;
          }

          if (v63 == v64)
          {
            goto LABEL_70;
          }

          LODWORD(v67) = v64;
          do
          {
            v68 = (*(v61 + 48) + 152 * v64 + 16);
            re::DynamicString::DynamicString(&v169, v68);
            v162.__r_.__value_.__r.__words[0] = v62;
            v69 = re::Hash<re::DynamicString>::operator()(&__dst, &v169);
            MurmurHash3_x64_128(&v162, 8uLL, 0, &__dst);
            v70 = *&__dst.__r_.__value_.__l.__data_;
            if (v169)
            {
              if (BYTE8(v169))
              {
                (*(*v169 + 40))();
              }

              v169 = 0u;
              v170 = 0u;
            }

            v71 = ((v69 << 6) - 0x61C8864680B583E9 + (v69 >> 2) + ((*(&v70 + 1) - 0x61C8864680B583E9 + (v70 << 6) + (v70 >> 2)) ^ v70)) ^ v69;
            if (!__p[1])
            {
              goto LABEL_94;
            }

            v72 = vcnt_s8(__p[1]);
            v72.i16[0] = vaddlv_u8(v72);
            if (v72.u32[0] > 1uLL)
            {
              v73 = ((v69 << 6) - 0x61C8864680B583E9 + (v69 >> 2) + ((*(&v70 + 1) - 0x61C8864680B583E9 + (v70 << 6) + (v70 >> 2)) ^ v70)) ^ v69;
              if (__p[1] <= v71)
              {
                v73 = v71 % __p[1];
              }
            }

            else
            {
              v73 = (__p[1] - 1) & v71;
            }

            v74 = *(__p[0] + v73);
            if (!v74 || (v75 = *v74) == 0)
            {
LABEL_94:
              operator new();
            }

            while (1)
            {
              v76 = v75[1];
              if (v76 == v71)
              {
                break;
              }

              if (v72.u32[0] > 1uLL)
              {
                if (v76 >= __p[1])
                {
                  v76 %= __p[1];
                }
              }

              else
              {
                v76 &= __p[1] - 1;
              }

              if (v76 != v73)
              {
                goto LABEL_94;
              }

LABEL_93:
              v75 = *v75;
              if (!v75)
              {
                goto LABEL_94;
              }
            }

            if (v75[2] != v71)
            {
              goto LABEL_93;
            }

            v78 = v75[4];
            v77 = v75[5];
            if (v78 >= v77)
            {
              v80 = v75[3];
              v81 = (v78 - v80) >> 4;
              v82 = v81 + 1;
              if (!((v81 + 1) >> 60))
              {
                v83 = v77 - v80;
                if (v83 >> 3 > v82)
                {
                  v82 = v83 >> 3;
                }

                if (v83 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v84 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = v82;
                }

                if (v84)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::AudioMixerSystem::AudioMixGroupMergeData>>(v84);
                }

                v85 = (16 * v81);
                *v85 = v68;
                v85[1] = v61;
                v79 = 16 * v81 + 16;
                v86 = v75[3];
                v87 = v75[4] - v86;
                v88 = 16 * v81 - v87;
                memcpy(v85 - v87, v86, v87);
                v89 = v75[3];
                v75[3] = v88;
                v75[4] = v79;
                v75[5] = 0;
                if (v89)
                {
                  operator delete(v89);
                }

                goto LABEL_107;
              }

LABEL_248:
              std::string::__throw_length_error[abi:nn200100]();
            }

            *v78 = v68;
            v78[1] = v61;
            v79 = (v78 + 2);
LABEL_107:
            v75[4] = v79;
            v90 = *(v61 + 64);
            if (v90 <= v67 + 1)
            {
              v91 = (v67 + 1);
            }

            else
            {
              v91 = v90;
            }

            while (v91 - 1 != v67)
            {
              v67 = (v67 + 1);
              if ((*(*(v61 + 48) + 152 * v67) & 0x80000000) != 0)
              {
                v64 = v67;
                LODWORD(v91) = v67;
                goto LABEL_114;
              }
            }

            v64 = v91;
LABEL_114:
            LODWORD(v67) = v91;
          }

          while (v90 != v91);
LABEL_70:
          v60 = v153;
LABEL_71:
          ++v60;
        }

        while (v60 != v155);
LABEL_116:
        v92 = v164[0];
        if (v164[0])
        {
          while (1)
          {
            v94 = v92[3];
            v93 = v92[4];
            v95 = v93 - v94;
            if (v93 != v94)
            {
              break;
            }

            v92 = *v92;
            if (!v92)
            {
              goto LABEL_121;
            }
          }

          if (!((v95 >> 4) >> 60))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::AudioMixerSystem::AudioMixGroupMergeData>>(v95 >> 4);
          }

          goto LABEL_248;
        }

LABEL_121:
        v96 = v149;
        if (v158[2])
        {
          v96 = 0;
        }

        if (v96)
        {
          goto LABEL_219;
        }

        v169 = 0u;
        v170 = 0u;
        LODWORD(v171) = 1065353216;
        v154 = *(v49 + 64);
        if (v154)
        {
          v97 = 0;
          v98 = *(v49 + 48);
          while (1)
          {
            v99 = *v98;
            v98 += 38;
            if (v99 < 0)
            {
              break;
            }

            if (v154 == ++v97)
            {
              LODWORD(v97) = *(v49 + 64);
              break;
            }
          }
        }

        else
        {
          LODWORD(v97) = 0;
        }

        if (v97 == v154)
        {
          goto LABEL_218;
        }

        v100 = 0;
        while (2)
        {
          v101 = *(v49 + 48) + 152 * v97;
          v102 = v101 + 16;
          if (*(v101 + 24))
          {
            v103 = *(v101 + 32);
          }

          else
          {
            v103 = (v101 + 25);
          }

          v104 = strlen(v103);
          if (v104 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v105 = v104;
          v156 = v100;
          if (v104 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v104;
          if (v104)
          {
            memmove(&__dst, v103, v104);
          }

          __dst.__r_.__value_.__s.__data_[v105] = 0;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          v108 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v162, p_dst, size);
          v109 = v108;
          v110 = *(&v169 + 1);
          if (!*(&v169 + 1))
          {
            goto LABEL_163;
          }

          v111 = vcnt_s8(*(&v169 + 8));
          v111.i16[0] = vaddlv_u8(v111);
          v112 = v111.u32[0];
          if (v111.u32[0] > 1uLL)
          {
            v113 = v108;
            if (v108 >= *(&v169 + 1))
            {
              v113 = v108 % *(&v169 + 1);
            }
          }

          else
          {
            v113 = (*(&v169 + 1) - 1) & v108;
          }

          v114 = *(v169 + 8 * v113);
          if (!v114 || (v115 = *v114) == 0)
          {
LABEL_163:
            operator new();
          }

          while (2)
          {
            v116 = v115[1];
            if (v116 != v109)
            {
              if (v112 > 1)
              {
                if (v116 >= v110)
                {
                  v116 %= v110;
                }
              }

              else
              {
                v116 &= v110 - 1;
              }

              if (v116 != v113)
              {
                goto LABEL_163;
              }

LABEL_162:
              v115 = *v115;
              if (!v115)
              {
                goto LABEL_163;
              }

              continue;
            }

            break;
          }

          if (!std::equal_to<std::string>::operator()[abi:ne200100](&v169, v115 + 2, &__dst.__r_.__value_.__l.__data_))
          {
            goto LABEL_162;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v117 = v158[2];
          __dst.__r_.__value_.__r.__words[0] = *(v102 + 32);
          v118 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v49 + 32, &__dst);
          v119 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v49 + 80, &__dst);
          v120 = 1;
          if (v118 && v119)
          {
            v120 = *v119 != *(v118 + 124);
          }

          if (!(*(*v151 + 472))(v151, v152, v117, v102, v120))
          {
            goto LABEL_186;
          }

          re::ecs2::AudioMixerComponent::markMixGroupGainChangeClean(v49, *(v102 + 32));
          if (!__p[1])
          {
            goto LABEL_186;
          }

          v121 = *(v102 + 32);
          v122 = vcnt_s8(__p[1]);
          v122.i16[0] = vaddlv_u8(v122);
          if (v122.u32[0] > 1uLL)
          {
            v123 = *(v102 + 32);
            if (v121 >= __p[1])
            {
              v123 = v121 % __p[1];
            }
          }

          else
          {
            v123 = (__p[1] - 1) & v121;
          }

          v124 = *(__p[0] + v123);
          if (!v124)
          {
            goto LABEL_186;
          }

          v125 = *v124;
          if (!v125)
          {
            goto LABEL_186;
          }

          while (2)
          {
            v126 = v125[1];
            if (v126 != v121)
            {
              if (v122.u32[0] > 1uLL)
              {
                if (v126 >= __p[1])
                {
                  v126 %= __p[1];
                }
              }

              else
              {
                v126 &= __p[1] - 1;
              }

              if (v126 != v123)
              {
                goto LABEL_186;
              }

LABEL_185:
              v125 = *v125;
              if (!v125)
              {
                goto LABEL_186;
              }

              continue;
            }

            break;
          }

          if (v125[2] != v121)
          {
            goto LABEL_185;
          }

          v128 = v125[3];
          v129 = v125[4];
          while (v128 != v129)
          {
            if (*v128)
            {
              re::ecs2::AudioMixerComponent::markMixGroupGainChangeClean(v128[1], *(*v128 + 4));
            }

            v128 += 2;
          }

LABEL_186:
          v100 = *(v115 + 48) | v156;
          v127 = *(v49 + 64);
          if (v127 <= v97 + 1)
          {
            v127 = v97 + 1;
          }

          while (v127 - 1 != v97)
          {
            LODWORD(v97) = v97 + 1;
            if ((*(*(v49 + 48) + 152 * v97) & 0x80000000) != 0)
            {
              goto LABEL_192;
            }
          }

          LODWORD(v97) = v127;
LABEL_192:
          if (v97 != v154)
          {
            continue;
          }

          break;
        }

        for (i = v170; i; i = *i)
        {
          if (*(i + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, i[2], i[3]);
          }

          else
          {
            __dst = *(i + 2);
          }

          v173 = i[5];
          v174 = *(i + 12);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v162, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            if (v100)
            {
LABEL_206:
              if ((v174 & 1) == 0)
              {
                HIDWORD(v173) = 0;
                BYTE1(v174) = 1;
              }
            }
          }

          else
          {
            v162 = __dst;
            if (v100)
            {
              goto LABEL_206;
            }
          }

          v131 = v158[2];
          if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v161, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
          }

          else
          {
            v161 = v162;
          }

          (*(*v151 + 464))(v151, v152, v131, &v161, &v173);
          if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v161.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v162.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

LABEL_218:
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&v169);
LABEL_219:
        v132 = v164[0];
        v11 = &unk_1EE187000;
        if (v164[0])
        {
          do
          {
            v133 = *v132;
            v134 = v132[3];
            if (v134)
            {
              v132[4] = v134;
              operator delete(v134);
            }

            operator delete(v132);
            v132 = v133;
          }

          while (v133);
        }

        v135 = __p[0];
        __p[0] = 0;
        if (v135)
        {
          operator delete(v135);
        }

LABEL_225:
        v39 = v157;
        v158 = *v158;
      }

      while (v158);
LABEL_244:
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v166);
      v5 = v147;
      v9 = v150;
LABEL_245:
      if (++v9 == v148)
      {
LABEL_246:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v159, v6, v7);
        return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(&v160);
      }
    }
  }

  return result;
}

void re::ecs2::AudioMixerSystem::~AudioMixerSystem(re::ecs2::AudioMixerSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::AudioMixerSystem::AudioMixGroupMergeData>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  re::TypeRegistry::typeID(&v26, a1, a2);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    *&v19 = 0x449AD97C4B77BED4;
    *(&v19 + 1) = "_CompareFunc";
    v10 = re::TypeRegistry::typeID(&v25, a1, &v19);
    if (v19)
    {
      if (v19)
      {
      }
    }

    if (!v25)
    {
      v21[0] = 0x449AD97C4B77BED4;
      v21[1] = "_CompareFunc";
      re::TypeRegistry::declareType(&v19, v21, a1, 8, 1u, 0);
      v25 = v19;
      if (v21[0])
      {
        if (v21[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, a3, &v19);
    re::TypeInfo::TypeInfo(v24, &v19 + 8);
    if (!v25 || (v12 = *v24[2], *&v19 = *(&v25 + 1), *(&v19 + 1) = v12, v20 = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v24[0] + 768, &v19)) == 0) || !*v13)
    {
      v14 = *a3;
      v22 = v25;
      v23 = v14;
      re::TypeRegistry::addAttribute(a1, &v23, 0xFFFFFFFFLL, &v22, re::internal::less<unsigned long long>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    re::TypeBuilder::TypeBuilder(&v19, v21);
    v15 = *a3;
    v17 = *a4;
    v18 = v15;
    re::TypeBuilder::beginDictionaryType(&v19, a2, 1, 0x30uLL, 8uLL, &v18, &v17);
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a5, &v19, a1);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void *re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(double a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3);
  if (a5 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = a5;
  }

  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a3, a4, v8);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  memset(v12, 0, sizeof(v12));
  *&v14[2] = 0;
  WORD4(v14[2]) = 0;
  v13 = 0u;
  memset(v14, 0, 28);
  *(&v14[2] + 12) = xmmword_1E30474D0;
  *(&v14[3] + 12) = 0uLL;
  HIDWORD(v14[4]) = 1;
  v10 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, v12);
  if (*&v14[0])
  {
    if (*&v14[2])
    {
      (*(**&v14[0] + 40))();
    }

    *&v14[2] = 0;
    memset(v14, 0, 24);
    ++DWORD2(v14[1]);
  }

  if (*&v12[0] && (BYTE8(v12[0]) & 1) != 0)
  {
    (*(**&v12[0] + 40))();
  }

  re::introspectionInitElement(a2, a3, a1[8], v10);
  return v10;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 38;
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
    v10 = *(a2 + 16) + 152 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
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
      if ((*(*(a2 + 16) + 152 * v6) & 0x80000000) != 0)
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

double re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
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

double re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 152 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicArray<unsigned long>::deinit((v2 + 16));

    return re::DynamicString::deinit((v2 + 4));
  }

  return result;
}

void re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 72;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 72) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + 72) % *(v4 + 24), *(v7 + 72));
        v8 = *(a2 + 16) + v6;
        *(result + 8) = *(v8 - 64);
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        *(result + 40) = *(v8 - 32);
        v9 = *(v8 - 48);
        *(result + 16) = *(v8 - 56);
        *(v8 - 56) = 0;
        v10 = *(v8 - 40);
        *(v8 - 32) = 0;
        v12 = *(result + 24);
        v11 = *(result + 32);
        *(result + 24) = v9;
        *(result + 32) = v10;
        *(v8 - 48) = v12;
        *(v8 - 40) = v11;
        *(result + 48) = *(v8 - 24);
        *(result + 96) = 0;
        *(result + 88) = 0;
        *(result + 72) = 0;
        *(result + 80) = 0;
        *(result + 64) = 0;
        v13 = *v8;
        *(result + 64) = *(v8 - 8);
        *(result + 72) = v13;
        *(v8 - 8) = 0;
        *v8 = 0;
        v14 = *(result + 80);
        *(result + 80) = *(v8 + 8);
        *(v8 + 8) = v14;
        v15 = *(result + 96);
        *(result + 96) = *(v8 + 24);
        *(v8 + 24) = v15;
        ++*(v8 + 16);
        ++*(result + 88);
        v16 = *(v8 + 32);
        v17 = *(v8 + 48);
        *(result + 136) = *(v8 + 64);
        *(result + 120) = v17;
        *(result + 104) = v16;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 152;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 152 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 152 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 152 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 144) = a3;
  ++*(a1 + 28);
  return v7 + 152 * v5;
}

void re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
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
      do
      {
        re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v14);
  v7 = HIDWORD(v15);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::AudioMixGroup>(a1, &v14, a2, a3);
    return v8;
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 152 * v7;
    v9 = v10 + 16;
    re::DynamicString::operator=((v10 + 16), a3);
    *(v10 + 48) = *(a3 + 32);
    re::DynamicArray<unsigned long long>::operator=((v10 + 64), (a3 + 48));
    v11 = *(a3 + 120);
    v12 = *(a3 + 104);
    *(v10 + 104) = *(a3 + 88);
    *(v10 + 120) = v12;
    *(v10 + 136) = v11;
  }

  return v9;
}

__n128 re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::AudioMixGroup>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  v7 += 16;
  *(v7 + 24) = a4[3];
  v9 = *a4;
  v10 = a4[1];
  *(v7 - 8) = v8;
  *v7 = v9;
  *a4 = 0;
  v11 = a4[2];
  a4[3] = 0;
  v13 = *(v7 + 8);
  v12 = *(v7 + 16);
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  a4[1] = v13;
  a4[2] = v12;
  *(v7 + 32) = *(a4 + 2);
  *(v7 + 80) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  v14 = a4[7];
  *(v7 + 48) = a4[6];
  *(v7 + 56) = v14;
  a4[6] = 0;
  a4[7] = 0;
  v15 = *(v7 + 64);
  *(v7 + 64) = a4[8];
  a4[8] = v15;
  v16 = *(v7 + 80);
  *(v7 + 80) = a4[10];
  a4[10] = v16;
  ++*(a4 + 18);
  ++*(v7 + 72);
  result = *(a4 + 11);
  v18 = *(a4 + 13);
  *(v7 + 120) = a4[15];
  *(v7 + 104) = v18;
  *(v7 + 88) = result;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 152 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 152 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 152 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 152 * v8) & 0x7FFFFFFF;
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

uint64_t *re::DynamicArray<unsigned long long>::operator=(uint64_t *result, uint64_t *a2)
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

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

  return re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, uint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 152 * v4) & 0x80000000) != 0)
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
          v5 += 38;
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 152 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 152 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs219AudioMixerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::AudioMixGroup const&>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  re::DynamicString::DynamicString((v7 + 16), a4);
  *(v7 + 48) = *(a4 + 32);
  re::DynamicArray<char const*>::DynamicArray(v7 + 64, (a4 + 48));
  v8 = *(a4 + 88);
  v9 = *(a4 + 104);
  *(v7 + 136) = *(a4 + 120);
  *(v7 + 120) = v9;
  *(v7 + 104) = v8;
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::activateComponents,re::ecs2::AudioMixerSystem>(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *(*a3 + 16);
      v7 = *re::audioLogObjects(a1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          v8 = *(v6 + 296);
          v9 = *(v6 + 312);
        }

        else
        {
          v9 = 0;
          v8 = "(null)";
        }

        *buf = 136315394;
        v12 = v8;
        v13 = 2048;
        v14 = v9;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "AudioMixerSystem::activateComponents() AudioMixerComponent activating, name='%s', entityId=%llu", buf, 0x16u);
      }

      a3 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::deactivateComponents,re::ecs2::AudioMixerSystem>(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *(*a3 + 16);
      v7 = *re::audioLogObjects(a1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          v8 = *(v6 + 296);
          v9 = *(v6 + 312);
        }

        else
        {
          v9 = 0;
          v8 = "(null)";
        }

        *buf = 136315394;
        v12 = v8;
        v13 = 2048;
        v14 = v9;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "AudioMixerSystem::deactivateComponents() AudioMixerComponent deactivating, name='%s', entityId=%llu", buf, 0x16u);
      }

      a3 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t (***re::AVFVideoFileWriter::stopVideoFileWriter(uint64_t a1, __int128 *a2, uint64_t a3))(void)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke;
  v6[3] = &__block_descriptor_104_a8_40c30_ZTSN2re8FunctionIFvP5NSURLEEE_e5_v8__0l;
  v8 = *a2;
  v9 = *(a2 + 2);
  v4 = *(a3 + 24);
  v6[4] = a1;
  v7[3] = v4;
  v7[4] = 0;
  re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(v7, a3);
  dispatch_async(v3, v6);
  return re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v7);
}

uint64_t (***___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke(uint64_t (***result)(void)))(void)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if ((v1[6] & 1) == 0)
  {
    v2 = result;
    [v1[1] markAsFinished];
    v3 = *v1;
    v6 = *(v2 + 5);
    v7 = v2[12];
    [v3 endSessionAtSourceTime:&v6];
    v4 = *v1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3321888768;
    v8[2] = ___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke_2;
    v8[3] = &__block_descriptor_80_a8_40c30_ZTSN2re8FunctionIFvP5NSURLEEE_e5_v8__0l;
    v5 = v2[8];
    v8[4] = v1;
    v9[3] = v5;
    v9[4] = 0;
    re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(v9, (v2 + 5));
    [v4 finishWritingWithCompletionHandler:v8];
    *(v1 + 48) = 1;
    return re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v9);
  }

  return result;
}

uint64_t (***___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke_2(uint64_t a1))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke_3;
  block[3] = &__block_descriptor_80_a8_40c30_ZTSN2re8FunctionIFvP5NSURLEEE_e5_v8__0l;
  v3 = *(a1 + 64);
  block[4] = v1;
  v6[3] = v3;
  v6[4] = 0;
  re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(v6, a1 + 40);
  dispatch_async(v2, block);
  return re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v6);
}

void ___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  (*(**(a1 + 72) + 16))(*(a1 + 72), &v2);
}

uint64_t __copy_helper_block_a8_40c30_ZTSN2re8FunctionIFvP5NSURLEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  return re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(a1 + 40, a2 + 40);
}

void ___ZN2re18AVFVideoFileWriter34appendPixelBufferToVideoFileWriterEP10__CVBufferDv2_f6CMTimey_block_invoke(uint64_t a1)
{
  v50[8] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3[6].i8[0] == 1)
  {

    CVPixelBufferRelease(v2);
  }

  else
  {
    Width = CVPixelBufferGetWidth(v2);
    Height = CVPixelBufferGetHeight(*(a1 + 40));
    PixelFormatType = CVPixelBufferGetPixelFormatType(*(a1 + 40));
    v43 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:Width height:Height mipmapped:0];
    v7 = [*&v3[7] newTextureWithDescriptor:v43 iosurface:CVPixelBufferGetIOSurface(*(a1 + 40)) plane:0];
    v8 = *MEMORY[0x1E69660D8];
    v49[0] = *MEMORY[0x1E6966100];
    v49[1] = v8;
    v50[0] = MEMORY[0x1E695E118];
    v50[1] = MEMORY[0x1E695E0F8];
    v49[2] = *MEMORY[0x1E6966208];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4].u32[0]];
    v50[2] = v9;
    v49[3] = *MEMORY[0x1E69660B8];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4].u32[1]];
    v11 = *MEMORY[0x1E6966140];
    v50[3] = v10;
    v50[4] = &unk_1F5D429D8;
    v12 = *MEMORY[0x1E6966020];
    v49[4] = v11;
    v49[5] = v12;
    v50[5] = &unk_1F5D429D8;
    v49[6] = *MEMORY[0x1E6966130];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
    v49[7] = *MEMORY[0x1E6966150];
    v50[6] = v13;
    v50[7] = &unk_1F5D429F0;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:8];

    pixelBufferOut = 0;
    Default = CFAllocatorGetDefault();
    CVPixelBufferCreate(Default, v3[4].u32[0], v3[4].u32[1], PixelFormatType, v14, &pixelBufferOut);
    v16 = [*&v3[7] newTextureWithDescriptor:*&v3[9] iosurface:CVPixelBufferGetIOSurface(pixelBufferOut) plane:0];
    v17 = [MEMORY[0x1E6974128] renderPassDescriptor];
    v18 = [v17 colorAttachments];
    v19 = [v18 objectAtIndexedSubscript:0];
    [v19 setTexture:v16];

    v20 = [v17 colorAttachments];
    v21 = [v20 objectAtIndexedSubscript:0];
    [v21 setLoadAction:2];

    v22 = [v17 colorAttachments];
    v23 = [v22 objectAtIndexedSubscript:0];
    [v23 setClearColor:{0.0, 0.0, 0.0, 1.0}];

    v24 = [*&v3[7] newCommandQueue];
    v25 = [v24 commandBuffer];
    v26 = [v25 renderCommandEncoderWithDescriptor:v17];
    if (*re::AppleBuild::get(v26) == 1)
    {
      v27 = @"texture resampling and padding encoder";
    }

    else
    {
      v27 = &stru_1F5D319D0;
    }

    [(re::AppleBuild *)v26 setLabel:v27];
    [(re::AppleBuild *)v26 setRenderPipelineState:*&v3[8]];
    *&v28 = Width;
    *(&v28 + 1) = Height;
    v45 = v28;
    v44 = vcvt_f32_u32(v3[4]);
    [(re::AppleBuild *)v26 setVertexBytes:&re::boxVertices length:32 atIndex:0];
    [(re::AppleBuild *)v26 setVertexBytes:&v45 length:8 atIndex:1];
    [(re::AppleBuild *)v26 setVertexBytes:a1 + 48 length:8 atIndex:2];
    [(re::AppleBuild *)v26 setVertexBytes:&v44 length:8 atIndex:3];
    [(re::AppleBuild *)v26 setFragmentTexture:v7 atIndex:0];
    [(re::AppleBuild *)v26 drawPrimitives:4 vertexStart:0 vertexCount:4];
    objc_msgSend_endEncoding(v26);
    [v25 commit];
    [v25 waitUntilCompleted];
    CVPixelBufferRelease(*(a1 + 40));
    v29 = [*&v3[1] isReadyForMoreMediaData];
    if (v29)
    {
      v30 = v3[2];
      time = *(a1 + 64);
      v31 = [v30 appendPixelBuffer:pixelBufferOut withPresentationTime:&time];
      if ((v31 & 1) == 0)
      {
        v32 = *re::peerVideoStreamingLogObjects(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = *v3;
          v34 = v32;
          v35 = [v33 error];
          v36 = [v35 localizedDescription];
          time = *(a1 + 64);
          Seconds = CMTimeGetSeconds(&time);
          v38 = *(a1 + 56);
          LODWORD(time.value) = 138412802;
          *(&time.value + 4) = v36;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = Seconds;
          HIWORD(time.epoch) = 2048;
          v48 = v38;
          _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "[PeerVideoFileWriter] Failed to append pixel buffer to video file output: %@, timestamp: %f, entity id: %llu", &time, 0x20u);
        }
      }
    }

    else
    {
      v39 = *re::peerVideoStreamingLogObjects(v29);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        time = *(a1 + 64);
        v40 = v39;
        v41 = CMTimeGetSeconds(&time);
        v42 = *(a1 + 56);
        LODWORD(time.value) = 134218240;
        *(&time.value + 4) = v41;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v42;
        _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "[PeerVideoFileWriter] Not ready for more pixel buffer, timestamp: %f, entity id: %llu", &time, 0x16u);
      }
    }

    CVPixelBufferRelease(pixelBufferOut);
  }
}

__n128 re::PeerVideoFileWriter::destroy(re::PeerVideoFileWriter *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    re::AVFVideoFileWriter::~AVFVideoFileWriter(v2);
    MEMORY[0x1E6906520]();
    *(this + 8) = 0;
  }

  if (*(this + 8))
  {
    *(this + 1) = 1;
    v3 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v3 = this + 9;
  }

  *v3 = 0;
  if (*(this + 40))
  {
    *(this + 5) = 1;
    v4 = *(this + 6);
  }

  else
  {
    *(this + 40) = 0;
    v4 = this + 41;
  }

  *v4 = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0x3FF0000000000000;
  *(this + 96) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v5 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(this + 120) = *MEMORY[0x1E6960CC0];
  v7 = *(v5 + 16);
  *(this + 17) = v7;
  *(this + 9) = result;
  *(this + 20) = v7;
  return result;
}

void re::PeerVideoFileWriter::flush(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    lhs = *(a1 + 144);
    CMTimeMake(&rhs, 1, 90);
    CMTimeAdd(&v16, &lhs, &rhs);
    *(a1 + 144) = v16;
    if (*(a1 + 8))
    {
      v4 = *(a1 + 16);
    }

    else
    {
      v4 = a1 + 9;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    if (*(a1 + 40))
    {
      v6 = *(a1 + 48);
    }

    else
    {
      v6 = a1 + 41;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%llu-%llu_%ux%u_%f.%@", v5, *(a1 + 104), *(a1 + 112), *(a1 + 72), *(a1 + 80), *(a1 + 88), v7];
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v10 = *(a1 + 64);
    v16 = *(a1 + 144);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN2re19PeerVideoFileWriter5flushENS_8FunctionIFvvEEE_block_invoke;
    aBlock[3] = &unk_1F5CEF6B8;
    v11 = *(a2 + 24);
    v18 = v9;
    v19[3] = v11;
    v19[4] = 0;
    v12 = v9;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v19, a2);
    v13 = _Block_copy(aBlock);
    v20[3] = re::globalAllocators(v13)[2];
    v21 = 0;
    v20[0] = &unk_1F5CEF6F8;
    v20[1] = _Block_copy(v13);
    v21 = v20;
    re::AVFVideoFileWriter::stopVideoFileWriter(v10, &v16.value, v20);
    re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v20);

    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v19);
  }
}

void ___ZN2re19PeerVideoFileWriter5flushENS_8FunctionIFvvEEE_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = *(a1 + 32);
  v13 = 0;
  [v4 moveItemAtURL:v3 toURL:v5 error:&v13];
  v6 = v13;

  if (v6)
  {
    v8 = *re::peerVideoStreamingLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 path];
      v12 = [v6 localizedDescription];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "[PeerVideoFileWriter] Failed to rename CALayer video file to: %@, error: %@", buf, 0x16u);
    }
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72));
}

uint64_t __copy_helper_block_a8_40c24_ZTSN2re8FunctionIFvvEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  return re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(a1 + 40, a2 + 40);
}

void re::PeerVideoFileWriter::appendFrame(uint64_t a1, uint64_t a2, void *a3, int a4, float64_t a5, float64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v20 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v21 = "[PeerVideoFileWriter] Invalid arg to appendFrame: pixelBuffer is nullptr";
    v22 = v20;
    v23 = 2;
    goto LABEL_15;
  }

  v8 = *(a1 + 112);
  v9 = *(a2 + 16);
  if (v8 == v9)
  {
    return;
  }

  memset(&v40, 0, sizeof(v40));
  CMTimeMake(&v40, v9, 90);
  *(a1 + 144) = v40;
  Width = CVPixelBufferGetWidth(*a2);
  Height = CVPixelBufferGetHeight(*a2);
  v14 = Height;
  if (!Width || !Height)
  {
    v24 = *re::peerVideoStreamingLogObjects(Height);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109376;
    *&buf[4] = Width;
    *&buf[8] = 1024;
    *&buf[10] = v14;
    v21 = "[PeerVideoFileWriter] Invalid arg to appendFrame: pixelBuffer width: %u, height: %u";
    v22 = v24;
    v23 = 14;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    return;
  }

  v15.f64[0] = a5;
  v16 = (a5 & 0xFFFFFFFFFFFFFFC0) + 64;
  v17 = (a6 & 0xFFFFFFFFFFFFFFC0) + 64;
  v18 = *(a1 + 64);
  if (!v18)
  {
    goto LABEL_21;
  }

  if (v16 != *(a1 + 72) || v17 != *(a1 + 80) || *(a1 + 96) != a4)
  {
    *(a1 + 64) = 0;
    if (*(a1 + 8))
    {
      v19 = *(a1 + 16);
    }

    else
    {
      v19 = a1 + 9;
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
    if (*(a1 + 40))
    {
      v26 = *(a1 + 48);
    }

    else
    {
      v26 = a1 + 41;
    }

    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%llu-%llu_%ux%u_%f.%@", v25, *(a1 + 104), *(a1 + 112), *(a1 + 72), *(a1 + 80), *(a1 + 88), v34];
    v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v27];
    *buf = *(a1 + 144);
    v45 = *(a1 + 160);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re19PeerVideoFileWriter11appendFrameERKNS_15InputVideoFrameEddyb_block_invoke;
    aBlock[3] = &unk_1E871D968;
    v38 = v28;
    v39 = v18;
    v29 = v28;
    v30 = _Block_copy(aBlock);
    v41[3] = re::globalAllocators(v30)[2];
    v42 = 0;
    v41[0] = &unk_1F5CEF6F8;
    v41[1] = _Block_copy(v30);
    v42 = v41;
    re::AVFVideoFileWriter::stopVideoFileWriter(v18, buf, v41);
    re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v41);

    v17 = (a6 & 0xFFFFFFFFFFFFFFC0) + 64;
    v16 = (a5 & 0xFFFFFFFFFFFFFFC0) + 64;
LABEL_21:
    *(a1 + 72) = v16;
    *(a1 + 80) = v17;
    *(a1 + 96) = a4;
    *(a1 + 104) = *(a2 + 16);
    operator new();
  }

  *(a1 + 112) = *(a2 + 16);
  v31 = *a2;
  v43 = v40;
  if (v31)
  {
    v15.f64[1] = a6;
    v32 = vcvt_f32_f64(v15);
    CVPixelBufferRetain(v31);
    v33 = *(v18 + 40);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    v45 = ___ZN2re18AVFVideoFileWriter34appendPixelBufferToVideoFileWriterEP10__CVBufferDv2_f6CMTimey_block_invoke;
    v46 = &__block_descriptor_88_e5_v8__0l;
    v47 = v18;
    v48 = v31;
    v49 = v32;
    v51 = v43;
    v50 = a3;
    dispatch_async(v33, buf);
  }
}

void ___ZN2re19PeerVideoFileWriter11appendFrameERKNS_15InputVideoFrameEddyb_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = *(a1 + 32);
  v15 = 0;
  [v5 moveItemAtURL:v4 toURL:v6 error:&v15];

  v7 = v15;
  if (v7)
  {
    v9 = *re::peerVideoStreamingLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v9;
      v13 = [v11 path];
      v14 = [v7 localizedDescription];
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[PeerVideoFileWriter] Failed to rename CALayer video file to: %@, error: %@", buf, 0x16u);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    re::AVFVideoFileWriter::~AVFVideoFileWriter(v10);
    MEMORY[0x1E6906520]();
  }
}

uint64_t re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(uint64_t a1))(void)
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

void re::internal::Callable<void({block_pointer} {__strong})(NSURL *),void ()(NSURL *)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<void({block_pointer} {__strong})(NSURL *),void ()(NSURL *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEF6F8;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<void({block_pointer} {__strong})(NSURL *),void ()(NSURL *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEF6F8;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void re::ecs2::UISorter::recomputeCodirectionalGroupAverages(uint64_t this, uint64_t a2, re::ecs2::UISorterTransformCache *a3, __n128 a4, double a5, double a6, double a7, float32x4_t a8)
{
  v9 = *(this + 32);
  if (v9)
  {
    v10 = 0;
    v11 = (*(this + 16) + 8);
    while (1)
    {
      v12 = *v11;
      v11 += 6;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(this + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  while (v10 != v9)
  {
    a4 = re::ecs2::UICodirectionalGroup::recomputeAverages(*(*(this + 16) + 24 * v10 + 16), a4, a5, a6, a7, a8, a2, a3);
    v13 = *(this + 32);
    if (v13 <= v10 + 1)
    {
      v13 = v10 + 1;
    }

    while (v13 - 1 != v10)
    {
      LODWORD(v10) = v10 + 1;
      if ((*(*(this + 16) + 24 * v10 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v10) = v13;
LABEL_14:
    ;
  }
}

__n128 re::ecs2::UICodirectionalGroup::recomputeAverages(re::ecs2::UICodirectionalGroup *this, __n128 result, double a3, double a4, double a5, float32x4_t a6, uint64_t a7, re::ecs2::UISorterTransformCache *a8)
{
  if (*(this + 144) == 1)
  {
    v70 = v8;
    v71 = v9;
    v11.i32[3] = 0;
    *(this + 7) = 0u;
    v12 = (this + 112);
    *(this + 8) = 0u;
    v13 = (this + 128);
    *(this + 144) = 0;
    if (*(this + 13))
    {
      v15 = *(this + 5);
      v14 = *(this + 6);
      v16 = vmulq_f32(v15, xmmword_1E3047680);
      v16.f32[0] = fabsf(v16.f32[2] + vaddv_f32(*v16.f32));
      a6.i32[0] = 0.5;
      v17 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v16, a6), 0), xmmword_1E3047670, xmmword_1E3047680);
      v18 = vsubq_f32(v14, vaddq_f32(v15, v14));
      v19 = vmulq_f32(v18, v18);
      v20 = vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v19.f32[2] + v20));
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v19.f32[2] + v20), vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v19.f32[2] + v20), vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
      v23 = vmlaq_f32(vmulq_f32(v22, vnegq_f32(v17)), v21, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
      v25 = vmulq_f32(v23, v23);
      *&v26 = v25.f32[1] + (v25.f32[2] + v25.f32[0]);
      *v25.f32 = vrsqrte_f32(v26);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
      v34 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v21)), v34, v22);
      v28 = vmulq_f32(v14, v34);
      v29 = vmulq_f32(v14, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
      v30 = vadd_f32(vzip1_s32(*v28.i8, *v29.i8), vzip2_s32(*v28.i8, *v29.i8));
      v31 = vextq_s8(v29, v29, 8uLL);
      *v31.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v28, v28, 8uLL), *v31.f32), v30);
      v32 = vmulq_f32(v14, v21);
      v33 = __PAIR64__(v27.u32[0], v34.u32[1]);
      v11.i64[0] = __PAIR64__(v27.u32[1], v34.u32[2]);
      v34.i32[1] = v27.i32[2];
      v34.i32[2] = v21.i32[0];
      v35 = vnegq_f32(v31);
      v35.f32[2] = -(v32.f32[2] + vaddv_f32(*v32.f32));
      v36 = *(this + 14);
      if (v36)
      {
        v37 = 0;
        v38 = (*(this + 5) + 8);
        while (1)
        {
          v39 = *v38;
          v38 += 6;
          if (v39 < 0)
          {
            break;
          }

          if (v36 == ++v37)
          {
            LODWORD(v37) = *(this + 14);
            break;
          }
        }
      }

      else
      {
        LODWORD(v37) = 0;
      }

      v34.i32[3] = 0;
      v64 = v34;
      v40 = v33;
      v40.i32[2] = v21.i32[1];
      v65 = v40;
      v11.i32[2] = v21.i32[2];
      v41 = v35;
      v41.i32[3] = 1.0;
      v63 = v41;
      v42.i64[0] = 0x7F0000007FLL;
      v42.i64[1] = 0x7F0000007FLL;
      v43.i64[0] = 0x7F0000007FLL;
      v43.i64[1] = 0x7F0000007FLL;
      if (v37 == v36)
      {
        v67 = v43;
        v66 = vnegq_f32(v42);
        v44 = *v12;
      }

      else
      {
        v67 = v43;
        v66 = vnegq_f32(v42);
        v62 = v11;
        do
        {
          re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v68, *(*(this + 5) + 24 * v37 + 16), *(this + 54));
          v11 = v62;
          v45 = vaddq_f32(v63, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, v69.f32[0]), v65, *v69.f32, 1), v62, v69, 2));
          v46 = vdivq_f32(v45, vdupq_laneq_s32(v45, 3));
          v47 = v66;
          v47.i32[3] = 0;
          v46.i32[3] = 0;
          v48 = vminnmq_f32(v47, v46);
          v49 = v67;
          v49.i32[3] = 0;
          v66 = v48;
          v67 = vmaxnmq_f32(v49, v46);
          v44 = vaddq_f32(v68[1], *(this + 7));
          *(this + 7) = v44;
          v50 = *(this + 14);
          if (v50 <= v37 + 1)
          {
            v50 = v37 + 1;
          }

          while (v50 - 1 != v37)
          {
            LODWORD(v37) = v37 + 1;
            if ((*(*(this + 5) + 24 * v37 + 8) & 0x80000000) != 0)
            {
              goto LABEL_18;
            }
          }

          LODWORD(v37) = v50;
LABEL_18:
          ;
        }

        while (v37 != v36);
      }

      v51 = vmulq_f32(v44, v44);
      *&v52 = v51.f32[2] + vaddv_f32(*v51.f32);
      *v51.f32 = vrsqrte_f32(v52);
      *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32)));
      *(this + 7) = vmulq_n_f32(v44, vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))).f32[0]);
      v72.columns[0] = v64;
      v72.columns[1] = v65;
      v72.columns[2] = v11;
      v72.columns[3] = v63;
      v73 = __invert_f4(v72);
      v53 = vcgtq_f32(v66, v67);
      v53.i32[3] = v53.i32[2];
      v54 = vmaxvq_u32(v53);
      v55.i64[0] = 0x3F0000003F000000;
      v55.i64[1] = 0x3F0000003F000000;
      v56 = vmulq_f32(vaddq_f32(v66, v67), v55);
      v57 = v54 < 0;
      if (v54 >= 0)
      {
        v58 = v56.i64[1];
      }

      else
      {
        v58 = 0;
      }

      if (v57)
      {
        v59 = 0;
      }

      else
      {
        v59 = *v56.f32;
      }

      *v60.f32 = v59;
      v60.i64[1] = v58;
      v61 = vaddq_f32(v73.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73.columns[0], v59.f32[0]), v73.columns[1], v59, 1), v73.columns[2], v60, 2));
      *(this + 8) = vdivq_f32(v61, vdupq_laneq_s32(v61, 3));
      result = *v13;
      *(this + 31) = *v12;
      *(this + 32) = result;
      *(this + 145) = 1;
    }
  }

  return result;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::addAsCopy(a1, v8, v6, a2, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 24 * v12;
    return v11 + 16;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 24 * v9 + 16) != v4)
  {
    LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 24 * v9;
  return v11 + 16;
}

uint64_t re::ecs2::UISorter::update(re::ecs2::UISorter *updated, re::Allocator *a2, const re::ecs2::Entity **a3, uint64_t a4)
{
  v7 = updated;
  if (a4)
  {
    v8 = 8 * a4;
    v9 = a3;
    do
    {
      v10 = *v9++;
      updated = re::ecs2::UISorter::updateDerivedSortOrderForEntity(updated, v10);
      v8 -= 8;
    }

    while (v8);
  }

  re::ecs2::UISorter::updateCodirectionalGrouping(v7, a3, a4, a2);
  re::ecs2::UISorter::updateMeshSortGrouping(v17, v7, a2);
  if (re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken != -1)
  {
    dispatch_once(&re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken, &__block_literal_global_5_0);
  }

  if (re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup == 1)
  {
    re::ecs2::UISorter::updateCodirectionalGroupAsSortGroup(v7, a2);
  }

  else
  {
    re::ecs2::UISorter::writeSortingResults(v7, v17, v22, v20, v11, v12, v13, v14, v15);
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear((v7 + 6));
  if (v18)
  {
    if (v22)
    {
      (*(*v18 + 40))();
    }

    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    ++v21;
  }

  return re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v17);
}

void re::ecs2::UISorter::updateCodirectionalGrouping(uint64_t a1, re::ecs2::Entity **a2, uint64_t a3, re::ecs2::Entity *a4)
{
  v5 = a3;
  v192 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    LODWORD(a3) = 1;
  }

  if (*(a1 + 28) <= 1u)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 28);
  }

  v177 = 0;
  v175 = 0u;
  v176 = 0u;
  v178 = 0x7FFFFFFFLL;
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(&v175, a4, a3);
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v174 = 0x7FFFFFFFLL;
  v163 = a4;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(&v171, a4, v8);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v171);
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = 0;
    v11 = (*(a1 + 16) + 8);
    while (1)
    {
      v12 = *v11;
      v11 += 6;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  while (v10 != v9)
  {
    *out = *(*(a1 + 16) + 24 * v10 + 16);
    v13 = (*out + 8);
    v14 = *out;
    if (*(*out + 52) || (re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(&v171, out), (v14 = *out) != 0))
    {
    }

    v15 = *(a1 + 32);
    if (v15 <= v10 + 1)
    {
      v15 = v10 + 1;
    }

    while (v15 - 1 != v10)
    {
      LODWORD(v10) = v10 + 1;
      if ((*(*(a1 + 16) + 24 * v10 + 8) & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v10) = v15;
LABEL_22:
    ;
  }

  v16 = v173;
  if (v173)
  {
    v17 = 0;
    v18 = (v172 + 8);
    while (1)
    {
      v19 = *v18;
      v18 += 6;
      if (v19 < 0)
      {
        break;
      }

      if (v173 == ++v17)
      {
        LODWORD(v17) = v173;
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v173)
  {
    v20 = v172;
    do
    {
      v21 = *(v20 + 24 * v17 + 16);
      if (v21)
      {
        v22 = (v21 + 8);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1, v21);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v21);
      }

      else
      {
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1, 0);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, 0);
      }

      v20 = v172;
      if (v173 <= v17 + 1)
      {
        v23 = v17 + 1;
      }

      else
      {
        v23 = v173;
      }

      while (v23 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(v172 + 24 * v17 + 8) & 0x80000000) != 0)
        {
          goto LABEL_41;
        }
      }

      LODWORD(v17) = v23;
LABEL_41:
      ;
    }

    while (v17 != v16);
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v171);
  re::ecs2::UISorter::recomputeCodirectionalGroupAverages(a1, v24, v25, v26, v27, v28, v29, v30);
  if (v5)
  {
    v31 = 8 * v5;
    v32 = 8 * v5;
    v33 = a2;
    do
    {
      v34 = *v33++;
      *v180 = v34;
      re::ecs2::UISorterUtil::optionalSortingPlaneFrom(out, v34, *(a1 + 144));
      *v168 = v188;
      v169 = v189;
      re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(&v175, v180, v168);
      v32 -= 8;
    }

    while (v32);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v171);
    do
    {
      v168[0] = *a2;
      v35 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 96, v168);
      if (v35)
      {
        v36 = *v35;
        *v180 = v36;
        if (v36)
        {
          v37 = (v36 + 8);
        }

        v38 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(&v175, v168);
        re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1 + 48, v180);
        v39 = *v180;
        *(*v180 + 144) = 1;
        if (!v38)
        {
          goto LABEL_55;
        }

        v40 = 1.0;
        if ((*(a1 + 160) & 1) == 0)
        {
          if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
          {
            dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
          }

          v40 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
        }

        v41 = vmulq_f32(v39[7], *v38);
        if ((1.0 - (v41.f32[2] + vaddv_f32(*v41.f32))) <= v40)
        {
          *out = v168[0];
          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(*v180 + 344, out);
        }

        else
        {
LABEL_55:
          re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(a1 + 96, v168);
          re::ecs2::UICodirectionalGroup::remove(*v180, v168[0]);
          re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(&v171, v180);
        }

        if (*v180)
        {
        }
      }

      ++a2;
      v31 -= 8;
    }

    while (v31);
  }

  else
  {
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v171);
  }

  v164 = v173;
  if (v173)
  {
    v42 = 0;
    v43 = (v172 + 8);
    while (1)
    {
      v44 = *v43;
      v43 += 6;
      if (v44 < 0)
      {
        break;
      }

      if (v173 == ++v42)
      {
        LODWORD(v42) = v173;
        break;
      }
    }
  }

  else
  {
    LODWORD(v42) = 0;
  }

  if (v42 != v173)
  {
    v45 = v172;
    do
    {
      v46 = *(v45 + 24 * v42 + 16);
      if (v46)
      {
        v47 = (v46 + 8);
      }

      v48 = *(v46 + 56);
      if (v48)
      {
        v49 = 0;
        v50 = (*(v46 + 40) + 8);
        while (1)
        {
          v51 = *v50;
          v50 += 6;
          if (v51 < 0)
          {
            break;
          }

          if (v48 == ++v49)
          {
            LODWORD(v49) = *(v46 + 56);
            break;
          }
        }
      }

      else
      {
        LODWORD(v49) = 0;
      }

LABEL_89:
      while (v49 != v48)
      {
        v52 = *(*(v46 + 40) + 24 * v49 + 16);
        *v180 = v52;
        if (!v175 || (v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) >> 27)), v54 = *(*(&v175 + 1) + 4 * ((v53 ^ (v53 >> 31)) % DWORD2(v176))), v54 == 0x7FFFFFFF))
        {
LABEL_82:
          re::ecs2::UISorterUtil::optionalSortingPlaneFrom(out, v52, *(a1 + 144));
          *v168 = v188;
          v169 = v189;
          re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(&v175, v180, v168);
        }

        else
        {
          while (*(v176 + (v54 << 6) + 8) != v52)
          {
            v54 = *(v176 + (v54 << 6)) & 0x7FFFFFFF;
            if (v54 == 0x7FFFFFFF)
            {
              goto LABEL_82;
            }
          }
        }

        re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(a1 + 96, v180);
        v55 = *(v46 + 56);
        if (v55 <= v49 + 1)
        {
          v55 = v49 + 1;
        }

        while (v55 - 1 != v49)
        {
          LODWORD(v49) = v49 + 1;
          if ((*(*(v46 + 40) + 24 * v49 + 8) & 0x80000000) != 0)
          {
            goto LABEL_89;
          }
        }

        LODWORD(v49) = v55;
      }

      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v46 + 24);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v46 + 344);
      *(v46 + 144) = 1;
      v56 = (v46 + 8);
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1, v46);
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v46);

      v45 = v172;
      if (v173 <= v42 + 1)
      {
        v57 = v42 + 1;
      }

      else
      {
        v57 = v173;
      }

      while (v57 - 1 != v42)
      {
        LODWORD(v42) = v42 + 1;
        if ((*(v172 + 24 * v42 + 8) & 0x80000000) != 0)
        {
          goto LABEL_97;
        }
      }

      LODWORD(v42) = v57;
LABEL_97:
      ;
    }

    while (v42 != v164);
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v171);
  if (!HIDWORD(v176))
  {
    goto LABEL_243;
  }

  v66 = v177;
  if (v177)
  {
    v67 = 0;
    v68 = v176;
    while (1)
    {
      v69 = *v68;
      v68 += 16;
      if (v69 < 0)
      {
        break;
      }

      if (v177 == ++v67)
      {
        LODWORD(v67) = v177;
        break;
      }
    }
  }

  else
  {
    LODWORD(v67) = 0;
  }

  if (v67 != v177)
  {
    v70 = v176;
    v71 = &unk_1EE1C6000;
    v165 = v177;
    do
    {
      v72 = (v70 + (v67 << 6));
      v73 = v72->i64[1];
      v168[0] = v73;
      if (!*(a1 + 96) || (v74 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v73 ^ (v73 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v73 ^ (v73 >> 30))) >> 27)), v75 = *(*(a1 + 104) + 4 * ((v74 ^ (v74 >> 31)) % *(a1 + 120))), v75 == 0x7FFFFFFF))
      {
LABEL_113:
        v77 = *(a1 + 32);
        if (v77)
        {
          v78 = 0;
          v79 = (*(a1 + 16) + 8);
          do
          {
            v80 = *v79;
            v79 += 6;
            if (v80 < 0)
            {
              goto LABEL_119;
            }

            ++v78;
          }

          while (v77 != v78);
          LODWORD(v78) = *(a1 + 32);
        }

        else
        {
          LODWORD(v78) = 0;
        }

LABEL_119:
        while (v78 != v77)
        {
          v81 = *(a1 + 16) + 24 * v78;
          v84 = *(v81 + 16);
          v83 = (v81 + 16);
          v82 = v84;
          v85 = 1.0;
          if ((*(a1 + 160) & 1) == 0)
          {
            if (v71[393] != -1)
            {
              dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
              v71 = &unk_1EE1C6000;
            }

            v85 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
          }

          v86 = vmulq_f32(v82[7], v72[1]);
          if ((1.0 - (v86.f32[2] + vaddv_f32(*v86.f32))) <= v85)
          {
            re::ecs2::UICodirectionalGroup::add(*v83, v168[0]);
            re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addOrReplace(a1 + 96, v168, v83);
            v58 = re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1 + 48, v83);
            v71 = &unk_1EE1C6000;
            v66 = v165;
            goto LABEL_135;
          }

          v87 = *(a1 + 32);
          if (v87 <= v78 + 1)
          {
            v87 = v78 + 1;
          }

          while (v87 - 1 != v78)
          {
            LODWORD(v78) = v78 + 1;
            if ((*(*(a1 + 16) + 24 * v78 + 8) & 0x80000000) != 0)
            {
              goto LABEL_119;
            }
          }

          LODWORD(v78) = v87;
        }

        v88 = *(a1 + 144);
        v89 = re::globalAllocators(v58);
        v90 = (*(*v89[2] + 32))(v89[2], 656, 16);
        ArcSharedObject::ArcSharedObject(v90, 0);
        *v91 = &unk_1F5CEF760;
        uuid_generate_random(out);
        *(v90 + 16) = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
        *(v90 + 24) = 0u;
        *(v90 + 40) = 0u;
        *(v90 + 56) = 0;
        *(v90 + 60) = 0x7FFFFFFFLL;
        *(v90 + 168) = 0u;
        *(v90 + 184) = 0;
        *(v90 + 152) = 0u;
        *(v90 + 80) = 0u;
        *(v90 + 96) = 0u;
        *(v90 + 112) = 0u;
        *(v90 + 128) = 0u;
        *(v90 + 144) = 0;
        *(v90 + 188) = 0x7FFFFFFFLL;
        *(v90 + 200) = 0u;
        *(v90 + 216) = 0u;
        *(v90 + 232) = 0;
        *(v90 + 236) = 0x7FFFFFFFLL;
        *(v90 + 280) = 0;
        *(v90 + 248) = 0u;
        *(v90 + 264) = 0u;
        *(v90 + 284) = 0x7FFFFFFFLL;
        *(v90 + 296) = 0u;
        *(v90 + 312) = 0u;
        *(v90 + 328) = 0;
        *(v90 + 332) = 0x7FFFFFFFLL;
        *(v90 + 344) = 0u;
        *(v90 + 360) = 0u;
        *(v90 + 376) = 0;
        *(v90 + 380) = 0x7FFFFFFFLL;
        *(v90 + 400) = 0;
        *(v90 + 408) = 0;
        *(v90 + 416) = 0;
        *(v90 + 392) = 0;
        *(v90 + 424) = 0;
        *(v90 + 432) = v88;
        *(v90 + 480) = 0;
        *(v90 + 440) = a1;
        *(v90 + 448) = 0;
        *(v90 + 472) = 0;
        *(v90 + 456) = 0;
        *(v90 + 464) = 0;
        *(v90 + 624) = 0u;
        *(v90 + 640) = 0u;
        *(v90 + 592) = 0u;
        *(v90 + 608) = 0u;
        *(v90 + 560) = 0u;
        *(v90 + 576) = 0u;
        *(v90 + 528) = 0u;
        *(v90 + 544) = 0u;
        *(v90 + 496) = 0u;
        *(v90 + 512) = 0u;
        *out = v90;
        re::ecs2::UICodirectionalGroup::add(v90, v168[0]);
        re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addOrReplace(a1 + 96, v168, out);
        re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1, out);
        v58 = re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1 + 48, out);
        if (*out)
        {
        }

        v66 = v165;
        v71 = &unk_1EE1C6000;
      }

      else
      {
        v76 = *(a1 + 112);
        while (*(v76 + 32 * v75 + 8) != v73)
        {
          v75 = *(v76 + 32 * v75) & 0x7FFFFFFF;
          if (v75 == 0x7FFFFFFF)
          {
            goto LABEL_113;
          }
        }
      }

LABEL_135:
      if (v177 <= v67 + 1)
      {
        v94 = v67 + 1;
      }

      else
      {
        v94 = v177;
      }

      v70 = v176;
      while (v94 - 1 != v67)
      {
        LODWORD(v67) = v67 + 1;
        if ((*(v176 + (v67 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_143;
        }
      }

      LODWORD(v67) = v94;
LABEL_143:
      ;
    }

    while (v67 != v66);
  }

  re::ecs2::UISorter::recomputeCodirectionalGroupAverages(a1, v59, v60, v61, v62, v63, v64, v65);
  v59 = *(a1 + 28);
  if (v59 <= 1)
  {
    goto LABEL_243;
  }

  v170 = 0;
  v168[1] = 0;
  *&v169 = 0;
  DWORD2(v169) = 0;
  v168[0] = v163;
  v95 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v168, v59);
  ++DWORD2(v169);
  v96 = *(a1 + 32);
  if (v96)
  {
    v97 = 0;
    v98 = (*(a1 + 16) + 8);
    while (1)
    {
      v99 = *v98;
      v98 += 6;
      if (v99 < 0)
      {
        break;
      }

      if (v96 == ++v97)
      {
        LODWORD(v97) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v97) = 0;
  }

  if (v97 == v96)
  {
    v100 = v169;
  }

  else
  {
    v100 = v169;
    do
    {
      v101 = *(a1 + 16);
      if (v100 >= v168[1])
      {
        if (v168[1] < (v100 + 1))
        {
          if (v168[0])
          {
            if (v168[1])
            {
              v102 = 2 * v168[1];
            }

            else
            {
              v102 = 8;
            }

            if (v102 <= v100 + 1)
            {
              v103 = v100 + 1;
            }

            else
            {
              v103 = v102;
            }

            v95 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v168, v103);
          }

          else
          {
            v95 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v168, v100 + 1);
            ++DWORD2(v169);
          }
        }

        v100 = v169;
      }

      v104 = *(v101 + 24 * v97 + 16);
      *(v170 + 8 * v100) = v104;
      if (v104)
      {
        v95 = (v104 + 8);
      }

      *&v169 = ++v100;
      ++DWORD2(v169);
      v105 = *(a1 + 32);
      if (v105 <= v97 + 1)
      {
        v105 = v97 + 1;
      }

      while (v105 - 1 != v97)
      {
        LODWORD(v97) = v97 + 1;
        if ((*(*(a1 + 16) + 24 * v97 + 8) & 0x80000000) != 0)
        {
          goto LABEL_174;
        }
      }

      LODWORD(v97) = v105;
LABEL_174:
      ;
    }

    while (v97 != v96);
  }

  if (v100 < 2)
  {
    goto LABEL_233;
  }

  v106 = 0;
  v107 = 1;
  do
  {
    v108 = v169;
    if (v169 <= v106)
    {
      goto LABEL_265;
    }

    v109 = v170;
    v162 = v106;
    v110 = *(v170 + 8 * v106);
    v167 = v110;
    if (v110)
    {
      v111 = (v110 + 8);
    }

    v163 = (v109 - 8);
    v112 = DWORD2(v169);
    do
    {
      if (v108 <= --v100)
      {
        v179 = 0;
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        *out = 0u;
        v156 = MEMORY[0x1E69E9C10];
        v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v180 = 136315906;
        *&v180[4] = "operator[]";
        v181 = 1024;
        if (v157)
        {
          v158 = 3;
        }

        else
        {
          v158 = 2;
        }

        v182 = 789;
        v183 = 2048;
        v184 = v100;
        v185 = 2048;
        v186 = v108;
        _os_log_send_and_compose_impl(v158, &v179, out, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v180, 38, v162, v163);
        _os_crash_msg();
        __break(1u);
LABEL_265:
        v179 = 0;
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        *out = 0u;
        v159 = MEMORY[0x1E69E9C10];
        v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v180 = 136315906;
        *&v180[4] = "operator[]";
        v181 = 1024;
        if (v160)
        {
          v161 = 3;
        }

        else
        {
          v161 = 2;
        }

        v182 = 789;
        v183 = 2048;
        v184 = v106;
        v185 = 2048;
        v186 = v108;
        _os_log_send_and_compose_impl(v161, &v179, out, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v180, 38, v162, v163);
        _os_crash_msg();
        __break(1u);
      }

      v113 = *(v109 + 8 * v100);
      if (v113)
      {
        v114 = &v113->u32[2];
      }

      v106 = v167;
      v115 = 1.0;
      if ((*(a1 + 160) & 1) == 0)
      {
        if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
        {
          dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
        }

        v115 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
      }

      v116 = vmulq_f32(*(v106 + 112), v113[7]);
      if ((1.0 - (v116.f32[2] + vaddv_f32(*v116.f32))) <= v115)
      {
        v166 = v112;
        v117 = v113[3].u32[2];
        if (v117)
        {
          v118 = 0;
          v119 = (v113[2].i64[1] + 8);
          while (1)
          {
            v120 = *v119;
            v119 += 6;
            if (v120 < 0)
            {
              break;
            }

            if (v117 == ++v118)
            {
              LODWORD(v118) = v113[3].i32[2];
              break;
            }
          }
        }

        else
        {
          LODWORD(v118) = 0;
        }

        v121 = v113[3].u32[2];
LABEL_196:
        while (v118 != v117)
        {
          *out = *(v113[2].i64[1] + 24 * v118 + 16);
          re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addOrReplace(a1 + 96, out, &v167);
          v121 = v113[3].u32[2];
          if (v121 <= v118 + 1)
          {
            v122 = v118 + 1;
          }

          else
          {
            v122 = v113[3].i32[2];
          }

          while (v122 - 1 != v118)
          {
            LODWORD(v118) = v118 + 1;
            if ((*(v113[2].i64[1] + 24 * v118 + 8) & 0x80000000) != 0)
            {
              goto LABEL_196;
            }
          }

          LODWORD(v118) = v122;
        }

        v123 = v167;
        if (v121)
        {
          v124 = 0;
          v125 = (v113[2].i64[1] + 8);
          while (1)
          {
            v126 = *v125;
            v125 += 6;
            if (v126 < 0)
            {
              break;
            }

            if (v121 == ++v124)
            {
              LODWORD(v124) = v121;
              break;
            }
          }
        }

        else
        {
          LODWORD(v124) = 0;
        }

        if (v124 != v121)
        {
          v127 = v113[2].i64[1];
          do
          {
            re::ecs2::UICodirectionalGroup::add(v123, *(v127 + 24 * v124 + 16));
            v128 = v113[3].u32[2];
            v127 = v113[2].i64[1];
            if (v128 <= v124 + 1)
            {
              v128 = v124 + 1;
            }

            while (v128 - 1 != v124)
            {
              LODWORD(v124) = v124 + 1;
              if ((*(v127 + 24 * v124 + 8) & 0x80000000) != 0)
              {
                goto LABEL_218;
              }
            }

            LODWORD(v124) = v128;
LABEL_218:
            ;
          }

          while (v124 != v121);
        }

        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(&v113[1].i64[1]);
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(&v113[21].i64[1]);
        v113[9].i8[0] = 1;
        v106 = v108 - 1;
        if (v108 - 1 <= v100)
        {
          v129 = *(v163 + v108);
        }

        else
        {
          v129 = *(v109 + 8 * v100);
          *(v109 + 8 * v100) = *(v163 + v108);
          *(v163 + v108) = v129;
        }

        if (v129)
        {

          *(v163 + v108) = 0;
        }

        v112 = v166 + 1;
        v130 = &v113->u32[2];
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1, v113);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v113);

        re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1 + 48, &v167);
        --v108;
      }
    }

    while (v107 < v100);
    *&v169 = v108;
    DWORD2(v169) = v112;
    v138 = v167;
    if (*(v167 + 144) != 1)
    {
      v106 = v107;
LABEL_230:

      goto LABEL_231;
    }

    v61 = re::ecs2::UICodirectionalGroup::recomputeAverages(v167, v133, v134, v135, v136, v137, v131, v132);
    v138 = v167;
    v106 = v162;
    if (v167)
    {
      goto LABEL_230;
    }

LABEL_231:
    v107 = v106 + 1;
    v100 = v108;
  }

  while (v106 + 1 < v108);
  v100 = v169;
LABEL_233:
  v139 = v170;
  if (v100)
  {
    v140 = 8 * v100;
    v141 = v170;
    do
    {
      if (*v141)
      {

        *v141 = 0;
      }

      v141 += 8;
      v140 -= 8;
    }

    while (v140);
  }

  if (v168[0])
  {
    v142 = v139 == 0;
  }

  else
  {
    v142 = 1;
  }

  if (!v142)
  {
    v61.n128_f64[0] = (*(*v168[0] + 40))(v61);
  }

LABEL_243:
  re::ecs2::UISorter::recomputeCodirectionalGroupAverages(a1, v59, v60, v61, v62, v63, v64, v65);
  v146 = *(a1 + 80);
  if (v146)
  {
    v147 = 0;
    v148 = (*(a1 + 64) + 8);
    while (1)
    {
      v149 = *v148;
      v148 += 6;
      if (v149 < 0)
      {
        break;
      }

      if (v146 == ++v147)
      {
        LODWORD(v147) = *(a1 + 80);
        break;
      }
    }
  }

  else
  {
    LODWORD(v147) = 0;
  }

  while (v147 != v146)
  {
    v150 = *(*(a1 + 64) + 24 * v147 + 16);
    if (v150)
    {
      v151 = (v150 + 8);
      re::ecs2::UICodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(v150, v154, v152, v153);
    }

    else
    {
      v145.n128_f64[0] = re::ecs2::UICodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(0, v145, v143, v144);
    }

    v155 = *(a1 + 80);
    if (v155 <= v147 + 1)
    {
      v155 = v147 + 1;
    }

    while (v155 - 1 != v147)
    {
      LODWORD(v147) = v147 + 1;
      if ((*(*(a1 + 64) + 24 * v147 + 8) & 0x80000000) != 0)
      {
        goto LABEL_259;
      }
    }

    LODWORD(v147) = v155;
LABEL_259:
    ;
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v171);
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v175);
}