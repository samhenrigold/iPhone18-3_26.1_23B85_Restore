uint64_t re::ecs2::MeshShadowSystem::willAddSceneToECSService(uint64_t this, re::EventBus **a2)
{
  v3 = this;
  v218[11] = *MEMORY[0x1E69E9840];
  v148 = a2;
  v4 = *(this + 224);
  if (v4 && (*(v4 + 432) & 0x10) == 0)
  {
    return this;
  }

  v157 = a2;
  v5 = *(this + 712);
  v6 = *(this + 720);
  if (v5 >= 0xB)
  {
    if (v6)
    {
      v7 = (this + 728);
    }

    else
    {
      v7 = *(this + 736);
    }

    v9 = 8 * v5;
    while (!*v7)
    {
      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  if (v6)
  {
    v8 = (this + 728);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *(this + 736);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  v10 = 0;
  v11 = 8 * v5;
  do
  {
    v12 = *v8++;
    v10 |= v12;
    v11 -= 8;
  }

  while (v11);
  if (!v10)
  {
LABEL_19:
    v156 = 0u;
    v149 = 0u;
    *&v150 = 0;
    v151 = 0u;
    v152 = 0u;
    *(&v150 + 1) = -1;
    v153 = 0;
    v154 = 1;
    v155 = 0uLL;
    v15 = *(this + 624);
    *&v156 = 0;
    v16 = *(this + 592);
    DWORD2(v156) = 0;
    if (v15 + 1 > 4 * v16)
    {
      re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,4ul>::setBucketsCapacity((this + 584), (v15 + 4) >> 2);
      v16 = *(v3 + 592);
    }

    if (v16 <= v15 >> 2)
    {
      v158 = 0;
      memset(v218, 0, 80);
      v144 = MEMORY[0x1E69E9C10];
      v210 = 136315906;
      v211 = "operator[]";
      v212 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v145 = 3;
      }

      else
      {
        v145 = 2;
      }

      v213 = 858;
      v214 = 2048;
      v215 = v15 >> 2;
      v216 = 2048;
      v217 = v16;
      _os_log_send_and_compose_impl(v145, &v158, v218, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v210, 38, v146, v147);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (*(v3 + 600))
      {
        v17 = v3 + 608;
      }

      else
      {
        v17 = *(v3 + 616);
      }

      v18 = *(v17 + 8 * (v15 >> 2));
      ++*(v3 + 624);
      ++*(v3 + 632);
      v19 = v18 + 112 * (v15 & 3);
      v20 = v149;
      v21 = v150;
      v22 = v151;
      *(v19 + 48) = v152;
      *(v19 + 16) = v21;
      *(v19 + 32) = v22;
      *v19 = v20;
      re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v19 + 56, &v152 + 1);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v149);
      v24 = *(v3 + 624);
      if (v24)
      {
        v25 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 584, v24 - 1);
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::init(v25, v3 + 584, v157);
        v218[0] = *(v3 + 624) - 1;
        re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v3 + 640), &v157, v218);
        v26 = *(v3 + 624);
        v27 = *(v3 + 744);
        if ((v26 & 0x3F) != 0)
        {
          v28 = (v26 >> 6) + 1;
        }

        else
        {
          v28 = v26 >> 6;
        }

        *(v3 + 744) = v26;
        *&v149 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v3 + 704), v28, &v149);
        if (v26 && v27 > v26)
        {
          v29 = 63;
          v30 = *(v3 + 744) & 0x3FLL;
          if (v30 && v30 != 63)
          {
            v29 = ~(-1 << v30);
          }

          if (*(v3 + 720))
          {
            v31 = v3 + 728;
          }

          else
          {
            v31 = *(v3 + 736);
          }

          *(v31 + 8 * *(v3 + 712) - 8) &= v29;
        }

        v32 = *(v3 + 624);
        v33 = *(v3 + 792);
        if ((v32 & 0x3F) != 0)
        {
          v34 = (v32 >> 6) + 1;
        }

        else
        {
          v34 = v32 >> 6;
        }

        *(v3 + 792) = v32;
        *&v149 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v3 + 752), v34, &v149);
        if (v32 && v33 > v32)
        {
          v35 = 63;
          v36 = *(v3 + 792) & 0x3FLL;
          if (v36 && v36 != 63)
          {
            v35 = ~(-1 << v36);
          }

          if (*(v3 + 768))
          {
            v37 = v3 + 776;
          }

          else
          {
            v37 = *(v3 + 784);
          }

          *(v37 + 8 * *(v3 + 760) - 8) &= v35;
        }

        v14 = v218[0];
        goto LABEL_51;
      }
    }

    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

LABEL_18:
  *&v149 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 704, 0);
  v13 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 584, v149);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::init(v13, v3 + 584, a2);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v3 + 640), &v157, &v149);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 704, v149);
  v14 = v149;
LABEL_51:
  v38 = re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 752, v14);
  if (*(v3 + 816) == 1)
  {
    v39 = *(v3 + 800);
    v40 = *(v157 + 47);
    LOWORD(v149) = 257;
    DWORD1(v149) = 1023969417;
    BYTE8(v149) = 0;
    re::ecs2::System::setTaskOptions(v39, v40, &v149);
    v38 = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v3 + 584);
  }

  v149 = 0uLL;
  LODWORD(v150) = 1;
  v151 = 0uLL;
  *(&v150 + 1) = 0;
  LODWORD(v152) = 0;
  v42 = a2[36];
  if (v42)
  {
    v208 = re::globalAllocators(v41)[2];
    v43 = (*(*v208 + 32))(v208, 32, 0);
    *v43 = &unk_1F5CFB9A8;
    v43[1] = v3;
    v43[2] = re::ecs2::MeshShadowSystem::projectiveShadowReceiverOrGroundingShadowComponentDidAddHandler;
    v43[3] = 0;
    v209 = v43;
    v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v42, v207, re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v46 = v45;
    v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v47 = v44;
    v47[1] = v46;
    v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v207);
    v205 = re::globalAllocators(v48)[2];
    v49 = (*(*v205 + 32))(v205, 32, 0);
    *v49 = &unk_1F5CFB9A8;
    v49[1] = v3;
    v49[2] = re::ecs2::MeshShadowSystem::projectiveShadowReceiverOrGroundingShadowComponentDidAddHandler;
    v49[3] = 0;
    v206 = v49;
    v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v42, v204, re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v52 = v51;
    v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v53 = v50;
    v53[1] = v52;
    v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v204);
    v202 = re::globalAllocators(v54)[2];
    v55 = (*(*v202 + 32))(v202, 32, 0);
    *v55 = &unk_1F5CFBA00;
    v55[1] = v3;
    v55[2] = re::ecs2::MeshShadowSystem::projectiveShadowReceiverOrGroundingShadowComponentWillRemoveHandler;
    v55[3] = 0;
    v203 = v55;
    v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v42, v201, re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v58 = v57;
    v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v59 = v56;
    v59[1] = v58;
    v60 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v201);
    v199 = re::globalAllocators(v60)[2];
    v61 = (*(*v199 + 32))(v199, 32, 0);
    *v61 = &unk_1F5CFBA00;
    v61[1] = v3;
    v61[2] = re::ecs2::MeshShadowSystem::projectiveShadowReceiverOrGroundingShadowComponentWillRemoveHandler;
    v61[3] = 0;
    v200 = v61;
    v62 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v42, v198, re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v64 = v63;
    v65 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v65 = v62;
    v65[1] = v64;
    v66 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v198);
    v196 = re::globalAllocators(v66)[2];
    v67 = (*(*v196 + 32))(v196, 32, 0);
    *v67 = &unk_1F5CFBA58;
    v67[1] = v3;
    v67[2] = re::ecs2::MeshShadowSystem::componentWillDeactivateHandler;
    v67[3] = 0;
    v197 = v67;
    v68 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v42, v195, re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType, 0);
    v70 = v69;
    v71 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v71 = v68;
    v71[1] = v70;
    v72 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v195);
    v193 = re::globalAllocators(v72)[2];
    v73 = (*(*v193 + 32))(v193, 32, 0);
    *v73 = &unk_1F5CFBA58;
    v73[1] = v3;
    v73[2] = re::ecs2::MeshShadowSystem::componentWillDeactivateHandler;
    v73[3] = 0;
    v194 = v73;
    v74 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v42, v192, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v76 = v75;
    v77 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v77 = v74;
    v77[1] = v76;
    v78 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v192);
    v190 = re::globalAllocators(v78)[2];
    v79 = (*(*v190 + 32))(v190, 32, 0);
    *v79 = &unk_1F5CFBA58;
    v79[1] = v3;
    v79[2] = re::ecs2::MeshShadowSystem::componentWillDeactivateHandler;
    v79[3] = 0;
    v191 = v79;
    v80 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v42, v189, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v82 = v81;
    v83 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v83 = v80;
    v83[1] = v82;
    v84 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v189);
    v187 = re::globalAllocators(v84)[2];
    v85 = (*(*v187 + 32))(v187, 32, 0);
    *v85 = &unk_1F5CFBA58;
    v85[1] = v3;
    v85[2] = re::ecs2::MeshShadowSystem::componentWillDeactivateHandler;
    v85[3] = 0;
    v188 = v85;
    v86 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v42, v186, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v88 = v87;
    v89 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v89 = v86;
    v89[1] = v88;
    v90 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v186);
    v184 = re::globalAllocators(v90)[2];
    v91 = (*(*v184 + 32))(v184, 32, 0);
    *v91 = &unk_1F5CFBA58;
    v91[1] = v3;
    v91[2] = re::ecs2::MeshShadowSystem::componentWillDeactivateHandler;
    v91[3] = 0;
    v185 = v91;
    v92 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v42, v183, re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v94 = v93;
    v95 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v95 = v92;
    v95[1] = v94;
    v96 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v183);
    v181 = re::globalAllocators(v96)[2];
    v97 = (*(*v181 + 32))(v181, 32, 0);
    *v97 = &unk_1F5CFBA00;
    v97[1] = v3;
    v97[2] = re::ecs2::MeshShadowSystem::componentWillRemoveHandler;
    v97[3] = 0;
    v182 = v97;
    v98 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v42, v180, re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType, 0);
    v100 = v99;
    v101 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v101 = v98;
    v101[1] = v100;
    v102 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v180);
    v178 = re::globalAllocators(v102)[2];
    v103 = (*(*v178 + 32))(v178, 32, 0);
    *v103 = &unk_1F5CFBA00;
    v103[1] = v3;
    v103[2] = re::ecs2::MeshShadowSystem::componentWillRemoveHandler;
    v103[3] = 0;
    v179 = v103;
    v104 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v42, v177, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v106 = v105;
    v107 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v107 = v104;
    v107[1] = v106;
    v108 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v177);
    v175 = re::globalAllocators(v108)[2];
    v109 = (*(*v175 + 32))(v175, 32, 0);
    *v109 = &unk_1F5CFBA00;
    v109[1] = v3;
    v109[2] = re::ecs2::MeshShadowSystem::componentWillRemoveHandler;
    v109[3] = 0;
    v176 = v109;
    v110 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v42, v174, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v112 = v111;
    v113 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v113 = v110;
    v113[1] = v112;
    v114 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v174);
    v172 = re::globalAllocators(v114)[2];
    v115 = (*(*v172 + 32))(v172, 32, 0);
    *v115 = &unk_1F5CFBA00;
    v115[1] = v3;
    v115[2] = re::ecs2::MeshShadowSystem::componentWillRemoveHandler;
    v115[3] = 0;
    v173 = v115;
    v116 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v42, v171, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v118 = v117;
    v119 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v119 = v116;
    v119[1] = v118;
    v120 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v171);
    v169 = re::globalAllocators(v120)[2];
    v121 = (*(*v169 + 32))(v169, 32, 0);
    *v121 = &unk_1F5CFBA00;
    v121[1] = v3;
    v121[2] = re::ecs2::MeshShadowSystem::componentWillRemoveHandler;
    v121[3] = 0;
    v170 = v121;
    v122 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v42, v168, re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v124 = v123;
    v125 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v125 = v122;
    v125[1] = v124;
    v126 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v168);
    v166 = re::globalAllocators(v126)[2];
    v127 = (*(*v166 + 32))(v166, 32, 0);
    *v127 = &unk_1F5CFBAB0;
    v127[1] = v3;
    v127[2] = re::ecs2::MeshShadowSystem::entityWillRemoveHandler;
    v127[3] = 0;
    v167 = v127;
    v128 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v42, v165, 0, 0);
    v130 = v129;
    v131 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v131 = v128;
    v131[1] = v130;
    v132 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v165);
    v163 = re::globalAllocators(v132)[2];
    v133 = (*(*v163 + 32))(v163, 32, 0);
    *v133 = &unk_1F5CFBB08;
    v133[1] = v3;
    v133[2] = re::ecs2::MeshShadowSystem::entityDidReparentHandler;
    v133[3] = 0;
    v164 = v133;
    v134 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v42, v162, 0, 0);
    v136 = v135;
    v137 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v137 = v134;
    v137[1] = v136;
    v138 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v162);
    v160 = re::globalAllocators(v138)[2];
    v139 = (*(*v160 + 32))(v160, 32, 0);
    *v139 = &unk_1F5CFBB60;
    v139[1] = v3;
    v139[2] = re::ecs2::MeshShadowSystem::entityBillboardTransformChangedHandler;
    v139[3] = 0;
    v161 = v139;
    v140 = re::EventBus::subscribe<re::ecs2::Entity,REBillboardTransformChangedEvent>(v42, v159, 0, 0);
    v142 = v141;
    v143 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v149);
    *v143 = v140;
    v143[1] = v142;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable(v159);
  }

  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(v3 + 824, &v148, &v149);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(&v149);
  this = v149;
  if (v149)
  {
    if ((v150 & 1) == 0)
    {
      return (*(*v149 + 40))();
    }
  }

  return this;
}

uint64_t re::ecs2::MeshShadowSystem::projectiveShadowReceiverOrGroundingShadowComponentDidAddHandler(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 240))
  {
    re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  return 0;
}

uint64_t re::ecs2::MeshShadowSystem::projectiveShadowReceiverOrGroundingShadowComponentWillRemoveHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 == re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    v11 = *(a2 + 98);
    if (*(a2 + 98))
    {
      v12 = (re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v13 = *(a2 + 104);
      v14 = vld1q_dup_s16(v12);
      v8 = 1;
      while (1)
      {
        v15 = vandq_s8(vceqq_s16(v14, *v13), xmmword_1E306AC00);
        v15.i16[0] = vmaxvq_u16(v15);
        v10 = v15.i16[0];
        if (v15.i32[0])
        {
          break;
        }

        v8 -= 8;
        ++v13;
        if (!--v11)
        {
          goto LABEL_14;
        }
      }

LABEL_13:
      if (v10 - v8 < *(a2 + 96))
      {
        return 0;
      }
    }
  }

  else
  {
    if (v3 != re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      return 0;
    }

    v4 = *(a2 + 98);
    if (*(a2 + 98))
    {
      v5 = (re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
      v6 = *(a2 + 104);
      v7 = vld1q_dup_s16(v5);
      v8 = 1;
      do
      {
        v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
        v9.i16[0] = vmaxvq_u16(v9);
        v10 = v9.i16[0];
        if (v9.i32[0])
        {
          goto LABEL_13;
        }

        v8 -= 8;
        ++v6;
      }

      while (--v4);
    }
  }

LABEL_14:
  if (*(a2 + 240))
  {
    re::ecs2::EntityComponentCollection::remove((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  return 0;
}

uint64_t re::ecs2::MeshShadowSystem::entityDidReparentHandler(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304))
  {
    v4 = a2;
    do
    {
      v5 = v4;
      v4 = *(v4 + 32);
    }

    while (v4);
    v6 = re::ecs2::SceneComponentTable::get((*(v5 + 24) + 200), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v6)
    {
      if (*(v6 + 384))
      {
        re::StackScratchAllocator::StackScratchAllocator(v30);
        v24[0] = 0;
        v24[1] = 0;
        v25 = 1;
        v27 = 0;
        v28 = 0;
        v26 = 0;
        v29 = 0;
        re::BucketArray<re::ecs2::Entity *,32ul>::init(v24, v30, 1uLL);
        *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v24) = a2;
        v7 = v28;
        if (v28)
        {
          while (1)
          {
            v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v24, v7 - 1);
            re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v24, --v28);
            ++v29;
            v9 = *(v8 + 344);
            if (v9)
            {
              v10 = *(v8 + 360);
              v11 = 8 * v9;
              do
              {
                v12 = *v10++;
                *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v24) = v12;
                v11 -= 8;
              }

              while (v11);
            }

            v32 = v8;
            if ((*(v8 + 304) & 1) == 0)
            {
              goto LABEL_31;
            }

            v13 = *(a1 + 576);
            if (*(v13 + 1112))
            {
              v14 = *(v8 + 312);
              v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
              v16 = v15 ^ (v15 >> 31);
              v17 = *(*(v13 + 1120) + 4 * (v16 % *(v13 + 1136)));
              if (v17 != 0x7FFFFFFF)
              {
                break;
              }
            }

LABEL_16:
            if (re::ecs2::EntityComponentCollection::get((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
            {
              v19 = *(a1 + 576) + 1208;
LABEL_30:
              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v19, &v32);
              goto LABEL_31;
            }

            if (re::ecs2::EntityComponentCollection::get((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
            {
              v13 = *(a1 + 576);
LABEL_20:
              if (v8)
              {
                v20 = (v8 + 8);
              }

              else
              {
                v20 = 0;
              }

              objc_initWeak(&location, v20);
              re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v13 + 1256, &location);
              objc_destroyWeak(&location);
            }

LABEL_31:
            v7 = v28;
            if (!v28)
            {
              goto LABEL_32;
            }
          }

          v18 = *(v13 + 1128);
          while (*(v18 + 40 * v17 + 8) != v14)
          {
            v17 = *(v18 + 40 * v17) & 0x7FFFFFFF;
            if (v17 == 0x7FFFFFFF)
            {
              goto LABEL_16;
            }
          }

          if (*(v13 + 1160))
          {
            v21 = *(*(v13 + 1168) + 4 * (v16 % *(v13 + 1184)));
            if (v21 != 0x7FFFFFFF)
            {
              v22 = *(v13 + 1176);
              while (*(v22 + (v21 << 6) + 8) != v14)
              {
                v21 = *(v22 + (v21 << 6)) & 0x7FFFFFFF;
                if (v21 == 0x7FFFFFFF)
                {
                  goto LABEL_29;
                }
              }

              goto LABEL_20;
            }
          }

LABEL_29:
          v19 = v13 + 1208;
          goto LABEL_30;
        }

LABEL_32:
        re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v24);
        if (v24[0] && (v25 & 1) == 0)
        {
          (*(*v24[0] + 40))();
        }

        re::StackScratchAllocator::~StackScratchAllocator(v30);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::MeshShadowSystem::entityBillboardTransformChangedHandler(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  do
  {
    v3 = v2;
    v2 = *(v2 + 32);
  }

  while (v2);
  if (*(a1 + 968))
  {
    v4 = *(a2 + 312);
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
    v6 = *(*(a1 + 976) + 4 * ((v5 ^ (v5 >> 31)) % *(a1 + 992)));
    if (v6 != 0x7FFFFFFF)
    {
      v7 = *(*(*(v3 + 24) + 104) + 288) >> 1;
      v8 = *(a1 + 984);
      while (*(v8 + 40 * v6 + 8) != v4)
      {
        v6 = *(v8 + 40 * v6) & 0x7FFFFFFF;
        if (v6 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      v9 = *(a2 + 240);
      if (v9)
      {
        v11[0] = *(v9 + 64);
        v11[1] = v7;
        re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(a1 + 1352, v11);
      }
    }
  }

  return 0;
}

BOOL re::ecs2::MeshShadowSystem::willRemoveSceneFromECSService(_BOOL8 this, re::ecs2::Entity ***a2)
{
  v3 = this;
  v33 = a2;
  v4 = *(this + 224);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    v5 = a2[13][36];
    v32[0] = a2;
    v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((this + 640), v32);
    if (v6 != -1)
    {
      v7 = *(v3 + 648) + 16 * v6;
      re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 704, *(v7 + 8));
      re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 752, *(v7 + 8));
      v8 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 584, *(v7 + 8));
      if (*v8)
      {
        v9 = v8;
        *v8 = 0;
        v10 = v8 + 1;
        v11 = *(v8[1] + 288);
        if (v11)
        {
          v12 = v8[12];
          if (v12)
          {
            for (i = 0; i != v12; ++i)
            {
              v14 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v9 + 7), i);
              re::EventBus::unsubscribe(v11, *v14, v14[1]);
            }
          }
        }

        re::BucketArray<RESubscriptionHandle,8ul>::deinit((v9 + 7));
        v15 = 0;
        v16 = v9 + 3;
        do
        {
          v17 = v9[2];
          if (*v17)
          {
            re::ecs2::ComponentBucketsBase::removeBucket(v17, v16[v15]);
          }

          v16[v15++] = -1;
        }

        while (v15 != 4);
        *v10 = 0;
        v10[1] = 0;
      }

      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(v3 + 640, v32);
    }

    v18 = (*(**(v3 + 248) + 40))(*(v3 + 248));
    v19 = a2[16];
    if (v19)
    {
      v20 = v18;
      v21 = v5 >> 1;
      v22 = a2[18];
      v23 = 8 * v19;
      do
      {
        v24 = *v22;
        v25 = *(*v22 + 30);
        if (v25)
        {
          v26 = *(v25 + 64);
          if (v26)
          {
            v32[0] = v26;
            v32[1] = v21;
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v20 + 56, v32);
          }
        }

        re::ecs2::MeshShadowSystemStateImpl::willDeactivateEntity((v3 + 368), v24);
        ++v22;
        v23 -= 8;
      }

      while (v23);
    }

    v27 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(v3 + 824, &v33);
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + 40);
      if (v29)
      {
        for (j = 0; j != v29; ++j)
        {
          v31 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v28, j);
          if (v33[36])
          {
            re::EventBus::unsubscribe(v33[36], *v31, v31[1]);
          }
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(v3 + 824, &v33);
  }

  return this;
}

