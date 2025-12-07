void re::MeshShadowGenerateMipmapNode::execute(unint64_t this, SEL *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BE658, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v5 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(a2[146], qword_1EE1BE650);
    if (!v5)
    {
      break;
    }

    v6 = v111;
    if (!*(this + 200))
    {
      goto LABEL_76;
    }

    v7 = v5;
    re::RenderGraphContext::metalTexture(a2, *(this + 216), 0, 0, &v102);
    v6 = *(this + 200);
    if (v6 <= 1)
    {
      goto LABEL_80;
    }

    re::RenderGraphContext::metalTexture(a2, *(this + 216) + 32, 0, 0, &v101);
    if (*(this + 160))
    {
      v8 = re::RenderGraphContext::metalBuffer(a2, *(this + 176));
      v111[0] = 0;
      HIDWORD(v115) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v111, v8);
      *&v117[2] = *(v8 + 32);
      v6 = *(*a2 + 4);
      v9 = &selRef_isLimitedRenderAsset;
      if ([v102 mipmapLevelCount] < 2)
      {
LABEL_23:
        re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 1, 0, &v94);
        if (!*(v7 + 416))
        {
LABEL_33:

          re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v95);
          re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v98);
          if (HIDWORD(v115) != -1)
          {
            (off_1F5D0F760[HIDWORD(v115)])(&v106, v111);
          }

          if (v101)
          {
          }

          if (v102)
          {
          }

          return;
        }

        v91 = 0;
        v10 = 0;
        v87 = (this + 568);
        while (1)
        {
          v23 = [v102 v9[93]];
          this = *(v7 + 416);
          if (this <= v10)
          {
            break;
          }

          this = *(v7 + 168);
          if (this <= v10)
          {
            goto LABEL_48;
          }

          v24 = v23 - 1;
          this = (v23 - 1);
          v6 = v99;
          if (v99 <= this)
          {
            goto LABEL_52;
          }

          v2 = *(*(v7 + 432) + 32 * v10 + 24);
          v25 = *(v7 + 176);
          [v94 setTexture:*(v100 + 8 * v24) atIndex:2];
          v6 = v96;
          if (v96 <= v24)
          {
            goto LABEL_56;
          }

          v89 = v10;
          v26 = v25 + 928 * v10;
          a2 = v9;
          v27 = (v26 + 224 * v24);
          [v94 setTexture:*(v97 + 8 * v24) atIndex:3];
          [v94 setTexture:v102 atIndex:4];
          [v94 setTexture:v101 atIndex:5];
          re::BufferSlice::buffer(v111, v28);
          [v94 setBuffer:*v111 offset:0 atIndex:1];
          LODWORD(v29) = *(v26 + 912);
          v6 = v87;
          [v94 setComputePipelineState:{*v87, v29}];
          v30 = sqrt([*v87 maxTotalThreadsPerThreadgroup]);
          LODWORD(v106) = v2;
          v31 = vcvt_s32_f32(vrndm_f32(*v27));
          v32 = v31.u32[1];
          WORD3(v106) = v31.i16[2];
          v33 = v31.u32[0];
          WORD2(v106) = v31.i16[0];
          v34 = vcvt_s32_f32(vrndp_f32(v27[1]));
          WORD5(v106) = v34.i16[2];
          WORD4(v106) = v34.i16[0];
          v35 = (~v33 + v34.u32[0] + v30) / v30;
          v36 = (~v32 + v34.u32[1] + v30) / v30;
          HIWORD(v106) = v36;
          WORD6(v106) = v35;
          LOWORD(v107) = [v102 a2 + 2424];
          v37 = *(v26 + 904) / *(v7 + 284);
          *(&v107 + 1) = v37 * ([v102 a2 + 2424] - 1);
          DWORD2(v107) = *(v26 + 908);
          LOWORD(v108) = [v102 width];
          HIDWORD(v107) = *(v26 + 912);
          if ([v102 a2 + 2424])
          {
            v38 = 0;
            v2 = 0;
            v39 = v25 + v91;
            v6 = 208;
            do
            {
              v40 = *(v39 + v6 - 64);
              v41 = v39 + 4 * v38;
              LODWORD(v42) = *(v41 + 176);
              HIDWORD(v42) = *(v41 + 196);
              v43 = *(v39 + v6 - 48);
              v44 = *(v39 + v6 - 40);
              v45 = *(v39 + v6);
              v46 = &v106 + v38;
              *(v46 + 10) = v2;
              *(v46 + 3) = v40;
              *(v46 + 8) = v43;
              *(v46 + 9) = v44;
              *(v46 + 10) = v42;
              *(v46 + 11) = v45;
              ++v2;
              v38 += 56;
              v6 += 224;
            }

            while ([v102 a2 + 2424] > v2);
          }

          [v94 setBytes:&v106 length:600 atIndex:0];
          [v94 setThreadgroupMemoryLength:(8 * v30 * v30 * v35 * v36 + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
          *v118 = vdupq_n_s64(1uLL);
          *&v118[16] = 1;
          v103 = v30;
          v104 = v30;
          v105 = 1;
          [v94 dispatchThreadgroups:v118 threadsPerThreadgroup:&v103];
          v10 = v89 + 1;
          v91 += 928;
          v9 = a2;
          if (*(v7 + 416) <= v89 + 1)
          {
            goto LABEL_33;
          }
        }

LABEL_44:
        v103 = 0;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
        v50 = MEMORY[0x1E69E9C10];
        v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v118 = 136315906;
        *&v118[4] = "operator[]";
        *&v118[12] = 1024;
        if (v51)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }

        *&v118[14] = 797;
        *&v118[18] = 2048;
        *&v118[20] = v10;
        v119 = 2048;
        v120 = this;
        _os_log_send_and_compose_impl(v52, &v103, &v106, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v87);
        _os_crash_msg();
        __break(1u);
LABEL_48:
        v103 = 0;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
        v53 = MEMORY[0x1E69E9C10];
        v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v118 = 136315906;
        *&v118[4] = "operator[]";
        *&v118[12] = 1024;
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        *&v118[14] = 476;
        *&v118[18] = 2048;
        *&v118[20] = v10;
        v119 = 2048;
        v120 = this;
        _os_log_send_and_compose_impl(v55, &v103, &v106, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v87);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        v103 = 0;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v118 = 136315906;
        *&v118[4] = "operator[]";
        *&v118[12] = 1024;
        if (v57)
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }

        *&v118[14] = 468;
        *&v118[18] = 2048;
        *&v118[20] = this;
        v119 = 2048;
        v120 = v6;
        _os_log_send_and_compose_impl(v58, &v103, &v106, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v87);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        v103 = 0;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v118 = 136315906;
        *&v118[4] = "operator[]";
        *&v118[12] = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        *&v118[14] = 468;
        *&v118[18] = 2048;
        *&v118[20] = this;
        v119 = 2048;
        v120 = v6;
        _os_log_send_and_compose_impl(v61, &v103, &v106, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v87);
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        v90 = 224;
        v2 = 1;
        while (1)
        {
          re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 1, 0, &v94);
          v6 = v2 - 1;
          v10 = v99;
          if (v99 <= v2 - 1)
          {
            break;
          }

          [v94 setTexture:*(v100 + 8 * v6) atIndex:0];
          v10 = v96;
          if (v96 <= v6)
          {
            goto LABEL_64;
          }

          [v94 setTexture:*(v97 + 8 * v6) atIndex:1];
          v6 = v99;
          if (v99 <= v2)
          {
            goto LABEL_68;
          }

          [v94 setTexture:*(v100 + 8 * v2) atIndex:2];
          v6 = v96;
          if (v96 <= v2)
          {
            goto LABEL_72;
          }

          v88 = v2;
          [v94 setTexture:*(v97 + 8 * v2) atIndex:3];
          [v94 setTexture:v102 atIndex:4];
          [v94 setTexture:v101 atIndex:5];
          re::BufferSlice::buffer(v111, v11);
          [v94 setBuffer:*v111 offset:0 atIndex:1];
          if (*(v7 + 416))
          {
            v10 = 0;
            v12 = v90;
            v13 = 24;
            while (1)
            {
              v6 = *(v7 + 168);
              if (v6 <= v10)
              {
                break;
              }

              v14 = *(*(v7 + 432) + v13);
              v15 = (*(v7 + 176) + v12);
              [v94 setComputePipelineState:*(this + 560)];
              v2 = sqrt([*(this + 560) maxTotalThreadsPerThreadgroup]);
              v16 = vcvt_s32_f32(vrndm_f32(v15[4]));
              WORD5(v106) = v16.i16[2];
              WORD4(v106) = v16.i16[0];
              v17 = vcvt_s32_f32(vrndp_f32(v15[5]));
              HIWORD(v106) = v17.i16[2];
              WORD6(v106) = v17.i16[0];
              v18 = vcvt_s32_f32(vrndm_f32(*v15));
              WORD1(v106) = v18.i16[2];
              LOWORD(v106) = v18.i16[0];
              v19 = vcvt_s32_f32(vrndp_f32(v15[1]));
              WORD3(v106) = v19.i16[2];
              WORD2(v106) = v19.i16[0];
              v19.i32[0] = v15[6].i32[0];
              v19.i32[1] = v15[8].i32[1];
              *&v107 = v19;
              *(&v107 + 1) = v15[10];
              v19.i32[0] = v15[12].i32[0];
              v19.i32[1] = v15[14].i32[1];
              *&v108 = v19;
              *(&v108 + 1) = v15[16];
              LODWORD(v109) = v14;
              [v94 setBytes:&v106 length:56 atIndex:0];
              v20 = a2[1];
              v93 = v94;
              re::RenderManager::sampleComputeEncoderMTLCounterBegin(v20, &v93, 1u);

              v21 = (v2 - 1 + WORD6(v106) - WORD4(v106)) / v2;
              if (v21 <= 1)
              {
                v21 = 1;
              }

              else
              {
                v21 = v21;
              }

              v22 = (v2 - 1 + HIWORD(v106) - WORD5(v106)) / v2;
              if (v22 <= 1)
              {
                v22 = 1;
              }

              else
              {
                v22 = v22;
              }

              *v118 = v21;
              *&v118[8] = v22;
              *&v118[16] = 1;
              v103 = v2;
              v104 = v2;
              v105 = 1;
              [v94 dispatchThreadgroups:v118 threadsPerThreadgroup:&v103];
              v6 = a2[1];
              v92 = v94;
              re::RenderManager::sampleComputeEncoderMTLCounterEnd(v6, &v92, 1u);

              ++v10;
              v13 += 32;
              v12 += 928;
              if (*(v7 + 416) <= v10)
              {
                goto LABEL_22;
              }
            }

            v103 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v106 = 0u;
            v47 = MEMORY[0x1E69E9C10];
            v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v118 = 136315906;
            *&v118[4] = "operator[]";
            *&v118[12] = 1024;
            if (v48)
            {
              v49 = 3;
            }

            else
            {
              v49 = 2;
            }

            *&v118[14] = 476;
            *&v118[18] = 2048;
            *&v118[20] = v10;
            v119 = 2048;
            v120 = v6;
            _os_log_send_and_compose_impl(v49, &v103, &v106, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v86);
            _os_crash_msg();
            __break(1u);
            goto LABEL_44;
          }

LABEL_22:

          v2 = v88 + 1;
          v9 = &selRef_isLimitedRenderAsset;
          v90 += 224;
          if ([v102 mipmapLevelCount] <= v88 + 1)
          {
            goto LABEL_23;
          }
        }
      }

      v103 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v118 = 136315906;
      *&v118[4] = "operator[]";
      *&v118[12] = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      *&v118[14] = 468;
      *&v118[18] = 2048;
      *&v118[20] = v6;
      v119 = 2048;
      v120 = v10;
      _os_log_send_and_compose_impl(v64, &v103, &v106, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v86);
      _os_crash_msg();
      __break(1u);
LABEL_64:
      v103 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v118 = 136315906;
      *&v118[4] = "operator[]";
      *&v118[12] = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      *&v118[14] = 468;
      *&v118[18] = 2048;
      *&v118[20] = v6;
      v119 = 2048;
      v120 = v10;
      _os_log_send_and_compose_impl(v67, &v103, &v106, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v86);
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v103 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v118 = 136315906;
      *&v118[4] = "operator[]";
      *&v118[12] = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      *&v118[14] = 468;
      *&v118[18] = 2048;
      *&v118[20] = v2;
      v119 = 2048;
      v120 = v6;
      _os_log_send_and_compose_impl(v70, &v103, &v106, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v86);
      _os_crash_msg();
      __break(1u);
LABEL_72:
      v103 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v118 = 136315906;
      *&v118[4] = "operator[]";
      *&v118[12] = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      *&v118[14] = 468;
      *&v118[18] = 2048;
      *&v118[20] = v2;
      v119 = 2048;
      v120 = v6;
      _os_log_send_and_compose_impl(v73, &v103, &v106, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v85, v86);
      _os_crash_msg();
      __break(1u);
LABEL_76:
      *v118 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v111 = 136315906;
      *(v6 + 4) = "operator[]";
      v112 = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      *(v6 + 14) = 789;
      v114 = 2048;
      *(v6 + 20) = 0;
      v116 = 2048;
      *(v6 + 30) = 0;
      _os_log_send_and_compose_impl(v76, v118, &v106, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v111, 38, v85, v86);
      _os_crash_msg();
      __break(1u);
LABEL_80:
      *v118 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v111 = 136315906;
      *&v111[4] = "operator[]";
      v112 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v113 = 789;
      v114 = 2048;
      v115 = 1;
      v116 = 2048;
      *v117 = v6;
      _os_log_send_and_compose_impl(v79, v118, &v106, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v111, 38, v85, v86);
      _os_crash_msg();
      __break(1u);
    }

    *v118 = 0;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v106 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    v112 = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v113 = 789;
    v114 = 2048;
    v115 = 0;
    v116 = 2048;
    *v117 = 0;
    _os_log_send_and_compose_impl(v82, v118, &v106, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v111, 38, v85, v86);
    _os_crash_msg();
    __break(1u);
LABEL_88:
    if (__cxa_guard_acquire(&qword_1EE1BE658))
    {
      qword_1EE1BE650 = re::getCombinedScopeHash("ProjectiveMeshShadow", v83, v84);
      __cxa_guard_release(&qword_1EE1BE658);
    }
  }
}

id anonymous namespace::createMipViews(uint64_t *a1, uint64_t a2, id *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [*a3 mipmapLevelCount];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  re::FixedArray<NS::SharedPtr<MTL::Texture>>::init<>(a1, a2, v6);
  result = [*a3 mipmapLevelCount];
  if (result)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v15 = [*a3 newTextureViewWithPixelFormat:objc_msgSend(*a3 textureType:sel_pixelFormat) levels:objc_msgSend(*a3 slices:sel_textureType), v8, 1, 0, objc_msgSend(*a3, sel_arrayLength)];
      v10 = a1[1];
      if (v10 <= v8)
      {
        v16 = 0;
        memset(v25, 0, sizeof(v25));
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

        v20 = 468;
        v21 = 2048;
        v22 = v8;
        v23 = 2048;
        v24 = v10;
        _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      NS::SharedPtr<MTL::Texture>::operator=((a1[2] + 8 * v8), &v15);
      if (v15)
      {
      }

      v8 = v9;
      result = [*a3 mipmapLevelCount];
    }

    while (result > v9++);
  }

  return result;
}

void re::MeshShadowGenerateFinalTextureNode::execute(id *this, re::RenderGraphContext *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BE668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE668))
  {
    qword_1EE1BE660 = re::getCombinedScopeHash("ProjectiveMeshShadow", v11, v12);
    __cxa_guard_release(&qword_1EE1BE668);
  }

  v4 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(*(a2 + 146), qword_1EE1BE660);
  if (v4)
  {
    v5 = v4;
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 1, 0, &v15);
    v14 = v15;
    re::RenderGraphComputeNodeBase::setTexturesAndBuffersOnEncoders(this, a2, &v14);

    [v15 setComputePipelineState:this[61]];
    v6 = [this[61] maxTotalThreadsPerThreadgroup];
    if (*(v5 + 416))
    {
      v7 = 0;
      v8 = sqrt(v6);
      v9 = 24;
      do
      {
        v13 = *(*(v5 + 432) + v9);
        [v15 setBytes:&v13 length:4 atIndex:0];
        v10 = (v8 - 1 + *(v5 + 200)) / v8;
        if (v10 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v10;
        }

        v17[0] = v10;
        v17[1] = v10;
        v17[2] = 1;
        v16[0] = v8;
        v16[1] = v8;
        v16[2] = 1;
        [v15 dispatchThreadgroups:v17 threadsPerThreadgroup:v16];
        ++v7;
        v9 += 32;
      }

      while (*(v5 + 416) > v7);
    }
  }
}

void **re::ProjectiveMeshShadowBlurNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v5 = 0;
  v6 = *(a4 + 1);
  v8[0] = this;
  v8[1] = v6;
  do
  {
    re::ProjectiveMeshShadowBlurNode::configure(char const*,char const*,re::RenderFrame &)::$_0::operator()(v8, 1u, v5);
    re::ProjectiveMeshShadowBlurNode::configure(char const*,char const*,re::RenderFrame &)::$_0::operator()(v8, 0, v5++);
  }

  while (v5 != 11);

  return NS::SharedPtr<MTL::Buffer>::operator=(this + 61, this + 84);
}

uint64_t re::ProjectiveMeshShadowBlurNode::configure(char const*,char const*,re::RenderFrame &)::$_0::operator()(uint64_t *a1, unsigned int a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = re::DynamicString::DynamicString(&v11, (*a1 + 288));
  v13 = 0;
  v16 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v24 = 0;
  v25 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  re::DynamicString::setCapacity(&v33, 0);
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v27 = "MeshShadowEnableBilateralFilter";
  v28 = 31;
  re::DynamicString::operator=(&v33, &v27);
  v37 = 12320821;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  LOBYTE(v38) = a2;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v19, &v33);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  re::DynamicString::setCapacity(&v27, 0);
  memset(v32, 0, sizeof(v32));
  v26[0] = "MeshShadowBlurRadius";
  v26[1] = 20;
  re::DynamicString::operator=(&v27, v26);
  *(v32 + 4) = 0u;
  *(&v32[1] + 4) = 0u;
  *(&v32[2] + 4) = 0u;
  v32[3] = 0u;
  v31 = 12386333;
  LODWORD(v32[0]) = a3;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v19, &v27);
  ComputePipelineState = re::getOrCreateComputePipelineState(a1[1], &v11);
  NS::SharedPtr<MTL::Buffer>::operator=((v6 + 88 * a2 + 8 * a3 + 504), ComputePipelineState);
  if (v27 && (v28 & 1) != 0)
  {
    (*(*v27 + 40))();
  }

  if (v33 && (v34 & 1) != 0)
  {
    (*(*v33 + 40))(v33, v35);
  }

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
      return (*(*v11 + 40))();
    }
  }

  return result;
}

