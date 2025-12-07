void re::RenderGraphContext::allocateRenderTargetsBeforeSetup(re::RenderGraphContext *this)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = *(*(this + 147) + 168);
  v5 = *(this + 12);
  v6 = *(v4 + 352);
  if (v6 <= v5)
  {
LABEL_57:
    *v69 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *v74 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v64 = 789;
    v65 = 2048;
    v66 = v5;
    v67 = 2048;
    *v68 = v6;
    _os_log_send_and_compose_impl(v43, v69, v74, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v56, v57);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v56 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *v74 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v64 = 468;
    v65 = 2048;
    v66 = v6;
    v67 = 2048;
    *v68 = v1;
    _os_log_send_and_compose_impl(v46, &v56, v74, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38);
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v56 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *v74 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v64 = 468;
    v65 = 2048;
    v66 = v6;
    v67 = 2048;
    *v68 = v1;
    _os_log_send_and_compose_impl(v49, &v56, v74, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38);
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v56 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *v74 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v64 = 468;
    v65 = 2048;
    v66 = v6;
    v67 = 2048;
    *v68 = v1;
    _os_log_send_and_compose_impl(v52, &v56, v74, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38);
    _os_crash_msg();
    __break(1u);
LABEL_73:
    v56 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *v74 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v64 = 468;
    v65 = 2048;
    v66 = v6;
    v67 = 2048;
    *v68 = v1;
    _os_log_send_and_compose_impl(v55, &v56, v74, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v4 + 368) + 200 * v5;
  if (*(v7 + 56))
  {
    v9 = 0;
    v10 = 52;
    do
    {
      v11 = *(this + 147);
      v12 = *(v11 + 168);
      v13 = *(v12 + 296);
      v6 = *(*(v7 + 72) + v10);
      v1 = *(v13 + 16);
      if (v1 <= v6)
      {
        *v69 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        *v74 = 0u;
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v62 = 136315906;
        *&v62[4] = "operator[]";
        v63 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v64 = 789;
        v65 = 2048;
        v66 = v6;
        v67 = 2048;
        *v68 = v1;
        _os_log_send_and_compose_impl(v34, v69, v74, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
LABEL_49:
        v56 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        *v74 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v62 = 136315906;
        *&v62[4] = "operator[]";
        v63 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v64 = 468;
        v65 = 2048;
        v66 = v2;
        v67 = 2048;
        *v68 = v3;
        _os_log_send_and_compose_impl(v37, &v56, v74, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38);
        _os_crash_msg();
        __break(1u);
LABEL_53:
        v61 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        *v74 = 0u;
        v38 = MEMORY[0x1E69E9C10];
        v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v69 = 136315906;
        *&v69[4] = "operator[]";
        *&v69[12] = 1024;
        if (v39)
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        *&v69[14] = 468;
        v70 = 2048;
        v71 = v2;
        v72 = 2048;
        v73 = v3;
        _os_log_send_and_compose_impl(v40, &v61, v74, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
        goto LABEL_57;
      }

      v14 = *(v13 + 32) + 48 * v6;
      if (*(v14 + 32) == *(this + 12))
      {
        if (*v14 == 1)
        {
          v17 = *(v14 + 8);
          v6 = v14 + 8;
          v59 = v17 >> 1;
          v60 = *(v6 + 16);
          v1 = re::RenderGraphExecutable::bufferDescription(v11, &v59);
          v18 = re::RenderGraphContext::metalBuffer(this, &v59);
          if (*re::BufferSlice::buffer(v18, v19))
          {
            if (*v1 != 2 || *(v1 + 16) != 1)
            {
              goto LABEL_43;
            }

            v2 = *this;
            re::StringID::StringID(v69, v6);
            v61 = (*v69 >> 1);
            v20 = *(this + 147);
            v6 = HIDWORD(v60);
            v1 = *(v20 + 80);
            if (v1 <= HIDWORD(v60))
            {
              goto LABEL_69;
            }
          }

          else
          {
            v27 = *(this + 4);
            v28 = HIDWORD(v60);
            re::StringID::StringID(&v56, v6);
            re::RenderGraphResourceAllocationManager::makeBuffer(v27, v1, &v56, v28, &v58);
            *v62 = v58;
            HIDWORD(v66) = 0;
            *&v68[2] = 0;
            *&v68[6] = [v58 length];
            v29 = *(this + 147);
            v2 = HIDWORD(v60);
            v3 = *(v29 + 80);
            if (v3 <= HIDWORD(v60))
            {
              goto LABEL_53;
            }

            v2 = *(v29 + 88) + 40 * HIDWORD(v60);
            std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v2, v62);
            *(v2 + 32) = *&v68[2];
            if (HIDWORD(v66) != -1)
            {
              (off_1F5D06320[HIDWORD(v66)])(v74, v62);
            }

            HIDWORD(v66) = -1;
            v30 = v58;
            if (v58)
            {

              v58 = 0;
            }

            if (v56)
            {
              if (v56)
              {
              }
            }

            if (*(v1 + 16) != 1)
            {
              goto LABEL_43;
            }

            v2 = *this;
            re::StringID::StringID(v69, v6);
            v61 = (*v69 >> 1);
            v20 = *(this + 147);
            v6 = HIDWORD(v60);
            v1 = *(v20 + 80);
            if (v1 <= HIDWORD(v60))
            {
              goto LABEL_65;
            }
          }

          v31 = re::BufferTable::setBuffer((v2 + 480), &v61, (*(v20 + 88) + 40 * v6));
          v61 = 0;
          if (v69[0])
          {
            if (v69[0])
            {
              v26 = *&v69[8];
              goto LABEL_42;
            }
          }
        }

        else if (!*v14)
        {
          v15 = *(v14 + 8);
          v6 = v14 + 8;
          v74[0] = (v15 >> 1);
          v74[1] = *(v6 + 16);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v12, v74, v69);
          v1 = re::RenderGraphExecutable::targetDescription(*(this + 147), v69);
          re::RenderGraphContext::metalTexture(this, v69, 0, 0, v74);
          if (v74[0])
          {

            if (*v1 != 2 || *(v1 + 40) != 1)
            {
              goto LABEL_43;
            }

            v2 = *this;
            re::StringID::StringID(&v59, v6);
            v61 = (v59 >> 1);
            v16 = *(this + 147);
            v6 = *&v69[12];
            v1 = *(v16 + 56);
            if (v1 <= *&v69[12])
            {
              goto LABEL_73;
            }
          }

          else
          {
            v21 = *(this + 4);
            v22 = *&v69[12];
            re::StringID::StringID(&v59, v6);
            re::RenderGraphResourceAllocationManager::makeTexture(v21, v1, &v59, v22, &v61);
            v23 = *(this + 147);
            v2 = *&v69[12];
            v3 = *(v23 + 56);
            if (v3 <= *&v69[12])
            {
              goto LABEL_49;
            }

            NS::SharedPtr<MTL::Texture>::operator=((*(v23 + 64) + 8 * *&v69[12]), &v61);
            v24 = v61;
            if (v61)
            {

              v61 = 0;
            }

            if (v59)
            {
              if (v59)
              {
              }
            }

            if (*(v1 + 40) != 1)
            {
              goto LABEL_43;
            }

            v2 = *this;
            re::StringID::StringID(&v59, v6);
            v61 = (v59 >> 1);
            v16 = *(this + 147);
            v6 = *&v69[12];
            v1 = *(v16 + 56);
            if (v1 <= *&v69[12])
            {
              goto LABEL_61;
            }
          }

          re::DynamicTextureTableAdd((v2 + 368), &v61, (*(v16 + 64) + 8 * v6));
          v61 = 0;
          if (v59)
          {
            if (v59)
            {
              v26 = v60;
LABEL_42:
            }
          }
        }
      }

LABEL_43:
      ++v9;
      v10 += 64;
    }

    while (*(v7 + 56) > v9);
  }
}

_anonymous_namespace_ *re::RenderGraphContext::checkForReadAfterWriteDependenciesWait(re::RenderGraphContext *this)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 147) + 168);
  v2 = *(this + 12);
  v3 = *(v1 + 352);
  if (v3 <= v2)
  {
    goto LABEL_27;
  }

  v2 = *(v1 + 368) + 200 * v2;
  if (*(v2 + 56))
  {
    v3 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(v2 + 72);
      v7 = *(*(*(this + 147) + 168) + 296);
      v8 = *(v6 + v3 + 52);
      v9 = *(v7 + 16);
      if (v9 <= v8)
      {
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
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
        v33 = v8;
        v34 = 2048;
        v35 = v9;
        _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
        _os_crash_msg();
        __break(1u);
LABEL_27:
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
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
        v33 = v2;
        v34 = 2048;
        v35 = v3;
        _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
        _os_crash_msg();
        __break(1u);
      }

      v10 = (*(v7 + 32) + 48 * v8);
      v11 = *(v6 + v3 + 4);
      if ((v11 - 1) >= 8 && v11 != 11)
      {
        if (!v11)
        {
          if (*v10 == 1)
          {
            v18 = *(this + 4);
            v19 = *(v6 + v3 + 44);
            LODWORD(v36) = v10[7];
            DWORD1(v36) = v19;
            re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add((v18 + 1368), &v36);
          }

          else if (!*v10)
          {
            v16 = *(this + 4);
            v17 = *(v6 + v3 + 44);
            LODWORD(v36) = v10[7];
            DWORD1(v36) = v17;
            re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add((v16 + 1328), &v36);
          }
        }

        goto LABEL_15;
      }

      if (*v10 == 1)
      {
        break;
      }

      if (!*v10)
      {
        v13 = *(this + 4);
        LODWORD(v36) = v10[7];
        v14 = (v13 + 1408);
LABEL_14:
        re::DynamicArray<int>::add(v14, &v36);
      }

LABEL_15:
      ++v5;
      v3 += 64;
      if (*(v2 + 56) <= v5)
      {
        return re::RenderGraphResourceAllocationManager::processResourceHazards(*(this + 4));
      }
    }

    v15 = *(this + 4);
    LODWORD(v36) = v10[7];
    v14 = (v15 + 1448);
    goto LABEL_14;
  }

  return re::RenderGraphResourceAllocationManager::processResourceHazards(*(this + 4));
}

void re::RenderGraphContext::handleManagedForceClear(re::RenderGraphContext *this)
{
  v1 = &v32;
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 147) + 168);
  v3 = *(this + 12);
  v4 = *(v2 + 352);
  if (v4 <= v3)
  {
    goto LABEL_25;
  }

  v6 = *(v2 + 368);
  if ((re::RenderGraphContext::setupUsesCustomEncoders(this) & 1) == 0)
  {
    v3 = v6 + 200 * v3;
    v7 = *(v3 + 56);
    if (v7)
    {
      v4 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(v3 + 72);
        v10 = *(*(this + 147) + 168);
        v11 = *(v10 + 296);
        v12 = *(v9 + v4 + 52);
        v13 = *(v11 + 16);
        if (v13 <= v12)
        {
          v26 = 0;
          v36 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v18 = MEMORY[0x1E69E9C10];
          v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v27 = 136315906;
          *&v27[4] = "operator[]";
          *&v27[12] = 1024;
          if (v19)
          {
            v20 = 3;
          }

          else
          {
            v20 = 2;
          }

          *&v27[14] = 789;
          v28 = 2048;
          v29 = v12;
          v30 = 2048;
          v31 = v13;
          _os_log_send_and_compose_impl(v20, &v26, &v32, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v27, 38, v24, v25[0]);
          _os_crash_msg();
          __break(1u);
LABEL_25:
          v26 = 0;
          v1[4] = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v21 = MEMORY[0x1E69E9C10];
          v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v27 = 136315906;
          *&v27[4] = "operator[]";
          *&v27[12] = 1024;
          if (v22)
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          *&v27[14] = 789;
          v28 = 2048;
          v29 = v3;
          v30 = 2048;
          v31 = v4;
          _os_log_send_and_compose_impl(v23, &v26, &v32, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v27, 38, v24, v25[0]);
          _os_crash_msg();
          __break(1u);
        }

        v14 = *(v11 + 32) + 48 * v12;
        if (!*v14)
        {
          break;
        }

LABEL_17:
        ++v8;
        v4 += 64;
        if (v7 <= v8)
        {
          return;
        }
      }

      *v27 = *(v14 + 8) >> 1;
      *&v27[8] = *(v14 + 24);
      re::RenderGraphResourceDescriptions::targetDescriptionSource(v10, v27, &v32);
      v15 = re::RenderGraphExecutable::targetDescription(*(this + 147), &v32);
      v16 = *(v9 + v4 + 4);
      if (v16 == 3)
      {
        if ((*(v15 + 4) - 253) <= 9 && ((1 << (*(v15 + 4) + 3)) & 0x385) != 0)
        {
LABEL_15:
          if (*(v9 + v4 + 32))
          {
            re::RenderGraphContext::acquireManagedRenderCommandEncoder(this, 0, v25);
            re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v25);
            return;
          }
        }
      }

      else if ((v16 - 1) <= 1)
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 56);
      goto LABEL_17;
    }
  }
}

uint64_t re::RenderGraphContext::setupUsesCustomEncoders(re::RenderGraphContext *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 147) + 168);
  v2 = *(this + 12);
  v3 = *(v1 + 352);
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

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v1 + 368) + 200 * v2 + 169);
}