void re::ecs2::MeshShadowSystem::~MeshShadowSystem(re::ecs2::MeshShadowSystem *this)
{
  re::ecs2::MeshShadowSystem::~MeshShadowSystem(this);

  JUMPOUT(0x1E6906520);
}

{
  re::DynamicString::deinit((this + 2360));
  if (*(this + 2112) == 1)
  {
    re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 258);
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 223);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 217);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 211);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 205);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 199);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(this + 193);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(this + 187);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(this + 181);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 175);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 169);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 163);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(this + 157);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 151);
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(this + 145);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 139);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 133);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 127);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 121);
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(this + 115);
  re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 109);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 103);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 584);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 640);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 704);
  *(this + 93) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 752);
  *(this + 101) = 0;
  *(this + 792) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 752);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 704);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 640);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 584);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 584);
  *(this + 46) = &unk_1F5CFB8B0;
  re::DynamicArray<unsigned long>::deinit(this + 536);
  re::DynamicArray<unsigned long>::deinit(this + 496);
  re::DynamicArray<unsigned long>::deinit(this + 456);
  re::DynamicArray<unsigned long>::deinit(this + 416);
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::AssetHandle::~AssetHandle((this + 344));
  re::AssetHandle::~AssetHandle((this + 320));
  v2 = *(this + 39);
  if (v2)
  {

    *(this + 39) = 0;
  }

  v3 = *(this + 38);
  if (v3)
  {

    *(this + 38) = 0;
  }

  v4 = *(this + 37);
  if (v4)
  {

    *(this + 37) = 0;
  }

  re::ecs2::System::~System(this);
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
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
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 24) = *v17;
              }

              v17 += 5;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
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
    v20 = *(v19 + 40 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 40 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 32) = a3;
  ++*(a1 + 28);
  return v19 + 40 * v5;
}

void re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 272 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v38, 0, 36);
          *&v38[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v38, v9, v8);
          v11 = *v38;
          *v38 = *a1;
          *a1 = v11;
          v12 = *&v38[16];
          v13 = *(a1 + 16);
          *&v38[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v38[24];
          *&v38[24] = *(a1 + 24);
          v14 = *&v38[32];
          *(a1 + 24) = v15;
          ++*&v38[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 256) % *(a1 + 24), *(v13 + 256));
                v19 = *(v13 + 8);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v13 + 24);
                *(v18 + 16) = *(v13 + 16);
                *(v18 + 24) = v20;
                *(v13 + 16) = 0;
                *(v13 + 24) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *(v13 + 32);
                *(v13 + 32) = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v13 + 48);
                *(v13 + 48) = v22;
                ++*(v13 + 40);
                ++*(v18 + 40);
                v23 = *(v13 + 64);
                v24 = *(v13 + 80);
                v25 = *(v13 + 112);
                *(v18 + 96) = *(v13 + 96);
                *(v18 + 112) = v25;
                *(v18 + 64) = v23;
                *(v18 + 80) = v24;
                v26 = *(v13 + 128);
                v27 = *(v13 + 144);
                v28 = *(v13 + 176);
                *(v18 + 160) = *(v13 + 160);
                *(v18 + 176) = v28;
                *(v18 + 128) = v26;
                *(v18 + 144) = v27;
                v29 = *(v13 + 192);
                v30 = *(v13 + 208);
                v31 = *(v13 + 224);
                *(v18 + 240) = *(v13 + 240);
                *(v18 + 208) = v30;
                *(v18 + 224) = v31;
                *(v18 + 192) = v29;
              }

              ++v17;
              v13 += 272;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v38);
        }
      }

      else
      {
        if (v8)
        {
          v34 = 2 * v7;
        }

        else
        {
          v34 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v32 = *(a1 + 16);
    v33 = *(v32 + 272 * v5);
  }

  else
  {
    v32 = *(a1 + 16);
    v33 = *(v32 + 272 * v5);
    *(a1 + 36) = v33 & 0x7FFFFFFF;
  }

  v35 = v32 + 272 * v5;
  *v35 = v33 | 0x80000000;
  v36 = *(a1 + 8);
  *v35 = *(v36 + 4 * a2) | 0x80000000;
  *(v36 + 4 * a2) = v5;
  *(v35 + 256) = a3;
  ++*(a1 + 28);
  return v32 + 272 * v5;
}

double re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 272;
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

uint64_t re::DynamicArray<re::MeshShadowCasterInfo>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigNodeChannel>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 64);
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 6) % *(a1 + 24), *(v17 + 6));
                *(v18 + 8) = *(v17 - 7);
                v19 = *(v17 - 48);
                *(v18 + 16) = v19;
                if (v19 == 1)
                {
                  v20 = *(v17 - 1);
                  *(v18 + 32) = *(v17 - 2);
                  *(v18 + 48) = v20;
                }

                v21 = *v17;
                *(v18 + 64) = v21;
                if (v21 == 1)
                {
                  v22 = *(v17 + 2);
                  *(v18 + 80) = *(v17 + 1);
                  *(v18 + 96) = v22;
                }
              }

              v17 += 128;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 7));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 7));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 7);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 112) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 7);
}

double re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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

        v4 += 32;
        --v3;
      }

      while (v3);
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

uint64_t re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData::ShadowClusterOpacity,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
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
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData::ShadowClusterOpacity,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[2] % *(a1 + 24), v18[2]);
                *(v19 + 8) = *(v18 - 1);
                v20 = *v18;
                *(v19 + 24) = *(v18 + 2);
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 5;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
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
    v22 = *(v21 + 40 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 40 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 40 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 32) = a3;
  ++*(a1 + 28);
  return v21 + 40 * v5;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB9A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFB9A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBA00;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBA00;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBA58;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBA58;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBAB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBAB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBB08;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBB08;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBB60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshShadowSystem,REEventHandlerResult (re::ecs2::MeshShadowSystem::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBB60;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 32);
          v3 = *(a1 + 8);
        }

        v4 += 104;
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

uint64_t re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 104 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 104 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 104 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 104 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(uint64_t a1, char *a2, unint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a3)
  {
    re::DynamicArray<float *>::setCapacity(a1, a3);
    ++*(a1 + 24);
    re::DynamicArray<char const*>::copy(a1, 0, a2, a3);
  }

  return a1;
}

uint64_t re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, _OWORD *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v9 = *(a1 + 16);
    v10 = *(v9 + 32 * v7 + 8);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 32 * v7 + 8);
    *(a1 + 36) = v10 & 0x7FFFFFFF;
  }

  *(v9 + 32 * v7 + 8) = v10 | 0x80000000;
  *(*(a1 + 16) + 32 * v7 + 8) = *(*(a1 + 16) + 32 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v7) = a3;
  *(*(a1 + 16) + 32 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

void re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      v7 = *(a1 + 16);
      *&v13[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v8 = *&v13[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 2) & 0x80000000) != 0)
          {
            re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::addAsMove(a1, *(v11 - 2) % *(a1 + 24), *(v11 - 2), v11);
          }

          v11 += 2;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v13);
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

uint64_t re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = a1[2];
          *&v31[16] = v13;
          a1[2] = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 3);
          v14 = *&v31[32];
          *(a1 + 3) = v15;
          ++*&v31[40];
          if (v14)
          {
            v16 = 0;
            v17 = 104 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::allocEntry(a1, *(v13 + v16 + 96) % *(a1 + 6), *(v13 + v16 + 96));
                *(v19 + 8) = *(v13 + v16 + 8);
                v20 = *(v13 + v16 + 24);
                *(v19 + 64) = 0;
                *(v19 + 56) = 0;
                *(v19 + 40) = 0;
                *(v19 + 48) = 0;
                *(v19 + 24) = v20;
                *(v19 + 32) = 0;
                v21 = *(v13 + v16 + 40);
                *(v19 + 32) = *(v13 + v16 + 32);
                *(v19 + 40) = v21;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                v22 = *(v19 + 48);
                *(v19 + 48) = *(v13 + v16 + 48);
                *(v18 + 48) = v22;
                v23 = *(v19 + 64);
                *(v19 + 64) = *(v13 + v16 + 64);
                *(v18 + 64) = v23;
                ++*(v18 + 56);
                ++*(v19 + 56);
                v24 = *(v13 + v16 + 72);
                *(v19 + 88) = *(v13 + v16 + 88);
                *(v19 + 72) = v24;
              }

              v16 += 104;
            }

            while (v17 != v16);
          }

          re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v25 = a1[2];
    v26 = *(v25 + 104 * v5);
  }

  else
  {
    v25 = a1[2];
    v26 = *(v25 + 104 * v5);
    *(a1 + 9) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 104 * v5;
  *v28 = v26 | 0x80000000;
  v29 = a1[1];
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 96) = a3;
  ++*(a1 + 7);
  return v25 + 104 * v5;
}

void re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 104 * v10, 16);
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

double re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
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

uint64_t re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = result + 392 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 328));
    re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 280));
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v2 + 232));
    re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 184));
    re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 136));
    re::DynamicArray<unsigned long>::deinit(v2 + 96);
    re::DynamicArray<unsigned long>::deinit(v2 + 56);

    return re::DynamicArray<unsigned long>::deinit(v2 + 16);
  }

  return result;
}

void re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 384) % *(v4 + 24), *(v7 + v5 + 384));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        result = re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(v8 + 16, v9 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 392;
    }
  }

  return result;
}

void re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 392 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 392 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 392 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 392 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 384) = a3;
  ++*(a1 + 28);
  return v7 + 392 * v5;
}

uint64_t re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  ++*(a2 + 24);
  ++*(a1 + 24);
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  ++*(a2 + 64);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v11 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v12;
  ++*(a2 + 104);
  ++*(a1 + 104);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 156) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 120), (a2 + 120));
  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 204) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 168), (a2 + 168));
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 252) = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((a1 + 216), (a2 + 216));
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0x7FFFFFFF00000000;
  *(a1 + 304) = 0;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 264), (a2 + 264));
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0x7FFFFFFF00000000;
  *(a1 + 352) = 0;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 312), (a2 + 312));
  *(a1 + 360) = *(a2 + 360);
  return a1;
}

uint64_t re::HashTable<re::SceneShadowClusterID,re::ecs2::MeshShadowSystem::LastUpdateData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 48 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 48 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 48 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 48 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 272 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 272 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 272 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 272 * v8) & 0x7FFFFFFF;
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

_anonymous_namespace_ *re::BucketArray<re::MeshShadowReceiverWorld,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshShadowReceiverWorld,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshShadowReceiverWorld,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      v4 = *(result + 1);
      if (v4 > a2)
      {
        v5 = *(result + 4);
        do
        {
          v6 = (v3 + 24);
          if ((v5 & 1) == 0)
          {
            v6 = *(v3 + 4);
          }

          result = (*(**v3 + 40))(*v3, v6[v4 - 1]);
          v7 = *(v3 + 4);
          v4 = *(v3 + 1) - 1;
          *(v3 + 1) = v4;
          v5 = v7 + 2;
          *(v3 + 4) = v5;
        }

        while (v4 > a2);
      }

      if (v4 < a2)
      {
        v8 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 4, 0);
          v9 = result;
          if (*v3)
          {
            v10 = *(v3 + 1);
            v11 = *(v3 + 4);
            if ((v11 & 1) == 0)
            {
              v12 = *v8;
              v14 = v10 >= *v8;
              v13 = v10 + 1;
              v14 = !v14 || v12 >= v13;
              if (v14)
              {
                goto LABEL_24;
              }

              v15 = 2 * v12;
              goto LABEL_20;
            }

            v13 = v10 + 1;
            if (v13 >= 3)
            {
              v15 = 4;
LABEL_20:
              if (v15 <= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v15;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v17);
              v11 = *(v3 + 4);
            }
          }

          else
          {
            v16 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v16 + 1);
            v11 = *(v3 + 4) + 2;
            *(v3 + 4) = v11;
          }

LABEL_24:
          v18 = (v3 + 24);
          if ((v11 & 1) == 0)
          {
            v18 = *(v3 + 4);
          }

          v19 = *(v3 + 1);
          v18[v19++] = v9;
          *(v3 + 1) = v19;
          *(v3 + 4) += 2;
        }

        while (v19 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowReceiverWorld,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowReceiverWorld,4ul> *>::__handle[abi:nn200100];
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
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowReceiverWorld,4ul> *>::__handle[abi:nn200100];
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
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::MeshShadowReceiverWorld,4ul> *>::__id;
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

_anonymous_namespace_ *re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 1472, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul> *>::__handle[abi:nn200100];
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
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul> *>::__handle[abi:nn200100];
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
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul> *>::__id;
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

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshShadowPerSceneUpdateData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
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
        v7 = re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::operator[](v4, i);
        re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v7 + 39);
        re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v7 + 33);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v7 + 27);
        re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v7 + 21);
        re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v7 + 15);
        re::DynamicArray<unsigned long>::deinit((v7 + 10));
        re::DynamicArray<unsigned long>::deinit((v7 + 5));
        re::DynamicArray<unsigned long>::deinit(v7);
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
    v8 = *(*v2 + 40);

    return v8(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshShadowPerSceneUpdateData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBC38;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshShadowPerSceneUpdateData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBC38;
  a2[1] = v2;
  return a2;
}

unint64_t re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v5 + 8 * v2) + 368 * (a2 & 3);
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFBC90;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFBCE8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFBD40;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFBD98;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CFBC90;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFBCE8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFBD40;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFBD98;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 240);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 240);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 240);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 240);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBC90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBC90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBCE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBCE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBD40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBD40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFBD98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFBD98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::ShadowClusterComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::ShadowClusterComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

double re::ecs2::spatialMediaLogTransform(re *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *re::spatialMediaLogObjects(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v28 = 136315394;
    v29 = COERCE_DOUBLE("[VideoLoadingTexture][SpatialMediaComponentHelper]->updateSpatialMediaMaterialParameters");
    v30 = 2080;
    v31 = COERCE_DOUBLE("surfaceToMediaTransform");
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "\t== %s == %s\n", &v28, 0x16u);
  }

  v4 = *re::spatialMediaLogObjects(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = *a1;
    v7 = *(a1 + 4);
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    v28 = 134219010;
    v29 = v6;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = v8;
    v34 = 2048;
    v35 = v9;
    v36 = 2080;
    v37 = "surfaceToMediaTransform";
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "\t|%0.2f\t%0.2f\t%0.2f\t%0.2f| %s\n", &v28, 0x34u);
  }

  v10 = *re::spatialMediaLogObjects(v5);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    v12 = *(a1 + 1);
    v13 = *(a1 + 5);
    v14 = *(a1 + 9);
    v15 = *(a1 + 13);
    v28 = 134219010;
    v29 = v12;
    v30 = 2048;
    v31 = v13;
    v32 = 2048;
    v33 = v14;
    v34 = 2048;
    v35 = v15;
    v36 = 2080;
    v37 = "surfaceToMediaTransform";
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "\t|%0.2f\t%0.2f\t%0.2f\t%0.2f| %s\n", &v28, 0x34u);
  }

  v16 = *re::spatialMediaLogObjects(v11);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    v18 = *(a1 + 2);
    v19 = *(a1 + 6);
    v20 = *(a1 + 10);
    v21 = *(a1 + 14);
    v28 = 134219010;
    v29 = v18;
    v30 = 2048;
    v31 = v19;
    v32 = 2048;
    v33 = v20;
    v34 = 2048;
    v35 = v21;
    v36 = 2080;
    v37 = "surfaceToMediaTransform";
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "\t|%0.2f\t%0.2f\t%0.2f\t%0.2f| %s\n", &v28, 0x34u);
  }

  v22 = *re::spatialMediaLogObjects(v17);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 3);
    v25 = *(a1 + 7);
    v26 = *(a1 + 11);
    v27 = *(a1 + 15);
    v28 = 134219010;
    v29 = v24;
    v30 = 2048;
    v31 = v25;
    v32 = 2048;
    v33 = v26;
    v34 = 2048;
    v35 = v27;
    v36 = 2080;
    v37 = "surfaceToMediaTransform";
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "\t|%0.2f\t%0.2f\t%0.2f\t%0.2f| %s\n", &v28, 0x34u);
  }

  return result;
}

re::ecs2::SpatialMediaComponentHelper::impl *re::ecs2::SpatialMediaComponentHelper::impl::impl(re::ecs2::SpatialMediaComponentHelper::impl *this)
{
  *this = 0;
  *(this + 4) = re::globalAllocators(this)[2];
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 2128) = 0;
  inited = objc_initWeak(this + 267, 0);
  v3 = re::globalAllocators(inited);
  *(this + 271) = v3[2];
  *(this + 272) = 0;
  *(this + 546) = 0;
  *(this + 137) = 0u;
  v4 = -8256;
  do
  {
    v5 = this + v4;
    *(v5 + 1308) = 0;
    *(v5 + 2618) = 0;
    v4 += 2064;
  }

  while (v4);
  *(this + 1316) = 0;
  *(this + 657) = 0u;
  *(this + 656) = 0u;
  *(this + 655) = 0u;
  *(this + 654) = 0u;
  *(this + 659) = 0u;
  *(this + 2640) = 0;
  re::ecs2::SpatialMediaComponentHelper::impl::reloadStabilizedBillboardingTreatmentDebugOverrides(v3, this + 10504);
  return this;
}