void re::ProjectiveMeshShadowBlurNode::execute(uint64_t this, re::RenderGraphContext *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BE678, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v4 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(*(a2 + 146), qword_1EE1BE670);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 1, 0, &v115);
    v6 = re::internal::shadows::g_enableShadowFlattening ^ 1;
    v7 = this + 504;
    NS::SharedPtr<MTL::Buffer>::operator=((this + 488), (this + 504 + 88 * v6 + 80));
    [v115 setComputePipelineState:*(this + 488)];
    v8 = [*(this + 488) maxTotalThreadsPerThreadgroup];
    v114 = v115;
    re::RenderGraphComputeNodeBase::setTexturesAndBuffersOnEncoders(this, a2, &v114);

    if (!*(this + 200))
    {
      goto LABEL_69;
    }

    re::RenderGraphContext::metalTexture(a2, *(this + 216), 0, 0, &v113);
    v9 = *(this + 200);
    if (v9 <= 1)
    {
      goto LABEL_73;
    }

    re::RenderGraphContext::metalTexture(a2, *(this + 216) + 32, 0, 0, &v112);
    if (!*(this + 240))
    {
      goto LABEL_77;
    }

    re::RenderGraphContext::metalTexture(a2, *(this + 256), 0, 0, &v111);
    if (*(this + 120))
    {
      v97 = this;
      v10 = re::RenderGraphContext::metalBuffer(a2, *(this + 136));
      v12 = *re::BufferSlice::buffer(v10, v11);
      v13 = [v113 mipmapLevelCount];
      v14 = *(*a2 + 32);
      this = 1;
      v92 = v12;
      [v115 setBuffer:v12 offset:0 atIndex:1];
      v94 = v13;
      if (!v13)
      {
LABEL_43:
        re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v102);
        re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v105);
        re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v108);
        if (v92)
        {
        }

        if (v111)
        {
        }

        if (v112)
        {
        }

        if (v113)
        {
        }

        return;
      }

      v15 = 0;
      v16 = sqrt(v8);
      v95 = v7 + 88 * v6;
      v96 = 10;
      while (1)
      {
        v17 = v109;
        if (v109 <= v15)
        {
          break;
        }

        v98 = v15;
        [v115 setTexture:*(v110 + 8 * v15) atIndex:0];
        v18 = v98;
        v17 = v106;
        if (v106 <= v98)
        {
          goto LABEL_61;
        }

        [v115 setTexture:*(v107 + 8 * v98) atIndex:1];
        v19 = v98;
        v17 = v103;
        if (v103 <= v98)
        {
          goto LABEL_65;
        }

        [v115 setTexture:*(v104 + 8 * v98) atIndex:2];
        [v115 setTexture:v111 atIndex:3];
        if (v5[52])
        {
          v20 = 0;
          while (1)
          {
            v21 = v5[21];
            v22 = v98;
            if (v21 <= v20)
            {
              break;
            }

            v23 = *(v5[54] + 32 * v20 + 24);
            v24 = v5[22] + 928 * v20;
            v25 = (v24 + 224 * v98);
            v27 = v25[4];
            v26 = v25[5];
            v28 = *(v24 + 900);
            if (v28 >= 0xA)
            {
              v29 = 10;
            }

            else
            {
              v29 = v28;
            }

            if (v96 != v29)
            {
              NS::SharedPtr<MTL::Buffer>::operator=((v97 + 488), (v95 + 8 * v29));
              [v115 setComputePipelineState:*(v97 + 488)];
              v30 = [*(v97 + 488) maxTotalThreadsPerThreadgroup];
              v22 = v98;
              v16 = sqrt(v30);
              v96 = v29;
            }

            v31 = 0;
            HIWORD(v122[2]) = 0;
            *&v120 = 25152;
            v32 = vcvt_u32_f32(vrndp_f32(v26));
            v99 = vcvt_u32_f32(vrndm_f32(v27));
            *(&v120 + 1) = v99;
            *&v121 = v32;
            *(&v121 + 1) = __PAIR64__(v22, v23);
            v122[0] = 0;
            v122[1] = 0;
            *(&v122[1] + 6) = 0;
            v33 = *(v24 + 896);
            v34 = v33 * 0.70711;
            v35 = (v29 + 1);
            do
            {
              if (v33 >= 0.7)
              {
                _S0 = expf(-(v31 * v31) / (v33 * (v33 + v33)));
              }

              else
              {
                v36 = erff((v31 + -0.5) / v34);
                _S0 = (erff((v31 + 0.5) / v34) - v36) * 0.5;
              }

              __asm { FCVT            H0, S0 }

              *(v122 + v31++) = _H0;
            }

            while (v35 != v31);
            v43 = vsub_s32(v32, v99);
            v44 = v43.i32[0];
            v45 = -v29;
            v46 = (2 * v29) | 1;
            v47 = 0.0;
            do
            {
              if (v45 >= 0)
              {
                v48 = v45;
              }

              else
              {
                v48 = -v45;
              }

              _H2 = *(v122 + v48);
              __asm { FCVT            S2, H2 }

              v47 = v47 + _S2;
              ++v45;
              --v46;
            }

            while (v46);
            v51 = 32;
            do
            {
              _H2 = *(&v120 + v51);
              __asm { FCVT            S2, H2 }

              _S2 = _S2 / v47;
              __asm { FCVT            H2, S2 }

              *(&v120 + v51) = LOWORD(_S2);
              v51 += 2;
              --v35;
            }

            while (v35);
            v55 = v43.u32[1];
            [v115 setBytes:&v120 length:56 atIndex:0];
            if (*(v97 + 496))
            {
              v56 = v16 - 1 + v44;
              v55 >>= 1;
            }

            else
            {
              v56 = v16 - 1 + (v44 >> 1);
            }

            v57 = v56 / v16;
            v58 = v16 - 1 + v55;
            v59 = *(a2 + 1);
            v60 = v58 / v16;
            v101 = v115;
            re::RenderManager::sampleComputeEncoderMTLCounterBegin(v59, &v101, 1u);

            if (v57 <= 1)
            {
              v61 = 1;
            }

            else
            {
              v61 = v57;
            }

            if (v60 <= 1)
            {
              v62 = 1;
            }

            else
            {
              v62 = v60;
            }

            *v117 = v61;
            *&v117[8] = v62;
            *&v117[16] = 1;
            v116[0] = v16;
            v116[1] = v16;
            this = 1;
            v116[2] = 1;
            [v115 dispatchThreadgroups:v117 threadsPerThreadgroup:v116];
            v63 = *(a2 + 1);
            v100 = v115;
            re::RenderManager::sampleComputeEncoderMTLCounterEnd(v63, &v100, 1u);

            if (v5[52] <= ++v20)
            {
              goto LABEL_42;
            }
          }

          v116[0] = 0;
          v123 = 0u;
          v121 = 0u;
          memset(v122, 0, sizeof(v122));
          v120 = 0u;
          v17 = MEMORY[0x1E69E9C10];
          v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v117 = 136315906;
          *&v117[4] = "operator[]";
          *&v117[12] = 1024;
          if (v64)
          {
            v65 = 3;
          }

          else
          {
            v65 = 2;
          }

          *&v117[14] = 476;
          *&v117[18] = 2048;
          *&v117[20] = v20;
          v118 = 2048;
          v119 = v21;
          _os_log_send_and_compose_impl(v65, v116, &v120, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v117, 38, v92, v94);
          _os_crash_msg();
          __break(1u);
          break;
        }

LABEL_42:
        v15 = v98 + 1;
        if ((v98 + 1) == v94)
        {
          goto LABEL_43;
        }
      }

      v116[0] = 0;
      v123 = 0u;
      v121 = 0u;
      memset(v122, 0, sizeof(v122));
      v120 = 0u;
      v66 = MEMORY[0x1E69E9C10];
      v67 = v15;
      v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v117 = 136315906;
      *&v117[4] = "operator[]";
      *&v117[12] = 1024;
      if (v68)
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      *&v117[14] = 468;
      *&v117[18] = 2048;
      *&v117[20] = v67;
      v118 = 2048;
      v119 = v17;
      _os_log_send_and_compose_impl(v69, v116, &v120, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v117, 38, v92, v94);
      _os_crash_msg();
      __break(1u);
LABEL_61:
      v116[0] = 0;
      v123 = 0u;
      v121 = 0u;
      memset(v122, 0, sizeof(v122));
      v120 = 0u;
      v70 = MEMORY[0x1E69E9C10];
      v71 = v18;
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v117 = 136315906;
      *&v117[4] = "operator[]";
      *&v117[12] = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      *&v117[14] = 468;
      *&v117[18] = 2048;
      *&v117[20] = v71;
      v118 = 2048;
      v119 = v17;
      _os_log_send_and_compose_impl(v73, v116, &v120, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v117, 38, v92, v94);
      _os_crash_msg();
      __break(1u);
LABEL_65:
      v116[0] = 0;
      v123 = 0u;
      v121 = 0u;
      memset(v122, 0, sizeof(v122));
      v120 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      a2 = v19;
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v117 = 136315906;
      *&v117[4] = "operator[]";
      *&v117[12] = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      *&v117[14] = 468;
      *&v117[18] = 2048;
      *&v117[20] = a2;
      v118 = 2048;
      v119 = v17;
      _os_log_send_and_compose_impl(v76, v116, &v120, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v117, 38, v92, v94);
      _os_crash_msg();
      __break(1u);
LABEL_69:
      v116[0] = 0;
      v9 = v117;
      v123 = 0u;
      v121 = 0u;
      memset(v122, 0, sizeof(v122));
      v120 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v117 = 136315906;
      *&v117[4] = "operator[]";
      *&v117[12] = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      *&v117[14] = 789;
      *&v117[18] = 2048;
      *&v117[20] = 0;
      v118 = 2048;
      v119 = 0;
      _os_log_send_and_compose_impl(v79, v116, &v120, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v117, 38, v91, v93);
      _os_crash_msg();
      __break(1u);
LABEL_73:
      v116[0] = 0;
      v123 = 0u;
      v121 = 0u;
      memset(v122, 0, sizeof(v122));
      v120 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v117 = 136315906;
      *&v117[4] = "operator[]";
      *&v117[12] = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      *&v117[14] = 789;
      *&v117[18] = 2048;
      *&v117[20] = 1;
      v118 = 2048;
      v119 = v9;
      _os_log_send_and_compose_impl(v82, v116, &v120, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v117, 38, v91, v93);
      _os_crash_msg();
      __break(1u);
LABEL_77:
      v116[0] = 0;
      v123 = 0u;
      v121 = 0u;
      memset(v122, 0, sizeof(v122));
      v120 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v117 = 136315906;
      *&v117[4] = "operator[]";
      *&v117[12] = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      *&v117[14] = 789;
      *&v117[18] = 2048;
      *&v117[20] = 0;
      v118 = 2048;
      v119 = 0;
      _os_log_send_and_compose_impl(v85, v116, &v120, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v117, 38, v91, v93);
      _os_crash_msg();
      __break(1u);
    }

    v116[0] = 0;
    v123 = 0u;
    v121 = 0u;
    memset(v122, 0, sizeof(v122));
    v120 = 0u;
    v86 = MEMORY[0x1E69E9C10];
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v117 = 136315906;
    *&v117[4] = "operator[]";
    *&v117[12] = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    *&v117[14] = 789;
    *&v117[18] = 2048;
    *&v117[20] = 0;
    v118 = 2048;
    v119 = 0;
    _os_log_send_and_compose_impl(v88, v116, &v120, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v117, 38, v91, v93);
    _os_crash_msg();
    __break(1u);
LABEL_85:
    if (__cxa_guard_acquire(&qword_1EE1BE678))
    {
      qword_1EE1BE670 = re::getCombinedScopeHash("ProjectiveMeshShadow", v89, v90);
      __cxa_guard_release(&qword_1EE1BE678);
    }
  }
}

void *re::allocInfo_RenderProjectiveMeshShadowPatchesNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE680))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE6E0, "RenderProjectiveMeshShadowPatchesNode");
    __cxa_guard_release(&qword_1EE1BE680);
  }

  return &unk_1EE1BE6E0;
}

void re::initInfo_RenderProjectiveMeshShadowPatchesNode(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x86836557EB7BBFECLL;
  v21[1] = "RenderProjectiveMeshShadowPatchesNode";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1BE688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE688))
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
    qword_1EE1BE6C0 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "depthOnly";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000002;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BE6C8 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_BOOL(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "disableRenderOverContent";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x10900000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BE6D0 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_BOOL(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "useMaxBlend";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x10A00000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1BE6D8 = v19;
    __cxa_guard_release(&qword_1EE1BE688);
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BE6C0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderProjectiveMeshShadowPatchesNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderProjectiveMeshShadowPatchesNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderProjectiveMeshShadowPatchesNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderProjectiveMeshShadowPatchesNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderProjectiveMeshShadowPatchesNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D0F380;
  *(result + 132) = 0;
  *(result + 266) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderProjectiveMeshShadowPatchesNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D0F380;
  *(result + 132) = 0;
  *(result + 266) = 0;
  return result;
}

void re::CopyShadowTextureNode::~CopyShadowTextureNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::GenerateTiledShadowDepthPrepassMapNode::~GenerateTiledShadowDepthPrepassMapNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::GenerateProjectiveMeshShadowMapNode::~GenerateProjectiveMeshShadowMapNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderProjectiveMeshShadowPatchesNode::~RenderProjectiveMeshShadowPatchesNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MeshShadowGenerateMipmapNode::~MeshShadowGenerateMipmapNode(re::MeshShadowGenerateMipmapNode *this)
{
  *this = &unk_1F5D0F428;
  for (i = 576; i != 560; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  v4 = *(this + 70);
  if (v4)
  {

    *(this + 70) = 0;
  }

  re::DynamicString::deinit((this + 528));
  re::DynamicString::deinit((this + 496));

  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);
}

{
  *this = &unk_1F5D0F428;
  v2 = 576;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 560)
    {
      v4 = *(this + 70);
      if (v4)
      {

        *(this + 70) = 0;
      }

      re::DynamicString::deinit((this + 528));
      re::DynamicString::deinit((this + 496));
      re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

      JUMPOUT(0x1E6906520);
    }
  }
}

void re::MeshShadowGenerateFinalTextureNode::~MeshShadowGenerateFinalTextureNode(re::MeshShadowGenerateFinalTextureNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::ProjectiveMeshShadowBlurNode::~ProjectiveMeshShadowBlurNode(re::ProjectiveMeshShadowBlurNode *this)
{
  *this = &unk_1F5D0F5A8;
  for (i = 672; i != 496; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);
}

{
  *this = &unk_1F5D0F5A8;
  v2 = 672;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 496)
    {
      re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

      JUMPOUT(0x1E6906520);
    }
  }
}

void *re::internal::Callable<re::GenerateTiledShadowDepthPrepassMapNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F668;
  return result;
}

void *re::internal::Callable<re::GenerateTiledShadowDepthPrepassMapNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F668;
  return result;
}

re::DrawTable *re::DrawTable::DrawTable(re::DrawTable *this, re::Allocator *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  re::BucketArray<re::DrawCall,128ul>::init(this, a2, 0);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  re::BucketArray<re::Matrix4x4<float>,128ul>::init(this + 56, a2, 0);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 1;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 40) = 0;
  re::BucketArray<re::ConstantTable const*,128ul>::init(this + 112, a2, 0);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 1;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 54) = 0;
  re::BucketArray<float,128ul>::init(this + 168, a2, 0);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 60) = 1;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  *(this + 68) = 0;
  re::BucketArray<unsigned int,128ul>::init(this + 224, a2, 0);
  *(this + 320) = 1;
  return this;
}

void *re::DrawTableSlice::DrawTableSlice(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  if (*(a2 + 16))
  {
    v2 = a2 + 24;
  }

  v4 = *(a2 + 8);
  *result = v2;
  result[1] = v4;
  result[2] = v3;
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  if (*(a2 + 72))
  {
    v5 = a2 + 80;
  }

  v7 = *(a2 + 64);
  result[3] = v5;
  result[4] = v7;
  result[5] = v6;
  v8 = *(a2 + 144);
  v9 = *(a2 + 152);
  if (*(a2 + 128))
  {
    v8 = a2 + 136;
  }

  v10 = *(a2 + 120);
  result[6] = v8;
  result[7] = v10;
  result[8] = v9;
  v11 = *(a2 + 200);
  v12 = *(a2 + 208);
  if (*(a2 + 184))
  {
    v11 = a2 + 192;
  }

  v13 = *(a2 + 176);
  result[9] = v11;
  result[10] = v13;
  result[11] = v12;
  v14 = *(a2 + 256);
  v15 = *(a2 + 264);
  if (*(a2 + 240))
  {
    v14 = a2 + 248;
  }

  v16 = *(a2 + 232);
  result[12] = v14;
  result[13] = v16;
  result[14] = v15;
  return result;
}

uint64_t re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem *this, uint64_t a2)
{
  v4 = *(this + 1);
  v5 = *(*this + 136);
  if (v5 > v4)
  {
    return *(*this + 128) + 96 * v4;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v5, v2, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v7, v8);
  __break(1u);
  return result;
}

void *re::internal::Callable<re::GenerateProjectiveMeshShadowMapNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F6C0;
  return result;
}

void *re::internal::Callable<re::GenerateProjectiveMeshShadowMapNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F6C0;
  return result;
}

void *re::internal::Callable<re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F718;
  return result;
}

void *re::internal::Callable<re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F718;
  return result;
}

void re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(re::RenderGraphComputeNodeBase *this)
{
  *this = &unk_1F5D0F818;
  v2 = *(this + 61);
  if (v2)
  {

    *(this + 61) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicString::deinit((this + 288));
  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneArrayData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re14SceneArrayDataE";
  if (("N2re14SceneArrayDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re14SceneArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

void *re::DynamicArray<re::MeshPartDrawContext>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
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
            memcpy(v7, v5[4], 240 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::MeshPartDrawContext>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

unint64_t re::BucketArray<re::MeshSceneCollection,16ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 4;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 4)
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

  return *(v5 + 8 * v2) + 40 * (a2 & 0xF);
}

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

  v2 = a2 >> 4;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 4)
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

  return *(v5 + 8 * v2) + 40 * (a2 & 0xF);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::get<re::SceneScope>(uint64_t a1, uint64_t a2)
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

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::RenderGraphDataStore::get<re::CameraMatrices>(uint64_t a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0, v11, v12, v13, v14, v15);
  }

  v4 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v4, 0, v16);
    v5 = (v16[1] - 0x61C8864680B583E9 + (v16[0] << 6) + (v16[0] >> 2)) ^ v16[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
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

__n128 re::DynamicArray<re::MeshPartDrawContext>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshPartDrawContext>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 240 * v4;
  v6 = *a2;
  v7 = a2[2];
  *(v5 + 16) = a2[1];
  *(v5 + 32) = v7;
  *v5 = v6;
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[6];
  *(v5 + 80) = a2[5];
  *(v5 + 96) = v10;
  *(v5 + 48) = v8;
  *(v5 + 64) = v9;
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[10];
  *(v5 + 144) = a2[9];
  *(v5 + 160) = v13;
  *(v5 + 112) = v11;
  *(v5 + 128) = v12;
  result = a2[11];
  v15 = a2[12];
  v16 = a2[14];
  *(v5 + 208) = a2[13];
  *(v5 + 224) = v16;
  *(v5 + 176) = result;
  *(v5 + 192) = v15;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshPartDrawContext>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshPartDrawContext>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshPartDrawContext>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::VRRUnwarpProvider::VRRUnwarpProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(v5, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), v5);
  v3 = *&v5[0];
  if (*&v5[0])
  {
    if (BYTE8(v5[0]))
    {
      v3 = (*(**&v5[0] + 40))();
    }

    memset(v5, 0, sizeof(v5));
  }

  *a1 = &unk_1F5D0F780;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  a1[12] = 65290051;
  a1[13] = "Color";
  return a1;
}