uint64_t re::RenderGraphContext::encodeDrawBasedClear(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37, uint64_t a38, uint64_t a39, unsigned int a40, uint64_t a41, uint64_t a42, unsigned int a43, uint64_t a44, char *a45, unsigned int a46, uint64_t a47, char *a48, unsigned int a49, uint64_t a50, __int128 a51, __int128 a52, __int128 a53, __int128 a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t a61, uint64_t a62, __int128 a63)
{
  v65 = a3;
  STACK[0xA88] = *MEMORY[0x1E69E9840];
  *&STACK[0xA60] = 0u;
  *&STACK[0xA70] = 0u;
  *&STACK[0xA40] = 0u;
  *&STACK[0xA50] = 0u;
  *&STACK[0xA20] = 0u;
  *&STACK[0xA30] = 0u;
  *&STACK[0xA00] = 0u;
  *&STACK[0xA10] = 0u;
  (*(*(a3 + 8) + 160))(**(a3 + 8), sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Clear" encoding:{4, a5, a6, a7, a8}]);
  v68 = *(*a1 + 32);
  a61 = 0;
  a60 = 0;
  a62 = 0;
  a58 = 0;
  a57 = 0;
  a59 = 0;
  v69 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(a1[146], *(a1[5] + 48));
  if (v69)
  {
    v163 = *(v69 + 65);
    v70 = *(v69 + 64);
  }

  else
  {
    v163 = 0;
    v70 = 1;
  }

  v169 = v70;
  v71 = v70;
  re::FixedArray<re::mtl::Viewport>::init<>(&a60, v68, v70);
  re::FixedArray<re::Vector4<float>>::init<>(&a57, v68, v71);
  v72 = re::RenderGraphDataStore::tryGet<re::ViewportData>(a1[146], *(a1[5] + 48));
  re::RenderGraphContext::selectViewport(a1, v72, &a60, &a57, 0);
  STACK[0x9F8] = 0;
  *&STACK[0x9D0] = 0u;
  *&STACK[0x9E0] = 0u;
  *&STACK[0x9B0] = 0u;
  *&STACK[0x9C0] = 0u;
  *&STACK[0x990] = 0u;
  *&STACK[0x9A0] = 0u;
  LOBYTE(STACK[0x830]) = 0;
  *&STACK[0x858] = 0u;
  *&STACK[0x868] = 0u;
  v74 = re::DynamicString::setCapacity(&STACK[0x858], 0);
  *&STACK[0x888] = 0u;
  *&STACK[0x878] = 0u;
  re::DynamicString::setCapacity(&STACK[0x878], 0);
  LOBYTE(STACK[0x898]) = 0;
  LOBYTE(STACK[0x8C0]) = 0;
  STACK[0x8F8] = 0;
  STACK[0x8E8] = 0;
  STACK[0x8F0] = 0;
  LODWORD(STACK[0x900]) = 0;
  STACK[0x910] = 0;
  STACK[0x908] = 0;
  LOBYTE(STACK[0x918]) = 0;
  v75 = 264;
  LOBYTE(STACK[0x928]) = 0;
  do
  {
    *(&STACK[0x830] + v75) = 0;
    v75 += 8;
  }

  while (v75 != 328);
  LOBYTE(STACK[0x978]) = 0;
  LOBYTE(STACK[0x980]) = 0;
  LOBYTE(a51) = 0;
  *(&a53 + 1) = 0x700000007;
  LOBYTE(a54) = 7;
  *(&a54 + 1) = -1;
  WORD3(a54) = 0;
  v76 = *(a2 + 56);
  if (v76)
  {
    v161 = v68;
    v164 = v65;
    v167 = 0;
    v176 = 0;
    v180 = 0;
    v171 = 0;
    v173 = 0;
    v77 = *(a2 + 72);
    v78 = v76 << 6;
    v178 = 0;
    while (1)
    {
      v79 = v77[1];
      v80 = v79 > 0xB;
      v81 = (1 << v79) & 0xE31;
      if (v80 || v81 == 0)
      {
        break;
      }

LABEL_12:
      v77 += 16;
      v78 -= 64;
      if (!v78)
      {
        v174 = v171 | v173;
        v65 = v164;
        v68 = v161;
        goto LABEL_128;
      }
    }

    a45 = 0;
    v83 = *(*(a1[147] + 168) + 296);
    v84 = v77[13];
    v85 = *(v83 + 16);
    if (v85 <= v84)
    {
      a48 = 0;
      *&STACK[0x7F0] = 0u;
      *&STACK[0x800] = 0u;
      *&STACK[0x7D0] = 0u;
      *&STACK[0x7E0] = 0u;
      *&STACK[0x7C0] = 0u;
      v149 = MEMORY[0x1E69E9C10];
      v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(a63) = 136315906;
      *(&a63 + 4) = "operator[]";
      WORD6(a63) = 1024;
      if (v150)
      {
        v151 = 3;
      }

      else
      {
        v151 = 2;
      }

      *(&a63 + 14) = 789;
      WORD1(a64) = 2048;
      *(&a64 + 4) = v84;
      WORD6(a64) = 2048;
      *(&a64 + 14) = v85;
      _os_log_send_and_compose_impl(v151, &a48, &STACK[0x7C0], 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a63, 38, v152, v153);
      _os_crash_msg();
      __break(1u);
    }

    v86 = *(v83 + 32) + 48 * v84;
    STACK[0x7C0] = *(v86 + 8) >> 1;
    STACK[0x7C8] = *(v86 + 24);
    re::RenderGraphContext::metalTexture(a1, &STACK[0x7C0], 0, 0, &a63);
    NS::SharedPtr<MTL::Texture>::operator=(&a45, &a63);
    if (a63)
    {
    }

    v87 = re::RenderGraphCompiled::targetDescription(*(a1[147] + 168), &STACK[0x7C0]);
    v89 = v87[5];
    v88 = v87[6];
    v90 = v87[21];
    *&a63 = 0;
    v91 = v77[1];
    if ((v91 - 6) <= 2)
    {
      v92 = *(*(a1[147] + 168) + 296);
      if (*(v92 + 16) > v90)
      {
        v93 = *(v92 + 32) + 48 * v90;
        STACK[0x7C0] = *(v93 + 8) >> 1;
        STACK[0x7C8] = *(v93 + 24);
        re::RenderGraphContext::metalTexture(a1, &STACK[0x7C0], 0, 0, &a48);
        NS::SharedPtr<MTL::Texture>::operator=(&a63, &a48);
        if (a48)
        {
        }

        re::RenderGraphCompiled::targetDescription(*(a1[147] + 168), &STACK[0x7C0]);
        v91 = v77[1];
      }
    }

    if ((v91 - 6) < 3)
    {
      v94 = a63;
      if (!a63)
      {
        v89 = 4;
        goto LABEL_29;
      }
    }

    else
    {
      if ((v91 - 1) > 2)
      {
        goto LABEL_30;
      }

      v94 = a45;
      if (!a45)
      {
LABEL_29:
        STACK[0x920] = v89;
        v91 = v77[1];
LABEL_30:
        if ((v91 - 1) <= 2)
        {
          if (a45)
          {
            v180 = [a45 arrayLength];
            v91 = v77[1];
          }

          else
          {
            v180 = v88;
          }
        }

        if (v91 > 5)
        {
          if (v91 != 6)
          {
            if (v91 != 7)
            {
              if (v91 == 8)
              {
                v95 = a63;
                if (!a63)
                {
                  v95 = a45;
                }

                goto LABEL_45;
              }

LABEL_123:
              if (a63)
              {
              }

              if (a45)
              {
              }

              goto LABEL_12;
            }

            v101 = a63;
            if (!a63)
            {
              v101 = a45;
            }

            goto LABEL_75;
          }

          v96 = a63;
          if (!a63)
          {
            v96 = a45;
          }
        }

        else
        {
          if (v91 != 1)
          {
            if (v91 != 2)
            {
              if (v91 == 3)
              {
                v167 = v77[4];
                v95 = a45;
                if (!a45)
                {
LABEL_46:
                  if ((STACK[0x980] & 1) == 0)
                  {
                    LOBYTE(STACK[0x980]) = 1;
                  }

                  LODWORD(STACK[0x984]) = v95;
                  *(&a53 + 1) = 0x200000702000007;
                  v176 = *(v77 + 48);
                  v173 = 1;
                  goto LABEL_123;
                }

LABEL_45:
                LODWORD(v95) = [v95 pixelFormat];
                goto LABEL_46;
              }

              goto LABEL_123;
            }

            v178 = v77[4];
            v101 = a45;
            if (!a45)
            {
LABEL_76:
              if ((STACK[0x978] & 1) == 0)
              {
                LOBYTE(STACK[0x978]) = 1;
              }

              LODWORD(STACK[0x97C]) = v101;
              BYTE5(a54) = ((v101 - 250) < 0xB) & (0x425u >> (v101 + 6));
              LOBYTE(a54) = 7;
              v171 = 1;
              goto LABEL_123;
            }

LABEL_75:
            LODWORD(v101) = [v101 pixelFormat];
            goto LABEL_76;
          }

          *(&STACK[0xA00] + *v77) = *(v77 + 1);
          v96 = a45;
          if (!a45)
          {
LABEL_54:
            v97 = &STACK[0x938] + *v77;
            if ((*v97 & 1) == 0)
            {
              *v97 = 1;
            }

            *(v97 + 1) = v96;
            v98 = *(v77 + 48);
            v99 = *v77;
            *(&STACK[0x9F8] + v99) = v98;
            if (v96 <= 53)
            {
              if (v96 > 22)
              {
                if (v96 > 29)
                {
                  if (v96 >= 33)
                  {
                    if (v96 != 33)
                    {
                      if (v96 != 34)
                      {
                        v100 = 88;
                        if (v96 != 53)
                        {
                          goto LABEL_122;
                        }

                        goto LABEL_103;
                      }

LABEL_107:
                      v100 = 8;
                      goto LABEL_122;
                    }

LABEL_108:
                    v100 = 40;
                    goto LABEL_122;
                  }

LABEL_121:
                  v100 = 72;
                  goto LABEL_122;
                }

                if (v96 != 23)
                {
                  if (v96 != 24)
                  {
                    v100 = 88;
                    if (v96 != 25)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_117;
                  }

LABEL_104:
                  v100 = 0;
                  goto LABEL_122;
                }

LABEL_103:
                v100 = 32;
LABEL_122:
                *(&STACK[0x990] + v100 + v99) = v98;
                goto LABEL_123;
              }

              if (v96 > 12)
              {
                if (v96 <= 19)
                {
                  if (v96 != 13)
                  {
                    v100 = 88;
                    if (v96 != 14)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_104;
                  }

                  goto LABEL_103;
                }

                if (v96 != 20)
                {
                  v100 = 88;
                  if (v96 != 22)
                  {
                    goto LABEL_122;
                  }
                }
              }

              else if ((v96 - 10) >= 3)
              {
                v100 = 88;
                if (v96 != 1)
                {
                  goto LABEL_122;
                }
              }

LABEL_117:
              v100 = 64;
              goto LABEL_122;
            }

            if (v96 > 73)
            {
              if (v96 <= 104)
              {
                if (v96 > 102)
                {
                  if (v96 != 103)
                  {
                    goto LABEL_107;
                  }

                  goto LABEL_108;
                }

                if (v96 != 74)
                {
                  v100 = 88;
                  if (v96 != 91)
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_120;
                }
              }

              else
              {
                if (v96 <= 113)
                {
                  if (v96 == 105)
                  {
                    goto LABEL_121;
                  }

                  v100 = 88;
                  if (v96 != 113)
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_120;
                }

                if (v96 != 114)
                {
                  if (v96 != 123)
                  {
                    v100 = 88;
                    if (v96 != 124)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_105;
                  }

LABEL_120:
                  v100 = 56;
                  goto LABEL_122;
                }
              }

LABEL_105:
              v100 = 24;
              goto LABEL_122;
            }

            if (v96 <= 62)
            {
              if (v96 > 59)
              {
                if (v96 != 60)
                {
                  v100 = 88;
                  if (v96 != 62)
                  {
                    goto LABEL_122;
                  }
                }

                goto LABEL_121;
              }

              if (v96 != 54)
              {
                v100 = 88;
                if (v96 != 55)
                {
                  goto LABEL_122;
                }

                goto LABEL_117;
              }

              goto LABEL_104;
            }

            if (v96 <= 64)
            {
              if (v96 != 63)
              {
                goto LABEL_107;
              }

              goto LABEL_108;
            }

            if (v96 == 65)
            {
              goto LABEL_121;
            }

            v100 = 88;
            if (v96 != 73)
            {
              goto LABEL_122;
            }

            goto LABEL_120;
          }
        }

        LODWORD(v96) = [v96 pixelFormat];
        goto LABEL_54;
      }
    }

    v89 = [v94 sampleCount];
    goto LABEL_29;
  }

  v174 = 0;
  v180 = 0;
  v176 = 0;
  v167 = 0;
  v178 = 0;
LABEL_128:
  v102 = v68;
  STACK[0x8E8] = v68;
  v103 = re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(&STACK[0x8E8], 0x60uLL);
  v104 = 0;
  ++LODWORD(STACK[0x900]);
  do
  {
    *&STACK[0x7C0] = 0u;
    *&STACK[0x7D0] = 0u;
    re::DynamicString::setCapacity(&STACK[0x7C0], 0);
    *&STACK[0x814] = 0u;
    *&STACK[0x804] = 0u;
    *&STACK[0x7F4] = 0u;
    *&STACK[0x7E4] = 0u;
    LOBYTE(STACK[0x7E4]) = *(&STACK[0x990] + v104);
    LOWORD(STACK[0x7E0]) = 53;
    LOWORD(STACK[0x7E2]) = v104;
    v105 = re::DynamicArray<re::TechniqueFunctionConstant>::add(&STACK[0x8E8], &STACK[0x7C0]);
    v103 = STACK[0x7C0];
    if (STACK[0x7C0] && (STACK[0x7C8] & 1) != 0)
    {
      v103 = (*(*v103 + 40))(v103, STACK[0x7D0], v105);
    }

    ++v104;
  }

  while (v104 != 96);
  if (*(a1[1] + 366))
  {
    if ((STACK[0x928] & 1) == 0)
    {
      LOBYTE(STACK[0x928]) = 1;
    }

    STACK[0x930] = 2;
  }

  STACK[0x858] = v102;
  re::DynamicString::setCapacity(&STACK[0x858], 0);
  STACK[0x7C0] = "vertexShaderClearAll";
  STACK[0x7C8] = 20;
  re::DynamicString::operator=(&STACK[0x858], &STACK[0x7C0]);
  v106 = 0;
  while (*(&STACK[0x9F8] + v106) != 1)
  {
    if (++v106 == 8)
    {
      goto LABEL_142;
    }
  }

  STACK[0x878] = v102;
  re::DynamicString::setCapacity(&STACK[0x878], 0);
  STACK[0x7C0] = "fragmentShaderClearAll";
  STACK[0x7C8] = 22;
  re::DynamicString::operator=(&STACK[0x878], &STACK[0x7C0]);
LABEL_142:
  LOBYTE(STACK[0x918]) = 1;
  RenderPipelineState = re::getOrCreateRenderPipelineState(a1[1], &STACK[0x830]);
  (*(*(v65 + 8) + 56))(**(v65 + 8), sel_setRenderPipelineState_, *RenderPipelineState);
  if (v174)
  {
    DepthStencilState = re::getOrCreateDepthStencilState(a1[1], a1[3], &a51);
    (*(*(v65 + 8) + 112))(**(v65 + 8), sel_setDepthStencilState_, *DepthStencilState);
    if (v176)
    {
      (*(*(v65 + 8) + 120))(**(v65 + 8), sel_setStencilReferenceValue_, v167);
    }
  }

  if (a51 == 1 && *(&a51 + 1) && (a52 & 1) != 0)
  {
    (*(**(&a51 + 1) + 40))();
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&STACK[0x8E8]);
  if (LOBYTE(STACK[0x8C0]) == 1 && STACK[0x8C8])
  {
    if (STACK[0x8D0])
    {
      (*(*STACK[0x8C8] + 40))(STACK[0x8C8], STACK[0x8D8]);
    }

    *&STACK[0x8D8] = 0u;
    *&STACK[0x8C8] = 0u;
  }

  if (LOBYTE(STACK[0x898]) == 1 && STACK[0x8A0])
  {
    if (STACK[0x8A8])
    {
      (*(*STACK[0x8A0] + 40))(STACK[0x8A0], STACK[0x8B0]);
    }

    *&STACK[0x8A0] = 0u;
    *&STACK[0x8B0] = 0u;
  }

  if (STACK[0x878])
  {
    if (STACK[0x880])
    {
      (*(*STACK[0x878] + 40))(STACK[0x878], STACK[0x888]);
    }

    *&STACK[0x888] = 0u;
    *&STACK[0x878] = 0u;
  }

  if (STACK[0x858])
  {
    if (STACK[0x860])
    {
      (*(*STACK[0x858] + 40))(STACK[0x858], STACK[0x868]);
    }

    *&STACK[0x868] = 0u;
    *&STACK[0x858] = 0u;
  }

  if (LOBYTE(STACK[0x830]) == 1 && STACK[0x838] && (STACK[0x840] & 1) != 0)
  {
    (*(*STACK[0x838] + 40))(STACK[0x838], STACK[0x848]);
  }

  (*(*(v65 + 8) + 64))(**(v65 + 8), sel_setCullMode_, 2);
  (*(*(v65 + 8) + 136))(**(v65 + 8), sel_setFrontFacingWinding_, 1);
  re::mtl::RenderCommandEncoder::setViewports(v65);
  re::setVertexAmplificationCount(*(a1[1] + 366), v163 & 1, a61, 0xFFFF, v65, v109);
  *&v110 = __PAIR64__(1.0, -1.0);
  LODWORD(v111) = -1.0;
  *(&v110 + 1) = __PAIR64__(1.0, v178);
  *&v112 = __PAIR64__(-1.0, 1.0);
  DWORD1(v111) = -1.0;
  *(&v111 + 1) = __PAIR64__(1.0, v178);
  *&STACK[0x7C0] = v110;
  *&STACK[0x7D0] = v111;
  *(&v112 + 1) = __PAIR64__(1.0, v178);
  __asm { FMOV            V0.4S, #1.0 }

  DWORD2(_Q0) = v178;
  *&STACK[0x7E0] = v112;
  *&STACK[0x7F0] = _Q0;
  (*(*(v65 + 8) + 8))(**(v65 + 8), sel_setVertexBytes_length_atIndex_, &STACK[0x7C0], 64, 0);
  a53 = 0u;
  a54 = 0u;
  a52 = 0u;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&STACK[0x830], (*a1 + 16), 0xA0uLL, 0x20uLL);
  v117 = STACK[0x840];
  v118 = STACK[0x830] + LODWORD(STACK[0x838]);
  *(v118 + 16) = 0;
  *(v118 + 28) = 1;
  *(v118 + 32) = a51;
  *(v118 + 48) = a52;
  *(v118 + 64) = a53;
  *(v118 + 80) = a54;
  (*(*(v65 + 8) + 16))(**(v65 + 8), sel_setVertexBuffer_offset_atIndex_, v117);
  a64 = 0u;
  a65 = 0u;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&STACK[0x830], (*a1 + 16), 0x400uLL, 0x100uLL);
  v119 = STACK[0x840];
  v120 = STACK[0x830] + LODWORD(STACK[0x838]);
  *v120 = xmmword_1E3047670;
  *(v120 + 16) = xmmword_1E3047680;
  *(v120 + 32) = xmmword_1E30476A0;
  *(v120 + 48) = xmmword_1E30474D0;
  *(v120 + 64) = xmmword_1E3047670;
  *(v120 + 80) = xmmword_1E3047680;
  *(v120 + 96) = xmmword_1E30476A0;
  *(v120 + 112) = xmmword_1E30474D0;
  *(v120 + 128) = xmmword_1E3047670;
  *(v120 + 144) = xmmword_1E3047680;
  *(v120 + 160) = xmmword_1E30476A0;
  *(v120 + 176) = xmmword_1E30474D0;
  *(v120 + 192) = xmmword_1E3047670;
  *(v120 + 208) = xmmword_1E3047680;
  *(v120 + 224) = xmmword_1E30476A0;
  *(v120 + 240) = xmmword_1E30474D0;
  *(v120 + 256) = xmmword_1E3047670;
  *(v120 + 272) = xmmword_1E3047680;
  *(v120 + 288) = xmmword_1E30476A0;
  *(v120 + 304) = xmmword_1E30474D0;
  *(v120 + 320) = xmmword_1E3047670;
  *(v120 + 336) = xmmword_1E3047680;
  *(v120 + 352) = xmmword_1E30476A0;
  *(v120 + 368) = xmmword_1E30474D0;
  *(v120 + 384) = xmmword_1E3047670;
  *(v120 + 400) = xmmword_1E3047680;
  *(v120 + 416) = xmmword_1E30476A0;
  *(v120 + 432) = xmmword_1E30474D0;
  *(v120 + 448) = xmmword_1E3047670;
  *(v120 + 464) = xmmword_1E3047680;
  *(v120 + 480) = xmmword_1E30476A0;
  *(v120 + 496) = xmmword_1E30474D0;
  *(v120 + 512) = xmmword_1E3047670;
  *(v120 + 528) = xmmword_1E3047680;
  *(v120 + 544) = xmmword_1E30476A0;
  *(v120 + 560) = xmmword_1E30474D0;
  *(v120 + 576) = xmmword_1E3047670;
  *(v120 + 592) = xmmword_1E3047680;
  *(v120 + 608) = xmmword_1E30476A0;
  *(v120 + 624) = xmmword_1E30474D0;
  *(v120 + 640) = xmmword_1E3047670;
  *(v120 + 656) = xmmword_1E3047680;
  *(v120 + 672) = xmmword_1E30476A0;
  *(v120 + 688) = xmmword_1E30474D0;
  *(v120 + 704) = xmmword_1E3047670;
  *(v120 + 720) = xmmword_1E3047680;
  *(v120 + 736) = xmmword_1E30476A0;
  *(v120 + 752) = xmmword_1E30474D0;
  *(v120 + 880) = 0u;
  *(v120 + 896) = 0u;
  *(v120 + 848) = 0u;
  *(v120 + 864) = 0u;
  *(v120 + 816) = 0u;
  *(v120 + 832) = 0u;
  *(v120 + 784) = 0u;
  *(v120 + 800) = 0u;
  *(v120 + 768) = 0u;
  *(v120 + 940) = v169;
  *(v120 + 944) = v163 & 1;
  *(v120 + 960) = 0u;
  *(v120 + 1008) = a65;
  *(v120 + 976) = a63;
  *(v120 + 992) = a64;
  (*(*(v65 + 8) + 16))(**(v65 + 8), sel_setVertexBuffer_offset_atIndex_, v119);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a48, (*a1 + 16), 0xCuLL, 0x10uLL);
  v121 = a49;
  *&v122 = STACK[0xA00];
  *&v123 = STACK[0xA10];
  v177 = STACK[0xA10];
  v179 = STACK[0xA00];
  *&v124 = STACK[0xA20];
  *&v125 = STACK[0xA30];
  v172 = STACK[0xA30];
  v175 = STACK[0xA20];
  *&v126 = STACK[0xA40];
  *&v127 = STACK[0xA50];
  v168 = STACK[0xA50];
  v170 = STACK[0xA40];
  DWORD2(v122) = STACK[0xA08];
  v162 = v122;
  v128 = v123;
  DWORD2(v128) = STACK[0xA18];
  v160 = v128;
  v129 = v124;
  DWORD2(v129) = STACK[0xA28];
  v159 = v129;
  v130 = v125;
  DWORD2(v130) = STACK[0xA38];
  v158 = v130;
  v131 = v126;
  DWORD2(v131) = STACK[0xA48];
  vars0 = v131;
  v132 = &a48[a49];
  v133 = v127;
  DWORD2(v133) = STACK[0xA58];
  v156 = v133;
  *&v133 = STACK[0xA60];
  *&v125 = STACK[0xA70];
  v165 = STACK[0xA70];
  v166 = STACK[0xA60];
  DWORD2(v133) = STACK[0xA68];
  v155 = v133;
  *v132 = 0x200010000;
  v134 = v125;
  DWORD2(v134) = STACK[0xA78];
  v154 = v134;
  *(v132 + 2) = 196610;
  v135 = *&STACK[0xA10];
  *&STACK[0x830] = *&STACK[0xA00];
  *&STACK[0x840] = v135;
  v136 = *&STACK[0xA30];
  *&STACK[0x850] = *&STACK[0xA20];
  *&STACK[0x860] = v136;
  v137 = *&STACK[0xA50];
  *&STACK[0x870] = *&STACK[0xA40];
  *&STACK[0x880] = v137;
  v138 = *&STACK[0xA70];
  *&STACK[0x890] = *&STACK[0xA60];
  *&STACK[0x8A0] = v138;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a45, (*a1 + 16), 0x20uLL, 0x10uLL);
  v139.i64[0] = v175;
  v139.i64[1] = v172;
  v140.i64[0] = v179;
  v140.i64[1] = v177;
  v141 = vuzp1q_s32(v140, v139);
  v140.i64[0] = v166;
  v140.i64[1] = v165;
  v142.i64[0] = v170;
  v142.i64[1] = v168;
  v143 = &a45[a46];
  *v143 = v141;
  v143[1] = vuzp1q_s32(v142, v140);
  (*(*(v65 + 8) + 88))(**(v65 + 8), sel_setFragmentBuffer_offset_atIndex_, a47);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a42, (*a1 + 16), 0x40uLL, 0x10uLL);
  v144 = (a42 + a43);
  *v144 = v179;
  v144[1] = v177;
  v144[2] = v175;
  v144[3] = v172;
  v144[4] = v170;
  v144[5] = v168;
  v144[6] = v166;
  v144[7] = v165;
  (*(*(v65 + 8) + 88))(**(v65 + 8), sel_setFragmentBuffer_offset_atIndex_, a44);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a39, (*a1 + 16), 0x80uLL, 0x10uLL);
  v145 = (a39 + a40);
  *v145 = v162;
  v145[1] = v160;
  v145[2] = v159;
  v145[3] = v158;
  v145[4] = vars0;
  v145[5] = v156;
  v145[6] = v155;
  v145[7] = v154;
  (*(*(v65 + 8) + 88))(**(v65 + 8), sel_setFragmentBuffer_offset_atIndex_, a41);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a36, (*a1 + 16), 0x80uLL, 0x10uLL);
  v146 = (a36 + a37);
  v146[3] = *&STACK[0x860];
  v146[2] = *&STACK[0x850];
  v146[1] = *&STACK[0x840];
  *v146 = *&STACK[0x830];
  v146[7] = *&STACK[0x8A0];
  v146[6] = *&STACK[0x890];
  v146[5] = *&STACK[0x880];
  v146[4] = *&STACK[0x870];
  (*(*(v65 + 8) + 88))(**(v65 + 8), sel_setFragmentBuffer_offset_atIndex_, a38);
  if (v163)
  {
    if (v180 / a61 <= 1)
    {
      v147 = 1;
    }

    else
    {
      v147 = v180 / a61;
    }
  }

  else
  {
    v147 = v180;
  }

  (*(*(v65 + 8) + 240))(**(v65 + 8), sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_, 3, 6, 0, a50, v121, v147);
  (*(*(v65 + 8) + 168))(**(v65 + 8), sel_popDebugGroup);
  if (a57 && a58)
  {
    (*(*a57 + 40))();
  }

  result = a60;
  if (a60)
  {
    if (a61)
    {
      return (*(*a60 + 40))();
    }
  }

  return result;
}

uint64_t *re::FixedArray<re::mtl::Viewport>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 4);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      result[1] = 0;
      result[2] = 0x3F80000000000000;
      result += 3;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0x3F80000000000000;
  return result;
}

__n128 re::DynamicArray<re::TechniqueFunctionConstant>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v6 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v7 = *(a2 + 16);
  *(a2 + 24) = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 64) = v11;
  *(v5 + 80) = v12;
  *(v5 + 48) = v10;
  result = *(a2 + 32);
  *(v5 + 32) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphContext::releaseRenderTargetsAfterSetup(re::RenderGraphContext *this)
{
  v2 = v49;
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 147) + 168);
  v4 = *(this + 12);
  v5 = *(v3 + 352);
  if (v5 <= v4)
  {
    goto LABEL_39;
  }

  v6 = *(v3 + 368) + 200 * v4;
  if (*(v6 + 56))
  {
    v8 = 0;
    v9 = 52;
    do
    {
      v10 = *(this + 147);
      v11 = *(v10 + 168);
      v12 = *(v11 + 296);
      v4 = *(*(v6 + 72) + v9);
      v5 = *(v12 + 16);
      if (v5 <= v4)
      {
        v39 = 0;
        v53 = 0u;
        v51 = 0u;
        v52 = 0u;
        *v49 = 0u;
        v50 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v42 = 136315906;
        *&v42[4] = "operator[]";
        v43 = 1024;
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v44 = 789;
        v45 = 2048;
        v46 = v4;
        v47 = 2048;
        v48 = v5;
        _os_log_send_and_compose_impl(v28, &v39, v49, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v42, 38, v38);
        _os_crash_msg();
        __break(1u);
LABEL_31:
        v41 = 0;
        v53 = 0u;
        v51 = 0u;
        v52 = 0u;
        *v49 = 0u;
        v50 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v42 = 136315906;
        *&v42[4] = "operator[]";
        v43 = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v44 = 468;
        v45 = 2048;
        v46 = v5;
        v47 = 2048;
        v48 = v1;
        _os_log_send_and_compose_impl(v31, &v41, v49, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v42, 38, v38, v39);
        _os_crash_msg();
        __break(1u);
LABEL_35:
        v41 = 0;
        v53 = 0u;
        v51 = 0u;
        v52 = 0u;
        *v49 = 0u;
        v50 = 0u;
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v42 = 136315906;
        *&v42[4] = "operator[]";
        v43 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v44 = 468;
        v45 = 2048;
        v46 = v5;
        v47 = 2048;
        v48 = v1;
        _os_log_send_and_compose_impl(v34, &v41, v49, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v42, 38, v38, v39);
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v39 = 0;
        *(v2 + 4) = 0u;
        v51 = 0u;
        v52 = 0u;
        *v49 = 0u;
        v50 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v42 = 136315906;
        *&v42[4] = "operator[]";
        v43 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v44 = 789;
        v45 = 2048;
        v46 = v4;
        v47 = 2048;
        v48 = v5;
        _os_log_send_and_compose_impl(v37, &v39, v49, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v42, 38, v38);
        _os_crash_msg();
        __break(1u);
      }

      v13 = *(v12 + 32) + 48 * v4;
      if (*(v13 + 36) == *(this + 12))
      {
        if (*v13 == 1)
        {
          v4 = (v13 + 8);
          v39 = *(v13 + 8) >> 1;
          v40 = *(v13 + 24);
          v21 = re::RenderGraphExecutable::bufferDescription(v10, &v39);
          v1 = *(this + 4);
          v22 = HIDWORD(v40);
          re::StringID::StringID(v49, (v13 + 8));
          v23 = re::RenderGraphResourceAllocationManager::releaseBuffer(v1, v22, v49[1]);
          if (v49[0])
          {
            if (v49[0])
            {
            }
          }

          if (*v21 == 2)
          {
            goto LABEL_25;
          }

          v24 = *(this + 147);
          v5 = *(v13 + 28);
          v1 = *(v24 + 80);
          if (v1 <= v5)
          {
            goto LABEL_35;
          }

          re::BufferSlice::deinit((*(v24 + 88) + 40 * v5));
          if (*(v21 + 16) != 1)
          {
            goto LABEL_25;
          }

          v25 = *this;
          re::StringID::StringID(v49, v4);
          *v42 = v49[0] >> 1;
          v20 = re::BufferTable::removeBuffer((v25 + 480), v42);
        }

        else
        {
          if (*v13)
          {
            goto LABEL_25;
          }

          v4 = (v13 + 8);
          v49[0] = (*(v13 + 8) >> 1);
          v49[1] = *(v13 + 24);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v11, v49, &v39);
          v14 = re::RenderGraphExecutable::targetDescription(*(this + 147), &v39);
          v1 = *(this + 4);
          v15 = HIDWORD(v40);
          re::StringID::StringID(v49, (v13 + 8));
          v16 = re::RenderGraphResourceAllocationManager::releaseTexture(v1, v15, v49[1]);
          if (v49[0])
          {
            if (v49[0])
            {
            }
          }

          if (*v14 == 2)
          {
            goto LABEL_25;
          }

          v17 = *(this + 147);
          v5 = *(v13 + 28);
          v1 = *(v17 + 56);
          if (v1 <= v5)
          {
            goto LABEL_31;
          }

          v1 = *(v17 + 64);

          *(v1 + v5) = 0;
          if (*(v14 + 40) != 1)
          {
            goto LABEL_25;
          }

          v18 = *this;
          re::StringID::StringID(v49, v4);
          *v42 = v49[0] >> 1;
          v20 = re::DynamicTextureTableRemove((v18 + 368), v42, v19);
        }

        *v42 = 0;
        if (v49[0])
        {
          if (v49[0])
          {
          }
        }
      }

LABEL_25:
      ++v8;
      v9 += 64;
    }

    while (*(v6 + 56) > v8);
  }
}