void re::ecs2::SpatialMediaComponentHelper::impl::reloadStabilizedBillboardingTreatmentDebugOverrides(uint64_t a1, uint64_t a2)
{
  re::Defaults::floatValue(&v18, "StabilizedBillboardingSampleInterval", a2);
  v4 = *(&v18 + 1);
  if (!v18)
  {
    v4 = 0.25;
  }

  *a2 = v4;
  re::Defaults::floatValue(&v18, "SpatialMediaBillboardingMinimumAngleDelta", v3);
  v6 = *(&v18 + 1);
  if (!v18)
  {
    v6 = 0.31416;
  }

  *(a2 + 4) = v6;
  re::Defaults::floatValue(&v18, "SpatialMediaBillboardingMaximumMovementThreshold", v5);
  v8 = *(&v18 + 1);
  if (!v18)
  {
    v8 = 0.08;
  }

  *(a2 + 8) = v8;
  re::Defaults::floatValue(&v18, "SpatialMediaBillboardingSettleDuration", v7);
  v10 = *(&v18 + 1);
  if (!v18)
  {
    v10 = 1.75;
  }

  *(a2 + 12) = v10;
  re::Defaults::floatValue(&v18, "SpatialMediaBillboardingHeadboxSignedDistanceToBiConeUpdateThreshold", v9);
  v12 = *(&v18 + 1);
  if (!v18)
  {
    v12 = -0.1;
  }

  *(a2 + 16) = v12;
  re::Defaults::floatValue(&v18, "SpatialMediaBillboardingHeadboxMinimumAngleDeltaUpdateThreshold", v11);
  v14 = *(&v18 + 1);
  if (!v18)
  {
    v14 = 0.3927;
  }

  *(a2 + 24) = v14;
  re::Defaults::floatValue(&v18, "SpatialMediaBillboardingHeadboxMinimumAngleDeltaRequired", v13);
  v16 = *(&v18 + 1);
  if (!v18)
  {
    v16 = 0.15708;
  }

  *(a2 + 20) = v16;
  re::Defaults::floatValue(&v18, "SpatialMediaBillboardingMaximumWindowAngleConstraint", v15);
  v17 = *(&v18 + 1);
  if (!v18)
  {
    v17 = 0.85;
  }

  *(a2 + 28) = v17;
}

void re::ecs2::SpatialMediaComponentHelper::impl::update(uint64_t a1, void *a2, uint64_t *a3, float a4)
{
  v139 = *MEMORY[0x1E69E9840];
  if (!re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
  {
    v16 = re::MediaDefaults::logEnabled(0);
    if (!v16)
    {
      return;
    }

    v17 = *re::spatialMediaLogObjects(v16);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v18 = a2[39];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v18;
    v19 = "[SpatialMediaComponentHelper] Skipping update due to spatial media component is not found. [entityID: %llu]";
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, v19, &buf, 0xCu);
    return;
  }

  if (!re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
  {
    v20 = re::MediaDefaults::logEnabled(0);
    if (!v20)
    {
      return;
    }

    v17 = *re::spatialMediaLogObjects(v20);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v21 = a2[39];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v21;
    v19 = "[SpatialMediaComponentHelper] Skipping update due to SpatialMediaStatusComponent not found. [entityID: %llu]";
    goto LABEL_15;
  }

  ActiveMediaType = re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(a2, v8);
  if (ActiveMediaType)
  {
    v10 = ActiveMediaType;
    v11 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v11)
    {
      if (!*(v11 + 25))
      {
        re::ecs2::SpatialMediaComponentHelper::impl::updateToPortalMode(a2, v12);
        goto LABEL_22;
      }
    }

    else
    {
      v110 = *re::spatialMediaLogObjects(0);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        *&buf = 0x40604000100;
        _os_log_error_impl(&dword_1E1C61000, v110, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, smsc is nullptr", &buf, 8u);
      }
    }

    if (re::ecs2::SpatialMediaComponentHelper::impl::isInImmersiveMode(a2, v12))
    {
      v13 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v13)
      {
        v15 = *(v13 + 120);
      }

      else
      {
        v15 = 80.0;
      }

      MediaAspectRatio = re::ecs2::SpatialMediaComponentHelper::impl::getMediaAspectRatio(a2, v14);
      v25 = vdiv_f32(vmul_f32(vmul_f32(re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(v24, v15, MediaAspectRatio), 0x3F0000003F000000), vdup_n_s32(0x40490FDBu)), vdup_n_s32(0x43340000u));
      v128 = v25.f32[0];
      v129 = tanf(v25.f32[1]);
      v26.f32[0] = tanf(v128);
      v26.f32[1] = v129;
      v27 = vmul_f32(vadd_f32(v26, v26), vdup_n_s32(0x3FC66666u));
      __asm { FMOV            V1.2S, #4.25 }

      re::ecs2::SpatialMediaComponentHelper::impl::updateToImmersiveMode(a2, v27, *&vmul_f32(v27, _D1));
    }

LABEL_22:
    v33 = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v33)
    {
      v35 = v33;
      v36 = *(v33 + 120);
      if (v36 > 0.00000011921)
      {
        v37 = re::ecs2::SpatialMediaComponentHelper::impl::getMediaAspectRatio(a2, v34);
        v39 = re::ecs2::SpatialMedia::calculateImmersiveFrame(v38, v36, v37);
        re::ecs2::SpatialMediaStatusComponent::setImmersiveFrameSize(v35, v39);
      }
    }

    else
    {
      v111 = *re::spatialMediaLogObjects(0);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        *&buf = 0x3F704000100;
        _os_log_error_impl(&dword_1E1C61000, v111, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr", &buf, 8u);
      }
    }

    v40 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v40)
    {
      v112 = *re::spatialMediaLogObjects(0);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *&buf = 0x22204000100;
        _os_log_error_impl(&dword_1E1C61000, v112, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr", &buf, 8u);
      }

LABEL_48:
      v54 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v54)
      {
        v55 = v54;
        re::AssetHandle::AssetHandle(&buf, (v54 + 184));
        if (*(&buf + 1) && (v56 = re::AssetHandle::loadedAsset<re::TextureAsset>(&buf)) != 0)
        {
          if (*(v55 + 232) == 1)
          {
            if (*(a1 + 56))
            {
              if (!media::FloatAnimation::update(*(a1 + 72), a4, v57, v58))
              {
                if (!*(a1 + 56))
                {
                  re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
                  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v126, v127);
                  __break(1u);
                }

                re::internal::destroyPersistent<media::FloatAnimation>("update", 53, *(a1 + 72));
                re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt((a1 + 56), 0);
              }

              v56 = *(a1 + 40);
              if (v56)
              {
                *v133 = *(a1 + 48);
                v56 = (*(*v56 + 16))(v56, v133);
              }
            }
          }

          else
          {
            *(a1 + 48) = 1065353216;
            if (*(v55 + 176))
            {
              *(v55 + 176) = 0;
              re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v55);
            }
          }

          v60 = re::MediaDefaults::logLevel(v56);
          if (v60 >= 2)
          {
            v120 = *re::spatialMediaLogObjects(v60);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              v121 = a2[39];
              v122 = *(v55 + 172);
              if (v122 > 1.0)
              {
                v122 = 1.0;
              }

              if (v122 < 0.0)
              {
                v122 = 0.0;
              }

              *v133 = 134218240;
              v134 = v121;
              v135 = 2048;
              v136 = v122;
              _os_log_impl(&dword_1E1C61000, v120, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][SpatialMediaComponentHelper]->updateSpatialMediaMaterialParameters :: entity %llu:: ReadyToPlay = %f", v133, 0x16u);
            }
          }
        }

        else
        {
          *(a1 + 48) = 0;
        }

        re::ecs2::SpatialMediaStatusComponent::setLoadingTextureBlend(v55, 1.0 - *(a1 + 48));
        re::AssetHandle::~AssetHandle(&buf);
      }

      else
      {
        v113 = *re::spatialMediaLogObjects(0);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          *&buf = 0x24B04000100;
          _os_log_error_impl(&dword_1E1C61000, v113, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr", &buf, 8u);
        }
      }

      if (v10 == 1)
      {
        v61 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!v61)
        {
          v118 = *re::spatialMediaLogObjects(0);
          if (!os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }

          *&buf = 0x26404000100;
          v119 = "SpatialMediaComponentHelper line: %d, imagePresentationComponent is nullptr";
          goto LABEL_131;
        }

        v62 = v61;
        v63 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v63)
        {
          v64 = v63;
          re::AssetHandle::AssetHandle(v131, (v62 + 104));
          if (!v132)
          {
            goto LABEL_92;
          }

          if (!re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v131))
          {
            goto LABEL_92;
          }

          v65 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v131);
          if (*a1 == v65)
          {
            if (*(v64 + 216))
            {
              goto LABEL_92;
            }
          }

          v66 = v65;
          v67 = *a3;
          v68 = *(a3[4] + 136);
          v69 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v69)
          {
            v70 = v69;
            v71 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v71)
            {
              v72 = v71;
              v73 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v70 + 104));
              v74 = &unk_1EE187000;
              if (!v73 || *(v73 + 65) != 2)
              {
                goto LABEL_78;
              }

              SpatialPhotoMixedLightSpillTexture = re::ImagePresentationTextureProcessor::generateSpatialPhotoMixedLightSpillTexture(v68, v73);
              if (SpatialPhotoMixedLightSpillTexture)
              {
                v76 = SpatialPhotoMixedLightSpillTexture;
                v77 = re::TextureAsset::assetType(SpatialPhotoMixedLightSpillTexture);
                (*(*v67 + 424))(&buf, v67, v76, v77, 0, 0, 0);
                re::AssetHandle::AssetHandle(v133, &buf);
                re::ecs2::SpatialMediaStatusComponent::setMixedSpillTextureAsset(v72, v133);
                re::AssetHandle::~AssetHandle(v133);
                re::AssetHandle::~AssetHandle(&buf);
                goto LABEL_78;
              }

              v78 = *re::spatialMediaLogObjects(0);
              if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
LABEL_78:
                if (*a1 == v66)
                {
LABEL_92:
                  re::AssetHandle::~AssetHandle(v131);
                  goto LABEL_93;
                }

                v79 = re::ecs2::EntityComponentCollection::get((a2 + 6), v74[457]);
                v80 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                if (v79)
                {
                  v81 = v80;
                  if (v80)
                  {
                    if (*(v79 + 134) == 2)
                    {
                      v82 = *(v79 + 144);
                      v83 = *(v79 + 136);
                      v84 = *(v79 + 140) * 0.5;
                      if (vabds_f32(v84, v80[29]) > 0.00000011921)
                      {
                        v80[29] = v84;
                        re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v80);
                      }

                      if (vabds_f32(v82, v81[30]) > 0.00000011921)
                      {
                        v81[30] = v82;
                        re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v81);
                      }

                      if (vabds_f32(v83, v81[31]) > 0.00000011921)
                      {
                        v81[31] = v83;
                        re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v81);
                      }
                    }

                    goto LABEL_91;
                  }

                  v85 = *re::spatialMediaLogObjects(0);
                  if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
LABEL_91:
                    *a1 = v66;
                    goto LABEL_92;
                  }

                  v105 = a2[39];
                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = v105;
                  v87 = "[SpatialMediaComponentHelper::impl::updateSpatialMediaMaterialParameters] Spatial media status component not found. Skip material parameter update on %llu.";
                }

                else
                {
                  v85 = *re::spatialMediaLogObjects(v80);
                  if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_91;
                  }

                  v86 = a2[39];
                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = v86;
                  v87 = "[SpatialMediaComponentHelper::impl::configureMetadataParameters] Image presentation component not found. Skip configureMetadataParameters on %llu.";
                }

                _os_log_error_impl(&dword_1E1C61000, v85, OS_LOG_TYPE_ERROR, v87, &buf, 0xCu);
                goto LABEL_91;
              }

              v106 = a2[39];
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v106;
              v107 = "Requested spatial photo light spill texture generation but got a null texture asset. [entityID: %llu]";
              v108 = v78;
              v109 = 12;
LABEL_111:
              _os_log_error_impl(&dword_1E1C61000, v108, OS_LOG_TYPE_ERROR, v107, &buf, v109);
              goto LABEL_78;
            }

            v125 = *re::spatialMediaLogObjects(0);
            v74 = &unk_1EE187000;
            if (!os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_78;
            }

            *&buf = 0x1F004000100;
            v107 = "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr";
          }

          else
          {
            v125 = *re::spatialMediaLogObjects(0);
            v74 = &unk_1EE187000;
            if (!os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_78;
            }

            *&buf = 0x1ED04000100;
            v107 = "SpatialMediaComponentHelper line: %d, imagePresentationComponent is nullptr";
          }

          v108 = v125;
          v109 = 8;
          goto LABEL_111;
        }

        v118 = *re::spatialMediaLogObjects(0);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          *&buf = 0x26704000100;
          v119 = "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr";
LABEL_131:
          _os_log_error_impl(&dword_1E1C61000, v118, OS_LOG_TYPE_ERROR, v119, &buf, 8u);
        }
      }

LABEL_93:
      re::ecs2::SpatialMediaComponentHelper::impl::updateMediaBillboarding(a1, a2, a3[2], a4);
      v88 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v88)
      {
        v89 = v88;
        v90 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v90)
        {
          v91 = v90;
          v92 = *(v89 + 88);
          if (v92 >= 0.00000011921)
          {
            if (v92 > 1.0)
            {
              v92 = 1.0;
            }

            v130 = v92;
            v93 = (*(v90 + 120) * 3.1416) / 180.0;
            v94 = tanf(0.69813);
            v95 = v94 + v94;
            v96 = tanf(v93 * 0.5);
            v97 = v95 / (v96 + v96);
            v98 = fminf(v97 * 0.3, 0.625);
            v99 = fminf(v97 * 0.78, 1.0);
            v100 = 1.0 - v130;
            v101 = (v130 * v98) + ((1.0 - v130) * 0.625);
            if (v101 < 0.0)
            {
              v101 = 0.0;
            }

            v102 = v100 + (v130 * v99);
            if (v102 > 1.0)
            {
              v102 = 1.0;
            }

            *&buf = __PAIR64__(LODWORD(v102), LODWORD(v101));
            *(&buf + 2) = (v130 * 16.0) + (v100 * 1.85);
            v138 = vadd_f32(vmul_n_f32(0x3F80000040000000, v130), vmul_n_f32(0x3F80000040000000, v100));
          }

          else
          {
            *&buf = 0x3F8000003F200000;
            *(&buf + 1) = 1072483533;
            v138 = 0x3F80000040000000;
          }

          re::ecs2::SpatialMediaStatusComponent::setBackingPlaneImmersiveParameters(v91, &buf);
          goto LABEL_105;
        }

        v114 = *re::spatialMediaLogObjects(0);
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          *&buf = 0x14E04000100;
          v115 = "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr";
          goto LABEL_124;
        }
      }

      else
      {
        v114 = *re::spatialMediaLogObjects(0);
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          *&buf = 0x14C04000100;
          v115 = "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr";
LABEL_124:
          _os_log_error_impl(&dword_1E1C61000, v114, OS_LOG_TYPE_ERROR, v115, &buf, 8u);
        }
      }

LABEL_105:
      v103 = a3[1];

      re::ecs2::SpatialMediaComponentHelper::impl::updateSpatialMediaMaterialParameters(a1, a2, v103);
      return;
    }

    v42 = v40;
    v43 = *(v40 + 232);
    if (re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(a2, v41) == 2)
    {
      v45 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (!v45 || (v43 = *(v45 + 89), v45 = re::MediaDefaults::logLevel(v45), v45 < 3))
      {
        if (!v43)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      v123 = *re::spatialMediaLogObjects(v45);
      v45 = os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT);
      if (v45)
      {
        v124 = "FALSE";
        if (v43)
        {
          v124 = "TRUE";
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v124;
        _os_log_impl(&dword_1E1C61000, v123, OS_LOG_TYPE_DEFAULT, "[SpatialMediaComponentHelper::impl::updateSpatialMediaReady] :: #SpatialMetaData :: Spatial Media is Ready %s", &buf, 0xCu);
      }
    }

    else
    {
      v46 = re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(a2, v44);
      if (v46 == 1)
      {
        v47 = *(re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 134);
        v45 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v48 = 0;
        if (v47 != 2 || (*(v45 + 27) & 1) != 0)
        {
LABEL_46:
          if (*(v42 + 232) != v48)
          {
            *(v42 + 232) = v48;
            re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v42);
          }

          goto LABEL_48;
        }

        goto LABEL_38;
      }

      v49 = *re::spatialMediaLogObjects(v46);
      v45 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
      if (v45)
      {
        v104 = a2[39];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v104;
        _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "[SpatialMediaComponentHelper::impl::updateSpatialMediaReady] No valid media type found on %llu", &buf, 0xCu);
      }
    }

    if ((v43 & 1) == 0)
    {
LABEL_45:
      v48 = 0;
      goto LABEL_46;
    }

LABEL_38:
    if ((*(v42 + 176) & 1) == 0 && (*(v42 + 232) & 1) == 0)
    {
      v50 = re::globalAllocators(v45);
      v51 = (*(*v50[2] + 32))(v50[2], 48, 8);
      if (media::FloatEaseInOutAnimation::FloatEaseInOutAnimation(v51, (a1 + 48)))
      {
        if (re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity((a1 + 56), v52))
        {
          v53 = *(a1 + 56);
          *(a1 + 8 * v53 + 72) = v51;
          *(a1 + 56) = v53 + 1;
          ++*(a1 + 64);
        }

        *(v51 + 12) = 0x3F8000003E19999ALL;
        *(v51 + 20) = 0;
      }
    }

    v48 = 1;
    goto LABEL_46;
  }

  v22 = re::MediaDefaults::logEnabled(ActiveMediaType);
  if (v22)
  {
    v116 = *re::spatialMediaLogObjects(v22);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
    {
      v117 = a2[39];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v117;
      _os_log_impl(&dword_1E1C61000, v116, OS_LOG_TYPE_INFO, "[SpatialMediaComponentHelper] Skipping update due to not having spatial presenting ImagePresentationComponent or VideoPlayerComponent. [entityID: %llu]", &buf, 0xCu);
    }
  }

  re::ecs2::SpatialMediaComponentHelper::impl::updateMediaBillboarding(a1, a2, a3[2], a4);
}

uint64_t re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v6 = v4;
  if (!v3)
  {
    if (!v4)
    {
      return 0;
    }

    v10 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v10 || *(v10 + 88) != 2 || *(v10 + 208) != 1)
    {
      return 0;
    }

    return 2;
  }

  isPresentingSpatialImage = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(this, v5);
  v8 = isPresentingSpatialImage;
  if (v6)
  {
    v9 = *re::spatialMediaLogObjects(isPresentingSpatialImage);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "[SpatialMediaComponentHelper::impl::getActiveMediaType] imagePresentationComponent and videoPlayerComponent playing at the same time", v12, 2u);
    }

    if (v8)
    {
      return 2;
    }
  }

  return v8;
}