void re::VRRUnwarpProvider::~VRRUnwarpProvider(re::VRRUnwarpProvider *this)
{
  re::DynamicString::deinit((this + 64));
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::VRRUnwarpProvider::~VRRUnwarpProvider(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::VRRUnwarpProvider::prepareFrame(re::VRRUnwarpProvider *this, char *__s, const char *a3, re::RenderFrame *a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, &buf);
    v9 = (*(&buf + 1) - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(a3);
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, &buf);
    v11 = ((*(&buf + 1) - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf) - 0x61C8864680B583E9;
  }

  else
  {
    v11 = 0x9E3779B97F4A7C17;
  }

  v12 = ((v9 >> 2) + (v9 << 6) + v11) ^ v9;
  v13 = re::RenderGraphDataStore::tryGet<re::CameraData>(a4 + 32, v12);
  v14 = re::RenderGraphDataStore::tryGet<re::VRRData>(a4 + 32, v12);
  if (!v13)
  {
    return 0;
  }

  v15 = *(v13 + 861) != 1 || v14 == 0;
  if (v15 || *(v14 + 12) != 1)
  {
    return 0;
  }

  v16 = *(v14 + 8);
  v17 = *(a4 + 534);
  if (v17 <= v16)
  {
    v59 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    buf = 0u;
    v50 = MEMORY[0x1E69E9C10];
    *v64 = 136315906;
    *&v64[4] = "operator[]";
    *&v64[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    *&v64[14] = 797;
    v65 = 2048;
    v66 = v16;
    v67 = 2048;
    *v68 = v17;
    _os_log_send_and_compose_impl(v51, &v59, &buf, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v52, v53[0]);
    _os_crash_msg();
    __break(1u);
  }

  v18 = *(a4 + 536);
  if (!*(v18 + 8 * v16))
  {
    v21 = *re::graphicsLogObjects(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Could not get valid ratemap in Unwarp provider", &buf, 2u);
    }

    return 0;
  }

  *&buf = 0;
  *&v71 = 0;
  DWORD2(v70) = 0;
  v19 = *(*(a4 + 1) + 112);
  if (v19)
  {
    v20 = *(v19 + 320);
  }

  else
  {
    v20 = 0;
  }

  v24 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v20, *(a4 + 48));
  re::PerFrameAllocatorGPU::allocInternal(v24, [*(v18 + 8 * v16) parameterBufferSizeAndAlign], 0x10uLL, 0, &v59);
  v25 = v61;
  LODWORD(v24) = v60;
  *v64 = *v62;
  HIDWORD(v66) = 0;
  *&v68[2] = __PAIR64__(v25, v24);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&buf, v64);
  *&v71 = *&v68[2];
  if (HIDWORD(v66) != -1)
  {
    (off_1F5D0F7B8[HIDWORD(v66)])(&v63, v64);
  }

  v27 = *(v18 + 8 * v16);
  re::BufferSlice::buffer(&buf, v26);
  [v27 copyParameterDataToBuffer:buf offset:v71];
  if (*(this + 12) == 65290051)
  {
    v28 = *(this + 13);
    v29 = *v28;
    if (*v28)
    {
      v30 = v28 + 1;
      v31 = "Color";
      while (v29 == *v31)
      {
        ++v31;
        v32 = *v30++;
        v29 = v32;
        if (!v32)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v31 = "Color";
LABEL_31:
      if (!*v31)
      {
        v56[0] = 0;
        v33 = &v57;
        v57 = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v56, &buf);
        v58 = v71;
        *v64 = 0x4F06877B79D47715;
        if (a3)
        {
          v46 = *a3;
          if (*a3)
          {
            v47 = a3[1];
            if (v47)
            {
              v48 = a3 + 2;
              do
              {
                v46 = 31 * v46 + v47;
                v49 = *v48++;
                v47 = v49;
              }

              while (v49);
            }

            v46 &= ~0x8000000000000000;
          }
        }

        else
        {
          v46 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v59 = v46;
        re::RenderFrame::registerExternalBuffer(a4, v56, v64, &v59, 0);
        if (v57 != -1)
        {
          (off_1F5D0F7B8[v57])(v64, v56);
        }

        goto LABEL_41;
      }
    }
  }

  LOBYTE(v53[0]) = 0;
  v33 = &v54;
  v54 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v53, &buf);
  v55 = v71;
  *v64 = 0x4F06877B79D47716;
  if (a3)
  {
    v34 = *a3;
    if (*a3)
    {
      v35 = a3[1];
      if (v35)
      {
        v36 = a3 + 2;
        do
        {
          v34 = 31 * v34 + v35;
          v37 = *v36++;
          v35 = v37;
        }

        while (v37);
      }

      v34 &= ~0x8000000000000000;
    }
  }

  else
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v59 = v34;
  re::RenderFrame::registerExternalBuffer(a4, v53, v64, &v59, 0);
  if (v54 != -1)
  {
    (off_1F5D0F7B8[v54])(v64, v53);
  }

LABEL_41:
  *v33 = -1;
  v38 = "N2re13VRRUnwarpDataE";
  if (("N2re13VRRUnwarpDataE" & 0x8000000000000000) != 0)
  {
    v39 = ("N2re13VRRUnwarpDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v40 = 5381;
    do
    {
      v38 = v40;
      v41 = *v39++;
      v40 = (33 * v40) ^ v41;
    }

    while (v41);
  }

  *v64 = (v12 - 0x61C8864680B583E9 + (v38 << 6) + (v38 >> 2)) ^ v38;
  v42 = (*(**(a4 + 5) + 32))(*(a4 + 5), 16, 8);
  *v42 = &unk_1F5D0F7F0;
  v42[1] = 0;
  v59 = v42;
  v43 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, v64, &v59);
  v44 = *v43;
  *(*v43 + 8) = 0;
  if ([*(v18 + 8 * v16) layerCount] > 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = 255;
  }

  *(v44 + 10) = v45;
  *v64 = 0x2988A88C0AE16068;
  *&v64[8] = "VRRUnwarpProvider";
  ScopeHash = re::RenderGraphProviderBase::generateScopeHash(v64, __s, a3);
  if (DWORD2(v70) != -1)
  {
    (off_1F5D0F7B8[DWORD2(v70)])(v64, &buf);
  }

  return ScopeHash;
}

void re::VRRUnwarpProvider::provide(re::VRRUnwarpProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 72))
  {
    v8 = *(this + 10);
  }

  else
  {
    v8 = this + 73;
  }

  re::RenderFrame::tryGetInputTarget(&v57, a4, v8, 0);
  if (DWORD2(v57) != -1 && HIDWORD(v57) != -1)
  {
    RenderGraph = re::RenderFrame::makeRenderGraph(a4, a3, 0);
    *buf = 3;
    v44 = -1;
    v45 = -1;
    v46 = -1;
    v47 = 0;
    v48 = 0;
    v50 = xmmword_1E30A3B60;
    v51 = 0x2000000000;
    v52 = -1;
    v53 = -1;
    v54 = -1;
    v55 = 0;
    v56 = 0;
    v43 = 0x300000073;
    __asm { FMOV            V0.2S, #1.0 }

    v49 = _D0;
    re::RenderFrame::createTarget(&v41, a4, buf, "UnwarpedTarget");
    v35[0] = *(this + 12) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::addTargetOutput(a4, v35, &v41, 0);
    v35[1] = -1;
    v36 = 0;
    v37 = 1065353216;
    v38 = 0xFFFFFFFF00000020;
    v39 = -1;
    LODWORD(v35[0]) = 2;
    if (*(this + 12) == 65290051)
    {
      v17 = *(this + 13);
      v18 = *v17;
      if (*v17)
      {
        v19 = v17 + 1;
        v20 = "Color";
        while (v18 == *v20)
        {
          ++v20;
          v21 = *v19++;
          v18 = v21;
          if (!v21)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v20 = "Color";
LABEL_18:
        if (!*v20)
        {
          if (!a3)
          {
            v28 = 0xBC9C7D0DAB09280ELL;
            goto LABEL_28;
          }

          v30 = *a3;
          if (!*a3)
          {
            v28 = 0x3C9C7D0DAB092809;
            goto LABEL_28;
          }

          v31 = a3[1];
          if (v31)
          {
            v32 = a3 + 2;
            do
            {
              v30 = 31 * v30 + v31;
              v33 = *v32++;
              v31 = v33;
            }

            while (v33);
          }

          v26 = (v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x739AFA76D2DD5F1CLL;
          v27 = 0x4F06877B79D47715;
          goto LABEL_25;
        }
      }
    }

    if (!a3)
    {
      v28 = 0xBC9C7D0DAB09284DLL;
      goto LABEL_28;
    }

    v22 = *a3;
    if (!*a3)
    {
      v28 = 0x3C9C7D0DAB09284ALL;
      goto LABEL_28;
    }

    v23 = a3[1];
    if (v23)
    {
      v24 = a3 + 2;
      do
      {
        v22 = 31 * v22 + v23;
        v25 = *v24++;
        v23 = v25;
      }

      while (v25);
    }

    v26 = (v22 & 0x7FFFFFFFFFFFFFFFLL) + 0x739AFA76D2DD5F5CLL;
    v27 = 0x4F06877B79D47716;
LABEL_25:
    v28 = v26 ^ v27;
LABEL_28:
    v40 = v28;
    re::RenderFrame::createBuffer(&v34, a4, v35, "RateMapBuffer");
    v29 = re::RenderGraph::addNode<re::RenderGraphVRRUnwarpNode>(RenderGraph, "Unwarp node");
    *(v29 + 264) = v57;
    *(v29 + 280) = v41;
    *(v29 + 296) = v34;
    re::AssetHandle::operator=(v29 + 312, this + 5);
    re::RenderGraphVRRUnwarpNode::configure(v29, a2, a3, a4);
    return;
  }

  v11 = *re::graphicsLogObjects(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Could not get input color in Unwarp provider", buf, 2u);
  }
}

void re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler::prepareTexturesForFrame(re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler *this)
{
  v2 = *(this + 5);
  v3 = *(v2 + 176);
  v4 = *(v2 + 180);
  re::mtl::makeDefaultDevice(&v19);
  v5 = MEMORY[0x1E69741C0];
  v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v6 setStorageMode_];
  [v6 setPixelFormat_];
  [v6 setWidth_];
  [v6 setHeight_];
  [v6 setUsage_];

  v7 = *(this + 5);
  v8 = *(v7 + 176);
  v9 = *(v7 + 180);
  re::mtl::makeDefaultDevice(&v19);
  v10 = [objc_msgSend(v5 alloc)];
  [v10 setStorageMode_];
  [v10 setPixelFormat_];
  [v10 setWidth_];
  [v10 setHeight_];
  [v10 setUsage_];

  v11 = *(*(this + 5) + 32);
  v13 = v11 + 1;
  v12 = v11[1];
  if (!v12 || (v14 = [v12 width], v14 != objc_msgSend(v6, sel_width)) || (v15 = objc_msgSend(*v13, sel_height), v15 != objc_msgSend(v6, sel_height)) || (v16 = v11[4]) == 0 || (v17 = objc_msgSend(v16, sel_width), v17 != objc_msgSend(v10, sel_width)) || (v18 = objc_msgSend(v11[4], sel_height), v18 != objc_msgSend(v10, sel_height)))
  {
    *(this + 56) = 1;
    re::mtl::Device::makeTexture(&v19, v6, this + 6);
    NS::SharedPtr<MTL::Texture>::operator=(v13, &v19);
    if (v19)
    {
    }

    re::mtl::Device::makeTexture(&v19, v6, this + 6);
    NS::SharedPtr<MTL::Texture>::operator=(v11 + 3, &v19);
    if (v19)
    {
    }

    re::mtl::Device::makeTexture(&v19, v6, this + 6);
    NS::SharedPtr<MTL::Texture>::operator=(v11 + 2, &v19);
    if (v19)
    {
    }

    re::mtl::Device::makeTexture(&v19, v10, this + 6);
    NS::SharedPtr<MTL::Texture>::operator=(v11 + 4, &v19);
    if (v19)
    {
    }

    re::mtl::Device::makeTexture(&v19, v10, this + 6);
    NS::SharedPtr<MTL::Texture>::operator=(v11 + 5, &v19);
    if (v19)
    {
    }
  }

  NS::SharedPtr<MTL::Buffer>::operator=(this, v13);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 1, v11 + 3);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 2, v11 + 2);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 3, v11 + 4);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 4, v11 + 5);
  if (v10)
  {
  }

  if (v6)
  {
  }
}

void re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler::saveTexturesForNextFrame(re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler *this)
{
  v1 = *(*(this + 5) + 32);
  v4 = *(v1 + 16);
  NS::SharedPtr<MTL::Buffer>::operator=((v1 + 16), (v1 + 24));
  NS::SharedPtr<MTL::Buffer>::operator=((v1 + 24), &v4);
  v2 = *(v1 + 32);
  v1 += 32;
  v3 = v2;
  NS::SharedPtr<MTL::Buffer>::operator=(v1, (v1 + 8));
  NS::SharedPtr<MTL::Buffer>::operator=((v1 + 8), &v3);
  if (v3)
  {
  }

  if (v4)
  {
  }
}

void re::guided_filter_occlusion::GuidedFilterKernelRecycler::prepareKernelsForFrame(re::guided_filter_occlusion::GuidedFilterKernelRecycler *this, const re::RenderManager *a2, re::mtl::Library *a3, int a4)
{
  v5 = *(*(this + 6) + 32);
  if (a4)
  {
    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    ComputePipelineState = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 6, ComputePipelineState);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v8 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v8 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v9 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 7, v9);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v10 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v10 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v11 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 8, v11);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v12 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v12 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v13 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 9, v13);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v14 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v14 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v15 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 10, v15);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v16 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v16 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v17 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 11, v17);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v18 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v18 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v19 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 12, v19);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v20 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v20 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v21 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 13, v21);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    if (v70 && (v71 & 1) != 0)
    {
      (*(*v70 + 40))();
    }
  }

  v23 = v5 + 14;
  v22 = v5[14];
  if (!v22 || (v24 = v22, v25 = [v24 kernelDiameter], v26 = *(*(this + 6) + 124), v24, v25 != v26))
  {
    re::mtl::mps::ImageGuidedFilter::ImageGuidedFilter(&v70, (this + 56), *(*(this + 6) + 124));
    if (v23 != &v70)
    {
      v27 = v70;
      v70 = 0;
      v28 = *v23;
      *v23 = v27;
    }

    v29 = *v23;
    LODWORD(v30) = 981668463;
    [v29 setEpsilon:v30];
  }

  v32 = v5 + 15;
  v31 = v5[15];
  if (v31)
  {
    v33 = v31;
    if ([v33 kernelWidth] == *(*(this + 6) + 112))
    {
      v34 = *v32;
      v35 = [v34 kernelHeight];
      v36 = *(*(this + 6) + 112);

      if (v35 == v36)
      {
        goto LABEL_135;
      }
    }

    else
    {
    }
  }

  v37 = *(*(this + 6) + 112);
  re::mtl::mps::ImageAreaMax::ImageAreaMax(&v70, (this + 56), v37, v37);
  if (v32 != &v70)
  {
    v38 = v70;
    v70 = 0;
    v39 = *v32;
    *v32 = v38;
  }

LABEL_135:
  v41 = v5 + 16;
  v40 = v5[16];
  if (v40)
  {
    v42 = v40;
    if ([v42 kernelWidth] == *(*(this + 6) + 120))
    {
      v43 = *v41;
      v44 = [v43 kernelHeight];
      v45 = *(*(this + 6) + 120);

      if (v44 == v45)
      {
        goto LABEL_143;
      }
    }

    else
    {
    }
  }

  v46 = *(*(this + 6) + 120);
  re::mtl::mps::ImageAreaMax::ImageAreaMax(&v70, (this + 56), v46, v46);
  if (v41 != &v70)
  {
    v47 = v70;
    v70 = 0;
    v48 = *v41;
    *v41 = v47;
  }

LABEL_143:
  v50 = v5 + 17;
  v49 = v5[17];
  if (v49)
  {
    v51 = v49;
    if ([v51 kernelWidth] == *(*(this + 6) + 132))
    {
      v52 = *v50;
      v53 = [v52 kernelHeight];
      v54 = *(*(this + 6) + 132);

      if (v53 == v54)
      {
        goto LABEL_151;
      }
    }

    else
    {
    }
  }

  v55 = *(*(this + 6) + 132);
  re::mtl::mps::ImageTent::ImageTent(&v70, (this + 56), v55, v55);
  if (v50 != &v70)
  {
    v56 = v70;
    v70 = 0;
    v57 = *v50;
    *v50 = v56;
  }

LABEL_151:
  v58 = v5 + 18;
  if (!v5[18])
  {
    re::mtl::mps::ImageBilinearScale::ImageBilinearScale(&v70, (this + 56));
    if (v58 != &v70)
    {
      v59 = v70;
      v70 = 0;
      v60 = *v58;
      *v58 = v59;
    }
  }

  v62 = v5[19];
  v61 = v5 + 19;
  if (!v62)
  {
    re::mtl::mps::ImageBilinearScale::ImageBilinearScale(&v70, (this + 56));
    if (v61 != &v70)
    {
      v63 = v70;
      v70 = 0;
      v64 = *v61;
      *v61 = v63;
    }
  }

  v65 = *v23;
  re::ObjCObject::operator=(this, v65);

  v66 = *v41;
  re::ObjCObject::operator=(this + 2, v66);

  v67 = *v50;
  re::ObjCObject::operator=(this + 3, v67);

  v68 = *v58;
  re::ObjCObject::operator=(this + 4, v68);

  v69 = *v61;
  re::ObjCObject::operator=(this + 5, v69);
}

re::RenderGraphComputeNodeBase *re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(re::RenderGraphComputeNodeBase *this, const char *a2)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *v3 = &unk_1F5D0F818;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 39) = 0;
  re::DynamicString::setCapacity(this + 36, 0);
  *(this + 320) = 0;
  *(this + 344) = 0;
  *(this + 368) = 0;
  *(this + 384) = 0;
  *(this + 416) = 0;
  *(this + 53) = -1;
  *(this + 54) = -1;
  *(this + 55) = -1;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 118) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  return this;
}

