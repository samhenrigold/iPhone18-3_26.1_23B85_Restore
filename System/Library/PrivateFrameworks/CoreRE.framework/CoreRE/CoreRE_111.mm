uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::MeshSmoothComponentStateImpl::processPreparingComponents(re::ProfilerConfig *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v134 = *MEMORY[0x1E69E9840];
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v10 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v11 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v12 = v11 ? *(v11 + 384) : 0;
    v13 = *(v10 + 152);
    if (v13)
    {
      v14 = v13[904].u64[0];
      if (v14 >= v12)
      {
        v14 = v12;
      }

      v13[904].i64[0] = v14;
      v15 = v13[904].u64[1];
      if (v15 <= v12)
      {
        v15 = v12;
      }

      v13[904].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v12;
      v13[905] = vaddq_s64(v13[905], v16);
      *(v10 + 184) = 0;
    }
  }

  v17 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v17)
  {
    v18 = *(v17 + 384);
  }

  else
  {
    v18 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v114, 3041, a1, v18, 0, 0);
  v19 = *(a1 + 1);
  v103 = *(v19 + 232);
  v20 = *(v19 + 256);
  if (v20)
  {
    v102 = (*(*v20 + 104))(v20);
  }

  else
  {
    v102 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v129, a5, 0);
  v111 = a4;
  v112 = v129;
  v113 = DWORD2(v129);
  if (v129 != a5 || DWORD2(v129) != 0xFFFFFFFFLL)
  {
    v105 = a3;
    v106 = a5;
    while (1)
    {
      v23 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v111);
      v24 = *(v23 + 16);
      v25 = *(v24 + 192);
      v26 = re::AssetHandle::loadedAsset<re::MeshAsset>((v25 + 4));
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v107 = v24;
      v108 = v25;
      v28 = re::AssetHandle::loadedAsset<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>((v23 + 112));
      if (!v28)
      {
        v35 = *(v23 + 120);
        if (!v35 || (v36 = atomic_load((v35 + 896)), v36 != 3))
        {
          v34 = (v23 + 112);
          goto LABEL_31;
        }

LABEL_29:
        v37 = v111;
        v38 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v112);
        v39 = a3[2];
        v40 = a3[4];
LABEL_76:
        re::ecs2::ComponentBucketsBase::moveComponent(v39, v37, v38, v40);
        goto LABEL_77;
      }

      v29 = v28;
      v30 = v25[5];
      if (v30)
      {
        v31 = *(v30 + 792);
      }

      else
      {
        v31 = 0;
      }

      v41 = *(v23 + 120);
      if (v41)
      {
        v42 = *(v41 + 792);
      }

      else
      {
        v42 = 0;
      }

      v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) >> 27));
      v44 = v31 ^ (v43 >> 31) ^ v43;
      v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
      v46 = ((v44 << 6) + (v44 >> 2) + (v42 ^ (v45 >> 31) ^ v45) - 0x61C8864680B583E9) ^ v44;
      if (*(v23 + 280) != v46)
      {
        v104 = v46;
        *(v23 + 280) = -1;
        re::FixedArray<CoreIKTransform>::deinit((v23 + 288));
        v47 = re::FixedArray<CoreIKTransform>::deinit((v23 + 312));
        *(v23 + 208) = 0;
        ++*(v23 + 216);
        *(v23 + 248) = 0;
        ++*(v23 + 256);
        v48 = *(v23 + 272);
        if (!v48)
        {
          *(v23 + 280) = -1;
        }

        re::FixedArray<int>::init<>((v23 + 312), v48, *(v27 + 856));
        if (*(v27 + 856))
        {
          v49 = 0;
          v50 = 0;
          while (1)
          {
            v51 = *(v23 + 320);
            if (v51 <= v50)
            {
              break;
            }

            *(*(v23 + 328) + 4 * v50) = v49;
            v49 += re::MeshNameMap::meshPartInstanceCount((v27 + 640), v50++);
            if (v50 >= *(v27 + 856))
            {
              goto LABEL_43;
            }
          }

LABEL_102:
          *v124 = 0;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          v95 = MEMORY[0x1E69E9C10];
          v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v116 = 136315906;
          *&v116[4] = "operator[]";
          v117 = 1024;
          if (v96)
          {
            v97 = 3;
          }

          else
          {
            v97 = 2;
          }

          v118 = 468;
          v119 = 2048;
          v120 = v50;
          v121 = 2048;
          v122 = v51;
          _os_log_send_and_compose_impl(v97, v124, &v129, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v116, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
        }

LABEL_43:
        v52 = *(v27 + 976);
        if (v52)
        {
          v53 = *(*(v27 + 984) + 4 * v52 - 4);
        }

        else
        {
          v53 = 0;
        }

        v54 = *(v23 + 272);
        LODWORD(v129) = -1;
        v28 = re::FixedArray<unsigned int>::init<int>((v23 + 288), v54, v53, &v129);
        if (*(v29 + 16))
        {
          v51 = 0;
          v55 = 0;
          while (1)
          {
            re::MeshNameMap::meshInstancePartsForIdentifier(v116, v27 + 640, (*(v29 + 32) + 40 * v55));
            if (*v116)
            {
              break;
            }

            v61 = v51;
LABEL_54:
            v28 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v116[8]);
            ++v55;
            v51 = v61;
            if (v55 >= *(v29 + 16))
            {
              goto LABEL_55;
            }
          }

          v56 = 0;
          while (1)
          {
            *&v129 = v56;
            (*(*v123 + 16))(v123, &v129);
            *&v129 = v56;
            (*(*v123 + 16))(v123, &v129);
            LODWORD(v129) = 10;
            re::DynamicArray<int>::add((v23 + 192), &v129);
            LODWORD(v129) = 1056964608;
            v57 = re::DynamicArray<float>::add((v23 + 232), &v129);
            *&v129 = v56;
            v58 = (*(*v123 + 16))(v123, &v129, v57);
            started = re::MeshNameMap::meshPartStartIndexForInstance((v27 + 640), v58);
            *&v129 = v56;
            v50 = started + ((*(*v123 + 16))(v123, &v129) >> 32);
            v60 = *(v23 + 296);
            if (v60 <= v50)
            {
              break;
            }

            v61 = (v51 + 1);
            *(*(v23 + 304) + 4 * v50) = v51;
            ++v56;
            v51 = v61;
            if (v56 == *v116)
            {
              goto LABEL_54;
            }
          }

          v109 = 0;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          v80 = MEMORY[0x1E69E9C10];
          v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v124 = 136315906;
          *&v124[4] = "operator[]";
          *&v124[12] = 1024;
          if (v81)
          {
            v82 = 3;
          }

          else
          {
            v82 = 2;
          }

          *&v124[14] = 468;
          v125 = 2048;
          v126 = v50;
          v127 = 2048;
          v128 = v60;
          _os_log_send_and_compose_impl(v82, &v109, &v129, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_85:
          v115 = 0;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          v83 = MEMORY[0x1E69E9C10];
          v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v116 = 136315906;
          *&v116[4] = "operator[]";
          v117 = 1024;
          if (v84)
          {
            v85 = 3;
          }

          else
          {
            v85 = 2;
          }

          v118 = 789;
          v119 = 2048;
          v120 = v56;
          v121 = 2048;
          v122 = v51;
          _os_log_send_and_compose_impl(v85, &v115, &v129, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v116, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_89:
          v115 = 0;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          v86 = MEMORY[0x1E69E9C10];
          v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v116 = 136315906;
          *&v116[4] = "operator[]";
          v117 = 1024;
          if (v87)
          {
            v88 = 3;
          }

          else
          {
            v88 = 2;
          }

          v118 = 789;
          v119 = 2048;
          v120 = v56;
          v121 = 2048;
          v122 = v51;
          _os_log_send_and_compose_impl(v88, &v115, &v129, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v116, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_93:
          v115 = 0;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          v89 = MEMORY[0x1E69E9C10];
          v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v116 = 136315906;
          *&v116[4] = "operator[]";
          v117 = 1024;
          if (v90)
          {
            v91 = 3;
          }

          else
          {
            v91 = 2;
          }

          v118 = 468;
          v119 = 2048;
          v120 = v51;
          v121 = 2048;
          v122 = v55;
          _os_log_send_and_compose_impl(v91, &v115, &v129, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v116, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_97:
          re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v51, v29);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v98, v99);
          __break(1u);
LABEL_98:
          v115 = 0;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          v92 = MEMORY[0x1E69E9C10];
          v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v116 = 136315906;
          *&v116[4] = "operator[]";
          v117 = 1024;
          if (v93)
          {
            v94 = 3;
          }

          else
          {
            v94 = 2;
          }

          v118 = 468;
          v119 = 2048;
          v120 = v51;
          v121 = 2048;
          v122 = v56;
          _os_log_send_and_compose_impl(v94, &v115, &v129, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v116, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
          goto LABEL_102;
        }

LABEL_55:
        a3 = v105;
        *(v23 + 280) = v104;
        a5 = v106;
      }

      v62 = *(v107 + 200);
      if (*(v62 + 30))
      {
        v63 = *(v23 + 144);
        if (!v63 || *(v62 + 31) != *v63)
        {
          v64 = *(v62 + 49);
          v29 = *(v64 + 88);
          v50 = *(v64 + 96);
          v65 = re::globalAllocators(v28);
          v66 = (*(*v65[2] + 32))(v65[2], 40, 8);
          *v66 = *(v62 + 31);
          v66[1] = v102;
          v66[3] = 0;
          v66[4] = 0;
          v66[2] = 0;
          v67 = re::ecs2::MeshSmoothComponent::resetDeformerInputs(v23, *(v103 + 144), v66, v50, v29);
          if (*(v23 + 48) && *(v23 + 88))
          {
            re::DynamicArray<float>::operator=(v23 + 192, (v23 + 32));
            re::DynamicArray<float>::operator=(v23 + 232, (v23 + 72));
          }

          v109 = (v62 + 232);
          v110 = 10;
          *v124 = v62 + 232;
          *&v124[8] = 10;
          *&v124[16] = 0;
          while (1)
          {
            re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v129, &v109);
            if (*&v124[12] == HIDWORD(v129) && *&v124[16] == v130)
            {
              break;
            }

            v68 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(v124);
            v69 = re::DeformedMeshAssetsMap::deformedIndex((v23 + 272), v68, WORD2(v68));
            if (v69 != -1)
            {
              v55 = v69;
              v70 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(v124);
              v56 = v55;
              v51 = *(v23 + 208);
              if (v51 <= v55)
              {
                goto LABEL_85;
              }

              v51 = *(v23 + 248);
              if (v51 <= v55)
              {
                goto LABEL_89;
              }

              v51 = v70;
              v72 = *(v67 + 8);
              v55 = *(v72 + 24);
              if (v55 <= v70)
              {
                goto LABEL_93;
              }

              v73 = *(*(v23 + 264) + 4 * v56);
              v74 = (*(v72 + 32) + 8 * v70);
              *v74 = *(*(v23 + 224) + 4 * v56);
              v74[1] = v73;
              if (v29 <= v70)
              {
                goto LABEL_97;
              }

              v75 = *(v67 + 8);
              v56 = *(v75 + 24);
              if (v56 <= v70)
              {
                goto LABEL_98;
              }

              v76 = v50 + 168 * v70;
              v77 = *(v75 + 32) + 8 * v70;
              ++*(v76 + 10);
              *(v76 + 104) = v77;
            }

            re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(v124);
          }

          a3 = v105;
          a5 = v106;
        }

        if (re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(v62, v108))
        {
          v37 = v111;
          v38 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v112);
          v39 = a3[2];
          v40 = a3[6];
          goto LABEL_76;
        }
      }

LABEL_77:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v112);
      if (v112 == a5 && v113 == 0xFFFF && HIWORD(v113) == 0xFFFF)
      {
        goto LABEL_80;
      }
    }

    v32 = v25[5];
    if (!v32 || (v33 = atomic_load((v32 + 896)), v33 != 3))
    {
      v34 = (v25 + 4);
LABEL_31:
      re::AssetHandle::loadAsync(v34);
      goto LABEL_77;
    }

    goto LABEL_29;
  }

LABEL_80:
  v78 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v114, v21, v22);
  return v78;
}

uint64_t re::AssetHandle::loadedAsset<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(re::AssetHandle *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t *re::MeshDeformationRuntimeData::MeshDeformationIteration::end@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(this + 2);
  v4 = *(*this + 136);
  if (v4 <= v3)
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

    v13 = 476;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(*(v2 + 144) + 96 * v3 + 8);
  *a1 = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = v5;
  *(a1 + 8) = 0;
  return this;
}

unint64_t re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(re::MeshDeformationRuntimeData::MeshDeformationIterator *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  v3 = *(*this + 136);
  if (v3 <= v2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v25 = 476;
    v26 = 2048;
    v27 = v2;
    v28 = 2048;
    v29 = v3;
    _os_log_send_and_compose_impl(v7, &v21, &v30, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v4 = (*(*this + 144) + 96 * v2);
  v2 = *(this + 3);
  v3 = v4[1];
  if (v3 <= v2)
  {
LABEL_11:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v25 = 476;
    v26 = 2048;
    v27 = v2;
    v28 = 2048;
    v29 = v3;
    _os_log_send_and_compose_impl(v10, &v21, &v30, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v3 = v4[4];
  if (v3 <= v2)
  {
LABEL_15:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v25 = 476;
    v26 = 2048;
    v27 = v2;
    v28 = 2048;
    v29 = v3;
    _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v3 = *(v4[5] + 4 * v2) + *(this + 8);
  v1 = v4[7];
  if (v1 <= v3)
  {
LABEL_19:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 476;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v1;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 476;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v1;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v1 = v4[10];
  if (v1 <= v3)
  {
    goto LABEL_23;
  }

  return *(v4[2] + 2 * v2) | (*(v4[8] + 2 * v3) << 32) | (*(v4[11] + v3) << 48);
}

uint64_t re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(re::MeshDeformationRuntimeData::MeshDeformationIterator *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(this);
  v3 = *this;
  v4 = v2;
  v5 = *(*this + 64);
  if (v5 <= v2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
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

    v17 = 476;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
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

    v17 = 476;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(v3[9] + 4 * v2) + WORD2(v2);
  v5 = v3[14];
  if (v5 <= v4)
  {
    goto LABEL_8;
  }

  return *(v3[15] + 4 * v4);
}

uint64_t re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(uint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(result + 8);
  v3 = *(*result + 136);
  if (v3 <= v2)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v20 = 476;
    v21 = 2048;
    v22 = v2;
    v23 = 2048;
    v24 = v3;
    _os_log_send_and_compose_impl(v8, &v16, &v25, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(*result + 144);
  v5 = *(result + 16) + 1;
  *(result + 16) = v5;
  v6 = v4 + 96 * v2;
  v1 = *(result + 12);
  v3 = (v1 + 1);
  v2 = *(v6 + 32);
  if (v2 <= v3)
  {
LABEL_11:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 476;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v2;
    _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 476;
    v21 = 2048;
    v22 = v1;
    v23 = 2048;
    v24 = v2;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  if (v2 <= v1)
  {
    goto LABEL_15;
  }

  if ((*(*(v6 + 40) + 4 * v3) - *(*(v6 + 40) + 4 * v1)) <= v5)
  {
    *(result + 12) = v3;
    *(result + 16) = 0;
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::MeshSmoothSystem::willAddSystemToECSService(re::ecs2::MeshSmoothSystem *this)
{
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v2);
  *(this + 32) = result;
  return result;
}

double re::ecs2::MeshSmoothSystem::willRemoveSystemFromECSService(re::ecs2::MeshSmoothSystem *this)
{
  *(this + 32) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::MeshSmoothSystem::willAddSceneToECSService(re::ecs2::MeshSmoothSystem *this, re::ecs2::Scene *a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::init(v12, this + 304, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,4ul>::setBucketsCapacity(this + 38, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::init(v24, this + 304, v52);
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

uint64_t re::ecs2::MeshSmoothSystem::willRemoveSceneFromECSService(re::ecs2::MeshSmoothSystem *this, re::ecs2::Scene *a2)
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

void *re::ecs2::MeshSmoothSystem::update(void *a1, uint64_t a2, uint64_t a3)
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
  v5 = a1[64];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v43 = a1[64];
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
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 45, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[46] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 59));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v12 = a1[64];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v37 = a1[64];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 59), &v38);
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 38), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 59), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 38));
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

void *re::ecs2::allocInfo_MeshSmoothAttributes(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_230))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A65B0, "MeshSmoothAttributes");
    __cxa_guard_release(&_MergedGlobals_230);
  }

  return &unk_1EE1A65B0;
}

void re::ecs2::initInfo_MeshSmoothAttributes(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xC51B688E53129BA4;
  v16[1] = "MeshSmoothAttributes";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A6560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6560))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "iterations";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1A6588 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "lambdas";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A6590 = v14;
    __cxa_guard_release(&qword_1EE1A6560);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A6588;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSmoothAttributes>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSmoothAttributes>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSmoothAttributes>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSmoothAttributes>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::ecs2::MeshSmoothAttributes>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 72) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::ecs2::MeshSmoothAttributes>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::ecs2::MeshSmoothAttributes>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::ecs2::MeshSmoothAttributes>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void *re::ecs2::allocInfo_MeshSmoothComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6570))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6640, "MeshSmoothComponent");
    __cxa_guard_release(&qword_1EE1A6570);
  }

  return &unk_1EE1A6640;
}

void re::ecs2::initInfo_MeshSmoothComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0x92BED4AA627EFA44;
  v27[1] = "MeshSmoothComponent";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1A6578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6578))
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
    qword_1EE1A6598 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE1A6568;
    if (!qword_1EE1A6568)
    {
      v17 = re::ecs2::allocInfo_MeshSmoothAttributes(v15);
      qword_1EE1A6568 = v17;
      re::ecs2::initInfo_MeshSmoothAttributes(v17, v18, v19, v20);
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
    qword_1EE1A65A0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_AssetHandle(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "assignedMeshDeformation";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x7000000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1A65A8 = v25;
    __cxa_guard_release(&qword_1EE1A6578);
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A6598;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSmoothComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSmoothComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSmoothComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSmoothComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219MeshSmoothComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void *re::ecs2::allocInfo_MeshSmoothSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6580))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A66D0, "MeshSmoothSystem");
    __cxa_guard_release(&qword_1EE1A6580);
  }

  return &unk_1EE1A66D0;
}

void re::ecs2::initInfo_MeshSmoothSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xD08070BBCBB71854;
  v8[1] = "MeshSmoothSystem";
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
  *(this + 8) = &re::ecs2::initInfo_MeshSmoothSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSmoothSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSmoothSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshSmoothSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshSmoothSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSmoothSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSmoothSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::MeshSmoothSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 38);
  a3[33] = &unk_1F5CEDB90;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 35);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshSmoothSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 38);
  a1[33] = &unk_1F5CEDB90;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::MeshSmoothComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::MeshSmoothSystem::~MeshSmoothSystem(re::ecs2::MeshSmoothSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  *(this + 33) = &unk_1F5CEDB90;
  re::FixedArray<CoreIKTransform>::deinit(this + 35);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  *(this + 33) = &unk_1F5CEDB90;
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::FixedArray<unsigned int>::init<int>(uint64_t *result, uint64_t a2, unint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v10, v11);
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 4 * a3, 4);
  v6[2] = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = *a4;
    do
    {
      *result = v9;
      result = (result + 4);
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEDC88;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEDCE0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEDD38;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEDD90;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CEDC88;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEDCE0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEDD38;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEDD90;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDC88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDC88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDCE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDCE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDD38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDD38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDD90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDD90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::MeshSmoothComponent>(uint64_t a1)
{
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
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD0EC0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  inited = objc_initWeak((v2 + 136), 0);
  *(a1 + 144) = 0;
  *(a1 + 176) = re::globalAllocators(inited)[2];
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = -1;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 288) = 0u;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219MeshSmoothComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void ___ZN2re19CARESortingDefaults15normalThresholdEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue(&v3, "CASortingNormalThreshold", a2);
  v2 = *(&v3 + 1);
  if (!v3)
  {
    v2 = 0.0001;
  }

  re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold = LODWORD(v2);
}

void ___ZN2re19CARESortingDefaults17distanceThresholdEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue(&v3, "CASortingDistanceThreshold", a2);
  v2 = *(&v3 + 1);
  if (!v3)
  {
    v2 = 0.0005;
  }

  re::CARESortingDefaults::distanceThreshold(void)::sortingDistanceThreshold = LODWORD(v2);
}

void ___ZN2re19CARESortingDefaults29displacementOrderingThresholdEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue(&v3, "CASortingDisplacementOrderingThreshold", a2);
  v2 = *(&v3 + 1);
  if (!v3)
  {
    v2 = 0.0001;
  }

  re::CARESortingDefaults::displacementOrderingThreshold(void)::sortingDisplacementOrderingThreshold = LODWORD(v2);
}

void ___ZN2re19CARESortingDefaults28enableDrawLayerSortingGroupsEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(&v6, "CAREEnableDrawLayerSortingGroups", a2);
  if (v6)
  {
    v3 = BYTE1(v6);
  }

  else
  {
    v3 = 0;
  }

  re::gEnableDrawLayerSortingGroups = v3;
  v4 = *re::sortingLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (re::gEnableDrawLayerSortingGroups)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "DrawLayerSortingGroups is now %s.", &v6, 0xCu);
  }
}

void *re::ecs2::allocInfo_SubsceneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6768))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6780, "SubsceneComponent");
    __cxa_guard_release(&qword_1EE1A6768);
  }

  return &unk_1EE1A6780;
}

void re::ecs2::initInfo_SubsceneComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x88FEEDB7C0BE1FE2;
  v20[1] = "SubsceneComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&_MergedGlobals_231, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_231))
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
    qword_1EE1A6770 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_subscene";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A6778 = v18;
    __cxa_guard_release(&_MergedGlobals_231);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A6770;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SubsceneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SubsceneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SubsceneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SubsceneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217SubsceneComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::SubsceneComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE2A20;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void *re::internal::defaultDestruct<re::ecs2::SubsceneComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::SubsceneComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE2A20;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::internal::defaultDestructV2<re::ecs2::SubsceneComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

uint64_t re::ecs2::SubsceneComponent::setSubscene(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  (*(*(v4 + 40) + 16))();
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v4 + 328);
  result = re::AssetHandle::operator=(a1 + 32, a2);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = atomic_load((v7 + 896));
    if (v8 == 2)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        v10 = *(v9 + 24);
      }

      else
      {
        v10 = 0;
      }

      result = re::ecs2::ECSSerialization::loadFromAsset(v4, v10, (a1 + 32), v6);
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs217SubsceneComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_LinkedTLEComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_232, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_232))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6828, "LinkedTLEComponent");
    __cxa_guard_release(&_MergedGlobals_232);
  }

  return &unk_1EE1A6828;
}

void re::ecs2::initInfo_LinkedTLEComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x181663CBD41226D2;
  v16[1] = "LinkedTLEComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A6820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6820))
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
    qword_1EE1A6818 = v14;
    __cxa_guard_release(&qword_1EE1A6820);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A6818;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LinkedTLEComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LinkedTLEComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LinkedTLEComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LinkedTLEComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218LinkedTLEComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::LinkedTLEComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE5630;
}

void re::internal::defaultConstructV2<re::ecs2::LinkedTLEComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE5630;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218LinkedTLEComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_ColliderComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_233, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_233))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A68F8, "ColliderComponent");
    __cxa_guard_release(&_MergedGlobals_233);
  }

  return &unk_1EE1A68F8;
}

void re::ecs2::initInfo_ColliderComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0x92DE29B139D12E92;
  v36[1] = "ColliderComponent";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1A68C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A68C0))
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
    qword_1EE1A68C8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "shape";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A68D0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_CollisionObjectType(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "type";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3800000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A68D8 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint32_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "group";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x4000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A68E0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_uint32_t(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "mask";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x4400000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1A68E8 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_uint32_t(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "interactionType";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x3C00000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1A68F0 = v34;
    __cxa_guard_release(&qword_1EE1A68C0);
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1A68C8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ColliderComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ColliderComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ColliderComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ColliderComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217ColliderComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v35 = v37;
}

void re::ecs2::ColliderComponent::removeFromSimulation(id *this)
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (this[12])
  {
    WeakRetained = objc_loadWeakRetained(this + 20);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      v4 = this[12];
      v5 = this[13];
      v10[0] = &unk_1F5CEDED0;
      v10[1] = v5;
      v10[3] = v10;
      v9[3] = v9;
      v8 = v4;
      v9[0] = &unk_1F5CEDED0;
      v9[1] = v5;
      std::__function::__value_func<void ()(re::CollisionObject *)>::~__value_func[abi:nn200100](v10);
      std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::operator=[abi:nn200100](this + 15, &v8);
      std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::~unique_ptr[abi:nn200100](&v8);
      v6 = v3[6];
      v7 = this[12];
      re::ContactSetCollection::remove((*(v6 + 128) + 72), v7);
      (*(**(v6 + 128) + 200))(*(v6 + 128), v7);
      *(v7 + 7) = 0;
      objc_destroyWeak(this + 20);
      this[20] = 0;
    }

    this[12] = 0;
  }
}

uint64_t re::ecs2::ColliderComponent::setUnmanagedCollisionObject(uint64_t this, re::CollisionObject *a2)
{
  if (*(this + 96) != a2)
  {
    v4 = this;
    re::ecs2::ColliderComponent::removeFromSimulation(this);
    *(v4 + 96) = a2;

    return re::AssetHandle::operator=(v4 + 72, (v4 + 32));
  }

  return this;
}

