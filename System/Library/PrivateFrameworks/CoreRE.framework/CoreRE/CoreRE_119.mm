uint64_t re::ecs2::CameraViewDescriptorsHelper::buildCameraViews<re::ecs2::OrthographicCameraComponent>(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, re::Allocator *a5, uint64_t a6, unint64_t a7)
{
  v7 = a6;
  v8 = a2;
  v96 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v7 = a2[2];
  }

  if (a2[27])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = (v8[29] + 960 * v9);
      v12 = v11[1];
      if (v12)
      {
        v13 = atomic_load((v12 + 896));
        if (v13 != 2)
        {
          re::AssetHandle::loadAsync((v8[29] + 960 * v9));
          v10 = 0;
        }
      }

      if (v11[116])
      {
        v14 = 0;
        while (2)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = v11[116];
            if (v17 <= v14)
            {
              v82[0] = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              v8 = MEMORY[0x1E69E9C10];
              *v93 = 136315906;
              *&v93[4] = "operator[]";
              *&v93[12] = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v22 = 3;
              }

              else
              {
                v22 = 2;
              }

              *&v93[14] = 797;
              *&v93[18] = 2048;
              *&v93[20] = v14;
              v94 = 2048;
              *v95 = v17;
              _os_log_send_and_compose_impl(v22, v82, &v88, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v65, v66);
              _os_crash_msg();
              __break(1u);
              goto LABEL_23;
            }

            v18 = v16;
            v19 = v11[118] + 136 * v14 + 24 * v15;
            v20 = *(v19 + 40);
            if (v20)
            {
              v21 = atomic_load((v20 + 896));
              if (v21 != 2)
              {
                re::AssetHandle::loadAsync((v19 + 32));
                v10 = 0;
              }
            }

            v16 = 0;
            v15 = 1;
          }

          while ((v18 & 1) != 0);
          if (v11[116] > ++v14)
          {
            continue;
          }

          break;
        }
      }

      ++v9;
    }

    while (v8[27] > v9);
  }

  else
  {
LABEL_23:
    v10 = 1;
  }

  if (v8[37])
  {
    v23 = 0;
    do
    {
      v24 = (v8[39] + 1008 * v23);
      v25 = v24[1];
      if (v25)
      {
        v26 = atomic_load((v25 + 896));
        if (v26 != 2)
        {
          re::AssetHandle::loadAsync((v8[39] + 1008 * v23));
          v10 = 0;
        }
      }

      if (v24[116])
      {
        v27 = 0;
        while (2)
        {
          v28 = 0;
          v29 = 1;
          do
          {
            v30 = v24[116];
            if (v30 <= v27)
            {
              v82[0] = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              v38 = MEMORY[0x1E69E9C10];
              v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v93 = 136315906;
              *&v93[4] = "operator[]";
              *&v93[12] = 1024;
              if (v39)
              {
                v40 = 3;
              }

              else
              {
                v40 = 2;
              }

              *&v93[14] = 797;
              *&v93[18] = 2048;
              *&v93[20] = v27;
              v94 = 2048;
              *v95 = v30;
              _os_log_send_and_compose_impl(v40, v82, &v88, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v65, v66);
              _os_crash_msg();
              __break(1u);
              return 1;
            }

            v31 = v29;
            v32 = v24[118] + 136 * v27 + 24 * v28;
            v33 = *(v32 + 40);
            if (v33)
            {
              v34 = atomic_load((v33 + 896));
              if (v34 != 2)
              {
                re::AssetHandle::loadAsync((v32 + 32));
                v10 = 0;
              }
            }

            v29 = 0;
            v28 = 1;
          }

          while ((v31 & 1) != 0);
          if (v24[116] > ++v27)
          {
            continue;
          }

          break;
        }
      }

      ++v23;
    }

    while (v8[37] > v23);
  }

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  *&v95[2] = 0;
  memset(v93, 0, sizeof(v93));
  v35 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v86 = 0;
  v87 = 0;
  re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(v8, &v87, &v86);
  v85 = 0;
  v82[1] = 0;
  v83 = 0;
  v84 = 0;
  v82[0] = a5;
  re::DynamicArray<re::CameraView>::setCapacity(v82, v87);
  ++v84;
  v81 = 0;
  v78[1] = 0;
  v79 = 0;
  v80 = 0;
  v78[0] = a5;
  re::DynamicArray<re::CameraMultiView>::setCapacity(v78, v86);
  ++v80;
  v77 = 0;
  v75[1] = 0;
  v75[2] = 0;
  v76 = 0;
  v75[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v75, v87);
  ++v76;
  v74 = 0;
  v72[1] = 0;
  v72[2] = 0;
  v73 = 0;
  v72[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v72, v86);
  v36 = 0;
  ++v73;
  if (v35)
  {
    v37 = (v35 + 40);
  }

  else
  {
    v37 = v93;
  }

  *&v88 = v8;
  *&v89 = 0;
  if (!v8[27])
  {
    if (v8[32])
    {
      v36 = 1;
    }

    else
    {
      if (!v8[37])
      {
        v43 = 1;
LABEL_70:
        if ((a3 & 1) == 0)
        {
          re::ecs2::CameraViewDescriptor::CameraViewDescriptor(&v88);
          re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((v8 + 30), &v88);
          if (*(a4 + 44) == 1)
          {
            v50 = v85 + 1552 * v83;
            v51 = *(a1 + 112);
            if (v51)
            {
              v52 = re::DrawingManager::layerAspect(v51, 0, v49);
            }

            else
            {
              v52 = 1.0;
            }

            re::Projection::setAspect((v50 - 1488), *(a4 + 40) != 0, v52);
          }

          re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((v8 + 30));
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v88);
        }

        goto LABEL_82;
      }

      v36 = 2;
    }
  }

  v42 = 0;
  DWORD2(v88) = v36;
  v43 = 1;
  do
  {
    v44 = v42 + 0x20000;
    if (v36 == 1)
    {
      v42 += 0x10000;
    }

    if (v36 == 2)
    {
      v45 = v44;
    }

    else
    {
      v45 = v42;
    }

    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v88);
    v36 = DWORD2(v88);
    v42 = v89;
  }

  while (v88 != v8 || DWORD2(v88) != 3 || v89 != 0);
  v48 = v8[27];
  if (v48 == 1)
  {
    if (!v8[32] && !*(v8[29] + 928))
    {
      ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, 0);
      v55 = v83 ? v85 + 1552 * v83 - 1552 : v81 + 3120 * v79 - 3120;
      if (*(a4 + 44) == 1)
      {
        LODWORD(v54) = *(ViewDescriptor + 212);
        v61 = *(ViewDescriptor + 216);
        v62 = *(a1 + 112);
        v63 = *&v54 / v61;
        if (v62)
        {
          v64 = re::DrawingManager::layerAspect(v62, 0, v54);
        }

        else
        {
          v64 = 1.0;
        }

        re::Projection::setAspect((v55 + 64), *(a4 + 40) != 0, v63 * v64);
      }
    }

    goto LABEL_82;
  }

  if (!v48 && !v8[32])
  {
    goto LABEL_70;
  }

LABEL_82:
  if (v8[37])
  {
    v56 = 0;
    v57 = 960;
    do
    {
      v58 = v8[39];
      v59 = re::RenderFrameBox::get((*(a1 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
      re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((v59 + 4056), v58 + v57);
      ++v56;
      v57 += 1008;
    }

    while (v8[37] > v56);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 5), v82);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 10), v78);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 15), v75);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 20), v72);
  if (v43)
  {
    v41 = 0;
  }

  else
  {
    v41 = 2;
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v72);
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v75);
  re::DynamicArray<re::CameraMultiView>::deinit(v78);
  re::DynamicArray<re::CameraView>::deinit(v82);
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(v93);
  return v41;
}

uint64_t anonymous namespace::buildOneCameraView<re::ecs2::OrthographicCameraComponent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, re::Allocator *a10, re::ecs2::Entity *a11, unint64_t a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v115 = v14;
  v118 = v15;
  v17 = v16;
  v19 = v18;
  v20 = v13;
  v126 = v21;
  v122 = v22;
  v23 = a11;
  v210 = *MEMORY[0x1E69E9840];
  v128 = v12;
  if (!a11)
  {
    v23 = *(v13 + 2);
  }

  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v13, v12);
  v24 = *(ViewDescriptor + 200);
  re::CameraView::CameraView(&v135, a10);
  re::CameraView::CameraView(v129, a10);
  re::CameraView::CameraView(&v132, a10);
  v134 = 2;
  v138 = 0;
  v137 = 0;
  v140 = 0x3F80000000000000;
  v139 = 0;
  v26 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  v27 = re::s_debugSettingsManager;
  if (!re::s_debugSettingsManager)
  {
    v30 = 0;
    goto LABEL_33;
  }

  *&v195 = 0x357E83F318327498;
  *(&v195 + 1) = "overrides:msaasamplecount";
  *v192 = 0;
  v28 = re::DebugSettingsManager::getWithErrorCode<int>(re::s_debugSettingsManager, &v195, v192);
  if (v28)
  {
    v29 = v195;
    if (v195)
    {
      v29 = v195;
      if (v195)
      {
      }
    }

    v30 = 0;
    v119 = v29;
  }

  else
  {
    v119 = *v192;
    v31 = *v192;
    if (v195)
    {
      if (v195)
      {
      }
    }

    v32 = [*(v122 + 26) supportsTextureSampleCount:v31];
    if (v32)
    {
      v30 = 1;
    }

    else
    {
      v33 = *re::graphicsLogObjects(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v195) = 67109120;
        DWORD1(v195) = v119;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "This GPU does not support MSAA sample count of: '%d'", &v195, 8u);
      }

      v30 = 0;
    }
  }

  *&v195 = 0x38BDA0FDF1630EF8;
  *(&v195 + 1) = "overrides:enablemsaa";
  v192[0] = 0;
  v34 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v27, &v195, v192);
  if (!v34)
  {
    v35 = v192[0];
    if (v195)
    {
      if (v195)
      {
      }
    }

    if (v35)
    {
      if (v119 == 1)
      {
        v36 = v30;
      }

      else
      {
        v36 = 0;
      }

      if (v36 != 1)
      {
        goto LABEL_34;
      }

      v37 = *re::graphicsLogObjects(v34);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v195) = 0;
        _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "MSAA is enabled but will have no effect as sample count is overridden to '1'", &v195, 2u);
      }
    }

    v30 = 1;
    LODWORD(v26) = 1;
LABEL_33:
    v119 = v26;
    goto LABEL_34;
  }

  if (v195)
  {
    if (v195)
    {
    }
  }

LABEL_34:
  v38 = v192;
  if (v24)
  {
    v39 = *(v17 + 2);
    if (*(v20 + 22) <= v39 || !re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v20 + 24) + 960 * v39)))
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v118, ViewDescriptor);
      if (!v30)
      {
LABEL_45:
        v43 = ViewDescriptor;
        re::DynamicArray<re::RenderGraphFileProvider>::operator=(v133, v130);
        goto LABEL_55;
      }

LABEL_44:
      v131 = v119;
      v133[34] = v119;
      goto LABEL_45;
    }

    v116 = v19;
    v38 = *(v20 + 12);
    if (v38 <= v39)
    {
      goto LABEL_162;
    }

    v40 = *(v20 + 14) + 3120 * v39;
    v41 = v129;
    v42 = 2;
    v27 = v40;
    do
    {
      re::CameraView::operator=(v41, v27);
      v27 += 194;
      v41 += 1552;
      --v42;
    }

    while (v42);
    v134 = *(v40 + 3104);
    v38 = *(v20 + 22);
    if (v38 > v39)
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v118, (*(v20 + 24) + 960 * v39));
      v19 = v116;
      v38 = v192;
      if (!v30)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_166:
    v127[0] = 0;
    v199 = 0u;
    v198 = 0u;
    v197 = 0u;
    v196 = 0u;
    v195 = 0u;
    v103 = MEMORY[0x1E69E9C10];
    v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v192 = 136315906;
    *&v192[4] = "operator[]";
    *&v192[12] = 1024;
    if (v104)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }

    *&v192[14] = 789;
    *&v192[18] = 2048;
    *&v192[20] = v39;
    v193 = 2048;
    v194 = v38;
    _os_log_send_and_compose_impl(v105, v127, &v195, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v112, v113);
    _os_crash_msg();
    __break(1u);
    goto LABEL_170;
  }

  v38 = *(v19 + 2);
  if (*(v20 + 17) > v38 && re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v20 + 19) + 960 * v38)))
  {
    v27 = *(v20 + 7);
    if (v27 <= v38)
    {
LABEL_170:
      v127[0] = 0;
      v199 = 0u;
      v198 = 0u;
      v197 = 0u;
      v196 = 0u;
      v195 = 0u;
      v106 = MEMORY[0x1E69E9C10];
      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v107)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      *&v192[14] = 789;
      *&v192[18] = 2048;
      *&v192[20] = v38;
      v193 = 2048;
      v194 = v27;
      _os_log_send_and_compose_impl(v108, v127, &v195, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v112, v113);
      _os_crash_msg();
      __break(1u);
LABEL_174:
      v127[0] = 0;
      v199 = 0u;
      v198 = 0u;
      v197 = 0u;
      v196 = 0u;
      v195 = 0u;
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *&v192[14] = 789;
      *&v192[18] = 2048;
      *&v192[20] = v38;
      v193 = 2048;
      v194 = v27;
      _os_log_send_and_compose_impl(v111, v127, &v195, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v112, v113);
      _os_crash_msg();
      __break(1u);
    }

    re::CameraView::operator=(&v135, *(v20 + 9) + 1552 * v38);
    v27 = *(v20 + 17);
    if (v27 <= v38)
    {
      goto LABEL_174;
    }

    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v115, (*(v20 + 19) + 960 * v38));
  }

  else
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v115, ViewDescriptor);
  }

  v38 = v192;
  if (v30)
  {
    v172[22] = v119;
  }

  v43 = ViewDescriptor;
LABEL_55:
  *v192 = v122;
  *&v192[8] = 0;
  *&v192[16] = &v128;
  if (!*(v43 + 200))
  {
    re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v195, v20, v128, v23, a10, 0);
    re::DynamicString::operator=(&v135, &v195);
    if (v195 && (BYTE8(v195) & 1) != 0)
    {
      (*(*v195 + 40))();
    }

    re::ecs2::OrthographicCameraComponent::calculateProjection(v126, &v195, 1.0);
    v176 = v197;
    v177 = v198;
    v178 = v199;
    v175 = v196;
    v174 = v195;
    if (v179)
    {
      v71 = ViewDescriptor;
      if ((v200 & 1) == 0)
      {
        v179 = 0;
        goto LABEL_102;
      }
    }

    else
    {
      v71 = ViewDescriptor;
      if ((v200 & 1) == 0)
      {
        goto LABEL_102;
      }

      v179 = 1;
    }

    v180 = v201;
    v181 = v202;
    v182 = v203;
    v183 = v204;
LABEL_102:
    if (v184)
    {
      if ((v205 & 1) == 0)
      {
        v184 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      if ((v205 & 1) == 0)
      {
        goto LABEL_108;
      }

      v184 = 1;
    }

    v185 = v206;
    v186 = v207;
    v187 = v208;
    v188 = v209;
LABEL_108:
    v189 = *(v71 + 204);
    re::ecs2::OrthographicCameraComponent::calculateProjection(v126, &v195, 1.0);
    v143 = v197;
    v144 = v198;
    v145 = v199;
    v142 = v196;
    v141 = v195;
    if (v146)
    {
      if (v200)
      {
        v147 = v201;
        v148 = v202;
        v149 = v203;
        v150 = v204;
        v72 = 1;
      }

      else
      {
        v72 = 0;
        v146 = 0;
      }
    }

    else if (v200)
    {
      v72 = 1;
      v146 = 1;
      v147 = v201;
      v148 = v202;
      v149 = v203;
      v150 = v204;
    }

    else
    {
      v72 = 0;
    }

    if (v151)
    {
      if (v205)
      {
        v152 = v206;
        v153 = v207;
        v154 = v208;
        v155 = v209;
        v73 = 1;
      }

      else
      {
        v73 = 0;
        v151 = 0;
      }
    }

    else if (v205)
    {
      v73 = 1;
      v151 = 1;
      v152 = v206;
      v153 = v207;
      v154 = v208;
      v155 = v209;
    }

    else
    {
      v73 = 0;
    }

    v190 = xmmword_1E3063230;
    v158 = v143;
    v159 = v144;
    v160 = v145;
    v157 = v142;
    v156 = v141;
    if (v161)
    {
      if ((v72 & 1) == 0)
      {
        v161 = 0;
        goto LABEL_128;
      }
    }

    else
    {
      if ((v72 & 1) == 0)
      {
        goto LABEL_128;
      }

      v161 = 1;
    }

    v162 = v147;
    v163 = v148;
    v164 = v149;
    v165 = v150;
LABEL_128:
    if (v166)
    {
      if ((v73 & 1) == 0)
      {
        v166 = 0;
LABEL_134:
        v173 = v128;
        re::DynamicArray<re::CameraView>::add(v19, &v135);
        v75 = ViewDescriptor;
        if (!*(ViewDescriptor + 116))
        {
          goto LABEL_155;
        }

        v39 = 0;
        v76 = 0;
        v77 = *(v19 + 4) + 1552 * *(v19 + 2);
        v124 = (v77 - 1552);
        v78 = (v77 - 384);
        v79 = (v77 - 1488);
        v80 = (v77 - 1216);
        v121 = (v77 - 851);
        v27 = &selRef_childNodes;
        while (1)
        {
          v81 = *(v75 + 53);
          v82 = *(v75 + 54);
          v83 = *(v75 + 118);
          v84 = v83 + v39;
          if (*(v83 + v39 + 40))
          {
            v85 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v84 + 32));
            if (*(v85 + 120))
            {
LABEL_161:
              std::__throw_bad_variant_access[abi:nn200100]();
LABEL_162:
              v127[0] = 0;
              v199 = 0u;
              v198 = 0u;
              v197 = 0u;
              v196 = 0u;
              v195 = 0u;
              v100 = MEMORY[0x1E69E9C10];
              v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v192 = 136315906;
              *&v192[4] = "operator[]";
              *&v192[12] = 1024;
              if (v101)
              {
                v102 = 3;
              }

              else
              {
                v102 = 2;
              }

              *&v192[14] = 789;
              *&v192[18] = 2048;
              *&v192[20] = v39;
              v193 = 2048;
              v194 = v38;
              _os_log_send_and_compose_impl(v102, v127, &v195, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v112, v113);
              _os_crash_msg();
              __break(1u);
              goto LABEL_166;
            }

            v86 = *(v85 + 112);
            v87 = [v86 width];
            *&v74 = [v86 height];
            v88 = v87 / *&v74;
            if (v86)
            {
            }
          }

          else
          {
            v89 = *(v84 + 80);
            if (v89 == -1)
            {
              v91 = v83 + v39;
              v92 = *(v83 + v39 + 88);
              if (v92)
              {
                v93 = [v92 width];
                v94 = *(v91 + 88);
                goto LABEL_147;
              }

              v95 = *(v91 + 104);
              if (v95)
              {
                v93 = [v95 width];
                v94 = *(v91 + 104);
LABEL_147:
                v96 = [v94 height];
                re::ecs2::OrthographicCameraComponent::localEyePose(v126, *v78, &v195);
                v38 = a12;
                if (a12 && !*(a12 + 24))
                {
                  re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v195, *v78, v124);
                  *v121 = *(a12 + 28);
                }

                *&v74 = v93;
                v88 = v93 / v96;
                goto LABEL_152;
              }

LABEL_151:
              v88 = 1.0;
              goto LABEL_152;
            }

            v90 = *(v122 + 14);
            if (!v90)
            {
              goto LABEL_151;
            }

            *&v74 = re::DrawingManager::layerAspect(v90, v89, v74);
            v88 = *&v74;
          }

LABEL_152:
          if (*(v126 + 44) == 1)
          {
            v97 = (v81 / v82) * v88;
            re::Projection::setAspect(v79, *(v126 + 40) != 0, v97);
            *&v74 = re::Projection::setAspect(v80, *(v126 + 40) != 0, v97);
          }

          ++v76;
          v75 = ViewDescriptor;
          v39 += 136;
          if (*(ViewDescriptor + 116) <= v76)
          {
            goto LABEL_155;
          }
        }
      }
    }

    else
    {
      if ((v73 & 1) == 0)
      {
        goto LABEL_134;
      }

      v166 = 1;
    }

    v167 = v152;
    v168 = v153;
    v169 = v154;
    v170 = v155;
    goto LABEL_134;
  }

  re::DynamicArray<re::CameraMultiView>::add(v17, v129);
  v27 = (*(v17 + 4) + 3120 * *(v17 + 2));
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v195, v20, v128, v23, a10, 0);
  v114 = (v27 - 390);
  re::DynamicString::operator=((v27 - 390), &v195);
  if (v195 && (BYTE8(v195) & 1) != 0)
  {
    (*(*v195 + 40))();
  }

  v113 = ViewDescriptor + 204;
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v195, v20, v128, v23, a10, 1);
  re::DynamicString::operator=((v27 - 196), &v195);
  if (v195 && (BYTE8(v195) & 1) != 0)
  {
    (*(*v195 + 40))();
  }

  v44 = ViewDescriptor;
  v45 = 0;
  v46 = *(ViewDescriptor + 116);
  v47 = 1;
  do
  {
    v48 = v47;
    if (!v46)
    {
      goto LABEL_91;
    }

    v117 = v47;
    v38 = 0;
    v49 = 8 * v45;
    v50 = v114 + 1552 * v45;
    v51 = 4 * v45 + 80;
    v123 = (24 * v45);
    v39 = 32;
    v52 = &v113[16 * v45];
    do
    {
      v53 = *(v52 + 2);
      v54 = *(v52 + 3);
      v55 = *(v44 + 118);
      re::AssetHandle::AssetHandle(v127, (v123 + v55 + v39));
      if (*(v27 - 16) == 1)
      {
        re::AssetHandle::operator=(v127, (v55 + v39));
      }

      v57 = v53 / v54;
      if (v127[1])
      {
        v58 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v127);
        if (*(v58 + 120))
        {
          goto LABEL_161;
        }

        v59 = *(v58 + 112);
        v60 = [v59 width];
        v61 = v60 / [v59 height];
        v62 = [v59 arrayLength];
        if (v59)
        {
        }

LABEL_83:
        if (*(v27 - 16) == 1 && v62 >= 2)
        {
          *(v27 - 15) = 1;
          v57 = *(v52 + 2) / *(v52 + 3);
          if (([*(v122 + 26) supportsTexture2DMultisampleArray] & 1) == 0)
          {
            *(v50 + 712) = 1;
          }
        }

        goto LABEL_87;
      }

      v63 = *(v55 + v51);
      if (v63 == -1)
      {
        v65 = v55 + v49;
        v66 = *(v65 + 88);
        if (v66)
        {
          v120 = [v66 width];
          v67 = [*(v65 + 88) height];
          v68 = *(v65 + 88);
        }

        else
        {
          v69 = *(v65 + 104);
          if (!v69)
          {
            goto LABEL_89;
          }

          v120 = [v69 width];
          v67 = [*(v65 + 104) height];
          v68 = *(v65 + 104);
        }

        v62 = [v68 arrayLength];
        re::ecs2::OrthographicCameraComponent::localEyePose(v126, *(v50 + 1168), &v195);
        if (a12 && !*(a12 + 24))
        {
          re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v195, *(v50 + 1168), v50);
          *(v50 + 701) = *(a12 + 28);
        }

        v61 = v120 / v67;
        goto LABEL_83;
      }

      v64 = *(v122 + 14);
      if (v64)
      {
        v61 = re::DrawingManager::layerAspect(v64, v63, v56);
      }

      else
      {
        v61 = 1.0;
      }

LABEL_87:
      if (*(v126 + 44) == 1)
      {
        v70 = v61 * v57;
        re::Projection::setAspect((v50 + 64), *(v126 + 40) != 0, v70);
        re::Projection::setAspect((v50 + 336), *(v126 + 40) != 0, v70);
      }

LABEL_89:
      re::AssetHandle::~AssetHandle(v127);
      ++v38;
      v44 = ViewDescriptor;
      v46 = *(ViewDescriptor + 116);
      v49 += 136;
      v51 += 136;
      v39 += 136;
    }

    while (v46 > v38);
    v48 = v117;
LABEL_91:
    v47 = 0;
    v45 = 1;
  }

  while ((v48 & 1) != 0);
LABEL_155:
  v98 = 3104;
  do
  {
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v129[v98 - 368]);
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v129[v98 - 928]);
    re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v129[v98 - 976]);
    re::DynamicString::deinit(&v129[v98 - 1552]);
    v98 -= 1552;
  }

  while (v98);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v191);
  re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v172);
  re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v171);
  if (v135 && (v136 & 1) != 0)
  {
    (*(*v135 + 40))();
  }

  return HIDWORD(v112);
}

