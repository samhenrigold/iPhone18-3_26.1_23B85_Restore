uint64_t createAnimationBlendTreeFromAssetData<re::Vector4<float>>(unint64_t a1, void *a2)
{
  v5 = v137;
  v169 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  memset(v101, 0, sizeof(v101));
  v102 = 0x7FFFFFFFLL;
  re::StringID::invalid(v103);
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  v117 = 0x7FFFFFFFLL;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v122 = 0x7FFFFFFFLL;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v138 = 1;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  memset(v143, 0, sizeof(v143));
  re::RigEnvironment::init(v137, a2);
  v96 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v97, a1 + 80, a2);
  v134 = 0;
  v6 = v99;
  v99 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v101 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v100;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v101[8]);
  v135 = 0;
  v10 = v119;
  if (v119[2])
  {
    a1 = -1;
    v11 = 1;
    v12 = &str_67;
    v2 = 8;
    while (1)
    {
      v13 = v99;
      if (v99 >= *(&v98 + 1))
      {
        v14 = v99 + 1;
        if (*(&v98 + 1) < v99 + 1)
        {
          if (v98)
          {
            if (*(&v98 + 1))
            {
              v15 = 2 * *(&v98 + 1);
            }

            else
            {
              v15 = 8;
            }

            if (v15 <= v14)
            {
              v16 = v99 + 1;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v16);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v14);
            ++v100;
          }
        }

        v13 = v99;
      }

      v17 = *v101 + 80 * v13;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 32) = 1;
      *(v17 + 56) = &str_67;
      *(v17 + 64) = 0;
      *(v17 + 72) = &str_67;
      v99 = (v99 + 1);
      ++v100;
      a2 = v135;
      v18 = v119[2];
      if (v18 <= v135)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v101[8], (v119[4] + 88 * v135), &v135);
      ++v135;
      v10 = v119;
      if (v135 >= v119[2])
      {
        goto LABEL_20;
      }
    }

    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v49, v131, &v144, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v52, v131, &v144, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = v12;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v55, &v136, &v144, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v58, &v136, &v144, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v61, &v136, &v144, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v64, &v136, &v144, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v67, &v136, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v70, v131, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v73, v131, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v76, v131, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v79, v131, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v82, v131, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_20:
  if (v10[7])
  {
    v19 = 0;
    v12 = 0;
    while (1)
    {
      v5 = v10[9];
      v11 = &v5[v19];
      re::StringID::StringID(v131, &v5[v19 + 4]);
      v18 = v119[7];
      if (v18 <= v12)
      {
        goto LABEL_123;
      }

      re::StringID::StringID(&v135, (v119[9] + v19 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], (v11 + 80), v20 ^ (v20 >> 31), &v144);
      v21 = HIDWORD(v144);
      v22 = *&v101[24];
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], &v5[v19], v23 ^ (v23 >> 31), &v144);
      if (HIDWORD(v144) == 0x7FFFFFFF || v21 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v22 + 32 * v21);
      v11 = a2[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_127;
      }

      v5 = (*&v101[24] + 32 * HIDWORD(v144));
      re::DynamicArray<unsigned long>::add((*v101 + 80 * v11 + 8), v5 + 3);
      v18 = v5[3];
      v11 = v99;
      if (v99 <= v18)
      {
        goto LABEL_131;
      }

      v25 = *v101;
      *(*v101 + 80 * v18) = a2[3];
      v18 = v5[3];
      if (v11 <= v18)
      {
        goto LABEL_135;
      }

      re::StringID::operator=((v25 + 80 * v18 + 48), &v135);
      v11 = v5[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_139;
      }

      v26 = re::StringID::operator=((*v101 + 80 * v11 + 64), v131);
      if (v135)
      {
        if (v135)
        {
        }
      }

      if (v131[0])
      {
        if (v131[0])
        {
        }
      }

      ++v12;
      v10 = v119;
      v19 += 20;
      if (v12 >= v119[7])
      {
        goto LABEL_43;
      }
    }

    if (v135)
    {
      if (v135)
      {
      }
    }

    if (v131[0])
    {
      if (v131[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v137;
  if (!v99)
  {
LABEL_83:
    re::DynamicString::format(&v144, "A root node without a parent was not found.", v9);
    goto LABEL_100;
  }

  a1 = 0;
  v12 = 0;
  v27 = 0;
  a2 = 0;
  v18 = -1;
  v28 = 32;
  v11 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_119;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v119[4] + v28 - 32));
    if (isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_143;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
          goto LABEL_95;
        }
      }

      v31 = *(*v101 + a1 + 24);
      if (v31 <= 1)
      {
        v41 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v31 != 2)
      {
        if (v118 == 1)
        {
          goto LABEL_85;
        }

        v27 = 1;
      }

      goto LABEL_72;
    }

    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_147;
    }

    v32 = (v119[4] + v28);
    if (re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v33 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v120, v32, &v134);
      ++v134;
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_151;
      }

      if (*(*v101 + a1) >= v99)
      {
        v41 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v101 + a1 + 24))
      {
        v41 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_159;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
LABEL_95:
          v41 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v118 = 1;
      if (v27)
      {
LABEL_85:
        v41 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v27 = 0;
      goto LABEL_72;
    }

    v2 = v99;
    if (v99 <= a2)
    {
      goto LABEL_155;
    }

    if (*(*v101 + a1) >= v99)
    {
      v41 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v101 + a1 + 24))
    {
      break;
    }

    ++v12;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v28 += 88;
    if (a2 >= v2)
    {
      if (v18 != -1)
      {
        a1 = v119[2];
        if (a1 > v18)
        {
          v34 = v119[4];
          v35 = (*(*v97 + 32))(v97, 624, 8);
          v36 = re::Timeline::Timeline(v35, 43);
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          v37 = v36 + 80;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0u;
          *(v36 + 128) = 0u;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0u;
          *(v36 + 168) = 0u;
          *(v36 + 184) = 0;
          *(v36 + 192) = 0u;
          *(v36 + 208) = 0u;
          *(v36 + 224) = 0;
          *(v36 + 232) = 0u;
          *(v36 + 248) = 0u;
          *(v36 + 264) = 0;
          *(v36 + 528) = 0;
          *(v36 + 536) = 0;
          *(v36 + 568) = 0;
          *(v36 + 560) = 0;
          *(v36 + 544) = 0u;
          *(v36 + 616) = 0;
          *(v36 + 576) = 0u;
          *(v36 + 592) = 0u;
          *(v36 + 608) = 0;
          *(v36 + 488) = 0u;
          *(v36 + 504) = 0u;
          *(v36 + 520) = 0;
          *(v36 + 272) = 0u;
          *(v36 + 288) = 0u;
          *(v36 + 304) = 0u;
          *(v36 + 320) = 0u;
          *(v36 + 336) = 0u;
          *(v36 + 352) = 0u;
          *(v36 + 368) = 0u;
          *(v36 + 384) = 0u;
          *(v36 + 400) = 0;
          *(v36 + 440) = 0;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 480) = 0;
          *(v36 + 448) = 0u;
          *(v36 + 464) = 0u;
          *v36 = &unk_1F5CC2C40;
          re::FixedArray<unsigned long>::init<>((v36 + 304), v97, v134);
          re::FixedArray<unsigned long>::init<>((v35 + 328), v97, v134 + 1);
          re::FixedArray<unsigned long>::init<>((v35 + 352), v97, v134);
          *(v35 + 416) = v97;
          re::DynamicArray<re::StringID>::setCapacity((v35 + 416), v12);
          ++*(v35 + 440);
          v135 = 0;
          v136 = 0;
          if (v118 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v114[1], v97, v103, v137);
            re::AnimationBlendTreeBuilder<double>::buildRig(v131, &v97, v35, v18, &v135);
            if (LOBYTE(v131[0]) != 1)
            {
              v42 = v133;
              v43 = v131[3];
              v44 = v132;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v114[1], *(v34 + 88 * v18 + 8), "output", "output", "", 0, v128);
            if ((v128[0] & 1) == 0 && v129)
            {
              if (BYTE8(v129))
              {
                (*(*v129 + 40))();
              }

              v130 = 0u;
              v129 = 0u;
            }

            v155 = 0;
            *&v154[2] = 0;
            v156 = 1;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v160 = 0;
            v163 = 0;
            v161 = 0;
            v162 = 0;
            v168 = 0;
            v165 = 0u;
            v166 = 0u;
            v164 = 0;
            v167 = 0;
            *&v152[16] = v137;
            v152[24] = 0;
            *v152 = v97;
            *&v152[8] = 0;
            re::RigGraphCompilation::init(&v154[2], v97);
            re::RigGraphSystem::buildFromDefinition(v97, v103, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 120, &v146 + 1);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 160, v149);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 200, v150);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 240, v151);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v151);
            re::DynamicArray<re::StringID>::deinit(v150);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v149);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v146 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v144);
            re::RigGraphCompilation::~RigGraphCompilation(&v154[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize((v35 + 416), v12);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v35 + 280), v97, v99);
            *(v35 + 376) = v97;
            re::DynamicArray<re::StringID>::setCapacity((v35 + 376), 0);
            ++*(v35 + 400);
            re::DynamicArray<re::StringID>::resize((v35 + 376), v99);
            if (!*(v35 + 288))
            {
LABEL_167:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              *&v152[14] = 468;
              *&v152[18] = 2048;
              *&v152[20] = 0;
              v153 = 2048;
              *v154 = 0;
              _os_log_send_and_compose_impl(v88, v131, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
              goto LABEL_171;
            }

            v38 = *(v35 + 296);
            *v38 = 1065353216;
            a1 = v99;
            if (v99 <= v18)
            {
LABEL_171:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              *&v152[14] = 789;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v91, v131, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              *&v152[14] = 797;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v94, v131, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
            }

            *(v38 + 6) = *(*v101 + 80 * v18 + 24);
            a1 = v119[2];
            if (a1 <= v18)
            {
              goto LABEL_175;
            }

            *(v38 + 7) = re::StringID::operator==((v119[4] + 88 * v18 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v38 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v97, v35, v18, 1, &v135, &v136);
          }

          if (v125)
          {
            for (i = 0; i < v125; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v35, i, *(v127 + 8 * i));
            }
          }

          v40 = v119;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35 + 456, v119);
          re::DynamicArray<re::RigGraphConnection>::operator=(v35 + 496, v40 + 5);
          *(v35 + 536) = *(v40 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v35 + 544, v40 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v35 + 584, v40 + 16);
          *(v35 + 12) = *(v96 + 12);
          *(v35 + 16) = *(v96 + 16);
          re::StringID::operator=((v35 + 24), (v96 + 24));
          re::DynamicString::operator=((v35 + 40), (v96 + 40));
          *(v35 + 72) = *(v96 + 72);
          goto LABEL_104;
        }

LABEL_163:
        v131[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v152 = 136315906;
        *&v152[4] = "operator[]";
        *&v152[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v152[14] = 797;
        *&v152[18] = 2048;
        *&v152[20] = v18;
        v153 = 2048;
        *v154 = a1;
        _os_log_send_and_compose_impl(v85, v131, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_167;
      }

      goto LABEL_83;
    }
  }

  v41 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v42 = v145;
  v43 = v144;
  v44 = BYTE8(v144);
LABEL_101:
  v35 = 0;
  if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))(v43, v42);
    v35 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v143[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v137);
  if (v137[0] && (v138 & 1) == 0)
  {
    (*(*v137[0] + 40))();
  }

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

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v120);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v115);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v112[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v110[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v106 + 8);
  v45 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v104);
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  v103[0] = 0;
  v103[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v101[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v98);
  return v35;
}