void re::RenderGraphContext::renderPassDescriptor(id *this, unint64_t *a2, unint64_t *a3)
{
  v183 = *MEMORY[0x1E69E9840];
  v3 = *(a2[147] + 168);
  v4 = *(a2 + 12);
  v5 = *(v3 + 352);
  if (v5 <= v4)
  {
LABEL_273:
    *v173 = 0;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v178 = 0u;
    v151 = MEMORY[0x1E69E9C10];
    v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    if (v152)
    {
      v153 = 3;
    }

    else
    {
      v153 = 2;
    }

    *&buf[14] = 789;
    *&buf[18] = 2048;
    *&buf[20] = v4;
    *&buf[28] = 2048;
    *&buf[30] = v5;
    _os_log_send_and_compose_impl(v153, v173, &v178, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v159, v160);
    _os_crash_msg();
    __break(1u);
LABEL_277:
    *v173 = 0;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v178 = 0u;
    v154 = MEMORY[0x1E69E9C10];
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    *&buf[14] = 789;
    *&buf[18] = 2048;
    *&buf[20] = v4;
    *&buf[28] = 2048;
    *&buf[30] = v5;
    _os_log_send_and_compose_impl(v156, v173, &v178, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v159, v160);
    _os_crash_msg();
    __break(1u);
    goto LABEL_281;
  }

  v8 = *(v3 + 368) + 200 * v4;
  v9 = [objc_msgSend(MEMORY[0x1E6974128] alloc)];
  *this = v9;
  if (*(v8 + 194) == 1)
  {
    [v9 setSkipEmptyTilesOnClearEnabled_];
  }

  v10 = *(v8 + 56);
  v163 = v8;
  v165 = this;
  v11 = 0;
  if (!v10)
  {
    goto LABEL_240;
  }

  v12 = (v10 << 6);
  v5 = 48;
  v162 = *(a2[1] + 368);
  v164 = *(a2 + 12);
  v4 = *(v8 + 72);
  v13 = 0x1FB023000;
  do
  {
    v14 = *(a2[147] + 168);
    v15 = *(v14 + 296);
    v16 = v4[13];
    v17 = *(v15 + 16);
    if (v17 <= v16)
    {
      *v173 = 0;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      v136 = MEMORY[0x1E69E9C10];
      v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v137)
      {
        v138 = 3;
      }

      else
      {
        v138 = 2;
      }

      *&buf[14] = 789;
      *&buf[18] = 2048;
      *&buf[20] = v16;
      *&buf[28] = 2048;
      *&buf[30] = v17;
      _os_log_send_and_compose_impl(v138, v173, &v178, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v159, v160);
      _os_crash_msg();
      __break(1u);
LABEL_257:
      *v173 = 0;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      v139 = MEMORY[0x1E69E9C10];
      v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v140)
      {
        v141 = 3;
      }

      else
      {
        v141 = 2;
      }

      *&buf[14] = 789;
      *&buf[18] = 2048;
      *&buf[20] = v16;
      *&buf[28] = 2048;
      *&buf[30] = v17;
      _os_log_send_and_compose_impl(v141, v173, &v178, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v159, v160);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      v170 = 0;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      v142 = MEMORY[0x1E69E9C10];
      v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v143)
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      *&v173[14] = 789;
      v174 = 2048;
      v175 = v12;
      v176 = 2048;
      v177 = v13;
      _os_log_send_and_compose_impl(v144, &v170, &v178, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v159, v160);
      _os_crash_msg();
      __break(1u);
LABEL_265:
      v170 = 0;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      v145 = MEMORY[0x1E69E9C10];
      v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v146)
      {
        v147 = 3;
      }

      else
      {
        v147 = 2;
      }

      *&v173[14] = 789;
      v174 = 2048;
      v175 = v12;
      v176 = 2048;
      v177 = v13;
      _os_log_send_and_compose_impl(v147, &v170, &v178, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v159, v160);
      _os_crash_msg();
      __break(1u);
LABEL_269:
      v170 = 0;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      v148 = MEMORY[0x1E69E9C10];
      v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v149)
      {
        v150 = 3;
      }

      else
      {
        v150 = 2;
      }

      *&v173[14] = 789;
      v174 = 2048;
      v175 = v12;
      v176 = 2048;
      v177 = v13;
      _os_log_send_and_compose_impl(v150, &v170, &v178, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v159, v160);
      _os_crash_msg();
      __break(1u);
      goto LABEL_273;
    }

    v18 = *(v15 + 32) + 48 * v16;
    if (*v18 == 1)
    {
      if (v4[1] == 9)
      {
        *&v178 = *(v18 + 8) >> 1;
        *(&v178 + 1) = *(v18 + 24);
        v19 = re::RenderGraphContext::metalBuffer(a2, &v178);
        v21 = *re::BufferSlice::buffer(v19, v20);
        [*this v13[137]];
        if (v21)
        {
        }
      }

      goto LABEL_95;
    }

    *&v178 = *(v18 + 8) >> 1;
    *(&v178 + 1) = *(v18 + 24);
    re::RenderGraphResourceDescriptions::targetDescriptionSource(v14, &v178, v173);
    v22 = re::RenderGraphExecutable::targetDescription(a2[147], v173);
    v23 = v22;
    v24 = v4[1];
    if (v24 == 3)
    {
      v37 = (*(v22 + 4) - 253) > 9 || ((1 << (*(v22 + 4) + 3)) & 0x385) == 0;
      if (v37 && (*(v4 + 33) & 1) != 0)
      {
        goto LABEL_95;
      }

      v25 = *this;
      v38 = [*this stencilAttachment];
      re::RenderGraphContext::metalTexture(a2, v173, 0, 0, &v178);
      [v38 setTexture_];
      if (v178)
      {
      }

      re::RenderGraphContext::metalTexture(a2, v173, 0, 0, &v178);
      v39 = [v178 protectionOptions];
      if (v178)
      {
      }

      v11 |= v39;
      if (*v23 == 4 || *v23 == 3)
      {
        goto LABEL_51;
      }

      v46 = *(v18 + 36);
      if (*(v4 + 32))
      {
        v47 = 2;
      }

      else
      {
        v47 = v23[16];
      }

      [objc_msgSend(v25 stencilAttachment)];
      if ((v23[18] & 0x70) == 0x30)
      {
        v48 = [v25 stencilAttachment];
      }

      else
      {
        v49 = *v23;
        v48 = [v25 stencilAttachment];
        if (v164 != v46 || v49 == 2)
        {
          v51 = 1;
          goto LABEL_81;
        }
      }

      v51 = 0;
LABEL_81:
      [v48 setStoreAction_];
      this = v165;
      v13 = &selRef_iosurface;
      [objc_msgSend(v25 stencilAttachment)];
      v52 = v23[6];
      if (v162)
      {
        goto LABEL_93;
      }

      if (v52 == 1)
      {
        goto LABEL_94;
      }

      if (!v52)
      {
        [v25 setRenderTargetArrayLength_];
LABEL_94:
        v5 = 48;
        goto LABEL_95;
      }

      v66 = [v25 setRenderTargetArrayLength_];
      if (atomic_exchange(&unk_1EE1B991B, 1u))
      {
        goto LABEL_94;
      }

      v67 = *re::graphicsLogObjects(v66);
      v5 = 48;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphContext::resourceFromIndex(&v178, a2, *&v173[8]);
        re::StringID::StringID(&v168, (&v178 + 8));
        v68 = v23[6];
        *buf = 136315394;
        *&buf[4] = v169;
        *&buf[12] = 1024;
        *&buf[14] = v68;
        v59 = v67;
        v60 = "Stencil target (%s) has arrayLength of %d, but device does not support Layered Rendering.";
        goto LABEL_120;
      }

      goto LABEL_95;
    }

    if (v24 == 2)
    {
      v31 = (*(v22 + 4) - 250) > 0xA || ((1 << (*(v22 + 4) + 6)) & 0x425) == 0;
      if (v31 && (*(v4 + 33) & 1) != 0)
      {
        goto LABEL_95;
      }

      v25 = *this;
      v32 = [*this depthAttachment];
      re::RenderGraphContext::metalTexture(a2, v173, 0, 0, &v178);
      [v32 setTexture_];
      if (v178)
      {
      }

      re::RenderGraphContext::metalTexture(a2, v173, 0, 0, &v178);
      v33 = [v178 protectionOptions];
      if (v178)
      {
      }

      v11 |= v33;
      if (*v23 == 4 || *v23 == 3)
      {
        goto LABEL_51;
      }

      v34 = *(v18 + 36);
      if (*(v4 + 32))
      {
        v35 = 2;
      }

      else
      {
        v35 = v23[16];
      }

      [objc_msgSend(v25 depthAttachment)];
      if ((v23[18] & 0x70) == 0x30)
      {
        v36 = [v25 depthAttachment];
      }

      else
      {
        v53 = *v23;
        v36 = [v25 depthAttachment];
        if (v164 != v34 || v53 == 2)
        {
          v55 = 1;
          goto LABEL_92;
        }
      }

      v55 = 0;
LABEL_92:
      [v36 setStoreAction_];
      this = v165;
      v13 = &selRef_iosurface;
      [objc_msgSend(v25 depthAttachment)];
      v52 = v23[6];
      if (v162)
      {
LABEL_93:
        [v25 setRenderTargetArrayLength_];
        goto LABEL_94;
      }

      if (v52 == 1)
      {
        goto LABEL_94;
      }

      v5 = 48;
      if (!v52)
      {
LABEL_113:
        [v25 setRenderTargetArrayLength_];
        goto LABEL_95;
      }

      v56 = [v25 setRenderTargetArrayLength_];
      if ((atomic_exchange(&unk_1EE1B991A, 1u) & 1) == 0)
      {
        v57 = *re::graphicsLogObjects(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          re::RenderGraphContext::resourceFromIndex(&v178, a2, *&v173[8]);
          re::StringID::StringID(&v168, (&v178 + 8));
          v58 = v23[6];
          *buf = 136315394;
          *&buf[4] = v169;
          *&buf[12] = 1024;
          *&buf[14] = v58;
          v59 = v57;
          v60 = "Depth target (%s) has arrayLength of %d, but device does not support Layered Rendering.";
          goto LABEL_120;
        }
      }

      goto LABEL_95;
    }

    if (v24 != 1)
    {
      goto LABEL_95;
    }

    re::RenderGraphContext::metalTexture(a2, v173, 0, 0, &v178);
    if (!v178)
    {
      v43 = a2[147];
      re::RenderGraphContext::resourceFromIndex(&v178, a2, *&v173[8]);
      re::StringID::StringID(&v168, (&v178 + 8));
      re::DynamicString::format(buf, "Target (%s) used to create renderPassDescriptor is not valid.", v44, v169);
      re::RenderGraphExecutable::addError(v43, buf);
      v45 = *buf;
      if (*buf)
      {
        if (buf[8])
        {
          v45 = (*(**buf + 40))();
        }

        memset(buf, 0, 32);
      }

      goto LABEL_59;
    }

    v25 = *this;
    v26 = [objc_msgSend(*this colorAttachments)];
    re::RenderGraphContext::metalTexture(a2, v173, 0, 0, &v178);
    [v26 setTexture_];
    if (v178)
    {
    }

    re::RenderGraphContext::metalTexture(a2, v173, 0, 0, &v178);
    v28 = [v178 protectionOptions];
    if (v178)
    {
    }

    v11 |= v28;
    if (*v23 == 4 || *v23 == 3)
    {
LABEL_51:
      v40 = a2[147];
      re::DynamicString::format(&v178, "TargetHandle in use reached the end of the frame without being specified.", v27);
      re::RenderGraphExecutable::addError(v40, &v178);
      v41 = v178;
      this = v165;
      if (v178 && (BYTE8(v178) & 1) != 0)
      {
        v42 = v179;
LABEL_54:
        (*(*v41 + 40))(v41, v42);
        goto LABEL_95;
      }

      goto LABEL_95;
    }

    v29 = *(v18 + 36);
    if (*(v4 + 32))
    {
      v30 = 2;
    }

    else
    {
      v30 = v23[16];
    }

    [objc_msgSend(objc_msgSend(v25 colorAttachments)];
    if ((v23[18] & 0x70) == 0x30)
    {
      [objc_msgSend(objc_msgSend(v25 colorAttachments)];
      this = v165;
    }

    else
    {
      v61 = *v23;
      v62 = [objc_msgSend(v25 colorAttachments)];
      v64 = v164 != v29 || v61 == 2;
      [v62 setStoreAction_];
      this = v165;
      v13 = &selRef_iosurface;
    }

    [objc_msgSend(objc_msgSend(v25 colorAttachments)];
    v65 = v23[6];
    if (v162)
    {
      [v25 setRenderTargetArrayLength_];
      v5 = 48;
      goto LABEL_95;
    }

    v5 = 48;
    if (v65 != 1)
    {
      if (!v65)
      {
        goto LABEL_113;
      }

      v69 = [v25 setRenderTargetArrayLength_];
      if ((atomic_exchange(&unk_1EE1B9919, 1u) & 1) == 0)
      {
        v70 = *re::graphicsLogObjects(v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          re::RenderGraphContext::resourceFromIndex(&v178, a2, *&v173[8]);
          re::StringID::StringID(&v168, (&v178 + 8));
          v71 = v23[6];
          *buf = 136315394;
          *&buf[4] = v169;
          *&buf[12] = 1024;
          *&buf[14] = v71;
          v59 = v70;
          v60 = "Color target (%s) has arrayLength of %d, but device does not support Layered Rendering.";
LABEL_120:
          _os_log_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_DEFAULT, v60, buf, 0x12u);
LABEL_59:
          if (v168)
          {
            if (v168)
            {
            }
          }

          v168 = 0;
          v169 = &str_67;
          if (BYTE8(v178))
          {
            if (BYTE8(v178))
            {
              v42 = v179;
              goto LABEL_54;
            }
          }
        }
      }
    }

LABEL_95:
    v4 += 16;
    v12 -= 8;
  }

  while (v12);
  v72 = *(v163 + 56);
  if (v72)
  {
    v4 = *(v163 + 72);
    v5 = &v4[16 * v72];
    while (1)
    {
      v73 = *(*(a2[147] + 168) + 296);
      v16 = v4[13];
      v17 = *(v73 + 16);
      if (v17 <= v16)
      {
        goto LABEL_257;
      }

      v13 = (*(v73 + 32) + 48 * v16);
      if (!*v13)
      {
        break;
      }

LABEL_227:
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_240;
      }
    }

    *buf = 0;
    re::StringID::StringID(&buf[8], (v13 + 1));
    v74 = *(v13 + 3);
    v172 = v13[5];
    *&buf[24] = v74;
    *&v178 = *&buf[8] >> 1;
    *(&v178 + 1) = v74;
    re::RenderGraphResourceDescriptions::targetDescriptionSource(*(a2[147] + 168), &v178, &v168);
    v75 = re::RenderGraphExecutable::targetDescription(a2[147], &v168);
    v76 = v75;
    v77 = v4[1];
    switch(v77)
    {
      case 8u:
        v93 = (v75[1] - 253) > 9 || ((1 << (*(v75 + 4) + 3)) & 0x385) == 0;
        if (v93 && (*(v4 + 33) & 1) != 0)
        {
          goto LABEL_224;
        }

        re::RenderGraphContext::metalTexture(a2, &v168, 0, 0, &v167);
        if (!v167)
        {
          v107 = a2[147];
          v108 = *(v107 + 168);
          if (v108[54])
          {
            v109 = 0;
            do
            {
              v12 = v4[13];
              if (v12 == *(v108[56] + 4 * v109))
              {
                v110 = v108[37];
                v13 = *(v110 + 16);
                if (v13 <= v12)
                {
                  goto LABEL_265;
                }

                re::StringID::StringID(v173, (*(v110 + 32) + 48 * v12 + 8));
                re::DynamicString::format(&v178, "Invalid texture (%s) set to resolve stencil", v111, *&v173[8]);
                re::RenderGraphExecutable::addError(v107, &v178);
                v112 = v178;
                if (v178)
                {
                  if (BYTE8(v178))
                  {
                    v112 = (*(*v178 + 40))(v178, v179);
                  }

                  v178 = 0u;
                  v179 = 0u;
                }

                if (v173[0])
                {
                  if (v173[0])
                  {
                  }
                }

                v107 = a2[147];
              }

              ++v109;
              v108 = *(v107 + 168);
            }

            while (v108[54] > v109);
          }

          break;
        }

        v95 = v164 == *&buf[36] && *v76 != 2;
        if ((v76[18] & 0x70) != 0x30 && !v95)
        {
          if ([*(a2[1] + 208) supportsFamily:1005] & 1) != 0 || (v96 = objc_msgSend(*(a2[1] + 208), "supportsFamily:", 2002), (v96))
          {
            v97 = *v165;
            v98 = [*v165 stencilAttachment];
            [v98 setResolveTexture_];
            v13 = ([v167 protectionOptions] | v11);
            v12 = [objc_msgSend(v97 &selRef:sel_storeAction setCounterSet:? + 7)];
            v99 = [v97 &selRef_setCounterSet_ + 7];
            if (v12)
            {
              v100 = 3;
            }

            else
            {
              v100 = 2;
            }

            [v99 setStoreAction_];
            v11 = v13;
            v82 = [v97 &selRef_setCounterSet_ + 7];
            v84 = v4[10];
            v83 = sel_setStencilResolveFilter_;
            goto LABEL_180;
          }

          if ((atomic_exchange(byte_1EE1B991D, 1u) & 1) == 0)
          {
            v119 = *re::graphicsLogObjects(v96);
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v178) = 0;
              v120 = v119;
              v121 = "Tried to resolve multisampled stencil, but device does not support Stencil Resolve.";
LABEL_239:
              _os_log_impl(&dword_1E1C61000, v120, OS_LOG_TYPE_DEFAULT, v121, &v178, 2u);
            }
          }
        }

        break;
      case 7u:
        v85 = (v75[1] - 250) > 0xA || ((1 << (*(v75 + 4) + 6)) & 0x425) == 0;
        if (v85 && (*(v4 + 33) & 1) != 0)
        {
          goto LABEL_224;
        }

        re::RenderGraphContext::metalTexture(a2, &v168, 0, 0, &v167);
        if (!v167)
        {
          v113 = a2[147];
          v114 = *(v113 + 168);
          if (v114[54])
          {
            v115 = 0;
            do
            {
              v12 = v4[13];
              if (v12 == *(v114[56] + 4 * v115))
              {
                v116 = v114[37];
                v13 = *(v116 + 16);
                if (v13 <= v12)
                {
                  goto LABEL_269;
                }

                re::StringID::StringID(v173, (*(v116 + 32) + 48 * v12 + 8));
                re::DynamicString::format(&v178, "Invalid texture (%s) set to resolve depth", v117, *&v173[8]);
                re::RenderGraphExecutable::addError(v113, &v178);
                v118 = v178;
                if (v178)
                {
                  if (BYTE8(v178))
                  {
                    v118 = (*(*v178 + 40))(v178, v179);
                  }

                  v178 = 0u;
                  v179 = 0u;
                }

                if (v173[0])
                {
                  if (v173[0])
                  {
                  }
                }

                v113 = a2[147];
              }

              ++v115;
              v114 = *(v113 + 168);
            }

            while (v114[54] > v115);
          }

          break;
        }

        v87 = v164 == *&buf[36] && *v76 != 2;
        if ((v76[18] & 0x70) == 0x30 || v87)
        {
          break;
        }

        if ([*(a2[1] + 208) supportsFamily:1003] & 1) != 0 || (v88 = objc_msgSend(*(a2[1] + 208), "supportsFamily:", 2002), (v88))
        {
          v89 = *v165;
          v13 = &selRef_iosurface;
          v90 = [*v165 depthAttachment];
          [v90 setResolveTexture_];
          v11 |= [v167 protectionOptions];
          v12 = [objc_msgSend(v89 depthAttachment)];
          v91 = [v89 depthAttachment];
          if (v12)
          {
            v92 = 3;
          }

          else
          {
            v92 = 2;
          }

          [v91 setStoreAction_];
          [objc_msgSend(v89 depthAttachment)];
          break;
        }

        if ((atomic_exchange(&unk_1EE1B991C, 1u) & 1) == 0)
        {
          v122 = *re::graphicsLogObjects(v88);
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v178) = 0;
            v120 = v122;
            v121 = "Tried to resolve multisampled depth, but device does not support Depth Resolve.";
            goto LABEL_239;
          }
        }

        break;
      case 6u:
        re::RenderGraphContext::metalTexture(a2, &v168, 0, 0, &v167);
        if (v167)
        {
          v79 = v164 == *&buf[36] && *v76 != 2;
          if ((v76[18] & 0x70) != 0x30 && !v79)
          {
            v80 = *v165;
            v81 = [objc_msgSend(*v165 colorAttachments)];
            re::RenderGraphContext::metalTexture(a2, &v168, 0, 0, &v178);
            [v81 setResolveTexture_];
            if (v178)
            {
            }

            v11 |= [v167 protectionOptions];
            v13 = &selRef_childNodes;
            v12 = [objc_msgSend(objc_msgSend(v80 colorAttachments)];
            v82 = [objc_msgSend(v80 colorAttachments)];
            v83 = sel_setStoreAction_;
            if (v12)
            {
              v84 = 3;
            }

            else
            {
              v84 = 2;
            }

LABEL_180:
            [v82 v83];
          }
        }

        else
        {
          v101 = a2[147];
          v102 = *(v101 + 168);
          if (v102[54])
          {
            v103 = 0;
            do
            {
              v12 = v4[13];
              if (v12 == *(v102[56] + 4 * v103))
              {
                v104 = v102[37];
                v13 = *(v104 + 16);
                if (v13 <= v12)
                {
                  goto LABEL_261;
                }

                re::StringID::StringID(v173, (*(v104 + 32) + 48 * v12 + 8));
                re::DynamicString::format(&v178, "Invalid texture (%s) set to resolve color attachment %d", v105, *&v173[8], *v4);
                re::RenderGraphExecutable::addError(v101, &v178);
                v106 = v178;
                if (v178)
                {
                  if (BYTE8(v178))
                  {
                    v106 = (*(*v178 + 40))(v178, v179);
                  }

                  v178 = 0u;
                  v179 = 0u;
                }

                if (v173[0])
                {
                  if (v173[0])
                  {
                  }
                }

                v101 = a2[147];
              }

              ++v103;
              v102 = *(v101 + 168);
            }

            while (v102[54] > v103);
          }
        }

        break;
      default:
LABEL_224:
        if (buf[8])
        {
          if (buf[8])
          {
          }
        }

        goto LABEL_227;
    }

    v75 = v167;
    if (v167)
    {
    }

    goto LABEL_224;
  }