uint64_t re::ecs2::CameraViewDescriptorsHelper::buildCameraViews<re::ecs2::CustomMatrixCameraComponent>(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, re::Allocator *a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v8 = a2;
  v96 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v7 = a2[2];
  }

  if (a2[27])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = (v8[29] + 960 * v9);
      v12 = v11[1];
      if (v12)
      {
        v13 = atomic_load((v12 + 896));
        if (v13 != 2)
        {
          re::AssetHandle::loadAsync((v8[29] + 960 * v9));
          v10 = 0;
        }
      }

      if (v11[116])
      {
        v14 = 0;
        while (2)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = v11[116];
            if (v17 <= v14)
            {
              v82[0] = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              v8 = MEMORY[0x1E69E9C10];
              *v93 = 136315906;
              *&v93[4] = "operator[]";
              *&v93[12] = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v22 = 3;
              }

              else
              {
                v22 = 2;
              }

              *&v93[14] = 797;
              *&v93[18] = 2048;
              *&v93[20] = v14;
              v94 = 2048;
              *v95 = v17;
              _os_log_send_and_compose_impl(v22, v82, &v88, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v65, v66);
              _os_crash_msg();
              __break(1u);
              goto LABEL_23;
            }

            v18 = v16;
            v19 = v11[118] + 136 * v14 + 24 * v15;
            v20 = *(v19 + 40);
            if (v20)
            {
              v21 = atomic_load((v20 + 896));
              if (v21 != 2)
              {
                re::AssetHandle::loadAsync((v19 + 32));
                v10 = 0;
              }
            }

            v16 = 0;
            v15 = 1;
          }

          while ((v18 & 1) != 0);
          if (v11[116] > ++v14)
          {
            continue;
          }

          break;
        }
      }

      ++v9;
    }

    while (v8[27] > v9);
  }

  else
  {
LABEL_23:
    v10 = 1;
  }

  if (v8[37])
  {
    v23 = 0;
    do
    {
      v24 = (v8[39] + 1008 * v23);
      v25 = v24[1];
      if (v25)
      {
        v26 = atomic_load((v25 + 896));
        if (v26 != 2)
        {
          re::AssetHandle::loadAsync((v8[39] + 1008 * v23));
          v10 = 0;
        }
      }

      if (v24[116])
      {
        v27 = 0;
        while (2)
        {
          v28 = 0;
          v29 = 1;
          do
          {
            v30 = v24[116];
            if (v30 <= v27)
            {
              v82[0] = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              v38 = MEMORY[0x1E69E9C10];
              v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v93 = 136315906;
              *&v93[4] = "operator[]";
              *&v93[12] = 1024;
              if (v39)
              {
                v40 = 3;
              }

              else
              {
                v40 = 2;
              }

              *&v93[14] = 797;
              *&v93[18] = 2048;
              *&v93[20] = v27;
              v94 = 2048;
              *v95 = v30;
              _os_log_send_and_compose_impl(v40, v82, &v88, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v65, v66);
              _os_crash_msg();
              __break(1u);
              return 1;
            }

            v31 = v29;
            v32 = v24[118] + 136 * v27 + 24 * v28;
            v33 = *(v32 + 40);
            if (v33)
            {
              v34 = atomic_load((v33 + 896));
              if (v34 != 2)
              {
                re::AssetHandle::loadAsync((v32 + 32));
                v10 = 0;
              }
            }

            v29 = 0;
            v28 = 1;
          }

          while ((v31 & 1) != 0);
          if (v24[116] > ++v27)
          {
            continue;
          }

          break;
        }
      }

      ++v23;
    }

    while (v8[37] > v23);
  }

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  *&v95[2] = 0;
  memset(v93, 0, sizeof(v93));
  v35 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v86 = 0;
  v87 = 0;
  re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(v8, &v87, &v86);
  v85 = 0;
  v82[1] = 0;
  v83 = 0;
  v84 = 0;
  v82[0] = a5;
  re::DynamicArray<re::CameraView>::setCapacity(v82, v87);
  ++v84;
  v81 = 0;
  v78[1] = 0;
  v79 = 0;
  v80 = 0;
  v78[0] = a5;
  re::DynamicArray<re::CameraMultiView>::setCapacity(v78, v86);
  ++v80;
  v77 = 0;
  v75[1] = 0;
  v75[2] = 0;
  v76 = 0;
  v75[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v75, v87);
  ++v76;
  v74 = 0;
  v72[1] = 0;
  v72[2] = 0;
  v73 = 0;
  v72[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v72, v86);
  v36 = 0;
  ++v73;
  if (v35)
  {
    v37 = (v35 + 40);
  }

  else
  {
    v37 = v93;
  }

  *&v88 = v8;
  *&v89 = 0;
  if (!v8[27])
  {
    if (v8[32])
    {
      v36 = 1;
    }

    else
    {
      if (!v8[37])
      {
        v43 = 1;
LABEL_70:
        if ((a3 & 1) == 0)
        {
          re::ecs2::CameraViewDescriptor::CameraViewDescriptor(&v88);
          re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((v8 + 30), &v88);
          if (*(a4 + 32) == 1)
          {
            v50 = v85 + 1552 * v83;
            v51 = *(a1 + 112);
            if (v51)
            {
              v52 = re::DrawingManager::layerAspect(v51, 0, v49);
            }

            else
            {
              v52 = 1.0;
            }

            re::Projection::setAspect((v50 - 1488), *(a4 + 28) != 0, v52);
          }

          re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((v8 + 30));
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v88);
        }

        goto LABEL_82;
      }

      v36 = 2;
    }
  }

  v42 = 0;
  DWORD2(v88) = v36;
  v43 = 1;
  do
  {
    v44 = v42 + 0x20000;
    if (v36 == 1)
    {
      v42 += 0x10000;
    }

    if (v36 == 2)
    {
      v45 = v44;
    }

    else
    {
      v45 = v42;
    }

    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v88);
    v36 = DWORD2(v88);
    v42 = v89;
  }

  while (v88 != v8 || DWORD2(v88) != 3 || v89 != 0);
  v48 = v8[27];
  if (v48 == 1)
  {
    if (!v8[32] && !*(v8[29] + 928))
    {
      ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, 0);
      v55 = v83 ? v85 + 1552 * v83 - 1552 : v81 + 3120 * v79 - 3120;
      if (*(a4 + 32) == 1)
      {
        LODWORD(v54) = *(ViewDescriptor + 212);
        v61 = *(ViewDescriptor + 216);
        v62 = *(a1 + 112);
        v63 = *&v54 / v61;
        if (v62)
        {
          v64 = re::DrawingManager::layerAspect(v62, 0, v54);
        }

        else
        {
          v64 = 1.0;
        }

        re::Projection::setAspect((v55 + 64), *(a4 + 28) != 0, v63 * v64);
      }
    }

    goto LABEL_82;
  }

  if (!v48 && !v8[32])
  {
    goto LABEL_70;
  }

LABEL_82:
  if (v8[37])
  {
    v56 = 0;
    v57 = 960;
    do
    {
      v58 = v8[39];
      v59 = re::RenderFrameBox::get((*(a1 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
      re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((v59 + 4056), v58 + v57);
      ++v56;
      v57 += 1008;
    }

    while (v8[37] > v56);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 5), v82);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 10), v78);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 15), v75);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 20), v72);
  if (v43)
  {
    v41 = 0;
  }

  else
  {
    v41 = 2;
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v72);
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v75);
  re::DynamicArray<re::CameraMultiView>::deinit(v78);
  re::DynamicArray<re::CameraView>::deinit(v82);
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(v93);
  return v41;
}

uint64_t anonymous namespace::buildOneCameraView<re::ecs2::CustomMatrixCameraComponent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, re::Allocator *a10, re::ecs2::Entity *a11, uint64_t a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v124 = v14;
  v126 = v15;
  v17 = v16;
  v19 = v18;
  v20 = v13;
  v133 = v21;
  v131 = v22;
  v23 = a11;
  v217 = *MEMORY[0x1E69E9840];
  v135 = v12;
  if (!a11)
  {
    v23 = *(v13 + 2);
  }

  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v13, v12);
  v24 = *(ViewDescriptor + 200);
  re::CameraView::CameraView(&v142, a10);
  re::CameraView::CameraView(v136, a10);
  re::CameraView::CameraView(&v139, a10);
  v141 = 2;
  v145 = 0;
  v144 = 0;
  v147 = 0x3F80000000000000;
  v146 = 0;
  v26 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  v27 = re::s_debugSettingsManager;
  if (!re::s_debugSettingsManager)
  {
    v30 = 0;
LABEL_34:
    v130 = v26;
    goto LABEL_35;
  }

  v202.i64[0] = 0x357E83F318327498;
  v202.i64[1] = "overrides:msaasamplecount";
  *v199 = 0;
  v28 = re::DebugSettingsManager::getWithErrorCode<int>(re::s_debugSettingsManager, &v202, v199);
  if (v28)
  {
    v29 = v202.i32[0];
    if (v202.i8[0])
    {
      v29 = v202.i32[0];
      if (v202.i8[0])
      {
      }
    }

    v30 = 0;
    v130 = v29;
  }

  else
  {
    v130 = *v199;
    v31 = *v199;
    if (v202.i8[0])
    {
      if (v202.i8[0])
      {
      }
    }

    v32 = [*(v131 + 208) supportsTextureSampleCount:v31];
    if (v32)
    {
      v30 = 1;
    }

    else
    {
      v33 = *re::graphicsLogObjects(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v202.i32[0] = 67109120;
        v202.i32[1] = v130;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "This GPU does not support MSAA sample count of: '%d'", &v202, 8u);
      }

      v30 = 0;
    }
  }

  v202.i64[0] = 0x38BDA0FDF1630EF8;
  v202.i64[1] = "overrides:enablemsaa";
  v199[0] = 0;
  v34 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v27, &v202, v199);
  if (v34)
  {
    if (v202.i8[0])
    {
      if (v202.i8[0])
      {
      }
    }

    goto LABEL_35;
  }

  v35 = v199[0];
  if (v202.i8[0])
  {
    if (v202.i8[0])
    {
    }
  }

  if (!v35)
  {
    v30 = 1;
    LODWORD(v26) = 1;
    goto LABEL_34;
  }

  if (v130 == 1)
  {
    v36 = v30;
  }

  else
  {
    v36 = 0;
  }

  if (v36 == 1)
  {
    v37 = *re::graphicsLogObjects(v34);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v202.i16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "MSAA is enabled but will have no effect as sample count is overridden to '1'", &v202, 2u);
    }

    v30 = 1;
    v130 = 1;
  }

LABEL_35:
  v38 = v199;
  if (v24)
  {
    v39 = *(v17 + 2);
    if (*(v20 + 22) <= v39 || !re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v20 + 24) + 960 * v39)))
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v126, ViewDescriptor);
      goto LABEL_44;
    }

    v125 = v19;
    v40 = *(v20 + 12);
    if (v40 <= v39)
    {
      goto LABEL_175;
    }

    v41 = *(v20 + 14) + 3120 * v39;
    v42 = v136;
    v43 = 2;
    v38 = v41;
    do
    {
      re::CameraView::operator=(v42, v38);
      v38 += 194;
      v42 += 1552;
      --v43;
    }

    while (v43);
    v141 = *(v41 + 3104);
    v40 = *(v20 + 22);
    if (v40 > v39)
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v126, (*(v20 + 24) + 960 * v39));
      v19 = v125;
LABEL_44:
      if (v30)
      {
        v138 = v130;
        v140[34] = v130;
      }

      v44 = ViewDescriptor;
      re::DynamicArray<re::RenderGraphFileProvider>::operator=(v140, v137);
      goto LABEL_56;
    }

LABEL_179:
    v134[0] = 0;
    v206 = 0u;
    v205 = 0u;
    v204 = 0u;
    v203 = 0u;
    v202 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v39;
    v200 = 2048;
    v201 = v40;
    _os_log_send_and_compose_impl(v113, v134, &v202, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v199, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
    goto LABEL_183;
  }

  v39 = *(v19 + 2);
  if (*(v20 + 17) > v39 && re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v20 + 19) + 960 * v39)))
  {
    v40 = *(v20 + 7);
    if (v40 <= v39)
    {
LABEL_183:
      v134[0] = 0;
      v206 = 0u;
      v205 = 0u;
      v204 = 0u;
      v203 = 0u;
      v202 = 0u;
      v114 = MEMORY[0x1E69E9C10];
      v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v199 = 136315906;
      *(v38 + 4) = "operator[]";
      *&v199[12] = 1024;
      if (v115)
      {
        v116 = 3;
      }

      else
      {
        v116 = 2;
      }

      *(v38 + 14) = 789;
      *&v199[18] = 2048;
      *(v38 + 20) = v39;
      v200 = 2048;
      *(v38 + 30) = v40;
      _os_log_send_and_compose_impl(v116, v134, &v202, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v199, 38, v120, v121);
      _os_crash_msg();
      __break(1u);
LABEL_187:
      v134[0] = 0;
      v206 = 0u;
      v205 = 0u;
      v204 = 0u;
      v203 = 0u;
      v202 = 0u;
      v117 = MEMORY[0x1E69E9C10];
      v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v199 = 136315906;
      *(v38 + 4) = "operator[]";
      *&v199[12] = 1024;
      if (v118)
      {
        v119 = 3;
      }

      else
      {
        v119 = 2;
      }

      *(v38 + 14) = 789;
      *&v199[18] = 2048;
      *(v38 + 20) = v39;
      v200 = 2048;
      *(v38 + 30) = v40;
      _os_log_send_and_compose_impl(v119, v134, &v202, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v199, 38, v120, v121);
      _os_crash_msg();
      __break(1u);
LABEL_191:
      re::internal::assertLog(4, v70, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "buildOneCameraView", 693);
      _os_crash("assertion failure: (!Unreachable code) ");
      __break(1u);
LABEL_192:
      re::internal::assertLog(4, v70, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "buildOneCameraView", 724);
      _os_crash("assertion failure: (!Unreachable code) ");
      __break(1u);
    }

    re::CameraView::operator=(&v142, *(v20 + 9) + 1552 * v39);
    v40 = *(v20 + 17);
    if (v40 <= v39)
    {
      goto LABEL_187;
    }

    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v124, (*(v20 + 19) + 960 * v39));
  }

  else
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v124, ViewDescriptor);
  }

  if (v30)
  {
    v179[22] = v130;
  }

  v44 = ViewDescriptor;
LABEL_56:
  *v199 = v131;
  *&v199[8] = 0;
  *&v199[16] = &v135;
  if (!*(v44 + 200))
  {
    re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v202, v20, v135, v23, a10, 0);
    re::DynamicString::operator=(&v142, &v202);
    if (v202.i64[0] && (v202.i8[8] & 1) != 0)
    {
      (*(*v202.i64[0] + 40))();
    }

    re::ecs2::CustomMatrixCameraComponent::calculateProjection(v133, 0, &v202);
    v183 = v204;
    v184 = v205;
    v185 = v206;
    v182 = v203;
    v181 = v202;
    if (v186)
    {
      v79 = ViewDescriptor;
      if ((v207 & 1) == 0)
      {
        v186 = 0;
        goto LABEL_115;
      }
    }

    else
    {
      v79 = ViewDescriptor;
      if ((v207 & 1) == 0)
      {
        goto LABEL_115;
      }

      v186 = 1;
    }

    v187 = v208;
    v188 = v209;
    v189 = v210;
    v190 = v211;
LABEL_115:
    if (v191)
    {
      if ((v212 & 1) == 0)
      {
        v191 = 0;
        goto LABEL_121;
      }
    }

    else
    {
      if ((v212 & 1) == 0)
      {
        goto LABEL_121;
      }

      v191 = 1;
    }

    v192 = v213;
    v193 = v214;
    v194 = v215;
    v195 = v216;
LABEL_121:
    v196 = *(v79 + 204);
    re::ecs2::CustomMatrixCameraComponent::calculateProjection(v133, 0, &v202);
    v150 = v204;
    v151 = v205;
    v152 = v206;
    v149 = v203;
    v148 = v202;
    if (v153)
    {
      if (v207)
      {
        v154 = v208;
        v155 = v209;
        v156 = v210;
        v157 = v211;
        v80 = 1;
      }

      else
      {
        v80 = 0;
        v153 = 0;
      }
    }

    else if (v207)
    {
      v80 = 1;
      v153 = 1;
      v154 = v208;
      v155 = v209;
      v156 = v210;
      v157 = v211;
    }

    else
    {
      v80 = 0;
    }

    if (v158)
    {
      if (v212)
      {
        v159 = v213;
        v160 = v214;
        v161 = v215;
        v162 = v216;
        v81 = 1;
      }

      else
      {
        v81 = 0;
        v158 = 0;
      }
    }

    else if (v212)
    {
      v81 = 1;
      v158 = 1;
      v159 = v213;
      v160 = v214;
      v161 = v215;
      v162 = v216;
    }

    else
    {
      v81 = 0;
    }

    v197 = xmmword_1E3063230;
    v165 = v150;
    v166 = v151;
    v167 = v152;
    v164 = v149;
    v163 = v148;
    if (v168)
    {
      if ((v80 & 1) == 0)
      {
        v168 = 0;
        goto LABEL_141;
      }
    }

    else
    {
      if ((v80 & 1) == 0)
      {
        goto LABEL_141;
      }

      v168 = 1;
    }

    v169 = v154;
    v170 = v155;
    v171 = v156;
    v172 = v157;
LABEL_141:
    if (v173)
    {
      if ((v81 & 1) == 0)
      {
        v173 = 0;
LABEL_147:
        v180 = v135;
        re::DynamicArray<re::CameraView>::add(v19, &v142);
        v83 = ViewDescriptor;
        if (!*(ViewDescriptor + 928))
        {
          goto LABEL_168;
        }

        v84 = 0;
        v39 = 0;
        v85 = *(v19 + 4) + 1552 * *(v19 + 2);
        v86 = (v85 - 384);
        v87 = (v85 - 1488);
        v88 = (v85 - 1216);
        v128 = (v85 - 851);
        v129 = (v85 - 1552);
        v40 = &selRef_setOwnerWithIdentity_;
        v38 = &selRef_childNodes;
        while (1)
        {
          v89 = *(v83 + 212);
          v90 = *(v83 + 216);
          v91 = *(v83 + 944);
          v92 = v91 + v84;
          if (*(v91 + v84 + 40))
          {
            v93 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v92 + 32));
            if (*(v93 + 120))
            {
LABEL_174:
              std::__throw_bad_variant_access[abi:nn200100]();
LABEL_175:
              v134[0] = 0;
              v206 = 0u;
              v205 = 0u;
              v204 = 0u;
              v203 = 0u;
              v202 = 0u;
              v108 = MEMORY[0x1E69E9C10];
              v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v199 = 136315906;
              *(v38 + 4) = "operator[]";
              *&v199[12] = 1024;
              if (v109)
              {
                v110 = 3;
              }

              else
              {
                v110 = 2;
              }

              *(v38 + 14) = 789;
              *&v199[18] = 2048;
              *(v38 + 20) = v39;
              v200 = 2048;
              *(v38 + 30) = v40;
              _os_log_send_and_compose_impl(v110, v134, &v202, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v199, 38, v120, v121);
              _os_crash_msg();
              __break(1u);
              goto LABEL_179;
            }

            v94 = *(v93 + 112);
            v95 = [v94 width];
            *&v82 = [v94 height];
            v96 = v95 / *&v82;
            if (v94)
            {
            }
          }

          else
          {
            v97 = *(v92 + 80);
            if (v97 == -1)
            {
              v99 = v91 + v84;
              v100 = *(v91 + v84 + 88);
              if (v100)
              {
                v101 = [v100 width];
                v102 = *(v99 + 88);
                goto LABEL_160;
              }

              v103 = *(v99 + 104);
              if (v103)
              {
                v101 = [v103 width];
                v102 = *(v99 + 104);
LABEL_160:
                v104 = [v102 height];
                re::ecs2::CustomMatrixCameraComponent::localEyePose(v133, *v86, &v202);
                if (a12 && !*(a12 + 24))
                {
                  re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v202, *v86, v129);
                  *v128 = *(a12 + 28);
                }

                *&v82 = v101;
                v96 = v101 / v104;
                goto LABEL_165;
              }

LABEL_164:
              v96 = 1.0;
              goto LABEL_165;
            }

            v98 = *(v131 + 112);
            if (!v98)
            {
              goto LABEL_164;
            }

            *&v82 = re::DrawingManager::layerAspect(v98, v97, v82);
            v96 = *&v82;
          }

LABEL_165:
          if (*(v133 + 32) == 1)
          {
            v105 = (v89 / v90) * v96;
            re::Projection::setAspect(v87, *(v133 + 28) != 0, v105);
            *&v82 = re::Projection::setAspect(v88, *(v133 + 28) != 0, v105);
          }

          ++v39;
          v83 = ViewDescriptor;
          v84 += 136;
          if (*(ViewDescriptor + 928) <= v39)
          {
            goto LABEL_168;
          }
        }
      }
    }

    else
    {
      if ((v81 & 1) == 0)
      {
        goto LABEL_147;
      }

      v173 = 1;
    }

    v174 = v159;
    v175 = v160;
    v176 = v161;
    v177 = v162;
    goto LABEL_147;
  }

  re::DynamicArray<re::CameraMultiView>::add(v17, v136);
  v45 = *(v17 + 4) + 3120 * *(v17 + 2);
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v202, v20, v135, v23, a10, 0);
  v123 = v45 - 3120;
  re::DynamicString::operator=((v45 - 3120), &v202);
  if (v202.i64[0] && (v202.i8[8] & 1) != 0)
  {
    (*(*v202.i64[0] + 40))();
  }

  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v202, v20, v135, v23, a10, 1);
  re::DynamicString::operator=((v45 - 1568), &v202);
  if (v202.i64[0] && (v202.i8[8] & 1) != 0)
  {
    (*(*v202.i64[0] + 40))();
  }

  v46 = ViewDescriptor;
  v47 = 0;
  v48 = *(ViewDescriptor + 928);
  v49 = 1;
  do
  {
    v50 = v49;
    if (!v48)
    {
      goto LABEL_104;
    }

    v127 = v49;
    v38 = 0;
    v40 = (8 * v47);
    v51 = v123 + 1552 * v47;
    v52 = 4 * v47 + 80;
    v39 = 24 * v47;
    v53 = 32;
    v54 = ViewDescriptor + 204 + 16 * v47;
    do
    {
      v55 = *(v54 + 8);
      v56 = *(v54 + 12);
      v57 = *(v46 + 944);
      re::AssetHandle::AssetHandle(v134, (v57 + v53 + v39));
      if (*(v45 - 16) == 1)
      {
        re::AssetHandle::operator=(v134, (v57 + v53));
      }

      v59 = v55 / v56;
      if (v134[1])
      {
        v60 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v134);
        if (*(v60 + 120))
        {
          goto LABEL_174;
        }

        v61 = *(v60 + 112);
        v62 = [v61 width];
        v63 = v62 / [v61 height];
        v64 = [v61 arrayLength];
        if (v61)
        {
        }

        goto LABEL_72;
      }

      v65 = *(v57 + v52);
      if (v65 == -1)
      {
        v67 = (v40 + v57);
        v68 = *(v40 + v57 + 88);
        if (v68)
        {
          v69 = [v68 width];
          v63 = v69 / [v67[11] height];
          v64 = [v67[11] arrayLength];
          v70 = *(v51 + 1168);
          v71 = (v133 + 240);
          if (v70 == 1)
          {
            goto LABEL_83;
          }

          if (v70 == 2)
          {
            v71 = (v133 + 241);
LABEL_83:
            v72 = *v71;
            if (v72 != 1)
            {
              if (v72)
              {
                goto LABEL_191;
              }

              goto LABEL_97;
            }

LABEL_100:
            re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(v133, v70, &v202);
            v78 = a12;
            if (a12 && !*(a12 + 24))
            {
              re::RenderFrameWorkloadPatchCamera::trackWorldEyePose(a12, &v202, *(v51 + 1168), v51);
LABEL_103:
              *(v51 + 701) = *(v78 + 28);
            }

            goto LABEL_72;
          }
        }

        else
        {
          v74 = v67[13];
          if (!v74)
          {
            goto LABEL_89;
          }

          v75 = [v74 width];
          v63 = v75 / [v67[13] height];
          v64 = [v67[13] arrayLength];
          v70 = *(v51 + 1168);
          v76 = (v133 + 240);
          if (v70 != 1)
          {
            if (v70 != 2)
            {
              goto LABEL_97;
            }

            v76 = (v133 + 241);
          }

          v77 = *v76;
          if (v77 == 1)
          {
            goto LABEL_100;
          }

          if (v77)
          {
            goto LABEL_192;
          }
        }

LABEL_97:
        re::ecs2::CustomMatrixCameraComponent::localEyePose(v133, v70, &v202);
        v78 = a12;
        if (a12 && !*(a12 + 24))
        {
          re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v202, *(v51 + 1168), v51);
          goto LABEL_103;
        }

LABEL_72:
        if (*(v45 - 16) == 1 && v64 >= 2)
        {
          *(v45 - 15) = 1;
          v59 = *(v54 + 8) / *(v54 + 12);
          if (([*(v131 + 208) supportsTexture2DMultisampleArray] & 1) == 0)
          {
            *(v51 + 712) = 1;
          }
        }

        goto LABEL_87;
      }

      v66 = *(v131 + 112);
      if (v66)
      {
        v63 = re::DrawingManager::layerAspect(v66, v65, v58);
      }

      else
      {
        v63 = 1.0;
      }