uint64_t createAnimationBlendTreeFromAssetData<re::Quaternion<float>>(unint64_t a1, void *a2)
{
  v5 = v137;
  v169 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  memset(v101, 0, sizeof(v101));
  v102 = 0x7FFFFFFFLL;
  re::StringID::invalid(v103);
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  v117 = 0x7FFFFFFFLL;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v122 = 0x7FFFFFFFLL;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v138 = 1;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  memset(v143, 0, sizeof(v143));
  re::RigEnvironment::init(v137, a2);
  v96 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v97, a1 + 80, a2);
  v134 = 0;
  v6 = v99;
  v99 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v101 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v100;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v101[8]);
  v135 = 0;
  v10 = v119;
  if (v119[2])
  {
    a1 = -1;
    v11 = 1;
    v12 = &str_67;
    v2 = 8;
    while (1)
    {
      v13 = v99;
      if (v99 >= *(&v98 + 1))
      {
        v14 = v99 + 1;
        if (*(&v98 + 1) < v99 + 1)
        {
          if (v98)
          {
            if (*(&v98 + 1))
            {
              v15 = 2 * *(&v98 + 1);
            }

            else
            {
              v15 = 8;
            }

            if (v15 <= v14)
            {
              v16 = v99 + 1;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v16);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v14);
            ++v100;
          }
        }

        v13 = v99;
      }

      v17 = *v101 + 80 * v13;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 32) = 1;
      *(v17 + 56) = &str_67;
      *(v17 + 64) = 0;
      *(v17 + 72) = &str_67;
      v99 = (v99 + 1);
      ++v100;
      a2 = v135;
      v18 = v119[2];
      if (v18 <= v135)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v101[8], (v119[4] + 88 * v135), &v135);
      ++v135;
      v10 = v119;
      if (v135 >= v119[2])
      {
        goto LABEL_20;
      }
    }

    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v49, v131, &v144, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v52, v131, &v144, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = v12;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v55, &v136, &v144, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v58, &v136, &v144, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v61, &v136, &v144, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v64, &v136, &v144, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v67, &v136, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v70, v131, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v73, v131, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v76, v131, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v79, v131, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v82, v131, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_20:
  if (v10[7])
  {
    v19 = 0;
    v12 = 0;
    while (1)
    {
      v5 = v10[9];
      v11 = &v5[v19];
      re::StringID::StringID(v131, &v5[v19 + 4]);
      v18 = v119[7];
      if (v18 <= v12)
      {
        goto LABEL_123;
      }

      re::StringID::StringID(&v135, (v119[9] + v19 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], (v11 + 80), v20 ^ (v20 >> 31), &v144);
      v21 = HIDWORD(v144);
      v22 = *&v101[24];
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], &v5[v19], v23 ^ (v23 >> 31), &v144);
      if (HIDWORD(v144) == 0x7FFFFFFF || v21 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v22 + 32 * v21);
      v11 = a2[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_127;
      }

      v5 = (*&v101[24] + 32 * HIDWORD(v144));
      re::DynamicArray<unsigned long>::add((*v101 + 80 * v11 + 8), v5 + 3);
      v18 = v5[3];
      v11 = v99;
      if (v99 <= v18)
      {
        goto LABEL_131;
      }

      v25 = *v101;
      *(*v101 + 80 * v18) = a2[3];
      v18 = v5[3];
      if (v11 <= v18)
      {
        goto LABEL_135;
      }

      re::StringID::operator=((v25 + 80 * v18 + 48), &v135);
      v11 = v5[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_139;
      }

      v26 = re::StringID::operator=((*v101 + 80 * v11 + 64), v131);
      if (v135)
      {
        if (v135)
        {
        }
      }

      if (v131[0])
      {
        if (v131[0])
        {
        }
      }

      ++v12;
      v10 = v119;
      v19 += 20;
      if (v12 >= v119[7])
      {
        goto LABEL_43;
      }
    }

    if (v135)
    {
      if (v135)
      {
      }
    }

    if (v131[0])
    {
      if (v131[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v137;
  if (!v99)
  {
LABEL_83:
    re::DynamicString::format(&v144, "A root node without a parent was not found.", v9);
    goto LABEL_100;
  }

  a1 = 0;
  v12 = 0;
  v27 = 0;
  a2 = 0;
  v18 = -1;
  v28 = 32;
  v11 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_119;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v119[4] + v28 - 32));
    if (isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_143;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
          goto LABEL_95;
        }
      }

      v31 = *(*v101 + a1 + 24);
      if (v31 <= 1)
      {
        v41 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v31 != 2)
      {
        if (v118 == 1)
        {
          goto LABEL_85;
        }

        v27 = 1;
      }

      goto LABEL_72;
    }

    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_147;
    }

    v32 = (v119[4] + v28);
    if (re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v33 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v120, v32, &v134);
      ++v134;
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_151;
      }

      if (*(*v101 + a1) >= v99)
      {
        v41 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v101 + a1 + 24))
      {
        v41 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_159;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
LABEL_95:
          v41 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v118 = 1;
      if (v27)
      {
LABEL_85:
        v41 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v27 = 0;
      goto LABEL_72;
    }

    v2 = v99;
    if (v99 <= a2)
    {
      goto LABEL_155;
    }

    if (*(*v101 + a1) >= v99)
    {
      v41 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v101 + a1 + 24))
    {
      break;
    }

    ++v12;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v28 += 88;
    if (a2 >= v2)
    {
      if (v18 != -1)
      {
        a1 = v119[2];
        if (a1 > v18)
        {
          v34 = v119[4];
          v35 = (*(*v97 + 32))(v97, 624, 8);
          v36 = re::Timeline::Timeline(v35, 44);
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          v37 = v36 + 80;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0u;
          *(v36 + 128) = 0u;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0u;
          *(v36 + 168) = 0u;
          *(v36 + 184) = 0;
          *(v36 + 192) = 0u;
          *(v36 + 208) = 0u;
          *(v36 + 224) = 0;
          *(v36 + 232) = 0u;
          *(v36 + 248) = 0u;
          *(v36 + 264) = 0;
          *(v36 + 528) = 0;
          *(v36 + 536) = 0;
          *(v36 + 568) = 0;
          *(v36 + 560) = 0;
          *(v36 + 544) = 0u;
          *(v36 + 616) = 0;
          *(v36 + 576) = 0u;
          *(v36 + 592) = 0u;
          *(v36 + 608) = 0;
          *(v36 + 488) = 0u;
          *(v36 + 504) = 0u;
          *(v36 + 520) = 0;
          *(v36 + 272) = 0u;
          *(v36 + 288) = 0u;
          *(v36 + 304) = 0u;
          *(v36 + 320) = 0u;
          *(v36 + 336) = 0u;
          *(v36 + 352) = 0u;
          *(v36 + 368) = 0u;
          *(v36 + 384) = 0u;
          *(v36 + 400) = 0;
          *(v36 + 440) = 0;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 480) = 0;
          *(v36 + 448) = 0u;
          *(v36 + 464) = 0u;
          *v36 = &unk_1F5CC2DA0;
          re::FixedArray<unsigned long>::init<>((v36 + 304), v97, v134);
          re::FixedArray<unsigned long>::init<>((v35 + 328), v97, v134 + 1);
          re::FixedArray<unsigned long>::init<>((v35 + 352), v97, v134);
          *(v35 + 416) = v97;
          re::DynamicArray<re::StringID>::setCapacity((v35 + 416), v12);
          ++*(v35 + 440);
          v135 = 0;
          v136 = 0;
          if (v118 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v114[1], v97, v103, v137);
            re::AnimationBlendTreeBuilder<re::Quaternion<float>>::buildRig(v131, &v97, v35, v18, &v135);
            if (LOBYTE(v131[0]) != 1)
            {
              v42 = v133;
              v43 = v131[3];
              v44 = v132;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v114[1], *(v34 + 88 * v18 + 8), "output", "output", "", 0, v128);
            if ((v128[0] & 1) == 0 && v129)
            {
              if (BYTE8(v129))
              {
                (*(*v129 + 40))();
              }

              v130 = 0u;
              v129 = 0u;
            }

            v155 = 0;
            *&v154[2] = 0;
            v156 = 1;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v160 = 0;
            v163 = 0;
            v161 = 0;
            v162 = 0;
            v168 = 0;
            v165 = 0u;
            v166 = 0u;
            v164 = 0;
            v167 = 0;
            *&v152[16] = v137;
            v152[24] = 0;
            *v152 = v97;
            *&v152[8] = 0;
            re::RigGraphCompilation::init(&v154[2], v97);
            re::RigGraphSystem::buildFromDefinition(v97, v103, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 120, &v146 + 1);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 160, v149);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 200, v150);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 240, v151);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v151);
            re::DynamicArray<re::StringID>::deinit(v150);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v149);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v146 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v144);
            re::RigGraphCompilation::~RigGraphCompilation(&v154[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize((v35 + 416), v12);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v35 + 280), v97, v99);
            *(v35 + 376) = v97;
            re::DynamicArray<re::StringID>::setCapacity((v35 + 376), 0);
            ++*(v35 + 400);
            re::DynamicArray<re::StringID>::resize((v35 + 376), v99);
            if (!*(v35 + 288))
            {
LABEL_167:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              *&v152[14] = 468;
              *&v152[18] = 2048;
              *&v152[20] = 0;
              v153 = 2048;
              *v154 = 0;
              _os_log_send_and_compose_impl(v88, v131, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
              goto LABEL_171;
            }

            v38 = *(v35 + 296);
            *v38 = 1065353216;
            a1 = v99;
            if (v99 <= v18)
            {
LABEL_171:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              *&v152[14] = 789;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v91, v131, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              *&v152[14] = 797;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v94, v131, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
            }

            *(v38 + 6) = *(*v101 + 80 * v18 + 24);
            a1 = v119[2];
            if (a1 <= v18)
            {
              goto LABEL_175;
            }

            *(v38 + 7) = re::StringID::operator==((v119[4] + 88 * v18 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v38 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v97, v35, v18, 1, &v135, &v136);
          }

          if (v125)
          {
            for (i = 0; i < v125; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v35, i, *(v127 + 8 * i));
            }
          }

          v40 = v119;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35 + 456, v119);
          re::DynamicArray<re::RigGraphConnection>::operator=(v35 + 496, v40 + 5);
          *(v35 + 536) = *(v40 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v35 + 544, v40 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v35 + 584, v40 + 16);
          *(v35 + 12) = *(v96 + 12);
          *(v35 + 16) = *(v96 + 16);
          re::StringID::operator=((v35 + 24), (v96 + 24));
          re::DynamicString::operator=((v35 + 40), (v96 + 40));
          *(v35 + 72) = *(v96 + 72);
          goto LABEL_104;
        }

LABEL_163:
        v131[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v152 = 136315906;
        *&v152[4] = "operator[]";
        *&v152[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v152[14] = 797;
        *&v152[18] = 2048;
        *&v152[20] = v18;
        v153 = 2048;
        *v154 = a1;
        _os_log_send_and_compose_impl(v85, v131, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_167;
      }

      goto LABEL_83;
    }
  }

  v41 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v42 = v145;
  v43 = v144;
  v44 = BYTE8(v144);
LABEL_101:
  v35 = 0;
  if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))(v43, v42);
    v35 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v143[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v137);
  if (v137[0] && (v138 & 1) == 0)
  {
    (*(*v137[0] + 40))();
  }

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

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v120);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v115);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v112[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v110[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v106 + 8);
  v45 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v104);
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  v103[0] = 0;
  v103[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v101[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v98);
  return v35;
}

