void re::RenderGraphARCombinedPostProcessNode::execute(re::RenderGraphARCombinedPostProcessNode *this, re::RenderGraphContext *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v107, 5040, 0, 0, 0, 0);
  if (!*(this + 54))
  {
LABEL_8:
    if (*(this + 408) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C04D0, memory_order_acquire) & 1) == 0)
      {
        v67 = __cxa_guard_acquire(&qword_1EE1C04D0);
        if (v67)
        {
          _MergedGlobals_525 = re::getCombinedScopeHash(v67, v68, v69);
          __cxa_guard_release(&qword_1EE1C04D0);
        }
      }

      if (*(this + 409) == 1)
      {
        v13 = _MergedGlobals_525;
        v14 = *(a2 + 146);
      }

      else
      {
        v14 = *(a2 + 146);
        v13 = *(*(a2 + 5) + 48);
      }

      v15 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(v14, v13);
      if (!v15)
      {
        v34 = *re::graphicsLogObjects(0);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_57;
        }

        LOWORD(v119) = 0;
        v35 = "RenderGraphARCombinedPostProcessNode expects TonemapParametersData from the render graph data store but there isn't any. Will skip the execution.";
        goto LABEL_32;
      }

      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v119, (*a2 + 16), 0x84uLL, 4uLL);
      v16 = v120;
      v17 = *(&v119 + 1);
      v18 = v119 + DWORD2(v119);
      *v18 = *(v15 + 8);
      v19 = *(v15 + 24);
      v20 = *(v15 + 40);
      v21 = *(v15 + 72);
      *(v18 + 48) = *(v15 + 56);
      *(v18 + 64) = v21;
      *(v18 + 16) = v19;
      *(v18 + 32) = v20;
      v22 = *(v15 + 88);
      v23 = *(v15 + 104);
      v24 = *(v15 + 120);
      *(v18 + 128) = *(v15 + 136);
      *(v18 + 96) = v23;
      *(v18 + 112) = v24;
      *(v18 + 80) = v22;
      v25 = *a2;
      *v113 = 0x1C6D7B14F4E32CD0;
      *&v119 = v16;
      DWORD2(v119) = 0;
      *&v120 = v17;
      re::BufferTable::setBuffer((v25 + 480), v113, &v119);
    }

    if (*(this + 412) != 1)
    {
      goto LABEL_18;
    }

    v26 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
    if (v26)
    {
      v27 = *a2;
      *&v119 = 0x775E00AD509B0A76;
      re::BufferTable::setBuffer((v27 + 480), &v119, (v26 + 8));
LABEL_18:
      v6 = 0xA3521511A35B9;
      v5 = *a2;
      v87 = 0xA3521511A35B9;
      if (*(this + 25))
      {
        re::RenderGraphContext::metalTexture(a2, *(this + 27), 0, 0, &v119);
        re::DynamicTextureTableAdd((v5 + 368), &v87, &v119);
        if (v119)
        {
        }

        v2 = *(this + 408) | (2 * *(this + 410)) | (4 * *(this + 411)) | (8 * *(this + 412));
        v29 = *(this + 33);
        if (v29 <= v2)
        {
          re::DynamicString::format(&v119, "%s: Permutation %du was requested but only %lu materials exist.", v28, *(this + 2), *(this + 408) | (2 * *(this + 410)) | (4 * *(this + 411)) | (8 * *(this + 412)), v29);
          re::RenderGraphExecutable::addError(*(a2 + 147), &v119);
          v33 = v119;
          if (!v119 || (BYTE8(v119) & 1) == 0)
          {
            goto LABEL_57;
          }

          v7 = v120;
          goto LABEL_56;
        }

        v5 = *(this + 54);
        if (v5 <= v2)
        {
          goto LABEL_68;
        }

        v30 = *(*(this + v2 + 35) + 1776);
        v31 = *(*(this + 56) + 24 * v2 + 8);
        if (v31)
        {
          v32 = *(v31 + 792);
        }

        else
        {
          v32 = 0;
        }

        v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
        MaterialTableForAsset = re::RenderGraphContext::getMaterialTableForAsset(a2, v32 ^ (v36 >> 31) ^ v36);
        re::RenderGraphContext::makeFullscreenDrawCall(a2, v30, "AR Post Processing Combined", MaterialTableForAsset, 0, 0, 0, 0, &v119);
        v38 = *(&v123 + 1);
        MurmurHash3_x64_128("fullscreen", 0xAuLL, 0, v113);
        v39 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v38, (*&v113[8] + (*v113 << 6) + (*v113 >> 2) - 0x61C8864680B583E9) ^ *v113);
        if (!v7)
        {
          goto LABEL_72;
        }

        HIDWORD(v121) = *v39;
        if (HIDWORD(v121) == -1)
        {
          goto LABEL_57;
        }

        v40 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
        *(&v106 + 1) = 0;
        v104 = 0;
        v105 = 0;
        v103 = 0uLL;
        LODWORD(v106) = 0;
        *&v102 = 0;
        v101 = 0uLL;
        DWORD2(v102) = 0;
        if (v40)
        {
          v2 = v40;
          if (*(v40 + 128))
          {
            v5 = 0;
            v41 = 0;
            while (1)
            {
              v42 = v2 + 144 + 240 * v5;
              if (*(v42 + 80) == 1)
              {
                v43 = *(v42 + 96);
                v44 = *(v42 + 112);
                v45 = *(v42 + 144);
                *&v113[32] = *(v42 + 128);
                *v114 = v45;
                *v113 = v43;
                *&v113[16] = v44;
              }

              else
              {
                re::Projection::cullingProjectionMatrix(v113, v42);
              }

              re::DynamicArray<re::Matrix4x4<float>>::add((&v103 + 8), v113);
              v47 = *(v2 + 48);
              if (v47 <= v5)
              {
                break;
              }

              re::RenderCamera::computeInverseTransform(v113, (v2 + 64 + 32 * v5));
              re::DynamicArray<re::Matrix4x4<float>>::add(&v101, v113);
              v5 = ++v41;
              if (*(v2 + 128) <= v41)
              {
                goto LABEL_44;
              }
            }

LABEL_63:
            re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v47);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v72, v76);
            __break(1u);
            goto LABEL_64;
          }

LABEL_44:
          v48 = *(v2 + 890);
        }

        else
        {
          v85 = xmmword_1E3047670;
          v84 = xmmword_1E3047680;
          *v113 = xmmword_1E3047670;
          *&v113[16] = xmmword_1E3047680;
          v83 = xmmword_1E30476A0;
          v82 = xmmword_1E30474D0;
          *&v113[32] = xmmword_1E30476A0;
          *v114 = xmmword_1E30474D0;
          re::DynamicArray<re::Matrix4x4<float>>::add((&v103 + 8), v113);
          *v113 = xmmword_1E3047670;
          *&v113[16] = xmmword_1E3047680;
          *&v113[32] = xmmword_1E30476A0;
          *v114 = xmmword_1E30474D0;
          re::DynamicArray<re::Matrix4x4<float>>::add(&v101, v113);
          v48 = 1;
        }

        re::DrawCallRef::DrawCallRef(&v96, &v119);
        v49 = 0;
        *v113 = &v96;
        *&v113[24] = &v97;
        *v114 = &v98;
        v115 = &v99;
        *&v113[8] = vdupq_n_s64(1uLL);
        *&v113[32] = *&v113[8];
        *&v114[8] = *&v113[8];
        v116 = *&v113[8];
        v117 = &v100;
        v118 = *&v113[8];
        v87 = "fullscreen";
        v88 = v113;
        v89 = v103;
        v90 = *(&v106 + 1);
        v91 = 0;
        LOBYTE(v92) = v48;
        *(&v92 + 1) = 2;
        WORD2(v92) = 0;
        BYTE7(v94) = 0;
        if (!*(a2 + 338))
        {
          goto LABEL_47;
        }

        goto LABEL_73;
      }

LABEL_64:
      v109[0] = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v113 = 136315906;
      *&v113[4] = "operator[]";
      *&v113[12] = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      *&v113[14] = 789;
      *&v113[18] = 2048;
      *&v113[20] = 0;
      *&v113[28] = 2048;
      *&v113[30] = 0;
      _os_log_send_and_compose_impl(v64, v109, &v119, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v78, v79);
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v109[0] = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      a2 = MEMORY[0x1E69E9C10];
      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v113 = 136315906;
      *&v113[4] = "operator[]";
      *&v113[12] = 1024;
      if (v65)
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      *&v113[14] = 789;
      *&v113[18] = 2048;
      *&v113[20] = v2;
      *&v113[28] = 2048;
      *&v113[30] = v5;
      _os_log_send_and_compose_impl(v66, v109, &v119, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v78, v79);
      _os_crash_msg();
      __break(1u);
LABEL_72:
      v80 = 0;
      v81 = 0;
      v78 = "operator[]";
      v79 = 264;
      re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v73, v77);
      __break(1u);
LABEL_73:
      v49 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, *(this + 2), "fullscreen");
LABEL_47:
      *(&v94 + 1) = v49;
      LOBYTE(v95) = 0;
      re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v109);
      re::RenderGraphContext::encodeDrawCalls(a2, v109, &v87, v50, v51, v52, v53, v54, v70, v74, v78, v79, v80, v81, v82, *(&v82 + 1), v83, *(&v83 + 1), v84, *(&v84 + 1), v85, *(&v85 + 1), v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, SBYTE1(v104), SBYTE2(v104), SBYTE3(v104), SBYTE4(v104), v105, v106, v107[0], v108, v109[0], v109[1], v109[2], v109[3], v110, v111, v112, *v113, *&v113[8], *&v113[16], *&v113[24], *&v113[32], *v114, *&v114[8]);
      v55 = *a2;
      v109[0] = v6;
      re::DynamicTextureTableRemove((v55 + 368), v109, v56);
      if (*(this + 408) == 1)
      {
        v57 = *a2;
        v109[0] = 0x1C6D7B14F4E32CD0;
        re::BufferTable::removeBuffer((v57 + 480), v109);
      }

      if (*(this + 412) == 1)
      {
        v58 = *a2;
        v109[0] = 0x775E00AD509B0A76;
        re::BufferTable::removeBuffer((v58 + 480), v109);
      }

      if (v101)
      {
        v7 = v103;
        if (v103)
        {
          (*(*v101 + 40))();
        }
      }

      v33 = *(&v103 + 1);
      if (!*(&v103 + 1))
      {
        goto LABEL_57;
      }

      v7 = *(&v106 + 1);
      if (!*(&v106 + 1))
      {
        goto LABEL_57;
      }

LABEL_56:
      (*(*v33 + 40))(v33, v7);
      goto LABEL_57;
    }

    v34 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    LOWORD(v119) = 0;
    v35 = "RenderGraphARCombinedPostProcessNode expects ColorExecDataWrapper from the render graph data store but there isn't any. Will skip the execution. Did you forget to add a upload node?";
LABEL_32:
    _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, v35, &v119, 2u);
    goto LABEL_57;
  }

  v2 = 0;
  v5 = 0;
  v6 = this + 280;
  while (re::AssetHandle::loadedAsset<re::MaterialAsset>((*(this + 56) + v2)))
  {
    v9 = *(this + 54);
    if (v9 <= v5)
    {
      v109[0] = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      v59 = MEMORY[0x1E69E9C10];
      v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v113 = 136315906;
      *&v113[4] = "operator[]";
      *&v113[12] = 1024;
      if (v60)
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      *&v113[14] = 789;
      *&v113[18] = 2048;
      *&v113[20] = v5;
      *&v113[28] = 2048;
      *&v113[30] = v9;
      _os_log_send_and_compose_impl(v61, v109, &v119, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v78, v79);
      _os_crash_msg();
      __break(1u);
LABEL_62:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v5, v12);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v71, v75);
      __break(1u);
      goto LABEL_63;
    }

    v10 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(this + 56) + v2));
    v12 = *(this + 33);
    if (v12 <= v5)
    {
      goto LABEL_62;
    }

    *(v6 + 8 * v5) = v10;
    if (v5 <= 0xE)
    {
      ++v5;
      v2 += 24;
      if (*(this + 54) > v5)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

LABEL_57:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v107, v7, v8);
}

void re::RenderGraphARCombinedPostProcessNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 408) | (2 * *(a1 + 410)) | (4 * *(a1 + 411)) | (8 * *(a1 + 412));
  if (*(a1 + 432) > v2)
  {
    v4 = (*(a1 + 448) + 24 * v2);
    if (*(v4 + 1))
    {
      v6 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v4);
      if (v6)
      {
        v7 = *(v6 + 1784);
        if (v7)
        {
          v8 = *(a1 + 432);
          if (v8 <= v2)
          {
            v16 = 0;
            memset(v24, 0, sizeof(v24));
            v12 = MEMORY[0x1E69E9C10];
            v13 = v8;
            *v17 = 136315906;
            *&v17[4] = "operator[]";
            v18 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v14 = 3;
            }

            else
            {
              v14 = 2;
            }

            v19 = 797;
            v20 = 2048;
            v21 = v2;
            v22 = 2048;
            v23 = v13;
            _os_log_send_and_compose_impl(v14, &v16, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v17, 38, v15);
            _os_crash_msg();
            __break(1u);
          }

          v9 = *(*(a1 + 448) + 24 * v2 + 8);
          if (v9)
          {
            v10 = *(v9 + 792);
          }

          else
          {
            v10 = 0;
          }

          v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
          *&v24[0] = v10 ^ (v11 >> 31) ^ v11;
          re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v17, v7);
          re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a2, v24, v17);
          if (*v17)
          {
          }
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphARUploadPostParams(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C04D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C04D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0558, "RenderGraphARUploadPostParams");
    __cxa_guard_release(&qword_1EE1C04D8);
  }

  return &unk_1EE1C0558;
}

void re::initInfo_RenderGraphARUploadPostParams(re *this, re::IntrospectionBase *a2)
{
  v29[0] = 0x259D9E6D55C4A960;
  v29[1] = "RenderGraphARUploadPostParams";
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  *(this + 2) = v30;
  if ((atomic_load_explicit(&qword_1EE1C04E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C04E0))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C04F8 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "tonemappingEnabled";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C0500 = v11;
    v12 = re::introspectionAllocator();
    v18 = re::introspect_TonemapUserParameters(1, v13, v14, v15, v16, v17);
    v19 = (*(*v12 + 32))(v12, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "tonemapUserParameters";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x10C00000002;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C0508 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_BOOL(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "tonemappingSharedParamsEnabled";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x10900000003;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1C0510 = v23;
    v24 = re::introspectionAllocator();
    v26 = re::introspect_BOOL(1, v25);
    v27 = (*(*v24 + 32))(v24, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "colorConvertEnabled";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x10A00000004;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1C0518 = v27;
    __cxa_guard_release(&qword_1EE1C04E0);
  }

  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1C04F8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphARUploadPostParams>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphARUploadPostParams>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphARUploadPostParams>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphARUploadPostParams>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v28 = v30;
}

void *re::allocInfo_RenderGraphARCombinedPostProcessNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C04E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C04E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C05E8, "RenderGraphARCombinedPostProcessNode");
    __cxa_guard_release(&qword_1EE1C04E8);
  }

  return &unk_1EE1C05E8;
}

void re::initInfo_RenderGraphARCombinedPostProcessNode(re *this, re::IntrospectionBase *a2)
{
  v33[0] = 0x55028F1BAB7A21C6;
  v33[1] = "RenderGraphARCombinedPostProcessNode";
  if (v33[0])
  {
    if (v33[0])
    {
    }
  }

  *(this + 2) = v34;
  if ((atomic_load_explicit(&qword_1EE1C04F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C04F0))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C0520 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "tonemappingEnabled";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x19800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C0528 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_BOOL(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "colorCorrectionEnabled";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x19A00000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C0530 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_BOOL(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "cameraNoiseEnabled";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x19B00000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C0538 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "combinedMaterialPermutations";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x1A000000004;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1C0540 = v23;
    v24 = re::introspectionAllocator();
    v26 = re::introspect_BOOL(1, v25);
    v27 = (*(*v24 + 32))(v24, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "tonemappingSharedParamsEnabled";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x19900000005;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1C0548 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_BOOL(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "colorConvertEnabled";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x19C00000006;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1C0550 = v31;
    __cxa_guard_release(&qword_1EE1C04F0);
  }

  *(this + 2) = 0x1C800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1C0520;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphARCombinedPostProcessNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphARCombinedPostProcessNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphARCombinedPostProcessNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphARCombinedPostProcessNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v32 = v34;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphARCombinedPostProcessNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D14660;
  *(result + 33) = 0;
  *(result + 68) = 0;
  *(result + 56) = 0;
  *(result + 53) = 0;
  *(result + 54) = 0;
  *(result + 52) = 0;
  *(result + 110) = 0;
  *(result + 409) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphARCombinedPostProcessNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D14660;
  *(result + 33) = 0;
  *(result + 68) = 0;
  *(result + 56) = 0;
  *(result + 53) = 0;
  *(result + 54) = 0;
  *(result + 52) = 0;
  *(result + 110) = 0;
  *(result + 409) = 0;
  return result;
}

void re::RenderGraphARUploadPostParams::~RenderGraphARUploadPostParams(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphARCombinedPostProcessNode::~RenderGraphARCombinedPostProcessNode(re::RenderGraphARCombinedPostProcessNode *this)
{
  *this = &unk_1F5D14660;
  re::DynamicArray<re::AssetHandle>::deinit(this + 416);
  *(this + 33) = 0;
  ++*(this + 68);

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D14660;
  re::DynamicArray<re::AssetHandle>::deinit(this + 416);
  *(this + 33) = 0;
  ++*(this + 68);
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

double re::RenderGraphARUploadPostParams::RenderGraphARUploadPostParams(re::RenderGraphARUploadPostParams *this)
{
  v1 = (this + 268);
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *v2 = &unk_1F5D145B8;
  *(v2 + 132) = 0;
  *(v2 + 266) = 0;
  *v1 = xmmword_1E3054790;
  v1[1] = xmmword_1E304F3C0;
  *(v2 + 300) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 38) = result;
  *(v2 + 312) = 0;
  *(v2 + 316) = 0x3F80000000000000;
  *(v2 + 324) = 0;
  return result;
}

float re::RenderGraphMeshNodeBase::computeSortDistance(float32x4_t *a1, float32x4_t *a2, _BYTE *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, float32x4_t a14)
{
  v19 = a1;
  if ((atomic_load_explicit(&qword_1EE1C0680, memory_order_acquire) & 1) == 0)
  {
    v100 = a4;
    v96 = a3;
    a1 = __cxa_guard_acquire(&qword_1EE1C0680);
    a3 = v96;
    a4 = v100;
    if (a1)
    {
      re::Defaults::BOOLValue(buf, "useLegacySortingDistances", v97);
      if (buf[0])
      {
        v98 = buf[1];
      }

      else
      {
        v98 = 0;
      }

      _MergedGlobals_526 = v98;
      __cxa_guard_release(&qword_1EE1C0680);
      a3 = v96;
      a4 = v100;
    }
  }

  v20 = *a3;
  if (v20 <= 3)
  {
    if (*a3 <= 1u)
    {
      if (*a3)
      {
        re::BoundingSphere::BoundingSphere(buf, v19, a2);
        a14 = vaddq_f32(*buf, vmulq_n_f32(*a6, *&buf[12]));
        v21 = vsubq_f32(a14, *a5);
        v22 = vmulq_f32(v21, v21);
        v23 = sqrtf(v22.f32[2] + vaddv_f32(*v22.f32));
        v24 = vmulq_f32(*a6, v21);
        v25 = vaddv_f32(*v24.f32);
        if (_MergedGlobals_526 == 1)
        {
          v26 = v24.f32[2] + v25;
        }

        else
        {
          v26 = v23;
        }

        goto LABEL_66;
      }

      goto LABEL_58;
    }

    if (v20 == 2)
    {
      re::BoundingSphere::BoundingSphere(buf, v19, a2);
      a14 = vsubq_f32(*buf, vmulq_n_f32(*a6, *&buf[12]));
      v72 = vsubq_f32(a14, *a5);
      v73 = _MergedGlobals_526;
      v74 = vmulq_f32(v72, v72);
      v75 = sqrtf(v74.f32[2] + vaddv_f32(*v74.f32));
      v76 = vmulq_f32(*a6, v72);
      v77 = v76.f32[2] + vaddv_f32(*v76.f32);
      if (_MergedGlobals_526 != 1)
      {
        v77 = v75;
      }

      if (*&buf[12] <= 5000.0)
      {
        v73 = 1;
      }

      if (v73)
      {
        v26 = v77;
      }

      else
      {
        v26 = 0.0;
      }

LABEL_66:
      v51 = 1;
      if (!a7)
      {
        return v26;
      }

      goto LABEL_67;
    }

    if (v20 == 3)
    {
      v102 = __invert_f4(*a2->f32);
      v27 = *a5;
      v102.columns[0] = vaddq_f32(v102.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102.columns[0], COERCE_FLOAT(*a5)), v102.columns[1], *a5->f32, 1), v102.columns[2], *a5, 2));
      v28 = vdivq_f32(v102.columns[0], vdupq_laneq_s32(v102.columns[0], 3));
      v29 = v19[1];
      v102.columns[3] = vcgtq_f32(*v19, v29);
      v102.columns[3].i32[3] = v102.columns[3].i32[2];
      v30 = vmaxvq_u32(v102.columns[3]);
      v31.i64[0] = 0x3F0000003F000000;
      v31.i64[1] = 0x3F0000003F000000;
      v32 = vmulq_f32(vaddq_f32(*v19, v29), v31);
      v33 = v30 < 0;
      if (v30 >= 0)
      {
        v34 = v32.i64[1];
      }

      else
      {
        v34 = 0;
      }

      if (v33)
      {
        v35 = 0;
      }

      else
      {
        v35 = v32.i64[0];
      }

      v36.i64[0] = v35;
      v36.i64[1] = v34;
      v37 = vsubq_f32(v36, v28);
      __asm { FMOV            V5.4S, #1.0 }

      v43 = vdivq_f32(_Q5, v37);
      v44 = vmulq_f32(vsubq_f32(*v19, v28), v43);
      v45 = vmulq_f32(vsubq_f32(v29, v28), v43);
      v46 = v45.f32[1];
      if (vmovn_s32(vcgtq_f32(v45, v44)).u8[0])
      {
        v47 = v45.f32[0];
      }

      else
      {
        v47 = v44.f32[0];
      }

      v48 = vdup_laneq_s32(v45, 2);
      if (v44.f32[1] >= v46)
      {
        v46 = v44.f32[1];
      }

      v49 = vdup_laneq_s32(v44, 2);
      *v48.i32 = v46;
      *v49.i32 = v47;
      v50 = vbsl_s8(vcgt_f32(__PAIR64__(v48.u32[1], LODWORD(v47)), __PAIR64__(v49.u32[1], LODWORD(v46))), v48, v49);
      if (*v50.i32 > *&v50.i32[1])
      {
        v50.i32[0] = v50.i32[1];
      }

LABEL_44:
      v69 = vaddq_f32(v28, vmulq_n_f32(v37, *v50.i32));
      v70 = vaddq_f32(a2[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, v69.f32[0]), a2[1], *v69.f32, 1), a2[2], v69, 2));
      a14 = vdivq_f32(v70, vdupq_laneq_s32(v70, 3));
      v71 = vsubq_f32(a14, v27);
      goto LABEL_63;
    }

    goto LABEL_55;
  }

  if (*a3 <= 5u)
  {
    if (v20 == 4)
    {
      v103 = __invert_f4(*a2->f32);
      v27 = *a5;
      v103.columns[0] = vaddq_f32(v103.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.columns[0], COERCE_FLOAT(*a5)), v103.columns[1], *a5->f32, 1), v103.columns[2], *a5, 2));
      v28 = vdivq_f32(v103.columns[0], vdupq_laneq_s32(v103.columns[0], 3));
      v53 = v19[1];
      v103.columns[3] = vcgtq_f32(*v19, v53);
      v103.columns[3].i32[3] = v103.columns[3].i32[2];
      v54 = vmaxvq_u32(v103.columns[3]);
      v55.i64[0] = 0x3F0000003F000000;
      v55.i64[1] = 0x3F0000003F000000;
      v56 = vmulq_f32(vaddq_f32(*v19, v53), v55);
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
        v59 = v56.i64[0];
      }

      v60.i64[0] = v59;
      v60.i64[1] = v58;
      v37 = vsubq_f32(v60, v28);
      __asm { FMOV            V5.4S, #1.0 }

      v62 = vdivq_f32(_Q5, v37);
      v63 = vmulq_f32(vsubq_f32(*v19, v28), v62);
      v64 = vmulq_f32(vsubq_f32(v53, v28), v62);
      v65 = v64.f32[1];
      if (vmovn_s32(vcgtq_f32(v63, v64)).u8[0])
      {
        v66 = v64.f32[0];
      }

      else
      {
        v66 = v63.f32[0];
      }

      v67 = vdup_laneq_s32(v64, 2);
      if (v63.f32[1] <= v65)
      {
        v65 = v63.f32[1];
      }

      v68 = vdup_laneq_s32(v63, 2);
      *v67.i32 = v65;
      *v68.i32 = v66;
      v50 = vbsl_s8(vcgt_f32(__PAIR64__(v68.u32[1], LODWORD(v65)), __PAIR64__(v67.u32[1], LODWORD(v66))), v67, v68);
      if (*v50.i32 < *&v50.i32[1])
      {
        v50.i32[0] = v50.i32[1];
      }

      goto LABEL_44;
    }

    if (v20 == 5)
    {
      a14 = *a4;
LABEL_62:
      v71 = vsubq_f32(a14, *a5);
LABEL_63:
      if (_MergedGlobals_526 == 1)
      {
        v87 = vmulq_f32(v71, *a6);
        v26 = v87.f32[2] + vaddv_f32(*v87.f32);
      }

      else
      {
        v88 = vmulq_f32(v71, v71);
        v26 = sqrtf(v88.f32[2] + vaddv_f32(*v88.f32));
      }

      goto LABEL_66;
    }

LABEL_55:
    if ((atomic_exchange(byte_1EE1C0679, 1u) & 1) == 0)
    {
      v78 = *re::graphicsLogObjects(a1);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v78, OS_LOG_TYPE_DEFAULT, "An unknown mesh sort point heuristic has been encountered. All unknown heuristics will default to kCentroid.", buf, 2u);
      }
    }

LABEL_58:
    v79 = v19[1];
    v80 = vcgtq_f32(*v19, v79);
    v80.i32[3] = v80.i32[2];
    v81 = vaddq_f32(*v19, v79);
    v79.i64[0] = 0x3F0000003F000000;
    v79.i64[1] = 0x3F0000003F000000;
    v82 = vmulq_f32(v81, v79);
    v83 = v82.i64[1];
    if ((vmaxvq_u32(v80) & 0x80000000) == 0)
    {
      v84 = *v82.f32;
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    *v85.f32 = v84;
    v85.i64[1] = v83;
    v86 = vaddq_f32(a2[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, v84.f32[0]), a2[1], v84, 1), a2[2], v85, 2));
    a14 = vdivq_f32(v86, vdupq_laneq_s32(v86, 3));
    goto LABEL_62;
  }

  if (v20 == 6)
  {
    v51 = 0;
    *&v52 = INFINITY;
  }

  else
  {
    if (v20 != 7)
    {
      goto LABEL_55;
    }

    v51 = 0;
    *&v52 = -INFINITY;
  }

  v26 = *&v52;
  if (!a7)
  {
    return v26;
  }

LABEL_67:
  if (*a8 == 1)
  {
    v99 = a14;
    MutableSortingContext = re::DrawCallRecorderGroup::getMutableSortingContext(a7, *(a8 + 4));
    v91 = v19[1];
    *(MutableSortingContext + 32) = *v19;
    *(MutableSortingContext + 48) = v91;
    v93 = a2[2];
    v92 = a2[3];
    v94 = a2[1];
    *(MutableSortingContext + 64) = *a2;
    *(MutableSortingContext + 80) = v94;
    *(MutableSortingContext + 96) = v93;
    *(MutableSortingContext + 112) = v92;
    if (*(MutableSortingContext + 128))
    {
      if ((v51 & 1) == 0)
      {
        *(MutableSortingContext + 128) = 0;
        return v26;
      }

      v95 = v99;
    }

    else
    {
      v95 = v99;
      if ((v51 & 1) == 0)
      {
        return v26;
      }

      *(MutableSortingContext + 128) = 1;
    }

    *(MutableSortingContext + 144) = v95;
  }

  return v26;
}