void re::ecs2::SpatialMediaComponentHelper::impl::updateMediaBillboarding(re::ecs2::SpatialMediaComponentHelper::impl *this, uint64_t **a2, re::TransformService *a3, float a4)
{
  v118 = *MEMORY[0x1E69E9840];
  v8 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v8)
  {
    v103 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 1223;
    v104 = "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr";
    goto LABEL_108;
  }

  v9 = v8;
  v10 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v10)
  {
    if (!*(v10 + 80))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v105 = *re::spatialMediaLogObjects(0);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 1395;
      _os_log_error_impl(&dword_1E1C61000, v105, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr", buf, 8u);
    }
  }

  if (re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(a2, v11) - 1 > 1)
  {
    v15 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v15)
    {
      v16 = *(v15 + 25) == 2;
    }

    else
    {
      v16 = 0;
    }

    v10 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v10)
    {
      v17 = *(v10 + 132) == 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = v16 || v17;
    v14 = a2;
    if (!v18)
    {
LABEL_18:
      if (*(this + 2128) == 1)
      {
        v23 = *re::spatialMediaLogObjects(v10);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = a2[39];
          *buf = 134217984;
          *&buf[4] = v24;
          _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "[SpatialMediaSystem::updateStabilizedBillboarding] Disabling stabilized billboarding effect for entity [id=%llu]", buf, 0xCu);
        }

        *(this + 2128) = 0;
        WeakRetained = objc_loadWeakRetained(this + 267);
        if (WeakRetained)
        {
          v26 = WeakRetained;
          v27 = re::ecs2::EntityComponentCollection::get((WeakRetained + 40), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v27)
          {
            *(v27 + 464) = 0;
            re::ecs2::Component::markDirty(v27);
          }
        }

        objc_destroyWeak(this + 267);
        *(this + 267) = 0;
        *(this + 2640) = 0;
      }

      return;
    }
  }

  else
  {
    v10 = re::ecs2::SpatialMediaComponentHelper::impl::isInImmersiveMode(a2, v12);
    v14 = a2;
    if (v10)
    {
      goto LABEL_18;
    }
  }

  do
  {
    v19 = v14;
    v14 = v14[4];
  }

  while (v14);
  v20 = v19[3];
  if (!v20)
  {
LABEL_106:
    v103 = *re::spatialMediaLogObjects(v10);
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 1250;
    v104 = "SpatialMediaComponentHelper line: %d, scene is nullptr";
LABEL_108:
    _os_log_error_impl(&dword_1E1C61000, v103, OS_LOG_TYPE_ERROR, v104, buf, 8u);
    return;
  }

  if (*(v9 + 80) == 1)
  {
    CameraWorldPosition = re::ecs2::SpatialMediaComponentHelper::impl::getCameraWorldPosition(v19[3], v13);
    *(this + 1319) = v22;
    *(this + 1318) = CameraWorldPosition;
    return;
  }

  re::TransformService::worldTransform(a3, a2, 0, buf);
  v111 = v117;
  if ((*(this + 2128) & 1) == 0)
  {
    v29 = *re::spatialMediaLogObjects(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a2[39];
      *buf = 134217984;
      *&buf[4] = v31;
      _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "[SpatialMediaSystem::updateStabilizedBillboarding] Enabling stabilized billboarding effect for entity [id=%llu]", buf, 0xCu);
    }

    *(this + 2128) = 1;
    v32 = re::ecs2::SpatialMediaComponentHelper::impl::getCameraWorldPosition(v20, v30);
    v34 = v33;
    *(this + 1309) = v33;
    *(this + 1308) = v32;
    *(this + 1311) = v33;
    *(this + 1310) = v32;
    *(this + 1312) = 0;
    v35 = a2[43];
    if (v35)
    {
      v109 = a3;
      v36 = a2[45];
      v37 = 8 * v35;
      while (1)
      {
        v38 = *v36;
        if ((*(*v36 + 288) ^ 0xCD040ED7D618C260) <= 1)
        {
          v39 = *(v38 + 296);
          if (v39 == "__InternalIPC-MXI__" || !strcmp(v39, "__InternalIPC-MXI__"))
          {
            break;
          }
        }

        ++v36;
        v37 -= 8;
        if (!v37)
        {
          v40 = 0;
          goto LABEL_39;
        }
      }

      v40 = (v38 + 8);
LABEL_39:
      a3 = v109;
    }

    else
    {
      v40 = 0;
    }

    objc_storeWeak(this + 267, v40);
    *(this + 1319) = v34;
    *(this + 1318) = v32;
    *(this + 2640) = 0;
  }

  v41 = objc_loadWeakRetained(this + 267);
  v42 = v41 - 8;
  if (!v41)
  {
    v42 = 0;
  }

  v112 = v42;
  if (!v41)
  {
    v43 = a2[43];
    if (v43)
    {
      v44 = a2[45];
      v45 = 8 * v43;
      while (1)
      {
        v46 = *v44;
        if ((*(*v44 + 288) ^ 0xCD040ED7D618C260) <= 1)
        {
          v47 = *(v46 + 296);
          if (v47 == "__InternalIPC-MXI__" || !strcmp(v47, "__InternalIPC-MXI__"))
          {
            break;
          }
        }

        ++v44;
        v45 -= 8;
        if (!v45)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_50:
      v46 = 0;
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v112, v46);
    if (v112)
    {
      v48 = (v112 + 8);
    }

    else
    {
      v48 = 0;
    }

    objc_storeWeak(this + 267, v48);
  }

  StabilizedBillboardingConstrainedTargetPosition = re::ecs2::SpatialMediaComponentHelper::impl::getStabilizedBillboardingConstrainedTargetPosition(a2, v111.i64[0], v111.i64[1], *(this + 1308), *(this + 1309), this + 10504, a3);
  v51 = StabilizedBillboardingConstrainedTargetPosition;
  v52 = v50;
  v53 = *(this + 2624) + a4;
  *(this + 2624) = v53;
  if (v53 < *(this + 2626))
  {
    goto LABEL_74;
  }

  v54.i64[0] = StabilizedBillboardingConstrainedTargetPosition;
  v54.i64[1] = v50;
  v110 = v54;
  v55 = re::ecs2::SpatialMediaComponentHelper::impl::getCameraWorldPosition(v20, v50);
  v57 = v56;
  v58 = re::ecs2::SpatialMediaComponentHelper::impl::getStabilizedBillboardingConstrainedTargetPosition(a2, v111.i64[0], v111.i64[1], v55, v56, this + 10504, a3);
  v60 = v59;
  v61.i64[0] = v58;
  v61.i64[1] = v59;
  v62 = vsubq_f32(v61, v111);
  v63 = vsubq_f32(v110, v111);
  v64 = vmulq_f32(v63, v63);
  v65 = vaddv_f32(*v64.f32);
  *v64.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v64.f32[2] + v65));
  *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v64.f32[2] + v65), vmul_f32(*v64.f32, *v64.f32)));
  v66 = vmulq_n_f32(v63, vmul_f32(*v64.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v64.f32[2] + v65), vmul_f32(*v64.f32, *v64.f32))).f32[0]);
  v67 = vmulq_f32(v62, v62);
  *&v68 = v67.f32[2] + vaddv_f32(*v67.f32);
  *v67.f32 = vrsqrte_f32(v68);
  *v67.f32 = vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32)));
  v69 = vmulq_f32(v66, vmulq_n_f32(v62, vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32))).f32[0]));
  v70 = v69.f32[2] + vaddv_f32(*v69.f32);
  if (v70 > 1.0)
  {
    v70 = 1.0;
  }

  if (v70 < -1.0)
  {
    v70 = -1.0;
  }

  v71 = acosf(v70);
  if (!v112 || (v72 = re::ecs2::EntityComponentCollection::get((v112 + 48), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) == 0)
  {
    v73 = *(this + 2627);
LABEL_66:
    if (v71 <= v73)
    {
      goto LABEL_72;
    }

    goto LABEL_67;
  }

  if (v71 <= *(this + 2632))
  {
    if (*(v72 + 596) <= -0.1)
    {
      goto LABEL_72;
    }

    v73 = *(this + 2631);
    goto LABEL_66;
  }

LABEL_67:
  v74.i64[0] = v55;
  v74.i64[1] = v57;
  v75 = vsubq_f32(v74, *(this + 655));
  v76 = vmulq_f32(v75, v75);
  if (sqrtf(v76.f32[2] + vaddv_f32(*v76.f32)) < *(this + 2628))
  {
    v77 = *(this + 2624) + *(this + 2625);
    *(this + 2625) = v77;
    if (v77 >= *(this + 2629))
    {
      v78 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v79 = !v78 || *(v78 + 25) != 2;
      re::ecs2::SpatialMedia::BillboardAnimationEngine::addTargetPointAnimation((this + 2144), v51, v52, v58, v60, v79);
      *(this + 1309) = v57;
      *(this + 1308) = v55;
      *(this + 2625) = 0;
      v98 = *re::spatialMediaLogObjects(v97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        v99 = *(this + 2616);
        v100 = *(this + 2617);
        v101 = *(this + 2618);
        v102 = a2[39];
        *buf = 134218752;
        *&buf[4] = v99;
        *&buf[12] = 2048;
        *&buf[14] = v100;
        v115 = 2048;
        v116 = v101;
        v117.i16[0] = 2048;
        *(v117.i64 + 2) = v102;
        _os_log_impl(&dword_1E1C61000, v98, OS_LOG_TYPE_INFO, "[SpatialMediaSystem::updateMediaBillboarding] Updating billboarding target point (%.2f, %.2f, %.2f) for entity [id=%llu]", buf, 0x2Au);
      }
    }

    goto LABEL_73;
  }

LABEL_72:
  *(this + 2625) = 0;
LABEL_73:
  *(this + 2624) = 0;
  *(this + 1310) = v55;
  *(this + 1311) = v57;
LABEL_74:
  v80 = 0;
  v81 = (this + 2208);
  v82 = 8256;
  do
  {
    v80 |= *v81 != 0;
    v81 += 258;
    v82 -= 2064;
  }

  while (v82);
  if (v80)
  {
    if (re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
    {
      v85 = 0;
      v86 = (this + 2208);
      v87 = 8256;
      do
      {
        v85 |= *v86 != 0;
        v86 += 258;
        v87 -= 2064;
      }

      while (v87);
      if (v85)
      {
        v88 = 0;
        v89 = this + 2208;
        v90 = 8256;
        do
        {
          if (*v89)
          {
            if (!media::FloatAnimation::update(*(v89 + 2), a4, v83, v84))
            {
              if (!*v89)
              {
                re::internal::assertLog(6, v91, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
                v10 = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v107, v108);
                __break(1u);
                goto LABEL_106;
              }

              re::internal::destroyPersistent<media::FloatAnimation>("update", 126, *(v89 + 2));
              re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt(v89, 0);
            }

            v88 = 1;
          }

          v89 += 2064;
          v90 -= 2064;
        }

        while (v90);
        if (v88)
        {
          v92 = *(this + 272);
          if (v92)
          {
            v93 = *(this + 275);
            v94 = *(this + 546);
            *buf = *(this + 274);
            *&buf[8] = v93;
            v113 = v94;
            (*(*v92 + 16))(v92, buf, &v113);
          }
        }

        v95 = *(this + 546);
        *(this + 659) = *(this + 137);
        *(this + 2640) = v95;
      }
    }

    else
    {
      v106 = *re::spatialMediaLogObjects(0);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 1430;
        _os_log_error_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr", buf, 8u);
      }
    }
  }

  else
  {
    *(this + 1318) = v51;
    *(this + 1319) = v52;
  }

  if (v112)
  {
    v96 = re::ecs2::EntityComponentCollection::get((v112 + 48), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v96)
    {
      *(v96 + 464) = 513;
      *(v96 + 480) = *(this + 659);
      *(v96 + 496) = *(this + 2640);
      re::ecs2::Component::markDirty(v96);
    }

    if (v112)
    {
    }
  }
}

void re::ecs2::SpatialMediaComponentHelper::impl::updateToPortalMode(re::ecs2::SpatialMediaComponentHelper::impl *this, re::ecs2::Entity *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v3)
  {
    v43 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 826;
    v44 = "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr";
    goto LABEL_49;
  }

  v4 = v3;
  v5 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v5)
  {
    v43 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 828;
    v44 = "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr";
LABEL_49:
    _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, v44, buf, 8u);
    return;
  }

  *(v4 + 113) = 1;
  v6 = *(v4 + 64);
  v7 = *(v4 + 76);
  v8 = *(v4 + 80);
  v9 = *(v4 + 84);
  v10 = *(v4 + 92);
  v55 = *(v4 + 100);
  v56 = *(v4 + 108);
  v11 = *(v5 + 40);
  v12 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v12)
  {
    v14 = v12;
    if (fabsf(*(v12 + 96) + -1.0) > 0.00000011921 && re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(this, v13) == 1)
    {
      v16 = *(v14 + 32);
      v17 = *(v14 + 36);
      v18 = *(v14 + 40);
      if ((v8 == v16 || vabds_f32(v8, v16) < (((fabsf(v8) + fabsf(v16)) + 1.0) * 0.00001)) && (v9 == v17 || vabds_f32(v9, v17) < (((fabsf(v9) + fabsf(v17)) + 1.0) * 0.00001)) && (v11 == v18 || vabds_f32(v11, v18) < (((fabsf(v11) + fabsf(v18)) + 1.0) * 0.00001)))
      {
        v10 = *(v14 + 44);
        v11 = *(v14 + 40);
        v9 = *(v14 + 36);
        v8 = *(v14 + 32);
      }

      DesiredScreenSizeInPortalMode = re::ecs2::SpatialMediaComponentHelper::impl::getDesiredScreenSizeInPortalMode(this, v15);
      v21 = HIDWORD(DesiredScreenSizeInPortalMode);
      if (*(v14 + 104))
      {
        LODWORD(v21) = DesiredScreenSizeInPortalMode;
      }

      v22 = DesiredScreenSizeInPortalMode;
      v23 = (((*(v14 + 40) + 2.0) * 0.5) * *&v21) / 0.905;
      re::ecs2::SpatialMediaComponentHelper::impl::getScreenEntityScaleFactorByMagnificationExtentInPortal(this, v20);
      v47 = v24;
      MagnificationExtent = re::ecs2::SpatialMediaComponentHelper::impl::getMagnificationExtent(this, v25);
      v27 = 1.0;
      if (MagnificationExtent > 1.0)
      {
        v28 = MagnificationExtent;
        v27 = _AXSReduceMotionEnabled() ? 1.7 : 1.5;
        if (v28 < v27)
        {
          ImmersiveToPortalPerceivedMediaRatio = re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveToPortalPerceivedMediaRatio(this, v29);
          v32 = ImmersiveToPortalPerceivedMediaRatio + -1.0;
          if ((ImmersiveToPortalPerceivedMediaRatio + -1.0) > 0.5)
          {
            v32 = 0.5;
          }

          if (v32 < 0.0)
          {
            v32 = 0.0;
          }

          v46 = v32;
          v33 = re::MediaDefaults::logEnabled(v30);
          if (v33)
          {
            v34 = *re::spatialMediaLogObjects(v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = ImmersiveToPortalPerceivedMediaRatio;
              *v49 = 2048;
              *&v49[2] = v46;
              _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "getMediaScaleFactorByMagnificationExtentInPortal immersiveToPortalPerceivedMediaRatio %.3f, mediaScaleChangeModifier %.3f", buf, 0x16u);
            }
          }

          v35 = fabsf(v27 + -1.0);
          v27 = ((((v28 + -1.0) / v35) * (((v28 + -1.0) / v35) * (v35 * ((v28 + -1.0) / v35)))) * v46) + 1.0;
        }
      }

      v6 = vmul_n_f32(v22, v47);
      v7 = v23 * v27;
    }

    else
    {
      re::ecs2::SpatialMediaComponent::getCurrentScaledMeshSize(v14);
      v37 = vmvn_s8(vceq_f32(v6, v36));
      if ((vpmax_u32(v37, v37).u32[0] & 0x80000000) != 0)
      {
        v39 = HIDWORD(*&v36);
        if (*(v14 + 104))
        {
          LODWORD(v39) = v36.i32[0];
        }

        v38 = *(v14 + 40);
        v7 = (((v38 + 2.0) * 0.5) * *&v39) / 0.905;
        v6 = v36;
      }

      else
      {
        v38 = *(v14 + 40);
      }

      v40 = *(v14 + 32);
      v41 = *(v14 + 36);
      if ((v8 == v40 || vabds_f32(v8, v40) < (((fabsf(v8) + fabsf(v40)) + 1.0) * 0.00001)) && (v9 == v41 || vabds_f32(v9, v41) < (((fabsf(v9) + fabsf(v41)) + 1.0) * 0.00001)) && (v11 == v38 || vabds_f32(v11, v38) < (((fabsf(v11) + fabsf(v38)) + 1.0) * 0.00001)))
      {
        v42 = HIDWORD(*&v36);
        if (*(v14 + 104))
        {
          LODWORD(v42) = v36.i32[0];
        }

        v7 = (((v38 + 2.0) * 0.5) * *&v42) / 0.905;
        v10 = *(v14 + 44);
        v11 = v38;
        v9 = *(v14 + 36);
        v8 = *(v14 + 32);
      }
    }
  }

  else
  {
    v45 = *re::spatialMediaLogObjects(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 933;
      _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr", buf, 8u);
    }
  }

  *buf = v6;
  *&buf[8] = 0;
  *v49 = v7;
  *&v49[4] = v8;
  *&v49[8] = v9;
  v50 = v11;
  v51 = v10;
  v52 = 0;
  v53 = v55;
  v54 = v56;
  re::ecs2::SpatialMediaStatusComponent::setPortalParams(v4, buf);
}

BOOL re::ecs2::SpatialMediaComponentHelper::impl::isInImmersiveMode(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    return *(v2 + 25) == 1;
  }

  v4 = *re::spatialMediaLogObjects(0);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5[0] = 67109120;
    v5[1] = 1040;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, smsc is nullptr", v5, 8u);
    return 0;
  }

  return result;
}