uint64_t createAnimationBlendTreeFromAssetData<re::GenericSRT<float>>(unint64_t a1, void *a2)
{
  v5 = v137;
  v169 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  memset(v101, 0, sizeof(v101));
  v102 = 0x7FFFFFFFLL;
  re::StringID::invalid(v103);
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  v117 = 0x7FFFFFFFLL;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v122 = 0x7FFFFFFFLL;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v138 = 1;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  memset(v143, 0, sizeof(v143));
  re::RigEnvironment::init(v137, a2);
  v96 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v97, a1 + 80, a2);
  v134 = 0;
  v6 = v99;
  v99 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v101 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v100;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v101[8]);
  v135 = 0;
  v10 = v119;
  if (v119[2])
  {
    a1 = -1;
    v11 = 1;
    v12 = &str_67;
    v2 = 8;
    while (1)
    {
      v13 = v99;
      if (v99 >= *(&v98 + 1))
      {
        v14 = v99 + 1;
        if (*(&v98 + 1) < v99 + 1)
        {
          if (v98)
          {
            if (*(&v98 + 1))
            {
              v15 = 2 * *(&v98 + 1);
            }

            else
            {
              v15 = 8;
            }

            if (v15 <= v14)
            {
              v16 = v99 + 1;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v16);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v14);
            ++v100;
          }
        }

        v13 = v99;
      }

      v17 = *v101 + 80 * v13;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 32) = 1;
      *(v17 + 56) = &str_67;
      *(v17 + 64) = 0;
      *(v17 + 72) = &str_67;
      v99 = (v99 + 1);
      ++v100;
      a2 = v135;
      v18 = v119[2];
      if (v18 <= v135)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v101[8], (v119[4] + 88 * v135), &v135);
      ++v135;
      v10 = v119;
      if (v135 >= v119[2])
      {
        goto LABEL_20;
      }
    }

    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v49, v131, &v144, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v52, v131, &v144, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = v12;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v55, &v136, &v144, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v58, &v136, &v144, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v61, &v136, &v144, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v64, &v136, &v144, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v67, &v136, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v70, v131, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v73, v131, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v76, v131, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v79, v131, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v82, v131, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_20:
  if (v10[7])
  {
    v19 = 0;
    v12 = 0;
    while (1)
    {
      v5 = v10[9];
      v11 = &v5[v19];
      re::StringID::StringID(v131, &v5[v19 + 4]);
      v18 = v119[7];
      if (v18 <= v12)
      {
        goto LABEL_123;
      }

      re::StringID::StringID(&v135, (v119[9] + v19 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], (v11 + 80), v20 ^ (v20 >> 31), &v144);
      v21 = HIDWORD(v144);
      v22 = *&v101[24];
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], &v5[v19], v23 ^ (v23 >> 31), &v144);
      if (HIDWORD(v144) == 0x7FFFFFFF || v21 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v22 + 32 * v21);
      v11 = a2[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_127;
      }

      v5 = (*&v101[24] + 32 * HIDWORD(v144));
      re::DynamicArray<unsigned long>::add((*v101 + 80 * v11 + 8), v5 + 3);
      v18 = v5[3];
      v11 = v99;
      if (v99 <= v18)
      {
        goto LABEL_131;
      }

      v25 = *v101;
      *(*v101 + 80 * v18) = a2[3];
      v18 = v5[3];
      if (v11 <= v18)
      {
        goto LABEL_135;
      }

      re::StringID::operator=((v25 + 80 * v18 + 48), &v135);
      v11 = v5[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_139;
      }

      v26 = re::StringID::operator=((*v101 + 80 * v11 + 64), v131);
      if (v135)
      {
        if (v135)
        {
        }
      }

      if (v131[0])
      {
        if (v131[0])
        {
        }
      }

      ++v12;
      v10 = v119;
      v19 += 20;
      if (v12 >= v119[7])
      {
        goto LABEL_43;
      }
    }

    if (v135)
    {
      if (v135)
      {
      }
    }

    if (v131[0])
    {
      if (v131[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v137;
  if (!v99)
  {
LABEL_83:
    re::DynamicString::format(&v144, "A root node without a parent was not found.", v9);
    goto LABEL_100;
  }

  a1 = 0;
  v12 = 0;
  v27 = 0;
  a2 = 0;
  v18 = -1;
  v28 = 32;
  v11 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_119;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v119[4] + v28 - 32));
    if (isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_143;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
          goto LABEL_95;
        }
      }

      v31 = *(*v101 + a1 + 24);
      if (v31 <= 1)
      {
        v41 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v31 != 2)
      {
        if (v118 == 1)
        {
          goto LABEL_85;
        }

        v27 = 1;
      }

      goto LABEL_72;
    }

    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_147;
    }

    v32 = (v119[4] + v28);
    if (re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v33 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v120, v32, &v134);
      ++v134;
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_151;
      }

      if (*(*v101 + a1) >= v99)
      {
        v41 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v101 + a1 + 24))
      {
        v41 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_159;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
LABEL_95:
          v41 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v118 = 1;
      if (v27)
      {
LABEL_85:
        v41 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v27 = 0;
      goto LABEL_72;
    }

    v2 = v99;
    if (v99 <= a2)
    {
      goto LABEL_155;
    }

    if (*(*v101 + a1) >= v99)
    {
      v41 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v101 + a1 + 24))
    {
      break;
    }

    ++v12;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v28 += 88;
    if (a2 >= v2)
    {
      if (v18 != -1)
      {
        a1 = v119[2];
        if (a1 > v18)
        {
          v34 = v119[4];
          v35 = (*(*v97 + 32))(v97, 624, 8);
          v36 = re::Timeline::Timeline(v35, 45);
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          v37 = v36 + 80;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0u;
          *(v36 + 128) = 0u;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0u;
          *(v36 + 168) = 0u;
          *(v36 + 184) = 0;
          *(v36 + 192) = 0u;
          *(v36 + 208) = 0u;
          *(v36 + 224) = 0;
          *(v36 + 232) = 0u;
          *(v36 + 248) = 0u;
          *(v36 + 264) = 0;
          *(v36 + 528) = 0;
          *(v36 + 536) = 0;
          *(v36 + 568) = 0;
          *(v36 + 560) = 0;
          *(v36 + 544) = 0u;
          *(v36 + 616) = 0;
          *(v36 + 576) = 0u;
          *(v36 + 592) = 0u;
          *(v36 + 608) = 0;
          *(v36 + 488) = 0u;
          *(v36 + 504) = 0u;
          *(v36 + 520) = 0;
          *(v36 + 272) = 0u;
          *(v36 + 288) = 0u;
          *(v36 + 304) = 0u;
          *(v36 + 320) = 0u;
          *(v36 + 336) = 0u;
          *(v36 + 352) = 0u;
          *(v36 + 368) = 0u;
          *(v36 + 384) = 0u;
          *(v36 + 400) = 0;
          *(v36 + 440) = 0;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 480) = 0;
          *(v36 + 448) = 0u;
          *(v36 + 464) = 0u;
          *v36 = &unk_1F5CC2F00;
          re::FixedArray<unsigned long>::init<>((v36 + 304), v97, v134);
          re::FixedArray<unsigned long>::init<>((v35 + 328), v97, v134 + 1);
          re::FixedArray<unsigned long>::init<>((v35 + 352), v97, v134);
          *(v35 + 416) = v97;
          re::DynamicArray<re::StringID>::setCapacity((v35 + 416), v12);
          ++*(v35 + 440);
          v135 = 0;
          v136 = 0;
          if (v118 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v114[1], v97, v103, v137);
            re::AnimationBlendTreeBuilder<re::GenericSRT<float>>::buildRig(v131, &v97, v35, v18, &v135);
            if (LOBYTE(v131[0]) != 1)
            {
              v42 = v133;
              v43 = v131[3];
              v44 = v132;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v114[1], *(v34 + 88 * v18 + 8), "output", "output", "", 0, v128);
            if ((v128[0] & 1) == 0 && v129)
            {
              if (BYTE8(v129))
              {
                (*(*v129 + 40))();
              }

              v130 = 0u;
              v129 = 0u;
            }

            v155 = 0;
            *&v154[2] = 0;
            v156 = 1;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v160 = 0;
            v163 = 0;
            v161 = 0;
            v162 = 0;
            v168 = 0;
            v165 = 0u;
            v166 = 0u;
            v164 = 0;
            v167 = 0;
            *&v152[16] = v137;
            v152[24] = 0;
            *v152 = v97;
            *&v152[8] = 0;
            re::RigGraphCompilation::init(&v154[2], v97);
            re::RigGraphSystem::buildFromDefinition(v97, v103, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 120, &v146 + 1);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 160, v149);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 200, v150);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 240, v151);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v151);
            re::DynamicArray<re::StringID>::deinit(v150);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v149);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v146 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v144);
            re::RigGraphCompilation::~RigGraphCompilation(&v154[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize((v35 + 416), v12);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v35 + 280), v97, v99);
            *(v35 + 376) = v97;
            re::DynamicArray<re::StringID>::setCapacity((v35 + 376), 0);
            ++*(v35 + 400);
            re::DynamicArray<re::StringID>::resize((v35 + 376), v99);
            if (!*(v35 + 288))
            {
LABEL_167:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              *&v152[14] = 468;
              *&v152[18] = 2048;
              *&v152[20] = 0;
              v153 = 2048;
              *v154 = 0;
              _os_log_send_and_compose_impl(v88, v131, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
              goto LABEL_171;
            }

            v38 = *(v35 + 296);
            *v38 = 1065353216;
            a1 = v99;
            if (v99 <= v18)
            {
LABEL_171:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              *&v152[14] = 789;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v91, v131, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              *&v152[14] = 797;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v94, v131, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
            }

            *(v38 + 6) = *(*v101 + 80 * v18 + 24);
            a1 = v119[2];
            if (a1 <= v18)
            {
              goto LABEL_175;
            }

            *(v38 + 7) = re::StringID::operator==((v119[4] + 88 * v18 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v38 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v97, v35, v18, 1, &v135, &v136);
          }

          if (v125)
          {
            for (i = 0; i < v125; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v35, i, *(v127 + 8 * i));
            }
          }

          v40 = v119;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35 + 456, v119);
          re::DynamicArray<re::RigGraphConnection>::operator=(v35 + 496, v40 + 5);
          *(v35 + 536) = *(v40 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v35 + 544, v40 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v35 + 584, v40 + 16);
          *(v35 + 12) = *(v96 + 12);
          *(v35 + 16) = *(v96 + 16);
          re::StringID::operator=((v35 + 24), (v96 + 24));
          re::DynamicString::operator=((v35 + 40), (v96 + 40));
          *(v35 + 72) = *(v96 + 72);
          goto LABEL_104;
        }

LABEL_163:
        v131[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v152 = 136315906;
        *&v152[4] = "operator[]";
        *&v152[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v152[14] = 797;
        *&v152[18] = 2048;
        *&v152[20] = v18;
        v153 = 2048;
        *v154 = a1;
        _os_log_send_and_compose_impl(v85, v131, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_167;
      }

      goto LABEL_83;
    }
  }

  v41 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v42 = v145;
  v43 = v144;
  v44 = BYTE8(v144);
LABEL_101:
  v35 = 0;
  if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))(v43, v42);
    v35 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v143[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v137);
  if (v137[0] && (v138 & 1) == 0)
  {
    (*(*v137[0] + 40))();
  }

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

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v120);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v115);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v112[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v110[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v106 + 8);
  v45 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v104);
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  v103[0] = 0;
  v103[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v101[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v98);
  return v35;
}