uint64_t *std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::CollisionObject *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::CollisionObject *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::CollisionShapeAsset>(re::CollisionShapeAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::CollisionShapeAsset::assetType(a1);
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

BOOL re::ecs2::ColliderComponentStateImpl::processDirtyComponents(_BOOL8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v52, 3047, a1, *(a5 + 40), 0, 0);
  v8 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v12 = v9, v13 = a3[1], v14 = (*(*v9 + 24))(v9), v15 = (*(*v12 + 40))(v12, v13), v51[0] = v14, (v51[1] = v15) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v48, a5, 0);
    v17 = v48;
    v16 = v49;
    v48 = a4;
    v49 = v17;
    v50 = v16;
    if (v17 != a5 || v16 != 0xFFFFFFFFLL)
    {
      do
      {
        v18 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v48);
        v19 = v18;
        v20 = *(v18 + 2);
        v21 = *(v20 + 98);
        if (!*(v20 + 98))
        {
          goto LABEL_19;
        }

        v22 = (re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v23 = *(v20 + 104);
        v24 = vld1q_dup_s16(v22);
        v25 = 1;
        v26 = v23;
        v27 = *(v20 + 98);
        while (1)
        {
          v28 = vandq_s8(vceqq_s16(v24, *v26), xmmword_1E306AC00);
          v28.i16[0] = vmaxvq_u16(v28);
          if (v28.i32[0])
          {
            break;
          }

          v25 -= 8;
          ++v26;
          if (!--v27)
          {
            goto LABEL_12;
          }
        }

        if (v28.u16[0] - v25 < *(v20 + 96))
        {
          v29 = v48;
          v30 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v49);
          v31 = a3[2];
          v32 = a3[4];
          goto LABEL_35;
        }

LABEL_12:
        v33 = (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v34 = vld1q_dup_s16(v33);
        v35 = 1;
        while (1)
        {
          v36 = vandq_s8(vceqq_s16(v34, *v23), xmmword_1E306AC00);
          v36.i16[0] = vmaxvq_u16(v36);
          if (v36.i32[0])
          {
            break;
          }

          v35 -= 8;
          ++v23;
          if (!--v21)
          {
            goto LABEL_19;
          }
        }

        if (v36.u16[0] - v35 < *(v20 + 96))
        {
          v37 = *re::ecsComponentsLogObjects(v18);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v47 = 0;
            _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "Collider component cannot exist on the same entity that contains a character controller component. Deactivating collider component.", &v47, 2u);
          }
        }

        else
        {
LABEL_19:
          v38 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v51, v20);
          if (v38)
          {
            v39 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v38);
          }

          else
          {
            v39 = 0;
          }

          if ((*(v20 + 304) & 1) != 0 && v19[5] && v39 != 0)
          {
            WeakRetained = objc_loadWeakRetained(v19 + 20);
            if (WeakRetained)
            {
              v44 = WeakRetained - 8;
            }

            else
            {
              v44 = 0;
            }

            if (v44 != v39)
            {
              re::ecs2::ColliderComponent::removeFromSimulation(v19);
            }

            v29 = v48;
            v30 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v49);
            v31 = a3[2];
            v32 = a3[5];
LABEL_35:
            re::ecs2::ComponentBucketsBase::moveComponent(v31, v29, v30, v32);
            goto LABEL_36;
          }
        }

        v41 = v48;
        v42 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v49);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v41, v42, a3[4]);
        re::ecs2::ColliderComponent::removeFromSimulation(v19);
LABEL_36:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v49);
      }

      while (v49 != a5 || v50 != 0xFFFF || HIWORD(v50) != 0xFFFF);
    }

    v45 = *(a5 + 40) != 0;
  }

  else
  {
    v45 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v52, v10, v11);
  return v45;
}

BOOL re::ecs2::ColliderComponentStateImpl::processPreparingComponents(_BOOL8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v55, 3047, a1, *(a5 + 40), 0, 0);
  v8 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (!v9 || (v12 = v9, v13 = a3[1], v14 = (*(*v9 + 24))(v9), v15 = (*(*v12 + 40))(v12, v13), v54[0] = v14, (v54[1] = v15) == 0))
  {
    v16 = 0;
    goto LABEL_7;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v51 = a4;
  v52 = *buf;
  v53 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v18 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v51);
      v19 = v18;
      v20 = *(v18 + 40);
      if (!v20 || (v21 = *(v18 + 16), v22 = atomic_load((v20 + 896)), v22 != 2))
      {
        re::AssetHandle::loadAsync((v18 + 32));
        re::ecs2::ColliderComponent::removeFromSimulation(v19);
        goto LABEL_30;
      }

      v23 = *(v18 + 96);
      if (v23)
      {
        v24 = *(v23 + 88);
        if (*(v18 + 80) == *(v18 + 40) && v24 == *(v18 + 60))
        {
          goto LABEL_28;
        }
      }

      v26 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v54, *(v18 + 16));
      re::TransformService::worldMatrix(*(v26 + 8), v21, 0, buf);
      re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v26, buf, v50);
      v57 = xmmword_1E30474D0;
      *buf = 0u;
      v56 = 0u;
      v27 = re::decomposeScaleRotationTranslation<float>(v50, buf, &v57, &v56);
      v28 = v56;
      v29 = v57;
      v30 = vmulq_f32(v57, v57);
      v31 = vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)));
      if (v31 != 1.0 && fabsf(v31 + -1.0) > 0.00001)
      {
        v32 = *re::ecsComponentsLogObjects(v27);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "NaN or non-unit rotation detected in transform (Collider). Skipping.", buf, 2u);
        }

        re::ecs2::ColliderComponent::removeFromSimulation(v19);
        v33 = v51;
        v34 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v52);
        v35 = a3[2];
        v36 = a3[4];
        goto LABEL_29;
      }

      v49 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v26);
      re::ecs2::ColliderComponent::removeFromSimulation(v19);
      v38 = *(re::AssetHandle::blockUntilLoaded<re::CollisionShapeAsset>((v19 + 32)) + 8);
      re::AssetHandle::operator=(v19 + 72, (v19 + 32));
      v39 = v38;
      v40 = *(v19 + 120);
      v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) >> 27));
      v42 = 0xBF58476D1CE4E5B9 * (*(v19 + 60) ^ (*(v19 + 60) >> 30));
      v43 = (((v41 ^ (v41 >> 31)) << 6) + ((v41 ^ (v41 >> 31)) >> 2) + ((0x94D049BB133111EBLL * (v42 ^ (v42 >> 27))) ^ ((0x94D049BB133111EBLL * (v42 ^ (v42 >> 27))) >> 31)) - 0x61C8864680B583E9) ^ v41 ^ (v41 >> 31);
      if (!v40)
      {
        goto LABEL_24;
      }

      v44 = *(v19 + 112);
      *(v19 + 120) = 0;
      if (v43 != v44)
      {
        break;
      }

LABEL_27:
      *(v19 + 96) = v40;
      *(v19 + 112) = v43;
      *(v40 + 40) = *(v19 + 16);
      objc_storeWeak((v19 + 160), (v49 + 8));
      v46 = *(*(v49 + 56) + 128);
      *(*(v19 + 96) + 56) = v46;
      (*(*v46 + 192))(v46);
      re::AssetHandle::operator=(v19 + 72, (v19 + 32));
LABEL_28:
      v33 = v51;
      v34 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v52);
      v35 = a3[2];
      v36 = a3[6];
LABEL_29:
      re::ecs2::ComponentBucketsBase::moveComponent(v35, v33, v34, v36);
LABEL_30:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v52);
      if (v52 == a5 && v53 == 0xFFFF && HIWORD(v53) == 0xFFFF)
      {
        goto LABEL_5;
      }
    }

    v48 = v39;
    std::function<void ()(re::CollisionObject *)>::operator()(v19 + 128, v40);
    v39 = v48;
LABEL_24:
    *buf = v28;
    v59 = v29;
    {
      v47 = v39;
      re::initCollision(0);
      v39 = v47;
    }

    goto LABEL_27;
  }

LABEL_5:
  v16 = *(a5 + 40) != 0;
LABEL_7:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v55, v10, v11);
  return v16;
}

BOOL re::ecs2::ColliderComponentStateImpl::processUpdatingComponents(_BOOL8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v39, 3047, a1, *(a5 + 40), 0, 0);
  v10 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v10);
  if (v11 && (v14 = v11, v15 = a3[1], v16 = (*(*v11 + 24))(v11), v17 = (*(*v14 + 40))(v14, v15), v38[0] = v16, (v38[1] = v17) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v43, a5, 0);
    v35 = a4;
    v36 = v43[0].i64[0];
    v37 = v43[0].i32[2];
    if (v43[0].i64[0] != a5 || v43[0].u32[2] != 0xFFFFFFFFLL)
    {
      do
      {
        v22 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v35);
        v23 = *(v22 + 16);
        v24 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v38, v23);
        v25 = v24;
        if (!a6 || re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v24) == a6)
        {
          re::TransformService::worldMatrix(*(v25 + 1), v23, 0, v43);
          re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v25, v43, v34);
          v42 = 0u;
          v40 = 0u;
          v41 = xmmword_1E30474D0;
          v26 = re::decomposeScaleRotationTranslation<float>(v34, &v42, &v41, &v40);
          v43[0] = v42;
          v43[1] = v41;
          v43[2] = v40;
          v27 = vmulq_f32(v41, v41);
          v28 = vaddv_f32(vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)));
          if (v28 == 1.0 || fabsf(v28 + -1.0) <= 0.00001)
          {
            v34[0] = v40;
            v34[1] = v41;
            v18 = *(*(v22 + 96) + 16);
            v19 = v41;
            v18[1] = v40;
            v18[2] = v19;
            (*(*v18 + 64))(v18, v34);
            re::CollisionObject::setScale(*(v22 + 96), v43);
            v20 = *(v22 + 96);
            v21 = *(v22 + 64);
            if (v20[4] != v21)
            {
              v20[4] = v21;
              (*(*v20 + 80))(v20);
            }
          }

          else
          {
            v29 = *re::ecsComponentsLogObjects(v26);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v34[0]) = 0;
              _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "NaN or non-unit rotation detected in transform (PhysicsSystem_Collider). Skipping.", v34, 2u);
            }

            re::ecs2::ColliderComponent::removeFromSimulation(v22);
            v30 = v35;
            v31 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v36);
            re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v30, v31, a3[4]);
          }
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v36);
      }

      while (v36 != a5 || v37 != 0xFFFF || HIWORD(v37) != 0xFFFF);
    }

    v32 = *(a5 + 40) != 0;
  }

  else
  {
    v32 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v39, v12, v13);
  return v32;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::ColliderComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::ColliderComponent>(uint64_t a1)
{
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
  *(a1 + 160) = 0;
  v2 = (a1 + 160);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1300;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 60) = 0x100000000;
  *(v3 + 68) = -1;
  *(v3 + 152) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0;
  objc_initWeak(v2, 0);
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs217ColliderComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t std::__function::__func<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1},std::allocator<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1}>,void ()(re::CollisionObject*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CEDED0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1},std::allocator<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1}>,void ()(re::CollisionObject*)>::operator()(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    (**v2)(*a2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1},std::allocator<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1}>,void ()(re::CollisionObject*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::CollisionObject *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::CollisionObject *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::CollisionObject *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

__n128 re::ecs2::VideoProxyComponent::impl::deinitPixelBufferGroup(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 160))
  {
    re::AssetHandle::mutateAssetCommon((a1 + 152));
    ++*(*(a1 + 160) + 276);
    v6 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>((a1 + 152));
    if (a3)
    {
      if (!v6)
      {
        goto LABEL_8;
      }

      re::VideoAsset::clearFutureUserProvidedVideoPixelBuffers(v6);
    }

    else
    {
      if (!v6)
      {
        goto LABEL_8;
      }

      re::VideoAsset::clearCurrentUserProvidedVideoPixelBuffers(v6);
    }

    v7 = *(a1 + 160);
    *(v7 + 256) = 1;
    re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
    re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(a1 + 160));
  }

LABEL_8:
  if (*a2)
  {
    v8 = 0;
    do
    {
      CVPixelBufferRelease(*(a2 + 8 * v8++ + 16));
    }

    while (v8 < *a2);
  }

  *a2 = 0;
  ++*(a2 + 8);
  v9 = *(a2 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a2 + 32) = 0;
  v10 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a2 + 44) = *MEMORY[0x1E6960C70];
  *(a2 + 60) = *(v10 + 16);
  return result;
}

uint64_t re::ecs2::VideoProxyComponent::impl::generateAsset(re::ecs2::VideoProxyComponent::impl *this, re::AssetManager *a2)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(a2);
  re::AssetHandle::operator=(this + 152, v11);
  re::AssetHandle::mutateAssetCommon((this + 152));
  ++*(*(this + 20) + 276);
  v3 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>((this + 152));
  if (v3)
  {
    v4 = v3;
    v17 = 0;
    v5 = *(this + 1);
    memcpy(v18, this + 24, 8 * v5);
    v16 = v5;
    v6 = *(this + 56);
    v18[1] = *(this + 40);
    v18[2] = v6;
    v19 = *(this + 18);
    re::VideoAsset::setCurrentUserProvidedVideoPixelBuffers(v4, &v16);
    v16 = 0;
    ++v17;
    v13 = 0;
    v7 = *(this + 10);
    memcpy(v14, this + 96, 8 * v7);
    v12 = v7;
    v8 = *(this + 8);
    v14[1] = *(this + 7);
    v14[2] = v8;
    v15 = *(this + 36);
    re::VideoAsset::setFutureUserProvidedVideoPixelBuffers(v4, &v12);
    *(v4 + 29) = 0;
    v9 = *(this + 20);
    *(v9 + 256) = 1;
    re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v9);
    re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(this + 20));
  }

  re::AssetHandle::payloadDidChangeIfPossible((this + 152));
  re::AssetHandle::~AssetHandle(v11);
  return this + 152;
}

void re::ecs2::VideoProxyComponent::impl::addAttachmentsToVideoComponent(re::ecs2::VideoProxyComponent::impl *this, re::ecs2::VideoComponent *a2)
{
  *&v44.var0 = 0xE7EFB84B1970EB62;
  v44.var1 = "REVideoAttachmentTextureVideoLoading";
  v45 = 0;
  v46 = &str_67;
  v3 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v44);
  if (v45)
  {
    if (v45)
    {
    }
  }

  v45 = 0;
  v46 = &str_67;
  if (*&v44.var0)
  {
    if (*&v44.var0)
    {
    }
  }

  *&v44.var0 = 0;
  v44.var1 = &str_67;
  *&v41.var0 = 0xC49C914A9995F024;
  v41.var1 = "REVideoAttachmentTextureVideoBlur";
  v42 = 0;
  v43 = &str_67;
  v4 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v41);
  if (v42)
  {
    if (v42)
    {
    }
  }

  v42 = 0;
  v43 = &str_67;
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  *&v41.var0 = 0;
  v41.var1 = &str_67;
  *&v38.var0 = 0xFFB9D6614348A962;
  v38.var1 = "REVideoAttachmentChannelID1TexturePlane0";
  v39 = 0;
  v40 = &str_67;
  v5 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v38);
  if (v39)
  {
    if (v39)
    {
    }
  }

  v39 = 0;
  v40 = &str_67;
  if (*&v38.var0)
  {
    if (*&v38.var0)
    {
    }
  }

  *&v38.var0 = 0;
  v38.var1 = &str_67;
  *&v35.var0 = 0xFFB9D6614348A964;
  v35.var1 = "REVideoAttachmentChannelID1TexturePlane1";
  v36 = 0;
  v37 = &str_67;
  v6 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v35);
  if (v36)
  {
    if (v36)
    {
    }
  }

  v36 = 0;
  v37 = &str_67;
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  *&v35.var0 = 0;
  v35.var1 = &str_67;
  *&v32.var0 = 0xFFB9D6614348A966;
  v32.var1 = "REVideoAttachmentChannelID1TexturePlane2";
  v33 = 0;
  v34 = &str_67;
  v7 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v32);
  if (v33)
  {
    if (v33)
    {
    }
  }

  v33 = 0;
  v34 = &str_67;
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0;
  v32.var1 = &str_67;
  *&v29.var0 = 0xA572F05B07043CA0;
  v29.var1 = "REVideoAttachmentChannelID2TexturePlane0";
  v30 = 0;
  v31 = &str_67;
  v8 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v29);
  if (v30)
  {
    if (v30)
    {
    }
  }

  v30 = 0;
  v31 = &str_67;
  if (*&v29.var0)
  {
    if (*&v29.var0)
    {
    }
  }

  *&v29.var0 = 0;
  v29.var1 = &str_67;
  *&v26.var0 = 0xA572F05B07043CA2;
  v26.var1 = "REVideoAttachmentChannelID2TexturePlane1";
  v27 = 0;
  v28 = &str_67;
  v9 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v26);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0;
  v28 = &str_67;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  *&v26.var0 = 0;
  v26.var1 = &str_67;
  *&v23.var0 = 0xA572F05B07043CA4;
  v23.var1 = "REVideoAttachmentChannelID2TexturePlane2";
  v24 = 0;
  v25 = &str_67;
  v10 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v23);
  if (v24)
  {
    if (v24)
    {
    }
  }

  v24 = 0;
  v25 = &str_67;
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  *&v23.var0 = 0;
  v23.var1 = &str_67;
  *&v20.var0 = 0x83807E236D5174B2;
  v20.var1 = "REVideoAttachmentConstantYCbCrMatrix";
  v21 = 0;
  v22 = &str_67;
  v11 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v20);
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (*&v20.var0)
  {
    if (*&v20.var0)
    {
    }
  }

  *&v20.var0 = 0;
  v20.var1 = &str_67;
  *&v17.var0 = 0x652E145D102D3908;
  v17.var1 = "REVideoAttachmentConstantImageFunction";
  v18 = 0;
  v19 = &str_67;
  v12 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v17);
  if (v18)
  {
    if (v18)
    {
    }
  }

  v18 = 0;
  v19 = &str_67;
  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }

  *&v17.var0 = 0;
  v17.var1 = &str_67;
  *&v14.var0 = 0x963DA5D75AB5D342;
  v14.var1 = "REVideoAttachmentSpill";
  v15 = 0;
  v16 = &str_67;
  v13 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v14);
  if (v15)
  {
    if (v15)
    {
    }
  }

  v15 = 0;
  v16 = &str_67;
  if (*&v14.var0)
  {
    if (*&v14.var0)
    {
    }
  }
}

_BYTE *re::ecs2::VideoProxyComponent::impl::update(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a5)
  {
    v7 = result;
    if ((*result & 1) == 0)
    {
      v8 = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      *v7 = 1;
      re::ecs2::VideoProxyComponent::impl::addAttachmentsToVideoComponent(v8, v8);
    }

    result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (result)
    {
      v9 = result;
      result[331] = 1;
      re::AssetHandle::AssetHandle(v10, (v7 + 152));
      re::AssetHandle::operator=((v9 + 208), v10);
      v9[73] = 0;
      re::AssetHandle::~AssetHandle(v10);
      result = re::AssetHandle::operator=((v9 + 32), (a3 + 32));
      v9[348] = *(*(a3 + 56) + 196);
    }
  }

  return result;
}

float32x2_t re::ecs2::VideoProxyComponent::impl::postBufferRetrievalUpdate(float32x2_t *this, float32x2_t result, re::ecs2::Entity *a3, re::AssetManager *a4)
{
  if (a3)
  {
    if (a4)
    {
      v6 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v6)
      {
        v7 = v6;
        v8 = re::ecs2::EntityComponentCollection::getOrAdd((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v8)
        {
          v9 = v8;
          v10 = *(v7 + 56);
          if (*(v10 + 160) && (v11 = re::AssetHandle::loadedAsset<re::VideoAsset>((v10 + 152))) != 0)
          {
            v12 = *(v11 + 208);
            if (v12)
            {
              v13 = *(v12 + 5088);
            }

            else
            {
              v13 = 0.0;
            }

            if (fabsf(v13) < 0.000001)
            {
              v14 = 1;
            }

            else
            {
              v14 = 2;
            }
          }

          else
          {
            v14 = 1;
          }

          v15 = this[22];
          v16 = this[23];
          v17 = this[24].f32[0];
          v9[33] = v15;
          v9[34] = v16;
          result = vmul_f32(vadd_f32(v15, v16), 0x3F0000003F000000);
          v9[35] = result;
          v9[36].f32[0] = v17 + 1.0;
          v9[36].i32[1] = v14;
        }
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_VideoProxyComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_234, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_234))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A69A0, "VideoProxyComponent");
    __cxa_guard_release(&_MergedGlobals_234);
  }

  return &unk_1EE1A69A0;
}

void re::ecs2::initInfo_VideoProxyComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x6B0AC0336B6E06D4;
  v16[1] = "VideoProxyComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A6998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6998))
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
    qword_1EE1A6990 = v14;
    __cxa_guard_release(&qword_1EE1A6998);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A6990;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoProxyComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoProxyComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoProxyComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoProxyComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219VideoProxyComponentELNS_17RealityKitReleaseE11EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

re::ecs2::VideoProxyComponent *re::ecs2::VideoProxyComponent::VideoProxyComponent(re::ecs2::VideoProxyComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CEDF60;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 200, 8);
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 48) = -1;
  v5 = MEMORY[0x1E6960C70];
  *(v4 + 120) = -1;
  *(v4 + 184) = 0x3F8000003F800000;
  *(v4 + 192) = 0;
  v6 = *v5;
  *(v4 + 52) = *v5;
  v7 = *(v5 + 2);
  *(v4 + 68) = v7;
  *(v4 + 140) = v7;
  *(v4 + 124) = v6;
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 196) = 0;
  *(this + 7) = v4;
  return this;
}

void re::ecs2::VideoProxyComponent::~VideoProxyComponent(re::ecs2::VideoProxyComponent *this)
{
  *this = &unk_1F5CEDF60;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    re::ecs2::VideoProxyComponent::impl::deinitPixelBufferGroup(v2, v2 + 8, 0);
    re::ecs2::VideoProxyComponent::impl::deinitPixelBufferGroup(v2, v2 + 80, 1);
    re::AssetHandle::~AssetHandle((v2 + 152));
    *(v2 + 80) = 0;
    ++*(v2 + 88);
    *(v2 + 8) = 0;
    ++*(v2 + 16);
    (*(*v3 + 40))(v3, v2);
  }

  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::VideoProxyComponent::~VideoProxyComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::VideoProxyComponent::update(uint64_t a1, uint64_t a2, const re::AssetHandle *a3, uint64_t a4)
{
  v7 = *(a1 + 56);
  re::AssetHandle::AssetHandle(v9, a3);
  re::ecs2::VideoProxyComponent::impl::update(v7, a2, a1, v8, a4);
  re::AssetHandle::~AssetHandle(v9);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::VideoAsset>(re::VideoAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::VideoAsset::assetType(a1);
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

void _ZZN2re8internal15setIntroVersionINS_4ecs219VideoProxyComponentELNS_17RealityKitReleaseE11EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 11;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_AnimationSceneService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_235, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_235))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6A38, "AnimationSceneService");
    __cxa_guard_release(&_MergedGlobals_235);
  }

  return &unk_1EE1A6A38;
}