LABEL_87:
      if (*(v133 + 32) == 1)
      {
        v73 = v63 * v59;
        re::Projection::setAspect((v51 + 64), *(v133 + 28) != 0, v73);
        re::Projection::setAspect((v51 + 336), *(v133 + 28) != 0, v73);
      }

LABEL_89:
      re::AssetHandle::~AssetHandle(v134);
      v38 = (v38 + 1);
      v46 = ViewDescriptor;
      v48 = *(ViewDescriptor + 928);
      v40 += 17;
      v52 += 136;
      v53 += 136;
    }

    while (v48 > v38);
    v50 = v127;
LABEL_104:
    v49 = 0;
    v47 = 1;
  }

  while ((v50 & 1) != 0);
LABEL_168:
  v106 = 3104;
  do
  {
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v136[v106 - 368]);
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v136[v106 - 928]);
    re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v136[v106 - 976]);
    re::DynamicString::deinit(&v136[v106 - 1552]);
    v106 -= 1552;
  }

  while (v106);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v198);
  re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v179);
  re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v178);
  if (v142 && (v143 & 1) != 0)
  {
    (*(*v142 + 40))();
  }

  return v122;
}

void re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::PerspectiveCameraComponent>(uint64_t *a1, re::ecs2::CameraViewDescriptorsComponent *this, char a3, float32x4_t *a4, re::ecs2::CameraViewDescriptorsComponent *a5)
{
  v8 = a1;
  v100 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    a5 = *(this + 2);
  }

  *v96 = this;
  *&v96[16] = 0;
  v38 = a5;
  if (*(this + 27))
  {
    v9 = 0;
  }

  else if (*(this + 32))
  {
    v9 = 1;
  }

  else
  {
    if (!*(this + 37))
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_26;
    }

    v9 = 2;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  *&v96[8] = v9;
  do
  {
    v13 = (v10 + 0x20000);
    if (v9 == 1)
    {
      v10 = (v10 + 0x10000);
    }

    if (v9 == 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }

    if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, v14) + 200))
    {
      v15 = *(this + 12);
      if (v15 <= v12)
      {
        *&v39[0] = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0].i32[0] = 136315906;
        *(v97[0].i64 + 4) = "operator[]";
        v97[0].i16[6] = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        *(&v97[0].i32[3] + 2) = 789;
        v97[1].i16[1] = 2048;
        *(v97[1].i64 + 4) = v12;
        v97[1].i16[6] = 2048;
        *(&v97[1].i64[1] + 6) = v15;
        _os_log_send_and_compose_impl(v27, v39, &v40, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97[0].i8, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_42:
        *&v39[0] = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0].i32[0] = 136315906;
        *(v97[0].i64 + 4) = "operator[]";
        v97[0].i16[6] = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        *(&v97[0].i32[3] + 2) = 789;
        v97[1].i16[1] = 2048;
        *(v97[1].i64 + 4) = v11;
        v97[1].i16[6] = 2048;
        *(&v97[1].i64[1] + 6) = v15;
        _os_log_send_and_compose_impl(v30, v39, &v40, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97[0].i8, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
        goto LABEL_46;
      }

      v16 = 0;
      v17 = *(this + 14) + 3120 * v12++;
    }

    else
    {
      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_42;
      }

      v17 = 0;
      v16 = *(this + 9) + 1552 * v11++;
    }

    a1 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(v96);
    v9 = *&v96[8];
    v10 = *&v96[16];
  }

  while (*v96 != this || *&v96[8] != 3 || *&v96[16]);
  v19 = *(this + 27);
  if (v19 == 1)
  {
    if (!*(this + 32) && !*(*(this + 29) + 928))
    {
    }
  }

  else if (!v19 && !*(this + 32))
  {
LABEL_26:
    if ((a3 & 1) == 0)
    {
      LOBYTE(v42) = 0;
      v43 = xmmword_1E30474D0;
      v56 = xmmword_1E308C680;
      v40 = 0u;
      v41 = 0u;
      *&v44 = 0x70000FF00000000;
      DWORD2(v44) = -1;
      v45 = 0;
      v46 = 0u;
      v47 = 0;
      v54 = 0;
      v55 = 0;
      v48 = 0u;
      v49 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0;
      v53 = 0;
      v57 = unk_1E308C690;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v20 = re::globalAllocators(a1);
      v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
      *v21 = 0u;
      *(v21 + 1) = 0u;
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 5) = 0u;
      *(v21 + 6) = 0u;
      *(v21 + 7) = 0u;
      *(v21 + 8) = 0u;
      *(v21 + 9) = 0u;
      *(v21 + 10) = 0u;
      *(v21 + 11) = 0u;
      *(v21 + 12) = 0u;
      *(v21 + 13) = 0u;
      *(v21 + 14) = 0u;
      *(v21 + 15) = 0u;
      *(v21 + 16) = 0u;
      v62 = v21;
      v63 = -1;
      v64 = 1;
      v65 = 0;
      v66 = re::globalAllocators(v21)[2];
      v67 = 0;
      memset(v97, 0, sizeof(v97));
      re::Pose<float>::Pose(v96, 0, 0, v97);
      v68 = *v96;
      v69 = *&v96[16];
      memset(v97, 0, sizeof(v97));
      re::Pose<float>::Pose(v39, 0, 0, v97);
      v70 = v39[0];
      v71 = v39[1];
      v72 = 0;
      v73 = xmmword_1E308B7C0;
      v74 = 0xBDCCCCCD3DCCCCCDLL;
      v75 = 0;
      v76 = xmmword_1E30476A0;
      v77 = 1;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = xmmword_1E308B7C0;
      v84 = 0xBDCCCCCD3DCCCCCDLL;
      v85 = 0;
      v86 = xmmword_1E30476A0;
      v87 = 1;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v95 = 0;
      v94 = 0;
      v93 = 0;
      v92 = 0u;
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((this + 240), &v40);
      if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0x10000) + 200))
      {
        v15 = *(this + 12);
        if (v15 > v12)
        {
          v22 = 0;
          v23 = *(this + 14) + 3120 * v12;
          goto LABEL_35;
        }

LABEL_46:
        *&v39[0] = 0;
        v98 = 0u;
        v99 = 0u;
        memset(v97, 0, sizeof(v97));
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v96 = 136315906;
        *&v96[4] = "operator[]";
        *&v96[12] = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        *&v96[14] = 789;
        *&v96[18] = 2048;
        *&v96[20] = v12;
        *&v96[28] = 2048;
        *&v96[30] = v15;
        _os_log_send_and_compose_impl(v33, v39, v97, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v96, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_50:
        *&v39[0] = 0;
        v98 = 0u;
        v99 = 0u;
        memset(v97, 0, sizeof(v97));
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v96 = 136315906;
        *&v96[4] = "operator[]";
        *&v96[12] = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        *&v96[14] = 789;
        *&v96[18] = 2048;
        *&v96[20] = v11;
        *&v96[28] = 2048;
        *&v96[30] = v15;
        _os_log_send_and_compose_impl(v36, v39, v97, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v96, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_50;
      }

      v23 = 0;
      v22 = *(this + 9) + 1552 * v11;
LABEL_35:
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((this + 240));
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v40);
    }
  }
}

void anonymous namespace::updateOneViewPerFrameData<re::ecs2::PerspectiveCameraComponent>(uint64_t a1, re::ecs2::CameraViewDescriptorsComponent *a2, re::ecs2::CameraViewDescriptorsComponent *this, float32x4_t *a4, uint64_t a5, uint64_t a6)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  v11 = *(a1 + 112);
  if (v11)
  {
    v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 364);
  if (!*(ViewDescriptor + 200))
  {
    a4[7] = xmmword_1E3047670;
    a4[8] = xmmword_1E3047680;
    a4[9] = xmmword_1E30476A0;
    a4[10] = xmmword_1E30474D0;
    __src = 0;
    v110 = 0;
    v101 = *(ViewDescriptor + 204);
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v24))
    {
      v111[__src++] = v101;
      ++v110;
    }

    v106 = 0;
    v107 = 0;
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v25))
    {
      v108[v106++] = xmmword_1E3063230;
      ++v107;
    }

    *(a5 + 1152) = -1;
    if (*(ViewDescriptor + 240))
    {
      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
      if (v106 && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
      }
    }

    else if (*(ViewDescriptor + 272))
    {
      if ((v13 & 1) == 0)
      {
        *(a5 + 712) = 1;
      }

      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = -1;
    }

    *(a5 + 1160) = -1;
    if (*(ViewDescriptor + 296))
    {
      *(a5 + 1160) = re::RenderFrame::addRenderCommandEncoder(v12, (ViewDescriptor + 296), *(ViewDescriptor + 312));
    }

    *(a5 + 1164) = -1;
    if (*(ViewDescriptor + 288))
    {
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v12 + 4336), (ViewDescriptor + 288));
      *(a5 + 1164) = *(v12 + 4352) - 1;
    }

    if (!*(ViewDescriptor + 928))
    {
      return;
    }

    v67 = 0;
    while (1)
    {
      v68 = *(ViewDescriptor + 944) + 136 * v67;
      if (!*(v68 + 40))
      {
        if (*(v68 + 80) == -1)
        {
          if (!*(v68 + 88))
          {
            if (*(v68 + 104))
            {
              if (*(v68 + 8))
              {
                v88 = *(v68 + 16);
              }

              else
              {
                v88 = (v68 + 9);
              }

              v94 = (a5 + 9);
              if (*(a5 + 8))
              {
                v94 = *(a5 + 16);
              }

              re::RenderFrame::specifyScopeLane(v12, v88, (v68 + 104), v94, *(a5 + 1168));
            }

            goto LABEL_182;
          }

          v80 = *(v68 + 8);
          if (v80)
          {
            v82 = *(v68 + 16);
            if (v82)
            {
              LOBYTE(v81) = *v82;
              goto LABEL_164;
            }

            v92 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v80 >> 8;
            v82 = (v68 + 9);
LABEL_164:
            if (v81)
            {
              v81 = v81;
              v89 = v82[1];
              if (v89)
              {
                v90 = v82 + 2;
                do
                {
                  v81 = 31 * v81 + v89;
                  v91 = *v90++;
                  v89 = v91;
                }

                while (v91);
              }

              v92 = v81 & 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = 0;
            }
          }

          v105[0] = v92;
          v95 = (a5 + 9);
          if (*(a5 + 8))
          {
            v95 = *(a5 + 16);
          }

          re::RenderFrame::specifyScopeLane(v12, v105, (v68 + 88), v95);
          goto LABEL_182;
        }

        v73 = *(v68 + 8);
        if (v73)
        {
          v75 = *(v68 + 16);
          if (v75)
          {
            LOBYTE(v74) = *v75;
            goto LABEL_148;
          }

          v86 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73 >> 8;
          v75 = (v68 + 9);
LABEL_148:
          if (v74)
          {
            v74 = v74;
            v83 = v75[1];
            if (v83)
            {
              v84 = v75 + 2;
              do
              {
                v74 = 31 * v74 + v83;
                v85 = *v84++;
                v83 = v85;
              }

              while (v85);
            }

            v86 = v74 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = 0;
          }
        }

        v105[0] = v86;
        v93 = (a5 + 9);
        if (*(a5 + 8))
        {
          v93 = *(a5 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v105, (v68 + 80), v93);
        goto LABEL_182;
      }

      v69 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v68 + 32));
      if (*(v69 + 120))
      {
LABEL_184:
        v96 = std::__throw_bad_variant_access[abi:nn200100]();
        return;
      }

      v105[0] = *(v69 + 112);
      v70 = *(v68 + 8);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v72 = *(v68 + 16);
      if (v72)
      {
        LOBYTE(v71) = *v72;
LABEL_137:
        if (v71)
        {
          v71 = v71;
          v76 = v72[1];
          if (v76)
          {
            v77 = v72 + 2;
            do
            {
              v71 = 31 * v71 + v76;
              v78 = *v77++;
              v76 = v78;
            }

            while (v78);
          }

          v79 = v71 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = 0;
        }

        goto LABEL_154;
      }

      v79 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_154:
      v104 = v79;
      v87 = (a5 + 9);
      if (*(a5 + 8))
      {
        v87 = *(a5 + 16);
      }

      re::RenderFrame::specifyScopeLane(v12, &v104, v105, v87);
      if (v105[0])
      {
      }

LABEL_182:
      if (*(ViewDescriptor + 928) <= ++v67)
      {
        return;
      }
    }

    v71 = v70 >> 8;
    v72 = (v68 + 9);
    goto LABEL_137;
  }

  __src = 0;
  v110 = 0;
  v14 = *(ViewDescriptor + 212);
  v15 = *(ViewDescriptor + 204);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v16))
  {
    v18 = &__src + 2 * __src;
    v18[2] = v15;
    v18[3] = v14;
    ++__src;
    ++v110;
  }

  v19 = *(ViewDescriptor + 228);
  v20 = *(ViewDescriptor + 220);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v17))
  {
    v22 = &__src + 2 * __src;
    v22[2] = v20;
    v22[3] = v19;
    ++__src;
    ++v110;
  }

  v106 = 0;
  v107 = 0;
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v21))
  {
    v108[v106++] = xmmword_1E3063230;
    ++v107;
  }

  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v23))
  {
    v108[v106++] = xmmword_1E3063230;
    ++v107;
  }

  *(a6 + 1152) = -1;
  if (*(ViewDescriptor + 240))
  {
    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
    if (v106 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
    }
  }

  else if (*(ViewDescriptor + 272))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 712) = 1;
    }

    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = -1;
  }

  *(a6 + 2704) = -1;
  if (*(ViewDescriptor + 248))
  {
    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 248));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 264));
    if (v106 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
    }
  }

  else if (*(ViewDescriptor + 280))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 2264) = 1;
    }

    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 280));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = -1;
  }

  v26 = 0;
  v27 = *(ViewDescriptor + 928);
  v28 = 1;
  do
  {
    v29 = v28;
    if (!v27)
    {
      goto LABEL_113;
    }

    v102 = v28;
    v30 = 0;
    v31 = a6 + 1552 * v26;
    do
    {
      v32 = (*(ViewDescriptor + 944) + 136 * v30);
      re::AssetHandle::AssetHandle(v105, &v32[3 * v26 + 4]);
      if (*(a6 + 3104) == 1)
      {
        re::AssetHandle::operator=(v105, v32 + 4);
      }

      if (v105[1])
      {
        v33 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v105);
        if (*(v33 + 120))
        {
          goto LABEL_184;
        }

        v104 = *(v33 + 112);
        v34 = v32[1];
        if (v34)
        {
          v36 = v32[2];
          if (!v36)
          {
            v46 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_83:
            v103 = v46;
            v56 = (v31 + 9);
            if (*(v31 + 8))
            {
              v56 = *(v31 + 16);
            }

            re::RenderFrame::specifyScopeLane(v12, &v103, &v104, v56);
            if (v104)
            {
            }

            goto LABEL_111;
          }

          LOBYTE(v35) = *v36;
        }

        else
        {
          v35 = v34 >> 8;
          v36 = v32 + 9;
        }

        if (v35)
        {
          v35 = v35;
          v43 = v36[1];
          if (v43)
          {
            v44 = v36 + 2;
            do
            {
              v35 = 31 * v35 + v43;
              v45 = *v44++;
              v43 = v45;
            }

            while (v45);
          }

          v46 = v35 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = 0;
        }

        goto LABEL_83;
      }

      v37 = v32 + 4 * v26;
      v39 = *(v37 + 20);
      v38 = (v37 + 80);
      if (v39 != -1)
      {
        v40 = v32[1];
        if (v40)
        {
          v42 = v32[2];
          if (v42)
          {
            LOBYTE(v41) = *v42;
            goto LABEL_77;
          }

          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40 >> 8;
          v42 = v32 + 9;
LABEL_77:
          if (v41)
          {
            v41 = v41;
            v52 = v42[1];
            if (v52)
            {
              v53 = v42 + 2;
              do
              {
                v41 = 31 * v41 + v52;
                v54 = *v53++;
                v52 = v54;
              }

              while (v54);
            }

            v55 = v41 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = 0;
          }
        }

        v104 = v55;
        v64 = (v31 + 9);
        if (*(v31 + 8))
        {
          v64 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v104, v38, v64);
        goto LABEL_111;
      }

      v47 = &v32[v26];
      v48 = (v47 + 11);
      if (v47[11])
      {
        v49 = v32[1];
        if (v49)
        {
          v51 = v32[2];
          if (v51)
          {
            LOBYTE(v50) = *v51;
            goto LABEL_93;
          }

          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49 >> 8;
          v51 = v32 + 9;
LABEL_93:
          if (v50)
          {
            v50 = v50;
            v60 = v51[1];
            if (v60)
            {
              v61 = v51 + 2;
              do
              {
                v50 = 31 * v50 + v60;
                v62 = *v61++;
                v60 = v62;
              }

              while (v62);
            }

            v63 = v50 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = 0;
          }
        }

        v104 = v63;
        v66 = (v31 + 9);
        if (*(v31 + 8))
        {
          v66 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v104, v48, v66);
        goto LABEL_111;
      }

      v58 = v47[13];
      v57 = (v47 + 13);
      if (v58)
      {
        if (v32[1])
        {
          v59 = v32[2];
        }

        else
        {
          v59 = v32 + 9;
        }

        v65 = (v31 + 9);
        if (*(v31 + 8))
        {
          v65 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v59, v57, v65, *(v31 + 1168));
      }

LABEL_111:
      re::AssetHandle::~AssetHandle(v105);
      ++v30;
      v27 = *(ViewDescriptor + 928);
    }

    while (v27 > v30);
    v29 = v102;
LABEL_113:
    v28 = 0;
    v26 = 1;
  }

  while ((v29 & 1) != 0);
}

uint64_t anonymous namespace::addDefaultSpecifyLaneCommand(_anonymous_namespace_ *this, re::RenderManager *a2, re::ecs2::CameraViewDescriptorsComponent *a3, re::ecs2::CameraViewDescriptorsComponent *a4, re::ecs2::Entity *a5)
{
  v9 = re::RenderManager::perFrameAllocator(this);
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v15, a3, a2, a4, v9, 0);
  v10 = *(this + 14);
  if (v10)
  {
    v11 = re::RenderFrameBox::get((v10 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v11 = 0;
  }

  v14 = 65290051;
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  re::RenderFrame::specifyScopeLane(v11, &v14, &re::kLegacyRenderLayerHandle, v12);
  result = v15;
  if (v15)
  {
    if (v16)
    {
      return (*(*v15 + 40))();
    }
  }

  return result;
}

void re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::OrthographicCameraComponent>(uint64_t *a1, re::ecs2::CameraViewDescriptorsComponent *this, char a3, _OWORD *a4, re::ecs2::CameraViewDescriptorsComponent *a5)
{
  v8 = a1;
  v100 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    a5 = *(this + 2);
  }

  *v96 = this;
  *&v96[16] = 0;
  v38 = a5;
  if (*(this + 27))
  {
    v9 = 0;
  }

  else if (*(this + 32))
  {
    v9 = 1;
  }

  else
  {
    if (!*(this + 37))
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_26;
    }

    v9 = 2;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  *&v96[8] = v9;
  do
  {
    v13 = (v10 + 0x20000);
    if (v9 == 1)
    {
      v10 = (v10 + 0x10000);
    }

    if (v9 == 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }

    if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, v14) + 200))
    {
      v15 = *(this + 12);
      if (v15 <= v12)
      {
        *&v39[0] = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0].i32[0] = 136315906;
        *(v97[0].i64 + 4) = "operator[]";
        v97[0].i16[6] = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        *(&v97[0].i32[3] + 2) = 789;
        v97[1].i16[1] = 2048;
        *(v97[1].i64 + 4) = v12;
        v97[1].i16[6] = 2048;
        *(&v97[1].i64[1] + 6) = v15;
        _os_log_send_and_compose_impl(v27, v39, &v40, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97[0].i8, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_42:
        *&v39[0] = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0].i32[0] = 136315906;
        *(v97[0].i64 + 4) = "operator[]";
        v97[0].i16[6] = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        *(&v97[0].i32[3] + 2) = 789;
        v97[1].i16[1] = 2048;
        *(v97[1].i64 + 4) = v11;
        v97[1].i16[6] = 2048;
        *(&v97[1].i64[1] + 6) = v15;
        _os_log_send_and_compose_impl(v30, v39, &v40, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97[0].i8, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
        goto LABEL_46;
      }

      v16 = 0;
      v17 = *(this + 14) + 3120 * v12++;
    }

    else
    {
      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_42;
      }

      v17 = 0;
      v16 = *(this + 9) + 1552 * v11++;
    }

    a1 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(v96);
    v9 = *&v96[8];
    v10 = *&v96[16];
  }

  while (*v96 != this || *&v96[8] != 3 || *&v96[16]);
  v19 = *(this + 27);
  if (v19 == 1)
  {
    if (!*(this + 32) && !*(*(this + 29) + 928))
    {
    }
  }

  else if (!v19 && !*(this + 32))
  {
LABEL_26:
    if ((a3 & 1) == 0)
    {
      LOBYTE(v42) = 0;
      v43 = xmmword_1E30474D0;
      v56 = xmmword_1E308C680;
      v40 = 0u;
      v41 = 0u;
      *&v44 = 0x70000FF00000000;
      DWORD2(v44) = -1;
      v45 = 0;
      v46 = 0u;
      v47 = 0;
      v54 = 0;
      v55 = 0;
      v48 = 0u;
      v49 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0;
      v53 = 0;
      v57 = unk_1E308C690;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v20 = re::globalAllocators(a1);
      v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
      *v21 = 0u;
      *(v21 + 1) = 0u;
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 5) = 0u;
      *(v21 + 6) = 0u;
      *(v21 + 7) = 0u;
      *(v21 + 8) = 0u;
      *(v21 + 9) = 0u;
      *(v21 + 10) = 0u;
      *(v21 + 11) = 0u;
      *(v21 + 12) = 0u;
      *(v21 + 13) = 0u;
      *(v21 + 14) = 0u;
      *(v21 + 15) = 0u;
      *(v21 + 16) = 0u;
      v62 = v21;
      v63 = -1;
      v64 = 1;
      v65 = 0;
      v66 = re::globalAllocators(v21)[2];
      v67 = 0;
      memset(v97, 0, sizeof(v97));
      re::Pose<float>::Pose(v96, 0, 0, v97);
      v68 = *v96;
      v69 = *&v96[16];
      memset(v97, 0, sizeof(v97));
      re::Pose<float>::Pose(v39, 0, 0, v97);
      v70 = v39[0];
      v71 = v39[1];
      v72 = 0;
      v73 = xmmword_1E308B7C0;
      v74 = 0xBDCCCCCD3DCCCCCDLL;
      v75 = 0;
      v76 = xmmword_1E30476A0;
      v77 = 1;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = xmmword_1E308B7C0;
      v84 = 0xBDCCCCCD3DCCCCCDLL;
      v85 = 0;
      v86 = xmmword_1E30476A0;
      v87 = 1;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v95 = 0;
      v94 = 0;
      v93 = 0;
      v92 = 0u;
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((this + 240), &v40);
      if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0x10000) + 200))
      {
        v15 = *(this + 12);
        if (v15 > v12)
        {
          v22 = 0;
          v23 = *(this + 14) + 3120 * v12;
          goto LABEL_35;
        }

LABEL_46:
        *&v39[0] = 0;
        v98 = 0u;
        v99 = 0u;
        memset(v97, 0, sizeof(v97));
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v96 = 136315906;
        *&v96[4] = "operator[]";
        *&v96[12] = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        *&v96[14] = 789;
        *&v96[18] = 2048;
        *&v96[20] = v12;
        *&v96[28] = 2048;
        *&v96[30] = v15;
        _os_log_send_and_compose_impl(v33, v39, v97, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v96, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_50:
        *&v39[0] = 0;
        v98 = 0u;
        v99 = 0u;
        memset(v97, 0, sizeof(v97));
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v96 = 136315906;
        *&v96[4] = "operator[]";
        *&v96[12] = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        *&v96[14] = 789;
        *&v96[18] = 2048;
        *&v96[20] = v11;
        *&v96[28] = 2048;
        *&v96[30] = v15;
        _os_log_send_and_compose_impl(v36, v39, v97, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v96, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_50;
      }

      v23 = 0;
      v22 = *(this + 9) + 1552 * v11;
LABEL_35:
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((this + 240));
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v40);
    }
  }
}