uint64_t re::RenderGraphMeshNodeBase::removeTargetWritesWithTypes(uint64_t result, char *a2, unint64_t a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(result + 240);
  if (v4)
  {
    v5 = 0;
    do
    {
      if (v4 <= v5)
      {
        v24 = 0;
        memset(v33, 0, sizeof(v33));
        v18 = MEMORY[0x1E69E9C10];
        v25 = 136315906;
        v26 = "operator[]";
        v27 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v28 = 789;
        v29 = 2048;
        v30 = v5;
        v31 = 2048;
        v32 = v4;
        _os_log_send_and_compose_impl(v19, &v24, v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v22, v23);
        _os_crash_msg();
        __break(1u);
LABEL_28:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10 >> 2, a3);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
        __break(1u);
      }

      v6 = *(result + 256);
      v7 = v6 + (v5 << 6);
      if (a3)
      {
        v8 = 4 * a3;
        v9 = a2;
        while (*v9 != *(v7 + 20))
        {
          v9 += 4;
          v8 -= 4;
          if (!v8)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v9 = a2;
      }

      if (v9 == &a2[4 * a3])
      {
        goto LABEL_21;
      }

      v10 = v9 - a2;
      if (a3 <= v10 >> 2)
      {
        goto LABEL_28;
      }

      v11 = *&a2[v10];
      v12 = v11 == 6 || v11 == 1;
      if (v12 && *(v7 + 16) != a4)
      {
LABEL_21:
        ++v5;
      }

      else
      {
        v13 = v4 - 1;
        if (v4 - 1 > v5)
        {
          v14 = v6 + (v4 << 6);
          v15 = *(v14 - 64);
          v16 = *(v14 - 48);
          v17 = *(v14 - 16);
          *(v7 + 32) = *(v14 - 32);
          *(v7 + 48) = v17;
          *v7 = v15;
          *(v7 + 16) = v16;
          v13 = *(result + 240) - 1;
        }

        *(result + 240) = v13;
        ++*(result + 248);
        v4 = v13;
      }
    }

    while (v5 < v4);
  }

  return result;
}

uint64_t re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(re *a1, unint64_t a2, uint64_t *a3, void *a4, float32x4_t *a5, void *a6, uint64_t a7, int a8, unsigned __int8 *a9, unsigned __int8 a10, char *a11, unint64_t a12, char a13, unint64_t a14)
{
  v111[0] = a7;
  v15 = a4;
  v17 = a2;
  v18 = a1;
  v20 = a11;
  v151 = *MEMORY[0x1E69E9840];
  *(&v136 + 1) = a3;
  v137 = a4;
  HIDWORD(v110) = a8;
  v108 = a11;
  v109 = a6;
  if (*(a2 + 1352))
  {
    goto LABEL_78;
  }

  for (i = 0; ; i = a1)
  {
    v23 = *(*v17 + 32);
    v24 = *(v18 + 264);
    *v143 = 0;
    v142 = a5;
    *&v143[8] = *a12;
    a5 = &v142;
    memset(v144, 0, sizeof(v144));
    v145 = re::globalAllocators(a1)[2];
    v146 = 0;
    v147 = 0;
    v148 = *(a12 + 16);
    v149 = 0;
    v150 = *(a12 + 17);
    re::RenderGraphMeshNodeBase::sortMeshParts(v24, a3, v15, v17, i, &v142, v23, &v134, v85, v90, SHIDWORD(v90), v95, v97, v99, v101, v103, v104, v105.i64[0], v105.i64[1], v106.i64[0], v106.i64[1], v107, v108, v109, v110, v111[0], v111[1], v112, v113, v114, v115, v116, v117, v118, v119, v120, *v121, *&v121[16], v122, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, SHIDWORD(v129), v130, v131, v132, v133, v134, *(&v134 + 1), v135, *(&v135 + 1), v136, SWORD4(v136), v137, v138, *buf, *&buf[8], *&buf[16]);
    re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(v144);
    v15 = (*(*v23 + 32))(v23, 328, 8);
    re::DrawTable::DrawTable(v15, v23, (v135 + 127) >> 7);
    v27 = *a14;
    if (v27 == 1)
    {
      v132 = *(a14 + 1);
      LOBYTE(v133) = *(a14 + 17);
    }

    v28 = *(v18 + 24);
    v29 = *(v18 + 268);
    v30 = *(v111[0] + 64);
    v121[0] = v27;
    if (v27)
    {
      *&v121[1] = v132;
      v121[17] = v133;
    }

    v121[20] = 0;
    v122 = v28;
    LOBYTE(v123) = v29;
    DWORD1(v123) = 0;
    LOBYTE(v124) = 0;
    re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v136 + 1, v136, v135, v17, v15, v30, v25, v26, i, v121);
    if (!v15[5])
    {
      break;
    }

    *(v17 + 1553) = 2;
    if (re::GraphicsFeatureFlags::enableDepthPatch(void)::onceToken != -1)
    {
      dispatch_once(&re::GraphicsFeatureFlags::enableDepthPatch(void)::onceToken, &__block_literal_global_10_3);
    }

    v107 = v18;
    v104 = i;
    if (re::GraphicsFeatureFlags::enableDepthPatch(void)::gEnableDepthPatch == 1 && v135)
    {
      v32 = 0;
      v103 = "N2re14DepthPatchDataE" & 0x7FFFFFFFFFFFFFFFLL;
      a12 = 12;
      v105 = vdupq_n_s32(0x3D4CCCCDu);
      v106 = vdupq_n_s32(0xBD4CCCCD);
      while (1)
      {
        v33 = (v136 + 12 * v32);
        if (v137 <= *(v33 + 4))
        {
          break;
        }

        v34 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*(&v136 + 1) + 24 * *(v33 + 4)), *v33);
        a14 = *(v34 + 161);
        if (a14 & 0x40 | *(v34 + 193) & 1)
        {
          a3 = v34;
          if (*(v34 + 15) != -1 || (v46 = v34[29]) != 0 && *v46)
          {
            if (v34[4])
            {
              a5 = re::RenderGraphDataStore::tryGet<re::DepthPatchData>(*(v17 + 1168), *(*(v17 + 40) + 48));
              if (!a5)
              {
                v35 = "N2re14DepthPatchDataE";
                if (("N2re14DepthPatchDataE" & 0x8000000000000000) != 0)
                {
                  v36 = 5381;
                  v37 = ("N2re14DepthPatchDataE" & 0x7FFFFFFFFFFFFFFFLL);
                  do
                  {
                    v35 = v36;
                    v38 = *v37++;
                    v36 = (33 * v36) ^ v38;
                  }

                  while (v38);
                }

                v39 = *(*v17 + 32);
                v40 = *(v17 + 1168);
                v142.i64[0] = (*(*(v17 + 40) + 48) + (v35 << 6) + (v35 >> 2) - 0x61C8864680B583E9) ^ v35;
                v41 = (*(**(v40 + 8) + 32))(*(v40 + 8), 96, 8);
                *v41 = &unk_1F5D14838;
                *(v41 + 16) = 0;
                *(v41 + 24) = 0;
                *(v41 + 32) = 0;
                *(v41 + 80) = 0;
                *(v41 + 88) = 0;
                *(v41 + 40) = 0u;
                *(v41 + 56) = 0u;
                *(v41 + 72) = 0;
                *(v41 + 8) = v39;
                re::DynamicArray<re::AABB>::setCapacity((v41 + 8), 0);
                ++*(v41 + 32);
                *(v41 + 48) = v39;
                re::DynamicArray<re::Matrix4x4<float>>::setCapacity((v41 + 48), 0);
                ++*(v41 + 72);
                v112 = v41;
                a5 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v40 + 64, &v142, &v112);
                v18 = v107;
              }

              if ((a14 & 0x40) != 0)
              {
                v42 = a3[4];
                v43 = v42[1];
                v142 = *v42;
                v142 = vaddq_f32(v142, v106);
                *v143 = vaddq_f32(v43, v105);
                v44 = &a5->u32[2];
                v45 = &v142;
              }

              else
              {
                v45 = a3[4];
                v44 = &a5->u32[2];
              }

              re::DynamicArray<re::AABB>::add(v44, v45);
              a14 = (a14 & 0x40) == 0;
              re::DynamicArray<re::Matrix4x4<float>>::add(&a5[3], (a3 + 10));
              a5[5].i8[8] |= a14;
            }
          }
        }

        if (++v32 >= v135)
        {
          goto LABEL_30;
        }
      }

      re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v33 + 4), v137);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v87, v92);
      __break(1u);
    }

    else
    {
LABEL_30:
      re::DrawTableSlice::DrawTableSlice(&v142, v15);
      v112 = v108;
      v113 = &v142;
      v47 = *(v111[0] + 80);
      v114 = *(v111[0] + 40);
      v115 = v47;
      v116.n128_u64[0] = v109;
      v116.n128_u8[8] = *(v111[0] + 160);
      v116.n128_u8[9] = BYTE4(v110);
      v116.n128_u8[10] = *a9;
      if (v116.n128_u8[10] == 1)
      {
        v116.n128_u8[11] = a9[1];
      }

      v116.n128_u16[6] = a10;
      HIBYTE(v118) = 0;
      v119 = v104;
      LOBYTE(v120) = a13;
      re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v17, buf);
      re::RenderGraphContext::encodeDrawCalls(v17, buf, &v112, v48, v49, v50, v51, v52, v86, v91, v96, v98, v100, v102, v103, v104, v105.i64[0], v105.i64[1], v106.i64[0], v106.i64[1], v107, v108, v109, v110, v111[0], v111[1], v112, v113, v114, v115, *&v116, v117, v118, v119, v120, *v121, *&v121[8], *&v121[16], v122, v123, v124, SBYTE1(v124), SBYTE2(v124), SHIBYTE(v124), v125, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136, v137, v138, *buf, *&buf[8], *&buf[16], v140, v141);
      *(v17 + 1553) = 0;
      if (*(v18 + 264) != 1)
      {
        v53 = *(*(v17 + 8) + 96);
        if (v53)
        {
          *buf = 0xD6C08CFBFE435984;
          *&buf[8] = "meshnode:debugDrawOrder";
          HIBYTE(v138) = 0;
          v54 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v53, buf, &v138 + 7);
          if (v54)
          {
            if (buf[0])
            {
              if (buf[0])
              {
              }
            }
          }

          else
          {
            v55 = HIBYTE(v138);
            if (buf[0])
            {
              if (buf[0])
              {
              }
            }

            if (v55)
            {
              v56 = *re::graphicsLogObjects(v54);
              v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
              if (v57)
              {
                v59 = *(v18 + 16);
                *buf = 136315138;
                *&buf[4] = v59;
                _os_log_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEFAULT, "======================== Start Draw MeshNode[%s] ======================== ", buf, 0xCu);
              }

              if (v15[5])
              {
                v60 = 0;
                *&v58 = 134218498;
                *v111 = v58;
                a3 = 2080;
                do
                {
                  a12 = re::BucketArray<re::DrawCall,128ul>::operator[](v15, v60);
                  v18 = *re::graphicsLogObjects(a12);
                  v57 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
                  if (v57)
                  {
                    v61 = *(a12 + 104);
                    v62 = *(a12 + 88);
                    *buf = v111[0];
                    *&buf[4] = v60;
                    *&buf[12] = 2080;
                    *&buf[14] = v61;
                    *&buf[22] = 2048;
                    *&buf[24] = v62;
                    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Draw MeshPart[%zu]{ str:[%s], identifier:[%llu] }", buf, 0x20u);
                  }

                  ++v60;
                }

                while (v60 < v15[5]);
              }

              v63 = *re::graphicsLogObjects(v57);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v65 = *(v107 + 16);
                *buf = 136315138;
                *&buf[4] = v65;
                _os_log_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_DEFAULT, "======================== Finish Draw MeshNode[%s] ======================== ", buf, 0xCu);
              }

              v66 = *(*(v17 + 8) + 80);
              if (v66)
              {
                v67 = v135 == 0;
              }

              else
              {
                v67 = 1;
              }

              if (!v67)
              {
                v68 = 0;
                v69 = 0;
                v71 = *(&v136 + 1);
                v70 = v137;
                v18 = 24;
                do
                {
                  if (v70 <= *(v136 + v68 + 4))
                  {
                    re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v136 + v68 + 4), v70);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v89, v94);
                    __break(1u);
                  }

                  v72 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(v71 + 24 * *(v136 + v68 + 4)), *(v136 + v68));
                  v73 = v72[2].i64[0];
                  DWORD1(v74) = 0;
                  HIDWORD(v74) = 0;
                  *&v74 = v69 / (v135 - 1);
                  *(&v74 + 2) = 1.0 - *&v74;
                  *buf = v74;
                  re::DebugRenderer::drawBox(v66, v72 + 5, v73, buf, 1);
                  ++v69;
                  v68 += 12;
                }

                while (v69 < v135);
              }
            }
          }
        }
      }

      v75 = *(*(v17 + 8) + 96);
      if (!v75)
      {
        break;
      }

      *buf = 0xB960B4B4AE90A1FALL;
      *&buf[8] = "meshnode:debugMeshPartBounds";
      HIBYTE(v138) = 0;
      v76 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v75, buf, &v138 + 7);
      if (v76)
      {
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        break;
      }

      v78 = HIBYTE(v138);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      if (!v78)
      {
        break;
      }

      v17 = *(*(v17 + 8) + 80);
      if (!v17 || !v135)
      {
        break;
      }

      v15 = 0;
      a5 = 0;
      v79 = *(&v136 + 1);
      a14 = v137;
      while (1)
      {
        v80 = *(v15 + v136 + 4);
        if (a14 <= v80)
        {
          break;
        }

        v81 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(v79 + 24 * *(v15 + v136 + 4)), *(v15 + v136));
        v82 = v81[2].i64[0];
        DWORD1(v83) = 0;
        HIDWORD(v83) = 0;
        *&v83 = a5 / (v135 - 1);
        *(&v83 + 2) = 1.0 - *&v83;
        *buf = v83;
        re::DebugRenderer::drawBox(v17, v81 + 5, v82, buf, 1);
        a5 = (a5 + 1);
        v15 = (v15 + 12);
        if (a5 >= v135)
        {
          goto LABEL_72;
        }
      }
    }

    v99 = v80;
    v101 = a14;
    v95 = "operator[]";
    v97 = 264;
    re::internal::assertLog(6, v77, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v88, v93);
    __break(1u);
LABEL_78:
    a1 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((v17 + 1352), *(v18 + 16), v20);
  }

LABEL_72:
  result = v134;
  if (v134)
  {
    if (v136)
    {
      return (*(*v134 + 40))();
    }
  }

  return result;
}

void re::RenderGraphMeshNodeBase::sortMeshParts(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _anonymous_namespace_ *a23, uint64_t a24, uint64_t a25, unint64_t a26, int a27, __n128 *a28, uint64_t a29, uint64_t a30, uint64_t a31, __n128 a32, uint64_t a33, int a34, uint64_t *a35, uint64_t a36, __int128 a37, __int128 a38, __int128 a39, uint64_t a40, uint64_t a41, int a42, char a43, char a44, char a45, char a46, char a47, int a48, __int128 a49, __int128 a50, __int128 a51, __int128 a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, __int16 a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = a3;
  a70 = *MEMORY[0x1E69E9840];
  v76 = 0;
  if (a3)
  {
    v77 = 24 * a3;
    v78 = a2;
    do
    {
      v79 = *v78;
      v78 += 3;
      v76 += *(v79 + 40);
      v77 -= 24;
    }

    while (v77);
  }

  *(a8 + 32) = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *a8 = a7;
  v80 = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(a8, v76);
  ++*(a8 + 24);
  if (*(a6 + 104))
  {
    v81 = 2;
  }

  else
  {
    v81 = 0;
  }

  v371 = v81;
  v82 = *(a4 + 1168);
  v83 = "N2re36VirtualOccluderInvalidationFrameDataE";
  if (("N2re36VirtualOccluderInvalidationFrameDataE" & 0x8000000000000000) != 0)
  {
    v84 = ("N2re36VirtualOccluderInvalidationFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v85 = 5381;
    do
    {
      v83 = v85;
      v86 = *v84++;
      v85 = (33 * v85) ^ v86;
    }

    while (v86);
  }

  v379 = a8;
  v361 = a7;
  v358 = a1;
  if (!*(v82 + 64))
  {
    goto LABEL_18;
  }

  v87 = (*(*(a4 + 40) + 48) + (v83 << 6) + (v83 >> 2) - 0x61C8864680B583E9) ^ v83;
  v88 = *(*(v82 + 72) + 4 * (v87 % *(v82 + 88)));
  if (v88 == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  v89 = *(v82 + 80);
  while (*(v89 + 24 * v88 + 8) != v87)
  {
    v88 = *(v89 + 24 * v88) & 0x7FFFFFFF;
    if (v88 == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }
  }

  v90 = *(v89 + 24 * v88 + 16);
  if (v90)
  {
    v91 = **(v90 + 8);
  }

  else
  {
LABEL_18:
    v91 = 1;
  }

  v375 = v91;
  v365 = v72;
  v366 = a2;
  if (v72)
  {
    v92 = 0;
    v93 = 0;
    do
    {
      if (*(a6 + 32) | *(a6 + 16))
      {
        v94 = 1;
      }

      else
      {
        v94 = *(a6 + 4) != 0;
      }

      v95 = &a2[3 * v92];
      v96 = 1;
      if (!*(v95 + 16) && *(v95 + 15) == 255)
      {
        v96 = *(v95 + 14) != 0;
      }

      if (v94 || *(a6 + 80) != 0 || v96 || (*(a6 + 92) & 1) != 0)
      {
        v80 = *v95;
        if (*(*v95 + 40))
        {
          v97 = 0;
          v98 = 0;
          do
          {
            v99 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v80, v97);
            v100 = v99;
            v101 = *(v99 + 60);
            if (v101 != -1 || (v110 = *(v99 + 232)) != 0 && *v110)
            {
              if (!v94)
              {
                goto LABEL_59;
              }

              v102 = *(v99 + 232);
              if (v102)
              {
                if (*v102)
                {
                  goto LABEL_59;
                }
              }

              v103 = *re::MaterialParameterTableLayers::getTechniqueAtIndex(*(v99 + 40), v101);
              v104 = *(a6 + 16);
              if (v104)
              {
                v105 = (*(a6 + 8) + 24);
                v106 = 32 * v104;
                while (1)
                {
                  *&a50 = *(v105 - 3) >> 1;
                  v107 = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(v103 + 2648, &a50);
                  if (v107)
                  {
                    v108 = *(v105 - 1);
                    if (v108 <= 1 && *v105 && !**v105)
                    {
                      break;
                    }

                    if (*v107 == v108 >> 1)
                    {
                      break;
                    }
                  }

                  v105 += 4;
                  v106 -= 32;
                  if (!v106)
                  {
                    v109 = 1;
                    goto LABEL_49;
                  }
                }
              }

              v109 = 0;
LABEL_49:
              v111 = *(a6 + 32);
              if (v111)
              {
                v112 = (*(a6 + 24) + 24);
                v113 = 32 * v111;
                do
                {
                  *&a50 = *(v112 - 3) >> 1;
                  v114 = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(v103 + 2648, &a50);
                  if (v114)
                  {
                    v115 = *(v112 - 1);
                    if (v115 <= 1 && *v112 && !**v112)
                    {
                      goto LABEL_62;
                    }

                    if (*v114 == v115 >> 1)
                    {
                      goto LABEL_62;
                    }
                  }

                  v112 += 4;
                  v113 -= 32;
                }

                while (v113);
              }

              if ((v109 & 1) == 0)
              {
LABEL_59:
                if (*(v100 + 161) < 0 && *(a6 + 105) == 1)
                {
                  LODWORD(a50) = v98;
                  BYTE4(a50) = v93;
                  BYTE5(a50) = 11;
                  DWORD2(a50) = 0;
                  re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v379, &a50);
                }

                if ((*(v100 + 168) & 1) == 0 && ((v375 & 1) != 0 || (*(a4 + 1120) & 1) != 0 || (*(v100 + 169) & 1) == 0))
                {
                  v116 = *(v100 + 161);
                  if ((v116 & (*(v100 + 208) == 0.0)) != 0)
                  {
                    v117 = 2;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  v118 = (2 * v116) & 4;
                  if ((v116 & 0x10) != 0)
                  {
                    v118 = 4;
                  }

                  v119 = v118 | (v116 >> 2) & 0x18 | v117;
                  if (v119 <= 1)
                  {
                    v119 = 1;
                  }

                  v120 = (v119 & v95[2]) != 0 || (*(v95 + 15) & v119) == 0 || (*(v95 + 14) & ~v119) != 0;
                  if (((*a6 ^ *(v100 + 196)) & *(a6 + 4)) == 0 && !v120)
                  {
                    v121 = *(a6 + 80);
                    if ((!v121 || (*(*v121 + 16))(v121, v100)) && (*(a6 + 92) != 1 || (*(v100 + 161) & 8) != 0 && *(v100 + 172) == *(a6 + 96) && *(v100 + 162) == *(a6 + 100) && *(v100 + 164) == *(a6 + 101)))
                    {
                      LODWORD(a50) = v98;
                      BYTE4(a50) = v93;
                      BYTE5(a50) = v371;
                      DWORD2(a50) = 0;
                      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v379, &a50);
                    }
                  }
                }
              }
            }

LABEL_62:
            v80 = *v95;
            v97 = ++v98;
          }

          while (*(*v95 + 40) > v98);
        }
      }

      else if (*(*v95 + 40))
      {
        v122 = 1;
        do
        {
          LODWORD(a50) = v122 - 1;
          BYTE4(a50) = v93;
          BYTE5(a50) = v371;
          DWORD2(a50) = 0;
          v80 = re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v379, &a50);
        }

        while (*(*v95 + 40) > v122++);
      }

      v92 = ++v93;
      v72 = v365;
      a2 = v366;
    }

    while (v365 > v93);
  }

  if ((v358 - 2) < 2)
  {
    if (v358 == 2)
    {
      v196 = -1;
    }

    else
    {
      v196 = 1;
    }

    v197 = v196;
    v128 = *(v379 + 4);
    v129 = *(v379 + 2);
    a68 = re::globalAllocators(v80)[2];
    a65 = &unk_1F5D14750;
    *&a66 = v197;
    a69 = &a65;
    a28 = 0;
    a25 = 0;
    a26 = 0;
    a27 = 0;
    a24 = v361;
    re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&a24, v129);
    ++a27;
    v198 = re::RenderGraphDataStore::get<re::CameraData>(*(a4 + 1168), *(*(a4 + 40) + 48));
    v125 = a5;
    if (!*(v198 + 48))
    {
      goto LABEL_356;
    }

    v200 = v198;
    re::RenderCamera::computeLocalTransform(&a50, (v198 + 64));
    v212 = vmulq_f32(a52, a52);
    v211.n128_f32[0] = v212.n128_f32[2] + vaddv_f32(v212.n128_u64[0]);
    v212.n128_u64[0] = vrsqrte_f32(v211.n128_u32[0]);
    v212.n128_u64[0] = vmul_f32(v212.n128_u64[0], vrsqrts_f32(v211.n128_u32[0], vmul_f32(v212.n128_u64[0], v212.n128_u64[0])));
    v210.n128_u64[0] = vmul_f32(v212.n128_u64[0], v212.n128_u64[0]);
    v211.n128_u64[0] = vrsqrts_f32(v211.n128_u32[0], v210.n128_u64[0]);
    v212.n128_u64[0] = vmul_f32(v212.n128_u64[0], v211.n128_u64[0]);
    v213 = vmulq_n_f32(vnegq_f32(a52), v212.n128_f32[0]);
    a32 = v213;
    v215 = *(v200 + 64);
    v214 = *(v200 + 72);
    *&a49 = v215;
    *(&a49 + 1) = v214;
    if (a5)
    {
      goto LABEL_358;
    }

    if (!v129)
    {
LABEL_361:
      if (a69)
      {
        (**a69)(a69);
        if (a69 != &a65)
        {
          (*(*a68 + 40))(a68);
        }

        a69 = 0;
      }

      v315 = a28;
      v316 = a26;
      v317 = 126 - 2 * __clz(a26);
      if (a26)
      {
        v318 = v317;
      }

      else
      {
        v318 = 0;
      }

      *(v379 + 2) = 0;
      ++*(v379 + 6);
      if (*(v379 + 1) >= v316)
      {
        if (!v316)
        {
          goto LABEL_389;
        }
      }

      else
      {
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v379, v316);
      }

      v320 = v316 << 6;
      v321 = &v315[2].n128_u8[12];
      do
      {
        LODWORD(a50) = *(v321 - 3);
        BYTE4(a50) = *(v321 - 8);
        BYTE5(a50) = *v321;
        DWORD2(a50) = *(v321 - 1);
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v379, &a50);
        v321 += 64;
        v320 -= 64;
      }

      while (v320);
      goto LABEL_389;
    }

LABEL_195:
    v216.i64[0] = v215;
    v216.i64[1] = v214;
    vars0a = v216;
    v129 = v128 + 12 * v129;
    v349 = v129;
    while (1)
    {
      if (v72 <= *(v128 + 4))
      {
        re::internal::assertLog(6, v201, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v128 + 4), v72);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v329, v335);
        __break(1u);
LABEL_354:
        re::internal::assertLog(6, v133, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v149, v72);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v330, v336);
        __break(1u);
LABEL_355:
        re::internal::assertLog(6, v264, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v273, v72);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v331, v337);
        __break(1u);
LABEL_356:
        re::internal::assertLog(6, v199, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v332, v338);
        __break(1u);
LABEL_357:
        v342 = 0;
        v343 = 0;
        v340 = "operator[]";
        v341 = 389;
        re::internal::assertLog(6, v131, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size");
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v333, v339);
        __break(1u);
LABEL_358:
        a50 = a49;
        a51 = a32;
        if ((*(v125 + 208) & 1) == 0)
        {
          *(v125 + 208) = 1;
        }

        v213 = a50;
        v212 = a51;
        *(v125 + 224) = a50;
        *(v125 + 240) = v212;
        if (!v129)
        {
          goto LABEL_361;
        }

        goto LABEL_195;
      }

      v217 = &a2[3 * *(v128 + 4)];
      v218 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v217, *v128);
      v219 = v218;
      v220 = *(v218 + 32);
      if (*(v218 + 60) != -1 || (v243 = *(v218 + 232)) != 0 && *v243)
      {
        v221 = 0;
        a47 = 0;
        if (v125)
        {
          SortingDebugContextAndReturnIndex = re::DrawCallRecorderGroup::allocateSortingDebugContextAndReturnIndex(v125);
          v221 = 1;
          a47 = 1;
          a48 = SortingDebugContextAndReturnIndex;
        }

        v212 = *(v220 + 16);
        v213 = vcgtq_f32(*v220, v212);
        v213.n128_u32[3] = v213.n128_u32[2];
        v213.n128_u32[0] = vmaxvq_u32(v213);
        if ((v213.n128_u32[0] & 0x80000000) == 0)
        {
          break;
        }
      }