void re::ecs2::initInfo_AnimationSceneService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x7787547DA612D41ALL;
  v8[1] = "AnimationSceneService";
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
  *(this + 8) = &re::ecs2::initInfo_AnimationSceneService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::ecs2::CARESortingDebugging::dumpSorting(re::ecs2::CARESortingDebugging *this, __CFString *a2, const re::ecs2::CARESortingManager *a3)
{
  v159 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v154 = 0;
  v155 = 0;
  v156 = 1;
  v157 = 0;
  v158 = 0;
  v153[0] = &v154;
  v153[1] = a3;
  obj = v4;
  v128 = *(a3 + 22);
  if (v128)
  {
    v5 = 0;
    v6 = *(a3 + 9);
    while (1)
    {
      v7 = *v6;
      v6 += 46;
      if (v7 < 0)
      {
        break;
      }

      if (v128 == ++v5)
      {
        LODWORD(v5) = *(a3 + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v140 = a3;
  if (v5 != v128)
  {
    v8 = *(a3 + 22);
    do
    {
      v131 = v5;
      v9 = *(a3 + 9) + 184 * v5;
      v141 = *(v9 + 48);
      if (v141)
      {
        v10 = 0;
        v11 = (*(v9 + 32) + 8);
        while (1)
        {
          v12 = *v11;
          v11 += 6;
          if (v12 < 0)
          {
            break;
          }

          if (v141 == ++v10)
          {
            LODWORD(v10) = *(v9 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      v134 = *(a3 + 9) + 184 * v5;
      if (v10 != v141)
      {
        do
        {
          v13 = *(v9 + 32) + 24 * v10;
          v14 = *(v13 + 16);
          v137 = (v13 + 16);
          v15 = *(v14 + 232);
          if (v15)
          {
            v16 = 0;
            v17 = (*(v14 + 216) + 8);
            while (1)
            {
              v18 = *v17;
              v17 += 6;
              if (v18 < 0)
              {
                break;
              }

              if (v15 == ++v16)
              {
                LODWORD(v16) = *(v14 + 232);
                break;
              }
            }
          }

          else
          {
            LODWORD(v16) = 0;
          }

          if (v16 != v15)
          {
            do
            {
              v19 = *(v14 + 216) + 24 * v16;
              v22 = *(v19 + 16);
              v21 = v19 + 16;
              v20 = v22;
              if (*(v22 + 300))
              {
                v23 = *(v20 + 304);
                if (v23)
                {
                  v24 = 0;
                  v25 = (*(v20 + 288) + 8);
                  while (1)
                  {
                    v26 = *v25;
                    v25 += 6;
                    if (v26 < 0)
                    {
                      break;
                    }

                    if (v23 == ++v24)
                    {
                      LODWORD(v24) = *(v20 + 304);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v24) = 0;
                }

                if (v24 != v23)
                {
                  do
                  {
                    re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::$_0::operator()(v153, *(*(v20 + 288) + 24 * v24 + 16));
                    v27 = *(v20 + 304);
                    if (v27 <= v24 + 1)
                    {
                      v27 = v24 + 1;
                    }

                    while (v27 - 1 != v24)
                    {
                      LODWORD(v24) = v24 + 1;
                      if ((*(*(v20 + 288) + 24 * v24 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_37;
                      }
                    }

                    LODWORD(v24) = v27;
LABEL_37:
                    ;
                  }

                  while (v24 != v23);
                  v20 = *v21;
                  LODWORD(v23) = *(*v21 + 304);
                }

                if (v23)
                {
                  v28 = 0;
                  v29 = (*(v20 + 288) + 8);
                  while (1)
                  {
                    v30 = *v29;
                    v29 += 6;
                    if (v30 < 0)
                    {
                      break;
                    }

                    if (v23 == ++v28)
                    {
                      LODWORD(v28) = v23;
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v28) = 0;
                }

                if (v28 == v23)
                {
                  v31 = 0;
                }

                else
                {
                  while (1)
                  {
                    v32 = *(*(v20 + 288) + 24 * v28 + 16);
                    re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::$_0::operator()(v153, v32);
                    v33 = v32[28];
                    if (v33)
                    {
                      if (*(v33 + 32))
                      {
                        break;
                      }
                    }

                    v34 = *(v20 + 304);
                    if (v34 <= v28 + 1)
                    {
                      v34 = v28 + 1;
                    }

                    while (v34 - 1 != v28)
                    {
                      LODWORD(v28) = v28 + 1;
                      if ((*(*(v20 + 288) + 24 * v28 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_55;
                      }
                    }

                    LODWORD(v28) = v34;
LABEL_55:
                    if (v28 == v23)
                    {
                      v31 = 0;
                      goto LABEL_58;
                    }
                  }

                  v31 = 1;
LABEL_58:
                  v20 = *v21;
                  LODWORD(v23) = *(*v21 + 304);
                }

                v35 = *(v20 + 288);
                v36 = 0;
                if (v23)
                {
                  v37 = (v35 + 8);
                  while (1)
                  {
                    v38 = *v37;
                    v37 += 6;
                    if (v38 < 0)
                    {
                      break;
                    }

                    if (v23 == ++v36)
                    {
                      LODWORD(v36) = v23;
                      break;
                    }
                  }
                }

                v39 = re::ecs2::EntityComponentCollection::get((*(v35 + 24 * v36 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                if (v39)
                {
                  v40 = v31;
                }

                else
                {
                  v40 = 0;
                }

                if (v40 == 1)
                {
                  v41 = 32;
                  if (*(v39 + 304))
                  {
                    v41 = 176;
                  }

                  v42 = v39 + v41;
                  if ((*(v42 + 9) & 1) == 0)
                  {
                    v149.n128_u64[0] = @"Portals z-fighting";
                    v149.n128_u64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"MeshSortingGroup %llu contains portals but does not use depth bias. Potential z-fighting.", *v42];
                    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(&v154, &v149);
                  }
                }
              }

              v43 = *(v14 + 232);
              if (v43 <= v16 + 1)
              {
                v43 = v16 + 1;
              }

              while (v43 - 1 != v16)
              {
                LODWORD(v16) = v16 + 1;
                if ((*(*(v14 + 216) + 24 * v16 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_78;
                }
              }

              LODWORD(v16) = v43;
LABEL_78:
              ;
            }

            while (v16 != v15);
            v14 = *v137;
          }

          v44 = *(v14 + 280);
          a3 = v140;
          v9 = v134;
          if (v44)
          {
            v45 = 0;
            v46 = (*(v14 + 264) + 8);
            while (1)
            {
              v47 = *v46;
              v46 += 6;
              if (v47 < 0)
              {
                break;
              }

              if (v44 == ++v45)
              {
                LODWORD(v45) = *(v14 + 280);
                break;
              }
            }
          }

          else
          {
            LODWORD(v45) = 0;
          }

LABEL_92:
          while (v45 != v44)
          {
            re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::$_0::operator()(v153, *(*(v14 + 264) + 24 * v45 + 16));
            v48 = *(v14 + 280);
            if (v48 <= v45 + 1)
            {
              v48 = v45 + 1;
            }

            while (v48 - 1 != v45)
            {
              LODWORD(v45) = v45 + 1;
              if ((*(*(v14 + 264) + 24 * v45 + 8) & 0x80000000) != 0)
              {
                goto LABEL_92;
              }
            }

            LODWORD(v45) = v48;
          }

          v49 = *(v134 + 48);
          if (v49 <= v10 + 1)
          {
            v49 = v10 + 1;
          }

          while (v49 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(*(v134 + 32) + 24 * v10 + 8) & 0x80000000) != 0)
            {
              goto LABEL_99;
            }
          }

          LODWORD(v10) = v49;
LABEL_99:
          ;
        }

        while (v10 != v141);
        v8 = *(v140 + 22);
      }

      LODWORD(v5) = v131;
      if (v8 <= v131 + 1)
      {
        v50 = v131 + 1;
      }

      else
      {
        v50 = v8;
      }

      while (v50 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(a3 + 9) + 184 * v5) & 0x80000000) != 0)
        {
          goto LABEL_108;
        }
      }

      LODWORD(v5) = v50;
LABEL_108:
      ;
    }

    while (v5 != v128);
  }

  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
  if (v155)
  {
    [(__CFString *)obj appendFormat:@"%@Warnings: \n", v51];
    v53 = (v156 & 1) != 0 ? &v157 : v158;
    if (v155)
    {
      v54 = &v53[2 * v155];
      do
      {
        v55 = *v53;
        v56 = v53[1];
        v53 += 2;
        [(__CFString *)obj appendFormat:@"%@⚠️ %@: %@\n", v52, v55, v56];
      }

      while (v53 != v54);
    }
  }

  if (v154)
  {
    if (v155)
    {
      v57 = v158;
      if (v156)
      {
        v57 = &v157;
      }

      v58 = 16 * v155;
      v59 = (v57 + 1);
      do
      {

        v59 += 2;
        v58 -= 16;
      }

      while (v58);
    }

    if ((v156 & 1) == 0)
    {
      (*(*v154 + 40))(v154, v158);
    }
  }

  [(__CFString *)obj appendFormat:@"%@DirtyEntities count: %d\n", v124, *(a3 + 45)];
  [(__CFString *)obj appendFormat:@"%@InactiveEntities count: %d\n", v124, *(a3 + 57)];
  [(__CFString *)obj appendFormat:@"%@DirtyTransformEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::m_dirtyTransformEntityCount];
  [(__CFString *)obj appendFormat:@"%@HierarchicalDirtiedTransformEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::m_hierarchicalDirtiedTransformEntityCount];
  [(__CFString *)obj appendFormat:@"%@DirtyAnchorEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::m_dirtyAnchorEntityCount];
  [(__CFString *)obj appendFormat:@"%@DirtyInactiveEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::m_dirtyInactiveEntities];
  [(__CFString *)obj appendFormat:@"%@Cached EntityWorldTransforms count: %d\n", v124, *(a3 + 119)];
  [(__CFString *)obj appendFormat:@"%@EntitiesRemovedFromSortGroups count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups];
  [(__CFString *)obj appendFormat:@"%@EntitiesAddedToSortGroups count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups];
  [(__CFString *)obj appendFormat:@"%@SortGroupsResorted count: %d\n", v124, re::ecs2::CARESortingDebugging::m_sortGroupsResorted];
  [(__CFString *)obj appendFormat:@"%@CodirGroupsWithDirtyEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::s_codirGroupsWithDirtyEntities];
  [(__CFString *)obj appendFormat:@"%@SortGroupsRecalculatedOverrides count: %d\n", v124, re::ecs2::CARESortingDebugging::m_sortGroupsRecalculatedOverrides];
  [(__CFString *)obj appendFormat:@"%@EntitiesRecalculatedOverrides count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverrides];
  [(__CFString *)obj appendFormat:@"%@EntitiesRecalculatedOverridesMeshSortingComponentDirtied count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied];
  [(__CFString *)obj appendFormat:@"%@HighestPriorityInGroup: %u\n", v124, re::ecs2::CARESortingDebugging::m_highestPriorityInGroup];
  [(__CFString *)obj appendFormat:@"%@HighestPriorityGroupId: %llu\n", v124, re::ecs2::CARESortingDebugging::m_highestPriorityGroupId];
  [(__CFString *)obj appendFormat:@"%@EntitiesActivated count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesActivated];
  [(__CFString *)obj appendFormat:@"%@EntitiesDeactivated count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesDeactivated];
  [(__CFString *)obj appendFormat:@"%@UISortingComponentActivated count: %d\n", v124, re::ecs2::CARESortingDebugging::m_uiSortingComponentActivated];
  [(__CFString *)obj appendFormat:@"%@UISortingComponentDeactivated count: %d\n", v124, re::ecs2::CARESortingDebugging::m_uiSortingComponentDeactivated];
  v142 = obj;
  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
  v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 6, ""];
  if (qword_1EE1A6AF0 != -1)
  {
    dispatch_once(&qword_1EE1A6AF0, &__block_literal_global_25);
  }

  v62 = qword_1EE1A6AE8;
  if ([v62 count])
  {
    v123 = v60;
    [(__CFString *)v142 appendFormat:@"%@Graph:\n", v60];
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v122 = v62;
    obja = v62;
    v135 = [obja countByEnumeratingWithState:&v149 objects:&v154 count:16];
    if (v135)
    {
      v132 = *v150;
      do
      {
        for (i = 0; i != v135; ++i)
        {
          if (*v150 != v132)
          {
            objc_enumerationMutation(obja);
          }

          v64 = *(v149.n128_u64[1] + 8 * i);
          v65 = [v64 objectForKey:@"action"];
          v66 = v65;
          if (v65)
          {
            [(__CFString *)v142 appendFormat:@"%@%@:\n", v129, v65];
          }

          v138 = v66;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v67 = v64;
          v68 = [v67 countByEnumeratingWithState:&v145 objects:v153 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v146;
            do
            {
              for (j = 0; j != v69; ++j)
              {
                if (*v146 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = *(*(&v145 + 1) + 8 * j);
                if (v72 != @"action")
                {
                  v73 = [v67 objectForKey:*(*(&v145 + 1) + 8 * j)];
                  [(__CFString *)v142 appendFormat:@"%@%@: %@\n", v61, v72, v73];
                }
              }

              v69 = [v67 countByEnumeratingWithState:&v145 objects:v153 count:16];
            }

            while (v69);
          }
        }

        v135 = [obja countByEnumeratingWithState:&v149 objects:&v154 count:16];
      }

      while (v135);
    }

    a3 = v140;
    v62 = v122;
    v60 = v123;
  }

  [(__CFString *)v142 appendString:@"\n"];
  [(__CFString *)v142 appendFormat:@"World states: %u\n", *(a3 + 21)];
  objb = *(a3 + 22);
  if (objb)
  {
    v74 = 0;
    v75 = *(a3 + 9);
    while (1)
    {
      v76 = *v75;
      v75 += 46;
      if (v76 < 0)
      {
        break;
      }

      if (objb == ++v74)
      {
        LODWORD(v74) = *(a3 + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v74) = 0;
  }

  if (v74 != objb)
  {
    v77 = 0;
    while (1)
    {
      v78 = *(a3 + 9) + 184 * v74;
      v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
      v130 = v79;
      [(__CFString *)v142 appendFormat:@"%@[%u] World root id: %llu\n", v79, v77, *(v78 + 8)];
      v136 = v80;
      [(__CFString *)v142 appendFormat:@"%@Codirectional Groups (aka CAMeshCodirectionalGroup): %u\n", v80, *(v78 + 44)];
      v81 = *(v78 + 48);
      v133 = v77;
      if (v81)
      {
        v82 = 0;
        v83 = (*(v78 + 32) + 8);
        v84 = v142;
        while (1)
        {
          v85 = *v83;
          v83 += 6;
          if (v85 < 0)
          {
            break;
          }

          if (v81 == ++v82)
          {
            LODWORD(v82) = *(v78 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v82) = 0;
        v84 = v142;
      }

      if (v82 != v81)
      {
        v86 = 0;
        do
        {
          v87 = *(*(v78 + 32) + 24 * v82 + 16);
          if (v87)
          {
            v88 = (v87 + 8);
            v144 = v87;
            v89 = (v87 + 8);
            re::ecs2::CARESortingDebugging::dumpCodirectionalGroup(v142, &v144, v86, v140);

            v144 = 0;
            [(__CFString *)v142 appendString:@"\n"];
          }

          else
          {
            v144 = 0;
            re::ecs2::CARESortingDebugging::dumpCodirectionalGroup(v142, &v144, v86, v140);
            [(__CFString *)v142 appendString:@"\n"];
          }

          v86 = (v86 + 1);
          v90 = *(v78 + 48);
          if (v90 <= v82 + 1)
          {
            v90 = v82 + 1;
          }

          v84 = v142;
          while (v90 - 1 != v82)
          {
            LODWORD(v82) = v82 + 1;
            if ((*(*(v78 + 32) + 24 * v82 + 8) & 0x80000000) != 0)
            {
              goto LABEL_172;
            }
          }

          LODWORD(v82) = v90;
LABEL_172:
          ;
        }

        while (v82 != v81);
      }

      [(__CFString *)v84 appendFormat:@"%@CoplanarOverlapping Groups (aka CAMeshSortGroup):\n", v136];
      v139 = *(v78 + 48);
      if (v139)
      {
        v91 = 0;
        v92 = (*(v78 + 32) + 8);
        v93 = v142;
        while (1)
        {
          v94 = *v92;
          v92 += 6;
          if (v94 < 0)
          {
            break;
          }

          if (v139 == ++v91)
          {
            LODWORD(v91) = *(v78 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v91) = 0;
        v93 = v142;
      }

      if (v91 != v139)
      {
        v95 = 0;
        while (1)
        {
          v96 = *(*(v78 + 32) + 24 * v91 + 16);
          if (v96)
          {
            v97 = (v96 + 8);
          }

          v98 = *(v96 + 232);
          if (v98)
          {
            v99 = 0;
            v100 = (*(v96 + 216) + 8);
            while (1)
            {
              v101 = *v100;
              v100 += 6;
              if (v101 < 0)
              {
                break;
              }

              if (v98 == ++v99)
              {
                LODWORD(v99) = *(v96 + 232);
                break;
              }
            }
          }

          else
          {
            LODWORD(v99) = 0;
          }

          if (v99 != v98)
          {
            break;
          }

          if (v96)
          {
            goto LABEL_202;
          }

LABEL_203:
          v105 = *(v78 + 48);
          if (v105 <= v91 + 1)
          {
            v105 = v91 + 1;
          }

          v93 = v142;
          while (v105 - 1 != v91)
          {
            LODWORD(v91) = v91 + 1;
            if ((*(*(v78 + 32) + 24 * v91 + 8) & 0x80000000) != 0)
            {
              goto LABEL_210;
            }
          }

          LODWORD(v91) = v105;
LABEL_210:
          if (v91 == v139)
          {
            goto LABEL_211;
          }
        }

        do
        {
          v102 = *(*(v96 + 216) + 24 * v99 + 16);
          v143 = v102;
          if (v102)
          {
            v103 = (v102 + 8);
            re::ecs2::CARESortingDebugging::dumpSortingGroup(v142, &v143, v95, v140);

            v143 = 0;
          }

          else
          {
            re::ecs2::CARESortingDebugging::dumpSortingGroup(v142, &v143, v95, v140);
          }

          [(__CFString *)v142 appendString:@"\n"];
          v95 = (v95 + 1);
          v104 = *(v96 + 232);
          if (v104 <= v99 + 1)
          {
            v104 = v99 + 1;
          }

          while (v104 - 1 != v99)
          {
            LODWORD(v99) = v99 + 1;
            if ((*(*(v96 + 216) + 24 * v99 + 8) & 0x80000000) != 0)
            {
              goto LABEL_201;
            }
          }

          LODWORD(v99) = v104;
LABEL_201:
          ;
        }

        while (v99 != v98);
LABEL_202:

        goto LABEL_203;
      }

LABEL_211:
      [(__CFString *)v93 appendFormat:@"%@Not in CoplanaOverlapping (aka unsortedPlanarEntities):\n", v136];
      v107 = *(v78 + 48);
      if (v107)
      {
        v108 = 0;
        v109 = (*(v78 + 32) + 8);
        v110 = v142;
        while (1)
        {
          v111 = *v109;
          v109 += 6;
          if (v111 < 0)
          {
            break;
          }

          if (v107 == ++v108)
          {
            LODWORD(v108) = *(v78 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v108) = 0;
        v110 = v142;
      }

      if (v108 != v107)
      {
        break;
      }

LABEL_246:
      v77 = (v133 + 1);
      [(__CFString *)v110 appendString:@"\n"];

      a3 = v140;
      v121 = *(v140 + 22);
      if (v121 <= v74 + 1)
      {
        v121 = v74 + 1;
      }

      while (v121 - 1 != v74)
      {
        LODWORD(v74) = v74 + 1;
        if ((*(*(v140 + 9) + 184 * v74) & 0x80000000) != 0)
        {
          goto LABEL_252;
        }
      }

      LODWORD(v74) = v121;
LABEL_252:
      if (v74 == objb)
      {
        goto LABEL_253;
      }
    }

    v112 = 0;
    while (1)
    {
      v113 = *(*(v78 + 32) + 24 * v108 + 16);
      if (v113)
      {
        v114 = (v113 + 8);
      }

      v115 = *(v113 + 280);
      if (v115)
      {
        v116 = 0;
        v117 = (*(v113 + 264) + 8);
        while (1)
        {
          v118 = *v117;
          v117 += 6;
          if (v118 < 0)
          {
            break;
          }

          if (v115 == ++v116)
          {
            LODWORD(v116) = *(v113 + 280);
            break;
          }
        }
      }

      else
      {
        LODWORD(v116) = 0;
      }

      if (v116 != v115)
      {
        break;
      }

      if (v113)
      {
        goto LABEL_237;
      }

LABEL_238:
      v120 = *(v78 + 48);
      if (v120 <= v108 + 1)
      {
        v120 = v108 + 1;
      }

      v110 = v142;
      while (v120 - 1 != v108)
      {
        LODWORD(v108) = v108 + 1;
        if ((*(*(v78 + 32) + 24 * v108 + 8) & 0x80000000) != 0)
        {
          goto LABEL_245;
        }
      }

      LODWORD(v108) = v120;
LABEL_245:
      if (v108 == v107)
      {
        goto LABEL_246;
      }
    }

    do
    {
      re::ecs2::CARESortingDebugging::dumpEntity(v142, *(*(v113 + 264) + 24 * v116 + 16), 3, v112, v140, v106);
      [(__CFString *)v142 appendString:@"\n"];
      v112 = (v112 + 1);
      v119 = *(v113 + 280);
      if (v119 <= v116 + 1)
      {
        v119 = v116 + 1;
      }

      while (v119 - 1 != v116)
      {
        LODWORD(v116) = v116 + 1;
        if ((*(*(v113 + 264) + 24 * v116 + 8) & 0x80000000) != 0)
        {
          goto LABEL_236;
        }
      }

      LODWORD(v116) = v119;
LABEL_236:
      ;
    }

    while (v116 != v115);
LABEL_237:

    goto LABEL_238;
  }

LABEL_253:
}

id anonymous namespace::getIndentString(_anonymous_namespace_ *this)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", (2 * this), ""];

  return v1;
}

void re::ecs2::CARESortingDebugging::dumpCodirectionalGroup(void *a1, uint64_t *a2, uint64_t a3, re::TransformService **a4)
{
  v17 = a1;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 6, ""];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 8, ""];
  [v17 appendFormat:@"%@[%u] CAMeshCodirectionalGroup ID: %llu\n", v7, a3, *(*a2 + 16)];
  [v17 appendFormat:@"%@averagePosition: (%f, %f, %f)\n", v8, *(*a2 + 128), *(*a2 + 132), *(*a2 + 136)];
  [v17 appendFormat:@"%@averageNormal: (%f, %f, %f)\n", v8, *(*a2 + 112), *(*a2 + 116), *(*a2 + 120)];
  [v17 appendFormat:@"%@initialPosition: (%f, %f, %f)\n", v8, *(*a2 + 96), *(*a2 + 100), *(*a2 + 104)];
  [v17 appendFormat:@"%@initialNormal: (%f, %f, %f)\n", v8, *(*a2 + 80), *(*a2 + 84), *(*a2 + 88)];
  [v17 appendFormat:@"%@entities count: %d\n", v8, *(*a2 + 52)];
  v10 = *a2;
  v11 = *(*a2 + 56);
  if (v11)
  {
    v12 = 0;
    v13 = (*(v10 + 40) + 8);
    while (1)
    {
      v14 = *v13;
      v13 += 6;
      if (v14 < 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        LODWORD(v12) = *(*a2 + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (v12 != v11)
  {
    v15 = 0;
    do
    {
      re::ecs2::CARESortingDebugging::dumpEntity(v17, *(*(v10 + 40) + 24 * v12 + 16), 5, v15, a4, v9);
      v15 = (v15 + 1);
      v16 = *(v10 + 56);
      if (v16 <= v12 + 1)
      {
        v16 = v12 + 1;
      }

      while (v16 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(v10 + 40) + 24 * v12 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v12) = v16;
LABEL_15:
      ;
    }

    while (v12 != v11);
  }
}

void re::ecs2::CARESortingDebugging::dumpSortingGroup(void *a1, uint64_t *a2, uint64_t a3, re::ecs2::CARESortingManager *a4)
{
  v7 = a1;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 6, ""];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 8, ""];
  v63.n128_u64[0] = 0;
  v63.n128_u16[4] = 0;
  v64 = 0;
  v66 = 0;
  v67 = 0;
  v10 = *(*a2 + 304);
  v11 = *(*a2 + 288);
  if (v10)
  {
    v12 = 0;
    v13 = (v11 + 8);
    while (1)
    {
      v14 = *v13;
      v13 += 6;
      if (v14 < 0)
      {
        break;
      }

      if (v10 == ++v12)
      {
        LODWORD(v12) = *(*a2 + 304);
        break;
      }
    }

    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v11 + 24 * v15 + 16);
  v60 = v8;
  if (v16)
  {
    v17 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v17)
    {
      v18 = 32;
      if (*(v17 + 304))
      {
        v18 = 176;
      }

      *&v19 = re::ecs2::MeshSortGroupToken::operator=(&v63, (v17 + v18)).n128_u64[0];
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v19, v63.n128_u64[0]];
      v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v63.n128_u64[0]];
      re::ecs2::CARESortingManager::tryGetCodirectionalGroupForEntity(&v61, a4, v16);
      v20 = v61;
    }

    else
    {
      v20 = 0;
      v59 = 0;
      v57 = @"undefined";
    }

    v23 = v16;
    do
    {
      v24 = v23;
      v23 = *(v23 + 32);
    }

    while (v23);
    if (!*(v24 + 24))
    {
      goto LABEL_32;
    }

    v25 = v16;
    do
    {
      v26 = v25;
      v25 = *(v25 + 32);
    }

    while (v25);
    if (*(*(v26 + 24) + 56))
    {
      v56 = a3;
      v27 = v16;
      do
      {
        v28 = v27;
        v27 = *(v27 + 32);
      }

      while (v27);
      v29 = (*(**(*(v28 + 24) + 56) + 32))(*(*(v28 + 24) + 56));
      v30 = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v29);
      if (!v30)
      {
        goto LABEL_35;
      }

      v31 = (*(*v30 + 24))(v30);
      (*(*v31 + 8))(&v61);
      v32 = v61 ? v62 : 0;
      v33 = *a2;
      v34 = *(*a2 + 304);
      if (v34)
      {
        v35 = 0;
        v36 = (*(v33 + 288) + 8);
        while (1)
        {
          v37 = *v36;
          v36 += 6;
          if (v37 < 0)
          {
            break;
          }

          if (v34 == ++v35)
          {
            LODWORD(v35) = *(*a2 + 304);
            break;
          }
        }
      }

      else
      {
        LODWORD(v35) = 0;
      }

      if (v35 != v34)
      {
        v55 = v20;
        v38 = 0;
        do
        {
          (*(*v31 + 8))(&v61, v31, *(*(v33 + 288) + 24 * v35 + 16));
          if (v61)
          {
            v39 = v62;
          }

          else
          {
            v39 = 0;
          }

          v40 = v39 == v32;
          v41 = v39 != v32;
          if (!v40)
          {
            goto LABEL_50;
          }

          v38 |= v41;
          v42 = *(v33 + 304);
          if (v42 <= v35 + 1)
          {
            v42 = v35 + 1;
          }

          while (v42 - 1 != v35)
          {
            LODWORD(v35) = v35 + 1;
            if ((*(*(v33 + 288) + 24 * v35 + 8) & 0x80000000) != 0)
            {
              goto LABEL_48;
            }
          }

          LODWORD(v35) = v42;
LABEL_48:
          ;
        }

        while (v35 != v34);
        if (v38)
        {
LABEL_50:
          v21 = @"true";
          goto LABEL_52;
        }

        v21 = @"false";
LABEL_52:
        v8 = v60;
        v20 = v55;
      }

      else
      {
LABEL_35:
        v21 = @"false";
        v8 = v60;
      }

      a3 = v56;
      v22 = v57;
    }

    else
    {
LABEL_32:
      v21 = @"false";
      v22 = v57;
    }
  }

  else
  {
    v59 = 0;
    v20 = 0;
    v21 = @"false";
    v22 = @"undefined";
  }

  [v7 appendFormat:@"%@[%u] CAMeshSortGroup ID: %@\n", v8, a3, v22];
  [v7 appendFormat:@"%@containsMixedWorlds: %@\n", v9, v21];
  [v7 appendFormat:@"%@sortGroupPosition: (%f, %f, %f)\n", v9, *(*a2 + 32), *(*a2 + 36), *(*a2 + 40)];
  v43 = [v7 appendFormat:@"%@sortGroupNormal: (%f, %f, %f)\n", v9, *(*a2 + 16), *(*a2 + 20), *(*a2 + 24)];
  [v7 appendFormat:@"%@sortGroupSortingConfiguration: %@\n", v9, v43];

  if (v63.n128_u8[8] == 5 && v64 == 1)
  {
    v58 = v65;
    [v7 appendFormat:@"%@sortGroupSortPointOverride: (%f, %f, %f)\n", v9, v65.f32[0], v65.f32[1], v65.f32[2]];
    if (v20)
    {
      v44 = vmulq_f32(vsubq_f32(v58, v20[8]), v20[7]);
      [v7 appendFormat:@"%@sortGroupSortPointOverrideDisplacement: %f\n", v9, (v44.f32[2] + vaddv_f32(*v44.f32))];
      goto LABEL_60;
    }
  }

  else
  {
    [v7 appendFormat:@"%@sortGroupSortPointOverride: None\n", v9];
  }

  [v7 appendFormat:@"%@sortGroupSortPointOverrideDisplacement: None\n", v9, v54];
LABEL_60:
  [v7 appendFormat:@"%@entities count: %d\n", v9, *(*a2 + 300)];
  v46 = *a2;
  v47 = *(*a2 + 304);
  if (v47)
  {
    v48 = 0;
    v49 = (*(v46 + 288) + 8);
    while (1)
    {
      v50 = *v49;
      v49 += 6;
      if (v50 < 0)
      {
        break;
      }

      if (v47 == ++v48)
      {
        v51 = v20;
        LODWORD(v48) = *(*a2 + 304);
        goto LABEL_67;
      }
    }

    v51 = v20;
  }

  else
  {
    v51 = v20;
    LODWORD(v48) = 0;
  }

LABEL_67:
  if (v48 != v47)
  {
    v52 = 0;
    do
    {
      re::ecs2::CARESortingDebugging::dumpEntity(v7, *(*(v46 + 288) + 24 * v48 + 16), 5, v52, a4, v45);
      v52 = (v52 + 1);
      v53 = *(v46 + 304);
      if (v53 <= v48 + 1)
      {
        v53 = v48 + 1;
      }

      while (v53 - 1 != v48)
      {
        LODWORD(v48) = v48 + 1;
        if ((*(*(v46 + 288) + 24 * v48 + 8) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }
      }

      LODWORD(v48) = v53;
LABEL_75:
      ;
    }

    while (v48 != v47);
  }

  if (v51)
  {
  }
}

void re::ecs2::CARESortingDebugging::dumpEntity(re::ecs2::CARESortingDebugging *this, NSMutableString *a2, const re::ecs2::Entity *a3, uint64_t a4, re::TransformService **a5, const re::ecs2::CARESortingManager *a6)
{
  v166 = *MEMORY[0x1E69E9840];
  v9 = this;
  v10 = v155 = a2;
  v11 = v140 = a3;
  v138 = v10;
  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@[%u] Entity ID: %llu\n", v10, a4, a2[39].super];
  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@name: %s\n", v11, a2[37].super];
  v139 = v11;
  v156.i64[0] = a2;
  *&v164 = 0;
  *(&v162 + 1) = 0;
  *&v163 = 0;
  DWORD2(v163) = 0;
  re::DynamicArray<float *>::setCapacity(&v162, 0x40uLL);
  ++DWORD2(v163);
  for (i = a2[4].super; i; i = *(v13 + 32))
  {
    if ((i[304] & 0x80) != 0)
    {
      break;
    }

    re::DynamicArray<re::TransitionCondition *>::add(&v162, &v156);
    v13 = *(v156.i64[0] + 32);
    if ((*(v13 + 304) & 0x80) != 0)
    {
      v13 = 0;
    }

    v156.i64[0] = v13;
  }

  v14 = [MEMORY[0x1E696AD60] stringWithCapacity:256];
  [v14 appendString:@"/"];
  if (v163)
  {
    v15 = v164 + 8 * v163;
    do
    {
      v17 = *(v15 - 8);
      v15 -= 8;
      v16 = v17;
      v18 = *(v17 + 288);
      if (v18 < 0xFFFFFFFFFFFFFFFELL || (v18 & 1) != 0)
      {
        v19 = *(v16 + 296);
        if (v18 > 1 || !v19)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v19 = *(v16 + 296);
      }

      if (!*v19)
      {
        [v14 appendFormat:@"%llu/", *(v16 + 312)];
        continue;
      }

LABEL_14:
      v20 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
      v21 = [v20 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F5D319D0];
      [v14 appendFormat:@"%@/", v21];
    }

    while (v15 != v164);
  }

  v22 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  if (v162 && v164)
  {
    (*(*v162 + 40))(v162);
  }

  v23 = v139;
  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@path: %@\n", v139, v22];

  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@worldMatrix:\n", v139];
  re::TransformService::worldMatrix(a5[66], a2, 1, &v142);
  v25 = v24 = v140;
  [(re::ecs2::CARESortingDebugging *)v9 appendString:v25];

  v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v155 ^ (v155 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v155 ^ (v155 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>((a5 + 56), &v155, v26 ^ (v26 >> 31), &v162);
  if (HIDWORD(v162) == 0x7FFFFFFF)
  {
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@cached worldMatrix: none\n", v139];
  }

  else
  {
    v27 = a5[58] + 160 * HIDWORD(v162);
    v29 = *(v27 + 16);
    v28 = (v27 + 16);
    v30 = v29;
    if ((v142.f32[0] == v29 || vabds_f32(v142.f32[0], v30) < (((fabsf(v142.f32[0]) + fabsf(v30)) + 1.0) * 0.00001)) && ((v31 = v28[1], v142.f32[1] == v31) || vabds_f32(v142.f32[1], v31) < (((fabsf(v142.f32[1]) + fabsf(v31)) + 1.0) * 0.00001)) && ((v32 = v28[2], v142.f32[2] == v32) || vabds_f32(v142.f32[2], v32) < (((fabsf(v142.f32[2]) + fabsf(v32)) + 1.0) * 0.00001)) && ((v33 = v28[3], v142.f32[3] == v33) || vabds_f32(v142.f32[3], v33) < (((fabsf(v142.f32[3]) + fabsf(v33)) + 1.0) * 0.00001)) && ((v34 = v28[4], v143 == v34) || vabds_f32(v143, v34) < (((fabsf(v143) + fabsf(v34)) + 1.0) * 0.00001)) && ((v35 = v28[5], v144 == v35) || vabds_f32(v144, v35) < (((fabsf(v144) + fabsf(v35)) + 1.0) * 0.00001)) && ((v36 = v28[6], v145 == v36) || vabds_f32(v145, v36) < (((fabsf(v145) + fabsf(v36)) + 1.0) * 0.00001)) && ((v37 = v28[7], v146 == v37) || vabds_f32(v146, v37) < (((fabsf(v146) + fabsf(v37)) + 1.0) * 0.00001)) && ((v38 = v28[8], v147 == v38) || vabds_f32(v147, v38) < (((fabsf(v147) + fabsf(v38)) + 1.0) * 0.00001)) && ((v39 = v28[9], v148 == v39) || vabds_f32(v148, v39) < (((fabsf(v148) + fabsf(v39)) + 1.0) * 0.00001)) && ((v40 = v28[10], v149 == v40) || vabds_f32(v149, v40) < (((fabsf(v149) + fabsf(v40)) + 1.0) * 0.00001)) && ((v41 = v28[11], v150 == v41) || vabds_f32(v150, v41) < (((fabsf(v150) + fabsf(v41)) + 1.0) * 0.00001)) && ((v42 = v28[12], v151 == v42) || vabds_f32(v151, v42) < (((fabsf(v151) + fabsf(v42)) + 1.0) * 0.00001)) && ((v43 = v28[13], v152 == v43) || vabds_f32(v152, v43) < (((fabsf(v152) + fabsf(v43)) + 1.0) * 0.00001)) && ((v44 = v28[14], v153 == v44) || vabds_f32(v153, v44) < (((fabsf(v153) + fabsf(v44)) + 1.0) * 0.00001)) && ((v45 = v28[15], v154 == v45) || vabds_f32(v154, v45) < (((fabsf(v154) + fabsf(v45)) + 1.0) * 0.00001)))
    {
      [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@cached worldMatrix: up to date\n", v139];
    }

    else
    {
      v46 = [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@cached worldMatrix: outdated\n", v139];
      [(re::ecs2::CARESortingDebugging *)v9 appendString:v46];
    }
  }

  v47 = v155;
  v48 = v155;
  do
  {
    v49 = v48;
    v48 = *(v48 + 4);
  }

  while (v48);
  if (*(v49 + 3))
  {
    v50 = v155;
    do
    {
      v51 = v50;
      v50 = *(v50 + 4);
    }

    while (v50);
    if (*(*(v51 + 3) + 56))
    {
      do
      {
        v52 = v47;
        v47 = *(v47 + 4);
      }

      while (v47);
      v53 = (*(**(*(v52 + 3) + 56) + 32))(*(*(v52 + 3) + 56));
      v54 = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v53);
      if (v54)
      {
        v55 = (*(*v54 + 24))(v54);
        (*(*v55 + 8))(&v162);
        if (v162)
        {
          v56 = *(&v162 + 1);
        }

        else
        {
          v56 = 0;
        }

        [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@worldRootId: %llu\n", v139, v56];
      }
    }
  }

  v57 = *(v155 + 28);
  if (v57)
  {
    if (*(v57 + 32))
    {
      v58 = @"true";
    }

    else
    {
      v58 = @"false";
    }
  }

  else
  {
    v58 = @"false";
  }

  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@isPortal: %@\n", v139, v58];
  re::ecs2::CARESortingManager::tryGetCodirectionalGroupForEntity(&v141, a5, v155);
  v59 = v141;
  if (v141)
  {
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@CAMeshCodirectionalGroupId: %llu\n", v139, v141[1].i64[0]];
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@averageNormal: (%f, %f, %f)\n", v139, v59[7].f32[0], v59[7].f32[1], v59[7].f32[2]];
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@averagePosition: (%f, %f, %f)\n", v139, v59[8].f32[0], v59[8].f32[1], v59[8].f32[2]];
  }

  else
  {
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@CodirectionalGroup: none\n", v139, v120, v125, v127];
  }

  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@UISortingComponent:\n", v139];
  v60 = re::ecs2::EntityComponentCollection::get((v155 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v62 = v61 = v9;
  v63 = v62;
  if (v60)
  {
    v64 = v60[3];
    v65 = v60[4];
    v66 = vcgtq_f32(v64, v65);
    v66.i32[3] = v66.i32[2];
    if ((vmaxvq_u32(v66) & 0x80000000) != 0)
    {
      v70 = v60[2].f32[2];
      v68.i32[0] = v60[2].i32[0];
      v69 = v60[2].f32[1];
    }

    else
    {
      v67 = vsubq_f32(v65, v64);
      v67.i32[3] = 0;
      v68 = vmaxnmq_f32(v67, 0);
      v69 = v68.f32[1];
      v70 = v68.f32[2];
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@extends: (%f, %f, %f)\n", v62, v68.f32[0], v69, v70];
    v71 = vcgtq_f32(v60[3], v60[4]);
    v71.i32[3] = v71.i32[2];
    if ((vmaxvq_u32(v71) & 0x80000000) != 0)
    {
      v72 = v60[2].f32[2] * 0.5;
    }

    else
    {
      LODWORD(v72) = v60[4].i64[1];
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@halfZExtent: %f\n", v63, v72];
    v74 = v60[3];
    v73 = v60[4];
    v75 = vcgtq_f32(v74, v73);
    v75.i32[3] = v75.i32[2];
    if ((vmaxvq_u32(v75) & 0x80000000) != 0)
    {
      v76 = v60[2];
      v77.i64[0] = 0xBF000000BF000000;
      v77.i64[1] = 0xBF000000BF000000;
      v74 = vmulq_f32(v76, v77);
      v77.i64[0] = 0x3F0000003F000000;
      v77.i64[1] = 0x3F0000003F000000;
      v73 = vmulq_f32(v76, v77);
    }

    v131 = v74;
    v135 = v73;
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@AABB min: (%f, %f, %f)\n", v63, v74.f32[0], v74.f32[1], v74.f32[2]];
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@AABB max: (%f, %f, %f)\n", v63, v135.f32[0], v135.f32[1], v135.f32[2]];
    v78 = vcgtq_f32(v131, v135);
    v78.i32[3] = v78.i32[2];
    v79.i64[0] = 0x3F0000003F000000;
    v79.i64[1] = 0x3F0000003F000000;
    v80 = vmulq_f32(vaddq_f32(v135, v131), v79);
    v81 = v80.f32[2];
    if ((vmaxvq_u32(v78) & 0x80000000) == 0)
    {
      v82 = v80.i64[0];
    }

    else
    {
      v81 = 0.0;
      v82 = 0;
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@AABB center: (%f, %f, %f)\n", v63, *&v82, *(&v82 + 1), v81];
    v83 = v60[5].u32[0];
    if ((atomic_load_explicit(&qword_1EE1A6AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6AE0))
    {
      v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4294967293];
      v156.i64[0] = v137;
      *&v162 = @"kSortCategoryMin";
      v133 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4294967294];
      v156.i64[1] = v133;
      *(&v162 + 1) = @"kBackDecoration";
      v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 0xFFFFFFFFLL];
      v157.i64[0] = v130;
      *&v163 = @"kBehindUIContent";
      v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 0];
      v157.i64[1] = v129;
      *(&v163 + 1) = @"kUIContent";
      v116 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 1];
      v158 = v116;
      *&v164 = @"kAboveUIContent";
      v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 2];
      v159 = v117;
      *(&v164 + 1) = @"kFrontDecoration";
      v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 3];
      v160 = v118;
      *&v165 = @"kServerCARE";
      v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4];
      v161 = v119;
      *(&v165 + 1) = @"kSortCategoryMax";
      qword_1EE1A6AD8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v156 count:8];

      v24 = v140;
      __cxa_guard_release(&qword_1EE1A6AE0);
    }

    v84 = qword_1EE1A6AD8;
    v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v83];
    v86 = [v84 valueForKey:v85];

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@sortCategory: %@\n", v63, v86];
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@sortPriorityHint: %d\n", v63, v60[5].u32[1]];
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@caSortOrder: %d\n", v63, v60[5].u32[2]];
    if (v60[5].i8[12])
    {
      v87 = @"true";
    }

    else
    {
      v87 = @"false";
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@isCaLayer: %@\n", v63, v87];
    if (v60[5].i8[13])
    {
      v88 = @"true";
    }

    else
    {
      v88 = @"false";
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@doesCaLayerNeedMesh: %@\n", v63, v88];
  }

  else
  {
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@None\n", v62, v121];
  }

  [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@MeshSortingComponent:\n", v139];
  v89 = re::ecs2::EntityComponentCollection::get((v155 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v91 = v90 = v61;
  v92 = v91;
  if (v89)
  {
    v94 = v93 = (v24 + 3);
    v95 = 2;
    if (v89[19].i8[0])
    {
      v95 = 11;
    }

    v96 = &v89[v95];
    v97 = v96->i64[0];
    v98 = v96->u8[8];
    v99 = v96->i8[9];
    v132 = v96[1].u8[0];
    v136 = v96[2];
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@groupId: %llu\n", v92, v96->i64[0]];
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@priorityInGroup: %d\n", v92, v89[10].u32[0]];
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@depthPriorityInGroup: %d\n", v92, v89[10].u32[1]];
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortPointOverride: (%f, %f, %f)\n", v92, v89[20].f32[0], v89[20].f32[1], v89[20].f32[2]];
    v100 = v141;
    if (v141)
    {
      v101 = vmulq_f32(vsubq_f32(v89[20], v141[8]), v141[7]);
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortPointOverrideDisplacement: %f\n", v92, (v101.f32[2] + vaddv_f32(*v101.f32))];
    }

    else
    {
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortPointOverrideDisplacement: None\n", v92, v123];
    }
    v102 = ;
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortConfiguration: %@\n", v92, v102];

    v103 = @"true";
    if ((v99 & 1) == 0)
    {
      v103 = @"false";
    }

    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@useDepthBias: %@\n", v92, v103];
    if (v97)
    {
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortGroupData:\n", v92];
      if (v98 == 5 && v132)
      {
        [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshGroupSortPointOverride: (%f, %f, %f)\n", v94, v136.f32[0], v136.f32[1], v136.f32[2]];
        if (v100)
        {
          v104 = vmulq_f32(vsubq_f32(v136, v100[8]), v100[7]);
          [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshGroupSortPointOverrideDisplacement: %f\n", v94, (v104.f32[2] + vaddv_f32(*v104.f32))];
        }

        else
        {
          [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshGroupSortPointOverrideDisplacement: None\n", v94, v124];
        }
      }

      else
      {
        [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshGroupSortPointOverride: None\n", v94, v122];
      }

      v105 = v23 = v139;
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshSortGroupConfiguration: %@\n", v94, v105];
    }

    else
    {
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortGroupData: not-in-mesh-sort-group\n", v92];
      v23 = v139;
    }

    v24 = v140;
  }

  else
  {
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@None\n", v91];
    v93 = (v24 + 3);
  }

  [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@MeshComponent:\n", v23];
  v106 = *(v155 + 24);
  v109 = v108 = v107 = v90;
  if (v106)
  {
    [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@MeshAsset:\n", v108];
    v110 = re::AssetHandle::loadedAsset<re::MeshAsset>((v106 + 32));
    if (v110)
    {
      v162 = xmmword_1E3047670;
      v163 = xmmword_1E3047680;
      v164 = xmmword_1E30476A0;
      v165 = xmmword_1E30474D0;
      re::MeshAsset::aabbFromMesh(v110, &v162, &v156);
      [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@AABB min: (%f, %f, %f)\n", v109, v156.f32[0], v156.f32[1], v156.f32[2]];
      [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@AABB max: (%f, %f, %f)\n", v109, v157.f32[0], v157.f32[1], v157.f32[2]];
      v111 = vcgtq_f32(v156, v157);
      v111.i32[3] = v111.i32[2];
      v112.i64[0] = 0x3F0000003F000000;
      v112.i64[1] = 0x3F0000003F000000;
      v113 = vmulq_f32(vaddq_f32(v156, v157), v112);
      v114 = v113.f32[2];
      if ((vmaxvq_u32(v111) & 0x80000000) == 0)
      {
        v115 = v113.i64[0];
      }

      else
      {
        v114 = 0.0;
        v115 = 0;
      }

      [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@AABB center: (%f, %f, %f)\n", v109, *&v115, *(&v115 + 1), v114];
    }

    else
    {
      [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@Not Loaded\n", v109, v122, v126, v128];
    }
  }

  else
  {
    [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@None\n", v108, v122, v126, v128];
  }

  if (v141)
  {
  }
}

id anonymous namespace::stringifyMeshSortingConfiguration(uint64_t a1)
{
  v15[6] = *MEMORY[0x1E69E9840];
  v1 = 0x1E696A000uLL;
  if ((atomic_load_explicit(&qword_1EE1A6AD0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v7 = __cxa_guard_acquire(&qword_1EE1A6AD0);
    a1 = v6;
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 0];
      v15[0] = @"kCentroid";
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 1, v8];
      v14[1] = v9;
      v15[1] = @"kFurthestRadial";
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 2];
      v14[2] = v10;
      v15[2] = @"kNearestRadial";
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 3];
      v14[3] = v11;
      v15[3] = @"kFurthestOBB";
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 4];
      v14[4] = v12;
      v15[4] = @"kNearestOBB";
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 5];
      v14[5] = v13;
      v15[5] = @"kCentroidWithOverride";
      _MergedGlobals_236 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

      v1 = 0x1E696A000;
      __cxa_guard_release(&qword_1EE1A6AD0);
      a1 = v6;
    }
  }

  v2 = _MergedGlobals_236;
  v3 = [*(v1 + 3776) stringWithFormat:@"%hhu", a1];
  v4 = [v2 valueForKey:v3];

  return v4;
}

{
  v15[6] = *MEMORY[0x1E69E9840];
  v1 = 0x1E696A000uLL;
  if ((atomic_load_explicit(&qword_1EE1B16A0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v7 = __cxa_guard_acquire(&qword_1EE1B16A0);
    a1 = v6;
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 0];
      v15[0] = @"kCentroid";
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 1, v8];
      v14[1] = v9;
      v15[1] = @"kFurthestRadial";
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 2];
      v14[2] = v10;
      v15[2] = @"kNearestRadial";
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 3];
      v14[3] = v11;
      v15[3] = @"kFurthestOBB";
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 4];
      v14[4] = v12;
      v15[4] = @"kNearestOBB";
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 5];
      v14[5] = v13;
      v15[5] = @"kCentroidWithOverride";
      _MergedGlobals_363 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

      v1 = 0x1E696A000;
      __cxa_guard_release(&qword_1EE1B16A0);
      a1 = v6;
    }
  }

  v2 = _MergedGlobals_363;
  v3 = [*(v1 + 3776) stringWithFormat:@"%hhu", a1];
  v4 = [v2 valueForKey:v3];

  return v4;
}

id anonymous namespace::stringifyMatrix4x4(float *a1, _anonymous_namespace_ *this)
  v3 = {;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%.5f, %.5f, %.5f, %.5f]\n%@[%.5f, %.5f, %.5f, %.5f]\n%@[%.5f, %.5f, %.5f, %.5f]\n%@[%.5f, %.5f, %.5f, %.5f]\n", v3, *a1, a1[1], a1[2], a1[3], v3, a1[4], a1[5], a1[6], a1[7], v3, a1[8], a1[9], a1[10], a1[11], v3, a1[12], a1[13], a1[14], a1[15]];

  return v4;
}

void re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::$_0::operator()(uint64_t *a1, void *a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4)
  {
    v5 = v4[3];
    v6 = v4[4];
    v7 = vcgtq_f32(v5, v6);
    v7.i32[3] = v7.i32[2];
    if ((vmaxvq_u32(v7) & 0x80000000) != 0)
    {
      v6 = v4[2];
      v8 = 0xBF000000BF000000;
      v5.i64[1] = 0xBF000000BF000000;
      v5.i64[0] = vmulq_f32(v6, v5).u64[0];
      v9.i64[0] = 0x3F0000003F000000;
      v9.i64[1] = 0x3F0000003F000000;
      v6.i64[0] = vmulq_f32(v6, v9).u64[0];
    }

    v10 = vcgt_f32(vdup_n_s32(0x3727C5ACu), vabs_f32(vmaxnm_f32(vsub_f32(*v6.f32, *v5.f32), 0)));
    if ((v10.i32[0] | v10.i32[1]))
    {
      v11 = *a1;
      v22.i64[0] = @"Zero area";
      v22.i64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"UISortingComponent with a zero XY area in entity #%llu.", a2[39]];
      re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(v11, &v22);
    }
  }

  re::TransformService::worldMatrix(*(a1[1] + 528), a2, 1, &v22);
  v12 = v24;
  v13 = vmulq_f32(v22, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v12, v12, 0xCuLL), v24, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL))), vextq_s8(vuzp1q_s32(v12, v12), v24, 0xCuLL), vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL)));
  v14 = vaddv_f32(*v13.f32);
  v15 = -1.0;
  if ((v13.f32[2] + v14) > 0.0)
  {
    v15 = 1.0;
  }

  v16 = vmulq_f32(v22, v22);
  v17 = vmulq_f32(v23, v23);
  *v16.i8 = vcgt_f32(vdup_n_s32(0x3727C5ACu), vabs_f32(vmul_n_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8)))), v15)));
  if ((v16.i32[0] | v16.i32[1]))
  {
    v18 = *a1;
    v21.n128_u64[0] = @"Zero area";
    v21.n128_u64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transform with a zero XY area in entity #%llu.", a2[39]];
    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(v18, &v21);

    v12 = v24;
  }

  v19 = vmulq_f32(v12, v12);
  if (fabsf(v19.f32[2] + vaddv_f32(*v19.f32)) < 1.0e-10)
  {
    v20 = *a1;
    v21.n128_u64[0] = @"Zero normal";
    v21.n128_u64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Almost-zero normal in entity #%llu.", a2[39]];
    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(v20, &v21);
  }
}

__n128 re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(uint64_t a1, __n128 *a2)
{
  if (!*a1)
  {
    v10 = *(a1 + 8);
    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::setCapacity(a1, v10 + 1);
    v11 = *(a1 + 16) + 2;
    *(a1 + 16) = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = a1 + 24;
    goto LABEL_19;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 24);
    v8 = v4 >= v6;
    v7 = v4 + 1;
    v8 = !v8 || v6 >= v7;
    if (!v8)
    {
      v9 = 2 * v6;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = v4 + 1;
  if (v7 < 2)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v9 = 2;
LABEL_14:
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::setCapacity(a1, v13);
  if (*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(a1 + 32);
LABEL_19:
  v14 = *(a1 + 8);
  result = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(v12 + 16 * v14) = result;
  *(a1 + 8) = v14 + 1;
  *(a1 + 16) += 2;
  return result;
}

void ___ZN12_GLOBAL__N_123ensureGraphCurrentFrameEv_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = qword_1EE1A6AE8;
  qword_1EE1A6AE8 = v0;
}

void re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
      {
        v15 = a1[4];
        if (v9)
        {
          if (v7)
          {
            v16 = (a1 + 3);
          }

          else
          {
            v16 = a1[4];
          }

          v17 = *v16;
          *v16 = 0;
          v16[1] = 0;
          *(a1 + 3) = v17;

          v5 = *a1;
        }

        (*(*v5 + 40))(v5, v15);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v23, v25);
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        v10 = (*(*v5 + 32))(v5, 16 * a2, 8);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = a1 + 3;
          }

          else
          {
            v14 = a1[4];
          }

          v18 = a1[1];
          if (v18)
          {
            v19 = &v14[2 * v18];
            v20 = v10;
            do
            {
              v21 = *v14;
              *v14 = 0;
              v14[1] = 0;
              *v20++ = v21;

              v22 = *v14;
              v14 += 2;
            }

            while (v14 != v19);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[4]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v12;
          return;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v24, v26);
      __break(1u);
    }
  }
}

_WORD *re::ecs2::ComponentStatePayload::lightArraysForEntity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *buf = a2;
  v5 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(*(a1 + 40), buf);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  v83 = v6;
  v7 = (*(**a3 + 8))(buf);
  if (buf[0])
  {
    v8 = *&buf[8];
  }

  else
  {
    v8 = 0;
  }

  *&v81 = v6;
  *(&v81 + 1) = v8;
  v82 = ((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + v8) ^ v6;
  v9 = *(a1 + 56);
  if (*(v9 + 5052))
  {
    v7 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(buf, v9 + 5024, v6, v8, ((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + v8) ^ v6);
    if (*&buf[12] != 0x7FFFFFFF)
    {
      return (*(v9 + 5040) + 320 * *&buf[12] + 32);
    }
  }

  else
  {
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = 312 * v11;
      v10 = (v9 + 56);
      while (*(v10 - 3) != v6 || *(v10 - 2) != v8)
      {
        v10 += 156;
        v12 -= 312;
        if (!v12)
        {
          goto LABEL_15;
        }
      }

      return v10;
    }
  }

LABEL_15:
  if (*(a1 + 32) >= 0x10000u)
  {
    if ((atomic_exchange(&re::ecs2::ComponentStatePayload::lightArraysForEntity(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v13 = *re::graphicsLogObjects(v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "LightSystem: lightContextId is exceeding 16 bit, some lights will not be visible", buf, 2u);
      }
    }

    return 0;
  }

  v14 = *v9;
  v58 = 0;
  *&v62 = 0;
  v60 = 0uLL;
  v61 = 0;
  v59 = v14;
  re::DynamicArray<re::AABB>::setCapacity(&v59, 0);
  ++v61;
  *&v65 = 0;
  v63 = 0uLL;
  v64 = 0;
  *(&v62 + 1) = v14;
  re::DynamicArray<re::DirectionalLightInfo>::setCapacity(&v62 + 1, 0);
  ++v64;
  *&v68 = 0;
  v66 = 0uLL;
  v67 = 0;
  *(&v65 + 1) = v14;
  re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity(&v65 + 1, 0);
  ++v67;
  *&v71 = 0;
  v69 = 0uLL;
  v70 = 0;
  *(&v68 + 1) = v14;
  re::DynamicArray<re::SpotLightInfo>::setCapacity(&v68 + 1, 0);
  ++v70;
  *&v74 = 0;
  v72 = 0uLL;
  v73 = 0;
  *(&v71 + 1) = v14;
  re::DynamicArray<re::PointLightInfo>::setCapacity(&v71 + 1, 0);
  ++v73;
  *&v77 = 0;
  v75 = 0uLL;
  v76 = 0;
  *(&v74 + 1) = v14;
  re::DynamicArray<re::RectAreaLightInfo>::setCapacity(&v74 + 1, 0);
  ++v76;
  v80 = 0;
  v78 = 0uLL;
  v79 = 0;
  *(&v77 + 1) = v14;
  v15 = re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(&v77 + 1, 0);
  v17 = v79++;
  if (*(v9 + 5052))
  {
    v18 = v9 + 5024;
LABEL_22:
    v10 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::addNew(v18, &v81, &v58);
    goto LABEL_45;
  }

  v20 = (v9 + 16);
  v19 = *(v9 + 16);
  if (v19)
  {
    v21 = 312 * v19;
    v10 = (v9 + 56);
    v22 = 312 * v19;
    do
    {
      if (*(v10 - 3) == v6 && *(v10 - 2) == v8)
      {
        goto LABEL_45;
      }

      v10 += 156;
      v22 -= 312;
    }

    while (v22);
    if ((v19 & 0xFFFFFFF0) != 0)
    {
      if (!*(v9 + 5024))
      {
        v23 = *v9;
        if (!*v9)
        {
        }

        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9 + 5024, v23, 32);
        if (!*v20)
        {
          goto LABEL_38;
        }

        v21 = 312 * *v20;
      }

      v24 = v9 + 56;
      do
      {
        v25 = *(v24 - 24);
        memset(buf, 0, sizeof(buf));
        v85 = 0;
        re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(buf, v9 + 5024, v25, *(v24 - 16), *(v24 - 8));
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v26 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(v9 + 5024, *&buf[8], *buf);
          v27 = *(v24 - 8);
          *(v26 + 8) = *(v24 - 24);
          *(v26 + 24) = v27;
          re::LightInfoArrays::LightInfoArrays(v26 + 32, v24);
          ++*(v9 + 5064);
        }

        v24 += 312;
        v21 -= 312;
      }

      while (v21);
LABEL_38:
      re::DynamicInlineArray<re::KeyValuePair<re::LightGroupInWorldRoot,re::LightInfoArrays>,16ul>::clear((v9 + 16));
      v18 = v9 + 5024;
      goto LABEL_22;
    }
  }

  *buf = v81;
  v85 = v82;
  v28 = v58;
  v86 = v58;
  v87 = v59;
  v59 = 0;
  v88 = v60;
  v60 = 0u;
  ++v61;
  v89 = 1;
  v29 = v62;
  v62 = 0u;
  v90 = v29;
  v91 = v63;
  v63 = 0u;
  ++v64;
  v93 = v65;
  v94 = v66;
  v65 = 0u;
  v66 = 0u;
  ++v67;
  v92 = 1;
  v95 = 1;
  v96 = v68;
  v68 = 0u;
  v30 = v69;
  v97 = v69;
  v69 = 0u;
  ++v70;
  v98 = 1;
  v31 = v71;
  v99 = v71;
  v32 = v72;
  v100 = v72;
  v71 = 0u;
  v72 = 0u;
  v33 = v74;
  v74 = 0u;
  v34 = v75;
  v75 = 0u;
  v101 = 1;
  v102 = v33;
  v103 = v34;
  ++v73;
  ++v76;
  v104 = 1;
  v105 = v77;
  v106 = v78;
  v77 = 0u;
  v78 = 0u;
  v108 = v80;
  v80 = 0;
  v79 = v17 + 2;
  v107 = 1;
  if (*v20 < 0x10uLL)
  {
    v35 = v9 + 32 + 312 * *v20;
    *v35 = v81;
    *(v35 + 16) = v82;
    *(v35 + 24) = v28;
    *(v35 + 32) = v87;
    v87 = 0;
    *(v35 + 40) = v88;
    *&v88 = 0;
    *(v35 + 48) = *(&v88 + 1);
    *(&v88 + 1) = 0;
    *(v35 + 64) = v90;
    *&v90 = 0;
    ++v89;
    *(v35 + 56) = 1;
    *(v35 + 72) = *(&v90 + 1);
    *(&v90 + 1) = 0;
    *(v35 + 80) = v91;
    *&v91 = 0;
    *(v35 + 88) = *(&v91 + 1);
    *(&v91 + 1) = 0;
    *(v35 + 104) = v93;
    *&v93 = 0;
    ++v92;
    *(v35 + 96) = 1;
    *(v35 + 112) = *(&v93 + 1);
    *(&v93 + 1) = 0;
    *(v35 + 120) = v94;
    *&v94 = 0;
    *(v35 + 128) = *(&v94 + 1);
    *(&v94 + 1) = 0;
    *(v35 + 144) = v96;
    *&v96 = 0;
    ++v95;
    *(v35 + 136) = 1;
    *(v35 + 152) = *(&v96 + 1);
    *(&v96 + 1) = 0;
    *(v35 + 160) = v30;
    *&v97 = 0;
    *(v35 + 168) = *(&v30 + 1);
    *(&v97 + 1) = 0;
    *(v35 + 184) = v31;
    *&v99 = 0;
    v98 = 2;
    *(v35 + 176) = 1;
    *(v35 + 192) = *(&v31 + 1);
    *(&v99 + 1) = 0;
    *(v35 + 200) = v32;
    *&v100 = 0;
    *(v35 + 208) = *(&v100 + 1);
    *(&v100 + 1) = 0;
    *(v35 + 224) = v102;
    *&v102 = 0;
    ++v101;
    *(v35 + 216) = 1;
    *(v35 + 232) = *(&v102 + 1);
    *(&v102 + 1) = 0;
    *(v35 + 240) = v103;
    *&v103 = 0;
    *(v35 + 248) = *(&v103 + 1);
    *(&v103 + 1) = 0;
    *(v35 + 264) = v105;
    *&v105 = 0;
    ++v104;
    *(v35 + 256) = 1;
    *(v35 + 272) = *(&v105 + 1);
    *(&v105 + 1) = 0;
    *(v35 + 280) = v106;
    *&v106 = 0;
    *(v35 + 288) = *(&v106 + 1);
    *(&v106 + 1) = 0;
    *(v35 + 304) = v108;
    v108 = 0;
    ++v107;
    *(v35 + 296) = 1;
    ++*(v9 + 16);
    ++*(v9 + 24);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v105 + 8);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v102 + 8);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v99 + 8);
    re::DynamicArray<re::SpotLightInfo>::deinit(&v96 + 8);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v93 + 8);
    re::DynamicArray<re::DirectionalLightInfo>::deinit(&v90 + 8);
    if (v87)
    {
      v36 = v90;
      if (v90)
      {
        (*(*v87 + 40))();
      }
    }

    if (!*v20)
    {
      re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, *v20 - 1, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v54, v56);
      __break(1u);
LABEL_69:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v51, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v55, v57);
      __break(1u);
      goto LABEL_70;
    }

    v10 = (v9 + 32 + 312 * (*v20 - 1) + 24);
LABEL_45:
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v77 + 8);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v74 + 8);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v71 + 8);
    re::DynamicArray<re::SpotLightInfo>::deinit(&v68 + 8);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v65 + 8);
    re::DynamicArray<re::DirectionalLightInfo>::deinit(&v62 + 8);
    if (v59)
    {
      v37 = v62;
      if (v62)
      {
        (*(*v59 + 40))();
      }
    }

    v38 = *(a1 + 32);
    if (v6)
    {
      v39 = *(a1 + 32);
    }

    else
    {
      v39 = 0;
    }

    *v10 = v39;
    *(a1 + 32) = v38 + 1;
    v40 = *(a1 + 48);
    if (*(v40 + 316))
    {
LABEL_52:
      re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v40 + 288, &v83, v10);
      return v10;
    }

    v41 = *(v40 + 16);
    v42 = v83;
    if (v41)
    {
      v43 = 16 * v41;
      v44 = v40 + 32;
      v45 = 32;
      v46 = 16 * v41;
      do
      {
        if (*(v40 + v45) == v83)
        {
          return v10;
        }

        v45 += 16;
        v46 -= 16;
      }

      while (v46);
      if ((v41 & 0xFFFFFFF0) == 0)
      {
        goto LABEL_66;
      }

      if (!*(v40 + 288))
      {
        v47 = *v40;
        if (!*v40)
        {
        }

        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v40 + 288, v47, 32);
        v48 = *(v40 + 16);
        if (!v48)
        {
          goto LABEL_65;
        }

        v43 = 16 * v48;
      }

      v49 = v40 + v43 + 32;
      do
      {
        re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v40 + 288, v44, (v44 + 8));
        v44 += 16;
      }

      while (v44 != v49);
LABEL_65:
      *(v40 + 16) = 0;
      ++*(v40 + 24);
      goto LABEL_52;
    }

LABEL_66:
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(v41, v37);
    v51 = *(v40 + 16);
    v52 = v40 + 16 * v51;
    *(v52 + 32) = v42;
    *(v52 + 40) = v39;
    ++*(v40 + 24);
    *(v40 + 16) = v51 + 1;
    if (v51 != -1)
    {
      return v10;
    }

    goto LABEL_69;
  }

LABEL_70:
  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

__n128 re::DynamicArray<re::DirectionalLightInfo>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DirectionalLightInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::DynamicString::DynamicString((*(this + 4) + 160 * v4), a2);
  v6 = *(a2 + 3);
  *(v5 + 2) = *(a2 + 2);
  *(v5 + 3) = v6;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  *(v5 + 108) = *(a2 + 108);
  *(v5 + 5) = v8;
  *(v5 + 6) = v9;
  *(v5 + 4) = v7;
  *(v5 + 124) = *(a2 + 124);
  v10 = *(a2 + 132);
  *(v5 + 132) = v10;
  if (v10 == 1)
  {
    *(v5 + 133) = *(a2 + 133);
  }

  result = *(a2 + 134);
  *(v5 + 75) = *(a2 + 75);
  *(v5 + 134) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::DynamicLightShadowInfo>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 224 * v5;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = *(a2 + 24);
  v12 = *(a2 + 8);
  *v11 = *a2;
  *a2 = 0;
  v13 = *(a2 + 16);
  *(a2 + 24) = 0;
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  v16 = *(a2 + 112);
  v18 = *(a2 + 64);
  v17 = *(a2 + 80);
  *(v11 + 96) = *(a2 + 96);
  *(v11 + 112) = v16;
  *(v11 + 64) = v18;
  *(v11 + 80) = v17;
  v19 = *(a2 + 128);
  v20 = *(a2 + 144);
  v21 = *(a2 + 160);
  *(v11 + 172) = *(a2 + 172);
  *(v11 + 144) = v20;
  *(v11 + 160) = v21;
  *(v11 + 128) = v19;
  v22 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v22;
  LODWORD(v13) = *(a2 + 188);
  *(v11 + 188) = v13;
  if (v13 == 1)
  {
    *(v11 + 189) = *(a2 + 189);
  }

  result = *(a2 + 192);
  *(v11 + 208) = *(a2 + 208);
  *(v11 + 192) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

float anonymous namespace::makeShadowInfo(uint64_t a1, uint64_t a2, re::Allocator *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 188) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a2 + 8))
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = (a2 + 9);
  }

  re::DynamicString::DynamicString(&v10, v6, a3);
  re::DynamicString::operator=(a1, &v10);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  *(a1 + 32) = 0;
  v7 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 96) = v8;
  *(a1 + 112) = xmmword_1E3047670;
  *(a1 + 128) = xmmword_1E3047680;
  *(a1 + 144) = xmmword_1E30476A0;
  *(a1 + 160) = xmmword_1E30474D0;
  *(a1 + 176) = *(a2 + 144);
  *(a1 + 184) = *(a2 + 128);
  if ((*(a1 + 188) & 1) == 0)
  {
    if ((*(a2 + 132) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 188) = 1;
LABEL_12:
    *(a1 + 189) = *(a2 + 133);
    goto LABEL_13;
  }

  if (*(a2 + 132))
  {
    goto LABEL_12;
  }

  *(a1 + 188) = 0;
LABEL_13:
  *(a1 + 192) = *(a2 + 124);
  *(a1 + 196) = *(a2 + 116);
  result = *(a2 + 140);
  *(a1 + 204) = result;
  *(a1 + 208) = *(a2 + 136);
  return result;
}

{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 188) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a2 + 8))
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = (a2 + 9);
  }

  re::DynamicString::DynamicString(&v12, v6, a3);
  re::DynamicString::operator=(a1, &v12);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  *(a1 + 32) = 1;
  v7 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 96) = v8;
  v9 = *(a2 + 144);
  *(a1 + 112) = *(a2 + 128);
  *(a1 + 128) = v9;
  v10 = *(a2 + 176);
  *(a1 + 144) = *(a2 + 160);
  *(a1 + 160) = v10;
  *(a1 + 176) = *(a2 + 192);
  *(a1 + 184) = *(a2 + 216);
  if ((*(a1 + 188) & 1) == 0)
  {
    if ((*(a2 + 220) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 188) = 1;
LABEL_12:
    *(a1 + 189) = *(a2 + 221);
    goto LABEL_13;
  }

  if (*(a2 + 220))
  {
    goto LABEL_12;
  }

  *(a1 + 188) = 0;
LABEL_13:
  result = *(a2 + 208);
  *(a1 + 192) = result;
  return result;
}