void anonymous namespace::updateOneViewPerFrameData<re::ecs2::OrthographicCameraComponent>(uint64_t a1, re::ecs2::CameraViewDescriptorsComponent *a2, re::ecs2::CameraViewDescriptorsComponent *this, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  v11 = *(a1 + 112);
  if (v11)
  {
    v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 364);
  if (!*(ViewDescriptor + 200))
  {
    a4[7] = xmmword_1E3047670;
    a4[8] = xmmword_1E3047680;
    a4[9] = xmmword_1E30476A0;
    a4[10] = xmmword_1E30474D0;
    __src = 0;
    v110 = 0;
    v101 = *(ViewDescriptor + 204);
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v24))
    {
      v111[__src++] = v101;
      ++v110;
    }

    v106 = 0;
    v107 = 0;
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v25))
    {
      v108[v106++] = xmmword_1E3063230;
      ++v107;
    }

    *(a5 + 1152) = -1;
    if (*(ViewDescriptor + 240))
    {
      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
      if (v106 && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
      }
    }

    else if (*(ViewDescriptor + 272))
    {
      if ((v13 & 1) == 0)
      {
        *(a5 + 712) = 1;
      }

      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = -1;
    }

    *(a5 + 1160) = -1;
    if (*(ViewDescriptor + 296))
    {
      *(a5 + 1160) = re::RenderFrame::addRenderCommandEncoder(v12, (ViewDescriptor + 296), *(ViewDescriptor + 312));
    }

    *(a5 + 1164) = -1;
    if (*(ViewDescriptor + 288))
    {
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v12 + 4336), (ViewDescriptor + 288));
      *(a5 + 1164) = *(v12 + 4352) - 1;
    }

    if (!*(ViewDescriptor + 928))
    {
      return;
    }

    v67 = 0;
    while (1)
    {
      v68 = *(ViewDescriptor + 944) + 136 * v67;
      if (!*(v68 + 40))
      {
        if (*(v68 + 80) == -1)
        {
          if (!*(v68 + 88))
          {
            if (*(v68 + 104))
            {
              if (*(v68 + 8))
              {
                v88 = *(v68 + 16);
              }

              else
              {
                v88 = (v68 + 9);
              }

              v94 = (a5 + 9);
              if (*(a5 + 8))
              {
                v94 = *(a5 + 16);
              }

              re::RenderFrame::specifyScopeLane(v12, v88, (v68 + 104), v94, *(a5 + 1168));
            }

            goto LABEL_182;
          }

          v80 = *(v68 + 8);
          if (v80)
          {
            v82 = *(v68 + 16);
            if (v82)
            {
              LOBYTE(v81) = *v82;
              goto LABEL_164;
            }

            v92 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v80 >> 8;
            v82 = (v68 + 9);
LABEL_164:
            if (v81)
            {
              v81 = v81;
              v89 = v82[1];
              if (v89)
              {
                v90 = v82 + 2;
                do
                {
                  v81 = 31 * v81 + v89;
                  v91 = *v90++;
                  v89 = v91;
                }

                while (v91);
              }

              v92 = v81 & 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = 0;
            }
          }

          v105[0] = v92;
          v95 = (a5 + 9);
          if (*(a5 + 8))
          {
            v95 = *(a5 + 16);
          }

          re::RenderFrame::specifyScopeLane(v12, v105, (v68 + 88), v95);
          goto LABEL_182;
        }

        v73 = *(v68 + 8);
        if (v73)
        {
          v75 = *(v68 + 16);
          if (v75)
          {
            LOBYTE(v74) = *v75;
            goto LABEL_148;
          }

          v86 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73 >> 8;
          v75 = (v68 + 9);
LABEL_148:
          if (v74)
          {
            v74 = v74;
            v83 = v75[1];
            if (v83)
            {
              v84 = v75 + 2;
              do
              {
                v74 = 31 * v74 + v83;
                v85 = *v84++;
                v83 = v85;
              }

              while (v85);
            }

            v86 = v74 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = 0;
          }
        }

        v105[0] = v86;
        v93 = (a5 + 9);
        if (*(a5 + 8))
        {
          v93 = *(a5 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v105, (v68 + 80), v93);
        goto LABEL_182;
      }

      v69 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v68 + 32));
      if (*(v69 + 120))
      {
LABEL_184:
        v96 = std::__throw_bad_variant_access[abi:nn200100]();
        re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::CustomMatrixCameraComponent>(v96, v97, v98, v99, v100);
        return;
      }

      v105[0] = *(v69 + 112);
      v70 = *(v68 + 8);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v72 = *(v68 + 16);
      if (v72)
      {
        LOBYTE(v71) = *v72;
LABEL_137:
        if (v71)
        {
          v71 = v71;
          v76 = v72[1];
          if (v76)
          {
            v77 = v72 + 2;
            do
            {
              v71 = 31 * v71 + v76;
              v78 = *v77++;
              v76 = v78;
            }

            while (v78);
          }

          v79 = v71 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = 0;
        }

        goto LABEL_154;
      }

      v79 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_154:
      v104 = v79;
      v87 = (a5 + 9);
      if (*(a5 + 8))
      {
        v87 = *(a5 + 16);
      }

      re::RenderFrame::specifyScopeLane(v12, &v104, v105, v87);
      if (v105[0])
      {
      }

LABEL_182:
      if (*(ViewDescriptor + 928) <= ++v67)
      {
        return;
      }
    }

    v71 = v70 >> 8;
    v72 = (v68 + 9);
    goto LABEL_137;
  }

  __src = 0;
  v110 = 0;
  v14 = *(ViewDescriptor + 212);
  v15 = *(ViewDescriptor + 204);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v16))
  {
    v18 = &__src + 2 * __src;
    v18[2] = v15;
    v18[3] = v14;
    ++__src;
    ++v110;
  }

  v19 = *(ViewDescriptor + 228);
  v20 = *(ViewDescriptor + 220);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v17))
  {
    v22 = &__src + 2 * __src;
    v22[2] = v20;
    v22[3] = v19;
    ++__src;
    ++v110;
  }

  v106 = 0;
  v107 = 0;
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v21))
  {
    v108[v106++] = xmmword_1E3063230;
    ++v107;
  }

  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v23))
  {
    v108[v106++] = xmmword_1E3063230;
    ++v107;
  }

  *(a6 + 1152) = -1;
  if (*(ViewDescriptor + 240))
  {
    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
    if (v106 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
    }
  }

  else if (*(ViewDescriptor + 272))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 712) = 1;
    }

    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = -1;
  }

  *(a6 + 2704) = -1;
  if (*(ViewDescriptor + 248))
  {
    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 248));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 264));
    if (v106 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
    }
  }

  else if (*(ViewDescriptor + 280))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 2264) = 1;
    }

    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 280));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = -1;
  }

  v26 = 0;
  v27 = *(ViewDescriptor + 928);
  v28 = 1;
  do
  {
    v29 = v28;
    if (!v27)
    {
      goto LABEL_113;
    }

    v102 = v28;
    v30 = 0;
    v31 = a6 + 1552 * v26;
    do
    {
      v32 = (*(ViewDescriptor + 944) + 136 * v30);
      re::AssetHandle::AssetHandle(v105, &v32[3 * v26 + 4]);
      if (*(a6 + 3104) == 1)
      {
        re::AssetHandle::operator=(v105, v32 + 4);
      }

      if (v105[1])
      {
        v33 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v105);
        if (*(v33 + 120))
        {
          goto LABEL_184;
        }

        v104 = *(v33 + 112);
        v34 = v32[1];
        if (v34)
        {
          v36 = v32[2];
          if (!v36)
          {
            v46 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_83:
            v103 = v46;
            v56 = (v31 + 9);
            if (*(v31 + 8))
            {
              v56 = *(v31 + 16);
            }

            re::RenderFrame::specifyScopeLane(v12, &v103, &v104, v56);
            if (v104)
            {
            }

            goto LABEL_111;
          }

          LOBYTE(v35) = *v36;
        }

        else
        {
          v35 = v34 >> 8;
          v36 = v32 + 9;
        }

        if (v35)
        {
          v35 = v35;
          v43 = v36[1];
          if (v43)
          {
            v44 = v36 + 2;
            do
            {
              v35 = 31 * v35 + v43;
              v45 = *v44++;
              v43 = v45;
            }

            while (v45);
          }

          v46 = v35 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = 0;
        }

        goto LABEL_83;
      }

      v37 = v32 + 4 * v26;
      v39 = *(v37 + 20);
      v38 = (v37 + 80);
      if (v39 != -1)
      {
        v40 = v32[1];
        if (v40)
        {
          v42 = v32[2];
          if (v42)
          {
            LOBYTE(v41) = *v42;
            goto LABEL_77;
          }

          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40 >> 8;
          v42 = v32 + 9;
LABEL_77:
          if (v41)
          {
            v41 = v41;
            v52 = v42[1];
            if (v52)
            {
              v53 = v42 + 2;
              do
              {
                v41 = 31 * v41 + v52;
                v54 = *v53++;
                v52 = v54;
              }

              while (v54);
            }

            v55 = v41 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = 0;
          }
        }

        v104 = v55;
        v64 = (v31 + 9);
        if (*(v31 + 8))
        {
          v64 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v104, v38, v64);
        goto LABEL_111;
      }

      v47 = &v32[v26];
      v48 = (v47 + 11);
      if (v47[11])
      {
        v49 = v32[1];
        if (v49)
        {
          v51 = v32[2];
          if (v51)
          {
            LOBYTE(v50) = *v51;
            goto LABEL_93;
          }

          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49 >> 8;
          v51 = v32 + 9;
LABEL_93:
          if (v50)
          {
            v50 = v50;
            v60 = v51[1];
            if (v60)
            {
              v61 = v51 + 2;
              do
              {
                v50 = 31 * v50 + v60;
                v62 = *v61++;
                v60 = v62;
              }

              while (v62);
            }

            v63 = v50 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = 0;
          }
        }

        v104 = v63;
        v66 = (v31 + 9);
        if (*(v31 + 8))
        {
          v66 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v104, v48, v66);
        goto LABEL_111;
      }

      v58 = v47[13];
      v57 = (v47 + 13);
      if (v58)
      {
        if (v32[1])
        {
          v59 = v32[2];
        }

        else
        {
          v59 = v32 + 9;
        }

        v65 = (v31 + 9);
        if (*(v31 + 8))
        {
          v65 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v59, v57, v65, *(v31 + 1168));
      }

LABEL_111:
      re::AssetHandle::~AssetHandle(v105);
      ++v30;
      v27 = *(ViewDescriptor + 928);
    }

    while (v27 > v30);
    v29 = v102;
LABEL_113:
    v28 = 0;
    v26 = 1;
  }

  while ((v29 & 1) != 0);
}

void re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::CustomMatrixCameraComponent>(uint64_t *a1, re::ecs2::CameraViewDescriptorsComponent *this, char a3, re::TransformService **a4, re::ecs2::CameraViewDescriptorsComponent *a5)
{
  v8 = a1;
  v100 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    a5 = *(this + 2);
  }

  *v96 = this;
  *&v96[16] = 0;
  v38 = a5;
  if (*(this + 27))
  {
    v9 = 0;
  }

  else if (*(this + 32))
  {
    v9 = 1;
  }

  else
  {
    if (!*(this + 37))
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_26;
    }

    v9 = 2;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  *&v96[8] = v9;
  do
  {
    v13 = (v10 + 0x20000);
    if (v9 == 1)
    {
      v10 = (v10 + 0x10000);
    }

    if (v9 == 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }

    if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, v14) + 200))
    {
      v15 = *(this + 12);
      if (v15 <= v12)
      {
        *&v39[0] = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0].i32[0] = 136315906;
        *(v97[0].i64 + 4) = "operator[]";
        v97[0].i16[6] = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        *(&v97[0].i32[3] + 2) = 789;
        v97[1].i16[1] = 2048;
        *(v97[1].i64 + 4) = v12;
        v97[1].i16[6] = 2048;
        *(&v97[1].i64[1] + 6) = v15;
        _os_log_send_and_compose_impl(v27, v39, &v40, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97[0].i8, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_42:
        *&v39[0] = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0].i32[0] = 136315906;
        *(v97[0].i64 + 4) = "operator[]";
        v97[0].i16[6] = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        *(&v97[0].i32[3] + 2) = 789;
        v97[1].i16[1] = 2048;
        *(v97[1].i64 + 4) = v11;
        v97[1].i16[6] = 2048;
        *(&v97[1].i64[1] + 6) = v15;
        _os_log_send_and_compose_impl(v30, v39, &v40, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97[0].i8, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
        goto LABEL_46;
      }

      v16 = 0;
      v17 = *(this + 14) + 3120 * v12++;
    }

    else
    {
      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_42;
      }

      v17 = 0;
      v16 = *(this + 9) + 1552 * v11++;
    }

    a1 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(v96);
    v9 = *&v96[8];
    v10 = *&v96[16];
  }

  while (*v96 != this || *&v96[8] != 3 || *&v96[16]);
  v19 = *(this + 27);
  if (v19 == 1)
  {
    if (!*(this + 32) && !*(*(this + 29) + 928))
    {
    }
  }

  else if (!v19 && !*(this + 32))
  {
LABEL_26:
    if ((a3 & 1) == 0)
    {
      LOBYTE(v42) = 0;
      v43 = xmmword_1E30474D0;
      v56 = xmmword_1E308C680;
      v40 = 0u;
      v41 = 0u;
      *&v44 = 0x70000FF00000000;
      DWORD2(v44) = -1;
      v45 = 0;
      v46 = 0u;
      v47 = 0;
      v54 = 0;
      v55 = 0;
      v48 = 0u;
      v49 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0;
      v53 = 0;
      v57 = unk_1E308C690;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v20 = re::globalAllocators(a1);
      v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
      *v21 = 0u;
      *(v21 + 1) = 0u;
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 5) = 0u;
      *(v21 + 6) = 0u;
      *(v21 + 7) = 0u;
      *(v21 + 8) = 0u;
      *(v21 + 9) = 0u;
      *(v21 + 10) = 0u;
      *(v21 + 11) = 0u;
      *(v21 + 12) = 0u;
      *(v21 + 13) = 0u;
      *(v21 + 14) = 0u;
      *(v21 + 15) = 0u;
      *(v21 + 16) = 0u;
      v62 = v21;
      v63 = -1;
      v64 = 1;
      v65 = 0;
      v66 = re::globalAllocators(v21)[2];
      v67 = 0;
      memset(v97, 0, sizeof(v97));
      re::Pose<float>::Pose(v96, 0, 0, v97);
      v68 = *v96;
      v69 = *&v96[16];
      memset(v97, 0, sizeof(v97));
      re::Pose<float>::Pose(v39, 0, 0, v97);
      v70 = v39[0];
      v71 = v39[1];
      v72 = 0;
      v73 = xmmword_1E308B7C0;
      v74 = 0xBDCCCCCD3DCCCCCDLL;
      v75 = 0;
      v76 = xmmword_1E30476A0;
      v77 = 1;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = xmmword_1E308B7C0;
      v84 = 0xBDCCCCCD3DCCCCCDLL;
      v85 = 0;
      v86 = xmmword_1E30476A0;
      v87 = 1;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v95 = 0;
      v94 = 0;
      v93 = 0;
      v92 = 0u;
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((this + 240), &v40);
      if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0x10000) + 200))
      {
        v15 = *(this + 12);
        if (v15 > v12)
        {
          v22 = 0;
          v23 = *(this + 14) + 3120 * v12;
          goto LABEL_35;
        }

LABEL_46:
        *&v39[0] = 0;
        v98 = 0u;
        v99 = 0u;
        memset(v97, 0, sizeof(v97));
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v96 = 136315906;
        *&v96[4] = "operator[]";
        *&v96[12] = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        *&v96[14] = 789;
        *&v96[18] = 2048;
        *&v96[20] = v12;
        *&v96[28] = 2048;
        *&v96[30] = v15;
        _os_log_send_and_compose_impl(v33, v39, v97, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v96, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_50:
        *&v39[0] = 0;
        v98 = 0u;
        v99 = 0u;
        memset(v97, 0, sizeof(v97));
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v96 = 136315906;
        *&v96[4] = "operator[]";
        *&v96[12] = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        *&v96[14] = 789;
        *&v96[18] = 2048;
        *&v96[20] = v11;
        *&v96[28] = 2048;
        *&v96[30] = v15;
        _os_log_send_and_compose_impl(v36, v39, v97, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v96, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_50;
      }

      v23 = 0;
      v22 = *(this + 9) + 1552 * v11;
LABEL_35:
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((this + 240));
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v40);
    }
  }
}

void anonymous namespace::updateOneViewPerFrameData<re::ecs2::CustomMatrixCameraComponent>(uint64_t a1, re::ecs2::CameraViewDescriptorsComponent *a2, re::ecs2::CameraViewDescriptorsComponent *this, re::TransformService **a4, uint64_t a5, uint64_t a6)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  v11 = *(a1 + 112);
  if (v11)
  {
    v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 364);
  if (!*(ViewDescriptor + 200))
  {
    *(a4 + 7) = xmmword_1E3047670;
    *(a4 + 8) = xmmword_1E3047680;
    *(a4 + 9) = xmmword_1E30476A0;
    *(a4 + 10) = xmmword_1E30474D0;
    __src = 0;
    v106 = 0;
    v97 = *(ViewDescriptor + 204);
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v24))
    {
      v107[__src++] = v97;
      ++v106;
    }

    v102 = 0;
    v103 = 0;
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v102, v25))
    {
      v104[v102++] = xmmword_1E3063230;
      ++v103;
    }

    *(a5 + 1152) = -1;
    if (*(ViewDescriptor + 240))
    {
      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
      if (v102 && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v102);
      }
    }

    else if (*(ViewDescriptor + 272))
    {
      if ((v13 & 1) == 0)
      {
        *(a5 + 712) = 1;
      }

      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = -1;
    }

    *(a5 + 1160) = -1;
    if (*(ViewDescriptor + 296))
    {
      *(a5 + 1160) = re::RenderFrame::addRenderCommandEncoder(v12, (ViewDescriptor + 296), *(ViewDescriptor + 312));
    }

    *(a5 + 1164) = -1;
    if (*(ViewDescriptor + 288))
    {
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v12 + 4336), (ViewDescriptor + 288));
      *(a5 + 1164) = *(v12 + 4352) - 1;
    }

    if (!*(ViewDescriptor + 928))
    {
      return;
    }

    v67 = 0;
    while (1)
    {
      v68 = *(ViewDescriptor + 944) + 136 * v67;
      if (!*(v68 + 40))
      {
        if (*(v68 + 80) == -1)
        {
          if (!*(v68 + 88))
          {
            if (*(v68 + 104))
            {
              if (*(v68 + 8))
              {
                v88 = *(v68 + 16);
              }

              else
              {
                v88 = (v68 + 9);
              }

              v94 = (a5 + 9);
              if (*(a5 + 8))
              {
                v94 = *(a5 + 16);
              }

              re::RenderFrame::specifyScopeLane(v12, v88, (v68 + 104), v94, *(a5 + 1168));
            }

            goto LABEL_182;
          }

          v80 = *(v68 + 8);
          if (v80)
          {
            v82 = *(v68 + 16);
            if (v82)
            {
              LOBYTE(v81) = *v82;
              goto LABEL_164;
            }

            v92 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v80 >> 8;
            v82 = (v68 + 9);
LABEL_164:
            if (v81)
            {
              v81 = v81;
              v89 = v82[1];
              if (v89)
              {
                v90 = v82 + 2;
                do
                {
                  v81 = 31 * v81 + v89;
                  v91 = *v90++;
                  v89 = v91;
                }

                while (v91);
              }

              v92 = v81 & 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = 0;
            }
          }

          v101[0] = v92;
          v95 = (a5 + 9);
          if (*(a5 + 8))
          {
            v95 = *(a5 + 16);
          }

          re::RenderFrame::specifyScopeLane(v12, v101, (v68 + 88), v95);
          goto LABEL_182;
        }

        v73 = *(v68 + 8);
        if (v73)
        {
          v75 = *(v68 + 16);
          if (v75)
          {
            LOBYTE(v74) = *v75;
            goto LABEL_148;
          }

          v86 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73 >> 8;
          v75 = (v68 + 9);
LABEL_148:
          if (v74)
          {
            v74 = v74;
            v83 = v75[1];
            if (v83)
            {
              v84 = v75 + 2;
              do
              {
                v74 = 31 * v74 + v83;
                v85 = *v84++;
                v83 = v85;
              }

              while (v85);
            }

            v86 = v74 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = 0;
          }
        }

        v101[0] = v86;
        v93 = (a5 + 9);
        if (*(a5 + 8))
        {
          v93 = *(a5 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v101, (v68 + 80), v93);
        goto LABEL_182;
      }

      v69 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v68 + 32));
      if (*(v69 + 120))
      {
LABEL_184:
        v96 = std::__throw_bad_variant_access[abi:nn200100]();
        re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>(v96);
        return;
      }

      v101[0] = *(v69 + 112);
      v70 = *(v68 + 8);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v72 = *(v68 + 16);
      if (v72)
      {
        LOBYTE(v71) = *v72;
LABEL_137:
        if (v71)
        {
          v71 = v71;
          v76 = v72[1];
          if (v76)
          {
            v77 = v72 + 2;
            do
            {
              v71 = 31 * v71 + v76;
              v78 = *v77++;
              v76 = v78;
            }

            while (v78);
          }

          v79 = v71 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = 0;
        }

        goto LABEL_154;
      }

      v79 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_154:
      v100 = v79;
      v87 = (a5 + 9);
      if (*(a5 + 8))
      {
        v87 = *(a5 + 16);
      }

      re::RenderFrame::specifyScopeLane(v12, &v100, v101, v87);
      if (v101[0])
      {
      }