LABEL_279:
      v128 = (v128 + 12);
      if (v128 == v129)
      {
        goto LABEL_361;
      }
    }

    v222 = re::RenderGraphMeshNodeBase::computeSortDistance(v220, v219 + 5, &v219[10], v219 + 9, &a49, &a32, v125, &a47, v213.n128_f64[0], v212.n128_f64[0], v211.n128_f64[0], v210.n128_f64[0], v206.n128_f64[0], v207);
    v223 = v222;
    v224 = v219[10].u8[1];
    if ((v224 | ((v224 & 4) >> 2)))
    {
      v225 = v219[11].f32[0];
    }

    else
    {
      v225 = v222;
    }

    if ((v224 & 8) != 0)
    {
      v226 = v219[10].f32[3];
    }

    else
    {
      v226 = v225;
    }

    v373 = *(v128 + 5);
    if ((v373 & 8) != 0)
    {
      v227 = 3.4028e38;
    }

    else
    {
      v227 = v226;
    }

    if ((v219[10].i8[5] & 1) != 0 || (v228 = v219[11].i64[1]) == 0)
    {
      v369 = 0;
    }

    else
    {
      v230 = *v228;
      v229 = v228[1];
      v231 = vmulq_f32(vsubq_f32(vars0a, v229), *v228);
      v232 = *(v220 + 16);
      v233 = vcgtq_f32(*v220, v232);
      v233.i32[3] = v233.i32[2];
      v234 = vmaxvq_u32(v233);
      v235 = vaddq_f32(*v220, v232);
      v232.i64[0] = 0x3F0000003F000000;
      v232.i64[1] = 0x3F0000003F000000;
      v236 = vmulq_f32(v235, v232);
      if (v234 >= 0)
      {
        v237 = v236.i64[1];
      }

      else
      {
        v237 = 0;
      }

      if (v234 >= 0)
      {
        v238 = *v236.f32;
      }

      else
      {
        v238 = 0;
      }

      *v239.f32 = v238;
      v239.i64[1] = v237;
      v240 = vaddq_f32(v219[8], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v219[5], v238.f32[0]), v219[6], v238, 1), v219[7], v239, 2));
      v241 = vmulq_f32(v230, vsubq_f32(vdivq_f32(v240, vdupq_laneq_s32(v240, 3)), v229));
      *v241.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v241, v241, 8uLL), *&vextq_s8(v231, v231, 8uLL)), vadd_f32(vzip1_s32(*v241.i8, *v231.i8), vzip2_s32(*v241.i8, *v231.i8)));
      if (veor_s8(vdup_lane_s32(*v241.i8, 1), *v241.i8).i32[0] < 0)
      {
        v242 = 1;
      }

      else
      {
        v242 = -1;
      }

      v369 = v242;
    }

    v245 = v219[12].i32[2];
    v244 = v219[12].i32[3];
    v246 = v219[13].f32[0];
    v247 = v224 & (v246 == 0.0);
    if (*(v217 + 8) == 1)
    {
      v248 = 0;
      v249 = 0;
      if ((v224 & (v246 == 0.0)) != 0)
      {
        v250 = 2;
      }

      else
      {
        v250 = 0;
      }

      v251 = (2 * v224) & 4;
      if ((v224 & 0x10) != 0)
      {
        v251 = 4;
      }

      v252 = v251 | (v224 >> 2) & 0x18 | v250;
      if (v252 <= 1)
      {
        v252 = 1;
      }

      do
      {
        if (((v252 >> v248) & 1) != 0 && v249 <= *(v217 + v248 + 9))
        {
          v249 = *(v217 + v248 + 9);
        }

        ++v248;
      }

      while (v248 != 5);
      if ((v224 & 8) == 0)
      {
        goto LABEL_239;
      }
    }

    else
    {
      v249 = 0;
      if ((v224 & 8) == 0)
      {
LABEL_239:
        v377 = 0;
LABEL_245:
        if ((v224 & 4) != 0)
        {
          v254 = v249;
        }

        else
        {
          v254 = 0;
        }

        if (v224)
        {
          if ((v219[10].i8[6] & 1) != 0 || (v224 & 0xA) == 0)
          {
            v254 = v219[12].u32[2];
          }

          else
          {
            v254 = v219[12].u32[2];
            if (v246 != 0.0)
            {
              v255 = v249 | 0x80000000;
              if (*(v217 + 17))
              {
                v254 = v255;
              }

              else
              {
                v254 = v219[12].u32[2];
              }
            }
          }
        }

        v256 = *v128;
        v257 = v219[4].i16[0];
        v351 = v219[13].i32[1];
        v353 = v219[4].i8[2];
        v360 = v219[10].i8[3];
        v363 = *(v128 + 4);
        v355 = v219[10].i8[4];
        v357 = v219[10].i8[2];
        if (a5)
        {
          v262 = a11;
          if (v221)
          {
            v262 = a48;
          }

          a11 = v262;
        }

        else
        {
          v221 = 0;
        }

        if ((a43 & 1) != 0 || *(a6 + 88) == 1)
        {
          *&a37 = __PAIR64__(LODWORD(v227), v256);
          *(&a37 + 2) = v225;
          HIDWORD(a37) = v254;
          *&a38 = __PAIR64__(v351, LODWORD(v223));
          WORD4(a38) = v257;
          BYTE10(a38) = 1;
          BYTE11(a38) = v377;
          BYTE12(a38) = v363;
          BYTE13(a38) = v373;
          BYTE14(a38) = v353;
          HIBYTE(a38) = v360;
          LOBYTE(a39) = v357;
          BYTE1(a39) = v355;
          BYTE2(a39) = v369;
          BYTE4(a39) = v221;
          if (v221)
          {
            DWORD2(a39) = a11;
          }

          if (v247 && (v245 != v244 || a44 == 1) && (*(a6 + 88) & 1) == 0)
          {
            BYTE13(a38) = v373 | 1;
          }

          DWORD2(a52) = 0;
          BYTE12(a52) = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 13) = 0;
          *&a50 = a5;
          (*(*a69 + 16))(a69, &a28[4 * a26 - 4], &a37, &a50, v258);
        }

        if (a45 == 1 && (*(a6 + 88) & 1) == 0)
        {
          *&a37 = __PAIR64__(LODWORD(v227), v256);
          *(&a37 + 2) = v225;
          *&a38 = __PAIR64__(v351, LODWORD(v223));
          WORD4(a38) = v257;
          BYTE10(a38) = 1;
          BYTE11(a38) = v377;
          BYTE12(a38) = v363;
          BYTE14(a38) = v353;
          HIBYTE(a38) = v360;
          LOBYTE(a39) = v357;
          BYTE1(a39) = v355;
          BYTE2(a39) = v369;
          BYTE4(a39) = v221;
          if (v221)
          {
            DWORD2(a39) = a11;
          }

          HIDWORD(a37) = v219[12].i32[3];
          BYTE13(a38) = v373 | 2;
          DWORD2(a52) = 0;
          BYTE12(a52) = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 13) = 0;
          *&a50 = a5;
          (*(*a69 + 16))(a69, &a28[4 * a26 - 4], &a37, &a50, v259);
        }

        if (a44 == 1 && (*(a6 + 88) & 1) == 0)
        {
          *&a37 = __PAIR64__(LODWORD(v227), v256);
          *(&a37 + 2) = v225;
          HIDWORD(a37) = v254;
          *&a38 = __PAIR64__(v351, LODWORD(v223));
          WORD4(a38) = v257;
          BYTE11(a38) = v377;
          BYTE12(a38) = v363;
          BYTE14(a38) = v353;
          HIBYTE(a38) = v360;
          LOBYTE(a39) = v357;
          BYTE1(a39) = v355;
          BYTE2(a39) = v369;
          BYTE4(a39) = v221;
          if (v221)
          {
            DWORD2(a39) = a11;
          }

          BYTE10(a38) = 0;
          BYTE13(a38) = v373 | 2;
          DWORD2(a52) = 0;
          BYTE12(a52) = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 13) = 0;
          *&a50 = a5;
          (*(*a69 + 16))(a69, &a28[4 * a26 - 4], &a37, &a50, v260);
        }

        v125 = a5;
        v72 = v365;
        a2 = v366;
        v129 = v349;
        goto LABEL_279;
      }
    }

    v377 = v249;
    if ((v224 & 2) != 0)
    {
      v253 = *(a6 + 89);
      if (v249 > v253)
      {
        LOBYTE(v253) = v249;
      }

      v377 = v253;
    }

    goto LABEL_245;
  }

  v124 = v379;
  v125 = a5;
  if ((v358 - 4) < 2)
  {
    if (v358 == 4)
    {
      v126 = -1;
    }

    else
    {
      v126 = 1;
    }

    v127 = v126;
    v128 = *(v379 + 4);
    v129 = *(v379 + 2);
    a68 = re::globalAllocators(v80)[2];
    a65 = &unk_1F5D147B8;
    *&a66 = v127;
    a69 = &a65;
    a28 = 0;
    a25 = 0;
    a26 = 0;
    a27 = 0;
    a24 = v361;
    re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&a24, v129);
    ++a27;
    v130 = re::RenderGraphDataStore::get<re::CameraData>(*(a4 + 1168), *(*(a4 + 40) + 48));
    if (!*(v130 + 48))
    {
      goto LABEL_357;
    }

    v132 = v130;
    re::RenderCamera::computeLocalTransform(&a50, (v130 + 64));
    v144 = vmulq_f32(a52, a52);
    v143.n128_f32[0] = v144.n128_f32[2] + vaddv_f32(v144.n128_u64[0]);
    v144.n128_u64[0] = vrsqrte_f32(v143.n128_u32[0]);
    v144.n128_u64[0] = vmul_f32(v144.n128_u64[0], vrsqrts_f32(v143.n128_u32[0], vmul_f32(v144.n128_u64[0], v144.n128_u64[0])));
    v142.n128_u64[0] = vmul_f32(v144.n128_u64[0], v144.n128_u64[0]);
    v143.n128_u64[0] = vrsqrts_f32(v143.n128_u32[0], v142.n128_u64[0]);
    v144.n128_u64[0] = vmul_f32(v144.n128_u64[0], v143.n128_u64[0]);
    v145 = vmulq_n_f32(vnegq_f32(a52), v144.n128_f32[0]);
    a32 = v145;
    v147 = *(v132 + 64);
    v146 = *(v132 + 72);
    *&a49 = v147;
    *(&a49 + 1) = v146;
    if (a5)
    {
      a50 = a49;
      a51 = a32;
      if ((*(a5 + 208) & 1) == 0)
      {
        *(a5 + 208) = 1;
      }

      v145 = a50;
      v144 = a51;
      *(a5 + 224) = a50;
      *(a5 + 240) = v144;
      if (v129)
      {
        goto LABEL_100;
      }
    }

    else if (v129)
    {
LABEL_100:
      v148.i64[0] = v147;
      v148.i64[1] = v146;
      vars0 = v148;
      v129 = v128 + 12 * v129;
      v348 = v129;
      do
      {
        v149 = *(v128 + 4);
        if (v72 <= v149)
        {
          goto LABEL_354;
        }

        v150 = &a2[3 * *(v128 + 4)];
        v151 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v150, *v128);
        v152 = v151;
        v153 = *(v151 + 32);
        if (*(v151 + 60) == -1)
        {
          v176 = *(v151 + 232);
          if (!v176 || !*v176)
          {
            goto LABEL_184;
          }
        }

        v154 = 0;
        a47 = 0;
        if (v125)
        {
          v194 = re::DrawCallRecorderGroup::allocateSortingDebugContextAndReturnIndex(v125);
          v154 = 1;
          a47 = 1;
          a48 = v194;
        }

        v144 = *(v153 + 16);
        v145 = vcgtq_f32(*v153, v144);
        v145.n128_u32[3] = v145.n128_u32[2];
        v145.n128_u32[0] = vmaxvq_u32(v145);
        if ((v145.n128_u32[0] & 0x80000000) != 0)
        {
          goto LABEL_184;
        }

        v155 = re::RenderGraphMeshNodeBase::computeSortDistance(v153, v152 + 5, &v152[10], v152 + 9, &a49, &a32, v125, &a47, v145.n128_f64[0], v144.n128_f64[0], v143.n128_f64[0], v142.n128_f64[0], v138.n128_f64[0], v139);
        v156 = v155;
        v157 = v152[10].u8[1];
        if ((v157 | ((v157 & 4) >> 2)))
        {
          v158 = v152[11].f32[0];
        }

        else
        {
          v158 = v155;
        }

        if ((v157 & 8) != 0)
        {
          v159 = v152[10].f32[3];
        }

        else
        {
          v159 = v158;
        }

        v372 = *(v128 + 5);
        if ((v372 & 8) != 0)
        {
          v160 = 3.4028e38;
        }

        else
        {
          v160 = v159;
        }

        if ((v152[10].i8[5] & 1) != 0 || (v161 = v152[11].i64[1]) == 0)
        {
          v368 = 0;
        }

        else
        {
          v163 = *v161;
          v162 = v161[1];
          v164 = vmulq_f32(vsubq_f32(vars0, v162), *v161);
          v165 = *(v153 + 16);
          v166 = vcgtq_f32(*v153, v165);
          v166.i32[3] = v166.i32[2];
          v167 = vmaxvq_u32(v166);
          v168 = vaddq_f32(*v153, v165);
          v165.i64[0] = 0x3F0000003F000000;
          v165.i64[1] = 0x3F0000003F000000;
          v169 = vmulq_f32(v168, v165);
          if (v167 >= 0)
          {
            v170 = v169.i64[1];
          }

          else
          {
            v170 = 0;
          }

          if (v167 >= 0)
          {
            v171 = *v169.f32;
          }

          else
          {
            v171 = 0;
          }

          *v172.f32 = v171;
          v172.i64[1] = v170;
          v173 = vaddq_f32(v152[8], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152[5], v171.f32[0]), v152[6], v171, 1), v152[7], v172, 2));
          v174 = vmulq_f32(v163, vsubq_f32(vdivq_f32(v173, vdupq_laneq_s32(v173, 3)), v162));
          *v174.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v174, v174, 8uLL), *&vextq_s8(v164, v164, 8uLL)), vadd_f32(vzip1_s32(*v174.i8, *v164.i8), vzip2_s32(*v174.i8, *v164.i8)));
          if (veor_s8(vdup_lane_s32(*v174.i8, 1), *v174.i8).i32[0] < 0)
          {
            v175 = 1;
          }

          else
          {
            v175 = -1;
          }

          v368 = v175;
        }

        v177 = v152[12].i32[2];
        v350 = v152[12].i32[3];
        v178 = v152[13].f32[0];
        v179 = v157 & (v178 == 0.0);
        if (*(v150 + 8) == 1)
        {
          v180 = 0;
          v181 = 0;
          if ((v157 & (v178 == 0.0)) != 0)
          {
            v182 = 2;
          }

          else
          {
            v182 = 0;
          }

          v183 = (2 * v157) & 4;
          if ((v157 & 0x10) != 0)
          {
            v183 = 4;
          }

          v184 = v183 | (v157 >> 2) & 0x18 | v182;
          if (v184 <= 1)
          {
            v184 = 1;
          }

          do
          {
            if (((v184 >> v180) & 1) != 0 && v181 <= *(v150 + v180 + 9))
            {
              v181 = *(v150 + v180 + 9);
            }

            ++v180;
          }

          while (v180 != 5);
          if ((v157 & 8) != 0)
          {
LABEL_146:
            v376 = v181;
            if ((v157 & 2) != 0)
            {
              v185 = *(a6 + 89);
              if (v181 > v185)
              {
                LOBYTE(v185) = v181;
              }

              v376 = v185;
            }

            goto LABEL_150;
          }
        }

        else
        {
          v181 = 0;
          if ((v157 & 8) != 0)
          {
            goto LABEL_146;
          }
        }

        v376 = 0;
LABEL_150:
        if ((v157 & 4) != 0)
        {
          v186 = v181;
        }

        else
        {
          v186 = 0;
        }

        if (v157)
        {
          if ((v152[10].i8[6] & 1) != 0 || (v157 & 0xA) == 0)
          {
            v186 = v152[12].u32[2];
          }

          else
          {
            v186 = v152[12].u32[2];
            if (v178 != 0.0)
            {
              v187 = v181 | 0x80000000;
              if (*(v150 + 17))
              {
                v186 = v187;
              }

              else
              {
                v186 = v152[12].u32[2];
              }
            }
          }
        }

        v188 = *v128;
        v189 = v152[13].i32[1];
        v190 = v152[4].i16[0];
        v359 = v152[10].i8[3];
        v362 = *(v128 + 4);
        v356 = v152[10].i8[2];
        v352 = v152[4].i8[2];
        v354 = v152[10].i8[4];
        if (a5)
        {
          v195 = a11;
          if (v154)
          {
            v195 = a48;
          }

          a11 = v195;
        }

        else
        {
          v154 = 0;
        }

        if ((a43 & 1) != 0 || *(a6 + 88) == 1)
        {
          *&a37 = __PAIR64__(LODWORD(v160), v188);
          *(&a37 + 2) = v158;
          HIDWORD(a37) = v186;
          *&a38 = __PAIR64__(v189, LODWORD(v156));
          WORD4(a38) = v190;
          BYTE10(a38) = 1;
          BYTE11(a38) = v376;
          BYTE12(a38) = v362;
          BYTE13(a38) = v372;
          BYTE14(a38) = v352;
          HIBYTE(a38) = v359;
          LOBYTE(a39) = v356;
          BYTE1(a39) = v354;
          BYTE2(a39) = v368;
          BYTE4(a39) = v154;
          if (v154)
          {
            DWORD2(a39) = a11;
          }

          if (v179 && (v177 != v350 || a44 == 1) && (*(a6 + 88) & 1) == 0)
          {
            BYTE13(a38) = v372 | 1;
          }

          a53 = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 14) = 0u;
          *&a50 = a5;
          (*(*a69 + 16))(a69, &a28[4 * a26 - 4], &a37, &a50, v191);
        }

        if (a45 == 1 && (*(a6 + 88) & 1) == 0)
        {
          *&a37 = __PAIR64__(LODWORD(v160), v188);
          *(&a37 + 2) = v158;
          *&a38 = __PAIR64__(v189, LODWORD(v156));
          WORD4(a38) = v190;
          BYTE10(a38) = 1;
          BYTE11(a38) = v376;
          BYTE12(a38) = v362;
          BYTE14(a38) = v352;
          HIBYTE(a38) = v359;
          LOBYTE(a39) = v356;
          BYTE1(a39) = v354;
          BYTE2(a39) = v368;
          BYTE4(a39) = v154;
          if (v154)
          {
            DWORD2(a39) = a11;
          }

          HIDWORD(a37) = v152[12].i32[3];
          BYTE13(a38) = v372 | 2;
          a53 = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 14) = 0u;
          *&a50 = a5;
          (*(*a69 + 16))(a69, &a28[4 * a26 - 4], &a37, &a50, v192);
        }

        if (a44 == 1 && (*(a6 + 88) & 1) == 0)
        {
          *&a37 = __PAIR64__(LODWORD(v160), v188);
          *(&a37 + 2) = v158;
          HIDWORD(a37) = v186;
          *&a38 = __PAIR64__(v189, LODWORD(v156));
          WORD4(a38) = v190;
          BYTE11(a38) = v376;
          BYTE12(a38) = v362;
          BYTE14(a38) = v352;
          HIBYTE(a38) = v359;
          LOBYTE(a39) = v356;
          BYTE1(a39) = v354;
          BYTE2(a39) = v368;
          BYTE4(a39) = v154;
          if (v154)
          {
            DWORD2(a39) = a11;
          }

          BYTE10(a38) = 0;
          BYTE13(a38) = v372 | 2;
          a53 = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 14) = 0u;
          *&a50 = a5;
          (*(*a69 + 16))(a69, &a28[4 * a26 - 4], &a37, &a50, v193);
        }

        v125 = a5;
        v72 = v365;
        a2 = v366;
        v129 = v348;
LABEL_184:
        v128 = (v128 + 12);
      }

      while (v128 != v129);
    }

    if (a69)
    {
      (**a69)(a69);
      if (a69 != &a65)
      {
        (*(*a68 + 40))(a68);
      }

      a69 = 0;
    }

    v315 = a28;
    v322 = a26;
    v323 = 126 - 2 * __clz(a26);
    if (a26)
    {
      v324 = v323;
    }

    else
    {
      v324 = 0;
    }

    v319 = std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,false>(a28, &a28[4 * a26], v324, 1, v134, v135, v136, v137, v145, v144, v143, v142, v328, v334, v340, v341, v138, v139, v140, v141, v342, v343, v344, v345);
    *(v379 + 2) = 0;
    ++*(v379 + 6);
    if (*(v379 + 1) >= v322)
    {
      if (!v322)
      {
        goto LABEL_389;
      }
    }

    else
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v379, v322);
    }

    v325 = v322 << 6;
    v326 = v315 + 3;
    do
    {
      LODWORD(a50) = v326[-1].n128_u32[2];
      WORD2(a50) = v326[-1].n128_u16[6];
      v327 = v326->n128_u32[0];
      v326 += 4;
      DWORD2(a50) = v327;
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v379, &a50);
      v325 -= 64;
    }

    while (v325);
LABEL_389:
    if (v315)
    {
      if (a24)
      {
        (*(*a24 + 40))(a24, v315, v319);
      }
    }

    return;
  }

  if (v358 != 1)
  {
    return;
  }

  v370 = *(*(a4 + 8) + 24);
  a37 = 0u;
  a38 = 0u;
  a39 = 0u;
  a40 = 0;
  a41 = v361;
  v263 = *(v379 + 2);
  a69 = 0;
  a67 = 0;
  LODWORD(a68) = 0;
  a66 = 0;
  a65 = v361;
  re::DynamicArray<re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey>::setCapacity(&a65, v263);
  v374 = a68 + 1;
  LODWORD(a68) = a68 + 1;
  a35 = 0;
  a33 = 0;
  a34 = 0;
  a32 = v361;
  re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&a32, 0);
  ++a34;
  if (*(v379 + 2))
  {
    a2 = 0;
    v129 = 0;
    v128 = &a50;
    do
    {
      v125 = *(v124 + 4);
      v272 = (a2 + v125);
      v273 = *(a2 + v125 + 4);
      if (v72 <= v273)
      {
        goto LABEL_355;
      }

      v274 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v366[3 * *(a2 + v125 + 4)], *v272);
      v275 = v274;
      a6 = *(v274 + 40);
      v276 = *(v274 + 232);
      if (v276 && *v276)
      {
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(&a32, (a2 + v125));
      }

      else
      {
        v264 = *(v274 + 60);
        if (v264 != -1)
        {
          TechniqueAtIndex = re::MaterialParameterTableLayers::getTechniqueAtIndex(*(v274 + 40), v264);
          TechniqueVariant = re::MaterialTechnique::getOrCreateTechniqueVariant(TechniqueAtIndex, 0, 0);
          v378 = TechniqueVariant;
          if (*(a6 + 192) || *(a6 + 104) || *(a6 + 112) || *(a6 + 120) || *(a6 + 152))
          {
            a50 = *(a6 + 104);
            *&a51 = *(a6 + 120);
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&a51 + 8, a6 + 128);
            a58 = *(a6 + 192);
            v279 = v374;
            if (*(TechniqueAtIndex + 40) == 1)
            {
              v280 = TechniqueAtIndex + 48;
            }

            else
            {
              v280 = *TechniqueAtIndex + 8;
            }

            if (*(v280 + 8))
            {
              v281 = *(v280 + 24);
              a47 = 0;
              *&a49 = ((v281 << 6) - 0x61C8864680B583E9 + (v281 >> 2) + re::CombinedDynamicFunctionConstants::hash(&a50, &a47)) ^ v281;
              v282 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v370 + 336), &a49);
              if (v282 != -1)
              {
                v283 = *(v370 + 344);
                goto LABEL_305;
              }

              v282 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&a37, &a49);
              if (v282 == -1)
              {
                a43 = 0;
                re::CombinedDynamicFunctionConstants::combinedMap(&a50, &a43, &a24);
                v296 = re::FunctionConstantsEnumerator::enumerateFunctionConstantSet(v280, &a24);
                re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&a24);
                a24 = v296;
                re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(&a37, &a49, &a24);
              }

              else
              {
                v283 = *(&a37 + 1);
LABEL_305:
                v284 = (v283 + 16 * v282 + 8);
              }

              v378 = re::MaterialTechnique::getOrCreateTechniqueVariant(TechniqueAtIndex, *v284, 0);
            }

            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&a51 + 8);
          }

          else
          {
            v279 = v374;
          }

          v285 = *(*(v275 + 24) + 8);
          if (a67 >= a66)
          {
            v286 = a67 + 1;
            if (a66 < (a67 + 1))
            {
              if (a65)
              {
                v287 = 8;
                if (a66)
                {
                  v287 = 2 * a66;
                }

                if (v287 <= v286)
                {
                  v288 = a67 + 1;
                }

                else
                {
                  v288 = v287;
                }

                re::DynamicArray<re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey>::setCapacity(&a65, v288);
                v279 = a68;
              }

              else
              {
                re::DynamicArray<re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey>::setCapacity(&a65, v286);
                v279 = a68 + 1;
              }
            }
          }

          v289 = a69;
          v290 = a67;
          v291 = (a69 + 32 * a67);
          v291[1] = 0;
          v291[2] = 0;
          *v291 = 0;
          *(v291 + 23) = 0;
          a67 = v290 + 1;
          v292 = v279 + 1;
          LODWORD(a68) = v292;
          v293 = v289 + 32 * (v290 + 1);
          a6 = v293 - 32;
          *(v293 - 8) = *(a2 + v125);
          *(v293 - 4) = *(v272 + 4);
          *(v293 - 2) = *(a2 + v125 + 5);
          LOBYTE(a24) = 0;
          if (*(v275 + 64))
          {
            re::DrawCallSortKey<3ul,unsigned long long>::appendUInt16(v293 - 32, *(v275 + 64), &a24);
            re::DrawCallSortKey<3ul,unsigned long long>::appendUInt8(v293 - 32, *(v275 + 66), &a24);
            LOBYTE(a24) = a24 + 5;
            v294 = a5;
            v295 = v378;
          }

          else
          {
            v295 = v378;
            re::DrawCallSortKey<3ul,unsigned long long>::appendUInt64(v293 - 32, *(**v378 + 2728), &a24);
            v294 = a5;
          }

          v374 = v292;
          re::DrawCallSortKey<3ul,unsigned long long>::appendUInt8(v293 - 32, *(v295 + 18), &a24);
          re::DrawCallSortKey<3ul,unsigned long long>::appendUInt64(v293 - 32, v285, &a24);
          re::DrawCallSortKey<3ul,unsigned long long>::appendBytes(v293 - 32, *(*(v275 + 24) + 488) >> 1, 0, 7uLL, &a24);
          if (v294)
          {
            v297 = v295;
            v298 = re::DrawCallRecorderGroup::allocateSortingDebugContextAndReturnIndex(v294);
            if (v298 <= 0xFE)
            {
              v299 = v298;
              a6 = v297;
              MutableSortingContext = re::DrawCallRecorderGroup::getMutableSortingContext(v294, v298);
              v344 = *(*(v275 + 24) + 488) >> 1;
              re::DynamicString::format(&a50, v294[8], "Technique Sort - IsGroupedTechnique: %d TechniqueGroupID: %d IndexInTechniqueGroup: %d TechniqueAndMaterialNameHash: %zu HSRFlush: %d DescriptorHash: %zu MeshNameHash: %llu ", v301);
              re::DynamicString::operator=(MutableSortingContext, &a50);
              if (a50 && (BYTE8(a50) & 1) != 0)
              {
                (*(*a50 + 40))();
              }

              v302 = *(v275 + 32);
              if (v302)
              {
                v303 = *v302;
                v304 = v302[1];
              }

              else
              {
                v303 = 0uLL;
                v304 = 0uLL;
              }

              *(MutableSortingContext + 32) = v303;
              *(MutableSortingContext + 48) = v304;
              v269 = *(v275 + 80);
              v270 = *(v275 + 96);
              v271 = *(v275 + 112);
              v305 = *(v275 + 128);
              *(MutableSortingContext + 96) = v271;
              *(MutableSortingContext + 112) = v305;
              *(MutableSortingContext + 64) = v269;
              *(MutableSortingContext + 80) = v270;
              if (*(MutableSortingContext + 128) == 1)
              {
                *(MutableSortingContext + 128) = 0;
              }

              *(v293 - 3) = v299;
            }
          }

          v124 = v379;
          v72 = v365;
          v128 = &a50;
        }
      }

      ++v129;
      a2 = (a2 + 12);
    }

    while (v129 < *(v124 + 2));
  }

  v306 = a69;
  v307 = a67;
  v308 = 126 - 2 * __clz(a67);
  if (a67)
  {
    v309 = v308;
  }

  else
  {
    v309 = 0;
  }

  v310.n128_f64[0] = std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,false>(a69, (a69 + 32 * a67), v309, 1, v265, v266, v267, v268, v269, v270, v271);
  *(v124 + 2) = 0;
  ++*(v124 + 6);
  if (v307)
  {
    v311 = 32 * v307;
    v312 = (v306 + 30);
    do
    {
      LODWORD(a50) = *(v312 - 6);
      BYTE4(a50) = *(v312 - 2);
      BYTE5(a50) = *v312;
      DWORD2(a50) = *(v312 - 1);
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v124, &a50);
      v312 += 32;
      v311 -= 32;
    }

    while (v311);
  }

  if (a33)
  {
    v313 = a35;
    v314 = 12 * a33;
    do
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v124, v313);
      v313 = (v313 + 12);
      v314 -= 12;
    }

    while (v314);
  }

  if (a32.n128_u64[0] && a35)
  {
    (*(*a32.n128_u64[0] + 40))(v310);
  }

  if (v306 && a65)
  {
    (*(*a65 + 40))(a65, v306, v310);
  }

  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&a37);
}