id re::DynamicArray<re::SpotLightInfo>::add(uint64_t a1, re::DynamicString *a2)
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

        re::DynamicArray<re::SpotLightInfo>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::SpotLightInfo>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 240 * v5;
  re::DynamicString::DynamicString(v11, a2);
  v12 = *(a2 + 3);
  *(v11 + 32) = *(a2 + 2);
  *(v11 + 48) = v12;
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  *(v11 + 108) = *(a2 + 108);
  *(v11 + 80) = v14;
  *(v11 + 96) = v15;
  *(v11 + 64) = v13;
  v17 = *(a2 + 11);
  v16 = *(a2 + 12);
  v18 = *(a2 + 10);
  *(v11 + 204) = *(a2 + 204);
  *(v11 + 176) = v17;
  *(v11 + 192) = v16;
  *(v11 + 160) = v18;
  v19 = *(a2 + 9);
  *(v11 + 128) = *(a2 + 8);
  *(v11 + 144) = v19;
  v20 = *(a2 + 220);
  *(v11 + 220) = v20;
  if (v20 == 1)
  {
    *(v11 + 221) = *(a2 + 221);
  }

  v21 = *(a2 + 111);
  *(v11 + 224) = *(a2 + 224);
  *(v11 + 222) = v21;
  result = *(a2 + 29);
  *(v11 + 232) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