LABEL_240:
  v123 = *v165;
  v124 = v163;
  [*v165 setThreadgroupMemoryLength_];
  if (*(v163 + 192) - 1 < 3)
  {
    v125 = (*(v163 + 192) - 1);
    v126 = qword_1E30B5A90[v125];
    [v123 setTileWidth_];
    v127 = v126;
    v124 = v163;
    [v123 setTileHeight_];
  }

  if (*(v124 + 184))
  {
    [v123 setImageblockSampleLength_];
  }

  v128 = *(a2[147] + 168);
  v4 = *(a2 + 12);
  v5 = *(v128 + 352);
  if (v5 <= v4)
  {
    goto LABEL_277;
  }

  if (*(*(v128 + 368) + 200 * v4 + 171) == 1)
  {
    v129 = re::RenderGraphDataStore::tryGet<re::VRRData>(a2[146], *(a2[5] + 48));
    if (v129)
    {
      if (*(v129 + 12) == 1)
      {
        v131 = a2[147];
        v132 = *(v129 + 8);
        v133 = *(v131 + 104);
        if (v133 > v132)
        {
          [v123 setRasterizationRateMap_];
          goto LABEL_250;
        }

LABEL_281:
        re::internal::assertLog(6, v130, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v132, v133);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v158);
        __break(1u);
      }
    }
  }

LABEL_250:
  v134 = a2[1];
  v135 = v123;
  v166 = v135;
  re::RenderManager::enableMTLCounterSamplingOnRenderPassDescriptor(v134, &v166, 1u);
  if (v135)
  {
  }

  *a3 = v11;
}

uint64_t re::RenderGraphExecutable::addError(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  v5.n128_u64[0] = 2000;
  v5.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
  v6 = *a2;
  v8 = *(a2 + 24);
  v7 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = re::DynamicArray<re::DetailedError>::add(v2, &v5);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))(v3);
    }
  }

  return result;
}

__n128 re::RenderGraphContext::resourceFromIndex@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RenderGraphContext *this@<X0>, unsigned int a3@<W1>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(*(*(this + 147) + 168) + 296);
  v5 = a3;
  v6 = *(v4 + 16);
  if (v6 <= a3)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 789;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v4 + 32) + 48 * a3;
  *a1 = *v7;
  re::StringID::StringID((a1 + 1), (v7 + 8));
  result = *(v7 + 24);
  a1[5] = *(v7 + 40);
  *(a1 + 3) = result;
  return result;
}

uint64_t re::RenderGraphContext::getMaterialTableForAsset(re::RenderGraphContext *this, unint64_t a2)
{
  if (!*(this + 201))
  {
    return 0;
  }

  v2 = *(*(this + 202) + 4 * (a2 % *(this + 408)));
  if (v2 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = *(this + 203);
  while (*(v3 + 24 * v2 + 8) != a2)
  {
    v2 = *(v3 + 24 * v2) & 0x7FFFFFFF;
    if (v2 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v3 + 24 * v2 + 16);
}

_BYTE *re::DynamicOverflowArray<re::PatchTransform,5ul>::add(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<re::PatchTransform,5ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 + (*(a1 + 8) << 9);
  *v5 = *a2;
  *(v5 + 504) = 1;
  result = re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v5 + 8), (a2 + 8));
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

void re::RenderGraphContext::encodeWaitsForFencesIfNeeded(re::RenderGraphContext *this, const RenderCommandEncoder *a2)
{
  if ((*(this + 1600) & 1) == 0)
  {
    v3 = *(this + 197);
    if (v3)
    {
      v5 = *(this + 199);
      v6 = 8 * v3;
      do
      {
        v7 = *v5;
        [(m_impCache *)a2->m_object waitForFence:v7 beforeStages:1];
        if (v7)
        {
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(this + 1600) = 1;
  }
}

void re::RenderGraphContext::releaseManagedEncoder(re::RenderGraphContext *this, const char *a2)
{
  if (a2 && !re::RenderGraphContext::isLastNodeAccessingEncoder(this, *(this + 5)))
  {
    v4 = *(*(this + 1) + 112);
    v5 = v4 ? re::RenderFrameBox::get((v4 + 328), *(*this + 40)) : 0;
    re::DynamicString::format(&v9, "Node %s attempting to release encoder before all nodes have finished encoding", v3, *(*(this + 5) + 16));
    re::RenderFrame::addError(v5, &v9);
    if (v9)
    {
      if (v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  v6 = *(this + 296);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(this, *(this + 150), 1);
    }

    else if (v6 == 3)
    {
      v7 = *(this + 150);
      if (*v7)
      {
        objc_msgSend_endEncoding(*v7);
        v8 = *v7;
        *v7 = 0;
      }
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(this, *(this + 150), 1);
    }
  }

  else
  {
    re::RenderGraphContext::finishEncoding<re::mtl::RenderCommandEncoder &>(this, *(this + 150), *(this + 1208));
  }

  *(this + 296) = 4;
}

unint64_t re::MutableSlice<NS::SharedPtr<MTL::RenderPassDescriptor>>::operator[](void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    return *a1 + 8 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v4, v2, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
  __break(1u);
  return result;
}

void re::RenderGraphContext::makeComputeCommandEncoder(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = re::RenderFrameBox::get((*(*(a1 + 8) + 112) + 328), *(*a1 + 40));
  [*(re::RenderFrame::currentCommandBuffer(v8) + 2) setProtectionOptions:a3];
  v9 = re::RenderFrameBox::get((*(*(a1 + 8) + 112) + 328), *(*a1 + 40));
  v10 = re::RenderFrame::currentCommandBuffer(v9);
  ++*(v10 + 1);
  v11 = [objc_msgSend(MEMORY[0x1E6974028] alloc)];
  [v11 setDispatchType_];
  re::mtl::CommandBuffer::makeComputeCommandEncoder(v10 + 2, v11, a4);
  if (v11)
  {
  }

  [*a4 setLabel:*re::RenderGraphNodeBase::getEncoderLabel(*(a1 + 40))];
  v12 = *(*(a1 + 1176) + 168);
  v13 = *(a1 + 48);
  v14 = *(v12 + 352);
  if (v14 <= v13)
  {
LABEL_16:
    v29 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v30 = 136315906;
    *&v30[4] = "operator[]";
    *&v30[12] = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    *&v30[14] = 789;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = v14;
    _os_log_send_and_compose_impl(v27, &v29, &v35, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v30, 38, v28);
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(v12 + 368) + 200 * v13;
  v16 = *(v15 + 56);
  if (v16)
  {
    v13 = v16 << 6;
    v14 = (*(v15 + 72) + 52);
    do
    {
      if (*(v14 - 12) == 5)
      {
        v17 = *(*(a1 + 1176) + 168);
        v18 = *(v17 + 296);
        v19 = *v14;
        v20 = *(v18 + 16);
        if (v20 <= v19)
        {
          v29 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v30 = 136315906;
          *&v30[4] = "operator[]";
          *&v30[12] = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          *&v30[14] = 789;
          v31 = 2048;
          v32 = v19;
          v33 = 2048;
          v34 = v20;
          _os_log_send_and_compose_impl(v24, &v29, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v30, 38, v28);
          _os_crash_msg();
          __break(1u);
          goto LABEL_16;
        }

        v21 = *(v18 + 32) + 48 * v19;
        if (!*v21)
        {
          *v30 = *(v21 + 8) >> 1;
          *&v30[8] = *(v21 + 24);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v17, v30, &v35);
          *(re::RenderGraphExecutable::targetDescription(*(a1 + 1176), &v35) + 64) = 1;
        }
      }

      v14 += 16;
      v13 -= 64;
    }

    while (v13);
  }

  re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::ComputeCommandEncoder>(*(a1 + 32), a4);
}

void re::RenderGraphContext::makeBlitCommandEncoder(re::RenderGraphContext *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = re::RenderFrameBox::get((*(*(this + 1) + 112) + 328), *(*this + 40));
  [*(re::RenderFrame::currentCommandBuffer(v6) + 2) setProtectionOptions:a2];
  v7 = re::RenderFrameBox::get((*(*(this + 1) + 112) + 328), *(*this + 40));
  v8 = re::RenderFrame::currentCommandBuffer(v7);
  ++*(v8 + 1);
  re::mtl::CommandBuffer::makeBlitCommandEncoder(a3, v8 + 2);
  [*a3 setLabel:*re::RenderGraphNodeBase::getEncoderLabel(*(this + 5))];
  v9 = *(*(this + 147) + 168);
  v10 = *(this + 12);
  v11 = *(v9 + 352);
  if (v11 <= v10)
  {
    goto LABEL_14;
  }

  v12 = *(v9 + 368) + 200 * v10;
  v13 = *(v12 + 56);
  if (v13)
  {
    v10 = v13 << 6;
    v11 = (*(v12 + 72) + 52);
    do
    {
      if (*(v11 - 12) == 4)
      {
        v14 = *(*(this + 147) + 168);
        v15 = *(v14 + 296);
        v16 = *v11;
        v17 = *(v15 + 16);
        if (v17 <= v16)
        {
          v26 = 0;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v27 = 136315906;
          *&v27[4] = "operator[]";
          *&v27[12] = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          *&v27[14] = 789;
          v28 = 2048;
          v29 = v16;
          v30 = 2048;
          v31 = v17;
          _os_log_send_and_compose_impl(v21, &v26, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_14:
          v26 = 0;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v27 = 136315906;
          *&v27[4] = "operator[]";
          *&v27[12] = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          *&v27[14] = 789;
          v28 = 2048;
          v29 = v10;
          v30 = 2048;
          v31 = v11;
          _os_log_send_and_compose_impl(v24, &v26, &v32, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v27, 38, v25);
          _os_crash_msg();
          __break(1u);
        }

        v18 = *(v15 + 32) + 48 * v16;
        if (!*v18)
        {
          *v27 = *(v18 + 8) >> 1;
          *&v27[8] = *(v18 + 24);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v14, v27, &v32);
          *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v32) + 64) = 1;
        }
      }

      v11 += 16;
      v10 -= 64;
    }

    while (v10);
  }

  re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::BlitCommandEncoder>(*(this + 4), a3);
}

BOOL re::RenderGraphContext::isLastNodeAccessingEncoder(re::RenderGraphContext *this, re::RenderGraphNodeBase *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v3 = re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](*(*(this + 147) + 168) + 656, &v11);
  v4 = *v3;
  v5 = *(*(this + 147) + 168);
  v6 = *(v5 + 352);
  if (v6 <= v4)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 789;
    v17 = 2048;
    v18 = v4;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v5 + 368) + 200 * v4 + 16) - 1 == v3[1];
}

uint64_t re::RenderGraphContext::releaseManagedRenderEncodersFromParallelEncoder(re::RenderGraphContext *this)
{
  result = re::RenderGraphContext::isSetupParallel(this);
  if (result)
  {
    if (*(this + 296) == 3)
    {
      v4 = *(this + 155);
      if (v4)
      {
        v5 = *(this + 157);
        v6 = 16 * v4;
        do
        {
          re::RenderGraphContext::finishEncoding<re::mtl::RenderCommandEncoder &>(this, v5, 1);
          v5 += 16;
          v6 -= 16;
        }

        while (v6);
      }

      return re::DynamicArray<re::mtl::RenderCommandEncoder>::clear((this + 1224));
    }
  }

  else
  {
    v7 = *(*(this + 1) + 112);
    if (v7)
    {
      v8 = re::RenderFrameBox::get((v7 + 328), *(*this + 40));
    }

    else
    {
      v8 = 0;
    }

    re::DynamicString::format(&v9, "Node %s called releaseManagedRenderEncodersFromParallelEncoder(). This function is only meant to be called on nodes marked as parallel (e.g. RenderGraphBuilder::setNodeIsParallel(true)) after their execute() function. ", v3, *(*(this + 5) + 16));
    re::RenderFrame::addError(v8, &v9);
    result = v9;
    if (v9 && (v10 & 1) != 0)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

void re::RenderGraphContext::finishEncoding<re::mtl::RenderCommandEncoder &>(uint64_t a1, uint64_t a2, int a3)
{
  if (*a2)
  {
    re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::RenderCommandEncoder>(*(a1 + 32), a2);
    if (a3)
    {
      (*(*(a2 + 8) + 264))(**(a2 + 8), sel_endEncoding);
    }

    v5 = *a2;
    *a2 = 0;
  }
}

re::mtl::RenderCommandEncoder *re::DynamicArray<re::mtl::RenderCommandEncoder>::clear(re::mtl::RenderCommandEncoder *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 16 * v2;
    do
    {
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(result);
      result = (v4 + 16);
      v3 -= 16;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

void re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(uint64_t a1, void **a2, int a3)
{
  if (*a2)
  {
    re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::ComputeCommandEncoder>(*(a1 + 32), a2);
    if (a3)
    {
      objc_msgSend_endEncoding(*a2);
    }

    v5 = *a2;
    *a2 = 0;
  }
}

void re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(uint64_t a1, void **a2, int a3)
{
  if (*a2)
  {
    re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::BlitCommandEncoder>(*(a1 + 32), a2);
    if (a3)
    {
      objc_msgSend_endEncoding(*a2);
    }

    v5 = *a2;
    *a2 = 0;
  }
}

void re::RenderGraphContext::makeFullscreenDrawCall(re *a1@<X0>, uint64_t a2@<X1>, int32x2_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int32x2_t *a8@<X7>, int32x2_t *a9@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v16 = *(*a1 + 32);
  v17 = (*(*v16 + 32))(v16, 336, 16);
  v18 = *(*a1 + 32);
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 120) = 0;
  *(v17 + 192) = 0;
  *(v17 + 200) = 0;
  *(v17 + 208) = 0;
  *(v17 + 224) = 0;
  *(v17 + 128) = 0u;
  *(v17 + 144) = 0u;
  *(v17 + 160) = 0u;
  *(v17 + 176) = 0;
  *(v17 + 184) = v18;
  *(v17 + 232) = xmmword_1E304F3C0;
  *(v17 + 248) = 0;
  *(v17 + 252) = 10854;
  __asm { FMOV            V0.2S, #1.0 }

  *(v17 + 256) = _D0;
  *(v17 + 264) = 0;
  *(v17 + 272) = 0;
  *(v17 + 320) = 0;
  v24 = re::globalAllocators(v17)[2];
  *&v32[0] = &unk_1F5D06340;
  *(&v32[1] + 1) = v24;
  *&v32[2] = v32;
  v25 = (*(*v16 + 16))(v16, v17, v32);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v32);
  re::DrawCall::DrawCall(a9);
  a9[9] = v25;
  if (!a8)
  {
    a8 = *(a1 + 192);
  }

  v26 = a9->i16[0] & 0xFFF0 | 7;
  a9->i16[0] = v26;
  a9[13] = a3;
  a9[2] = vrev64_s32(a8[56]);
  a9->i8[2] = a8[57].i8[4];
  a9[8] = a8;
  a9->i16[0] = v26 & 0xEF77;
  *(v25 + 56) = a2;
  *(v25 + 64) = a4;
  *(v25 + 72) = a5;
  *(v25 + 88) = a6;
  *&v32[0] = 0;
  *(&v32[0] + 1) = a7;
  memset(&v32[1], 0, 74);
  *(v25 + 104) = v32[0];
  *(v25 + 120) = *&v32[1];
  if ((v25 + 104) != v32)
  {
    v27 = *(v25 + 144);
    *(&v32[1] + 8) = *(v25 + 128);
    *(&v32[2] + 8) = v27;
    v28 = *(v25 + 184);
    *(&v32[4] + 1) = *(v25 + 176);
    *&v32[5] = v28;
    *(v25 + 128) = 0u;
    *(v25 + 144) = 0u;
    v29 = *(v25 + 160);
    *(v25 + 160) = 0u;
    *(v25 + 176) = 0u;
    *(&v32[3] + 8) = v29;
  }

  *(v25 + 192) = 0;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v32[1] + 8);
  a9[10].i32[1] = 0;
}

re *re::internal::destroyPersistent<re::mtl::RenderCommandEncoder>(re *result, uint64_t a2, re::mtl::RenderCommandEncoder *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
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
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 16 * v5[2]);
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
        result = re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::setCapacity(void *result, unint64_t a2)
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
          result = (*(*result + 32))(result, 32 * a2, 8);
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
        result = re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 16);
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
            memcpy(v7, v5[4], v5[2] << 7);
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
        result = re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::internal::Callable<re::RenderGraphContext::makeFullscreenDrawCall(re::MaterialInstance const*,char const*,re::MaterialParameterTable const*,re::MaterialParameterTable const*,re::MaterialParameterTable const*,re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false> const*,re::MeshPart const*)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06340;
  return result;
}

void *re::internal::Callable<re::RenderGraphContext::makeFullscreenDrawCall(re::MaterialInstance const*,char const*,re::MaterialParameterTable const*,re::MaterialParameterTable const*,re::MaterialParameterTable const*,re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false> const*,re::MeshPart const*)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06340;
  return result;
}

double re::DrawCall::DrawCall(re::DrawCall *this)
{
  *this = *this & 0xFCB0 | 0x107;
  *(this + 2) = 0x1000000;
  *(this + 6) = 0xFFFF0000FFFFLL;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0xFFFFFFFF00000000;
  *(this + 48) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 80) = 0;
  *(this + 28) = 0;
  *(this + 72) = 0;
  *(this + 50) = 0;
  *(this + 84) = 0;
  *(this + 92) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = -5.48612423e303;
  *(this + 147) = 0xFF00000007FFFFFFLL;
  *(this + 156) = 0;
  *(this + 41) = 0;
  *(this + 176) = 0;
  return result;
}

void re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24), *(v7 + v5 + 8));
        v7 = *(a2 + 16);
        v8 = *(v7 + v5 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = v8;
        *(v7 + v5 + 16) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,8ul,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false>::~SmallHashTable(uint64_t a1)
{
  re::DynamicInlineArray<re::KeyValuePair<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>>,8ul>::clear((a1 + 16));
  re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::deinit((a1 + 928));
  *a1 = 0;
  *(a1 + 8) = 0;
  re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::deinit((a1 + 928));
  re::DynamicInlineArray<re::KeyValuePair<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>>,8ul>::clear((a1 + 16));
  return a1;
}

void *re::DynamicInlineArray<re::KeyValuePair<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>>,8ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 112 * *result;
    v3 = result + 4;
    do
    {
      v3 += 14;
      v2 -= 112;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

double re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v3 = *(a1 + 8);
        }

        v4 += 112;
      }

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

uint64_t re::DynamicArray<re::mtl::RenderCommandEncoder>::deinit(uint64_t a1)
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
        v5 = 16 * v4;
        do
        {
          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v3);
          v3 = (v3 + 16);
          v5 -= 16;
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

void *re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::add(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::allocEntry(a1, v10, v9);
    *(v8 + 4) = *a2;
    result = re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(v8 + 16, a3);
    ++*(a1 + 40);
  }

  return result;
}

void re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 112 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 112 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 112 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 112 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 112 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*(v18 - 12) ^ (*(v18 - 12) >> 30));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::allocEntry(a1, v20 % *(a1 + 24), v20);
                *(v21 + 4) = *(v18 - 12);
                re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(v21 + 16, v18);
              }

              ++v17;
              v18 += 112;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 112 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 112 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 112 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 112 * v4;
}

uint64_t re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  if ((*(a2 + 16) & 1) == 0)
  {
    *(a1 + 16) = 3;
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v6;
    *(a2 + 16) = *(a2 + 16) & 0xFFFFFFFE | *(a1 + 16) & 1;
    *(a1 + 16) &= ~1u;
    v7 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = v7;
LABEL_18:
    v14 = 2;
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    *a1 = *a2;
    goto LABEL_18;
  }

  *a1 = *a2;
  re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(a1, v8);
  if (*(a2 + 16))
  {
    v9 = (a2 + 32);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = v4;
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 40);
  }

  if (v10)
  {
    memmove(v12, v9, 32 * v10);
    v11 = *(a1 + 16);
  }

  if ((v11 & 1) == 0)
  {
    v4 = *(a1 + 40);
  }

  if (*(a2 + 16))
  {
    v13 = a2 + 32;
  }

  else
  {
    v13 = *(a2 + 40);
  }

  memcpy(&v4[32 * *(a1 + 8)], (v13 + 32 * *(a1 + 8)), 32 * (v8 - *(a1 + 8)));
  *(a1 + 8) = v8;
  *(a2 + 8) = 0;
  v14 = 4;