uint64_t re::RenderGraphComputeNodeBase::configure(re::RenderGraphComputeNodeBase *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  re::AssetHandle::loadNow(*(this + 34), 0);
  v8 = *(re::AssetHandle::loadedAsset<re::ShaderLibraryAsset>((this + 264)) + 72);
  re::DynamicString::DynamicString(&v11, (this + 288));
  v13 = 0;
  v16 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v21 = 0;
  v22 = v8;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v11);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 61, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
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
      return (*(*v11 + 40))();
    }
  }

  return result;
}

void re::RenderGraphComputeNodeBase::setTexturesAndBuffersOnEncoders(void *a1, uint64_t a2, id *a3)
{
  v6 = a1[15];
  if (v6)
  {
    v7 = a1[17];
    v8 = 32 * v6;
    do
    {
      if (*(v7 + 20) != 1 || *(v7 + 8) != -1 && *(v7 + 12) != -1)
      {
        v9 = re::RenderGraphContext::metalBuffer(a2, v7);
        v11 = re::BufferSlice::buffer(v9, v10);
        [*a3 setBuffer:*v11 offset:*(v11 + 32) atIndex:*(v7 + 16)];
      }

      v7 += 32;
      v8 -= 32;
    }

    while (v8);
  }

  v12 = a1[20];
  if (v12)
  {
    v13 = a1[22];
    v14 = v12 << 6;
    do
    {
      if (*(v13 + 49) != 1 || *(v13 + 8) != -1 && *(v13 + 12) != -1)
      {
        v15 = re::RenderGraphContext::metalBuffer(a2, v13);
        v17 = re::BufferSlice::buffer(v15, v16);
        [*a3 setBuffer:*v17 offset:*(v17 + 32) atIndex:*(v13 + 16)];
      }

      v13 += 64;
      v14 -= 64;
    }

    while (v14);
  }

  v18 = a1[25];
  if (v18)
  {
    v19 = a1[27];
    v20 = 32 * v18;
    do
    {
      if (*(v19 + 20) != 1 || *(v19 + 8) != -1 && *(v19 + 12) != -1)
      {
        re::RenderGraphContext::metalTexture(a2, v19, *(v19 + 21), *(v19 + 22), &v24);
        [*a3 setTexture:v24 atIndex:*(v19 + 16)];
        if (v24)
        {
        }
      }

      v19 += 32;
      v20 -= 32;
    }

    while (v20);
  }

  v21 = a1[30];
  if (v21)
  {
    v22 = a1[32];
    v23 = v21 << 6;
    do
    {
      if (*(v22 + 49) != 1 || *(v22 + 8) != -1 && *(v22 + 12) != -1)
      {
        re::RenderGraphContext::metalTexture(a2, v22, 0, 0, &v24);
        [*a3 setTexture:v24 atIndex:*(v22 + 16)];
        if (v24)
        {
        }
      }

      v22 += 64;
      v23 -= 64;
    }

    while (v23);
  }
}

void re::RenderGraphComputeNodeBase::execute(re::RenderGraphComputeNodeBase *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v23, 5036, 0, 0, 0, 0);
  if (((*(*this + 136))(this, a2) & 1) == 0)
  {
    (*(*this + 128))(&v18, this, a2);
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 0, 0, &v17);
    [v17 setComputePipelineState:*(this + 61)];
    v6 = v17;
    v16 = v6;
    re::RenderGraphComputeNodeBase::setTexturesAndBuffersOnEncoders(this, a2, &v16);

    v7 = *(this + 58);
    if (v7)
    {
      v8 = 8 * v7;
      v9 = (*(this + 60) + 4);
      do
      {
        [v17 setThreadgroupMemoryLength:*v9 atIndex:*(v9 - 1)];
        v9 += 2;
        v8 -= 8;
      }

      while (v8);
    }

    v15 = v17;
    (*(*this + 144))(this, a2, &v15);

    v10 = *(a2 + 1);
    v14 = v17;
    re::RenderManager::sampleComputeEncoderMTLCounterBegin(v10, &v14, 1u);

    *&v11 = v18;
    *(&v11 + 1) = HIDWORD(v18);
    v26 = v11;
    v27 = v19;
    *&v11 = v20;
    *(&v11 + 1) = v21;
    v24 = v11;
    v25 = v22;
    [v17 dispatchThreadgroups:&v26 threadsPerThreadgroup:&v24];
    v12 = *(a2 + 1);
    v13 = v17;
    re::RenderManager::sampleComputeEncoderMTLCounterEnd(v12, &v13, 1u);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v23, v4, v5);
}

void re::RenderGraphComputeNode::getDispatchSizes(re::RenderGraphComputeNode *this@<X0>, const re::RenderGraphContext *a2@<X1>, unsigned int *a3@<X8>)
{
  v5 = *(this + 109);
  v6 = *(this + 110);
  v7 = *(this + 111);
  v8 = *(this + 106);
  v9 = *(this + 107);
  v10 = *(this + 108);
  if (*(this + 320) == 1)
  {
    re::RenderGraphContext::metalTexture(a2, this + 328, 0, 0, &v19);
    if (v5 == -1)
    {
      v5 = [*(this + 61) threadExecutionWidth];
    }

    if (v6 == -1)
    {
      v6 = [*(this + 61) maxTotalThreadsPerThreadgroup] / v5;
    }

    if (v7 == -1)
    {
      v7 = 1;
    }

    v11 = 1.0;
    v12 = 1.0;
    v13 = 1.0;
    if (*(this + 384) == 1)
    {
      v12 = *(this + 100);
      v11 = *(this + 101);
      v13 = *(this + 102);
    }

    if (v8 == -1)
    {
      v8 = ((roundf(v12 * [v19 width]) + v5) + -1.0) / v5;
    }

    if (v9 == -1)
    {
      v9 = ((roundf(v11 * [v19 height]) + v6) + -1.0) / v6;
    }

    if (v10 == -1)
    {
      v10 = vcvtas_u32_f32(v13 * [v19 depth]);
    }

    v14 = v19;
    if (!v19)
    {
      goto LABEL_49;
    }

LABEL_35:

    goto LABEL_49;
  }

  if (*(this + 344) == 1)
  {
    v15 = re::RenderGraphContext::metalBuffer(a2, this + 352);
    v17 = *re::BufferSlice::buffer(v15, v16);
    if (v5 == -1)
    {
      v5 = [*(this + 61) maxTotalThreadsPerThreadgroup];
    }

    if (v6 == -1)
    {
      v6 = 1;
    }

    if (v7 == -1)
    {
      v7 = 1;
    }

    v18 = 1.0;
    if (*(this + 416) == 1)
    {
      v18 = *(this + 105);
    }

    if (v8 == -1)
    {
      v8 = ((roundf(v18 * [v17 length]) + v5) + -1.0) / v5;
    }

    if (v9 == -1)
    {
      v9 = 1;
    }

    if (v10 == -1)
    {
      v10 = 1;
    }

    if (v17)
    {
      v14 = v17;
      goto LABEL_35;
    }
  }

  else if (*(this + 368) == 1)
  {
    if (v5 == -1)
    {
      v5 = [*(this + 61) maxTotalThreadsPerThreadgroup];
    }

    if (v6 == -1)
    {
      v6 = 1;
    }

    if (v7 == -1)
    {
      v7 = 1;
    }

    if (v8 == -1)
    {
      v8 = (v5 + *(this + 93) - 1) / v5;
    }

    if (v9 == -1)
    {
      v9 = 1;
    }

    if (v10 == -1)
    {
      v10 = 1;
    }
  }

LABEL_49:
  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v5;
  a3[4] = v6;
  a3[5] = v7;
}

void re::RenderGraphComputeNode::validateAttachmentsDuringGraphBuild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v102 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v99, a3, 3);
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *(a1 + 136);
    v7 = v6 + 32 * v5;
    do
    {
      v8 = *(v6 + 16);
      v9 = v99;
      if (v99)
      {
        v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
        v11 = *(*(&v99 + 1) + 4 * ((v10 ^ (v10 >> 31)) % DWORD2(v100)));
        if (v11 != 0x7FFFFFFF)
        {
          while (*(v100 + 32 * v11 + 4) != v8)
          {
            v11 = *(v100 + 32 * v11) & 0x7FFFFFFF;
            if (v11 == 0x7FFFFFFF)
            {
              goto LABEL_16;
            }
          }

          v12 = *(a1 + 16);
          re::RenderGraphCompiled::bufferName(&v91, *(a2 + 296), *(v6 + 8));
          re::DynamicString::format(&v95, "(%s): Buffer read (%s, %u) contains compute index which is already in use on a RenderGraphComputeNode.", v13, v12, *(&v91 + 1), *(v6 + 16));
          re::RenderGraphCompiled::addError(a2, &v95);
          v14 = v95;
          if (v95)
          {
            if (BYTE8(v95))
            {
              v14 = (*(*v95 + 40))(v95, v96);
            }

            v95 = 0u;
            v96 = 0u;
          }

          if (v91)
          {
            if (v91)
            {
            }
          }

          v8 = *(v6 + 16);
        }
      }

LABEL_16:
      v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
      v16 = v15 ^ (v15 >> 31);
      if (v9)
      {
        v17 = v16 % DWORD2(v100);
        v18 = *(*(&v99 + 1) + 4 * v17);
        if (v18 != 0x7FFFFFFF)
        {
          while (*(v100 + 32 * v18 + 4) != v8)
          {
            v18 = *(v100 + 32 * v18) & 0x7FFFFFFF;
            if (v18 == 0x7FFFFFFF)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_23;
        }
      }

      else
      {
        LODWORD(v17) = 0;
      }

LABEL_22:
      v19 = re::HashTable<unsigned int,re::RenderGraphBufferHandle,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v99, v17, v16);
      *(v19 + 4) = *(v6 + 16);
      *(v19 + 8) = 0;
      *(v19 + 16) = -1;
      *(v19 + 8) = *v6;
      *(v19 + 16) = *(v6 + 8);
      ++HIDWORD(v102);
LABEL_23:
      v6 += 32;
    }

    while (v6 != v7);
  }

  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v98 = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v95, a3, 3);
  v20 = *(a1 + 160);
  if (v20)
  {
    v21 = *(a1 + 176);
    v22 = &v21[16 * v20];
    do
    {
      v23 = v21[4];
      if (re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::containsKey(&v95, v21[4]))
      {
        v24 = *(a1 + 16);
        re::RenderGraphCompiled::bufferName(&v85, *(a2 + 296), v21[2]);
        re::DynamicString::format(&v91, "(%s): Buffer write (%s, %u) contains compute index which is already in use on a RenderGraphComputeNode.", v25, v24, *(&v85 + 1), v21[4]);
        re::RenderGraphCompiled::addError(a2, &v91);
        v26 = v91;
        if (v91)
        {
          if (BYTE8(v91))
          {
            v26 = (*(*v91 + 40))();
          }

          v91 = 0u;
          v92 = 0u;
        }

        if (v85)
        {
          if (v85)
          {
          }
        }

        v23 = v21[4];
      }

      if (v99)
      {
        v27 = 0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30));
        v28 = *(*(&v99 + 1) + 4 * (((0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) ^ ((0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) >> 31)) % DWORD2(v100)));
        if (v28 != 0x7FFFFFFF)
        {
          while (*(v100 + 32 * v28 + 4) != v23)
          {
            v28 = *(v100 + 32 * v28) & 0x7FFFFFFF;
            if (v28 == 0x7FFFFFFF)
            {
              goto LABEL_51;
            }
          }

          v29 = *(v100 + 32 * v28 + 16);
          if (v29 != v21[2])
          {
            v30 = *(a1 + 16);
            re::RenderGraphCompiled::bufferName(&v85, *(a2 + 296), v29);
            v31 = *(&v85 + 1);
            re::RenderGraphCompiled::bufferName(&v83, *(a2 + 296), v21[2]);
            re::DynamicString::format(&v91, "(%s): Buffer read_write at compute index %u is not consistent. [read]: %s; [write]: %s. They should be the same.", v32, v30, v23, v31, *(&v83 + 1));
            re::RenderGraphCompiled::addError(a2, &v91);
            v33 = v91;
            if (v91)
            {
              if (BYTE8(v91))
              {
                v33 = (*(*v91 + 40))();
              }

              v91 = 0u;
              v92 = 0u;
            }

            if (v83)
            {
              if (v83)
              {
              }
            }

            if (v85)
            {
              if (v85)
              {
              }
            }
          }
        }
      }

LABEL_51:
      if (v21[5] != 5)
      {
        v34 = *(a1 + 16);
        re::RenderGraphCompiled::bufferName(&v85, *(a2 + 296), v21[2]);
        re::DynamicString::format(&v91, "(%s): Buffer write (%s, %u) Non-compute write on compute node", v35, v34, *(&v85 + 1), v21[4]);
        re::RenderGraphCompiled::addError(a2, &v91);
        v36 = v91;
        if (v91)
        {
          if (BYTE8(v91))
          {
            v36 = (*(*v91 + 40))();
          }

          v91 = 0u;
          v92 = 0u;
        }

        if (v85)
        {
          if (v85)
          {
          }
        }
      }

      re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(&v95, v21 + 4);
      v21 += 16;
    }

    while (v21 != v22);
  }

  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v94 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v91, a3, 3);
  v37 = *(a1 + 200);
  if (v37)
  {
    v38 = *(a1 + 216);
    v39 = &v38[4 * v37];
    do
    {
      v40 = *(v38 + 4);
      v41 = v91;
      if (v91)
      {
        v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) >> 27));
        v43 = *(*(&v91 + 1) + 4 * ((v42 ^ (v42 >> 31)) % DWORD2(v92)));
        if (v43 != 0x7FFFFFFF)
        {
          while (*(v92 + 32 * v43 + 4) != v40)
          {
            v43 = *(v92 + 32 * v43) & 0x7FFFFFFF;
            if (v43 == 0x7FFFFFFF)
            {
              goto LABEL_75;
            }
          }

          v44 = *(a1 + 16);
          v89 = 0;
          v90 = -1;
          v89 = *v38;
          v90 = v38[1];
          re::RenderGraphCompiled::targetName(a2, &v89, &v83);
          re::DynamicString::format(&v85, "(%s): Target read (%s, %u) contains compute index which is already in use on a RenderGraphComputeNode.", v45, v44, *(&v83 + 1), *(v38 + 4));
          re::RenderGraphCompiled::addError(a2, &v85);
          v46 = v85;
          if (v85)
          {
            if (BYTE8(v85))
            {
              v46 = (*(*v85 + 40))();
            }

            v85 = 0u;
            v86 = 0u;
          }

          if (v83)
          {
            if (v83)
            {
            }
          }

          v40 = *(v38 + 4);
        }
      }

LABEL_75:
      v47 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) >> 27));
      v48 = v47 ^ (v47 >> 31);
      if (v41)
      {
        v49 = v48 % DWORD2(v92);
        v50 = *(*(&v91 + 1) + 4 * v49);
        if (v50 != 0x7FFFFFFF)
        {
          while (*(v92 + 32 * v50 + 4) != v40)
          {
            v50 = *(v92 + 32 * v50) & 0x7FFFFFFF;
            if (v50 == 0x7FFFFFFF)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_82;
        }
      }

      else
      {
        LODWORD(v49) = 0;
      }

LABEL_81:
      v51 = re::HashTable<unsigned int,re::RenderGraphBufferHandle,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v91, v49, v48);
      *(v51 + 4) = *(v38 + 4);
      *(v51 + 8) = 0;
      *(v51 + 16) = -1;
      *(v51 + 8) = *v38;
      *(v51 + 16) = v38[1];
      ++HIDWORD(v94);
LABEL_82:
      v38 += 4;
    }

    while (v38 != v39);
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v88 = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v85, a3, 3);
  v53 = *(a1 + 240);
  if (v53)
  {
    v54 = *(a1 + 256);
    v55 = &v54[8 * v53];
    do
    {
      v56 = *(v54 + 4);
      if (re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::containsKey(&v85, *(v54 + 4)))
      {
        v57 = *(a1 + 16);
        v79 = 0;
        v80 = -1;
        v79 = *v54;
        v80 = v54[1];
        re::RenderGraphCompiled::targetName(a2, &v79, &v81);
        re::DynamicString::format(&v83, "(%s): Target write (%s, %u) contains compute index which is already in use on a RenderGraphComputeNode.", v58, v57, v82, *(v54 + 4));
        re::RenderGraphCompiled::addError(a2, &v83);
        v59 = v83;
        if (v83)
        {
          if (BYTE8(v83))
          {
            v59 = (*(*v83 + 40))();
          }

          v83 = 0u;
          v84 = 0u;
        }

        if (v81)
        {
          if (v81)
          {
          }
        }

        v56 = *(v54 + 4);
      }

      if (v91)
      {
        v60 = 0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30));
        v61 = *(*(&v91 + 1) + 4 * (((0x94D049BB133111EBLL * (v60 ^ (v60 >> 27))) ^ ((0x94D049BB133111EBLL * (v60 ^ (v60 >> 27))) >> 31)) % DWORD2(v92)));
        if (v61 != 0x7FFFFFFF)
        {
          while (*(v92 + 32 * v61 + 4) != v56)
          {
            v61 = *(v92 + 32 * v61) & 0x7FFFFFFF;
            if (v61 == 0x7FFFFFFF)
            {
              goto LABEL_110;
            }
          }

          v62 = v92 + 32 * v61;
          if (*(v62 + 16) != *(v54 + 2))
          {
            v63 = *(a1 + 16);
            v77 = 0;
            v78 = -1;
            v77 = *(v62 + 8);
            v78 = *(v62 + 16);
            re::RenderGraphCompiled::targetName(a2, &v77, &v81);
            v64 = v82;
            v73 = 0;
            v74 = -1;
            v73 = *v54;
            v74 = v54[1];
            re::RenderGraphCompiled::targetName(a2, &v73, &v75);
            re::DynamicString::format(&v83, "(%s): Target read_write at compute index %u is not consistent. [read]: %s; [write]: %s. They should be the same.", v65, v63, v56, v64, v76);
            re::RenderGraphCompiled::addError(a2, &v83);
            v66 = v83;
            if (v83)
            {
              if (BYTE8(v83))
              {
                v66 = (*(*v83 + 40))();
              }

              v83 = 0u;
              v84 = 0u;
            }

            if (v75)
            {
              if (v75)
              {
              }
            }

            if (v81)
            {
              if (v81)
              {
              }
            }
          }
        }
      }