LABEL_182:
      if (*(ViewDescriptor + 928) <= ++v67)
      {
        return;
      }
    }

    v71 = v70 >> 8;
    v72 = (v68 + 9);
    goto LABEL_137;
  }

  __src = 0;
  v106 = 0;
  v14 = *(ViewDescriptor + 212);
  v15 = *(ViewDescriptor + 204);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v16))
  {
    v18 = &__src + 2 * __src;
    v18[2] = v15;
    v18[3] = v14;
    ++__src;
    ++v106;
  }

  v19 = *(ViewDescriptor + 228);
  v20 = *(ViewDescriptor + 220);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v17))
  {
    v22 = &__src + 2 * __src;
    v22[2] = v20;
    v22[3] = v19;
    ++__src;
    ++v106;
  }

  v102 = 0;
  v103 = 0;
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v102, v21))
  {
    v104[v102++] = xmmword_1E3063230;
    ++v103;
  }

  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v102, v23))
  {
    v104[v102++] = xmmword_1E3063230;
    ++v103;
  }

  *(a6 + 1152) = -1;
  if (*(ViewDescriptor + 240))
  {
    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
    if (v102 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v102);
    }
  }

  else if (*(ViewDescriptor + 272))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 712) = 1;
    }

    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = -1;
  }

  *(a6 + 2704) = -1;
  if (*(ViewDescriptor + 248))
  {
    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 248));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 264));
    if (v102 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v102);
    }
  }

  else if (*(ViewDescriptor + 280))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 2264) = 1;
    }

    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 280));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = -1;
  }

  v26 = 0;
  v27 = *(ViewDescriptor + 928);
  v28 = 1;
  do
  {
    v29 = v28;
    if (!v27)
    {
      goto LABEL_113;
    }

    v98 = v28;
    v30 = 0;
    v31 = a6 + 1552 * v26;
    do
    {
      v32 = (*(ViewDescriptor + 944) + 136 * v30);
      re::AssetHandle::AssetHandle(v101, &v32[3 * v26 + 4]);
      if (*(a6 + 3104) == 1)
      {
        re::AssetHandle::operator=(v101, v32 + 4);
      }

      if (v101[1])
      {
        v33 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v101);
        if (*(v33 + 120))
        {
          goto LABEL_184;
        }

        v100 = *(v33 + 112);
        v34 = v32[1];
        if (v34)
        {
          v36 = v32[2];
          if (!v36)
          {
            v46 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_83:
            v99 = v46;
            v56 = (v31 + 9);
            if (*(v31 + 8))
            {
              v56 = *(v31 + 16);
            }

            re::RenderFrame::specifyScopeLane(v12, &v99, &v100, v56);
            if (v100)
            {
            }

            goto LABEL_111;
          }

          LOBYTE(v35) = *v36;
        }

        else
        {
          v35 = v34 >> 8;
          v36 = v32 + 9;
        }

        if (v35)
        {
          v35 = v35;
          v43 = v36[1];
          if (v43)
          {
            v44 = v36 + 2;
            do
            {
              v35 = 31 * v35 + v43;
              v45 = *v44++;
              v43 = v45;
            }

            while (v45);
          }

          v46 = v35 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = 0;
        }

        goto LABEL_83;
      }

      v37 = v32 + 4 * v26;
      v39 = *(v37 + 20);
      v38 = (v37 + 80);
      if (v39 != -1)
      {
        v40 = v32[1];
        if (v40)
        {
          v42 = v32[2];
          if (v42)
          {
            LOBYTE(v41) = *v42;
            goto LABEL_77;
          }

          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40 >> 8;
          v42 = v32 + 9;
LABEL_77:
          if (v41)
          {
            v41 = v41;
            v52 = v42[1];
            if (v52)
            {
              v53 = v42 + 2;
              do
              {
                v41 = 31 * v41 + v52;
                v54 = *v53++;
                v52 = v54;
              }

              while (v54);
            }

            v55 = v41 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = 0;
          }
        }

        v100 = v55;
        v64 = (v31 + 9);
        if (*(v31 + 8))
        {
          v64 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v100, v38, v64);
        goto LABEL_111;
      }

      v47 = &v32[v26];
      v48 = (v47 + 11);
      if (v47[11])
      {
        v49 = v32[1];
        if (v49)
        {
          v51 = v32[2];
          if (v51)
          {
            LOBYTE(v50) = *v51;
            goto LABEL_93;
          }

          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49 >> 8;
          v51 = v32 + 9;
LABEL_93:
          if (v50)
          {
            v50 = v50;
            v60 = v51[1];
            if (v60)
            {
              v61 = v51 + 2;
              do
              {
                v50 = 31 * v50 + v60;
                v62 = *v61++;
                v60 = v62;
              }

              while (v62);
            }

            v63 = v50 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = 0;
          }
        }

        v100 = v63;
        v66 = (v31 + 9);
        if (*(v31 + 8))
        {
          v66 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v100, v48, v66);
        goto LABEL_111;
      }

      v58 = v47[13];
      v57 = (v47 + 13);
      if (v58)
      {
        if (v32[1])
        {
          v59 = v32[2];
        }

        else
        {
          v59 = v32 + 9;
        }

        v65 = (v31 + 9);
        if (*(v31 + 8))
        {
          v65 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v59, v57, v65, *(v31 + 1168));
      }

LABEL_111:
      re::AssetHandle::~AssetHandle(v101);
      ++v30;
      v27 = *(ViewDescriptor + 928);
    }

    while (v27 > v30);
    v29 = v98;
LABEL_113:
    v28 = 0;
    v26 = 1;
  }

  while ((v29 & 1) != 0);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>(re::RenderGraphAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::RenderGraphAsset::assetType(a1);
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

re::DynamicString *re::DynamicArray<re::RenderGraphFileProvider>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphFileProvider>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  *v5 = *a2;
  result = re::DynamicString::DynamicString((v5 + 8), (a2 + 8));
  *(v5 + 40) = *(a2 + 40);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphFileProvider>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::AssetHandle::loadedAsset<re::RenderGraphAsset>(re::RenderGraphAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::RenderGraphAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void *re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
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
        v10 = 80 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v12 = *v11;
          *v11 = 0;
          *v11 = *v8;
          *v8 = v12;
          v13 = v11[2];
          v11[2] = *(v8 + 16);
          *(v8 + 16) = v13;
          *(v11 + 5) = 0u;
          *(v11 + 3) = 0u;
          v11[3] = *(v8 + 24);
          *(v8 + 24) = 0;
          v11[6] = *(v8 + 48);
          *(v8 + 48) = 0;
          v15 = v11[4];
          v14 = v11[5];
          v16 = *(v8 + 40);
          v11[4] = *(v8 + 32);
          v11[5] = v16;
          *(v8 + 32) = v15;
          *(v8 + 40) = v14;
          v17 = *(v8 + 56);
          *(v11 + 72) = *(v8 + 72);
          *(v11 + 7) = v17;
          re::DynamicString::deinit((v8 + 24));
          re::AssetHandle::~AssetHandle(v8);
          v8 += 80;
          v11 += 10;
          v10 -= 80;
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

__n128 std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      re::AssetHandle::operator=(a3, v5);
      re::DynamicString::operator=((a3 + 24), (v5 + 24));
      result = *(v5 + 56);
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 56) = result;
      v5 += 80;
      a3 += 80;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t anonymous namespace::setCameraViewDescriptorData(_anonymous_namespace_ *this, re::RenderManager *a2, re::CameraView *a3, re::CameraMultiView *a4, const re::ecs2::CameraViewDescriptor *a5, re::Allocator *a6)
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 26);
  v10 = *(a4 + 28);
  v11 = *(a4 + 25);
  v12 = *(a4 + 27);
  v13 = *(a4 + 68);
  v14 = *(a4 + 69);
  v15 = *(a4 + 70);
  v16 = *(a4 + 71);
  v17 = *(a4 + 18);
  *(a2 + 695) = 0;
  *(a2 + 346) = 0;
  *(a2 + 617) = 0;
  *(a2 + 42) = *(a4 + 3);
  *(a2 + 694) = *(a4 + 31);
  *(a2 + 172) = *(a4 + 16);
  if (*(a4 + 24))
  {
    v18 = 1;
  }

  else
  {
    v18 = 4;
  }

  *(a2 + 178) = v18;
  *(a2 + 294) = v17;
  *(a2 + 697) = v9;
  *(a2 + 704) = v10;
  *(a2 + 696) = v12 ^ 1;
  *(a2 + 703) = v11;
  *(a2 + 308) = *(a4 + 29);
  *(a2 + 1172) = *(a4 + 320);
  *(a2 + 1173) = (*(this + 319) | *(a4 + 321)) & 1;
  *(a2 + 1174) = *(a4 + 322);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a2 + 1184, a4 + 328);
  *(a2 + 698) = *(a4 + 32);
  if (v15 || v16 != 7)
  {
    *(a2 + 716) = 1;
    *(a2 + 732) = v14;
    *(a2 + 717) = v13;
    *(a2 + 718) = v13;
    *(a2 + 722) = v15;
    *(a2 + 719) = v16;
    *(a2 + 724) = 1;
    *(a2 + 725) = v13;
    *(a2 + 726) = v13;
    *(a2 + 730) = v15;
    *(a2 + 727) = v16;
  }

  if (*(a4 + 200))
  {
    *(a3 + 3104) = *(a4 + 200);
    re::CameraView::operator=(a3, a2);
    re::CameraView::operator=(a3 + 1552, a2);
    v19 = 0;
    v60 = (a4 + 80);
    v61 = a4 + 120;
    v58 = a4 + 432;
    v59 = a4 + 368;
    v20 = 1;
    do
    {
      v63 = v20;
      v21 = a3 + 1552 * v19;
      if (*&v61[40 * v19 + 16])
      {
        v22 = &v61[40 * v19];
      }

      else
      {
        v22 = v60;
      }

      re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(v68, v22);
      re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(v21 + 78, v69);
      if (v69)
      {
        v23 = v70;
        v24 = v69 << 6;
        do
        {
          re::DynamicString::DynamicString(&v71, v23);
          re::DynamicString::DynamicString(&v74[17], (v23 + 32));
          if (v72)
          {
            v25 = *&v74[1];
          }

          else
          {
            v25 = v73;
          }

          if (v74[25])
          {
            v26 = v75;
          }

          else
          {
            v26 = &v74[26];
          }

          re::DynamicString::DynamicString(&v64, v25, a5);
          re::DynamicString::DynamicString(&v66, v26, a5);
          v27.n128_f64[0] = re::DynamicArray<re::CameraView::PickupScopeLane>::add((v21 + 624), &v64);
          if (v66)
          {
            if (BYTE8(v66))
            {
              (*(*v66 + 40))(v27.n128_f64[0]);
            }

            v27 = 0uLL;
            v66 = 0u;
            v67 = 0u;
          }

          if (v64 && (v65 & 1) != 0)
          {
            (*(*v64 + 40))(v27);
          }

          if (*&v74[17])
          {
            if (v74[25])
            {
              (*(**&v74[17] + 40))(v27);
            }

            v27 = 0uLL;
            *&v74[17] = 0u;
            v75 = 0u;
          }

          if (v71 && (v72 & 1) != 0)
          {
            (*(*v71 + 40))(v27);
          }

          v23 = (v23 + 64);
          v24 -= 64;
        }

        while (v24);
      }

      *(v21 + 292) = *(&qword_1E306DD40 + v19);
      v28 = &v59[32 * v19];
      if ((*v28 & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v28 + 1) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v28 + 2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v29 = vmulq_f32(*(v28 + 1), *(v28 + 1));
        v30 = vaddv_f32(vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)));
        if (v30 == 1.0 || fabsf(v30 + -1.0) <= 0.00001)
        {
          v31 = *(v28 + 1);
          *v74 = *v28;
          *&v74[16] = v31;
          if (v21[1248])
          {
            v32 = *v28;
            *(v21 + 80) = *(v28 + 1);
            *(v21 + 79) = v32;
          }

          else
          {
            v21[1248] = 1;
            *(v21 + 79) = *v74;
            *(v21 + 80) = *&v74[16];
          }
        }
      }

      v33 = &v58[240 * v19];
      if (fabsf(*(v33 + 1)) >= 0.00001)
      {
        LOBYTE(v71) = 1;
        v34 = *(v33 + 3);
        v75 = *(v33 + 2);
        v76 = v34;
        v77 = *(v33 + 32);
        v35 = *(v33 + 1);
        *&v74[1] = *v33;
        *&v74[17] = v35;
        v78 = v33[80];
        if (v78 == 1)
        {
          v36 = *(v33 + 7);
          v79 = *(v33 + 6);
          v80 = v36;
          v37 = *(v33 + 9);
          v81 = *(v33 + 8);
          v82 = v37;
        }

        v83 = v33[160];
        if (v83 == 1)
        {
          v38 = *(v33 + 12);
          v84 = *(v33 + 11);
          v85 = v38;
          v39 = *(v33 + 14);
          v86 = *(v33 + 13);
          v87 = v39;
        }

        re::Optional<re::Projection>::operator=((v21 + 1296), &v71);
      }

      result = re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v68);
      v20 = 0;
      v19 = 1;
    }

    while ((v63 & 1) != 0);
  }

  else
  {
    v41 = 120;
    if (!*(a4 + 17))
    {
      v41 = 80;
    }

    re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(v68, (a4 + v41));
    re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a2 + 78, v69);
    if (v69)
    {
      v42 = v70;
      v43 = v69 << 6;
      do
      {
        re::DynamicString::DynamicString(&v71, v42);
        re::DynamicString::DynamicString(&v74[17], (v42 + 32));
        if (v72)
        {
          v44 = *&v74[1];
        }

        else
        {
          v44 = v73;
        }

        if (v74[25])
        {
          v45 = v75;
        }

        else
        {
          v45 = &v74[26];
        }

        re::DynamicString::DynamicString(&v64, v44, a5);
        re::DynamicString::DynamicString(&v66, v45, a5);
        v46.n128_f64[0] = re::DynamicArray<re::CameraView::PickupScopeLane>::add(a2 + 624, &v64);
        if (v66)
        {
          if (BYTE8(v66))
          {
            (*(*v66 + 40))(v46.n128_f64[0]);
          }

          v46 = 0uLL;
          v66 = 0u;
          v67 = 0u;
        }

        if (v64 && (v65 & 1) != 0)
        {
          (*(*v64 + 40))(v46);
        }

        if (*&v74[17])
        {
          if (v74[25])
          {
            (*(**&v74[17] + 40))(v46);
          }

          v46 = 0uLL;
          *&v74[17] = 0u;
          v75 = 0u;
        }

        if (v71 && (v72 & 1) != 0)
        {
          (*(*v71 + 40))(v46);
        }

        v42 = (v42 + 64);
        v43 -= 64;
      }

      while (v43);
    }

    *(a2 + 292) = 0;
    if ((*(a4 + 92) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(a4 + 93) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(a4 + 94) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v47 = vmulq_f32(*(a4 + 24), *(a4 + 24));
      v48 = vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)));
      if (v48 == 1.0 || fabsf(v48 + -1.0) <= 0.00001)
      {
        v49 = *(a4 + 24);
        *v74 = *(a4 + 23);
        *&v74[16] = v49;
        if (*(a2 + 1248))
        {
          v50 = *(a4 + 23);
          *(a2 + 80) = *(a4 + 24);
          *(a2 + 79) = v50;
        }

        else
        {
          *(a2 + 1248) = 1;
          *(a2 + 79) = *v74;
          *(a2 + 80) = *&v74[16];
        }
      }
    }

    if (fabsf(*(a4 + 109)) >= 0.00001)
    {
      v51 = *(a4 + 29);
      v52 = *(a4 + 30);
      v53 = *(a4 + 27);
      *&v74[17] = *(a4 + 28);
      v75 = v51;
      v76 = v52;
      LOBYTE(v71) = 1;
      v77 = *(a4 + 248);
      *&v74[1] = v53;
      v78 = *(a4 + 512);
      if (v78 == 1)
      {
        v54 = *(a4 + 34);
        v79 = *(a4 + 33);
        v80 = v54;
        v55 = *(a4 + 36);
        v81 = *(a4 + 35);
        v82 = v55;
      }

      v83 = *(a4 + 592);
      if (v83 == 1)
      {
        v56 = *(a4 + 39);
        v84 = *(a4 + 38);
        v85 = v56;
        v57 = *(a4 + 41);
        v86 = *(a4 + 40);
        v87 = v57;
      }

      re::Optional<re::Projection>::operator=(a2 + 1296, &v71);
    }

    return re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v68);
  }

  return result;
}

uint64_t re::DynamicArray<re::CameraMultiView>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::CameraMultiView>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 3120 * v4;
  v6 = 2;
  result = v5;
  v8 = a2;
  do
  {
    v9 = re::CameraView::CameraView(result, v8);
    v8 += 1552;
    result = v9 + 1552;
    --v6;
  }

  while (v6);
  *(v5 + 3104) = *(a2 + 3104);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void anonymous namespace::buildOneCameraView<re::ecs2::PerspectiveCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::PerspectiveCameraComponent *,re::ecs2::CameraViewDescriptorsComponent *,re::DynamicArray<re::CameraView> &,re::DynamicArray<re::CameraMultiView> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry> const&,re::Allocator *,re::ecs2::Entity *,re::RenderFrameWorkloadPatch *)::{lambda(re::CameraView&,re::ecs2::PerspectiveCameraComponent*,re::ecs2::CameraViewport const*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, float *a3, _OWORD *a4)
{
  re::ecs2::PerspectiveCameraComponent::calculateProjection(a3, &v32, 1.0);
  v8 = v35;
  *(a2 + 848) = v34;
  *(a2 + 864) = v8;
  *(a2 + 880) = v36;
  v9 = v33;
  *(a2 + 816) = v32;
  *(a2 + 832) = v9;
  if (*(a2 + 896))
  {
    if ((v37 & 1) == 0)
    {
      *(a2 + 896) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v37 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 896) = 1;
  }

  v10 = v39;
  *(a2 + 912) = v38;
  *(a2 + 928) = v10;
  v11 = v41;
  *(a2 + 944) = v40;
  *(a2 + 960) = v11;
LABEL_7:
  if (*(a2 + 976))
  {
    if ((v42 & 1) == 0)
    {
      *(a2 + 976) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v42 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 976) = 1;
  }

  v12 = v44;
  *(a2 + 992) = v43;
  *(a2 + 1008) = v12;
  v13 = v46;
  *(a2 + 1024) = v45;
  *(a2 + 1040) = v13;
LABEL_13:
  *(a2 + 1056) = *a4;
  re::ecs2::PerspectiveCameraComponent::calculateProjection(a3, &v32, 1.0);
  v14 = v35;
  *(a2 + 96) = v34;
  *(a2 + 112) = v14;
  *(a2 + 128) = v36;
  v15 = v33;
  *(a2 + 64) = v32;
  *(a2 + 80) = v15;
  if (*(a2 + 144))
  {
    if (v37)
    {
      v16 = v39;
      *(a2 + 160) = v38;
      *(a2 + 176) = v16;
      v17 = v41;
      *(a2 + 192) = v40;
      *(a2 + 208) = v17;
      v18 = 1;
    }

    else
    {
      v18 = 0;
      *(a2 + 144) = 0;
    }
  }

  else if (v37)
  {
    v18 = 1;
    *(a2 + 144) = 1;
    v19 = v39;
    *(a2 + 160) = v38;
    *(a2 + 176) = v19;
    v20 = v41;
    *(a2 + 192) = v40;
    *(a2 + 208) = v20;
  }

  else
  {
    v18 = 0;
  }

  if (*(a2 + 224))
  {
    if (v42)
    {
      v21 = v44;
      *(a2 + 240) = v43;
      *(a2 + 256) = v21;
      v22 = v46;
      *(a2 + 272) = v45;
      *(a2 + 288) = v22;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      *(a2 + 224) = 0;
    }
  }

  else if (v42)
  {
    v23 = 1;
    *(a2 + 224) = 1;
    v24 = v44;
    *(a2 + 240) = v43;
    *(a2 + 256) = v24;
    v25 = v46;
    *(a2 + 272) = v45;
    *(a2 + 288) = v25;
  }

  else
  {
    v23 = 0;
  }

  *(a2 + 1072) = xmmword_1E3063230;
  v26 = *(a2 + 112);
  *(a2 + 368) = *(a2 + 96);
  *(a2 + 384) = v26;
  *(a2 + 400) = *(a2 + 128);
  v27 = *(a2 + 80);
  *(a2 + 336) = *(a2 + 64);
  *(a2 + 352) = v27;
  if (*(a2 + 416))
  {
    if ((v18 & 1) == 0)
    {
      *(a2 + 416) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }

    *(a2 + 416) = 1;
  }

  v28 = *(a2 + 176);
  *(a2 + 432) = *(a2 + 160);
  *(a2 + 448) = v28;
  v29 = *(a2 + 208);
  *(a2 + 464) = *(a2 + 192);
  *(a2 + 480) = v29;
LABEL_33:
  if ((*(a2 + 496) & 1) == 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_39;
    }

    *(a2 + 496) = 1;
LABEL_38:
    v30 = *(a2 + 256);
    *(a2 + 512) = *(a2 + 240);
    *(a2 + 528) = v30;
    v31 = *(a2 + 288);
    *(a2 + 544) = *(a2 + 272);
    *(a2 + 560) = v31;
    goto LABEL_39;
  }

  if (v23)
  {
    goto LABEL_38;
  }

  *(a2 + 496) = 0;
LABEL_39:
  *(a2 + 736) = **(a1 + 16);
}

uint64_t re::DynamicArray<re::CameraView>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::CameraView>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::CameraView::CameraView(*(this + 4) + 1552 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::DynamicArray<re::CameraView::PickupScopeLane>::add(uint64_t a1, void *a2)
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

        re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + (v5 << 6);
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = a2[3];
  v13 = a2[1];
  *v11 = *a2;
  *a2 = 0;
  v14 = a2[2];
  a2[3] = 0;
  v16 = *(v11 + 8);
  v15 = *(v11 + 16);
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  a2[1] = v16;
  a2[2] = v15;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 56) = a2[7];
  v17 = a2[5];
  *(v11 + 32) = a2[4];
  a2[4] = 0;
  v18 = a2[6];
  a2[7] = 0;
  v20 = *(v11 + 40);
  v19 = *(v11 + 48);
  *(v11 + 40) = v17;
  *(v11 + 48) = v18;
  a2[5] = v20;
  a2[6] = v19;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void anonymous namespace::buildOneCameraView<re::ecs2::OrthographicCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::OrthographicCameraComponent *,re::ecs2::CameraViewDescriptorsComponent *,re::DynamicArray<re::CameraView> &,re::DynamicArray<re::CameraMultiView> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry> const&,re::Allocator *,re::ecs2::Entity *,re::RenderFrameWorkloadPatch *)::{lambda(re::CameraView&,re::ecs2::OrthographicCameraComponent*,re::ecs2::CameraViewport const*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, float *a3, _OWORD *a4)
{
  re::ecs2::OrthographicCameraComponent::calculateProjection(a3, &v32, 1.0);
  v8 = v35;
  *(a2 + 848) = v34;
  *(a2 + 864) = v8;
  *(a2 + 880) = v36;
  v9 = v33;
  *(a2 + 816) = v32;
  *(a2 + 832) = v9;
  if (*(a2 + 896))
  {
    if ((v37 & 1) == 0)
    {
      *(a2 + 896) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v37 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 896) = 1;
  }

  v10 = v39;
  *(a2 + 912) = v38;
  *(a2 + 928) = v10;
  v11 = v41;
  *(a2 + 944) = v40;
  *(a2 + 960) = v11;
LABEL_7:
  if (*(a2 + 976))
  {
    if ((v42 & 1) == 0)
    {
      *(a2 + 976) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v42 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 976) = 1;
  }

  v12 = v44;
  *(a2 + 992) = v43;
  *(a2 + 1008) = v12;
  v13 = v46;
  *(a2 + 1024) = v45;
  *(a2 + 1040) = v13;
LABEL_13:
  *(a2 + 1056) = *a4;
  re::ecs2::OrthographicCameraComponent::calculateProjection(a3, &v32, 1.0);
  v14 = v35;
  *(a2 + 96) = v34;
  *(a2 + 112) = v14;
  *(a2 + 128) = v36;
  v15 = v33;
  *(a2 + 64) = v32;
  *(a2 + 80) = v15;
  if (*(a2 + 144))
  {
    if (v37)
    {
      v16 = v39;
      *(a2 + 160) = v38;
      *(a2 + 176) = v16;
      v17 = v41;
      *(a2 + 192) = v40;
      *(a2 + 208) = v17;
      v18 = 1;
    }

    else
    {
      v18 = 0;
      *(a2 + 144) = 0;
    }
  }

  else if (v37)
  {
    v18 = 1;
    *(a2 + 144) = 1;
    v19 = v39;
    *(a2 + 160) = v38;
    *(a2 + 176) = v19;
    v20 = v41;
    *(a2 + 192) = v40;
    *(a2 + 208) = v20;
  }

  else
  {
    v18 = 0;
  }

  if (*(a2 + 224))
  {
    if (v42)
    {
      v21 = v44;
      *(a2 + 240) = v43;
      *(a2 + 256) = v21;
      v22 = v46;
      *(a2 + 272) = v45;
      *(a2 + 288) = v22;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      *(a2 + 224) = 0;
    }
  }

  else if (v42)
  {
    v23 = 1;
    *(a2 + 224) = 1;
    v24 = v44;
    *(a2 + 240) = v43;
    *(a2 + 256) = v24;
    v25 = v46;
    *(a2 + 272) = v45;
    *(a2 + 288) = v25;
  }

  else
  {
    v23 = 0;
  }

  *(a2 + 1072) = xmmword_1E3063230;
  v26 = *(a2 + 112);
  *(a2 + 368) = *(a2 + 96);
  *(a2 + 384) = v26;
  *(a2 + 400) = *(a2 + 128);
  v27 = *(a2 + 80);
  *(a2 + 336) = *(a2 + 64);
  *(a2 + 352) = v27;
  if (*(a2 + 416))
  {
    if ((v18 & 1) == 0)
    {
      *(a2 + 416) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }

    *(a2 + 416) = 1;
  }

  v28 = *(a2 + 176);
  *(a2 + 432) = *(a2 + 160);
  *(a2 + 448) = v28;
  v29 = *(a2 + 208);
  *(a2 + 464) = *(a2 + 192);
  *(a2 + 480) = v29;
LABEL_33:
  if ((*(a2 + 496) & 1) == 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_39;
    }

    *(a2 + 496) = 1;
LABEL_38:
    v30 = *(a2 + 256);
    *(a2 + 512) = *(a2 + 240);
    *(a2 + 528) = v30;
    v31 = *(a2 + 288);
    *(a2 + 544) = *(a2 + 272);
    *(a2 + 560) = v31;
    goto LABEL_39;
  }

  if (v23)
  {
    goto LABEL_38;
  }

  *(a2 + 496) = 0;
LABEL_39:
  *(a2 + 736) = **(a1 + 16);
}