uint64_t re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, __int32 a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v257.i32[0] = a6;
  v13 = a4;
  v255 = a2;
  v305 = *MEMORY[0x1E69E9840];
  v259 = a1;
  v256.i64[0] = a3;
  if (!a3)
  {
    goto LABEL_186;
  }

  v258.i64[0] = a9;
  v16 = a2;
  if (*(*(a4 + 24) + 208) != 1)
  {
LABEL_79:
    v49 = 12 * v256.i64[0];
    v16 += 4;
    while (1)
    {
      if (v258.i64[0])
      {
        v66 = re::Slice<re::FilteredMeshPass>::operator[](*a1, a1[1], *v16);
        v67 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v66, *(v16 - 4));
        v68 = v67[3];
        if (v68)
        {
          v69 = *(v68 + 496);
        }

        else
        {
          v69 = 0;
        }

        v70 = *v67;
        v17 = 1;
        v270[0] = 1;
        v271 = *(v16 + 4);
        re::DrawCallMeshPartsDetails::DrawCallMeshPartsDetails(&v282, v258.i64[0], v70, v69, v270);
        v71 = re::DrawCallRecorderGroup::recordDrawCallMeshPartsDetails(re::DrawCallMeshPartsDetails const&)::nextIndex++;
        *v287 = v71;
        re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(v258.i64[0] + 112, v287, &v282);
        v254 = *v287;
        re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v282.i64[1]);
        a1 = v259;
      }

      else
      {
        v17 = 0;
      }

      v50 = a1[1];
      if (v50 <= *v16)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *v16, v50);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v204, v220);
        __break(1u);
LABEL_302:
        v281 = 0;
        v303 = 0u;
        v304 = 0u;
        v302 = 0u;
        memset(v301, 0, sizeof(v301));
        v10 = MEMORY[0x1E69E9C10];
        v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v293 = 136315906;
        v294 = "operator[]";
        v295 = 1024;
        if (v193)
        {
          v194 = 3;
        }

        else
        {
          v194 = 2;
        }

        v296 = 858;
        v297 = 2048;
        v298 = v16;
        v299 = 2048;
        v300 = a5;
        _os_log_send_and_compose_impl(v194, &v281, v301, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v293, 38, v235, v237);
        _os_crash_msg();
        __break(1u);
        goto LABEL_306;
      }

      v51 = *a1 + 24 * *v16;
      v52 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v51, *(v16 - 4));
      v12 = v52;
      if (*(v51 + 18) != 1 || *(v52 + 167) != 1)
      {
        break;
      }

      v53 = *(a10 + 32);
      v54 = *(a10 + 40);
      if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken != -1)
      {
        dispatch_once(&re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken, &__block_literal_global_36);
      }

      a1 = v259;
      if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder != 1 || !v53 || !v54)
      {
        v13 = a4;
        goto LABEL_110;
      }

      v55 = *v12;
      v56 = *(a10 + 48);
      v57 = (*(v12 + 161) >> 6) & 1;
      v58 = (*(v16 + 1) >> 3) & 1;
      v269 = 0;
      *&v203 = &v269;
      v59 = v54;
      v13 = a4;
      re::addPortalDrawcallByEntityId(v55, a5, a4, v53, v59, v56, v57, v58, v203);
LABEL_109:
      a1 = v259;
LABEL_110:
      v16 += 12;
      v49 -= 12;
      if (!v49)
      {
        goto LABEL_186;
      }
    }

    v60 = *(v16 + 1);
    v61 = *a10;
    if (v61 == 1)
    {
      v282 = *(a10 + 1);
      LOBYTE(v283) = *(a10 + 17);
    }

    v62 = *(a10 + 20);
    if (v62 == 1)
    {
      LODWORD(v11) = *(a10 + 24);
    }

    v63 = *v13;
    v261[0] = v17;
    if (v17)
    {
      v262 = v254;
    }

    v263 = v60;
    v264 = v61;
    if (v61)
    {
      v265 = v282;
      v266 = v283;
    }

    v267 = v62;
    if (v62)
    {
      v268 = v11;
    }

    v64 = re::addDrawCall(a5, v52, v63, v257.u32[0], v261);
    a2 = v64;
    *(v64 + 164) = *(a10 + 52);
    if (*(v64 + 176))
    {
      if ((*(a10 + 64) & 1) == 0)
      {
        *(v64 + 176) = 0;
        goto LABEL_107;
      }
    }

    else
    {
      if ((*(a10 + 64) & 1) == 0)
      {
        goto LABEL_107;
      }

      *(v64 + 176) = 1;
    }

    v65 = *(a10 + 96);
    *(v64 + 192) = *(a10 + 80);
    *(v64 + 208) = v65;
LABEL_107:
    if ((*(a5 + 320) & 1) == 0)
    {
      v287[0] = *v16;
      (*(*(a5 + 280) + 16))(a5 + 280, v64, v12, v287);
    }

    goto LABEL_109;
  }

  if (isAutomaticInstancingEnabled(void)::onceToken != -1)
  {
    goto LABEL_325;
  }

  while (1)
  {
    if (isAutomaticInstancingEnabled(void)::g_enableAutomaticInstancing != 1)
    {
      goto LABEL_79;
    }

    v17 = *a10;
    if (v17 == 1)
    {
      v274 = *(a10 + 1);
      v275 = *(a10 + 17);
    }

    v252 = *(a10 + 20);
    if (v252 == 1)
    {
      v244 = *(a10 + 24);
    }

    v251 = *(a10 + 64);
    if (v251 == 1)
    {
      v18 = *(a10 + 96);
      v272 = *(a10 + 80);
      v273 = v18;
    }

    if (v256.i64[0] >= 0x1555555555555556uLL)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 12, v256.i64[0]);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v216, v231);
      __break(1u);
LABEL_327:
      re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_328:
      re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v72, v23);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v217, v232);
      __break(1u);
LABEL_329:
      v301[0].i64[0] = 0;
      v285 = 0u;
      v286 = 0u;
      v283 = 0u;
      v284 = 0u;
      v282 = 0u;
      v199 = MEMORY[0x1E69E9C10];
      v200 = v23;
      v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v287 = 136315906;
      *&v287[4] = "operator[]";
      *&v287[12] = 1024;
      if (v201)
      {
        v202 = 3;
      }

      else
      {
        v202 = 2;
      }

      *&v287[14] = 468;
      *&v287[18] = 2048;
      *&v287[20] = v10;
      *&v287[28] = 2048;
      *&v287[30] = v200;
      _os_log_send_and_compose_impl(v202, v301, &v282, 80, &dword_1E1C61000, v199, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v287, 38, v235, v237);
      _os_crash_msg();
      __break(1u);
LABEL_333:
      re::internal::assertLog(7, v21, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, 0, v73, v23);
      _os_crash("assertion failure: (endIndexExclusive <= m_size) Invalid count. index = %zu, count = %zu, array size = %zu", v218, v233, v236);
      __break(1u);
      goto LABEL_334;
    }

    v243 = *(a10 + 32);
    *v241 = *(a10 + 40);
    v240 = *(a10 + 48);
    v19 = *(a10 + 52);
    v20 = *(*v13 + 32);
    v10 = v256.i64[0];
    v253 = (*(*v20 + 32))(v20, 12 * v256.i64[0], 4);
    if (!v253)
    {
      goto LABEL_327;
    }

    v22 = v256.i64[0] - 1;
    v23 = v256.i64[0];
    v247 = v17;
    v239 = v20;
    if (v256.i64[0] == 1)
    {
      break;
    }

    v24 = v253;
    do
    {
      *(v24 + 8) = 0;
      *v24 = 0;
      v24 += 12;
      --v22;
    }

    while (v22);
    v25 = 0;
    LODWORD(v11) = 0;
    *(v24 + 8) = 0;
    v26 = 2;
    *v24 = 0;
    v27 = 1;
    a10 = 12;
    while (1)
    {
      v13 = v11;
      if (v23 <= v11)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_51;
      }

      v16 = v255 + 12 * v27;
      v12 = v255 + 12 * v11;
      v28 = *(v16 + 4);
      if (v28 != *(v12 + 4))
      {
        goto LABEL_51;
      }

      v29 = v259[1];
      if (v29 <= v28)
      {
        goto LABEL_322;
      }

      v10 = 24;
      v30 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*v259 + 24 * *(v16 + 4)), *v16);
      v32 = *(v12 + 4);
      v33 = v259[1];
      if (v33 <= v32)
      {
        goto LABEL_323;
      }

      if ((v17 = v30, v34 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*v259 + 24 * *(v12 + 4)), *v12), (*(v17 + 167) & 1) == 0) && (*(v34 + 167) & 1) == 0 && ((v35 = *(v17 + 232)) == 0 || !*v35) && ((v36 = *(v34 + 232)) == 0 || !*v36) && (v37 = *(v17 + 24), *(v37 + 524) <= 1) && (v38 = *(v34 + 24), *(v38 + 524) <= 1) && (*(v17 + 48) <= 1u ? (v39 = *(v34 + 48) > 1u) : (v39 = 1), !v39 && *(v17 + 52) == *(v34 + 52) && (v37 == v38 ? (v40 = *(v16 + 5) == *(v12 + 5)) : (v40 = 0), v40 && *(v17 + 196) == *(v34 + 196) && (v21 = *(v17 + 60), v21 == *(v34 + 60)) && ((*(v17 + 56) << 24) | (*(v17 + 57) << 16) | *(v17 + 58)) == ((*(v34 + 56) << 24) | (*(v34 + 57) << 16) | *(v34 + 58)) && v21 != -1 && (v17 = *(v17 + 40), v41 = *(v34 + 40), (v42 = *re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::operator[](*(v17 + 56) + 72, v21)) != 0) && *(*v42 + 2704) && *(v17 + 56) == *(v41 + 56) && *(v17 + 64) == *(v41 + 64) && *(v17 + 72) == *(v41 + 72) && *(v17 + 88) == *(v41 + 88) && *(v17 + 80) == *(v41 + 80) && *(v17 + 232) == *(v41 + 232) && *(v17 + 236) == *(v41 + 236) && *(v17 + 240) == *(v41 + 240) && *(v17 + 244) == *(v41 + 244) && *(v17 + 248) == *(v41 + 248) && *(v17 + 252) == *(v41 + 252) && *(v17 + 256) == *(v41 + 256) && *(v17 + 260) == *(v41 + 260) && (v282.i8[0] = 0, v10 = re::CombinedDynamicFunctionConstants::hash((v17 + 104), &v282), v287[0] = 0, v10 == re::CombinedDynamicFunctionConstants::hash((v41 + 104), v287)) && *(v17 + 200) == *(v41 + 200) && *(v17 + 202) == *(v41 + 202) && re::PortalMeshSceneParams::operator==((v17 + 272), (v41 + 272)) && ((v45 = *(v17 + 96), v46 = *(v41 + 96), v45 == v46) || v45 && v46 && ((*(v45 + 248) + (*(v45 + 72) << 6) + (*(v45 + 72) >> 2) - 0x61C8864680B583E9) ^ *(v45 + 72)) == ((*(v46 + 248) + (*(v46 + 72) << 6) + (*(v46 + 72) >> 2) - 0x61C8864680B583E9) ^ *(v46 + 72))) && (*(v17 + 208) != 1 ? (v47 = 0) : (v47 = *(v17 + 216)), *(v41 + 208) != 1 ? (v48 = 0) : (v48 = *(v41 + 216)), v47 == v48))))
      {
        v16 = v255;
        v23 = v256.i64[0];
      }

      else
      {
LABEL_51:
        v10 = v25;
        v16 = v255;
        v23 = v256.i64[0];
        if (v256.i64[0] <= v25)
        {
          goto LABEL_310;
        }

        v43 = *(v255 + 12 * v11 + 4);
        v44 = v253 + 12 * v25;
        *v44 = v11;
        LODWORD(v11) = v26 - 1;
        ++v25;
        *(v44 + 4) = v26 - 1;
        *(v44 + 8) = v43;
      }

      v27 = v26;
      v39 = v23 > v26++;
      if (!v39)
      {
        goto LABEL_118;
      }
    }

LABEL_309:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v23);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v208, v224);
    __break(1u);
LABEL_310:
    v301[0].i64[0] = 0;
    v285 = 0u;
    v286 = 0u;
    v283 = 0u;
    v284 = 0u;
    v282 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    a10 = v23;
    v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v287 = 136315906;
    *&v287[4] = "operator[]";
    *&v287[12] = 1024;
    if (v195)
    {
      v196 = 3;
    }

    else
    {
      v196 = 2;
    }

    *&v287[14] = 468;
    *&v287[18] = 2048;
    *&v287[20] = v10;
    *&v287[28] = 2048;
    *&v287[30] = a10;
    _os_log_send_and_compose_impl(v196, v301, &v282, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v287, 38, v235, v237);
    _os_crash_msg();
    __break(1u);
LABEL_314:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v17, v23);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v209, v225);
    __break(1u);
LABEL_315:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, v17, v23);
    _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v210, v226);
    __break(1u);
LABEL_316:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v77, v78);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v211, v227);
    __break(1u);
LABEL_317:
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v16, v165);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v212, v228);
    __break(1u);
LABEL_318:
    v277.i64[0] = 0;
    v303 = 0u;
    v304 = 0u;
    v302 = 0u;
    memset(v301, 0, sizeof(v301));
    v10 = MEMORY[0x1E69E9C10];
    v197 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v293 = 136315906;
    v294 = "operator[]";
    v295 = 1024;
    if (v197)
    {
      v198 = 3;
    }

    else
    {
      v198 = 2;
    }

    v296 = 858;
    v297 = 2048;
    v298 = v16;
    v299 = 2048;
    v300 = a5;
    _os_log_send_and_compose_impl(v198, &v277, v301, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v293, 38, v235, v237);
    _os_crash_msg();
    __break(1u);
LABEL_322:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v29);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v213, v229);
    __break(1u);
LABEL_323:
    re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v32, v33);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v214, v230);
    __break(1u);
LABEL_324:
    v235 = "operator[]";
    v237 = 381;
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu");
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v215, "index < m_size");
    __break(1u);
LABEL_325:
    dispatch_once(&isAutomaticInstancingEnabled(void)::onceToken, &__block_literal_global_49);
    a1 = v259;
  }

  LODWORD(v11) = 0;
  v25 = 0;
  *(v253 + 8) = 0;
  *v253 = 0;
LABEL_118:
  v72 = v11;
  if (v23 <= v11)
  {
    goto LABEL_328;
  }

  v10 = v25;
  v13 = a4;
  if (v23 <= v25)
  {
    goto LABEL_329;
  }

  v73 = v25 + 1;
  v74 = *(v16 + 12 * v11 + 4);
  v75 = v253 + 12 * v25;
  *v75 = v11;
  *(v75 + 4) = v23;
  *(v75 + 8) = v74;
  if (v23 < v73)
  {
    goto LABEL_333;
  }

  a10 = v247;
  if (v25 != -1)
  {
    v12 = v253;
    v76 = v253 + 12 * v73;
    v245 = a5 + 280;
    v246 = v76;
    v238 = v16 + 8;
    do
    {
      v17 = *v12;
      if (v23 < v17)
      {
        goto LABEL_314;
      }

      v11 = *(v12 + 4);
      if (v23 < v11)
      {
        goto LABEL_315;
      }

      v16 += 12 * v17;
      v77 = *(v16 + 4);
      v78 = v259[1];
      if (v78 <= v77)
      {
        goto LABEL_316;
      }

      v254 = *(v16 + 4);
      v79 = *v259 + 24 * *(v16 + 4);
      v80 = *v79;
      v81 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v79, *v16);
      v82 = v81;
      if (*(v79 + 18) == 1 && *(v81 + 167) == 1)
      {
        v83 = *v241;
        if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken != -1)
        {
          v121 = v81;
          dispatch_once(&re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken, &__block_literal_global_36);
          v82 = v121;
          v83 = *v241;
        }

        v13 = a4;
        v23 = v256.i64[0];
        if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder == 1 && v243 && v83)
        {
          v84 = v82->n128_u64[0];
          v85 = (v82[10].n128_u8[1] >> 6) & 1;
          v86 = (*(v16 + 5) >> 3) & 1;
          v279[0].i8[0] = 0;
          *&v203 = v279;
          re::addPortalDrawcallByEntityId(v84, a5, a4, v243, v83, v240 & 1, v85, v86, v203);
          v23 = v256.i64[0];
        }

        v16 = v255;
        goto LABEL_175;
      }

      v87 = v258.i32[0];
      if (v258.i64[0])
      {
        v108 = v81;
        v109 = *(v258.i64[0] + 64);
        *(&v284 + 1) = 0;
        v283 = 0uLL;
        LODWORD(v284) = 0;
        v282.i64[0] = v109;
        v282.i64[1] = v109;
        re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(&v282.i64[1], 0);
        LODWORD(v284) = v284 + 1;
        if (v11 != v17)
        {
          v111 = 12 * v11 - 12 * v17;
          v112 = (v238 + 12 * v17);
          while (1)
          {
            v113 = *(v112 - 4);
            v114 = v259[1];
            if (v114 <= v113)
            {
              break;
            }

            v115 = *v112;
            v116 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*v259 + 24 * *(v112 - 4)), *(v112 - 2));
            v117 = v116[3];
            if (v117)
            {
              v118 = *(v117 + 496);
            }

            else
            {
              v118 = 0;
            }

            v119 = *v116;
            LOBYTE(v288) = 1;
            HIDWORD(v288) = v115;
            re::DrawCallMeshPartsDetails::appendPerMeshPartDetails(&v282, v119, v118, &v288);
            v112 += 3;
            v111 -= 12;
            if (!v111)
            {
              goto LABEL_184;
            }
          }

LABEL_334:
          re::internal::assertLog(6, v110, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v113, v114);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v219, v234);
          __break(1u);
        }

LABEL_184:
        v120 = re::DrawCallRecorderGroup::recordDrawCallMeshPartsDetails(re::DrawCallMeshPartsDetails const&)::nextIndex++;
        v293 = v120;
        re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(v258.i64[0] + 112, &v293, &v282);
        v242 = v293;
        re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v282.i64[1]);
        v87 = 1;
        a10 = v247;
        v76 = v246;
        v82 = v108;
      }

      v88 = v11 - v17;
      if (v11 - v17 >= 2)
      {
        v89 = *(v16 + 5);
        if (a10)
        {
          v282 = v274;
          LOBYTE(v283) = v275;
        }

        v90 = *a4;
        v287[0] = v87;
        if (v87)
        {
          *&v287[4] = v242;
        }

        v287[8] = v89;
        v287[9] = a10;
        if (a10)
        {
          *&v287[10] = v282;
          v287[26] = v283;
        }

        v287[28] = v252;
        if (v252)
        {
          *&v287[32] = v244;
        }

        v91 = 0;
        v248 = re::addInstancedDrawCall(a5, v82, v90, v257.u32[0], v11 - v17, v287);
        v92 = *(v248 + 84);
        v93 = 1;
        do
        {
          v11 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v80, *(v16 + 12 * v91));
          v94 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](a5 + 56, v91 + v92);
          v95 = *(v11 + 128);
          v97 = *(v11 + 80);
          v96 = *(v11 + 96);
          v94[2] = *(v11 + 112);
          v94[3] = v95;
          *v94 = v97;
          v94[1] = v96;
          v98 = *(*(v11 + 40) + 96);
          if (v98)
          {
            v99 = v98 + 152;
          }

          else
          {
            v99 = 0;
          }

          *re::BucketArray<re::ConstantTable const*,128ul>::operator[](a5 + 112, v91 + v92) = v99;
          v100 = *(v11 + 208) * *(v11 + 200);
          *re::BucketArray<unsigned int,128ul>::operator[](a5 + 168, v91 + v92) = v100;
          v101 = *(v11 + 216);
          *re::BucketArray<unsigned int,128ul>::operator[](a5 + 224, v91 + v92) = v101;
          v91 = v93;
          v39 = v88 > v93++;
        }

        while (v39);
        v21 = v248;
        *(v248 + 164) = v19;
        if (*(v248 + 176))
        {
          v13 = a4;
          v16 = v255;
          v23 = v256.i64[0];
          a10 = v247;
          v76 = v246;
          if ((v251 & 1) == 0)
          {
            *(v248 + 176) = 0;
            goto LABEL_167;
          }

LABEL_166:
          v105 = v273;
          *(v248 + 192) = v272;
          *(v248 + 208) = v105;
        }

        else
        {
          v13 = a4;
          v16 = v255;
          v23 = v256.i64[0];
          a10 = v247;
          v76 = v246;
          if (v251)
          {
            *(v248 + 176) = 1;
            goto LABEL_166;
          }
        }

LABEL_167:
        if ((*(a5 + 320) & 1) == 0)
        {
          LOBYTE(v293) = v254;
          v106 = *(*v245 + 16);
LABEL_174:
          v106();
          v23 = v256.i64[0];
          goto LABEL_175;
        }

        goto LABEL_175;
      }

      v102 = *(v16 + 5);
      if (a10)
      {
        v282 = v274;
        LOBYTE(v283) = v275;
      }

      v13 = a4;
      v103 = *a4;
      v301[0].i8[0] = v87;
      v16 = v255;
      if (v87)
      {
        v301[0].i32[1] = v242;
      }

      v301[0].i8[8] = v102;
      v301[0].i8[9] = a10;
      if (a10)
      {
        *(v301 + 10) = v282;
        v301[1].i8[10] = v283;
      }

      v301[1].i8[12] = v252;
      if (v252)
      {
        LODWORD(v302) = v244;
      }

      v104 = re::addDrawCall(a5, v82, v103, v257.u32[0], v301);
      v21 = v104;
      *(v104 + 164) = v19;
      if (*(v104 + 176))
      {
        v23 = v256.i64[0];
        if ((v251 & 1) == 0)
        {
          *(v104 + 176) = 0;
          goto LABEL_172;
        }
      }

      else
      {
        v23 = v256.i64[0];
        if ((v251 & 1) == 0)
        {
          goto LABEL_172;
        }

        *(v104 + 176) = 1;
      }

      v107 = v273;
      *(v104 + 192) = v272;
      *(v104 + 208) = v107;
LABEL_172:
      if ((*(a5 + 320) & 1) == 0)
      {
        LOBYTE(v293) = v254;
        v106 = *(*v245 + 16);
        goto LABEL_174;
      }

LABEL_175:
      v12 += 12;
    }

    while (v12 != v76);
  }

  (*(*v239 + 40))(v239, v253);
LABEL_186:
  result = re::RenderGraphDataStore::tryGet<re::CameraData>(*(v13 + 1168), *(*(v13 + 40) + 48));
  if (!result)
  {
    return result;
  }

  v11 = re::RenderGraphDataStore::get<re::CameraData>(*(v13 + 1168), *(*(v13 + 40) + 48));
  v289 = 0;
  v288 = 0;
  v290 = 1;
  v292 = 0;
  v291 = 0;
  *&v287[8] = 0;
  *v287 = 0;
  *&v287[16] = 1;
  v123 = &v287[24];
  *&v287[32] = 0;
  *&v287[24] = 0;
  re::RenderGraphContext::rtAttachmentHandles(v13, *(v13 + 40), v287);
  if (v287[16])
  {
    v125 = &v287[24];
  }

  else
  {
    v125 = *&v287[32];
  }

  if (*&v287[8])
  {
    v126 = &v125[2 * *&v287[8]];
    do
    {
      v280[0] = *v125;
      v280[1] = v125[1];
      v124 = re::RenderGraphResourceDescriptions::targetDescription(*(*(v13 + 1176) + 168), v280);
      v127 = v124[104];
      if (v127)
      {
        break;
      }

      v125 += 2;
    }

    while (v125 != v126);
  }

  else
  {
    v127 = 0;
  }

  if (!*(v13 + 1052) && !*(v13 + 112))
  {
    v128 = 0;
    goto LABEL_228;
  }

  if ((v287[16] & 1) == 0)
  {
    v123 = *&v287[32];
  }

  if (*&v287[8])
  {
    v129 = &v123[16 * *&v287[8]];
    v12 = 0x7FFFFFFFLL;
    do
    {
      v130 = *(v123 + 2);
      v301[0].i32[0] = *(v123 + 2);
      if (*(a4 + 1052))
      {
        v131 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v130 ^ (v130 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v130 ^ (v130 >> 30))) >> 27));
        v124 = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>(a4 + 1024, v301, v131 ^ (v131 >> 31), &v282);
        if (v282.i32[3] != 0x7FFFFFFF)
        {
          LODWORD(v130) = *(v123 + 2);
          goto LABEL_206;
        }
      }

      else
      {
        v135 = *(a4 + 112);
        if (v135)
        {
          v136 = 112 * v135;
          v137 = (a4 + 128);
          while (*v137 != v130)
          {
            v137 += 28;
            v136 -= 112;
            if (!v136)
            {
              goto LABEL_226;
            }
          }

LABEL_206:
          if (v288)
          {
            v132 = v290;
            if (v290)
            {
              if (v289 - 8 < 0xFFFFFFFFFFFFFFF7)
              {
                v133 = v289 + 1;
                v134 = 16;
LABEL_219:
                if (v134 <= v133)
                {
                  v138 = v133;
                }

                else
                {
                  v138 = v134;
                }

                v124 = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(&v288, v138);
                v132 = v290;
              }
            }

            else if (v289 >= v291)
            {
              v133 = v289 + 1;
              if (v291 < v289 + 1)
              {
                v134 = 2 * v291;
                goto LABEL_219;
              }
            }
          }

          else
          {
            v124 = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(&v288, v289 + 1);
            v132 = v290 + 2;
            v290 += 2;
          }

          v40 = (v132 & 1) == 0;
          v139 = v292;
          v140 = v289;
          if (!v40)
          {
            v139 = &v291;
          }

          *(v139 + v289) = v130;
          v289 = v140 + 1;
          v290 += 2;
        }
      }

LABEL_226:
      v123 += 16;
    }

    while (v123 != v129);
  }

  v128 = v289 != 0;
  v13 = a4;
LABEL_228:
  if ((v127 | v128) != 1)
  {
    goto LABEL_294;
  }

  v17 = *(*(v13 + 40) + 24);
  v10 = *(v11 + 48);
  re::RenderGraphContext::initOccupancyGridIfNecessary(v13, v17);
  v301[0].i64[0] = v17;
  v141 = strlen(v17);
  v254 = v128;
  if (v141)
  {
    MurmurHash3_x64_128(v17, v141, 0, &v282);
    v142 = (v282.i64[1] + (v282.i64[0] << 6) + (v282.i64[0] >> 2) - 0x61C8864680B583E9) ^ v282.i64[0];
  }

  else
  {
    v142 = 0;
  }

  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(v13 + 1072, v301, v142, &v282);
  a5 = v282.u32[3];
  v144 = *(v13 + 1088);
  v282 = 0uLL;
  LODWORD(v283) = 1;
  v284 = 0uLL;
  if (v10)
  {
    v12 = 0;
    v17 = v11 + 64;
    v145 = (v11 + 144);
    while (1)
    {
      v146 = *(v11 + 48);
      if (v146 <= v12)
      {
        break;
      }

      v147 = *(v11 + 128);
      if (v147 <= v12)
      {
        goto LABEL_307;
      }

      re::RenderCamera::computeWorldToScreenMatrix(v17, v145, v301);
      re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::add(&v282, v301);
      ++v12;
      v145 = (v145 + 240);
      v17 += 32;
      if (v10 == v12)
      {
        goto LABEL_237;
      }
    }

LABEL_306:
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v12, v146);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v205, v221);
    __break(1u);