uint64_t createAnimationBlendTreeFromAssetData<re::SkeletalPose>(unint64_t a1, void *a2)
{
  v5 = v137;
  v169 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  memset(v101, 0, sizeof(v101));
  v102 = 0x7FFFFFFFLL;
  re::StringID::invalid(v103);
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  v117 = 0x7FFFFFFFLL;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v122 = 0x7FFFFFFFLL;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v138 = 1;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  memset(v143, 0, sizeof(v143));
  re::RigEnvironment::init(v137, a2);
  v96 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v97, a1 + 80, a2);
  v134 = 0;
  v6 = v99;
  v99 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v101 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v100;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v101[8]);
  v135 = 0;
  v10 = v119;
  if (v119[2])
  {
    a1 = -1;
    v11 = 1;
    v12 = &str_67;
    v2 = 8;
    while (1)
    {
      v13 = v99;
      if (v99 >= *(&v98 + 1))
      {
        v14 = v99 + 1;
        if (*(&v98 + 1) < v99 + 1)
        {
          if (v98)
          {
            if (*(&v98 + 1))
            {
              v15 = 2 * *(&v98 + 1);
            }

            else
            {
              v15 = 8;
            }

            if (v15 <= v14)
            {
              v16 = v99 + 1;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v16);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v14);
            ++v100;
          }
        }

        v13 = v99;
      }

      v17 = *v101 + 80 * v13;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 32) = 1;
      *(v17 + 56) = &str_67;
      *(v17 + 64) = 0;
      *(v17 + 72) = &str_67;
      v99 = (v99 + 1);
      ++v100;
      a2 = v135;
      v18 = v119[2];
      if (v18 <= v135)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v101[8], (v119[4] + 88 * v135), &v135);
      ++v135;
      v10 = v119;
      if (v135 >= v119[2])
      {
        goto LABEL_20;
      }
    }

    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v49, v131, &v144, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v52, v131, &v144, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = v12;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v55, &v136, &v144, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v58, &v136, &v144, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v61, &v136, &v144, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v64, &v136, &v144, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v67, &v136, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v70, v131, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v73, v131, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v76, v131, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v79, v131, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v82, v131, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_20:
  if (v10[7])
  {
    v19 = 0;
    v12 = 0;
    while (1)
    {
      v5 = v10[9];
      v11 = &v5[v19];
      re::StringID::StringID(v131, &v5[v19 + 4]);
      v18 = v119[7];
      if (v18 <= v12)
      {
        goto LABEL_123;
      }

      re::StringID::StringID(&v135, (v119[9] + v19 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], (v11 + 80), v20 ^ (v20 >> 31), &v144);
      v21 = HIDWORD(v144);
      v22 = *&v101[24];
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], &v5[v19], v23 ^ (v23 >> 31), &v144);
      if (HIDWORD(v144) == 0x7FFFFFFF || v21 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v22 + 32 * v21);
      v11 = a2[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_127;
      }

      v5 = (*&v101[24] + 32 * HIDWORD(v144));
      re::DynamicArray<unsigned long>::add((*v101 + 80 * v11 + 8), v5 + 3);
      v18 = v5[3];
      v11 = v99;
      if (v99 <= v18)
      {
        goto LABEL_131;
      }

      v25 = *v101;
      *(*v101 + 80 * v18) = a2[3];
      v18 = v5[3];
      if (v11 <= v18)
      {
        goto LABEL_135;
      }

      re::StringID::operator=((v25 + 80 * v18 + 48), &v135);
      v11 = v5[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_139;
      }

      v26 = re::StringID::operator=((*v101 + 80 * v11 + 64), v131);
      if (v135)
      {
        if (v135)
        {
        }
      }

      if (v131[0])
      {
        if (v131[0])
        {
        }
      }

      ++v12;
      v10 = v119;
      v19 += 20;
      if (v12 >= v119[7])
      {
        goto LABEL_43;
      }
    }

    if (v135)
    {
      if (v135)
      {
      }
    }

    if (v131[0])
    {
      if (v131[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v137;
  if (!v99)
  {
LABEL_83:
    re::DynamicString::format(&v144, "A root node without a parent was not found.", v9);
    goto LABEL_100;
  }

  a1 = 0;
  v12 = 0;
  v27 = 0;
  a2 = 0;
  v18 = -1;
  v28 = 32;
  v11 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_119;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v119[4] + v28 - 32));
    if (isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_143;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
          goto LABEL_95;
        }
      }

      v31 = *(*v101 + a1 + 24);
      if (v31 <= 1)
      {
        v41 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v31 != 2)
      {
        if (v118 == 1)
        {
          goto LABEL_85;
        }

        v27 = 1;
      }

      goto LABEL_72;
    }

    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_147;
    }

    v32 = (v119[4] + v28);
    if (re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v33 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v120, v32, &v134);
      ++v134;
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_151;
      }

      if (*(*v101 + a1) >= v99)
      {
        v41 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v101 + a1 + 24))
      {
        v41 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_159;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
LABEL_95:
          v41 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v118 = 1;
      if (v27)
      {
LABEL_85:
        v41 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v27 = 0;
      goto LABEL_72;
    }

    v2 = v99;
    if (v99 <= a2)
    {
      goto LABEL_155;
    }

    if (*(*v101 + a1) >= v99)
    {
      v41 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v101 + a1 + 24))
    {
      break;
    }

    ++v12;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v28 += 88;
    if (a2 >= v2)
    {
      if (v18 != -1)
      {
        a1 = v119[2];
        if (a1 > v18)
        {
          v34 = v119[4];
          v35 = (*(*v97 + 32))(v97, 624, 8);
          v36 = re::Timeline::Timeline(v35, 46);
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          v37 = v36 + 80;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0u;
          *(v36 + 128) = 0u;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0u;
          *(v36 + 168) = 0u;
          *(v36 + 184) = 0;
          *(v36 + 192) = 0u;
          *(v36 + 208) = 0u;
          *(v36 + 224) = 0;
          *(v36 + 232) = 0u;
          *(v36 + 248) = 0u;
          *(v36 + 264) = 0;
          *(v36 + 528) = 0;
          *(v36 + 536) = 0;
          *(v36 + 568) = 0;
          *(v36 + 560) = 0;
          *(v36 + 544) = 0u;
          *(v36 + 616) = 0;
          *(v36 + 576) = 0u;
          *(v36 + 592) = 0u;
          *(v36 + 608) = 0;
          *(v36 + 488) = 0u;
          *(v36 + 504) = 0u;
          *(v36 + 520) = 0;
          *(v36 + 272) = 0u;
          *(v36 + 288) = 0u;
          *(v36 + 304) = 0u;
          *(v36 + 320) = 0u;
          *(v36 + 336) = 0u;
          *(v36 + 352) = 0u;
          *(v36 + 368) = 0u;
          *(v36 + 384) = 0u;
          *(v36 + 400) = 0;
          *(v36 + 440) = 0;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 480) = 0;
          *(v36 + 448) = 0u;
          *(v36 + 464) = 0u;
          *v36 = &unk_1F5CC3060;
          re::FixedArray<unsigned long>::init<>((v36 + 304), v97, v134);
          re::FixedArray<unsigned long>::init<>((v35 + 328), v97, v134 + 1);
          re::FixedArray<unsigned long>::init<>((v35 + 352), v97, v134);
          *(v35 + 416) = v97;
          re::DynamicArray<re::StringID>::setCapacity((v35 + 416), v12);
          ++*(v35 + 440);
          v135 = 0;
          v136 = 0;
          if (v118 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v114[1], v97, v103, v137);
            re::AnimationBlendTreeBuilder<re::SkeletalPose>::buildRig(v131, &v97, v35, v18, &v135);
            if (LOBYTE(v131[0]) != 1)
            {
              v42 = v133;
              v43 = v131[3];
              v44 = v132;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v114[1], *(v34 + 88 * v18 + 8), "output", "output", "", 0, v128);
            if ((v128[0] & 1) == 0 && v129)
            {
              if (BYTE8(v129))
              {
                (*(*v129 + 40))();
              }

              v130 = 0u;
              v129 = 0u;
            }

            v155 = 0;
            *&v154[2] = 0;
            v156 = 1;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v160 = 0;
            v163 = 0;
            v161 = 0;
            v162 = 0;
            v168 = 0;
            v165 = 0u;
            v166 = 0u;
            v164 = 0;
            v167 = 0;
            *&v152[16] = v137;
            v152[24] = 0;
            *v152 = v97;
            *&v152[8] = 0;
            re::RigGraphCompilation::init(&v154[2], v97);
            re::RigGraphSystem::buildFromDefinition(v97, v103, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 120, &v146 + 1);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 160, v149);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 200, v150);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 240, v151);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v151);
            re::DynamicArray<re::StringID>::deinit(v150);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v149);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v146 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v144);
            re::RigGraphCompilation::~RigGraphCompilation(&v154[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize((v35 + 416), v12);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v35 + 280), v97, v99);
            *(v35 + 376) = v97;
            re::DynamicArray<re::StringID>::setCapacity((v35 + 376), 0);
            ++*(v35 + 400);
            re::DynamicArray<re::StringID>::resize((v35 + 376), v99);
            if (!*(v35 + 288))
            {
LABEL_167:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              *&v152[14] = 468;
              *&v152[18] = 2048;
              *&v152[20] = 0;
              v153 = 2048;
              *v154 = 0;
              _os_log_send_and_compose_impl(v88, v131, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
              goto LABEL_171;
            }

            v38 = *(v35 + 296);
            *v38 = 1065353216;
            a1 = v99;
            if (v99 <= v18)
            {
LABEL_171:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              *&v152[14] = 789;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v91, v131, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              *&v152[14] = 797;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v94, v131, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
            }

            *(v38 + 6) = *(*v101 + 80 * v18 + 24);
            a1 = v119[2];
            if (a1 <= v18)
            {
              goto LABEL_175;
            }

            *(v38 + 7) = re::StringID::operator==((v119[4] + 88 * v18 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v38 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v97, v35, v18, 1, &v135, &v136);
          }

          if (v125)
          {
            for (i = 0; i < v125; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v35, i, *(v127 + 8 * i));
            }
          }

          v40 = v119;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35 + 456, v119);
          re::DynamicArray<re::RigGraphConnection>::operator=(v35 + 496, v40 + 5);
          *(v35 + 536) = *(v40 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v35 + 544, v40 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v35 + 584, v40 + 16);
          *(v35 + 12) = *(v96 + 12);
          *(v35 + 16) = *(v96 + 16);
          re::StringID::operator=((v35 + 24), (v96 + 24));
          re::DynamicString::operator=((v35 + 40), (v96 + 40));
          *(v35 + 72) = *(v96 + 72);
          goto LABEL_104;
        }

LABEL_163:
        v131[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v152 = 136315906;
        *&v152[4] = "operator[]";
        *&v152[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v152[14] = 797;
        *&v152[18] = 2048;
        *&v152[20] = v18;
        v153 = 2048;
        *v154 = a1;
        _os_log_send_and_compose_impl(v85, v131, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_167;
      }

      goto LABEL_83;
    }
  }

  v41 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v42 = v145;
  v43 = v144;
  v44 = BYTE8(v144);
LABEL_101:
  v35 = 0;
  if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))(v43, v42);
    v35 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v143[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v137);
  if (v137[0] && (v138 & 1) == 0)
  {
    (*(*v137[0] + 40))();
  }

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

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v120);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v115);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v112[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v110[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v106 + 8);
  v45 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v104);
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  v103[0] = 0;
  v103[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v101[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v98);
  return v35;
}

uint64_t re::Allocator::create<re::EventTimeline>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 88, 8);
  result = re::Timeline::Timeline(v1, 48);
  *(result + 72) = 0;
  *result = &unk_1F5CB1130;
  *(result + 80) = 0;
  return result;
}