re::DynamicString *re::DynamicArray<re::PointLightInfo>::add(uint64_t a1, re::DynamicString *a2)
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

        re::DynamicArray<re::PointLightInfo>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::PointLightInfo>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::DynamicString::DynamicString((*(a1 + 32) + 224 * v5), a2);
  v12 = *(a2 + 3);
  *(result + 2) = *(a2 + 2);
  *(result + 3) = v12;
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  *(result + 108) = *(a2 + 108);
  *(result + 5) = v14;
  *(result + 6) = v15;
  *(result + 4) = v13;
  v17 = *(a2 + 11);
  v16 = *(a2 + 12);
  v18 = *(a2 + 10);
  *(result + 52) = *(a2 + 52);
  *(result + 11) = v17;
  *(result + 12) = v16;
  *(result + 10) = v18;
  v19 = *(a2 + 9);
  *(result + 8) = *(a2 + 8);
  *(result + 9) = v19;
  v20 = *(a2 + 212);
  *(result + 212) = v20;
  if (v20 == 1)
  {
    *(result + 213) = *(a2 + 213);
  }

  *(result + 107) = *(a2 + 107);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t anonymous namespace::makeShadowInfo(uint64_t a1, uint64_t a2, re::Allocator *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 188) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a2 + 8))
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = (a2 + 9);
  }

  re::DynamicString::DynamicString(&v12, v6, a3);
  re::DynamicString::operator=(a1, &v12);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      result = (*(*v12 + 40))();
    }
  }

  *(a1 + 32) = 2;
  v8 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v8;
  v9 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 96) = v9;
  v10 = *(a2 + 144);
  *(a1 + 112) = *(a2 + 128);
  *(a1 + 128) = v10;
  v11 = *(a2 + 176);
  *(a1 + 144) = *(a2 + 160);
  *(a1 + 160) = v11;
  *(a1 + 176) = *(a2 + 192);
  *(a1 + 184) = *(a2 + 208);
  if (*(a1 + 188))
  {
    if ((*(a2 + 212) & 1) == 0)
    {
      *(a1 + 188) = 0;
      return result;
    }
  }

  else
  {
    if ((*(a2 + 212) & 1) == 0)
    {
      return result;
    }

    *(a1 + 188) = 1;
  }

  *(a1 + 189) = *(a2 + 213);
  return result;
}

__n128 re::DynamicArray<re::RectAreaLightInfo>::add(uint64_t a1, re::DynamicString *a2)
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

        re::DynamicArray<re::RectAreaLightInfo>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RectAreaLightInfo>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = re::DynamicString::DynamicString((*(a1 + 32) + 144 * v5), a2);
  v12 = *(a2 + 3);
  *(v11 + 2) = *(a2 + 2);
  *(v11 + 3) = v12;
  result = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  *(v11 + 108) = *(a2 + 108);
  *(v11 + 5) = v14;
  *(v11 + 6) = v15;
  *(v11 + 4) = result;
  v16 = *(a2 + 16);
  *(v11 + 136) = *(a2 + 136);
  *(v11 + 16) = v16;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

__n128 re::DynamicArray<re::AmbientLightInfo>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::AABB>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::AABB>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 32 * v5);
  result = *a2;
  v13 = *(a2 + 16);
  *v11 = *a2;
  v11[1] = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

re::ecs2::PointLightComponentStateImpl *re::ecs2::PointLightComponentStateImpl::PointLightComponentStateImpl(re::ecs2::PointLightComponentStateImpl *this)
{
  v2 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::BaseLightComponentStateImpl(this);
  *v2 = &unk_1F5CEE008;
  v3 = (v2 + 13);
  v5 = re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add((v2 + 13), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE488;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

void anonymous namespace::updateProjectionPointLightInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *(result + 215) = (a2 | a3) != 0;
  if (!(a2 | a3))
  {
    *(result + 208) = 0;
    if (!a4)
    {
      return;
    }

    v7 = *(result + 116);
    v8 = *(result + 120);
    goto LABEL_30;
  }

  v5 = *(result + 116);
  v6 = *(result + 120);
  if (!a2)
  {
    if (a3)
    {
      v9 = *(a3 + 28);
    }

    else
    {
      v9 = 1.0;
    }

    *(result + 208) = v9;
    v12 = v6;
    v7 = v5;
    goto LABEL_21;
  }

  if ((*(result + 212) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(result + 212) = 1;
LABEL_12:
    *(result + 213) = *(a2 + 33);
    goto LABEL_13;
  }

  if (*(a2 + 32))
  {
    goto LABEL_12;
  }

  *(result + 212) = 0;
LABEL_13:
  *(result + 208) = *(a2 + 28);
  if (*(a2 + 36))
  {
    v10 = (a2 + 40);
  }

  else
  {
    v10 = &kDefaultLightShadowNearPlane;
  }

  v7 = *v10;
  v11 = (result + 200);
  if (*(a2 + 44))
  {
    v11 = (a2 + 48);
  }

  v12 = *v11;
LABEL_21:
  if (*(result + 200) <= v12)
  {
    v8 = *(result + 200);
  }

  else
  {
    v8 = v12;
  }

  if ((a4 & 1) != 0 || (v7 == v5 ? (v13 = v8 == v6) : (v13 = 0), !v13))
  {
    *(result + 116) = v7;
    *(result + 120) = v8;
LABEL_30:
    v14 = tanf(0.7854);
    v15 = 1.0 / v14;
    if (v8 == INFINITY)
    {
      v16 = -v7;
      LODWORD(v18) = 0;
      *(&v18 + 1) = 0;
      DWORD1(v17) = 0;
      *(&v17 + 1) = 0;
      *&v17 = 1.0 / v14;
      *(&v18 + 1) = v15;
      v19 = xmmword_1E3085330;
    }

    else
    {
      DWORD1(v17) = 0;
      *(&v17 + 1) = 0;
      *&v17 = 1.0 / v14;
      LODWORD(v18) = 0;
      *(&v18 + 1) = 0;
      *(&v18 + 1) = v15;
      *&v19 = 0;
      v16 = (v8 * v7) / (v7 - v8);
      *(&v19 + 2) = v8 / (v7 - v8);
      HIDWORD(v19) = -1.0;
    }

    *&v20 = 0;
    *(&v20 + 1) = LODWORD(v16);
    v24[0] = v17;
    v24[1] = v18;
    v24[2] = v19;
    v24[3] = v20;
    re::Projection::makeReverseDepth(v24, v23);
    v21 = v23[1];
    *(result + 128) = v23[0];
    *(result + 144) = v21;
    v22 = v23[3];
    *(result + 160) = v23[2];
    *(result + 176) = v22;
  }
}

void anonymous namespace::getAnchorScale(_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  *this = 0;
  v3 = re::ecs2::TransformComponent::rootAnchorComponent(a2);
  if (v3)
  {
    v4 = *(v3 + 3);
    v5 = *(v3 + 4);
    v6 = *(v3 + 5);
    v7 = vmulq_f32(v4, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL))), vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL)));
    v8 = -1.0;
    if ((v7.f32[2] + vaddv_f32(*v7.f32)) > 0.0)
    {
      v8 = 1.0;
    }

    v9 = vmulq_f32(v4, v4);
    v10 = vmulq_f32(v5, v5);
    v11 = vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8));
    v12 = vextq_s8(v9, v9, 8uLL);
    *v12.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v12.f32, *&vextq_s8(v10, v10, 8uLL)), v11));
    v13 = vmulq_f32(v6, v6);
    v12.i32[2] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
    v14 = vmulq_n_f32(v12, v8);
    v15 = v14.f32[1];
    v16 = v14.f32[2];
    if ((v14.f32[0] == v14.f32[1] || vabds_f32(v14.f32[0], v14.f32[1]) < (((fabsf(v14.f32[0]) + fabsf(v14.f32[1])) + 1.0) * 0.00001)) && (v14.f32[0] == v14.f32[2] || vabds_f32(v14.f32[0], v14.f32[2]) < (((fabsf(v14.f32[0]) + fabsf(v14.f32[2])) + 1.0) * 0.00001)))
    {
      goto LABEL_12;
    }

    {
      v19 = v14.i32[0];
      v17 = *re::graphicsLogObjects(v3);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      v14.i32[0] = v19;
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "LightSystem: non uniform system scale detected in AnchorComponent", buf, 2u);
        v14.i32[0] = v19;
      }
    }

    v14.f32[0] = fmaxf(fmaxf(v14.f32[0], v16), v15);
    if ((*this & 1) == 0)
    {
LABEL_12:
      *this = 1;
    }

    *(this + 1) = v14.i32[0];
  }
}