LABEL_307:
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v12, v147);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v206, v222);
    __break(1u);
LABEL_308:
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v152, v153);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v207, v223);
    __break(1u);
    goto LABEL_309;
  }

LABEL_237:
  v148 = v255;
  v149 = v259;
  if (v256.i64[0])
  {
    v150 = v144 + 224 * a5 + 40;
    a10 = v255 + 12 * v256.i64[0];
    v249 = v150 + 16;
    v250 = v150;
    a5 = 24;
    v151.i64[0] = 0x7F0000007FLL;
    v151.i64[1] = 0x7F0000007FLL;
    v258 = vnegq_f32(v151);
    do
    {
      v152 = *(v148 + 4);
      v153 = v149[1];
      if (v153 <= v152)
      {
        goto LABEL_308;
      }

      v154 = v148;
      v17 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*v149 + 24 * *(v148 + 4)), *v148);
      v155 = *(v17 + 40);
      if (v155)
      {
        v143 = *(v17 + 60);
        if (v143 != -1)
        {
          v156 = *(v17 + 32);
          TechniqueAtIndex = re::MaterialParameterTableLayers::getTechniqueAtIndex(v155, v143);
          if (TechniqueAtIndex)
          {
            v158 = *TechniqueAtIndex;
            if (*TechniqueAtIndex)
            {
              if ((*(v17 + 193) & 2) == 0)
              {
                v159 = *(v158 + 2480);
                v160 = (v159 & 1) != 0 ? v159 >> 1 : v159 >> 1;
                v161 = *(v158 + 108);
                if (v160 && v161 != 0)
                {
                  re::MeshPart::computeTriangleCount(*(v17 + 24));
                  if (v163)
                  {
                    v164 = vcgtq_f32(*v156, v156[1]);
                    v164.i32[3] = v164.i32[2];
                    if ((vmaxvq_u32(v164) & 0x80000000) == 0)
                    {
                      v255 = v154;
                      re::AABB::transform(v156, (v17 + 80), v279);
                      if (v10)
                      {
                        v16 = 0;
                        while (1)
                        {
                          v165 = *(v11 + 48);
                          if (v165 <= v16)
                          {
                            goto LABEL_317;
                          }

                          a5 = v282.u64[1];
                          if (v282.i64[1] <= v16)
                          {
                            goto LABEL_318;
                          }

                          v166 = &v284;
                          if ((v283 & 1) == 0)
                          {
                            v166 = *(&v284 + 1);
                          }

                          re::AABB::transform(v279, &v166[4 * v16], &v277);
                          v167 = v277;
                          v168 = v278;
                          v167.i32[3] = 0;
                          v169 = vmaxnmq_f32(v167, 0);
                          v169.i32[3] = 0;
                          v170 = vminnmq_f32(v169, xmmword_1E304F3C0);
                          v168.i32[3] = 0;
                          v171 = vmaxnmq_f32(v168, 0);
                          v171.i32[3] = 0;
                          v256 = vminnmq_f32(v171, xmmword_1E304F3C0);
                          v257 = v170;
                          v277 = v170;
                          v278 = v256;
                          if (v127)
                          {
                            if (*v250 <= v16)
                            {
                              goto LABEL_324;
                            }

                            re::FixedOccupancyGrid::setOccupied(v249 + 80 * v16, &v277, (*(v17 + 196) >> 17) & 3);
                          }

                          if (v254)
                          {
                            v12 = ((v290 & 1) != 0 ? &v291 : v292);
                            if (v289)
                            {
                              break;
                            }
                          }

LABEL_288:
                          ++v16;
                          v13 = a4;
                          a5 = 24;
                          if (v16 == v10)
                          {
                            goto LABEL_289;
                          }
                        }

                        v13 = v12 + 4 * v289;
                        v172 = v257;
                        v172.i32[3] = 0;
                        v257 = v172;
                        v173 = v256;
                        v173.i32[3] = 0;
                        v256 = v173;
                        while (2)
                        {
                          v276 = *v12;
                          v174 = re::SmallHashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,8ul,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false>::tryGet(a4 + 96, &v276);
                          v175 = v174;
                          a5 = *(v174 + 8);
                          v176.i64[0] = 0x7F0000007FLL;
                          v176.i64[1] = 0x7F0000007FLL;
                          v177 = v258;
                          if (a5 < v10)
                          {
                            if (*v174)
                            {
                              if ((*(v174 + 16) & 1) == 0)
                              {
                                goto LABEL_272;
                              }

LABEL_274:
                              v178 = 2;
                            }

                            else
                            {
                              re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(v175, v10);
                              v177 = v258;
                              v176.i64[0] = 0x7F0000007FLL;
                              v176.i64[1] = 0x7F0000007FLL;
                              v179 = *(v175 + 16) + 2;
                              *(v175 + 16) = v179;
                              if (v179)
                              {
                                goto LABEL_274;
                              }

LABEL_272:
                              v178 = *(v175 + 32);
                            }

                            if (v178 < v10)
                            {
                              re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(v175, v10);
                              v177 = v258;
                              v176.i64[0] = 0x7F0000007FLL;
                              v176.i64[1] = 0x7F0000007FLL;
                            }

                            v180 = *(v175 + 8);
                            v181 = v10 - v180;
                            if (v10 > v180)
                            {
                              v182 = 32 * v180;
                              do
                              {
                                v183 = v175 + 32;
                                if ((*(v175 + 16) & 1) == 0)
                                {
                                  v183 = *(v175 + 40);
                                }

                                v184 = (v183 + v182);
                                *v184 = v177;
                                v184[1] = v176;
                                v182 += 32;
                                --v181;
                              }

                              while (v181);
                            }

                            *(v175 + 8) = v10;
                            *(v175 + 16) += 2;
                            a5 = v10;
                          }

                          if (a5 <= v16)
                          {
                            goto LABEL_302;
                          }

                          if (*(v175 + 16))
                          {
                            v185 = v175 + 32;
                          }

                          else
                          {
                            v185 = *(v175 + 40);
                          }

                          v186 = (v185 + 32 * v16);
                          v187 = *v186;
                          v188 = v186[1];
                          v187.i32[3] = 0;
                          v188.i32[3] = 0;
                          *v186 = vminnmq_f32(v187, v257);
                          v186[1] = vmaxnmq_f32(v188, v256);
                          v12 += 4;
                          if (v12 == v13)
                          {
                            goto LABEL_288;
                          }

                          continue;
                        }
                      }

LABEL_289:
                      v189 = *(v13 + 64);
                      v190 = *(v13 + 80);
                      v189.i32[3] = 0;
                      v191 = v279[0];
                      v192 = v279[1];
                      v191.i32[3] = 0;
                      v190.i32[3] = 0;
                      v192.i32[3] = 0;
                      *(v13 + 64) = vminnmq_f32(v189, v191);
                      *(v13 + 80) = vmaxnmq_f32(v190, v192);
                      v154 = v255;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v148 = v154 + 3;
      v149 = v259;
    }

    while (v154 + 3 != a10);
  }

  if (v282.i64[0] && (v283 & 1) == 0)
  {
    (*(*v282.i64[0] + 40))();
  }

LABEL_294:
  if (*v287 && (v287[16] & 1) == 0)
  {
    (*(**v287 + 40))();
  }

  result = v288;
  if (v288)
  {
    if ((v290 & 1) == 0)
    {
      return (*(*v288 + 40))();
    }
  }

  return result;
}

uint64_t re::Slice<re::FilteredMeshPass>::operator[](uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return a1 + 24 * a3;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, a2, v3, v4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
  __break(1u);
  return result;
}

double re::RenderGraphMeshNodeBase::setColorAttachment(uint64_t a1, int a2, uint64_t *a3, __int128 *a4, char a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0x600000001;
  re::RenderGraphMeshNodeBase::removeTargetWritesWithTypes(a1, &v15, 2uLL, a2);
  v12 = *a4;
  v15 = *a3;
  v16 = a3[1];
  v17 = a2;
  v18 = 1;
  v14 = v12;
  v19 = v12;
  v20 = a5;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v15).n128_u64[0];
  if (*a6 == 1)
  {
    v15 = *(a6 + 8);
    v16 = *(a6 + 16);
    v17 = a2;
    v18 = 6;
    v19 = v14;
    v20 = a5;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v15).n128_u64[0];
  }

  return result;
}

double re::RenderGraphMeshNodeBase::setDepthOnlyAttachment(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, float a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0x700000002;
  re::RenderGraphMeshNodeBase::removeTargetWritesWithTypes(a1, &v13, 2uLL, 0);
  *&v9 = LODWORD(a5);
  DWORD2(v9) = 0;
  HIDWORD(v9) = 1.0;
  v13 = *a2;
  v14 = a2[1];
  v15 = 0x200000000;
  v12 = v9;
  v16 = v9;
  v17 = a3;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v13).n128_u64[0];
  if (*a4 == 1)
  {
    v13 = *(a4 + 8);
    v14 = *(a4 + 16);
    v15 = 0x700000000;
    v16 = v12;
    v17 = a3;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v13).n128_u64[0];
  }

  return result;
}

double re::RenderGraphMeshNodeBase::setStencilOnlyAttachment(uint64_t a1, uint64_t *a2, unsigned int a3, char a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0x800000003;
  re::RenderGraphMeshNodeBase::removeTargetWritesWithTypes(a1, &v13, 2uLL, 0);
  *&v10 = a3;
  DWORD2(v10) = 0;
  HIDWORD(v10) = 1.0;
  v13 = *a2;
  v14 = a2[1];
  v15 = 0x300000000;
  v12 = v10;
  v16 = v10;
  v17 = a4;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v13).n128_u64[0];
  if (*a5 == 1)
  {
    v13 = *(a5 + 8);
    v14 = *(a5 + 16);
    v15 = 0x800000000;
    v16 = v12;
    v17 = a4;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v13).n128_u64[0];
  }

  return result;
}

uint64_t *re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(void *a1, uint64_t a2, uint64_t a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v86 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v83, a3, 3);
  if (!a1[30])
  {
    v9 = 0;
    v42 = 0;
    v44 = 0;
    v8 = 0;
    v41 = 0;
    v43 = 0;
    goto LABEL_85;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = (a1[32] + (v7 << 6));
    v12 = *(v11 + 5);
    if (v12 <= 5)
    {
      if (v12 != 1)
      {
        if (v12 == 2)
        {
          if (v8)
          {
            if (v67)
            {
              v19 = a1[2];
              v77 = 0;
              v78 = -1;
              v77 = *v11;
              v78 = v11[1];
              re::RenderGraphCompiled::targetName(a2, &v77, &v88);
              re::DynamicString::format(&v94, "(%s): Cannot bind more than one depth target. Using target %s.", v20, v19, *&v89[4]);
              re::RenderGraphCompiled::addError(a2, &v94);
              v21 = v94;
              if (v94)
              {
                if (BYTE8(v94))
                {
                  v21 = (*(*v94 + 40))(v94, v95);
                }

                v94 = 0u;
                v95 = 0u;
              }

              if (v88)
              {
                if (v88)
                {
                }
              }
            }
          }

          else
          {
            v3 = 0;
          }

          v8 = 1;
          v67 = 1;
          v64 = v10 - 1;
        }

        else
        {
          if (v12 != 3)
          {
            goto LABEL_129;
          }

          if (v9)
          {
            if (v68)
            {
              v13 = a1[2];
              v73 = 0;
              v74 = -1;
              v73 = *v11;
              v74 = v11[1];
              re::RenderGraphCompiled::targetName(a2, &v73, &v88);
              re::DynamicString::format(&v94, "(%s): Cannot bind more than one stencil target. Using target %s.", v14, v13, *&v89[4]);
              re::RenderGraphCompiled::addError(a2, &v94);
              v15 = v94;
              if (v94)
              {
                if (BYTE8(v94))
                {
                  v15 = (*(*v94 + 40))(v94, v95);
                }

                v94 = 0u;
                v95 = 0u;
              }

              if (v88)
              {
                if (v88)
                {
                }
              }
            }
          }

          else
          {
            v70 = 0;
          }

          v9 = 1;
          v68 = 1;
          v66 = v10 - 1;
        }

        goto LABEL_71;
      }

      v25 = *(v11 + 4);
      re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v94, &v83, *(v11 + 4));
      if (HIDWORD(v94) == 0x7FFFFFFF)
      {
        LOBYTE(v94) = 1;
        DWORD1(v94) = v10 - 1;
        BYTE8(v94) = 0;
LABEL_50:
        re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(&v83, v11 + 4, &v94);
        goto LABEL_71;
      }

      re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v94, &v83, v25);
      v27 = v84;
      if (*(v84 + 32 * HIDWORD(v94) + 8) == 1)
      {
        v61 = v3;
        v28 = a1[2];
        v81 = 0;
        v82 = -1;
        v81 = *v11;
        v82 = v11[1];
        re::RenderGraphCompiled::targetName(a2, &v81, &v88);
        re::DynamicString::format(&v94, "(%s): Cannot bind more than one color target to attachmentIndex %u. Using target %s.", v29, v28, v25, *&v89[4]);
        re::RenderGraphCompiled::addError(a2, &v94);
        v30 = v94;
        if (v94)
        {
          if (BYTE8(v94))
          {
            v30 = (*(*v94 + 40))(v94, v95);
          }

          v94 = 0u;
          v95 = 0u;
        }

        if (v88)
        {
          if (v88)
          {
          }
        }

        LODWORD(v25) = *(v11 + 4);
        v3 = v61;
      }

      re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v94, &v83, v25);
      v31 = v27 + 32 * HIDWORD(v94);
      v33 = *(v31 + 8);
      v32 = v31 + 8;
      if ((v33 & 1) == 0)
      {
LABEL_69:
        *v32 = 1;
      }

LABEL_70:
      *(v32 + 4) = v10 - 1;
      goto LABEL_71;
    }

    switch(v12)
    {
      case 6:
        v26 = *(v11 + 4);
        re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v94, &v83, *(v11 + 4));
        if (HIDWORD(v94) == 0x7FFFFFFF)
        {
          LOBYTE(v94) = 0;
          BYTE8(v94) = 1;
          HIDWORD(v94) = v10 - 1;
          goto LABEL_50;
        }

        re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v94, &v83, v26);
        v35 = v84;
        if (*(v84 + 32 * HIDWORD(v94) + 16) == 1)
        {
          v62 = v3;
          v36 = a1[2];
          v79 = 0;
          v80 = -1;
          v79 = *v11;
          v80 = v11[1];
          re::RenderGraphCompiled::targetName(a2, &v79, &v88);
          re::DynamicString::format(&v94, "(%s): Cannot bind more than one color resolve target to attachmentIndex %u. Using target %s.", v37, v36, v26, *&v89[4]);
          re::RenderGraphCompiled::addError(a2, &v94);
          v38 = v94;
          if (v94)
          {
            if (BYTE8(v94))
            {
              v38 = (*(*v94 + 40))(v94, v95);
            }

            v94 = 0u;
            v95 = 0u;
          }

          if (v88)
          {
            if (v88)
            {
            }
          }

          LODWORD(v26) = *(v11 + 4);
          v3 = v62;
        }

        re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v94, &v83, v26);
        v39 = v35 + 32 * HIDWORD(v94);
        v40 = *(v39 + 16);
        v32 = v39 + 16;
        if ((v40 & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      case 7:
        if (v8)
        {
          if (v3)
          {
            v22 = a1[2];
            v75 = 0;
            v76 = -1;
            v75 = *v11;
            v76 = v11[1];
            re::RenderGraphCompiled::targetName(a2, &v75, &v88);
            re::DynamicString::format(&v94, "(%s): Cannot bind more than one depth resolve target. Using target %s.", v23, v22, *&v89[4]);
            re::RenderGraphCompiled::addError(a2, &v94);
            v24 = v94;
            if (v94)
            {
              if (BYTE8(v94))
              {
                v24 = (*(*v94 + 40))(v94, v95);
              }

              v94 = 0u;
              v95 = 0u;
            }

            if (v88)
            {
              if (v88)
              {
              }
            }
          }
        }

        else
        {
          v67 = 0;
        }

        v8 = 1;
        v3 = 1;
        v63 = v10 - 1;
        break;
      case 8:
        if (v9)
        {
          if (v70)
          {
            v16 = a1[2];
            v71 = 0;
            v72 = -1;
            v71 = *v11;
            v72 = v11[1];
            re::RenderGraphCompiled::targetName(a2, &v71, &v88);
            re::DynamicString::format(&v94, "(%s): Cannot bind more than one stencil resolve target. Using target %s.", v17, v16, *&v89[4]);
            re::RenderGraphCompiled::addError(a2, &v94);
            v18 = v94;
            if (v94)
            {
              if (BYTE8(v94))
              {
                v18 = (*(*v94 + 40))(v94, v95);
              }

              v94 = 0u;
              v95 = 0u;
            }

            if (v88)
            {
              if (v88)
              {
              }
            }
          }
        }

        else
        {
          v68 = 0;
        }

        v9 = 1;
        v70 = 1;
        v65 = v10 - 1;
        break;
      default:
        goto LABEL_129;
    }

LABEL_71:
    v7 = v10;
  }

  while (a1[30] > v10++);
  v4 = v3;
  v41 = v64;
  v42 = v66;
  v43 = v63;
  v44 = v65;
LABEL_85:
  if (!HIDWORD(v84) && (v8 & 1) == 0 && (v9 & 1) == 0)
  {
    re::DynamicString::format(&v94, "(%s): No attachments are bound.", v6, a1[2]);
    re::RenderGraphCompiled::addError(a2, &v94);
    if (v94)
    {
      if (BYTE8(v94))
      {
        (*(*v94 + 40))(v94, v95);
      }
    }
  }

  if ((v8 & v9 & 1) == 0)
  {
    return re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(&v83);
  }

  v45 = a1[30];
  if (v45 <= v41)
  {
    v87 = 0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v88 = 136315906;
    *v89 = "operator[]";
    *&v89[8] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v89[10] = 797;
    v90 = 2048;
    v91 = v41;
    v92 = 2048;
    v93 = v45;
    _os_log_send_and_compose_impl(v49, &v87, &v94, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v59, v60);
    _os_crash_msg();
    __break(1u);
    goto LABEL_117;
  }

  if (v45 <= v42)
  {
LABEL_117:
    v87 = 0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v88 = 136315906;
    *v89 = "operator[]";
    *&v89[8] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v89[10] = 797;
    v90 = 2048;
    v91 = v42;
    v92 = 2048;
    v93 = v45;
    _os_log_send_and_compose_impl(v52, &v87, &v94, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v59, v60);
    _os_crash_msg();
    __break(1u);
    goto LABEL_121;
  }

  if (*(a1[32] + (v41 << 6) + 8) != *(a1[32] + (v42 << 6) + 8))
  {
    re::DynamicString::format(&v94, "(%s): Depth and stencil attachment, if both bound, must use the same target", v6, a1[2]);
    re::RenderGraphCompiled::addError(a2, &v94);
    if (v94)
    {
      if (BYTE8(v94))
      {
        (*(*v94 + 40))(v94, v95);
      }
    }
  }

  if (v4)
  {
    if (v70)
    {
      goto LABEL_106;
    }

LABEL_102:
    re::DynamicString::format(&v94, "(%s): Depth and stencil either both use the same resolve target, or don't use resolve target at all.", v6, a1[2]);
    re::RenderGraphCompiled::addError(a2, &v94);
    if (v94 && (BYTE8(v94) & 1) != 0)
    {
      (*(*v94 + 40))(v94, v95);
    }

    if (v4)
    {
LABEL_106:
      v45 = a1[30];
      if (v45 > v43)
      {
        if (v45 > v44)
        {
          if (*(a1[32] + (v43 << 6) + 8) != *(a1[32] + (v44 << 6) + 8))
          {
            re::DynamicString::format(&v94, "(%s): Depth and stencil either both use the same resolve target, or don't use resolve target at all.", v6, a1[2]);
            re::RenderGraphCompiled::addError(a2, &v94);
            if (v94)
            {
              if (BYTE8(v94))
              {
                (*(*v94 + 40))(v94, v95);
              }
            }
          }

          return re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(&v83);
        }

LABEL_125:
        v87 = 0;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v94 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        *v89 = "operator[]";
        *&v89[8] = 1024;
        if (v57)
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }

        *&v89[10] = 797;
        v90 = 2048;
        v91 = v44;
        v92 = 2048;
        v93 = v45;
        _os_log_send_and_compose_impl(v58, &v87, &v94, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v59, v60);
        _os_crash_msg();
        __break(1u);
LABEL_129:
        re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Invalid RenderGraphResourceOperationType for RenderGraphMeshNode.", "!Unreachable code", "validateAttachmentsDuringGraphBuild", 967);
        _os_crash("assertion failure: (!Unreachable code) Invalid RenderGraphResourceOperationType for RenderGraphMeshNode.");
        __break(1u);
      }

LABEL_121:
      v87 = 0;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      *v89 = "operator[]";
      *&v89[8] = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      *&v89[10] = 797;
      v90 = 2048;
      v91 = v43;
      v92 = 2048;
      v93 = v45;
      _os_log_send_and_compose_impl(v55, &v87, &v94, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v59, v60);
      _os_crash_msg();
      __break(1u);
      goto LABEL_125;
    }
  }

  else if (v70)
  {
    goto LABEL_102;
  }

  return re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(&v83);
}

uint64_t re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v9, a1, *a2);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v10, v9);
    *(result + 4) = *a2;
    v7 = *a3;
    *(result + 8) = v7;
    if (v7 == 1)
    {
      *(result + 12) = *(a3 + 1);
    }

    v8 = a3[8];
    *(result + 16) = v8;
    if (v8 == 1)
    {
      *(result + 20) = *(a3 + 3);
    }

    ++*(a1 + 40);
  }

  return result;
}