LABEL_110:
      if (*(v54 + 5) != 5)
      {
        v67 = *(a1 + 16);
        v71 = 0;
        v72 = -1;
        v71 = *v54;
        v72 = v54[1];
        re::RenderGraphCompiled::targetName(a2, &v71, &v81);
        re::DynamicString::format(&v83, "(%s): Target write (%s, %u) Non-compute write on compute node", v68, v67, v82, *(v54 + 4));
        re::RenderGraphCompiled::addError(a2, &v83);
        v69 = v83;
        if (v83)
        {
          if (BYTE8(v83))
          {
            v69 = (*(*v83 + 40))();
          }

          v83 = 0u;
          v84 = 0u;
        }

        if (v81)
        {
          if (v81)
          {
          }
        }
      }

      re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(&v85, v54 + 4);
      v54 += 8;
    }

    while (v54 != v55);
  }

  if ((*(a1 + 320) & 1) == 0 && (*(a1 + 344) & 1) == 0 && (*(a1 + 368) & 1) == 0)
  {
    if (*(a1 + 424) == -1)
    {
      re::DynamicString::format(&v83, "(%s): gridSizeWidth not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", v52, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v83);
      if (v83)
      {
        if (BYTE8(v83))
        {
          (*(*v83 + 40))();
        }
      }
    }

    if (*(a1 + 428) == -1)
    {
      re::DynamicString::format(&v83, "(%s): gridSizeHeight not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", v52, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v83);
      if (v83)
      {
        if (BYTE8(v83))
        {
          (*(*v83 + 40))();
        }
      }
    }

    if (*(a1 + 432) == -1)
    {
      re::DynamicString::format(&v83, "(%s): gridSizeDepth not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", v52, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v83);
      if (v83)
      {
        if (BYTE8(v83))
        {
          (*(*v83 + 40))();
        }
      }
    }

    if (*(a1 + 436) == -1)
    {
      re::DynamicString::format(&v83, "(%s): threadGroupSizeWidth not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", v52, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v83);
      if (v83)
      {
        if (BYTE8(v83))
        {
          (*(*v83 + 40))();
        }
      }
    }

    if (*(a1 + 440) == -1)
    {
      re::DynamicString::format(&v83, "(%s): threadGroupSizeHeight not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", v52, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v83);
      if (v83)
      {
        if (BYTE8(v83))
        {
          (*(*v83 + 40))();
        }
      }
    }

    if (*(a1 + 444) == -1)
    {
      re::DynamicString::format(&v83, "(%s): threadGroupSizeDepth not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", v52, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v83);
      if (v83)
      {
        if (BYTE8(v83))
        {
          (*(*v83 + 40))();
        }
      }
    }
  }

  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&v85);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v91);
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&v95);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v99);
}

re::StringID *re::RenderGraphCompiled::bufferName(re::StringID *a1, uint64_t a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *(a2 + 16);
  if (v4 <= a3)
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

    v14 = 789;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(a2 + 32) + 48 * a3 + 8);

  return re::StringID::StringID(a1, v5);
}

BOOL re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::containsKey(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  v4 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31)) % v2));
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (*(v6 + 16 * v4 + 12) == a2)
  {
    return 1;
  }

  do
  {
    v4 = *(v6 + 16 * v4 + 8) & 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
  }

  while (v4 != 0x7FFFFFFF && *(v6 + 16 * v4 + 12) != a2);
  return result;
}

uint64_t re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 16 * v9 + 12) == v4)
      {
        return result;
      }

      while (1)
      {
        v9 = *(v10 + 16 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 16 * v9 + 12) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

re::StringID *re::RenderGraphCompiled::targetName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::StringID *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 296);
  v4 = *(a2 + 8);
  v5 = *(v3 + 16);
  if (v5 <= v4)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 789;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(v3 + 32) + 48 * v4 + 8);

  return re::StringID::StringID(a3, v6);
}

void *re::allocInfo_ThreadGroupMemorySetting(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE778))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE8B0, "ThreadGroupMemorySetting");
    __cxa_guard_release(&qword_1EE1BE778);
  }

  return &unk_1EE1BE8B0;
}

void re::initInfo_ThreadGroupMemorySetting(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x22B37C92029F6B34;
  v14[1] = "ThreadGroupMemorySetting";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BE780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE780))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_uint32_t(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "index";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BE7A8 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_uint32_t(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "bytes";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x400000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BE7B0 = v12;
    __cxa_guard_release(&qword_1EE1BE780);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BE7A8;
  *(this + 9) = re::internal::defaultConstruct<re::ThreadGroupMemorySetting>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ThreadGroupMemorySetting>;
  *(this + 13) = re::internal::defaultConstructV2<re::ThreadGroupMemorySetting>;
  *(this + 14) = re::internal::defaultDestructV2<re::ThreadGroupMemorySetting>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::allocInfo_RenderGraphComputeNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE788))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE940, "RenderGraphComputeNode");
    __cxa_guard_release(&qword_1EE1BE788);
  }

  return &unk_1EE1BE940;
}

void re::initInfo_RenderGraphComputeNode(re *this, re::IntrospectionBase *a2)
{
  v62[0] = 0xB2B40BD8F0C94D02;
  v62[1] = "RenderGraphComputeNode";
  if (v62[0])
  {
    if (v62[0])
    {
    }
  }

  *(this + 2) = v63;
  if ((atomic_load_explicit(&qword_1EE1BE790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE790))
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
    qword_1EE1BE838 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_AssetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "library";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BE840 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::IntrospectionInfo<re::DynamicString>::get(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "computeFunction";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x12000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BE848 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_uint32_t(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "gridSizeWidth";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x1A800000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1BE850 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_uint32_t(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "gridSizeHeight";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x1AC00000005;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1BE858 = v23;
    v24 = re::introspectionAllocator();
    v26 = re::introspect_uint32_t(1, v25);
    v27 = (*(*v24 + 32))(v24, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "gridSizeDepth";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x1B000000006;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1BE860 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_uint32_t(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "threadGroupSizeWidth";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x1B400000007;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1BE868 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::introspect_uint32_t(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "threadGroupSizeHeight";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x1B800000008;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1BE870 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_uint32_t(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "threadGroupSizeDepth";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x1BC00000009;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1BE878 = v39;
    v40 = re::introspectionAllocator();
    v41 = re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(1);
    v42 = (*(*v40 + 32))(v40, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "threadGroupMemorySettings";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x1C00000000ALL;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1BE880 = v42;
    v43 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::RenderGraphTargetHandle>>::get(v43, v44);
    v45 = (*(*v43 + 32))(v43, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "outputDimensionsTarget";
    *(v45 + 16) = &qword_1EE1BE7B8;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x1400000000CLL;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1BE888 = v45;
    v46 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::RenderGraphBufferHandle>>::get(v46, v47);
    v48 = (*(*v46 + 32))(v46, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "outputDimensionsBuffer";
    *(v48 + 16) = qword_1EE1BE7F8;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x1580000000DLL;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1BE890 = v48;
    v49 = re::introspectionAllocator();
    v51 = re::IntrospectionInfo<re::Optional<unsigned int>>::get(1, v50);
    v52 = (*(*v49 + 32))(v49, 72, 8);
    *v52 = 1;
    *(v52 + 8) = "outputElementCount";
    *(v52 + 16) = v51;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0x1700000000ELL;
    *(v52 + 40) = 0;
    *(v52 + 48) = 0;
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    qword_1EE1BE898 = v52;
    v53 = re::introspectionAllocator();
    v55 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1, v54);
    v56 = (*(*v53 + 32))(v53, 72, 8);
    *v56 = 1;
    *(v56 + 8) = "outputDimensionsTargetMultiplier";
    *(v56 + 16) = v55;
    *(v56 + 24) = 0;
    *(v56 + 32) = 0x1800000000FLL;
    *(v56 + 40) = 0;
    *(v56 + 48) = 0;
    *(v56 + 56) = 0;
    *(v56 + 64) = 0;
    qword_1EE1BE8A0 = v56;
    v57 = re::introspectionAllocator();
    v59 = re::IntrospectionInfo<re::Optional<float>>::get(1, v58);
    v60 = (*(*v57 + 32))(v57, 72, 8);
    *v60 = 1;
    *(v60 + 8) = "outputDimensionsBufferMultiplier";
    *(v60 + 16) = v59;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0x1A000000010;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    *(v60 + 56) = 0;
    *(v60 + 64) = 0;
    qword_1EE1BE8A8 = v60;
    __cxa_guard_release(&qword_1EE1BE790);
  }

  *(this + 2) = 0x1F000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE1BE838;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphComputeNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphComputeNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphComputeNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphComputeNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v61 = v63;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(re *a1)
{
  v1 = a1;
  {
    if (a1)
    {
      re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::IntrospectionDynamicArray(&re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info);
    }
  }

  if (v1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::internal::introspectionInfoStorage<re::ThreadGroupMemorySetting>;
  if (!re::internal::introspectionInfoStorage<re::ThreadGroupMemorySetting>)
  {
    v5 = re::allocInfo_ThreadGroupMemorySetting(a1);
    re::internal::introspectionInfoStorage<re::ThreadGroupMemorySetting> = v5;
    re::initInfo_ThreadGroupMemorySetting(v5, v6);
  }

  if ((re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::isInitialized & 1) == 0)
  {
    re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::isInitialized = 1;
    v7 = v5[6];
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info, 0);
    qword_1EE186B48 = 0x2800000003;
    dword_1EE186B50 = v7;
    word_1EE186B54 = 0;
    *&xmmword_1EE186B58 = 0;
    *(&xmmword_1EE186B58 + 1) = 0xFFFFFFFFLL;
    qword_1EE186B68 = v5;
    unk_1EE186B70 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info = &unk_1F5D0F998;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&v14, &re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v5 + 2);
    xmmword_1EE186B58 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((v1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(a1);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::Optional<re::RenderGraphTargetHandle>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BE798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE798))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BE7B8);
    qword_1EE1BE7B8 = &unk_1F5D0FA30;
    __cxa_guard_release(&qword_1EE1BE798);
  }

  if ((_MergedGlobals_507 & 1) == 0)
  {
    v2 = re::introspect_RenderGraphTargetHandle(1, a2);
    if ((_MergedGlobals_507 & 1) == 0)
    {
      v3 = v2;
      _MergedGlobals_507 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BE7B8, 0);
      qword_1EE1BE7C8 = 0x180000000DLL;
      dword_1EE1BE7D0 = v4;
      word_1EE1BE7D4 = 0;
      *&xmmword_1EE1BE7D8 = 0;
      *(&xmmword_1EE1BE7D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BE7E8 = v3;
      unk_1EE1BE7F0 = 0;
      qword_1EE1BE7B8 = &unk_1F5D0FA30;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1BE7B8);
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

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginOptionalType(&v14, &v12, 0x18uLL, 8uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1BE7D8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::RenderGraphBufferHandle>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BE7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE7A0))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(qword_1EE1BE7F8);
    qword_1EE1BE7F8[0] = &unk_1F5D0FAB0;
    __cxa_guard_release(&qword_1EE1BE7A0);
  }

  if ((byte_1EE1BE771 & 1) == 0)
  {
    v2 = re::introspect_RenderGraphBufferHandle(1, a2);
    if ((byte_1EE1BE771 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1BE771 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(qword_1EE1BE7F8, 0);
      unk_1EE1BE808 = 0x180000000DLL;
      unk_1EE1BE810 = v4;
      unk_1EE1BE814 = 0;
      *&xmmword_1EE1BE818 = 0;
      *(&xmmword_1EE1BE818 + 1) = 0xFFFFFFFFLL;
      unk_1EE1BE828 = v3;
      unk_1EE1BE830 = 0;
      qword_1EE1BE7F8[0] = &unk_1F5D0FAB0;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, qword_1EE1BE7F8);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 0x18uLL, 8uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1BE818 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

re::RenderGraphComputeNodeBase *re::internal::defaultConstruct<re::RenderGraphComputeNode>(int a1, int a2, re::RenderGraphComputeNodeBase *this)
{
  result = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(this);
  *result = &unk_1F5D0F8D8;
  return result;
}

re::RenderGraphComputeNodeBase *re::internal::defaultConstructV2<re::RenderGraphComputeNode>(re::RenderGraphComputeNodeBase *a1)
{
  result = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(a1);
  *result = &unk_1F5D0F8D8;
  return result;
}

void re::RenderGraphComputeNode::~RenderGraphComputeNode(re::RenderGraphComputeNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned int,re::RenderGraphBufferHandle,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::RenderGraphBufferHandle,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                *(v18 + 4) = *(v17 - 3);
                *(v18 + 8) = 0;
                *(v18 + 16) = -1;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = *v17;
              }

              v17 += 4;
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

void re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::IntrospectionDynamicArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CADA48;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5D0F998;
  return a1;
}

void *re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionOptional<re::RenderGraphTargetHandle>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::RenderGraphTargetHandle>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::RenderGraphTargetHandle>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::RenderGraphTargetHandle>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    v4 = *(a2 + 2);
    v3 = *(a2 + 3);
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
    *(result + 16) = v4;
    *(result + 20) = v3;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::RenderGraphBufferHandle>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::RenderGraphBufferHandle>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::RenderGraphBufferHandle>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::RenderGraphBufferHandle>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    v4 = *(a2 + 2);
    v3 = *(a2 + 3);
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
    *(result + 16) = v4;
    *(result + 20) = v3;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

re::RenderGraphComputeNodeBase *re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(re::RenderGraphComputeNodeBase *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *v2 = &unk_1F5D0F818;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 39) = 0;
  re::DynamicString::setCapacity(this + 36, 0);
  *(this + 320) = 0;
  *(this + 344) = 0;
  *(this + 368) = 0;
  *(this + 384) = 0;
  *(this + 416) = 0;
  *(this + 53) = -1;
  *(this + 54) = -1;
  *(this + 55) = -1;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 118) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  return this;
}

uint64_t re::DepthStencilSplitterProvider::DepthStencilSplitterProvider(uint64_t a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 8), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D0FB30;
  *(a1 + 40) = 65290051;
  *(a1 + 48) = "Color";
  *(a1 + 56) = 65919651;
  *(a1 + 64) = "Depth";
  *(a1 + 72) = 0x11F25A259CLL;
  *(a1 + 80) = "Stencil";
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void re::DepthStencilSplitterProvider::~DepthStencilSplitterProvider(re::DepthStencilSplitterProvider *this)
{
  re::AssetHandle::~AssetHandle((this + 112));
  re::AssetHandle::~AssetHandle((this + 88));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::DepthStencilSplitterProvider::~DepthStencilSplitterProvider(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DepthStencilSplitterProvider::prepareFrame(re::DepthStencilSplitterProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = *(this + 7) & 0x7FFFFFFFFFFFFFFFLL;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, a3, &v22);
  v21 = *(this + 9) & 0x7FFFFFFFFFFFFFFFLL;
  v9 = re::RenderFrame::getScopePixelFormat(a4, a3, &v21);
  v10 = strlen(a2);
  if (v10)
  {
    MurmurHash3_x64_128(a2, v10, 0, &v23);
    v11 = &v24[64 * v23 - 0x61C8864680B583E9 + (v23 >> 2)] ^ v23;
  }

  else
  {
    v11 = 0;
  }

  v12 = strlen(a3);
  if (v12)
  {
    MurmurHash3_x64_128(a3, v12, 0, &v23);
    v13 = (&v24[64 * v23 - 0x61C8864680B583E9 + (v23 >> 2)] ^ v23) - 0x61C8864680B583E9;
  }

  else
  {
    v13 = 0x9E3779B97F4A7C17;
  }

  v14 = *(re::RenderGraphDataStore::get<re::CameraData>(a4 + 32, ((v11 >> 2) + (v11 << 6) + v13) ^ v11) + 884);
  v23 = 0x4C6F466C1137D991;
  v24 = "DepthStencilSplitterProvider";
  v15 = re::RenderGraphProviderBase::generateScopeHash(&v23, a2, a3);
  v16 = 0xBF58476D1CE4E5B9 * (ScopePixelFormat ^ (ScopePixelFormat >> 30));
  v17 = (((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
  v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v19 = ((v18 ^ (v18 >> 31)) - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
  return (v14 - 0x61C8864680B583E9 + (v19 << 6) + (v19 >> 2)) ^ v19;
}

void re::DepthStencilSplitterProvider::provide(re::DepthStencilSplitterProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v28 = *(this + 7) & 0x7FFFFFFFFFFFFFFFLL;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, a3, &v28);
  v29 = ScopePixelFormat;
  v26 = *(this + 9) & 0x7FFFFFFFFFFFFFFFLL;
  v9 = re::RenderFrame::getScopePixelFormat(a4, a3, &v26);
  v27 = v9;
  v11 = ScopePixelFormat != 250 && ScopePixelFormat != 252;
  v13 = ScopePixelFormat != 255 && ScopePixelFormat != 260;
  v15 = v9 != 255 && v9 != 260;
  if (!v13 && !v15)
  {
    v16 = v9 == 0;
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(this, a3, a4, &v29, ScopePixelFormat == 0, "DepthStencilBlit");
    v17 = this;
    v18 = a3;
    v19 = a4;
    v20 = v16;
    v21 = "DepthStencilBlit";
LABEL_22:
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_1::operator()(v17, v18, v19, &v27, v20, v21);
    return;
  }

  v22 = v9 != 253 || v13;
  if ((v22 & 1) == 0)
  {
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(this, a3, a4, &v29, ScopePixelFormat == 0, "DepthBlit");
    goto LABEL_44;
  }

  if (v9)
  {
    v13 = 1;
  }

  if (!v13)
  {
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(this, a3, a4, &v29, ScopePixelFormat == 0, "DepthBlit");
    return;
  }

  if (!v11 && !v15)
  {
    v25 = v9 == 0;
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_3::operator()(this, a2, a3, a4, &v29, ScopePixelFormat == 0);
    v21 = "StencilBlit";
    v17 = this;
    v18 = a3;
    v19 = a4;
    v20 = v25;
    goto LABEL_22;
  }

  if (ScopePixelFormat == 0 && !v15)
  {
    v20 = v9 == 0;
    v21 = "StencilBlit";
    v17 = this;
    v18 = a3;
    v19 = a4;
    goto LABEL_22;
  }

  v23 = v9 != 253 || v11;
  if ((v23 & 1) == 0)
  {
    if (*(*(a4 + 1) + 372))
    {
      return;
    }

    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_3::operator()(this, a2, a3, a4, &v29, ScopePixelFormat == 0);
    goto LABEL_44;
  }

  if (v11 || v9 != 0)
  {
    v24 = v9 != 253 || ScopePixelFormat != 0;
    if (v24 || (*(*(a4 + 1) + 372) & 1) != 0)
    {
      return;
    }

LABEL_44:
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_4::operator()(this, a2, a3, a4, &v27);
    return;
  }

  if ((*(*(a4 + 1) + 372) & 1) == 0)
  {
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_3::operator()(this, a2, a3, a4, &v29, ScopePixelFormat == 0);
  }
}

uint16x4_t re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(uint64_t a1, const char *a2, re::RenderFrame *this, int *a4, int a5, const char *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  re::RenderFrame::tryGetInputTarget(&v33, this, *(a1 + 64), 0);
  v31 = 0;
  v32 = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *&v36[36] = _D0;
  v37 = xmmword_1E30A3B60;
  memset(&v36[4], 255, 24);
  *&v36[28] = 0;
  v36[32] = 0;
  v38 = 0x2000000000;
  v39 = -1;
  v40 = -1;
  v41 = -1;
  v42 = 0;
  v43 = 0;
  v17 = *a4;
  LODWORD(v35) = 3;
  HIDWORD(v35) = v17;
  *v36 = 2;
  v18 = "FinalDepth";
  if (*(a1 + 56) == 0x55ABE3BEEE2C4090)
  {
    v19 = *(a1 + 64);
    v20 = *v19;
    if (*v19)
    {
      v21 = v19 + 1;
      v22 = "EnvironmentDepth";
      while (v20 == *v22)
      {
        ++v22;
        v23 = *v21++;
        v20 = v23;
        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v18 = "FinalDepth";
    }

    else
    {
      v22 = "EnvironmentDepth";
LABEL_8:
      if (!*v22)
      {
        v18 = "FinalEnvironmentDepth";
      }
    }
  }

  re::RenderFrame::createTarget(&v31, this, &v35, v18);
  v24 = 56;
  if (a5)
  {
    v24 = 72;
  }

  v30 = *(a1 + v24) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::inheritLaneProperties(this, &v30, &v31, 0);
  v35 = *(a1 + 56) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v35, &v31, 0);
  RenderGraph = re::RenderFrame::makeRenderGraph(this, a2, 0);
  v26.i64[0] = v34;
  v26.i64[1] = v32;
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  result = vmovn_s32(vceqq_s32(v26, v27));
  result.i16[0] = vmaxv_u16(result);
  if ((result.i8[0] & 1) == 0)
  {
    v29 = re::RenderGraph::addNode<re::RenderGraphTargetCopyNode>(RenderGraph, a6);
    *(v29 + 368) = 1;
    v35 = v33;
    *v36 = v34;
    *&v36[8] = 0;
    *&v36[16] = 2;
    re::DynamicArray<re::TargetRead>::add((v29 + 184), &v35);
    v35 = v31;
    *v36 = v32;
    *&v36[8] = 0x400000000;
    *&v36[24] = xmmword_1E30474D0;
    *&v36[40] = 0;
    *&v37 = 0;
    return re::DynamicArray<re::TargetWrite>::add((v29 + 224), &v35).n128_u64[0];
  }

  return result;
}

re *re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_4::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = 0x9E3779B97F4A7C17;
  re::RenderFrame::tryGetInputTarget(&v46, this, *(a1 + 80), 0);
  v11 = strlen(a2);
  if (v11)
  {
    MurmurHash3_x64_128(a2, v11, 0, &v47);
    v12 = (*v48 - 0x61C8864680B583E9 + (v47 << 6) + (v47 >> 2)) ^ v47;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(a3);
  if (v13)
  {
    MurmurHash3_x64_128(a3, v13, 0, &v47);
    v10 = ((*v48 - 0x61C8864680B583E9 + (v47 << 6) + (v47 >> 2)) ^ v47) - 0x61C8864680B583E9;
  }

  v14 = re::RenderGraphDataStore::tryGet<re::CameraData>(this + 32, ((v12 >> 2) + (v12 << 6) + v10) ^ v12);
  v44 = 0;
  v45 = -1;
  v42 = 0;
  v43 = -1;
  *&v48[4] = -1;
  *&v48[12] = -1;
  *v49 = -1;
  v49[12] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&v49[16] = _D0;
  v50 = xmmword_1E30A3B60;
  v51 = 0x2000000000;
  v52 = -1;
  v53 = -1;
  v54 = -1;
  v55 = 0;
  v56 = 0;
  v20 = *a5;
  LODWORD(v47) = 3;
  HIDWORD(v47) = v20;
  *&v49[8] = 0;
  *v48 = 3;
  re::RenderFrame::createTarget(&v44, this, &v47, "FinalStencil");
  if (*(v14 + 884) >= 2u)
  {
    *&v48[12] = *(v14 + 884);
    *v48 = 8;
    re::RenderFrame::createTarget(&v42, this, &v47, "FinalStencil[MSAA]");
    v34 = (*(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL);
    re::RenderFrame::addTargetOutput(this, &v34, &v42, 0);
    v41[0] = v44;
    v41[1] = v45;
    v21 = v43.i32[0];
    *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v41) + 84) = v21;
    v34 = (*(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL);
    re::RenderFrame::inheritLaneProperties(this, &v34, &v42, 0);
  }

  v34 = (*(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL);
  re::RenderFrame::inheritLaneProperties(this, &v34, &v44, 0);
  v47 = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v47, &v44, 0);
  result = re::RenderFrame::makeRenderGraph(this, a3, 0);
  v23.i64[0] = *(&v46 + 1);
  v23.u64[1] = v45;
  v24.i64[0] = -1;
  v24.i64[1] = -1;
  if ((vmaxv_u16(vmovn_s32(vceqq_s32(v23, v24))) & 1) == 0)
  {
    v25 = *(a1 + 120);
    if (v25)
    {
      v26 = atomic_load((v25 + 896));
      if (v26 == 2)
      {
        v27 = result;
        v28 = re::RenderGraph::addNode<re::RenderGraphFullscreenNode>(result, "StencilCopy");
        re::AssetHandle::operator=(v28 + 272, (a1 + 112));
        v47 = "fullscreenarray";
        *v48 = 15;
        v29 = re::DynamicString::operator=((v28 + 296), &v47);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        re::DynamicString::setCapacity(&v34, 0);
        *&v38 = 0;
        *(&v38 + 1) = -1;
        v39 = 0;
        v40 = 0;
        v47 = "inputImage";
        *v48 = 10;
        re::DynamicString::operator=(&v34, &v47);
        v38 = v46;
        v40 = 1;
        LOBYTE(v39) = 1;
        re::RenderGraphFullscreenNode::setRenderGraphTextureCommand(v28, &v34);
        v30 = *(v14 + 884) > 1u;
        v31 = &v44;
        if (*(v14 + 884) > 1u)
        {
          v31 = &v42;
        }

        v47 = *v31;
        *v48 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v30), 0x1FuLL)), v43, v45);
        *&v48[8] = 0x300000000;
        *&v49[4] = xmmword_1E30474D0;
        *&v49[20] = 0;
        *&v50 = 0;
        v32 = re::DynamicArray<re::TargetWrite>::add((v28 + 224), &v47);
        (*(*v28 + 80))(v28, a2, a3, this, v32);
        if (*(v14 + 884) >= 2u)
        {
          v33 = re::RenderGraph::addNode<re::RenderGraphResolveNode>(v27, "StencilResolve");
          v47 = v44;
          *v48 = v45;
          *&v48[8] = 0x800000000;
          *&v49[4] = xmmword_1E30474D0;
          *&v49[20] = 0;
          *&v50 = 0;
          re::DynamicArray<re::TargetWrite>::add((v33 + 224), &v47);
          re::RenderGraphResolveNode::configure(v33, a2, a3, this);
        }

        result = v34;
        if (v34)
        {
          if (v35)
          {
            return (*(*v34 + 40))();
          }
        }
      }
    }
  }

  return result;
}

re *re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_3::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5, int a6)
{
  v61 = *MEMORY[0x1E69E9840];
  v12 = 0x9E3779B97F4A7C17;
  re::RenderFrame::tryGetInputTarget(&v50, this, *(a1 + 64), 0);
  v13 = strlen(a2);
  if (v13)
  {
    MurmurHash3_x64_128(a2, v13, 0, &v51);
    v14 = (*v52 - 0x61C8864680B583E9 + (v51 << 6) + (v51 >> 2)) ^ v51;
  }

  else
  {
    v14 = 0;
  }

  v15 = strlen(a3);
  if (v15)
  {
    MurmurHash3_x64_128(a3, v15, 0, &v51);
    v12 = ((*v52 - 0x61C8864680B583E9 + (v51 << 6) + (v51 >> 2)) ^ v51) - 0x61C8864680B583E9;
  }

  v16 = re::RenderGraphDataStore::tryGet<re::CameraData>(this + 32, ((v14 >> 2) + (v14 << 6) + v12) ^ v14);
  v48 = 0;
  v49 = -1;
  v46 = 0;
  v47 = -1;
  *&v52[4] = -1;
  *&v52[12] = -1;
  *v53 = -1;
  v53[12] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&v53[16] = _D0;
  v54 = xmmword_1E30A3B60;
  v55 = 0x2000000000;
  v56 = -1;
  v57 = -1;
  v58 = -1;
  v59 = 0;
  v60 = 0;
  v22 = *a5;
  LODWORD(v51) = 3;
  HIDWORD(v51) = v22;
  *&v53[8] = 0;
  *v52 = 3;
  re::RenderFrame::createTarget(&v48, this, &v51, "FinalDepth");
  if (*(v16 + 884) >= 2u)
  {
    *&v52[12] = *(v16 + 884);
    *v52 = 8;
    re::RenderFrame::createTarget(&v46, this, &v51, "FinalDepth[MSAA]");
    v38 = (*(a1 + 56) & 0x7FFFFFFFFFFFFFFFLL);
    re::RenderFrame::addTargetOutput(this, &v38, &v46, 0);
    v45[0] = v48;
    v45[1] = v49;
    v23 = v47.i32[0];
    *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v45) + 84) = v23;
    v24 = 56;
    if (a6)
    {
      v24 = 72;
    }

    v38 = (*(a1 + v24) & 0x7FFFFFFFFFFFFFFFLL);
    re::RenderFrame::inheritLaneProperties(this, &v38, &v46, 0);
  }

  v25 = 56;
  if (a6)
  {
    v25 = 72;
  }

  v38 = (*(a1 + v25) & 0x7FFFFFFFFFFFFFFFLL);
  re::RenderFrame::inheritLaneProperties(this, &v38, &v48, 0);
  v51 = *(a1 + 56) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v51, &v48, 0);
  result = re::RenderFrame::makeRenderGraph(this, a3, 0);
  v27.i64[0] = *(&v50 + 1);
  v27.u64[1] = v49;
  v28.i64[0] = -1;
  v28.i64[1] = -1;
  if ((vmaxv_u16(vmovn_s32(vceqq_s32(v27, v28))) & 1) == 0)
  {
    v29 = *(a1 + 96);
    if (v29)
    {
      v30 = atomic_load((v29 + 896));
      if (v30 == 2)
      {
        v31 = result;
        v32 = re::RenderGraph::addNode<re::RenderGraphFullscreenNode>(result, "DepthCopy");
        re::AssetHandle::operator=(v32 + 272, (a1 + 88));
        v51 = "fullscreenarray";
        *v52 = 15;
        v33 = re::DynamicString::operator=((v32 + 296), &v51);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        re::DynamicString::setCapacity(&v38, 0);
        *&v42 = 0;
        *(&v42 + 1) = -1;
        v43 = 0;
        v44 = 0;
        v51 = "inputImage";
        *v52 = 10;
        re::DynamicString::operator=(&v38, &v51);
        v42 = v50;
        v44 = 1;
        LOBYTE(v43) = 0;
        re::RenderGraphFullscreenNode::setRenderGraphTextureCommand(v32, &v38);
        v34 = *(v16 + 884) > 1u;
        v35 = &v48;
        if (*(v16 + 884) > 1u)
        {
          v35 = &v46;
        }

        v51 = *v35;
        *v52 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v34), 0x1FuLL)), v47, v49);
        *&v52[8] = 0x200000000;
        *&v53[4] = xmmword_1E30474D0;
        *&v53[20] = 0;
        *&v54 = 0;
        v36 = re::DynamicArray<re::TargetWrite>::add((v32 + 224), &v51);
        (*(*v32 + 80))(v32, a2, a3, this, v36);
        if (*(v16 + 884) >= 2u)
        {
          v37 = re::RenderGraph::addNode<re::RenderGraphResolveNode>(v31, "DepthResolve");
          v51 = v48;
          *v52 = v49;
          *&v52[8] = 0x700000000;
          *&v53[4] = xmmword_1E30474D0;
          *&v53[20] = 0;
          *&v54 = 0;
          re::DynamicArray<re::TargetWrite>::add((v37 + 224), &v51);
          re::RenderGraphResolveNode::configure(v37, a2, a3, this);
        }

        result = v38;
        if (v38)
        {
          if (v39)
          {
            return (*(*v38 + 40))();
          }
        }
      }
    }
  }

  return result;
}

