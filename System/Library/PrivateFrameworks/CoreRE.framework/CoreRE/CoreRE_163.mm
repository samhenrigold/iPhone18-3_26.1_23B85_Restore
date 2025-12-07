uint64_t re::buildCone(uint64_t a1, unsigned __int16 *a2)
{
  v179 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::GeomBaseMesh(&v152);
  v8 = *a2;
  if (v8 < 3 || (v9 = a2[1]) == 0)
  {
    re::internal::GeomAttributeManager::addAttribute(v156, "vertexPosition", 1, 7);
    if (*(a2 + 13) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v156, "vertexUV", 1, 6);
    }

    if (*(a2 + 14) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v156, "vertexNormal", 1, 7);
    }

    if (*(a2 + 13) == 1 && *(a2 + 14) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v156, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v156, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v152);
    goto LABEL_15;
  }

  v128 = a1;
  v130 = v8 + 1;
  v10 = &v152;
  LODWORD(v152) = v8 + (v8 + 1) * v9;
  v157 = v152;
  if (v158)
  {
    v11 = v159;
    v12 = 8 * v158;
    do
    {
      v13 = *v11++;
      (*(*v13 + 80))(v13, v157);
      v12 -= 8;
    }

    while (v12);
    v9 = a2[1];
    v14 = *a2;
  }

  else
  {
    v14 = v8;
  }

  v16 = v14 * v9;
  re::DynamicArray<re::GeomCell4>::resize(&v153, (v14 * v9));
  v160 = v16;
  if (v161)
  {
    v17 = v162;
    v18 = 8 * v161;
    do
    {
      v19 = *v17++;
      (*(*v19 + 80))(v19, v160);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = re::internal::GeomAttributeManager::addAttribute(v156, "vertexPosition", 1, 7);
  v21 = *(a2 + 13);
  v22 = *(a2 + 14);
  v23 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v20);
  v135 = v25;
  v136 = v23;
  if (*(a2 + 14) == 1)
  {
    v26 = re::internal::GeomAttributeManager::addAttribute(v156, "vertexNormal", 1, 7);
    v140 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
  }

  else
  {
    v140 = 0;
    v27 = -1;
  }

  v132 = v27;
  v149 = v21 & v22;
  if (*(a2 + 13) == 1)
  {
    v28 = re::internal::GeomAttributeManager::addAttribute(v156, "vertexUV", 1, 6);
    v137 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v28);
    v30 = v29;
  }

  else
  {
    v137 = 0;
    v30 = 0xFFFFFFFFLL;
  }

  v145 = v30;
  v31 = v136;
  if (v149)
  {
    v5 = re::internal::GeomAttributeManager::addAttribute(v156, "vertexTangent", 1, 7);
    v2 = re::internal::GeomAttributeManager::addAttribute(v156, "vertexBitangent", 1, 7);
    v139 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v5);
    v134 = v32;
    v138 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v2);
    v133 = v33;
  }

  else
  {
    v138 = 0;
    v139 = 0;
    v133 = -1;
    v134 = -1;
  }

  v131 = v8;
  v129 = a2[1];
  if (!a2[1])
  {
    v37 = 0;
    goto LABEL_53;
  }

  v34 = 0;
  v35 = 0;
  v36 = v8 + 1;
  v142 = v133;
  LOWORD(v37) = a2[1];
  v143 = v134;
  v144 = v132;
  do
  {
    v2 = 0;
    v141 = v35;
    v38 = v35 / v37;
    *v24.i32 = v38 * 0.5;
    *&v24.i32[1] = v38;
    v147 = v24;
    v148 = v38;
    v10 = v34;
    v39 = v138 + 16 * v34;
    v4 = v139 + 16 * v34;
    v3 = v137 + 8 * v34;
    *v24.i32 = 1.0 - v38;
    v146 = COERCE_UNSIGNED_INT(1.0 - v38);
    if (v135 >= v34)
    {
      v5 = v135 - v34;
    }

    else
    {
      v5 = 0;
    }

    v40 = v140 + 16 * v34;
    v41 = v31 + 16 * v34;
    do
    {
      v24.i16[0] = *a2;
      v42 = *(a2 + 2);
      v150 = v2 / v24.u32[0];
      v151 = *(a2 + 1);
      v44 = __sincosf_stret(v150 * 6.2832);
      if (v5 == v2)
      {
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v79 = MEMORY[0x1E69E9C10];
        v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        if (v80)
        {
          v81 = 3;
        }

        else
        {
          v81 = 2;
        }

        *v164 = 136315906;
        *&v164[18] = 2048;
        *&v164[20] = (v10 + v2);
        v165 = 2048;
        *v166 = v135;
        _os_log_send_and_compose_impl(v81, v167, &v174, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_102:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v82 = MEMORY[0x1E69E9C10];
        v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v83)
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        *&v164[14] = 789;
        *&v164[18] = 2048;
        *&v164[20] = v39;
        v165 = 2048;
        *v166 = v36;
        _os_log_send_and_compose_impl(v84, v167, &v174, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_106:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v85 = MEMORY[0x1E69E9C10];
        v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v86)
        {
          v87 = 3;
        }

        else
        {
          v87 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v10 + v2;
        v165 = 2048;
        *v166 = v144;
        _os_log_send_and_compose_impl(v87, v167, &v174, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_110:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v88 = MEMORY[0x1E69E9C10];
        v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v89)
        {
          v90 = 3;
        }

        else
        {
          v90 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v10 + v2;
        v165 = 2048;
        *v166 = v145;
        _os_log_send_and_compose_impl(v90, v167, &v174, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_114:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v91 = MEMORY[0x1E69E9C10];
        v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v92)
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v10 + v2;
        v165 = 2048;
        *v166 = v143;
        _os_log_send_and_compose_impl(v93, v167, &v174, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_118:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v94 = MEMORY[0x1E69E9C10];
        v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v95)
        {
          v96 = 3;
        }

        else
        {
          v96 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v10 + v2;
        v165 = 2048;
        *v166 = v142;
        _os_log_send_and_compose_impl(v96, v167, &v174, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_122:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v97 = MEMORY[0x1E69E9C10];
        v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v98)
        {
          v99 = 3;
        }

        else
        {
          v99 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v4;
        v165 = 2048;
        *v166 = v3;
        _os_log_send_and_compose_impl(v99, v167, &v174, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_126:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v100 = MEMORY[0x1E69E9C10];
        v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v101)
        {
          v102 = 3;
        }

        else
        {
          v102 = 2;
        }

        *&v164[14] = 789;
        *&v164[18] = 2048;
        *&v164[20] = v39;
        v165 = 2048;
        *v166 = v36;
        _os_log_send_and_compose_impl(v102, v167, &v174, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_130:
        v163 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v103 = MEMORY[0x1E69E9C10];
        v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v167 = 136315906;
        *&v167[4] = "operator[]";
        v168 = 1024;
        if (v104)
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        v169 = 789;
        v170 = 2048;
        v171 = v36;
        v172 = 2048;
        v173 = v36;
        _os_log_send_and_compose_impl(v105, &v163, &v174, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v167, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_134:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v106 = MEMORY[0x1E69E9C10];
        v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v107)
        {
          v108 = 3;
        }

        else
        {
          v108 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v10;
        v165 = 2048;
        *v166 = v145;
        _os_log_send_and_compose_impl(v108, v167, &v174, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_138:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v109 = MEMORY[0x1E69E9C10];
        v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        *v164 = 136315906;
        *&v164[18] = 2048;
        if (v110)
        {
          v111 = 3;
        }

        else
        {
          v111 = 2;
        }

        *&v164[20] = (~v40 + v10);
        v165 = 2048;
        *v166 = v39;
        _os_log_send_and_compose_impl(v111, v167, &v174, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_142:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v112 = MEMORY[0x1E69E9C10];
        v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        *v164 = 136315906;
        *&v164[18] = 2048;
        if (v113)
        {
          v114 = 3;
        }

        else
        {
          v114 = 2;
        }

        *&v164[20] = (~v40 + v10);
        v165 = 2048;
        *v166 = v36;
        _os_log_send_and_compose_impl(v114, v167, &v174, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_146:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v115 = MEMORY[0x1E69E9C10];
        v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v116)
        {
          v117 = 3;
        }

        else
        {
          v117 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v10;
        v165 = 2048;
        *v166 = v39;
        _os_log_send_and_compose_impl(v117, v167, &v174, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_150:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v118 = MEMORY[0x1E69E9C10];
        v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v119)
        {
          v120 = 3;
        }

        else
        {
          v120 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v10;
        v165 = 2048;
        *v166 = v36;
        _os_log_send_and_compose_impl(v120, v167, &v174, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_154:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v121 = MEMORY[0x1E69E9C10];
        v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v122)
        {
          v123 = 3;
        }

        else
        {
          v123 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v5;
        v165 = 2048;
        *v166 = v2;
        _os_log_send_and_compose_impl(v123, v167, &v174, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
LABEL_158:
        *v167 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        v124 = MEMORY[0x1E69E9C10];
        v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        if (v125)
        {
          v126 = 3;
        }

        else
        {
          v126 = 2;
        }

        *&v164[14] = 621;
        *&v164[18] = 2048;
        *&v164[20] = v10;
        v165 = 2048;
        *v166 = v2;
        _os_log_send_and_compose_impl(v126, v167, &v174, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v164, 38, v127, v128);
        _os_crash_msg();
        __break(1u);
      }

      v45 = v10 + v2;
      v46.i32[1] = 0;
      v46.i32[3] = 0;
      v46.f32[0] = -v44.__sinval;
      v46.f32[2] = -v44.__cosval;
      v43.f32[0] = (0.0 - v42) * v44.__cosval;
      v43.f32[1] = v151;
      v43.f32[2] = -(v44.__sinval * (0.0 - v42));
      v47 = vmulq_f32(v46, v46);
      *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v49 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
      v50 = vmulq_f32(v43, v43);
      *&v51 = v50.f32[2] + vaddv_f32(*v50.f32);
      *v50.f32 = vrsqrte_f32(v51);
      *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
      v52 = vmulq_n_f32(v43, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]);
      v53 = v42 + (v148 * (0.0 - v42));
      *v24.i32 = v44.__cosval * v53;
      v50.f32[0] = (v148 * v151) + v151 * -0.5;
      v24.i32[1] = v50.i32[0];
      *&v24.i32[2] = -(v53 * v44.__sinval);
      *(v41 + 16 * v2) = v24;
      if (*(a2 + 14) == 1)
      {
        if (v45 >= v132)
        {
          goto LABEL_106;
        }

        v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), vnegq_f32(v49)), v52, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
        *(v40 + 16 * v2) = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
      }

      if (*(a2 + 13) == 1)
      {
        if (v145 <= v45)
        {
          goto LABEL_110;
        }

        v24 = v147;
        *(v3 + 8 * v2) = vadd_f32(*v147.i8, vmul_n_f32(v146, v150));
      }

      if (v149)
      {
        if (v45 >= v134)
        {
          goto LABEL_114;
        }

        *(v4 + 16 * v2) = v49;
        if (v45 >= v133)
        {
          goto LABEL_118;
        }

        *(v39 + 16 * v2) = v52;
      }

      ++v2;
    }

    while (v36 != v2);
    v34 = v10 + v2;
    v35 = v141 + 1;
    v37 = a2[1];
    v31 = v136;
  }

  while (v141 + 1 < v37);
LABEL_53:
  v54 = (v130 * v129);
  v55 = *a2;
  if (*a2)
  {
    LODWORD(v56) = 0;
    *(&v56 + 1) = 0;
    v2 = v133;
    *(&v56 + 1) = *(a2 + 1) * 0.5;
    v57 = (v54 + v55);
    v36 = v134;
    v40 = v131;
    v39 = v132;
    v3 = v135;
    if (v54 <= v135)
    {
      v4 = v135;
    }

    else
    {
      v4 = (v130 * v129);
    }

    v58 = (v138 + 16 * v54);
    v59 = (v139 + 16 * v54);
    v60 = (v140 + 16 * v54);
    v10 = (v130 * v129);
    do
    {
      if (v4 == v10)
      {
        goto LABEL_122;
      }

      *(v31 + 16 * v10) = v56;
      if (*(a2 + 13) == 1)
      {
        if (v145 <= v10)
        {
          goto LABEL_134;
        }

        *(v137 + 8 * v10) = 0x3F8000003F000000;
      }

      v61 = -v131 - 1 + v10;
      if (*(a2 + 14) == 1)
      {
        if (v132 <= v61)
        {
          goto LABEL_138;
        }

        if (v10 >= v132)
        {
          goto LABEL_146;
        }

        *v60 = *(v140 + 16 * v61);
      }

      if (v149)
      {
        if (v134 <= v61)
        {
          goto LABEL_142;
        }

        if (v10 >= v134)
        {
          goto LABEL_150;
        }

        v5 = v61;
        *v59 = *(v139 + 16 * v61);
        if (v133 <= v61)
        {
          goto LABEL_154;
        }

        if (v10 >= v133)
        {
          goto LABEL_158;
        }

        *v58 = *(v138 + 16 * v61);
      }

      ++v10;
      ++v58;
      ++v59;
      ++v60;
    }

    while (v10 < v57);
    v37 = a2[1];
    v55 = *a2;
  }

  else
  {
    v40 = v131;
  }

  v62 = v37 - 1;
  if (v37 == 1)
  {
    v64 = 0;
    if (!v55)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  v63 = 0;
  v64 = 0;
  v36 = v154;
  do
  {
    if (v55)
    {
      v65 = v63 * v130;
      v66 = v63 * v130 + v130;
      v67 = v155;
      v68 = v64 + v55;
      v69 = v55;
      do
      {
        v39 = v64;
        if (v36 <= v64)
        {
          goto LABEL_102;
        }

        v70 = (v67 + 16 * v64);
        v70[3] = v66++;
        *v70 = v65++;
        v70[1] = v65;
        v70[2] = v66;
        v64 = v39 + 1;
        --v69;
      }

      while (v69);
      v64 = v68;
    }

    ++v63;
  }

  while (v63 != v62);
  if (v55)
  {
LABEL_86:
    v36 = v154;
    v71 = v155;
    v72 = v54 - v40;
    do
    {
      v39 = v64;
      if (v36 <= v64)
      {
        goto LABEL_126;
      }

      v73 = (v71 + 16 * v64);
      *v73 = v72 - 1;
      v73[1] = v72;
      v73[2] = v54;
      v73[3] = -1;
      ++v64;
      LODWORD(v54) = v54 + 1;
      ++v72;
    }

    while (--v55);
  }

LABEL_89:
  if (a2[6])
  {
    v74 = re::internal::GeomAttributeManager::attributeByName(v156, "vertexUV");
    v39 = re::internal::GeomAttributeManager::attributeByName(v156, "vertexNormal");
    v10 = re::internal::GeomAttributeManager::attributeByName(v156, "vertexTangent");
    v2 = re::internal::GeomAttributeManager::attributeByName(v156, "vertexBitangent");
    *&v166[2] = 0;
    memset(v164, 0, sizeof(v164));
    re::DynamicArray<float>::resize(v164, v40);
    v36 = *&v164[16];
    v75 = *&v166[2];
    v76 = *&v164[16];
    do
    {
      if (!v76)
      {
        goto LABEL_130;
      }

      *v75++ = v40;
      --v76;
      --v40;
    }

    while (v40);
    re::internal::capBoundary(&v152, v164, v74, v39, v10, v2);
    if (*v164 && *&v166[2])
    {
      (*(**v164 + 40))();
    }
  }

  v77 = re::GeomMesh::operator=(v128, &v152);
  if (*(a2 + 15) == 1)
  {
    re::internal::mergeVertexPositions(v77, v78);
  }

LABEL_15:
  re::internal::GeomAttributeManager::~GeomAttributeManager(v156);
  result = v153;
  if (v153)
  {
    if (v155)
    {
      return (*(*v153 + 40))();
    }
  }

  return result;
}

void re::buildCone(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  v48 = *MEMORY[0x1E69E9840];
  if (*(a2 + 15) == 1)
  {
    v31[0] = *a2;
    HIBYTE(v31[0]) = 0;
    re::buildCone(a1, v31);
    return;
  }

  re::GeomMesh::GeomMesh(v31, 0);
  re::buildCone(v31, v2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  if (*(v2 + 12))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  re::DynamicArray<re::GeomMesh>::resize(a1, v4);
  v5 = *v2;
  if (v5 >= 3)
  {
    v6 = v2[1];
    if (v2[1])
    {
      v30 = 0;
      v27[1] = 0;
      v28 = 0;
      v27[0] = 0;
      v29 = 0;
      re::internal::fillFaces(v27, 0, v6 * v5);
      re::internal::makeSubmesh(&v33, v31, v28, v30);
      if (*(a1 + 16))
      {
        re::GeomMesh::operator=(*(a1 + 32), &v33);
        re::GeomMesh::~GeomMesh(&v33);
        if (*(v2 + 12) != 1)
        {
          goto LABEL_13;
        }

        if (*(a1 + 16))
        {
          re::internal::fillFaces(v27, *(*(a1 + 32) + 40), *v2);
          re::internal::makeSubmesh(&v33, v31, v28, v30);
          v2 = *(a1 + 16);
          if (v2 > 1)
          {
            re::GeomMesh::operator=((*(a1 + 32) + 736), &v33);
            re::GeomMesh::~GeomMesh(&v33);
LABEL_13:
            if (v27[0])
            {
              if (v30)
              {
                (*(*v27[0] + 40))();
              }
            }

            goto LABEL_21;
          }

LABEL_43:
          v32 = 0;
          v46 = 0u;
          v47 = 0u;
          memset(v45, 0, sizeof(v45));
          v23 = MEMORY[0x1E69E9C10];
          v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v38 = 136315906;
          *&v38[4] = "operator[]";
          v39 = 1024;
          if (v24)
          {
            v25 = 3;
          }

          else
          {
            v25 = 2;
          }

          v40 = 789;
          v41 = 2048;
          v42 = 1;
          v43 = 2048;
          v44 = v2;
          _os_log_send_and_compose_impl(v25, &v32, v45, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v26, v27[0]);
          _os_crash_msg();
          __break(1u);
        }

LABEL_39:
        *v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45[0] = 136315906;
        *&v45[1] = "operator[]";
        LOWORD(v45[3]) = 1024;
        if (v21)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        *(&v45[3] + 2) = 789;
        HIWORD(v45[4]) = 2048;
        *&v45[5] = 0;
        LOWORD(v45[7]) = 2048;
        *(&v45[7] + 2) = 0;
        _os_log_send_and_compose_impl(v22, v38, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v45, 38, v26, v27[0]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_43;
      }

LABEL_35:
      v32 = 0;
      v46 = 0u;
      v47 = 0u;
      memset(v45, 0, sizeof(v45));
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v38 = 136315906;
      *&v38[4] = "operator[]";
      v39 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v40 = 789;
      v41 = 2048;
      v42 = 0;
      v43 = 2048;
      v44 = 0;
      _os_log_send_and_compose_impl(v19, &v32, v45, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v26, v27[0]);
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }
  }

  if (!*(a1 + 16))
  {
    v27[0] = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v45[0] = 136315906;
    *&v45[1] = "operator[]";
    LOWORD(v45[3]) = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *(&v45[3] + 2) = 789;
    HIWORD(v45[4]) = 2048;
    *&v45[5] = 0;
    LOWORD(v45[7]) = 2048;
    *(&v45[7] + 2) = 0;
    _os_log_send_and_compose_impl(v10, v27, &v33, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v45, 38, v26);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  re::GeomMesh::operator=(*(a1 + 32), v31);
  if (*(v2 + 12) == 1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      if (v7 != 1)
      {
        re::GeomMesh::copy(*(a1 + 32), (*(a1 + 32) + 736));
        goto LABEL_21;
      }

LABEL_31:
      v27[0] = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v14 = MEMORY[0x1E69E9C10];
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v45[0] = 136315906;
      *&v45[1] = "operator[]";
      LOWORD(v45[3]) = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      *(&v45[3] + 2) = 789;
      HIWORD(v45[4]) = 2048;
      *&v45[5] = 1;
      LOWORD(v45[7]) = 2048;
      *(&v45[7] + 2) = 1;
      _os_log_send_and_compose_impl(v16, v27, &v33, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v45, 38, v26);
      _os_crash_msg();
      __break(1u);
      goto LABEL_35;
    }

LABEL_27:
    v27[0] = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v45[0] = 136315906;
    *&v45[1] = "operator[]";
    LOWORD(v45[3]) = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *(&v45[3] + 2) = 789;
    HIWORD(v45[4]) = 2048;
    *&v45[5] = 0;
    LOWORD(v45[7]) = 2048;
    *(&v45[7] + 2) = 0;
    _os_log_send_and_compose_impl(v13, v27, &v33, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v45, 38, v26);
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  re::GeomMesh::~GeomMesh(v31);
}

uint64_t (***re::buildCylinder(uint64_t a1, unsigned __int16 *a2))(void)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*a2 >= 3u && a2[1])
  {
    v47[3] = re::globalAllocators(a1)[2];
    v47[0] = &unk_1F5D02F48;
    v47[1] = a2;
    v47[4] = v47;
    v4 = *a2;
    v5 = a2[1];
    v36 = 0;
    *&v39[1] = 0;
    v40 = v4;
    v41 = v5;
    v37 = *(a2 + 18);
    v38 = *(a2 + 19);
    *v39 = (v37 & v38);
    re::buildParametricSurface(a1, v47, &v36);
    v7 = *a2;
    if ((a2[8] & 1) != 0 || *(a2 + 17) == 1)
    {
      LODWORD(v42) = *(a1 + 16);
      re::DynamicArray<re::GeomCell4>::DynamicArray(v43, (a1 + 24));
      if (!v43[1])
      {
        re::DynamicArray<re::BlendNode>::setCapacity(v43, 1uLL);
      }

      re::internal::GeomAttributeManager::GeomAttributeManager(v45, (a1 + 64));
      if (*(a2 + 17) == 1)
      {
        v8 = re::internal::GeomAttributeManager::attributeByName(v45, "vertexUV");
        v9 = re::internal::GeomAttributeManager::attributeByName(v45, "vertexNormal");
        v10 = re::internal::GeomAttributeManager::attributeByName(v45, "vertexTangent");
        v11 = re::internal::GeomAttributeManager::attributeByName(v45, "vertexBitangent");
        v35 = 0;
        v32 = 0;
        v33 = 0;
        v31 = 0;
        v34 = 0;
        re::DynamicArray<float>::resize(&v31, v7);
        if (v7)
        {
          v12 = v33;
          v13 = v35;
          v14 = v33;
          v15 = v7;
          while (v14)
          {
            *v13++ = v15;
            --v14;
            if (!--v15)
            {
              goto LABEL_12;
            }
          }

          v46 = 0;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          v25 = MEMORY[0x1E69E9C10];
          v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v48 = 136315906;
          v49 = "operator[]";
          v50 = 1024;
          if (v26)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          v51 = 789;
          v52 = 2048;
          v53 = v12;
          v54 = 2048;
          v55 = v12;
          _os_log_send_and_compose_impl(v27, &v46, &v56, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
LABEL_44:
          v46 = 0;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          v28 = MEMORY[0x1E69E9C10];
          v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v48 = 136315906;
          v49 = "operator[]";
          v50 = 1024;
          if (v29)
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          v51 = 789;
          v52 = 2048;
          v53 = v12;
          v54 = 2048;
          v55 = v12;
          _os_log_send_and_compose_impl(v30, &v46, &v56, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
        }

LABEL_12:
        re::internal::capBoundary(&v42, &v31, v8, v9, v10, v11);
        if (v31 && v35)
        {
          (*(*v31 + 40))();
        }
      }

      if (*(a2 + 16) == 1)
      {
        v16 = re::internal::GeomAttributeManager::attributeByName(v45, "vertexUV");
        v17 = re::internal::GeomAttributeManager::attributeByName(v45, "vertexNormal");
        v18 = re::internal::GeomAttributeManager::attributeByName(v45, "vertexTangent");
        v19 = re::internal::GeomAttributeManager::attributeByName(v45, "vertexBitangent");
        v20 = a2[1];
        v35 = 0;
        v32 = 0;
        v33 = 0;
        v31 = 0;
        v34 = 0;
        re::DynamicArray<float>::resize(&v31, v7);
        if (v7)
        {
          v21 = (v7 + 1) * v20;
          v12 = v33;
          v22 = v35;
          v23 = v33;
          while (v23)
          {
            *v22++ = v21++;
            --v23;
            if (!--v7)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_44;
        }

LABEL_20:
        re::internal::capBoundary(&v42, &v31, v16, v17, v18, v19);
        if (v31 && v35)
        {
          (*(*v31 + 40))();
        }
      }

      re::GeomMesh::operator=(a1, &v42);
      re::internal::GeomAttributeManager::~GeomAttributeManager(v45);
      if (v43[0])
      {
        v6 = v44;
        if (v44)
        {
          (*(*v43[0] + 40))();
        }
      }
    }

    if (*(a2 + 20) == 1)
    {
      re::internal::mergeVertexPositions(a1, v6);
    }

    return re::FunctionBase<24ul,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::destroyCallable(v47);
  }

  else
  {
    re::internal::GeomBaseMesh::GeomBaseMesh(&v42);
    re::internal::GeomAttributeManager::addAttribute(v45, "vertexPosition", 1, 7);
    if (*(a2 + 18) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v45, "vertexUV", 1, 6);
    }

    if (*(a2 + 19) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v45, "vertexNormal", 1, 7);
    }

    if (*(a2 + 18) == 1 && *(a2 + 19) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v45, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v45, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v42);
    re::internal::GeomAttributeManager::~GeomAttributeManager(v45);
    result = v43[0];
    if (v43[0] && v44)
    {
      return (*(*v43[0] + 40))();
    }
  }

  return result;
}

void re::buildCylinder(uint64_t a1, unsigned __int16 *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (*(a2 + 20) == 1)
  {
    v52 = *(a2 + 2);
    v51 = *a2;
    BYTE4(v52) = 0;
    re::buildCylinder(a1, &v51);
    return;
  }

  v5 = &v54;
  re::GeomMesh::GeomMesh(&v51, 0);
  re::buildCylinder(&v51, a2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::resize(a1, *(a2 + 16) + *(a2 + 17) + 1);
  v6 = a2[1];
  if (a2[1])
  {
    v7 = *a2;
    if (v7 >= 3)
    {
      v50 = 0;
      v47[1] = 0;
      v48 = 0;
      v47[0] = 0;
      v49 = 0;
      re::internal::fillFaces(v47, 0, v7 * v6);
      re::internal::makeSubmesh(&v54, &v51, v48, v50);
      if (*(a1 + 16))
      {
        re::GeomMesh::operator=(*(a1 + 32), &v54);
        re::GeomMesh::~GeomMesh(&v54);
        if (*(a2 + 16) != 1)
        {
          LODWORD(v2) = 0;
          v10 = 0;
LABEL_21:
          if (*(a2 + 17) != 1)
          {
            goto LABEL_25;
          }

          v13 = v10;
          v14 = *(a1 + 16);
          if (v14 > v10)
          {
            v5 = (v10 + 1);
            re::internal::fillFaces(v47, v2 + *(*(a1 + 32) + 736 * v10 + 40), *a2);
            re::internal::makeSubmesh(&v54, &v51, v48, v50);
            v12 = *(a1 + 16);
            if (v12 > v5)
            {
              re::GeomMesh::operator=((*(a1 + 32) + 736 * v5), &v54);
              re::GeomMesh::~GeomMesh(&v54);
LABEL_25:
              if (v47[0])
              {
                if (v50)
                {
                  (*(*v47[0] + 40))();
                }
              }

              goto LABEL_28;
            }

LABEL_66:
            v53 = 0;
            v67 = 0u;
            v68 = 0u;
            memset(v66, 0, sizeof(v66));
            v43 = MEMORY[0x1E69E9C10];
            v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v59 = 136315906;
            *&v59[4] = "operator[]";
            v60 = 1024;
            if (v44)
            {
              v45 = 3;
            }

            else
            {
              v45 = 2;
            }

            v61 = 789;
            v62 = 2048;
            v63 = v5;
            v64 = 2048;
            v65 = v12;
            _os_log_send_and_compose_impl(v45, &v53, v66, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v46, v47[0]);
            _os_crash_msg();
            __break(1u);
          }

          goto LABEL_50;
        }

        if (*(a1 + 16))
        {
          v8 = *(a1 + 32);
          v2 = *(v8 + 40);
          re::internal::fillFaces(v47, *(v8 + 40), *a2);
          re::internal::makeSubmesh(&v54, &v51, v48, v50);
          v9 = *(a1 + 16);
          if (v9 <= 1)
          {
LABEL_58:
            v53 = 0;
            v67 = 0u;
            v68 = 0u;
            memset(v66, 0, sizeof(v66));
            v37 = MEMORY[0x1E69E9C10];
            v12 = v9;
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v59 = 136315906;
            *&v59[4] = "operator[]";
            v60 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v61 = 789;
            v62 = 2048;
            v63 = 1;
            v64 = 2048;
            v65 = v12;
            _os_log_send_and_compose_impl(v39, &v53, v66, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v46, v47[0]);
            _os_crash_msg();
            __break(1u);
            goto LABEL_62;
          }

          re::GeomMesh::operator=((*(a1 + 32) + 736), &v54);
          re::GeomMesh::~GeomMesh(&v54);
          v10 = 1;
          goto LABEL_21;
        }

        goto LABEL_42;
      }

      goto LABEL_34;
    }
  }

  if (!*(a1 + 16))
  {
    v47[0] = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v66[0] = 136315906;
    *&v66[1] = "operator[]";
    LOWORD(v66[3]) = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    *(&v66[3] + 2) = 789;
    HIWORD(v66[4]) = 2048;
    *&v66[5] = 0;
    LOWORD(v66[7]) = 2048;
    *(&v66[7] + 2) = 0;
    _os_log_send_and_compose_impl(v17, v47, &v54, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v46);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v53 = 0;
    v67 = 0u;
    v68 = 0u;
    memset(v66, 0, sizeof(v66));
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v59 = 136315906;
    *&v59[4] = "operator[]";
    v60 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v61 = 789;
    v62 = 2048;
    v63 = 0;
    v64 = 2048;
    v65 = 0;
    _os_log_send_and_compose_impl(v20, &v53, v66, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v46, v47[0]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  re::GeomMesh::operator=(*(a1 + 32), &v51);
  if (*(a2 + 16) == 1)
  {
    v11 = *(a1 + 16);
    if (!v11)
    {
LABEL_38:
      v47[0] = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v66[0] = 136315906;
      *&v66[1] = "operator[]";
      LOWORD(v66[3]) = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *(&v66[3] + 2) = 789;
      HIWORD(v66[4]) = 2048;
      *&v66[5] = 0;
      LOWORD(v66[7]) = 2048;
      *(&v66[7] + 2) = 0;
      _os_log_send_and_compose_impl(v23, v47, &v54, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v46);
      _os_crash_msg();
      __break(1u);
LABEL_42:
      *v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v24 = MEMORY[0x1E69E9C10];
      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v66[0] = 136315906;
      *&v66[1] = "operator[]";
      LOWORD(v66[3]) = 1024;
      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      *(&v66[3] + 2) = 789;
      HIWORD(v66[4]) = 2048;
      *&v66[5] = 0;
      LOWORD(v66[7]) = 2048;
      *(&v66[7] + 2) = 0;
      _os_log_send_and_compose_impl(v26, v59, &v54, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v46, v47[0]);
      _os_crash_msg();
      __break(1u);
      goto LABEL_46;
    }

    if (v11 == 1)
    {
LABEL_54:
      v47[0] = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v66[0] = 136315906;
      *&v66[1] = "operator[]";
      LOWORD(v66[3]) = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      *(&v66[3] + 2) = 789;
      HIWORD(v66[4]) = 2048;
      *&v66[5] = 1;
      LOWORD(v66[7]) = 2048;
      *(&v66[7] + 2) = 1;
      _os_log_send_and_compose_impl(v36, v47, &v54, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v46);
      _os_crash_msg();
      __break(1u);
      goto LABEL_58;
    }

    re::GeomMesh::copy(*(a1 + 32), (*(a1 + 32) + 736));
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*(a2 + 17) == 1)
  {
    v12 = *(a1 + 16);
    if (!v12)
    {
LABEL_46:
      v47[0] = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v27 = MEMORY[0x1E69E9C10];
      v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v66[0] = 136315906;
      *&v66[1] = "operator[]";
      LOWORD(v66[3]) = 1024;
      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      *(&v66[3] + 2) = 789;
      HIWORD(v66[4]) = 2048;
      *&v66[5] = 0;
      LOWORD(v66[7]) = 2048;
      *(&v66[7] + 2) = 0;
      _os_log_send_and_compose_impl(v29, v47, &v54, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v46);
      _os_crash_msg();
      __break(1u);
LABEL_50:
      *v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v30 = MEMORY[0x1E69E9C10];
      v31 = v13;
      v2 = v14;
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v66[0] = 136315906;
      *&v66[1] = "operator[]";
      LOWORD(v66[3]) = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      *(&v66[3] + 2) = 789;
      HIWORD(v66[4]) = 2048;
      *&v66[5] = v31;
      LOWORD(v66[7]) = 2048;
      *(&v66[7] + 2) = v2;
      _os_log_send_and_compose_impl(v33, v59, &v54, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v46, v47[0]);
      _os_crash_msg();
      __break(1u);
      goto LABEL_54;
    }

    if (v12 <= v2)
    {
LABEL_62:
      v47[0] = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v66[0] = 136315906;
      *&v66[1] = "operator[]";
      LOWORD(v66[3]) = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      *(&v66[3] + 2) = 789;
      HIWORD(v66[4]) = 2048;
      *&v66[5] = v2;
      LOWORD(v66[7]) = 2048;
      *(&v66[7] + 2) = v12;
      _os_log_send_and_compose_impl(v42, v47, &v54, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v46);
      _os_crash_msg();
      __break(1u);
      goto LABEL_66;
    }

    re::GeomMesh::copy(*(a1 + 32), (*(a1 + 32) + 736 * v2));
  }

LABEL_28:
  re::GeomMesh::~GeomMesh(&v51);
}

uint64_t re::buildSphere(unint64_t a1, unsigned __int16 *a2)
{
  v224 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::GeomBaseMesh(&v200);
  v4 = *a2;
  v5 = *(a2 + 9) & a2[4];
  if (v4 <= 2)
  {
    re::internal::GeomAttributeManager::addAttribute(v203, "vertexPosition", 1, 7);
    if (*(a2 + 8) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexUV", 1, 6);
    }

    if (*(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexNormal", 1, 7);
    }

    if (v5)
    {
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v200);
    goto LABEL_89;
  }

  v6 = (v4 - 1) * (v4 + 1);
  LODWORD(v200) = v6 + 2 * v4;
  v204 = v200;
  v7 = v4;
  if (v205)
  {
    v8 = v206;
    v9 = 8 * v205;
    do
    {
      v10 = *v8++;
      (*(*v10 + 80))(v10, v204);
      v9 -= 8;
    }

    while (v9);
    v7 = *a2;
  }

  v11 = v7 * v7;
  re::DynamicArray<re::GeomCell4>::resize(v201, (v7 * v7));
  v207 = v11;
  if (v208)
  {
    v12 = v209;
    v13 = 8 * v208;
    do
    {
      v14 = *v12++;
      (*(*v14 + 80))(v14, v207);
      v13 -= 8;
    }

    while (v13);
  }

  HIDWORD(v186) = (v4 - 1) * (v4 + 1);
  v15 = (v6 + v4);
  v16 = re::internal::GeomAttributeManager::addAttribute(v203, "vertexPosition", 1, 7);
  v17 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
  v190 = v18;
  v187 = v4 + 1;
  if (v5)
  {
    v19 = re::internal::GeomAttributeManager::addAttribute(v203, "vertexTangent", 1, 7);
    v20 = re::internal::GeomAttributeManager::addAttribute(v203, "vertexBitangent", 1, 7);
    v21 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
    v23 = v22;
    v24 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v20);
  }

  else
  {
    v24 = 0;
    v21 = 0;
    v25 = -1;
    v23 = -1;
  }

  v26 = 0;
  v196 = v25;
  v197 = v23;
  v27 = v190;
  if (v190 >= v15)
  {
    v28 = v190 - v15;
  }

  else
  {
    v28 = 0;
  }

  v194 = v24;
  v195 = v21;
  v198 = v24 + 16 * v15;
  v29 = v21 + 16 * v15;
  v30 = xmmword_1E30476B0;
  v31 = xmmword_1E3047680;
  v193 = v15;
  v32 = v17 + 16 * v15;
  do
  {
    if (v190 == v26)
    {
      goto LABEL_113;
    }

    *(v17 + 16 * v26) = v30;
    if (v28 == v26)
    {
      goto LABEL_117;
    }

    *(v32 + 16 * v26) = v31;
    if (v5)
    {
      LOWORD(v31) = *a2;
      v34 = __sincos_stret(v26 * 6.28318531 / v31);
      *v33.i64 = v34.__sinval;
      v35 = v197;
      if (v26 >= v197)
      {
        goto LABEL_129;
      }

      v33.i64[1] = *&v34.__cosval;
      *v33.i8 = vcvt_f32_f64(v33);
      v36 = vnegq_f32(vzip1q_s32(v33, v33));
      v36.i32[1] = 0;
      *(v195 + 16 * v26) = v36;
      if (v193 + v26 >= v197)
      {
        goto LABEL_133;
      }

      *(v29 + 16 * v26) = v36;
      v37 = v196;
      if (v26 >= v196)
      {
        goto LABEL_137;
      }

      v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v195 + 16 * v26), *(v195 + 16 * v26)), *(v195 + 16 * v26), 0xCuLL), vnegq_f32(*(v17 + 16 * v26))), *(v195 + 16 * v26), vextq_s8(vuzp1q_s32(*(v17 + 16 * v26), *(v17 + 16 * v26)), *(v17 + 16 * v26), 0xCuLL));
      *(v194 + 16 * v26) = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
      if (v193 + v26 >= v196)
      {
        goto LABEL_141;
      }

      v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v29 + 16 * v26), *(v29 + 16 * v26)), *(v29 + 16 * v26), 0xCuLL), vnegq_f32(*(v32 + 16 * v26))), *(v29 + 16 * v26), vextq_s8(vuzp1q_s32(*(v32 + 16 * v26), *(v32 + 16 * v26)), *(v32 + 16 * v26), 0xCuLL));
      *(v198 + 16 * v26) = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
      v31 = xmmword_1E3047680;
      v30 = xmmword_1E30476B0;
    }

    ++v26;
  }

  while (v4 != v26);
  v192 = v17;
  v185 = a1;
  v40 = *a2;
  v41 = v194;
  v42 = v195;
  if (v40 < 2)
  {
    goto LABEL_53;
  }

  v43 = 1;
  LODWORD(a1) = v4;
  v189 = v190;
  do
  {
    v26 = a1;
    v191 = v43;
    v45 = __sincos_stret(v43 * 3.14159265 / v40 + -1.57079633);
    *v44.i64 = v45.__cosval;
    v28 = 0;
    sinval = v45.__sinval;
    v199 = sinval;
    v47 = v41 + 16 * a1;
    if (a1 <= v27)
    {
      v48 = v27;
    }

    else
    {
      v48 = a1;
    }

    v17 = v42 + 16 * a1;
    v49 = &v192[a1];
    v188 = v48;
    a1 = a1 - v48;
    do
    {
      v27 = a1 + v28;
      v44.i16[0] = *a2;
      v52 = __sincos_stret(v28 * 6.28318531 / v44.u64[0]);
      *v44.i64 = v52.__cosval;
      *v50.i64 = v52.__sinval;
      if (!(a1 + v28))
      {
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v103 = MEMORY[0x1E69E9C10];
        v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v104)
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v188;
        v217 = 2048;
        v218 = v190;
        _os_log_send_and_compose_impl(v105, &v210, &v219, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_97:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v106 = MEMORY[0x1E69E9C10];
        v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v107)
        {
          v108 = 3;
        }

        else
        {
          v108 = 2;
        }

        v214 = 789;
        v215 = 2048;
        v216 = a1;
        v217 = 2048;
        v218 = v17;
        _os_log_send_and_compose_impl(v108, &v210, &v219, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_101:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v109 = MEMORY[0x1E69E9C10];
        v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = "operator[]";
        v213 = 1024;
        v214 = 621;
        if (v110)
        {
          v111 = 3;
        }

        else
        {
          v111 = 2;
        }

        v211 = 136315906;
        v215 = 2048;
        v216 = (v17 + v28);
        v217 = 2048;
        v218 = a1;
        _os_log_send_and_compose_impl(v111, &v210, &v219, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_105:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v112 = MEMORY[0x1E69E9C10];
        v113 = v54;
        v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v114)
        {
          v115 = 3;
        }

        else
        {
          v115 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v26 + v28;
        v217 = 2048;
        v218 = v113;
        _os_log_send_and_compose_impl(v115, &v210, &v219, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_109:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v116 = MEMORY[0x1E69E9C10];
        v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v117)
        {
          v118 = 3;
        }

        else
        {
          v118 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v26 + v28;
        v217 = 2048;
        v218 = v196;
        _os_log_send_and_compose_impl(v118, &v210, &v219, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_113:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v119 = MEMORY[0x1E69E9C10];
        v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v120)
        {
          v121 = 3;
        }

        else
        {
          v121 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v27;
        v217 = 2048;
        v218 = v27;
        _os_log_send_and_compose_impl(v121, &v210, &v219, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v184, v186);
        _os_crash_msg();
        __break(1u);
LABEL_117:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v122 = MEMORY[0x1E69E9C10];
        v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = "operator[]";
        v213 = 1024;
        v214 = 621;
        if (v123)
        {
          v124 = 3;
        }

        else
        {
          v124 = 2;
        }

        v211 = 136315906;
        v215 = 2048;
        v216 = (v193 + v26);
        v217 = 2048;
        v218 = v27;
        _os_log_send_and_compose_impl(v124, &v210, &v219, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v184, v186);
        _os_crash_msg();
        __break(1u);
LABEL_121:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v125 = MEMORY[0x1E69E9C10];
        v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v126)
        {
          v127 = 3;
        }

        else
        {
          v127 = 2;
        }

        v214 = 789;
        v215 = 2048;
        v216 = v17;
        v217 = 2048;
        v218 = v17;
        _os_log_send_and_compose_impl(v127, &v210, &v219, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_125:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v128 = MEMORY[0x1E69E9C10];
        v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v129)
        {
          v130 = 3;
        }

        else
        {
          v130 = 2;
        }

        v214 = 789;
        v215 = 2048;
        v216 = a1;
        v217 = 2048;
        v218 = v17;
        _os_log_send_and_compose_impl(v130, &v210, &v219, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_129:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v131 = MEMORY[0x1E69E9C10];
        v132 = v35;
        v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v133)
        {
          v134 = 3;
        }

        else
        {
          v134 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v26;
        v217 = 2048;
        v218 = v132;
        _os_log_send_and_compose_impl(v134, &v210, &v219, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v184, v186);
        _os_crash_msg();
        __break(1u);
LABEL_133:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v135 = MEMORY[0x1E69E9C10];
        v136 = v35;
        v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v137)
        {
          v138 = 3;
        }

        else
        {
          v138 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v193 + v26;
        v217 = 2048;
        v218 = v136;
        _os_log_send_and_compose_impl(v138, &v210, &v219, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v184, v186);
        _os_crash_msg();
        __break(1u);
LABEL_137:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v139 = MEMORY[0x1E69E9C10];
        v140 = v37;
        v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v141)
        {
          v142 = 3;
        }

        else
        {
          v142 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v26;
        v217 = 2048;
        v218 = v140;
        _os_log_send_and_compose_impl(v142, &v210, &v219, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v184, v186);
        _os_crash_msg();
        __break(1u);
LABEL_141:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v143 = MEMORY[0x1E69E9C10];
        v144 = v37;
        v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v145)
        {
          v146 = 3;
        }

        else
        {
          v146 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v193 + v26;
        v217 = 2048;
        v218 = v144;
        _os_log_send_and_compose_impl(v146, &v210, &v219, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v184, v186);
        _os_crash_msg();
        __break(1u);
LABEL_145:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v147 = MEMORY[0x1E69E9C10];
        v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v148)
        {
          v149 = 3;
        }

        else
        {
          v149 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = a1;
        v217 = 2048;
        v218 = a1;
        _os_log_send_and_compose_impl(v149, &v210, &v219, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_149:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v150 = v65;
        v151 = MEMORY[0x1E69E9C10];
        v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v152)
        {
          v153 = 3;
        }

        else
        {
          v153 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v150;
        v217 = 2048;
        v218 = a1;
        _os_log_send_and_compose_impl(v153, &v210, &v219, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_153:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v154 = MEMORY[0x1E69E9C10];
        v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v155)
        {
          v156 = 3;
        }

        else
        {
          v156 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v27;
        v217 = 2048;
        v218 = v27;
        _os_log_send_and_compose_impl(v156, &v210, &v219, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_157:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v157 = MEMORY[0x1E69E9C10];
        v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v211 = 136315906;
        v212 = "operator[]";
        v213 = 1024;
        if (v158)
        {
          v159 = 3;
        }

        else
        {
          v159 = 2;
        }

        v214 = 621;
        v215 = 2048;
        v216 = v26;
        v217 = 2048;
        v218 = v189;
        _os_log_send_and_compose_impl(v159, &v210, &v219, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_161:
        v210 = 0;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v219 = 0u;
        v160 = MEMORY[0x1E69E9C10];
        v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = "operator[]";
        v213 = 1024;
        v214 = 621;
        if (v161)
        {
          v162 = 3;
        }

        else
        {
          v162 = 2;
        }

        v211 = 136315906;
        v215 = 2048;
        v216 = (v26 + v28);
        v217 = 2048;
        v218 = v27;
        _os_log_send_and_compose_impl(v162, &v210, &v219, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
        goto LABEL_165;
      }

      v51.f32[0] = v45.__cosval * v52.__cosval;
      v53 = v52.__sinval * -v45.__cosval;
      v51.f32[1] = v199;
      v51.f32[2] = v53;
      v49[v28] = v51;
      if (v5)
      {
        v54 = v197;
        if (v26 + v28 >= v197)
        {
          goto LABEL_105;
        }

        v50.i64[1] = *&v52.__cosval;
        *v50.i8 = vcvt_f32_f64(v50);
        v55 = vnegq_f32(vzip1q_s32(v50, v50));
        v55.i32[1] = 0;
        *(v17 + 16 * v28) = v55;
        if (v26 + v28 >= v196)
        {
          goto LABEL_109;
        }

        v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v49[v28])), v55, vextq_s8(vuzp1q_s32(v49[v28], v49[v28]), v49[v28], 0xCuLL));
        *(v47 + 16 * v28) = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
      }

      ++v28;
    }

    while (v4 != v28);
    if (v26 >= v190)
    {
      goto LABEL_157;
    }

    v56 = v26 + v28;
    v27 = v190;
    if (v26 + v28 >= v190)
    {
      goto LABEL_161;
    }

    v192[v56] = v192[v26];
    v57 = v197;
    v41 = v194;
    v42 = v195;
    if ((v5 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v197 <= v26)
    {
      goto LABEL_173;
    }

    a1 = v56;
    if (v197 <= v56)
    {
LABEL_177:
      v210 = 0;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v219 = 0u;
      v173 = MEMORY[0x1E69E9C10];
      v174 = v57;
      v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v211 = 136315906;
      v212 = "operator[]";
      v213 = 1024;
      if (v175)
      {
        v176 = 3;
      }

      else
      {
        v176 = 2;
      }

      v214 = 621;
      v215 = 2048;
      v216 = a1;
      v217 = 2048;
      v218 = v174;
      _os_log_send_and_compose_impl(v176, &v210, &v219, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
      _os_crash_msg();
      __break(1u);
LABEL_181:
      v210 = 0;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v219 = 0u;
      v177 = MEMORY[0x1E69E9C10];
      v178 = v58;
      v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v211 = 136315906;
      v212 = "operator[]";
      v213 = 1024;
      if (v179)
      {
        v180 = 3;
      }

      else
      {
        v180 = 2;
      }

      v214 = 621;
      v215 = 2048;
      v216 = v26;
      v217 = 2048;
      v218 = v178;
      _os_log_send_and_compose_impl(v180, &v210, &v219, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
      _os_crash_msg();
      __break(1u);
LABEL_185:
      v210 = 0;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v219 = 0u;
      v181 = MEMORY[0x1E69E9C10];
      v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v211 = 136315906;
      v212 = "operator[]";
      v213 = 1024;
      if (v182)
      {
        v183 = 3;
      }

      else
      {
        v183 = 2;
      }

      v214 = 621;
      v215 = 2048;
      v216 = a1;
      v217 = 2048;
      v218 = v196;
      _os_log_send_and_compose_impl(v183, &v210, &v219, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
      _os_crash_msg();
      __break(1u);
    }

    *(v195 + 16 * v56) = *(v195 + 16 * v26);
    v58 = v196;
    if (v196 <= v26)
    {
      goto LABEL_181;
    }

    if (v196 <= v56)
    {
      goto LABEL_185;
    }

    *(v194 + 16 * v56) = *(v194 + 16 * v26);
LABEL_52:
    a1 = (v26 + v28 + 1);
    v43 = v191 + 1;
    v40 = *a2;
  }

  while (v191 + 1 < v40);
LABEL_53:
  v26 = (v4 - 1);
  if (a2[4])
  {
    v59 = re::internal::GeomAttributeManager::addAttribute(v203, "vertexUV", 1, 6);
    v60 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v59);
    v63 = 0;
    LOWORD(v64) = *a2;
    a1 = v61;
    v65 = v193;
    v66 = v61 - v193;
    if (v61 < v193)
    {
      v66 = 0;
    }

    do
    {
      if (v61 == v63)
      {
        goto LABEL_145;
      }

      LOWORD(v62) = *a2;
      *&v67 = (0.5 / v64) + (v63 / LODWORD(v62));
      HIWORD(v62) = WORD1(v67);
      *(v60 + 8 * v63) = v67;
      if (v66 == v63)
      {
        goto LABEL_149;
      }

      HIDWORD(v67) = 1.0;
      *(v60 + 8 * v65) = v67;
      ++v63;
      ++v65;
    }

    while (v4 != v63);
    v68 = 0;
    v69 = v4;
    do
    {
      v28 = 0;
      LOWORD(v67) = *a2;
      v70 = 1.0 - ((v26 - v68) / v67);
      v17 = v69;
      v71 = v61 - v69;
      if (v61 < v69)
      {
        v71 = 0;
      }

      v72 = v60 + 8 * v69;
      do
      {
        if (v71 == v28)
        {
          goto LABEL_101;
        }

        LOWORD(v62) = *a2;
        v62 = LODWORD(v62);
        *&v67 = v28 / v62;
        *(&v67 + 1) = v70;
        *(v72 + 8 * v28++) = v67;
      }

      while (v4 + 1 != v28);
      v69 = v17 + v28;
      ++v68;
    }

    while (v68 != v26);
  }

  v73 = v192;
  if (*(a2 + 9) != 1)
  {
LABEL_72:
    v84 = v200;
    if (!v200)
    {
      goto LABEL_76;
    }

    v85 = v27;
    while (v85)
    {
      *v73 = vmulq_n_f32(*v73, *(a2 + 1));
      ++v73;
      --v85;
      if (!--v84)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_153;
  }

  v74 = re::internal::GeomAttributeManager::addAttribute(v203, "vertexNormal", 1, 7);
  v75 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v74);
  v77 = v200;
  if (v200)
  {
    a1 = v76;
    v78 = v27;
    v79 = v76;
    v80 = v192;
    while (v78)
    {
      if (!v79)
      {
        goto LABEL_169;
      }

      v81 = *v80++;
      v82 = vmulq_f32(v81, v81);
      *&v83 = v82.f32[2] + vaddv_f32(*v82.f32);
      *v82.f32 = vrsqrte_f32(v83);
      *v82.f32 = vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32)));
      *v75++ = vmulq_n_f32(v81, vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32))).f32[0]);
      --v79;
      --v78;
      if (!--v77)
      {
        goto LABEL_72;
      }
    }

LABEL_165:
    v210 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v163 = MEMORY[0x1E69E9C10];
    v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v211 = 136315906;
    v212 = "operator[]";
    v213 = 1024;
    if (v164)
    {
      v165 = 3;
    }

    else
    {
      v165 = 2;
    }

    v214 = 621;
    v215 = 2048;
    v216 = v27;
    v217 = 2048;
    v218 = v27;
    _os_log_send_and_compose_impl(v165, &v210, &v219, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v210 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v166 = MEMORY[0x1E69E9C10];
    v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v211 = 136315906;
    v212 = "operator[]";
    v213 = 1024;
    if (v167)
    {
      v168 = 3;
    }

    else
    {
      v168 = 2;
    }

    v214 = 621;
    v215 = 2048;
    v216 = a1;
    v217 = 2048;
    v218 = a1;
    _os_log_send_and_compose_impl(v168, &v210, &v219, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v210 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v169 = MEMORY[0x1E69E9C10];
    v170 = v57;
    v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v211 = 136315906;
    v212 = "operator[]";
    v213 = 1024;
    if (v171)
    {
      v172 = 3;
    }

    else
    {
      v172 = 2;
    }

    v214 = 621;
    v215 = 2048;
    v216 = v26;
    v217 = 2048;
    v218 = v170;
    _os_log_send_and_compose_impl(v172, &v210, &v219, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v211, 38, v185, v186);
    _os_crash_msg();
    __break(1u);
    goto LABEL_177;
  }

LABEL_76:
  v86 = 0;
  v17 = v201[2];
  v87 = (v202 + 8);
  v88 = (v4 - 1) * (v4 + 1);
  do
  {
    if (v17 == v86)
    {
      goto LABEL_121;
    }

    *(v87 - 2) = v86;
    *(v87 - 1) = v4 + v86 + 1;
    *v87 = v4 + v86;
    v87[1] = -1;
    v87 += 4;
    ++v86;
  }

  while (v4 != v86);
  v89 = (*a2 - 1) * v4;
  v90 = v202;
  v91 = v4;
  do
  {
    a1 = v89;
    if (v17 <= v89)
    {
      goto LABEL_125;
    }

    v92 = (v90 + 16 * v89);
    *v92 = v88 - 1;
    v92[1] = v88;
    v92[2] = v4 + v88;
    v92[3] = -1;
    ++v89;
    ++v88;
    --v91;
  }

  while (v91);
  v93 = 0;
  v94 = 2 * v4;
  v95 = v4;
  v96 = v4;
  do
  {
    v97 = 0;
    v98 = v202;
    do
    {
      a1 = (v96 + v97);
      if (v17 <= a1)
      {
        goto LABEL_97;
      }

      v99 = (v98 + 16 * a1);
      *v99 = v95 + v97;
      v99[1] = v95 + v97 + 1;
      v99[2] = v94 + v97 + 2;
      v99[3] = v94 + v97++ + 1;
    }

    while (v4 != v97);
    ++v93;
    v94 += v187;
    v95 += v187;
    v96 += v97;
  }

  while (v93 != v4 - 2);
  v100 = re::GeomMesh::operator=(v185, &v200);
  if (*(a2 + 10) == 1)
  {
    re::internal::mergeVertexPositions(v100, v101);
  }

LABEL_89:
  re::internal::GeomAttributeManager::~GeomAttributeManager(v203);
  result = v201[0];
  if (v201[0])
  {
    if (v202)
    {
      return (*(*v201[0] + 40))();
    }
  }

  return result;
}

void re::buildSphere(re::GeomMesh *a1, unsigned __int16 *a2)
{
  re::GeomMesh::GeomMesh(v4, 0);
  re::buildSphere(v4, a2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::add(a1, v4);
  re::GeomMesh::~GeomMesh(v4);
}

uint64_t re::internal::Callable<re::buildCylinder(re::GeomMesh &,re::GeomBuildCylinderOptions const&)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::operator()(uint64_t a1, float *a2, float *a3, float32x4_t *a4, float32x4_t *a5)
{
  v7 = *a3;
  v8 = *(a1 + 8);
  v25 = v8[1];
  v9 = v8[2];
  v10 = v8[3];
  v11 = v9 - v10;
  v12 = v10 + (*a3 * (v9 - v10));
  v13 = __sincosf_stret(*a2 * 6.2832);
  *&v14 = v13.__cosval * v12;
  v15 = (v7 * v25) + v25 * -0.5;
  *(&v14 + 1) = v15;
  v16.i32[1] = 0;
  v16.i32[3] = 0;
  v16.f32[0] = -v13.__sinval;
  v16.f32[2] = -v13.__cosval;
  v17.f32[0] = v13.__cosval * v11;
  v17.f32[1] = v25;
  v17.f32[2] = -(v13.__sinval * v11);
  v18 = vmulq_f32(v16, v16);
  *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  v20 = vrsqrte_f32(v19);
  v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(v16, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]);
  v23 = vmulq_f32(v17, v17);
  v18.f32[0] = v23.f32[2] + vaddv_f32(*v23.f32);
  *v23.f32 = vrsqrte_f32(v18.u32[0]);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v23.f32, *v23.f32)));
  *a4 = v22;
  *a5 = vmulq_n_f32(v17, vmul_f32(*v23.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  return v14;
}

void *re::internal::Callable<re::buildCylinder(re::GeomMesh &,re::GeomBuildCylinderOptions const&)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02F48;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::buildCylinder(re::GeomMesh &,re::GeomBuildCylinderOptions const&)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02F48;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::destroyCallable(uint64_t a1))(void)
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

re::GeomAttribute *re::anonymous namespace::getOrAddVector3Attribute(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  result = re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  if (!result)
  {

    return re::GeomMesh::addAttribute(a1, a2, v3, 7);
  }

  return result;
}

void *re::anonymous namespace::accessVector3Attribute(uint64_t a1, const char *a2)
{
  result = re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  if (result)
  {
    return re::GeomAttribute::accessValues<int>(result);
  }

  return result;
}

re::GeomAttribute *re::computeSmoothVertexNormals(re *this, re::GeomMesh *a2)
{
  v4 = this;
  v74 = *MEMORY[0x1E69E9840];
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexNormal");
  {
    v6 = result;
    v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(result);
    v9 = v8;
    v10 = re::GeomMesh::accessVertexPositions(v4);
    v12 = v11;
    v13 = *(v4 + 16);
    if (v13)
    {
      v14 = v9;
      v15 = v9;
      v16 = *(v4 + 16);
      v17 = v7;
      while (v15)
      {
        *v17++ = 0uLL;
        --v15;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      *&v60 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v14;
      v67 = 2048;
      v68 = v14;
      _os_log_send_and_compose_impl(v29, &v60, &v69, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v56);
      _os_crash_msg();
      __break(1u);
      goto LABEL_31;
    }

LABEL_7:
    v57 = v6;
    v58 = v9;
    v18 = *(v4 + 40);
    if (*(v4 + 40))
    {
      v2 = 0;
      while (1)
      {
        v6 = *(v4 + 40);
        if (v6 <= v2)
        {
          break;
        }

        v60 = *(*(v4 + 56) + 16 * v2);
        v3 = HIDWORD(v60);
        if (HIDWORD(v60) == -1)
        {
          v3 = v60;
          if (v60 >= v9)
          {
            goto LABEL_39;
          }

          v21.i64[0] = v19;
          v21.i64[1] = v20;
          v7[v60] = vaddq_f32(v7[v60], v21);
          v3 = DWORD1(v60);
          if (DWORD1(v60) >= v9)
          {
            goto LABEL_47;
          }

          v7[DWORD1(v60)] = vaddq_f32(v7[DWORD1(v60)], v21);
          v3 = DWORD2(v60);
          if (DWORD2(v60) >= v9)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v24 = v60;
          if (v60 >= v9)
          {
            goto LABEL_43;
          }

          v21.i64[0] = v22;
          v21.i64[1] = v23;
          v7[v60] = vaddq_f32(v7[v60], v21);
          v6 = DWORD1(v60);
          if (DWORD1(v60) >= v9)
          {
            goto LABEL_51;
          }

          v7[DWORD1(v60)] = vaddq_f32(v7[DWORD1(v60)], v21);
          v6 = DWORD2(v60);
          if (DWORD2(v60) >= v9)
          {
            goto LABEL_55;
          }

          v7[DWORD2(v60)] = vaddq_f32(v7[DWORD2(v60)], v21);
          if (v3 >= v9)
          {
            goto LABEL_63;
          }
        }

        v7[v3] = vaddq_f32(v21, v7[v3]);
        if (++v2 == v18)
        {
          goto LABEL_20;
        }
      }

LABEL_35:
      *&v60 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v34)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v64 = 797;
      v65 = 2048;
      v66 = v2;
      v67 = 2048;
      v68 = v6;
      _os_log_send_and_compose_impl(v35, &v60, &v69, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
LABEL_39:
      v59 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v24 = MEMORY[0x1E69E9C10];
      v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v36)
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v3;
      v67 = 2048;
      v68 = v58;
      _os_log_send_and_compose_impl(v37, &v59, &v69, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
LABEL_43:
      v59 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v38 = MEMORY[0x1E69E9C10];
      v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v39)
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v24;
      v67 = 2048;
      v68 = v58;
      _os_log_send_and_compose_impl(v40, &v59, &v69, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v59 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v6 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v3;
      v67 = 2048;
      v68 = v58;
      _os_log_send_and_compose_impl(v42, &v59, &v69, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v59 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v6;
      v67 = 2048;
      v68 = v58;
      _os_log_send_and_compose_impl(v45, &v59, &v69, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
LABEL_55:
      v59 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v6;
      v67 = 2048;
      v68 = v58;
      _os_log_send_and_compose_impl(v48, &v59, &v69, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
LABEL_59:
      v59 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v3;
      v67 = 2048;
      v68 = v58;
      _os_log_send_and_compose_impl(v51, &v59, &v69, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
LABEL_63:
      v59 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v52 = MEMORY[0x1E69E9C10];
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v3;
      v67 = 2048;
      v68 = v58;
      _os_log_send_and_compose_impl(v54, &v59, &v69, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
    }

LABEL_20:
    if (v13)
    {
      result = v57;
      v4 = v9;
      for (i = v9; i; --i)
      {
        v26 = vmulq_f32(*v7, *v7);
        *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
        *v26.f32 = vrsqrte_f32(v27);
        *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
        *v7 = vmulq_n_f32(*v7, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
        ++v7;
        if (!--v13)
        {
          return result;
        }
      }

LABEL_31:
      *&v60 = 0;
      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v30 = MEMORY[0x1E69E9C10];
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v31)
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v64 = 621;
      v65 = 2048;
      v66 = v4;
      v67 = 2048;
      v68 = v4;
      _os_log_send_and_compose_impl(v32, &v60, &v69, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v55, v57);
      _os_crash_msg();
      __break(1u);
      goto LABEL_35;
    }

    return v57;
  }

  return result;
}

re::GeomAttribute *re::computeSmoothFaceVaryingNormals(re *this, re::GeomMesh *a2, float a3)
{
  v7 = this;
  v240 = *MEMORY[0x1E69E9840];
  if (re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexNormal"))
  {
    re::internal::GeomAttributeManager::deleteAttribute((v7 + 64), "vertexNormal");
  }

  v8 = &v203;
  v183 = 0;
  v9 = &v188;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  v182 = 0;
  v175[1] = 0;
  v176 = 0;
  v175[0] = 0;
  v177 = 0;
  re::DynamicArray<re::GeomCell4>::resize(v175, *(v7 + 40));
  v10 = *(v7 + 40);
  if (*(v7 + 40))
  {
    v11 = v176;
    v12 = (v178 + 12);
    v13 = v176;
    do
    {
      if (!v13)
      {
        goto LABEL_230;
      }

      *v12 = -1;
      v12 += 4;
      v13 = (v13 - 1);
      --v10;
    }

    while (v10);
  }

  v14 = (v7 + 16);
  v15 = (*(v7 + 16) * 1.3);
  if (v180 < v15)
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(&v179, v15);
  }

  v204 = v7;
  v205[0] = 0;
  v205[1] = 0;
  v206 = 0;
  v214 = 0u;
  v215 = 0u;
  v217 = 0u;
  v218 = 0u;
  v208 = 0u;
  v209 = 0u;
  v207 = 0;
  v210 = 0;
  v211 = 0u;
  v212 = 0u;
  v216 = 0;
  v213 = 0;
  v220 = 0u;
  v221 = 0u;
  v219 = 0;
  v222 = 0;
  v224 = 0;
  v223 = 0;
  v225 = 0;
  v226 = 1;
  v228 = 0;
  v227 = 0;
  v229 = 0;
  v203 = cosf(a3);
  re::internal::GeomVertexConnectivity::buildVertexConnectivity((v7 + 16), &v188);
  re::DynamicArray<re::RigComponentConstraint>::operator=(&v211 + 8, &v188);
  re::DynamicArray<re::RigComponentConstraint>::operator=(&v214 + 8, &v193 + 1);
  v17 = *(&v217 + 1);
  if (*(&v217 + 1) && *(&v196 + 1) && *(&v217 + 1) != *(&v196 + 1))
  {
LABEL_298:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
    __break(1u);
  }

  *(&v217 + 1) = *(&v196 + 1);
  *(&v196 + 1) = v17;
  v18 = v218;
  v218 = v197;
  v197 = v18;
  v19 = v220;
  *&v220 = v199;
  *&v199 = v19;
  v20 = ++v198;
  ++v219;
  if (v17)
  {
    if (v19)
    {
      (*(*v17 + 40))(v17);
      v20 = v198;
    }

    *&v199 = 0;
    v197 = 0uLL;
    *(&v196 + 1) = 0;
    v198 = v20 + 1;
  }

  if (*(&v193 + 1))
  {
    if (v196)
    {
      (*(**(&v193 + 1) + 40))();
    }

    *&v196 = 0;
    v194 = 0uLL;
    *(&v193 + 1) = 0;
    ++v195;
  }

  v173 = v7;
  if (v188 && v193)
  {
    (*(*v188 + 40))();
  }

  v21 = *(v204 + 10);
  re::DynamicArray<re::Vector3<float>>::resize(&v208 + 8, v21);
  re::DynamicArray<re::Vector3<float>>::resize(v205, v21);
  v22 = re::GeomMesh::accessVertexPositions(v204);
  if (v21)
  {
    v7 = v22;
    v3 = v23;
    v24 = 0;
    v11 = 0;
    while (1)
    {
      v4 = *(v204 + 5);
      if (v4 <= v11)
      {
        goto LABEL_234;
      }

      *v185 = *(*(v204 + 7) + v24);
      v4 = v206;
      if (v206 <= v11)
      {
        break;
      }

      v4 = *(&v209 + 1);
      if (*(&v209 + 1) <= v11)
      {
        goto LABEL_242;
      }

      v25 = v208;
      v4 = v211;
      if (*&v185[12] == -1)
      {
      }

      else
      {
      }

      v28 = (v25 + 16 * v11);
      v29.i64[0] = v26;
      v29.i64[1] = v27;
      *v28 = v26;
      v28[1] = v27;
      v30 = vmulq_f32(v29, v29);
      v31 = v30.f32[2] + vaddv_f32(*v30.f32);
      if (v31 <= 0.0)
      {
        v35 = 0;
        v36 = 0;
      }

      else
      {
        v32 = v31;
        v33 = vrsqrte_f32(LODWORD(v31));
        v34 = vmul_f32(v33, vrsqrts_f32(LODWORD(v32), vmul_f32(v33, v33)));
        v37 = vmulq_n_f32(v29, vmul_f32(v34, vrsqrts_f32(LODWORD(v32), vmul_f32(v34, v34))).f32[0]);
        v36 = v37.i64[1];
        v35 = v37.i64[0];
      }

      v38 = (v4 + 16 * v11);
      *v38 = v35;
      v38[1] = v36;
      ++v11;
      v24 += 16;
      if (v21 == v11)
      {
        goto LABEL_35;
      }
    }

LABEL_238:
    *v230 = 0;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237[0].n128_u32[0] = 136315906;
    *(v237[0].n128_u64 + 4) = "operator[]";
    v237[0].n128_u16[6] = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *(&v237[0].n128_u32[3] + 2) = 789;
    v237[1].n128_u16[1] = 2048;
    *(v237[1].n128_u64 + 4) = v11;
    v237[1].n128_u16[6] = 2048;
    *(&v237[1].n128_u64[1] + 6) = v4;
    _os_log_send_and_compose_impl(v128, v230, &v188, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v237, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_242:
    *v230 = 0;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237[0].n128_u32[0] = 136315906;
    *(v237[0].n128_u64 + 4) = "operator[]";
    v237[0].n128_u16[6] = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    *(&v237[0].n128_u32[3] + 2) = 789;
    v237[1].n128_u16[1] = 2048;
    *(v237[1].n128_u64 + 4) = v11;
    v237[1].n128_u16[6] = 2048;
    *(&v237[1].n128_u64[1] + 6) = v4;
    _os_log_send_and_compose_impl(v131, v230, &v188, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v237, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_246:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v11;
    v186 = 2048;
    *v187 = v7;
    _os_log_send_and_compose_impl(v134, v230, v237, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_250:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v135 = MEMORY[0x1E69E9C10];
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v11;
    v186 = 2048;
    *v187 = v7;
    _os_log_send_and_compose_impl(v137, v230, v237, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_254:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v7;
    v186 = 2048;
    *v187 = v11;
    _os_log_send_and_compose_impl(v140, v230, v237, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_258:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v7;
    v186 = 2048;
    *v187 = v11;
    _os_log_send_and_compose_impl(v143, v230, v237, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_262:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v7;
    v186 = 2048;
    *v187 = v11;
    _os_log_send_and_compose_impl(v146, v230, v237, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_266:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v11;
    v186 = 2048;
    *v187 = v7;
    _os_log_send_and_compose_impl(v149, v230, v237, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_270:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v7;
    v186 = 2048;
    *v187 = v9;
    _os_log_send_and_compose_impl(v152, v230, v237, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_274:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v9;
    v186 = 2048;
    *v187 = v5;
    _os_log_send_and_compose_impl(v155, v230, v237, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_278:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v3;
    v186 = 2048;
    *v187 = v7;
    _os_log_send_and_compose_impl(v158, v230, v237, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
    goto LABEL_282;
  }

LABEL_35:
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v202 = 0;
  v193 = 0u;
  v194 = 0u;
  v191 = 0;
  v195 = 0;
  v196 = 0u;
  v197 = 0u;
  v199 = 0u;
  v200 = 0u;
  v198 = 0;
  v201 = 0;
  if (*v14)
  {
    for (i = 0; i < *v14; ++i)
    {
      ++v191;
      ++v195;
      ++v198;
      v190 = 0;
      *(&v194 + 1) = 0;
      *(&v197 + 1) = 0;
      *(&v200 + 1) = 0;
      ++v201;
      v11 = *(&v212 + 1);
      if (*(&v212 + 1) <= i)
      {
        goto LABEL_294;
      }

      v3 = *(v214 + 4 * i);
      re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize(&v220 + 1, v3);
      if (v3)
      {
        v7 = 0;
        while (1)
        {
          v40 = re::internal::GeomVertexConnectivity::faceVertex((&v211 + 8), i, v7);
          v11 = *(&v221 + 1);
          if (*(&v221 + 1) <= v7)
          {
            break;
          }

          v41 = v223 + 8 * v7;
          *v41 = v40;
          *(v41 + 4) = BYTE4(v40);
          if (++v7 == v3)
          {
            goto LABEL_42;
          }
        }

LABEL_218:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v112 = MEMORY[0x1E69E9C10];
        v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v113)
        {
          v114 = 3;
        }

        else
        {
          v114 = 2;
        }

        *&v185[14] = 789;
        *&v185[18] = 2048;
        *&v185[20] = v7;
        v186 = 2048;
        *v187 = v11;
        _os_log_send_and_compose_impl(v114, v230, v237, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_222:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v115 = MEMORY[0x1E69E9C10];
        v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v116)
        {
          v117 = 3;
        }

        else
        {
          v117 = 2;
        }

        *&v185[14] = 797;
        *&v185[18] = 2048;
        *&v185[20] = v11;
        v186 = 2048;
        *v187 = v5;
        _os_log_send_and_compose_impl(v117, v230, v237, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_226:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v8 = MEMORY[0x1E69E9C10];
        v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v118)
        {
          v119 = 3;
        }

        else
        {
          v119 = 2;
        }

        *&v185[14] = 797;
        *&v185[18] = 2048;
        *&v185[20] = v9;
        v186 = 2048;
        *v187 = v5;
        _os_log_send_and_compose_impl(v119, v230, v237, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_230:
        v237[0].n128_u64[0] = 0;
        *(v8 + 3) = 0u;
        *(v8 + 4) = 0u;
        *(v8 + 1) = 0u;
        *(v8 + 2) = 0u;
        *v8 = 0u;
        v120 = MEMORY[0x1E69E9C10];
        v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v188) = 136315906;
        *(v9 + 4) = "operator[]";
        WORD2(v189) = 1024;
        if (v121)
        {
          v122 = 3;
        }

        else
        {
          v122 = 2;
        }

        *(v9 + 14) = 789;
        WORD1(v190) = 2048;
        *(v9 + 20) = v11;
        v192 = 2048;
        *(v9 + 30) = v11;
        _os_log_send_and_compose_impl(v122, v237, &v203, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v188, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_234:
        *v185 = 0;
        *(v9 + 48) = 0u;
        *(v9 + 64) = 0u;
        *(v9 + 16) = 0u;
        *(v9 + 32) = 0u;
        *v9 = 0u;
        v123 = MEMORY[0x1E69E9C10];
        v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v237[0].n128_u32[0] = 136315906;
        *(v237[0].n128_u64 + 4) = "operator[]";
        v237[0].n128_u16[6] = 1024;
        if (v124)
        {
          v125 = 3;
        }

        else
        {
          v125 = 2;
        }

        *(&v237[0].n128_u32[3] + 2) = 797;
        v237[1].n128_u16[1] = 2048;
        *(v237[1].n128_u64 + 4) = v11;
        v237[1].n128_u16[6] = 2048;
        *(&v237[1].n128_u64[1] + 6) = v4;
        _os_log_send_and_compose_impl(v125, v185, &v188, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v237, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
        goto LABEL_238;
      }

LABEL_42:
      v42 = v229;
      v3 = DWORD2(v221);
      if ((BYTE8(v221) & 0x3F) != 0)
      {
        v43 = (DWORD2(v221) >> 6) + 1;
      }

      else
      {
        v43 = DWORD2(v221) >> 6;
      }

      v229 = DWORD2(v221);
      v237[0].n128_u64[0] = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v224, v43, v237);
      if (v3 && v42 > v3)
      {
        v44 = v229 & 0x3F;
        if ((v229 & 0x3F) != 0)
        {
          v45 = v44 == 63;
          v46 = -1 << v44;
          if (v45)
          {
            v47 = 63;
          }

          else
          {
            v47 = ~v46;
          }
        }

        else
        {
          v47 = 63;
        }

        v49 = &v227;
        if ((v226 & 1) == 0)
        {
          v49 = v228;
        }

        *&v49[v225 - 1] &= v47;
      }

      else if (!v3)
      {
        v48 = 1;
        goto LABEL_60;
      }

      for (j = 0; j != v3; ++j)
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v224, j);
      }

      v48 = 0;
LABEL_60:
      if (v225)
      {
        v51 = v228;
        if (v226)
        {
          v51 = &v227;
        }

        v52 = &v51[v225];
        do
        {
          v53 = 0;
          do
          {
            v54 = *v51++;
            v55 = vcnt_s8(v54);
            v55.i16[0] = vaddlv_u8(v55);
            v53 += v55.u32[0];
          }

          while (v51 != v52);
          if (!v53)
          {
            break;
          }

          if (v48)
          {
            v7 = 0xFFFFFFFFLL;
          }

          else
          {
            v56 = 0;
            v7 = 0;
            v57 = -1.0;
            v11 = 0xFFFFFFFFLL;
            do
            {
              if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v224, v7))
              {
                v4 = *(&v221 + 1);
                if (*(&v221 + 1) <= v7)
                {
                  goto LABEL_198;
                }

                v4 = v206;
                v9 = *(v223 + v56);
                if (v206 <= v9)
                {
                  goto LABEL_202;
                }

                v58 = vmulq_f32(*(v208 + 16 * v9), *(v208 + 16 * v9));
                v59 = vaddv_f32(*v58.f32);
                if ((v58.f32[2] + v59) <= v57)
                {
                  v11 = v11;
                }

                else
                {
                  v57 = v58.f32[2] + v59;
                  v11 = v7;
                }
              }

              ++v7;
              v56 += 8;
            }

            while (v3 != v7);
            v7 = v11;
          }

          re::DynamicBitset<unsigned long long,64ul>::clearBit(&v224, v7);
          v11 = *(&v221 + 1);
          if (*(&v221 + 1) <= v7)
          {
            goto LABEL_254;
          }

          re::DynamicArray<int>::add((&v196 + 8), (v223 + 8 * v7));
          v11 = *(&v221 + 1);
          if (*(&v221 + 1) <= v7)
          {
            goto LABEL_258;
          }

          re::DynamicArray<unsigned char>::add((&v199 + 8), (v223 + 8 * v7 + 4));
          v11 = *(&v221 + 1);
          if (*(&v221 + 1) <= v7)
          {
            goto LABEL_262;
          }

          v60 = 8 * v7;
          v7 = v206;
          v11 = *(v223 + v60);
          if (v206 <= v11)
          {
            goto LABEL_266;
          }

          v174 = *(v208 + 16 * v11);
          if ((v48 & 1) == 0)
          {
            v4 = 0;
            v7 = 0;
            v61 = 1;
            while (1)
            {
              if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v224, v7))
              {
                v9 = *(&v221 + 1);
                if (*(&v221 + 1) <= v7)
                {
                  goto LABEL_206;
                }

                v5 = v206;
                v9 = *(v223 + v4);
                LODWORD(v184) = *(v223 + v4);
                if (v206 <= v11)
                {
                  goto LABEL_210;
                }

                v62 = vmulq_f32(*(v208 + 16 * v11), *(v208 + 16 * v11));
                if ((v62.f32[2] + vaddv_f32(*v62.f32)) > 0.0)
                {
                  if (v206 <= v9)
                  {
                    goto LABEL_214;
                  }

                  v63 = vmulq_f32(*(v208 + 16 * v9), *(v208 + 16 * v9));
                  if ((v63.f32[2] + vaddv_f32(*v63.f32)) > 0.0)
                  {
                    v5 = *(&v209 + 1);
                    if (*(&v209 + 1) <= v11)
                    {
                      goto LABEL_222;
                    }

                    if (*(&v209 + 1) <= v9)
                    {
                      goto LABEL_226;
                    }

                    v64 = vmulq_f32(*(v211 + 16 * v11), *(v211 + 16 * v9));
                    if ((v64.f32[2] + vaddv_f32(*v64.f32)) >= v203)
                    {
                      v5 = &v188;
                      re::DynamicArray<int>::add((&v196 + 8), &v184);
                      v9 = *(&v221 + 1);
                      if (*(&v221 + 1) <= v7)
                      {
                        goto LABEL_270;
                      }

                      re::DynamicArray<unsigned char>::add((&v199 + 8), (v223 + v4 + 4));
                      v9 = v184;
                      v5 = v206;
                      if (v206 <= v184)
                      {
                        goto LABEL_274;
                      }

                      v174 = vaddq_f32(v174, *(v208 + 16 * v184));
                      re::DynamicBitset<unsigned long long,64ul>::clearBit(&v224, v7);
                      ++v61;
                    }
                  }
                }
              }

              ++v7;
              v4 += 8;
              if (v3 == v7)
              {
                goto LABEL_98;
              }
            }
          }

          v61 = 1;
LABEL_98:
          v65 = DWORD2(v194);
          if (DWORD2(v194))
          {
            v11 = (DWORD2(v194) - 1);
            v7 = v190;
            if (v190 <= v11)
            {
              goto LABEL_290;
            }

            v65 = *(v193 + 4 * v11);
          }

          v237[0].n128_u32[0] = v65 + v61;
          re::DynamicArray<int>::add(&v188, v237);
          v66 = vmulq_f32(v174, v174);
          *&v67 = v66.f32[2] + vaddv_f32(*v66.f32);
          *v66.f32 = vrsqrte_f32(v67);
          *v66.f32 = vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32)));
          v237[0] = vmulq_n_f32(v174, vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32))).f32[0]);
          re::DynamicArray<re::Vector3<float>>::add((&v193 + 8), v237);
          v51 = v228;
          if (v226)
          {
            v51 = &v227;
          }

          v52 = &v51[v225];
        }

        while (v225);
      }

      v7 = *(&v194 + 1);
      if (DWORD2(v194))
      {
        v11 = 0;
        while (1)
        {
          if (v7 <= v11)
          {
            goto LABEL_246;
          }

          v68 = v181;
          re::DynamicArray<re::Vector3<float>>::add(&v179, (v196 + 16 * v11));
          v7 = v190;
          if (v11)
          {
            v3 = v11 - 1;
            if (v190 <= v11 - 1)
            {
              goto LABEL_278;
            }

            v69 = *(v193 + 4 * v3);
          }

          else
          {
            v69 = 0;
          }

          if (v190 <= v11)
          {
            goto LABEL_250;
          }

          v70 = *(v193 + 4 * v11);
          if (v69 < v70)
          {
            break;
          }

LABEL_124:
          ++v11;
          v7 = *(&v194 + 1);
          if (v11 >= DWORD2(v194))
          {
            goto LABEL_125;
          }
        }

        v7 = *(&v197 + 1);
        v3 = *(&v200 + 1);
        if (*(&v197 + 1) <= v69)
        {
          v4 = v69;
        }

        else
        {
          v4 = *(&v197 + 1);
        }

        if (*(&v200 + 1) <= v69)
        {
          v71 = v69;
        }

        else
        {
          v71 = *(&v200 + 1);
        }

        v72 = (v199 + 4 * v69);
        v9 = v176;
        v73 = v178;
        v74 = (v202 + v69);
        v75 = v70 - v69;
        v76 = v71 - v69;
        v77 = v4 - v69;
        while (v77)
        {
          if (!v76)
          {
            goto LABEL_190;
          }

          v5 = *v72;
          if (v9 <= v5)
          {
            goto LABEL_194;
          }

          v78 = *v74++;
          *(v73 + 16 * v5 + 4 * v78) = v68;
          ++v72;
          --v76;
          --v77;
          if (!--v75)
          {
            goto LABEL_124;
          }
        }

        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v88 = MEMORY[0x1E69E9C10];
        v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v89)
        {
          v90 = 3;
        }

        else
        {
          v90 = 2;
        }

        *&v185[14] = 789;
        *&v185[18] = 2048;
        *&v185[20] = v4;
        v186 = 2048;
        *v187 = v7;
        _os_log_send_and_compose_impl(v90, v230, v237, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_190:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v91 = MEMORY[0x1E69E9C10];
        v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v92)
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        *&v185[14] = 789;
        *&v185[18] = 2048;
        *&v185[20] = v71;
        v186 = 2048;
        *v187 = v3;
        _os_log_send_and_compose_impl(v93, v230, v237, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_194:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v94 = MEMORY[0x1E69E9C10];
        v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v95)
        {
          v96 = 3;
        }

        else
        {
          v96 = 2;
        }

        *&v185[14] = 789;
        *&v185[18] = 2048;
        *&v185[20] = v5;
        v186 = 2048;
        *v187 = v9;
        _os_log_send_and_compose_impl(v96, v230, v237, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_198:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v97 = MEMORY[0x1E69E9C10];
        v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v98)
        {
          v99 = 3;
        }

        else
        {
          v99 = 2;
        }

        *&v185[14] = 789;
        *&v185[18] = 2048;
        *&v185[20] = v7;
        v186 = 2048;
        *v187 = v4;
        _os_log_send_and_compose_impl(v99, v230, v237, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_202:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v100 = MEMORY[0x1E69E9C10];
        v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v101)
        {
          v102 = 3;
        }

        else
        {
          v102 = 2;
        }

        *&v185[14] = 789;
        *&v185[18] = 2048;
        *&v185[20] = v9;
        v186 = 2048;
        *v187 = v4;
        _os_log_send_and_compose_impl(v102, v230, v237, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_206:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v103 = MEMORY[0x1E69E9C10];
        v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v104)
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        *&v185[14] = 789;
        *&v185[18] = 2048;
        *&v185[20] = v7;
        v186 = 2048;
        *v187 = v9;
        _os_log_send_and_compose_impl(v105, v230, v237, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_210:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v106 = MEMORY[0x1E69E9C10];
        v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v107)
        {
          v108 = 3;
        }

        else
        {
          v108 = 2;
        }

        *&v185[14] = 797;
        *&v185[18] = 2048;
        *&v185[20] = v11;
        v186 = 2048;
        *v187 = v5;
        _os_log_send_and_compose_impl(v108, v230, v237, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
LABEL_214:
        *v230 = 0;
        v238 = 0u;
        v239 = 0u;
        memset(v237, 0, sizeof(v237));
        v109 = MEMORY[0x1E69E9C10];
        v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v185 = 136315906;
        *&v185[4] = "operator[]";
        *&v185[12] = 1024;
        if (v110)
        {
          v111 = 3;
        }

        else
        {
          v111 = 2;
        }

        *&v185[14] = 797;
        *&v185[18] = 2048;
        *&v185[20] = v9;
        v186 = 2048;
        *v187 = v5;
        _os_log_send_and_compose_impl(v111, v230, v237, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
        _os_crash_msg();
        __break(1u);
        goto LABEL_218;
      }

LABEL_125:
      ;
    }
  }

  *&v187[2] = 0;
  memset(v185, 0, sizeof(v185));
  re::DynamicArray<float>::resize(v185, *(v173 + 40));
  v79 = *(v173 + 40);
  if (*(v173 + 40))
  {
    v80 = 0;
    v11 = *&v185[16];
    v81 = *&v187[2];
    while (v11 != v80)
    {
      *(v81 + 4 * v80) = v80;
      if (v79 == ++v80)
      {
        goto LABEL_130;
      }
    }

LABEL_282:
    v184 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v159 = MEMORY[0x1E69E9C10];
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *&v230[4] = "operator[]";
    v231 = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    v232 = 789;
    v233 = 2048;
    v234 = v11;
    v235 = 2048;
    v236 = v11;
    _os_log_send_and_compose_impl(v161, &v184, v237, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_286:
    v184 = 0;
    i = v230;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v162 = MEMORY[0x1E69E9C10];
    v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *&v230[4] = "operator[]";
    v231 = 1024;
    if (v163)
    {
      v164 = 3;
    }

    else
    {
      v164 = 2;
    }

    v232 = 621;
    v233 = 2048;
    v234 = v11;
    v235 = 2048;
    v236 = v11;
    _os_log_send_and_compose_impl(v164, &v184, v237, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_290:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v165 = MEMORY[0x1E69E9C10];
    v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v166)
    {
      v167 = 3;
    }

    else
    {
      v167 = 2;
    }

    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v11;
    v186 = 2048;
    *v187 = v7;
    _os_log_send_and_compose_impl(v167, v230, v237, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_294:
    *v230 = 0;
    v238 = 0u;
    v239 = 0u;
    memset(v237, 0, sizeof(v237));
    v168 = MEMORY[0x1E69E9C10];
    v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    if (v169)
    {
      v170 = 3;
    }

    else
    {
      v170 = 2;
    }

    *&v185[14] = 797;
    *&v185[18] = 2048;
    *&v185[20] = i;
    v186 = 2048;
    *v187 = v11;
    _os_log_send_and_compose_impl(v170, v230, v237, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
    goto LABEL_298;
  }

LABEL_130:
  v82 = re::GeomMesh::addFaceVaryingAttribute(v173, "vertexNormal", 7, v181, v175, v185);
  v83 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v82);
  if (v181)
  {
    v85 = 0;
    v11 = v84;
    while (v85 != v84)
    {
      *(v83 + 16 * v85) = *(v183 + 16 * v85);
      if (v181 <= ++v85)
      {
        goto LABEL_134;
      }
    }

    goto LABEL_286;
  }

LABEL_134:
  if (*v185 && *&v187[2])
  {
    (*(**v185 + 40))();
  }

  if (*(&v199 + 1))
  {
    if (v202)
    {
      (*(**(&v199 + 1) + 40))();
    }

    v202 = 0;
    v200 = 0uLL;
    *(&v199 + 1) = 0;
    ++v201;
  }

  if (*(&v196 + 1))
  {
    if (v199)
    {
      (*(**(&v196 + 1) + 40))();
    }

    *&v199 = 0;
    v197 = 0uLL;
    *(&v196 + 1) = 0;
    ++v198;
  }

  if (*(&v193 + 1))
  {
    if (v196)
    {
      (*(**(&v193 + 1) + 40))();
    }

    *&v196 = 0;
    v194 = 0uLL;
    *(&v193 + 1) = 0;
    ++v195;
  }

  if (v188 && v193)
  {
    (*(*v188 + 40))();
  }

  if (v224)
  {
    v86 = v226;
    if ((v226 & 1) == 0)
    {
      (*(*v224 + 40))();
      v86 = v226;
    }

    v224 = 0;
    v225 = 0;
    v226 = (v86 | 1) + 2;
  }

  if (*(&v220 + 1))
  {
    if (v223)
    {
      (*(**(&v220 + 1) + 40))();
    }

    v223 = 0;
    v221 = 0uLL;
    *(&v220 + 1) = 0;
    ++v222;
  }

  if (*(&v217 + 1))
  {
    if (v220)
    {
      (*(**(&v217 + 1) + 40))();
    }

    *&v220 = 0;
    v218 = 0uLL;
    *(&v217 + 1) = 0;
    ++v219;
  }

  if (*(&v214 + 1))
  {
    if (v217)
    {
      (*(**(&v214 + 1) + 40))();
    }

    *&v217 = 0;
    v215 = 0uLL;
    *(&v214 + 1) = 0;
    ++v216;
  }

  if (*(&v211 + 1))
  {
    if (v214)
    {
      (*(**(&v211 + 1) + 40))();
    }

    *&v214 = 0;
    v212 = 0uLL;
    *(&v211 + 1) = 0;
    ++v213;
  }

  if (*(&v208 + 1))
  {
    if (v211)
    {
      (*(**(&v208 + 1) + 40))();
    }

    *&v211 = 0;
    v209 = 0uLL;
    *(&v208 + 1) = 0;
    ++v210;
  }

  if (v205[0] && v208)
  {
    (*(*v205[0] + 40))();
  }

  if (v175[0] && v178)
  {
    (*(*v175[0] + 40))();
  }

  if (v179 && v183)
  {
    (*(*v179 + 40))();
  }

  return v82;
}

uint64_t re::computeVertexTangentsAndBitangentsInternal(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float32x4_t *a5, int *a6)
{
  v273 = a6;
  v310 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v11 = a2;
    v271 = a3;
    v12 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
    v14 = v13;
    v15 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a5);
    a5 = v15;
    v17 = v16;
    if (*(a1 + 16))
    {
      v18 = 0;
      v19 = v14;
      v6 = v16;
      while (v14 != v18)
      {
        v20 = &v12[v18];
        v20->i64[0] = 0;
        v20->i64[1] = 0;
        if (v16 == v18)
        {
          goto LABEL_200;
        }

        v21 = &v15[v18];
        v21->i64[0] = 0;
        v21->i64[1] = 0;
        if (++v18 >= *(a1 + 16))
        {
          goto LABEL_7;
        }
      }

      goto LABEL_196;
    }

LABEL_7:
    v22 = 0;
    if (v271 && (v273[1] & 1) != 0)
    {
      v22 = *(v271 + 16) == 1;
    }

    v270 = v22;
    v23 = re::GeomMesh::accessVertexPositions(a1);
    v275 = v24;
    v11 = re::GeomAttribute::accessValues<int>(v11);
    v274 = v25;
    *&v296[32] = 0;
    memset(v296, 0, 28);
    v26 = *(a1 + 16);
    v305.i32[0] = 0;
    re::DynamicArray<float>::resize(v296, v26, &v305, v27);
    v6 = *(a1 + 40);
    if (!v6)
    {
LABEL_35:
      v69 = *(a1 + 16);
      if (v69)
      {
        v70 = 0;
        v11 = v17;
        v6 = v14;
        v7 = *&v296[16];
        while (v7 != v70)
        {
          v71 = *(*&v296[32] + 4 * v70);
          if (v71 > 0.0)
          {
            if (v70 >= v14)
            {
              goto LABEL_236;
            }

            v72 = 1.0 / v71;
            v12[v70] = vmulq_n_f32(v12[v70], v72);
            if (v70 >= v17)
            {
              goto LABEL_240;
            }

            a5[v70] = vmulq_n_f32(a5[v70], v72);
            v69 = *(a1 + 16);
          }

          if (++v70 >= v69)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_204;
      }

LABEL_43:
      v73 = *v273;
      if (*v273 != 2)
      {
        if (v270)
        {
          v123 = re::GeomAttribute::accessValues<int>(v271);
          v125 = *(a1 + 16);
          if (v125)
          {
            v82 = v14;
            v11 = v124;
            v6 = v17;
            v126 = v14;
            v127 = v124;
            v128 = v12;
            v129 = v17;
            v130 = a5;
            while (v126)
            {
              if (!v127)
              {
                goto LABEL_276;
              }

              v131 = vmulq_f32(*v128, *v123);
              *v128 = vsubq_f32(*v128, vmulq_n_f32(*v123, v131.f32[2] + vaddv_f32(*v131.f32)));
              if (!v129)
              {
                goto LABEL_280;
              }

              v132 = *v123++;
              v133 = vmulq_f32(*v130, v132);
              *v130 = vsubq_f32(*v130, vmulq_n_f32(v132, v133.f32[2] + vaddv_f32(*v133.f32)));
              ++v130;
              --v129;
              ++v128;
              --v127;
              --v126;
              if (!--v125)
              {
                goto LABEL_147;
              }
            }

            goto LABEL_268;
          }

LABEL_147:
          v73 = *v273;
        }

        if (v73 == 1)
        {
          v134 = *(a1 + 16);
          if (v134)
          {
            v82 = v14;
            v17 = v17;
            v135 = v14;
            v136 = v17;
            while (v135)
            {
              v137 = *v12;
              v138 = vmulq_f32(v137, v137);
              v139 = v138.f32[2] + vaddv_f32(*v138.f32);
              if (fabsf(v139) < 1.0e-10)
              {
                v143 = 0;
                v144 = 0;
              }

              else
              {
                v140 = v139;
                v141 = vrsqrte_f32(LODWORD(v139));
                v142 = vmul_f32(v141, vrsqrts_f32(LODWORD(v140), vmul_f32(v141, v141)));
                v145 = vmulq_n_f32(v137, vmul_f32(v142, vrsqrts_f32(LODWORD(v140), vmul_f32(v142, v142))).f32[0]);
                v144 = v145.i64[1];
                v143 = v145.i64[0];
              }

              v12->i64[0] = v143;
              v12->i64[1] = v144;
              if (!v136)
              {
                goto LABEL_272;
              }

              v146 = *a5;
              v147 = vmulq_f32(v146, v146);
              v148 = v147.f32[2] + vaddv_f32(*v147.f32);
              if (fabsf(v148) < 1.0e-10)
              {
                v152 = 0;
                v153 = 0;
              }

              else
              {
                v149 = v148;
                v150 = vrsqrte_f32(LODWORD(v148));
                v151 = vmul_f32(v150, vrsqrts_f32(LODWORD(v149), vmul_f32(v150, v150)));
                v154 = vmulq_n_f32(v146, vmul_f32(v151, vrsqrts_f32(LODWORD(v149), vmul_f32(v151, v151))).f32[0]);
                v153 = v154.i64[1];
                v152 = v154.i64[0];
              }

              a5->i64[0] = v152;
              a5->i64[1] = v153;
              ++a5;
              --v136;
              ++v12;
              --v135;
              if (!--v134)
              {
                goto LABEL_184;
              }
            }

            goto LABEL_264;
          }
        }

LABEL_184:
        v120 = *v296;
        if (!*v296)
        {
          return 1;
        }

        v121 = *&v296[32];
        if (!*&v296[32])
        {
          return 1;
        }

        goto LABEL_186;
      }

      if (v271)
      {
        v75 = re::GeomAttribute::accessValues<int>(v271);
        goto LABEL_174;
      }

LABEL_173:
      v75 = 0;
      v74 = -1;
LABEL_174:
      if (v74 == v14)
      {
        if (v14)
        {
          v14 = v14;
          v82 = v17;
          v17 = v17;
          while (v17)
          {
            --v17;
            if (!--v14)
            {
              goto LABEL_184;
            }
          }

          goto LABEL_256;
        }
      }

      else if (v14)
      {
        v164 = v14;
        v82 = v17;
        v17 = v17;
        while (v17)
        {
          v14 = &v12[1];
          v11 = &a5[1];
          v165 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a5, *a5), *a5, 0xCuLL), vnegq_f32(*v12)), *a5, vextq_s8(vuzp1q_s32(*v12, *v12), *v12, 0xCuLL));
          v166 = vextq_s8(vuzp1q_s32(v165, v165), v165, 0xCuLL);
          v167 = vmulq_f32(v165, v165);
          *&v168 = v167.f32[1] + (v167.f32[2] + v167.f32[0]);
          *v167.f32 = vrsqrte_f32(v168);
          *v167.f32 = vmul_f32(*v167.f32, vrsqrts_f32(v168, vmul_f32(*v167.f32, *v167.f32)));
          v305 = vmulq_n_f32(v166, vmul_f32(*v167.f32, vrsqrts_f32(v168, vmul_f32(*v167.f32, *v167.f32))).f32[0]);
          --v17;
          ++v12;
          ++a5;
          if (!--v164)
          {
            goto LABEL_184;
          }
        }

        goto LABEL_260;
      }

      goto LABEL_184;
    }

    v28 = v23;
    v29 = 0;
LABEL_12:
    if (v6 <= v29)
    {
      goto LABEL_208;
    }

    v289 = *(*(a1 + 56) + 16 * v29);
    v30 = v289;
    v31 = v275;
    if (v289 >= v275)
    {
      goto LABEL_212;
    }

    v6 = DWORD1(v289);
    if (DWORD1(v289) >= v275)
    {
      goto LABEL_216;
    }

    v7 = DWORD2(v289);
    if (DWORD2(v289) >= v275)
    {
      goto LABEL_220;
    }

    v32 = v274;
    if (v289 >= v274)
    {
      goto LABEL_224;
    }

    if (DWORD1(v289) >= v274)
    {
      goto LABEL_228;
    }

    if (DWORD2(v289) >= v274)
    {
      goto LABEL_232;
    }

    v8 = HIDWORD(v289);
    if (HIDWORD(v289) == -1)
    {
      v54 = *(v28 + 16 * v289);
      v55 = vsubq_f32(*(v28 + 16 * DWORD1(v289)), v54);
      v56 = vsubq_f32(*(v28 + 16 * DWORD2(v289)), v54);
      v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), vnegq_f32(v55)), v56, vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL));
      v58 = vmulq_f32(v57, v57);
      v62 = *(v11 + 8 * DWORD1(v289));
      v59 = *(v11 + 8 * v289);
      v42 = sqrtf(v58.f32[1] + (v58.f32[2] + v58.f32[0]));
      v60 = vsub_f32(v62, v59);
      v61 = vsub_f32(*(v11 + 8 * DWORD2(v289)), v59);
      *v62.i32 = (-v60.f32[1] * v61.f32[0]) + (v60.f32[0] * v61.f32[1]);
      if ((*v62.i32 * *v62.i32) > 0.0)
      {
        v63 = vdupq_lane_s32(v62, 0);
        v51 = vdivq_f32(vsubq_f32(vmulq_lane_f32(v55, v61, 1), vmulq_lane_f32(v56, v60, 1)), v63);
        v52 = vdivq_f32(vsubq_f32(vmulq_n_f32(v56, v60.f32[0]), vmulq_n_f32(v55, v61.f32[0])), v63);
        v53 = 3;
        goto LABEL_29;
      }

      v52 = 0uLL;
      v53 = 3;
    }

    else
    {
      if (HIDWORD(v289) >= v275)
      {
        goto LABEL_244;
      }

      if (HIDWORD(v289) >= v274)
      {
        goto LABEL_248;
      }

      v33 = *(v28 + 16 * HIDWORD(v289));
      v34 = *(v28 + 16 * DWORD1(v289));
      v35 = *(v28 + 16 * DWORD2(v289));
      v36 = *(v28 + 16 * v289);
      v37 = vsubq_f32(v33, v34);
      v38 = vsubq_f32(v35, v36);
      v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
      v40 = vmulq_f32(v39, v39);
      v41 = *(v11 + 8 * v289);
      v47 = *(v11 + 8 * DWORD1(v289));
      v42 = sqrtf(v40.f32[1] + (v40.f32[2] + v40.f32[0]));
      v43 = *(v11 + 8 * DWORD2(v289));
      v44 = *(v11 + 8 * HIDWORD(v289));
      v45 = vsub_f32(vadd_f32(vsub_f32(v47, v41), v43), v44);
      v46 = vsub_f32(vadd_f32(v43, vsub_f32(v44, v41)), v47);
      *v47.i32 = (-v45.f32[1] * v46.f32[0]) + (v45.f32[0] * v46.f32[1]);
      if ((*v47.i32 * *v47.i32) > 0.0)
      {
        v48 = vsubq_f32(vaddq_f32(v35, vsubq_f32(v33, v36)), v34);
        v49 = vsubq_f32(vaddq_f32(v35, vsubq_f32(v34, v36)), v33);
        v50 = vdupq_lane_s32(v47, 0);
        v51 = vdivq_f32(vsubq_f32(vmulq_lane_f32(v49, v46, 1), vmulq_lane_f32(v48, v45, 1)), v50);
        v52 = vdivq_f32(vsubq_f32(vmulq_n_f32(v48, v45.f32[0]), vmulq_n_f32(v49, v46.f32[0])), v50);
        v53 = 4;
        goto LABEL_29;
      }

      v52 = 0uLL;
      v53 = 4;
    }

    v51 = 0uLL;
LABEL_29:
    v64 = 0;
    v65 = v42 * 0.5;
    v66 = vmulq_n_f32(v51, v65);
    v67 = vmulq_n_f32(v52, v65);
    v7 = *&v296[16];
    v68 = 4 * v53;
    while (1)
    {
      v6 = *(&v289 + v64);
      if (v7 <= v6)
      {
        break;
      }

      *(*&v296[32] + 4 * v6) = v65 + *(*&v296[32] + 4 * v6);
      if (v6 >= v14)
      {
        goto LABEL_165;
      }

      v12[v6] = vaddq_f32(v66, v12[v6]);
      if (v6 >= v17)
      {
        goto LABEL_169;
      }

      a5[v6] = vaddq_f32(v67, a5[v6]);
      v64 += 4;
      if (v68 == v64)
      {
        ++v29;
        v6 = *(a1 + 40);
        if (v29 >= v6)
        {
          goto LABEL_35;
        }

        goto LABEL_12;
      }
    }

    v281[0] = 0;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    v305 = 0u;
    v155 = MEMORY[0x1E69E9C10];
    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v293 = 136315906;
    *&v293[4] = "operator[]";
    *&v293[12] = 1024;
    if (v156)
    {
      v157 = 3;
    }

    else
    {
      v157 = 2;
    }

    *&v293[14] = 789;
    *&v293[18] = 2048;
    *&v293[20] = v6;
    v294 = 2048;
    *v295 = v7;
    _os_log_send_and_compose_impl(v157, v281, &v305, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v281[0] = 0;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    v305 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v293 = 136315906;
    *&v293[4] = "operator[]";
    *&v293[12] = 1024;
    if (v159)
    {
      v160 = 3;
    }

    else
    {
      v160 = 2;
    }

    *&v293[14] = 621;
    *&v293[18] = 2048;
    *&v293[20] = v6;
    v294 = 2048;
    *v295 = v14;
    _os_log_send_and_compose_impl(v160, v281, &v305, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v281[0] = 0;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    v305 = 0u;
    v161 = MEMORY[0x1E69E9C10];
    v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v293 = 136315906;
    *&v293[4] = "operator[]";
    *&v293[12] = 1024;
    if (v162)
    {
      v163 = 3;
    }

    else
    {
      v163 = 2;
    }

    *&v293[14] = 621;
    *&v293[18] = 2048;
    *&v293[20] = v6;
    v294 = 2048;
    *v295 = v17;
    _os_log_send_and_compose_impl(v163, v281, &v305, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
    _os_crash_msg();
    __break(1u);
    goto LABEL_173;
  }

  if (!a3 || *(a3 + 16) != 1)
  {
    return 0;
  }

  v272 = a3;
  *v296 = 0;
  *&v296[8] = 0;
  *&v296[16] = 1;
  *&v296[24] = 0;
  *&v296[32] = 0;
  v76 = *(a1 + 16);
  if ((v76 & 0x3F) != 0)
  {
    v77 = (v76 >> 6) + 1;
  }

  else
  {
    v77 = v76 >> 6;
  }

  v297 = *(a1 + 16);
  v305.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v296, v77, &v305);
  v78 = a1;
  if (*(a1 + 16))
  {
    v79 = 0;
    do
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v296, v79);
      v78 = a1;
      ++v79;
    }

    while (v79 < *(a1 + 16));
  }

  *&v295[2] = 0;
  memset(v293, 0, sizeof(v293));
  v292 = 0;
  v290 = 0;
  v289 = 0uLL;
  v291 = 0;
  v80 = v78;
  re::computeVertexFaceConnectivity(v78, v293, &v289);
  v284 = 0;
  v281[1] = 0;
  v282 = 0;
  v281[0] = 0;
  v283 = 0;
  re::DynamicArray<float>::resize(v281, *(v80 + 16));
  v280 = 0;
  v277[1] = 0;
  v278 = 0;
  v277[0] = 0;
  v279 = 0;
  v81 = *&v296[8];
  if ((*&v296[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v82 = &v296[24];
    v83 = *&v296[32];
    if (v296[16])
    {
      v83 = &v296[24];
    }

    v6 = 2139095040;
    do
    {
      v84 = 0;
      while (1)
      {
        v86 = *v83;
        v83 += 8;
        v85 = v86;
        if (v86)
        {
          break;
        }

        v84 -= 64;
        if (!--v81)
        {
          goto LABEL_97;
        }
      }

      v87 = __clz(__rbit64(v85));
      if (v87 + 1 == v84)
      {
        break;
      }

      v14 = v87 - v84;
      v17 = 0xFFFFFFFFLL;
      v88 = -1;
      do
      {
        v11 = v14;
        v7 = v290;
        if (v290 <= v14)
        {
          goto LABEL_252;
        }

        if (v14)
        {
          v8 = (v14 - 1);
          if (v290 <= v8)
          {
            goto LABEL_300;
          }

          v89 = *(v292 + 4 * v8);
        }

        else
        {
          v89 = 0;
        }

        v90 = *(v292 + 4 * v14) - v89;
        if (v90)
        {
          if (v17 == -1 || v90 < v88)
          {
            v88 = v90;
            v17 = v14;
          }

          else
          {
            v17 = v17;
          }
        }

        else
        {
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v296, v14);
        }

        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v296, v14 + 1);
        v14 = FirstBitSet;
      }

      while (v88 >= 2 && FirstBitSet != -1);
      if (v17 == -1)
      {
        break;
      }

      re::DynamicBitset<unsigned long long,64ul>::clearBit(v296, v17);
      v305.i64[0] = *&v295[2];
      v305.i64[1] = *&v293[16];
      *v286 = v292;
      *&v286[8] = v290;
      re::computeManhattanDistanceToVertex(a1, v17, &v305, v286, v277, v95);
      v14 = v278;
      if (v278)
      {
        v17 = 0;
        v96 = 1;
        v97 = v280;
        do
        {
          if (*(v97 + 4 * v17) != INFINITY)
          {
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v296, v17);
            v14 = v278;
            if (v278 <= v17)
            {
              goto LABEL_308;
            }

            v11 = v282;
            if (v282 <= v17)
            {
LABEL_312:
              *v298 = 0;
              v308 = 0u;
              v309 = 0u;
              v306 = 0u;
              v307 = 0u;
              v305 = 0u;
              v267 = MEMORY[0x1E69E9C10];
              v268 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v286 = 136315906;
              *&v286[4] = "operator[]";
              *&v286[12] = 1024;
              if (v268)
              {
                v269 = 3;
              }

              else
              {
                v269 = 2;
              }

              *&v286[14] = 789;
              *&v286[18] = 2048;
              *&v286[20] = v17;
              v287 = 2048;
              *v288 = v11;
              _os_log_send_and_compose_impl(v269, v298, &v305, 80, &dword_1E1C61000, v267, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v286, 38, v272, v273);
              _os_crash_msg();
              __break(1u);
            }

            v97 = v280;
            *(v284 + 4 * v17) = *(v280 + 4 * v17);
          }

          v17 = v96;
        }

        while (v14 > v96++);
      }

      v83 = (v296[16] & 1) != 0 ? &v296[24] : *&v296[32];
      v81 = *&v296[8];
    }

    while ((*&v296[8] & 0x3FFFFFFFFFFFFFFLL) != 0);
  }

LABEL_97:
  *&v288[2] = 0;
  memset(v286, 0, sizeof(v286));
  v305.i64[0] = v284;
  v305.i64[1] = v282;
  re::computeGradientField(a1, &v305, v286);
  v99 = re::GeomAttribute::accessValues<int>(v272);
  LODWORD(v17) = v100;
  v101 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
  LODWORD(v14) = v102;
  v103 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a5);
  if (*(a1 + 16))
  {
    a5 = 0;
    v17 = v17;
    v14 = v14;
    v11 = v104;
    while (1)
    {
      if (a5 == v17)
      {
        goto LABEL_284;
      }

      if (a5 == v14)
      {
        goto LABEL_288;
      }

      if (a5 == v104)
      {
        goto LABEL_292;
      }

      v105 = (v101 + 16 * a5);
      *v105 = 0;
      v105[1] = 0;
      v6 = v290;
      if (a5)
      {
        v7 = &a5[-1].u64[1] + 7;
        if (v290 <= (&a5[-1].u64[1] + 7))
        {
          goto LABEL_304;
        }

        v7 = *(v292 + 4 * v7);
      }

      else
      {
        v7 = 0;
      }

      if (v290 <= a5)
      {
        goto LABEL_296;
      }

      v106 = *(v292 + 4 * a5);
      v107 = 0uLL;
      if (v7 < v106)
      {
        while (1)
        {
          v6 = *&v293[16];
          if (*&v293[16] <= v7)
          {
            break;
          }

          v6 = *(*&v295[2] + 4 * v7);
          v8 = *&v286[16];
          if (*&v286[16] <= v6)
          {
            goto LABEL_192;
          }

          v107 = vaddq_f32(v107, *(*&v288[2] + 16 * v6));
          *(v101 + 16 * a5) = v107;
          if (v106 == ++v7)
          {
            goto LABEL_111;
          }
        }

        v285 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v169 = MEMORY[0x1E69E9C10];
        v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v298 = 136315906;
        *&v298[4] = "operator[]";
        v299 = 1024;
        if (v170)
        {
          v171 = 3;
        }

        else
        {
          v171 = 2;
        }

        v300 = 789;
        v301 = 2048;
        v302 = v7;
        v303 = 2048;
        v304 = v6;
        _os_log_send_and_compose_impl(v171, &v285, &v305, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v298, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_192:
        v285 = 0;
        v19 = &v289;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v172 = MEMORY[0x1E69E9C10];
        v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v298 = 136315906;
        *&v298[4] = "operator[]";
        v299 = 1024;
        if (v173)
        {
          v174 = 3;
        }

        else
        {
          v174 = 2;
        }

        v300 = 789;
        v301 = 2048;
        v302 = v6;
        v303 = 2048;
        v304 = v8;
        _os_log_send_and_compose_impl(v174, &v285, &v305, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v298, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_196:
        *v293 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v175 = MEMORY[0x1E69E9C10];
        v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v296 = 136315906;
        *&v296[4] = "operator[]";
        *&v296[12] = 1024;
        if (v176)
        {
          v177 = 3;
        }

        else
        {
          v177 = 2;
        }

        *&v296[14] = 621;
        *&v296[18] = 2048;
        *&v296[20] = v19;
        *&v296[28] = 2048;
        *&v296[30] = v19;
        _os_log_send_and_compose_impl(v177, v293, &v305, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v296, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_200:
        *v293 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v178 = MEMORY[0x1E69E9C10];
        v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v296 = 136315906;
        *&v296[4] = "operator[]";
        *&v296[12] = 1024;
        if (v179)
        {
          v180 = 3;
        }

        else
        {
          v180 = 2;
        }

        *&v296[14] = 621;
        *&v296[18] = 2048;
        *&v296[20] = v6;
        *&v296[28] = 2048;
        *&v296[30] = v6;
        _os_log_send_and_compose_impl(v180, v293, &v305, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v296, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_204:
        *&v289 = 0;
        v29 = &v289;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v181 = MEMORY[0x1E69E9C10];
        v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v182)
        {
          v183 = 3;
        }

        else
        {
          v183 = 2;
        }

        *&v293[14] = 789;
        *&v293[18] = 2048;
        *&v293[20] = v7;
        v294 = 2048;
        *v295 = v7;
        _os_log_send_and_compose_impl(v183, &v289, &v305, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_208:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v184)
        {
          v185 = 3;
        }

        else
        {
          v185 = 2;
        }

        *&v293[14] = 797;
        *&v293[18] = 2048;
        *&v293[20] = v29;
        v294 = 2048;
        *v295 = v6;
        _os_log_send_and_compose_impl(v185, &v289, &v305, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_212:
        v281[0] = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v186 = MEMORY[0x1E69E9C10];
        v187 = v31;
        v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v188)
        {
          v189 = 3;
        }

        else
        {
          v189 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v30;
        v294 = 2048;
        *v295 = v187;
        _os_log_send_and_compose_impl(v189, v281, &v305, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_216:
        v281[0] = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v190 = MEMORY[0x1E69E9C10];
        v191 = v31;
        v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v192)
        {
          v193 = 3;
        }

        else
        {
          v193 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v6;
        v294 = 2048;
        *v295 = v191;
        _os_log_send_and_compose_impl(v193, v281, &v305, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_220:
        v281[0] = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v194 = v31;
        v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v195)
        {
          v196 = 3;
        }

        else
        {
          v196 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v7;
        v294 = 2048;
        *v295 = v194;
        _os_log_send_and_compose_impl(v196, v281, &v305, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_224:
        v281[0] = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v197 = MEMORY[0x1E69E9C10];
        a5 = v32;
        v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v198)
        {
          v199 = 3;
        }

        else
        {
          v199 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v30;
        v294 = 2048;
        *v295 = a5;
        _os_log_send_and_compose_impl(v199, v281, &v305, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_228:
        v281[0] = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v200 = MEMORY[0x1E69E9C10];
        v201 = v32;
        v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v202)
        {
          v203 = 3;
        }

        else
        {
          v203 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v6;
        v294 = 2048;
        *v295 = v201;
        _os_log_send_and_compose_impl(v203, v281, &v305, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_232:
        v281[0] = 0;
        v70 = &v289;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v204 = MEMORY[0x1E69E9C10];
        v205 = v32;
        v206 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v206)
        {
          v207 = 3;
        }

        else
        {
          v207 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v7;
        v294 = 2048;
        *v295 = v205;
        _os_log_send_and_compose_impl(v207, v281, &v305, 80, &dword_1E1C61000, v204, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_236:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v208 = MEMORY[0x1E69E9C10];
        v209 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v209)
        {
          v210 = 3;
        }

        else
        {
          v210 = 2;
        }

        *&v293[14] = 621;
        *&v293[18] = 2048;
        *&v293[20] = v70;
        v294 = 2048;
        *v295 = v6;
        _os_log_send_and_compose_impl(v210, &v289, &v305, 80, &dword_1E1C61000, v208, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_240:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v211 = MEMORY[0x1E69E9C10];
        v212 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v212)
        {
          v213 = 3;
        }

        else
        {
          v213 = 2;
        }

        *&v293[14] = 621;
        *&v293[18] = 2048;
        *&v293[20] = v70;
        v294 = 2048;
        *v295 = v11;
        _os_log_send_and_compose_impl(v213, &v289, &v305, 80, &dword_1E1C61000, v211, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_244:
        v281[0] = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v214 = MEMORY[0x1E69E9C10];
        v215 = v31;
        v216 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v216)
        {
          v217 = 3;
        }

        else
        {
          v217 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v8;
        v294 = 2048;
        *v295 = v215;
        _os_log_send_and_compose_impl(v217, v281, &v305, 80, &dword_1E1C61000, v214, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_248:
        v281[0] = 0;
        v82 = &v289;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v218 = MEMORY[0x1E69E9C10];
        v219 = v32;
        v220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v220)
        {
          v221 = 3;
        }

        else
        {
          v221 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v8;
        v294 = 2048;
        *v295 = v219;
        _os_log_send_and_compose_impl(v221, v281, &v305, 80, &dword_1E1C61000, v218, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_252:
        *v298 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v222 = MEMORY[0x1E69E9C10];
        v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v286 = 136315906;
        *&v286[4] = "operator[]";
        *&v286[12] = 1024;
        if (v223)
        {
          v224 = 3;
        }

        else
        {
          v224 = 2;
        }

        *&v286[14] = 789;
        *&v286[18] = 2048;
        *&v286[20] = v11;
        v287 = 2048;
        *v288 = v7;
        _os_log_send_and_compose_impl(v224, v298, &v305, 80, &dword_1E1C61000, v222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v286, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_256:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v225 = MEMORY[0x1E69E9C10];
        v226 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v226)
        {
          v227 = 3;
        }

        else
        {
          v227 = 2;
        }

        *&v293[14] = 621;
        *&v293[18] = 2048;
        *&v293[20] = v82;
        v294 = 2048;
        *v295 = v82;
        _os_log_send_and_compose_impl(v227, &v289, &v305, 80, &dword_1E1C61000, v225, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_260:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v228 = MEMORY[0x1E69E9C10];
        v229 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v229)
        {
          v230 = 3;
        }

        else
        {
          v230 = 2;
        }

        *&v293[14] = 621;
        *&v293[18] = 2048;
        *&v293[20] = v82;
        v294 = 2048;
        *v295 = v82;
        _os_log_send_and_compose_impl(v230, &v289, &v305, 80, &dword_1E1C61000, v228, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_264:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v231 = MEMORY[0x1E69E9C10];
        v232 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v232)
        {
          v233 = 3;
        }

        else
        {
          v233 = 2;
        }

        *&v293[14] = 621;
        *&v293[18] = 2048;
        *&v293[20] = v82;
        v294 = 2048;
        *v295 = v82;
        _os_log_send_and_compose_impl(v233, &v289, &v305, 80, &dword_1E1C61000, v231, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_268:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v234 = MEMORY[0x1E69E9C10];
        v235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v235)
        {
          v236 = 3;
        }

        else
        {
          v236 = 2;
        }

        *&v293[14] = 621;
        *&v293[18] = 2048;
        *&v293[20] = v82;
        v294 = 2048;
        *v295 = v82;
        _os_log_send_and_compose_impl(v236, &v289, &v305, 80, &dword_1E1C61000, v234, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_272:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v237 = MEMORY[0x1E69E9C10];
        v238 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v238)
        {
          v239 = 3;
        }

        else
        {
          v239 = 2;
        }

        *&v293[14] = 621;
        *&v293[18] = 2048;
        *&v293[20] = v17;
        v294 = 2048;
        *v295 = v17;
        _os_log_send_and_compose_impl(v239, &v289, &v305, 80, &dword_1E1C61000, v237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_276:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v240 = MEMORY[0x1E69E9C10];
        v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v241)
        {
          v242 = 3;
        }

        else
        {
          v242 = 2;
        }

        *&v293[14] = 613;
        *&v293[18] = 2048;
        *&v293[20] = v11;
        v294 = 2048;
        *v295 = v11;
        _os_log_send_and_compose_impl(v242, &v289, &v305, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_280:
        *&v289 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v243 = MEMORY[0x1E69E9C10];
        v244 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v293 = 136315906;
        *&v293[4] = "operator[]";
        *&v293[12] = 1024;
        if (v244)
        {
          v245 = 3;
        }

        else
        {
          v245 = 2;
        }

        *&v293[14] = 621;
        *&v293[18] = 2048;
        *&v293[20] = v6;
        v294 = 2048;
        *v295 = v6;
        _os_log_send_and_compose_impl(v245, &v289, &v305, 80, &dword_1E1C61000, v243, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v293, 38, v271, v273);
        _os_crash_msg();
        __break(1u);
LABEL_284:
        v285 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v246 = MEMORY[0x1E69E9C10];
        v247 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v298 = 136315906;
        *&v298[4] = "operator[]";
        v299 = 1024;
        if (v247)
        {
          v248 = 3;
        }

        else
        {
          v248 = 2;
        }

        v300 = 613;
        v301 = 2048;
        v302 = v17;
        v303 = 2048;
        v304 = v17;
        _os_log_send_and_compose_impl(v248, &v285, &v305, 80, &dword_1E1C61000, v246, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v298, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_288:
        v285 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v249 = MEMORY[0x1E69E9C10];
        v250 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v298 = 136315906;
        *&v298[4] = "operator[]";
        v299 = 1024;
        if (v250)
        {
          v251 = 3;
        }

        else
        {
          v251 = 2;
        }

        v300 = 621;
        v301 = 2048;
        v302 = v14;
        v303 = 2048;
        v304 = v14;
        _os_log_send_and_compose_impl(v251, &v285, &v305, 80, &dword_1E1C61000, v249, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v298, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_292:
        v285 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v252 = MEMORY[0x1E69E9C10];
        v253 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v298 = 136315906;
        *&v298[4] = "operator[]";
        v299 = 1024;
        if (v253)
        {
          v254 = 3;
        }

        else
        {
          v254 = 2;
        }

        v300 = 621;
        v301 = 2048;
        v302 = v11;
        v303 = 2048;
        v304 = v11;
        _os_log_send_and_compose_impl(v254, &v285, &v305, 80, &dword_1E1C61000, v252, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v298, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_296:
        v285 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v255 = MEMORY[0x1E69E9C10];
        v256 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v298 = 136315906;
        *&v298[4] = "operator[]";
        v299 = 1024;
        if (v256)
        {
          v257 = 3;
        }

        else
        {
          v257 = 2;
        }

        v300 = 789;
        v301 = 2048;
        v302 = a5;
        v303 = 2048;
        v304 = v6;
        _os_log_send_and_compose_impl(v257, &v285, &v305, 80, &dword_1E1C61000, v255, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v298, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_300:
        *v298 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v258 = MEMORY[0x1E69E9C10];
        v259 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v286 = 136315906;
        *&v286[4] = "operator[]";
        *&v286[12] = 1024;
        if (v259)
        {
          v260 = 3;
        }

        else
        {
          v260 = 2;
        }

        *&v286[14] = 789;
        *&v286[18] = 2048;
        *&v286[20] = v8;
        v287 = 2048;
        *v288 = v7;
        _os_log_send_and_compose_impl(v260, v298, &v305, 80, &dword_1E1C61000, v258, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v286, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_304:
        v285 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v261 = MEMORY[0x1E69E9C10];
        v262 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v298 = 136315906;
        *&v298[4] = "operator[]";
        v299 = 1024;
        if (v262)
        {
          v263 = 3;
        }

        else
        {
          v263 = 2;
        }

        v300 = 789;
        v301 = 2048;
        v302 = v7;
        v303 = 2048;
        v304 = v6;
        _os_log_send_and_compose_impl(v263, &v285, &v305, 80, &dword_1E1C61000, v261, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v298, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
LABEL_308:
        *v298 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v305 = 0u;
        v264 = MEMORY[0x1E69E9C10];
        v265 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v286 = 136315906;
        *&v286[4] = "operator[]";
        *&v286[12] = 1024;
        if (v265)
        {
          v266 = 3;
        }

        else
        {
          v266 = 2;
        }

        *&v286[14] = 789;
        *&v286[18] = 2048;
        *&v286[20] = v17;
        v287 = 2048;
        *v288 = v14;
        _os_log_send_and_compose_impl(v266, v298, &v305, 80, &dword_1E1C61000, v264, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v286, 38, v272, v273);
        _os_crash_msg();
        __break(1u);
        goto LABEL_312;
      }

LABEL_111:
      v108 = *(v99 + 16 * a5);
      v109 = vmulq_f32(v107, v108);
      v110 = vsubq_f32(v107, vmulq_n_f32(v108, v109.f32[2] + vaddv_f32(*v109.f32)));
      *(v101 + 16 * a5) = v110;
      v111 = vmulq_f32(v110, v110);
      v112 = sqrtf(v111.f32[2] + vaddv_f32(*v111.f32));
      if (v112 > 0.00001)
      {
        break;
      }

      v114 = *(v99 + 16 * a5);
      v115 = vmulq_f32(v114, v114);
      if ((v115.f32[2] + vaddv_f32(*v115.f32)) > 0.0)
      {
        if (fabsf(v114.f32[2]) >= 0.00001)
        {
          v116.i32[0] = 0;
          v116.f32[1] = -v114.f32[2];
          v116.i64[1] = v114.u32[1];
        }

        else
        {
          v116 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v114.f32[1]), v114);
        }

        v117 = vmulq_f32(v116, v116);
        *&v118 = v117.f32[2] + vaddv_f32(*v117.f32);
        *v117.f32 = vrsqrte_f32(v118);
        *v117.f32 = vmul_f32(*v117.f32, vrsqrts_f32(v118, vmul_f32(*v117.f32, *v117.f32)));
        v113 = vmulq_n_f32(v116, vmul_f32(*v117.f32, vrsqrts_f32(v118, vmul_f32(*v117.f32, *v117.f32))).f32[0]);
        goto LABEL_119;
      }

      *v105 = 0;
      v105[1] = 0;
      v113 = 0uLL;
LABEL_120:
      v119 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL), vnegq_f32(*(v99 + 16 * a5))), v113, vextq_s8(vuzp1q_s32(*(v99 + 16 * a5), *(v99 + 16 * a5)), *(v99 + 16 * a5), 0xCuLL));
      *(v103 + 16 * a5) = vextq_s8(vuzp1q_s32(v119, v119), v119, 0xCuLL);
      a5 = (a5 + 1);
      if (a5 >= *(a1 + 16))
      {
        goto LABEL_121;
      }
    }

    v113 = vmulq_n_f32(v110, 1.0 / v112);
LABEL_119:
    *(v101 + 16 * a5) = v113;
    goto LABEL_120;
  }

LABEL_121:
  if (*v286 && *&v288[2])
  {
    (*(**v286 + 40))();
  }

  if (v277[0] && v280)
  {
    (*(*v277[0] + 40))();
  }

  if (v281[0] && v284)
  {
    (*(*v281[0] + 40))();
  }

  if (v289 && v292)
  {
    (*(*v289 + 40))();
  }

  if (*v293 && *&v295[2])
  {
    (*(**v293 + 40))();
  }

  v120 = *v296;
  if (!*v296 || (v296[16] & 1) != 0)
  {
    return 1;
  }

  v121 = *&v296[32];
LABEL_186:
  (*(*v120 + 40))(v120, v121);
  return 1;
}

uint64_t re::computeTangentsAndBitangents(unint64_t a1, const char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v105 = *MEMORY[0x1E69E9840];
  v90 = a2;
  v89 = a5;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v88, 4522, *(a1 + 16), *(a1 + 40), *(a1 + 8), *(a1 + 40) - *(a1 + 8));
  if (a2 && a3 && !strcmp(a2, a3) || a2 && a4 && !strcmp(a2, a4) || a2 && a5 && !strcmp(a2, a5) || a3 && a4 && !strcmp(a3, a4) || a3 && a5 && !strcmp(a3, a5) || a4 && a5 && !strcmp(a4, a5) || re::internal::GeomAttributeManager::attributeByName((a1 + 64), a3) || re::internal::GeomAttributeManager::attributeByName((a1 + 64), a4))
  {
    v14 = 0;
    goto LABEL_22;
  }

  if (v90)
  {
    v16 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), v90);
  }

  else
  {
    v16 = 0;
  }

  v12 = v89;
  if (v89)
  {
    v17 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), v89);
  }

  else
  {
    v17 = 0;
  }

  v87 = 0;
  v85 = 0;
  v84[0] = 0;
  v84[1] = 0;
  v86 = 0;
  if (v16 && *(v16 + 16) == 3)
  {
    re::DynamicArray<re::TransitionCondition *>::add(v84, &v90);
  }

  if (v17)
  {
    if (*(v17 + 16) == 3)
    {
      re::DynamicArray<re::TransitionCondition *>::add(v84, &v89);
    }
  }

  else
  {
    v14 = 0;
    if (!v16 || (*(a6 + 4) & 1) != 0)
    {
      goto LABEL_62;
    }
  }

  if (v85)
  {
    re::GeomMesh::GeomMesh(v79, 0);
    re::internal::buildMeshByConvertingFaceVaryingToVertexHelper(a1, v84, 0, v79);
    if (v17)
    {
      v18 = re::internal::GeomAttributeManager::attributeByName(v83, v89);
    }

    else
    {
      v18 = 0;
    }

    v21 = re::GeomMesh::addAttribute(v79, a3, 1, 7);
    v22 = re::GeomMesh::addAttribute(v79, a4, 1, 7);
    v23 = re::internal::GeomAttributeManager::attributeByName(v83, v90);
    re::computeVertexTangentsAndBitangentsInternal(v79, v23, v18, v21, v22, a6);
    v24 = *(a1 + 40);
    v78 = 0;
    v75[1] = 0;
    v76 = 0;
    v74 = 0;
    v75[0] = 0;
    v77 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v73 = 0;
    re::DynamicArray<re::GeomCell4>::resize(v75, v24);
    re::DynamicArray<float>::resize(&v70, v24);
    if (v24)
    {
      v25 = 0;
      v26 = v72;
      v27 = v74;
      v28 = v81;
      v29 = v82;
      v30 = v76;
      v31 = v78;
      while (v26 != v25)
      {
        *(v27 + 4 * v25) = v25;
        if (v28 == v25)
        {
          goto LABEL_69;
        }

        if (v30 == v25)
        {
          goto LABEL_73;
        }

        *(v31 + 16 * v25) = *(v29 + 16 * v25);
        v25 = (v25 + 1);
        if (v24 == v25)
        {
          goto LABEL_48;
        }
      }

      v91 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v92 = 136315906;
      v93 = "operator[]";
      v94 = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      v95 = 789;
      v96 = 2048;
      v97 = v26;
      v98 = 2048;
      v99 = v26;
      _os_log_send_and_compose_impl(v51, &v91, &v100, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v70, v71);
      _os_crash_msg();
      __break(1u);
LABEL_69:
      v91 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v52 = MEMORY[0x1E69E9C10];
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v92 = 136315906;
      v93 = "operator[]";
      v94 = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      v95 = 797;
      v96 = 2048;
      v97 = v28;
      v98 = 2048;
      v99 = v28;
      _os_log_send_and_compose_impl(v54, &v91, &v100, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v70, v71);
      _os_crash_msg();
      __break(1u);
LABEL_73:
      v91 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v55 = MEMORY[0x1E69E9C10];
      v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v92 = 136315906;
      v93 = "operator[]";
      v94 = 1024;
      if (v56)
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      v95 = 789;
      v96 = 2048;
      v97 = v30;
      v98 = 2048;
      v99 = v30;
      _os_log_send_and_compose_impl(v57, &v91, &v100, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v70, v71);
      _os_crash_msg();
      __break(1u);
LABEL_77:
      v91 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v58 = MEMORY[0x1E69E9C10];
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v92 = 136315906;
      v93 = "operator[]";
      v94 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v95 = 613;
      v96 = 2048;
      v97 = v21;
      v98 = 2048;
      v99 = v21;
      _os_log_send_and_compose_impl(v60, &v91, &v100, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v70, v71);
      _os_crash_msg();
      __break(1u);
LABEL_81:
      v91 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v61 = MEMORY[0x1E69E9C10];
      v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v92 = 136315906;
      v93 = "operator[]";
      v94 = 1024;
      if (v62)
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      v95 = 621;
      v96 = 2048;
      v97 = v22;
      v98 = 2048;
      v99 = v22;
      _os_log_send_and_compose_impl(v63, &v91, &v100, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v70, v71);
      _os_crash_msg();
      __break(1u);
LABEL_85:
      v91 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v64 = MEMORY[0x1E69E9C10];
      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v92 = 136315906;
      v93 = "operator[]";
      v94 = 1024;
      if (v65)
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      v95 = 613;
      v96 = 2048;
      v97 = v26;
      v98 = 2048;
      v99 = v26;
      _os_log_send_and_compose_impl(v66, &v91, &v100, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v70, v71);
      _os_crash_msg();
      __break(1u);
LABEL_89:
      v91 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v67 = MEMORY[0x1E69E9C10];
      v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v92 = 136315906;
      v93 = "operator[]";
      v94 = 1024;
      if (v68)
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      v95 = 621;
      v96 = 2048;
      v97 = v28;
      v98 = 2048;
      v99 = v28;
      _os_log_send_and_compose_impl(v69, &v91, &v100, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v70, v71);
      _os_crash_msg();
      __break(1u);
    }

LABEL_48:
    v32 = v80;
    v33 = re::GeomMesh::addFaceVaryingAttribute(a1, a3, 7, v80, v75, &v70);
    v34 = re::GeomMesh::addFaceVaryingAttribute(a1, a4, 7, v32, v75, &v70);
    v35 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v33);
    v37 = v36;
    v38 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v34);
    LODWORD(v28) = v39;
    v40 = re::GeomAttribute::accessValues<int>(v21);
    LODWORD(v21) = v41;
    v42 = re::GeomAttribute::accessValues<int>(v22);
    if (v32)
    {
      v21 = v21;
      v22 = v37;
      v26 = v43;
      v28 = v28;
      v44 = v21;
      v45 = v22;
      v46 = v43;
      v47 = v28;
      while (v44)
      {
        if (!v45)
        {
          goto LABEL_81;
        }

        *v35 = *v40;
        if (!v46)
        {
          goto LABEL_85;
        }

        if (!v47)
        {
          goto LABEL_89;
        }

        v48 = *v42++;
        *v38++ = v48;
        --v47;
        ++v40;
        ++v35;
        --v46;
        v45 = (v45 - 1);
        --v44;
        if (!--v32)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_77;
    }

LABEL_55:
    if (v70 && v74)
    {
      (*(*v70 + 40))();
    }

    if (v75[0] && v78)
    {
      (*(*v75[0] + 40))();
    }

    re::GeomMesh::~GeomMesh(v79);
    v14 = 1;
  }

  else
  {
    v19 = re::GeomMesh::addAttribute(a1, a3, 1, 7);
    v20 = re::GeomMesh::addAttribute(a1, a4, 1, 7);
    v14 = re::computeVertexTangentsAndBitangentsInternal(a1, v16, v17, v19, v20, a6);
  }

LABEL_62:
  if (v84[0])
  {
    v12 = v87;
    if (v87)
    {
      (*(*v84[0] + 40))();
    }
  }

LABEL_22:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v88, v12, v13);
  return v14;
}

unint64_t re::anonymous namespace::evalAreaWeightedTriangleNormal(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (v6 >= a2)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v25 = 1024;
    v26 = 613;
    v27 = 2048;
    v28 = v6;
    v29 = 2048;
    v30 = a2;
    _os_log_send_and_compose_impl(v14, &v22, &v31, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  v3 = a3[1];
  if (v3 >= a2)
  {
LABEL_9:
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
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 1024;
    v26 = 613;
    v27 = 2048;
    v28 = v3;
    v29 = 2048;
    v30 = a2;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
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
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v25 = 1024;
    v26 = 613;
    v27 = 2048;
    v28 = v4;
    v29 = 2048;
    v30 = a2;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  v4 = a3[2];
  if (v4 >= a2)
  {
    goto LABEL_13;
  }

  v7 = *(a1 + 16 * v6);
  v8 = vsubq_f32(*(a1 + 16 * v3), v7);
  v9 = vsubq_f32(*(a1 + 16 * v4), v7);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v8)), v9, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(v10, v9);
  return v11.u32[2] | (v11.u32[0] << 32);
}

unint64_t re::anonymous namespace::evalAreaWeightedQuadrilateralNormal(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (v7 >= a2)
  {
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v26 = 136315906;
    v27 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v28 = 1024;
    v29 = 613;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = a2;
    _os_log_send_and_compose_impl(v14, &v25, &v34, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3[1];
  if (v3 >= a2)
  {
LABEL_10:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v28 = 1024;
    v29 = 613;
    v30 = 2048;
    v31 = v3;
    v32 = 2048;
    v33 = a2;
    _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3[2];
  if (v4 >= a2)
  {
LABEL_14:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v28 = 1024;
    v29 = 613;
    v30 = 2048;
    v31 = v4;
    v32 = 2048;
    v33 = a2;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v28 = 1024;
    v29 = 613;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = a2;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3[3];
  if (v5 >= a2)
  {
    goto LABEL_18;
  }

  v8 = vsubq_f32(*(a1 + 16 * v4), *(a1 + 16 * v7));
  v9 = vsubq_f32(*(a1 + 16 * v5), *(a1 + 16 * v3));
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v8)), v9, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(v10, v9);
  return v11.u32[2] | (v11.u32[0] << 32);
}

float32x4_t *re::anonymous namespace::makeOrthonormalFrame(float32x4_t *result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *result;
  v4 = vmulq_f32(v3, v3);
  v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  v6 = *a2;
  v7 = *a2;
  if (v5 > 0.0)
  {
    v8 = vmulq_f32(v3, v6);
    v7 = vmulq_n_f32(v3, (v8.f32[2] + vaddv_f32(*v8.f32)) / v5);
  }

  v9 = vsubq_f32(v6, v7);
  *a2 = v9;
  v10 = vmulq_f32(v9, v9);
  v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  if (v11 <= 0.0)
  {
    v17 = *result;
    v18 = vmulq_f32(v17, v17);
    v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    v20 = *a3;
    v21 = *a3;
    if (v19 > 0.0)
    {
      v22 = vmulq_f32(v17, v20);
      v21 = vmulq_n_f32(v17, (v22.f32[2] + vaddv_f32(*v22.f32)) / v19);
    }

    v23 = vsubq_f32(v20, v21);
    v24 = vmulq_f32(v23, v23);
    v25 = v24.f32[2] + vaddv_f32(*v24.f32);
    if (v25 <= 0.0)
    {
      *a3 = 0uLL;
      v31 = *a3;
    }

    else
    {
      v26 = v25;
      v27 = vrsqrte_f32(LODWORD(v25));
      v28 = vmul_f32(v27, vrsqrts_f32(LODWORD(v26), vmul_f32(v27, v27)));
      v29 = vmulq_n_f32(v23, vmul_f32(v28, vrsqrts_f32(LODWORD(v26), vmul_f32(v28, v28))).f32[0]);
      *a3 = v29;
      v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*result, *result), *result, 0xCuLL), vnegq_f32(v29)), *result, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
      v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
    }

    *a2 = v31;
  }

  else
  {
    v12 = v11;
    v13 = vrsqrte_f32(LODWORD(v11));
    v14 = vmul_f32(v13, vrsqrts_f32(LODWORD(v12), vmul_f32(v13, v13)));
    v15 = vmulq_n_f32(v9, vmul_f32(v14, vrsqrts_f32(LODWORD(v12), vmul_f32(v14, v14))).f32[0]);
    *a2 = v15;
    v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(*result)), v15, vextq_s8(vuzp1q_s32(*result, *result), *result, 0xCuLL));
    *a3 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  }

  return result;
}

void re::anonymous namespace::triangulateHelper(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v152 = *MEMORY[0x1E69E9840];
  v6 = a1 + 16;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v117, 4524, *(a1 + 16), *(a1 + 40), *(a1 + 8), *(a1 + 40) - *(a1 + 8));
  v7 = *(v6 + 24);
  if (*(v6 - 8) != v7)
  {
    v116 = 0;
    v12 = v7;
    v113 = 0;
    memset(v114, 0, sizeof(v114));
    v115 = 0;
    v110[1] = 0;
    v111 = 0;
    v110[0] = 0;
    v112 = 0;
    LODWORD(v123) = 0;
    re::DynamicArray<unsigned int>::resize(v110, v7, &v123);
    LOBYTE(v123) = 0;
    v13 = re::DynamicArray<unsigned char>::resize(v114, v7, &v123);
    if (v7)
    {
      v14 = 0;
      v15 = 0;
      v16 = v111;
      v17 = v113;
      v18 = *(a1 + 40);
      v19 = (*(a1 + 56) + 12);
      while (1)
      {
        if (v16 == v14)
        {
          goto LABEL_127;
        }

        *(v17 + 4 * v14) = v15;
        if (v18 == v14)
        {
          break;
        }

        v20 = *v19;
        v19 += 4;
        if (v20 == -1)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        v15 += v21;
        if (v7 == ++v14)
        {
          goto LABEL_19;
        }
      }

LABEL_131:
      *v134 = 0;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v123 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v149[0]) = 136315906;
      *(v149 + 4) = "operator[]";
      WORD6(v149[0]) = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      *(v149 + 14) = 797;
      WORD1(v149[1]) = 2048;
      *(&v149[1] + 4) = v18;
      WORD6(v149[1]) = 2048;
      *(&v149[1] + 14) = v18;
      _os_log_send_and_compose_impl(v82, v134, &v123, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
LABEL_135:
      v118[0] = 0;
      v150 = 0u;
      v151 = 0u;
      memset(v149, 0, sizeof(v149));
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      *&v136[12] = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      *&v136[14] = 789;
      *&v136[18] = 2048;
      *&v136[20] = a2;
      v137 = 2048;
      *v138 = v16;
      _os_log_send_and_compose_impl(v85, v118, v149, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
LABEL_139:
      v118[0] = 0;
      v150 = 0u;
      v151 = 0u;
      memset(v149, 0, sizeof(v149));
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      *&v136[12] = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      *&v136[14] = 797;
      *&v136[18] = 2048;
      *&v136[20] = v18;
      v137 = 2048;
      *v138 = v18;
      _os_log_send_and_compose_impl(v88, v118, v149, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
LABEL_143:
      v118[0] = 0;
      v150 = 0u;
      v151 = 0u;
      memset(v149, 0, sizeof(v149));
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      *&v136[12] = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      *&v136[14] = 789;
      *&v136[18] = 2048;
      *&v136[20] = v6;
      v137 = 2048;
      *v138 = v16;
      _os_log_send_and_compose_impl(v91, v118, v149, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
LABEL_147:
      re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
    }

LABEL_19:
    v94 = v7;
    LODWORD(v106) = 0;
    v109 = 0;
    v107[1] = 0;
    v107[2] = 0;
    v108 = 0;
    re::DynamicArray<re::BlendNode>::setCapacity(v107, 1uLL);
    ++v108;
    v100 = v106;
    re::DynamicArray<re::GeomCell4>::DynamicArray(&v101, v107);
    v22 = v102;
    if (!v102)
    {
      re::DynamicArray<re::BlendNode>::setCapacity(&v101, 1uLL);
      v22 = v102;
    }

    v23 = *(a1 + 40);
    LODWORD(v123) = v100;
    v24 = v103;
    *(&v123 + 1) = v101;
    *&v124 = v22;
    v102 = 0;
    v103 = 0;
    v101 = 0;
    *(&v124 + 1) = v24;
    *(&v125 + 1) = v105;
    v105 = 0;
    LODWORD(v125) = 1;
    v104 += 2;
    re::internal::GeomAttributeManager::GeomAttributeManager(&v126);
    v128 = v123;
    if (v129)
    {
      v25 = v130;
      v26 = 8 * v129;
      do
      {
        v27 = *v25++;
        (*(*v27 + 80))(v27, v128);
        v26 -= 8;
      }

      while (v26);
    }

    v95 = v12;
    v96 = a3;
    v97 = a2;
    v131 = DWORD2(v124);
    if (v132)
    {
      v28 = v133;
      v29 = 8 * v132;
      do
      {
        v30 = *v28++;
        (*(*v30 + 80))(v30, v131);
        v29 -= 8;
      }

      while (v29);
    }

    re::internal::addAndCopyAttributeValues(v6, &v123, 0);
    re::internal::addAndCopyAttributeValues(v6, &v123, 1);
    re::internal::addAndCopyAttributeValues(v6, &v123, 4);
    v31 = *(a1 + 312);
    if (v31)
    {
      v32 = 0;
      while (1)
      {
        a2 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 288), v32);
        v33 = re::internal::GeomAttributeManager::addAttribute(&v126, *(a2 + 8), 2, *(a2 + 17));
        if (v23)
        {
          break;
        }

LABEL_36:
        if (++v32 == v31)
        {
          goto LABEL_37;
        }
      }

      v34 = v33;
      v35 = 0;
      v36 = 0;
      v37 = 12;
      while (1)
      {
        v38 = *(a1 + 40);
        if (v38 <= v35)
        {
          break;
        }

        if (*(*(a1 + 56) + v37) == -1)
        {
          v39 = v36 + 1;
          v40 = 1;
        }

        else
        {
          v140[1] = v35;
          v39 = v36 + 2;
          v139[1] = v36 + 1;
          v40 = 2;
        }

        v140[0] = v35;
        v139[0] = v36;
        (*(*a2 + 40))(a2, v34, v40, v140, v139);
        ++v35;
        v37 += 16;
        v36 = v39;
        if (v23 == v35)
        {
          goto LABEL_36;
        }
      }

      *v136 = 0;
      v150 = 0u;
      v151 = 0u;
      memset(v149, 0, sizeof(v149));
      v56 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v134 = 136315906;
      *&v134[4] = "operator[]";
      *&v134[12] = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      *&v134[14] = 797;
      *&v134[18] = 2048;
      *&v134[20] = v35;
      *&v134[28] = 2048;
      *&v134[30] = v38;
      _os_log_send_and_compose_impl(v64, v136, v149, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
      goto LABEL_94;
    }

LABEL_37:
    v98 = *(a1 + 424);
    if (!v98)
    {
LABEL_70:
      v56 = v97;
      if (v101)
      {
        if (v105)
        {
          (*(*v101 + 40))();
        }

        v105 = 0;
        v102 = 0;
        v103 = 0;
        v101 = 0;
        ++v104;
      }

      if (!v96)
      {
LABEL_98:
        v65 = re::GeomMesh::operator=(v56, &v123);
        re::GeomMesh::setName(v65, *a1);
        re::internal::GeomAttributeManager::~GeomAttributeManager(&v126);
        if (*(&v123 + 1))
        {
          v8 = *(&v125 + 1);
          if (*(&v125 + 1))
          {
            (*(**(&v123 + 1) + 40))();
          }
        }

        if (v107[0])
        {
          v8 = v109;
          if (v109)
          {
            (*(*v107[0] + 40))();
          }
        }

        if (v110[0])
        {
          v8 = v113;
          if (v113)
          {
            (*(*v110[0] + 40))();
          }
        }

        v11 = v114[0];
        if (!v114[0])
        {
          goto LABEL_110;
        }

        v8 = v116;
        if (!v116)
        {
          goto LABEL_110;
        }

LABEL_109:
        (*(*v11 + 40))(v11);
        goto LABEL_110;
      }

      v57 = (*(a1 + 8) + 2 * (*(a1 + 40) - *(a1 + 8)));
      *&v134[32] = 0;
      memset(v134, 0, 28);
      re::DynamicArray<unsigned int>::resize(v134, v57, &re::kInvalidMeshIndex);
      if (v94)
      {
        v58 = 0;
        v6 = 0;
        v16 = *&v134[16];
        v59 = *&v134[32];
        v18 = *(a1 + 40);
        v60 = (*(a1 + 56) + 12);
        do
        {
          a2 = v6;
          if (v16 <= v6)
          {
            goto LABEL_135;
          }

          *(v59 + 4 * v6) = v58;
          if (v18 == v58)
          {
            goto LABEL_139;
          }

          if (*v60 != -1)
          {
            v6 = (v6 + 1);
            if (v16 <= v6)
            {
              goto LABEL_143;
            }

            *(v59 + 4 * v6) = v58;
          }

          ++v58;
          v6 = (v6 + 1);
          v60 += 4;
        }

        while (v95 != v58);
      }

      re::GeomIndexMap::GeomIndexMap(v149, v134);
      re::GeomIndexMap::operator=(v96, v149);
      if (!BYTE12(v149[0]))
      {
LABEL_95:
        if (*v134 && *&v134[32])
        {
          (*(**v134 + 40))(v62);
        }

        goto LABEL_98;
      }

      if (BYTE12(v149[0]) != 2)
      {
        if (BYTE12(v149[0]) != 1)
        {
          goto LABEL_149;
        }

        if (*&v149[1] && v150)
        {
          (*(**&v149[1] + 40))(*&v149[1]);
        }

        goto LABEL_95;
      }

LABEL_94:
      v62.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v149[1]);
      goto LABEL_95;
    }

    v6 = 0;
    while (1)
    {
      v99 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 400), v6);
      v42 = re::internal::accessFaceVaryingAttributeSubmesh(v99, v41);
      v43 = *(v42 + 24);
      *&v138[2] = 0;
      memset(v136, 0, sizeof(v136));
      v121 = 0;
      v118[1] = 0;
      v119 = 0;
      v118[0] = 0;
      v120 = 0;
      LOBYTE(v149[0]) = 0;
      v44 = re::DynamicArray<unsigned char>::resize(v136, v43, v149);
      *v134 = 0;
      v135 = 0;
      memset(&v134[8], 0, 28);
      re::DynamicArray<re::BlendNode>::setCapacity(&v134[8], 1uLL);
      ++*&v134[32];
      re::DynamicArray<float>::resize(v118, *&v134[24]);
      if (v43)
      {
        break;
      }

LABEL_60:
      v55 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v123, *(v99 + 8), *(v99 + 17), v134, v118);
      re::GeomAttribute::copyValues(v99, v55);
      if (*&v134[8] && v135)
      {
        (*(**&v134[8] + 40))();
      }

      if (v118[0] && v121)
      {
        (*(*v118[0] + 40))();
      }

      if (*v136 && *&v138[2])
      {
        (*(**v136 + 40))();
      }

      v6 = (v6 + 1);
      if (v6 == v98)
      {
        goto LABEL_70;
      }
    }

    v46 = 0;
    v47 = 0;
    v16 = 12;
    while (1)
    {
      LODWORD(v149[0]) = v46;
      v48 = *(v42 + 60);
      if (v48 == 2)
      {
        break;
      }

      if (v48 == 1)
      {
        if (*(v42 + 80) > v46)
        {
          v49 = *(*(v42 + 96) + 4 * v46);
          goto LABEL_52;
        }

LABEL_51:
        v49 = -1;
        goto LABEL_52;
      }

      if (*(v42 + 60))
      {
        goto LABEL_147;
      }

      if (v46 >= *(v42 + 64))
      {
        v49 = -1;
      }

      else
      {
        v49 = v46;
      }

LABEL_52:
      v51 = v49;
      v18 = v111;
      if (v111 <= v49)
      {
        v122 = 0;
        v150 = 0u;
        v151 = 0u;
        memset(v149, 0, sizeof(v149));
        v66 = MEMORY[0x1E69E9C10];
        v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v141 = 136315906;
        v142 = "operator[]";
        v143 = 1024;
        if (v67)
        {
          v68 = 3;
        }

        else
        {
          v68 = 2;
        }

        v144 = 797;
        v145 = 2048;
        v146 = v51;
        v147 = 2048;
        v148 = v18;
        _os_log_send_and_compose_impl(v68, &v122, v149, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v141, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
LABEL_115:
        v122 = 0;
        v150 = 0u;
        v151 = 0u;
        memset(v149, 0, sizeof(v149));
        v69 = MEMORY[0x1E69E9C10];
        v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v141 = 136315906;
        v142 = "operator[]";
        v143 = 1024;
        if (v70)
        {
          v71 = 3;
        }

        else
        {
          v71 = 2;
        }

        v144 = 789;
        v145 = 2048;
        v146 = a2;
        v147 = 2048;
        v148 = v18;
        _os_log_send_and_compose_impl(v71, &v122, v149, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v141, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
LABEL_119:
        v122 = 0;
        v150 = 0u;
        v151 = 0u;
        memset(v149, 0, sizeof(v149));
        v54 = MEMORY[0x1E69E9C10];
        v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v141 = 136315906;
        v142 = "operator[]";
        v143 = 1024;
        if (v72)
        {
          v73 = 3;
        }

        else
        {
          v73 = 2;
        }

        v144 = 797;
        v145 = 2048;
        v146 = v46;
        v147 = 2048;
        v148 = a2;
        _os_log_send_and_compose_impl(v73, &v122, v149, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v141, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
LABEL_123:
        v122 = 0;
        v150 = 0u;
        v151 = 0u;
        memset(v149, 0, sizeof(v149));
        v74 = MEMORY[0x1E69E9C10];
        v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v141 = 136315906;
        v142 = "operator[]";
        v143 = 1024;
        if (v75)
        {
          v76 = 3;
        }

        else
        {
          v76 = 2;
        }

        v144 = 789;
        v145 = 2048;
        v146 = v54;
        v147 = 2048;
        v148 = v18;
        _os_log_send_and_compose_impl(v76, &v122, v149, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v141, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
LABEL_127:
        *v134 = 0;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v123 = 0u;
        v77 = MEMORY[0x1E69E9C10];
        v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v149[0]) = 136315906;
        *(v149 + 4) = "operator[]";
        WORD6(v149[0]) = 1024;
        if (v78)
        {
          v79 = 3;
        }

        else
        {
          v79 = 2;
        }

        *(v149 + 14) = 789;
        WORD1(v149[1]) = 2048;
        *(&v149[1] + 4) = v16;
        WORD6(v149[1]) = 2048;
        *(&v149[1] + 14) = v16;
        _os_log_send_and_compose_impl(v79, v134, &v123, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
        goto LABEL_131;
      }

      a2 = v47;
      v18 = v119;
      if (v119 <= v47)
      {
        goto LABEL_115;
      }

      v52 = *(v113 + 4 * v49);
      v53 = v121;
      *(v121 + 4 * v47) = v52;
      a2 = *(v42 + 24);
      if (a2 <= v46)
      {
        goto LABEL_119;
      }

      v54 = v47 + 1;
      if (*(*(v42 + 40) + v16) == -1)
      {
        ++v47;
      }

      else
      {
        if (v18 <= v54)
        {
          goto LABEL_123;
        }

        *(v53 + 4 * v54) = v52 + 1;
        v47 += 2;
      }

      ++v46;
      v16 += 16;
      if (v43 == v46)
      {
        goto LABEL_60;
      }
    }

    v50 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v42 + 64), v149);
    if (v50 != -1)
    {
      v49 = *(*(v42 + 72) + 8 * v50 + 4);
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  re::GeomMesh::copy(a1, a2);
  if (!a3)
  {
    goto LABEL_110;
  }

  v10 = 0;
  *&v123 = 0xFFFFFFFF00000000;
  DWORD2(v123) = -1;
  BYTE12(v123) = 0;
  if ((v7 - 1) <= 0xFFFFFFFD)
  {
    DWORD2(v123) = v7 - 1;
    v10 = v7;
    *&v123 = v7;
  }

  LODWORD(v124) = v10;
  re::GeomIndexMap::operator=(a3, &v123);
  if (!BYTE12(v123))
  {
    goto LABEL_110;
  }

  if (BYTE12(v123) == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v124);
LABEL_110:
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v117, v8, v9);
    return;
  }

  if (BYTE12(v123) == 1)
  {
    v11 = v124;
    if (!v124)
    {
      goto LABEL_110;
    }

    v8 = v126;
    if (!v126)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_149:
  re::internal::assertLog(4, v61, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
}

uint64_t re::anonymous namespace::triangluateTopologyHelper(_anonymous_namespace_ *a1, uint64_t a2, uint64_t *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v54[1] = 0;
  v55 = 0;
  v56 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v54, 1uLL);
  ++v56;
  v8 = *(a1 + 3);
  v9 = 0;
  v10 = v8;
  if (v8)
  {
    v11 = (*(a1 + 5) + 8);
    v12 = v8;
    do
    {
      if (*(v11 - 2) != -1 && *(v11 - 1) != -1 && *v11 != -1 && v11[1] == -1)
      {
        ++v9;
      }

      v11 += 4;
      --v12;
    }

    while (v12);
  }

  LODWORD(v53) = *a1;
  re::DynamicArray<re::GeomCell4>::resize(v54, (v9 + 2 * (v8 - v9)));
  if (v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = &v67;
    v16 = *(a1 + 3);
    v17 = *(a1 + 5);
    v18 = *(a2 + 16);
    v19 = *(a2 + 32);
    v20 = v55;
    v21 = v57;
    v22 = (v17 + 8);
    while (v16 != v13)
    {
      v23 = *(v22 - 2);
      v24 = *(v22 - 1);
      v25 = *v22;
      v26 = v22[1];
      if (v26 == -1)
      {
        v3 = v14;
        if (v20 <= v14)
        {
          goto LABEL_44;
        }

        v4 = 1;
      }

      else
      {
        if (v18 <= v13)
        {
          goto LABEL_32;
        }

        v3 = v14;
        if (*(v19 + v13))
        {
          if (v20 <= v14)
          {
            goto LABEL_36;
          }

          v27 = (v21 + 16 * v14);
          *v27 = v23;
          v27[1] = v24;
          v3 = v14 + 1;
          v27[2] = v26;
          v27[3] = -1;
          v4 = 2;
          if (v20 <= v3)
          {
            goto LABEL_40;
          }

          v23 = v24;
        }

        else
        {
          if (v20 <= v14)
          {
            goto LABEL_48;
          }

          v28 = (v21 + 16 * v14);
          *v28 = v23;
          v28[1] = v24;
          v3 = v14 + 1;
          v28[2] = v25;
          v28[3] = -1;
          v4 = 2;
          if (v20 <= v3)
          {
            goto LABEL_52;
          }
        }

        v24 = v25;
        v25 = v26;
      }

      v14 += v4;
      v29 = (v21 + 16 * v3);
      *v29 = v23;
      v29[1] = v24;
      v29[2] = v25;
      v29[3] = -1;
      ++v13;
      v22 += 4;
      if (v10 == v13)
      {
        goto LABEL_24;
      }
    }

    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v67 = 0u;
    v68 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v16;
    v65 = 2048;
    v66 = v16;
    _os_log_send_and_compose_impl(v33, &v58, &v67, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v52, v53);
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v58 = 0;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[2] = 0u;
    v67 = 0u;
    v68 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v13;
    v65 = 2048;
    v66 = v18;
    _os_log_send_and_compose_impl(v36, &v58, &v67, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v52, v53);
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v58 = 0;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[2] = 0u;
    v67 = 0u;
    v68 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = v3;
    v65 = 2048;
    v66 = v20;
    _os_log_send_and_compose_impl(v39, &v58, &v67, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v52, v53);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v58 = 0;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[2] = 0u;
    v67 = 0u;
    v68 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    if (v41)
    {
      v42 = v4 + 1;
    }

    else
    {
      v42 = v4;
    }

    v61 = 1024;
    v62 = 789;
    v63 = 2048;
    v64 = v3;
    v65 = 2048;
    v66 = v20;
    _os_log_send_and_compose_impl(v42, &v58, &v67, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v52, v53);
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v58 = 0;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[2] = 0u;
    v67 = 0u;
    v68 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = v3;
    v65 = 2048;
    v66 = v20;
    _os_log_send_and_compose_impl(v45, &v58, &v67, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v52, v53);
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v58 = 0;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[2] = 0u;
    v67 = 0u;
    v68 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = v3;
    v65 = 2048;
    v66 = v20;
    _os_log_send_and_compose_impl(v48, &v58, &v67, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v52, v53);
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v58 = 0;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[2] = 0u;
    v67 = 0u;
    v68 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    if (v50)
    {
      v51 = v4 + 1;
    }

    else
    {
      v51 = v4;
    }

    v61 = 1024;
    v62 = 789;
    v63 = 2048;
    v64 = v3;
    v65 = 2048;
    v66 = v20;
    _os_log_send_and_compose_impl(v51, &v58, &v67, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v52, v53);
    _os_crash_msg();
    __break(1u);
  }

LABEL_24:
  *a3 = v53;
  re::DynamicArray<re::GeomCell4>::operator=(a3 + 1, v54);
  result = v54[0];
  if (v54[0])
  {
    if (v57)
    {
      return (*(*v54[0] + 40))();
    }
  }

  return result;
}

uint64_t re::findBoundaryLoops(re::GeomConnectivityManifold *a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  *(a2 + 16) = 0;
  v25 = a2;
  ++*(a2 + 24);
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v5 = *(a1 + 56);
  v30 = 0;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v29 = 0;
  LOBYTE(v43) = 0;
  re::DynamicArray<unsigned char>::resize(v27, v5, &v43);
  if (!v5)
  {
    goto LABEL_16;
  }

  for (i = 0; i != v5; ++i)
  {
    if (!re::GeomConnectivityManifold::isBoundaryEdge(a1, i))
    {
      continue;
    }

    v7 = v28;
    if (v28 <= i)
    {
      goto LABEL_32;
    }

    if (*(v30 + i))
    {
      continue;
    }

    re::GeomConnectivityManifold::edgeVertices(a1, i, v35);
    v8 = v35[0];
    v9 = *(a3 + 16);
    HIDWORD(v26) = v35[0];
    *&v34[2] = 0;
    memset(v32, 0, sizeof(v32));
    v10 = v35[0];
    do
    {
      re::GeomConnectivityManifold::fetchVertexIncidentEdges(a1, v10, v32);
      if (!*&v32[16])
      {
        v31 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v14 = MEMORY[0x1E69E9C10];
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v36 = 136315906;
        *&v36[4] = "operator[]";
        v37 = 1024;
        if (v15)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v38 = 789;
        v39 = 2048;
        v40 = 0;
        v41 = 2048;
        v42 = 0;
        _os_log_send_and_compose_impl(v16, &v31, &v43, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v25, v26);
        _os_crash_msg();
        __break(1u);
LABEL_24:
        v31 = 0;
        v11 = v36;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v36 = 136315906;
        *&v36[4] = "operator[]";
        v37 = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v38 = 789;
        v39 = 2048;
        v40 = 0;
        v41 = 2048;
        v42 = 0;
        _os_log_send_and_compose_impl(v19, &v31, &v43, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v25, v26);
        _os_crash_msg();
        __break(1u);
LABEL_28:
        v31 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        i = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v36 = 136315906;
        *&v36[4] = "operator[]";
        v37 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v38 = 789;
        v39 = 2048;
        v40 = v7;
        v41 = 2048;
        v42 = v11;
        _os_log_send_and_compose_impl(v21, &v31, &v43, 80, &dword_1E1C61000, i, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v25, v26);
        _os_crash_msg();
        __break(1u);
LABEL_32:
        *v36 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v22 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v32 = 136315906;
        *&v32[4] = "operator[]";
        *&v32[12] = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        *&v32[14] = 789;
        *&v32[18] = 2048;
        *&v32[20] = i;
        v33 = 2048;
        *v34 = v7;
        _os_log_send_and_compose_impl(v24, v36, &v43, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v32, 38, v25, v26);
        _os_crash_msg();
        __break(1u);
      }

      re::GeomConnectivityManifold::edgeVertices(a1, **&v34[2], v35);
      HIDWORD(v26) = v35[v35[0] == HIDWORD(v26)];
      re::DynamicArray<int>::add(a3, &v26 + 1);
      if (!*&v32[16])
      {
        goto LABEL_24;
      }

      v7 = **&v34[2];
      v11 = v28;
      if (v28 <= v7)
      {
        goto LABEL_28;
      }

      *(v30 + v7) = 1;
      v10 = HIDWORD(v26);
      ++v9;
    }

    while (HIDWORD(v26) != v8);
    LODWORD(v43) = v9;
    re::DynamicArray<int>::add(v25, &v43);
    if (*v32 && *&v34[2])
    {
      (*(**v32 + 40))();
    }
  }

LABEL_16:
  v12 = *(v25 + 2);
  if (v27[0] && v30)
  {
    (*(*v27[0] + 40))();
  }

  return v12;
}

uint64_t re::internal::addGrid(uint64_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7)
{
  v129 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_74;
  }

  v8 = a6;
  v11 = a6 + 1 + (a6 + 1) * a7;
  v12 = *v7;
  v109 = a7;
  v106 = *(v7 + 24);
  v13 = v106 + a7 * a6;
  re::DynamicArray<re::GeomCell4>::resize((v7 + 8), v13);
  *(v7 + 272) = v13;
  v14 = *(v7 + 296);
  if (v14)
  {
    v15 = *(v7 + 312);
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      (*(*v17 + 80))(v17, *(v7 + 272));
      v16 -= 8;
    }

    while (v16);
  }

  *v7 = v12 + v11;
  *(v7 + 160) = v12 + v11;
  v18 = *(v7 + 184);
  if (v18)
  {
    v19 = *(v7 + 200);
    v20 = 8 * v18;
    do
    {
      v21 = *v19++;
      (*(*v21 + 80))(v21, *(v7 + 160));
      v20 -= 8;
    }

    while (v20);
  }

  v22 = re::internal::GeomAttributeManager::attributeByName((v7 + 48), "vertexPosition");
  v108 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v22);
  v24 = v23;
  v25 = a1[2];
  if (v25)
  {
    v26 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v25);
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xFFFFFFFFLL;
  }

  v29 = a1[1];
  v110 = 0u;
  if (v29)
  {
    v30 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v29);
    v32 = a2;
    v31 = a3;
    v33 = a5;
    v34 = vsubq_f32(*a3, *a5);
    v35 = a4;
    v36 = vsubq_f32(*a4, *a2);
    v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v34)), v36, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
    v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
    v39 = vmulq_f32(v37, v37);
    *&v40 = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
    *v39.f32 = vrsqrte_f32(v40);
    *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
    v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
    v43 = v42;
  }

  else
  {
    v30 = 0;
    v43 = 0xFFFFFFFFLL;
    v41 = 0uLL;
    v33 = a5;
    v35 = a4;
    v32 = a2;
    v31 = a3;
  }

  v107 = v7;
  v44 = a1[3];
  if (v44)
  {
    v45 = a1[4] == 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = !v45;
  if (v45)
  {
    v114 = 0;
    result = 0;
    v58 = 0xFFFFFFFFLL;
    v55 = 0uLL;
    v57 = 0xFFFFFFFFLL;
  }

  else
  {
    v47 = vsubq_f32(*v31, *v32);
    v48 = vmulq_f32(v47, v47);
    v49 = vaddv_f32(*v48.f32);
    *v48.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v49));
    *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v49), vmul_f32(*v48.f32, *v48.f32)));
    v110 = vmulq_n_f32(v47, vmul_f32(*v48.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v49), vmul_f32(*v48.f32, *v48.f32))).f32[0]);
    v50 = vsubq_f32(*v33, *v32);
    v51 = vmulq_f32(v50, v50);
    *&v52 = v51.f32[2] + vaddv_f32(*v51.f32);
    *v51.f32 = vrsqrte_f32(v52);
    *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32)));
    v103 = vmulq_n_f32(v50, vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))).f32[0]);
    v105 = v41;
    v114 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v44);
    v104 = v53;
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[4]);
    v55 = v103;
    v41 = v105;
    v32 = a2;
    v31 = a3;
    v35 = a4;
    v33 = a5;
    v57 = v56;
    v58 = v104;
  }

  v59 = v24;
  v60 = v26;
  v61 = 0;
  v63 = v12;
  v64 = 1.0 / v109;
  do
  {
    v65 = 0;
    v66 = v64 * v61;
    v67 = 1.0 - v66;
    v68 = v63;
    v69 = v59 - v63;
    if (v59 < v63)
    {
      v69 = 0;
    }

    v70 = vaddq_f32(vmulq_n_f32(*v31, v67), vmulq_n_f32(*v35, v66));
    v71 = result + 16 * v63;
    v72 = v114 + 16 * v63;
    v73 = vaddq_f32(vmulq_n_f32(*v33, v66), vmulq_n_f32(*v32, v67));
    v74 = v30 + 16 * v63;
    v75 = v60 + 8 * v63;
    v76 = v108 + 16 * v63;
    do
    {
      v77 = v68 + v65;
      v62 = 1.0 / v8;
      if (a1[2])
      {
        if (v28 <= v77)
        {
          goto LABEL_54;
        }

        *&v78 = v62 * v65;
        *(&v78 + 1) = v64 * v61;
        *(v75 + 8 * v65) = v78;
      }

      if (a1[1])
      {
        if (v43 <= v77)
        {
          goto LABEL_58;
        }

        *(v74 + 16 * v65) = v41;
      }

      if (v46)
      {
        if (v58 <= v77)
        {
          goto LABEL_62;
        }

        *(v72 + 16 * v65) = v110;
        if (v57 <= v77)
        {
          goto LABEL_66;
        }

        *(v71 + 16 * v65) = v55;
      }

      if (v69 == v65)
      {
        v115 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v84 = MEMORY[0x1E69E9C10];
        v85 = v59;
        v117 = "operator[]";
        v118 = 1024;
        v119 = 621;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v86 = 3;
        }

        else
        {
          v86 = 2;
        }

        v116 = 136315906;
        v120 = 2048;
        v121 = (v68 + v65);
        v122 = 2048;
        v123 = v85;
        _os_log_send_and_compose_impl(v86, &v115, &v124, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v116, 38, v101, v102);
        _os_crash_msg();
        __break(1u);
LABEL_54:
        v115 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v43 = MEMORY[0x1E69E9C10];
        v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v117 = "operator[]";
        v118 = 1024;
        v119 = 621;
        if (v87)
        {
          v88 = 3;
        }

        else
        {
          v88 = 2;
        }

        v116 = 136315906;
        v120 = 2048;
        v121 = (v68 + v65);
        v122 = 2048;
        v123 = v28;
        _os_log_send_and_compose_impl(v88, &v115, &v124, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v116, 38, v101, v102);
        _os_crash_msg();
        __break(1u);
LABEL_58:
        v115 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v89 = MEMORY[0x1E69E9C10];
        v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v117 = "operator[]";
        v118 = 1024;
        v119 = 621;
        if (v90)
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        v116 = 136315906;
        v120 = 2048;
        v121 = (v68 + v65);
        v122 = 2048;
        v123 = v43;
        _os_log_send_and_compose_impl(v91, &v115, &v124, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v116, 38, v101, v102);
        _os_crash_msg();
        __break(1u);
LABEL_62:
        v115 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v92 = MEMORY[0x1E69E9C10];
        v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v117 = "operator[]";
        v118 = 1024;
        v119 = 621;
        if (v93)
        {
          v94 = 3;
        }

        else
        {
          v94 = 2;
        }

        v116 = 136315906;
        v120 = 2048;
        v121 = (v68 + v65);
        v122 = 2048;
        v123 = v58;
        _os_log_send_and_compose_impl(v94, &v115, &v124, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v116, 38, v101, v102);
        _os_crash_msg();
        __break(1u);
LABEL_66:
        v115 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v95 = MEMORY[0x1E69E9C10];
        v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v116 = 136315906;
        v117 = "operator[]";
        v118 = 1024;
        if (v96)
        {
          v97 = 3;
        }

        else
        {
          v97 = 2;
        }

        v119 = 621;
        v120 = 2048;
        v121 = v68 + v65;
        v122 = 2048;
        v123 = v57;
        _os_log_send_and_compose_impl(v97, &v115, &v124, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v116, 38, v101, v102);
        _os_crash_msg();
        __break(1u);
LABEL_70:
        v115 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v98 = MEMORY[0x1E69E9C10];
        v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v116 = 136315906;
        v117 = "operator[]";
        v118 = 1024;
        if (v99)
        {
          v100 = 3;
        }

        else
        {
          v100 = 2;
        }

        v119 = 789;
        v120 = 2048;
        v121 = v68;
        v122 = 2048;
        v123 = v46;
        _os_log_send_and_compose_impl(v100, &v115, &v124, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v116, 38, v101, v102);
        _os_crash_msg();
        __break(1u);
LABEL_74:
        re::internal::assertLog(4, a2, a3, a4, a5, a6, a7, "assertion failure: '%s' (%s:line %i) ", "meshData.baseMesh != nullptr", "addGrid", 79);
        _os_crash("assertion failure: (meshData.baseMesh != nullptr) ");
        __break(1u);
      }

      *(v76 + 16 * v65) = vaddq_f32(vmulq_n_f32(v70, v62 * v65), vmulq_n_f32(v73, 1.0 - (v62 * v65)));
      ++v65;
    }

    while (v65 <= v8);
    v63 = v68 + v65;
    ++v61;
  }

  while (v61 <= v109);
  v79 = v106;
  if (v109)
  {
    for (i = 0; i != v109; ++i)
    {
      if (v8)
      {
        v81 = 0;
        v46 = *(v107 + 24);
        do
        {
          v68 = (v79 + v81);
          if (v46 <= v68)
          {
            goto LABEL_70;
          }

          v82 = v12 + 1;
          v83 = (*(v107 + 40) + 16 * v68);
          v83->i32[0] = v12;
          v83->i32[1] = v12 + 1;
          v83[1] = vadd_s32(vdup_n_s32(v8 + v12), 0x100000002);
          ++v81;
          ++v12;
        }

        while (v8 != v81);
        v79 += v81;
      }

      else
      {
        v82 = v12;
      }

      v12 = v82 + 1;
    }
  }

  return result;
}