re::ecs2::SpotLightComponentStateImpl *re::ecs2::SpotLightComponentStateImpl::SpotLightComponentStateImpl(re::ecs2::SpotLightComponentStateImpl *this)
{
  v2 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::BaseLightComponentStateImpl(this);
  *v2 = &unk_1F5CEE048;
  v3 = (v2 + 13);
  v5 = re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add((v2 + 13), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE448;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

void anonymous namespace::updateProjectionSpotLightInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *(result + 224) = (a2 | a3) != 0;
  if (!(a2 | a3))
  {
    *(result + 216) = 0;
    if (!a4)
    {
      return;
    }

    v7 = *(result + 116);
    v8 = *(result + 120);
    goto LABEL_30;
  }

  v5 = *(result + 116);
  v6 = *(result + 120);
  if (!a2)
  {
    if (a3)
    {
      v9 = *(a3 + 28);
    }

    else
    {
      v9 = 1.0;
    }

    *(result + 216) = v9;
    v12 = v6;
    v7 = v5;
    goto LABEL_21;
  }

  if ((*(result + 220) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(result + 220) = 1;
LABEL_12:
    *(result + 221) = *(a2 + 33);
    goto LABEL_13;
  }

  if (*(a2 + 32))
  {
    goto LABEL_12;
  }

  *(result + 220) = 0;
LABEL_13:
  *(result + 216) = *(a2 + 28);
  if (*(a2 + 36))
  {
    v10 = (a2 + 40);
  }

  else
  {
    v10 = &kDefaultLightShadowNearPlane;
  }

  v7 = *v10;
  v11 = (result + 200);
  if (*(a2 + 44))
  {
    v11 = (a2 + 48);
  }

  v12 = *v11;
LABEL_21:
  if (*(result + 200) <= v12)
  {
    v8 = *(result + 200);
  }

  else
  {
    v8 = v12;
  }

  if ((a4 & 1) != 0 || (v7 == v5 ? (v13 = v8 == v6) : (v13 = 0), !v13))
  {
    *(result + 116) = v7;
    *(result + 120) = v8;
LABEL_30:
    v14 = tanf(*(result + 208) * 0.5);
    v15 = 1.0 / v14;
    if (v8 == INFINITY)
    {
      v16 = -v7;
      LODWORD(v18) = 0;
      *(&v18 + 1) = 0;
      DWORD1(v17) = 0;
      *(&v17 + 1) = 0;
      *&v17 = 1.0 / v14;
      *(&v18 + 1) = v15;
      v19 = xmmword_1E3085330;
    }

    else
    {
      DWORD1(v17) = 0;
      *(&v17 + 1) = 0;
      *&v17 = 1.0 / v14;
      LODWORD(v18) = 0;
      *(&v18 + 1) = 0;
      *(&v18 + 1) = v15;
      *&v19 = 0;
      v16 = (v8 * v7) / (v7 - v8);
      *(&v19 + 2) = v8 / (v7 - v8);
      HIDWORD(v19) = -1.0;
    }

    *&v20 = 0;
    *(&v20 + 1) = LODWORD(v16);
    v24[0] = v17;
    v24[1] = v18;
    v24[2] = v19;
    v24[3] = v20;
    re::Projection::makeReverseDepth(v24, v23);
    v21 = v23[1];
    *(result + 128) = v23[0];
    *(result + 144) = v21;
    v22 = v23[3];
    *(result + 160) = v23[2];
    *(result + 176) = v22;
  }
}

re::ecs2::DirectionalLightComponentStateImpl *re::ecs2::DirectionalLightComponentStateImpl::DirectionalLightComponentStateImpl(re::ecs2::DirectionalLightComponentStateImpl *this)
{
  v2 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::BaseLightComponentStateImpl(this);
  *v2 = &unk_1F5CEE088;
  v3 = (v2 + 13);
  v5 = re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add((v2 + 13), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE408;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

re::ecs2::FrustumLightComponentStateImpl *re::ecs2::FrustumLightComponentStateImpl::FrustumLightComponentStateImpl(re::ecs2::FrustumLightComponentStateImpl *this)
{
  v2 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::BaseLightComponentStateImpl(this);
  *v2 = &unk_1F5CEE0C8;
  v3 = (v2 + 13);
  v5 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add((v2 + 13), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE348;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

uint64_t re::MeshAsset::partCountForModel(re::MeshAsset *this, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = 32;
  if (*(this + 1264))
  {
    v4 = 608;
  }

  if (*(this + v4) <= a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "modelIndex < modelCount()", "partCountForModel", 134);
    _os_crash("assertion failure: (modelIndex < modelCount()) ");
    __break(1u);
    goto LABEL_12;
  }

  v2 = a2;
  if (!*(this + 1264))
  {
    v3 = *(this + 4);
    if (v3 > a2)
    {
      v6 = *(this + 6) + (a2 << 9) + 208;
      return *v6;
    }

    goto LABEL_13;
  }

  v5 = *(this + 79);
  if (!v5)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "meshManager != nullptr", "partCountForModel", 137);
    _os_crash("assertion failure: (meshManager != nullptr) ");
    __break(1u);
LABEL_13:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v2;
    v22 = 2048;
    v23 = v3;
    _os_log_send_and_compose_impl(v9, &v15, &v24, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v13, v14);
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v2;
    v22 = 2048;
    v23 = v3;
    _os_log_send_and_compose_impl(v12, &v15, &v24, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v13, v14);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this + 76);
  if (v3 <= a2)
  {
    goto LABEL_17;
  }

  v6 = re::DataArray<re::MeshModel>::get(v5 + 8, *(*(this + 78) + 8 * a2)) + 56;
  return *v6;
}

void re::ecs2::LightSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 224);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = 8 * v5;
      do
      {
        v6 += 8;
        re::ecs2::LightSystem::updateSceneInternal(result);
        v7 -= 8;
      }

      while (v7);
    }
  }
}

void re::ecs2::LightSystem::updateSceneInternal(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v557 = *MEMORY[0x1E69E9840];
  v467[0] = v4;
  v467[1] = v5;
  v438 = v6;
  if (!v6)
  {
    return;
  }

  v7 = v3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v466);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v465, 3025, v7, 0, 0, 0);
  if (!*(v7 + 240))
  {
    goto LABEL_571;
  }

  if (!*(v7 + 232))
  {
LABEL_572:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 1587);
    _os_crash("assertion failure: (m_renderManager) ");
    __break(1u);
    goto LABEL_573;
  }

  v464 = (*(**(v7 + 256) + 24))(*(v7 + 256));
  v9 = (*(*v464 + 16))(v464);
  v10 = *(v9 + 124);
  if (!v10)
  {
    v10 = *(v9 + 16);
  }

  v458 = v10;
  v11 = *(v7 + 232);
  v12 = *(v11 + 112);
  if (v12)
  {
    v437 = re::RenderFrameBox::get((v12 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v11 = *(v7 + 232);
  }

  else
  {
    v437 = 0;
  }

  v13 = v518;
  v456 = *(v11 + 322);
  __src.i64[0] = re::RenderManager::perFrameAllocator(v11);
  __src.i32[2] = 0;
  v474.i64[0] = 0;
  v474.i32[2] = 0;
  v514 = 0u;
  v515 = 0u;
  v516 = 0;
  v517 = 0x7FFFFFFFLL;
  v14 = *(*(v7 + 232) + 160);
  v469[0] = (*(**(v7 + 272) + 16))(*(v7 + 272));
  v15 = *(*(v7 + 232) + 96);
  if (v15)
  {
    v552.i8[0] = 0;
    *v518 = 0xFB51CF9FCBD130BALL;
    *&v518[8] = "overrides:enableshadows";
    v16 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v15, v518, &v552);
    v17 = v16;
    if (v518[0])
    {
      if (v518[0])
      {
      }
    }

    v18 = v17 == 0;
    LOBYTE(v13) = v552.i8[0];
    *v518 = 0x556F25DBCF9A2F18;
    *&v518[8] = "overrides:enablelightspill";
    v19 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v15, v518, &v552);
    v20 = v19;
    if (v518[0])
    {
      if (v518[0])
      {
      }
    }

    v21 = v20 == 0;
    v2 = v552.i8[0];
  }

  else
  {
    v21 = 0;
    v18 = 0;
  }

  v22 = (*(**(v7 + 296) + 48))(*(v7 + 296));
  v24 = v22;
  if (*(v22 + 316))
  {
    v25 = *(v22 + 312);
    if (v25)
    {
      memset_pattern16(*(v22 + 296), &unk_1E304C660, 4 * v25);
    }

    v26 = *(v24 + 320);
    if (v26)
    {
      v27 = *(v24 + 304);
      do
      {
        if ((*v27 & 0x80000000) != 0)
        {
          *v27 &= ~0x80000000;
        }

        v27 += 6;
        --v26;
      }

      while (v26);
    }

    *(v24 + 324) = 0x7FFFFFFF;
    *(v24 + 316) = 0;
    v28 = 328;
  }

  else
  {
    *(v22 + 16) = 0;
    v28 = 24;
  }

  ++*(v24 + v28);
  *v518 = 0;
  v29 = *(v24 + 16);
  if (v29)
  {
    v30 = 16 * v29;
    v31 = v24 + 32;
    v32 = 32;
    v33 = 16 * v29;
    do
    {
      if (!*(v24 + v32))
      {
        goto LABEL_42;
      }

      v32 += 16;
      v33 -= 16;
    }

    while (v33);
    if ((v29 & 0xFFFFFFF0) != 0)
    {
      if (!*(v24 + 288))
      {
        v34 = *v24;
        if (!*v24)
        {
        }

        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v24 + 288, v34, 32);
        v35 = *(v24 + 16);
        if (!v35)
        {
          goto LABEL_40;
        }

        v30 = 16 * v35;
      }

      v36 = v24 + v30 + 32;
      do
      {
        re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v24 + 288, v31, (v31 + 8));
        v31 += 16;
      }

      while (v31 != v36);
LABEL_40:
      *(v24 + 16) = 0;
      ++*(v24 + 24);
      re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v24 + 288, v518);
      goto LABEL_42;
    }
  }

  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(v29, v23);
  v38 = *(v24 + 16);
  v39 = v24 + 16 * v38;
  *(v39 + 32) = 0;
  *(v39 + 40) = 0;
  ++*(v24 + 24);
  *(v24 + 16) = v38 + 1;
  if (v38 == -1)
  {
LABEL_573:
    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v38, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v425, v426);
    __break(1u);
  }

LABEL_42:
  v40 = *(v7 + 296);
  if (v14)
  {
    v41 = *v14;
  }

  else
  {
    v41 = 0;
  }

  *v461 = &v464;
  *&v461[8] = v40;
  *&v461[16] = v469;
  v461[24] = v18;
  if (v18)
  {
    v461[25] = v13;
  }

  v461[26] = v21;
  if (v21)
  {
    v461[27] = v2;
  }

  v461[28] = v41;
  *v462 = 0;
  *&v462[8] = (*(*v40 + 40))(v40);
  *&v462[16] = (*(*v40 + 48))(v40);
  *&v462[24] = &__src;
  v463 = 0;
  v42 = *(*&v462[16] + 316);
  if (!v42)
  {
    v42 = *(*&v462[16] + 16);
  }

  *v462 = v42;
  *v518 = 0;
  *&v518[8] = 0;
  *&v518[16] = 0;
  *&v518[24] = 0;
  v548 = 0u;
  v549 = 0u;
  v550 = 0;
  v551 = 0x7FFFFFFFLL;
  v43 = *(v7 + 2104);
  if (v43)
  {
    v44 = 0;
    v45 = *(v7 + 2088);
    while (1)
    {
      v46 = *v45;
      v45 += 18;
      if (v46 < 0)
      {
        break;
      }

      if (v43 == ++v44)
      {
        LODWORD(v44) = *(v7 + 2104);
        break;
      }
    }
  }

  else
  {
    LODWORD(v44) = 0;
  }

  while (v44 != v43)
  {
    v47 = *(v7 + 2088) + 72 * v44;
    v552.i64[0] = *(v47 + 8);
    v48 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 2320), &v552);
    if (v48 != -1)
    {
      v49 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 2264, *(*(v7 + 2328) + 16 * v48 + 8));
      v50 = *(v47 + 48);
      if (v50)
      {
        v1 = 0;
        v51 = (*(v47 + 32) + 8);
        while (1)
        {
          v52 = *v51;
          v51 += 6;
          if (v52 < 0)
          {
            break;
          }

          if (v50 == ++v1)
          {
            LODWORD(v1) = *(v47 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v1) = 0;
      }

LABEL_73:
      while (v1 != v50)
      {
        WeakRetained = objc_loadWeakRetained((*(v47 + 32) + 24 * v1 + 16));
        if (WeakRetained)
        {
          v54 = WeakRetained;
          re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::checkRenderOptionChanges(v49, WeakRetained - 1, v469, v518);
        }

        v55 = *(v47 + 48);
        if (v55 <= v1 + 1)
        {
          v55 = v1 + 1;
        }

        while (v55 - 1 != v1)
        {
          LODWORD(v1) = v1 + 1;
          if ((*(*(v47 + 32) + 24 * v1 + 8) & 0x80000000) != 0)
          {
            goto LABEL_73;
          }
        }

        LODWORD(v1) = v55;
      }
    }

    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v47 + 16);
    if (HIDWORD(v549))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v548);
    }

    else
    {
      *&v518[16] = 0;
      ++*&v518[24];
    }

    v56 = *(v7 + 2104);
    if (v56 <= v44 + 1)
    {
      v56 = v44 + 1;
    }

    while (v56 - 1 != v44)
    {
      LODWORD(v44) = v44 + 1;
      if ((*(*(v7 + 2088) + 72 * v44) & 0x80000000) != 0)
      {
        goto LABEL_83;
      }
    }

    LODWORD(v44) = v56;
LABEL_83:
    ;
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v518);
  *v518 = v438;
  v57 = *(*(v7 + 2328) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 2320), v518) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 2432, v57);
  v58 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 2264, v57);
  v59 = *(*v58 + 224);
  v60 = v58[3];
  v61 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v58[2] + 8, v60);
  if (*(v61 + 40))
  {
    v62 = (*(*v59 + 24))(v59, v467, v58, v60, v61, v461);
  }

  else
  {
    v62 = 0;
  }

  v63 = v58[5];
  v64 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v58[2] + 8, v63);
  if (*(v64 + 40))
  {
    v62 |= (*(*v59 + 32))(v59, v467, v58, v63, v64, v461);
  }

  v65 = v58[6];
  v66 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v58[2] + 8, v65);
  if (*(v66 + 40))
  {
    if (((v62 | (*(*v59 + 40))(v59, v467, v58, v65, v66, v461)) & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  if (v62)
  {
LABEL_91:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 2432, v57);
  }

LABEL_92:
  v67 = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 2264);
  if (v456)
  {
    goto LABEL_358;
  }

  *v518 = 0;
  *&v518[8] = 0;
  *&v518[16] = 0;
  *&v518[24] = 0;
  v548 = 0u;
  v549 = 0u;
  v550 = 0;
  v551 = 0x7FFFFFFFLL;
  v68 = *(v7 + 344);
  if (v68)
  {
    v69 = 0;
    v70 = *(v7 + 328);
    while (1)
    {
      v71 = *v70;
      v70 += 18;
      if (v71 < 0)
      {
        break;
      }

      if (v68 == ++v69)
      {
        LODWORD(v69) = *(v7 + 344);
        break;
      }
    }
  }

  else
  {
    LODWORD(v69) = 0;
  }

  if (v69 != v68)
  {
    LODWORD(v1) = 72;
    do
    {
      v72 = *(v7 + 328) + 72 * v69;
      v552.i64[0] = *(v72 + 8);
      v73 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 560), &v552);
      if (v73 != -1)
      {
        v74 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 504, *(*(v7 + 568) + 16 * v73 + 8));
        v75 = *(v72 + 48);
        if (v75)
        {
          v76 = 0;
          v77 = (*(v72 + 32) + 8);
          while (1)
          {
            v78 = *v77;
            v77 += 6;
            if (v78 < 0)
            {
              break;
            }

            if (v75 == ++v76)
            {
              LODWORD(v76) = *(v72 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v76) = 0;
        }

LABEL_118:
        while (v76 != v75)
        {
          v79 = objc_loadWeakRetained((*(v72 + 32) + 24 * v76 + 16));
          if (v79)
          {
            v80 = v79;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::checkRenderOptionChanges(v74, v79 - 1, v469, v518);
          }

          v81 = *(v72 + 48);
          if (v81 <= v76 + 1)
          {
            v81 = v76 + 1;
          }

          while (v81 - 1 != v76)
          {
            LODWORD(v76) = v76 + 1;
            if ((*(*(v72 + 32) + 24 * v76 + 8) & 0x80000000) != 0)
            {
              goto LABEL_118;
            }
          }

          LODWORD(v76) = v81;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v72 + 16);
      if (HIDWORD(v549))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v548);
      }

      else
      {
        *&v518[16] = 0;
        ++*&v518[24];
      }

      v82 = *(v7 + 344);
      if (v82 <= v69 + 1)
      {
        v82 = v69 + 1;
      }

      while (v82 - 1 != v69)
      {
        LODWORD(v69) = v69 + 1;
        if ((*(*(v7 + 328) + 72 * v69) & 0x80000000) != 0)
        {
          goto LABEL_128;
        }
      }

      LODWORD(v69) = v82;
LABEL_128:
      ;
    }

    while (v69 != v68);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v518);
  *v518 = 0;
  *&v518[8] = 0;
  *&v518[16] = 0;
  *&v518[24] = 0;
  v548 = 0u;
  v549 = 0u;
  v550 = 0;
  v551 = 0x7FFFFFFFLL;
  v83 = *(v7 + 784);
  if (v83)
  {
    v84 = 0;
    v85 = *(v7 + 768);
    while (1)
    {
      v86 = *v85;
      v85 += 18;
      if (v86 < 0)
      {
        break;
      }

      if (v83 == ++v84)
      {
        LODWORD(v84) = *(v7 + 784);
        break;
      }
    }
  }

  else
  {
    LODWORD(v84) = 0;
  }

  if (v84 != v83)
  {
    LODWORD(v1) = 72;
    do
    {
      v87 = *(v7 + 768) + 72 * v84;
      v552.i64[0] = *(v87 + 8);
      v88 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1000), &v552);
      if (v88 != -1)
      {
        v89 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 944, *(*(v7 + 1008) + 16 * v88 + 8));
        v90 = *(v87 + 48);
        if (v90)
        {
          v91 = 0;
          v92 = (*(v87 + 32) + 8);
          while (1)
          {
            v93 = *v92;
            v92 += 6;
            if (v93 < 0)
            {
              break;
            }

            if (v90 == ++v91)
            {
              LODWORD(v91) = *(v87 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v91) = 0;
        }

LABEL_152:
        while (v91 != v90)
        {
          v94 = objc_loadWeakRetained((*(v87 + 32) + 24 * v91 + 16));
          if (v94)
          {
            v95 = v94;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::checkRenderOptionChanges(v89, v94 - 1, v469, v518);
          }

          v96 = *(v87 + 48);
          if (v96 <= v91 + 1)
          {
            v96 = v91 + 1;
          }

          while (v96 - 1 != v91)
          {
            LODWORD(v91) = v91 + 1;
            if ((*(*(v87 + 32) + 24 * v91 + 8) & 0x80000000) != 0)
            {
              goto LABEL_152;
            }
          }

          LODWORD(v91) = v96;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v87 + 16);
      if (HIDWORD(v549))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v548);
      }

      else
      {
        *&v518[16] = 0;
        ++*&v518[24];
      }

      v97 = *(v7 + 784);
      if (v97 <= v84 + 1)
      {
        v97 = v84 + 1;
      }

      while (v97 - 1 != v84)
      {
        LODWORD(v84) = v84 + 1;
        if ((*(*(v7 + 768) + 72 * v84) & 0x80000000) != 0)
        {
          goto LABEL_162;
        }
      }

      LODWORD(v84) = v97;
LABEL_162:
      ;
    }

    while (v84 != v83);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v518);
  *v518 = 0;
  *&v518[8] = 0;
  *&v518[16] = 0;
  *&v518[24] = 0;
  v548 = 0u;
  v549 = 0u;
  v550 = 0;
  v551 = 0x7FFFFFFFLL;
  v98 = *(v7 + 1224);
  if (v98)
  {
    v99 = 0;
    v100 = *(v7 + 1208);
    while (1)
    {
      v101 = *v100;
      v100 += 18;
      if (v101 < 0)
      {
        break;
      }

      if (v98 == ++v99)
      {
        LODWORD(v99) = *(v7 + 1224);
        break;
      }
    }
  }

  else
  {
    LODWORD(v99) = 0;
  }

  if (v99 != v98)
  {
    LODWORD(v1) = 72;
    do
    {
      v102 = *(v7 + 1208) + 72 * v99;
      v552.i64[0] = *(v102 + 8);
      v103 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1440), &v552);
      if (v103 != -1)
      {
        v104 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 1384, *(*(v7 + 1448) + 16 * v103 + 8));
        v105 = *(v102 + 48);
        if (v105)
        {
          v106 = 0;
          v107 = (*(v102 + 32) + 8);
          while (1)
          {
            v108 = *v107;
            v107 += 6;
            if (v108 < 0)
            {
              break;
            }

            if (v105 == ++v106)
            {
              LODWORD(v106) = *(v102 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v106) = 0;
        }

LABEL_186:
        while (v106 != v105)
        {
          v109 = objc_loadWeakRetained((*(v102 + 32) + 24 * v106 + 16));
          if (v109)
          {
            v110 = v109;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::checkRenderOptionChanges(v104, v109 - 1, v469, v518);
          }

          v111 = *(v102 + 48);
          if (v111 <= v106 + 1)
          {
            v111 = v106 + 1;
          }

          while (v111 - 1 != v106)
          {
            LODWORD(v106) = v106 + 1;
            if ((*(*(v102 + 32) + 24 * v106 + 8) & 0x80000000) != 0)
            {
              goto LABEL_186;
            }
          }

          LODWORD(v106) = v111;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v102 + 16);
      if (HIDWORD(v549))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v548);
      }

      else
      {
        *&v518[16] = 0;
        ++*&v518[24];
      }

      v112 = *(v7 + 1224);
      if (v112 <= v99 + 1)
      {
        v112 = v99 + 1;
      }

      while (v112 - 1 != v99)
      {
        LODWORD(v99) = v99 + 1;
        if ((*(*(v7 + 1208) + 72 * v99) & 0x80000000) != 0)
        {
          goto LABEL_196;
        }
      }

      LODWORD(v99) = v112;
LABEL_196:
      ;
    }

    while (v99 != v98);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v518);
  *v518 = 0;
  *&v518[8] = 0;
  *&v518[16] = 0;
  *&v518[24] = 0;
  v548 = 0u;
  v549 = 0u;
  v550 = 0;
  v551 = 0x7FFFFFFFLL;
  v113 = *(v7 + 1664);
  if (v113)
  {
    v114 = 0;
    v115 = *(v7 + 1648);
    while (1)
    {
      v116 = *v115;
      v115 += 18;
      if (v116 < 0)
      {
        break;
      }

      if (v113 == ++v114)
      {
        LODWORD(v114) = *(v7 + 1664);
        break;
      }
    }
  }

  else
  {
    LODWORD(v114) = 0;
  }

  if (v114 != v113)
  {
    LODWORD(v1) = 72;
    do
    {
      v117 = *(v7 + 1648) + 72 * v114;
      v552.i64[0] = *(v117 + 8);
      v118 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1880), &v552);
      if (v118 != -1)
      {
        v119 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 1824, *(*(v7 + 1888) + 16 * v118 + 8));
        v120 = *(v117 + 48);
        if (v120)
        {
          v121 = 0;
          v122 = (*(v117 + 32) + 8);
          while (1)
          {
            v123 = *v122;
            v122 += 6;
            if (v123 < 0)
            {
              break;
            }

            if (v120 == ++v121)
            {
              LODWORD(v121) = *(v117 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v121) = 0;
        }

LABEL_220:
        while (v121 != v120)
        {
          v124 = objc_loadWeakRetained((*(v117 + 32) + 24 * v121 + 16));
          if (v124)
          {
            v125 = v124;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::checkRenderOptionChanges(v119, v124 - 1, v469, v518);
          }

          v126 = *(v117 + 48);
          if (v126 <= v121 + 1)
          {
            v126 = v121 + 1;
          }

          while (v126 - 1 != v121)
          {
            LODWORD(v121) = v121 + 1;
            if ((*(*(v117 + 32) + 24 * v121 + 8) & 0x80000000) != 0)
            {
              goto LABEL_220;
            }
          }

          LODWORD(v121) = v126;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v117 + 16);
      if (HIDWORD(v549))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v548);
      }

      else
      {
        *&v518[16] = 0;
        ++*&v518[24];
      }

      v127 = *(v7 + 1664);
      if (v127 <= v114 + 1)
      {
        v127 = v114 + 1;
      }

      while (v127 - 1 != v114)
      {
        LODWORD(v114) = v114 + 1;
        if ((*(*(v7 + 1648) + 72 * v114) & 0x80000000) != 0)
        {
          goto LABEL_230;
        }
      }

      LODWORD(v114) = v127;