uint16x4_t re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_1::operator()(uint64_t a1, const char *a2, re::RenderFrame *this, int *a4, int a5, const char *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  re::RenderFrame::tryGetInputTarget(&v33, this, *(a1 + 80), 0);
  v31 = 0;
  v32 = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *&v36[36] = _D0;
  v37 = xmmword_1E30A3B60;
  memset(&v36[4], 255, 24);
  *&v36[28] = 0;
  v36[32] = 0;
  v38 = 0x2000000000;
  v39 = -1;
  v40 = -1;
  v41 = -1;
  v42 = 0;
  v43 = 0;
  v17 = *a4;
  LODWORD(v35) = 3;
  HIDWORD(v35) = v17;
  *v36 = 2;
  v18 = "FinalStencil";
  if (*(a1 + 72) == 0x1A41EFBF4696C449)
  {
    v19 = *(a1 + 80);
    v20 = *v19;
    if (*v19)
    {
      v21 = v19 + 1;
      v22 = "EnvironmentStencil";
      while (v20 == *v22)
      {
        ++v22;
        v23 = *v21++;
        v20 = v23;
        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v18 = "FinalStencil";
    }

    else
    {
      v22 = "EnvironmentStencil";
LABEL_8:
      if (!*v22)
      {
        v18 = "FinalEnvironmentStencil";
      }
    }
  }

  re::RenderFrame::createTarget(&v31, this, &v35, v18);
  v24 = 72;
  if (a5)
  {
    v24 = 56;
  }

  v30 = *(a1 + v24) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::inheritLaneProperties(this, &v30, &v31, 0);
  v35 = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v35, &v31, 0);
  RenderGraph = re::RenderFrame::makeRenderGraph(this, a2, 0);
  v26.i64[0] = v34;
  v26.i64[1] = v32;
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  result = vmovn_s32(vceqq_s32(v26, v27));
  result.i16[0] = vmaxv_u16(result);
  if ((result.i8[0] & 1) == 0)
  {
    v29 = re::RenderGraph::addNode<re::RenderGraphTargetCopyNode>(RenderGraph, a6);
    *(v29 + 368) = 1;
    v35 = v33;
    *v36 = v34;
    *&v36[8] = 0;
    *&v36[12] = 256;
    v36[14] = 0;
    *&v36[16] = 2;
    re::DynamicArray<re::TargetRead>::add((v29 + 184), &v35);
    v35 = v31;
    *v36 = v32;
    *&v36[8] = 0x400000000;
    *&v36[24] = xmmword_1E30474D0;
    *&v36[40] = 0;
    *&v37 = 0;
    return re::DynamicArray<re::TargetWrite>::add((v29 + 224), &v35).n128_u64[0];
  }

  return result;
}

void *re::DepthStencilSplitterEmptyProvider::DepthStencilSplitterEmptyProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D0FB60;
  return a1;
}

void re::DepthStencilSplitterEmptyProvider::~DepthStencilSplitterEmptyProvider(re::DepthStencilSplitterEmptyProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::RealityDataPipe::RealityDataPipe(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D0FBC0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::init(a1 + 72, a2, 1uLL);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::init(a1 + 128, a2, 1uLL);
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1;
  *(a1 + 320) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 1;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 1;
  *(a1 + 600) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 616) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 1;
  *(a1 + 680) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 1;
  *(a1 + 736) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 1;
  *(a1 + 792) = 0;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0u;
  re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::init(a1 + 744, a2, 1uLL);
  *(a1 + 800) = 0u;
  *(a1 + 816) = 1;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  re::BucketArray<re::TintContext,4ul>::init(a1 + 800, a2, 1uLL);
  *(a1 + 856) = 0u;
  *(a1 + 872) = 1;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 1;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0;
  re::BucketArray<re::MeshSceneCollection,4ul>::init(a1 + 912, a2, 1uLL);
  *(a1 + 968) = 0u;
  *(a1 + 984) = 1;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 1;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 1;
  *(a1 + 1104) = 0u;
  *(a1 + 1128) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 1;
  *(a1 + 1160) = 0u;
  *(a1 + 1184) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 1;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1216) = 0u;
  re::BucketArray<re::StaticTextInfo,4ul>::init(a1 + 1192, a2, 1uLL);
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 1;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 1;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 1;
  *(a1 + 1384) = 0u;
  *(a1 + 1408) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 1;
  *(a1 + 1440) = 0u;
  *(a1 + 1464) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 1;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1496) = 0u;
  re::BucketArray<re::FilterViewMeshScenes,4ul>::init(a1 + 1472, a2, 1uLL);
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 1;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 1;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0;
  re::BucketArray<re::SceneCRWSReferencePosition,4ul>::init(a1 + 1584, a2, 1uLL);
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 1;
  *(a1 + 1664) = 0;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 1;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0;
  re::BucketArray<re::MeshSortingCollection,4ul>::init(a1 + 1696, a2, 1uLL);
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 1;
  *(a1 + 1776) = 0;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 1;
  *(a1 + 1832) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 1;
  *(a1 + 1888) = 0u;
  *(a1 + 1912) = 0;
  *(a1 + 1904) = 0;
  re::BucketArray<re::DepthMitigationRenderData,4ul>::init(a1 + 1864, a2, 1uLL);
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 1;
  *(a1 + 1944) = 0;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = 0;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 1;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0;
  re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::init(a1 + 1976, a2, 1uLL);
  *(a1 + 2032) = 0u;
  *(a1 + 2048) = 1;
  *(a1 + 2056) = 0;
  *(a1 + 2064) = 0u;
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 1;
  *(a1 + 2112) = 0;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 1;
  *(a1 + 2168) = 0u;
  *(a1 + 2192) = 0;
  *(a1 + 2184) = 0;
  return a1;
}