LABEL_19:
  *(a2 + 16) = ((*(a2 + 16) & 0xFFFFFFFE) + v14) | *(a2 + 16) & 1;
  *(a1 + 16) += 2;
  return a1;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = *(result + 4);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = (result + 32);
        v15 = *(v4 + 5);
        if (v7)
        {
          v16 = v4 + 32;
        }

        else
        {
          v16 = *(v4 + 5);
        }

        memcpy(v14, v16, 32 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 59)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 32, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 32 * a2;
        v10 = (*(*v5 + 32))(*result, 32 * a2, 16);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 32;
          }

          else
          {
            v13 = *(v4 + 5);
          }

          result = memcpy(v10, v13, 32 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 5));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 4) = a2;
          *(v4 + 5) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re19ViewportPercentDataE";
  if (("N2re19ViewportPercentDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re19ViewportPercentDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::VRRData>(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::VRRData>(BOOL)::info = re::introspect_VRRData(0, v10, v11, v12, v13, v14);
  }

  v4 = strlen(*(re::introspect<re::VRRData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::VRRData>(BOOL)::info + 6), v4, 0, v15);
    v5 = (v15[1] - 0x61C8864680B583E9 + (v15[0] << 6) + (v15[0] >> 2)) ^ v15[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneScope>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re10SceneScopeE";
  if (("N2re10SceneScopeE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re10SceneScopeE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneIndexData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re14SceneIndexDataE";
  if (("N2re14SceneIndexDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re14SceneIndexDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::StencilInfoData>(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::StencilInfoData>(BOOL)::info = re::introspect_StencilInfoData(0, v10, v11, v12, v13, v14);
  }

  v4 = strlen(*(re::introspect<re::StencilInfoData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::StencilInfoData>(BOOL)::info + 6), v4, 0, v15);
    v5 = (v15[1] - 0x61C8864680B583E9 + (v15[0] << 6) + (v15[0] >> 2)) ^ v15[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::ViewportData>(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::ViewportData>(BOOL)::info = re::introspect_ViewportData(0, v10, v11, v12, v13, v14);
  }

  v4 = strlen(*(re::introspect<re::ViewportData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::ViewportData>(BOOL)::info + 6), v4, 0, v15);
    v5 = (v15[1] - 0x61C8864680B583E9 + (v15[0] << 6) + (v15[0] >> 2)) ^ v15[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::TintContextData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re15TintContextDataE";
  if (("N2re15TintContextDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re15TintContextDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::TriangleFillModeData>(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::TriangleFillModeData>(BOOL)::info = re::introspect_TriangleFillModeData(0, v10, v11, v12, v13, v14);
  }

  v4 = strlen(*(re::introspect<re::TriangleFillModeData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::TriangleFillModeData>(BOOL)::info + 6), v4, 0, v15);
    v5 = (v15[1] - 0x61C8864680B583E9 + (v15[0] << 6) + (v15[0] >> 2)) ^ v15[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::PortalViewData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re14PortalViewDataE";
  if (("N2re14PortalViewDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re14PortalViewDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::PipelineCompilationData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re23PipelineCompilationDataE";
  if (("N2re23PipelineCompilationDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re23PipelineCompilationDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

void *re::ProfilerTimeGuard<(re::ProfilerStatistic)79>::end(void *result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[640].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[640].i64[0] = v5;
      v6 = v3[640].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[640].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[641] = vaddq_s64(v3[641], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t *re::DynamicOverflowArray<re::RenderGraphTargetHandle,8ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::RenderGraphTargetHandle,8ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = a1 + 3;
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = &v15[2 * v9];
          do
          {
            *v14 = 0;
            v14[1] = -1;
            *v14 = *v15;
            v14[1] = v15[1];
            v15 += 2;
            v14 += 2;
          }

          while (v15 != v16);
        }

        result = (*(*result + 40))(result);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        result = (*(*result + 32))(result, 16 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v17 = a1[1];
          if (v17)
          {
            v18 = &v13[2 * v17];
            v19 = result;
            do
            {
              *v19 = 0;
              v19[1] = -1;
              *v19 = *v13;
              v19[1] = v13[1];
              v13 += 2;
              v19 += 2;
            }

            while (v13 != v18);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(uint64_t a1, uint64_t a2, const char **a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = strlen(*a3);
  if (v7)
  {
    MurmurHash3_x64_128(v6, v7, 0, v10);
    v8 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  }

  else
  {
    v8 = 0;
  }

  return re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a2, a3, v8, a1);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_17;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_17:
    v8 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v9 = *(result + 16);
  v10 = *a2;
  v11 = v9 + 224 * v8;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = (v11 + 17);
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = strcmp(v15, *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v16 = *(v9 + 224 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 224 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 224 * v17) & 0x7FFFFFFF;
      v8 = v17;
      if (v16 == 0x7FFFFFFF)
      {
        v8 = v17;
        goto LABEL_18;
      }
    }

    v6 = v17;
  }

LABEL_18:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 2304 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 2304 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 2304 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 2304 * v8) & 0x7FFFFFFF;
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::ensureCapacity(uint64_t result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 8);
    if (*(result + 16))
    {
      v3 = 5;
    }

    else
    {
      v3 = *(result + 24);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::PatchTransform,5ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 8);
    result = re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(v1, v4 + 1);
    *(v1 + 16) += 2;
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::growCapacity(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(v3, v2);
    *(v3 + 16) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 5)
    {
      return result;
    }

    v5 = 10;
  }

  else
  {
    v4 = *(result + 24);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(result, a2);
}

void *re::DynamicArray<re::mtl::RenderCommandEncoder>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::mtl::RenderCommandEncoder>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
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
        v10 = (v8 + 16 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *v11++ = v12;
          *(v8 + 1) = 0;
          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v8);
          v8 = (v8 + 16);
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

double re::unpackHalf3Data(re *this, const void *a2, float16x4_t a3)
{
  v3 = this + 8 * a2;
  a3.i32[0] = *v3;
  *&result = vcvtq_f32_f16(a3).u64[0];
  _H1 = *(v3 + 2);
  __asm { FCVT            S1, H1 }

  return result;
}

{
  v3 = this + 8 * a2;
  a3.i32[0] = *v3;
  *&result = vcvtq_f32_f16(a3).u64[0];
  _H1 = *(v3 + 2);
  __asm { FCVT            S1, H1 }

  return result;
}

int8x8_t re::unpackChar3NormalizedData(re *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  v4 = vdiv_f32(vcvt_f32_s32(v3), vdup_n_s32(0x42FE0000u));
  __asm { FMOV            V1.2S, #1.0 }

  return vbsl_s8(vcgt_f32(v4, _D1), _D1, v4);
}

{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  v4 = vdiv_f32(vcvt_f32_s32(v3), vdup_n_s32(0x42FE0000u));
  __asm { FMOV            V1.2S, #1.0 }

  return vbsl_s8(vcgt_f32(v4, _D1), _D1, v4);
}

float32x2_t re::unpackUChar3NormalizedData(re *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  return vdiv_f32(vcvt_f32_u32(v3), vdup_n_s32(0x437F0000u));
}

{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  return vdiv_f32(vcvt_f32_u32(v3), vdup_n_s32(0x437F0000u));
}

uint64_t re::unpackFloat3Data(re *this, const void *a2)
{
  return *(this + 12 * a2);
}

{
  return *(this + 12 * a2);
}

uint64_t re::RenormalizationDeformer::init(uint64_t result, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(result + 8) & 1) == 0)
  {
    *(result + 8) = 1;
    v3 = *(a2 + 16);
    *(result + 16) = *(v3 + 32);
    if (*(v3 + 208))
    {
      if (*(v3 + 306) == 1)
      {
        v4 = 0;
        v10 = result;
        v5 = result + 24;
        do
        {
          v7 = 0;
          v13 = 0;
          v16 = 0;
          memset(v19, 0, sizeof(v19));
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          do
          {
            memset(v26, 0, sizeof(v26));
            re::DynamicString::setCapacity(v26, 0);
            v32 = 0u;
            v31 = 0u;
            v30 = 0u;
            v29 = 0u;
            LOBYTE(v29) = (v4 >> v7) & 1;
            v27 = 53;
            v28 = v7;
            v8 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v19, v26);
            v6 = v26[0];
            if (v26[0] && (v26[1] & 1) != 0)
            {
              v6 = (*(*v26[0] + 40))(v8);
            }

            ++v7;
          }

          while (v7 != 4);
          ComputePipelineState = re::getOrCreateComputePipelineState(*(a2 + 16), &v11);
          NS::SharedPtr<MTL::Buffer>::operator=((v5 + 8 * v4), ComputePipelineState);
          if (v24)
          {

            v24 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v19);
          if (v16 == 1 && v17)
          {
            if (BYTE8(v17))
            {
              (*(*v17 + 40))();
            }

            v17 = 0u;
            v18 = 0u;
          }

          if (v13 == 1 && v14)
          {
            if (BYTE8(v14))
            {
              (*(*v14 + 40))();
            }

            v15 = 0u;
            v14 = 0u;
          }

          result = v11;
          if (v11)
          {
            if (v12)
            {
              result = (*(*v11 + 40))();
            }
          }

          ++v4;
        }

        while (v4 != 16);
        *(v10 + 9) = 1;
      }
    }
  }

  return result;
}

uint64_t re::RenormalizationDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if ((*a2 & 1) != 0 || *(result + 8) == 1 && *(result + 9) != 1)
  {
    v4 = 0;
    v5 = 4;
  }

  else
  {
    v4 = 1;
    v5 = 28;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = 3;
  *(a4 + 16) = v5;
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      if (*(v5 + 208))
      {
        LOBYTE(v5) = v4;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::RenormalizationDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, size_t *a5)
{
  v110 = *MEMORY[0x1E69E9840];
  v8 = *a5;
  v9 = *(*a5 + 48);
  re::globalAllocators(a1);
  v10 = (*(*a2 + 32))(a2, 24, 8);
  v12 = v10;
  v10[1] = v9;
  v10[2] = 0;
  *v10 = a2;
  if (v9)
  {
    if (v9 >= 0x492492492492493)
    {
LABEL_58:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v9);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v75, v81);
      __break(1u);
      goto LABEL_59;
    }

    v5 = 56 * v9;
    v10 = (*(*a2 + 32))(a2, 56 * v9, 8);
    v12[2] = v10;
    if (!v10)
    {
LABEL_59:
      re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_60:
      re::internal::assertLog(5, v44, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 228, a4);
      _os_crash("assertion failure: (!Unreachable code) Invalid deformation execution mode: %u.", v76);
      __break(1u);
    }

    v14 = v10;
    if (v9 != 1)
    {
      v5 -= 56;
      bzero(v10, v5);
      v14 = (v14 + v5);
    }

    v14[6] = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
  }

  v15 = re::globalAllocators(v10)[2];
  *&v105 = &unk_1F5D06408;
  *(&v106 + 1) = v15;
  *&v107 = &v105;
  v16 = (*(*a2 + 16))(a2, v12, &v105);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v105);
  if (v9)
  {
    v17 = 0;
    v93 = v8;
    v94 = v9;
    v92 = v16;
    while (1)
    {
      v18 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v8 + 8, v17);
      v19 = *(v18 + 8);
      v20 = a5[6];
      if (v20 <= v19)
      {
        break;
      }

      v21 = v18;
      v22 = a5[5] + 312 * v19;
      v23 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v19);
      if ((*v22 & 4) != 0)
      {
        v24 = v23;
        v25 = *(a1 + 2);
        v8 = WORD1(*(*(v23 + 368) + 16));
        v5 = *(v25 + 24);
        if (v5 <= v8)
        {
          goto LABEL_43;
        }

        v26 = *(*(v25 + 40) + 16 * WORD1(*(*(v23 + 368) + 16))) + 864 * *(*(v23 + 368) + 16);
        v8 = *(v23 + 392);
        v5 = *(v26 + 56);
        if (v5 <= v8)
        {
          goto LABEL_47;
        }

        v5 = *(v16 + 8);
        if (v5 <= v17)
        {
          goto LABEL_51;
        }

        v27 = *(v26 + 64) + 544 * *(v23 + 392);
        v28 = (*(v16 + 16) + 56 * v17);
        v29 = v27;
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29 && !v30[8]);
        *&v105 = 0x66739F42610D3BC2;
        v31 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v30 + 5, &v105);
        if (v31 == -1)
        {
          v5 = 0;
        }

        else
        {
          v5 = v30[6] + 16 * v31 + 8;
        }

        v32 = v27;
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32 && !v33[8]);
        *&v105 = 0x535FC835C0260B06;
        v34 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v33 + 5, &v105);
        if (v34 != -1 && v5)
        {
          v9 = v34;
          v35 = v33[6];
          v28[3] = *(v27 + 448);
          v36 = re::AttributeTable::buffers(v27);
          v38 = *v5;
          if (v37 <= v38)
          {
            goto LABEL_55;
          }

          v39 = v35 + 16 * v9;
          v9 = 24;
          v28[4] = v36 + 24 * v38;
          v40 = re::AttributeTable::buffers(v27);
          v42 = *(v39 + 8);
          if (v41 <= v42)
          {
            goto LABEL_56;
          }

          v28[5] = v40 + 24 * *(v39 + 8);
          LOBYTE(v105) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v22, 1u);
          v43 = *(*(v22 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v22 + 56), &v105) + 20);
          LOBYTE(v105) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v22, 1u);
          v5 = v43 / *(*(v22 + 128) + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v22 + 120), &v105) + 4);
          v9 = 12 * v5;
          if (a4)
          {
            v45 = v27;
            if (a4 != 1)
            {
              goto LABEL_60;
            }

            do
            {
              v46 = v45;
              v45 = *v45;
            }

            while (v45 && !v46[8]);
            *&v105 = 0x30989BAE345;
            v47 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v46 + 5, &v105);
            if (v47 == -1)
            {
              v48 = 0;
            }

            else
            {
              v48 = (v46[6] + 16 * v47 + 8);
            }

            v88 = v88 & 0xFFFF000000000000 | 0x1010001000CLL;
            v89 = v89 & 0xFFFFFF0000000000 | 0x1E00000000;
            v49 = re::DeformationBufferAllocator::alloc(*(v24 + 360), a5[2], 2, v88, v89, *(v21 + 16), 12 * v5);
            v50 = re::DeformationBufferAllocator::allocationData(*(v24 + 360), *(v21 + 16), v49);
            WORD2(v105) = 257;
            LODWORD(v105) = 65548;
            BYTE12(v105) = 30;
            DWORD2(v105) = 0;
            re::DeformationVertexBufferState::setOutputBuffer(v22, 2, 1, (v50 + 24), &v105);
            if (v48)
            {
              v51 = re::AttributeTable::buffers(v27);
              v53 = *v48;
              if (v52 <= v53)
              {
                goto LABEL_57;
              }

              v28[6] = v51 + 24 * *v48;
              v86 = v86 & 0xFFFF000000000000 | 0x1010001000CLL;
              v87 = v87 & 0xFFFFFF0000000000 | 0x1E00000000;
              v54 = re::DeformationBufferAllocator::alloc(*(v24 + 360), a5[2], 3, v86, v87, *(v21 + 16), 12 * v5);
              v84 = v84 & 0xFFFF000000000000 | 0x1010001000CLL;
              v85 = v85 & 0xFFFFFF0000000000 | 0x1E00000000;
              v55 = re::DeformationBufferAllocator::alloc(*(v24 + 360), a5[2], 4, v84, v85, *(v21 + 16), 12 * v5);
              v56 = re::DeformationBufferAllocator::allocationData(*(v24 + 360), *(v21 + 16), v54);
              v57 = re::DeformationBufferAllocator::allocationData(*(v24 + 360), *(v21 + 16), v55);
              WORD2(v105) = 257;
              LODWORD(v105) = 65548;
              BYTE12(v105) = 30;
              DWORD2(v105) = 0;
              re::DeformationVertexBufferState::setOutputBuffer(v22, 3, 1, (v56 + 24), &v105);
              WORD2(v105) = 257;
              LODWORD(v105) = 65548;
              BYTE12(v105) = 30;
              DWORD2(v105) = 0;
              re::DeformationVertexBufferState::setOutputBuffer(v22, 4, 1, (v57 + 24), &v105);
            }

            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v105, a3, 4uLL, 4uLL);
            v58 = v105;
            v59 = v106;
            v60 = *(&v105 + 1);
            *(v105 + DWORD2(v105)) = v5;
            *v28 = v58;
            v28[1] = v60;
            v28[2] = v59;
          }

          else
          {
            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v105, a3, 12 * v5, 0x10uLL);
            LOWORD(v98) = 257;
            v97 = 65548;
            LOBYTE(v99) = 30;
            HIDWORD(v98) = 0;
            re::DeformationVertexBufferState::setOutputBuffer(v22, 2, 0, &v105, &v97);
          }
        }

        v8 = v93;
        v9 = v94;
        v16 = v92;
      }

      if (++v17 == v9)
      {
        return v16;
      }
    }

    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v18 + 8), v20);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v71, v77);
    __break(1u);
LABEL_43:
    v96 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v97 = 136315906;
    v98 = "operator[]";
    v99 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v100 = 797;
    v101 = 2048;
    v102 = v8;
    v103 = 2048;
    v104 = v5;
    _os_log_send_and_compose_impl(v64, &v96, &v105, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v82, v83);
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v96 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v97 = 136315906;
    v98 = "operator[]";
    v99 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = v8;
    v103 = 2048;
    v104 = v5;
    _os_log_send_and_compose_impl(v67, &v96, &v105, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v82, v83);
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v96 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v97 = 136315906;
    v98 = "operator[]";
    v99 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    v100 = 468;
    v101 = 2048;
    v102 = v17;
    v103 = 2048;
    v104 = v5;
    _os_log_send_and_compose_impl(v70, &v96, &v105, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v82, v83);
    _os_crash_msg();
    __break(1u);
LABEL_55:
    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v38, v37);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v72, v78);
    __break(1u);
LABEL_56:
    re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v42, v41);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v73, v79);
    __break(1u);
LABEL_57:
    re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v52);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v74, v80);
    __break(1u);
    goto LABEL_58;
  }

  return v16;
}

unint64_t re::DeformationBufferAllocator::allocationData(re::DeformationBufferAllocator *this, unsigned int a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 1);
  if (v4 <= a2)
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

    v14 = 476;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 2) + 72 * a2 + 16;

  return re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](v5, a3);
}

uint64_t re::RenormalizationDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v4 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Renormalization");
  v8 = *(v7 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v52 = a2;
    v53 = v4;
    v50 = *(v7 + 48);
    v51 = v7;
    do
    {
      v11 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v10);
      v13 = *(a2 + 8);
      if (v13 <= v10)
      {
        v55 = 0;
        memset(v59, 0, sizeof(v59));
        v43 = MEMORY[0x1E69E9C10];
        v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v56 = 136315906;
        *&v56[4] = "operator[]";
        *&v56[12] = 1024;
        if (v44)
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        *&v56[14] = 468;
        *&v56[18] = 2048;
        *&v56[20] = v10;
        v57 = 2048;
        v58 = v13;
        _os_log_send_and_compose_impl(v45, &v55, v59, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v48, v49);
        _os_crash_msg();
        __break(1u);
LABEL_23:
        re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v16, v17);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v46, v47);
        __break(1u);
      }

      v14 = *(a2 + 16);
      v15 = v14 + v9;
      if (*(v14 + v9 + 32) && *(v15 + 40))
      {
        v16 = *(v11 + 8);
        v17 = v4[6];
        if (v17 <= v16)
        {
          goto LABEL_23;
        }

        v18 = (v4[5] + 312 * v16);
        LOBYTE(v59[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v19 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v59) + 20);
        LOBYTE(v59[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v20 = v14 + v9;
        v21 = v19 / *(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v59) + 4) - 1;
        if (*(v14 + v9 + 48))
        {
          LOBYTE(v59[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          if (*(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v59) + 16) == 36)
          {
            v22 = 144;
          }

          else
          {
            v22 = 80;
          }

          v23 = [*(a1 + v22) maxTotalThreadsPerThreadgroup];
          v24 = *(a1 + v22);
          v25 = (v21 + v23) / v23;
          [*this setComputePipelineState:v24];
          LOBYTE(v59[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 2u);
          v26 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v59) + 24);
          LOBYTE(v59[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 2u);
          [*this setBuffer:v26 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v59) + 16), 0}];
          LOBYTE(v59[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 3u);
          v27 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v59) + 24);
          LOBYTE(v59[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 3u);
          [*this setBuffer:v27 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v59) + 16), 1}];
          LOBYTE(v59[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 4u);
          v28 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v59) + 24);
          LOBYTE(v59[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 4u);
          [*this setBuffer:v28 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v59) + 16), 2}];
          LOBYTE(v59[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          v29 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v59) + 24);
          LOBYTE(v59[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          [*this setBuffer:v29 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, v59) + 16), 3}];
          LOBYTE(v59[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
          v30 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v59) + 24);
          LOBYTE(v59[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
          [*this setBuffer:v30 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, v59) + 16), 4}];
          v31 = *(v20 + 48);
          v32 = *v31;
          v33 = *(v31 + 4);
          v34 = *this;
          v35 = 5;
        }

        else
        {
          LOBYTE(v59[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          if (*(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v59) + 16) == 36)
          {
            v36 = 96;
          }

          else
          {
            v36 = 32;
          }

          v23 = [*(a1 + v36) maxTotalThreadsPerThreadgroup];
          v37 = *(a1 + v36);
          v25 = (v21 + v23) / v23;
          [*this setComputePipelineState:v37];
          LOBYTE(v59[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 2u);
          v38 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v59) + 24);
          LOBYTE(v59[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 2u);
          [*this setBuffer:v38 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v59) + 16), 0}];
          LOBYTE(v59[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          v39 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v59) + 24);
          LOBYTE(v59[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          [*this setBuffer:v39 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, v59) + 16), 3}];
          LOBYTE(v59[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
          v40 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v59) + 24);
          LOBYTE(v59[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
          v33 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v59) + 16);
          v34 = *this;
          v32 = v40;
          v35 = 4;
        }

        [v34 setBuffer:v32 offset:v33 atIndex:v35];
        [*this setBuffer:**(v15 + 32) offset:*(*(v15 + 32) + 16) atIndex:6];
        [*this setBuffer:**(v15 + 40) offset:*(*(v15 + 40) + 16) atIndex:7];
        [*this setBuffer:*(v20 + 16) offset:*(v20 + 8) atIndex:8];
        v41 = *this;
        *&v59[0] = v25;
        *(v59 + 8) = vdupq_n_s64(1uLL);
        *v56 = v23;
        *&v56[8] = *(v59 + 8);
        [v41 dispatchThreadgroups:v59 threadsPerThreadgroup:v56];
        a2 = v52;
        v4 = v53;
        v8 = v50;
        v7 = v51;
      }

      ++v10;
      v9 += 56;
    }

    while (v8 != v10);
  }

  return [*this popDebugGroup];
}