float re::ecs2::SpatialMediaComponentHelper::impl::getMediaAspectRatio(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = *re::spatialMediaLogObjects(v4);
      v7 = 1.0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(this + 39);
        v32 = 134217984;
        v33 = v8;
        v9 = "[SpatialMediaSystem::getMediaAspectRatio] Entity %llu has both ImagePresentationStatusComponent and VideoPlayerComponent.";
LABEL_22:
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v9, &v32, 0xCu);
        return v7;
      }

      return v7;
    }

    v17 = *(v3 + 40);
    v18 = *(v3 + 44);
    if (v17 != 0.0 && fabsf(v17) > 0.001 || (fabsf(v18) <= 0.001 ? (v20 = 1) : (v20 = v18 == 0.0), !v20))
    {
      if (v18 > 0.0)
      {
        return v17 / v18;
      }
    }

    v21 = *re::spatialMediaLogObjects(0);
    v7 = 1.0;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return v7;
    }

    v22 = *(this + 39);
    v32 = 134218496;
    v33 = v22;
    v34 = 2048;
    v35 = v17;
    v36 = 2048;
    v37 = v18;
    v23 = "[SpatialMediaSystem::getMediaAspectRatio] Entity %llu has an invalid image dimension of %f * %f";
    goto LABEL_31;
  }

  if (!v4)
  {
    v6 = *re::spatialMediaLogObjects(0);
    v7 = 1.0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = *(this + 39);
      v32 = 134217984;
      v33 = v19;
      v9 = "[SpatialMediaSystem::getMediaAspectRatio] Entity %llu doesn't have an ImagePresentationStatusComponent or VideoPlayerComponent.";
      goto LABEL_22;
    }

    return v7;
  }

  v10 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v10 || *(v10 + 89) != 1)
  {
    return *(v5 + 51);
  }

  v11 = *(this + 43);
  if (v11)
  {
    v12 = *(this + 45);
    v13 = 8 * v11;
    while (1)
    {
      v14 = *v12;
      if ((*(*v12 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
      {
        v15 = *(v14 + 296);
        if (v15 == "__InternalVPC-Screen__")
        {
          break;
        }

        v10 = strcmp(v15, "__InternalVPC-Screen__");
        if (!v10)
        {
          break;
        }
      }

      ++v12;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    v27 = re::ecs2::EntityComponentCollection::get((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v27)
    {
      v7 = 1.0;
      if (atomic_exchange(re::ecs2::SpatialMediaComponentHelper::impl::getMediaAspectRatio(re::ecs2::Entity const*)::__FILE____LINE___logged, 1u))
      {
        return v7;
      }

      v30 = *re::spatialMediaLogObjects(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        return v7;
      }

      v31 = *(this + 39);
      v32 = 134217984;
      v33 = v31;
      v23 = "[SpatialMediaSystem::getMediaAspectRatio] Entity %llu has a VideoPlayerComponent but its screenEntity does not have the VideoComponent.";
      v24 = v30;
      v25 = 12;
LABEL_32:
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, v23, &v32, v25);
      return v7;
    }

    v17 = v27[16];
    v18 = v27[17];
    if (v17 == 0.0 || fabsf(v17) <= 0.001)
    {
      v28 = v18 == 0.0;
      if (fabsf(v18) <= 0.001)
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 0;
    }

    if (!v28 && v18 > 0.0)
    {
      return v17 / v18;
    }

    v21 = *re::spatialMediaLogObjects(v27);
    v7 = 1.0;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return v7;
    }

    v29 = *(this + 39);
    v32 = 134218496;
    v33 = v29;
    v34 = 2048;
    v35 = v17;
    v36 = 2048;
    v37 = v18;
    v23 = "[SpatialMediaSystem::getMediaAspectRatio] Entity %llu has an invalid video dimension of %f * %f";
LABEL_31:
    v24 = v21;
    v25 = 32;
    goto LABEL_32;
  }

LABEL_14:
  v6 = *re::spatialMediaLogObjects(v10);
  v7 = 1.0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v16 = *(this + 39);
    v32 = 134217984;
    v33 = v16;
    v9 = "[SpatialMediaSystem::getMediaAspectRatio] Entity %llu has a VideoPlayerComponent but does not have the ScreenEntity.";
    goto LABEL_22;
  }

  return v7;
}

void re::ecs2::SpatialMediaComponentHelper::impl::updateToImmersiveMode(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v6)
  {
    v29 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v31 = 0x32004000100;
    v30 = "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr";
    goto LABEL_27;
  }

  v7 = v6;
  v8 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v8)
  {
    v29 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v31 = 0x32304000100;
    v30 = "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v30, v31, 8u);
    return;
  }

  v10 = v8;
  v11 = HIDWORD(a2);
  v12 = fabsf(*(v7 + 96) + -1.0) > 0.00000011921 && re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(a1, v9) == 1;
  *(v10 + 113) = v12;
  MagnificationExtent = re::ecs2::SpatialMediaComponentHelper::impl::getMagnificationExtent(a1, v9);
  v15 = 1.0;
  v16 = 1.0;
  if (MagnificationExtent < 1.0)
  {
    v16 = 0.8;
    if (MagnificationExtent > 0.8)
    {
      v17 = vabds_f32(1.0, MagnificationExtent) / 0.2;
      v16 = ((v17 * -0.2) * v17) + 1.0;
    }
  }

  v18 = vmul_n_f32(a3, v16);
  v20 = re::ecs2::SpatialMediaComponentHelper::impl::getMagnificationExtent(a1, v13);
  if (v20 < 1.0)
  {
    v21 = v20;
    v15 = 0.8;
    if (v20 > 0.8)
    {
      ImmersiveToPortalPerceivedMediaRatio = re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveToPortalPerceivedMediaRatio(a1, v19);
      v24 = 1.0 - (1.0 / ImmersiveToPortalPerceivedMediaRatio);
      if (v24 > 0.75)
      {
        v24 = 0.75;
      }

      if (v24 >= 0.0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = vabds_f32(1.0, v21) / 0.2;
      v27 = re::MediaDefaults::logEnabled(v22);
      if (v27)
      {
        v28 = *re::spatialMediaLogObjects(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 134218240;
          *&v31[4] = ImmersiveToPortalPerceivedMediaRatio;
          *v32 = 2048;
          *&v32[2] = v25;
          _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "getMediaScaleFactorByMagnificationExtentInImmersive immersiveToPortalPerceivedMediaRatio %.3f, mediaScaleChangeModifier %.3f", v31, 0x16u);
        }
      }

      v15 = ((v26 * (v26 * (v26 * -0.2))) * v25) + 1.0;
    }
  }

  *v31 = v18;
  *&v31[8] = 1061158912;
  *v32 = v15 * *&v11;
  *&v32[4] = 0u;
  v33 = 1065353216;
  re::ecs2::SpatialMediaStatusComponent::setPortalParams(v10, v31);
}

void re::ecs2::SpatialMediaComponentHelper::impl::updateSpatialMediaMaterialParameters(re::ecs2::SpatialMediaComponentHelper::impl *this, re::ecs2::Entity *a2, re::MaterialManager **a3)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v48 = *re::spatialMediaLogObjects(this);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 396;
    v49 = "SpatialMediaComponentHelper line: %d, renderManager is nullptr";
    goto LABEL_41;
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v6)
  {
    v48 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 399;
    v49 = "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr";
    goto LABEL_41;
  }

  v7 = v6;
  v8 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v8)
  {
    v48 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 402;
    v49 = "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr";
    goto LABEL_41;
  }

  v9 = v8;
  PortalEntity = re::ecs2::SpatialMediaComponent::getPortalEntity(v7);
  if (!PortalEntity)
  {
    v48 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 405;
    v49 = "SpatialMediaComponentHelper line: %d, portalEntity is nullptr";
LABEL_41:
    _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, v49, buf, 8u);
    return;
  }

  v11 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(a3[3], *(PortalEntity + 312));
  v12 = re::MediaDefaults::logLevel(v11);
  if (v12 >= 3)
  {
    v50 = *re::spatialMediaLogObjects(v12);
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
    if (v51)
    {
      v52 = *(a2 + 39);
      *buf = 134217984;
      *&buf[4] = v52;
      _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][SpatialMediaComponentHelper]->updateSpatialMediaMaterialParameters :: entity %llu:: Update of params occurring", buf, 0xCu);
    }

    v53 = *re::spatialMediaLogObjects(v51);
    v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
    if (v54)
    {
      v55 = *(a2 + 39);
      v56 = "FALSE";
      if (*(v9 + 113))
      {
        v56 = "TRUE";
      }

      *buf = 134218242;
      *&buf[4] = v55;
      *&buf[12] = 2080;
      *&buf[14] = v56;
      _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][SpatialMediaComponentHelper]->updateSpatialMediaMaterialParameters :: entity %llu:: Render with ray casting = %s", buf, 0x16u);
    }

    v57 = *re::spatialMediaLogObjects(v54);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = *(a2 + 39);
      v59 = *(v9 + 172);
      if (v59 > 1.0)
      {
        v59 = 1.0;
      }

      if (v59 < 0.0)
      {
        v59 = 0.0;
      }

      *buf = 134218240;
      *&buf[4] = v58;
      *&buf[12] = 2048;
      *&buf[14] = v59;
      _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][SpatialMediaComponentHelper]->updateSpatialMediaMaterialParameters :: entity %llu:: ReadyToPlay = %f", buf, 0x16u);
    }
  }

  LODWORD(v67[0]) = 1047589105;
  *buf = 0x76D6CC77C0CBCA5DLL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v96);
  v96[0] = 0;
  LODWORD(v67[0]) = re::ecs2::SpatialMediaComponentHelper::impl::getMediaAspectRatio(a2, v13);
  *buf = 0x5A5A7B4E1BDF640FLL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v95);
  v95[0] = 0;
  LOBYTE(v67[0]) = *(v9 + 113);
  *buf = 0x2E8E57378AB771CDLL;
  re::MaterialParameterBlock::setConstant(v11, buf, 1uLL, v67, 2, v94);
  v94[0] = 0;
  LODWORD(v67[0]) = *(v7 + 56);
  *buf = 0x4B7015295E885642;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v93);
  v93[0] = 0;
  LODWORD(v67[0]) = *(v7 + 48);
  *buf = 0x17B477F80BLL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v92);
  v92[0] = 0;
  LODWORD(v67[0]) = *(v9 + 96);
  *buf = 0x269C0751B5CD57EALL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v91);
  v91[0] = 0;
  *v15.i32 = re::MediaDefaults::billboardAroundPtZ(v14, *(v7 + 64));
  *buf = vdupq_lane_s32(v15, 0);
  v67[0] = 0x1590DE5A7C393477;
  re::MaterialParameterBlock::setConstant(v11, v67, 0x10uLL, buf, 33, v90);
  v90[0] = 0;
  *v17.i32 = re::MediaDefaults::billboardDampingFactor(v16, *(v7 + 68));
  *buf = vdupq_lane_s32(v17, 0);
  v67[0] = 0x682A49DFD93F4FF2;
  re::MaterialParameterBlock::setConstant(v11, v67, 0x10uLL, buf, 33, v89);
  v89[0] = 0;
  LODWORD(v67[0]) = *(v7 + 80);
  *buf = 0x2EC94BE3518DE48ALL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 3, v88);
  v88[0] = 0;
  v18 = *(this + 1319);
  *buf = *(this + 1318);
  *&buf[8] = v18;
  v67[0] = 0x6C6569671C4BD9B8;
  re::MaterialParameterBlock::setConstant(v11, v67, 0x10uLL, buf, 33, v87);
  v87[0] = 0;
  LODWORD(v67[0]) = *(this + 2640);
  *buf = 0x2634CEE0E2A294AELL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v86);
  v86[0] = 0;
  LODWORD(v67[0]) = *(v7 + 84);
  *buf = 0x111DF6FC7FDA9915;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v85);
  v85[0] = 0;
  MediaAspectRatio = re::ecs2::SpatialMediaComponentHelper::impl::getMediaAspectRatio(a2, v19);
  if (fabsf(*(v9 + 96)) >= 0.00001)
  {
    LODWORD(v23) = re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(v20, *(v9 + 120), MediaAspectRatio);
    v24 = 0.0;
    if (fabsf(v23) >= 0.00001)
    {
      v25 = tan(((v23 * 0.5) / 180.0) * 3.14159265) * 5.5;
      v24 = (0.065 / v25) * 0.5;
    }

    v22 = (v24 * *(v9 + 96)) + (*(v9 + 116) * (1.0 - *(v9 + 96)));
  }

  else
  {
    v22 = *(v9 + 116);
  }

  *v67 = v22;
  *buf = 0x301ECC68CB520DDALL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v84);
  v84[0] = 0;
  v27 = re::MediaDefaults::logLevel(v26);
  if (v27 >= 3)
  {
    v60 = *re::spatialMediaLogObjects(v27);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v22;
      _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "[SpatialMediaComponentHelper]->updateSpatialMediaMaterialParameters :: #SpatialMetaData :: Spatial Media Half Disparity Shift Set to %f", buf, 0xCu);
    }
  }

  LODWORD(v67[0]) = *(v9 + 132);
  *buf = 0x9E2CC6A87C969;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v83);
  v83[0] = 0;
  LODWORD(v67[0]) = *(v9 + 136);
  *buf = 0x67C17A60B53681FELL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v82);
  v82[0] = 0;
  LODWORD(v67[0]) = *(v9 + 140);
  *buf = 0x2C403683F35C6FE9;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v81);
  v81[0] = 0;
  LODWORD(v67[0]) = *(v9 + 144);
  *buf = 0x1286A829CB23B36BLL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v80);
  v80[0] = 0;
  LODWORD(v67[0]) = re::MediaDefaults::billboardMaxAngle(v28, *(v7 + 72));
  *buf = 0x13E0759800B4A54CLL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v79);
  v79[0] = 0;
  LODWORD(v67[0]) = re::MediaDefaults::billboardEaseOutExponent(v29, *(v7 + 76));
  *buf = 0x4CDE75D7A7EE3E10;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v78);
  v78[0] = 0;
  *buf = *(v9 + 152);
  v67[0] = 0x2880BDC4D65058F8;
  re::MaterialParameterBlock::setConstant(v11, v67, 8uLL, buf, 32, v77);
  v77[0] = 0;
  LOBYTE(v67[0]) = *(v9 + 128);
  *buf = 0x6A452578EA8C8F6;
  re::MaterialParameterBlock::setConstant(v11, buf, 1uLL, v67, 2, v76);
  v76[0] = 0;
  LOBYTE(v67[0]) = *(v9 + 160);
  *buf = 0x1CC308825027AA08;
  re::MaterialParameterBlock::setConstant(v11, buf, 1uLL, v67, 2, v75);
  v75[0] = 0;
  LODWORD(v67[0]) = *(v9 + 164);
  *buf = 0x56D9E588A72E611FLL;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v74);
  v74[0] = 0;
  v30 = (1.0 - *(v9 + 96)) * *(v9 + 168);
  *v67 = v30;
  *buf = 0xF1035B51DDF7CA1;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v73);
  v73[0] = 0;
  v31 = *(v9 + 172);
  if (v31 > 1.0)
  {
    v31 = 1.0;
  }

  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  *v67 = v31;
  *buf = 0x155BF96072017D2;
  re::MaterialParameterBlock::setConstant(v11, buf, 4uLL, v67, 1, v72);
  v72[0] = 0;
  v32 = re::AssetHandle::AssetHandle(buf, (v9 + 184));
  if (*&buf[8] && re::AssetHandle::loadedAsset<re::TextureAsset>(v32))
  {
    v33 = re::AssetHandle::loadedAsset<re::TextureAsset>(buf);
    v70 = 0x7CB21895C3D34263;
    re::MaterialParameterBlock::setTextureHandle(v11, &v70, (v33 + 8), v71);
    v71[0] = 0;
  }

  else
  {
    re::AssetHandle::loadAsync(buf);
  }

  v34 = *(v9 + 76);
  v64 = *(v9 + 80);
  v63 = *(v9 + 88);
  v35 = re::ecs2::SpatialMediaComponent::getPortalEntity(v7);
  v36 = 0;
  v37.i32[0] = 0;
  if (v35)
  {
    v38 = *(*(v7 + 16) + 256);
    if (v38)
    {
      v37 = vmulq_f32(v38[2], *(*(v35 + 32) + 32));
      v36 = vextq_s8(v37, v37, 4uLL).u64[0];
    }
  }

  *&v39 = *(&v36 + 1) / 0.475;
  *&v40 = *v37.i32 / v34;
  LODWORD(v41) = 0;
  *(&v41 + 1) = *&v36 / v34;
  *&v42 = 0;
  *(&v42 + 1) = v39;
  *&v43 = v64;
  *(&v43 + 1) = __PAIR64__(1.0, v63);
  v69[0] = v40;
  v69[1] = v41;
  v69[2] = v42;
  v69[3] = v43;
  if (re::MediaDefaults::logLevel(v35) >= 3)
  {
    re::ecs2::spatialMediaLogTransform(v69);
  }

  v67[0] = 0x780CF4EED79A5A10;
  re::MaterialParameterBlock::setConstant(v11, v67, 0x40uLL, v69, 50, v68);
  v68[0] = 0;
  if (re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(a2, v44) == 1)
  {
    v45 = re::AssetHandle::AssetHandle(v67, (v9 + 208));
    if (v67[1] && (v45 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v67)) != 0)
    {
      v46 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v67);
      v65 = 0x3277B23D870AD2EALL;
      re::MaterialParameterBlock::setTextureHandle(v11, &v65, (v46 + 8), v66);
      v66[0] = 0;
    }

    else
    {
      v47 = re::MediaDefaults::logEnabled(v45);
      if (v47)
      {
        v61 = *re::spatialMediaLogObjects(v47);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(*(v7 + 16) + 312);
          *v97 = 134217984;
          v98 = v62;
          _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "[updateSpatialMediaMaterialParameters] Mixed spill texture asset is missing or cannot be loaded for entity %llu.", v97, 0xCu);
        }
      }
    }

    re::AssetHandle::~AssetHandle(v67);
  }

  re::AssetHandle::~AssetHandle(buf);
}

void re::ecs2::SpatialMediaComponentHelper::impl::removeSpatialMediaMaterialParameters(re::ecs2::SpatialMediaComponentHelper::impl *this, re::ecs2::Entity *a2, re::MaterialManager **a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = *re::spatialMediaLogObjects(this);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = *(a2 + 39);
    *buf = 134217984;
    v15 = v9;
    v10 = "[SpatialMediaComponentHelper::impl::removeSpatialMediaMaterialParameters] Cannot find dependencies. Skip material parameter update on %llu.";
LABEL_12:
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
    return;
  }

  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v5)
  {
    v8 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v11 = *(a2 + 39);
    *buf = 134217984;
    v15 = v11;
    v10 = "[SpatialMediaComponentHelper::impl::removeSpatialMediaMaterialParameters] Spatial media component not found. Skip material parameter update on %llu.";
    goto LABEL_12;
  }

  PortalEntity = re::ecs2::SpatialMediaComponent::getPortalEntity(v5);
  if (!PortalEntity)
  {
    v8 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = *(a2 + 39);
    *buf = 134217984;
    v15 = v12;
    v10 = "[SpatialMediaComponentHelper::impl::removeSpatialMediaMaterialParameters] Portal entity not found. Skip material parameter update on %llu.";
    goto LABEL_12;
  }

  SystemMaterialParameterBlock = re::MaterialManager::getSystemMaterialParameterBlock(a3[3], *(PortalEntity + 312));
  if (SystemMaterialParameterBlock)
  {
    v13 = 0x3277B23D870AD2EALL;
    re::MaterialParameterBlock::removeTexture(SystemMaterialParameterBlock, &v13);
  }
}

void re::ecs2::SpatialMediaComponentHelper::impl::startImmersiveTransition(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v3)
  {
    *(v3 + 113) = 1;
    if (a2 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    if (*(v3 + 25) != v4)
    {
      *(v3 + 25) = v4;

      re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v3);
    }
  }

  else
  {
    v5 = *re::spatialMediaLogObjects(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = 764;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr", v6, 8u);
    }
  }
}

void re::ecs2::SpatialMediaComponentHelper::impl::updateInImmersiveTransition(uint64_t a1, _OWORD *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v3)
  {
    v4 = a2[1];
    v6[0] = *a2;
    v6[1] = v4;
    v6[2] = a2[2];
    re::ecs2::SpatialMediaStatusComponent::setPortalParams(v3, v6);
  }

  else
  {
    v5 = *re::spatialMediaLogObjects(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *&v6[0] = 0x30804000100;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaStatusComponent is nullptr", v6, 8u);
    }
  }
}

void re::ecs2::SpatialMediaComponentHelper::impl::completeImmersiveTransition(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v4)
  {
    if (a2 == 1)
    {
      *(v4 + 113) = 0;
    }

    if (*(v4 + 25) != a2)
    {
      *(v4 + 25) = a2;
      re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v4);
    }
  }

  else
  {
    v7 = *re::spatialMediaLogObjects(0);
    v4 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      v8 = 67109120;
      LODWORD(v9) = 786;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaStatusComp is nullptr", &v8, 8u);
    }
  }

  v5 = *re::spatialMediaLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 312);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[SpatialMediaComponentHelper::completeImmersiveTransition] id=%llu", &v8, 0xCu);
  }
}