uint64_t re::Allocator::create<re::BlendShapeWeightsAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 216, 8);
  result = re::Timeline::Timeline(v1, 50);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 128) = 0;
  *(result + 168) = 0;
  *(result + 208) = 0;
  *result = &unk_1F5CC31C0;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::BlendShapeWeightsAnimationAssetData,re::BlendShapeWeightsAnimation>(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(&v36, 3uLL);
  ++v39;
  if (*(a1 + 88) == 1)
  {
    re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v43, a1 + 192);
    v6 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(&v36, &v43);
    if (v43)
    {
    }

    v7 = v40;
    memset(v42, 0, 32);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v42[24], *v7);
    re::Optional<re::BlendShapeWeights>::Optional(&v43, v42);
    re::Optional<re::BlendShapeWeights>::operator=(a2 + 88, &v43);
    if (v43 == 1)
    {
      re::BlendShapeWeights::~BlendShapeWeights((&v43 + 8));
    }

    re::BlendShapeWeights::~BlendShapeWeights(v42);
    v5 = re::FixedArray<float>::operator=((a2 + 96), (a1 + 96));
  }

  if (*(a1 + 120) == 1)
  {
    v8 = v38;
    if (!v38)
    {
      goto LABEL_19;
    }

    v9 = 0;
    v10 = v40;
    v11 = *(a1 + 248);
    while (1)
    {
      v12 = v10[v9];
      if (*(v12 + 32) == v11)
      {
        if (!v11)
        {
LABEL_18:
          if (v9 >= v8)
          {
LABEL_19:
            re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v43, a1 + 232);
            v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(&v36, &v43);
            if (v43)
            {
            }

            v8 = v38;
            v9 = v38 - 1;
          }

          if (v8 > v9)
          {
            v16 = v40;
            memset(v42, 0, 32);
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v42[24], v16[v9]);
            re::Optional<re::BlendShapeWeights>::Optional(&v43, v42);
            re::Optional<re::BlendShapeWeights>::operator=(a2 + 128, &v43);
            if (v43 == 1)
            {
              re::BlendShapeWeights::~BlendShapeWeights((&v43 + 8));
            }

            re::BlendShapeWeights::~BlendShapeWeights(v42);
            v5 = re::FixedArray<float>::operator=((a2 + 136), (a1 + 128));
            break;
          }

          v41 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v42 = 136315906;
          *&v42[4] = "operator[]";
          *&v42[12] = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          *&v42[14] = 789;
          *&v42[18] = 2048;
          *&v42[20] = v9;
          *&v42[28] = 2048;
          *&v42[30] = v8;
          _os_log_send_and_compose_impl(v32, &v41, &v43, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v42, 38, v36, v37);
          _os_crash_msg();
          __break(1u);
LABEL_61:
          v41 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v33 = MEMORY[0x1E69E9C10];
          v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v42 = 136315906;
          *&v42[4] = "operator[]";
          *&v42[12] = 1024;
          if (v34)
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          *&v42[14] = 789;
          *&v42[18] = 2048;
          *&v42[20] = v9;
          *&v42[28] = 2048;
          *&v42[30] = v8;
          _os_log_send_and_compose_impl(v35, &v41, &v43, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v42, 38, v36, v37);
          _os_crash_msg();
          __break(1u);
        }

        v13 = *(v12 + 40);
        v14 = *(a1 + 264);
        v15 = 16 * v11;
        while (1)
        {
          v5 = re::StringID::operator==(v13, v14);
          if (!v5)
          {
            break;
          }

          v13 += 2;
          v14 += 2;
          v15 -= 16;
          if (!v15)
          {
            goto LABEL_18;
          }
        }
      }

      if (++v9 == v8)
      {
        goto LABEL_19;
      }
    }
  }

  if (*(a1 + 152) != 1)
  {
    goto LABEL_45;
  }

  v8 = v38;
  if (!v38)
  {
    goto LABEL_38;
  }

  v9 = 0;
  v17 = v40;
  v18 = *(a1 + 288);
  while (1)
  {
    v19 = v17[v9];
    if (*(v19 + 32) == v18)
    {
      break;
    }

LABEL_35:
    if (++v9 == v8)
    {
      goto LABEL_38;
    }
  }

  if (v18)
  {
    v20 = *(v19 + 40);
    v21 = *(a1 + 304);
    v22 = 16 * v18;
    do
    {
      v5 = re::StringID::operator==(v20, v21);
      if (!v5)
      {
        goto LABEL_35;
      }

      v20 += 2;
      v21 += 2;
      v22 -= 16;
    }

    while (v22);
  }

  if (v9 >= v8)
  {
LABEL_38:
    re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v43, a1 + 272);
    v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(&v36, &v43);
    if (v43)
    {
    }

    v8 = v38;
    v9 = v38 - 1;
  }

  if (v8 <= v9)
  {
    goto LABEL_61;
  }

  v23 = v40;
  memset(v42, 0, 32);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v42[24], v23[v9]);
  re::Optional<re::BlendShapeWeights>::Optional(&v43, v42);
  re::Optional<re::BlendShapeWeights>::operator=(a2 + 168, &v43);
  if (v43 == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((&v43 + 8));
  }

  re::BlendShapeWeights::~BlendShapeWeights(v42);
  v5 = re::FixedArray<float>::operator=((a2 + 176), (a1 + 160));
LABEL_45:
  v24 = v36;
  if (v36)
  {
    v25 = v40;
    if (v40)
    {
      if (v38)
      {
        v26 = 8 * v38;
        v27 = v40;
        do
        {
          if (*v27)
          {

            *v27 = 0;
          }

          ++v27;
          v26 -= 8;
        }

        while (v26);
      }

      v5 = (*(*v24 + 40))(v24, v25);
    }
  }

  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v28 = *(a1 + 184);
  if (v28)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 208) = result;
  return result;
}

double re::Allocator::create<re::BlendShapeWeightsSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 59);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC3270;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::BlendShapeWeightsSampledAnimationAssetData,re::BlendShapeWeightsSampledAnimation>(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v20, a1 + 128);
  v5 = *(a1 + 104);
  if (*(a1 + 104))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 96);
      if (v9 <= v8)
      {
        break;
      }

      re::BlendShapeWeights::init((*(a2 + 104) + v6), &v20);
      v9 = *(a1 + 104);
      if (v9 <= v8)
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 96);
      if (v9 <= v8)
      {
        goto LABEL_18;
      }

      re::FixedArray<float>::operator=((*(a2 + 104) + v6), (*(a1 + 120) + v7));
      ++v8;
      v7 += 24;
      v6 += 32;
      if (v8 >= *(a1 + 104))
      {
        goto LABEL_7;
      }
    }

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

    v25 = 468;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_14:
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

    v25 = 797;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_18:
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

    v25 = 468;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  if (v20)
  {
  }

  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

uint64_t re::Allocator::create<re::BlendShapeWeightsAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 60);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC3320;
  return result;
}

double re::Allocator::create<re::BlendShapeWeightsKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 61);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC3480;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::BlendShapeWeightsKeyframeAnimationAssetData,re::BlendShapeWeightsKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v21, a1 + 160);
  v5 = *(a1 + 136);
  if (*(a1 + 136))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 112);
      if (v9 <= v8)
      {
        break;
      }

      re::BlendShapeWeights::init((*(a2 + 120) + v6), &v21);
      v9 = *(a1 + 136);
      if (v9 <= v8)
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 112);
      if (v9 <= v8)
      {
        goto LABEL_18;
      }

      re::FixedArray<float>::operator=((*(a2 + 120) + v6), (*(a1 + 152) + v7));
      ++v8;
      v7 += 24;
      v6 += 32;
      if (v8 >= *(a1 + 136))
      {
        goto LABEL_7;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v14, &v22, &v31, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 797;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  if (v21)
  {
  }

  *(a2 + 72) = *(a1 + 72);
  v10 = *(a1 + 96);
  *&v31 = *(a1 + 112);
  *(&v31 + 1) = v10;
  return re::FixedArray<int>::operator=((a2 + 80), &v31);
}