void re::RenormalizationDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v135 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v119 = 0;
  v110 = *(v3 + 48);
  if (!v110)
  {
    return;
  }

  v4 = a3;
  v5 = a2;
  v6 = 0;
  v103 = v3;
  do
  {
    v7 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v3 + 8, v6);
    v9 = *(v5 + 8);
    if (v9 <= v6)
    {
      goto LABEL_59;
    }

    v10 = (*(v5 + 16) + 56 * v6);
    if (!v10[4] || !v10[5])
    {
      goto LABEL_43;
    }

    v11 = *(v7 + 8);
    v12 = v4[6];
    if (v12 <= v11)
    {
      goto LABEL_63;
    }

    v13 = (v4[5] + 312 * v11);
    v109 = *(v5 + 16) + 56 * v6;
    v14 = v10[3];
    LOBYTE(v130) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
    v108 = *(v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v130) + 20);
    LOBYTE(v130) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
    v107 = *(v13[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 15, &v130) + 4);
    LOBYTE(v130) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
    v111 = v13;
    v16 = *(v13[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 15, &v130) + 16);
    if (v16 <= 0x19)
    {
      if (v16 == 8)
      {
        v17 = re::unpackUChar3NormalizedData;
      }

      else
      {
        if (v16 != 11)
        {
          goto LABEL_64;
        }

        v17 = re::unpackChar3NormalizedData;
      }

LABEL_15:
      v18 = v17;
      goto LABEL_16;
    }

    v18 = re::unpackHalf3Data;
    if (v16 != 26)
    {
      if (v16 != 30)
      {
        goto LABEL_64;
      }

      v17 = re::unpackFloat3Data;
      goto LABEL_15;
    }

LABEL_16:
    v106 = v6;
    v118 = 0;
    ++v119;
    if (v117 < v14 / 3)
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&v116, v14 / 3);
    }

    LOBYTE(v130) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
    v19 = v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v130);
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    LOBYTE(v130) = 0;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 0);
    if (*(v13[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 15, &v130) + 16) == 36)
    {
      LOBYTE(v130) = 0;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 0);
      v22 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v130);
      if (v14)
      {
        v24 = 0;
        v25 = v13[8] + 32 * v22;
        v9 = *(v25 + 20) >> 2;
        v6 = *(v25 + 8) + *(v25 + 16) + 4;
        while (v24 < v9)
        {
          v26 = (v18)(v20 + v21, *(v6 - 4));
          v28 = v24 + 1;
          if (v24 + 1 >= v9)
          {
            goto LABEL_56;
          }

          v29 = v26;
          v30 = v27;
          v31 = (v18)(v20 + v21, *v6);
          v33 = v24 + 2;
          if (v24 + 2 >= v9)
          {
            goto LABEL_58;
          }

          v34.i64[0] = v29;
          v34.i64[1] = v30;
          v114 = v34;
          v34.i64[0] = v31;
          v34.i64[1] = v32;
          v112 = v34;
          v35.i64[0] = (v18)(v20 + v21, *(v6 + 4));
          v35.i64[1] = v36;
          v37 = vsubq_f32(v112, v114);
          v38 = vsubq_f32(v35, v114);
          v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
          v38.i32[0] = vextq_s8(v39, v39, 8uLL).u32[0];
          v38.i32[1] = v39.i32[0];
          *&v130 = v38.i64[0];
          DWORD2(v130) = v39.i32[1];
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(&v116, &v130);
          v24 += 3;
          v6 += 12;
          if (v24 >= v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_53;
      }
    }

    else
    {
      LOBYTE(v130) = 0;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 0);
      v40 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v130);
      if (v14)
      {
        v24 = 0;
        v42 = v13[8] + 32 * v40;
        v9 = *(v42 + 20) >> 1;
        v6 = *(v42 + 8) + *(v42 + 16) + 4;
        while (v24 < v9)
        {
          v43 = (v18)(v20 + v21, *(v6 - 4));
          v45 = v24 + 1;
          if (v24 + 1 >= v9)
          {
            goto LABEL_55;
          }

          v46 = v43;
          v47 = v44;
          v48 = (v18)(v20 + v21, *(v6 - 2));
          v50 = v24 + 2;
          if (v24 + 2 >= v9)
          {
            goto LABEL_57;
          }

          v51.i64[0] = v46;
          v51.i64[1] = v47;
          v115 = v51;
          v51.i64[0] = v48;
          v51.i64[1] = v49;
          v113 = v51;
          v52 = *v6;
          v6 += 6;
          v53.i64[0] = (v18)(v20 + v21, v52);
          v53.i64[1] = v54;
          v55 = vsubq_f32(v113, v115);
          v56 = vsubq_f32(v53, v115);
          v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), vnegq_f32(v55)), v56, vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL));
          v56.i32[0] = vextq_s8(v57, v57, 8uLL).u32[0];
          v56.i32[1] = v57.i32[0];
          *&v130 = v56.i64[0];
          DWORD2(v130) = v57.i32[1];
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(&v116, &v130);
          v24 += 3;
          if (v24 >= v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_54;
      }
    }

LABEL_32:
    v58 = re::BufferView::contents(*(v109 + 32));
    v59 = re::BufferView::contents(*(v109 + 40));
    LOBYTE(v130) = 2;
    v9 = v111;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v111, 2u);
    v60 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v111 + 184), &v130);
    v4 = a3;
    v6 = v106;
    v3 = v103;
    v5 = a2;
    if (v108 >= v107)
    {
      v63 = 0;
      v64 = *(v111 + 192) + 32 * v60;
      v65 = *(v64 + 8) + *(v64 + 16);
      v66 = *(v64 + 20) / 0xCuLL;
      v24 = v118;
      v67 = v120;
      while (1)
      {
        v68 = v63 ? *(v59 - 4 + 4 * v63) : 0;
        v69 = *(v59 + 4 * v63);
        v70 = 0uLL;
        if (v68 < v69)
        {
          break;
        }

LABEL_41:
        if (v63 == v66)
        {
          goto LABEL_52;
        }

        v62 = vmulq_f32(v70, v70);
        *&v76 = v62.f32[2] + vaddv_f32(*v62.f32);
        *v62.f32 = vrsqrte_f32(v76);
        *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(v76, vmul_f32(*v62.f32, *v62.f32)));
        v77 = vmulq_n_f32(v70, vmul_f32(*v62.f32, vrsqrts_f32(v76, vmul_f32(*v62.f32, *v62.f32))).f32[0]);
        v78 = v65 + 12 * v63;
        *v78 = v77.i64[0];
        *(v78 + 8) = v77.i32[2];
        if (++v63 >= (v108 / v107))
        {
          goto LABEL_43;
        }
      }

      v71 = v69 - v68;
      v72 = (v58 + 4 * v68);
      while (1)
      {
        v74 = *v72++;
        v73 = v74;
        if (v24 <= v74)
        {
          break;
        }

        v75 = v67 + 12 * v73;
        v62.i64[0] = *v75;
        v62.i32[2] = *(v75 + 8);
        v70 = vaddq_f32(v70, v62);
        if (!--v71)
        {
          goto LABEL_41;
        }
      }

      v121 = 0;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v130 = 0u;
      v9 = MEMORY[0x1E69E9C10];
      v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v122 = 136315906;
      v123 = "operator[]";
      v124 = 1024;
      if (v79)
      {
        v80 = 3;
      }

      else
      {
        v80 = 2;
      }

      v125 = 789;
      v126 = 2048;
      v127 = v73;
      v128 = 2048;
      v129 = v24;
      _os_log_send_and_compose_impl(v80, &v121, &v130, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v122, 38, v101, v102);
      _os_crash_msg();
      __break(1u);
LABEL_52:
      re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v66, v66);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v84, v93);
      __break(1u);
LABEL_53:
      re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v24, v9);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v85, v94);
      __break(1u);
LABEL_54:
      re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v24, v9);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v86, v95);
      __break(1u);
LABEL_55:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v45, v9);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v87, v96);
      __break(1u);
LABEL_56:
      re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v9);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v88, v97);
      __break(1u);
LABEL_57:
      re::internal::assertLog(6, v49, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v50, v9);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v89, v98);
      __break(1u);
LABEL_58:
      re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33, v9);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v90, v99);
      __break(1u);
LABEL_59:
      v121 = 0;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v130 = 0u;
      v81 = MEMORY[0x1E69E9C10];
      v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v122 = 136315906;
      v123 = "operator[]";
      v124 = 1024;
      if (v82)
      {
        v83 = 3;
      }

      else
      {
        v83 = 2;
      }

      v125 = 468;
      v126 = 2048;
      v127 = v6;
      v128 = 2048;
      v129 = v9;
      _os_log_send_and_compose_impl(v83, &v121, &v130, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v122, 38, v101, v102);
      _os_crash_msg();
      __break(1u);
LABEL_63:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v11, v12);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v91, v100);
      __break(1u);
LABEL_64:
      re::internal::assertLog(5, v15, "assertion failure: '%s' (%s:line %i) Unsupported packed vertex format: %u.", "!Unreachable code", "vertexUnpackFunctionForFormat", 45, v16);
      _os_crash("assertion failure: (!Unreachable code) Unsupported packed vertex format: %u.", v92);
      __break(1u);
    }

LABEL_43:
    ++v6;
  }

  while (v6 != v110);
  if (v116)
  {
    if (v120)
    {
      (*(*v116 + 40))();
    }
  }
}

void re::RenormalizationDeformer::~RenormalizationDeformer(re::RenormalizationDeformer *this)
{
  for (i = 144; i != 16; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }
}

{
  v2 = 144;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 16)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

uint64_t re::internal::Callable<re::RenormalizationDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  result = **a2;
  if (result)
  {
    if (v2[1])
    {
      result = (*(*result + 40))(result, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::RenormalizationDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06408;
  return result;
}

void *re::internal::Callable<re::RenormalizationDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06408;
  return result;
}

void re::TextManager::~TextManager(re::TextManager *this)
{
  re::GrowableLinearAllocator::deinit((this + 120));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 26);
  re::Allocator::~Allocator((this + 120));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 7);
  re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::deinit(this + 1);
}

double re::TextManager::deinit(re::TextManager *this)
{
  *(this + 112) = 0;
  v2 = *(this + 13);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit((v2 + 320));
    v4 = *(v2 + 312);
    if (v4)
    {

      *(v2 + 312) = 0;
    }

    if (*(v2 + 256) == 1)
    {
      re::DynamicString::deinit((v2 + 264));
    }

    if (*(v2 + 200) == 1)
    {
      re::DynamicString::deinit((v2 + 208));
    }

    re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 152));
    re::TextRenderGroupData::~TextRenderGroupData((v2 + 8));
    if (*v2)
    {

      *v2 = 0;
    }

    (*(*v3 + 40))(v3, v2);
    *(this + 13) = 0;
  }

  v5 = *(this + 22);
  if (v5)
  {
    v6 = 0;
    v7 = *(this + 9);
    while (1)
    {
      v8 = *v7;
      v7 += 10;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(this + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != v5)
  {
    do
    {
      re::internal::destroyPersistent<re::FontAssetInternal>("deinit", 170, *(*(this + 9) + 40 * v6 + 24));
      v9 = *(this + 22);
      if (v9 <= v6 + 1)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = *(this + 22);
      }

      while (v10 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(this + 9) + 40 * v6) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v6) = v10;
LABEL_25:
      ;
    }

    while (v6 != v9);
  }

  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 7);
  re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::deinit(this + 1);
  *this = 0;

  return re::GrowableLinearAllocator::deinit((this + 120));
}

re *re::internal::destroyPersistent<re::FontAssetInternal>(re *result, uint64_t a2, id *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    if (*a3)
    {

      *a3 = 0;
    }

    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

double re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = a1[2];
        v7 = *(v6 + v5);
        if (v7 < 0)
        {
          *(v6 + v5) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v5 + 8));
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 32;
      }

      while (v4 < v3);
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

BOOL re::TextManager::isFontLoaded(re::TextManager *this, const re::FontID *a2)
{
  result = re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::contains(this + 8, a2);
  if (result)
  {
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, *a2 >> 1, v5);
    return v6 != 0x7FFFFFFF;
  }

  return result;
}

BOOL re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::contains(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 4 * ((*a2 >> 1) % v2));
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  do
  {
    v7 = v6 + 32 * v4;
    result = re::StringID::operator==((v7 + 16), a2);
    if (result)
    {
      break;
    }

    v4 = *(v7 + 8) & 0x7FFFFFFF;
  }

  while (v4 != 0x7FFFFFFF);
  return result;
}

void re::TextManager::addFont(uint64_t a1, StringID *a2, void **a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 16, 8);
  *v9 = 0;
  *(v9 + 8) = 0;
  NS::SharedPtr<MTL::Buffer>::operator=(v9, a3);
  *(v9 + 8) = a4;
  v10 = *&a2->var0 >> 1;
  v11 = *(a1 + 32);
  if (!v11)
  {
    LODWORD(v12) = 0;
    goto LABEL_8;
  }

  v12 = v10 % v11;
  v13 = *(*(a1 + 16) + 4 * (v10 % v11));
  if (v13 == 0x7FFFFFFF)
  {
LABEL_8:
    v16 = *(a1 + 44);
    if (v16 == 0x7FFFFFFF)
    {
      v16 = *(a1 + 40);
      v17 = v16;
      if (v16 == v11)
      {
        re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::setCapacity((a1 + 8), (2 * *(a1 + 36)));
        LODWORD(v12) = v10 % *(a1 + 32);
        v17 = *(a1 + 40);
      }

      *(a1 + 40) = v17 + 1;
      v18 = *(a1 + 24);
      v19 = *(v18 + 32 * v16 + 8);
    }

    else
    {
      v18 = *(a1 + 24);
      v19 = *(v18 + 32 * v16 + 8);
      *(a1 + 44) = v19 & 0x7FFFFFFF;
    }

    *(v18 + 32 * v16 + 8) = v19 | 0x80000000;
    *(*(a1 + 24) + 32 * v16 + 8) = *(*(a1 + 24) + 32 * v16 + 8) & 0x80000000 | *(*(a1 + 16) + 4 * v12);
    *(*(a1 + 24) + 32 * v16) = v10;
    re::StringID::StringID((*(a1 + 24) + 32 * v16 + 16), a2);
    *(*(a1 + 16) + 4 * v12) = v16;
    ++*(a1 + 36);
    ++*(a1 + 48);
    v10 = *&a2->var0 >> 1;
    goto LABEL_14;
  }

  v14 = *(a1 + 24);
  while (1)
  {
    v15 = v14 + 32 * v13;
    if (re::StringID::operator==((v15 + 16), a2))
    {
      break;
    }

    v13 = *(v15 + 8) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  v20 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, a2, v10, &v24);
  if (HIDWORD(v24) == 0x7FFFFFFF)
  {
    v24 = 0uLL;
    v25 = 0;
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, a2, *&a2->var0 >> 1, &v24);
    if (HIDWORD(v24) == 0x7FFFFFFF)
    {
      v21 = re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::allocEntry((a1 + 56), DWORD2(v24), v24);
      re::StringID::StringID((v21 + 8), a2);
      *(v21 + 24) = v9;
      ++*(a1 + 96);
    }
  }

  else
  {
    v22 = *re::graphicsLogObjects(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      var1 = a2->var1;
      LODWORD(v24) = 136315138;
      *(&v24 + 4) = var1;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "%s font already added to TextManager. Why is this being added again?", &v24, 0xCu);
    }
  }
}

BOOL re::TextManager::removeFont(re::TextManager *this, const re::FontID *a2)
{
  result = re::TextManager::isFontLoaded(this, a2);
  if (result)
  {
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, *a2 >> 1, v5);
    re::internal::destroyPersistent<re::FontAssetInternal>("removeFont", 210, *(*(this + 9) + 40 * v5[3] + 24));
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, *a2 >> 1, v5);
    return re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::removeInternal(this + 56, v5);
  }

  return result;
}

uint64_t re::TextManager::addStringToGroup(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(a2 + 80) >= 0x400uLL)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 8);
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      v7 = "String count of text group %p exceeds maximum (%lu).";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x16u);
      return 0;
    }

    return 0;
  }

  if (*(a2 + 88) >= 0x4000uLL)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 23;
      if (*(a2 + 56))
      {
        v8 = *(a2 + 72);
      }

      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      v7 = "Glyph count of text group %p exceeds maximum (%lu).";
      goto LABEL_9;
    }

    return 0;
  }

  v12 = *(a3 + 8);
  if (v12)
  {
    v13 = *(a3 + 16);
  }

  else
  {
    v13 = (a3 + 9);
  }

  v14 = v12 >> 1;
  v15 = v12 >> 1;
  if (*(a3 + 8))
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  re::DynamicString::append((a2 + 48), v13, v16);
  v17 = *(a2 + 80);
  v18 = *(a2 + 8);
  if (v18 <= v17)
  {
    v44 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    v36 = MEMORY[0x1E69E9C10];
    v37 = v17;
    v26 = v18;
    v45 = 136315906;
    v46 = "operator[]";
    v47 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v48 = 468;
    v49 = 2048;
    v50 = v37;
    v51 = 2048;
    v52 = v26;
    _os_log_send_and_compose_impl(v38, &v44, buf, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v43);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v44 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    v39 = MEMORY[0x1E69E9C10];
    v40 = v27;
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v45 = 136315906;
    v46 = "operator[]";
    v47 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v48 = 468;
    v49 = 2048;
    v50 = v26;
    v51 = 2048;
    v52 = v40;
    _os_log_send_and_compose_impl(v42, &v44, buf, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v43);
    _os_crash_msg();
    __break(1u);
  }

  v19 = re::StringID::operator=((*(a2 + 16) + 144 * v17), a4);
  v20 = *(a4 + 16);
  v21 = *(a4 + 32);
  v22 = *(a4 + 64);
  *(v19 + 3) = *(a4 + 48);
  *(v19 + 4) = v22;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  v23 = *(a4 + 80);
  v24 = *(a4 + 96);
  v25 = *(a4 + 112);
  v19[16] = *(a4 + 128);
  *(v19 + 6) = v24;
  *(v19 + 7) = v25;
  *(v19 + 5) = v23;
  v26 = *(a2 + 80);
  v27 = *(a2 + 8);
  if (v27 <= v26)
  {
    goto LABEL_30;
  }

  v28 = (*(a2 + 16) + 144 * v26);
  v28[13] = *(a2 + 88);
  v29 = *(a3 + 8);
  if (v29)
  {
    v30 = v29 >> 1;
  }

  else
  {
    v30 = v29 >> 1;
  }

  v28[14] = v30;
  result = *(a2 + 96);
  *(a2 + 96) = result + 1;
  v31 = *(a2 + 136);
  v28[15] = result;
  v28[16] = v31;
  v32 = *(a2 + 88);
  ++*(a2 + 80);
  v33 = *(a3 + 8);
  v34 = v33 >> 1;
  v35 = v33 >> 1;
  if (*(a3 + 8))
  {
    v35 = v34;
  }

  *(a2 + 88) = v35 + v32;
  *(a2 + 128) = 1;
  return result;
}

uint64_t re::TextManager::addStaticText(re::TextManager *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::TextManager::renderData(a1);
  v7 = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 152, (a3 + 96));
  v8 = v7;
  if (!v7)
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    re::DynamicString::setCapacity(v13, 0);
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    v21 = -1;
    v9 = re::TextManager::renderData(a1);
    re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v9 + 152, (a3 + 96), v12);
    v10 = re::TextManager::renderData(a1);
    v8 = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v10 + 152, (a3 + 96));
    *(v8 + 17) = *(a3 + 96);
    re::TextRenderGroupData::~TextRenderGroupData(v12);
  }

  return re::TextManager::addStringToGroup(v7, v8, a2, a3);
}