void re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveTransitionConfiguration(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = re::ecs2::EntityComponentCollection::get((a1 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v11)
  {
    v32 = *re::spatialMediaLogObjects(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v38 = 848;
      _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr", buf, 8u);
    }
  }

  if (a2 == 1)
  {
    CurrentScaledMeshSize = re::ecs2::SpatialMediaComponent::getCurrentScaledMeshSize(v11);
    v14 = v12;
    v15 = HIDWORD(*&v12);
    if (*(v11 + 104))
    {
      LODWORD(v15) = v12.i32[0];
    }

    *CurrentScaledMeshSize.i32 = (((*(v11 + 40) + 2.0) * 0.5) * *&v15) / 0.905;
    v36 = vdup_lane_s32(CurrentScaledMeshSize, 0);
    v16 = vdiv_f32(vmul_f32(vmul_f32(re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(*&v12, a4, a5), 0x3F0000003F000000), vdup_n_s32(0x40490FDBu)), vdup_n_s32(0x43340000u));
    v33 = v16.f32[0];
    v34 = tanf(v16.f32[1]);
    v18.f32[0] = tanf(v33);
    v18.f32[1] = v34;
    v19 = vmul_f32(vadd_f32(v18, v18), vdup_n_s32(0x3FC66666u));
    __asm { FMOV            V0.2S, #4.25 }

    v25 = vmul_f32(v19, _D0);
  }

  else
  {
    DesiredScreenSizeInPortalMode = re::ecs2::SpatialMediaComponentHelper::impl::getDesiredScreenSizeInPortalMode(a1, v10);
    v14 = DesiredScreenSizeInPortalMode;
    v28 = HIDWORD(DesiredScreenSizeInPortalMode);
    if (*(v11 + 104))
    {
      LODWORD(v28) = DesiredScreenSizeInPortalMode;
    }

    *v27.i32 = (((*(v11 + 40) + 2.0) * 0.5) * *&v28) / 0.905;
    v36 = vdup_lane_s32(v27, 0);
    re::ecs2::SpatialMediaComponent::getCurrentScaledMeshSize(v11);
    v25 = v17;
    __asm { FMOV            V1.2S, #4.25 }

    v19 = vdiv_f32(v17, _D1);
  }

  *a3 = v14;
  *(a3 + 8) = v36;
  v35 = v19;
  *(a3 + 24) = v19;
  *(a3 + 16) = v25;
  *(a3 + 32) = a2;
  v30 = *re::spatialMediaLogObjects(v17);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = a1[39];
    *buf = 16780288;
    v38[0] = a2;
    *&v38[1] = 2048;
    *&v38[3] = a4;
    v39 = 2048;
    v40 = a5;
    v41 = 2048;
    v42 = v14.f32[0];
    v43 = 2048;
    v44 = v14.f32[1];
    v45 = 2048;
    v46 = *v36.i32;
    v47 = 2048;
    v48 = *&v36.i32[1];
    v49 = 2048;
    v50 = v25.f32[0];
    v51 = 2048;
    v52 = v25.f32[1];
    v53 = 2048;
    v54 = v35.f32[0];
    v55 = 2048;
    v56 = v35.f32[1];
    v57 = 2048;
    v58 = v31;
    _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "[SpatialMediaComponentHelper::getImmersiveTransitionConfiguration] target ImageImmersiveViewingMode %d, hFoV %.2f, aspectRatio %.2f, portalScreenSize (%.2f, %.2f), portalMediaSize (%.2f, %.2f), immersiveScreenSize (%.2f, %.2f), immersizeMediaSize (%.2f, %.2f) [id=%llu]", buf, 0x73u);
  }
}

uint64_t re::ecs2::SpatialMediaComponentHelper::impl::getDesiredScreenSizeInPortalMode(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v2 = *(this + 32);
  if (v2)
  {
    v13 = *(v2 + 32);
    if (re::ecs2::SpatialMediaComponentHelper::impl::getActiveMediaType(this, a2) == 1)
    {
      v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v4)
      {
        if (*(v4 + 148))
        {
          v6 = *(v4 + 28);
LABEL_11:
          v12 = v6;
          MediaAspectRatio = re::ecs2::SpatialMediaComponentHelper::impl::getMediaAspectRatio(this, v5);
          v10.i32[1] = HIDWORD(v13);
          v10.f32[0] = MediaAspectRatio * *&v13;
          return vmul_n_f32(v10, v12);
        }

        return v13;
      }
    }

    else
    {
      v8 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v8)
      {
        v6 = 1.0;
        if ((*(v8 + 99) & 1) == 0)
        {
          goto LABEL_11;
        }

        return v13;
      }
    }

    v6 = 1.0;
    goto LABEL_11;
  }

  return 0;
}

void re::ecs2::SpatialMediaComponentHelper::impl::getPortalParamsInImmersiveTransition(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float32x4_t *a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v11 = a2[4].u8[0];
  v12 = 1.0 - a4;
  if (v11 == 1)
  {
    v12 = a4;
  }

  v13 = vmul_n_f32(*a2, 1.0 - v12);
  v14 = vmul_n_f32(a2[2], v12);
  v15 = 1.0 - a5;
  if (v11 == 1)
  {
    v15 = a5;
  }

  v25 = v15;
  v26 = vadd_f32(v14, v13);
  v24 = 1.0 - v15;
  LODWORD(v22) = vadd_f32(vmul_n_f32(a2[24], v15), vmul_n_f32(a2[8], 1.0 - v15)).i32[1];
  v23 = *(v10 + 32);
  v16 = *(v10 + 52);
  v17 = re::MediaDefaults::logEnabled(v10);
  if (v17)
  {
    v18 = *re::spatialMediaLogObjects(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 312);
      *buf = 134219264;
      v28 = a4;
      v29 = 2048;
      v30 = a5;
      v31 = 2048;
      v32 = v26.f32[0];
      v33 = 2048;
      v34 = v26.f32[1];
      v35 = 2048;
      v36 = v22;
      v37 = 2048;
      v38 = v19;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[getPortalParamsInImmersiveTransition] portalProgress %.2f, mediaProgress %.2f, portalSize (%.2f, %.2f), mediaScale %.2f [id=%llu]", buf, 0x3Eu);
    }
  }

  v20 = 0.004;
  v21.i32[1] = 0;
  if (v16)
  {
    v20 = 0.0;
  }

  *v21.i32 = v25 * 0.0;
  *a3->f32 = v26;
  a3->f32[2] = (v25 * 0.75) + (v20 * v24);
  a3->f32[3] = v22;
  a3[1] = vmlaq_n_f32(vdupq_lane_s32(v21, 0), v23, v24);
  a3[2].f32[0] = v25;
}

void re::ecs2::SpatialMediaComponentHelper::impl::getScreenEntityScaleFactorByMagnificationExtentInPortal(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  MagnificationExtent = re::ecs2::SpatialMediaComponentHelper::impl::getMagnificationExtent(this, a2);
  if (MagnificationExtent > 1.0)
  {
    v3 = _AXSReduceMotionEnabled();
    v4 = 1.7;
    if (!v3)
    {
      v4 = 1.5;
    }

    if (MagnificationExtent < v4)
    {
      powf((MagnificationExtent + -1.0) / fabsf(v4 + -1.0), 4.0);
    }
  }
}

BOOL re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveTransitionRequiresReducedMotion(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    if (*(v2 + 80))
    {
      return 1;
    }
  }

  else
  {
    v4 = *re::spatialMediaLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = 1004;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, smc is nullptr", v5, 8u);
    }
  }

  return _AXSReduceMotionEnabled() != 0;
}

float re::ecs2::SpatialMediaComponentHelper::impl::getMagnificationExtent(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    return *(v2 + 96);
  }

  v4 = *re::spatialMediaLogObjects(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  result = 1.0;
  if (v5)
  {
    v6[0] = 67109120;
    v6[1] = 1077;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, spatialMediaComponent is nullptr", v6, 8u);
    return 1.0;
  }

  return result;
}

float re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveToPortalPerceivedMediaRatio(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(this + 32);
  if (v3)
  {
    v4 = *(v3 + 36);
  }

  else
  {
    v4 = 1.0;
  }

  v5 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v5)
  {
    v6 = *(v5 + 40) + 2.0;
  }

  else
  {
    v17 = *re::spatialMediaLogObjects(0);
    v6 = 3.1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v21) = 1195;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "SpatialMediaComponentHelper line: %d, smc is nullptr", buf, 8u);
    }
  }

  v7 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v7)
  {
    v9 = *(v7 + 120);
  }

  else
  {
    v9 = 80.0;
  }

  MediaAspectRatio = re::ecs2::SpatialMediaComponentHelper::impl::getMediaAspectRatio(this, v8);
  re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveTransitionConfiguration(this, 1, v18, v9, MediaAspectRatio);
  v11 = v19;
  v13 = re::MediaDefaults::logEnabled(v12);
  if (v13)
  {
    v14 = *re::spatialMediaLogObjects(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v21 = v4;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = 0x400C000000000000;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "getImmersiveToPortalPerceivedMediaRatio mediaScaleInPortal %.3f, mediaDistanceInPortal %.3f, mediaScaleInImmersive %.3f, mediaDistanceInImmersive %.3f", buf, 0x2Au);
    }
  }

  v15 = atan2f(v11 * 0.5, 3.5);
  return v15 / atan2f(v4 * 0.5, v6);
}

uint64_t re::ecs2::SpatialMediaComponentHelper::impl::getCameraWorldPosition(re::ecs2::SpatialMediaComponentHelper::impl *this, const re::ecs2::Scene *a2)
{
  CustomMatrixCameraInScene = re::ecs2::CustomMatrixCameraComponent::firstCustomMatrixCameraInScene(this);
  if (CustomMatrixCameraInScene)
  {
    re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(CustomMatrixCameraInScene, 0, v6);
  }

  else
  {
    OrthographicCameraInScene = re::ecs2::OrthographicCameraComponent::firstOrthographicCameraInScene(this);
    if (OrthographicCameraInScene)
    {
      re::ecs2::OrthographicCameraComponent::calculateWorldPose(OrthographicCameraInScene, 0, v6);
    }

    else
    {
      result = re::ecs2::PerspectiveCameraComponent::firstPerspectiveCameraInScene(this);
      if (!result)
      {
        return result;
      }

      re::ecs2::PerspectiveCameraComponent::calculateWorldPose(result, 0, v6);
    }
  }

  return v6[0].i64[0];
}

uint64_t re::ecs2::SpatialMediaComponentHelper::impl::getStabilizedBillboardingConstrainedTargetPosition(re::ecs2::TransformComponent *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, re::TransformService *a7)
{
  v8 = a4;
  v9.i64[0] = a2;
  v9.i64[1] = a3;
  v10.i64[0] = a4;
  v10.i64[1] = a5;
  v41 = v9;
  v42 = vsubq_f32(v10, v9);
  re::TransformService::worldMatrix(a7, a1, 0, v43);
  v11 = vaddq_f32(vmlaq_f32(vmulq_f32(v43[0], 0), 0, v43[1]), v43[2]);
  v12 = vmulq_f32(v42, v42);
  v13 = vaddv_f32(*v12.f32);
  *v12.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v12.f32[2] + v13));
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v12.f32[2] + v13), vmul_f32(*v12.f32, *v12.f32)));
  v14 = vmulq_n_f32(v42, vmul_f32(*v12.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v12.f32[2] + v13), vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v15 = vmulq_f32(v11, v11);
  *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  *v15.f32 = vrsqrte_f32(v16);
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
  v39 = v11;
  v17 = vmulq_f32(v14, vmulq_n_f32(v11, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]));
  v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  if (v18 > 1.0)
  {
    v18 = 1.0;
  }

  if (v18 < -1.0)
  {
    v18 = -1.0;
  }

  v19 = acosf(v18);
  v20 = *(a6 + 28);
  if (v19 > v20)
  {
    v38 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v42)), v39, v38);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = v19 - v20;
    v24 = vmulq_f32(v21, v21);
    v25 = v24.f32[1] + (v24.f32[2] + v24.f32[0]);
    if (fabsf(v25) >= 1.0e-10)
    {
      v26 = v25;
      v27 = vrsqrte_f32(LODWORD(v25));
      v28 = vmul_f32(v27, vrsqrts_f32(LODWORD(v26), vmul_f32(v27, v27)));
      v22 = vmulq_n_f32(v22, vmul_f32(v28, vrsqrts_f32(LODWORD(v26), vmul_f32(v28, v28))).f32[0]);
    }

    v40 = v22;
    v29 = __sincosf_stret(v23 * 0.5);
    v30 = vmulq_n_f32(v40, v29.__sinval);
    v30.i32[2] = vmuls_lane_f32(v29.__sinval, v40, 2);
    v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
    v32 = vnegq_f32(v30);
    v33 = vmlaq_f32(vmulq_f32(v38, v32), v42, v31);
    v34 = vaddq_f32(v33, v33);
    v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v32), v35, v31);
    return vaddq_f32(vaddq_f32(vaddq_f32(v42, vmulq_n_f32(v35, v29.__cosval)), vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL)), v41).u64[0];
  }

  return v8;
}

double re::ecs2::SpatialMedia::BillboardAnimationEngine::addTargetPointAnimation(re *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  v12 = re::ecs2::SpatialMedia::BillboardAnimationEngine::add(a1, 0);
  v13 = re::ecs2::SpatialMedia::BillboardAnimationEngine::add(a1, 1u);
  v14 = re::ecs2::SpatialMedia::BillboardAnimationEngine::add(a1, 2u);
  v15 = re::ecs2::SpatialMedia::BillboardAnimationEngine::add(a1, 3u);
  v16 = re::ecs2::SpatialMedia::BillboardAnimationEngine::add(a1, 3u);
  if (v12 && v13 && v14 && v15 && v16)
  {
    if (a6)
    {
      *(v15 + 8) = xmmword_1E30990D0;
      *(v12 + 1) = 1052770304;
      *(v12 + 4) = a2;
      *(v12 + 5) = a4;
      *(v13 + 1) = 1052770304;
      *(v13 + 4) = HIDWORD(a2);
      *(v13 + 5) = HIDWORD(a4);
      *(v14 + 1) = 1052770304;
      *(v14 + 4) = a3;
      *(v14 + 5) = a5;
      v18 = 0.375;
      v19 = 0;
    }

    else
    {
      *(v12 + 1) = 0x3EAB851E3E28F5C3;
      *(v12 + 4) = a2;
      *(v12 + 5) = a4;
      *(v13 + 1) = 0x3EAB851E3E28F5C3;
      *(v13 + 4) = HIDWORD(a2);
      *(v13 + 5) = HIDWORD(a4);
      *(v14 + 1) = 0x3EAB851E3E28F5C3;
      *(v14 + 4) = a3;
      *(v14 + 5) = a5;
      *(v15 + 8) = xmmword_1E30990C0;
      v19 = 1042871747;
      v18 = 0.165;
    }

    *(v16 + 2) = v19;
    *(v16 + 3) = v18;
    *&result = 1065353216;
    *(v16 + 2) = 1065353216;
  }

  return result;
}

re::ecs2::SpatialMediaComponentHelper *re::ecs2::SpatialMediaComponentHelper::SpatialMediaComponentHelper(re::ecs2::SpatialMediaComponentHelper *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 10576, 16);
  *this = re::ecs2::SpatialMediaComponentHelper::impl::impl(v3);
  return this;
}

void re::ecs2::SpatialMediaComponentHelper::~SpatialMediaComponentHelper(id **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = re::globalAllocators(this)[2];
    re::ecs2::SpatialMedia::BillboardAnimationEngine::~BillboardAnimationEngine((v1 + 268));
    objc_destroyWeak(v1 + 267);
    v1[267] = 0;
    media::OpacityAnimationEngine::~OpacityAnimationEngine((v1 + 1));
    (*(*v2 + 40))(v2, v1);
  }
}

media::FloatEaseInOutAnimation *re::ecs2::SpatialMedia::BillboardAnimationEngine::add(re *a1, unsigned int a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 48, 8);
  if (media::FloatEaseInOutAnimation::FloatEaseInOutAnimation(v5, (a1 + qword_1E30990E0[a2])))
  {
    v7 = a1 + 2064 * a2 + 64;
    if (re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v7, v6))
    {
      v8 = *v7;
      *&v7[8 * *v7 + 16] = v5;
      *v7 = v8 + 1;
      ++*(v7 + 2);
    }
  }

  return v5;
}

void re::ecs2::SpatialMedia::BillboardAnimationEngine::~BillboardAnimationEngine(re::ecs2::SpatialMedia::BillboardAnimationEngine *this)
{
  for (i = 64; i != 8320; i += 2064)
  {
    v3 = *(this + i);
    if (v3)
    {
      v4 = 8 * v3;
      v5 = (this + i + 16);
      do
      {
        v6 = *v5++;
        re::internal::destroyPersistent<media::FloatAnimation>("~BillboardAnimationEngine", 26, v6);
        v4 -= 8;
      }

      while (v4);
    }
  }

  v7 = 8256;
  do
  {
    *(this + v7 - 2000) = 0;
    ++*(this + v7 - 1992);
    v7 -= 2064;
  }

  while (v7);
  re::FunctionBase<24ul,void ()(re::Vector3<float>,float)>::destroyCallable(this);
}

uint64_t (***re::FunctionBase<24ul,void ()(re::Vector3<float>,float)>::destroyCallable(uint64_t a1))(void)
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

void re::ecs2::PhysicsDebugSystem::tryLoadMaterialAsset(re::RenderManager **this, AssetService *a2, AssetService *a3)
{
  tryLoadMaterialAsset((this + 31), (this + 37), "engine:primitiveShapeFlat.rematerialdefinition", this[29], a2);
  v5 = this[29];

  tryLoadMaterialAsset((this + 34), (this + 40), "engine:primitiveShapeFlatTransparent.rematerialdefinition", v5, a2);
}

void tryLoadMaterialAsset(re::AssetHandle *a1, re::AssetHandle *this, const char *a3, re::RenderManager *a4, AssetService *a5)
{
  v9 = *(a1 + 1);
  if (!v9 || (v10 = atomic_load((v9 + 896)), v10 != 2))
  {
    v11 = *(this + 1);
    if (v11 || ((*(a5->var0 + 1))(&v20, a5, a3), v12 = *this, *this = v20, v20 = v12, v13 = *(this + 2), *(this + 2) = v21, v21 = v13, re::AssetHandle::~AssetHandle(&v20), (v11 = *(this + 1)) != 0))
    {
      if (!atomic_load((v11 + 896)))
      {
        re::AssetHandle::loadAsync(this);
      }

      v15 = *(this + 1);
      if (v15)
      {
        v16 = atomic_load((v15 + 896));
        if (v16 == 2)
        {
          re::AssetHandle::AssetHandle(v19, this);
          re::MaterialAsset::makeMaterialMemoryAsset(a5, a4, v19, 0, 0);
          v17 = *a1;
          *a1 = v20;
          v20 = v17;
          v18 = *(a1 + 2);
          *(a1 + 2) = v21;
          v21 = v18;
          re::AssetHandle::~AssetHandle(&v20);
          re::AssetHandle::~AssetHandle(v19);
        }
      }
    }
  }
}

void re::ecs2::PhysicsDebugSystem::willAddSystemToECSService(re::ecs2::PhysicsDebugSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  v4 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  *(this + 29) = v4;
  if (v4)
  {
    v5 = (*(**(this + 5) + 32))(*(this + 5));
    *(this + 30) = re::ServiceLocator::serviceOrNull<re::TransformService>(v5);
    v6 = (*(**(this + 5) + 32))(*(this + 5));
    v7 = re::ServiceLocator::service<re::AssetService>(v6);

    re::ecs2::PhysicsDebugSystem::tryLoadMaterialAsset(this, v7, v8);
  }
}

void *re::ecs2::PhysicsDebugSystem::willRemoveSystemFromECSService(void *this)
{
  this[28] = 0;
  this[29] = 0;
  this[30] = 0;
  return this;
}