LABEL_230:
      ;
    }

    while (v114 != v113);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v518);
  *v518 = 0;
  *&v518[8] = 0;
  *&v518[16] = 0;
  *&v518[24] = 0;
  v548 = 0u;
  v549 = 0u;
  v550 = 0;
  v551 = 0x7FFFFFFFLL;
  v128 = *(v7 + 2544);
  if (v128)
  {
    v129 = 0;
    v130 = *(v7 + 2528);
    while (1)
    {
      v131 = *v130;
      v130 += 18;
      if (v131 < 0)
      {
        break;
      }

      if (v128 == ++v129)
      {
        LODWORD(v129) = *(v7 + 2544);
        break;
      }
    }
  }

  else
  {
    LODWORD(v129) = 0;
  }

  if (v129 != v128)
  {
    LODWORD(v1) = 72;
    do
    {
      v132 = *(v7 + 2528) + 72 * v129;
      v552.i64[0] = *(v132 + 8);
      v133 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 2760), &v552);
      if (v133 != -1)
      {
        v134 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 2704, *(*(v7 + 2768) + 16 * v133 + 8));
        v135 = *(v132 + 48);
        if (v135)
        {
          v136 = 0;
          v137 = (*(v132 + 32) + 8);
          while (1)
          {
            v138 = *v137;
            v137 += 6;
            if (v138 < 0)
            {
              break;
            }

            if (v135 == ++v136)
            {
              LODWORD(v136) = *(v132 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v136) = 0;
        }

LABEL_254:
        while (v136 != v135)
        {
          v139 = objc_loadWeakRetained((*(v132 + 32) + 24 * v136 + 16));
          if (v139)
          {
            v140 = v139;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::checkRenderOptionChanges(v134, v139 - 1, v469, v518);
          }

          v141 = *(v132 + 48);
          if (v141 <= v136 + 1)
          {
            v141 = v136 + 1;
          }

          while (v141 - 1 != v136)
          {
            LODWORD(v136) = v136 + 1;
            if ((*(*(v132 + 32) + 24 * v136 + 8) & 0x80000000) != 0)
            {
              goto LABEL_254;
            }
          }

          LODWORD(v136) = v141;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v132 + 16);
      if (HIDWORD(v549))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v548);
      }

      else
      {
        *&v518[16] = 0;
        ++*&v518[24];
      }

      v142 = *(v7 + 2544);
      if (v142 <= v129 + 1)
      {
        v142 = v129 + 1;
      }

      while (v142 - 1 != v129)
      {
        LODWORD(v129) = v129 + 1;
        if ((*(*(v7 + 2528) + 72 * v129) & 0x80000000) != 0)
        {
          goto LABEL_264;
        }
      }

      LODWORD(v129) = v142;
LABEL_264:
      ;
    }

    while (v129 != v128);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v518);
  *v518 = 0;
  *&v518[8] = 0;
  *&v518[16] = 0;
  *&v518[24] = 0;
  v548 = 0u;
  v549 = 0u;
  v550 = 0;
  v551 = 0x7FFFFFFFLL;
  v143 = *(v7 + 2984);
  if (v143)
  {
    v144 = 0;
    v145 = *(v7 + 2968);
    while (1)
    {
      v146 = *v145;
      v145 += 18;
      if (v146 < 0)
      {
        break;
      }

      if (v143 == ++v144)
      {
        LODWORD(v144) = *(v7 + 2984);
        break;
      }
    }
  }

  else
  {
    LODWORD(v144) = 0;
  }

  if (v144 != v143)
  {
    LODWORD(v1) = 72;
    do
    {
      v147 = *(v7 + 2968) + 72 * v144;
      v552.i64[0] = *(v147 + 8);
      v148 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 3200), &v552);
      if (v148 != -1)
      {
        v149 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 3144, *(*(v7 + 3208) + 16 * v148 + 8));
        v150 = *(v147 + 48);
        if (v150)
        {
          v151 = 0;
          v152 = (*(v147 + 32) + 8);
          while (1)
          {
            v153 = *v152;
            v152 += 6;
            if (v153 < 0)
            {
              break;
            }

            if (v150 == ++v151)
            {
              LODWORD(v151) = *(v147 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v151) = 0;
        }

LABEL_288:
        while (v151 != v150)
        {
          v154 = objc_loadWeakRetained((*(v147 + 32) + 24 * v151 + 16));
          if (v154)
          {
            v155 = v154;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::checkRenderOptionChanges(v149, v154 - 1, v469, v518);
          }

          v156 = *(v147 + 48);
          if (v156 <= v151 + 1)
          {
            v156 = v151 + 1;
          }

          while (v156 - 1 != v151)
          {
            LODWORD(v151) = v151 + 1;
            if ((*(*(v147 + 32) + 24 * v151 + 8) & 0x80000000) != 0)
            {
              goto LABEL_288;
            }
          }

          LODWORD(v151) = v156;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v147 + 16);
      if (HIDWORD(v549))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v548);
      }

      else
      {
        *&v518[16] = 0;
        ++*&v518[24];
      }

      v157 = *(v7 + 2984);
      if (v157 <= v144 + 1)
      {
        v157 = v144 + 1;
      }

      while (v157 - 1 != v144)
      {
        LODWORD(v144) = v144 + 1;
        if ((*(*(v7 + 2968) + 72 * v144) & 0x80000000) != 0)
        {
          goto LABEL_298;
        }
      }

      LODWORD(v144) = v157;
LABEL_298:
      ;
    }

    while (v144 != v143);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v518);
  *v518 = v438;
  v158 = *(*(v7 + 568) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 560), v518) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 672, v158);
  v159 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 504, v158);
  v160 = *(*v159 + 224);
  v161 = v159[3];
  v162 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v159[2] + 8, v161);
  if (*(v162 + 40))
  {
    v163 = (*(*v160 + 24))(v160, v467, v159, v161, v162, v461);
  }

  else
  {
    v163 = 0;
  }

  v164 = v159[5];
  v165 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v159[2] + 8, v164);
  if (*(v165 + 40))
  {
    v163 |= (*(*v160 + 32))(v160, v467, v159, v164, v165, v461);
  }

  v166 = v159[6];
  v167 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v159[2] + 8, v166);
  if (*(v167 + 40))
  {
    if (((v163 | (*(*v160 + 40))(v160, v467, v159, v166, v167, v461)) & 1) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_306;
  }

  if (v163)
  {
LABEL_306:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 672, v158);
  }

LABEL_307:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 504);
  *v518 = v438;
  v168 = *(*(v7 + 1008) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1000), v518) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 1112, v168);
  v169 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 944, v168);
  v170 = *(*v169 + 224);
  v171 = v169[3];
  v172 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v169[2] + 8, v171);
  if (*(v172 + 40))
  {
    v173 = (*(*v170 + 24))(v170, v467, v169, v171, v172, v461);
  }

  else
  {
    v173 = 0;
  }

  v174 = v169[5];
  v175 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v169[2] + 8, v174);
  if (*(v175 + 40))
  {
    v173 |= (*(*v170 + 32))(v170, v467, v169, v174, v175, v461);
  }

  v176 = v169[6];
  v177 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v169[2] + 8, v176);
  if (*(v177 + 40))
  {
    if (((v173 | (*(*v170 + 40))(v170, v467, v169, v176, v177, v461)) & 1) == 0)
    {
      goto LABEL_317;
    }

    goto LABEL_316;
  }

  if (v173)
  {
LABEL_316:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 1112, v168);
  }

LABEL_317:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 944);
  *v518 = v438;
  v178 = *(*(v7 + 1448) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1440), v518) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 1552, v178);
  v179 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 1384, v178);
  v180 = *(*v179 + 224);
  v181 = v179[3];
  v182 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v179[2] + 8, v181);
  if (*(v182 + 40))
  {
    v183 = (*(*v180 + 24))(v180, v467, v179, v181, v182, v461);
  }

  else
  {
    v183 = 0;
  }

  v184 = v179[5];
  v185 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v179[2] + 8, v184);
  if (*(v185 + 40))
  {
    v183 |= (*(*v180 + 32))(v180, v467, v179, v184, v185, v461);
  }

  v186 = v179[6];
  v187 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v179[2] + 8, v186);
  if (*(v187 + 40))
  {
    if (((v183 | (*(*v180 + 40))(v180, v467, v179, v186, v187, v461)) & 1) == 0)
    {
      goto LABEL_327;
    }

    goto LABEL_326;
  }

  if (v183)
  {
LABEL_326:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 1552, v178);
  }

LABEL_327:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 1384);
  *v518 = v438;
  v188 = *(*(v7 + 1888) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1880), v518) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 1992, v188);
  v189 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 1824, v188);
  v190 = *(*v189 + 224);
  v191 = v189[3];
  v192 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v189[2] + 8, v191);
  if (*(v192 + 40))
  {
    v193 = (*(*v190 + 24))(v190, v467, v189, v191, v192, v461);
  }

  else
  {
    v193 = 0;
  }

  v194 = v189[5];
  v195 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v189[2] + 8, v194);
  if (*(v195 + 40))
  {
    v193 |= (*(*v190 + 32))(v190, v467, v189, v194, v195, v461);
  }

  v196 = v189[6];
  v197 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v189[2] + 8, v196);
  if (*(v197 + 40))
  {
    if (((v193 | (*(*v190 + 40))(v190, v467, v189, v196, v197, v461)) & 1) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_336;
  }

  if (v193)
  {
LABEL_336:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 1992, v188);
  }

LABEL_337:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 1824);
  *v518 = v438;
  v198 = *(*(v7 + 2768) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 2760), v518) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 2872, v198);
  v199 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 2704, v198);
  v200 = *(*v199 + 224);
  v201 = v199[3];
  v202 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v199[2] + 8, v201);
  if (*(v202 + 40))
  {
    v203 = (*(*v200 + 24))(v200, v467, v199, v201, v202, v461);
  }

  else
  {
    v203 = 0;
  }

  v204 = v199[5];
  v205 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v199[2] + 8, v204);
  if (*(v205 + 40))
  {
    v203 |= (*(*v200 + 32))(v200, v467, v199, v204, v205, v461);
  }

  v206 = v199[6];
  v207 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v199[2] + 8, v206);
  if (*(v207 + 40))
  {
    if (((v203 | (*(*v200 + 40))(v200, v467, v199, v206, v207, v461)) & 1) == 0)
    {
      goto LABEL_347;
    }

    goto LABEL_346;
  }

  if (v203)
  {
LABEL_346:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 2872, v198);
  }

LABEL_347:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 2704);
  *v518 = v438;
  v208 = *(*(v7 + 3208) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 3200), v518) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 3312, v208);
  v209 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 3144, v208);
  v210 = *(*v209 + 224);
  v211 = v209[3];
  v212 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v209[2] + 8, v211);
  if (*(v212 + 40))
  {
    v213 = (*(*v210 + 24))(v210, v467, v209, v211, v212, v461);
  }

  else
  {
    v213 = 0;
  }

  v214 = v209[5];
  v215 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v209[2] + 8, v214);
  if (*(v215 + 40))
  {
    v213 |= (*(*v210 + 32))(v210, v467, v209, v214, v215, v461);
  }

  v216 = v209[6];
  v217 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v209[2] + 8, v216);
  if (!*(v217 + 40))
  {
    if (!v213)
    {
      goto LABEL_357;
    }

    goto LABEL_356;
  }

  if ((v213 | (*(*v210 + 40))(v210, v467, v209, v216, v217, v461)))
  {
LABEL_356:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 3312, v208);
  }

LABEL_357:
  v67 = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 3144);
LABEL_358:
  v218 = HIDWORD(v515);
  v430 = v458 + 1;
  if (HIDWORD(v515))
  {
    v433 = v516;
    v1 = 0;
    if (v516)
    {
      v219 = v515;
      while ((*v219 & 0x80000000) == 0)
      {
        v219 += 80;
        if (v516 == ++v1)
        {
          LODWORD(v1) = v516;
          break;
        }
      }
    }

    else
    {
      v433 = 0;
    }

    v220 = &v514;
    v431 = &v514;
  }

  else
  {
    v220 = &v475;
    v431 = (&v475 + 312 * v474.i64[0]);
    v433 = v474.i32[0];
  }

  v221 = 0;
  v222 = 0;
  v223 = 0;
  v454 = 0;
  v457 = 0;
  v459 = 0;
  v435 = HIDWORD(v515);
LABEL_368:
  while (1)
  {
    v452 = v222;
    v451 = v223;
    if (!v218)
    {
      break;
    }

    if (v433 == v1)
    {
      goto LABEL_401;
    }

    v224 = v221;
    v225 = v220[1].i64[0] + 320 * v1;
    v226 = (v225 + 8);
    v227 = (v225 + 32);
LABEL_373:
    re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v468, v438, v226->i64[1], v437);
    v439 = *(v227 + 3);
    v442 = *(v227 + 8);
    v444 = *(v227 + 13);
    v446 = *(v227 + 18);
    v448 = *(v227 + 23);
    v450 = *(v227 + 28);
    v470[0] = v468[0].i64[0] >> 1;
    v228 = re::RenderFrameData::stream((v437 + 33), v470);
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v228, v471, v518);
    if (*&v518[12] == 0x7FFFFFFF)
    {
      v229 = *(*(v228 + 48) + 8);
      v230 = (*(*v229 + 32))(v229, 56, 8);
      *v230 = 0;
      *(v230 + 8) = 0;
      *(v230 + 16) = 1;
      *(v230 + 32) = 0;
      *(v230 + 40) = 0;
      *(v230 + 24) = 0;
      *(v230 + 48) = 0;
      v231 = re::BucketArray<re::LightInfoArrays,4ul>::init(v230, v229, 1uLL);
      v232 = re::globalAllocators(v231)[2];
      v552.i64[0] = &unk_1F5CEF150;
      v552.i64[1] = v229;
      v553.i64[1] = v232;
      v554.i64[0] = &v552;
      *&v518[8] = v230;
      *v518 = std::__any_imp::_SmallHandler<re::BucketArray<re::LightInfoArrays,4ul> *>::__handle[abi:nn200100];
      *(&v519 + 1) = v232;
      v520 = 0;
      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v518[32], &v552);
      v233 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v228, v471, v518);
      if (v520)
      {
        *v472 = v518;
        (*(*v520 + 16))(v520, v472);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v518[32]);
      if (*v518)
      {
        (*v518)(0, v518, 0, 0, 0);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v552);
    }

    else
    {
      v233 = (*(v228 + 16) + 96 * *&v518[12] + 16);
    }

    v235 = *v227;
    v236 = *(v227 + 2);
    *&v518[8] = *(v227 + 1);
    *(v227 + 1) = 0;
    *&v518[16] = v236;
    *(v227 + 2) = 0;
    *&v518[24] = *(v227 + 3);
    *(v227 + 3) = 0;
    v237 = *(v227 + 6);
    *&v518[40] = *(v227 + 5);
    *(v227 + 5) = 0;
    ++*(v227 + 8);
    *&v519 = v237;
    *(v227 + 6) = 0;
    v238 = *(v227 + 8);
    *(&v519 + 1) = *(v227 + 7);
    *(v227 + 7) = 0;
    v520 = v238;
    *(v227 + 8) = 0;
    v239 = *(v227 + 11);
    v522 = *(v227 + 10);
    *(v227 + 10) = 0;
    ++*(v227 + 18);
    v521 = 1;
    v523 = v239;
    *(v227 + 11) = 0;
    v240 = *(v227 + 13);
    v524 = *(v227 + 12);
    *(v227 + 12) = 0;
    v525 = v240;
    *(v227 + 13) = 0;
    v241 = *(v227 + 16);
    v527 = *(v227 + 15);
    *(v227 + 15) = 0;
    ++*(v227 + 28);
    v526 = 1;
    v528 = v241;
    *(v227 + 16) = 0;
    v242 = *(v227 + 18);
    v529 = *(v227 + 17);
    *(v227 + 17) = 0;
    v530 = v242;
    *(v227 + 18) = 0;
    v243 = *(v227 + 21);
    v532 = *(v227 + 20);
    *(v227 + 20) = 0;
    ++*(v227 + 38);
    v531 = 1;
    v533 = v243;
    *(v227 + 21) = 0;
    v244 = *(v227 + 23);
    v534 = *(v227 + 22);
    *(v227 + 22) = 0;
    v535 = v244;
    *(v227 + 23) = 0;
    v245 = *(v227 + 26);
    v537 = *(v227 + 25);
    *(v227 + 25) = 0;
    ++*(v227 + 48);
    v536 = 1;
    v538 = v245;
    *(v227 + 26) = 0;
    v246 = *(v227 + 28);
    v539 = *(v227 + 27);
    *(v227 + 27) = 0;
    v540 = v246;
    *(v227 + 28) = 0;
    v247 = *(v227 + 31);
    v542 = *(v227 + 30);
    *(v227 + 30) = 0;
    ++*(v227 + 58);
    v541 = 1;
    v543 = v247;
    *(v227 + 31) = 0;
    v248 = *(v227 + 33);
    v544 = *(v227 + 32);
    *(v227 + 32) = 0;
    v545 = v248;
    *(v227 + 33) = 0;
    v547 = *(v227 + 35);
    *(v227 + 35) = 0;
    ++*(v227 + 68);
    v546 = 1;
    v249 = *(v234 + 40);
    *&v518[32] = 1;
    v250 = *(v234 + 8);
    *v518 = v235;
    if (v249 + 1 > 4 * v250)
    {
      re::BucketArray<re::LightInfoArrays,4ul>::setBucketsCapacity(v234, (v249 + 4) >> 2);
      v250 = *(v234 + 8);
    }

    v251 = v249 >> 2;
    if (v250 <= v249 >> 2)
    {
      v471[0] = 0;
      v555 = 0u;
      v556 = 0u;
      v553 = 0u;
      v554 = 0u;
      v552 = 0u;
      v407 = MEMORY[0x1E69E9C10];
      v408 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v472 = 136315906;
      *&v472[4] = "operator[]";
      *&v472[12] = 1024;
      if (v408)
      {
        v409 = 3;
      }

      else
      {
        v409 = 2;
      }

      *&v472[14] = 858;
      *&v472[18] = 2048;
      *&v472[20] = v251;
      *&v472[28] = 2048;
      *&v472[30] = v250;
      _os_log_send_and_compose_impl(v409, v471, &v552, 80, &dword_1E1C61000, v407, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v472, 38, v427, v428);
      _os_crash_msg();
      __break(1u);
LABEL_548:
      re::internal::assertLog(4, v255, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
      goto LABEL_549;
    }

    if (*(v234 + 16))
    {
      v252 = v234 + 24;
    }

    else
    {
      v252 = *(v234 + 32);
    }

    v250 = v224;
    v253 = *(v252 + 8 * v251);
    ++*(v234 + 40);
    ++*(v234 + 48);
    v254 = v253 + 288 * (v249 & 3);
    *v254 = *v518;
    *(v254 + 40) = 0;
    *(v254 + 16) = 0;
    *(v254 + 24) = 0;
    *(v254 + 8) = 0;
    *(v254 + 32) = 0;
    *(v254 + 8) = *&v518[8];
    *&v518[8] = 0;
    *(v254 + 16) = *&v518[16];
    *&v518[16] = 0;
    *(v254 + 24) = *&v518[24];
    *&v518[24] = 0;
    *(v254 + 40) = *&v518[40];
    *&v518[40] = 0;
    ++*&v518[32];
    ++*(v254 + 32);
    *(v254 + 80) = 0;
    *(v254 + 56) = 0;
    *(v254 + 64) = 0;
    *(v254 + 48) = 0;
    *(v254 + 72) = 0;
    *(v254 + 48) = v519;
    *&v519 = 0;
    *(v254 + 56) = *(&v519 + 1);
    *(&v519 + 1) = 0;
    *(v254 + 64) = v520;
    v520 = 0;
    *(v254 + 80) = v522;
    v522 = 0;
    ++v521;
    ++*(v254 + 72);
    *(v254 + 120) = 0;
    *(v254 + 96) = 0;
    *(v254 + 104) = 0;
    *(v254 + 88) = 0;
    *(v254 + 112) = 0;
    *(v254 + 88) = v523;
    v523 = 0;
    *(v254 + 96) = v524;
    v524 = 0;
    *(v254 + 104) = v525;
    v525 = 0;
    *(v254 + 120) = v527;
    v527 = 0;
    ++v526;
    ++*(v254 + 112);
    *(v254 + 160) = 0;
    *(v254 + 136) = 0;
    *(v254 + 144) = 0;
    *(v254 + 128) = 0;
    *(v254 + 152) = 0;
    *(v254 + 128) = v528;
    v528 = 0;
    *(v254 + 136) = v529;
    v529 = 0;
    *(v254 + 144) = v530;
    v530 = 0;
    *(v254 + 160) = v532;
    v532 = 0;
    ++v531;
    ++*(v254 + 152);
    *(v254 + 200) = 0;
    *(v254 + 176) = 0;
    *(v254 + 184) = 0;
    *(v254 + 168) = 0;
    *(v254 + 192) = 0;
    *(v254 + 168) = v533;
    v533 = 0;
    *(v254 + 176) = v534;
    v534 = 0;
    *(v254 + 184) = v535;
    v535 = 0;
    *(v254 + 200) = v537;
    v537 = 0;
    ++v536;
    ++*(v254 + 192);
    *(v254 + 240) = 0;
    *(v254 + 216) = 0;
    *(v254 + 224) = 0;
    *(v254 + 208) = 0;
    *(v254 + 232) = 0;
    *(v254 + 208) = v538;
    v538 = 0;
    *(v254 + 216) = v539;
    v539 = 0;
    *(v254 + 224) = v540;
    v540 = 0;
    *(v254 + 240) = v542;
    v542 = 0;
    v541 = 2;
    ++*(v254 + 232);
    *(v254 + 280) = 0;
    *(v254 + 256) = 0;
    *(v254 + 264) = 0;
    *(v254 + 248) = 0;
    *(v254 + 272) = 0;
    *(v254 + 248) = v543;
    v543 = 0;
    *(v254 + 256) = v544;
    v544 = 0;
    *(v254 + 264) = v545;
    v545 = 0;
    *(v254 + 280) = v547;
    v547 = 0;
    v546 = 2;
    ++*(v254 + 272);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v543);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v538);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v533);
    re::DynamicArray<re::SpotLightInfo>::deinit(&v528);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v523);
    re::DynamicArray<re::DirectionalLightInfo>::deinit(&v519);
    if (*&v518[8])
    {
      v255 = *&v518[40];
      if (*&v518[40])
      {
        (*(**&v518[8] + 40))();
      }
    }

    v256 = *(v234 + 40);
    if (!v256)
    {
      goto LABEL_548;
    }

    v67 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](v234, v256 - 1);
    if (v468[0].i8[0])
    {
      if (v468[0].i8[0])
      {
      }
    }

    v454 = (v454 + v439);
    v459 += v442;
    v457 += v444;
    v223 = v446 + v451;
    v222 = v448 + v452;
    v221 = v450 + v250;
    v218 = v435;
    if (v435)
    {
      v257 = v1 + 1;
      if (v220[2].i32[0] <= (v1 + 1))
      {
        LODWORD(v1) = v1 + 1;
      }

      else
      {
        LODWORD(v1) = v220[2].i32[0];
      }

      while (v1 != v257)
      {
        v258 = v257;
        v259 = *(v220[1].i64[0] + 320 * v257++);
        if (v259 < 0)
        {
          LODWORD(v1) = v258;
          goto LABEL_368;
        }
      }
    }

    else
    {
      v220 = (v220 + 312);
    }
  }

  if (v220 != v431)
  {
    v224 = v221;
    v227 = &v220[1].i8[8];
    v226 = v220;
    goto LABEL_373;
  }