uint64_t re::internal::registerAndResolveTimelineDependencies(re::internal *this, const re::TimelineAssetData *a2, re::Timeline *a3)
{
  v149 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2) - 1;
  result = 0;
  switch(v3)
  {
    case 0:
      v71 = *(this + 10);
      if (v71)
      {
        v72 = atomic_load((v71 + 896));
        if (v72 == 3)
        {
          return 2;
        }
      }

      re::AssetHandle::AssetHandle(v144, (this + 72));
      re::AssetHandle::~AssetHandle(v144);
      v9 = *(a2 + 9);
      return v9 == 0;
    case 1:
      v58 = *(a2 + 10);
      if (!v58)
      {
        return 0;
      }

      v11 = 0;
      v59 = *(a2 + 11);
      v60 = 1;
      for (i = 8; ; i += 24)
      {
        if (!*(v59 + 8 * v11))
        {
          v62 = *(this + 11);
          if (v62 <= v11)
          {
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v84 = MEMORY[0x1E69E9C10];
            v85 = v62;
            v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v86)
            {
              v87 = 3;
            }

            else
            {
              v87 = 2;
            }

            v139 = 797;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v85;
            _os_log_send_and_compose_impl(v87, &v136, v144, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_167:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v88 = MEMORY[0x1E69E9C10];
            v89 = v62;
            v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v90)
            {
              v91 = 3;
            }

            else
            {
              v91 = 2;
            }

            v139 = 797;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v89;
            _os_log_send_and_compose_impl(v91, &v136, v144, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_171:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v92 = MEMORY[0x1E69E9C10];
            v93 = v66;
            v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v94)
            {
              v95 = 3;
            }

            else
            {
              v95 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v93;
            _os_log_send_and_compose_impl(v95, &v136, v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_175:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v96 = MEMORY[0x1E69E9C10];
            v97 = v58;
            v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v98)
            {
              v99 = 3;
            }

            else
            {
              v99 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v97;
            _os_log_send_and_compose_impl(v99, &v136, v144, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_179:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v100 = MEMORY[0x1E69E9C10];
            v101 = v15;
            v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v102)
            {
              v103 = 3;
            }

            else
            {
              v103 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v101;
            _os_log_send_and_compose_impl(v103, &v136, v144, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_183:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v104 = MEMORY[0x1E69E9C10];
            v105 = v19;
            v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v106)
            {
              v107 = 3;
            }

            else
            {
              v107 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v105;
            _os_log_send_and_compose_impl(v107, &v136, v144, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_187:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v108 = MEMORY[0x1E69E9C10];
            v109 = v23;
            v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v110)
            {
              v111 = 3;
            }

            else
            {
              v111 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v109;
            _os_log_send_and_compose_impl(v111, &v136, v144, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_191:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v112 = MEMORY[0x1E69E9C10];
            v113 = v36;
            v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v114)
            {
              v115 = 3;
            }

            else
            {
              v115 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v113;
            _os_log_send_and_compose_impl(v115, &v136, v144, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_195:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v116 = MEMORY[0x1E69E9C10];
            v117 = v40;
            v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v118)
            {
              v119 = 3;
            }

            else
            {
              v119 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v117;
            _os_log_send_and_compose_impl(v119, &v136, v144, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_199:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v120 = MEMORY[0x1E69E9C10];
            v121 = v70;
            v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v122)
            {
              v123 = 3;
            }

            else
            {
              v123 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v121;
            _os_log_send_and_compose_impl(v123, &v136, v144, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_203:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v124 = MEMORY[0x1E69E9C10];
            v125 = v76;
            v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v126)
            {
              v127 = 3;
            }

            else
            {
              v127 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v125;
            _os_log_send_and_compose_impl(v127, &v136, v144, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
LABEL_207:
            v136 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            *v144 = 0u;
            v128 = MEMORY[0x1E69E9C10];
            v129 = v80;
            v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            v138 = 1024;
            if (v130)
            {
              v131 = 3;
            }

            else
            {
              v131 = 2;
            }

            v139 = 468;
            v140 = 2048;
            v141 = v11;
            v142 = 2048;
            v143 = v129;
            _os_log_send_and_compose_impl(v131, &v136, v144, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v132, v133);
            _os_crash_msg();
            __break(1u);
          }

          v63 = *(*(this + 13) + i);
          if (v63)
          {
            v64 = atomic_load((v63 + 896));
            if (v64 == 3)
            {
              return 2;
            }

            v62 = *(this + 11);
          }

          if (v62 <= v11)
          {
            goto LABEL_167;
          }

          re::AssetHandle::AssetHandle(&v134, (*(this + 13) + i - 8));
          v66 = *(a2 + 10);
          if (v66 <= v11)
          {
            goto LABEL_171;
          }

          *(*(a2 + 11) + 8 * v11) = Timeline;
          re::AssetHandle::~AssetHandle(&v134);
          v58 = *(a2 + 10);
          if (v58 <= v11)
          {
            goto LABEL_175;
          }

          v59 = *(a2 + 11);
          v60 &= *(v59 + 8 * v11) != 0;
        }

        if (++v11 >= v58)
        {
          return (v60 & 1) == 0;
        }
      }

    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 59:
      v7 = *(this + 11);
      if (v7)
      {
        v8 = atomic_load((v7 + 896));
        if (v8 == 3)
        {
          return 2;
        }
      }

      re::AssetHandle::AssetHandle(v144, (this + 80));
      re::AssetHandle::~AssetHandle(v144);
      v9 = *(a2 + 10);
      return v9 == 0;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 36:
    case 37:
    case 47:
    case 49:
    case 58:
    case 60:
      return result;
    case 17:
      v50 = *(this + 25);
      if (!v50)
      {
        goto LABEL_102;
      }

      v51 = atomic_load((v50 + 896));
      if (v51 == 3)
      {
        return 2;
      }

      v52 = *(this + 25);
      if (!v52 || (v53 = atomic_load((v52 + 896)), v53 != 2))
      {
        v81 = (this + 192);
        goto LABEL_157;
      }

      v54 = *(this + 25);
      if (!v54)
      {
        goto LABEL_102;
      }

      v55 = *(v54 + 280);
      if (v55 == re::SkeletonAsset::assetType(0))
      {
        v56 = re::AssetHandle::blockUntilLoaded<re::SkeletonAsset>((this + 192));
        v144[0] = 0;
        if (*(a2 + 88) == 1)
        {
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v144, *(a2 + 22));
          re::SkeletalPoseJointDefinition::setSkeleton(v144[0], (v56 + 88));
        }

        *v137 = 0;
        if (*(a2 + 184) == 1)
        {
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v137, *(a2 + 34));
          if (*v137 != v144[0])
          {
            re::SkeletalPoseJointDefinition::setSkeleton(*v137, (v56 + 88));
          }
        }

        v134 = 0;
        if (*(a2 + 280) == 1)
        {
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v134, *(a2 + 46));
          v57 = v134;
          if (v134 != v144[0] && v134 != *v137)
          {
            re::SkeletalPoseJointDefinition::setSkeleton(v134, (v56 + 88));
            v57 = v134;
          }

          if (v57)
          {
          }
        }

        if (*v137)
        {
        }

        if (v144[0])
        {
          v49 = v144[0] + 8;
          goto LABEL_101;
        }
      }

      return 0;
    case 25:
      v41 = *(this + 21);
      if (!v41)
      {
        goto LABEL_102;
      }

      v42 = atomic_load((v41 + 896));
      if (v42 == 3)
      {
        return 2;
      }

      v43 = *(this + 21);
      if (!v43 || (v44 = atomic_load((v43 + 896)), v44 != 2))
      {
        v81 = (this + 160);
        goto LABEL_157;
      }

      v45 = *(this + 21);
      if (!v45)
      {
        goto LABEL_102;
      }

      v46 = *(v45 + 280);
      if (v46 != re::SkeletonAsset::assetType(0) || !*(a2 + 14))
      {
        return 0;
      }

      v30 = *(*(a2 + 15) + 80);
      if (v30)
      {
        v47 = (v30 + 8);
        v32 = (this + 160);
        goto LABEL_79;
      }

      v82 = (this + 160);
      goto LABEL_160;
    case 33:
      v24 = *(this + 17);
      if (!v24)
      {
        goto LABEL_102;
      }

      v25 = atomic_load((v24 + 896));
      if (v25 == 3)
      {
        return 2;
      }

      v26 = *(this + 17);
      if (v26 && (v27 = atomic_load((v26 + 896)), v27 == 2))
      {
        v28 = *(this + 17);
        if (v28)
        {
          v29 = *(v28 + 280);
          if (v29 == re::SkeletonAsset::assetType(0) && *(a2 + 12))
          {
            v30 = *(*(a2 + 13) + 80);
            if (v30)
            {
              v31 = (v30 + 8);
              v32 = (this + 128);
LABEL_79:
              v48 = re::AssetHandle::blockUntilLoaded<re::SkeletonAsset>(v32);
              re::SkeletalPoseJointDefinition::setSkeleton(v30, (v48 + 88));
              v49 = (v30 + 8);
LABEL_101:
            }

            else
            {
              v82 = (this + 128);
LABEL_160:
              v83 = re::AssetHandle::blockUntilLoaded<re::SkeletonAsset>(v82);
              re::SkeletalPoseJointDefinition::setSkeleton(0, (v83 + 88));
            }
          }
        }

        else
        {
LABEL_102:
          re::SkeletonAsset::assetType(0);
        }

        return 0;
      }

      else
      {
        v81 = (this + 128);
LABEL_157:
        re::AssetHandle::loadAsync(v81);
        return 1;
      }

    case 38:
      if (!*(this + 33))
      {
        return 0;
      }

      v37 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v134, (*(this + 35) + v37));
        if (!v135)
        {
          goto LABEL_152;
        }

        v38 = atomic_load((v135 + 896));
        if (v38 == 3)
        {
          goto LABEL_152;
        }

        v39 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v134);
        if (v39)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v39 + 16));
          v40 = *(a2 + 39);
          if (v40 <= v11)
          {
            goto LABEL_195;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v134);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v134);
        ++v11;
        v37 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 39:
      if (!*(this + 33))
      {
        return 0;
      }

      v73 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v134, (*(this + 35) + v73));
        if (!v135)
        {
          goto LABEL_152;
        }

        v74 = atomic_load((v135 + 896));
        if (v74 == 3)
        {
          goto LABEL_152;
        }

        v75 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v134);
        if (v75)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v75 + 16));
          v76 = *(a2 + 39);
          if (v76 <= v11)
          {
            goto LABEL_203;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v134);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v134);
        ++v11;
        v73 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 40:
      if (!*(this + 33))
      {
        return 0;
      }

      v16 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v134, (*(this + 35) + v16));
        if (!v135)
        {
          goto LABEL_152;
        }

        v17 = atomic_load((v135 + 896));
        if (v17 == 3)
        {
          goto LABEL_152;
        }

        v18 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v134);
        if (v18)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v18 + 16));
          v19 = *(a2 + 39);
          if (v19 <= v11)
          {
            goto LABEL_183;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v134);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v134);
        ++v11;
        v16 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 41:
      if (!*(this + 33))
      {
        return 0;
      }

      v33 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v134, (*(this + 35) + v33));
        if (!v135)
        {
          goto LABEL_152;
        }

        v34 = atomic_load((v135 + 896));
        if (v34 == 3)
        {
          goto LABEL_152;
        }

        v35 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v134);
        if (v35)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v35 + 16));
          v36 = *(a2 + 39);
          if (v36 <= v11)
          {
            goto LABEL_191;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v134);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v134);
        ++v11;
        v33 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 42:
      if (!*(this + 33))
      {
        return 0;
      }

      v77 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v134, (*(this + 35) + v77));
        if (!v135)
        {
          goto LABEL_152;
        }

        v78 = atomic_load((v135 + 896));
        if (v78 == 3)
        {
          goto LABEL_152;
        }

        v79 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v134);
        if (v79)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v79 + 16));
          v80 = *(a2 + 39);
          if (v80 <= v11)
          {
            goto LABEL_207;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v134);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v134);
        ++v11;
        v77 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 43:
      if (!*(this + 33))
      {
        return 0;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v134, (*(this + 35) + v10));
        if (!v135)
        {
          break;
        }

        v13 = atomic_load((v135 + 896));
        if (v13 == 3)
        {
          break;
        }

        v14 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v134);
        if (!v14)
        {
          re::AssetHandle::loadAsync(&v134);
          v12 = 1;
          goto LABEL_15;
        }

        re::AnimationBlendTree<float>::addClip(a2, v11, *(v14 + 16));
        v15 = *(a2 + 39);
        if (v15 <= v11)
        {
          goto LABEL_179;
        }

        if (*(*(a2 + 40) + 8 * v11))
        {
LABEL_15:
          re::AssetHandle::~AssetHandle(&v134);
          ++v11;
          v10 += 24;
          if (v11 >= *(this + 33))
          {
            return v12 & 1;
          }

          continue;
        }

        break;
      }

LABEL_152:
      re::AssetHandle::~AssetHandle(&v134);
      return 2;
    case 44:
      if (!*(this + 33))
      {
        return 0;
      }

      v20 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v134, (*(this + 35) + v20));
        if (!v135)
        {
          goto LABEL_152;
        }

        v21 = atomic_load((v135 + 896));
        if (v21 == 3)
        {
          goto LABEL_152;
        }

        v22 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v134);
        if (v22)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v22 + 16));
          v23 = *(a2 + 39);
          if (v23 <= v11)
          {
            goto LABEL_187;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v134);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v134);
        ++v11;
        v20 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 45:
      if (!*(this + 33))
      {
        return 0;
      }

      v67 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        re::AssetHandle::AssetHandle(&v134, (*(this + 35) + v67));
        if (!v135)
        {
          goto LABEL_152;
        }

        v68 = atomic_load((v135 + 896));
        if (v68 == 3)
        {
          goto LABEL_152;
        }

        v69 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v134);
        if (v69)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v69 + 16));
          v70 = *(a2 + 39);
          if (v70 <= v11)
          {
            goto LABEL_199;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v134);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v134);
        ++v11;
        v67 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }
      }

    default:
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected timeline type.", "!Unreachable code", "registerAndResolveTimelineDependencies", 2246);
      result = _os_crash("assertion failure: (!Unreachable code) Unexpected timeline type.");
      __break(1u);
      return result;
  }
}