uint64_t re::ecs2::PhysicsDebugSystem::update(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v164 = *MEMORY[0x1E69E9840];
  v8 = (*(**(v6 + 40) + 32))(*(v6 + 40), v1);
  result = re::ServiceLocator::serviceOrNull<re::Engine>(v8);
  if ((!result || (*(result + 432) & 0x10) != 0) && *(v7 + 232) && *(v7 + 224) && re::PhysicsDebugRenderer::isUsingPhysicsDebugRenderer(void)::featureEnabled == 1 && (v5 & 0x100000000) == 0)
  {
    v11 = *(v3 + 200);
    if (v11)
    {
      v12 = *(v3 + 216);
      __asm
      {
        FMOV            V9.2S, #1.0
        FMOV            V0.4S, #1.0
      }

      v97 = _Q0;
      v101 = &v12[v11];
      v98 = v7;
      do
      {
        v18 = *v12;
        v19 = *(re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
        if (*(*v12 + 224) > v19 && (v20 = *(*(v18 + 240) + 8 * v19)) != 0 && (v21 = *(v20 + 384)) != 0)
        {
          v104 = 0;
          v22 = *(v20 + 400);
          v23 = 8 * v21;
          do
          {
            v24 = *v22;
            v25 = *(*v22 + 16);
            if (re::StringID::operator==((v25 + 288), re::ecs2::Scene::kLocalSceneDataEntityID))
            {
              v104 = v24;
              v26 = *(v25 + 216);
              if (!v26)
              {
                goto LABEL_24;
              }

              if (*(v26 + 32))
              {
                if (!RESyncableGetOwnerPeerID())
                {
                  goto LABEL_24;
                }
              }

              else if (!*(v26 + 64))
              {
                goto LABEL_24;
              }
            }

            ++v22;
            v23 -= 8;
          }

          while (v23);
          if (v104)
          {
LABEL_24:
            v103 = 0;
            v27 = *(v104 + 28) != 0;
            goto LABEL_26;
          }

          v104 = 0;
          v27 = 0;
          v103 = 1;
        }

        else
        {
          v104 = 0;
          v27 = 0;
          v103 = 1;
        }

LABEL_26:
        result = (*(**(v7 + 224) + 80))(*(v7 + 224));
        if (v27 || result)
        {
          v28 = (*(**(v7 + 40) + 32))(*(v7 + 40));
          v29 = re::ServiceLocator::service<re::AssetService>(v28);
          re::ecs2::PhysicsDebugSystem::tryLoadMaterialAsset(v7, v29, v30);
          v31 = *(*(v7 + 232) + 88);
          re::PrimitiveRenderingContext::PrimitiveRenderingContext(v146, *(v31 + 224), *(v31 + 248));
          re::PrimitiveRenderingContext::PrimitiveRenderingContext(v134, *(v31 + 224), *(v31 + 248));
          re::PrimitiveRenderingContext::PrimitiveRenderingContext(v113, *(v31 + 224), *(v31 + 248));
          if (v122 == 1)
          {
            v115 = 0;
            ++v116;
            v122 = 0;
          }

          if (v120)
          {
            v120 = 0;
          }

          v119 = 998445679;
          if (v121 == 1)
          {
            v113[12] = 0;
            ++v114;
            v121 = 0;
          }

          v100 = v12;
          if (v118)
          {
            v118 = 0;
          }

          v99 = v31;
          v117 = 998445679;
          v102 = v18;
          v32 = re::ecs2::SceneComponentTable::get((v18 + 200), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v32)
          {
            v33 = *(v32 + 384);
            if (v33)
            {
              v34 = *(v32 + 400);
              for (i = 8 * v33; i; i -= 8)
              {
                v36 = *v34;
                v37 = *(*v34 + 16);
                if ((*(v37 + 304) & 1) == 0)
                {
                  goto LABEL_83;
                }

                if (v103)
                {
                  v38 = 1;
                }

                else
                {
                  v38 = *(v104 + 28);
                }

                v39 = re::ecs2::EntityComponentCollection::get((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                if (v39)
                {
                  v38 = *(v39 + 28);
                }

                if (!v38)
                {
                  goto LABEL_83;
                }

                *&v107 = 0x3F8000003F800000;
                *(&v107 + 1) = 1065353216;
                *&v108 = 0;
                *(&v108 + 1) = 0x3F80000000000000;
                v109 = 0uLL;
                v110.n128_u32[0] = 3;
                v111.i64[0] = 0x3F8000003F800000;
                v111.i64[1] = 0x3F8000003F800000;
                v112 = _D9;
                v159.i8[0] = 0;
                v40 = re::ecs2::EntityComponentCollection::get((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                v42 = v40;
                if (v40)
                {
                  v43 = *(v40 + 336);
                }

                else
                {
                  v43 = 0;
                }

                if (v38 == 1)
                {
                  if (*(v37 + 256))
                  {
                    re::TransformService::worldTransform(*(v98 + 240), v37, 0, v158);
                    v107 = *v158;
                    v108 = *&v158[16];
                    v109 = *&v158[32];
                    v49 = re::ecs2::EntityComponentCollection::get((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                    v50 = re::ecs2::EntityComponentCollection::get((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                    if (v103)
                    {
                      v51 = 3;
                    }

                    else
                    {
                      v51 = *(v104 + 32);
                    }

                    v52 = v97;
                    if (!v50)
                    {
                      goto LABEL_69;
                    }

                    v53 = *(v50 + 120);
                    if (v53)
                    {
                      v52 = xmmword_1E3071430;
                      if (v53 != 2)
                      {
                        v52 = v97;
                        if (v53 == 1)
                        {
                          v52 = xmmword_1E3071450;
                        }
                      }

LABEL_69:
                      if (v49)
                      {
LABEL_70:
                        if (*(v49 + 25))
                        {
                          v54 = -1;
                        }

                        else
                        {
                          v54 = 0;
                        }

                        v52 = vbslq_s8(vdupq_n_s32(v54), xmmword_1E3071460, v52);
                      }
                    }

                    else
                    {
                      v52 = xmmword_1E3071440;
                      if (v49)
                      {
                        goto LABEL_70;
                      }
                    }

                    v110.n128_u32[0] = v51;
                    v111 = v52;
                    v112 = _D9;
                    v55 = re::ecs2::EntityComponentCollection::get((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                    if (v55)
                    {
                      v110.n128_u32[0] = *(v55 + 32);
                    }

                    v56 = v36[5];
                    if (!v56)
                    {
                      goto LABEL_83;
                    }

                    v57 = atomic_load((v56 + 896));
                    if (v57 != 2)
                    {
                      if (v36[5])
                      {
                        re::AssetHandle::loadAsync((v36 + 4));
                      }

                      goto LABEL_83;
                    }

                    v46 = *(re::AssetHandle::blockUntilLoaded<re::CollisionShapeAsset>((v36 + 4)) + 8);
                    if (v42)
                    {
                      if (v159.i8[0])
                      {
                        v58 = *(v42 + 48);
                        v160 = *(v42 + 32);
                        v161 = v58;
                        v41 = *(v42 + 64);
                        v162 = v41;
                        LODWORD(v163) = *(v42 + 80);
                        goto LABEL_55;
                      }

                      v159.i8[0] = 1;
                      v59 = *(v42 + 48);
                      v160 = *(v42 + 32);
                      v161 = v59;
                      v41 = *(v42 + 64);
                      v48 = *(v42 + 80);
LABEL_54:
                      v162 = v41;
                      v163 = v48;
                    }

LABEL_55:
                    if (v46)
                    {
                      drawShape(v46, &v107, &v110, v146, v134, v113);
                      re::PhysicsDebugRenderer::drawTransformFrame(v146, &v107, *(v46 + 16));
                    }

LABEL_61:
                    if (v159.u8[0] == 1)
                    {
                      LODWORD(v41) = *(v46 + 16);
                      re::PhysicsDebugRenderer::drawCenterOfMass(v146, &v107, &v160, *&v41);
                    }
                  }
                }

                else
                {
                  if (v38 != 2)
                  {
                    v46 = 0;
                    goto LABEL_61;
                  }

                  v44 = v36[12];
                  if (v44)
                  {
                    WorldTransformAndStyle = getWorldTransformAndStyle(v104, v37, v36[12], &v107, &v110);
                    v46 = (*(**(v44 + 16) + 24))(*(v44 + 16), WorldTransformAndStyle);
                    if (v43)
                    {
                      v159.i8[0] = 1;
                      v47 = v43[10];
                      v160 = v43[9];
                      v161 = v47;
                      v41 = v43[11];
                      v48 = v43[12];
                      goto LABEL_54;
                    }

                    goto LABEL_55;
                  }
                }

LABEL_83:
                v34 += 8;
              }
            }
          }

          v60 = re::ecs2::SceneComponentTable::get((v102 + 200), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v7 = v98;
          if (v60)
          {
            v61 = *(v60 + 384);
            if (v61)
            {
              v62 = *(v60 + 400);
              v63 = 8 * v61;
              do
              {
                v64 = *(*v62 + 80);
                if (v64)
                {
                  v65 = v64[17];
                  if (v65)
                  {
                    v66 = *(*v62 + 16);
                    v159.i64[0] = 0x3F8000003F800000;
                    v159.i64[1] = 1065353216;
                    *&v160 = 0;
                    *(&v160 + 1) = 0x3F80000000000000;
                    v161 = 0uLL;
                    *v158 = 3;
                    *&v158[24] = 0x3F8000003F800000;
                    *&v158[16] = 0x3F8000003F800000;
                    *&v158[32] = _D9;
                    v67 = getWorldTransformAndStyle(v104, v66, v65, &v159, v158);
                    v68 = (*(**(v65 + 16) + 24))(*(v65 + 16), v67);
                    if (v68)
                    {
                      v69 = v68;
                      if ((*(*v68 + 24))(v68) == 4)
                      {
                        v70 = (*(*v64 + 176))(v64);
                        v72.n128_f32[0] = (*(*v64 + 192))(v64) + (v70 * -2.0);
                        if (*v158 == 3)
                        {
                          re::PhysicsDebugRenderer::drawCapsuleLines(v113, &v159, v158, v70, v72.n128_f32[0]);
                        }

                        else
                        {
                          *v71.i32 = v70;
                          re::PhysicsDebugRenderer::drawCapsuleShape(v146, &v159, v158, v71, v72);
                        }
                      }

                      else
                      {
                        drawShape(v69, &v159, v158, v146, v134, v113);
                        re::PhysicsDebugRenderer::drawTransformFrame(v146, &v159, *(v69 + 16));
                      }
                    }
                  }
                }

                v62 += 8;
                v63 -= 8;
              }

              while (v63);
            }
          }

          v73 = (*(**(v98 + 224) + 32))(*(v98 + 224), v102);
          if (v73)
          {
            v74 = v73;
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v159, v73, 0);
            v75 = v159.i64[0];
            v105 = v159.i64[0];
            v106 = v159.i32[2];
            v76 = v159.u16[4];
            v77 = HIWORD(v159.i32[2]);
            v78 = v74 == v159.i64[0] && v159.u16[4] == 0xFFFF;
            if (!v78 || v77 != 0xFFFF)
            {
              do
              {
                v80 = v77;
                v81 = *(v75 + 16);
                if (v81 <= v77)
                {
                  *&v107 = 0;
                  v162 = 0u;
                  v163 = 0u;
                  v160 = 0u;
                  v161 = 0u;
                  v159 = 0u;
                  v94 = MEMORY[0x1E69E9C10];
                  v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v158 = 136315906;
                  *&v158[4] = "operator[]";
                  *&v158[12] = 1024;
                  if (v95)
                  {
                    v96 = 3;
                  }

                  else
                  {
                    v96 = 2;
                  }

                  *&v158[14] = 797;
                  *&v158[18] = 2048;
                  *&v158[20] = v80;
                  *&v158[28] = 2048;
                  *&v158[30] = v81;
                  _os_log_send_and_compose_impl(v96, &v107, &v159, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v158, 38, 0x3F800000uLL, 0x3F00000000000000uLL);
                  _os_crash_msg();
                  __break(1u);
                }

                v82 = *(*(v75 + 32) + 16 * v77) + 272 * v76;
                if (*(v82 + 16))
                {
                  *v158 = 0u;
                  v107 = xmmword_1E30474D0;
                  v110 = 0u;
                  re::decomposeScaleRotationTranslation<float>(v82 + 112, v158, &v107, &v110);
                  v159 = *v158;
                  v160 = v107;
                  v161 = v110;
                  v83 = *(*(v82 + 16) + 56);
                  *v158 = 3;
                  *&v158[32] = _D9;
                  *&v158[16] = xmmword_1E3071470;
                  re::PhysicsDebugRenderer::drawContacts(v113, &v159, v83, v158);
                }

                re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v105);
                v75 = v105;
                v76 = v106;
                v77 = HIWORD(v106);
              }

              while (v105 != v74 || v106 != 0xFFFF || HIWORD(v106) != 0xFFFF);
            }
          }

          v12 = v100;
          if (!re::PrimitiveRenderingContext::isEmpty(v134))
          {
            v84 = *(v98 + 280);
            if (v84)
            {
              v85 = atomic_load((v84 + 896));
              if (v85 == 2)
              {
                v140[7] = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((v98 + 272)) + 1776);
              }
            }

            re::PrimitiveRenderer::submitContext(v99, v134);
          }

          if (!re::PrimitiveRenderingContext::isEmpty(v146))
          {
            v86 = *(v98 + 256);
            if (v86)
            {
              v87 = atomic_load((v86 + 896));
              if (v87 == 2)
              {
                v152[7] = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((v98 + 248)) + 1776);
              }
            }

            re::PrimitiveRenderer::submitContext(v99, v146);
          }

          if (!re::PrimitiveRenderingContext::isEmpty(v113))
          {
            re::PrimitiveRenderer::submitContext(v99, v113);
          }

          if (v129)
          {
            if (v133)
            {
              (*(*v129 + 40))();
            }

            v133 = 0;
            v130 = 0;
            v131 = 0;
            v129 = 0;
            ++v132;
          }

          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(&v128);
          if (v123)
          {
            if (v127)
            {
              (*(*v123 + 40))();
            }

            v127 = 0;
            v124 = 0;
            v125 = 0;
            v123 = 0;
            ++v126;
          }

          for (j = 122; j != 102; j -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v113[j]);
          }

          do
          {
            re::DynamicArray<unsigned long>::deinit(&v113[j]);
            j -= 5;
          }

          while (j != 82);
          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v113[j]);
            j -= 5;
          }

          while (j != 62);
          for (k = 30; k != -5; k -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v113[k]);
          }

          if (v141)
          {
            if (v145)
            {
              (*(*v141 + 40))();
            }

            v145 = 0;
            v142 = 0;
            v143 = 0;
            v141 = 0;
            ++v144;
          }

          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v140);
          if (v135)
          {
            if (v139)
            {
              (*(*v135 + 40))();
            }

            v139 = 0;
            v136 = 0;
            v137 = 0;
            v135 = 0;
            ++v138;
          }

          for (m = 122; m != 102; m -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v134[m]);
          }

          do
          {
            re::DynamicArray<unsigned long>::deinit(&v134[m]);
            m -= 5;
          }

          while (m != 82);
          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v134[m]);
            m -= 5;
          }

          while (m != 62);
          for (n = 30; n != -5; n -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v134[n]);
          }

          if (v153)
          {
            if (v157)
            {
              (*(*v153 + 40))();
            }

            v157 = 0;
            v154 = 0;
            v155 = 0;
            v153 = 0;
            ++v156;
          }

          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v152);
          if (v147)
          {
            if (v151)
            {
              (*(*v147 + 40))();
            }

            v151 = 0;
            v148 = 0;
            v149 = 0;
            v147 = 0;
            ++v150;
          }

          for (ii = 122; ii != 102; ii -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v146[ii]);
          }

          do
          {
            re::DynamicArray<unsigned long>::deinit(&v146[ii]);
            ii -= 5;
          }

          while (ii != 82);
          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v146[ii]);
            ii -= 5;
          }

          while (ii != 62);
          for (jj = 30; jj != -5; jj -= 5)
          {
            result = re::DynamicArray<unsigned long>::deinit(&v146[jj]);
          }
        }

        ++v12;
      }

      while (v12 != v101);
    }
  }

  return result;
}

double getWorldTransformAndStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(**(a3 + 16) + 40))(v31);
  v10 = *(a3 + 8);
  v11 = (*(*a3 + 16))(a3);
  v13 = vdupq_n_s32(v11);
  v14 = v13.i64[1];
  v15 = v13.i64[0];
  if ((v10 & 2) != 0)
  {
    v15 = v11;
    v14 = v12;
  }

  *a4 = v15;
  *(a4 + 8) = v14;
  v16 = v31[0];
  *(a4 + 16) = v31[1];
  *(a4 + 32) = v16;
  if (a1)
  {
    v17 = *(a1 + 32);
  }

  else
  {
    v17 = 3;
  }

  v18 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  __asm { FMOV            V0.4S, #1.0 }

  if (v18)
  {
    v24 = *(v18 + 336);
    if (v24)
    {
      v25 = v24[52];
      if (v25)
      {
        if (v25 == 2)
        {
          _Q0 = xmmword_1E3071430;
        }

        else if (v25 == 1)
        {
          _Q0 = xmmword_1E3071450;
        }
      }

      else
      {
        _Q0 = xmmword_1E3071440;
      }

      v29 = _Q0;
      if ((*(*v24 + 296))(v24))
      {
        v26 = -1;
      }

      else
      {
        v26 = 0;
      }

      _Q0 = vbslq_s8(vdupq_n_s32(v26), xmmword_1E3071460, v29);
    }
  }

  v30 = _Q0;
  v27 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v27)
  {
    v17 = *(v27 + 32);
  }

  *a5 = v17;
  *(a5 + 16) = v30;
  __asm { FMOV            V0.2S, #1.0 }

  *(a5 + 32) = result;
  return result;
}

void drawShape(void *result, float32x4_t *a2, __n128 *a3, void *a4, void *a5, void *a6)
{
  v6 = a3->n128_u32[0];
  if (a3->n128_i32[0] <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return;
      }

LABEL_9:
      re::PhysicsDebugRenderer::drawTransformedShape(a4, a2, result, a3);
      return;
    }

LABEL_8:
    a4 = a6;
    goto LABEL_9;
  }

  if (v6 == 3)
  {
    goto LABEL_8;
  }

  a4 = a5;
  if (v6 == 2)
  {
    goto LABEL_9;
  }
}

void re::introspect_PhysicsDebugDrawMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B1A88, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B1A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1A90))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B1B10, "PhysicsDebugDrawMode", 4, 4, 1, 1);
      qword_1EE1B1B10 = &unk_1F5D0C658;
      qword_1EE1B1B50 = &re::introspect_PhysicsDebugDrawMode(BOOL)::enumTable;
      dword_1EE1B1B20 = 9;
      __cxa_guard_release(&qword_1EE1B1A90);
    }

    if (_MergedGlobals_369)
    {
      break;
    }

    _MergedGlobals_369 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B1B10, a2);
    v37 = 0x4AC25C1CA6E97326;
    v38 = "PhysicsDebugDrawMode";
    v41 = 208862;
    v42 = "int";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B1B50;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1B1B30 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B1A88))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Wireframe";
      qword_1EE1B1AF0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Solid";
      qword_1EE1B1AF8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Transparent";
      qword_1EE1B1B00 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Lines";
      qword_1EE1B1B08 = v35;
      __cxa_guard_release(&qword_1EE1B1A88);
    }
  }
}