LABEL_401:
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v67);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v261 = *(isStatisticCollectionEnabled + 152);
    if (v261)
    {
      v262 = v261[784].i64[0];
      if (v262 >= v454)
      {
        v262 = v454;
      }

      v261[784].i64[0] = v262;
      v263 = v261[784].i64[1];
      if (v263 <= v454)
      {
        v263 = v454;
      }

      v261[784].i64[1] = v263;
      v264 = vdupq_n_s64(1uLL);
      v264.i64[0] = v454;
      v261[785] = vaddq_s64(v261[785], v264);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v265 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v265)
  {
    v265 = re::profilerThreadContext(v265);
    v266 = *(v265 + 152);
    if (v266)
    {
      v267 = v266[792].u64[0];
      if (v267 >= v459)
      {
        v267 = v459;
      }

      v266[792].i64[0] = v267;
      v268 = v266[792].u64[1];
      if (v268 <= v459)
      {
        v268 = v459;
      }

      v266[792].i64[1] = v268;
      v269 = vdupq_n_s64(1uLL);
      v269.i64[0] = v459;
      v266[793] = vaddq_s64(v266[793], v269);
      *(v265 + 184) = 0;
    }
  }

  v270 = re::ProfilerConfig::isStatisticCollectionEnabled(v265);
  if (v270)
  {
    v270 = re::profilerThreadContext(v270);
    v271 = *(v270 + 152);
    if (v271)
    {
      v272 = v271[832].u64[0];
      if (v272 >= v457)
      {
        v272 = v457;
      }

      v271[832].i64[0] = v272;
      v273 = v271[832].u64[1];
      if (v273 <= v457)
      {
        v273 = v457;
      }

      v271[832].i64[1] = v273;
      v274 = vdupq_n_s64(1uLL);
      v274.i64[0] = v457;
      v271[833] = vaddq_s64(v271[833], v274);
      *(v270 + 184) = 0;
    }
  }

  v275 = re::ProfilerConfig::isStatisticCollectionEnabled(v270);
  if (v275)
  {
    v275 = re::profilerThreadContext(v275);
    v276 = *(v275 + 152);
    if (v276)
    {
      v277 = v276[816].u64[0];
      if (v277 >= v223)
      {
        v277 = v223;
      }

      v276[816].i64[0] = v277;
      v278 = v276[816].u64[1];
      if (v278 <= v223)
      {
        v278 = v223;
      }

      v276[816].i64[1] = v278;
      v279 = vdupq_n_s64(1uLL);
      v279.i64[0] = v223;
      v276[817] = vaddq_s64(v276[817], v279);
      *(v275 + 184) = 0;
    }
  }

  v280 = v223 + v457;
  v281 = re::ProfilerConfig::isStatisticCollectionEnabled(v275);
  if (v281)
  {
    v281 = re::profilerThreadContext(v281);
    v282 = *(v281 + 152);
    if (v282)
    {
      v283 = v282[800].u64[0];
      if (v283 >= v222)
      {
        v283 = v222;
      }

      v282[800].i64[0] = v283;
      v284 = v282[800].u64[1];
      if (v284 <= v222)
      {
        v284 = v222;
      }

      v282[800].i64[1] = v284;
      v285 = vdupq_n_s64(1uLL);
      v285.i64[0] = v222;
      v282[801] = vaddq_s64(v282[801], v285);
      *(v281 + 184) = 0;
    }
  }

  v286 = re::ProfilerConfig::isStatisticCollectionEnabled(v281);
  if (v286)
  {
    v286 = re::profilerThreadContext(v286);
    v287 = *(v286 + 152);
    if (v287)
    {
      v288 = v287[848].u64[0];
      if (v288 >= v221)
      {
        v288 = v221;
      }

      v287[848].i64[0] = v288;
      v289 = v287[848].u64[1];
      if (v289 <= v221)
      {
        v289 = v221;
      }

      v287[848].i64[1] = v289;
      v290 = vdupq_n_s64(1uLL);
      v290.i64[0] = v221;
      v287[849] = vaddq_s64(v287[849], v290);
      *(v286 + 184) = 0;
    }
  }

  v291 = v454 + v459 + v222 + v221 + v280;
  v292 = re::ProfilerConfig::isStatisticCollectionEnabled(v286);
  if (v292)
  {
    v293 = re::profilerThreadContext(v292);
    v294 = *(v293 + 152);
    if (v294)
    {
      v295 = v294[768].i64[0];
      if (v295 >= v291)
      {
        v295 = v454 + v459 + v222 + v221 + v280;
      }

      v294[768].i64[0] = v295;
      v296 = v294[768].i64[1];
      if (v296 <= v291)
      {
        v296 = v454 + v459 + v222 + v221 + v280;
      }

      v294[768].i64[1] = v296;
      v297 = vdupq_n_s64(1uLL);
      v297.i64[0] = v454 + v459 + v222 + v221 + v280;
      v294[769] = vaddq_s64(v294[769], v297);
      *(v293 + 184) = 0;
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::DynamicInlineArray<re::KeyValuePair<re::LightGroupInWorldRoot,re::LightInfoArrays>,16ul>::clear(&v474);
  re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::deinit(&v514);
  __src.i64[0] = 0;
  __src.i32[2] = 0;
  re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::deinit(&v514);
  v298 = re::DynamicInlineArray<re::KeyValuePair<re::LightGroupInWorldRoot,re::LightInfoArrays>,16ul>::clear(&v474);
  memset(v472, 0, 36);
  *&v472[36] = 0x7FFFFFFFLL;
  v299 = *(v7 + 232);
  v455 = *(v7 + 240);
  v300 = re::ecs2::SceneComponentTable::get((v438 + 200), re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v300)
  {
    v301 = *(v300 + 400);
    v302 = *(v300 + 384);
    v432 = v299;
    v453 = re::RenderManager::perFrameAllocator(v299);
    if (v302)
    {
      v460 = &v301[v302];
      v250 = 1;
      v303.i64[0] = 0x7F0000007FLL;
      v303.i64[1] = 0x7F0000007FLL;
      v429 = vnegq_f32(v303);
      __asm { FMOV            V10.2S, #1.0 }

      do
      {
        v308 = *v301;
        v309 = (*v301)[1].i64[0];
        if (v309[32])
        {
          v310 = re::ecs2::EntityComponentCollection::get((v309 + 6), re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v311 = re::ecs2::EntityComponentCollection::get((v309 + 6), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v312 = re::ecs2::EntityComponentCollection::get((v309 + 6), re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v313 = re::ecs2::EntityComponentCollection::get((v309 + 6), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v314 = re::ecs2::EntityComponentCollection::get((v309 + 6), re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v315 = xmmword_1E3047670;
          if (v310 | v311 || v313 != 0)
          {
            v317 = v314;
            v318 = v308[2].i64[1];
            if (v318 || ((*(*v455 + 8))(&__src, xmmword_1E3047670), v319 = v308[2], v308[2] = __src, __src = v319, v320 = v308[3].i64[0], v308[3].i64[0] = v474.i64[0], v474.i64[0] = v320, re::AssetHandle::~AssetHandle(&__src), v318 = v308[2].i64[1], v315 = xmmword_1E3047670, v318))
            {
              v321 = atomic_load((v318 + 896));
              if (v321 == 2)
              {
                *v461 = v315;
                *&v461[16] = xmmword_1E3047680;
                *v462 = xmmword_1E30476A0;
                if (v310)
                {
                  v322 = *(v310 + 52) * 0.5;
                  v440 = v322 / tanf(*(v310 + 32) * 0.5);
                  re::TransformService::worldMatrix(*(v7 + 288), v309, 0, &v552);
                  v323 = 0;
                  *&v324 = 0;
                  *(&v324 + 1) = __PAIR64__(1.0, LODWORD(v440));
                  v325 = v552;
                  v326 = v553;
                  v327 = v554;
                  v328 = v555;
                  *v518 = xmmword_1E3047670;
                  *&v518[16] = xmmword_1E3047680;
                  *&v518[32] = xmmword_1E30476A0;
                  v519 = v324;
                  do
                  {
                    *(&__src + v323) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, COERCE_FLOAT(*&v518[v323])), v326, *&v518[v323], 1), v327, *&v518[v323], 2), v328, *&v518[v323], 3);
                    v323 += 16;
                  }

                  while (v323 != 64);
                  v445 = v474;
                  v447 = __src;
                  v443 = v475;
                  v449 = v476;
                  v329 = v440 + 0.00001;
                  v330 = *(v310 + 48);
                  v331 = *(v310 + 52);
                  v332 = v453;
LABEL_480:
                  *&v461[4] = 0;
                  *&v461[12] = 0;
                  *&v461[24] = 0;
                  *v462 = 0;
                  *&v462[20] = 0;
                  *&v462[12] = 0;
                  *v461 = v330;
                  *&v461[20] = v331;
                  *&v462[8] = v329;
                  *&v462[28] = 1065353216;
                  re::AssetHandle::AssetHandle(v471, &v308[2]);
                  v470[0] = v471;
                  v470[1] = 1;
                  v350 = (*(*v332 + 32))(v332, 24, 8);
                  v350[1] = 0;
                  v350[2] = 0;
                  *v350 = 0;
                  v351 = (*(*v332 + 32))(v332, 24, 8);
                  v351[1] = 0;
                  v351[2] = 0;
                  *v351 = 0;
                  v352 = (*(*v332 + 32))(v332, 24, 8);
                  v352[1] = 0;
                  v352[2] = 0;
                  *v352 = 0;
                  v353 = v309[26];
                  if (v353)
                  {
                    v354 = *(v353 + 104);
                    v355 = *(v353 + 88);
                    __src.i64[0] = v354;
                    __src.i64[1] = v355;
                    re::MaterialAssetHelper::extractMaterialDataFromMaterialParameterBlocks(v332, v470, &__src, v350, v351);
                  }

                  v434 = v352;
                  v436 = v351;
                  v441 = v350;
                  re::MaterialAssetHelper::extractMaterialDataFromMaterialAssetHandles(v332, v470, 0, v350, v352);
                  re::MeshAssetLoader::sharedCube(v455, 1, v469);
                  v356 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v469);
                  re::MeshAsset::boundingBoxForModel(&__src, v356, 0);
                  re::AABB::transform(&__src, v461, v468);
                  v357 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v469);
                  v358 = v332;
                  v359 = re::MeshAsset::partCountForModel(v357, 0);
                  v360 = (*(*v358 + 32))(v358, 24, 8);
                  v360->i64[1] = 0;
                  v360[1].i64[0] = 0;
                  v360->i64[0] = 0;
                  re::FixedArray<re::AABB>::init<>(v360, v358, v359);
                  if (v359)
                  {
                    v361 = 0;
                    v234 = 0;
                    v362 = 416;
                    while (re::MeshAsset::partCountForModel(v356, 0) > v234)
                    {
                      if (*(v356 + 1264) == 1)
                      {
                        v364 = *(v356 + 632);
                        if (!v364)
                        {
                          goto LABEL_558;
                        }

                        if (!*(v356 + 608))
                        {
                          goto LABEL_563;
                        }

                        v365 = re::DataArray<re::MeshModel>::get(v364 + 8, **(v356 + 624));
                        v250 = *(v365 + 56);
                        if (v250 <= v234)
                        {
                          goto LABEL_567;
                        }

                        v366 = (*(v365 + 64) + v362);
                      }

                      else
                      {
                        if (!*(v356 + 32))
                        {
                          goto LABEL_554;
                        }

                        v367 = *(v356 + 48);
                        v250 = *(v367 + 208);
                        if (v250 <= v234)
                        {
                          goto LABEL_559;
                        }

                        v366 = (*(v367 + 224) + (v234 << 8) + 96);
                      }

                      v250 = v360->u64[1];
                      if (v250 <= v234)
                      {
                        goto LABEL_550;
                      }

                      v368 = (v360[1].i64[0] + v361);
                      v369 = v366[1];
                      *v368 = *v366;
                      v368[1] = v369;
                      ++v234;
                      v362 += 544;
                      v361 += 32;
                      if (v359 == v234)
                      {
                        goto LABEL_495;
                      }
                    }

LABEL_549:
                    re::internal::assertLog(4, v363, "assertion failure: '%s' (%s:line %i) ", "partIndex < partCountForModel(modelIndex)", "boundingBoxForPartOnModel", 248);
                    _os_crash("assertion failure: (partIndex < partCountForModel(modelIndex)) ");
                    __break(1u);
LABEL_550:
                    v552.i64[0] = 0;
                    v476 = 0u;
                    v477 = 0u;
                    v474 = 0u;
                    v475 = 0u;
                    __src = 0u;
                    v410 = MEMORY[0x1E69E9C10];
                    v411 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v518 = 136315906;
                    *&v518[4] = "operator[]";
                    *&v518[12] = 1024;
                    if (v411)
                    {
                      v412 = 3;
                    }

                    else
                    {
                      v412 = 2;
                    }

                    *&v518[14] = 468;
                    *&v518[18] = 2048;
                    *&v518[20] = v234;
                    *&v518[28] = 2048;
                    *&v518[30] = v250;
                    _os_log_send_and_compose_impl(v412, &v552, &__src, 80, &dword_1E1C61000, v410, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v518, 38, v427, v428);
                    _os_crash_msg();
                    __break(1u);
LABEL_554:
                    v552.i64[0] = 0;
                    v476 = 0u;
                    v477 = 0u;
                    v474 = 0u;
                    v475 = 0u;
                    __src = 0u;
                    v413 = MEMORY[0x1E69E9C10];
                    v414 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v518 = 136315906;
                    *&v518[4] = "operator[]";
                    *&v518[12] = 1024;
                    if (v414)
                    {
                      v415 = 3;
                    }

                    else
                    {
                      v415 = 2;
                    }

                    *&v518[14] = 797;
                    *&v518[18] = 2048;
                    *&v518[20] = 0;
                    *&v518[28] = 2048;
                    *&v518[30] = 0;
                    _os_log_send_and_compose_impl(v415, &v552, &__src, 80, &dword_1E1C61000, v413, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v518, 38, v427, v428);
                    _os_crash_msg();
                    __break(1u);
LABEL_558:
                    re::internal::assertLog(4, v363, "assertion failure: '%s' (%s:line %i) ", "meshManager != nullptr", "boundingBoxForPartOnModel", 251);
                    _os_crash("assertion failure: (meshManager != nullptr) ");
                    __break(1u);
LABEL_559:
                    v552.i64[0] = 0;
                    v476 = 0u;
                    v477 = 0u;
                    v474 = 0u;
                    v475 = 0u;
                    __src = 0u;
                    v416 = MEMORY[0x1E69E9C10];
                    v417 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v518 = 136315906;
                    *&v518[4] = "operator[]";
                    *&v518[12] = 1024;
                    if (v417)
                    {
                      v418 = 3;
                    }

                    else
                    {
                      v418 = 2;
                    }

                    *&v518[14] = 797;
                    *&v518[18] = 2048;
                    *&v518[20] = v234;
                    *&v518[28] = 2048;
                    *&v518[30] = v250;
                    _os_log_send_and_compose_impl(v418, &v552, &__src, 80, &dword_1E1C61000, v416, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v518, 38, v427, v428);
                    _os_crash_msg();
                    __break(1u);
LABEL_563:
                    v552.i64[0] = 0;
                    v476 = 0u;
                    v477 = 0u;
                    v474 = 0u;
                    v475 = 0u;
                    __src = 0u;
                    v419 = MEMORY[0x1E69E9C10];
                    v420 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v518 = 136315906;
                    *&v518[4] = "operator[]";
                    *&v518[12] = 1024;
                    if (v420)
                    {
                      v421 = 3;
                    }

                    else
                    {
                      v421 = 2;
                    }

                    *&v518[14] = 797;
                    *&v518[18] = 2048;
                    *&v518[20] = 0;
                    *&v518[28] = 2048;
                    *&v518[30] = 0;
                    _os_log_send_and_compose_impl(v421, &v552, &__src, 80, &dword_1E1C61000, v419, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v518, 38, v427, v428);
                    _os_crash_msg();
                    __break(1u);
LABEL_567:
                    v552.i64[0] = 0;
                    v476 = 0u;
                    v477 = 0u;
                    v474 = 0u;
                    v475 = 0u;
                    __src = 0u;
                    v422 = MEMORY[0x1E69E9C10];
                    v423 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v518 = 136315906;
                    *&v518[4] = "operator[]";
                    *&v518[12] = 1024;
                    if (v423)
                    {
                      v424 = 3;
                    }

                    else
                    {
                      v424 = 2;
                    }

                    *&v518[14] = 468;
                    *&v518[18] = 2048;
                    *&v518[20] = v234;
                    *&v518[28] = 2048;
                    *&v518[30] = v250;
                    _os_log_send_and_compose_impl(v424, &v552, &__src, 80, &dword_1E1C61000, v422, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v518, 38, v427, v428);
                    _os_crash_msg();
                    __break(1u);
LABEL_571:
                    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "m_assetService", "updateSceneInternal", 1586);
                    _os_crash("assertion failure: (m_assetService) ");
                    __break(1u);
                    goto LABEL_572;
                  }

LABEL_495:
                  v475 = 0u;
                  v476 = 0u;
                  __src = 0u;
                  v474 = 0u;
                  v477 = 0u;
                  v478 = v429;
                  v370.i64[0] = 0x7F0000007FLL;
                  v370.i64[1] = 0x7F0000007FLL;
                  v479 = v370;
                  v496 = 0;
                  v497 = 0;
                  v498 = 0u;
                  v480 = 0u;
                  v481 = 0u;
                  v482 = 0u;
                  v483 = 0u;
                  v484 = 0u;
                  v485 = 0u;
                  v486 = 0u;
                  v487 = 0u;
                  v488 = 0u;
                  v489 = 0u;
                  v490 = 0;
                  memset(v495, 0, 76);
                  v493 = 0u;
                  v494 = 0u;
                  v491 = 0u;
                  v492 = 0u;
                  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                  {
                    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                  }

                  v499 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
                  v500 = _D10;
                  v501 = 1065353216;
                  v502 = 0u;
                  memset(v503, 0, 19);
                  *&v503[5] = 0xFFFFFFFF00000001;
                  v504 = 0;
                  v505 = 0;
                  v506 = 0;
                  v507 = 0;
                  v508 = 65537;
                  v509 = 1;
                  v510 = xmmword_1E3060D60;
                  v511 = 16788070;
                  v513 = 0;
                  v512 = 0;
                  v371 = *(v356 + 1072);
                  __src.i64[0] = *(v356 + 1080);
                  __src.i64[1] = v371;
                  v372 = *(v356 + 1096);
                  v476.i64[0] = *(v356 + 1104);
                  v476.i64[1] = v372;
                  *v518 = v468;
                  v250 = 1;
                  *&v518[8] = 1;
                  v373 = (*(*v453 + 32))(v453, 72, 8);
                  *&v480 = re::MeshBoundingBoxes::MeshBoundingBoxes(v373, v453, v518, 1);
                  v374 = v360->i64[1];
                  *v518 = v360[1].i64[0];
                  *&v518[8] = v374;
                  v375 = (*(*v453 + 32))(v453, 72, 8);
                  v376 = re::MeshBoundingBoxes::MeshBoundingBoxes(v375, v453, v518, 1);
                  v377 = 0;
                  *(&v480 + 1) = v376;
                  v552 = *v461;
                  v553 = *&v461[16];
                  v554 = *v462;
                  v555 = *&v462[16];
                  do
                  {
                    *&v518[v377] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, COERCE_FLOAT(*(&v552 + v377))), v445, *&v552.f32[v377 / 4], 1), v443, *(&v552 + v377), 2), v449, *(&v552 + v377), 3);
                    v377 += 16;
                  }

                  while (v377 != 64);
                  v481 = *v518;
                  v482 = *&v518[16];
                  v483 = *&v518[32];
                  v484 = v519;
                  v378 = v441[1];
                  *&v485 = v441[2];
                  *(&v485 + 1) = v378;
                  v379 = v436[1];
                  *&v491 = v436[2];
                  *(&v491 + 1) = v379;
                  v380 = v434[1];
                  *&v492 = v434[2];
                  *(&v492 + 1) = v380;
                  *&v503[2] = v309[39];
                  v381 = *&v503[2];
                  LODWORD(v382) = v503[0] & 0xFFFFFFF7;
                  HIDWORD(v382) = v503[1] | 8;
                  *v503 = v382;
                  v478 = v468[0];
                  v479 = v468[1];
                  v383 = *(v432 + 3);
                  if (re::MaterialManager::entityHasSystemMaterialParameterBlock(v383, *&v503[2]))
                  {
                    v384 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v383, v381);
                    v495[0] = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v384, v453);
                  }

                  (*(*v464 + 8))(v518);
                  if (v518[0])
                  {
                    v385 = *&v518[8];
                  }

                  else
                  {
                    v385 = 0;
                  }

                  *&v518[16] = 0;
                  *&v518[24] = 0;
                  *&v518[32] = 0;
                  *v518 = v453;
                  re::DynamicArray<re::MeshScene>::setCapacity(v518, 0);
                  ++*&v518[24];
                  v386 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v385 ^ (v385 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v385 ^ (v385 >> 30))) >> 27));
                  v387 = v386 ^ (v386 >> 31);
                  if (*v472)
                  {
                    v388 = v387 % *&v472[24];
                    v389 = *(*&v472[8] + 4 * v388);
                    if (v389 != 0x7FFFFFFF)
                    {
                      while (*(*&v472[16] + (v389 << 6) + 8) != v385)
                      {
                        v389 = *(*&v472[16] + (v389 << 6)) & 0x7FFFFFFF;
                        if (v389 == 0x7FFFFFFF)
                        {
                          goto LABEL_510;
                        }
                      }

                      v393 = *&v472[16] + (v389 << 6);
                      v394 = *(v393 + 16);
                      v392 = v393 + 16;
                      v391 = v394;
                      goto LABEL_512;
                    }
                  }

                  else
                  {
                    LODWORD(v388) = 0;
                  }

LABEL_510:
                  v390 = re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v472, v388, v387);
                  v391 = *v518;
                  *(v390 + 16) = *v518;
                  v392 = v390 + 16;
                  *(v392 - 8) = v385;
                  *(v392 + 8) = *&v518[8];
                  memset(v518, 0, 24);
                  *(v392 + 32) = *&v518[32];
                  *&v518[32] = 0;
                  ++*&v518[24];
                  *(v392 + 24) = 1;
                  ++*&v472[40];
LABEL_512:
                  if (v391)
                  {
                    re::DynamicArray<re::MeshScene>::add(v392, &__src);
                  }

                  re::DynamicArray<re::MeshScene>::deinit(v518);
                  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v495[1]);
                  re::AssetHandle::~AssetHandle(v469);
                  re::AssetHandle::~AssetHandle(v471);
                  goto LABEL_515;
                }

                re::TransformService::worldMatrix(*(v7 + 288), v309, 0, &__src);
                if (v311)
                {
                  v449 = v476;
                  v333 = vmulq_f32(__src, __src);
                  *&v334 = v333.f32[2] + vaddv_f32(*v333.f32);
                  *v333.f32 = vrsqrte_f32(v334);
                  *v333.f32 = vmul_f32(*v333.f32, vrsqrts_f32(v334, vmul_f32(*v333.f32, *v333.f32)));
                  v348 = vmulq_n_f32(__src, vmul_f32(*v333.f32, vrsqrts_f32(v334, vmul_f32(*v333.f32, *v333.f32))).f32[0]);
                  v335 = vmulq_f32(v474, v348);
                  v336 = vmulq_f32(v348, v348);
                  v337 = vmulq_f32(v475, v348);
                  *v336.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v337, v337, 8uLL), *&vextq_s8(v336, v336, 8uLL)), vadd_f32(vzip1_s32(*v337.i8, *v336.i8), vzip2_s32(*v337.i8, *v336.i8)));
                  v338 = vsubq_f32(v474, vmulq_n_f32(v348, (v335.f32[2] + vaddv_f32(*v335.f32)) / *&v336.i32[1]));
                  v339 = vmulq_f32(v338, v338);
                  *&v340 = v339.f32[2] + vaddv_f32(*v339.f32);
                  *v339.f32 = vrsqrte_f32(v340);
                  *v339.f32 = vmul_f32(*v339.f32, vrsqrts_f32(v340, vmul_f32(*v339.f32, *v339.f32)));
                  v341 = vmulq_n_f32(v338, vmul_f32(*v339.f32, vrsqrts_f32(v340, vmul_f32(*v339.f32, *v339.f32))).f32[0]);
                  v342 = vsubq_f32(v475, vmulq_n_f32(v348, *v336.i32 / *&v336.i32[1]));
                  v343 = vmulq_f32(v475, v341);
                  v344 = vmulq_f32(v341, v341);
                  *v343.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v343, v343, 8uLL), *&vextq_s8(v344, v344, 8uLL)), vadd_f32(vzip1_s32(*v343.i8, *v344.i8), vzip2_s32(*v343.i8, *v344.i8)));
                  v345 = vsubq_f32(v342, vmulq_n_f32(v341, vdiv_f32(*v343.i8, vdup_lane_s32(*v343.i8, 1)).f32[0]));
                  v346 = vmulq_f32(v345, v345);
                  *v344.i32 = v346.f32[2] + vaddv_f32(*v346.f32);
                  *v346.f32 = vrsqrte_f32(v344.u32[0]);
                  *v346.f32 = vmul_f32(*v346.f32, vrsqrts_f32(v344.u32[0], vmul_f32(*v346.f32, *v346.f32)));
                  v347 = vmulq_n_f32(v345, vmul_f32(*v346.f32, vrsqrts_f32(v344.u32[0], vmul_f32(*v346.f32, *v346.f32))).f32[0]);
                  v348.i32[3] = __src.i32[3];
                  v341.i32[3] = v474.i32[3];
                  v347.i32[3] = v475.i32[3];
                  v443 = v347;
                  v445 = v341;
                }

                else
                {
                  re::TransformService::worldMatrix(*(v7 + 288), v309, 0, &__src);
                  v349 = v476;
                  v349.i32[3] = 1.0;
                  v449 = v349;
                  v348 = xmmword_1E3047670;
                  v443 = xmmword_1E30476A0;
                  v445 = xmmword_1E3047680;
                }

                v332 = v453;
                v447 = v348;
                if (v317 && (*(v317 + 36) & 1) != 0)
                {
LABEL_478:
                  v330 = *(v317 + 40) + 0.00001;
                }

                else
                {
                  v330 = 0.01001;
                  if (v312 && *(v312 + 36) == 1)
                  {
                    v317 = v312;
                    goto LABEL_478;
                  }
                }

                v331 = v330;
                v329 = v330;
                goto LABEL_480;
              }
            }

            re::AssetHandle::loadAsync(&v308[2]);
          }
        }

LABEL_515:
        ++v301;
      }

      while (v301 != v460);
    }
  }

  else
  {
    re::RenderManager::perFrameAllocator(v299);
  }

  v395 = *&v472[32];
  if (*&v472[32])
  {
    v396 = 0;
    v397 = *&v472[16];
    while (1)
    {
      v398 = *v397;
      v397 += 16;
      if (v398 < 0)
      {
        break;
      }

      if (*&v472[32] == ++v396)
      {
        LODWORD(v396) = *&v472[32];
        break;
      }
    }
  }

  else
  {
    LODWORD(v396) = 0;
  }

  if (v396 != *&v472[32])
  {
    v399 = *&v472[16];
    v400 = *&v472[32];
    do
    {
      v401 = v399 + (v396 << 6);
      if (*(v401 + 32))
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&__src, v438, *(v401 + 8), v437);
        *v518 = __src.i64[0] >> 1;
        v402 = **(re::RenderFrameData::stream((v437 + 33), v518) + 48);
        v403 = (*(v402 + 840))();
        if (__src.i8[0])
        {
          if (__src.i8[0])
          {
          }
        }

        v400 = *&v472[32];
        v399 = *&v472[16];
      }

      if (v400 <= v396 + 1)
      {
        v404 = v396 + 1;
      }

      else
      {
        v404 = v400;
      }

      while (v404 - 1 != v396)
      {
        LODWORD(v396) = v396 + 1;
        if ((*(v399 + (v396 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_539;
        }
      }

      LODWORD(v396) = v404;
LABEL_539:
      ;
    }

    while (v396 != v395);
  }

  re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v472);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v465, v405, v406);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v466);
}