uint64_t re::internal::setCornerVertexValues(void *a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    goto LABEL_43;
  }

  v4 = re::internal::GeomAttributeManager::attributeByName((*a1 + 48), "vertexPosition");
  v5 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v4);
  v7 = v6;
  v8 = a1[1];
  if (v8)
  {
    v9 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v8);
    LODWORD(v11) = v10;
  }

  else
  {
    v9 = 0;
    LODWORD(v11) = -1;
  }

  v12 = a1[3];
  if (v12)
  {
    v13 = a1[4] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v15 = 0;
    result = 0;
    v21 = -1;
    v20 = -1;
  }

  else
  {
    v15 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v12);
    v17 = v16;
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[4]);
    v20 = v19;
    v21 = v17;
  }

  v22 = 0;
  v23 = *(a2 + 88);
  v24 = 1.0 / *(a2 + 84);
  do
  {
    v25 = 0;
    v26 = v23;
    do
    {
      v27 = v26;
      if (v26 >= v7)
      {
        v55 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        v56 = 136315906;
        v57 = "operator[]";
        v58 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        v59 = 621;
        v60 = 2048;
        v61 = v27;
        v62 = 2048;
        v63 = v7;
        _os_log_send_and_compose_impl(v42, &v55, &v64, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
LABEL_31:
        v55 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v43 = MEMORY[0x1E69E9C10];
        v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        if (v44)
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        v58 = 1024;
        v59 = 621;
        v60 = 2048;
        v61 = v27;
        v62 = 2048;
        v63 = v11;
        _os_log_send_and_compose_impl(v45, &v55, &v64, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
LABEL_35:
        v55 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v46 = MEMORY[0x1E69E9C10];
        v47 = v21;
        v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        if (v48)
        {
          v49 = 3;
        }

        else
        {
          v49 = 2;
        }

        v58 = 1024;
        v59 = 621;
        v60 = 2048;
        v61 = v27;
        v62 = 2048;
        v63 = v47;
        _os_log_send_and_compose_impl(v49, &v55, &v64, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v55 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v50 = MEMORY[0x1E69E9C10];
        v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        if (v51)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }

        v58 = 1024;
        v59 = 621;
        v60 = 2048;
        v61 = v27;
        v62 = 2048;
        v63 = v20;
        _os_log_send_and_compose_impl(v52, &v55, &v64, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
LABEL_43:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "meshData.baseMesh != nullptr", "setCornerVertexValues", 160);
        _os_crash("assertion failure: (meshData.baseMesh != nullptr) ");
        __break(1u);
      }

      v28 = vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(*a2, 1.0 - (v24 * v22)), vmulq_n_f32(*(a2 + 48), v24 * v22)), 1.0 - (v24 * v25)), vmulq_n_f32(vaddq_f32(vmulq_n_f32(*(a2 + 16), 1.0 - (v24 * v22)), vmulq_n_f32(*(a2 + 32), v24 * v22)), v24 * v25));
      v29 = vmulq_f32(v28, v28);
      *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
      *v29.f32 = vrsqrte_f32(v30);
      *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
      v31 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
      *(v5 + 16 * v26) = vaddq_f32(*(a2 + 64), vmulq_n_f32(v31, COERCE_FLOAT(*(a2 + 80))));
      if (a1[1])
      {
        if (v11 <= v26)
        {
          goto LABEL_31;
        }

        *(v9 + 16 * v26) = v31;
      }

      if (v14)
      {
        if (v21 <= v26)
        {
          goto LABEL_35;
        }

        v32 = vmulq_f32(v31, xmmword_1E3047670);
        v33 = vsubq_f32(xmmword_1E3047670, vmulq_n_f32(v31, v32.f32[2] + vaddv_f32(*v32.f32)));
        v34 = vmulq_f32(v33, v33);
        *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
        *v34.f32 = vrsqrte_f32(v35);
        *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
        v36 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
        *(v15 + 16 * v26) = v36;
        if (v20 <= v26)
        {
          goto LABEL_39;
        }

        v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v31)), v36, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
        v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
        v39 = vmulq_f32(v37, v37);
        *&v40 = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
        *v39.f32 = vrsqrte_f32(v40);
        *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
        *(result + 16 * v26) = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
      }

      v26 += *(a2 + 92);
      ++v25;
      v41 = *(a2 + 84);
    }

    while (v25 <= v41);
    v23 += *(a2 + 96);
    ++v22;
  }

  while (v22 <= v41);
  return result;
}