void anonymous namespace::buildOneCameraView<re::ecs2::CustomMatrixCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::CustomMatrixCameraComponent *,re::ecs2::CameraViewDescriptorsComponent *,re::DynamicArray<re::CameraView> &,re::DynamicArray<re::CameraMultiView> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry> const&,re::Allocator *,re::ecs2::Entity *,re::RenderFrameWorkloadPatch *)::{lambda(re::CameraView&,re::ecs2::CustomMatrixCameraComponent*,re::ecs2::CameraViewport const*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  re::ecs2::CustomMatrixCameraComponent::calculateProjection(a3, 0, &v34);
  v10 = v37;
  *(a2 + 848) = v36;
  *(a2 + 864) = v10;
  *(a2 + 880) = v38;
  v11 = v35;
  *(a2 + 816) = v34;
  *(a2 + 832) = v11;
  if (*(a2 + 896))
  {
    if ((v39 & 1) == 0)
    {
      *(a2 + 896) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 896) = 1;
  }

  v12 = v41;
  *(a2 + 912) = v40;
  *(a2 + 928) = v12;
  v13 = v43;
  *(a2 + 944) = v42;
  *(a2 + 960) = v13;
LABEL_7:
  if (*(a2 + 976))
  {
    if ((v44 & 1) == 0)
    {
      *(a2 + 976) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v44 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 976) = 1;
  }

  v14 = v46;
  *(a2 + 992) = v45;
  *(a2 + 1008) = v14;
  v15 = v48;
  *(a2 + 1024) = v47;
  *(a2 + 1040) = v15;
LABEL_13:
  *(a2 + 1056) = *a4;
  re::ecs2::CustomMatrixCameraComponent::calculateProjection(a3, a5, &v34);
  v16 = v37;
  *(a2 + 96) = v36;
  *(a2 + 112) = v16;
  *(a2 + 128) = v38;
  v17 = v35;
  *(a2 + 64) = v34;
  *(a2 + 80) = v17;
  if (*(a2 + 144))
  {
    if (v39)
    {
      v18 = v41;
      *(a2 + 160) = v40;
      *(a2 + 176) = v18;
      v19 = v43;
      *(a2 + 192) = v42;
      *(a2 + 208) = v19;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      *(a2 + 144) = 0;
    }
  }

  else if (v39)
  {
    v20 = 1;
    *(a2 + 144) = 1;
    v21 = v41;
    *(a2 + 160) = v40;
    *(a2 + 176) = v21;
    v22 = v43;
    *(a2 + 192) = v42;
    *(a2 + 208) = v22;
  }

  else
  {
    v20 = 0;
  }

  if (*(a2 + 224))
  {
    if (v44)
    {
      v23 = v46;
      *(a2 + 240) = v45;
      *(a2 + 256) = v23;
      v24 = v48;
      *(a2 + 272) = v47;
      *(a2 + 288) = v24;
      v25 = 1;
    }

    else
    {
      v25 = 0;
      *(a2 + 224) = 0;
    }
  }

  else if (v44)
  {
    v25 = 1;
    *(a2 + 224) = 1;
    v26 = v46;
    *(a2 + 240) = v45;
    *(a2 + 256) = v26;
    v27 = v48;
    *(a2 + 272) = v47;
    *(a2 + 288) = v27;
  }

  else
  {
    v25 = 0;
  }

  *(a2 + 1072) = xmmword_1E3063230;
  v28 = *(a2 + 112);
  *(a2 + 368) = *(a2 + 96);
  *(a2 + 384) = v28;
  *(a2 + 400) = *(a2 + 128);
  v29 = *(a2 + 80);
  *(a2 + 336) = *(a2 + 64);
  *(a2 + 352) = v29;
  if (*(a2 + 416))
  {
    if ((v20 & 1) == 0)
    {
      *(a2 + 416) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_33;
    }

    *(a2 + 416) = 1;
  }

  v30 = *(a2 + 176);
  *(a2 + 432) = *(a2 + 160);
  *(a2 + 448) = v30;
  v31 = *(a2 + 208);
  *(a2 + 464) = *(a2 + 192);
  *(a2 + 480) = v31;
LABEL_33:
  if ((*(a2 + 496) & 1) == 0)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_39;
    }

    *(a2 + 496) = 1;
LABEL_38:
    v32 = *(a2 + 256);
    *(a2 + 512) = *(a2 + 240);
    *(a2 + 528) = v32;
    v33 = *(a2 + 288);
    *(a2 + 544) = *(a2 + 272);
    *(a2 + 560) = v33;
    goto LABEL_39;
  }

  if (v25)
  {
    goto LABEL_38;
  }

  *(a2 + 496) = 0;
LABEL_39:
  *(a2 + 736) = **(a1 + 16);
}

double anonymous namespace::updateOneViewPerFrameData<re::ecs2::PerspectiveCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::CameraViewDescriptorsComponent *,re::ecs2::PerspectiveCameraComponent *,re::CameraView *,re::CameraMultiView *)::{lambda(re::CameraView&,re::ecs2::PerspectiveCameraComponent*,re::CameraEye)#1}::operator()(uint64_t a1, float32x4_t *a2, const re::ecs2::Entity *a3)
{
  if (*(a1 + 1248) == 1)
  {
    re::RenderCamera::computeInverseTransform(&v121, (a1 + 1264));
    v6 = v122;
    *(a1 + 752) = v121;
    *(a1 + 768) = v6;
    v7 = v124;
    *(a1 + 784) = v123;
    *(a1 + 800) = v7;
    re::RenderCamera::computeLocalTransform(&v121, (a1 + 1264));
    v8 = (v121.f32[0] + v122.f32[1]) + v123.f32[2];
    if (v8 >= 0.0)
    {
      v34 = sqrtf(v8 + 1.0);
      v35 = v34 + v34;
      v36 = vrecpe_f32(COERCE_UNSIGNED_INT(v34 + v34));
      v37 = vmul_f32(v36, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v36));
      v38 = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v37)).f32[0];
      *&v13 = (v122.f32[2] - v123.f32[1]) * v38;
      v14 = (v123.f32[0] - v121.f32[2]) * v38;
      v15 = (v121.f32[1] - v122.f32[0]) * v38;
      v16 = v35 * 0.25;
    }

    else if (v121.f32[0] < v122.f32[1] || v121.f32[0] < v123.f32[2])
    {
      v39 = sqrtf(((1.0 - v121.f32[0]) - v122.f32[1]) + v123.f32[2]);
      *&v40 = v39 + v39;
      v41 = vrecpe_f32(v40);
      v42 = vmul_f32(v41, vrecps_f32(v40, v41));
      v43 = vmul_f32(v42, vrecps_f32(v40, v42)).f32[0];
      v44 = (v121.f32[2] + v123.f32[0]) * v43;
      v45 = (v122.f32[2] + v123.f32[1]) * v43;
      v46 = *&v40 * 0.25;
      v47 = (v121.f32[1] - v122.f32[0]) * v43;
      v48 = sqrtf(v122.f32[1] + ((1.0 - v121.f32[0]) - v123.f32[2]));
      *&v49 = v48 + v48;
      v50 = vrecpe_f32(v49);
      v51 = vmul_f32(v50, vrecps_f32(v49, v50));
      v52 = vmul_f32(v51, vrecps_f32(v49, v51)).f32[0];
      v53 = *&v49 * 0.25;
      v54 = (v122.f32[2] + v123.f32[1]) * v52;
      v16 = (v123.f32[0] - v121.f32[2]) * v52;
      if (v122.f32[1] >= v123.f32[2])
      {
        *&v13 = (v121.f32[1] + v122.f32[0]) * v52;
      }

      else
      {
        *&v13 = v44;
      }

      if (v122.f32[1] >= v123.f32[2])
      {
        v14 = v53;
      }

      else
      {
        v14 = v45;
      }

      if (v122.f32[1] >= v123.f32[2])
      {
        v15 = v54;
      }

      else
      {
        v15 = v46;
      }

      if (v122.f32[1] < v123.f32[2])
      {
        v16 = v47;
      }
    }

    else
    {
      v9 = sqrtf(v121.f32[0] + ((1.0 - v122.f32[1]) - v123.f32[2]));
      *&v10 = v9 + v9;
      v11 = vrecpe_f32(v10);
      v12 = vmul_f32(v11, vrecps_f32(v10, v11));
      v12.f32[0] = vmul_f32(v12, vrecps_f32(v10, v12)).f32[0];
      *&v13 = *&v10 * 0.25;
      v14 = (v121.f32[1] + v122.f32[0]) * v12.f32[0];
      v15 = (v121.f32[2] + v123.f32[0]) * v12.f32[0];
      v16 = (v122.f32[2] - v123.f32[1]) * v12.f32[0];
    }

    *(&v13 + 1) = v14;
    *(&v13 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v15));
    *(a1 + 32) = v124;
    *(a1 + 48) = v13;
  }

  else
  {
    re::ecs2::PerspectiveCameraComponent::calculateWorldPose(a2, 0, &v121);
    v17 = vnegq_f32(v122);
    v18 = vnegq_f32(v121);
    v19 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
    v20 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v122), v19, v121);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v122), v22, v19);
    v24 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v22, v122, 3), v121), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    *v22.i32 = *v17.i32 + *v17.i32;
    v25 = (*v17.i32 + *v17.i32) * *v17.i32;
    v26 = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], *v17.i8, 1);
    v27 = vmuls_lane_f32(*&v17.i32[2] + *&v17.i32[2], v17, 2);
    v28 = vmuls_lane_f32(*v17.i32 + *v17.i32, *v17.i8, 1);
    v29 = vmuls_lane_f32(*v17.i32 + *v17.i32, v17, 2);
    *v17.i32 = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], v17, 2);
    *v22.i32 = vmuls_lane_f32(*v22.i32, v122, 3);
    v19.f32[0] = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], v122, 3);
    v30 = vmuls_lane_f32(*&v17.i32[2] + *&v17.i32[2], v122, 3);
    HIDWORD(v31) = 0;
    *&v31 = 1.0 - (v26 + v27);
    *(&v31 + 1) = v28 + v30;
    v23.i32[3] = 0;
    *(&v31 + 2) = v29 - v19.f32[0];
    HIDWORD(v32) = 0;
    *&v32 = v28 - v30;
    *(&v32 + 1) = 1.0 - (v25 + v27);
    *(&v32 + 2) = *v17.i32 + *v22.i32;
    *v23.i32 = v29 + v19.f32[0];
    *&v23.i32[1] = *v17.i32 - *v22.i32;
    *&v23.i32[2] = 1.0 - (v25 + v26);
    v24.i32[3] = 1.0;
    *(a1 + 752) = v31;
    *(a1 + 768) = v32;
    *(a1 + 784) = v23;
    *(a1 + 800) = v24;
    re::ecs2::PerspectiveCameraComponent::calculateWorldPose(a2, a3, &v121);
    v33 = v122;
    *(a1 + 32) = v121;
    *(a1 + 48) = v33;
  }

  v55 = *(a1 + 48);
  *(a1 + 304) = *(a1 + 32);
  *(a1 + 320) = v55;
  if (*(a1 + 1296) == 1)
  {
    v56 = *(a1 + 1328);
    v57 = *(a1 + 1360);
    *(a1 + 96) = *(a1 + 1344);
    *(a1 + 112) = v57;
    *(a1 + 128) = *(a1 + 1376);
    *(a1 + 64) = *(a1 + 1312);
    *(a1 + 80) = v56;
    v58 = *(a1 + 1392);
    if (*(a1 + 144))
    {
      if (v58)
      {
        v59 = *(a1 + 1424);
        *(a1 + 160) = *(a1 + 1408);
        *(a1 + 176) = v59;
        v60 = *(a1 + 1456);
        *(a1 + 192) = *(a1 + 1440);
        *(a1 + 208) = v60;
        v61 = 1;
      }

      else
      {
        v61 = 0;
        *(a1 + 144) = 0;
      }
    }

    else if (v58)
    {
      v61 = 1;
      *(a1 + 144) = 1;
      v80 = *(a1 + 1424);
      *(a1 + 160) = *(a1 + 1408);
      *(a1 + 176) = v80;
      v81 = *(a1 + 1456);
      *(a1 + 192) = *(a1 + 1440);
      *(a1 + 208) = v81;
    }

    else
    {
      v61 = 0;
    }

    if (*(a1 + 224))
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        *(a1 + 224) = 0;
        goto LABEL_42;
      }
    }

    else
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        goto LABEL_42;
      }

      *(a1 + 224) = 1;
    }

    v91 = *(a1 + 1504);
    *(a1 + 240) = *(a1 + 1488);
    *(a1 + 256) = v91;
    v92 = *(a1 + 1536);
    *(a1 + 272) = *(a1 + 1520);
    *(a1 + 288) = v92;
LABEL_42:
    if (v58)
    {
      *(a1 + 1088) = *(a1 + 1408);
      *(a1 + 1104) = *(a1 + 1424);
      *(a1 + 1120) = *(a1 + 1440);
      *(a1 + 1136) = *(a1 + 1456);
      if ((v61 & 1) == 0)
      {
LABEL_44:
        re::Projection::cullingProjectionMatrix(&v113, (a1 + 64));
        goto LABEL_47;
      }
    }

    else
    {
      re::Projection::cullingProjectionMatrix(&v121, (a1 + 1312));
      v93 = *(a1 + 144);
      v94 = v122;
      *(a1 + 1088) = v121;
      *(a1 + 1104) = v94;
      v95 = v124;
      *(a1 + 1120) = v123;
      *(a1 + 1136) = v95;
      if ((v93 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v96 = *(a1 + 176);
    v113 = *(a1 + 160);
    v114 = v96;
    v97 = *(a1 + 208);
    v115 = *(a1 + 192);
    v116 = v97;
LABEL_47:
    re::RenderCamera::computeInverseTransform(&v109, (a1 + 32));
    v98 = 0;
    v99 = v113;
    v100 = v114;
    v101 = v115;
    v102 = v116;
    v117 = v109;
    v118 = v110;
    v119 = v111;
    v120 = v112;
    do
    {
      *(&v121 + v98) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, COERCE_FLOAT(*(&v117 + v98))), v100, *(&v117 + v98), 1), v101, *(&v117 + v98), 2), v102, *(&v117 + v98), 3);
      v98 += 16;
    }

    while (v98 != 64);
    result = *v121.i64;
    v103 = v122;
    v104 = v123;
    v105 = v124;
    v106 = &a2[4 * (a3 == 2)];
    v106[3] = v121;
    v106[4] = v103;
    v106[5] = v104;
    v106[6] = v105;
    return result;
  }

  if (a2[11].i8[0] == 1)
  {
    *(a1 + 92) = 1;
    *(a1 + 364) = 1;
    v107 = a2[12];
    v108 = vmulq_n_f32(v107, -v107.f32[3]);
    re::RenderCamera::computeInverseTransform(&v121, (a1 + 32));
    v62 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v107.f32[0]), v122, *v107.f32, 1), v123, v107, 2);
    v63 = vmulq_f32(v62, v62);
    *&v64 = v63.f32[2] + vaddv_f32(*v63.f32);
    *v63.f32 = vrsqrte_f32(v64);
    *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32)));
    v65 = vmulq_n_f32(v62, vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
    v66 = vaddq_f32(v124, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v108.f32[0]), v122, *v108.f32, 1), v123, v108, 2));
    v67 = vmulq_f32(v65, vdivq_f32(v66, vdupq_laneq_s32(v66, 3)));
    v65.f32[3] = -(v67.f32[2] + vaddv_f32(*v67.f32));
    *(a1 + 96) = v65;
    re::RenderCamera::computeInverseTransform(&v121, (a1 + 304));
    v68 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v107.f32[0]), v122, *v107.f32, 1), v123, v107, 2);
    v69 = vmulq_f32(v68, v68);
    *&v70 = v69.f32[2] + vaddv_f32(*v69.f32);
    *v69.f32 = vrsqrte_f32(v70);
    *v69.f32 = vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32)));
    v71 = vmulq_n_f32(v68, vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32))).f32[0]);
    v72 = vaddq_f32(v124, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v108.f32[0]), v122, *v108.f32, 1), v123, v108, 2));
    v73 = vmulq_f32(v71, vdivq_f32(v72, vdupq_laneq_s32(v72, 3)));
    v71.f32[3] = -(v73.f32[2] + vaddv_f32(*v73.f32));
    *(a1 + 368) = v71;
  }

  f32 = a2[4 * (a3 == 2)].f32;
  v75 = f32[3];
  v76 = f32[4];
  v77 = f32[5];
  *(a1 + 1136) = f32[6];
  *(a1 + 1120) = v77;
  *(a1 + 1104) = v76;
  *(a1 + 1088) = v75;
  if (*(a1 + 144) == 1)
  {
    v78 = *(a1 + 176);
    v113 = *(a1 + 160);
    v114 = v78;
    v79 = *(a1 + 208);
    v115 = *(a1 + 192);
    v116 = v79;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(&v113, (a1 + 64));
  }

  re::RenderCamera::computeInverseTransform(&v109, (a1 + 32));
  v82 = 0;
  v83 = v113;
  v84 = v114;
  v85 = v115;
  v86 = v116;
  v117 = v109;
  v118 = v110;
  v119 = v111;
  v120 = v112;
  do
  {
    *(&v121 + v82) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*(&v117 + v82))), v84, *(&v117 + v82), 1), v85, *(&v117 + v82), 2), v86, *(&v117 + v82), 3);
    v82 += 16;
  }

  while (v82 != 64);
  result = *v121.i64;
  v88 = v122;
  v89 = v123;
  v90 = v124;
  f32[3] = v121;
  f32[4] = v88;
  f32[5] = v89;
  f32[6] = v90;
  return result;
}

uint64_t re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 1uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

double anonymous namespace::updateOneViewPerFrameData<re::ecs2::OrthographicCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::CameraViewDescriptorsComponent *,re::ecs2::OrthographicCameraComponent *,re::CameraView *,re::CameraMultiView *)::{lambda(re::CameraView&,re::ecs2::OrthographicCameraComponent*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, const re::ecs2::Entity *a3)
{
  if (*(a1 + 1248) == 1)
  {
    re::RenderCamera::computeInverseTransform(&v107, (a1 + 1264));
    v6 = v108;
    *(a1 + 752) = v107;
    *(a1 + 768) = v6;
    v7 = v110;
    *(a1 + 784) = v109;
    *(a1 + 800) = v7;
    re::RenderCamera::computeLocalTransform(&v107, (a1 + 1264));
    v8 = (v107.f32[0] + v108.f32[1]) + *(&v109 + 2);
    if (v8 >= 0.0)
    {
      v34 = sqrtf(v8 + 1.0);
      v35 = v34 + v34;
      v36 = vrecpe_f32(COERCE_UNSIGNED_INT(v34 + v34));
      v37 = vmul_f32(v36, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v36));
      v38 = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v37)).f32[0];
      *&v13 = (v108.f32[2] - *(&v109 + 1)) * v38;
      v14 = (*&v109 - v107.f32[2]) * v38;
      v15 = (v107.f32[1] - v108.f32[0]) * v38;
      v16 = v35 * 0.25;
    }

    else if (v107.f32[0] < v108.f32[1] || v107.f32[0] < *(&v109 + 2))
    {
      v39 = sqrtf(((1.0 - v107.f32[0]) - v108.f32[1]) + *(&v109 + 2));
      *&v40 = v39 + v39;
      v41 = vrecpe_f32(v40);
      v42 = vmul_f32(v41, vrecps_f32(v40, v41));
      v43 = vmul_f32(v42, vrecps_f32(v40, v42)).f32[0];
      v44 = (v107.f32[2] + *&v109) * v43;
      v45 = (v108.f32[2] + *(&v109 + 1)) * v43;
      v46 = *&v40 * 0.25;
      v47 = (v107.f32[1] - v108.f32[0]) * v43;
      v48 = sqrtf(v108.f32[1] + ((1.0 - v107.f32[0]) - *(&v109 + 2)));
      *&v49 = v48 + v48;
      v50 = vrecpe_f32(v49);
      v51 = vmul_f32(v50, vrecps_f32(v49, v50));
      v52 = vmul_f32(v51, vrecps_f32(v49, v51)).f32[0];
      v53 = *&v49 * 0.25;
      v54 = (v108.f32[2] + *(&v109 + 1)) * v52;
      v16 = (*&v109 - v107.f32[2]) * v52;
      if (v108.f32[1] >= *(&v109 + 2))
      {
        *&v13 = (v107.f32[1] + v108.f32[0]) * v52;
      }

      else
      {
        *&v13 = v44;
      }

      if (v108.f32[1] >= *(&v109 + 2))
      {
        v14 = v53;
      }

      else
      {
        v14 = v45;
      }

      if (v108.f32[1] >= *(&v109 + 2))
      {
        v15 = v54;
      }

      else
      {
        v15 = v46;
      }

      if (v108.f32[1] < *(&v109 + 2))
      {
        v16 = v47;
      }
    }

    else
    {
      v9 = sqrtf(v107.f32[0] + ((1.0 - v108.f32[1]) - *(&v109 + 2)));
      *&v10 = v9 + v9;
      v11 = vrecpe_f32(v10);
      v12 = vmul_f32(v11, vrecps_f32(v10, v11));
      v12.f32[0] = vmul_f32(v12, vrecps_f32(v10, v12)).f32[0];
      *&v13 = *&v10 * 0.25;
      v14 = (v107.f32[1] + v108.f32[0]) * v12.f32[0];
      v15 = (v107.f32[2] + *&v109) * v12.f32[0];
      v16 = (v108.f32[2] - *(&v109 + 1)) * v12.f32[0];
    }

    *(&v13 + 1) = v14;
    *(&v13 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v15));
    *(a1 + 32) = v110;
    *(a1 + 48) = v13;
  }

  else
  {
    re::ecs2::OrthographicCameraComponent::calculateWorldPose(a2, 0, &v107);
    v17 = vnegq_f32(v108);
    v18 = vnegq_f32(v107);
    v19 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
    v20 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v108), v19, v107);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v108), v22, v19);
    v24 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v22, v108, 3), v107), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    *v22.i32 = *v17.i32 + *v17.i32;
    v25 = (*v17.i32 + *v17.i32) * *v17.i32;
    v26 = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], *v17.i8, 1);
    v27 = vmuls_lane_f32(*&v17.i32[2] + *&v17.i32[2], v17, 2);
    v28 = vmuls_lane_f32(*v17.i32 + *v17.i32, *v17.i8, 1);
    v29 = vmuls_lane_f32(*v17.i32 + *v17.i32, v17, 2);
    *v17.i32 = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], v17, 2);
    *v22.i32 = vmuls_lane_f32(*v22.i32, v108, 3);
    v19.f32[0] = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], v108, 3);
    v30 = vmuls_lane_f32(*&v17.i32[2] + *&v17.i32[2], v108, 3);
    HIDWORD(v31) = 0;
    *&v31 = 1.0 - (v26 + v27);
    *(&v31 + 1) = v28 + v30;
    v23.i32[3] = 0;
    *(&v31 + 2) = v29 - v19.f32[0];
    HIDWORD(v32) = 0;
    *&v32 = v28 - v30;
    *(&v32 + 1) = 1.0 - (v25 + v27);
    *(&v32 + 2) = *v17.i32 + *v22.i32;
    *v23.i32 = v29 + v19.f32[0];
    *&v23.i32[1] = *v17.i32 - *v22.i32;
    *&v23.i32[2] = 1.0 - (v25 + v26);
    v24.i32[3] = 1.0;
    *(a1 + 752) = v31;
    *(a1 + 768) = v32;
    *(a1 + 784) = v23;
    *(a1 + 800) = v24;
    re::ecs2::OrthographicCameraComponent::calculateWorldPose(a2, a3, &v107);
    v33 = v108;
    *(a1 + 32) = v107;
    *(a1 + 48) = v33;
  }

  v55 = *(a1 + 48);
  *(a1 + 304) = *(a1 + 32);
  *(a1 + 320) = v55;
  if (*(a1 + 1296) == 1)
  {
    v56 = *(a1 + 1328);
    v57 = *(a1 + 1360);
    *(a1 + 96) = *(a1 + 1344);
    *(a1 + 112) = v57;
    *(a1 + 128) = *(a1 + 1376);
    *(a1 + 64) = *(a1 + 1312);
    *(a1 + 80) = v56;
    v58 = *(a1 + 1392);
    if (*(a1 + 144))
    {
      if (v58)
      {
        v59 = *(a1 + 1424);
        *(a1 + 160) = *(a1 + 1408);
        *(a1 + 176) = v59;
        v60 = *(a1 + 1456);
        *(a1 + 192) = *(a1 + 1440);
        *(a1 + 208) = v60;
        v61 = 1;
      }

      else
      {
        v61 = 0;
        *(a1 + 144) = 0;
      }
    }

    else if (v58)
    {
      v61 = 1;
      *(a1 + 144) = 1;
      v68 = *(a1 + 1424);
      *(a1 + 160) = *(a1 + 1408);
      *(a1 + 176) = v68;
      v69 = *(a1 + 1456);
      *(a1 + 192) = *(a1 + 1440);
      *(a1 + 208) = v69;
    }

    else
    {
      v61 = 0;
    }

    if (*(a1 + 224))
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        *(a1 + 224) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        goto LABEL_40;
      }

      *(a1 + 224) = 1;
    }

    v79 = *(a1 + 1504);
    *(a1 + 240) = *(a1 + 1488);
    *(a1 + 256) = v79;
    v80 = *(a1 + 1536);
    *(a1 + 272) = *(a1 + 1520);
    *(a1 + 288) = v80;