uint64_t re::internal::destroy(uint64_t this, re::Timeline *a2, Allocator *a3)
{
  if (!this)
  {
    return this;
  }

  v4 = this;
  v5 = *(this + 8);
  if (v5 <= 14)
  {
    if (v5 > 12)
    {
      if (v5 != 13)
      {
LABEL_15:
        v6 = *(this + 192);
        if (!v6)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (v5 == 11)
      {
        v6 = *(this + 112);
        if (!v6)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (v5 != 12)
      {
        goto LABEL_17;
      }
    }

    v6 = *(this + 136);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v5 <= 16)
  {
    goto LABEL_15;
  }

  switch(v5)
  {
    case 17:
      v6 = *(this + 288);
      if (!v6)
      {
        break;
      }

      goto LABEL_16;
    case 18:
      v6 = *(this + 376);
      if (!v6)
      {
        break;
      }

      goto LABEL_16;
    case 50:
      v6 = *(this + 208);
      if (v6)
      {
LABEL_16:
        (**v6)(v6, a2, a3);
        (*(*a2 + 40))(a2, v6);
      }

      break;
  }

LABEL_17:
  (**v4)(v4, a2, a3);
  v7 = *(*a2 + 40);

  return v7(a2, v4);
}

void re::TimelineClipAssetData::~TimelineClipAssetData(re::TimelineClipAssetData *this)
{
  re::AssetHandle::~AssetHandle((this + 72));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::AssetHandle::~AssetHandle((this + 72));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::TimelineClipAssetData::clone(re::TimelineClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 176, 8);
  *v4 = &unk_1F5CC3608;
  v5 = *(this + 16);
  *(v4 + 8) = *(this + 1);
  *(v4 + 16) = v5;
  re::StringID::StringID((v4 + 24), (this + 24));
  re::DynamicString::DynamicString((v4 + 40), (this + 40));
  *v4 = &unk_1F5CBE660;
  re::AssetHandle::AssetHandle((v4 + 72), (this + 72));
  v6 = *(this + 96);
  *(v4 + 96) = v6;
  if (v6 == 1)
  {
    *(v4 + 104) = *(this + 13);
  }

  v7 = *(this + 112);
  *(v4 + 112) = v7;
  if (v7 == 1)
  {
    *(v4 + 120) = *(this + 15);
  }

  v8 = *(this + 8);
  *(v4 + 144) = *(this + 18);
  *(v4 + 128) = v8;
  v9 = *(this + 152);
  *(v4 + 152) = v9;
  if (v9 == 1)
  {
    *(v4 + 160) = *(this + 20);
  }

  v10 = *(this + 42);
  *(v4 + 172) = *(this + 172);
  *(v4 + 168) = v10;
  return v4;
}

void re::TimelineGroupAssetData::~TimelineGroupAssetData(re::TimelineGroupAssetData *this)
{
  re::DynamicArray<re::AssetHandle>::deinit(this + 72);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::AssetHandle>::deinit(this + 72);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::TimelineGroupAssetData::clone(re::TimelineGroupAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 112, 8);
  *v4 = &unk_1F5CC3608;
  v5 = *(this + 16);
  *(v4 + 8) = *(this + 1);
  *(v4 + 16) = v5;
  re::StringID::StringID((v4 + 24), (this + 24));
  re::DynamicString::DynamicString((v4 + 40), (this + 40));
  *v4 = &unk_1F5CBE6B8;
  re::DynamicArray<re::AssetHandle>::DynamicArray(v4 + 72, this + 9);
  return v4;
}

re::AssetHandle *anonymous namespace::findAssetHandle<re::Timeline>(re::AssetHandle *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  v6 = a2;
  if (a2)
  {
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a3, &v6, v5 ^ (v5 >> 31), &v7);
    return re::AssetHandle::AssetHandle(v3, (*(a3 + 16) + 48 * v8 + 16));
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
  }

  return result;
}

uint64_t re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 48 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 48 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 48 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 48 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_1637, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 40;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t anonymous namespace::loadTimeline(re::AssetHandle *a1)
{
  v1 = *(a1 + 1);
  if (v1)
  {
    v3 = *(v1 + 280);
    if (v3 == re::TimelineAsset::assetType(a1))
    {
      v4 = re::AssetHandle::loadedAsset<re::TimelineAsset>(a1);
      if (v4)
      {
        return *(v4 + 16);
      }

      re::AssetHandle::loadAsync(a1);
    }
  }

  else
  {
    re::TimelineAsset::assetType(a1);
  }

  return 0;
}

uint64_t re::AssetHandle::loadedAsset<re::TimelineAsset>(re::TimelineAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::TimelineAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::SkeletonAsset>(re::SkeletonAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::SkeletonAsset::assetType(a1);
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

re::StringID *re::SkeletalPoseJointDefinition::setSkeleton(re::SkeletalPoseJointDefinition *this, const re::Skeleton *a2)
{
  re::StringID::operator=(this + 3, a2);
  re::FixedArray<re::StringID>::operator=(this + 5, a2 + 2);
  re::FixedArray<unsigned int>::operator=(this + 8, a2 + 5);
  re::FixedArray<re::FixedArray<unsigned int>>::operator=(this + 11, a2 + 8);
  re::FixedArray<re::GenericSRT<float>>::operator=(this + 14, a2 + 11);
  re::FixedArray<re::Matrix4x4<float>>::operator=(this + 17, a2 + 14);

  return re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 160), a2 + 136);
}

void re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

re::IntrospectionOptionalBase *re::IntrospectionOptionalBase::IntrospectionOptionalBase(re::IntrospectionOptionalBase *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBA310;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  return this;
}

void *re::IntrospectionOptional<double>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<double>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<double>::setHasValue(uint64_t a1, uint64_t a2, int a3)
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

uint64_t re::IntrospectionOptional<double>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
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

uint64_t re::TimelineClipAssetData::TimelineClipAssetData(re::TimelineClipAssetData *this)
{
  result = re::TimelineAssetData::TimelineAssetData(this, 1);
  *result = &unk_1F5CBE660;
  *(result + 112) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  *(result + 168) = 1065353216;
  *(result + 172) = 0;
  return result;
}

uint64_t re::TimelineAssetData::TimelineAssetData(uint64_t a1, int a2)
{
  *a1 = &unk_1F5CC3608;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  return a1;
}

void re::FloatAnimationClipAssetData::~FloatAnimationClipAssetData(re::FloatAnimationClipAssetData *this)
{
  *this = &unk_1F5CBE800;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBE800;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::FloatAnimationClipAssetData::clone(re::FloatAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<float>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBE790;
  return result;
}

uint64_t re::AnimationClipAssetData<float>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<float>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBE800;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<float>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBE840;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::DoubleAnimationClipAssetData::~DoubleAnimationClipAssetData(re::DoubleAnimationClipAssetData *this)
{
  *this = &unk_1F5CBE908;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBE908;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::DoubleAnimationClipAssetData::clone(re::DoubleAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<double>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBE880;
  return result;
}

uint64_t re::AnimationClipAssetData<double>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<double>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBE908;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<double>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBE948;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::Vector2FAnimationClipAssetData::~Vector2FAnimationClipAssetData(re::Vector2FAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEA10;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEA10;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FAnimationClipAssetData::clone(re::Vector2FAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::Vector2<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBE988;
  return result;
}

uint64_t re::AnimationClipAssetData<re::Vector2<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEA10;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEA50;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::Vector3FAnimationClipAssetData::~Vector3FAnimationClipAssetData(re::Vector3FAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEB18;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEB18;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FAnimationClipAssetData::clone(re::Vector3FAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::Vector3<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEA90;
  return result;
}

uint64_t re::AnimationClipAssetData<re::Vector3<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEB18;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEB58;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::Vector4FAnimationClipAssetData::~Vector4FAnimationClipAssetData(re::Vector4FAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEC20;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEC20;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FAnimationClipAssetData::clone(re::Vector4FAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::Vector4<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEB98;
  return result;
}

uint64_t re::AnimationClipAssetData<re::Vector4<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEC20;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEC60;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::QuaternionFAnimationClipAssetData::~QuaternionFAnimationClipAssetData(re::QuaternionFAnimationClipAssetData *this)
{
  *this = &unk_1F5CBED28;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBED28;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFAnimationClipAssetData::clone(re::QuaternionFAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::Quaternion<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBECA0;
  return result;
}

uint64_t re::AnimationClipAssetData<re::Quaternion<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBED28;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBED68;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::SRTAnimationClipAssetData::~SRTAnimationClipAssetData(re::SRTAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEE30;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEE30;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SRTAnimationClipAssetData::clone(re::SRTAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::GenericSRT<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEDA8;
  return result;
}

uint64_t re::AnimationClipAssetData<re::GenericSRT<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEE30;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEE70;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::SkeletalPoseAnimationClipAssetData::~SkeletalPoseAnimationClipAssetData(re::SkeletalPoseAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEF38;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEF38;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SkeletalPoseAnimationClipAssetData::clone(re::SkeletalPoseAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::SkeletalPoseAssetData>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEEB0;
  return result;
}

uint64_t re::AnimationClipAssetData<re::SkeletalPoseAssetData>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEF38;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEF78;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::BlendShapeWeightsAnimationClipAssetData::~BlendShapeWeightsAnimationClipAssetData(re::BlendShapeWeightsAnimationClipAssetData *this)
{
  *this = &unk_1F5CBF040;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBF040;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::BlendShapeWeightsAnimationClipAssetData::clone(re::BlendShapeWeightsAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::BlendShapeWeightsAssetData>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEFB8;
  return result;
}

uint64_t re::AnimationClipAssetData<re::BlendShapeWeightsAssetData>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF040;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBF080;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 8uLL, 4uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionOptional<float>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<float>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<float>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<float>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::FloatAnimationAssetData::~FloatAnimationAssetData(re::FloatAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<float>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::FloatAnimationAssetData::clone(re::FloatAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 120, 8);
  result = re::FromToByAnimationAssetData<float>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CC3530;
  return result;
}

void *re::FromToByAnimationAssetData<float>::~FromToByAnimationAssetData(void *a1)
{
  *a1 = &unk_1F5CC35C8;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, a1[14]);
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString((a1 + 3));
  return a1;
}

re *re::internal::destroyPersistent<re::EasingFunction>(re *result, uint64_t a2, void (***a3)(void))
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

uint64_t re::FromToByAnimationAssetData<float>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<float>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC35C8;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  re::FromToByAnimationAssetData<float>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<float>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = 1;
  }

  *(a1 + 92) = *(a2 + 92);
LABEL_8:
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      *(a1 + 96) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 96) = 1;
  }

  *(a1 + 100) = *(a2 + 100);
LABEL_14:
  if ((*(a1 + 104) & 1) == 0)
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 104) = 1;
LABEL_19:
    *(a1 + 108) = *(a2 + 108);
    goto LABEL_20;
  }

  if (*(a2 + 104))
  {
    goto LABEL_19;
  }

  *(a1 + 104) = 0;
LABEL_20:
  v3 = *(a2 + 112);
  if (v3)
  {
    v3 = a1;
  }

  v4 = *(v2 + 112);
  if (v4)
  {
    v5 = re::globalAllocators(a1)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
  }

  *(v2 + 112) = v3;
  return v2;
}

void re::DoubleAnimationAssetData::~DoubleAnimationAssetData(re::DoubleAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<double>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::DoubleAnimationAssetData::clone(re::DoubleAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 144, 8);
  result = re::FromToByAnimationAssetData<double>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF140;
  return result;
}

uint64_t re::FromToByAnimationAssetData<double>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF1B0;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 136));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<double>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<double>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF1B0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  re::FromToByAnimationAssetData<double>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<double>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = 1;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_8:
  if (*(a1 + 104))
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      *(a1 + 104) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = *(a2 + 112);
LABEL_14:
  if ((*(a1 + 120) & 1) == 0)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 120) = 1;
LABEL_19:
    *(a1 + 128) = *(a2 + 128);
    goto LABEL_20;
  }

  if (*(a2 + 120))
  {
    goto LABEL_19;
  }

  *(a1 + 120) = 0;
LABEL_20:
  v3 = *(a2 + 136);
  if (v3)
  {
    v3 = a1;
  }

  v4 = *(v2 + 136);
  if (v4)
  {
    v5 = re::globalAllocators(a1)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
  }

  *(v2 + 136) = v3;
  return v2;
}

void *re::IntrospectionOptional<re::Vector2<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Vector2<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Vector2<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
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

uint64_t re::IntrospectionOptional<re::Vector2<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
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

void re::Vector2FAnimationAssetData::~Vector2FAnimationAssetData(re::Vector2FAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::Vector2<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FAnimationAssetData::clone(re::Vector2FAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 144, 8);
  result = re::FromToByAnimationAssetData<re::Vector2<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF270;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::Vector2<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF2E0;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 136));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector2<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF2E0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  re::FromToByAnimationAssetData<re::Vector2<float>>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector2<float>>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = 1;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_8:
  if (*(a1 + 104))
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      *(a1 + 104) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = *(a2 + 112);
LABEL_14:
  if ((*(a1 + 120) & 1) == 0)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 120) = 1;
LABEL_19:
    *(a1 + 128) = *(a2 + 128);
    goto LABEL_20;
  }

  if (*(a2 + 120))
  {
    goto LABEL_19;
  }

  *(a1 + 120) = 0;
LABEL_20:
  v3 = *(a2 + 136);
  if (v3)
  {
    v3 = a1;
  }

  v4 = *(v2 + 136);
  if (v4)
  {
    v5 = re::globalAllocators(a1)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
  }

  *(v2 + 136) = v3;
  return v2;
}

void re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 0x20uLL, 0x10uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionOptional<re::Vector3<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Vector3<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Vector3<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 16) = 0u;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Vector3<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int128 *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*result)
    {
      v2 = *a2;
    }

    else
    {
      *result = 1;
      v2 = v3;
    }

    *(result + 16) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::Vector3FAnimationAssetData::~Vector3FAnimationAssetData(re::Vector3FAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::Vector3<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FAnimationAssetData::clone(re::Vector3FAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 208, 16);
  result = re::FromToByAnimationAssetData<re::Vector3<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF3A0;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::Vector3<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF410;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 192));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector3<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF410;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  re::FromToByAnimationAssetData<re::Vector3<float>>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector3<float>>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      *(a1 + 96) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 96) = 1;
  }

  *(a1 + 112) = *(a2 + 112);
LABEL_8:
  if (*(a1 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      *(a1 + 128) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 128) = 1;
  }

  *(a1 + 144) = *(a2 + 144);
LABEL_14:
  if ((*(a1 + 160) & 1) == 0)
  {
    if ((*(a2 + 160) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 160) = 1;
LABEL_19:
    *(a1 + 176) = *(a2 + 176);
    goto LABEL_20;
  }

  if (*(a2 + 160))
  {
    goto LABEL_19;
  }

  *(a1 + 160) = 0;
LABEL_20:
  v3 = *(a2 + 192);
  if (v3)
  {
    v3 = a1;
  }

  v4 = *(v2 + 192);
  if (v4)
  {
    v5 = re::globalAllocators(a1)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
  }

  *(v2 + 192) = v3;
  return v2;
}