void re::introspect_PhysicsDebugDrawLevel(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B1A98, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B1AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1AA0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B1B58, "PhysicsDebugDrawLevel", 4, 4, 1, 1);
      qword_1EE1B1B58 = &unk_1F5D0C658;
      qword_1EE1B1B98 = &re::introspect_PhysicsDebugDrawLevel(BOOL)::enumTable;
      dword_1EE1B1B68 = 9;
      __cxa_guard_release(&qword_1EE1B1AA0);
    }

    if (byte_1EE1B1A81)
    {
      break;
    }

    byte_1EE1B1A81 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B1B58, a2);
    v35 = 0xD89277836203328;
    v36 = "PhysicsDebugDrawLevel";
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
      v6 = qword_1EE1B1B98;
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
      xmmword_1EE1B1B78 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE1B1A98))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Disabled";
      qword_1EE1B1AC0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "ECSComponent";
      qword_1EE1B1AC8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 3;
      *(v33 + 16) = "ThirdParty";
      qword_1EE1B1AD0 = v33;
      __cxa_guard_release(&qword_1EE1B1A98);
    }
  }
}

void *re::ecs2::allocInfo_PhysicsDebugComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1AA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1BA0, "PhysicsDebugComponent");
    __cxa_guard_release(&qword_1EE1B1AA8);
  }

  return &unk_1EE1B1BA0;
}

void re::ecs2::initInfo_PhysicsDebugComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v22[0] = 0xD8925C97FE41BE2;
  v22[1] = "PhysicsDebugComponent";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1B1AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1AB0))
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
    qword_1EE1B1AD8 = v14;
    v15 = re::introspectionAllocator();
    re::introspect_PhysicsDebugDrawLevel(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "debugDrawLevel";
    *(v17 + 16) = &qword_1EE1B1B58;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1C00000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B1AE0 = v17;
    v18 = re::introspectionAllocator();
    re::introspect_PhysicsDebugDrawMode(v18, v19);
    v20 = (*(*v18 + 32))(v18, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "debugDrawMode";
    *(v20 + 16) = &qword_1EE1B1B10;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x2000000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1B1AE8 = v20;
    __cxa_guard_release(&qword_1EE1B1AB0);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B1AD8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsDebugComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsDebugComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsDebugComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsDebugComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221PhysicsDebugComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v21 = v23;
}

double re::internal::defaultConstruct<re::ecs2::PhysicsDebugComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE1AB8;
  *&result = 0x300000001;
  *(v3 + 28) = 0x300000001;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PhysicsDebugComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE1AB8;
  *&result = 0x300000001;
  *(v1 + 28) = 0x300000001;
  return result;
}

void *re::ecs2::allocInfo_PhysicsDebugSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1AB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1C30, "PhysicsDebugSystem");
    __cxa_guard_release(&qword_1EE1B1AB8);
  }

  return &unk_1EE1B1C30;
}

void re::ecs2::initInfo_PhysicsDebugSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x4A224CD115088B76;
  v8[1] = "PhysicsDebugSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PhysicsDebugSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsDebugSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsDebugSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PhysicsDebugSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PhysicsDebugSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsDebugSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsDebugSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::PhysicsDebugSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 1, 1);
  *v3 = &unk_1F5CFBDF0;
  result = 0.0;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PhysicsDebugSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 1, 1);
  *v1 = &unk_1F5CFBDF0;
  result = 0.0;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0;
  return result;
}

void re::ecs2::PhysicsDebugSystem::~PhysicsDebugSystem(re::ecs2::PhysicsDebugSystem *this)
{
  *this = &unk_1F5CFBDF0;
  v2 = (this + 248);
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  re::AssetHandle::~AssetHandle((this + 272));
  re::AssetHandle::~AssetHandle(v2);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFBDF0;
  v2 = (this + 248);
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  re::AssetHandle::~AssetHandle((this + 272));
  re::AssetHandle::~AssetHandle(v2);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221PhysicsDebugComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::introspect_UISortCategory(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B1CC8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B1CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1CD0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B1D68, "UISortCategory", 4, 4, 1, 1);
      qword_1EE1B1D68 = &unk_1F5D0C658;
      qword_1EE1B1DA8 = &re::ecs2::introspect_UISortCategory(BOOL)::enumTable;
      dword_1EE1B1D78 = 9;
      __cxa_guard_release(&qword_1EE1B1CD0);
    }

    if (_MergedGlobals_370)
    {
      break;
    }

    _MergedGlobals_370 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B1D68, a2);
    v43 = 0x7F888D781CAD72E0;
    v44 = "UISortCategory";
    v47 = 208862;
    v48 = "int";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B1DA8;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1B1D88 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v42);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B1CC8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = -2;
      *(v29 + 16) = "BackDecoration";
      qword_1EE1B1D30 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = -1;
      *(v31 + 16) = "BehindUIContent";
      qword_1EE1B1D38 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 0;
      *(v33 + 16) = "UIContent";
      qword_1EE1B1D40 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 1;
      *(v35 + 16) = "AboveUIContent";
      qword_1EE1B1D48 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 2;
      *(v37 + 16) = "FrontDecoration";
      qword_1EE1B1D50 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 3;
      *(v39 + 16) = "ServerBegin";
      qword_1EE1B1D58 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "ServerCARE";
      qword_1EE1B1D60 = v41;
      __cxa_guard_release(&qword_1EE1B1CC8);
    }
  }
}

void *re::ecs2::allocInfo_UISortingComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1CE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1DB0, "UISortingComponent");
    __cxa_guard_release(&qword_1EE1B1CE0);
  }

  return &unk_1EE1B1DB0;
}

void re::ecs2::initInfo_UISortingComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v34[0] = 0x602C282B2A41051ALL;
  v34[1] = "UISortingComponent";
  if (v34[0])
  {
    if (v34[0])
    {
    }
  }

  *(this + 2) = v35;
  if ((atomic_load_explicit(&qword_1EE1B1CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1CD8))
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
    qword_1EE1B1D00 = v14;
    v15 = re::introspectionAllocator();
    re::ecs2::introspect_UISortCategory(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "m_sortCategory";
    *(v17 + 16) = &qword_1EE1B1D68;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x5000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B1D08 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_int(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_sortPriorityHint";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5400000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B1D10 = v21;
    v22 = re::introspectionAllocator();
    v23 = re::introspect_Vector3F(1);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "m_extents";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x2000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1B1D18 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_BOOL(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "m_usesMeshBoundingBox";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x5F00000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1B1D20 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_BOOL(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "m_isInsideOutsidePartitionPlane";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x6000000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1B1D28 = v32;
    __cxa_guard_release(&qword_1EE1B1CD8);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B1D00;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UISortingComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UISortingComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UISortingComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UISortingComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218UISortingComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v33 = v35;
}

float32x4_t re::internal::defaultConstruct<re::ecs2::UISortingComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE2C68;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *(v3 + 48) = vnegq_f32(result);
  *(v3 + 64) = result;
  *(v3 + 80) = 1;
  *(v3 + 84) = 0;
  *(v3 + 89) = 0;
  return result;
}

float32x4_t re::internal::defaultConstructV2<re::ecs2::UISortingComponent>(ArcSharedObject *a1)
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
  *v1 = &unk_1F5CE2C68;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *(v1 + 48) = vnegq_f32(result);
  *(v1 + 64) = result;
  *(v1 + 80) = 1;
  *(v1 + 84) = 0;
  *(v1 + 89) = 0;
  return result;
}

void *re::ecs2::allocInfo_UISortingCodirectionalGroupConfigComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1CE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1E40, "UISortingCodirectionalGroupConfigComponent");
    __cxa_guard_release(&qword_1EE1B1CE8);
  }

  return &unk_1EE1B1E40;
}

void re::ecs2::initInfo_UISortingCodirectionalGroupConfigComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x4C4FDB0089277C14;
  v16[1] = "UISortingCodirectionalGroupConfigComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B1CF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1CF8))
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
    qword_1EE1B1CF0 = v14;
    __cxa_guard_release(&qword_1EE1B1CF8);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B1CF0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UISortingCodirectionalGroupConfigComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UISortingCodirectionalGroupConfigComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UISortingCodirectionalGroupConfigComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UISortingCodirectionalGroupConfigComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs242UISortingCodirectionalGroupConfigComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::UISortingCodirectionalGroupConfigComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE2DD0;
}

void re::internal::defaultConstructV2<re::ecs2::UISortingCodirectionalGroupConfigComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE2DD0;
}

uint64_t re::ecs2::UISortingComponent::setExtents(float *a1, float *a2)
{
  v2 = a1[8];
  if (v2 == *a2 || vabds_f32(v2, *a2) < (((fabsf(v2) + fabsf(*a2)) + 1.0) * 0.00001))
  {
    v3 = a1[9];
    v4 = a2[1];
    if (v3 == v4 || vabds_f32(v3, v4) < (((fabsf(v3) + fabsf(v4)) + 1.0) * 0.00001))
    {
      v5 = a1[10];
      v6 = a2[2];
      if (v5 == v6 || vabds_f32(v5, v6) < (((fabsf(v5) + fabsf(v6)) + 1.0) * 0.00001))
      {
        return 0;
      }
    }
  }

  *(a1 + 2) = *a2;
  return 1;
}

uint64_t re::ecs2::UISortingComponent::setCaSortOrder(uint64_t this, int a2)
{
  v4 = *(this + 88);
  *(this + 88) = a2;
  if (v4 != a2)
  {
    v12 = v2;
    v13 = v3;
    v5 = *(this + 16);
    v6 = v5;
    do
    {
      v7 = v6;
      v6 = *(v6 + 32);
    }

    while (v6);
    v8 = *(v7 + 24);
    if (v8)
    {
      v9 = *(v8 + 288);
      if (v9)
      {
        v10 = re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeCASortOrderEvent>();
        return re::EventBus::publish(v9, v5, v10, &v11, 1uLL, 0);
      }
    }
  }

  return this;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218UISortingComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 8;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs242UISortingCodirectionalGroupConfigComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_PrimitiveBoxComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_371, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_371))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2100, "PrimitiveBoxComponent");
    __cxa_guard_release(&_MergedGlobals_371);
  }

  return &unk_1EE1B2100;
}

void re::ecs2::initInfo_PrimitiveBoxComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0xA7F887F361E343B2;
  v32[1] = "PrimitiveBoxComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1ED8))
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
    qword_1EE1B1FC0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B1FC8 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildBoxOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B1FD0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x3A00000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B1FD8 = v30;
    __cxa_guard_release(&qword_1EE1B1ED8);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B1FC0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveBoxComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveBoxComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveBoxComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveBoxComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221PrimitiveBoxComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitiveBoxComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CD0968;
  v4 = (a3 + 8);
  re::AssetHandle::~AssetHandle((a3 + 11));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitiveBoxComponent>(void *a1)
{
  *a1 = &unk_1F5CD0968;
  v2 = (a1 + 8);
  re::AssetHandle::~AssetHandle((a1 + 11));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitiveBoxWithRoundedCornersComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1EE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2190, "PrimitiveBoxWithRoundedCornersComponent");
    __cxa_guard_release(&qword_1EE1B1EE0);
  }

  return &unk_1EE1B2190;
}

void re::ecs2::initInfo_PrimitiveBoxWithRoundedCornersComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x9E4753EB8C44C9C4;
  v32[1] = "PrimitiveBoxWithRoundedCornersComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1EE8))
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
    qword_1EE1B1FE0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4400000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B1FE8 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildBoxWithRoundedCornersOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B1FF0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x4600000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B1FF8 = v30;
    __cxa_guard_release(&qword_1EE1B1EE8);
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B1FE0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs239PrimitiveBoxWithRoundedCornersComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CE0820;
  v4 = (a3 + 9);
  re::AssetHandle::~AssetHandle((a3 + 12));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>(void *a1)
{
  *a1 = &unk_1F5CE0820;
  v2 = (a1 + 9);
  re::AssetHandle::~AssetHandle((a1 + 12));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitiveCapsuleComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1EF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2220, "PrimitiveCapsuleComponent");
    __cxa_guard_release(&qword_1EE1B1EF0);
  }

  return &unk_1EE1B2220;
}

void re::ecs2::initInfo_PrimitiveCapsuleComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x7F9A21F41648206ELL;
  v32[1] = "PrimitiveCapsuleComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1EF8))
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
    qword_1EE1B2000 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B2008 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildCapsuleOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B2010 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x3200000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B2018 = v30;
    __cxa_guard_release(&qword_1EE1B1EF8);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B2000;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveCapsuleComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveCapsuleComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveCapsuleComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveCapsuleComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225PrimitiveCapsuleComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitiveCapsuleComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CD0D48;
  v4 = (a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 10));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitiveCapsuleComponent>(void *a1)
{
  *a1 = &unk_1F5CD0D48;
  v2 = (a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 10));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitiveConeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B22B0, "PrimitiveConeComponent");
    __cxa_guard_release(&qword_1EE1B1F00);
  }

  return &unk_1EE1B22B0;
}

void re::ecs2::initInfo_PrimitiveConeComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x6CC106C967564726;
  v32[1] = "PrimitiveConeComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F08))
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
    qword_1EE1B2020 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B2028 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildConeOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B2030 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2E00000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B2038 = v30;
    __cxa_guard_release(&qword_1EE1B1F08);
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B2020;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveConeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveConeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveConeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveConeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222PrimitiveConeComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitiveConeComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CD0B58;
  v4 = (a3 + 6);
  re::AssetHandle::~AssetHandle((a3 + 9));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitiveConeComponent>(void *a1)
{
  *a1 = &unk_1F5CD0B58;
  v2 = (a1 + 6);
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitiveCylinderComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2340, "PrimitiveCylinderComponent");
    __cxa_guard_release(&qword_1EE1B1F10);
  }

  return &unk_1EE1B2340;
}

void re::ecs2::initInfo_PrimitiveCylinderComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0xB29E407824C03F80;
  v32[1] = "PrimitiveCylinderComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F18))
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
    qword_1EE1B2040 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3400000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B2048 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildCylinderOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B2050 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x3600000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B2058 = v30;
    __cxa_guard_release(&qword_1EE1B1F18);
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B2040;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveCylinderComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveCylinderComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveCylinderComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveCylinderComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226PrimitiveCylinderComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitiveCylinderComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CD0A60;
  v4 = (a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 10));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitiveCylinderComponent>(void *a1)
{
  *a1 = &unk_1F5CD0A60;
  v2 = (a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 10));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitivePlaneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B23D0, "PrimitivePlaneComponent");
    __cxa_guard_release(&qword_1EE1B1F20);
  }

  return &unk_1EE1B23D0;
}

void re::ecs2::initInfo_PrimitivePlaneComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x4B3FA39CDE99B550;
  v32[1] = "PrimitivePlaneComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F28))
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
    qword_1EE1B2060 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B2068 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildPlaneOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B2070 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x3A00000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B2078 = v30;
    __cxa_guard_release(&qword_1EE1B1F28);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B2060;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitivePlaneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitivePlaneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitivePlaneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitivePlaneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223PrimitivePlaneComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitivePlaneComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CE0C98;
  v4 = (a3 + 8);
  re::AssetHandle::~AssetHandle((a3 + 11));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitivePlaneComponent>(void *a1)
{
  *a1 = &unk_1F5CE0C98;
  v2 = (a1 + 8);
  re::AssetHandle::~AssetHandle((a1 + 11));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitivePyramidComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2460, "PrimitivePyramidComponent");
    __cxa_guard_release(&qword_1EE1B1F30);
  }

  return &unk_1EE1B2460;
}

void re::ecs2::initInfo_PrimitivePyramidComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x47DE3E13F43D68E8;
  v32[1] = "PrimitivePyramidComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F38))
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
    qword_1EE1B2080 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B2088 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildPyramidOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B2090 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x3200000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B2098 = v30;
    __cxa_guard_release(&qword_1EE1B1F38);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B2080;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitivePyramidComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitivePyramidComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitivePyramidComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitivePyramidComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225PrimitivePyramidComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitivePyramidComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CE0E70;
  v4 = (a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 10));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitivePyramidComponent>(void *a1)
{
  *a1 = &unk_1F5CE0E70;
  v2 = (a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 10));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitiveSphereComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B24F0, "PrimitiveSphereComponent");
    __cxa_guard_release(&qword_1EE1B1F40);
  }

  return &unk_1EE1B24F0;
}

void re::ecs2::initInfo_PrimitiveSphereComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x7AD96854103F9FD2;
  v32[1] = "PrimitiveSphereComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F48))
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
    qword_1EE1B20A0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B20A8 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildSphereOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B20B0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2A00000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B20B8 = v30;
    __cxa_guard_release(&qword_1EE1B1F48);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B20A0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveSphereComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveSphereComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveSphereComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveSphereComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224PrimitiveSphereComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitiveSphereComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CD0C50;
  v4 = (a3 + 6);
  re::AssetHandle::~AssetHandle((a3 + 9));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitiveSphereComponent>(void *a1)
{
  *a1 = &unk_1F5CD0C50;
  v2 = (a1 + 6);
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitiveTetrahedronComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2580, "PrimitiveTetrahedronComponent");
    __cxa_guard_release(&qword_1EE1B1F50);
  }

  return &unk_1EE1B2580;
}

void re::ecs2::initInfo_PrimitiveTetrahedronComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x65FF83F77D591C90;
  v32[1] = "PrimitiveTetrahedronComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F58))
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
    qword_1EE1B20C0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B20C8 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildTetrahedronOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B20D0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2A00000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B20D8 = v30;
    __cxa_guard_release(&qword_1EE1B1F58);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B20C0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveTetrahedronComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveTetrahedronComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveTetrahedronComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveTetrahedronComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs229PrimitiveTetrahedronComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitiveTetrahedronComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CE1128;
  v4 = (a3 + 6);
  re::AssetHandle::~AssetHandle((a3 + 9));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitiveTetrahedronComponent>(void *a1)
{
  *a1 = &unk_1F5CE1128;
  v2 = (a1 + 6);
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitiveTubeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2610, "PrimitiveTubeComponent");
    __cxa_guard_release(&qword_1EE1B1F60);
  }

  return &unk_1EE1B2610;
}

void re::ecs2::initInfo_PrimitiveTubeComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0xE45DF0EB7BA022A4;
  v32[1] = "PrimitiveTubeComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B1F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F68))
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
    qword_1EE1B20E0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "splitMeshes";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B20E8 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_GeomBuildTubeOptions(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "options";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B20F0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "createCollisionShape";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x3200000003;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B20F8 = v30;
    __cxa_guard_release(&qword_1EE1B1F68);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B20E0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveTubeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveTubeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveTubeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveTubeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222PrimitiveTubeComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::internal::defaultDestruct<re::ecs2::PrimitiveTubeComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CE1300;
  v4 = (a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 10));
  re::AssetHandle::~AssetHandle(v4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PrimitiveTubeComponent>(void *a1)
{
  *a1 = &unk_1F5CE1300;
  v2 = (a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 10));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_PrimitiveBoxSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B26A0, "PrimitiveBoxSystem");
    __cxa_guard_release(&qword_1EE1B1F70);
  }

  return &unk_1EE1B26A0;
}

void re::ecs2::initInfo_PrimitiveBoxSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x4C5497594D8EF5A6;
  v8[1] = "PrimitiveBoxSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveBoxSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveBoxSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveBoxSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveBoxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveBoxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveBoxSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveBoxSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitiveBoxSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
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
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFBE80;
  return result;
}