LABEL_40:
    if (v58)
    {
      *(a1 + 1088) = *(a1 + 1408);
      *(a1 + 1104) = *(a1 + 1424);
      *(a1 + 1120) = *(a1 + 1440);
      *(a1 + 1136) = *(a1 + 1456);
      if ((v61 & 1) == 0)
      {
LABEL_42:
        re::Projection::cullingProjectionMatrix(&v99, (a1 + 64));
        goto LABEL_45;
      }
    }

    else
    {
      re::Projection::cullingProjectionMatrix(&v107, (a1 + 1312));
      v81 = *(a1 + 144);
      v82 = v108;
      *(a1 + 1088) = v107;
      *(a1 + 1104) = v82;
      v83 = v110;
      *(a1 + 1120) = v109;
      *(a1 + 1136) = v83;
      if ((v81 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v84 = *(a1 + 176);
    v99 = *(a1 + 160);
    v100 = v84;
    v85 = *(a1 + 208);
    v101 = *(a1 + 192);
    v102 = v85;
LABEL_45:
    re::RenderCamera::computeInverseTransform(&v95, (a1 + 32));
    v86 = 0;
    v87 = v99;
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v103 = v95;
    v104 = v96;
    v105 = v97;
    v106 = v98;
    do
    {
      *(&v107 + v86) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*(&v103 + v86))), v88, *(&v103 + v86), 1), v89, *(&v103 + v86), 2), v90, *(&v103 + v86), 3);
      v86 += 16;
    }

    while (v86 != 64);
    result = *v107.i64;
    v91 = v108;
    v92 = v109;
    v93 = v110;
    v94 = a2 + ((a3 == 2) << 6);
    *(v94 + 48) = v107;
    *(v94 + 64) = v91;
    *(v94 + 80) = v92;
    *(v94 + 96) = v93;
    return result;
  }

  v62 = (a2 + ((a3 == 2) << 6));
  v63 = v62[3];
  v64 = v62[4];
  v65 = v62[5];
  *(a1 + 1136) = v62[6];
  *(a1 + 1120) = v65;
  *(a1 + 1104) = v64;
  *(a1 + 1088) = v63;
  if (*(a1 + 144) == 1)
  {
    v66 = *(a1 + 176);
    v99 = *(a1 + 160);
    v100 = v66;
    v67 = *(a1 + 208);
    v101 = *(a1 + 192);
    v102 = v67;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(&v99, (a1 + 64));
  }

  re::RenderCamera::computeInverseTransform(&v95, (a1 + 32));
  v70 = 0;
  v71 = v99;
  v72 = v100;
  v73 = v101;
  v74 = v102;
  v103 = v95;
  v104 = v96;
  v105 = v97;
  v106 = v98;
  do
  {
    *(&v107 + v70) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*(&v103 + v70))), v72, *(&v103 + v70), 1), v73, *(&v103 + v70), 2), v74, *(&v103 + v70), 3);
    v70 += 16;
  }

  while (v70 != 64);
  result = *v107.i64;
  v76 = v108;
  v77 = v109;
  v78 = v110;
  v62[3] = v107;
  v62[4] = v76;
  v62[5] = v77;
  v62[6] = v78;
  return result;
}

double anonymous namespace::updateOneViewPerFrameData<re::ecs2::CustomMatrixCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::CameraViewDescriptorsComponent *,re::ecs2::CustomMatrixCameraComponent *,re::CameraView *,re::CameraMultiView *)::{lambda(re::CameraView&,re::ecs2::CustomMatrixCameraComponent*,re::CameraEye)#1}::operator()(uint64_t a1, re::TransformService **a2, const re::ecs2::Entity *a3)
{
  if (*(a1 + 1248) == 1)
  {
    re::RenderCamera::computeInverseTransform(&v109, (a1 + 1264));
    v6 = v110;
    *(a1 + 752) = v109;
    *(a1 + 768) = v6;
    v7 = v112;
    *(a1 + 784) = v111;
    *(a1 + 800) = v7;
    re::RenderCamera::computeLocalTransform(&v109, (a1 + 1264));
    v8 = (v109.f32[0] + v110.f32[1]) + v111.f32[2];
    if (v8 >= 0.0)
    {
      v34 = sqrtf(v8 + 1.0);
      v35 = v34 + v34;
      v36 = vrecpe_f32(COERCE_UNSIGNED_INT(v34 + v34));
      v37 = vmul_f32(v36, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v36));
      v38 = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v37)).f32[0];
      *&v13 = (v110.f32[2] - v111.f32[1]) * v38;
      v14 = (v111.f32[0] - v109.f32[2]) * v38;
      v15 = (v109.f32[1] - v110.f32[0]) * v38;
      v16 = v35 * 0.25;
    }

    else if (v109.f32[0] < v110.f32[1] || v109.f32[0] < v111.f32[2])
    {
      v39 = sqrtf(((1.0 - v109.f32[0]) - v110.f32[1]) + v111.f32[2]);
      *&v40 = v39 + v39;
      v41 = vrecpe_f32(v40);
      v42 = vmul_f32(v41, vrecps_f32(v40, v41));
      v43 = vmul_f32(v42, vrecps_f32(v40, v42)).f32[0];
      v44 = (v109.f32[2] + v111.f32[0]) * v43;
      v45 = (v110.f32[2] + v111.f32[1]) * v43;
      v46 = *&v40 * 0.25;
      v47 = (v109.f32[1] - v110.f32[0]) * v43;
      v48 = sqrtf(v110.f32[1] + ((1.0 - v109.f32[0]) - v111.f32[2]));
      *&v49 = v48 + v48;
      v50 = vrecpe_f32(v49);
      v51 = vmul_f32(v50, vrecps_f32(v49, v50));
      v52 = vmul_f32(v51, vrecps_f32(v49, v51)).f32[0];
      v53 = *&v49 * 0.25;
      v54 = (v110.f32[2] + v111.f32[1]) * v52;
      v16 = (v111.f32[0] - v109.f32[2]) * v52;
      if (v110.f32[1] >= v111.f32[2])
      {
        *&v13 = (v109.f32[1] + v110.f32[0]) * v52;
      }

      else
      {
        *&v13 = v44;
      }

      if (v110.f32[1] >= v111.f32[2])
      {
        v14 = v53;
      }

      else
      {
        v14 = v45;
      }

      if (v110.f32[1] >= v111.f32[2])
      {
        v15 = v54;
      }

      else
      {
        v15 = v46;
      }

      if (v110.f32[1] < v111.f32[2])
      {
        v16 = v47;
      }
    }

    else
    {
      v9 = sqrtf(v109.f32[0] + ((1.0 - v110.f32[1]) - v111.f32[2]));
      *&v10 = v9 + v9;
      v11 = vrecpe_f32(v10);
      v12 = vmul_f32(v11, vrecps_f32(v10, v11));
      v12.f32[0] = vmul_f32(v12, vrecps_f32(v10, v12)).f32[0];
      *&v13 = *&v10 * 0.25;
      v14 = (v109.f32[1] + v110.f32[0]) * v12.f32[0];
      v15 = (v109.f32[2] + v111.f32[0]) * v12.f32[0];
      v16 = (v110.f32[2] - v111.f32[1]) * v12.f32[0];
    }

    *(&v13 + 1) = v14;
    *(&v13 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v15));
    *(a1 + 32) = v112;
    *(a1 + 48) = v13;
  }

  else
  {
    re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(a2, 0, &v109);
    v17 = vnegq_f32(v110);
    v18 = vnegq_f32(v109);
    v19 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
    v20 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v110), v19, v109);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v110), v22, v19);
    v24 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v22, v110, 3), v109), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    *v22.i32 = *v17.i32 + *v17.i32;
    v25 = (*v17.i32 + *v17.i32) * *v17.i32;
    v26 = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], *v17.i8, 1);
    v27 = vmuls_lane_f32(*&v17.i32[2] + *&v17.i32[2], v17, 2);
    v28 = vmuls_lane_f32(*v17.i32 + *v17.i32, *v17.i8, 1);
    v29 = vmuls_lane_f32(*v17.i32 + *v17.i32, v17, 2);
    *v17.i32 = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], v17, 2);
    *v22.i32 = vmuls_lane_f32(*v22.i32, v110, 3);
    v19.f32[0] = vmuls_lane_f32(*&v17.i32[1] + *&v17.i32[1], v110, 3);
    v30 = vmuls_lane_f32(*&v17.i32[2] + *&v17.i32[2], v110, 3);
    HIDWORD(v31) = 0;
    *&v31 = 1.0 - (v26 + v27);
    *(&v31 + 1) = v28 + v30;
    v23.i32[3] = 0;
    *(&v31 + 2) = v29 - v19.f32[0];
    HIDWORD(v32) = 0;
    *&v32 = v28 - v30;
    *(&v32 + 1) = 1.0 - (v25 + v27);
    *(&v32 + 2) = *v17.i32 + *v22.i32;
    *v23.i32 = v29 + v19.f32[0];
    *&v23.i32[1] = *v17.i32 - *v22.i32;
    *&v23.i32[2] = 1.0 - (v25 + v26);
    v24.i32[3] = 1.0;
    *(a1 + 752) = v31;
    *(a1 + 768) = v32;
    *(a1 + 784) = v23;
    *(a1 + 800) = v24;
    re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(a2, a3, &v109);
    v33 = v110;
    *(a1 + 32) = v109;
    *(a1 + 48) = v33;
  }

  v55 = *(a1 + 48);
  *(a1 + 304) = *(a1 + 32);
  *(a1 + 320) = v55;
  if (*(a1 + 1296) == 1)
  {
    v56 = *(a1 + 1328);
    v57 = *(a1 + 1360);
    *(a1 + 96) = *(a1 + 1344);
    *(a1 + 112) = v57;
    *(a1 + 128) = *(a1 + 1376);
    *(a1 + 64) = *(a1 + 1312);
    *(a1 + 80) = v56;
    v58 = *(a1 + 1392);
    if (*(a1 + 144))
    {
      if (v58)
      {
        v59 = *(a1 + 1424);
        *(a1 + 160) = *(a1 + 1408);
        *(a1 + 176) = v59;
        v60 = *(a1 + 1456);
        *(a1 + 192) = *(a1 + 1440);
        *(a1 + 208) = v60;
        v61 = 1;
      }

      else
      {
        v61 = 0;
        *(a1 + 144) = 0;
      }
    }

    else if (v58)
    {
      v61 = 1;
      *(a1 + 144) = 1;
      v70 = *(a1 + 1424);
      *(a1 + 160) = *(a1 + 1408);
      *(a1 + 176) = v70;
      v71 = *(a1 + 1456);
      *(a1 + 192) = *(a1 + 1440);
      *(a1 + 208) = v71;
    }

    else
    {
      v61 = 0;
    }

    if (*(a1 + 224))
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        *(a1 + 224) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        goto LABEL_40;
      }

      *(a1 + 224) = 1;
    }

    v81 = *(a1 + 1504);
    *(a1 + 240) = *(a1 + 1488);
    *(a1 + 256) = v81;
    v82 = *(a1 + 1536);
    *(a1 + 272) = *(a1 + 1520);
    *(a1 + 288) = v82;
LABEL_40:
    if (v58)
    {
      *(a1 + 1088) = *(a1 + 1408);
      *(a1 + 1104) = *(a1 + 1424);
      *(a1 + 1120) = *(a1 + 1440);
      *(a1 + 1136) = *(a1 + 1456);
      if ((v61 & 1) == 0)
      {
LABEL_42:
        re::Projection::cullingProjectionMatrix(&v101, (a1 + 64));
        goto LABEL_45;
      }
    }

    else
    {
      re::Projection::cullingProjectionMatrix(&v109, (a1 + 1312));
      v83 = *(a1 + 144);
      v84 = v110;
      *(a1 + 1088) = v109;
      *(a1 + 1104) = v84;
      v85 = v112;
      *(a1 + 1120) = v111;
      *(a1 + 1136) = v85;
      if ((v83 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v86 = *(a1 + 176);
    v101 = *(a1 + 160);
    v102 = v86;
    v87 = *(a1 + 208);
    v103 = *(a1 + 192);
    v104 = v87;
LABEL_45:
    re::RenderCamera::computeInverseTransform(&v97, (a1 + 32));
    v88 = 0;
    v89 = v101;
    v90 = v102;
    v91 = v103;
    v92 = v104;
    v105 = v97;
    v106 = v98;
    v107 = v99;
    v108 = v100;
    do
    {
      *(&v109 + v88) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, COERCE_FLOAT(*(&v105 + v88))), v90, *(&v105 + v88), 1), v91, *(&v105 + v88), 2), v92, *(&v105 + v88), 3);
      v88 += 16;
    }

    while (v88 != 64);
    result = *v109.i64;
    v93 = v110;
    v94 = v111;
    v95 = v112;
    v96 = &a2[8 * (a3 == 2)];
    v96[3] = v109;
    v96[4] = v93;
    v96[5] = v94;
    v96[6] = v95;
    return result;
  }

  v62 = re::ecs2::CustomMatrixCameraComponent::renderFrustumTangents(a2, a3);
  *(a1 + 1240) = v63;
  *(a1 + 1232) = v62;
  v64 = &a2[8 * (a3 == 2)];
  v65 = *(v64 + 5);
  v66 = *(v64 + 6);
  v67 = *(v64 + 4);
  *(a1 + 1088) = *(v64 + 3);
  *(a1 + 1136) = v66;
  *(a1 + 1120) = v65;
  *(a1 + 1104) = v67;
  if (*(a1 + 144) == 1)
  {
    v68 = *(a1 + 176);
    v101 = *(a1 + 160);
    v102 = v68;
    v69 = *(a1 + 208);
    v103 = *(a1 + 192);
    v104 = v69;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(&v101, (a1 + 64));
  }

  re::RenderCamera::computeInverseTransform(&v97, (a1 + 32));
  v72 = 0;
  v73 = v101;
  v74 = v102;
  v75 = v103;
  v76 = v104;
  v105 = v97;
  v106 = v98;
  v107 = v99;
  v108 = v100;
  do
  {
    *(&v109 + v72) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v105 + v72))), v74, *(&v105 + v72), 1), v75, *(&v105 + v72), 2), v76, *(&v105 + v72), 3);
    v72 += 16;
  }

  while (v72 != 64);
  result = *v109.i64;
  v78 = v110;
  v79 = v111;
  v80 = v112;
  *(v64 + 3) = v109;
  *(v64 + 4) = v78;
  *(v64 + 5) = v79;
  *(v64 + 6) = v80;
  return result;
}

void *re::ecs2::allocInfo_AdaptiveResolutionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_257, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_257))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8728, "AdaptiveResolutionComponent");
    __cxa_guard_release(&_MergedGlobals_257);
  }

  return &unk_1EE1A8728;
}

void re::ecs2::initInfo_AdaptiveResolutionComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xB5AB72FA376B5E76;
  v16[1] = "AdaptiveResolutionComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A8700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8700))
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
    qword_1EE1A86F8 = v14;
    __cxa_guard_release(&qword_1EE1A8700);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A86F8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AdaptiveResolutionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AdaptiveResolutionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227AdaptiveResolutionComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD8F30;
}

void re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD8F30;
}

void *re::ecs2::allocInfo_AdaptiveResolutionStateComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8708))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A87B8, "AdaptiveResolutionStateComponent");
    __cxa_guard_release(&qword_1EE1A8708);
  }

  return &unk_1EE1A87B8;
}

void re::ecs2::initInfo_AdaptiveResolutionStateComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x1125A55C2DBA5FDCLL;
  v20[1] = "AdaptiveResolutionStateComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A8710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8710))
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
    qword_1EE1A8718 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "pixelsPerMeter";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A8720 = v18;
    __cxa_guard_release(&qword_1EE1A8710);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A8718;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionStateComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AdaptiveResolutionStateComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionStateComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AdaptiveResolutionStateComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232AdaptiveResolutionStateComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionStateComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD9098;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionStateComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD9098;
  *(v1 + 28) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs227AdaptiveResolutionComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs232AdaptiveResolutionStateComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_VideoAudioControlComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_258))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8868, "VideoAudioControlComponent");
    __cxa_guard_release(&_MergedGlobals_258);
  }

  return &unk_1EE1A8868;
}

void re::ecs2::initInfo_VideoAudioControlComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x700C00A660220CF6;
  v16[1] = "VideoAudioControlComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A8858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8858))
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
    qword_1EE1A8850 = v14;
    __cxa_guard_release(&qword_1EE1A8858);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A8850;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoAudioControlComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoAudioControlComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoAudioControlComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoAudioControlComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226VideoAudioControlComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::VideoAudioControlComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8280;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::VideoAudioControlComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8280;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

void *re::ecs2::allocInfo_VideoAudioControlSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8860))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A88F8, "VideoAudioControlSystem");
    __cxa_guard_release(&qword_1EE1A8860);
  }

  return &unk_1EE1A88F8;
}

void re::ecs2::initInfo_VideoAudioControlSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x731113394ED252E2;
  v8[1] = "VideoAudioControlSystem";
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
  *(this + 8) = &re::ecs2::initInfo_VideoAudioControlSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoAudioControlSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoAudioControlSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VideoAudioControlSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VideoAudioControlSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoAudioControlSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoAudioControlSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::VideoAudioControlSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioControlSystem", 227, *(a3 + 28));
  *(a3 + 28) = 0;

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::VideoAudioControlSystem>(re::ecs2::System *a1)
{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioControlSystem", 227, *(a1 + 28));
  *(a1 + 28) = 0;

  re::ecs2::System::~System(a1);
}

id re::ecs2::VideoAudioControlComponent::ControlInfo::label(id *this)
{
  if (*this)
  {
    return this[1];
  }

  else
  {
    return 0;
  }
}

void re::ecs2::VideoAudioControlComponent::setDeferToSystemAcousticTuning(uint64_t this)
{
  v3 = *(this + 16);
  if (v3)
  {
    if (*(this + 32) == 1)
    {
      v8[3] = v1;
      v8[4] = v2;
      v8[0] = *(this + 48);
      v4 = *(v3 + 216);
      v5 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v6 = v5;
        v7 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v5 + 32, v8);
        if (v7)
        {
          if (*(v7 + 272))
          {
            *(v7 + 272) = 0;
            re::ecs2::Component::markDirty(v6);
            if (v4)
            {
              re::ecs2::NetworkComponent::markDirty(v4, v6);
            }
          }
        }
      }
    }
  }
}

re::ecs2::VideoAudioControlSystem *re::ecs2::VideoAudioControlSystem::VideoAudioControlSystem(re::ecs2::VideoAudioControlSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF0830;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 48, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0x7FFFFFFFLL;
  *(this + 28) = v4;
  return this;
}

void re::ecs2::VideoAudioControlSystem::~VideoAudioControlSystem(uint64_t **this)
{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioControlSystem", 227, this[28]);
  this[28] = 0;

  re::ecs2::System::~System(this);
}

{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioControlSystem", 227, this[28]);
  this[28] = 0;
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::VideoAudioControlSystem::willAddSceneToECSService(re::ecs2::VideoAudioControlSystem *this, re::ecs2::Scene *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoComponent>,re::ecs2::VideoAudioControlSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 272), &v7);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoPlayerComponent>,re::ecs2::VideoAudioControlSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 272), &v7);
  }

  return result;
}

void re::ecs2::VideoAudioControlSystem::willRemoveSceneFromECSService(re::ecs2::VideoAudioControlSystem *this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = this;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoComponent>,re::ecs2::VideoAudioControlSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 272, &v6);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = this;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoPlayerComponent>,re::ecs2::VideoAudioControlSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 272, &v6);
  }
}