uint64_t *re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
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

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void re::RenderGraphMeshNodeBase::validateAttachmentsPerFrame(void *a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = a1[30];
  if (!v2)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  LODWORD(v8) = 0;
  v9 = 0;
  v46 = 0;
  memset(v52, 0, sizeof(v52));
  v49 = 0xFFFFFFFFLL;
  v47 = 0xFFFFFFFFLL;
  v48 = 0xFFFFFFFFLL;
  v45 = 0xFFFFFFFFLL;
  while (1)
  {
    v10 = a1[32];
    v11 = v10 + v5;
    if (*(v10 + v5 + 8) == -1 || *(v11 + 12) == -1)
    {
      goto LABEL_78;
    }

    if (v2 <= v6)
    {
      v50 = 0;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v54 = 136315906;
      v55 = "operator[]";
      v56 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v57 = 797;
      v58 = 2048;
      v59 = v6;
      v60 = 2048;
      v61 = v2;
      _os_log_send_and_compose_impl(v33, &v50, &v62, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
LABEL_94:
      v53 = 0;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v54 = 136315906;
      v55 = "operator[]";
      v56 = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v57 = 468;
      v58 = 2048;
      v59 = v2;
      v60 = 2048;
      v61 = v17;
      _os_log_send_and_compose_impl(v36, &v53, &v62, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
LABEL_98:
      v53 = 0;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v54 = 136315906;
      v55 = "operator[]";
      v56 = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v57 = 797;
      v58 = 2048;
      v59 = v6;
      v60 = 2048;
      v61 = v9;
      _os_log_send_and_compose_impl(v39, &v53, &v62, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
LABEL_102:
      v53 = 0;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v54 = 136315906;
      v55 = "operator[]";
      v56 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v57 = 797;
      v58 = 2048;
      v59 = v6;
      v60 = 2048;
      v61 = v9;
      _os_log_send_and_compose_impl(v42, &v53, &v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
    }

    v12 = v10 + v5;
    v13 = *(v12 + 20);
    if (v13 == 5)
    {
      goto LABEL_78;
    }

    v14 = *(v12 + 16);
    re::RenderGraphResourceDescriptions::targetDescriptionSource(*(a2 + 168), v11, &v50);
    v2 = v51;
    v16 = a2;
    v17 = *(a2 + 8);
    if (v17 <= v51)
    {
      goto LABEL_94;
    }

    v18 = (*(v16 + 16) + 112 * v51);
    a2 = v16;
    if (v9)
    {
      v19 = v49;
      if (v18[3] != v48)
      {
        v44 = v18[3];
        v43 = v48;
        re::DynamicString::format(&v62, "(%s): Multiple render targets don't have the same width: AttachmentIndex %d: %d, expected %d.", v15, a1[2], v14);
        re::RenderGraphExecutable::addError(a2, &v62);
        if (v62)
        {
          if (BYTE8(v62))
          {
            (*(*v62 + 40))(v62, v63);
          }
        }
      }

      if (v18[4] != v47)
      {
        v44 = v18[4];
        v43 = v47;
        re::DynamicString::format(&v62, "(%s): Multiple render targets don't have the same height: AttachmentIndex %d: %d, expected %d.", v15, a1[2], v14);
        re::RenderGraphExecutable::addError(a2, &v62);
        if (v62)
        {
          if (BYTE8(v62))
          {
            (*(*v62 + 40))(v62, v63);
          }
        }
      }

      if (v18[6] != v49)
      {
        v43 = v49;
        v44 = v18[6];
        re::DynamicString::format(&v62, "(%s): Multiple render targets don't have the same arrayLength: AttachmentIndex %d: %d, expected %d.", v15, a1[2], v14);
        re::RenderGraphExecutable::addError(a2, &v62);
        if (v62)
        {
          if (BYTE8(v62))
          {
            (*(*v62 + 40))(v62, v63);
          }
        }
      }
    }

    else
    {
      v19 = v18[6];
      v47 = v18[4];
      v48 = v18[3];
    }

    v49 = v19;
    if (v13 > 8)
    {
      goto LABEL_61;
    }

    v20 = 1 << v13;
    if (((1 << v13) & 0x42) != 0)
    {
      break;
    }

    if ((v20 & 0x84) == 0)
    {
      if ((v20 & 0x108) == 0)
      {
        goto LABEL_61;
      }

      v9 = a1[30];
      if (v9 <= v6)
      {
        goto LABEL_98;
      }

      v21 = v18[1];
      if (*(a1[32] + v5 + 49) == 1)
      {
        if ((v21 - 250) > 0xA)
        {
          goto LABEL_83;
        }

        v22 = 1 << (v21 + 6);
        v23 = 1069;
      }

      else
      {
        if ((v21 - 253) > 9)
        {
          goto LABEL_83;
        }

        v22 = 1 << (v21 + 3);
        v23 = 901;
      }

      if ((v22 & v23) != 0)
      {
LABEL_51:
        v30 = v18[1];
        if (v8)
        {
          v8 = v8;
        }

        else
        {
          v8 = v30;
        }

        if (v30 != v8)
        {
          v43 = v8;
          re::DynamicString::format(&v62, "(%s): Stencil target format and resolve target format don't match (%d vs %d)", v15, a1[2], v18[1]);
          goto LABEL_57;
        }

        LODWORD(v8) = v18[1];
        goto LABEL_61;
      }

LABEL_83:
      re::DynamicString::format(&v62, "(%s): Invalid stencil target format: %d", v15, a1[2], v21, v43, v44);
      re::RenderGraphExecutable::addError(a2, &v62);
      if (v62 && (BYTE8(v62) & 1) != 0)
      {
        (*(*v62 + 40))(v62, v63);
      }

      goto LABEL_51;
    }

    v9 = a1[30];
    if (v9 <= v6)
    {
      goto LABEL_102;
    }

    v24 = v18[1];
    if (*(a1[32] + v5 + 49) == 1)
    {
      v25 = 1069;
    }

    else
    {
      v25 = 1061;
    }

    if ((v24 - 250) > 0xA || ((1 << (v24 + 6)) & v25) == 0)
    {
      re::DynamicString::format(&v62, "(%s): Invalid depth target format: %d", v15, a1[2], v24);
      re::RenderGraphExecutable::addError(a2, &v62);
      if (v62)
      {
        if (BYTE8(v62))
        {
          (*(*v62 + 40))(v62, v63);
        }
      }
    }

    v29 = v18[1];
    if (v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v29;
    }

    if (v29 != v7)
    {
      v43 = v7;
      re::DynamicString::format(&v62, "(%s): Depth target format and resolve target format don't match (%d vs %d)", v15, a1[2], v18[1]);
      goto LABEL_57;
    }

    LODWORD(v7) = v18[1];
LABEL_61:
    if (v13 - 1 > 2)
    {
      if (v13 - 6 <= 2 && (v18[5] != 1 || v18[21] == -1))
      {
        v43 = v18[5];
        re::DynamicString::format(&v62, "(%s): Attachment Index (%d) has resolve target with sample count (%d) > 1, or the resolve target is not pointing at its corresponding MSAA target.", v15, a1[2], v14);
        re::RenderGraphExecutable::addError(a2, &v62);
        if (v62)
        {
          if (BYTE8(v62))
          {
            (*(*v62 + 40))(v62, v63);
          }
        }
      }
    }

    else if ((v46 & (v18[5] != v45)) == 1)
    {
      v43 = v18[5];
      v44 = v45;
      re::DynamicString::format(&v62, "(%s): Attachment Index (%d) has a sample count (%d) that does not match other attachments (%d).", v15, a1[2], v14);
      re::RenderGraphExecutable::addError(a2, &v62);
      if (v62)
      {
        if (BYTE8(v62))
        {
          (*(*v62 + 40))(v62, v63);
        }
      }

      v46 = 1;
    }

    else
    {
      v46 = 1;
      v45 = v18[5];
    }

    v2 = a1[30];
    v9 = 1;
LABEL_78:
    ++v6;
    v5 += 64;
    if (v2 <= v6)
    {
      return;
    }
  }

  if (v14 <= 7)
  {
    v26 = *(v52 + v14);
    v27 = v18[1];
    if (v26)
    {
      if (v27 != v26)
      {
        v43 = v18[1];
        v44 = *(v52 + v14);
        re::DynamicString::format(&v62, "(%s): Attachment Index (%d) target format and resolve target format don't match (%d vs %d)", v15, a1[2], v14);
LABEL_57:
        re::RenderGraphExecutable::addError(a2, &v62);
        if (v62 && (BYTE8(v62) & 1) != 0)
        {
          (*(*v62 + 40))(v62, v63);
        }

        goto LABEL_61;
      }
    }

    else
    {
      *(v52 + v14) = v27;
    }

    goto LABEL_61;
  }

  re::DynamicString::format(&v62, "(%s): Attachment index %d is greater than pixelFormats array fixed size (%d).", v15, a1[2], v14, 8);
  re::RenderGraphExecutable::addError(a2, &v62);
  if (v62 && (BYTE8(v62) & 1) != 0)
  {
    (*(*v62 + 40))(v62, v63);
  }
}

uint64_t re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7)
{
  v14 = re::RenderGraphDataStore::get<re::CameraData>(*(a4 + 1168), *(*(a4 + 40) + 48));
  re::RenderGraphDataStore::get<re::CameraMatrices>(*(a4 + 1168), *(*(a4 + 40) + 48));
  v17 = *(v14 + 890);
  v20 = *a7;
  if (v20 == 1)
  {
    v21 = *(a7 + 1);
    v22 = a7[17];
  }

  v23 = a7[20];
  if (v23 == 1)
  {
    v24 = *(a7 + 6);
  }

  v25 = *(a7 + 2);
  v26 = *(a7 + 6);
  v27 = a7[64];
  if (v27 == 1)
  {
    v18 = *(a7 + 6);
    v28 = *(a7 + 5);
    v29 = v18;
  }

  return re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(a1, a2, a3, a4, a5, v17, v15, v16, a6, &v20);
}

void ___Z28isAutomaticInstancingEnabledv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue(&v5, "enableAutomaticInstancing", a2);
  if (v5)
  {
    isAutomaticInstancingEnabled(void)::g_enableAutomaticInstancing = BYTE1(v5);
    if ((v5 & 0x100) != 0)
    {
      return;
    }
  }

  else if (isAutomaticInstancingEnabled(void)::g_enableAutomaticInstancing)
  {
    return;
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Automatic instancing of draw calls has been disabled.", v4, 2u);
  }
}

__n128 re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::add(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 32;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = v4 + (*(a1 + 8) << 6);
  result = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v8;
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

double re::RenderGraphMeshNodeBase::drawDebugSortPoints(re::RenderGraphMeshNodeBase *this, const re::RenderGraphContext *a2, const re::MeshSortingCollection *a3, double result)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 1) + 96);
  if (v4)
  {
    v38.i64[0] = 0x5960C87A30814232;
    v38.i64[1] = "meshsorting:visualizeRPGSortPoints";
    LOBYTE(v34) = 0;
    v7 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v4, &v38, &v34);
    if (v7)
    {
      if (v38.i8[0])
      {
        if (v38.i8[0])
        {
        }
      }
    }

    else
    {
      v8 = v34;
      if (v38.i8[0])
      {
        if (v38.i8[0])
        {
        }
      }

      if (a3 && v8 && *(*(a2 + 1) + 80))
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        v37 = 0x7FFFFFFFLL;
        v9 = *(a3 + 20);
        if (v9)
        {
          v10 = 0;
          v11 = *(a3 + 8);
          while (1)
          {
            v12 = *v11;
            v11 += 10;
            if (v12 < 0)
            {
              break;
            }

            if (v9 == ++v10)
            {
              LODWORD(v10) = *(a3 + 20);
              break;
            }
          }
        }

        else
        {
          LODWORD(v10) = 0;
        }

        if (v10 == v9)
        {
          v13 = 0;
          __src = 0;
          v30 = 0;
          v31 = 0;
          v29 = 0;
          v32 = 0;
        }

        else
        {
          v14 = *(a3 + 20);
          do
          {
            v38.i64[0] = *(*(a3 + 8) + 40 * v10 + 16);
            if (v38.i64[0])
            {
              re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v34, &v38);
              v14 = *(a3 + 20);
            }

            if (v14 <= v10 + 1)
            {
              v15 = v10 + 1;
            }

            else
            {
              v15 = v14;
            }

            while (v15 - 1 != v10)
            {
              LODWORD(v10) = v10 + 1;
              if ((*(*(a3 + 8) + 40 * v10) & 0x80000000) != 0)
              {
                goto LABEL_31;
              }
            }

            LODWORD(v10) = v15;
LABEL_31:
            ;
          }

          while (v10 != v9);
          v16 = v36;
          __src = 0;
          v30 = 0;
          v31 = 0;
          v29 = 0;
          v32 = 0;
          if (v36)
          {
            v17 = 0;
            v18 = v35;
            v19 = 8;
            while ((*(v35 + v19) & 0x80000000) == 0)
            {
              ++v17;
              v19 += 24;
              if (v36 == v17)
              {
                LODWORD(v17) = v36;
                break;
              }
            }

            if (v36 != v17)
            {
              do
              {
                v28 = *(v18 + 24 * v17 + 16);
                v20 = re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a3 + 144, &v28);
                if (v20)
                {
                  v23 = v20;
                  v21.i32[0] = 0;
                  v22.i8[0] = *(v20 + 32);
                  v26 = *(v20 + 48);
                  v27 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v22, v21), 0), xmmword_1E3107CA0, xmmword_1E3107C90);
                  v24 = *(*(a2 + 1) + 80);
                  v38 = xmmword_1E3047670;
                  v39 = xmmword_1E3047680;
                  v40 = xmmword_1E30476A0;
                  v41 = xmmword_1E30474D0;
                  re::DebugRenderer::drawBox(v24, &v38, v23, v27.i8, 1);
                  v38 = vaddq_f32(v26, xmmword_1E3107CB0);
                  v39 = vaddq_f32(v26, xmmword_1E3107CC0);
                  v40 = v27;
                  LODWORD(v41) = 1065353216;
                  re::DynamicArray<re::RigTransform>::add(&v29, &v38);
                  v38 = vaddq_f32(v26, xmmword_1E3107CD0);
                  v39 = vaddq_f32(v26, xmmword_1E3107CE0);
                  v40 = v27;
                  LODWORD(v41) = 1065353216;
                  re::DynamicArray<re::RigTransform>::add(&v29, &v38);
                  v38 = vaddq_f32(v26, xmmword_1E3107CF0);
                  v39 = vaddq_f32(v26, xmmword_1E3107D00);
                  v40 = v27;
                  LODWORD(v41) = 1065353216;
                  re::DynamicArray<re::RigTransform>::add(&v29, &v38);
                }

                v18 = v35;
                if (v36 <= v17 + 1)
                {
                  v25 = v17 + 1;
                }

                else
                {
                  v25 = v36;
                }

                while (v25 - 1 != v17)
                {
                  LODWORD(v17) = v17 + 1;
                  if ((*(v35 + 24 * v17 + 8) & 0x80000000) != 0)
                  {
                    goto LABEL_47;
                  }
                }

                LODWORD(v17) = v25;
LABEL_47:
                ;
              }

              while (v17 != v16);
              if (v31)
              {
                re::DynamicArray<re::RenderLine>::copy((*(*(a2 + 1) + 80) + 56), *(*(*(a2 + 1) + 80) + 72), __src, v31);
              }
            }

            v13 = v29;
          }

          else
          {
            v13 = 0;
          }
        }

        if (v13)
        {
          if (__src)
          {
            (*(*v13 + 40))(v13);
          }

          __src = 0;
        }

        return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v34);
      }
    }
  }

  return result;
}

void *re::introspect_MeshSortMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "None";
    re::introspect_MeshSortMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "TechniqueSort";
    qword_1EE1C66A8 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 3;
    *(v14 + 16) = "FrontToBack";
    qword_1EE1C66B0 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 2;
    *(v16 + 16) = "BackToFront";
    qword_1EE1C66B8 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 5;
    *(v18 + 16) = "FocusFrontToBack";
    qword_1EE1C66C0 = v18;
    v19 = re::introspectionAllocator();
    v20 = (*(*v19 + 32))(v19, 24, 8);
    *v20 = 1;
    *(v20 + 8) = 4;
    *(v20 + 16) = "FocusBackToFront";
    qword_1EE1C66C8 = v20;
  }

  {
    v21 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_MeshSortMode(BOOL)::info, "MeshSortMode", 4, 4, 1, 1);
    *v21 = &unk_1F5D0C658;
    *(v21 + 8) = &re::introspect_MeshSortMode(BOOL)::enumTable;
    *(v21 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_MeshSortMode(BOOL)::isInitialized)
    {
      return &re::introspect_MeshSortMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v23);
    v3 = re::introspect_MeshSortMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v23);
    if (v3)
    {
      return &re::introspect_MeshSortMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_MeshSortMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_MeshSortMode(BOOL)::info;
    }
  }

  re::introspect_MeshSortMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_MeshSortMode(BOOL)::info, a2);
  v22[0] = 0x38AFE39ADCB26B1CLL;
  v22[1] = "MeshSortMode";
  xmmword_1EE1C6678 = v23;
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_MeshSortMode(BOOL)::info;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(anonymous namespace::DepthSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  *(a2 + 32) = *a3;
  *(a2 + 36) = *(a3 + 28);
  *(a2 + 44) = *(a3 + 29);
  v7 = *(a1 + 8);
  v14 = 0;
  re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(a2, &v14, v7 * *(a3 + 4));
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 32), &v14);
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 33), &v14);
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 27), &v14);
  re::DrawCallSortKey<4ul,unsigned long long>::appendInt8(a2, (v7 * *(a3 + 34)), &v14);
  re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(a2, &v14, v7 * *(a3 + 8));
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 31), &v14);
  re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(a2, *(a3 + 12), &v14);
  re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(a2, &v14, v7 * *(a3 + 16));
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt16(a2, *(a3 + 24), &v14);
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 30), &v14);
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(a2, *(a3 + 20), &v14);
  result = re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 26), &v14);
  if (v6 && *(a3 + 36) == 1)
  {
    MutableSortingContext = re::DrawCallRecorderGroup::getMutableSortingContext(v6, *(a3 + 40));
    re::DynamicString::format(&v11, *(v6 + 64), "Depth Sort - OuterGroupDistance: %f OuterGroupTiebreaker: %d OuterGroupSuborder: %d OuterOrder: %d InnerGroupCameraInsideOutsideOrder: %d InnerGroupDistance: %f InnerGroupTiebreaker: %d InnerOrder: %d MeshDistance: %f TechniqueGroupID: %d IndexInTechniqueGroup: %d CreationOrder: %d DepthPrepassPriority: %d ", v10, *(a3 + 4), *(a3 + 32), *(a3 + 33), *(a3 + 27), *(a3 + 34), *(a3 + 8), *(a3 + 31), *(a3 + 12), *(a3 + 16), *(a3 + 24), *(a3 + 30), *(a3 + 20), *(a3 + 26));
    re::DynamicString::operator=(MutableSortingContext, &v11);
    result = v11;
    if (v11)
    {
      if (v12)
      {
        result = (*(*v11 + 40))(v11, v13);
      }
    }

    *(a2 + 40) = *(a3 + 40);
  }

  return result;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(anonymous namespace::DepthSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D14750;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(anonymous namespace::DepthSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D14750;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  *(a2 + 40) = *a3;
  *(a2 + 44) = *(a3 + 28);
  v7 = *(a1 + 8);
  v14 = 0;
  re::DrawCallSortKey<5ul,unsigned long long>::appendFloat(a2, &v14, v7 * *(a3 + 4));
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 32), &v14);
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 33), &v14);
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 27), &v14);
  re::DrawCallSortKey<5ul,unsigned long long>::appendInt8(a2, (v7 * *(a3 + 34)), &v14);
  re::DrawCallSortKey<5ul,unsigned long long>::appendFloat(a2, &v14, v7 * *(a3 + 8));
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 31), &v14);
  re::DrawCallSortKey<5ul,unsigned long long>::appendInt32(a2, *(a3 + 12), &v14);
  re::DrawCallSortKey<5ul,unsigned long long>::appendFloat(a2, &v14, v7 * *(a3 + 16));
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt16(a2, *(a3 + 24), &v14);
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 30), &v14);
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt32(a2, *(a3 + 20), &v14);
  result = re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 26), &v14);
  if (v6 && *(a3 + 36) == 1)
  {
    MutableSortingContext = re::DrawCallRecorderGroup::getMutableSortingContext(v6, *(a3 + 40));
    re::DynamicString::format(&v11, *(v6 + 64), "Depth Sort - OuterGroupDistance: %f OuterGroupTiebreaker: %d OuterGroupSuborder: %d OuterOrder: %d InnerGroupCameraInsideOutsideOrder: %d InnerGroupDistance: %f InnerGroupTiebreaker: %d InnerOrder: %d MeshDistance: %f TechniqueGroupID: %d IndexInTechniqueGroup: %d CreationOrder: %d DepthPrepassPriority: %d ", v10, *(a3 + 4), *(a3 + 32), *(a3 + 33), *(a3 + 27), *(a3 + 34), *(a3 + 8), *(a3 + 31), *(a3 + 12), *(a3 + 16), *(a3 + 24), *(a3 + 30), *(a3 + 20), *(a3 + 26));
    re::DynamicString::operator=(MutableSortingContext, &v11);
    result = v11;
    if (v11)
    {
      if (v12)
      {
        result = (*(*v11 + 40))(v11, v13);
      }
    }

    *(a2 + 48) = *(a3 + 40);
  }

  return result;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D147B8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D147B8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

unint64_t re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 40 * a2;
}