void re::RealityDataPipe::~RealityDataPipe(re::RealityDataPipe *this)
{
  *this = &unk_1F5D0FBC0;
  v2 = *(this + 273);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](this + 2144, i);
      v5 = v4[27];
      if (v5)
      {

        v4[27] = 0;
      }

      re::DynamicArray<re::AssetHandle>::deinit((v4 + 22));
      re::AssetHandle::~AssetHandle((v4 + 19));
      re::AssetHandle::~AssetHandle((v4 + 16));
      re::StringID::destroyString((v4 + 6));
    }
  }

  while (*(this + 269))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 268);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2144);
  *(this + 273) = 0;
  ++*(this + 548);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2144);
  v6 = *(this + 266);
  if (v6)
  {
    for (j = 0; j != v6; ++j)
    {
      v8 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](this + 2088, j);
      v9 = v8;
      if (*(v8 + 96) == 1)
      {
        re::StringID::destroyString((v8 + 104));
      }

      re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v9);
    }
  }

  while (*(this + 262))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 261);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2088);
  *(this + 266) = 0;
  ++*(this + 534);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2088);
  v10 = *(this + 259);
  if (v10)
  {
    for (k = 0; k != v10; ++k)
    {
      v12 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 2032, k);
      re::DynamicArray<unsigned long>::deinit(v12);
    }
  }

  while (*(this + 255))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 254);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2032);
  *(this + 259) = 0;
  ++*(this + 520);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2032);
  v13 = *(this + 252);
  if (v13)
  {
    for (m = 0; m != v13; ++m)
    {
      re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 1976, m);
    }
  }

  while (*(this + 248))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 247);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1976);
  *(this + 252) = 0;
  ++*(this + 506);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1976);
  v15 = *(this + 245);
  if (v15)
  {
    for (n = 0; n != v15; ++n)
    {
      v17 = re::BucketArray<unsigned long,4ul>::operator[](this + 1920, n);
      if (*v17)
      {

        *v17 = 0;
      }
    }
  }

  while (*(this + 241))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 240);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1920);
  *(this + 245) = 0;
  ++*(this + 492);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1920);
  v18 = *(this + 238);
  if (v18)
  {
    for (ii = 0; ii != v18; ++ii)
    {
      re::BucketArray<re::DepthMitigationRenderData,4ul>::operator[](this + 1864, ii);
    }
  }

  while (*(this + 234))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 233);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1864);
  *(this + 238) = 0;
  ++*(this + 478);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1864);
  v20 = *(this + 231);
  if (v20)
  {
    for (jj = 0; jj != v20; ++jj)
    {
      v22 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 1808, jj);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v22 + 8));
    }
  }

  while (*(this + 227))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 226);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1808);
  *(this + 231) = 0;
  ++*(this + 464);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1808);
  v23 = *(this + 224);
  if (v23)
  {
    for (kk = 0; kk != v23; ++kk)
    {
      re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::operator[](this + 1752, kk);
    }
  }

  while (*(this + 220))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 219);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1752);
  *(this + 224) = 0;
  ++*(this + 450);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1752);
  v25 = *(this + 217);
  if (v25)
  {
    for (mm = 0; mm != v25; ++mm)
    {
      v27 = re::BucketArray<re::MeshSortingCollection,4ul>::operator[](this + 1696, mm);
      re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v27 + 18);
      re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27 + 12);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27 + 6);
      re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
    }
  }

  while (*(this + 213))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 212);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1696);
  *(this + 217) = 0;
  ++*(this + 436);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1696);
  v28 = *(this + 210);
  if (v28)
  {
    for (nn = 0; nn != v28; ++nn)
    {
      v30 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1640, nn);
      re::DynamicArray<re::PlanarReflectionData>::deinit(v30);
    }
  }

  while (*(this + 206))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 205);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1640);
  *(this + 210) = 0;
  ++*(this + 422);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1640);
  v31 = *(this + 203);
  if (v31)
  {
    for (i1 = 0; i1 != v31; ++i1)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 1584, i1);
    }
  }

  while (*(this + 199))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 198);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1584);
  *(this + 203) = 0;
  ++*(this + 408);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1584);
  v33 = *(this + 196);
  if (v33)
  {
    for (i2 = 0; i2 != v33; ++i2)
    {
      re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::operator[](this + 1528, i2);
    }
  }

  while (*(this + 192))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 191);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1528);
  *(this + 196) = 0;
  ++*(this + 394);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1528);
  v35 = *(this + 189);
  if (v35)
  {
    for (i3 = 0; i3 != v35; ++i3)
    {
      v37 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1472, i3);
      re::DynamicArray<re::MeshScene>::deinit(v37);
    }
  }

  while (*(this + 185))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 184);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1472);
  *(this + 189) = 0;
  ++*(this + 380);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1472);
  v38 = *(this + 182);
  if (v38)
  {
    for (i4 = 0; i4 != v38; ++i4)
    {
      v40 = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](this + 1416, i4);
      re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashTable(v40);
    }
  }

  while (*(this + 178))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 177);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1416);
  *(this + 182) = 0;
  ++*(this + 366);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1416);
  v41 = *(this + 175);
  if (v41)
  {
    for (i5 = 0; i5 != v41; ++i5)
    {
      v43 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1360, i5);
      re::DynamicArray<re::RenderGraphFileProvider>::deinit(v43);
    }
  }

  while (*(this + 171))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 170);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1360);
  *(this + 175) = 0;
  ++*(this + 352);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1360);
  re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>::deinit(this + 1304);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1304);
  v44 = *(this + 161);
  if (v44)
  {
    for (i6 = 0; i6 != v44; ++i6)
    {
      v46 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1248, i6);
      re::DynamicArray<re::RenderText>::deinit(v46);
    }
  }

  while (*(this + 157))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 156);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1248);
  *(this + 161) = 0;
  ++*(this + 324);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1248);
  v47 = *(this + 154);
  if (v47)
  {
    for (i7 = 0; i7 != v47; ++i7)
    {
      re::BucketArray<unsigned long,4ul>::operator[](this + 1192, i7);
    }
  }

  while (*(this + 150))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 149);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1192);
  *(this + 154) = 0;
  ++*(this + 310);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1192);
  v49 = *(this + 147);
  if (v49)
  {
    for (i8 = 0; i8 != v49; ++i8)
    {
      v51 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1136, i8);
      v52 = *v51;
      if (*v51)
      {
        v53 = *(v51 + 32);
        if (v53)
        {
          v54 = *(v51 + 16);
          if (v54)
          {
            v55 = v53 + 3216 * v54;
            do
            {
              re::StringID::destroyString((v53 + 3120));
              v56 = 3104;
              do
              {
                re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v53 + v56 - 368);
                re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v53 + v56 - 928);
                re::DynamicArray<re::RenderGraphFileProvider>::deinit(v53 + v56 - 976);
                re::DynamicString::deinit((v53 + v56 - 1552));
                v56 -= 1552;
              }

              while (v56);
              v53 += 3216;
            }

            while (v53 != v55);
            v52 = *v51;
            v53 = *(v51 + 32);
          }

          (*(*v52 + 40))(v52, v53);
        }

        *(v51 + 32) = 0;
        *(v51 + 8) = 0;
        *(v51 + 16) = 0;
        *v51 = 0;
        ++*(v51 + 24);
      }
    }
  }

  while (*(this + 143))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 142);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1136);
  *(this + 147) = 0;
  ++*(this + 296);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1136);
  v57 = *(this + 140);
  if (v57)
  {
    for (i9 = 0; i9 != v57; ++i9)
    {
      v59 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1080, i9);
      v60 = *v59;
      if (*v59)
      {
        v61 = *(v59 + 32);
        if (v61)
        {
          v62 = *(v59 + 16);
          if (v62)
          {
            v63 = 1648 * v62;
            do
            {
              re::StringID::destroyString((v61 + 1552));
              re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v61 + 1184);
              re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v61 + 624);
              re::DynamicArray<re::RenderGraphFileProvider>::deinit(v61 + 576);
              re::DynamicString::deinit(v61);
              v61 += 1648;
              v63 -= 1648;
            }

            while (v63);
            v60 = *v59;
            v61 = *(v59 + 32);
          }

          (*(*v60 + 40))(v60, v61);
        }

        *(v59 + 32) = 0;
        *(v59 + 8) = 0;
        *(v59 + 16) = 0;
        *v59 = 0;
        ++*(v59 + 24);
      }
    }
  }

  while (*(this + 136))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 135);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1080);
  *(this + 140) = 0;
  ++*(this + 282);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1080);
  v64 = *(this + 133);
  if (v64)
  {
    for (i10 = 0; i10 != v64; ++i10)
    {
      v66 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1024, i10);
      re::DynamicArray<re::CameraMultiView>::deinit(v66);
    }
  }

  while (*(this + 129))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 128);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1024);
  *(this + 133) = 0;
  ++*(this + 268);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1024);
  v67 = *(this + 126);
  if (v67)
  {
    for (i11 = 0; i11 != v67; ++i11)
    {
      v69 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 968, i11);
      re::DynamicArray<re::CameraView>::deinit(v69);
    }
  }

  while (*(this + 122))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 121);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 968);
  *(this + 126) = 0;
  ++*(this + 254);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 968);
  v70 = *(this + 119);
  if (v70)
  {
    for (i12 = 0; i12 != v70; ++i12)
    {
      v72 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 912, i12);
      re::DynamicArray<re::MeshScene>::deinit(v72);
    }
  }

  while (*(this + 115))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 114);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 912);
  *(this + 119) = 0;
  ++*(this + 240);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 912);
  v73 = *(this + 112);
  if (v73)
  {
    for (i13 = 0; i13 != v73; ++i13)
    {
      v75 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 856, i13);
      re::StringID::destroyString((v75 + 8));
    }
  }

  while (*(this + 108))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 107);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 856);
  *(this + 112) = 0;
  ++*(this + 226);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 856);
  v76 = *(this + 105);
  if (v76)
  {
    for (i14 = 0; i14 != v76; ++i14)
    {
      re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](this + 800, i14);
    }
  }

  while (*(this + 101))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 100);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 800);
  *(this + 105) = 0;
  ++*(this + 212);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 800);
  v78 = *(this + 98);
  if (v78)
  {
    for (i15 = 0; i15 != v78; ++i15)
    {
      v80 = re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::operator[](this + 744, i15);
      re::DynamicArray<unsigned long>::deinit(v80 + 40);
      re::DynamicArray<unsigned long>::deinit(v80);
    }
  }

  while (*(this + 94))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 93);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 744);
  *(this + 98) = 0;
  ++*(this + 198);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 744);
  v81 = *(this + 91);
  if (v81)
  {
    for (i16 = 0; i16 != v81; ++i16)
    {
      v83 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 688, i16);
      v84 = *(v83 + 40);
      if (v84)
      {

        *(v83 + 40) = 0;
      }

      re::DynamicArray<re::IBL>::deinit(v83);
    }
  }

  while (*(this + 87))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 86);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 688);
  *(this + 91) = 0;
  ++*(this + 184);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 688);
  v85 = *(this + 84);
  if (v85)
  {
    for (i17 = 0; i17 != v85; ++i17)
    {
      v87 = re::BucketArray<re::UIShadowRenderData,4ul>::operator[](this + 632, i17);
      re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v87);
    }
  }

  while (*(this + 80))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 79);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 632);
  *(this + 84) = 0;
  ++*(this + 170);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 632);
  v88 = *(this + 77);
  if (v88)
  {
    for (i18 = 0; i18 != v88; ++i18)
    {
      re::BucketArray<re::OpenSkyData,4ul>::operator[](this + 576, i18);
    }
  }

  while (*(this + 73))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 72);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 576);
  *(this + 77) = 0;
  ++*(this + 156);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 576);
  v90 = *(this + 70);
  if (v90)
  {
    for (i19 = 0; i19 != v90; ++i19)
    {
      v92 = re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::operator[](this + 520, i19);
      v93 = v92;
      if (*(v92 + 56) == 1)
      {
        re::StringID::destroyString((v92 + 64));
      }

      v94 = v93[5];
      if (v94)
      {

        v93[5] = 0;
      }

      v95 = v93[4];
      if (v95)
      {

        v93[4] = 0;
      }

      v96 = v93[3];
      if (v96)
      {

        v93[3] = 0;
      }
    }
  }

  while (*(this + 66))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 65);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 520);
  *(this + 70) = 0;
  ++*(this + 142);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 520);
  v97 = *(this + 63);
  if (v97)
  {
    for (i20 = 0; i20 != v97; ++i20)
    {
      v99 = re::BucketArray<re::OpenSkyData,4ul>::operator[](this + 464, i20);
      re::DynamicArray<unsigned long>::deinit(v99 + 128);
      re::DynamicArray<unsigned long>::deinit(v99 + 88);
    }
  }

  while (*(this + 59))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 58);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 464);
  *(this + 63) = 0;
  ++*(this + 128);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 464);
  v100 = *(this + 56);
  if (v100)
  {
    for (i21 = 0; i21 != v100; ++i21)
    {
      re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](this + 408, i21);
    }
  }

  while (*(this + 52))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 51);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 408);
  *(this + 56) = 0;
  ++*(this + 114);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 408);
  v102 = *(this + 49);
  if (v102)
  {
    for (i22 = 0; i22 != v102; ++i22)
    {
      v104 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 352, i22);
      re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v104);
    }
  }

  while (*(this + 45))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 44);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 352);
  *(this + 49) = 0;
  ++*(this + 100);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 352);
  v105 = *(this + 42);
  if (v105)
  {
    for (i23 = 0; i23 != v105; ++i23)
    {
      v107 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 296, i23);
      v108 = *(v107 + 16);
      if (v108)
      {

        *(v107 + 16) = 0;
      }

      v109 = *(v107 + 8);
      if (v109)
      {

        *(v107 + 8) = 0;
      }

      if (*v107)
      {

        *v107 = 0;
      }
    }
  }

  while (*(this + 38))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 37);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 296);
  *(this + 42) = 0;
  ++*(this + 86);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 296);
  v110 = *(this + 35);
  if (v110)
  {
    for (i24 = 0; i24 != v110; ++i24)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 240, i24);
    }
  }

  while (*(this + 31))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 30);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 240);
  *(this + 35) = 0;
  ++*(this + 72);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 240);
  v112 = *(this + 28);
  if (v112)
  {
    for (i25 = 0; i25 != v112; ++i25)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 184, i25);
    }
  }

  while (*(this + 24))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 23);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 184);
  *(this + 28) = 0;
  ++*(this + 58);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 184);
  v114 = *(this + 21);
  if (v114)
  {
    for (i26 = 0; i26 != v114; ++i26)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 128, i26);
    }
  }

  while (*(this + 17))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 16);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 128);
  *(this + 21) = 0;
  ++*(this + 44);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 128);
  v116 = *(this + 14);
  if (v116)
  {
    for (i27 = 0; i27 != v116; ++i27)
    {
      v118 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 72, i27);
      re::DynamicArray<re::RenderText>::deinit(v118);
    }
  }

  while (*(this + 10))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 9);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 72);
  *(this + 14) = 0;
  ++*(this + 30);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 72);
  v119 = *(this + 7);
  if (v119)
  {
    for (i28 = 0; i28 != v119; ++i28)
    {
      v121 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 16, i28);
      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v121);
    }
  }

  while (*(this + 3))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 2);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 16);
  *(this + 7) = 0;
  ++*(this + 16);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 16);
}

{
  re::RealityDataPipe::~RealityDataPipe(this);

  JUMPOUT(0x1E6906520);
}

unint64_t re::RealityDataPipe::addMipmapGenerationContext(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  v5 = *(a1 + 24);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 16), (v4 + 4) >> 2);
    v5 = *(a1 + 24);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 32))
  {
    v6 = a1 + 40;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 56);
  ++*(a1 + 64);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 56);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 16, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetMipmapGenerationContext(re::RealityDataPipe *this)
{
  if (*(this + 7))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 16, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMipmapGenerationContextArray(re::RealityDataPipe *this)
{
  if (*(this + 7))
  {
    return this + 16;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addRenderProfilerTextArray(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 80);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::setBucketsCapacity((a1 + 72), (v4 + 4) >> 2);
    v5 = *(a1 + 80);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 88))
  {
    v6 = a1 + 96;
  }

  else
  {
    v6 = *(a1 + 104);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 112);
  ++*(a1 + 120);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 112);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 72, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetRenderProfilerTextArray(re::RealityDataPipe *this)
{
  if (*(this + 14))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 72, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetRenderProfilerTextArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 14))
  {
    return this + 72;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addCameraViewDescriptorsPerFrameData(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 168);
  v5 = *(a1 + 136);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::setBucketsCapacity((a1 + 128), (v4 + 4) >> 2);
    v5 = *(a1 + 136);
  }

  if (v5 <= v4 >> 2)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v19 = 858;
    v20 = 2048;
    v21 = v4 >> 2;
    v22 = 2048;
    v23 = v5;
    _os_log_send_and_compose_impl(v12, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v13, v14);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 144))
  {
    v6 = a1 + 152;
  }

  else
  {
    v6 = *(a1 + 160);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  v8 = *(a1 + 168);
  *(a1 + 168) = v8 + 1;
  ++*(a1 + 176);
  v9 = v7 + 16 * (v4 & 3);
  *v9 = &unk_1F5CEFB98;
  *(v9 + 8) = *(a2 + 8);
  if (v8 == -1)
  {
    goto LABEL_15;
  }

  return re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1 + 128, v8);
}

unint64_t re::RealityDataPipe::tryGetCameraViewDescriptorsPerFrameData(re::RealityDataPipe *this)
{
  if (*(this + 21))
  {
    return re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 128, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetCameraViewDescriptorsPerFrameDataArray(re::RealityDataPipe *this)
{
  if (*(this + 21))
  {
    return this + 128;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addClippingParametersSlice(uint64_t a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 224);
  v5 = *(a1 + 192);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::Slice<re::UberClippingParametersEntry>,4ul>::setBucketsCapacity((a1 + 184), (v4 + 4) >> 2);
    v5 = *(a1 + 192);
  }

  if (v5 <= v4 >> 2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v10 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v18 = 858;
    v19 = 2048;
    v20 = v4 >> 2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v11, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v12, v13);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 200))
  {
    v6 = a1 + 208;
  }

  else
  {
    v6 = *(a1 + 216);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 224);
  ++*(a1 + 232);
  *(v7 + 16 * (v4 & 3)) = *a2;
  v8 = *(a1 + 224);
  if (!v8)
  {
    goto LABEL_15;
  }

  return re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1 + 184, v8 - 1);
}

unint64_t re::RealityDataPipe::tryGetClippingParametersSlice(re::RealityDataPipe *this)
{
  if (*(this + 28))
  {
    return re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 184, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetClippingParametersSliceArray(re::RealityDataPipe *this)
{
  if (*(this + 28))
  {
    return this + 184;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addClippingIndexIndirectionSlice(uint64_t a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 280);
  v5 = *(a1 + 248);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::Slice<re::UberClippingParametersEntry>,4ul>::setBucketsCapacity((a1 + 240), (v4 + 4) >> 2);
    v5 = *(a1 + 248);
  }

  if (v5 <= v4 >> 2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v10 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v18 = 858;
    v19 = 2048;
    v20 = v4 >> 2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v11, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v12, v13);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 256))
  {
    v6 = a1 + 264;
  }

  else
  {
    v6 = *(a1 + 272);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 280);
  ++*(a1 + 288);
  *(v7 + 16 * (v4 & 3)) = *a2;
  v8 = *(a1 + 280);
  if (!v8)
  {
    goto LABEL_15;
  }

  return re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1 + 240, v8 - 1);
}

unint64_t re::RealityDataPipe::tryGetClippingIndexIndirectionSlice(re::RealityDataPipe *this)
{
  if (*(this + 35))
  {
    return re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 240, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetClippingIndexIndirectionSliceArray(re::RealityDataPipe *this)
{
  if (*(this + 35))
  {
    return this + 240;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addProbeContext(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 336);
  v5 = *(a1 + 304);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 296), (v4 + 4) >> 2);
    v5 = *(a1 + 304);
  }

  if (v5 <= v4 >> 2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v12 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 858;
    v21 = 2048;
    v22 = v4 >> 2;
    v23 = 2048;
    v24 = v5;
    _os_log_send_and_compose_impl(v13, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 312))
  {
    v6 = a1 + 320;
  }

  else
  {
    v6 = *(a1 + 328);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 336);
  ++*(a1 + 344);
  v8 = v7 + 40 * (v4 & 3);
  *v8 = *a2;
  *a2 = 0;
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 24);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 24) = v9;
  v10 = *(a1 + 336);
  if (!v10)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 296, v10 - 1);
}