uint64_t re::ecs2::VideoAudioControlSystem::getVideoAudioControlComponentUnderneathParent(uint64_t this, re::ecs2::Entity *a2)
{
  if (this)
  {
    v2 = *(this + 344);
    if (v2)
    {
      v3 = *(this + 360);
      v4 = 8 * v2;
      while (1)
      {
        v5 = *v3;
        if ((*(*v3 + 288) ^ 0x731113391DD5364AuLL) <= 1)
        {
          v6 = *(v5 + 296);
          if (v6 == "VideoAudioControlEntity" || !strcmp(v6, "VideoAudioControlEntity"))
          {
            break;
          }
        }

        ++v3;
        v4 -= 8;
        if (!v4)
        {
          return 0;
        }
      }

      return re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void re::ecs2::VideoAudioControlSystem::ignoreCreateOrCleanUpComponentForAudioControl(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = re::AssetHandle::loadedAsset<re::VideoAsset>((a3 + 8));
  if (v8)
  {
    v9 = v8;
    v10 = re::VideoAsset::getAVPlayer(v8);
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
      v14 = v13 ^ (v13 >> 31);
      re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(buf, a2, v12, v14);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v15 = [v12 _STSLabel];
        memset(buf, 0, sizeof(buf));
        re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(buf, a2, v12, v14);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v16 = re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::allocEntry(a2, *&buf[8], *buf);
          *(v16 + 8) = v12;
          *(v16 + 16) = 0;
          *(v16 + 48) = 0;
          *(v16 + 24) = 0;
          *(v16 + 32) = 0;
          *(v16 + 40) = 0;
          v17 = v15;
          v18 = v17;
          if (v17)
          {
            if ([v17 hasPrefix:@"REVideoAudioControl:"])
            {
              v19 = 1;
            }

            else
            {
              v19 = 2;
            }
          }

          else
          {
            v19 = 0;
          }

          *(v16 + 56) = v19;
          *(v16 + 64) = v18;
          ++*(a2 + 40);
          v20 = v16 + 16;
        }

        else
        {
          v20 = *(a2 + 16) + 80 * *&buf[12] + 16;
        }
      }

      else
      {
        v20 = *(a2 + 16) + 80 * *&buf[12] + 16;
      }

      v22 = *(a4 + 8);
      v23 = *a3;
      if (v22)
      {
        v24 = 8 * v22;
        v25 = *a4;
        while (*v25 != v23)
        {
          ++v25;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v25 = *a4;
      }

      if (v25 != (*a4 + 8 * v22))
      {
        v26 = *(v23 + 16);
        goto LABEL_24;
      }

LABEL_22:
      v26 = *(v23 + 16);
      if (*(v26 + 387))
      {
        goto LABEL_24;
      }

      if ((*(v26 + 304) & 1) == 0)
      {
        goto LABEL_24;
      }

      v34 = *(v23 + 16);
      do
      {
        v35 = v34;
        v34 = *(v34 + 32);
      }

      while (v34);
      if (!*(v35 + 24) || (a3[32] & 1) != 0 || *(v20 + 40) == 2)
      {
LABEL_24:
        VideoAudioControlComponentUnderneathParent = re::ecs2::VideoAudioControlSystem::getVideoAudioControlComponentUnderneathParent(v26, v21);
        if (VideoAudioControlComponentUnderneathParent)
        {
          v28 = VideoAudioControlComponentUnderneathParent;
          re::ecs2::AudioComponentForwarder::stopForwardingAudioComponentState(*(a1 + 224), v26, *(VideoAudioControlComponentUnderneathParent + 16));
          v29 = (v28 + 32);
          if (*(v28 + 32) == 1)
          {
            v30 = *(v28 + 16);
            v31 = re::ecs2::EntityComponentCollection::get((v30 + 6), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v31)
            {
              v32 = v31;
              v33 = *v29 ? *(v28 + 48) : 0;
              re::ecs2::AudioPlayerComponent::destroy(v31, v33);
              v31 = v30[27];
              if (v31)
              {
                re::ecs2::NetworkComponent::markDirty(v31, v32);
              }
            }

            v46 = *re::audioLogObjects(v31);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              if (*v29)
              {
                v47 = *(v28 + 48);
              }

              else
              {
                v47 = 0;
              }

              v48 = v46;
              v49 = re::ecs2::VideoAudioControlComponent::ControlInfo::label((v28 + 32));
              v50 = v30[37];
              *buf = 134218754;
              *&buf[4] = v47;
              *&buf[12] = 2112;
              *&buf[14] = v49;
              *&buf[22] = 2048;
              v53 = v28;
              v54 = 2080;
              v55 = v50;
              _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "Cleaning up audio token %llu for label %@ in VideoAudioControlComponent@%p on entity %s", buf, 0x2Au);
            }

            *v29 = 0;
          }
        }

        goto LABEL_61;
      }

      v36 = re::ecs2::VideoAudioControlSystem::getVideoAudioControlComponentUnderneathParent(v26, v21);
      v37 = v36;
      if (!v36)
      {
        v38 = *(*a3 + 16);
        *buf = 0x731113391DD5364ALL;
        *&buf[8] = "VideoAudioControlEntity";
        v39 = re::ecs2::EntityChildCollection::getOrAdd((v38 + 320), buf);
        v40 = v39;
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        *(v40 + 76) |= 0x1400u;
        if (!*(v40 + 27))
        {
          re::ecs2::EntityComponentCollection::add((v40 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        if (!*(v40 + 32))
        {
          re::ecs2::EntityComponentCollection::add((v40 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v37 = re::ecs2::EntityComponentCollection::getOrAdd((v40 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        re::ecs2::AudioComponentForwarder::forwardAudioComponentState(*(a1 + 224), v38, v40);
      }

      v42 = *(v20 + 8);
      v41 = *(v20 + 16);
      if (v41 >= v42)
      {
        v43 = v41 + 1;
        if (v42 < v41 + 1)
        {
          if (*v20)
          {
            v44 = 2 * v42;
            if (!v42)
            {
              v44 = 8;
            }

            if (v44 <= v43)
            {
              v45 = v43;
            }

            else
            {
              v45 = v44;
            }

            re::DynamicArray<re::RigNodeConstraint>::setCapacity(v20, v45);
          }

          else
          {
            re::DynamicArray<re::RigNodeConstraint>::setCapacity(v20, v43);
            ++*(v20 + 24);
          }
        }

        v41 = *(v20 + 16);
      }

      v51 = (*(v20 + 32) + 16 * v41);
      *v51 = v37;
      v51[1] = v9;
      *(v20 + 16) = v41 + 1;
      ++*(v20 + 24);
    }

LABEL_61:
  }
}

void re::ecs2::VideoAudioControlSystem::updateAudioControllersForAllVideoAssetsInScene(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  v100 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0 && *(v6 + 48) || (v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0 && *(v6 + 48))
    {
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v92 = 0x7FFFFFFFLL;
      v7 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v7)
      {
        v8 = *(v7 + 384);
        if (v8)
        {
          v9 = *(v7 + 400);
          v10 = 8 * v8;
          do
          {
            v11 = *v9++;
            *buf = v11;
            re::AssetHandle::AssetHandle(&buf[8], (v11 + 208));
            v99 = *(v11 + 331);
            re::ecs2::VideoAudioControlSystem::ignoreCreateOrCleanUpComponentForAudioControl(result, &v89, buf, a3);
            re::AssetHandle::~AssetHandle(&buf[8]);
            v10 -= 8;
          }

          while (v10);
        }
      }

      v12 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v12)
      {
        v13 = *(v12 + 48);
        if (v13)
        {
          v14 = *(v12 + 50);
          v15 = 8 * v13;
          do
          {
            v16 = *v14++;
            *buf = v16;
            re::AssetHandle::AssetHandle(&buf[8], (v16 + 40));
            v99 = 0;
            re::ecs2::VideoAudioControlSystem::ignoreCreateOrCleanUpComponentForAudioControl(result, &v89, buf, a3);
            re::AssetHandle::~AssetHandle(&buf[8]);
            v15 -= 8;
          }

          while (v15);
        }
      }

      v83 = result;
      if (v91)
      {
        v17 = 0;
        v18 = v90;
        while (1)
        {
          v19 = *v18;
          v18 += 20;
          if (v19 < 0)
          {
            break;
          }

          if (v91 == ++v17)
          {
            LODWORD(v17) = v91;
            break;
          }
        }
      }

      else
      {
        LODWORD(v17) = 0;
      }

      if (v17 != v91)
      {
        v20 = v90;
        v81 = v90;
        v82 = v91;
        while (1)
        {
          v21 = v20 + 80 * v17;
          v22 = *(v21 + 32);
          if (v22)
          {
            break;
          }

          if (*(v21 + 56) == 1)
          {
            v76 = *re::audioLogObjects(v12);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v77 = *(v21 + 8);
              v78 = v76;
              v79 = [v77 _STSLabel];
              *buf = 138412290;
              *&buf[4] = v79;
              _os_log_impl(&dword_1E1C61000, v78, OS_LOG_TYPE_DEFAULT, "clearing label %@ for uncontrolled player", buf, 0xCu);
            }

            v12 = [*(v21 + 8) _setSTSLabel:0];
          }

LABEL_83:
          v20 = v81;
          if (v82 <= v17 + 1)
          {
            v80 = v17 + 1;
          }

          else
          {
            v80 = v82;
          }

          while (v80 - 1 != v17)
          {
            LODWORD(v17) = v17 + 1;
            if ((*(v81 + 80 * v17) & 0x80000000) != 0)
            {
              goto LABEL_90;
            }
          }

          LODWORD(v17) = v80;
LABEL_90:
          if (v17 == v82)
          {
            goto LABEL_91;
          }
        }

        v23 = *(v21 + 48);
        v84 = *(v21 + 32);
        v85 = v20 + 80 * v17;
        v86 = &v23[2 * v22];
        while (1)
        {
          v24 = *v23;
          v87 = v23[1];
          v25 = *(v21 + 8);
          v26 = *(v21 + 56);
          v88 = *(v21 + 64);
          if (*(v24 + 32) == 1)
          {
            v27 = re::ecs2::VideoAudioControlComponent::ControlInfo::label((v24 + 32));
            v28 = v27;
            if (!v26)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v34 = v25;
            v35 = MEMORY[0x1E696AEC0];
            *buf = 0;
            do
            {
              arc4random_buf(buf, 8uLL);
            }

            while (*buf < 0x3E8uLL);
            v36 = [v35 stringWithFormat:@"%@%llx", @"REVideoAudioControl:", *buf];
            v37 = *(v24 + 16);
            v38 = re::ecs2::EntityComponentCollection::getOrAdd((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            v39 = re::ecs2::AudioPlayerComponent::prepare(v38, v36);
            v40 = *(v37 + 216);
            if (v40)
            {
              re::ecs2::NetworkComponent::markDirty(v40, v38);
            }

            v41 = v36;
            v42 = v41;
            if (v41 && v39)
            {
              v43 = 1;
            }

            else
            {
              v44 = *re::audioLogObjects(v41);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                *&buf[4] = v39;
                v95 = 2112;
                v96 = v42;
                _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "invalid control info %llu, %@", buf, 0x16u);
              }

              v43 = 0;
            }

            *(v24 + 32) = v43;
            objc_storeStrong((v24 + 40), v36);
            *(v24 + 48) = v39;

            v28 = re::ecs2::VideoAudioControlComponent::ControlInfo::label((v24 + 32));

            v25 = v34;
            v21 = v85;
            if (!v26)
            {
LABEL_42:
              v45 = *re::audioLogObjects(v27);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v83;
                v95 = 2112;
                v96 = v28;
                _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "VideoAudioControlComponent@%p setting AVPlayer's STS label to %@", buf, 0x16u);
              }

              goto LABEL_44;
            }
          }

          if (v84 == 1 && v26 == 1)
          {
            v29 = [(re *)v28 isEqualToString:v88];
            if ((v29 & 1) == 0)
            {
              v30 = *re::audioLogObjects(v29);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = v25;
                v32 = v88;
                *buf = 134218498;
                *&buf[4] = v83;
                v95 = 2112;
                v96 = v32;
                v97 = 2112;
                v98 = v28;
                v33 = v30;
                _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "VideoAudioControlComponent@%p overwriting AVPlayer's existing STS label %@ to %@", buf, 0x20u);

                v25 = v31;
                v21 = v85;
              }

LABEL_44:
              [v25 _setSTSLabel:v28];
            }
          }

          v46 = *(v24 + 16);
          v47 = *(v46 + 98);
          if (*(v46 + 98))
          {
            v48 = (re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v49 = *(v46 + 104);
            v50 = vld1q_dup_s16(v48);
            v51 = 1;
            v52 = v49;
            v53 = *(v46 + 98);
            while (1)
            {
              v54 = vandq_s8(vceqq_s16(v50, *v52), xmmword_1E306AC00);
              v54.i16[0] = vmaxvq_u16(v54);
              if (v54.i32[0])
              {
                break;
              }

              v51 -= 8;
              ++v52;
              if (!--v53)
              {
                goto LABEL_51;
              }
            }

            if (v54.u16[0] - v51 < *(v46 + 96))
            {
LABEL_61:
              re::ecs2::VideoAudioControlComponent::setDeferToSystemAcousticTuning(v24);
              goto LABEL_77;
            }

LABEL_51:
            v55 = (re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v56 = vld1q_dup_s16(v55);
            v57 = 1;
            v58 = *(v46 + 104);
            v59 = *(v46 + 98);
            while (1)
            {
              v60 = vandq_s8(vceqq_s16(v56, *v58), xmmword_1E306AC00);
              v60.i16[0] = vmaxvq_u16(v60);
              if (v60.i32[0])
              {
                break;
              }

              v57 -= 8;
              ++v58;
              if (!--v59)
              {
                goto LABEL_56;
              }
            }

            if (v60.u16[0] - v57 < *(v46 + 96))
            {
              goto LABEL_61;
            }

LABEL_56:
            v61 = (re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v62 = vld1q_dup_s16(v61);
            v63 = 1;
            while (1)
            {
              v64 = vandq_s8(vceqq_s16(v62, *v49), xmmword_1E306AC00);
              v64.i16[0] = vmaxvq_u16(v64);
              if (v64.i32[0])
              {
                break;
              }

              v63 -= 8;
              ++v49;
              if (!--v47)
              {
                goto LABEL_62;
              }
            }

            if (v64.u16[0] - v63 < *(v46 + 96))
            {
              goto LABEL_61;
            }
          }

LABEL_62:
          re::ecs2::VideoAudioControlComponent::setDeferToSystemAcousticTuning(v24);
          v65 = *(v24 + 16);
          if (v65 && *(v24 + 32) == 1)
          {
            v66 = v25;
            v67 = *(v87 + 24);
            v68 = *(v87 + 28);
            *buf = *(v24 + 48);
            v69 = *(v65 + 216);
            v70 = re::ecs2::EntityComponentCollection::get((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v70)
            {
              v71 = v70;
              v72 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v70 + 32, buf);
              if (v72)
              {
                if (*(v72 + 72) != v68)
                {
                  *(v72 + 72) = v68;
                  re::ecs2::Component::markDirty(v71);
                  if (v69)
                  {
                    re::ecs2::NetworkComponent::markDirty(v69, v71);
                  }
                }

                v73 = re::ecs2::EntityComponentCollection::getOrAdd((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
                if (v73)
                {
                  v74 = v73;
                  v75 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v73 + 40, buf);
                  if (!v75)
                  {
                    HIDWORD(v93) = 6553601;
                    LOBYTE(v93) = v67;
                    re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v74 + 40, buf, &v93);
                    goto LABEL_74;
                  }

                  if (*v75 != v67)
                  {
                    *v75 = v67;
LABEL_74:
                    re::ecs2::Component::markDirty(v74);
                    if (v69)
                    {
                      re::ecs2::NetworkComponent::markDirty(v69, v74);
                    }
                  }
                }
              }
            }

            v25 = v66;
            v21 = v85;
          }

LABEL_77:

          v23 += 2;
          if (v23 == v86)
          {
            goto LABEL_83;
          }
        }
      }

LABEL_91:
      re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::deinit(&v89);
    }
  }
}

void *re::ecs2::VideoAudioControlSystem::update(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v16);
  v5 = *(a3 + 200);
  if (v5)
  {
    v6 = *(a3 + 216);
    v7 = 8 * v5;
    do
    {
      v8 = *v6;
      v9 = re::ecs2::SceneComponentTable::get((*v6 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v9)
      {
        v10 = *(v9 + 384);
      }

      else
      {
        v10 = 0;
      }

      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v15, 3137, a1, v10, 0, 0);
      v14[0] = 0;
      v14[1] = 0;
      re::ecs2::VideoAudioControlSystem::updateAudioControllersForAllVideoAssetsInScene(a1, v8, v14);
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v15, v11, v12);
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v16);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226VideoAudioControlComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoComponent>,re::ecs2::VideoAudioControlSystem>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 472);
  v6[0] = a3;
  v6[1] = a4;
  re::ecs2::VideoAudioControlSystem::updateAudioControllersForAllVideoAssetsInScene(a1, v4, v6);
  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoPlayerComponent>,re::ecs2::VideoAudioControlSystem>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 472);
  v6[0] = a3;
  v6[1] = a4;
  re::ecs2::VideoAudioControlSystem::updateAudioControllersForAllVideoAssetsInScene(a1, v4, v6);
  return 0;
}

uint64_t re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v30, v9, v8);
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
            v17 = v13 + 40;
            do
            {
              if ((*(v17 - 40) & 0x80000000) != 0)
              {
                v18 = re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::allocEntry(a1, *(v17 + 32) % *(a1 + 24), *(v17 + 32));
                v19 = *(v17 - 32);
                *(v17 - 32) = 0;
                *(v18 + 48) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                v20 = *(v17 - 16);
                *(v18 + 16) = *(v17 - 24);
                *(v18 + 24) = v20;
                *(v17 - 24) = 0;
                *(v17 - 16) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *(v17 - 8);
                *(v17 - 8) = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 8);
                *(v17 + 8) = v22;
                ++*v17;
                ++*(v18 + 40);
                *(v18 + 56) = *(v17 + 16);
                v23 = *(v17 + 24);
                *(v17 + 24) = 0;
                *(v18 + 64) = v23;
              }

              v17 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::deinit(v30);
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
    v25 = *(v24 + 80 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 80 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 80 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 72) = a3;
  ++*(a1 + 28);
  return v24 + 80 * v5;
}

double re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::deinit(uint64_t *a1)
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
        v5 = a1[2];
        v6 = *(v5 + v3);
        if (v6 < 0)
        {
          v7 = (v5 + v3);
          *(v5 + v3) = v6 & 0x7FFFFFFF;

          v8 = *(v5 + v3 + 16);
          if (v8)
          {
            if (v7[6])
            {
              (*(*v8 + 40))(v8);
            }

            v7[6] = 0;
            v7[3] = 0;
            v7[4] = 0;
            v7[2] = 0;
            ++*(v5 + v3 + 40);
          }
        }

        ++v4;
        v3 += 80;
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

uint64_t re::ecs2::StateCommandFactoryECS::getCommandIDFromCommandName(re::ecs2::StateCommandFactoryECS *this, const re::StringID *a2)
{
  {
    return 1;
  }

  {
    return 2;
  }

  {
    return 3;
  }

  {
    return 4;
  }

  return 0;
}

uint64_t re::ecs2::StateCommandFactoryECS::createStateCommand(re::ecs2::StateCommandFactoryECS *this, const StringID *a2, const re::StringID *a3)
{
  if (v5)
  {
    v6 = re::globalAllocators(v5);
    v7 = (*(*v6[2] + 32))(v6[2], 104, 8);
    *v7 = &unk_1F5CF08E8;
    re::StringID::StringID((v7 + 8), a2);
    *(v7 + 56) = 0;
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    *v7 = &unk_1F5D002F8;
    *(v7 + 80) = 0;
    *(v7 + 88) = &str_67;
    *(v7 + 96) = 0;
  }

  else
  {
    if (v8)
    {
      v9 = re::globalAllocators(v8);
      v7 = (*(*v9[2] + 32))(v9[2], 80, 8);
      *v7 = &unk_1F5CF08E8;
      re::StringID::StringID((v7 + 8), a2);
      *(v7 + 56) = 0;
      *(v7 + 40) = 0u;
      *(v7 + 24) = 0u;
      v10 = &unk_1F5D003B0;
    }

    else
    {
      if (v11)
      {
        v12 = re::globalAllocators(v11);
        v7 = (*(*v12[2] + 32))(v12[2], 80, 8);
        *v7 = &unk_1F5CF08E8;
        re::StringID::StringID((v7 + 8), a2);
        *(v7 + 56) = 0;
        *(v7 + 40) = 0u;
        *(v7 + 24) = 0u;
        v10 = &unk_1F5D00468;
      }

      else
      {
        if (!v13)
        {
          return 0;
        }

        v14 = re::globalAllocators(v13);
        v7 = (*(*v14[2] + 32))(v14[2], 88, 8);
        *v7 = &unk_1F5CF08E8;
        re::StringID::StringID((v7 + 8), a2);
        *(v7 + 56) = 0;
        *(v7 + 40) = 0u;
        *(v7 + 24) = 0u;
        v10 = &unk_1F5D00520;
      }
    }

    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    *v7 = v10;
  }

  return v7;
}

uint64_t re::ecs2::StateCommandFactoryECS::createStateCommand(re *a1, const StringID *a2)
{
  v3 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v8 = re::globalAllocators(a1);
      v3 = (*(*v8[2] + 32))(v8[2], 80, 8);
      *v3 = &unk_1F5CF08E8;
      re::StringID::StringID((v3 + 8), a2);
      *(v3 + 56) = 0;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      v5 = &unk_1F5D00468;
      goto LABEL_10;
    }

    if (a1 == 4)
    {
      v6 = re::globalAllocators(a1);
      v3 = (*(*v6[2] + 32))(v6[2], 88, 8);
      *v3 = &unk_1F5CF08E8;
      re::StringID::StringID((v3 + 8), a2);
      *(v3 + 56) = 0;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      v5 = &unk_1F5D00520;
      goto LABEL_10;
    }
  }

  else if (a1 == 1)
  {
    v7 = re::globalAllocators(a1);
    v3 = (*(*v7[2] + 32))(v7[2], 104, 8);
    *v3 = &unk_1F5CF08E8;
    re::StringID::StringID((v3 + 8), a2);
    *(v3 + 56) = 0;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *v3 = &unk_1F5D002F8;
    *(v3 + 80) = 0;
    *(v3 + 88) = &str_67;
    *(v3 + 96) = 0;
  }

  else if (a1 == 2)
  {
    v4 = re::globalAllocators(a1);
    v3 = (*(*v4[2] + 32))(v4[2], 80, 8);
    *v3 = &unk_1F5CF08E8;
    re::StringID::StringID((v3 + 8), a2);
    *(v3 + 56) = 0;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    v5 = &unk_1F5D003B0;
LABEL_10:
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *v3 = v5;
  }

  return v3;
}

void re::ecs2::ECSStateCommand::~ECSStateCommand(re::ecs2::ECSStateCommand *this)
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

uint64_t *re::ecsNetworkLogObjects(re *this)
{
  {
    re::ecsNetworkLogObjects(void)::logObjects = os_log_create("com.apple.re", "ECS.Network");
  }

  return &re::ecsNetworkLogObjects(void)::logObjects;
}

void *re::ecs2::allocInfo_OpacityService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_259, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_259))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8990, "OpacityService");
    __cxa_guard_release(&_MergedGlobals_259);
  }

  return &unk_1EE1A8990;
}

void re::ecs2::initInfo_OpacityService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xFB68753FBF224094;
  v8[1] = "OpacityService";
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
  *(this + 8) = &re::ecs2::initInfo_OpacityService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re *re::ecs2::PhysicsSimulationData::deinit(re *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 2))
  {
    v1 = this;
    v2 = *re::physicsLogObjects(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[2];
      v13 = 134218240;
      v14 = v1;
      v15 = 2048;
      v16 = v3;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "PhysicsSimulationData::deinit %p %p", &v13, 0x16u);
    }

    if (*v1)
    {
      v4 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(*v1);
      if (v4)
      {
        (*(*v4 + 216))(v4, v1[2]);
      }
    }

    this = re::internal::destroyPersistent<re::PhysicsSimulation>("deinit", 75, v1[2]);
    v1[2] = 0;
    v5 = v1[3];
    if (v5)
    {
      v6 = re::globalAllocators(this)[2];
      (**v5)(v5);
      this = (*(*v6 + 40))(v6, v5);
    }

    v1[3] = 0;
    v7 = v1[4];
    if (v7)
    {
      v8 = re::globalAllocators(this)[2];
      (**v7)(v7);
      this = (*(*v8 + 40))(v8, v7);
    }

    v1[4] = 0;
    v9 = v1[5];
    if (v9)
    {
      v10 = re::globalAllocators(this)[2];
      (**v9)(v9);
      this = (*(*v10 + 40))(v10, v9);
    }

    v1[5] = 0;
    v11 = v1[6];
    if (v11)
    {
      v12 = re::globalAllocators(this)[2];
      (**v11)(v11);
      this = (*(*v12 + 40))(v12, v11);
    }

    v1[6] = 0;
  }

  return this;
}

re *re::internal::destroyPersistent<re::PhysicsSimulation>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(re::ecs2::PhysicsSimulationData *this)
{
  v33 = *MEMORY[0x1E69E9840];
  result = *(this + 2);
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(this + 7);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained - 8;
    }

    else
    {
      v6 = 0;
    }

    if (WeakRetained)
    {
    }

    v7 = re::PhysicsFactory::defaultFactory(WeakRetained, v4);
    *(this + 2) = (*(*v7 + 32))(v7, re::PhysicsFactory::m_defaultAllocator);
    v8 = *this;
    if (*this)
    {
      v8 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
      if (v8)
      {
        v8 = (*(*v8 + 224))(v8, *(this + 2));
      }
    }

    v9 = *re::physicsLogObjects(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v5)
      {
        v11 = *(v5 + 36);
      }

      else
      {
        v11 = "null";
      }

      v12 = *(this + 2);
      v27 = 136315650;
      v28 = v11;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v12;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "----- CREATING SIMULATION FOR ROOT ENTITY %s (%p) %p ------ ", &v27, 0x20u);
    }

    v13 = *(this + 2);
    v14 = *this;
    v15 = re::ServiceLocator::serviceOrNull<re::JobService>(*this);
    v16 = *(this + 2);
    *(v16 + 68) = *(this + 64);
    *(v16 + 64) = *(this + 65);
    v17 = re::ServiceLocator::serviceOrNull<re::EventBus>(*this);
    v18 = re::globalAllocators(v17);
    v19 = (*(*v18[2] + 32))(v18[2], 16, 8);
    *v19 = &unk_1F5D00F78;
    *(v19 + 1) = v17;
    *(this + 3) = v19;
    *(*(*(this + 2) + 56) + 64) = v19;
    v20 = re::globalAllocators(v19);
    v21 = (*(*v20[2] + 32))(v20[2], 16, 8);
    *v21 = &unk_1F5CF1078;
    *(v21 + 1) = v17;
    *(this + 4) = v21;
    v22 = re::globalAllocators(v21);
    v23 = (*(*v22[2] + 32))(v22[2], 192, 16);
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *v23 = &unk_1F5CF71C0;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 0x7FFFFFFF00000000;
    *(v23 + 64) = xmmword_1E3047670;
    *(v23 + 80) = xmmword_1E3047680;
    *(v23 + 96) = xmmword_1E30476A0;
    *(v23 + 112) = xmmword_1E30474D0;
    *(v23 + 128) = xmmword_1E3047670;
    *(v23 + 144) = xmmword_1E3047680;
    *(v23 + 160) = xmmword_1E30476A0;
    *(v23 + 176) = xmmword_1E30474D0;
    *(this + 6) = v23;
    v24 = *(this + 2);
    *(v24 + 40) = v23;
    if ((*(this + 264) & 1) == 0)
    {
      v25 = re::globalAllocators(v23);
      v26 = (*(*v25[2] + 32))(v25[2], 32, 8);
      *(v26 + 24) = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      *v26 = &unk_1F5CF0C68;
      objc_initWeak((v26 + 24), 0);
      *(this + 5) = v26;
      v24 = *(this + 2);
      *(v24 + 32) = v26;
    }

    (*(**(v24 + 56) + 120))(*(v24 + 56), this + 112);
    return *(this + 2);
  }

  return result;
}

__n128 re::ecs2::PhysicsSimulationData::setGravityOverride(__n128 *a1, __n128 *a2)
{
  if (a1[4].n128_u8[0])
  {
    if ((a2->n128_u8[0] & 1) == 0)
    {
      a1[4].n128_u8[0] = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((a2->n128_u8[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    a1[4].n128_u8[0] = 1;
  }

  a1[5] = a2[1];
LABEL_7:
  if (a2->n128_u8[0] == 1)
  {
    v3 = a2 + 1;
  }

  else
  {
    v4 = re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(a1->n128_u64[0]);
    v3 = (*(*v4 + 104))(v4);
  }

  v7 = *v3;
  v5 = a1[1].n128_u64[0];
  if (v5)
  {
    (*(*v5 + 80))(a1[1].n128_u64[0], &v7);
  }

  else
  {
    result = *v3;
    a1[15] = *v3;
  }

  return result;
}