BOOL re::PortalMeshSceneParams::operator==(float32x4_t *a1, float32x4_t *a2)
{
  if (a1->i8[0] == 1)
  {
    if (!a2->i8[0])
    {
      return 0;
    }

    v2 = vceqq_f32(a1[1], a2[1]);
    v2.i32[3] = v2.i32[2];
    if ((vminvq_u32(v2) & 0x80000000) == 0)
    {
      return 0;
    }

    v3 = vceqq_f32(a1[2], a2[2]);
    v3.i32[3] = v3.i32[2];
    if ((vminvq_u32(v3) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (a2->i8[0])
  {
    return 0;
  }

  return a1[3].i64[0] == a2[3].i64[0];
}

uint64_t re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = 0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30));
  v4 = (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 32 * v7 + 4) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 32 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 32 * v6 + 4) != a3)
  {
    LODWORD(v9) = *(v8 + 32 * v7) & 0x7FFFFFFF;
    while (1)
    {
      LODWORD(v7) = v9;
      v9 = *(v8 + 32 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 32 * v9 + 4) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_7:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 12;
            do
            {
              if ((*(v17 - 12) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v17 + 12) % *(a1 + 24), *(v17 + 12));
                *(v18 + 4) = *(v17 - 8);
                v19 = *(v17 - 4);
                *(v18 + 8) = v19;
                if (v19 == 1)
                {
                  *(v18 + 12) = *v17;
                }

                v20 = *(v17 + 4);
                *(v18 + 16) = v20;
                if (v20 == 1)
                {
                  *(v18 + 20) = *(v17 + 8);
                }
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v21 + 32 * v5;
}

uint64_t anonymous namespace::getColorDepthDrawFlags(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 232);
  if (v4 && *v4)
  {
    v5 = *(a2 + 227);
    v6 = *(a2 + 226);
    v7 = *(a2 + 225);
    v8 = *(a2 + 224);
  }

  else
  {
    v9 = *(a2 + 40);
    TechniqueAtIndex = re::MaterialParameterTableLayers::getTechniqueAtIndex(v9, *(a2 + 60));
    v11 = *TechniqueAtIndex;
    v12 = *(*TechniqueAtIndex + 2480);
    if (v12)
    {
      v13 = v12 >> 1;
    }

    else
    {
      v13 = v12 >> 1;
    }

    v8 = v13 != 0;
    v7 = (*(a2 + 193) & 2) == 0 && *(v11 + 108) != 0;
    v6 = *(v11 + 74) & ~*(a2 + 193);
    v14 = *(v11 + 80);
    v15 = *(v9 + 8);
    if (v15 && (*(v15 + 1080) & 1) != 0 || (v15 = *(v9 + 9)) != 0 && (*(v15 + 1080) & 1) != 0 || (v15 = *(v9 + 11)) != 0 && *(v15 + 1080) == 1)
    {
      v14 |= (HIDWORD(*(v15 + 1081)) | (WORD2(*(v15 + 1081)) >> 8));
    }

    v5 = v14 != 0;
  }

  v16 = *(a2 + 200);
  v17 = *(a2 + 204);
  v18 = *(a2 + 161) & (*(a2 + 208) == 0.0);
  if (v16 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + 161) & (*(a2 + 208) == 0.0);
  }

  v20 = v5 | v8 & v7;
  if (v19 != 1)
  {
    v20 = 1;
  }

  *a1 = v20 & 1;
  a1[3] = v7 & 1;
  if ((atomic_load_explicit(&qword_1EE1C0690, memory_order_acquire) & 1) == 0)
  {
    v24 = __cxa_guard_acquire(&qword_1EE1C0690);
    if (v24)
    {
      qword_1EE1C0688 = re::hashString(v24, v25);
      __cxa_guard_release(&qword_1EE1C0690);
    }
  }

  result = re::MaterialParameterTableLayers::getPrioritizedPassTechniqueMapping(*(a2 + 40), qword_1EE1C0688);
  if (v18)
  {
    v22 = v16 == v17;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = (result != 0) & (*(a2 + 161) >> 1);
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  a1[1] = v23;
  a1[2] = v19 & (v5 | v6) & (*(a2 + 200) != *(a2 + 204));
  return result;
}

__n128 re::DynamicArray<anonymous namespace::DepthSortKey>::add(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v13 = 2 * v4;
      v14 = v4 == 0;
      v15 = 8;
      if (!v14)
      {
        v15 = v13;
      }

      if (v15 <= v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = v15;
      }

      re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(a1, v16);
    }

    else
    {
      re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(a1, v6);
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + (*(a1 + 16) << 6);
  result = a2[2];
  v10 = a2[3];
  v12 = *a2;
  v11 = a2[1];
  *(v8 + 32) = result;
  *(v8 + 48) = v10;
  *v8 = v12;
  *(v8 + 16) = v11;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,anonymous namespace::DepthSortKey *,false>(__n128 *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 a7, uint64_t a8, __n128 a13, __n128 a14, __n128 a15, __n128 a16, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a17, __n128 a18, __n128 a19, __n128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = *MEMORY[0x1E69E9840];
LABEL_2:
  v493 = a2 - 128;
  v494 = a2 - 64;
  v492 = a2 - 192;
  v33 = (a2 - 40);
  v34 = a2 - 104;
  v35 = a2 - 168;
LABEL_3:
  HIDWORD(v495) = a4;
  while (1)
  {
    v36 = a1;
    v37 = (a2 - a1) >> 6;
    if (v37 <= 2)
    {
      if (v37 < 2)
      {
        return a13;
      }

      if (v37 == 2)
      {
        v338 = 0;
        while (1)
        {
          v339 = v33[v338];
          v340 = a1[1].n128_u64[v338 + 1];
          if (v339 != v340)
          {
            break;
          }

          if (--v338 == -4)
          {
            return a13;
          }
        }

        if (v339 >= v340)
        {
          return a13;
        }

        goto LABEL_402;
      }

      goto LABEL_11;
    }

    if (v37 == 3)
    {
      v335 = 0;
      while (1)
      {
        v336 = a1[5].n128_u64[v335 + 1];
        v337 = a1[1].n128_u64[v335 + 1];
        if (v336 != v337)
        {
          break;
        }

        if (--v335 == -4)
        {
          goto LABEL_388;
        }
      }

      LOBYTE(v24) = v336 < v337;
LABEL_388:
      v426 = (v336 != v337) & v24;
      v427 = 11;
      v428 = (a2 - 40);
      while (1)
      {
        v430 = *v428--;
        v429 = v430;
        v431 = a1->n128_u64[v427];
        v432 = v430 >= v431;
        if (v430 != v431)
        {
          break;
        }

        if (--v427 == 7)
        {
          goto LABEL_395;
        }
      }

      LOBYTE(v26) = !v432;
LABEL_395:
      if ((v426 & 1) == 0)
      {
        if (((v429 != v431) & v26) != 0)
        {
          v446 = 0;
          v447 = a1[7];
          a19 = a1[6];
          a20 = v447;
          v448 = a1[5];
          a17 = a1[4];
          a13 = a17;
          a18 = v448;
          v449 = *v494;
          v450 = *(v494 + 16);
          *(a1 + 93) = *(v494 + 29);
          a1[4] = v449;
          a1[5] = v450;
          v451 = *(&a18 + 13);
          *v494 = a13;
          *(v494 + 16) = v448;
          *(v494 + 29) = v451;
          while (1)
          {
            v452 = a1[5].n128_u64[v446 + 1];
            v453 = a1[1].n128_u64[v446 + 1];
            if (v452 != v453)
            {
              break;
            }

            if (--v446 == -4)
            {
              return a13;
            }
          }

          if (v452 < v453)
          {
            goto LABEL_438;
          }
        }

        return a13;
      }

      if (((v429 != v431) & v26) == 0)
      {
        v433 = 0;
        v434 = a1[1];
        v435 = a1[3];
        v436 = a1[4];
        a19 = a1[2];
        a20 = v435;
        a18 = v434;
        a17 = *a1;
        *(a1 + 29) = *(a1 + 93);
        v437 = a1[5];
        *a1 = v436;
        a1[1] = v437;
        a13 = a17;
        v438 = a18;
        *(a1 + 93) = *(&a18 + 13);
        a1[4] = a13;
        a1[5] = v438;
        while (1)
        {
          v439 = v33[v433];
          v440 = a1[5].n128_u64[v433 + 1];
          if (v439 != v440)
          {
            break;
          }

          if (--v433 == -4)
          {
            return a13;
          }
        }

        if (v439 < v440)
        {
          v473 = a1[7];
          a19 = a1[6];
          a20 = v473;
          v474 = a1[5];
          a17 = a1[4];
          a13 = a17;
          a18 = v474;
          v475 = *v494;
          v476 = *(v494 + 16);
          *(a1 + 93) = *(v494 + 29);
          a1[4] = v475;
          a1[5] = v476;
          v477 = *(&a18 + 13);
          *v494 = a13;
          *(v494 + 16) = v474;
          *(v494 + 29) = v477;
        }

        return a13;
      }

LABEL_402:
      v441 = a1[1];
      v442 = a1[3];
      a19 = a1[2];
      a20 = v442;
      a18 = v441;
      a17 = *a1;
      v443 = *(v494 + 29);
      v444 = *(v494 + 16);
      *a1 = *v494;
      a1[1] = v444;
      *(a1 + 29) = v443;
      v445 = a17;
      a13 = a18;
      *(v494 + 29) = *(&a18 + 13);
      *v494 = v445;
      *(v494 + 16) = a13;
      return a13;
    }

    if (v37 == 4)
    {

      return a13;
    }

    if (v37 == 5)
    {
      break;
    }

LABEL_11:
    if (v37 <= 23)
    {
      v341 = a1 + 4;
      v343 = a1 == a2 || v341 == a2;
      if (a4)
      {
        if (!v343)
        {
          v344 = a1;
          do
          {
            v345 = 0;
            while (1)
            {
              v346 = v344[5].n128_u64[v345 + 1];
              v347 = v344[1].n128_u64[v345 + 1];
              if (v346 != v347)
              {
                break;
              }

              if (--v345 == -4)
              {
                goto LABEL_309;
              }
            }

            if (v346 < v347)
            {
              v349 = v341[2];
              v348 = v341[3];
              a18 = v341[1];
              a19 = v349;
              a20 = v348;
              a17 = *v341;
              v350 = v344;
              v351 = v341;
              while (1)
              {
                v352 = v350[1];
                *v351 = *v350;
                v351[1] = v352;
                *(v351 + 29) = *(v350 + 29);
                if (v350 == a1)
                {
                  break;
                }

                v351 = v350;
                v350 -= 4;
                v353 = -5;
                v354 = (&a17 | 0x18);
                while (1)
                {
                  v355 = *v354--;
                  v356 = v351->n128_u64[v353];
                  v357 = v355 >= v356;
                  if (v355 != v356)
                  {
                    break;
                  }

                  if (--v353 == -9)
                  {
                    goto LABEL_308;
                  }
                }

                if (v357)
                {
                  goto LABEL_308;
                }
              }

              v351 = a1;
LABEL_308:
              a13 = *(&a18 + 13);
              v351[1] = a18;
              v358 = a17;
              *(v351 + 29) = a13;
              *v351 = v358;
            }

LABEL_309:
            v341 += 4;
            v344 += 4;
          }

          while (v341 != a2);
        }
      }

      else if (!v343)
      {
        do
        {
          v454 = 0;
          while (1)
          {
            v455 = v36[5].n128_u64[v454 + 1];
            v456 = v36[1].n128_u64[v454 + 1];
            if (v455 != v456)
            {
              break;
            }

            if (--v454 == -4)
            {
              goto LABEL_421;
            }
          }

          if (v455 < v456)
          {
            v458 = v341[2];
            v457 = v341[3];
            a18 = v341[1];
            a19 = v458;
            a20 = v457;
            a17 = *v341;
            v459 = v36;
            v460 = v341;
            do
            {
              v461 = 0;
              v462 = v460;
              v460 = v459;
              v463 = v459[1];
              *v462 = *v459;
              v462[1] = v463;
              *(v462 + 29) = *(v459 + 29);
              v459 -= 4;
              while (1)
              {
                v464 = a18.n128_u64[v461 + 1];
                v465 = *(&v460[-2] + v461 * 8 - 8);
                if (v464 != v465)
                {
                  break;
                }

                if (--v461 == -4)
                {
                  goto LABEL_420;
                }
              }
            }

            while (v464 < v465);
LABEL_420:
            a13 = *(&a18 + 13);
            v460[1] = a18;
            v466 = a17;
            *(v460 + 29) = a13;
            *v460 = v466;
          }

LABEL_421:
          v341 += 4;
          v36 += 4;
        }

        while (v341 != a2);
      }

      return a13;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v359 = (v37 - 2) >> 1;
        v360 = &a1[8 * v359 + 9].n128_u64[1];
        v361 = v359;
        v362 = &a1[4 * v359];
        do
        {
          v363 = v361;
          if (v359 >= v361)
          {
            v364 = (2 * v361) | 1;
            v365 = &a1[4 * v364];
            if (2 * v363 + 2 < v37)
            {
              a7 = v365 + 64;
              v366 = -4;
              a4 = v360;
              while (1)
              {
                v367 = *(a4 - 64);
                v368 = *a4;
                if (v367 != *a4)
                {
                  break;
                }

                a4 -= 8;
                v259 = __CFADD__(v366++, 1);
                if (v259)
                {
                  goto LABEL_321;
                }
              }

              LOBYTE(a6) = v367 < *a4;
LABEL_321:
              if (((v367 != v368) & a6) != 0)
              {
                v365 += 4;
                v364 = 2 * v363 + 2;
              }
            }

            v369 = &a1[4 * v363];
            v370 = 3;
            while (1)
            {
              v371 = v365->n128_u64[v370];
              a3 = v362->n128_u64[v370];
              if (v371 != a3)
              {
                break;
              }

              if (--v370 == -1)
              {
                goto LABEL_328;
              }
            }

            if (v371 < a3)
            {
              goto LABEL_349;
            }

LABEL_328:
            v373 = v369[2];
            v372 = v369[3];
            a18 = v369[1];
            a19 = v373;
            a20 = v372;
            a17 = *v369;
            while (1)
            {
              v374 = v365;
              v375 = *(v365 + 29);
              v369[1] = v365[1];
              v376 = *v365;
              *(v369 + 29) = v375;
              *v369 = v376;
              if (v359 < v364)
              {
                break;
              }

              v377 = (2 * v364) | 1;
              v365 = &a1[4 * v377];
              v378 = 2 * v364 + 2;
              if (v378 >= v37)
              {
                v364 = (2 * v364) | 1;
              }

              else
              {
                v379 = &a1[8 * v364 + 9].n128_u64[1];
                a4 = -4;
                while (1)
                {
                  v380 = *(v379 - 8);
                  a6 = *v379;
                  if (v380 != *v379)
                  {
                    break;
                  }

                  --v379;
                  v259 = __CFADD__(a4++, 1);
                  if (v259)
                  {
                    goto LABEL_338;
                  }
                }

                a7 = v380 < *v379;
LABEL_338:
                if (((v380 != a6) & a7) != 0)
                {
                  v365 += 4;
                  v364 = v378;
                }

                else
                {
                  v364 = v377;
                }
              }

              v381 = 3;
              while (1)
              {
                v382 = v365->n128_u64[v381];
                a3 = a17.n128_u64[v381];
                if (v382 != a3)
                {
                  break;
                }

                if (--v381 == -1)
                {
                  goto LABEL_346;
                }
              }

              LOBYTE(a4) = v382 < a3;
LABEL_346:
              v369 = v374;
              if (v382 != a3)
              {
                v369 = v374;
                if (a4)
                {
                  break;
                }
              }
            }

            v383 = *(&a18 + 13);
            v374[1] = a18;
            v384 = a17;
            *(v374 + 29) = v383;
            *v374 = v384;
          }

LABEL_349:
          v361 = v363 - 1;
          v360 -= 16;
          v362 -= 4;
        }

        while (v363);
        do
        {
          v385 = 0;
          *vars0 = a1[1];
          v497 = *a1;
          v386 = a1;
          do
          {
            v387 = &v386[4 * v385];
            v388 = v387 + 4;
            v389 = (2 * v385) | 1;
            v385 = 2 * v385 + 2;
            if (v385 >= v37)
            {
              v385 = v389;
            }

            else
            {
              v390 = v387 + 8;
              v391 = &v387[9].n128_u64[1];
              v392 = -4;
              while (1)
              {
                v393 = *(v391 - 8);
                v394 = *v391;
                if (v393 != *v391)
                {
                  break;
                }

                --v391;
                v259 = __CFADD__(v392++, 1);
                if (v259)
                {
                  goto LABEL_359;
                }
              }

              LOBYTE(a3) = v393 < *v391;
LABEL_359:
              if (((v393 != v394) & a3) != 0)
              {
                v388 = v390;
              }

              else
              {
                v385 = v389;
              }
            }

            v395 = *(v388 + 29);
            v386[1] = v388[1];
            v396 = *v388;
            *(v386 + 29) = v395;
            *v386 = v396;
            v386 = v388;
          }

          while (v385 <= ((v37 - 2) >> 1));
          a2 -= 64;
          if (v388 == a2)
          {
            a13 = *&vars0[13];
            v388[1] = *vars0;
            v408 = v497;
            *(v388 + 29) = a13;
            *v388 = v408;
          }

          else
          {
            a13 = *(a2 + 29);
            v388[1] = *(a2 + 16);
            v397 = *a2;
            *(v388 + 29) = a13;
            *v388 = v397;
            a13.n128_u64[0] = *&vars0[13];
            v399 = v497;
            v398 = *vars0;
            *(a2 + 29) = *&vars0[13];
            *a2 = v399;
            *(a2 + 16) = v398;
            v400 = (v388 - a1 + 64) >> 6;
            v401 = v400 < 2;
            v402 = v400 - 2;
            if (!v401)
            {
              v403 = v402 >> 1;
              v404 = &a1[4 * v403];
              v405 = 3;
              while (1)
              {
                v406 = v404->n128_u64[v405];
                v407 = v388->n128_u64[v405];
                if (v406 != v407)
                {
                  break;
                }

                if (--v405 == -1)
                {
                  goto LABEL_370;
                }
              }

              if (v406 < v407)
              {
                v410 = v388[2];
                v409 = v388[3];
                a18 = v388[1];
                a19 = v410;
                a20 = v409;
                a17 = *v388;
                do
                {
                  v411 = v404;
                  v412 = *(v404 + 29);
                  v388[1] = v404[1];
                  v413 = *v404;
                  *(v388 + 29) = v412;
                  *v388 = v413;
                  if (!v403)
                  {
                    break;
                  }

                  v403 = (v403 - 1) >> 1;
                  v404 = &a1[4 * v403];
                  v414 = 3;
                  while (1)
                  {
                    v415 = v404->n128_u64[v414];
                    v416 = a17.n128_u64[v414];
                    if (v415 != v416)
                    {
                      break;
                    }

                    if (--v414 == -1)
                    {
                      goto LABEL_381;
                    }
                  }

                  v388 = v411;
                }

                while (v415 < v416);
LABEL_381:
                a13 = *(&a18 + 13);
                v411[1] = a18;
                v417 = a17;
                *(v411 + 29) = a13;
                *v411 = v417;
              }
            }
          }

LABEL_370:
          v401 = v37-- <= 2;
        }

        while (!v401);
      }

      return a13;
    }

    v38 = v37 >> 1;
    v39 = &a1[4 * (v37 >> 1)];
    if (v37 > 0x80)
    {
      v40 = 3;
      while (1)
      {
        v41 = v39->n128_u64[v40];
        v42 = a1->n128_u64[v40];
        if (v41 != v42)
        {
          break;
        }

        if (--v40 == -1)
        {
          goto LABEL_23;
        }
      }

      LOBYTE(v26) = v41 < v42;
LABEL_23:
      v46 = 0;
      v47 = (v41 != v42) & v26;
      while (1)
      {
        v48 = v33[v46];
        v49 = v39[1].n128_u64[v46 + 1];
        if (v48 != v49)
        {
          break;
        }

        if (--v46 == -4)
        {
          goto LABEL_33;
        }
      }

      LOBYTE(v28) = v48 < v49;
LABEL_33:
      if (v47)
      {
        if (((v48 != v49) & v28) != 0)
        {
          v52 = a1[1];
          v53 = a1[3];
          a19 = a1[2];
          a20 = v53;
          a18 = v52;
          a17 = *a1;
          v54 = v494;
          v55 = *(v494 + 29);
          v56 = *(v494 + 16);
          *a1 = *v494;
          a1[1] = v56;
          *(a1 + 29) = v55;
LABEL_64:
          v115 = a17;
          v114 = a18;
          *(v54 + 29) = *(&a18 + 13);
          *v54 = v115;
          v54[1] = v114;
          goto LABEL_65;
        }

        v80 = 0;
        v81 = a1[1];
        v82 = a1[3];
        a19 = a1[2];
        a20 = v82;
        a18 = v81;
        a17 = *a1;
        v83 = *(v39 + 29);
        v84 = v39[1];
        *a1 = *v39;
        a1[1] = v84;
        *(a1 + 29) = v83;
        v86 = a17;
        v85 = a18;
        *(v39 + 29) = *(&a18 + 13);
        *v39 = v86;
        v39[1] = v85;
        while (1)
        {
          v87 = v33[v80];
          v88 = v39[1].n128_u64[v80 + 1];
          if (v87 != v88)
          {
            break;
          }

          if (--v80 == -4)
          {
            goto LABEL_65;
          }
        }

        if (v87 < v88)
        {
          v110 = v39[1];
          v111 = v39[3];
          a19 = v39[2];
          a20 = v111;
          a18 = v110;
          a17 = *v39;
          v54 = v494;
          v112 = *(v494 + 29);
          v113 = *(v494 + 16);
          *v39 = *v494;
          v39[1] = v113;
          *(v39 + 29) = v112;
          goto LABEL_64;
        }
      }

      else if (((v48 != v49) & v28) != 0)
      {
        v63 = v39[1];
        v64 = v39[3];
        a19 = v39[2];
        a20 = v64;
        a18 = v63;
        a17 = *v39;
        v65 = *(v494 + 29);
        v66 = *(v494 + 16);
        *v39 = *v494;
        v39[1] = v66;
        *(v39 + 29) = v65;
        v68 = a17;
        v67 = a18;
        *(v494 + 29) = *(&a18 + 13);
        *v494 = v68;
        *(v494 + 16) = v67;
        v69 = 3;
        while (1)
        {
          v70 = v39->n128_u64[v69];
          v71 = a1->n128_u64[v69];
          if (v70 != v71)
          {
            break;
          }

          if (--v69 == -1)
          {
            goto LABEL_65;
          }
        }

        if (v70 < v71)
        {
          v98 = a1[1];
          v99 = a1[3];
          a19 = a1[2];
          a20 = v99;
          a18 = v98;
          a17 = *a1;
          v100 = *(v39 + 29);
          v101 = v39[1];
          *a1 = *v39;
          a1[1] = v101;
          *(a1 + 29) = v100;
          v103 = a17;
          v102 = a18;
          *(v39 + 29) = *(&a18 + 13);
          *v39 = v103;
          v39[1] = v102;
        }
      }

LABEL_65:
      v116 = v39 - 4;
      v117 = v38 << 6;
      v118 = v117 - 40;
      v119 = 11;
      while (1)
      {
        v120 = *(a1->n128_u64 + v118);
        v121 = a1->n128_u64[v119];
        if (v120 != v121)
        {
          break;
        }

        --v119;
        v118 -= 8;
        if (v119 == 7)
        {
          goto LABEL_70;
        }
      }

      LOBYTE(v28) = v120 < v121;
LABEL_70:
      v122 = 0;
      v123 = (v120 != v121) & v28;
      while (1)
      {
        v124 = *(v34 + v122);
        v125 = *(&a1[-2] + v117 + v122 - 8);
        if (v124 != v125)
        {
          break;
        }

        v122 -= 8;
        if (v122 == -32)
        {
          goto LABEL_75;
        }
      }

      LOBYTE(v29) = v124 < v125;
LABEL_75:
      if (v123)
      {
        if (((v124 != v125) & v29) != 0)
        {
          v126 = a1[7];
          a19 = a1[6];
          a20 = v126;
          v128 = a1[5];
          a17 = a1[4];
          v127 = a17;
          a18 = v128;
          v129 = *v493;
          a16 = *(v493 + 16);
          *(a1 + 93) = *(v493 + 29);
          a1[4] = v129;
          a1[5] = a16;
          v130 = *(&a18 + 13);
          *v493 = v127;
          *(v493 + 16) = v128;
          *(v493 + 29) = v130;
        }

        else
        {
          v139 = 0;
          v140 = a1[7];
          a19 = a1[6];
          a20 = v140;
          v142 = a1[5];
          a17 = a1[4];
          v141 = a17;
          a18 = v142;
          v143 = *v116;
          a16 = v39[-3];
          *(a1 + 93) = *(v39 - 35);
          a1[4] = v143;
          a1[5] = a16;
          v144 = *(&a18 + 13);
          *v116 = v141;
          v39[-3] = v142;
          *(v39 - 35) = v144;
          while (1)
          {
            v145 = *(v34 + v139);
            v146 = *(&a1[-2] + v117 + v139 - 8);
            if (v145 != v146)
            {
              break;
            }

            v139 -= 8;
            if (v139 == -32)
            {
              goto LABEL_93;
            }
          }

          if (v145 < v146)
          {
            v154 = v39[-3];
            v155 = v39[-1];
            a19 = v39[-2];
            a20 = v155;
            a18 = v154;
            a17 = *v116;
            v156 = *(v493 + 29);
            v157 = *(v493 + 16);
            *v116 = *v493;
            v39[-3] = v157;
            *(v39 - 35) = v156;
            v159 = a17;
            v158 = a18;
            *(v493 + 29) = *(&a18 + 13);
            *v493 = v159;
            *(v493 + 16) = v158;
          }
        }
      }

      else if (((v124 != v125) & v29) != 0)
      {
        v131 = 0;
        v132 = v39[-3];
        v133 = v39[-1];
        a19 = v39[-2];
        a20 = v133;
        a18 = v132;
        a17 = *v116;
        v134 = *(v493 + 29);
        v135 = *(v493 + 16);
        *v116 = *v493;
        v39[-3] = v135;
        *(v39 - 35) = v134;
        v137 = a17;
        v136 = a18;
        *(v493 + 29) = *(&a18 + 13);
        *v493 = v137;
        *(v493 + 16) = v136;
        while (1)
        {
          v138 = *(&a1[-2] + v117 + v131 * 8 - 8);
          v125 = a1[5].n128_u64[v131 + 1];
          if (v138 != v125)
          {
            break;
          }

          if (--v131 == -4)
          {
            goto LABEL_93;
          }
        }

        if (v138 < v125)
        {
          v149 = a1[7];
          a19 = a1[6];
          a20 = v149;
          v151 = a1[5];
          a17 = a1[4];
          v150 = a17;
          a18 = v151;
          v152 = *v116;
          a16 = v39[-3];
          *(a1 + 93) = *(v39 - 35);
          a1[4] = v152;
          a1[5] = a16;
          v153 = *(&a18 + 13);
          *v116 = v150;
          v39[-3] = v151;
          *(v39 - 35) = v153;
        }
      }

LABEL_93:
      v160 = v117 + 88;
      v161 = 19;
      while (1)
      {
        v162 = *(a1->n128_u64 + v160);
        v163 = a1->n128_u64[v161];
        if (v162 != v163)
        {
          break;
        }

        --v161;
        v160 -= 8;
        if (v161 == 15)
        {
          goto LABEL_98;
        }
      }

      LOBYTE(v125) = v162 < v163;
LABEL_98:
      v164 = 0;
      v165 = (v162 != v163) & v125;
      while (1)
      {
        v166 = *(v35 + v164);
        v167 = *(&a1[5].n128_u64[1] + v117 + v164);
        if (v166 != v167)
        {
          break;
        }

        v164 -= 8;
        if (v164 == -32)
        {
          goto LABEL_103;
        }
      }

      LOBYTE(v29) = v166 < v167;
LABEL_103:
      if (v165)
      {
        if (((v166 != v167) & v29) != 0)
        {
          v168 = a1[11];
          a19 = a1[10];
          a20 = v168;
          v170 = a1[9];
          a17 = a1[8];
          v169 = a17;
          a18 = v170;
          v171 = *v492;
          a16 = *(v492 + 16);
          *(a1 + 157) = *(v492 + 29);
          a1[8] = v171;
          a1[9] = a16;
          v172 = *(&a18 + 13);
          *v492 = v169;
          *(v492 + 16) = v170;
          *(v492 + 29) = v172;
        }

        else
        {
          v182 = 0;
          v183 = a1[11];
          a19 = a1[10];
          a20 = v183;
          v185 = a1[9];
          a17 = a1[8];
          v184 = a17;
          a18 = v185;
          v186 = v39[4];
          a16 = v39[5];
          *(a1 + 157) = *(v39 + 93);
          a1[8] = v186;
          a1[9] = a16;
          v187 = *(&a18 + 13);
          v39[4] = v184;
          v39[5] = v185;
          *(v39 + 93) = v187;
          while (1)
          {
            v188 = *(v35 + v182);
            v189 = *(&a1[5].n128_u64[1] + v117 + v182);
            if (v188 != v189)
            {
              break;
            }

            v182 -= 8;
            if (v182 == -32)
            {
              goto LABEL_119;
            }
          }

          if (v188 < v189)
          {
            v195 = v39[5];
            v196 = v39[7];
            a19 = v39[6];
            a20 = v196;
            a18 = v195;
            a17 = v39[4];
            v197 = *(v492 + 29);
            v198 = *(v492 + 16);
            v39[4] = *v492;
            v39[5] = v198;
            *(v39 + 93) = v197;
            v200 = a17;
            v199 = a18;
            *(v492 + 29) = *(&a18 + 13);
            *v492 = v200;
            *(v492 + 16) = v199;
          }
        }
      }

      else if (((v166 != v167) & v29) != 0)
      {
        v173 = 0;
        v174 = v39[5];
        v175 = v39[7];
        a19 = v39[6];
        a20 = v175;
        a18 = v174;
        a17 = v39[4];
        v176 = *(v492 + 29);
        v177 = *(v492 + 16);
        v39[4] = *v492;
        v39[5] = v177;
        *(v39 + 93) = v176;
        v179 = a17;
        v178 = a18;
        *(v492 + 29) = *(&a18 + 13);
        *v492 = v179;
        *(v492 + 16) = v178;
        while (1)
        {
          v180 = *(&a1[5].n128_u64[1] + v117 + v173 * 8);
          v181 = a1[9].n128_u64[v173 + 1];
          if (v180 != v181)
          {
            break;
          }

          if (--v173 == -4)
          {
            goto LABEL_119;
          }
        }

        if (v180 < v181)
        {
          v190 = a1[11];
          a19 = a1[10];
          a20 = v190;
          v192 = a1[9];
          a17 = a1[8];
          v191 = a17;
          a18 = v192;
          v193 = v39[4];
          a16 = v39[5];
          *(a1 + 157) = *(v39 + 93);
          a1[8] = v193;
          a1[9] = a16;
          v194 = *(&a18 + 13);
          v39[4] = v191;
          v39[5] = v192;
          *(v39 + 93) = v194;
        }
      }

LABEL_119:
      v24 = &a1[1].n128_u64[1] + v117;
      v201 = -4;
      v202 = v24;
      while (1)
      {
        v203 = *v202;
        v204 = *(v202 - 8);
        if (*v202 != v204)
        {
          break;
        }

        --v202;
        v259 = __CFADD__(v201++, 1);
        if (v259)
        {
          goto LABEL_125;
        }
      }

      LOBYTE(v29) = *v202 < v204;
LABEL_125:
      LOBYTE(v25) = (v203 != v204) & v29;
      v205 = (&a1[5].n128_u64[1] + v117);
      v206 = -4;
      v28 = v205;
      while (1)
      {
        v27 = *v28;
        v29 = *(v28 - 8);
        if (*v28 != v29)
        {
          break;
        }

        --v28;
        v259 = __CFADD__(v206++, 1);
        if (v259)
        {
          goto LABEL_131;
        }
      }

      v30 = *v28 < v29;
LABEL_131:
      LOBYTE(v26) = v27 != v29 && v30;
      if ((v25 & 1) == 0)
      {
        if (v27 != v29 && v30)
        {
          v211 = v39[3];
          v212 = v39[1];
          a19 = v39[2];
          a20 = v211;
          a18 = v212;
          a17 = *v39;
          v213 = *(v39 + 93);
          v214 = v39[5];
          *v39 = v39[4];
          v39[1] = v214;
          *(v39 + 29) = v213;
          v216 = a17;
          v215 = a18;
          *(v39 + 93) = *(&a18 + 13);
          v39[4] = v216;
          v39[5] = v215;
          v217 = -4;
          while (1)
          {
            v25 = *v24;
            v26 = *(v24 - 64);
            if (*v24 != v26)
            {
              break;
            }

            v24 -= 8;
            v259 = __CFADD__(v217++, 1);
            if (v259)
            {
              goto LABEL_150;
            }
          }

          if (*v24 < v26)
          {
            v225 = v39[-1];
            v226 = v39[-3];
            a19 = v39[-2];
            a20 = v225;
            a18 = v226;
            a17 = *v116;
            v227 = *(v39 + 29);
            v228 = v39[1];
            *v116 = *v39;
            v39[-3] = v228;
            *(v39 - 35) = v227;
            v230 = a17;
            v229 = a18;
            *(v39 + 29) = *(&a18 + 13);
            *v39 = v230;
            v39[1] = v229;
          }
        }

        goto LABEL_150;
      }

      if (v27 != v29 && v30)
      {
        v207 = v39[-1];
        v208 = v39[-3];
        a19 = v39[-2];
        a20 = v207;
        a18 = v208;
        a17 = *v116;
        v209 = *(v39 + 93);
        v210 = v39[5];
        *v116 = v39[4];
        v39[-3] = v210;
        *(v39 - 35) = v209;
      }

      else
      {
        v218 = v39[-1];
        v219 = v39[-3];
        a19 = v39[-2];
        a20 = v218;
        a18 = v219;
        a17 = *v116;
        v220 = *(v39 + 29);
        v221 = v39[1];
        *v116 = *v39;
        v39[-3] = v221;
        *(v39 - 35) = v220;
        v223 = a17;
        v222 = a18;
        *(v39 + 29) = *(&a18 + 13);
        *v39 = v223;
        v39[1] = v222;
        v224 = -4;
        while (1)
        {
          v24 = *v205;
          v25 = *(v205 - 8);
          if (*v205 != v25)
          {
            break;
          }

          --v205;
          v259 = __CFADD__(v224++, 1);
          if (v259)
          {
            goto LABEL_150;
          }
        }

        if (*v205 >= v25)
        {
          goto LABEL_150;
        }

        v231 = v39[3];
        v232 = v39[1];
        a19 = v39[2];
        a20 = v231;
        a18 = v232;
        a17 = *v39;
        v233 = *(v39 + 93);
        v234 = v39[5];
        *v39 = v39[4];
        v39[1] = v234;
        *(v39 + 29) = v233;
      }

      v236 = a17;
      v235 = a18;
      *(v39 + 93) = *(&a18 + 13);
      v39[4] = v236;
      v39[5] = v235;
LABEL_150:
      v237 = a1[1];
      v238 = a1[3];
      a19 = a1[2];
      a20 = v238;
      a18 = v237;
      a17 = *a1;
      goto LABEL_151;
    }

    v43 = 3;
    while (1)
    {
      v44 = a1->n128_u64[v43];
      v45 = v39->n128_u64[v43];
      if (v44 != v45)
      {
        break;
      }

      if (--v43 == -1)
      {
        goto LABEL_28;
      }
    }

    LOBYTE(v25) = v44 < v45;
LABEL_28:
    v50 = 0;
    v51 = (v44 != v45) & v25;
    while (1)
    {
      v24 = v33[v50];
      v25 = a1[1].n128_u64[v50 + 1];
      if (v24 != v25)
      {
        break;
      }

      if (--v50 == -4)
      {
        goto LABEL_37;
      }
    }

    LOBYTE(v26) = v24 < v25;
LABEL_37:
    if (v51)
    {
      if (((v24 != v25) & v26) != 0)
      {
        v57 = v39[1];
        v58 = v39[3];
        a19 = v39[2];
        a20 = v58;
        a18 = v57;
        a17 = *v39;
        v59 = *(v494 + 29);
        v60 = *(v494 + 16);
        *v39 = *v494;
        v39[1] = v60;
        *(v39 + 29) = v59;
        v62 = a17;
        v61 = a18;
        *(v494 + 29) = *(&a18 + 13);
        *v494 = v62;
        *(v494 + 16) = v61;
        goto LABEL_152;
      }

      v89 = 0;
      v90 = v39[1];
      v91 = v39[3];
      a19 = v39[2];
      a20 = v91;
      a18 = v90;
      a17 = *v39;
      v92 = *(a1 + 29);
      v93 = a1[1];
      *v39 = *a1;
      v39[1] = v93;
      *(v39 + 29) = v92;
      v95 = a17;
      v94 = a18;
      *(a1 + 29) = *(&a18 + 13);
      *a1 = v95;
      a1[1] = v94;
      while (1)
      {
        v96 = v33[v89];
        v97 = a1[1].n128_u64[v89 + 1];
        if (v96 != v97)
        {
          break;
        }

        if (--v89 == -4)
        {
          goto LABEL_152;
        }
      }

      if (v96 < v97)
      {
        v147 = a1[1];
        v148 = a1[3];
        a19 = a1[2];
        a20 = v148;
        a18 = v147;
        a17 = *a1;
        v39 = v494;
LABEL_151:
        v239 = *(v39 + 29);
        v240 = v39[1];
        *a1 = *v39;
        a1[1] = v240;
        *(a1 + 29) = v239;
        v242 = a17;
        v241 = a18;
        *(v39 + 29) = *(&a18 + 13);
        *v39 = v242;
        v39[1] = v241;
      }
    }

    else if (((v24 != v25) & v26) != 0)
    {
      v72 = a1[1];
      v73 = a1[3];
      a19 = a1[2];
      a20 = v73;
      a18 = v72;
      a17 = *a1;
      v74 = *(v494 + 29);
      v75 = *(v494 + 16);
      *a1 = *v494;
      a1[1] = v75;
      *(a1 + 29) = v74;
      v77 = a17;
      v76 = a18;
      *(v494 + 29) = *(&a18 + 13);
      *v494 = v77;
      *(v494 + 16) = v76;
      v78 = 3;
      while (1)
      {
        v79 = a1->n128_u64[v78];
        v24 = v39->n128_u64[v78];
        if (v79 != v24)
        {
          break;
        }

        if (--v78 == -1)
        {
          goto LABEL_152;
        }
      }

      if (v79 < v24)
      {
        v104 = v39[1];
        v105 = v39[3];
        a19 = v39[2];
        a20 = v105;
        a18 = v104;
        a17 = *v39;
        v106 = *(a1 + 29);
        v107 = a1[1];
        *v39 = *a1;
        v39[1] = v107;
        *(v39 + 29) = v106;
        v109 = a17;
        v108 = a18;
        *(a1 + 29) = *(&a18 + 13);
        *a1 = v109;
        a1[1] = v108;
      }
    }

LABEL_152:
    --a3;
    if ((a4 & 1) == 0)
    {
      v243 = 0;
      while (1)
      {
        v244 = *(&a1[-2] + v243 * 8 - 8);
        v245 = a1[1].n128_u64[v243 + 1];
        if (v244 != v245)
        {
          break;
        }

        if (--v243 == -4)
        {
          goto LABEL_213;
        }
      }

      if (v244 < v245)
      {
        goto LABEL_158;
      }

LABEL_213:
      v291 = 0;
      *vars0 = a1[1];
      v497 = *a1;
      while (1)
      {
        v292 = *&vars0[v291 + 8];
        v293 = *(a2 + v291 - 40);
        v294 = v292 >= v293;
        if (v292 != v293)
        {
          break;
        }

        v291 -= 8;
        if (v291 == -32)
        {
          v295 = a1;
          while (1)
          {
LABEL_228:
            a1 = v295 + 4;
            if (v295[4].n128_u64 >= a2)
            {
              goto LABEL_238;
            }

            v24 = &v497 | 0x18;
            v25 = 11;
            while (1)
            {
              v302 = *v24;
              v24 -= 8;
              v301 = v302;
              v303 = v295->n128_u64[v25];
              v304 = v302 >= v303;
              if (v302 != v303)
              {
                break;
              }

              if (--v25 == 7)
              {
                goto LABEL_236;
              }
            }

            LOBYTE(v26) = !v304;
LABEL_236:
            v295 += 4;
            if (v301 != v303)
            {
              v295 = a1;
              if (v26)
              {
                goto LABEL_238;
              }
            }
          }
        }
      }

      v296 = a1;
      v295 = a1;
      if (v294)
      {
        goto LABEL_228;
      }

      while (1)
      {
        a1 = v296 + 4;
        v24 = &v497 | 0x18;
        v25 = 11;
        while (1)
        {
          v298 = *v24;
          v24 -= 8;
          v297 = v298;
          v299 = v296->n128_u64[v25];
          v300 = v298 >= v299;
          if (v298 != v299)
          {
            break;
          }

          if (--v25 == 7)
          {
            goto LABEL_225;
          }
        }

        LOBYTE(v26) = !v300;
LABEL_225:
        v296 += 4;
        if (v297 != v299)
        {
          v296 = a1;
          if (v26)
          {
            break;
          }
        }
      }

LABEL_238:
      v305 = a2;
      if (a1 < a2)
      {
        v306 = a2;
        do
        {
          v305 = v306 - 64;
          v307 = -5;
          v24 = &v497 | 0x18;
          while (1)
          {
            v308 = *v24;
            v24 -= 8;
            LOBYTE(v25) = v308;
            v26 = *(v306 + 8 * v307);
            v309 = v308 >= v26;
            if (v308 != v26)
            {
              break;
            }

            if (--v307 == -9)
            {
              goto LABEL_264;
            }
          }

          v306 -= 64;
        }

        while (!v309);
      }

LABEL_264:
      while (a1 < v305)
      {
        v310 = a1[1];
        v311 = a1[3];
        a19 = a1[2];
        a20 = v311;
        a18 = v310;
        a17 = *a1;
        v312 = *(v305 + 29);
        v313 = *(v305 + 16);
        *a1 = *v305;
        a1[1] = v313;
        *(a1 + 29) = v312;
        v315 = a17;
        v314 = a18;
        *(v305 + 29) = *(&a18 + 13);
        *v305 = v315;
        *(v305 + 16) = v314;
        v316 = a1;
        while (1)
        {
          a1 = v316 + 4;
          v317 = (&v497 | 0x18);
          v318 = 11;
          while (1)
          {
            v320 = *v317--;
            v319 = v320;
            v321 = v316->n128_u64[v318];
            v322 = v320 >= v321;
            if (v320 != v321)
            {
              break;
            }

            if (--v318 == 7)
            {
              goto LABEL_255;
            }
          }

          LOBYTE(v27) = !v322;
LABEL_255:
          v316 += 4;
          if (v319 != v321)
          {
            v316 = a1;
            if (v27)
            {
              break;
            }
          }
        }

        v323 = v305;
        do
        {
          v305 = v323 - 64;
          v324 = -5;
          v24 = &v497 | 0x18;
          while (1)
          {
            v325 = *v24;
            v24 -= 8;
            LOBYTE(v25) = v325;
            v26 = *(v323 + 8 * v324);
            v326 = v325 >= v26;
            if (v325 != v26)
            {
              break;
            }

            if (--v324 == -9)
            {
              goto LABEL_264;
            }
          }

          v323 -= 64;
        }

        while (!v326);
      }

      v327 = a1 - 4;
      if (&a1[-4] != v36)
      {
        v328 = *(a1 - 35);
        v36[1] = a1[-3];
        v329 = *v327;
        *(v36 + 29) = v328;
        *v36 = v329;
      }

      LODWORD(a4) = 0;
      a13 = *&vars0[13];
      a1[-3] = *vars0;
      v330 = v497;
      *(a1 - 35) = a13;
      *v327 = v330;
      goto LABEL_3;
    }

LABEL_158:
    v246 = a1[1];
    *vars0 = v246;
    v497 = *a1;
    v247 = a1;
    do
    {
      v248 = 0;
      v249 = v247;
      v247 += 4;
      while (1)
      {
        v250 = *(v249 + v248 + 88);
        v251 = *&vars0[v248 + 8];
        if (v250 != v251)
        {
          break;
        }

        v248 -= 8;
        if (v248 == -32)
        {
          goto LABEL_164;
        }
      }
    }

    while (v250 < v251);
LABEL_164:
    v252 = a2;
    if (v249 == a1)
    {
      v260 = a2;
      while (v247 < v260)
      {
        v253 = v260 - 64;
        v261 = -5;
        v262 = (&v497 | 0x18);
        while (1)
        {
          v263 = *(v260 + 8 * v261);
          v265 = *v262--;
          v264 = v265;
          v266 = v263 >= v265;
          if (v263 != v265)
          {
            break;
          }

          if (--v261 == -9)
          {
            goto LABEL_184;
          }
        }

        LOBYTE(v28) = !v266;
LABEL_184:
        v260 -= 64;
        if (v263 != v264)
        {
          v260 = v253;
          if (v28)
          {
            goto LABEL_188;
          }
        }
      }

      v253 = v260;
    }

    else
    {
      while (1)
      {
        v253 = v252 - 64;
        v254 = -5;
        v255 = (&v497 | 0x18);
        while (1)
        {
          v256 = *(v252 + 8 * v254);
          v258 = *v255--;
          v257 = v258;
          v259 = v256 >= v258;
          if (v256 != v258)
          {
            break;
          }

          if (--v254 == -9)
          {
            goto LABEL_172;
          }
        }

        LOBYTE(v28) = !v259;
LABEL_172:
        v252 -= 64;
        if (v256 != v257)
        {
          v252 = v253;
          if (v28)
          {
            break;
          }
        }
      }
    }

LABEL_188:
    if (v247 < v253)
    {
      v267 = v247;
      v268 = v253;
      do
      {
        v269 = v267[3];
        a19 = v267[2];
        a20 = v269;
        v271 = v267[1];
        a17 = *v267;
        v270 = a17;
        a18 = v271;
        v272 = *v268;
        a16 = *(v268 + 16);
        *(v267 + 29) = *(v268 + 29);
        *v267 = v272;
        v267[1] = a16;
        v246 = *(&a18 + 13);
        *v268 = v270;
        *(v268 + 16) = v271;
        *(v268 + 29) = v246;
        do
        {
          v249 = v267;
          v267 += 4;
          v273 = (&v497 | 0x18);
          v274 = 11;
          while (1)
          {
            v275 = *(v249 + 8 * v274);
            v276 = *v273--;
            v277 = v275 >= v276;
            if (v275 != v276)
            {
              break;
            }

            if (--v274 == 7)
            {
              goto LABEL_197;
            }
          }
        }

        while (!v277);
        while (1)
        {
LABEL_197:
          v278 = v268 - 64;
          v279 = -5;
          v280 = (&v497 | 0x18);
          while (1)
          {
            v281 = *(v268 + 8 * v279);
            v283 = *v280--;
            v282 = v283;
            v284 = v281 >= v283;
            if (v281 != v283)
            {
              break;
            }

            if (--v279 == -9)
            {
              goto LABEL_204;
            }
          }

          v30 = !v284;
LABEL_204:
          v268 -= 64;
          if (v281 != v282)
          {
            v268 = v278;
            if (v30)
            {
              break;
            }
          }
        }

        v268 = v278;
      }

      while (v267 < v278);
    }

    if (v249 != a1)
    {
      v285 = *(v249 + 29);
      a1[1] = *(v249 + 16);
      v286 = *v249;
      *(a1 + 29) = v285;
      *a1 = v286;
    }

    a13 = *&vars0[13];
    *(v249 + 16) = *vars0;
    v287 = v497;
    *(v249 + 29) = a13;
    *v249 = v287;
    if (v247 < v253)
    {
LABEL_212:
      v290 = a3;
      a3 = v290;
      LODWORD(a4) = 0;
      a1 = (v249 + 64);
      goto LABEL_3;
    }

    v288 = a3;
    v496 = a1;
    a1 = (v249 + 64);
    {
      a2 = v249;
      a3 = v288;
      a1 = v496;
      LODWORD(a4) = HIDWORD(v495);
      if (!v289)
      {
        goto LABEL_2;
      }

      return a13;
    }

    a3 = v288;
    v36 = v496;
    LOBYTE(a4) = BYTE4(v495);
    if (!v289)
    {
      goto LABEL_212;
    }
  }

  v331 = 27;
  while (1)
  {
    v332 = *v33--;
    v333 = a1->n128_u64[v331];
    v334 = v332 >= v333;
    if (v332 != v333)
    {
      break;
    }

    if (--v331 == 23)
    {
      return a13;
    }
  }

  if (!v334)
  {
    v418 = 0;
    v419 = a1[15];
    a19 = a1[14];
    a20 = v419;
    v420 = a1[13];
    a17 = a1[12];
    a13 = a17;
    a18 = v420;
    v421 = *v494;
    v422 = *(v494 + 16);
    *(a1 + 221) = *(v494 + 29);
    a1[12] = v421;
    a1[13] = v422;
    v423 = *(&a18 + 13);
    *v494 = a13;
    *(v494 + 16) = v420;
    *(v494 + 29) = v423;
    while (1)
    {
      v424 = a1[13].n128_u64[v418 + 1];
      v425 = a1[9].n128_u64[v418 + 1];
      if (v424 != v425)
      {
        break;
      }

      if (--v418 == -4)
      {
        return a13;
      }
    }

    if (v424 < v425)
    {
      v467 = 0;
      a13 = a1[10];
      v469 = a1[8];
      a18 = a1[9];
      v468 = a18;
      a19 = a13;
      v470 = a1[13];
      a1[8] = a1[12];
      a1[9] = v470;
      *(a1 + 157) = *(a1 + 221);
      a1[12] = v469;
      a1[13] = v468;
      a13.n128_u64[0] = *(&a18.n128_u64[1] + 5);
      *(a1 + 221) = *(&a18 + 13);
      while (1)
      {
        v471 = a1[9].n128_u64[v467 + 1];
        v472 = a1[5].n128_u64[v467 + 1];
        if (v471 != v472)
        {
          break;
        }

        if (--v467 == -4)
        {
          return a13;
        }
      }

      if (v471 < v472)
      {
        v478 = 0;
        a13 = a1[6];
        v480 = a1[4];
        a18 = a1[5];
        v479 = a18;
        a19 = a13;
        v481 = a1[9];
        a1[4] = a1[8];
        a1[5] = v481;
        *(a1 + 93) = *(a1 + 157);
        a1[8] = v480;
        a1[9] = v479;
        a13.n128_u64[0] = *(&a18.n128_u64[1] + 5);
        *(a1 + 157) = *(&a18 + 13);
        while (1)
        {
          v482 = a1[5].n128_u64[v478 + 1];
          v483 = a1[1].n128_u64[v478 + 1];
          if (v482 != v483)
          {
            break;
          }

          if (--v478 == -4)
          {
            return a13;
          }
        }

        if (v482 < v483)
        {
LABEL_438:
          v484 = a1[1];
          v485 = a1[3];
          v486 = a1[4];
          a19 = a1[2];
          a20 = v485;
          a18 = v484;
          a17 = *a1;
          *(a1 + 29) = *(a1 + 93);
          v487 = a1[5];
          *a1 = v486;
          a1[1] = v487;
          a13 = a17;
          v488 = a18;
          *(a1 + 93) = *(&a18 + 13);
          a1[4] = a13;
          a1[5] = v488;
        }
      }
    }
  }

  return a13;
}

__int128 *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,anonymous namespace::DepthSortKey *,0>(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v6 = 24;
  while (1)
  {
    v7 = *(a2 + v6);
    v8 = *(result + v6);
    if (v7 != v8)
    {
      break;
    }

    v6 -= 8;
    if (v6 == -8)
    {
      goto LABEL_6;
    }
  }

  v4 = v7 < v8;
LABEL_6:
  v9 = v7 != v8 && v4;
  v10 = 24;
  while (1)
  {
    v11 = *(a3 + v10);
    v12 = *(a2 + v10);
    if (v11 != v12)
    {
      break;
    }

    v10 -= 8;
    if (v10 == -8)
    {
      goto LABEL_11;
    }
  }

  v5 = v11 < v12;
LABEL_11:
  if (v9)
  {
    if (v11 != v12 && v5)
    {
      v13 = result[1];
      v14 = *result;
      *v58 = HIDWORD(v13);
      *&v58[4] = result[2];
      v16 = *a3;
      v15 = a3[1];
      *(result + 29) = *(a3 + 29);
      *result = v16;
      result[1] = v15;
LABEL_27:
      *a3 = v14;
      a3[1] = v13;
      *(a3 + 29) = *&v58[1];
      goto LABEL_28;
    }

    v23 = *result;
    *v53 = result[1];
    *&v53[16] = result[2];
    v25 = *a2;
    v24 = a2[1];
    *(result + 29) = *(a2 + 29);
    *result = v25;
    result[1] = v24;
    *a2 = v23;
    a2[1] = *v53;
    *(a2 + 29) = *&v53[13];
    v26 = 24;
    while (1)
    {
      v27 = *(a3 + v26);
      v28 = *(a2 + v26);
      if (v27 != v28)
      {
        break;
      }

      v26 -= 8;
      if (v26 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v27 < v28)
    {
      v13 = a2[1];
      v14 = *a2;
      *v58 = HIDWORD(v13);
      *&v58[4] = a2[2];
      v33 = *a3;
      v32 = a3[1];
      *(a2 + 29) = *(a3 + 29);
      *a2 = v33;
      a2[1] = v32;
      goto LABEL_27;
    }
  }

  else if (v11 != v12 && v5)
  {
    v17 = *a2;
    *v52 = a2[1];
    *&v52[16] = a2[2];
    v19 = *a3;
    v18 = a3[1];
    *(a2 + 29) = *(a3 + 29);
    *a2 = v19;
    a2[1] = v18;
    *a3 = v17;
    a3[1] = *v52;
    *(a3 + 29) = *&v52[13];
    v20 = 24;
    while (1)
    {
      v21 = *(a2 + v20);
      v22 = *(result + v20);
      if (v21 != v22)
      {
        break;
      }

      v20 -= 8;
      if (v20 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v21 < v22)
    {
      v29 = *result;
      *v54 = result[1];
      *&v54[16] = result[2];
      v31 = *a2;
      v30 = a2[1];
      *(result + 29) = *(a2 + 29);
      *result = v31;
      result[1] = v30;
      *a2 = v29;
      a2[1] = *v54;
      *(a2 + 29) = *&v54[13];
    }
  }

LABEL_28:
  v34 = 24;
  while (1)
  {
    v35 = *(a4 + v34);
    v36 = *(a3 + v34);
    if (v35 != v36)
    {
      break;
    }

    v34 -= 8;
    if (v34 == -8)
    {
      return result;
    }
  }

  if (v35 < v36)
  {
    v37 = *a3;
    *v55 = a3[1];
    *&v55[16] = a3[2];
    v39 = *a4;
    v38 = a4[1];
    *(a3 + 29) = *(a4 + 29);
    *a3 = v39;
    a3[1] = v38;
    *a4 = v37;
    a4[1] = *v55;
    *(a4 + 29) = *&v55[13];
    v40 = 24;
    while (1)
    {
      v41 = *(a3 + v40);
      v42 = *(a2 + v40);
      if (v41 != v42)
      {
        break;
      }

      v40 -= 8;
      if (v40 == -8)
      {
        return result;
      }
    }

    if (v41 < v42)
    {
      v43 = *a2;
      *v56 = a2[1];
      *&v56[16] = a2[2];
      v45 = *a3;
      v44 = a3[1];
      *(a2 + 29) = *(a3 + 29);
      *a2 = v45;
      a2[1] = v44;
      *a3 = v43;
      a3[1] = *v56;
      *(a3 + 29) = *&v56[13];
      v46 = 24;
      while (1)
      {
        v47 = *(a2 + v46);
        v48 = *(result + v46);
        if (v47 != v48)
        {
          break;
        }

        v46 -= 8;
        if (v46 == -8)
        {
          return result;
        }
      }

      if (v47 < v48)
      {
        v49 = *result;
        *v57 = result[1];
        *&v57[16] = result[2];
        v51 = *a2;
        v50 = a2[1];
        *(result + 29) = *(a2 + 29);
        *result = v51;
        result[1] = v50;
        *a2 = v49;
        a2[1] = *v57;
        *(a2 + 29) = *&v57[13];
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,anonymous namespace::DepthSortKey *>(__int128 *a1, char *a2)
{
  v7 = (a2 - a1) >> 6;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v18 = 0;
        v9 = a2 - 64;
        while (1)
        {
          v19 = *(a1 + v18 + 88);
          v20 = *(a1 + v18 + 24);
          if (v19 != v20)
          {
            break;
          }

          v18 -= 8;
          if (v18 == -32)
          {
            goto LABEL_25;
          }
        }

        v2 = v19 < v20;
LABEL_25:
        v25 = v19 != v20 && v2;
        v26 = 11;
        v27 = a2 - 40;
        while (1)
        {
          v29 = *v27;
          v27 -= 8;
          v28 = v29;
          v30 = *(a1 + v26);
          v31 = v29 >= v30;
          if (v29 != v30)
          {
            break;
          }

          if (--v26 == 7)
          {
            goto LABEL_32;
          }
        }

        v4 = !v31;
LABEL_32:
        if (v25)
        {
          if (((v28 != v30) & v4) == 0)
          {
            v32 = 0;
            v33 = a1[2];
            v35 = *a1;
            *var10 = a1[1];
            v34 = *var10;
            *&var10[16] = v33;
            v36 = a1[5];
            *a1 = a1[4];
            a1[1] = v36;
            *(a1 + 29) = *(a1 + 93);
            a1[4] = v35;
            a1[5] = v34;
            *(a1 + 93) = *&var10[13];
            result = 1;
            while (1)
            {
              v38 = *&a2[v32 - 40];
              v39 = *(a1 + v32 + 88);
              if (v38 != v39)
              {
                break;
              }

              v32 -= 8;
              if (v32 == -32)
              {
                return result;
              }
            }

            if (v38 >= v39)
            {
              return 1;
            }

            v49 = a1[5];
            v91 = a1[6];
            v50 = a1[4];
            *var10 = v49;
            *&var10[16] = v91;
            v93 = *v9;
            v92 = *(a2 - 3);
            *(a1 + 93) = *(a2 - 35);
            a1[4] = v93;
            a1[5] = v92;
            goto LABEL_49;
          }

LABEL_48:
          v49 = a1[1];
          v48 = a1[2];
          v50 = *a1;
          *var10 = v49;
          *&var10[16] = v48;
          v52 = *v9;
          v51 = *(v9 + 1);
          *(a1 + 29) = *(v9 + 29);
          *a1 = v52;
          a1[1] = v51;
LABEL_49:
          *v9 = v50;
          *(v9 + 1) = v49;
          *(v9 + 29) = *&var10[13];
          return 1;
        }

        if (((v28 != v30) & v4) == 0)
        {
          return 1;
        }

        v61 = 0;
        v62 = a1[6];
        v64 = a1[4];
        *var10 = a1[5];
        v63 = *var10;
        *&var10[16] = v62;
        v66 = *v9;
        v65 = *(a2 - 3);
        *(a1 + 93) = *(a2 - 35);
        a1[4] = v66;
        a1[5] = v65;
        *v9 = v64;
        *(a2 - 3) = v63;
        *(a2 - 35) = *&var10[13];
        result = 1;
        while (1)
        {
          v67 = *(a1 + v61 + 88);
          v68 = *(a1 + v61 + 24);
          v69 = v67 >= v68;
          if (v67 != v68)
          {
            break;
          }

          v61 -= 8;
          if (v61 == -32)
          {
            return result;
          }
        }

        break;
      case 4:
        return 1;
      case 5:
        v12 = a2 - 64;
        v13 = a2 - 40;
        v14 = 27;
        while (1)
        {
          v15 = *v13;
          v13 -= 8;
          v16 = *(a1 + v14);
          v17 = v15 >= v16;
          if (v15 != v16)
          {
            break;
          }

          if (--v14 == 23)
          {
            return 1;
          }
        }

        if (v17)
        {
          return 1;
        }

        v53 = 0;
        v54 = a1[14];
        v56 = a1[12];
        *var10 = a1[13];
        v55 = *var10;
        *&var10[16] = v54;
        v58 = *v12;
        v57 = *(a2 - 3);
        *(a1 + 221) = *(a2 - 35);
        a1[12] = v58;
        a1[13] = v57;
        *v12 = v56;
        *(a2 - 3) = v55;
        *(a2 - 35) = *&var10[13];
        result = 1;
        while (1)
        {
          v59 = *(a1 + v53 + 216);
          v60 = *(a1 + v53 + 152);
          if (v59 != v60)
          {
            break;
          }

          v53 -= 8;
          if (v53 == -32)
          {
            return result;
          }
        }

        if (v59 >= v60)
        {
          return 1;
        }

        v84 = 0;
        v85 = a1[10];
        v87 = a1[8];
        *var10 = a1[9];
        v86 = *var10;
        *&var10[16] = v85;
        v88 = a1[13];
        a1[8] = a1[12];
        a1[9] = v88;
        *(a1 + 157) = *(a1 + 221);
        a1[12] = v87;
        a1[13] = v86;
        *(a1 + 221) = *&var10[13];
        result = 1;
        while (1)
        {
          v89 = *(a1 + v84 + 152);
          v90 = *(a1 + v84 + 88);
          if (v89 != v90)
          {
            break;
          }

          v84 -= 8;
          if (v84 == -32)
          {
            return result;
          }
        }

        if (v89 >= v90)
        {
          return 1;
        }

        v116 = 0;
        v117 = a1[6];
        v119 = a1[4];
        *var10 = a1[5];
        v118 = *var10;
        *&var10[16] = v117;
        v120 = a1[9];
        a1[4] = a1[8];
        a1[5] = v120;
        *(a1 + 93) = *(a1 + 157);
        a1[8] = v119;
        a1[9] = v118;
        *(a1 + 157) = *&var10[13];
        result = 1;
        while (1)
        {
          v121 = *(a1 + v116 + 88);
          v122 = *(a1 + v116 + 24);
          v69 = v121 >= v122;
          if (v121 != v122)
          {
            break;
          }

          v116 -= 8;
          if (v116 == -32)
          {
            return result;
          }
        }

        break;
      default:
        goto LABEL_19;
    }

    if (!v69)
    {
      v123 = a1[2];
      v125 = *a1;
      *var10 = a1[1];
      v124 = *var10;
      *&var10[16] = v123;
      v126 = a1[5];
      *a1 = a1[4];
      a1[1] = v126;
      *(a1 + 29) = *(a1 + 93);
      a1[4] = v125;
      a1[5] = v124;
      *(a1 + 93) = *&var10[13];
    }

    return 1;
  }

  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v8 = 0;
      v9 = a2 - 64;
      while (1)
      {
        v10 = *&a2[v8 - 40];
        v11 = *(a1 + v8 + 24);
        if (v10 != v11)
        {
          break;
        }

        v8 -= 8;
        if (v8 == -32)
        {
          return 1;
        }
      }

      if (v10 >= v11)
      {
        return 1;
      }

      goto LABEL_48;
    }

LABEL_19:
    v21 = 0;
    v22 = a1 + 8;
    while (1)
    {
      v23 = *(a1 + v21 + 88);
      v24 = *(a1 + v21 + 24);
      if (v23 != v24)
      {
        break;
      }

      v21 -= 8;
      if (v21 == -32)
      {
        goto LABEL_39;
      }
    }

    v3 = v23 < v24;
LABEL_39:
    v40 = 0;
    v41 = v23 != v24 && v3;
    while (1)
    {
      v42 = *(a1 + v40 + 152);
      v43 = *(a1 + v40 + 88);
      if (v42 != v43)
      {
        break;
      }

      v40 -= 8;
      if (v40 == -32)
      {
        goto LABEL_44;
      }
    }

    v3 = v42 < v43;
LABEL_44:
    if (!v41)
    {
      if (v42 != v43 && v3)
      {
        v70 = 0;
        v71 = a1[6];
        v73 = a1[4];
        *var10 = a1[5];
        v72 = *var10;
        *&var10[16] = v71;
        v74 = a1[9];
        a1[4] = *v22;
        a1[5] = v74;
        *(a1 + 93) = *(a1 + 157);
        *v22 = v73;
        a1[9] = v72;
        *(a1 + 157) = *&var10[13];
        while (1)
        {
          v75 = *(a1 + v70 + 88);
          v76 = *(a1 + v70 + 24);
          if (v75 != v76)
          {
            break;
          }

          v70 -= 8;
          if (v70 == -32)
          {
            goto LABEL_82;
          }
        }

        if (v75 < v76)
        {
          v94 = a1[2];
          v96 = *a1;
          *var10 = a1[1];
          v95 = *var10;
          *&var10[16] = v94;
          v97 = a1[5];
          *a1 = a1[4];
          a1[1] = v97;
          *(a1 + 29) = *(a1 + 93);
          a1[4] = v96;
          a1[5] = v95;
          *(a1 + 93) = *&var10[13];
        }
      }

      goto LABEL_82;
    }

    if (v42 != v43 && v3)
    {
      v45 = a1[1];
      v44 = a1[2];
      v46 = *a1;
      *var10 = v45;
      *&var10[16] = v44;
      v47 = a1[9];
      *a1 = *v22;
      a1[1] = v47;
      *(a1 + 29) = *(a1 + 157);
    }

    else
    {
      v77 = a1[2];
      v79 = *a1;
      *var10 = a1[1];
      v78 = *var10;
      *&var10[16] = v77;
      v80 = a1[5];
      *a1 = a1[4];
      a1[1] = v80;
      *(a1 + 29) = *(a1 + 93);
      a1[4] = v79;
      a1[5] = v78;
      *(a1 + 93) = *&var10[13];
      v81 = a1 + 19;
      v82 = -4;
      while (1)
      {
        v83 = *(v81 - 8);
        if (*v81 != v83)
        {
          break;
        }

        --v81;
        v17 = __CFADD__(v82++, 1);
        if (v17)
        {
          goto LABEL_82;
        }
      }

      if (*v81 >= v83)
      {
        goto LABEL_82;
      }

      v45 = a1[5];
      v98 = a1[6];
      v46 = a1[4];
      *var10 = v45;
      *&var10[16] = v98;
      v99 = a1[9];
      a1[4] = *v22;
      a1[5] = v99;
      *(a1 + 93) = *(a1 + 157);
    }

    *v22 = v46;
    a1[9] = v45;
    *(a1 + 157) = *&var10[13];
LABEL_82:
    v100 = a1 + 12;
    if (a1 + 12 != a2)
    {
      v101 = 0;
      v102 = a1 + 216;
      v103 = a1 + 88;
      while (2)
      {
        v104 = -4;
        v105 = v102;
        while (1)
        {
          v106 = *(v105 - 8);
          if (*v105 != v106)
          {
            break;
          }

          --v105;
          v17 = __CFADD__(v104++, 1);
          if (v17)
          {
            goto LABEL_100;
          }
        }

        if (*v105 < v106)
        {
          v107 = v100[1];
          v127 = *v100;
          *var10 = v107;
          *&var10[16] = v100[2];
          v108 = v103;
          v109 = v100;
          while (1)
          {
            v110 = v22[1];
            *v109 = *v22;
            v109[1] = v110;
            *(v109 + 29) = *(v22 + 29);
            if (v22 == a1)
            {
              break;
            }

            v109 = v22;
            v111 = 0;
            v22 -= 4;
            while (1)
            {
              v112 = *((&v127 | 0x18) + v111);
              v113 = *&v108[v111];
              if (v112 != v113)
              {
                break;
              }

              v111 -= 8;
              if (v111 == -32)
              {
                goto LABEL_99;
              }
            }

            v108 -= 64;
            if (v112 >= v113)
            {
              goto LABEL_99;
            }
          }

          v109 = a1;
LABEL_99:
          v114 = *&var10[13];
          v109[1] = *var10;
          v115 = v127;
          *(v109 + 29) = v114;
          *v109 = v115;
          if (++v101 == 8)
          {
            return v100 + 4 == a2;
          }
        }

LABEL_100:
        v22 = v100;
        v102 += 64;
        v103 += 64;
        v100 += 4;
        if (v100 != a2)
        {
          continue;
        }

        break;
      }
    }
  }

  return 1;
}