void *re::IntrospectionOptional<re::Vector4<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Vector4<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Vector4<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Vector4<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int128 *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*result)
    {
      v2 = *a2;
    }

    else
    {
      *result = 1;
      v2 = v3;
    }

    *(result + 16) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::Vector4FAnimationAssetData::~Vector4FAnimationAssetData(re::Vector4FAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::Vector4<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FAnimationAssetData::clone(re::Vector4FAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 208, 16);
  result = re::FromToByAnimationAssetData<re::Vector4<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF4D0;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::Vector4<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF540;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 192));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector4<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF540;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  re::FromToByAnimationAssetData<re::Vector3<float>>::operator=(v4, a2);
  return a1;
}

void *re::IntrospectionOptional<re::Quaternion<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Quaternion<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Quaternion<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 16) = xmmword_1E30474D0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Quaternion<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int128 *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*result)
    {
      v2 = *a2;
    }

    else
    {
      *result = 1;
      v2 = v3;
    }

    *(result + 16) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::QuaternionFAnimationAssetData::~QuaternionFAnimationAssetData(re::QuaternionFAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::Quaternion<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFAnimationAssetData::clone(re::QuaternionFAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 208, 16);
  result = re::FromToByAnimationAssetData<re::Quaternion<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF600;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::Quaternion<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF670;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 192));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Quaternion<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF670;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  re::FromToByAnimationAssetData<re::Vector3<float>>::operator=(v4, a2);
  return a1;
}

void *re::IntrospectionOptional<re::GenericSRT<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::GenericSRT<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::GenericSRT<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 16) = 0x3F8000003F800000;
    *(a2 + 24) = 1065353216;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0x3F80000000000000;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::GenericSRT<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(__n128 *a1, __n128 *a2)
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

void re::SRTAnimationAssetData::~SRTAnimationAssetData(re::SRTAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::GenericSRT<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::SRTAnimationAssetData::clone(re::SRTAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 304, 16);
  result = re::FromToByAnimationAssetData<re::GenericSRT<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF730;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::GenericSRT<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF7A0;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 288));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::GenericSRT<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF7A0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 160) = 0;
  *(v4 + 224) = 0;
  *(v4 + 288) = 0;
  re::FromToByAnimationAssetData<re::GenericSRT<float>>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::GenericSRT<float>>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      *(a1 + 96) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 96) = 1;
  }

  v3 = *(a2 + 112);
  v4 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v4;
  *(a1 + 112) = v3;
LABEL_8:
  if (*(a1 + 160))
  {
    if ((*(a2 + 160) & 1) == 0)
    {
      *(a1 + 160) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 160) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 160) = 1;
  }

  v5 = *(a2 + 176);
  v6 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v6;
  *(a1 + 176) = v5;
LABEL_14:
  if ((*(a1 + 224) & 1) == 0)
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 224) = 1;
LABEL_19:
    v7 = *(a2 + 240);
    v8 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v8;
    *(a1 + 240) = v7;
    goto LABEL_20;
  }

  if (*(a2 + 224))
  {
    goto LABEL_19;
  }

  *(a1 + 224) = 0;
LABEL_20:
  v9 = *(a2 + 288);
  if (v9)
  {
    v9 = a1;
  }

  v10 = *(v2 + 288);
  if (v10)
  {
    v11 = re::globalAllocators(a1)[2];
    (**v10)(v10);
    (*(*v11 + 40))(v11, v10);
  }

  *(v2 + 288) = v9;
  return v2;
}

void *re::IntrospectionOptional<re::SkeletalPoseAssetData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::SkeletalPoseAssetData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionOptional<re::SkeletalPoseAssetData>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4[0] = 1;
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::SkeletalPoseAssetData>::operator=(a2, v4);
  if (v4[0] == 1)
  {
    result = v5;
    if (v5)
    {
      if (v6)
      {
        return (*(*v5 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::IntrospectionOptional<re::SkeletalPoseAssetData>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

uint64_t re::Optional<re::SkeletalPoseAssetData>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::FixedArray<float>::operator=(v3, (a2 + 8));
    }

    else
    {
      re::FixedArray<CoreIKTransform>::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v5;
  }

  return a1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v4[0] = 1;
    re::FixedArray<re::GenericSRT<float>>::FixedArray(v5, a2);
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::SkeletalPoseAssetData>::operator=(a1, v4);
  if (v4[0] == 1)
  {
    result = v5[0];
    if (v5[0])
    {
      if (v5[1])
      {
        return (*(*v5[0] + 40))();
      }
    }
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::StringID>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::StringID>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::StringID>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::StringID>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::StringID>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::StringID>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::StringID>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::StringID>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::StringID>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::StringID>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v8 = re::DynamicArray<re::StringID>::add(this, v11);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::StringID>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void re::DynamicArray<re::StringID>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 16 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((result[4] + v8));
      ++v9;
      v8 += 16;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::StringID>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 16 * v4;
      do
      {
        v7 = (result[4] + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::StringID>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, void *a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::StringID>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::StringID>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::StringID>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  re::DynamicArray<re::StringID>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), &v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = 16 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a4, 0);
        re::TypeInfo::construct(v13, v11, a4, 0);
        v11 += 16;
        v12 -= 16;
      }

      while (v12);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::SkeletalPoseAnimationAssetData::~SkeletalPoseAnimationAssetData(re::SkeletalPoseAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 296);
  re::DynamicArray<re::StringID>::deinit(this + 256);
  re::DynamicArray<re::StringID>::deinit(this + 216);
  re::AssetHandle::~AssetHandle((this + 192));

  re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::~FromToByAnimationAssetData(this);
}

{
  re::DynamicArray<re::StringID>::deinit(this + 296);
  re::DynamicArray<re::StringID>::deinit(this + 256);
  re::DynamicArray<re::StringID>::deinit(this + 216);
  re::AssetHandle::~AssetHandle((this + 192));
  re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SkeletalPoseAnimationAssetData::clone(re::SkeletalPoseAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 336, 8);
  v5 = re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::FromToByAnimationAssetData(v4, this);
  *v5 = &unk_1F5CBF8F8;
  v6 = (v5 + 27);
  re::AssetHandle::AssetHandle((v5 + 24), (this + 192));
  re::DynamicArray<re::StringID>::DynamicArray(v6, this + 27);
  re::DynamicArray<re::StringID>::DynamicArray(v4 + 256, this + 32);
  re::DynamicArray<re::StringID>::DynamicArray(v4 + 296, this + 37);
  return v4;
}

uint64_t re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF968;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 184));
  if (*(a1 + 152) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 160));
  }

  if (*(a1 + 120) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 128));
  }

  if (*(a1 + 88) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 96));
  }

  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::FromToByAnimationAssetData(uint64_t a1, uint64_t *a2)
{
  v4 = re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF968;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 120) = 0;
  *(v4 + 152) = 0;
  *(v4 + 184) = 0;
  re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::operator=(v4, a2);
  return a1;
}

uint64_t *re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    a1[10] = a2[10];
    re::Optional<re::SkeletalPoseAssetData>::operator=((a1 + 11), a2 + 11);
    re::Optional<re::SkeletalPoseAssetData>::operator=((a1 + 15), a2 + 15);
    v4 = re::Optional<re::SkeletalPoseAssetData>::operator=((a1 + 19), a2 + 19);
    v5 = a2[23];
    if (v5)
    {
      v5 = v4;
    }

    v6 = a1[23];
    if (v6)
    {
      v7 = re::globalAllocators(v4)[2];
      (**v6)(v6);
      (*(*v7 + 40))(v7, v6);
    }

    a1[23] = v5;
  }

  return a1;
}

uint64_t re::Optional<re::SkeletalPoseAssetData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::FixedArray<re::GenericSRT<float>>::operator=(v3, a2 + 1);
    }

    else
    {
      re::FixedArray<CoreIKTransform>::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::FixedArray<re::GenericSRT<float>>::FixedArray((a1 + 8), a2 + 1);
  }

  return a1;
}

void *re::IntrospectionOptional<re::BlendShapeWeightsAssetData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::BlendShapeWeightsAssetData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionOptional<re::BlendShapeWeightsAssetData>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4[0] = 1;
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::SkeletalPoseAssetData>::operator=(a2, v4);
  if (v4[0] == 1)
  {
    result = v5;
    if (v5)
    {
      if (v6)
      {
        return (*(*v5 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::IntrospectionOptional<re::BlendShapeWeightsAssetData>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v4[0] = 1;
    re::FixedArray<float>::FixedArray(v5, a2);
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::SkeletalPoseAssetData>::operator=(a1, v4);
  if (v4[0] == 1)
  {
    result = v5[0];
    if (v5[0])
    {
      if (v5[1])
      {
        return (*(*v5[0] + 40))();
      }
    }
  }

  return result;
}

void re::BlendShapeWeightsAnimationAssetData::~BlendShapeWeightsAnimationAssetData(re::BlendShapeWeightsAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 272);
  re::DynamicArray<re::StringID>::deinit(this + 232);
  re::DynamicArray<re::StringID>::deinit(this + 192);

  re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::~FromToByAnimationAssetData(this);
}

{
  re::DynamicArray<re::StringID>::deinit(this + 272);
  re::DynamicArray<re::StringID>::deinit(this + 232);
  re::DynamicArray<re::StringID>::deinit(this + 192);
  re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BlendShapeWeightsAnimationAssetData::clone(re::BlendShapeWeightsAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 312, 8);
  v5 = re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::FromToByAnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFA28;
  v6 = (v5 + 29);
  re::DynamicArray<re::StringID>::DynamicArray((v5 + 24), this + 24);
  re::DynamicArray<re::StringID>::DynamicArray(v6, this + 29);
  re::DynamicArray<re::StringID>::DynamicArray(v4 + 272, this + 34);
  return v4;
}

uint64_t re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBFA98;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 184));
  if (*(a1 + 152) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 160));
  }

  if (*(a1 + 120) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 128));
  }

  if (*(a1 + 88) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 96));
  }

  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::FromToByAnimationAssetData(uint64_t a1, uint64_t *a2)
{
  v4 = re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBFA98;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 120) = 0;
  *(v4 + 152) = 0;
  *(v4 + 184) = 0;
  re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::operator=(v4, a2);
  return a1;
}

uint64_t *re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    a1[10] = a2[10];
    re::Optional<re::BlendShapeWeightsAssetData>::operator=((a1 + 11), a2 + 11);
    re::Optional<re::BlendShapeWeightsAssetData>::operator=((a1 + 15), a2 + 15);
    v4 = re::Optional<re::BlendShapeWeightsAssetData>::operator=((a1 + 19), a2 + 19);
    v5 = a2[23];
    if (v5)
    {
      v5 = v4;
    }

    v6 = a1[23];
    if (v6)
    {
      v7 = re::globalAllocators(v4)[2];
      (**v6)(v6);
      (*(*v7 + 40))(v7, v6);
    }

    a1[23] = v5;
  }

  return a1;
}

uint64_t re::Optional<re::BlendShapeWeightsAssetData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::FixedArray<float>::operator=(v3, a2 + 1);
    }

    else
    {
      re::FixedArray<CoreIKTransform>::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::FixedArray<float>::FixedArray((a1 + 8), a2 + 1);
  }

  return a1;
}

void re::FloatKeyframeAnimationAssetData::~FloatKeyframeAnimationAssetData(re::FloatKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFB48;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFB48;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::FloatKeyframeAnimationAssetData::clone(re::FloatKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<float>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFB48;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<float>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFAD8;
  return v4;
}

void re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<double>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<double>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<double>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<double>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<double>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<double>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<double>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<double>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<double>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<float *>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 8 * v4), 8 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<float *>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<float *>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<double>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
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