uint64_t re::TextManager::renderData(re::TextManager *this)
{
  result = *(this + 13);
  if (!result)
  {
    v3 = re::globalAllocators(0);
    v4 = (*(*v3[2] + 32))(v3[2], 368, 8);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0;
    re::DynamicString::setCapacity((v4 + 56), 0);
    *(v4 + 88) = 0u;
    *(v4 + 104) = 1;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0;
    *(v4 + 144) = -1;
    *(v4 + 152) = 0u;
    *(v4 + 168) = 0u;
    *(v4 + 184) = 0;
    *(v4 + 188) = 0x7FFFFFFFLL;
    *(v4 + 200) = 0;
    *(v4 + 240) = 0x700000007;
    *(v4 + 248) = 7;
    *(v4 + 249) = -1;
    *(v4 + 254) = 0;
    *(v4 + 256) = 0;
    *(v4 + 296) = 0x700000007;
    *(v4 + 304) = 7;
    *(v4 + 305) = -1;
    *(v4 + 340) = 0u;
    *(v4 + 310) = 0u;
    *(v4 + 326) = 0u;
    *(v4 + 356) = 0x7FFFFFFFLL;
    *(this + 13) = v4;
    v5 = *(*this + 208);
    v6 = *(*this + 48);
    v14 = [v5 newBufferWithLength:192 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(*(this + 13), &v14);
    if (v14)
    {
    }

    re::ShaderManager::makeFunction(v6, v6[46], "fsSdfFont", 0, &v14);
    re::ShaderManager::makeFunction(v6, v6[46], "vsSdfFont", 0, &v13);
    v7 = [objc_msgSend(MEMORY[0x1E69741E0] alloc)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 layouts)];
    [objc_msgSend(objc_msgSend(v7 layouts)];
    re::ShaderManager::makeRenderPipelineDescriptor(&v12, v6);
    v8 = *(this + 13);
    v9 = *(v8 + 312);
    v10 = v12;
    if (v9 == v12)
    {
    }

    else
    {
      if (v9)
      {

        v10 = v12;
      }

      *(v8 + 312) = v10;
    }

    [*(*(this + 13) + 312) setLabel_];
    [*(*(this + 13) + 312) setVertexFunction_];
    [*(*(this + 13) + 312) setFragmentFunction_];
    [*(*(this + 13) + 312) setVertexDescriptor_];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    v11 = *(this + 13);
    v11[248] = 4;
    v11[253] = 1;
    v11[304] = 7;
    v11[309] = 0;
    if (v7)
    {
    }

    if (v13)
    {
    }

    if (v14)
    {
    }

    return *(this + 13);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 168 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::TextRenderGroupData const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 168 * HIDWORD(v9) + 16;
  }
}

void *anonymous namespace::initTextRenderGroup(_anonymous_namespace_ *this, re::TextRenderGroupData *a2, unint64_t a3)
{
  v5 = this;
  v5 += 6;
  result = re::DynamicString::setCapacity(v5, a2);
  v5[4] = 0;
  v5[11] = -1;
  return result;
}

uint64_t re::TextManager::findStaticTextParam(re::TextManager *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v7 = re::TextManager::renderData(a1);
  result = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v7 + 152, &v18);
  if (result)
  {
    v9 = *(result + 80);
    if (v9)
    {
      v10 = 0;
      v11 = *(result + 8);
      for (i = 120; ; i += 144)
      {
        if (v11 == v10)
        {
          v19 = 0;
          memset(v28, 0, sizeof(v28));
          v13 = MEMORY[0x1E69E9C10];
          v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v23 = 468;
          v24 = 2048;
          v25 = v11;
          v26 = 2048;
          v27 = v11;
          _os_log_send_and_compose_impl(v15, &v19, v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16, a2);
          _os_crash_msg();
          __break(1u);
        }

        if (*(*(result + 16) + i) == a2)
        {
          break;
        }

        if (v9 == ++v10)
        {
          return 0;
        }
      }

      *a4 = result;
      *a5 = v10;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t re::TextManager::staticTextParam(re::TextManager *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  StaticTextParam = re::TextManager::findStaticTextParam(a1, a2, a3, &v12, &v11);
  result = 0;
  if (StaticTextParam)
  {
    v5 = v11;
    v6 = *(v12 + 8);
    if (v6 <= v11)
    {
      v13 = 0;
      memset(v22, 0, sizeof(v22));
      v7 = MEMORY[0x1E69E9C10];
      v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      if (v8)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v17 = 468;
      v18 = 2048;
      v19 = v5;
      v20 = 2048;
      v21 = v6;
      _os_log_send_and_compose_impl(v9, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v10, v11);
      _os_crash_msg();
      __break(1u);
    }

    return *(v12 + 16) + 144 * v11;
  }

  return result;
}

uint64_t re::TextManager::removeStaticText(re::TextManager *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0;
  result = re::TextManager::findStaticTextParam(a1, a2, a3, &v33, &v32);
  if ((result & 1) == 0)
  {
    goto LABEL_24;
  }

  v4 = v32;
  v7 = v33;
  v8 = *(v33 + 8);
  if (v8 <= v32)
  {
LABEL_20:
    v34 = 0;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = v4;
    v41 = 2048;
    v42 = v8;
    _os_log_send_and_compose_impl(v27, &v34, &v43, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
LABEL_24:
    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Invalid string render handle %llu:%lu.", "!Unreachable code", "removeStaticText", 303, v3, v4);
    _os_crash("assertion failure: (!Unreachable code) Invalid string render handle %llu:%lu.", v28, v29);
    __break(1u);
  }

  v9 = *(v33 + 16) + 144 * v32;
  v8 = *(v9 + 112);
  if (v8)
  {
    v10 = *(v9 + 104);
    v11 = *(v9 + 112);
    do
    {
      result = re::DynamicString::removeAt((v7 + 48), v10);
      --v11;
    }

    while (v11);
  }

  v12 = *(v7 + 80);
  *(v7 + 88) -= v8;
  if (v4 + 1 < v12)
  {
    v13 = 144 * v4;
    while (1)
    {
      v14 = *(v7 + 8);
      if (v14 <= v4 + 1)
      {
        break;
      }

      v15 = (*(v7 + 16) + v13);
      v15[31] -= v8;
      if (v14 <= v4)
      {
        goto LABEL_16;
      }

      result = re::StringID::operator=(v15, v15 + 18);
      v16 = *(result + 176);
      *(result + 16) = *(result + 160);
      *(result + 32) = v16;
      v17 = *(result + 208);
      *(result + 48) = *(result + 192);
      *(result + 64) = v17;
      *(result + 128) = *(result + 272);
      v18 = *(result + 256);
      *(result + 96) = *(result + 240);
      *(result + 112) = v18;
      *(result + 80) = *(result + 224);
      v12 = *(v7 + 80);
      v19 = v4 + 2;
      ++v4;
      v13 += 144;
      if (v19 >= v12)
      {
        goto LABEL_11;
      }
    }

    v34 = 0;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = v4 + 1;
    v41 = 2048;
    v42 = v14;
    _os_log_send_and_compose_impl(v22, &v34, &v43, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    v34 = 0;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = v4;
    v41 = 2048;
    v42 = v14;
    _os_log_send_and_compose_impl(v25, &v34, &v43, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  *(v7 + 80) = v12 - 1;
  *(v7 + 128) = 1;
  return result;
}

size_t re::TextManager::modifyStaticTextColor(re::TextManager *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = re::TextManager::staticTextParam(a1, a2, a3);
  if (result)
  {
    *(result + 16) = a4;
    *(result + 24) = a5;
  }

  else
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Invalid string render handle %llu:%lu.", "!Unreachable code", "modifyStaticTextColor", 335, a3, a2);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid string render handle %llu:%lu.", v11, v12);
    __break(1u);
  }

  return result;
}

_OWORD *re::TextManager::modifyStaticTextWorldMatrix(re::TextManager *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  result = re::TextManager::staticTextParam(a1, a2, a3);
  if (result)
  {
    v9 = *a4;
    v10 = a4[1];
    v11 = a4[3];
    result[4] = a4[2];
    result[5] = v11;
    result[2] = v9;
    result[3] = v10;
  }

  else
  {
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Invalid string render handle %llu:%lu.", "!Unreachable code", "modifyStaticTextWorldMatrix", 345, a3, a2);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid string render handle %llu:%lu.", v12, v13);
    __break(1u);
  }

  return result;
}

uint64_t re::TextManager::computeSize(re::TextManager *this, const re::DynamicString *a2, const re::FontID *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a3, *a3 >> 1, buf);
  v8 = *(*(this + 9) + 40 * *&buf[12] + 24);
  if (!v8)
  {
    v33 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a3 + 1);
      *buf = 136315138;
      *&buf[4] = v34;
      _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "Invalid font %s, returning empty bound", buf, 0xCu);
    }

    return 0;
  }

  v9 = *(a2 + 1);
  if (v9)
  {
    v10 = v9 >> 1;
  }

  else
  {
    v10 = v9 >> 1;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0.0;
  v15 = 1;
  v16 = MEMORY[0x1E69E9830];
  *&v7 = 0;
  v17 = 1;
  do
  {
    v46 = v7;
    v18 = re::DynamicString::operator[](a2, v11);
    v19 = *v18;
    if (*v18)
    {
      if (v19 == 10)
      {
        v20 = *(v8 + 8);
        if (v17)
        {
          v7 = v46;
        }

        else
        {
          v23 = *(v20 + 24);
          v7 = v46;
          if (v23 <= v12)
          {
            goto LABEL_45;
          }

          *&v7 = *&v46 + (*(*(v20 + 40) + 16 * v12 + 8) - *(*(v20 + 40) + 16 * v12));
        }

        if (v14 < *&v7)
        {
          v14 = *&v7;
        }

        LODWORD(v7) = 0;
        *(&v7 + 1) = *(&v7 + 1) - *v20;
        ++v13;
        v17 = 1;
      }

      else
      {
        v21 = v19;
        if (v19 < 0)
        {
          v22 = __maskrune(v19, 0x40000uLL);
        }

        else
        {
          v22 = *(v16 + 4 * v19 + 60) & 0x40000;
        }

        v7 = v46;
        if (v22)
        {
          v23 = v21 - 32;
          v24 = *(v8 + 8);
          v25 = v24[3];
          if (v25 <= v23)
          {
            v47 = 0;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            *buf = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v48 = 136315906;
            v49 = "operator[]";
            v50 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v36 = 3;
            }

            else
            {
              v36 = 2;
            }

            v51 = 797;
            v52 = 2048;
            v53 = v23;
            v54 = 2048;
            v55 = v25;
            _os_log_send_and_compose_impl(v36, &v47, buf, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v46, *(&v46 + 1));
            _os_crash_msg();
            __break(1u);
LABEL_45:
            v47 = 0;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            *buf = 0u;
            v37 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v48 = 136315906;
            v49 = "operator[]";
            v50 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v51 = 797;
            v52 = 2048;
            v53 = v12;
            v54 = 2048;
            v55 = v23;
            _os_log_send_and_compose_impl(v39, &v47, buf, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v46, *(&v46 + 1));
            _os_crash_msg();
            __break(1u);
LABEL_49:
            v47 = 0;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            *buf = 0u;
            v40 = MEMORY[0x1E69E9C10];
            v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v48 = 136315906;
            v49 = "operator[]";
            v50 = 1024;
            if (v41)
            {
              v42 = 3;
            }

            else
            {
              v42 = 2;
            }

            v51 = 797;
            v52 = 2048;
            v53 = v12;
            v54 = 2048;
            v55 = v17;
            _os_log_send_and_compose_impl(v42, &v47, buf, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v46, *(&v46 + 1));
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

          if (v17)
          {
            v17 = 0;
            v26 = *(v24[5] + 16 * v23);
          }

          else
          {
            v12 = v23 + 95 * v12;
            v17 = v24[8];
            if (v17 <= v12)
            {
              goto LABEL_49;
            }

            v17 = 0;
            v26 = *(v24[10] + 8 * v12);
          }

          *&v7 = vadd_f32(*&v46, v26);
          v12 = v23;
        }
      }
    }

    else
    {
      v7 = v46;
    }

    v11 = v15;
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = v27 >> 1;
    }

    else
    {
      v28 = v27 >> 1;
    }
  }

  while (v28 > v15++);
  v30 = *(v8 + 8);
  if (v17)
  {
    goto LABEL_34;
  }

  v23 = *(v30 + 24);
  if (v23 <= v12)
  {
LABEL_53:
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *buf = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v51 = 797;
    v52 = 2048;
    v53 = v12;
    v54 = 2048;
    v55 = v23;
    _os_log_send_and_compose_impl(v45, &v47, buf, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v46, *(&v46 + 1));
    _os_crash_msg();
    __break(1u);
  }

  *&v7 = *&v7 + (*(*(v30 + 40) + 16 * v12 + 8) - *(*(v30 + 40) + 16 * v12));
LABEL_34:
  if (v14 >= *&v7)
  {
    *&v31 = v14;
  }

  else
  {
    *&v31 = *&v7;
  }

  *(&v31 + 1) = *v30 * (v13 + 1);
  return v31;
}

uint64_t re::TextManager::sortAndFillInstanceUniforms(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = a3;
  v70 = *MEMORY[0x1E69E9840];
  v6 = a2[10];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = a2[1];
    v10 = a2[4];
    do
    {
      if (v9 == v8)
      {
        goto LABEL_46;
      }

      if (v10 == v8)
      {
LABEL_50:
        v56 = 0;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        v44 = MEMORY[0x1E69E9C10];
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v57 = 136315906;
        v58 = "operator[]";
        v59 = 1024;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v60 = 468;
        v61 = 2048;
        v62 = v10;
        v63 = 2048;
        v64 = v10;
        _os_log_send_and_compose_impl(v46, &v56, &v65, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v50, v51);
        _os_crash_msg();
        __break(1u);
LABEL_54:
        v56 = 0;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        v47 = MEMORY[0x1E69E9C10];
        v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v57 = 136315906;
        v58 = "operator[]";
        v59 = 1024;
        if (v48)
        {
          v49 = 3;
        }

        else
        {
          v49 = 2;
        }

        v60 = 468;
        v61 = 2048;
        v62 = v3;
        v63 = 2048;
        v64 = v9;
        _os_log_send_and_compose_impl(v49, &v56, &v65, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v50, v52);
        _os_crash_msg();
        __break(1u);
      }

      *(a2[5] + 8 * v8++) = a2[2] + v7;
      v7 += 144;
    }

    while (v6 != v8);
  }

  v11 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,false>(a2[5], (a2[5] + 8 * v6), v12, 1);
  if (a2[10])
  {
    v14 = 0;
    v3 = 0;
    v52 = a1;
    while (1)
    {
      v9 = a2[4];
      if (v9 <= v3)
      {
        goto LABEL_54;
      }

      v15 = *(a2[5] + 8 * v3);
      result = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, v15, *v15 >> 1, &v65);
      v53 = v14;
      if (v15[14])
      {
        break;
      }

      v9 = 0;
LABEL_30:
      v15[14] = v9;
      a1 = v52;
      v14 = v9 + v53;
      if (++v3 >= a2[10])
      {
        goto LABEL_33;
      }
    }

    v17 = 0;
    v18 = 0;
    v9 = 0;
    v19 = *(*(a1 + 72) + 40 * HIDWORD(v65) + 24);
    LODWORD(v16) = 0;
    *(&v16 + 1) = *(*(v19 + 8) + 4) - **(v19 + 8);
    v55 = v16;
    v54 = v50 + 48 * v14;
    v20 = 1;
    v21 = 1;
    while (1)
    {
      result = re::DynamicString::operator[]((a2 + 6), v15[13] + v17);
      v22 = *result;
      if (*result)
      {
        if (v22 == 10)
        {
          *(&v23 + 1) = *(&v55 + 1);
          LODWORD(v23) = 0;
          *(&v23 + 1) = *(&v55 + 1) - **(v19 + 8);
          v55 = v23;
          v21 = 1;
        }

        else
        {
          v24 = v22;
          if (v22 < 0)
          {
            result = __maskrune(v22, 0x40000uLL);
            if (!result)
            {
              goto LABEL_27;
            }
          }

          else
          {
            result = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
            if (!result)
            {
              goto LABEL_27;
            }
          }

          v25 = v24 - 32;
          v26 = *(v19 + 8);
          v10 = v26[3];
          if (v10 <= v25)
          {
            v56 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v65 = 0u;
            v33 = MEMORY[0x1E69E9C10];
            v57 = 136315906;
            v58 = "operator[]";
            v59 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v60 = 797;
            v61 = 2048;
            v62 = v25;
            v63 = 2048;
            v64 = v10;
            _os_log_send_and_compose_impl(v34, &v56, &v65, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v50, v52);
            _os_crash_msg();
            __break(1u);
LABEL_38:
            v56 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v65 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v57 = 136315906;
            v58 = "operator[]";
            v59 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v60 = 797;
            v61 = 2048;
            v62 = v25;
            v63 = 2048;
            v64 = v10;
            _os_log_send_and_compose_impl(v37, &v56, &v65, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v50, v52);
            _os_crash_msg();
            __break(1u);
LABEL_42:
            v56 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v65 = 0u;
            v38 = MEMORY[0x1E69E9C10];
            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v57 = 136315906;
            v58 = "operator[]";
            v59 = 1024;
            if (v39)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            v60 = 797;
            v61 = 2048;
            v62 = v21;
            v63 = 2048;
            v64 = v10;
            _os_log_send_and_compose_impl(v40, &v56, &v65, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v50, v52);
            _os_crash_msg();
            __break(1u);
LABEL_46:
            v56 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v65 = 0u;
            v41 = MEMORY[0x1E69E9C10];
            v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v57 = 136315906;
            v58 = "operator[]";
            v59 = 1024;
            if (v42)
            {
              v43 = 3;
            }

            else
            {
              v43 = 2;
            }

            v60 = 468;
            v61 = 2048;
            v62 = v9;
            v63 = 2048;
            v64 = v9;
            _os_log_send_and_compose_impl(v43, &v56, &v65, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
            goto LABEL_50;
          }

          v27 = (v26[5] + 16 * v25);
          v28 = *v27;
          if ((v21 & 1) == 0)
          {
            v21 = v25 + 95 * v18;
            v10 = v26[8];
            if (v10 <= v21)
            {
              goto LABEL_42;
            }

            v28 = *(v26[10] + 8 * v21);
          }

          *(&v29 + 1) = *(&v55 + 1);
          *&v29 = vadd_f32(*&v55, v28);
          v30 = v54 + 48 * v9;
          v55 = v29;
          *(&v29 + 1) = vadd_f32(vsub_f32(v27[1], *v27), *&v29);
          *v30 = v29;
          v31 = *(v19 + 8);
          v10 = *(v31 + 104);
          if (v10 <= v25)
          {
            goto LABEL_38;
          }

          v21 = 0;
          *(v30 + 16) = *(*(v31 + 120) + 16 * v25);
          *(v30 + 32) = v3;
          ++v9;
          v18 = v25;
        }
      }

LABEL_27:
      v17 = v20;
      if (v15[14] <= v20++)
      {
        goto LABEL_30;
      }
    }
  }

  v14 = 0;
LABEL_33:
  a2[11] = v14;
  return result;
}

void re::TextManager::renderTextGroup(re::TextManager *a1, uint64_t a2, uint64_t a3, char **__ptr32 *a4, _BYTE *a5, uint64_t a6, uint64_t a7, int a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, unint64_t a18, char *__s2, uint64_t a20, char *__s1, uint64_t a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, uint64_t a36, uint64_t a37)
{
  a37 = *MEMORY[0x1E69E9840];
  if (*(a7 + 80))
  {
    v38 = *(a7 + 56);
    v39 = (v38 & 1) != 0 ? v38 >> 1 : v38 >> 1;
    if (v39)
    {
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a31, (a6 + 16), 48 * v39, 0x10uLL);
      v46 = a31;
      v47 = DWORD2(a31);
      v48 = a32;
      if (a8)
      {
        if (*(a7 + 128) == 1)
        {
          *(a7 + 128) = 0;
          re::TextManager::sortAndFillInstanceUniforms(a1, a7, *(a7 + 120));
        }

        memcpy((v46 + v47), *(a7 + 120), 48 * *(a7 + 88));
      }

      else
      {
        re::TextManager::sortAndFillInstanceUniforms(a1, a7, a31 + DWORD2(a31));
      }

      v49 = *(a4 + 2);
      if (!v49)
      {
LABEL_62:
        *&a27 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        v103 = MEMORY[0x1E69E9C10];
        v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a23) = 136315906;
        *(&a23 + 4) = "operator[]";
        WORD6(a23) = 1024;
        if (v104)
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        *(&a23 + 14) = 797;
        WORD1(a24) = 2048;
        *(&a24 + 4) = 0;
        WORD6(a24) = 2048;
        *(&a24 + 14) = 0;
        _os_log_send_and_compose_impl(v105, &a27, &a31, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a23, 38, v120, v121);
        _os_crash_msg();
        __break(1u);
        goto LABEL_66;
      }

      v50 = *(a3 + 16);
      if (!v50)
      {
LABEL_66:
        *&a27 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        v106 = MEMORY[0x1E69E9C10];
        v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a23) = 136315906;
        *(&a23 + 4) = "operator[]";
        WORD6(a23) = 1024;
        if (v107)
        {
          v108 = 3;
        }

        else
        {
          v108 = 2;
        }

        *(&a23 + 14) = 797;
        WORD1(a24) = 2048;
        *(&a24 + 4) = 0;
        WORD6(a24) = 2048;
        *(&a24 + 14) = 0;
        _os_log_send_and_compose_impl(v108, &a27, &a31, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a23, 38, v120, v121);
        _os_crash_msg();
        __break(1u);
        goto LABEL_70;
      }

      v51 = 0;
      v52 = *(a4 + 4);
      v53 = *(a3 + 32);
      v54 = *v52;
      v55 = v52[1];
      v56 = v52[2];
      v57 = v52[3];
      v58 = v53[1];
      v59 = v53[2];
      v60 = v53[3];
      a23 = *v53;
      a24 = v58;
      a25 = v59;
      a26 = v60;
      do
      {
        *(&a31 + v51) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(*(&a23 + v51))), v55, *(&a23 + v51), 1), v56, *(&a23 + v51), 2), v57, *(&a23 + v51), 3);
        v51 += 16;
      }

      while (v51 != 64);
      vars0 = v47;
      vars8 = v48;
      v124 = a9;
      v133 = a32;
      v134 = a31;
      v131 = a34;
      v132 = a33;
      if (*a5 == 2)
      {
        if (v49 == 1)
        {
LABEL_74:
          *&a27 = 0;
          a34 = 0u;
          a35 = 0u;
          a32 = 0u;
          a33 = 0u;
          a31 = 0u;
          v112 = MEMORY[0x1E69E9C10];
          v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(a23) = 136315906;
          *(&a23 + 4) = "operator[]";
          WORD6(a23) = 1024;
          if (v113)
          {
            v114 = 3;
          }

          else
          {
            v114 = 2;
          }

          *(&a23 + 14) = 797;
          WORD1(a24) = 2048;
          *(&a24 + 4) = 1;
          WORD6(a24) = 2048;
          *(&a24 + 14) = 1;
          _os_log_send_and_compose_impl(v114, &a27, &a31, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a23, 38, v120, v121);
          _os_crash_msg();
          __break(1u);
LABEL_78:
          *&a27 = 0;
          a34 = 0u;
          a35 = 0u;
          a32 = 0u;
          a33 = 0u;
          a31 = 0u;
          v115 = MEMORY[0x1E69E9C10];
          v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(a23) = 136315906;
          *(&a23 + 4) = "operator[]";
          WORD6(a23) = 1024;
          if (v116)
          {
            v117 = 3;
          }

          else
          {
            v117 = 2;
          }

          *(&a23 + 14) = 797;
          WORD1(a24) = 2048;
          *(&a24 + 4) = 1;
          WORD6(a24) = 2048;
          *(&a24 + 14) = 1;
          _os_log_send_and_compose_impl(v117, &a27, &a31, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a23, 38, v120, v121);
          _os_crash_msg();
          __break(1u);
        }

        if (v50 == 1)
        {
          goto LABEL_78;
        }

        v61 = 0;
        v62 = v52[4];
        v63 = v52[5];
        v64 = v52[6];
        v65 = v52[7];
        v66 = v53[5];
        v67 = v53[6];
        v68 = v53[7];
        a23 = v53[4];
        a24 = v66;
        a25 = v67;
        a26 = v68;
        do
        {
          *(&a31 + v61) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*(&a23 + v61))), v63, *(&a23 + v61), 1), v64, *(&a23 + v61), 2), v65, *(&a23 + v61), 3);
          v61 += 16;
        }

        while (v61 != 64);
        v69 = &off_1E3047000;
        a4 = &off_1E3047000;
        v127 = a31;
        v128 = a32;
        v129 = a33;
        v130 = a34;
      }

      else
      {
        v130 = xmmword_1E30474D0;
        v129 = xmmword_1E30476A0;
        a4 = &off_1E3047000;
        v128 = xmmword_1E3047680;
        v69 = &off_1E3047000;
        v127 = xmmword_1E3047670;
      }

      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a31, (a6 + 16), 0x80uLL, 0x10uLL);
      v122 = DWORD2(a31);
      v123 = a32;
      v70 = (a31 + DWORD2(a31));
      *v70 = v134;
      v70[1] = v133;
      v70[2] = v132;
      v70[3] = v131;
      v70[4] = v127;
      v70[5] = v128;
      v70[6] = v129;
      v70[7] = v130;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a31, (a6 + 16), 80 * *(a7 + 80), 0x10uLL);
      v72 = DWORD2(a31);
      v73 = a32;
      if (*(a7 + 80))
      {
        v74 = 0;
        v75 = HIDWORD(a31) / 0x50uLL;
        v76 = (DWORD2(a31) + a31 + 64);
        while (1)
        {
          v77 = *(a7 + 32);
          if (v77 <= v74)
          {
            break;
          }

          if (v75 == v74)
          {
            goto LABEL_53;
          }

          v78 = *(*(a7 + 40) + 8 * v74);
          v79 = v78[2];
          v80 = v78[3];
          v81 = v78[5];
          *(v76 - 2) = v78[4];
          *(v76 - 1) = v81;
          *(v76 - 4) = v79;
          *(v76 - 3) = v80;
          *v76 = v78[1];
          v76 += 5;
          if (++v74 >= *(a7 + 80))
          {
            goto LABEL_27;
          }
        }

        *&a27 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        v94 = MEMORY[0x1E69E9C10];
        v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a23) = 136315906;
        *(&a23 + 4) = "operator[]";
        WORD6(a23) = 1024;
        if (v95)
        {
          v96 = 3;
        }

        else
        {
          v96 = 2;
        }

        *(&a23 + 14) = 468;
        WORD1(a24) = 2048;
        *(&a24 + 4) = v74;
        WORD6(a24) = 2048;
        *(&a24 + 14) = v77;
        _os_log_send_and_compose_impl(v96, &a27, &a31, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a23, 38, v120, v121);
        _os_crash_msg();
        __break(1u);