unint64_t re::RealityDataPipe::tryGetProbeContext(re::RealityDataPipe *this)
{
  if (*(this + 42))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 296, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetProbeContextArray(re::RealityDataPipe *this)
{
  if (*(this + 42))
  {
    return this + 296;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addBlurGenerationContext(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 392);
  v5 = *(a1 + 360);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 352), (v4 + 4) >> 2);
    v5 = *(a1 + 360);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 368))
  {
    v6 = a1 + 376;
  }

  else
  {
    v6 = *(a1 + 384);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 392);
  ++*(a1 + 400);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 392);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 352, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetBlurGenerationContext(re::RealityDataPipe *this)
{
  if (*(this + 49))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 352, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetBlurGenerationContextArray(re::RealityDataPipe *this)
{
  if (*(this + 49))
  {
    return this + 352;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addSFBSystemShellBlurContext(uint64_t a1, _OWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 448);
  v5 = *(a1 + 416);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::SFBSystemShellBlurContext,4ul>::setBucketsCapacity((a1 + 408), (v4 + 4) >> 2);
    v5 = *(a1 + 416);
  }

  if (v5 <= v4 >> 2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v12 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 858;
    v21 = 2048;
    v22 = v4 >> 2;
    v23 = 2048;
    v24 = v5;
    _os_log_send_and_compose_impl(v13, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 424))
  {
    v6 = a1 + 432;
  }

  else
  {
    v6 = *(a1 + 440);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 448);
  ++*(a1 + 456);
  v8 = (v7 + 32 * (v4 & 3));
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = *(a1 + 448);
  if (!v10)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](a1 + 408, v10 - 1);
}

unint64_t re::RealityDataPipe::tryGetSFBSystemShellBlurContext(re::RealityDataPipe *this)
{
  if (*(this + 56))
  {
    return re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](this + 408, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSFBSystemShellBlurContextArray(re::RealityDataPipe *this)
{
  if (*(this + 56))
  {
    return this + 408;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addOpenSkyData(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 504);
  v5 = *(a1 + 472);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::OpenSkyData,4ul>::setBucketsCapacity((a1 + 464), (v4 + 4) >> 2);
    v5 = *(a1 + 472);
  }

  if (v5 <= v4 >> 2)
  {
    v26 = 0;
    memset(v35, 0, sizeof(v35));
    v22 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v30 = 858;
    v31 = 2048;
    v32 = v4 >> 2;
    v33 = 2048;
    v34 = v5;
    _os_log_send_and_compose_impl(v23, &v26, v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v24, v25);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 480))
  {
    v6 = a1 + 488;
  }

  else
  {
    v6 = *(a1 + 496);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 504);
  ++*(a1 + 512);
  v8 = v7 + 208 * (v4 & 3);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  *(v8 + 80) = *(a2 + 80);
  *(v8 + 48) = v11;
  *(v8 + 64) = v12;
  *(v8 + 32) = v10;
  *(v8 + 120) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 88) = 0;
  *(v8 + 112) = 0;
  v13 = *(a2 + 96);
  *(v8 + 88) = *(a2 + 88);
  *(v8 + 96) = v13;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v14 = *(v8 + 104);
  *(v8 + 104) = *(a2 + 104);
  *(a2 + 104) = v14;
  v15 = *(v8 + 120);
  *(v8 + 120) = *(a2 + 120);
  *(a2 + 120) = v15;
  ++*(a2 + 112);
  ++*(v8 + 112);
  *(v8 + 160) = 0;
  *(v8 + 152) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 128) = 0;
  v16 = *(a2 + 136);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 136) = v16;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v17 = *(v8 + 144);
  *(v8 + 144) = *(a2 + 144);
  *(a2 + 144) = v17;
  v18 = *(v8 + 160);
  *(v8 + 160) = *(a2 + 160);
  *(a2 + 160) = v18;
  ++*(a2 + 152);
  ++*(v8 + 152);
  v19 = *(a2 + 168);
  *(v8 + 177) = *(a2 + 177);
  *(v8 + 168) = v19;
  v20 = *(a1 + 504);
  if (!v20)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::OpenSkyData,4ul>::operator[](a1 + 464, v20 - 1);
}

unint64_t re::RealityDataPipe::tryGetOpenSkyData(re::RealityDataPipe *this)
{
  if (*(this + 63))
  {
    return re::BucketArray<re::OpenSkyData,4ul>::operator[](this + 464, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetOpenSkyDataArray(re::RealityDataPipe *this)
{
  if (*(this + 63))
  {
    return this + 464;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addProjectiveMeshShadowBuilderInputGlobalData(uint64_t a1, __int128 *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 560);
  v5 = *(a1 + 528);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::setBucketsCapacity((a1 + 520), (v4 + 4) >> 2);
    v5 = *(a1 + 528);
  }

  if (v5 <= v4 >> 2)
  {
    v29 = 0;
    memset(v38, 0, sizeof(v38));
    v25 = MEMORY[0x1E69E9C10];
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v33 = 858;
    v34 = 2048;
    v35 = v4 >> 2;
    v36 = 2048;
    v37 = v5;
    _os_log_send_and_compose_impl(v26, &v29, v38, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  if (*(a1 + 536))
  {
    v6 = a1 + 544;
  }

  else
  {
    v6 = *(a1 + 552);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 560);
  ++*(a1 + 568);
  v8 = v7 + 320 * (v4 & 3);
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(v8 + 24) = *(a2 + 3);
  *(a2 + 3) = 0;
  *(v8 + 32) = *(a2 + 4);
  *(a2 + 4) = 0;
  *(v8 + 40) = *(a2 + 5);
  *(a2 + 5) = 0;
  *(v8 + 48) = *(a2 + 6);
  v10 = *(a2 + 56);
  *(v8 + 56) = v10;
  if (v10 == 1)
  {
    v11 = *(a2 + 8);
    *(v8 + 64) = *(v8 + 64) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
    *(v8 + 64) = a2[4] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
    *(v8 + 72) = *(a2 + 9);
    *(a2 + 8) = 0;
    *(a2 + 9) = &str_67;
  }

  v12 = a2[5];
  v13 = a2[7];
  *(v8 + 96) = a2[6];
  *(v8 + 112) = v13;
  *(v8 + 80) = v12;
  v14 = a2[8];
  v15 = a2[9];
  v16 = a2[11];
  *(v8 + 160) = a2[10];
  *(v8 + 176) = v16;
  *(v8 + 128) = v14;
  *(v8 + 144) = v15;
  v17 = a2[12];
  v18 = a2[13];
  v19 = a2[15];
  *(v8 + 224) = a2[14];
  *(v8 + 240) = v19;
  *(v8 + 192) = v17;
  *(v8 + 208) = v18;
  v20 = a2[16];
  v21 = a2[17];
  v22 = a2[18];
  *(v8 + 304) = *(a2 + 38);
  *(v8 + 272) = v21;
  *(v8 + 288) = v22;
  *(v8 + 256) = v20;
  v23 = *(a1 + 560);
  if (!v23)
  {
LABEL_17:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::operator[](a1 + 520, v23 - 1);
}

unint64_t re::RealityDataPipe::tryGetProjectiveMeshShadowBuilderInputGlobalData(re::RealityDataPipe *this)
{
  if (*(this + 70))
  {
    return re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::operator[](this + 520, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetProjectiveMeshShadowBuilderInputGlobalDataArray(re::RealityDataPipe *this)
{
  if (*(this + 70))
  {
    return this + 520;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addMeshShadowPerFrameUpdateData(uint64_t a1, _OWORD *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 616);
  v5 = *(a1 + 584);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::OpenSkyData,4ul>::setBucketsCapacity((a1 + 576), (v4 + 4) >> 2);
    v5 = *(a1 + 584);
  }

  if (v5 <= v4 >> 2)
  {
    v24 = 0;
    memset(v33, 0, sizeof(v33));
    v20 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v28 = 858;
    v29 = 2048;
    v30 = v4 >> 2;
    v31 = 2048;
    v32 = v5;
    _os_log_send_and_compose_impl(v21, &v24, v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 592))
  {
    v6 = a1 + 600;
  }

  else
  {
    v6 = *(a1 + 608);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 616);
  ++*(a1 + 624);
  v8 = (v7 + 208 * (v4 & 3));
  v9 = a2[4];
  v11 = a2[1];
  v10 = a2[2];
  v8[3] = a2[3];
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  v12 = a2[8];
  v14 = a2[5];
  v13 = a2[6];
  v8[7] = a2[7];
  v8[8] = v12;
  v8[5] = v14;
  v8[6] = v13;
  v15 = a2[12];
  v17 = a2[9];
  v16 = a2[10];
  v8[11] = a2[11];
  v8[12] = v15;
  v8[9] = v17;
  v8[10] = v16;
  *v8 = *a2;
  v18 = *(a1 + 616);
  if (!v18)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::OpenSkyData,4ul>::operator[](a1 + 576, v18 - 1);
}

unint64_t re::RealityDataPipe::tryGetMeshShadowPerFrameUpdateData(re::RealityDataPipe *this)
{
  if (*(this + 77))
  {
    return re::BucketArray<re::OpenSkyData,4ul>::operator[](this + 576, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMeshShadowPerFrameUpdateDataArray(re::RealityDataPipe *this)
{
  if (*(this + 77))
  {
    return this + 576;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addUIShadowRenderData(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 672);
  v5 = *(a1 + 640);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::UIShadowRenderData,4ul>::setBucketsCapacity((a1 + 632), (v4 + 4) >> 2);
    v5 = *(a1 + 640);
  }

  if (v5 <= v4 >> 2)
  {
    v17 = 0;
    memset(v26, 0, sizeof(v26));
    v13 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v21 = 858;
    v22 = 2048;
    v23 = v4 >> 2;
    v24 = 2048;
    v25 = v5;
    _os_log_send_and_compose_impl(v14, &v17, v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 648))
  {
    v6 = a1 + 656;
  }

  else
  {
    v6 = *(a1 + 664);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 672);
  ++*(a1 + 680);
  v8 = v7 + 48 * (v4 & 3);
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 36) = 0x7FFFFFFFLL;
  *v8 = *a2;
  *a2 = 0;
  v9 = *(v8 + 8);
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  LODWORD(v10) = *(v8 + 28);
  *(v8 + 28) = *(a2 + 28);
  *(a2 + 28) = v10;
  LODWORD(v10) = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v10;
  LODWORD(v10) = *(v8 + 36);
  *(v8 + 36) = *(a2 + 36);
  *(a2 + 36) = v10;
  ++*(v8 + 40);
  v11 = *(a1 + 672);
  if (!v11)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::UIShadowRenderData,4ul>::operator[](a1 + 632, v11 - 1);
}

unint64_t re::RealityDataPipe::tryGetUIShadowRenderData(re::RealityDataPipe *this)
{
  if (*(this + 84))
  {
    return re::BucketArray<re::UIShadowRenderData,4ul>::operator[](this + 632, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetUIShadowRenderDataArray(re::RealityDataPipe *this)
{
  if (*(this + 84))
  {
    return this + 632;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addIBLContext(uint64_t a1, uint64_t a2)
{
  v4 = re::BucketArray<re::IBLContext,4ul>::addUninitialized(a1 + 688);
  *(v4 + 32) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  v6 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v4 + 16);
  *(v4 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v4 + 32);
  *(v4 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v4 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v4 + 48) = *(a2 + 48);
  v9 = *(a1 + 728);
  if (v9)
  {

    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a1 + 688, v9 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

unint64_t re::RealityDataPipe::tryGetIBLContext(re::RealityDataPipe *this)
{
  if (*(this + 91))
  {
    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 688, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetIBLContextArray(re::RealityDataPipe *this)
{
  if (*(this + 91))
  {
    return this + 688;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addIBLContext(re::RealityDataPipe *this, re::IBLContext *a2)
{
  v4 = re::BucketArray<re::IBLContext,4ul>::addUninitialized(this + 688);
  re::DynamicArray<re::IBL>::DynamicArray(v4, a2);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 48) = *(a2 + 12);
  v6 = *(this + 91);
  if (v6)
  {

    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 688, v6 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

unint64_t re::RealityDataPipe::addBlurPlanesRenderFrameData(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 784);
  v5 = *(a1 + 752);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::setBucketsCapacity((a1 + 744), (v4 + 4) >> 2);
    v5 = *(a1 + 752);
  }

  if (v5 <= v4 >> 2)
  {
    v21 = 0;
    memset(v30, 0, sizeof(v30));
    v17 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 858;
    v26 = 2048;
    v27 = v4 >> 2;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v18, &v21, v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 760))
  {
    v6 = a1 + 768;
  }

  else
  {
    v6 = *(a1 + 776);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 784);
  ++*(a1 + 792);
  v8 = v7 + 88 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  *(v8 + 72) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = 0;
  *(v8 + 64) = 0;
  v12 = *(a2 + 48);
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 48) = v12;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v13 = *(v8 + 56);
  *(v8 + 56) = *(a2 + 56);
  *(a2 + 56) = v13;
  v14 = *(v8 + 72);
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 72) = v14;
  ++*(a2 + 64);
  ++*(v8 + 64);
  *(v8 + 80) = *(a2 + 80);
  v15 = *(a1 + 784);
  if (!v15)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::operator[](a1 + 744, v15 - 1);
}

unint64_t re::RealityDataPipe::tryGetBlurPlanesRenderFrameData(re::RealityDataPipe *this)
{
  if (*(this + 98))
  {
    return re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::operator[](this + 744, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetBlurPlanesRenderFrameDataArray(re::RealityDataPipe *this)
{
  if (*(this + 98))
  {
    return this + 744;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addTintContext(uint64_t a1, _OWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 840);
  v5 = *(a1 + 808);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::TintContext,4ul>::setBucketsCapacity((a1 + 800), (v4 + 4) >> 2);
    v5 = *(a1 + 808);
  }

  if (v5 <= v4 >> 2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v12 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 858;
    v21 = 2048;
    v22 = v4 >> 2;
    v23 = 2048;
    v24 = v5;
    _os_log_send_and_compose_impl(v13, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 816))
  {
    v6 = a1 + 824;
  }

  else
  {
    v6 = *(a1 + 832);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 840);
  ++*(a1 + 848);
  v8 = (v7 + 32 * (v4 & 3));
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = *(a1 + 840);
  if (!v10)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](a1 + 800, v10 - 1);
}

unint64_t re::RealityDataPipe::tryGetTintContext(re::RealityDataPipe *this)
{
  if (*(this + 105))
  {
    return re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](this + 800, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetTintContextArray(re::RealityDataPipe *this)
{
  if (*(this + 105))
  {
    return this + 800;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addSceneName(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 896);
  v5 = *(a1 + 864);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 856), (v4 + 4) >> 2);
    v5 = *(a1 + 864);
  }

  if (v5 <= v4 >> 2)
  {
    v17 = 0;
    memset(v26, 0, sizeof(v26));
    v13 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v21 = 858;
    v22 = 2048;
    v23 = v4 >> 2;
    v24 = 2048;
    v25 = v5;
    _os_log_send_and_compose_impl(v14, &v17, v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 872))
  {
    v6 = a1 + 880;
  }

  else
  {
    v6 = *(a1 + 888);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 896);
  ++*(a1 + 904);
  v8 = v7 + 40 * (v4 & 3);
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(v8 + 8) = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v8 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v10 = *(a2 + 24);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 24) = v10;
  v11 = *(a1 + 896);
  if (!v11)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 856, v11 - 1);
}

unint64_t re::RealityDataPipe::tryGetSceneName(re::RealityDataPipe *this)
{
  if (*(this + 112))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 856, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSceneNameArray(re::RealityDataPipe *this)
{
  if (*(this + 112))
  {
    return this + 856;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addMeshSceneCollection(uint64_t a1, uint64_t a2)
{
  v4 = re::BucketArray<re::MeshSceneCollection,4ul>::addUninitialized(a1 + 912);
  *(v4 + 32) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  v6 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v4 + 16);
  *(v4 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v4 + 32);
  *(v4 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v4 + 24);
  v9 = *(a1 + 952);
  if (v9)
  {

    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 912, v9 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

unint64_t re::RealityDataPipe::tryGetMeshSceneCollection(re::RealityDataPipe *this)
{
  if (*(this + 119))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 912, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMeshSceneCollectionArray(re::RealityDataPipe *this)
{
  if (*(this + 119))
  {
    return this + 912;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addMeshSceneCollection(uint64_t a1, uint64_t *a2)
{
  v4 = re::BucketArray<re::MeshSceneCollection,4ul>::addUninitialized(a1 + 912);
  re::DynamicArray<re::MeshScene>::DynamicArray(v4, a2);
  v6 = *(a1 + 952);
  if (v6)
  {

    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 912, v6 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

unint64_t re::RealityDataPipe::addCameraViewArray(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1008);
  v5 = *(a1 + 976);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 968), (v4 + 4) >> 2);
    v5 = *(a1 + 976);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 984))
  {
    v6 = a1 + 992;
  }

  else
  {
    v6 = *(a1 + 1000);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1008);
  ++*(a1 + 1016);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1008);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 968, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetCameraViewArray(re::RealityDataPipe *this)
{
  if (*(this + 126))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 968, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetCameraViewArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 126))
  {
    return this + 968;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addCameraMultiViewArray(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1064);
  v5 = *(a1 + 1032);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1024), (v4 + 4) >> 2);
    v5 = *(a1 + 1032);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1040))
  {
    v6 = a1 + 1048;
  }

  else
  {
    v6 = *(a1 + 1056);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1064);
  ++*(a1 + 1072);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1064);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1024, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetCameraMultiViewArray(re::RealityDataPipe *this)
{
  if (*(this + 133))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1024, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetCameraMultiViewArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 133))
  {
    return this + 1024;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addEmbeddedStereoContentCameraViewArray(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1120);
  v5 = *(a1 + 1088);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1080), (v4 + 4) >> 2);
    v5 = *(a1 + 1088);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1096))
  {
    v6 = a1 + 1104;
  }

  else
  {
    v6 = *(a1 + 1112);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1120);
  ++*(a1 + 1128);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1120);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1080, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetEmbeddedStereoContentCameraViewArray(re::RealityDataPipe *this)
{
  if (*(this + 140))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1080, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetEmbeddedStereoContentCameraViewArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 140))
  {
    return this + 1080;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addEmbeddedStereoContentCameraMultiViewArray(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1176);
  v5 = *(a1 + 1144);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1136), (v4 + 4) >> 2);
    v5 = *(a1 + 1144);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1152))
  {
    v6 = a1 + 1160;
  }

  else
  {
    v6 = *(a1 + 1168);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1176);
  ++*(a1 + 1184);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1176);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1136, v12 - 1);
}