LABEL_53:
        re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v75, v75);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v118, v119);
        __break(1u);
LABEL_54:
        a18 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        v97 = MEMORY[0x1E69E9C10];
        v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a27) = 136315906;
        *(&a27 + 4) = "operator[]";
        WORD6(a27) = 1024;
        if (v98)
        {
          v99 = 3;
        }

        else
        {
          v99 = 2;
        }

        *(&a27 + 14) = 468;
        WORD1(a28) = 2048;
        *(&a28 + 4) = v69;
        WORD6(a28) = 2048;
        *(&a28 + 14) = v73;
        _os_log_send_and_compose_impl(v99, &a18, &a31, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a27, 38, v120, v121);
        _os_crash_msg();
        __break(1u);
LABEL_58:
        a22 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        v100 = MEMORY[0x1E69E9C10];
        v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a27) = 136315906;
        *(&a27 + 4) = "operator[]";
        WORD6(a27) = 1024;
        if (v101)
        {
          v102 = 3;
        }

        else
        {
          v102 = 2;
        }

        *(&a27 + 14) = 468;
        WORD1(a28) = 2048;
        *(&a28 + 4) = v69;
        WORD6(a28) = 2048;
        *(&a28 + 14) = v73;
        _os_log_send_and_compose_impl(v102, &a22, &a31, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a27, 38, v120, v121);
        _os_crash_msg();
        __break(1u);
        goto LABEL_62;
      }

LABEL_27:
      a24 = 0u;
      a25 = 0u;
      v82 = *a5;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a31, (a6 + 16), 0x400uLL, 0x100uLL);
      v83 = DWORD2(a31);
      v84 = a32;
      v85 = a31 + DWORD2(a31);
      *v85 = xmmword_1E3047670;
      *(v85 + 16) = xmmword_1E3047680;
      *(v85 + 32) = xmmword_1E30476A0;
      *(v85 + 48) = xmmword_1E30474D0;
      *(v85 + 64) = xmmword_1E3047670;
      *(v85 + 80) = xmmword_1E3047680;
      *(v85 + 96) = xmmword_1E30476A0;
      *(v85 + 112) = xmmword_1E30474D0;
      *(v85 + 128) = xmmword_1E3047670;
      *(v85 + 144) = xmmword_1E3047680;
      *(v85 + 160) = xmmword_1E30476A0;
      *(v85 + 176) = xmmword_1E30474D0;
      *(v85 + 192) = xmmword_1E3047670;
      *(v85 + 208) = xmmword_1E3047680;
      *(v85 + 224) = xmmword_1E30476A0;
      *(v85 + 240) = xmmword_1E30474D0;
      *(v85 + 256) = xmmword_1E3047670;
      *(v85 + 272) = xmmword_1E3047680;
      *(v85 + 288) = xmmword_1E30476A0;
      *(v85 + 304) = xmmword_1E30474D0;
      *(v85 + 320) = xmmword_1E3047670;
      *(v85 + 336) = xmmword_1E3047680;
      *(v85 + 352) = xmmword_1E30476A0;
      *(v85 + 368) = xmmword_1E30474D0;
      *(v85 + 384) = xmmword_1E3047670;
      *(v85 + 400) = xmmword_1E3047680;
      *(v85 + 416) = xmmword_1E30476A0;
      *(v85 + 432) = xmmword_1E30474D0;
      *(v85 + 448) = xmmword_1E3047670;
      *(v85 + 464) = xmmword_1E3047680;
      *(v85 + 480) = xmmword_1E30476A0;
      *(v85 + 496) = xmmword_1E30474D0;
      *(v85 + 512) = xmmword_1E3047670;
      *(v85 + 528) = xmmword_1E3047680;
      *(v85 + 544) = xmmword_1E30476A0;
      *(v85 + 560) = xmmword_1E30474D0;
      *(v85 + 576) = xmmword_1E3047670;
      *(v85 + 592) = xmmword_1E3047680;
      *(v85 + 608) = xmmword_1E30476A0;
      *(v85 + 624) = xmmword_1E30474D0;
      *(v85 + 640) = xmmword_1E3047670;
      *(v85 + 656) = xmmword_1E3047680;
      *(v85 + 672) = xmmword_1E30476A0;
      *(v85 + 688) = xmmword_1E30474D0;
      *(v85 + 704) = xmmword_1E3047670;
      *(v85 + 720) = xmmword_1E3047680;
      *(v85 + 736) = xmmword_1E30476A0;
      *(v85 + 752) = xmmword_1E30474D0;
      *(v85 + 880) = 0u;
      *(v85 + 896) = 0u;
      *(v85 + 848) = 0u;
      *(v85 + 864) = 0u;
      *(v85 + 816) = 0u;
      *(v85 + 832) = 0u;
      *(v85 + 784) = 0u;
      *(v85 + 800) = 0u;
      *(v85 + 768) = 0u;
      *(v85 + 940) = v82;
      *(v85 + 944) = v124;
      *(v85 + 960) = 0u;
      *(v85 + 976) = a23;
      *(v85 + 992) = a24;
      *(v85 + 1008) = a25;
      v86 = re::TextManager::renderData(a1);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, *v86, 0, 0);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, vars8, vars0, 1);
      LODWORD(a4) = 2;
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v73, v72, 2);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v123, v122, 3);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v84, v83, 5);
      re::StringID::invalid(&a20);
      if (!*(a7 + 32))
      {
LABEL_70:
        a18 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        v109 = MEMORY[0x1E69E9C10];
        v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a27) = 136315906;
        *(&a27 + 4) = "operator[]";
        if (v110)
        {
          v111 = (a4 + 1);
        }

        else
        {
          v111 = a4;
        }

        WORD6(a27) = 1024;
        *(&a27 + 14) = 468;
        WORD1(a28) = 2048;
        *(&a28 + 4) = 0;
        WORD6(a28) = 2048;
        *(&a28 + 14) = 0;
        _os_log_send_and_compose_impl(v111, &a18, &a31, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &a27, 38, v120, v121);
        _os_crash_msg();
        __break(1u);
        goto LABEL_74;
      }

      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, **(a7 + 40), ***(a7 + 40) >> 1, &a31);
      isValid = (*(*(a2 + 8) + 104))(**(a2 + 8), sel_setFragmentTexture_atIndex_, **(*(a1 + 9) + 40 * HIDWORD(a31) + 24), 0);
      if (*(a7 + 80))
      {
        v69 = 0;
        a4 = 0;
        v88 = 0;
        do
        {
          v73 = *(a7 + 32);
          if (v73 <= v69)
          {
            goto LABEL_54;
          }

          re::StringID::StringID(&a18, *(*(a7 + 40) + 8 * v69));
          if ((a18 ^ a20) > 1 || (isValid = __s1, __s1 != __s2) && (isValid = strcmp(__s1, __s2), isValid))
          {
            isValid = re::FontID::isValid(&a20);
            if (isValid)
            {
              if (a4)
              {
                *((&a31 | 0x10) + 0x10) = 0u;
                *((&a31 | 0x10) + 0x20) = 0u;
                *(&a31 | 0x10) = 0u;
                re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a27, (a6 + 16), 0xA0uLL, 0x20uLL);
                v89 = a28;
                v90 = a27 + DWORD2(a27);
                *(v90 + 16) = 0;
                *(v90 + 28) = a4;
                *(v90 + 32) = a31;
                *(v90 + 48) = a32;
                *(v90 + 64) = a33;
                *(v90 + 80) = a34;
                (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v89);
                (*(*(a2 + 8) + 232))(**(a2 + 8), sel_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_, 3, 0, 6, a4, v88);
              }

              re::StringID::operator=(&a20, &a18);
              v88 += a4;
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, &a18, a18 >> 1, &a31);
              isValid = (*(*(a2 + 8) + 104))(**(a2 + 8), sel_setFragmentTexture_atIndex_, **(*(a1 + 9) + 40 * HIDWORD(a31) + 24), 0);
              a4 = 0;
            }
          }

          v73 = *(a7 + 32);
          if (v73 <= v69)
          {
            goto LABEL_58;
          }

          v91 = *(*(*(a7 + 40) + 8 * v69) + 112);
          if (a18)
          {
            if (a18)
            {
            }
          }

          a4 = (a4 + v91);
          ++v69;
        }

        while (v69 < *(a7 + 80));
        if (a4)
        {
          a33 = 0u;
          a34 = 0u;
          a32 = 0u;
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&a27, (a6 + 16), 0xA0uLL, 0x20uLL);
          v92 = a28;
          v93 = a27 + DWORD2(a27);
          *(v93 + 16) = 0;
          *(v93 + 28) = a4;
          *(v93 + 32) = a31;
          *(v93 + 48) = a32;
          *(v93 + 64) = a33;
          *(v93 + 80) = a34;
          (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v92);
          isValid = (*(*(a2 + 8) + 232))(**(a2 + 8), sel_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_, 3, 0, 6, a4, v88);
        }
      }

      if (a20)
      {
        if (a20)
        {
        }
      }
    }
  }
}

uint64_t re::TextManager::render(re::TextManager *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6, _BYTE *a7, uint64_t a8, char a9, char a10)
{
  *&v64 = *MEMORY[0x1E69E9840];
  (*(*(a4 + 8) + 160))(**(a4 + 8), sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Text Rendering" encoding:4]);
  (*(*(a4 + 8) + 64))(**(a4 + 8), sel_setCullMode_, 0);
  (*(*(a4 + 8) + 136))(**(a4 + 8), sel_setFrontFacingWinding_, 1);
  v16 = re::TextManager::renderData(a1);
  v17 = *a1;
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(v16 + 320, a2, &v44);
  if (HIDWORD(v44) == 0x7FFFFFFF)
  {
    *&v42 = a5;
    *(&v42 + 1) = a7;
    for (i = 0; i != 8; ++i)
    {
      [objc_msgSend(objc_msgSend(*(v16 + 312) colorAttachments)];
    }

    [*(v16 + 312) setRasterSampleCount_];
    [*(v16 + 312) setDepthAttachmentPixelFormat_];
    [*(v16 + 312) setStencilAttachmentPixelFormat_];
    if (*(v17 + 366) == 1)
    {
      [*(v16 + 312) setMaxVertexAmplificationCount_];
    }

    *&v56 = *(v17 + 208);
    re::mtl::Device::makeRenderPipelineState(&v56, *(v16 + 312), 0, &v55 + 1);
    re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::add(v16 + 320, a2, &v55 + 1);
    re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(v16 + 320, a2, &v44);
    if (HIDWORD(v44) == 0x7FFFFFFF)
    {
      v19 = 0;
    }

    else
    {
      v19 = (*(v16 + 336) + 72 * HIDWORD(v44) + 56);
    }

    if (*(&v55 + 1))
    {
    }
  }

  else
  {
    v19 = (*(v16 + 336) + 72 * HIDWORD(v44) + 56);
  }

  (*(*(a4 + 8) + 56))(**(a4 + 8), sel_setRenderPipelineState_, *v19);
  if (a2[9] - 250 <= 0xA && ((1 << (*(a2 + 36) + 6)) & 0x425) != 0)
  {
    v20 = 200;
  }

  else
  {
    v20 = 256;
  }

  if (a10)
  {
    v21 = re::TextManager::renderData(a1) + v20;
    LOBYTE(v44) = *v21;
    if (v44 == 1)
    {
      re::DynamicString::DynamicString((&v44 + 8), (v21 + 8));
    }

    *(v46 + 8) = *(v21 + 40);
    v22.i32[1] = HIDWORD(v46[0]);
    BYTE6(v46[1]) = *a3;
    v22.i32[0] = *(a3 + 3);
    v23 = vmovl_u8(v22).u64[0];
    v24 = vrev32_s16(v23);
    v25 = vuzp1_s16(v23, v24);
    v26 = vuzp1_s8(v25, v25);
    v24.i32[0] = *(a3 + 11);
    v27 = vmovl_u8(v24).u64[0];
    v26.i32[1] = vuzp1_s8(vuzp1_s16(v27, vrev32_s16(v27)), v26).u32[0];
    *(&v46[0] + 1) = v26;
    *(&v46[1] + 1) = *(a3 + 1);
    BYTE7(v46[1]) = *(a3 + 8);
    *(&v46[1] + 3) = *(a3 + 9);
    DepthStencilState = re::getOrCreateDepthStencilState(*a1, *(*a1 + 112), &v44);
    if (v44 == 1 && *(&v44 + 1) && (v45 & 1) != 0)
    {
      (*(**(&v44 + 1) + 40))();
    }
  }

  else
  {
    v29 = re::TextManager::renderData(a1);
    DepthStencilState = re::getOrCreateDepthStencilState(*a1, *(*a1 + 112), v29 + v20);
  }

  (*(*(a4 + 8) + 112))(**(a4 + 8), sel_setDepthStencilState_, *DepthStencilState);
  (*(*(a4 + 8) + 120))(**(a4 + 8), sel_setStencilReferenceValue_, *(a3 + 16));
  v31 = re::setVertexAmplificationCount(*(*a1 + 366), a9, *a7, 0xFFFF, a4, v30);
  if (*(a8 + 128) == -1)
  {
    v47 = 0u;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    re::DynamicString::setCapacity(&v46[1], 0);
    v48 = 0;
    v49 = 0;
    LODWORD(__s2) = 1;
    __s1 = 0;
    v53 = 0;
    v51 = 0;
    LOBYTE(v54) = 0;
    *(&v54 + 1) = -1;
    v34 = *(a8 + 104);
    if (v34)
    {
      v35 = (v34 >> 1);
    }

    else
    {
      v35 = (v34 >> 1);
    }

    re::StringID::invalid(&v56);
    *&v57 = 0x3F8000003F800000;
    *(&v57 + 1) = 0x3F8000003F800000;
    *v58 = 0u;
    *v59 = 0u;
    *v60 = 0u;
    *v61 = 0u;
    *&v63[0] = 0;
    v62 = 0xFFFFFFFFFFFFFFFFLL;
    *(v63 + 8) = re::kInvalidStringRenderHandle;
    v36 = re::StringID::operator=(&v56, a8);
    v37 = *(a8 + 32);
    v57 = *(a8 + 16);
    *v58 = v37;
    v38 = *(a8 + 64);
    *v59 = *(a8 + 48);
    *v60 = v38;
    *v61 = *(a8 + 80);
    re::TextManager::addStringToGroup(v36, &v44, a8 + 96, &v56);
    LOBYTE(v41) = a9;
    re::TextManager::renderTextGroup(a1, a4, a6, *(&a6 + 1), a7, a5, &v44, 0, v41, v42, a6, v44, v45, v46[0], v46[1], v47, v48, v49, __s2, v51, __s1, v53, v54, v55, v56, v57, *v58, *v59, v60[0], v60[1], *v61, v62, v63[0], v63[1], v64, v65, v66);
    if (v56)
    {
      if (v56)
      {
      }
    }

    re::TextRenderGroupData::~TextRenderGroupData(&v44);
  }

  else
  {
    v32 = re::TextManager::renderData(a1);
    v33 = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v32 + 152, (a8 + 128));
    if (v33)
    {
      LOBYTE(v41) = a9;
      re::TextManager::renderTextGroup(a1, a4, a6, *(&a6 + 1), a7, a5, v33, 1, v41, v42, a6, v44, v45, v46[0], v46[1], v47, v48, v49, __s2, v51, __s1, v53, v54, v55, v56, v57, *v58, *v59, v60[0], v60[1], *v61, v62, v63[0], v63[1], v64, v65, v66);
    }
  }

  return (*(*(a4 + 8) + 168))(**(a4 + 8), sel_popDebugGroup);
}

void re::FixedArray<TextRenderPerGlyphData>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 48 * a3;
  v6 = (*(*a2 + 32))(a2, 48 * a3, 16);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 48);
    v8 = (v8 + v5 - 48);
  }

  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
}

re::StringID *re::FixedArray<re::StringRenderParam>::init<>(re::StringID *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 1) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x1C71C71C71C71C8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 144, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 144 * a3, 16);
  *(v4 + 2) = v5;
  if (!v5)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v7 = v5;
  for (i = a3 - 1; i; --i)
  {
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    re::StringID::invalid(v7);
    *(v7 + 16) = 0x3F8000003F800000;
    *(v7 + 24) = 0x3F8000003F800000;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    *(v7 + 96) = -1;
    *(v7 + 120) = re::kInvalidStringRenderHandle;
    v7 += 144;
  }

  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  result = re::StringID::invalid(v7);
  *(v7 + 16) = 0x3F8000003F800000;
  *(v7 + 24) = 0x3F8000003F800000;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 96) = -1;
  *(v7 + 120) = re::kInvalidStringRenderHandle;
  return result;
}

void re::FixedArray<re::StringRenderParam *>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void re::TextRenderGroupData::~TextRenderGroupData(re::TextRenderGroupData *this)
{
  re::FixedArray<re::StringRenderParam>::deinit(this);
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  re::DynamicString::deinit((this + 48));
  *(this + 10) = 0;
  *(this + 11) = 0;
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::DynamicString::deinit((this + 48));
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  re::FixedArray<re::StringRenderParam>::deinit(this);
}

void *re::FixedArray<re::StringRenderParam>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 144 * v2;
      do
      {
        re::StringID::destroyString(v4);
        v4 = (v4 + 144);
        v5 -= 144;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::add(uint64_t a1, uint64_t a2, id *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(a1, a2, &v12);
  if (HIDWORD(v13) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 72 * HIDWORD(v13) + 56;
  }

  v6 = re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::allocEntry(a1, v13, v12);
  v8 = *(a2 + 16);
  v7 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v6 + 4) = *a2;
  *(v6 + 52) = v9;
  *(v6 + 36) = v7;
  *(v6 + 20) = v8;
  *(v6 + 56) = *a3;
  v10 = v6 + 56;
  ++*(a1 + 40);
  return v10;
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  MurmurHash3_x64_128(v8, 0x2CuLL, 0, v10);
  return re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(a1, a2, (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0], a3);
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = 0x7FFFFFFF;
  if (*a1)
  {
    v4 = a3 % *(a1 + 24);
    v6 = *(*(a1 + 8) + 4 * v4);
    if (v6 == 0x7FFFFFFF)
    {
      result = 0x7FFFFFFFLL;
    }

    else
    {
      v8 = *(a1 + 16);
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[2];
      v12 = a2[3];
      v13 = a2[4];
      v14 = a2[5];
      v15 = a2[6];
      v16 = a2[7];
      v17 = a2[8];
      v18 = a2[9];
      v5 = 0x7FFFFFFF;
      result = 0x7FFFFFFFLL;
      v19 = a2[10];
      while (1)
      {
        v20 = v6;
        v21 = v8 + 72 * v6;
        v23 = *(v21 + 4);
        v22 = (v21 + 4);
        if (v23 == v9 && v22[1] == v10 && v22[2] == v11 && v22[3] == v12 && v22[4] == v13 && v22[5] == v14 && v22[6] == v15 && v22[7] == v16 && v22[8] == v17 && v22[9] == v18 && v22[10] == v19)
        {
          break;
        }

        v6 = *(v8 + 72 * v20) & 0x7FFFFFFF;
        result = v20;
        if (v6 == 0x7FFFFFFF)
        {
          result = v20;
          goto LABEL_19;
        }
      }

      v5 = v20;
    }
  }

  else
  {
    result = 0x7FFFFFFFLL;
  }

LABEL_19:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = result;
  return result;
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::setCapacity(_anonymous_namespace_ *result, uint64_t a2)
{
  v2 = a2;
  v4 = *result;
  if (*result)
  {
    if (v2 && *(result + 6) != v2 && *(result + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *result;
      *result = v5;
      v6 = *&v9[16];
      *&v9[16] = *(result + 2);
      *(result + 2) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(result + 24);
      *(result + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::move(result, v9);
      re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24), *(v7 + v5 + 64));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 52);
        v10 = *(v8 + 20);
        v11 = *(v8 + 36);
        *(result + 4) = *(v8 + 4);
        *(result + 36) = v11;
        *(result + 20) = v10;
        *(result + 52) = v9;
        v7 = *(a2 + 16);
        *(result + 56) = *(v7 + v5 + 56);
        *(v7 + v5 + 56) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 72;
    }

    while (v6 < v2);
  }

  return result;
}