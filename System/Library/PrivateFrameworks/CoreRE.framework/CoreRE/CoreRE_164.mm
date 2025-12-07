uint64_t re::internal::addFace(unint64_t *a1, float32x4_t *a2)
{
  v239 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (!*a1)
  {
LABEL_239:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "meshData.baseMesh != nullptr", "addFace", 222);
    _os_crash("assertion failure: (meshData.baseMesh != nullptr) ");
    __break(1u);
    goto LABEL_240;
  }

  v8 = *(v7 + 24);
  v10 = a2->i32[3];
  v9 = a2[1].i32[0];
  v196 = 2 * a2[1].i32[1];
  v202 = v10 - 1;
  v210 = v9 - 1;
  v205 = *v7;
  v206 = (v196 + 2 + v9 - 1);
  v208 = (v196 + 2 + v10 - 1);
  v11 = v205 + v208 * v206;
  *v7 = v11;
  *(v7 + 160) = v11;
  v12 = *(v7 + 184);
  if (v12)
  {
    v13 = *(v7 + 200);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      (*(*v15 + 80))(v15, *(v7 + 160));
      v14 -= 8;
    }

    while (v14);
  }

  re::DynamicArray<re::GeomCell4>::resize((v7 + 8), v8 + (v208 - 1) * (v206 - 1));
  *(v7 + 272) = v8 + (v208 - 1) * (v206 - 1);
  v16 = *(v7 + 296);
  if (v16)
  {
    v17 = *(v7 + 312);
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      (*(*v19 + 80))(v19, *(v7 + 272));
      v18 -= 8;
    }

    while (v18);
  }

  v194 = (v208 - 1);
  v20 = a2->f32[1];
  v225 = a2->f32[0];
  v21 = a2[1].i32[1];
  v228 = 1;
  v229 = v196 + 2 + v10 - 1;
  *&v199 = (v20 + (v225 * -2.0)) * 0.5;
  v203 = (a2->f32[2] + (v225 * -2.0)) * 0.5;
  v220 = xmmword_1E30A0D90;
  v221 = xmmword_1E30A0DA0;
  v222 = xmmword_1E30476A0;
  v223 = xmmword_1E30A0DB0;
  v226 = v21;
  v227 = v205;
  *&v22 = -*&v199;
  *(&v22 + 1) = -v203;
  v224 = v22;
  re::internal::setCornerVertexValues(a1, &v220);
  v220 = xmmword_1E30A0DA0;
  v221 = xmmword_1E30A0DC0;
  v222 = xmmword_1E30A0DD0;
  v223 = xmmword_1E30476A0;
  v195 = v10 + v205;
  v227 = a2[1].i32[1] + v10 + v205;
  LODWORD(v23) = v199;
  *(&v23 + 1) = -v203;
  v224 = v23;
  re::internal::setCornerVertexValues(a1, &v220);
  v220 = xmmword_1E30A0DB0;
  v221 = xmmword_1E30476A0;
  v222 = xmmword_1E30A0DE0;
  v223 = xmmword_1E30A0DF0;
  v198 = v9;
  v227 = v205 + (a2[1].i32[1] + v9) * v208;
  v24 = v227;
  v25 = COERCE_UNSIGNED_INT(-*&v199);
  *(&v25 + 1) = v203;
  v224 = v25;
  re::internal::setCornerVertexValues(a1, &v220);
  v220 = xmmword_1E30476A0;
  v221 = xmmword_1E30A0DD0;
  v222 = vdupq_n_s32(0x3F13CD3Au);
  v223 = xmmword_1E30A0DE0;
  v227 = v24 + v10 + a2[1].i32[1];
  v26 = v199;
  *(&v26 + 1) = v203;
  v224 = v26;
  re::internal::setCornerVertexValues(a1, &v220);
  v27 = re::internal::GeomAttributeManager::attributeByName((v7 + 48), "vertexPosition");
  v28 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
  v4 = v29;
  v30 = a1[1];
  v197 = v7;
  v193 = v8;
  if (v30)
  {
    v31 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v30);
    v5 = v32;
  }

  else
  {
    v31 = 0;
    v5 = 0xFFFFFFFFLL;
  }

  v33 = a1[3];
  if (v33)
  {
    v34 = a1[4] == 0;
  }

  else
  {
    v34 = 1;
  }

  v3 = !v34;
  if (v34)
  {
    v37 = 0;
    v39 = 0;
    v41 = 0xFFFFFFFFLL;
    v38 = 0xFFFFFFFFLL;
  }

  else
  {
    v35 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v33);
    v7 = v36;
    v37 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[4]);
    v38 = v7;
    v39 = v35;
    v41 = v40;
  }

  v42 = v205;
  v207 = v10;
  v204 = (v206 - 1);
  v43 = a2->f32[0];
  if (v10 != 1)
  {
    v44 = 0;
    v45 = (a2->f32[1] + (v43 * -2.0)) / (v202 + 1.0);
    while (1)
    {
      v46 = v44 + 1;
      if (v206)
      {
        break;
      }

LABEL_37:
      v44 = (v44 + 1);
      if (v46 == v202)
      {
        v201 = v41;
        v200 = v38;
        v50 = v39;
        v43 = a2->f32[0];
        goto LABEL_40;
      }
    }

    v47.i32[1] = 0;
    v47.i64[1] = 0;
    v6 = (a2[1].i32[1] + v205);
    v48 = v206;
    while (1)
    {
      v49 = v6;
      if (v6 >= v4)
      {
        break;
      }

      v7 = (v44 + v6 + 1);
      if (v7 >= v4)
      {
        goto LABEL_123;
      }

      v47.f32[0] = v45 * v46;
      *(v28 + 16 * v7) = vaddq_f32(v47, *(v28 + 16 * v6));
      if (a1[1])
      {
        if (v5 <= v6)
        {
          goto LABEL_127;
        }

        if (v5 <= v7)
        {
          goto LABEL_131;
        }

        *(v31 + 16 * v7) = *(v31 + 16 * v6);
      }

      if (v3)
      {
        if (v38 <= v6)
        {
          goto LABEL_147;
        }

        if (v38 <= v7)
        {
          goto LABEL_151;
        }

        *(v39 + 16 * v7) = *(v39 + 16 * v6);
        if (v41 <= v6)
        {
          goto LABEL_155;
        }

        if (v41 <= v7)
        {
          goto LABEL_159;
        }

        *(v37 + 16 * v7) = *(v37 + 16 * v6);
      }

      v6 = (v6 + v208);
      if (!--v48)
      {
        goto LABEL_37;
      }
    }

    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v100 = 3;
    }

    else
    {
      v100 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v6;
    v218 = 2048;
    *v219 = v4;
    _os_log_send_and_compose_impl(v100, v212, &v234, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v101 = MEMORY[0x1E69E9C10];
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    *&v217[14] = 621;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    *v217 = 136315906;
    *&v217[18] = 2048;
    *&v217[20] = (v44 + v6 + 1);
    v218 = 2048;
    *v219 = v4;
    _os_log_send_and_compose_impl(v103, v212, &v234, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v104 = MEMORY[0x1E69E9C10];
    v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    if (v105)
    {
      v106 = 3;
    }

    else
    {
      v106 = 2;
    }

    *&v217[12] = 1024;
    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v6;
    v218 = 2048;
    *v219 = v5;
    _os_log_send_and_compose_impl(v106, v212, &v234, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v107 = MEMORY[0x1E69E9C10];
    v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    if (v108)
    {
      v109 = 3;
    }

    else
    {
      v109 = 2;
    }

    *&v217[12] = 1024;
    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v7;
    v218 = 2048;
    *v219 = v5;
    _os_log_send_and_compose_impl(v109, v212, &v234, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
    goto LABEL_135;
  }

  v201 = v41;
  v200 = v38;
  v50 = v39;
LABEL_40:
  if (v210)
  {
    v51 = 0;
    v52 = v201;
    v53 = (a2->f32[2] + (v43 * -2.0)) / (v210 + 1.0);
    v54 = v200;
    v55 = v5;
    v7 = v4;
    v56 = v195 + v196 + 1;
    while (1)
    {
      ++v51;
      if (v208)
      {
        break;
      }

LABEL_60:
      v56 += v208;
      if (v51 == v210)
      {
        goto LABEL_61;
      }
    }

    v57 = 0;
    v58 = a2[1].i32[1] * v208;
    v59 = (v58 + v56);
    v60 = v37 + 16 * v59;
    v61.i32[0] = 0;
    v61.i64[1] = 0;
    v62 = v50 + 16 * v59;
    v44 = (v58 + v205);
    v63 = v31 + 16 * v59;
    if (v44 <= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v44;
    }

    v64 = v28 + 16 * v59;
    v65 = v37 + 16 * v44;
    v66 = v50 + 16 * v44;
    v67 = v31 + 16 * v44;
    v68 = v28 + 16 * v44;
    v69 = v208;
    while (v6 != v44)
    {
      if (v59 >= v4)
      {
        goto LABEL_139;
      }

      v61.f32[1] = v53 * v51;
      *(v64 + v57) = vaddq_f32(v61, *(v68 + v57));
      if (a1[1])
      {
        if (v44 >= v5)
        {
          goto LABEL_163;
        }

        if (v59 >= v5)
        {
          goto LABEL_167;
        }

        *(v63 + v57) = *(v67 + v57);
      }

      if (v3)
      {
        if (v44 >= v200)
        {
          goto LABEL_171;
        }

        if (v59 >= v200)
        {
          goto LABEL_175;
        }

        *(v62 + v57) = *(v66 + v57);
        if (v44 >= v201)
        {
          goto LABEL_179;
        }

        if (v59 >= v201)
        {
          goto LABEL_183;
        }

        *(v60 + v57) = *(v65 + v57);
      }

      ++v44;
      ++v59;
      v57 += 16;
      if (!--v69)
      {
        goto LABEL_60;
      }
    }

LABEL_135:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v110)
    {
      v111 = 3;
    }

    else
    {
      v111 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v6;
    v218 = 2048;
    *v219 = v7;
    _os_log_send_and_compose_impl(v111, v212, &v234, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v59;
    v218 = 2048;
    *v219 = v7;
    _os_log_send_and_compose_impl(v113, v212, &v234, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    *&v217[14] = 789;
    *&v217[18] = 2048;
    *&v217[20] = v7;
    v218 = 2048;
    *v219 = v49;
    _os_log_send_and_compose_impl(v116, v212, &v234, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v7 = v38;
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    *&v217[12] = 1024;
    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v49;
    v218 = 2048;
    *v219 = v7;
    _os_log_send_and_compose_impl(v119, v212, &v234, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v120 = MEMORY[0x1E69E9C10];
    v49 = v38;
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *&v217[12] = 1024;
    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v7;
    v218 = 2048;
    *v219 = v49;
    _os_log_send_and_compose_impl(v122, v212, &v234, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v7 = v41;
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    *&v217[12] = 1024;
    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v49;
    v218 = 2048;
    *v219 = v7;
    _os_log_send_and_compose_impl(v125, v212, &v234, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v55 = v41;
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *&v217[12] = 1024;
    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v7;
    v218 = 2048;
    *v219 = v55;
    _os_log_send_and_compose_impl(v128, v212, &v234, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_163:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v129)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v44;
    v218 = 2048;
    *v219 = v55;
    _os_log_send_and_compose_impl(v130, v212, &v234, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_167:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v131 = MEMORY[0x1E69E9C10];
    v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v132)
    {
      v133 = 3;
    }

    else
    {
      v133 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v59;
    v218 = 2048;
    *v219 = v55;
    _os_log_send_and_compose_impl(v133, v212, &v234, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_171:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v134 = v54;
    v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v135)
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v44;
    v218 = 2048;
    *v219 = v134;
    _os_log_send_and_compose_impl(v136, v212, &v234, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_175:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v137 = MEMORY[0x1E69E9C10];
    v138 = v54;
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v59;
    v218 = 2048;
    *v219 = v138;
    _os_log_send_and_compose_impl(v140, v212, &v234, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_179:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v141 = v52;
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v44;
    v218 = 2048;
    *v219 = v141;
    _os_log_send_and_compose_impl(v143, v212, &v234, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_183:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v73 = v52;
    v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v144)
    {
      v145 = 3;
    }

    else
    {
      v145 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v59;
    v218 = 2048;
    *v219 = v73;
    _os_log_send_and_compose_impl(v145, v212, &v234, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_187:
    v216 = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v146 = MEMORY[0x1E69E9C10];
    v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *(v4 + 4) = "operator[]";
    v231 = 1024;
    if (v147)
    {
      v148 = 3;
    }

    else
    {
      v148 = 2;
    }

    *(v4 + 14) = 789;
    v232 = 2048;
    *(v4 + 20) = v73;
    v233 = 2048;
    *(v4 + 30) = v31;
    _os_log_send_and_compose_impl(v148, &v216, &v234, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_191:
    v216 = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v149 = MEMORY[0x1E69E9C10];
    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *(v4 + 4) = "operator[]";
    v231 = 1024;
    if (v150)
    {
      v151 = 3;
    }

    else
    {
      v151 = 2;
    }

    *(v4 + 14) = 789;
    v232 = 2048;
    *(v4 + 20) = v3;
    v233 = 2048;
    *(v4 + 30) = v31;
    _os_log_send_and_compose_impl(v151, &v216, &v234, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_195:
    v216 = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v152 = MEMORY[0x1E69E9C10];
    v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v4 + 4) = "operator[]";
    v231 = 1024;
    *(v4 + 14) = 621;
    if (v153)
    {
      v154 = 3;
    }

    else
    {
      v154 = 2;
    }

    *v230 = 136315906;
    v232 = 2048;
    *(v4 + 20) = (v28 + v73);
    v233 = 2048;
    *(v4 + 30) = v2;
    _os_log_send_and_compose_impl(v154, &v216, &v234, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_199:
    v216 = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v155 = MEMORY[0x1E69E9C10];
    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *(v4 + 4) = "operator[]";
    v231 = 1024;
    if (v156)
    {
      v157 = 3;
    }

    else
    {
      v157 = 2;
    }

    *(v4 + 14) = 789;
    v232 = 2048;
    *(v4 + 20) = v73;
    v233 = 2048;
    *(v4 + 30) = v3;
    _os_log_send_and_compose_impl(v157, &v216, &v234, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_203:
    v216 = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *(v4 + 4) = "operator[]";
    v231 = 1024;
    if (v159)
    {
      v160 = 3;
    }

    else
    {
      v160 = 2;
    }

    *(v4 + 14) = 789;
    v232 = 2048;
    *(v4 + 20) = v28;
    v233 = 2048;
    *(v4 + 30) = v3;
    _os_log_send_and_compose_impl(v160, &v216, &v234, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_207:
    v216 = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v161 = MEMORY[0x1E69E9C10];
    v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *(v4 + 4) = "operator[]";
    v231 = 1024;
    if (v162)
    {
      v163 = 3;
    }

    else
    {
      v163 = 2;
    }

    *(v4 + 14) = 789;
    v232 = 2048;
    *(v4 + 20) = v73;
    v233 = 2048;
    *(v4 + 30) = v2;
    _os_log_send_and_compose_impl(v163, &v216, &v234, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_211:
    v216 = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v164 = MEMORY[0x1E69E9C10];
    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *(v4 + 4) = "operator[]";
    v231 = 1024;
    if (v165)
    {
      v166 = 3;
    }

    else
    {
      v166 = 2;
    }

    *(v4 + 14) = 789;
    v232 = 2048;
    *(v4 + 20) = v28;
    v233 = 2048;
    *(v4 + 30) = v2;
    _os_log_send_and_compose_impl(v166, &v216, &v234, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
    goto LABEL_215;
  }

LABEL_61:
  v70 = *v197 - v205;
  if (*v197 > v205)
  {
    v72 = a2[3];
    v71 = a2[4];
    v73 = v201;
    v74 = a2[2];
    v6 = v200;
    if (v205 <= v4)
    {
      v44 = v4;
    }

    else
    {
      v44 = v205;
    }

    v2 = v205;
    v5 = v5;
    while (v44 != v2)
    {
      v75 = vaddq_f32(a2[5], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[2], COERCE_FLOAT(*(v28 + 16 * v2))), a2[3], *(v28 + 16 * v2), 1), a2[4], *(v28 + 16 * v2), 2));
      *(v28 + 16 * v2) = vdivq_f32(v75, vdupq_laneq_s32(v75, 3));
      if (a1[1])
      {
        if (v2 >= v5)
        {
          goto LABEL_227;
        }

        *(v31 + 16 * v2) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(v31 + 16 * v2))), v72, *(v31 + 16 * v2), 1), v71, *(v31 + 16 * v2), 2);
      }

      if (v3)
      {
        if (v2 >= v200)
        {
          goto LABEL_231;
        }

        *(v50 + 16 * v2) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(v50 + 16 * v2))), v72, *(v50 + 16 * v2), 1), v71, *(v50 + 16 * v2), 2);
        if (v2 >= v201)
        {
          goto LABEL_235;
        }

        *(v37 + 16 * v2) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(v37 + 16 * v2))), v72, *(v37 + 16 * v2), 1), v71, *(v37 + 16 * v2), 2);
      }

      ++v2;
      if (!--v70)
      {
        goto LABEL_75;
      }
    }

LABEL_215:
    v212[0] = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v167 = MEMORY[0x1E69E9C10];
    v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v168)
    {
      v169 = 3;
    }

    else
    {
      v169 = 2;
    }

    *&v217[14] = 621;
    *&v217[18] = 2048;
    *&v217[20] = v44;
    v218 = 2048;
    *v219 = v4;
    _os_log_send_and_compose_impl(v169, v212, &v234, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
LABEL_219:
    v216 = 0;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v234 = 0u;
    v170 = MEMORY[0x1E69E9C10];
    v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v230 = 136315906;
    *(v4 + 4) = "operator[]";
    v231 = 1024;
    if (v171)
    {
      v172 = 3;
    }

    else
    {
      v172 = 2;
    }

    *(v4 + 14) = 789;
    v232 = 2048;
    *(v4 + 20) = v73;
    v233 = 2048;
    *(v4 + 30) = v3;
    _os_log_send_and_compose_impl(v172, &v216, &v234, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
    _os_crash_msg();
    __break(1u);
    goto LABEL_223;
  }

LABEL_75:
  v5 = (v208 - 1);
  v6 = (v206 - 1);
  v44 = v207;
  if (a1[2])
  {
    v4 = v230;
    *&v219[2] = 0;
    memset(v217, 0, sizeof(v217));
    v215 = 0;
    v212[1] = 0;
    v213 = 0;
    v212[0] = 0;
    v214 = 0;
    v76 = a2[1].u32[1];
    v77 = a2->f32[0] / a2->f32[1];
    v78 = (v77 * -2.0) + 1.0;
    v79 = a2->f32[0] / a2->f32[2];
    v80 = (v79 * -2.0) + 1.0;
    re::DynamicArray<float>::resize(v217, v208);
    re::DynamicArray<float>::resize(v212, v206);
    v81 = 0;
    v3 = *&v217[16];
    v82 = *&v219[2];
    v2 = v213;
    v83 = v215;
    do
    {
      v73 = v81;
      if (v3 <= v81)
      {
        goto LABEL_199;
      }

      v84 = (v77 / v76) * v81;
      *(v82 + 4 * v81) = v84;
      v28 = v76 + v207 + v81;
      if (v3 <= v28)
      {
        goto LABEL_203;
      }

      *(v82 + 4 * v28) = v77 + (v78 + v84);
      if (v2 <= v81)
      {
        goto LABEL_207;
      }

      v85 = (v79 / v76) * v81;
      *(v83 + 4 * v81) = v85;
      v28 = v76 + v198 + v81;
      if (v2 <= v28)
      {
        goto LABEL_211;
      }

      *(v83 + 4 * v28) = v79 + (v80 + v85);
      ++v81;
    }

    while (v73 + 1 <= v76);
    if (v202)
    {
      v86 = 1;
      v87 = *&v219[2];
      do
      {
        v73 = v76 + v86;
        if (v3 <= v73)
        {
          goto LABEL_219;
        }

        *(v87 + 4 * v73) = v77 + ((v78 / v207) * v86++);
      }

      while (v86 <= v202);
    }

    if (v3 <= v194)
    {
LABEL_240:
      v216 = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v185 = MEMORY[0x1E69E9C10];
      v186 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v230 = 136315906;
      *(v4 + 4) = "operator[]";
      v231 = 1024;
      if (v186)
      {
        v187 = 3;
      }

      else
      {
        v187 = 2;
      }

      *(v4 + 14) = 789;
      v232 = 2048;
      *(v4 + 20) = v5;
      v233 = 2048;
      *(v4 + 30) = v3;
      _os_log_send_and_compose_impl(v187, &v216, &v234, 80, &dword_1E1C61000, v185, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
      _os_crash_msg();
      __break(1u);
LABEL_244:
      v216 = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v188 = MEMORY[0x1E69E9C10];
      v189 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v230 = 136315906;
      *(v4 + 4) = "operator[]";
      v231 = 1024;
      if (v189)
      {
        v190 = 3;
      }

      else
      {
        v190 = 2;
      }

      *(v4 + 14) = 789;
      v232 = 2048;
      *(v4 + 20) = v6;
      v233 = 2048;
      *(v4 + 30) = v2;
      _os_log_send_and_compose_impl(v190, &v216, &v234, 80, &dword_1E1C61000, v188, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
      _os_crash_msg();
      __break(1u);
    }

    *(v82 + 4 * v194) = 1065353216;
    if (v210)
    {
      v88 = 1;
      v89 = v215;
      while (1)
      {
        v73 = v76 + v88;
        if (v2 <= v73)
        {
          break;
        }

        *(v89 + 4 * v73) = v79 + ((v80 / v198) * v88++);
        if (v88 > v210)
        {
          goto LABEL_91;
        }
      }

LABEL_223:
      v216 = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v173 = MEMORY[0x1E69E9C10];
      v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v230 = 136315906;
      *(v4 + 4) = "operator[]";
      v231 = 1024;
      if (v174)
      {
        v175 = 3;
      }

      else
      {
        v175 = 2;
      }

      *(v4 + 14) = 789;
      v232 = 2048;
      *(v4 + 20) = v73;
      v233 = 2048;
      *(v4 + 30) = v2;
      _os_log_send_and_compose_impl(v175, &v216, &v234, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v230, 38, v191, v192);
      _os_crash_msg();
      __break(1u);
LABEL_227:
      v212[0] = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v176 = MEMORY[0x1E69E9C10];
      v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v217 = 136315906;
      *&v217[4] = "operator[]";
      *&v217[12] = 1024;
      if (v177)
      {
        v178 = 3;
      }

      else
      {
        v178 = 2;
      }

      *&v217[14] = 621;
      *&v217[18] = 2048;
      *&v217[20] = v2;
      v218 = 2048;
      *v219 = v5;
      _os_log_send_and_compose_impl(v178, v212, &v234, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
      _os_crash_msg();
      __break(1u);
LABEL_231:
      v212[0] = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v179 = MEMORY[0x1E69E9C10];
      v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v217 = 136315906;
      *&v217[4] = "operator[]";
      *&v217[12] = 1024;
      if (v180)
      {
        v181 = 3;
      }

      else
      {
        v181 = 2;
      }

      *&v217[14] = 621;
      *&v217[18] = 2048;
      *&v217[20] = v2;
      v218 = 2048;
      *v219 = v6;
      _os_log_send_and_compose_impl(v181, v212, &v234, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
      _os_crash_msg();
      __break(1u);
LABEL_235:
      v212[0] = 0;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v234 = 0u;
      v182 = MEMORY[0x1E69E9C10];
      v183 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v217 = 136315906;
      *&v217[4] = "operator[]";
      *&v217[12] = 1024;
      if (v183)
      {
        v184 = 3;
      }

      else
      {
        v184 = 2;
      }

      *&v217[14] = 621;
      *&v217[18] = 2048;
      *&v217[20] = v2;
      v218 = 2048;
      *v219 = v73;
      _os_log_send_and_compose_impl(v184, v212, &v234, 80, &dword_1E1C61000, v182, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v191, v192);
      _os_crash_msg();
      __break(1u);
      goto LABEL_239;
    }

LABEL_91:
    if (v2 <= v204)
    {
      goto LABEL_244;
    }

    *(v83 + 4 * v204) = 1065353216;
    v90 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[2]);
    v42 = v205;
    if (v206)
    {
      v2 = v91;
      v3 = 0;
      v28 = v205;
      do
      {
        if (v208)
        {
          v73 = 0;
          LODWORD(v92) = v91 - v28;
          if (v91 >= v28)
          {
            v92 = v92;
          }

          else
          {
            v92 = 0;
          }

          do
          {
            v31 = *&v217[16];
            if (*&v217[16] <= v73)
            {
              goto LABEL_187;
            }

            v31 = v213;
            if (v213 <= v3)
            {
              goto LABEL_191;
            }

            if (v92 == v73)
            {
              goto LABEL_195;
            }

            LODWORD(v93) = *(*&v219[2] + 4 * v73);
            HIDWORD(v93) = *(v215 + 4 * v3);
            *(v90 + 8 * v28 + 8 * v73++) = v93;
          }

          while (v208 != v73);
          v28 = (v28 + v73);
        }

        ++v3;
      }

      while (v3 != v206);
    }

    if (v212[0] && v215)
    {
      (*(*v212[0] + 40))();
      v42 = v205;
    }

    if (*v217 && *&v219[2])
    {
      (*(**v217 + 40))();
      v42 = v205;
    }
  }

  result = v193;
  if (v206 != 1)
  {
    v95 = 0;
    do
    {
      if (v208 != 1)
      {
        v96 = 0;
        v49 = *(v197 + 24);
        v97 = v207 + v196 + v42;
        do
        {
          v7 = (result + v96);
          if (v49 <= v7)
          {
            goto LABEL_143;
          }

          v98 = (*(v197 + 40) + 16 * v7);
          *v98 = v42 + v96;
          v98[1] = v42 + v96 + 1;
          v98[2] = v97 + v96 + 2;
          v98[3] = v97 + v96++ + 1;
        }

        while (v194 != v96);
        result = (result + v96);
        v42 += v96;
      }

      ++v42;
      ++v95;
    }

    while (v95 != v204);
  }

  return result;
}

uint64_t *re::internal::buildBoxHelper(_anonymous_namespace_ *a1, _DWORD *a2, unsigned __int16 *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  LODWORD(v68) = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(&v69, 1uLL);
  ++v72;
  re::internal::GeomAttributeManager::GeomAttributeManager(v74);
  if (a3[2] && *a3 && a3[1])
  {
    v67 = 0u;
    v66 = 0u;
    re::internal::GeomAttributeManager::addAttribute(v74, "vertexPosition", 1, 7);
    v65 = &v68;
    if (*(a3 + 25) == 1)
    {
      *&v66 = re::internal::GeomAttributeManager::addAttribute(v74, "vertexNormal", 1, 7);
    }

    if (*(a3 + 24) == 1)
    {
      *(&v66 + 1) = re::internal::GeomAttributeManager::addAttribute(v74, "vertexUV", 1, 6);
      if (*(a3 + 25) == 1 && (a3[12] & 1) != 0)
      {
        *&v67 = re::internal::GeomAttributeManager::addAttribute(v74, "vertexTangent", 1, 7);
        *(&v67 + 1) = re::internal::GeomAttributeManager::addAttribute(v74, "vertexBitangent", 1, 7);
      }
    }

    if (*(a3 + 2) > 0.0 && a3[3])
    {
      v6 = ((2 * a3[3] + 2) | 2) - 1;
      v7 = v6 + *a3;
      v8 = v6 + a3[1];
      v9 = v6 + a3[2];
      v10 = (2 * ((v9 - 1) * (v8 - 1) + (v9 - 1 + v8 - 1) * (v7 - 1)));
      if (v75)
      {
        v11 = (2 * (v9 * v8 + (v9 + v8) * v7));
        v12 = v76;
        v13 = 8 * v75;
        do
        {
          v14 = *v12++;
          (*(*v14 + 88))(v14, v11);
          v13 -= 8;
        }

        while (v13);
      }

      if (v70 < v10)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v69, v10);
      }

      if (v77)
      {
        v15 = v78;
        v16 = 8 * v77;
        do
        {
          v17 = *v15++;
          (*(*v17 + 88))(v17, v10);
          v16 -= 8;
        }

        while (v16);
      }

      v18 = *(a3 + 2);
      v19 = *(a3 + 3);
      v64 = (v19 - (v18 + v18)) * 0.5;
      v20 = *(a3 + 4);
      v21 = v20 - (v18 + v18);
      v22 = *(a3 + 5) - (v18 + v18);
      v80.i32[1] = (a3[3] + 1) & 0x1FFFE;
      v79.i64[0] = __PAIR64__(LODWORD(v19), LODWORD(v18));
      v79.f32[2] = v20;
      v23 = a3[1];
      v79.i32[3] = *a3;
      v80.i32[0] = v23;
      v24 = xmmword_1E30474D0;
      *(&v24 + 2) = v22 * 0.5;
      v81 = xmmword_1E3047670;
      v82 = xmmword_1E3047680;
      v83 = xmmword_1E30476A0;
      v84 = v24;
      re::internal::addFace(&v65, &v79);
      v25 = v71;
      *a2 = v71;
      v26 = *(a3 + 5);
      v79.i32[1] = *(a3 + 3);
      v79.i32[2] = v26;
      v27 = a3[2];
      v79.i32[3] = *a3;
      v80.i32[0] = v27;
      v28 = xmmword_1E30474D0;
      *(&v28 + 1) = v21 * 0.5;
      v81 = xmmword_1E3047670;
      v82 = xmmword_1E306DD20;
      v83 = xmmword_1E3047680;
      v84 = v28;
      re::internal::addFace(&v65, &v79);
      v29 = v71;
      a2[1] = v71 - v25;
      *(v79.i64 + 4) = *(a3 + 6);
      v30 = a3[1];
      v79.i32[3] = *a3;
      v80.i32[0] = v30;
      v31 = xmmword_1E30474D0;
      *(&v31 + 2) = -(v22 * 0.5);
      v81 = xmmword_1E3047690;
      v82 = xmmword_1E3047680;
      v83 = xmmword_1E306DD20;
      v84 = v31;
      re::internal::addFace(&v65, &v79);
      v32 = v71;
      a2[2] = v71 - v29;
      v33 = *(a3 + 5);
      v79.i32[1] = *(a3 + 3);
      v79.i32[2] = v33;
      v34 = a3[2];
      v79.i32[3] = *a3;
      v80.i32[0] = v34;
      v35 = xmmword_1E30474D0;
      *(&v35 + 1) = -(v21 * 0.5);
      v81 = xmmword_1E3047670;
      v82 = xmmword_1E30476A0;
      v83 = xmmword_1E30476B0;
      v84 = v35;
      re::internal::addFace(&v65, &v79);
      v36 = v71;
      a2[3] = v71 - v32;
      *&v79.i32[1] = vrev64_s32(*(a3 + 8));
      v37 = a3[1];
      v79.i32[3] = a3[2];
      v80.i32[0] = v37;
      v38 = xmmword_1E30474D0;
      *&v38 = v64;
      v81 = xmmword_1E306DD20;
      v82 = xmmword_1E3047680;
      v83 = xmmword_1E3047670;
      v84 = v38;
      re::internal::addFace(&v65, &v79);
      v39 = v71;
      a2[4] = v71 - v36;
      *&v79.i32[1] = vrev64_s32(*(a3 + 8));
      v40 = a3[1];
      v79.i32[3] = a3[2];
      v80.i32[0] = v40;
      v41 = xmmword_1E30474D0;
      *&v41 = -v64;
      v81 = xmmword_1E30476A0;
      v82 = xmmword_1E3047680;
      v83 = xmmword_1E3047690;
      v84 = v41;
      re::internal::addFace(&v65, &v79);
      a2[5] = v71 - v39;
    }

    else
    {
      v43 = *a3;
      v44 = a3[1];
      v45 = a3[2];
      v46 = (2 * (v45 * v44 + (v45 + v44) * v43));
      if (v75)
      {
        v47 = (2 * (v45 + 1 + v44 + 1 + (v45 + 1 + v44 + 1) * v43 + (v45 + 1) * (v44 + 1)));
        v48 = v76;
        v49 = 8 * v75;
        do
        {
          v50 = *v48++;
          (*(*v50 + 88))(v50, v47);
          v49 -= 8;
        }

        while (v49);
      }

      if (v70 < v46)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v69, v46);
      }

      if (v77)
      {
        v51 = v78;
        v52 = 8 * v77;
        do
        {
          v53 = *v51++;
          (*(*v53 + 88))(v53, v46);
          v52 -= 8;
        }

        while (v52);
      }

      v54 = 0;
      v55 = *a3;
      v56 = a3[1];
      v57 = a3[2];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v58 = vmul_f32(*(a3 + 6), 0x3F0000003F000000);
      v59 = *(a3 + 5) * 0.5;
      v79 = 0u;
      v80 = 0u;
      v60 = vneg_f32(v58);
      v61 = &v79.f32[2];
      do
      {
        *(v61 - 1) = vbsl_s8(vceqz_s32(vand_s8(vdup_n_s32(v54), 0x200000001)), v60, v58);
        if (v54 >= 4)
        {
          v62 = v59;
        }

        else
        {
          v62 = -v59;
        }

        *v61 = v62;
        v61 += 4;
        ++v54;
      }

      while (v54 != 8);
      re::internal::addGrid(&v65, &v83, &v84, &v86, &v85, v55, v56);
      *a2 = v56 * v55;
      re::internal::addGrid(&v65, &v85, &v86, &v82, &v81, v55, v57);
      a2[1] = v57 * v55;
      re::internal::addGrid(&v65, &v80, &v79, &v81, &v82, v55, v56);
      a2[2] = v56 * v55;
      re::internal::addGrid(&v65, &v79, &v80, &v84, &v83, v55, v57);
      a2[3] = v57 * v55;
      re::internal::addGrid(&v65, &v84, &v80, &v82, &v86, v57, v56);
      a2[4] = v57 * v56;
      re::internal::addGrid(&v65, &v79, &v83, &v85, &v81, v57, v56);
      a2[5] = v57 * v56;
    }

    re::GeomMesh::operator=(a1, &v68);
    if (*(a3 + 26) == 1)
    {
      re::internal::mergeVertexPositions(a1, v63);
    }
  }

  else
  {
    re::internal::GeomAttributeManager::addAttribute(v74, "vertexPosition", 1, 7);
    if (*(a3 + 24) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v74, "vertexUV", 1, 6);
    }

    if (*(a3 + 25) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v74, "vertexNormal", 1, 7);
    }

    if (*(a3 + 24) == 1 && *(a3 + 25) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v74, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v74, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v68);
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(v74);
  result = v69;
  if (v69)
  {
    if (v73)
    {
      return (*(*v69 + 40))();
    }
  }

  return result;
}

void re::buildBox(re::GeomMesh *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a2 + 26) == 1)
  {
    *&v30[12] = *(a2 + 12);
    *v30 = *a2;
    v30[26] = 0;
    re::buildBox(a1, v30);
  }

  else
  {
    re::GeomMesh::GeomMesh(v30, 0);
    re::internal::buildBoxHelper(v30, v33, a2);
    re::DynamicArray<re::GeomMesh>::clear(a1);
    if (*a2 && *(a2 + 2) && *(a2 + 4))
    {
      re::DynamicArray<re::GeomMesh>::resize(a1, 6uLL);
      v4 = 0;
      v5 = 0;
      v29 = 0;
      v26 = 0;
      memset(v27, 0, sizeof(v27));
      v28 = 0;
      v23 = 0;
      memset(v24, 0, sizeof(v24));
      v25 = 0;
      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      v22 = 0;
      do
      {
        v6 = v33[v4];
        re::DynamicArray<float>::resize(v20, v6);
        v7 = v21;
        if (v6)
        {
          v8 = v23;
          v9 = v21;
          v10 = v5;
          while (v9)
          {
            v5 = v10 + 1;
            *v8++ = v10;
            --v9;
            ++v10;
            if (!--v6)
            {
              goto LABEL_11;
            }
          }

          *v34 = 0;
          memset(v32, 0, 80);
          v11 = MEMORY[0x1E69E9C10];
          v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v41[0] = 136315906;
          *&v41[1] = "operator[]";
          LOWORD(v41[3]) = 1024;
          if (v12)
          {
            v13 = 3;
          }

          else
          {
            v13 = 2;
          }

          *(&v41[3] + 2) = 789;
          HIWORD(v41[4]) = 2048;
          *&v41[5] = v7;
          LOWORD(v41[7]) = 2048;
          *(&v41[7] + 2) = v7;
          _os_log_send_and_compose_impl(v13, v34, v32, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v41, 38, v17, v18[0]);
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v31 = 0;
          v42 = 0u;
          v43 = 0u;
          memset(v41, 0, sizeof(v41));
          v14 = MEMORY[0x1E69E9C10];
          v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v34 = 136315906;
          *&v34[4] = "operator[]";
          v35 = 1024;
          if (v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          v36 = 789;
          v37 = 2048;
          v38 = v4;
          v39 = 2048;
          v40 = v6;
          _os_log_send_and_compose_impl(v16, &v31, v41, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v34, 38, v17, v18[0]);
          _os_crash_msg();
          __break(1u);
        }

LABEL_11:
        v19[0] = v23;
        v19[1] = v7;
        v18[0] = 0;
        v18[1] = 0;
        re::makeMeshFromFaces(v30, v19, v18, v27, v24, v32);
        v6 = *(a1 + 2);
        if (v6 <= v4)
        {
          goto LABEL_29;
        }

        re::GeomMesh::operator=((*(a1 + 4) + 736 * v4), v32);
        re::GeomMesh::~GeomMesh(v32);
        ++v4;
      }

      while (v4 != 6);
      if (v20[0] && v23)
      {
        (*(*v20[0] + 40))();
      }

      if (v24[0] && v26)
      {
        (*(*v24[0] + 40))();
      }

      if (v27[0])
      {
        if (v29)
        {
          (*(*v27[0] + 40))();
        }
      }
    }

    else
    {
      re::DynamicArray<re::GeomMesh>::resize(a1, 6uLL, v30);
    }

    re::GeomMesh::~GeomMesh(v30);
  }
}

uint64_t re::AABB::transform@<X0>(uint64_t result@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 16);
  v5 = vcgtq_f32(*result, v4);
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    *a3 = vnegq_f32(v18);
    a3[1] = v18;
  }

  else
  {
    v6.i64[0] = v3.i64[0] & 0x7FFFFFFF7FFFFFFFLL;
    v6.i32[2] = v3.i32[2] & 0x7FFFFFFF;
    v6.i32[3] = v4.i32[0] & 0x7FFFFFFF;
    v7.i64[0] = 0x7F0000007FLL;
    v7.i64[1] = 0x7F0000007FLL;
    v8 = vnegq_f32(v7);
    if (vmaxv_u16(vmovn_s32(vcgeq_s32(v6, v8))) & 1) == 0 && (v9 = vcgt_s32(vneg_f32(0x7F0000007FLL), (vextq_s8(v4, v4, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL)), (v9.i8[0]) && (v9.i8[4])
    {
      v10 = 0;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v11 = vnegq_f32(v8);
      do
      {
        if (v10)
        {
          LODWORD(v12) = *(result + 16);
        }

        else
        {
          LODWORD(v12) = *result;
        }

        if ((v10 & 2) != 0)
        {
          v13 = 20;
        }

        else
        {
          v13 = 4;
        }

        v14 = *(result + v13);
        if (v10 >= 4)
        {
          v15 = 24;
        }

        else
        {
          v15 = 8;
        }

        v16 = vaddq_f32(a2[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a2, v12), a2[1], v14), a2[2], *(result + v15)));
        v17 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
        v11.i32[3] = 0;
        v17.i32[3] = 0;
        v11 = vminnmq_f32(v11, v17);
        v8.i32[3] = 0;
        v8 = vmaxnmq_f32(v8, v17);
        ++v10;
      }

      while (v10 != 8);
      *a3 = v11;
    }

    else
    {
      *a3 = v7;
    }

    a3[1] = v8;
  }

  return result;
}

uint64_t re::AABB::intersects(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  v6.i32[3] = v5.i32[0];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v6, v6)))) & 1) == 0)
  {
    v7 = vcgtq_f32(v4, v5);
    v7.i32[3] = v7.i32[2];
    if ((vmaxvq_u32(v7) & 0x80000000) == 0)
    {
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      result = 3;
      if ((vmaxv_u16(vmovn_s32(vcgeq_s32((*&v6 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), vnegq_f32(v8)))) & 1) == 0 && (v5.i32[1] & 0x7FFFFFFFu) < 0x7F800000 && (v5.i32[2] & 0x7FFFFFFFu) < 0x7F800000)
      {
        v10.i64[0] = 0x3F0000003F000000;
        v10.i64[1] = 0x3F0000003F000000;
        v11 = vmulq_f32(vaddq_f32(v4, v5), v10);
        v12 = vsubq_f32(v5, v4);
        v12.i32[3] = 0;
        v13 = vmulq_f32(vmaxnmq_f32(v12, 0), v10);
        v14 = vmulq_f32(*a2, *a2);
        v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
        v15 = vrsqrte_f32(v14.u32[0]);
        v16 = vmul_f32(v15, vrsqrts_f32(v14.u32[0], vmul_f32(v15, v15)));
        v17 = vmulq_f32(v13, vabsq_f32(vmulq_n_f32(*a2, vmul_f32(v16, vrsqrts_f32(v14.u32[0], vmul_f32(v16, v16))).f32[0])));
        v18 = vmulq_f32(v11, *a2);
        v19 = (COERCE_FLOAT(HIDWORD(*a2)) + (v18.f32[2] + vaddv_f32(*v18.f32))) / sqrtf(v14.f32[0]);
        v20 = fabsf(v19);
        v21 = (v17.f32[2] + vaddv_f32(*v17.f32)) + 0.0001;
        if (v19 > 0.0)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v20 >= v21)
        {
          return v22;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return result;
}

uint64_t re::projectPointOntoBilinearPatch3F(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v145[3] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *a5;
  v7 = vsubq_f32(*a3, *a5);
  v8 = *a4;
  v9 = *a2;
  v10 = vsubq_f32(*a4, *a2);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v7)), v10, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v12 = vmulq_f32(v11, v11);
  v13 = v12.f32[1] + (v12.f32[2] + v12.f32[0]);
  if (fabsf(v13) >= 1.0e-10)
  {
    v57 = v13;
    v58 = vrsqrte_f32(LODWORD(v13));
    v59 = vmul_f32(v58, vrsqrts_f32(LODWORD(v57), vmul_f32(v58, v58)));
    v60 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vmul_f32(v59, vrsqrts_f32(LODWORD(v57), vmul_f32(v59, v59))).f32[0]);
    v61 = vsubq_f32(v5, v9);
    v62 = vsubq_f32(v6, v9);
    v63 = vsubq_f32(*a1, v9);
    v64 = vmulq_f32(v61, v60);
    v65 = vsubq_f32(v61, vmulq_n_f32(v60, v64.f32[2] + vaddv_f32(*v64.f32)));
    v66 = vmulq_f32(v65, v65);
    if (fabsf(v66.f32[2] + vaddv_f32(*v66.f32)) < 1.0e-10)
    {
      v67 = vmulq_f32(v10, v60);
      v65 = vsubq_f32(v10, vmulq_n_f32(v60, v67.f32[2] + vaddv_f32(*v67.f32)));
    }

    v68 = vmulq_f32(v65, v65);
    *&v69 = v68.f32[2] + vaddv_f32(*v68.f32);
    *v68.f32 = vrsqrte_f32(v69);
    *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32)));
    v70 = vmulq_n_f32(v65, vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32))).f32[0]);
    v71 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vnegq_f32(v60)), v70, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
    v72 = vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL);
    v73 = vmulq_f32(v63, v70);
    v74 = vmulq_f32(v63, v72);
    v75 = vadd_f32(vzip1_s32(*&vextq_s8(v73, v73, 8uLL), *&vextq_s8(v74, v74, 8uLL)), vadd_f32(vzip1_s32(*v73.i8, *v74.i8), vzip2_s32(*v73.i8, *v74.i8)));
    v76 = vmulq_f32(v61, v70);
    v77 = vmulq_f32(v61, v72);
    v78 = vadd_f32(vzip1_s32(*&vextq_s8(v76, v76, 8uLL), *&vextq_s8(v77, v77, 8uLL)), vadd_f32(vzip1_s32(*v76.i8, *v77.i8), vzip2_s32(*v76.i8, *v77.i8)));
    v79 = vmulq_f32(v10, v70);
    v80 = vmulq_f32(v10, v72);
    v81 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *&vextq_s8(v80, v80, 8uLL)), vadd_f32(vzip1_s32(*v79.i8, *v80.i8), vzip2_s32(*v79.i8, *v80.i8)));
    v82 = vmulq_f32(v62, v70);
    v83 = vmulq_f32(v62, v72);
    *v70.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v82, v82, 8uLL), *&vextq_s8(v83, v83, 8uLL)), vadd_f32(vzip1_s32(*v82.i8, *v83.i8), vzip2_s32(*v82.i8, *v83.i8)));
    v141 = v78;
    v142 = vsub_f32(0, v75);
    v84 = vsub_f32(v81, v78);
    *v77.i8 = vadd_f32(vsub_f32(v84, *v70.i8), 0);
    v85 = *&v70.i32[1];
    v138 = *v77.i32;
    v139 = *v70.i8;
    v86 = *&v77.i32[1];
    v137 = v142;
    v145[0] = ((-v142.f32[1] * *v70.i32) + (v142.f32[0] * *&v70.i32[1]));
    v145[1] = (((vmuls_lane_f32(v142.f32[0], *v77.i8, 1) + (v78.f32[0] * *&v70.i32[1])) - (*v70.i32 * v78.f32[1])) - (*v77.i32 * v142.f32[1]));
    v140 = v78;
    v145[2] = ((-v78.f32[1] * *v77.i32) + (v78.f32[0] * *&v77.i32[1]));
    memset(v144, 0, sizeof(v144));
    v87 = re::solveQuadraticRootsD(v145, v143, a3->i64);
    __asm { FMOV            V0.2S, #1.0 }

    if (!v87)
    {
      goto LABEL_31;
    }

    v89 = 0;
    LOBYTE(v90) = 0;
    do
    {
      v91 = &v142;
      v92 = v143[v89];
      v93 = &v141;
      v94 = 1;
      v95 = v138;
      v96 = v139.f32[0];
      do
      {
        v97 = v94;
        v98 = v96 + (v92 * v95);
        if (v98 != 0.0)
        {
          v99.f32[0] = v92;
          v99.f32[1] = -(v91->f32[0] + (v92 * *v93)) / v98;
          *(v144 + v90) = vminnm_f32(vmaxnm_f32(v99, 0), _D0);
          LOBYTE(v90) = v90 + 1;
        }

        v94 = 0;
        v95 = v86;
        v96 = v85;
        v93 = &v141 + 1;
        v91 = (&v142 + 4);
      }

      while ((v97 & 1) != 0);
      ++v89;
    }

    while (v89 != v87);
    if (v90)
    {
      if (v90 != 1)
      {
        v90 = v90;
        v100 = v144;
        v101 = INFINITY;
        do
        {
          v102 = vsub_f32(vadd_f32(vadd_f32(vmul_n_f32(v139, (1.0 - *v100) * v100[1]), vmul_n_f32(v81, *v100 * v100[1])), vmul_n_f32(v140, *v100 * (1.0 - v100[1]))), v75);
          v103 = vaddv_f32(vmul_f32(v102, v102));
          if (v103 < v101)
          {
            *&v144[0] = *v100;
            v101 = v103;
          }

          v100 += 2;
          --v90;
        }

        while (v90);
      }
    }

    else
    {
LABEL_31:
      v104 = v140;
      v105 = vmul_f32(v104, v104);
      v106 = 0;
      v107 = 0.0;
      v108 = 0.0;
      if (vaddv_f32(v105) > 0.0)
      {
        v109 = vmul_f32(v75, v140);
        LODWORD(v108) = vdiv_f32(vadd_f32(v109, vdup_lane_s32(v109, 1)), vadd_f32(v105, vdup_lane_s32(v105, 1))).u32[0];
        v106 = vadd_f32(vmul_n_f32(v140, v108), 0);
      }

      v110 = vmul_f32(v84, v84);
      if (vaddv_f32(v110) > 0.0)
      {
        v111 = vadd_f32(v110, vdup_lane_s32(v110, 1));
        v112 = vmul_f32(vsub_f32(v75, v140), v84);
        LODWORD(v107) = vdiv_f32(vadd_f32(v112, vdup_lane_s32(v112, 1)), v111).u32[0];
        v104 = vadd_f32(v140, vmul_n_f32(v84, v107));
      }

      v113 = v137;
      v114 = vsub_f32(v81, v139);
      v115 = vmul_f32(v114, v114);
      v116 = 0.0;
      v117 = 0.0;
      v118 = v139;
      if (vaddv_f32(v115) > 0.0)
      {
        v119 = vmul_f32(v114, vsub_f32(v75, v139));
        LODWORD(v117) = vdiv_f32(vadd_f32(v119, vdup_lane_s32(v119, 1)), vadd_f32(v115, vdup_lane_s32(v115, 1))).u32[0];
        v118 = vadd_f32(v139, vmul_n_f32(v114, v117));
      }

      v120 = vmul_f32(v139, v139);
      if (vaddv_f32(v120) > 0.0)
      {
        v121 = vadd_f32(v120, vdup_lane_s32(v120, 1));
        v122 = vmul_f32(v75, v139);
        LODWORD(v116) = vdiv_f32(vadd_f32(v122, vdup_lane_s32(v122, 1)), v121).u32[0];
        v113 = vsub_f32(vadd_f32(vmul_n_f32(v139, v116), 0), v75);
      }

      v123 = vsub_f32(v118, v75);
      v124 = vmul_f32(v123, v123);
      v125 = vadd_f32(v124, vdup_lane_s32(v124, 1));
      v126 = vaddv_f32(v124);
      v127 = vsub_f32(v104, v75);
      v128 = vmul_f32(v127, v127);
      v129 = vsub_f32(v106, v75);
      v130 = vmul_f32(v129, v129);
      v131 = vadd_f32(vzip1_s32(v128, v130), vzip2_s32(v128, v130));
      v132 = __PAIR64__(LODWORD(v107), _D0.u32[0]);
      v133.i32[0] = 0;
      v134 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v131, 1), v131), 0), v132, LODWORD(v108));
      if (*v131.i32 >= *&v131.i32[1])
      {
        v131.i32[0] = v131.i32[1];
      }

      _D0.f32[0] = v117;
      v135 = vbsl_s8(vdup_lane_s32(vcgt_f32(v131, v125), 0), _D0, v134);
      if (v126 >= *v131.i32)
      {
        v134.f32[0] = *v131.i32;
      }

      else
      {
        v134.f32[0] = v126;
      }

      v136 = vmul_f32(v113, v113);
      *&v133.i32[1] = v116;
      *&v144[0] = vbsl_s8(vdup_lane_s32(vcgt_f32(v134, vadd_f32(v136, vdup_lane_s32(v136, 1))), 0), v133, v135);
    }

    return *&v144[0];
  }

  else
  {
    v14 = vsubq_f32(v5, v9);
    v15 = vmulq_f32(v14, v14);
    v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    v17 = *a1;
    v18 = 0.0;
    v19 = 0.0;
    v20 = *a2;
    if (v16 > 0.0)
    {
      v21 = vmulq_f32(v14, vsubq_f32(v17, v9));
      v19 = (v21.f32[2] + vaddv_f32(*v21.f32)) / v16;
      v20 = vaddq_f32(v9, vmulq_n_f32(v14, v19));
    }

    v22 = vsubq_f32(v8, v5);
    v23 = vmulq_f32(v22, v22);
    v24 = v23.f32[2] + vaddv_f32(*v23.f32);
    if (v24 > 0.0)
    {
      v25 = vmulq_f32(v22, vsubq_f32(v17, v5));
      v18 = (v25.f32[2] + vaddv_f32(*v25.f32)) / v24;
      v5 = vaddq_f32(v5, vmulq_n_f32(v22, v18));
    }

    v26 = vsubq_f32(v8, v6);
    v27 = vmulq_f32(v26, v26);
    v28 = v27.f32[2] + vaddv_f32(*v27.f32);
    v29 = 0.0;
    v30 = 0.0;
    v31 = *a5;
    if (v28 > 0.0)
    {
      v32 = vmulq_f32(v26, vsubq_f32(v17, v6));
      v30 = (v32.f32[2] + vaddv_f32(*v32.f32)) / v28;
      v31 = vaddq_f32(v6, vmulq_n_f32(v26, v30));
    }

    v33 = vsubq_f32(v6, v9);
    v34 = vmulq_f32(v33, v33);
    v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    if (v35 > 0.0)
    {
      v36 = vmulq_f32(v33, vsubq_f32(v17, v9));
      v29 = (v36.f32[2] + vaddv_f32(*v36.f32)) / v35;
      v9 = vaddq_f32(v9, vmulq_n_f32(v33, v29));
    }

    v37 = vsubq_f32(v31, v17);
    v38 = vmulq_f32(v37, v37);
    v38.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
    v39 = vsubq_f32(v5, v17);
    v40 = vmulq_f32(v39, v39);
    v41 = vsubq_f32(v20, v17);
    v42 = vmulq_f32(v41, v41);
    v43 = vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v42, v42, 8uLL)), vadd_f32(vzip1_s32(*v40.i8, *v42.i8), vzip2_s32(*v40.i8, *v42.i8)));
    v44 = vdup_lane_s32(vcgt_f32(vdup_lane_s32(v43, 1), v43), 0);
    __asm { FMOV            V18.2S, #1.0 }

    v50 = __PAIR64__(LODWORD(v18), _D18.u32[0]);
    v51 = LODWORD(v19);
    v52.i32[0] = 0;
    if (*v43.i32 >= *&v43.i32[1])
    {
      v43.i32[0] = v43.i32[1];
    }

    *_D18.i32 = v30;
    v53 = vbsl_s8(vdup_lane_s32(vcgt_f32(v43, *v38.f32), 0), _D18, vbsl_s8(v44, v50, v51));
    if (v38.f32[0] < *v43.i32)
    {
      *v43.i32 = v38.f32[0];
    }

    v54 = vsubq_f32(v9, v17);
    v55 = vmulq_f32(v54, v54);
    v55.f32[0] = v55.f32[2] + vaddv_f32(*v55.f32);
    *&v52.i32[1] = v29;
    return vbsl_s8(vdup_lane_s32(vcgt_f32(v43, *v55.f32), 0), v52, v53);
  }
}

float re::computeDistanceSquaredFromPointToQuad(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t *a7)
{
  geom_closest_point_to_triangle_3f();
  v25 = v14;
  v15 = vsubq_f32(v14, *a1);
  v24 = vmulq_f32(v15, v15);
  geom_closest_point_to_triangle_3f();
  v17 = vsubq_f32(v16, *a1);
  v18 = vmulq_f32(v17, v17);
  v19 = vadd_f32(vzip1_s32(*v24.i8, *v18.i8), vzip2_s32(*v24.i8, *v18.i8));
  v20 = vextq_s8(v18, v18, 8uLL);
  *v20.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *v20.f32), v19);
  v21 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v20.f32, 1), v20), 0), v25, v16);
  if (v20.f32[0] >= v20.f32[1])
  {
    v22 = v20.f32[1];
  }

  else
  {
    v22 = v20.f32[0];
  }

  *a6 = v21;
  *a7 = re::projectPointOntoBilinearPatch3F(a6, a2, a3, a4, a5);
  return v22;
}

uint64_t (***re::buildParametricPlane(re *this, re::GeomMesh *a2, float a3, float a4, int a5))(void)
{
  v6 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v10 = re::globalAllocators(this)[2];
  v16 = &unk_1F5D02FB0;
  v17 = a3;
  v18 = a4;
  v19 = v10;
  v20 = &v16;
  v12 = 16843008;
  v13 = 0;
  v14 = v6;
  v15 = a5;
  re::buildParametricSurface(this, &v16, &v12);
  return re::FunctionBase<24ul,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::destroyCallable(&v16);
}

uint64_t re::buildParametricSurface(int8x16_t **a1, uint64_t a2, char *a3)
{
  v4 = a1;
  v195 = *MEMORY[0x1E69E9840];
  re::GeomMesh::clear(a1);
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v162 = v5 + (a3[4] ^ 1);
  v7 = (v6 + (a3[5] ^ 1u)) * v162;
  v8 = *a3;
  v156 = v4;
  re::GeomMeshBuilder::GeomMeshBuilder(v171, v4);
  if (LODWORD(v171[1]) > v7 && v173 && (v173 - 1) > v173)
  {
      ;
    }
  }

  v9 = ((v6 * v5) << v8);
  LODWORD(v171[1]) = v7;
  v176 = v7;
  if (v177)
  {
    v10 = v178;
    v11 = 8 * v177;
    do
    {
      v12 = *v10++;
      (*(*v12 + 80))(v12, v176);
      v11 -= 8;
    }

    while (v11);
  }

  if (v9 < v173)
  {
    v13 = v183;
    if (v183)
    {
      LODWORD(v4) = 0;
      do
      {
        v14 = re::internal::GeomAttributeContainer::attributeByIndex(v182, v4);
        re::internal::accessFaceVaryingAttributeSubmesh(v14, v15);
        LODWORD(v4) = v4 + 1;
      }

      while (v13 != v4);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v172, v9);
  v179 = v9;
  if (v180)
  {
    v16 = v181;
    v17 = 8 * v180;
    do
    {
      v18 = *v16++;
      (*(*v18 + 80))(v18, v179);
      v17 -= 8;
    }

    while (v17);
  }

  v19 = v184;
  v20 = *(a3 + 3);
  v169 = a3;
  if (!v20)
  {
LABEL_41:
    v39 = re::GeomMesh::operator=(v156, &v171[1]);
    re::GeomMesh::setName(v39, v171[0]);
    re::GeomMesh::freeName(v171);
    re::GeomMesh::freeName(v171);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v174 + 8));
    if (v172)
    {
      v40 = v174;
      if (v174)
      {
        (*(*v172 + 40))();
      }
    }

    v164 = a3[2];
    if (v164 == 1)
    {
      v9 = "vertexNormal";
      v41 = re::internal::GeomAttributeManager::attributeByName((v156 + 16), "vertexNormal");
      v151 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v41);
      v160 = v40;
    }

    else
    {
      v160 = 0;
    }

    v165 = a3[3];
    if (v165 == 1)
    {
      v4 = "vertexTangent";
      v42 = re::internal::GeomAttributeManager::attributeByName((v156 + 16), "vertexTangent");
      v150 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v42);
      v161 = v43;
      v44 = re::internal::GeomAttributeManager::attributeByName((v156 + 16), "vertexBitangent");
      v149 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v44);
      v159 = v40;
    }

    else
    {
      v159 = 0;
      v161 = 0;
    }

    if (a3[1] != 1)
    {
      goto LABEL_104;
    }

    if ((a3[4] & 1) == 0 && (a3[5] & 1) == 0)
    {
      re::addVertexUVs(v156, v40);
      v153 = re::modifyVertexUVs(v156, v45);
      v158 = v46;
      LODWORD(v4) = 1;
      goto LABEL_105;
    }

    v47 = v156[10];
    v184[4] = 0;
    memset(v184, 0, 28);
    *&v189[2] = 0;
    memset(v187, 0, sizeof(v187));
    re::DynamicArray<float>::resize(v184, v47);
    re::DynamicArray<re::GeomCell4>::resize(v187, v47);
    if (v47)
    {
      v48 = 0;
      v49 = v184[2];
      v50 = v184[4];
      while (v49 != v48)
      {
        *(v50 + 4 * v48) = v48;
        v48 = (v48 + 1);
        if (v47 == v48)
        {
          goto LABEL_58;
        }
      }

LABEL_169:
      v170 = 0;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      *v171 = 0u;
      v142 = MEMORY[0x1E69E9C10];
      v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v190 = 136315906;
      *&v190[4] = "operator[]";
      *&v190[12] = 1024;
      if (v143)
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      *&v190[14] = 789;
      v191 = 2048;
      v192 = v49;
      v193 = 2048;
      v194 = v49;
      _os_log_send_and_compose_impl(v144, &v170, v171, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v148, v149);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_58:
      v51 = *(a3 + 3);
      if (v51)
      {
        v52 = 0;
        v53 = 0;
        v54 = *a3;
        v55 = *(a3 + 2);
        v56 = 1;
        v57 = v55;
        do
        {
          v58 = v53 + 1;
          if (v57)
          {
            v59 = 0;
            v60 = v57 + 1;
            v61 = v53 * (v57 + 1);
            v62 = v58 * v60;
            v7 = *&v187[16];
            v63 = *&v189[2];
            v64 = v56 * v60;
            do
            {
              v65 = v61 + v59;
              v66 = v59 + v61 + 1;
              v67 = v64 + v59;
              v49 = v52;
              if (v54)
              {
                if (v7 <= v52)
                {
                  goto LABEL_157;
                }

                v9 = v52 + 1;
                v68 = (v63 + 16 * v52);
                *v68 = v65;
                v68[1] = v65 + 1;
                v68[2] = v67;
                v68[3] = -1;
                LODWORD(v4) = 2;
                if (v7 <= v9)
                {
                  goto LABEL_165;
                }

                v65 = v59 + v61 + 1;
                v66 = v67 + 1;
                v69 = v64 + v59;
                v67 = -1;
              }

              else
              {
                if (v7 <= v52)
                {
                  goto LABEL_161;
                }

                v69 = v59 + v62 + 1;
                LODWORD(v4) = 1;
                v9 = v52;
              }

              v52 += v4;
              v70 = (v63 + 16 * v9);
              *v70 = v65;
              v70[1] = v66;
              v70[2] = v69;
              v70[3] = v67;
              ++v59;
              v55 = *(a3 + 2);
            }

            while (v59 < v55);
            v51 = *(a3 + 3);
            v57 = *(a3 + 2);
          }

          ++v56;
          v53 = v58;
        }

        while (v58 < v51);
        v71 = v51 + 1;
      }

      else
      {
        v55 = *(a3 + 2);
        v71 = 1;
      }

      v72 = re::GeomMesh::addFaceVaryingAttribute(v156, "vertexUV", 6, v71 + v71 * v55, v187, v184);
      if (!(*(*v72 + 16))(v72))
      {
        goto LABEL_84;
      }

      if (*(v72 + 5))
      {
        v73 = *(v72 + 7);
        v74 = (*(*v72 + 16))(v72);
        goto LABEL_85;
      }
    }

    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v145 = MEMORY[0x1E69E9C10];
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    *&v190[14] = 789;
    v191 = 2048;
    v192 = 0;
    v193 = 2048;
    v194 = 0;
    _os_log_send_and_compose_impl(v147, &v170, v171, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
  }

  v9 = 0;
  v21 = 0;
  v22 = *(a3 + 2);
  while (1)
  {
    v7 = (v21 * v162);
    v23 = ((v21 == v20 - 1) & a3[5]) != 0 ? 0 : v7 + v162;
    if (v22)
    {
      break;
    }

LABEL_40:
    if (++v21 >= v20)
    {
      goto LABEL_41;
    }
  }

  v164 = v21;
  v165 = v21 * v162;
  v24 = 0;
  v167 = v23;
  while (1)
  {
    v25 = ((v24 == v22 - 1) & a3[4]) != 0 ? 0 : v24 + 1;
    v26 = v24 + v7;
    v27 = v25 + v7;
    v28 = v25 + v23;
    LODWORD(v4) = v24 + v23;
    if (*a3 != 1)
    {
      break;
    }

    re::GeomMeshBuilder::setFaceVertices(v171, v9, v24 + v7, v27, v24 + v23);
    re::GeomMeshBuilder::setFaceVertices(v171, v9 + 1, v27, v28, v24 + v23);
    v19 = v184;
    v29 = 2;
LABEL_38:
    ++v24;
    v9 = (v29 + v9);
    v22 = *(a3 + 2);
    if (v24 >= v22)
    {
      v20 = *(a3 + 3);
      v21 = v164;
      goto LABEL_40;
    }
  }

  a3 = v173;
  if (v173 > v9)
  {
    v30 = (v174 + 16 * v9);
    v31 = *v30;
    v32 = v30[3];
    if (v31 != -1 && v32 != -1)
    {
      v34 = v183;
      if (v183)
      {
        v35 = 0;
        do
        {
          v36 = re::internal::GeomAttributeContainer::attributeByIndex(v182, v35);
          re::internal::accessFaceVaryingAttributeSubmesh(v36, v37);
          ++v35;
        }

        while (v34 != v35);
        a3 = v173;
        v19 = v184;
        v7 = v165;
      }
    }

    v23 = v167;
    if (a3 <= v9)
    {
      goto LABEL_80;
    }

    v38 = (v174 + 16 * v9);
    *v38 = v26;
    v38[1] = v27;
    v38[2] = v28;
    v38[3] = v4;
    v29 = 1;
    a3 = v169;
    goto LABEL_38;
  }

  *v190 = 0;
  v185 = 0u;
  v186 = 0u;
  memset(v184, 0, sizeof(v184));
  v75 = MEMORY[0x1E69E9C10];
  v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v187 = 136315906;
  *&v187[4] = "operator[]";
  *&v187[12] = 1024;
  if (v76)
  {
    v77 = 3;
  }

  else
  {
    v77 = 2;
  }

  *&v187[14] = 797;
  *&v187[18] = 2048;
  *&v187[20] = v9;
  v188 = 2048;
  *v189 = a3;
  _os_log_send_and_compose_impl(v77, v190, v184, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v187, 38, v148, v149);
  _os_crash_msg();
  __break(1u);
LABEL_80:
  *v190 = 0;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *v19 = 0u;
  v78 = MEMORY[0x1E69E9C10];
  v7 = v184;
  v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v187 = 136315906;
  *&v187[4] = "operator[]";
  *&v187[12] = 1024;
  if (v79)
  {
    v80 = 3;
  }

  else
  {
    v80 = 2;
  }

  *&v187[14] = 789;
  *&v187[18] = 2048;
  *&v187[20] = v9;
  v188 = 2048;
  *v189 = a3;
  _os_log_send_and_compose_impl(v80, v190, v184, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v187, 38, v148, v149);
  _os_crash_msg();
  __break(1u);
LABEL_84:
  v74 = 0;
  v73 = 0;
LABEL_85:
  v81 = 0;
  v82 = 0;
  v83 = *(a3 + 2);
  v84 = *(a3 + 3);
  v85 = 1.0 / v83;
  v86 = 1.0 / v84;
  do
  {
    v87 = 0;
    v88 = v86 * v81;
    if (v81 == v84)
    {
      v88 = 1.0;
    }

    v89 = v82;
    v90 = v74 >= v82;
    v91 = v74 - v82;
    if (v90)
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    do
    {
      if (v92 == v87)
      {
        goto LABEL_137;
      }

      *&v93 = v85 * v87;
      if (v87 == v83)
      {
        *&v93 = 1.0;
      }

      *(&v93 + 1) = v88;
      *(v73 + 8 * v89) = v93;
      v82 = v89 + 1;
      v83 = *(a3 + 2);
      ++v89;
      v90 = v87++ >= v83;
    }

    while (!v90);
    v84 = *(a3 + 3);
    v90 = v81++ >= v84;
  }

  while (!v90);
  if (*v187 && *&v189[2])
  {
    (*(**v187 + 40))(*v187);
  }

  if (v184[0] && v184[4])
  {
    (*(*v184[0] + 40))();
  }

LABEL_104:
  LODWORD(v4) = 0;
  v153 = 0;
  v158 = 0xFFFFFFFFLL;
LABEL_105:
  result = re::GeomMesh::modifyVertexPositions(v156);
  v152 = result;
  v154 = v95;
  v96 = *(a3 + 3);
  v155 = v96 + (a3[5] ^ 1);
  if (v155)
  {
    v97 = 0;
    v98 = 0;
    v99 = *(a3 + 2);
    v74 = v99 + (a3[4] ^ 1);
    v100 = 1.0 / v99;
    v101 = 1.0 / v96;
    while (1)
    {
      v102 = v101 * v98;
      if (v98 == *(a3 + 3))
      {
        v102 = 1.0;
      }

      v168 = v102;
      if (v74)
      {
        break;
      }

LABEL_131:
      if (++v98 == v155)
      {
        return result;
      }
    }

    v157 = v98;
    v7 = 0;
    v103 = v97;
    if (v154 >= v97)
    {
      v104 = v154 - v97;
    }

    else
    {
      v104 = 0;
    }

    v163 = v151 + 16 * v97;
    v105 = (v149 + 16 * v97);
    v106 = (v150 + 16 * v97);
    v107 = v153 + 8 * v97;
    HIDWORD(v148) = v97;
    v9 = v152 + 16 * v97;
    while (1)
    {
      v108 = v103 + v7;
      v109 = v100 * v7;
      if (v7 == *(v169 + 8))
      {
        v109 = 1.0;
      }

      if (v4)
      {
        if (v158 <= v108)
        {
          goto LABEL_141;
        }

        *(v107 + 8 * v7) = __PAIR64__(LODWORD(v168), LODWORD(v109));
      }

      *v187 = 0u;
      *v190 = 0u;
      *v171 = v109;
      *v184 = v168;
      result = (*(**(a2 + 32) + 16))(*(a2 + 32), v171, v184, v187, v190);
      if (v104 == v7)
      {
        break;
      }

      v111 = (v9 + 16 * v7);
      *v111 = result;
      v111[1] = v110;
      if (v165)
      {
        if (v108 >= v161)
        {
          goto LABEL_145;
        }

        *v106 = *v187;
        if (v108 >= v159)
        {
          goto LABEL_153;
        }

        *v105 = *v190;
      }

      if (v164)
      {
        v112 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v190, *v190), *v190, 0xCuLL), vnegq_f32(*v187)), *v190, vextq_s8(vuzp1q_s32(*v187, *v187), *v187, 0xCuLL));
        v113 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
        v114 = vmulq_f32(v112, v112);
        v114.f32[0] = v114.f32[1] + (v114.f32[2] + v114.f32[0]);
        if (v114.f32[0] > 1.0e-10)
        {
          v114.f32[0] = sqrtf(v114.f32[0]);
          v113 = vdivq_f32(v113, vdupq_lane_s32(*v114.f32, 0));
        }

        if (v108 >= v160)
        {
          goto LABEL_149;
        }

        *(v163 + 16 * v7) = v113;
      }

      ++v7;
      ++v105;
      ++v106;
      if (v74 == v7)
      {
        v97 = v103 + v7;
        a3 = v169;
        v98 = v157;
        goto LABEL_131;
      }
    }

    LODWORD(v89) = v154;
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v115 = MEMORY[0x1E69E9C10];
    v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v184 + 4) = "operator[]";
    WORD2(v184[1]) = 1024;
    *(&v184[1] + 6) = 621;
    if (v116)
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    LODWORD(v184[0]) = 136315906;
    WORD1(v184[2]) = 2048;
    *(&v184[2] + 4) = (HIDWORD(v148) + v7);
    WORD2(v184[3]) = 2048;
    *(&v184[3] + 6) = v154;
    _os_log_send_and_compose_impl(v117, &v170, v171, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v184, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v118 = MEMORY[0x1E69E9C10];
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    *&v190[12] = 1024;
    *&v190[14] = 621;
    v191 = 2048;
    v192 = v89;
    v193 = 2048;
    v194 = v74;
    _os_log_send_and_compose_impl(v120, &v170, v171, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    *v187 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v121 = MEMORY[0x1E69E9C10];
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v184 + 4) = "operator[]";
    WORD2(v184[1]) = 1024;
    *(&v184[1] + 6) = 621;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    LODWORD(v184[0]) = 136315906;
    WORD1(v184[2]) = 2048;
    *(&v184[2] + 4) = (HIDWORD(v148) + v7);
    WORD2(v184[3]) = 2048;
    *(&v184[3] + 6) = v158;
    _os_log_send_and_compose_impl(v123, v187, v171, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v184, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v124 = MEMORY[0x1E69E9C10];
    v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v184[0]) = 136315906;
    *(v184 + 4) = "operator[]";
    if (v125)
    {
      v126 = 3;
    }

    else
    {
      v126 = 2;
    }

    WORD2(v184[1]) = 1024;
    *(&v184[1] + 6) = 621;
    WORD1(v184[2]) = 2048;
    *(&v184[2] + 4) = v7 + HIDWORD(v148);
    WORD2(v184[3]) = 2048;
    *(&v184[3] + 6) = v161;
    _os_log_send_and_compose_impl(v126, &v170, v171, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v184, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v127 = MEMORY[0x1E69E9C10];
    v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v184[0]) = 136315906;
    *(v184 + 4) = "operator[]";
    if (v128)
    {
      v129 = 3;
    }

    else
    {
      v129 = 2;
    }

    WORD2(v184[1]) = 1024;
    *(&v184[1] + 6) = 621;
    WORD1(v184[2]) = 2048;
    *(&v184[2] + 4) = v7 + HIDWORD(v148);
    WORD2(v184[3]) = 2048;
    *(&v184[3] + 6) = v160;
    _os_log_send_and_compose_impl(v129, &v170, v171, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v184, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v130 = MEMORY[0x1E69E9C10];
    v49 = v184;
    v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v184[0]) = 136315906;
    *(v184 + 4) = "operator[]";
    if (v131)
    {
      v132 = 3;
    }

    else
    {
      v132 = 2;
    }

    WORD2(v184[1]) = 1024;
    *(&v184[1] + 6) = 621;
    WORD1(v184[2]) = 2048;
    *(&v184[2] + 4) = v7 + HIDWORD(v148);
    WORD2(v184[3]) = 2048;
    *(&v184[3] + 6) = v159;
    _os_log_send_and_compose_impl(v132, &v170, v171, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v184, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v133 = MEMORY[0x1E69E9C10];
    v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    if (v134)
    {
      v135 = 3;
    }

    else
    {
      v135 = 2;
    }

    *&v190[14] = 789;
    v191 = 2048;
    v192 = v49;
    v193 = 2048;
    v194 = v7;
    _os_log_send_and_compose_impl(v135, &v170, v171, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v136 = MEMORY[0x1E69E9C10];
    v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    if (v137)
    {
      v138 = 3;
    }

    else
    {
      v138 = 2;
    }

    *&v190[14] = 789;
    v191 = 2048;
    v192 = v49;
    v193 = 2048;
    v194 = v7;
    _os_log_send_and_compose_impl(v138, &v170, v171, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v171 = 0u;
    v139 = MEMORY[0x1E69E9C10];
    v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    if (v140)
    {
      v141 = (v4 + 1);
    }

    else
    {
      v141 = v4;
    }

    *&v190[12] = 1024;
    *&v190[14] = 789;
    v191 = 2048;
    v192 = v9;
    v193 = 2048;
    v194 = v7;
    _os_log_send_and_compose_impl(v141, &v170, v171, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
    goto LABEL_169;
  }

  return result;
}

uint64_t re::buildCube(re *this, re::GeomMesh *a2, float a3, unsigned int a4)
{
  v112 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = v5;
  }

  v89 = v5;
  v7 = v5 + 1;
  v8 = v6 + 1;
  v9 = (v6 + 1) * (v5 + 1);
  re::GeomMeshBuilder::GeomMeshBuilder(v91, this);
  v86 = v9;
  if (LODWORD(v91[1]) > 6 * v9 && v93 && (v93 - 1) > v93)
  {
      ;
    }
  }

  v83 = this;
  LODWORD(v91[1]) = 6 * v9;
  v96 = 6 * v9;
  if (v97)
  {
    v10 = v98;
    v11 = 8 * v97;
    do
    {
      v12 = *v10++;
      (*(*v12 + 80))(v12, v96);
      v11 -= 8;
    }

    while (v11);
  }

  v13 = 12 * v89 * v6;
  if (v13 < v93)
  {
    v14 = v103;
    if (v103)
    {
      v15 = 0;
      do
      {
        v16 = re::internal::GeomAttributeContainer::attributeByIndex(&v102, v15);
        re::internal::accessFaceVaryingAttributeSubmesh(v16, v17);
        ++v15;
      }

      while (v14 != v15);
    }
  }

  HIDWORD(v84) = v7;
  re::DynamicArray<re::GeomCell4>::resize(&v92, v13);
  v99 = 12 * v89 * v6;
  if (v100)
  {
    v18 = v101;
    v19 = 8 * v100;
    do
    {
      v20 = *v18++;
      (*(*v20 + 80))(v20, v99);
      v19 -= 8;
    }

    while (v19);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v6 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v6;
  }

  do
  {
    v25 = 0;
    v87 = v21;
    do
    {
      ++v25;
      v26 = v24;
      v27 = v21;
      do
      {
        v28 = v27 + 1;
        v29 = v6 + v27;
        re::GeomMeshBuilder::setFaceVertices(v91, v22, v27, v27 + 1, v6 + v27 + 1);
        re::GeomMeshBuilder::setFaceVertices(v91, v22 + 1, v28, v29 + 2, v29 + 1);
        v22 += 2;
        v27 = v28;
        --v26;
      }

      while (v26);
      v21 += v8;
    }

    while (v25 != v89);
    ++v23;
    v21 = v87 + v86;
  }

  while (v23 != 6);
  v30 = re::GeomMesh::operator=(v83, &v91[1]);
  re::GeomMesh::setName(v30, v91[0]);
  re::GeomMesh::freeName(v91);
  re::GeomMesh::freeName(v91);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v94 + 8));
  if (v92)
  {
    v31 = v94;
    if (v94)
    {
      (*(*v92 + 40))();
    }
  }

  re::addVertexUVs(v83, v31);
  v32 = re::GeomMesh::modifyVertexPositions(v83);
  v88 = v33;
  v34 = re::modifyVertexUVs(v83, v33);
  v36 = v35;
  v37 = re::internal::GeomAttributeManager::attributeByName((v83 + 64), "vertexNormal");
  v38 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v37);
  v40 = v39;
  v41 = re::internal::GeomAttributeManager::attributeByName((v83 + 64), "vertexTangent");
  v42 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v41);
  v44 = v43;
  v45 = re::internal::GeomAttributeManager::attributeByName((v83 + 64), "vertexBitangent");
  result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v45);
  v48 = v36;
  v49 = 0;
  v50 = 0;
  v51 = 2.0 / v6;
  v52 = 1.0 / v6;
  do
  {
    if (v50 > 2)
    {
      if (v50 == 3)
      {
        v53 = xmmword_1E30661E0;
        v54 = xmmword_1E3047670;
        v55 = xmmword_1E30661D0;
        if (!HIDWORD(v84))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v53 = xmmword_1E30661D0;
        if (v50 == 4)
        {
          v54 = xmmword_1E3047670;
          v55 = xmmword_1E30476A0;
          if (!HIDWORD(v84))
          {
            goto LABEL_69;
          }
        }

        else
        {
          v54 = xmmword_1E30661F0;
          v55 = xmmword_1E30661E0;
          if (!HIDWORD(v84))
          {
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      v53 = xmmword_1E30661D0;
      v54 = xmmword_1E30661E0;
      v55 = xmmword_1E3047670;
      if (v50)
      {
        if (v50 == 1)
        {
          v53 = xmmword_1E30661D0;
          v54 = xmmword_1E30476A0;
          v55 = xmmword_1E30661F0;
          if (!HIDWORD(v84))
          {
            goto LABEL_69;
          }

          goto LABEL_46;
        }

        v53 = xmmword_1E30476A0;
        v54 = xmmword_1E3047670;
        v55 = xmmword_1E3047680;
      }

      if (!HIDWORD(v84))
      {
        goto LABEL_69;
      }
    }

LABEL_46:
    v56 = 0;
    do
    {
      if (v8)
      {
        v57 = 0;
        v58 = vaddq_f32(v55, vmulq_n_f32(v54, (v56 * (2.0 / v89)) + -1.0));
        v59 = v88 - v49;
        if (v88 < v49)
        {
          v59 = 0;
        }

        v60 = v36 - v49;
        if (v36 < v49)
        {
          v60 = 0;
        }

        v61 = v40 - v49;
        if (v40 < v49)
        {
          v61 = 0;
        }

        v62 = v44 - v49;
        if (v44 < v49)
        {
          v62 = 0;
        }

        v63 = v47 - v49;
        if (v47 < v49)
        {
          v63 = 0;
        }

        do
        {
          if (v59 == v57)
          {
            v90 = 0;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            *v91 = 0u;
            v66 = MEMORY[0x1E69E9C10];
            v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v105 = "operator[]";
            v106 = 1024;
            v107 = 621;
            if (v67)
            {
              v68 = 3;
            }

            else
            {
              v68 = 2;
            }

            v104 = 136315906;
            v108 = 2048;
            v109 = v49 + v57;
            v110 = 2048;
            v111 = v88;
            _os_log_send_and_compose_impl(v68, &v90, v91, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v104, 38, v83, v84);
            _os_crash_msg();
            __break(1u);
LABEL_75:
            v90 = 0;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            *v91 = 0u;
            v69 = MEMORY[0x1E69E9C10];
            v70 = v48;
            v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v104 = 136315906;
            v105 = "operator[]";
            if (v71)
            {
              v72 = 3;
            }

            else
            {
              v72 = 2;
            }

            v106 = 1024;
            v107 = 621;
            v108 = 2048;
            v109 = v57 + v49;
            v110 = 2048;
            v111 = v70;
            _os_log_send_and_compose_impl(v72, &v90, v91, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v104, 38, v83, v84);
            _os_crash_msg();
            __break(1u);
LABEL_79:
            v90 = 0;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            *v91 = 0u;
            v73 = MEMORY[0x1E69E9C10];
            v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v104 = 136315906;
            v105 = "operator[]";
            if (v74)
            {
              v75 = 3;
            }

            else
            {
              v75 = 2;
            }

            v106 = 1024;
            v107 = 621;
            v108 = 2048;
            v109 = v57 + v49;
            v110 = 2048;
            v111 = v40;
            _os_log_send_and_compose_impl(v75, &v90, v91, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v104, 38, v83, v84);
            _os_crash_msg();
            __break(1u);
LABEL_83:
            v90 = 0;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            *v91 = 0u;
            v76 = MEMORY[0x1E69E9C10];
            v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v104 = 136315906;
            v105 = "operator[]";
            if (v77)
            {
              v78 = 3;
            }

            else
            {
              v78 = 2;
            }

            v106 = 1024;
            v107 = 621;
            v108 = 2048;
            v109 = v57 + v49;
            v110 = 2048;
            v111 = v44;
            _os_log_send_and_compose_impl(v78, &v90, v91, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v104, 38, v83, v84);
            _os_crash_msg();
            __break(1u);
LABEL_87:
            v79 = v47;
            v90 = 0;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            *v91 = 0u;
            v80 = MEMORY[0x1E69E9C10];
            v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v104 = 136315906;
            v105 = "operator[]";
            if (v81)
            {
              v82 = 3;
            }

            else
            {
              v82 = 2;
            }

            v106 = 1024;
            v107 = 621;
            v108 = 2048;
            v109 = v57 + v49;
            v110 = 2048;
            v111 = v79;
            _os_log_send_and_compose_impl(v82, &v90, v91, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v104, 38, v83, v84);
            _os_crash_msg();
            __break(1u);
          }

          *(v32 + 16 * v49 + 16 * v57) = vmulq_n_f32(vaddq_f32(v58, vmulq_n_f32(v53, (v57 * v51) + -1.0)), a3);
          if (v60 == v57)
          {
            goto LABEL_75;
          }

          *&v64 = (1.0 / v89) * v56;
          *(&v64 + 1) = v52 * v57;
          *(v34 + 8 * v49 + 8 * v57) = v64;
          if (v61 == v57)
          {
            goto LABEL_79;
          }

          *(v38 + 16 * v49 + 16 * v57) = v55;
          if (v62 == v57)
          {
            goto LABEL_83;
          }

          *(v42 + 16 * v49 + 16 * v57) = v54;
          if (v63 == v57)
          {
            goto LABEL_87;
          }

          *(result + 16 * v49 + 16 * v57++) = v53;
        }

        while (v8 != v57);
        v49 += v57;
      }
    }

    while (v56++ != v89);
LABEL_69:
    ++v50;
  }

  while (v50 != 6);
  return result;
}

float re::internal::Callable<re::buildParametricPlane(re::GeomMesh &,float,float,unsigned int,unsigned int)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::operator()(uint64_t a1, float *a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  result = (*a2 + -0.5) * *(a1 + 8);
  *a4 = xmmword_1E30476A0;
  *a5 = xmmword_1E3047670;
  return result;
}

void *re::internal::Callable<re::buildParametricPlane(re::GeomMesh &,float,float,unsigned int,unsigned int)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D02FB0;
  a2[1] = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::buildParametricPlane(re::GeomMesh &,float,float,unsigned int,unsigned int)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D02FB0;
  a2[1] = *(a1 + 8);
  return a2;
}

void re::makeManifold(unint64_t a1, re::GeomMesh *a2, _anonymous_namespace_ *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  re::GeomMesh::GeomMesh(v55, 0);
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v7 = *(a1 + 16);
  v53 = 1;
  re::DynamicArray<unsigned int>::resize(&v50, v7, re::kInvalidMeshIndex);
  v8 = *(a1 + 40);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = 0;
  v10 = *(a1 + 56);
  v11 = v52;
  do
  {
    if (v9 == v8)
    {
      goto LABEL_49;
    }

    v12 = 0;
    v57 = *(v10 + 16 * v9);
    if (HIDWORD(v57) == -1)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }

    v14 = v54;
    do
    {
      v3 = *(&v57 + v12);
      if (v11 <= v3)
      {
        *v66 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v73[0]) = 136315906;
        *(v73 + 4) = "operator[]";
        WORD6(v73[0]) = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        *(v73 + 14) = 789;
        WORD1(v73[1]) = 2048;
        *(&v73[1] + 4) = v3;
        WORD6(v73[1]) = 2048;
        *(&v73[1] + 14) = v11;
        _os_log_send_and_compose_impl(v31, v66, &v61, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v50, v51);
        _os_crash_msg();
        __break(1u);
LABEL_49:
        *&v57 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v73[0]) = 136315906;
        *(v73 + 4) = "operator[]";
        WORD6(v73[0]) = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        *(v73 + 14) = 797;
        WORD1(v73[1]) = 2048;
        *(&v73[1] + 4) = v8;
        WORD6(v73[1]) = 2048;
        *(&v73[1] + 14) = v8;
        _os_log_send_and_compose_impl(v34, &v57, &v61, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v50, v51);
        _os_crash_msg();
        __break(1u);
        goto LABEL_53;
      }

      *(v14 + 4 * v3) = v3;
      ++v12;
    }

    while (v13 != v12);
    ++v9;
  }

  while (v9 != v8);
  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_11:
  v15 = 0;
  v16 = 1;
  v8 = v52;
  v17 = v54;
  while (1)
  {
    if (v52 == v15)
    {
      goto LABEL_57;
    }

    if (*(v54 + 4 * v15) == -1)
    {
      break;
    }

    v15 = (v15 + 1);
    v16 = v15 < v7;
    if (v7 == v15)
    {
      goto LABEL_34;
    }
  }

  v18 = 0;
  v19 = 0;
  do
  {
    if (v8 == v18)
    {
      goto LABEL_61;
    }

    if (*(v17 + 4 * v18) != -1)
    {
      v3 = v19;
      if (v8 <= v19)
      {
        goto LABEL_65;
      }

      *(v17 + 4 * v19++) = v18;
    }

    ++v18;
  }

  while (v7 != v18);
  re::DynamicArray<float>::resize(&v50, v19);
  re::internal::buildMeshFromNewVertices(a1, &v50, v55);
  if (v16)
  {
    re::GeomMesh::GeomMesh(&v61, 0);
    v60 = 0;
    v58 = 0;
    v57 = 0uLL;
    v59 = 0;
    {
      re::GeomMesh::operator=(v55, &v61);
      v20 = v58;
      if (v58)
      {
        v21 = v60;
        a1 = v52;
        v22 = v54;
        do
        {
          v7 = *v21;
          if (a1 <= v7)
          {
            goto LABEL_69;
          }

          *v21++ = *(v22 + 4 * v7);
        }

        while (--v20);
      }

      re::DynamicArray<re::RigComponentConstraint>::operator=(&v50, &v57);
    }

    if (v57 && v60)
    {
      (*(*v57 + 40))();
    }

    re::GeomMesh::~GeomMesh(&v61);
LABEL_35:
    v23 = *(a3 + 2);
    if (v23)
    {
      v24 = 0;
      v25 = *(a3 + 4);
      v26 = 1;
      a2 = v52;
      v27 = v54;
      while (1)
      {
        a1 = *(v25 + 4 * v24);
        if (a2 <= a1)
        {
          break;
        }

        *(v25 + 4 * v24) = *(v27 + 4 * a1);
        v24 = v26;
        if (v23 <= v26++)
        {
          goto LABEL_41;
        }
      }

LABEL_53:
      *&v57 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v35 = MEMORY[0x1E69E9C10];
      v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      if (v36)
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = a1;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = a2;
      _os_log_send_and_compose_impl(v37, &v57, &v61, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v50, v51);
      _os_crash_msg();
      __break(1u);
LABEL_57:
      *&v57 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v38 = MEMORY[0x1E69E9C10];
      v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      if (v39)
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }

      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = v8;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = v8;
      _os_log_send_and_compose_impl(v40, &v57, &v61, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v50, v51);
      _os_crash_msg();
      __break(1u);
LABEL_61:
      *&v57 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v41 = MEMORY[0x1E69E9C10];
      v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      if (v42)
      {
        v43 = 3;
      }

      else
      {
        v43 = 2;
      }

      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = v8;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = v8;
      _os_log_send_and_compose_impl(v43, &v57, &v61, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v50, v51);
      _os_crash_msg();
      __break(1u);
LABEL_65:
      *&v57 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v44 = MEMORY[0x1E69E9C10];
      v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      if (v45)
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = v3;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = v8;
      _os_log_send_and_compose_impl(v46, &v57, &v61, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v50, v51);
      _os_crash_msg();
      __break(1u);
LABEL_69:
      v56 = 0;
      memset(v73, 0, sizeof(v73));
      v47 = MEMORY[0x1E69E9C10];
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v66 = 136315906;
      *&v66[4] = "operator[]";
      v67 = 1024;
      if (v48)
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      v68 = 789;
      v69 = 2048;
      v70 = v7;
      v71 = 2048;
      v72 = a1;
      _os_log_send_and_compose_impl(v49, &v56, v73, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v50, v51);
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
LABEL_34:
    {
      goto LABEL_35;
    }
  }

LABEL_41:
  if (v50 && v54)
  {
    (*(*v50 + 40))();
  }

  re::GeomMesh::~GeomMesh(v55);
}

uint64_t re::anonymous namespace::makeManifoldByVertexSplitting(unint64_t a1, re::GeomMesh *a2, _anonymous_namespace_ *a3)
{
  v130 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v75 = 0;
  v73[1] = 0;
  v73[2] = 0;
  v74 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v73, 1uLL);
  ++v74;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = 0;
  v107 = 0;
  v80 = 0u;
  v81 = 0u;
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  v85 = 0;
  v86 = 0u;
  v87 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v91 = 0;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  re::internal::GeomConnectivityNonManifold::build(a1 + 16, &v72);
  v71 = 0;
  v68[1] = 0;
  v69 = 0;
  v68[0] = 0;
  v70 = 0;
  re::DynamicArray<unsigned int>::resize(v68, 4 * (*(a1 + 40) & 0x3FFFFFFFLL), re::kInvalidMeshIndex);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 56);
    v11 = v69;
    do
    {
      if (v9 == v7)
      {
LABEL_128:
        *v110 = 0;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        v53 = MEMORY[0x1E69E9C10];
        v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v127[0]) = 136315906;
        *(v127 + 4) = "operator[]";
        WORD6(v127[0]) = 1024;
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        *(v127 + 14) = 797;
        WORD1(v127[1]) = 2048;
        *(&v127[1] + 4) = v7;
        WORD6(v127[1]) = 2048;
        *(&v127[1] + 14) = v7;
        _os_log_send_and_compose_impl(v55, v110, &v113, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v65, v67);
        _os_crash_msg();
        __break(1u);
LABEL_132:
        *v110 = 0;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v127[0]) = 136315906;
        *(v127 + 4) = "operator[]";
        WORD6(v127[0]) = 1024;
        if (v57)
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }

        *(v127 + 14) = 797;
        WORD1(v127[1]) = 2048;
        *(&v127[1] + 4) = v7;
        WORD6(v127[1]) = 2048;
        *(&v127[1] + 14) = v11;
        _os_log_send_and_compose_impl(v58, v110, &v113, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_136:
        *v120 = 0;
        v128 = v20;
        v129 = v20;
        v127[1] = v20;
        v127[2] = v20;
        v127[0] = v20;
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v110 = 136315906;
        *&v110[4] = "operator[]";
        *&v110[12] = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        *&v110[14] = 797;
        *&v110[18] = 2048;
        *&v110[20] = v7;
        v111 = 2048;
        v112[0] = v11;
        _os_log_send_and_compose_impl(v61, v120, v127, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v110, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_140:
        *v120 = 0;
        v128 = v20;
        v129 = v20;
        v127[1] = v20;
        v127[2] = v20;
        v127[0] = v20;
        v62 = MEMORY[0x1E69E9C10];
        v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v110 = 136315906;
        *&v110[4] = "operator[]";
        *&v110[12] = 1024;
        if (v63)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        *&v110[14] = 797;
        *&v110[18] = 2048;
        *&v110[20] = v3;
        v111 = 2048;
        v112[0] = v11;
        _os_log_send_and_compose_impl(v64, v120, v127, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v110, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
      }

      *v110 = *(v10 + 16 * v9);
      v12 = v71;
      if (*&v110[12] == -1)
      {
        v13 = 3;
      }

      else
      {
        v13 = 4;
      }

      v14 = v110;
      v15 = v8;
      do
      {
        v16 = v15;
        if (v11 <= v15)
        {
          goto LABEL_64;
        }

        v17 = *v14++;
        *(v12 + 4 * v15++) = v17;
        --v13;
      }

      while (v13);
      ++v9;
      v8 += 4;
    }

    while (v9 != v7);
  }

  v66 = a2;
  re::DynamicArray<re::RigComponentConstraint>::operator=(a3, &v113);
  if (v113 && v115)
  {
    (*(*v113 + 40))(v113);
  }

  HIDWORD(v67) = 0;
  v18 = DWORD2(v81);
  if (DWORD2(v81))
  {
    v19 = 0;
    v16 = &v113;
    do
    {
      v7 = v19;
      v11 = v78;
      if (v78 <= v19)
      {
        goto LABEL_132;
      }

      if ((*(v80 + v19) & 2) != 0)
      {
        *&v113 = &v72;
        DWORD2(v113) = v19;
        *&v115 = 0;
        v114 = 0uLL;
        DWORD2(v115) = 0;
        v119 = 0;
        v20 = 0uLL;
        v116 = 0u;
        v117 = 0u;
        v118 = 0;
        if (v19)
        {
          v3 = v19 - 1;
          v11 = *(&v84 + 1);
          if (*(&v84 + 1) <= v3)
          {
            goto LABEL_140;
          }

          v3 = *(v86 + 4 * v3);
        }

        else
        {
          v3 = 0;
          v11 = *(&v84 + 1);
        }

        if (v11 <= v19)
        {
          goto LABEL_136;
        }

        v21 = *(v86 + 4 * v19);
        v11 = v21 - v3;
        re::DynamicArray<float>::resize(&v114, v11);
        if (v21 > v3)
        {
          v22 = 0;
          v23 = v3;
          v24 = *(&v90 + 1);
          v25 = v92;
          v26 = *(&v90 + 1) - v3;
          if (*(&v90 + 1) < v3)
          {
            v26 = 0;
          }

          v7 = v115;
          v27 = v116;
          while (1)
          {
            if (v26 == v22)
            {
              goto LABEL_120;
            }

            if (v7 == v22)
            {
              break;
            }

            *(v27 + 4 * v22) = *(v25 + 4 * v23++);
            if (v11 == ++v22)
            {
              goto LABEL_32;
            }
          }

LABEL_124:
          *v120 = 0;
          v128 = 0u;
          v129 = 0u;
          memset(v127, 0, sizeof(v127));
          v50 = MEMORY[0x1E69E9C10];
          v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v110 = 136315906;
          *&v110[4] = "operator[]";
          *&v110[12] = 1024;
          if (v51)
          {
            v52 = 3;
          }

          else
          {
            v52 = 2;
          }

          *&v110[14] = 789;
          *&v110[18] = 2048;
          *&v110[20] = v7;
          v111 = 2048;
          v112[0] = v7;
          _os_log_send_and_compose_impl(v52, v120, v127, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v110, 38, v66, v67);
          _os_crash_msg();
          __break(1u);
          goto LABEL_128;
        }

        v7 = v115;
LABEL_32:
        LOBYTE(v127[0]) = 0;
        re::DynamicArray<unsigned char>::resize(&v116 + 1, v7, v127);
        *(v112 + 2) = 0;
        memset(v110, 0, sizeof(v110));
        {
          do
          {
            if (!*&v110[16])
            {
              goto LABEL_45;
            }

            v28 = *(v112 + 2);
            v29 = *(v112 + 2) + 4 * *&v110[16];
            v7 = *(a1 + 40);
            v30 = *(a1 + 56);
            do
            {
              v11 = *v28;
              if (v7 <= v11)
              {
                *&v109 = 0;
                v128 = 0u;
                v129 = 0u;
                memset(v127, 0, sizeof(v127));
                v23 = MEMORY[0x1E69E9C10];
                v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v120 = 136315906;
                *&v120[4] = "operator[]";
                v121 = 1024;
                if (v44)
                {
                  v45 = 3;
                }

                else
                {
                  v45 = 2;
                }

                v122 = 797;
                v123 = 2048;
                v124 = v11;
                v125 = 2048;
                v126 = v7;
                _os_log_send_and_compose_impl(v45, &v109, v127, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v66, v67);
                _os_crash_msg();
                __break(1u);
LABEL_120:
                *v120 = 0;
                v128 = 0u;
                v129 = 0u;
                memset(v127, 0, sizeof(v127));
                v46 = MEMORY[0x1E69E9C10];
                v47 = v24;
                v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v110 = 136315906;
                *&v110[4] = "operator[]";
                *&v110[12] = 1024;
                if (v48)
                {
                  v49 = 3;
                }

                else
                {
                  v49 = 2;
                }

                *&v110[14] = 797;
                *&v110[18] = 2048;
                *&v110[20] = v23;
                v111 = 2048;
                v112[0] = v47;
                _os_log_send_and_compose_impl(v49, v120, v127, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v110, 38, v66, v67);
                _os_crash_msg();
                __break(1u);
                goto LABEL_124;
              }

              v109 = *(v30 + 16 * v11);
              v31 = 4 * v11;
              v32 = *(a3 + 4);
              v11 = v69;
              v33 = v71;
              if (HIDWORD(v109) == -1)
              {
                v34 = 3;
              }

              else
              {
                v34 = 4;
              }

              v35 = &v109;
              do
              {
                v36 = *v35++;
                if (v36 == HIDWORD(v67))
                {
                  v3 = v31;
                  if (v11 <= v31)
                  {
                    v108 = 0;
                    v128 = 0u;
                    v129 = 0u;
                    memset(v127, 0, sizeof(v127));
                    v37 = MEMORY[0x1E69E9C10];
                    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v120 = 136315906;
                    *&v120[4] = "operator[]";
                    v121 = 1024;
                    if (v38)
                    {
                      v39 = 3;
                    }

                    else
                    {
                      v39 = 2;
                    }

                    v122 = 789;
                    v123 = 2048;
                    v124 = v3;
                    v125 = 2048;
                    v126 = v11;
                    _os_log_send_and_compose_impl(v39, &v108, v127, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v66, v67);
                    _os_crash_msg();
                    __break(1u);
LABEL_64:
                    *v120 = 0;
                    v116 = 0u;
                    v117 = 0u;
                    v114 = 0u;
                    v115 = 0u;
                    v113 = 0u;
                    v40 = MEMORY[0x1E69E9C10];
                    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v127[0]) = 136315906;
                    *(v127 + 4) = "operator[]";
                    WORD6(v127[0]) = 1024;
                    if (v41)
                    {
                      v42 = 3;
                    }

                    else
                    {
                      v42 = 2;
                    }

                    *(v127 + 14) = 789;
                    WORD1(v127[1]) = 2048;
                    *(&v127[1] + 4) = v16;
                    WORD6(v127[1]) = 2048;
                    *(&v127[1] + 14) = v11;
                    _os_log_send_and_compose_impl(v42, v120, &v113, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v65, v67);
                    _os_crash_msg();
                    __break(1u);
LABEL_68:
                    re::internal::buildMeshFromNewFaceVertices(a1, v68, v66);
                    goto LABEL_69;
                  }

                  *(v33 + 4 * v31) = v32;
                }

                ++v31;
                --v34;
              }

              while (v34);
              ++v28;
            }

            while (v28 != v29);
LABEL_45:
            re::DynamicArray<int>::add(a3, &v67 + 1);
          }
        }

        if (*v110 && *(v112 + 2))
        {
          (*(**v110 + 40))(*v110);
        }

        if (*(&v116 + 1))
        {
          if (v119)
          {
            (*(**(&v116 + 1) + 40))(*(&v116 + 1));
          }

          v119 = 0;
          v117 = 0uLL;
          *(&v116 + 1) = 0;
          ++v118;
        }

        if (v114 && v116)
        {
          (*(*v114 + 40))(v114);
        }

        v19 = HIDWORD(v67);
        v18 = DWORD2(v81);
      }

      HIDWORD(v67) = ++v19;
    }

    while (v19 < v18);
  }

  if (*(a3 + 2) != *(a1 + 16))
  {
    goto LABEL_68;
  }

  re::GeomMesh::copy(a1, v66);
LABEL_69:
  if (v68[0] && v71)
  {
    (*(*v68[0] + 40))();
  }

  if (*(&v104 + 1))
  {
    if (v107)
    {
      (*(**(&v104 + 1) + 40))(*(&v104 + 1));
    }

    v107 = 0;
    v105 = 0uLL;
    *(&v104 + 1) = 0;
    ++v106;
  }

  if (*(&v101 + 1))
  {
    if (v104)
    {
      (*(**(&v101 + 1) + 40))(*(&v101 + 1));
    }

    *&v104 = 0;
    v102 = 0uLL;
    *(&v101 + 1) = 0;
    ++v103;
  }

  if (*(&v98 + 1))
  {
    if (v101)
    {
      (*(**(&v98 + 1) + 40))(*(&v98 + 1));
    }

    *&v101 = 0;
    v99 = 0uLL;
    *(&v98 + 1) = 0;
    ++v100;
  }

  if (*(&v95 + 1))
  {
    if (v98)
    {
      (*(**(&v95 + 1) + 40))(*(&v95 + 1));
    }

    *&v98 = 0;
    v96 = 0uLL;
    *(&v95 + 1) = 0;
    ++v97;
  }

  if (*(&v92 + 1))
  {
    if (v95)
    {
      (*(**(&v92 + 1) + 40))(*(&v92 + 1));
    }

    *&v95 = 0;
    v93 = 0uLL;
    *(&v92 + 1) = 0;
    ++v94;
  }

  if (*(&v89 + 1))
  {
    if (v92)
    {
      (*(**(&v89 + 1) + 40))(*(&v89 + 1));
    }

    *&v92 = 0;
    v90 = 0uLL;
    *(&v89 + 1) = 0;
    ++v91;
  }

  if (*(&v86 + 1))
  {
    if (v89)
    {
      (*(**(&v86 + 1) + 40))(*(&v86 + 1));
    }

    *&v89 = 0;
    v87 = 0uLL;
    *(&v86 + 1) = 0;
    ++v88;
  }

  if (*(&v83 + 1))
  {
    if (v86)
    {
      (*(**(&v83 + 1) + 40))(*(&v83 + 1));
    }

    *&v86 = 0;
    v84 = 0uLL;
    *(&v83 + 1) = 0;
    ++v85;
  }

  if (*(&v80 + 1))
  {
    if (v83)
    {
      (*(**(&v80 + 1) + 40))(*(&v80 + 1));
    }

    *&v83 = 0;
    v81 = 0uLL;
    *(&v80 + 1) = 0;
    ++v82;
  }

  if (v76)
  {
    if (v80)
    {
      (*(*v76 + 40))();
    }

    *&v80 = 0;
    v77 = 0;
    v78 = 0;
    v76 = 0;
    ++v79;
  }

  result = v73[0];
  if (v73[0])
  {
    if (v75)
    {
      return (*(*v73[0] + 40))();
    }
  }

  return result;
}

uint64_t re::anonymous namespace::makeMeshWithNoDuplicatedFaceVertices(unint64_t a1, uint64_t a2, _anonymous_namespace_ *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::RigComponentConstraint>::operator=(a3, &v40);
  if (v40 && v42)
  {
    (*(*v40 + 40))();
  }

  v29 = 0;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  v28 = 0;
  re::DynamicArray<unsigned int>::resize(v26, 4 * (*(a1 + 40) & 0x3FFFFFFFLL), re::kInvalidMeshIndex);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_21;
  }

  v24 = a2;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v6 <= v7)
    {
      goto LABEL_30;
    }

    v6 = 0;
    v31 = *(*(a1 + 56) + 16 * v7);
    v9 = 4 * v7;
    if (HIDWORD(v31) == -1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    do
    {
      v11 = *(&v31 + v6);
      HIDWORD(v25) = v11;
      v12 = (v9 + v6);
      v13 = v27;
      if (v27 <= v12)
      {
        v30 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v18 = MEMORY[0x1E69E9C10];
        v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v32 = 136315906;
        v33 = "operator[]";
        v34 = 1024;
        if (v19)
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        v35 = 789;
        v36 = 2048;
        v37 = (v9 + v6);
        v38 = 2048;
        v39 = v13;
        _os_log_send_and_compose_impl(v20, &v30, &v40, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v24, v25);
        _os_crash_msg();
        __break(1u);
LABEL_30:
        *&v31 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v32 = 136315906;
        v33 = "operator[]";
        v34 = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v35 = 797;
        v36 = 2048;
        v37 = v7;
        v38 = 2048;
        v39 = v6;
        _os_log_send_and_compose_impl(v23, &v31, &v40, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v24, v25);
        _os_crash_msg();
        __break(1u);
      }

      v14 = v29;
      *(v29 + 4 * v12) = v11;
      if (v6)
      {
        v15 = 0;
        while (*(&v31 + v15) != HIDWORD(v25))
        {
          if (v6 == ++v15)
          {
            goto LABEL_17;
          }
        }

        *(v14 + 4 * v12) = *(a3 + 2);
        re::DynamicArray<int>::add(a3, &v25 + 1);
        v8 = 1;
      }

LABEL_17:
      ++v6;
    }

    while (v6 != v10);
    ++v7;
    v6 = *(a1 + 40);
  }

  while (v7 < v6);
  if ((v8 & 1) == 0)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  re::internal::buildMeshFromNewFaceVertices(a1, v26, v24);
  v16 = 1;
LABEL_22:
  if (v26[0] && v29)
  {
    (*(*v26[0] + 40))();
  }

  return v16;
}

void re::anonymous namespace::makeIdentityMap(re::_anonymous_namespace_ *this, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  v4 = a2;
  re::DynamicArray<float>::resize(this, a2);
  if (a2)
  {
    v5 = 0;
    v6 = *(this + 2);
    v7 = *(this + 4);
    do
    {
      if (v6 == v5)
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
        v17 = v6;
        v18 = 2048;
        v19 = v6;
        _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
        _os_crash_msg();
        __break(1u);
      }

      *(v7 + 4 * v5) = v5;
      ++v5;
    }

    while (v4 != v5);
  }
}

uint64_t re::anonymous namespace::VertexFaceNeighborhood::findNextManifoldNeighborhood(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  v2 = a1[9];
  if (v2)
  {
    v3 = 0;
    v4 = 1;
    while (*(a1[11] + v3))
    {
      v3 = v4;
      if (v2 <= v4++)
      {
        LODWORD(v2) = 0;
        return v2 & a1;
      }
    }

    v6 = a1[4];
    if (v6 <= v3)
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
      v17 = v3;
      v18 = 2048;
      v19 = v6;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    LODWORD(v2) = 1;
  }

  return v2 & a1;
}

uint64_t re::anonymous namespace::VertexFaceNeighborhood::findReachableFaces(uint64_t a1, int a2, _anonymous_namespace_ *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  HIDWORD(v52) = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = v65;
  v9 = 1;
  while (*(*(a1 + 48) + 4 * v7) != a2)
  {
    v7 = v9;
    if (v4 <= v9++)
    {
      return 0;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v11 = v9 - 1;
  v12 = *(a1 + 72);
  if (v12 <= v11)
  {
    goto LABEL_59;
  }

  v13 = *(a1 + 88);
  if (*(v13 + v11))
  {
    return 0;
  }

  *(v13 + v11) = 1;
  re::DynamicArray<int>::add(a3, &v52 + 1);
  v12 = *(a1 + 32);
  if (v12 <= v11)
  {
    goto LABEL_63;
  }

  v15 = re::internal::GeomConnectivityNonManifold::faceIncidentEdges(*a1, *(*(a1 + 48) + 4 * v11), v57);
  if (v15)
  {
    v16 = 0;
    v17 = v15;
    do
    {
      v11 = v57[v16];
      v18 = *a1;
      v12 = *(*a1 + 64);
      if (v12 <= v11)
      {
        goto LABEL_47;
      }

      if ((*(*(v18 + 10) + v11) & 8) == 0)
      {
        re::internal::GeomConnectivityNonManifold::edgeVertices(v18, v57[v16], v65);
        v19 = *(a1 + 8);
        if (v65[0] == v19 || v65[1] == v19)
        {
          *&v56[2] = 0;
          memset(v54, 0, sizeof(v54));
          v21 = *a1;
          if (v11)
          {
            v12 = (v11 - 1);
            v3 = *(v21 + 38);
            if (v3 <= v12)
            {
              goto LABEL_55;
            }

            v22 = *(*(v21 + 40) + 4 * v12);
          }

          else
          {
            v22 = 0;
            v3 = *(v21 + 38);
          }

          if (v3 <= v11)
          {
            goto LABEL_51;
          }

          v23 = *(*(v21 + 40) + 4 * v11);
          v11 = v23 - v22;
          re::DynamicArray<float>::resize(v54, v11);
          if (v23 > v22)
          {
            v24 = 0;
            v25 = v22;
            v3 = *(v21 + 43);
            v12 = *&v54[16];
            v26 = *&v56[2];
            v27 = v3 - v22;
            if (v3 < v22)
            {
              v27 = 0;
            }

            while (v27 != v24)
            {
              if (v12 == v24)
              {
                goto LABEL_43;
              }

              *(v26 + 4 * v24) = *(*(v21 + 45) + 4 * v25++);
              if (v11 == ++v24)
              {
                goto LABEL_31;
              }
            }

            v53 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            *v65 = 0u;
            v31 = MEMORY[0x1E69E9C10];
            v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v58 = 136315906;
            *&v58[4] = "operator[]";
            v59 = 1024;
            if (v32)
            {
              v33 = 3;
            }

            else
            {
              v33 = 2;
            }

            v60 = 797;
            v61 = 2048;
            v62 = v25;
            v63 = 2048;
            v64 = v3;
            _os_log_send_and_compose_impl(v33, &v53, v65, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v52);
            _os_crash_msg();
            __break(1u);
LABEL_43:
            v53 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            *v65 = 0u;
            v34 = MEMORY[0x1E69E9C10];
            v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v58 = 136315906;
            *&v58[4] = "operator[]";
            v59 = 1024;
            if (v35)
            {
              v36 = 3;
            }

            else
            {
              v36 = 2;
            }

            v60 = 789;
            v61 = 2048;
            v62 = v12;
            v63 = 2048;
            v64 = v12;
            _os_log_send_and_compose_impl(v36, &v53, v65, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v52);
            _os_crash_msg();
            __break(1u);
LABEL_47:
            *v58 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            *v65 = 0u;
            v37 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v54 = 136315906;
            *&v54[4] = "operator[]";
            *&v54[12] = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            *&v54[14] = 797;
            *&v54[18] = 2048;
            *&v54[20] = v11;
            v55 = 2048;
            *v56 = v12;
            _os_log_send_and_compose_impl(v39, v58, v65, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v54, 38, v52, v53);
            _os_crash_msg();
            __break(1u);
LABEL_51:
            v53 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            *v65 = 0u;
            v40 = MEMORY[0x1E69E9C10];
            v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v58 = 136315906;
            *&v58[4] = "operator[]";
            v59 = 1024;
            if (v41)
            {
              v42 = 3;
            }

            else
            {
              v42 = 2;
            }

            v60 = 797;
            v61 = 2048;
            v62 = v11;
            v63 = 2048;
            v64 = v3;
            _os_log_send_and_compose_impl(v42, &v53, v65, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v52);
            _os_crash_msg();
            __break(1u);
LABEL_55:
            v53 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            *v65 = 0u;
            v43 = MEMORY[0x1E69E9C10];
            v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v58 = 136315906;
            *&v58[4] = "operator[]";
            v59 = 1024;
            if (v44)
            {
              v45 = 3;
            }

            else
            {
              v45 = 2;
            }

            v60 = 797;
            v61 = 2048;
            v62 = v12;
            v63 = 2048;
            v64 = v3;
            _os_log_send_and_compose_impl(v45, &v53, v65, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v52);
            _os_crash_msg();
            __break(1u);
LABEL_59:
            *v58 = 0;
            *(v8 + 3) = 0u;
            *(v8 + 4) = 0u;
            *(v8 + 1) = 0u;
            *(v8 + 2) = 0u;
            *v65 = 0u;
            v46 = MEMORY[0x1E69E9C10];
            v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v54 = 136315906;
            *&v54[4] = "operator[]";
            *&v54[12] = 1024;
            if (v47)
            {
              v48 = 3;
            }

            else
            {
              v48 = 2;
            }

            *&v54[14] = 789;
            *&v54[18] = 2048;
            *&v54[20] = v11;
            v55 = 2048;
            *v56 = v12;
            _os_log_send_and_compose_impl(v48, v58, v65, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v54, 38, v52, v53);
            _os_crash_msg();
            __break(1u);
LABEL_63:
            *v58 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            *v65 = 0u;
            v49 = MEMORY[0x1E69E9C10];
            v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v54 = 136315906;
            *&v54[4] = "operator[]";
            *&v54[12] = 1024;
            if (v50)
            {
              v51 = 3;
            }

            else
            {
              v51 = 2;
            }

            *&v54[14] = 789;
            *&v54[18] = 2048;
            *&v54[20] = v11;
            v55 = 2048;
            *v56 = v12;
            _os_log_send_and_compose_impl(v51, v58, v65, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v54, 38, v52, v53);
            _os_crash_msg();
            __break(1u);
          }

LABEL_31:
          if (*&v54[16])
          {
            v28 = *&v56[2];
            v29 = 4 * *&v54[16];
            do
            {
              v30 = *v28++;
              v29 -= 4;
            }

            while (v29);
          }

          if (*v54)
          {
            if (*&v56[2])
            {
              (*(**v54 + 40))();
            }
          }
        }
      }

      ++v16;
    }

    while (v16 != v17);
  }

  return 1;
}

uint64_t re::internal::GeomConnectivityNonManifold::faceIncidentEdges(re::internal::GeomConnectivityNonManifold *this, int a2, unsigned int *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = (4 * a2);
  v5 = *(this + 53);
  if (v5 <= v4)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v10, &v21, &v30, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(this + 55);
  *a3 = *(v6 + 4 * v4);
  v3 = v4 | 1;
  if (v5 <= v3)
  {
LABEL_13:
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

    v25 = 797;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  a3[1] = *(v6 + 4 * v3);
  v3 = v4 | 2;
  if (v5 <= v3)
  {
LABEL_17:
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
    v27 = v3;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_21:
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

    v25 = 797;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  a3[2] = *(v6 + 4 * v3);
  v4 = v4 | 3;
  if (v5 <= v4)
  {
    goto LABEL_21;
  }

  v7 = *(v6 + 4 * v4);
  a3[3] = v7;
  if (v7 == -1)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t re::internal::GeomConnectivityNonManifold::edgeVertices(uint64_t this, int a2, unsigned int *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = (2 * a2);
  v4 = *(this + 264);
  if (v4 <= v3)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v16 = 797;
    v17 = 2048;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v7, &v12, &v21, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
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

    v16 = 797;
    v17 = 2048;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 280);
  *a3 = *(v5 + 4 * v3);
  v3 = v3 | 1;
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  a3[1] = *(v5 + 4 * v3);
  return this;
}

uint64_t re::internal::writeGeomMeshToStream(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v73 = *MEMORY[0x1E69E9840];
  LODWORD(v68) = 538446081;
  while (v4 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v68 + v4, 4 - v4);
    v4 += result;
    if (!result)
    {
      return result;
    }
  }

  v6 = 0;
  LODWORD(v68) = 1;
  while (v6 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v68 + v6, 4 - v6);
    v6 += result;
    if (!result)
    {
      return result;
    }
  }

  v7 = 0;
  LODWORD(v68) = 1213416781;
  while (v7 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v68 + v7, 4 - v7);
    v7 += result;
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  LODWORD(v68) = *(a1 + 16);
  while (v8 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v68 + v8, 4 - v8);
    v8 += result;
    if (!result)
    {
      return result;
    }
  }

  v9 = 0;
  LODWORD(v68) = 1280066883;
  while (v9 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v68 + v9, 4 - v9);
    v9 += result;
    if (!result)
    {
      return result;
    }
  }

  v10 = 0;
  v11 = *(a1 + 40);
  v12 = v11;
  LODWORD(v68) = v11;
  while (v10 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v68 + v10, 4 - v10);
    v10 += result;
    if (!result)
    {
      return result;
    }
  }

  if (!v11)
  {
LABEL_35:
    if (!result)
    {
      return result;
    }

    if (!result)
    {
      return result;
    }

    v19 = *(a1 + 640);
    if (!result)
    {
      return result;
    }

    if (!v19)
    {
LABEL_136:
      if (result)
      {
      }

      return result;
    }

    v20 = 0;
    while (1)
    {
      v58 = v20;
      v21 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 64), v20);
      v22 = 0;
      LODWORD(v68) = 1381258305;
      while (v22 <= 3)
      {
        result = (*(*a2 + 16))(a2, &v68 + v22, 4 - v22);
        v22 += result;
        if (!result)
        {
          return result;
        }
      }

      v23 = *(v21 + 17);
      if (v23 < 0xB)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 0;
      }

      LOBYTE(v68) = v24;
      result = (*(*a2 + 16))(a2, &v68, 1);
      if (!result)
      {
        return result;
      }

      v25 = *(v21 + 16);
      v26 = v25 < 5 ? v25 + 1 : 0;
      LOBYTE(v68) = v26;
      result = (*(*a2 + 16))(a2, &v68, 1);
      if (!result)
      {
        return result;
      }

      v28 = 0;
      LODWORD(v68) = 1280066883;
      while (v28 <= 3)
      {
        result = (*(*a2 + 16))(a2, &v68 + v28, 4 - v28);
        v28 += result;
        if (!result)
        {
          return result;
        }
      }

      if (*(v21 + 16) == 3)
      {
        v29 = 0;
        v57 = re::internal::accessFaceVaryingAttributeSubmesh(v21, v27);
        v31 = *(v57 + 24);
        v55 = v31;
        LODWORD(v68) = v31;
        while (v29 <= 3)
        {
          result = (*(*a2 + 16))(a2, &v68 + v29, 4 - v29);
          v29 += result;
          if (!result)
          {
            return result;
          }
        }

        if (v31)
        {
          v33 = 0;
          v56 = 0;
          do
          {
            v34 = *(v57 + 24);
            if (v34 <= v56)
            {
              v59[0] = 0;
              v72 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v50 = MEMORY[0x1E69E9C10];
              v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v60 = 136315906;
              v61 = "operator[]";
              v62 = 1024;
              if (v51)
              {
                v52 = 3;
              }

              else
              {
                v52 = 2;
              }

              v63 = 797;
              v64 = 2048;
              v65 = v56;
              v66 = 2048;
              v67 = v34;
              _os_log_send_and_compose_impl(v52, v59, &v68, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v53, v54);
              _os_crash_msg();
              __break(1u);
LABEL_147:
              re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) Attempt to write out malformed GeomAttribute", "!Unreachable code", "writeGeomAttrbuteToStream", 372);
              _os_crash("assertion failure: (!Unreachable code) Attempt to write out malformed GeomAttribute");
              __break(1u);
LABEL_148:
              re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
              result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
              __break(1u);
              return result;
            }

            v35 = 0;
            v36 = *(v57 + 40) + v33;
            do
            {
              *(&v59[1] + v35) = *(v36 + v35);
              v35 += 4;
            }

            while (v35 != 16);
            v37 = 0;
            while (v37 <= 0xF)
            {
              result = (*(*a2 + 16))(a2, &v59[1] + v37, 16 - v37);
              v37 += result;
              if (!result)
              {
                return result;
              }
            }

            v33 += 16;
            ++v56;
          }

          while (v56 != v55);
          v38 = 0;
          while (2)
          {
            LODWORD(v68) = v38;
            v39 = *(v57 + 60);
            if (v39 == 2)
            {
              v41 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v57 + 64), &v68);
              if (v41 != -1)
              {
                v40 = *(*(v57 + 72) + 8 * v41 + 4);
                goto LABEL_87;
              }
            }

            else
            {
              if (v39 != 1)
              {
                if (*(v57 + 60))
                {
                  goto LABEL_148;
                }

                if (v38 >= *(v57 + 64))
                {
                  v40 = -1;
                }

                else
                {
                  v40 = v38;
                }

LABEL_87:
                v42 = 0;
                LODWORD(v68) = v40;
                while (v42 <= 3)
                {
                  result = (*(*a2 + 16))(a2, &v68 + v42, 4 - v42);
                  v42 += result;
                  if (!result)
                  {
                    return result;
                  }
                }

                if (++v38 == v55)
                {
                  goto LABEL_92;
                }

                continue;
              }

              if (*(v57 + 80) > v38)
              {
                v40 = *(*(v57 + 96) + 4 * v38);
                goto LABEL_87;
              }
            }

            break;
          }

          v40 = -1;
          goto LABEL_87;
        }
      }

      else
      {
        v32 = 0;
        LODWORD(v68) = 0;
        while (v32 < 4)
        {
          result = (*(*a2 + 16))(a2, &v68 + v32, 4 - v32);
          v32 += result;
          if (!result)
          {
            return result;
          }
        }
      }

LABEL_92:
      v43 = 0;
      LODWORD(v68) = 1279607621;
      while (v43 <= 3)
      {
        result = (*(*a2 + 16))(a2, &v68 + v43, 4 - v43);
        v43 += result;
        if (!result)
        {
          return result;
        }
      }

      if (!result)
      {
        return result;
      }

      if (!result)
      {
        return result;
      }

      v44 = (*(*v21 + 16))(v21);
      if (!result)
      {
        return result;
      }

      v46 = *(v21 + 17);
      if (v46 <= 4)
      {
        if (*(v21 + 17) <= 1u)
        {
          if (*(v21 + 17))
          {
            {
              return 0;
            }
          }

          {
            return 0;
          }
        }

        else
        {
          switch(v46)
          {
            case 2u:
              {
                return 0;
              }

              break;
            case 3u:
              {
                return 0;
              }

              break;
            case 4u:
              {
                return 0;
              }

              break;
            default:
              goto LABEL_147;
          }
        }
      }

      else if (*(v21 + 17) > 7u)
      {
        switch(v46)
        {
          case 8u:
            {
              return 0;
            }

            break;
          case 9u:
            {
              return 0;
            }

            break;
          case 0xAu:
            {
              return 0;
            }

            break;
          default:
            goto LABEL_147;
        }
      }

      else
      {
        switch(v46)
        {
          case 5u:
            {
              return 0;
            }

            break;
          case 6u:
            {
              return 0;
            }

            break;
          case 7u:
            {
              return 0;
            }

            break;
          default:
            goto LABEL_147;
        }
      }

      if (!result)
      {
        return result;
      }

      {
        return 0;
      }

      v20 = v58 + 1;
      if (v58 + 1 == v19)
      {
        goto LABEL_136;
      }
    }
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(a1 + 40);
    if (v15 <= v14)
    {
      break;
    }

    v16 = 0;
    v17 = *(a1 + 56) + v13;
    do
    {
      *(&v59[1] + v16) = *(v17 + v16);
      v16 += 4;
    }

    while (v16 != 16);
    v18 = 0;
    while (v18 <= 0xF)
    {
      result = (*(*a2 + 16))(a2, &v59[1] + v18, 16 - v18);
      v18 += result;
      if (!result)
      {
        return result;
      }
    }

    ++v14;
    v13 += 16;
    if (v14 == v12)
    {
      goto LABEL_35;
    }
  }

  v59[0] = 0;
  v72 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v47 = MEMORY[0x1E69E9C10];
  v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v60 = 136315906;
  v61 = "operator[]";
  v62 = 1024;
  if (v48)
  {
    v49 = 3;
  }

  else
  {
    v49 = 2;
  }

  v63 = 797;
  v64 = 2048;
  v65 = v14;
  v66 = 2048;
  v67 = v15;
  _os_log_send_and_compose_impl(v49, v59, &v68, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v53, v54);
  _os_crash_msg();
  __break(1u);
  return 0;
}

BOOL re::internal::anonymous namespace::writeToStreamHelper<unsigned int>(int a1, uint64_t a2)
{
  v3 = 0;
  v7 = a1;
  do
  {
    v4 = v3;
    if (v3 > 3)
    {
      break;
    }

    v5 = (*(*a2 + 16))(a2, &v7 + v3, 4 - v3);
    v3 = v5 + v4;
  }

  while (v5);
  return v4 > 3;
}

BOOL re::internal::anonymous namespace::writeCStringHelper(char *__s, uint64_t a2)
{
  v4 = 0;
  v15 = 1162690894;
  while (v4 <= 3)
  {
    v5 = (*(*a2 + 16))(a2, &v15 + v4, 4 - v4);
    v4 += v5;
    if (!v5)
    {
      return 0;
    }
  }

  if (__s)
  {
    v6 = strlen(__s) + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  v16 = v6;
  while (v7 <= 3)
  {
    v8 = (*(*a2 + 16))(a2, &v16 + v7, 4 - v7);
    v7 += v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    v9 = 0;
    while (v6 > v9)
    {
      v10 = (*(*a2 + 16))(a2, &__s[v9], v6 - v9);
      v9 += v10;
      if (!v10)
      {
        return 0;
      }
    }
  }

  v13 = 0;
  v17 = 1296125509;
  do
  {
    v11 = v13 > 3;
    if (v13 > 3)
    {
      break;
    }

    v14 = (*(*a2 + 16))(a2, &v17 + v13, 4 - v13);
    v13 += v14;
  }

  while (v14);
  return v11;
}

uint64_t re::internal::readGeomMeshFromStream(re::internal *this, re::GeomMesh *a2, re::StreamReader *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  LODWORD(v61) = 0;
  v65 = 0;
  v62[1] = 0;
  v63 = 0;
  v64 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v62, 1uLL);
  ++v64;
  re::internal::GeomAttributeManager::GeomAttributeManager(v66);
  v60 = 0;
  v5 = 0;
  if ((*(*a2 + 16))(a2, &v60, 4) == 4 && v60 == 538446081)
  {
    v59 = 0;
    v5 = 0;
    if ((*(*a2 + 16))(a2, &v59, 4) == 4 && v59 == 1)
    {
      LODWORD(v87) = 0;
      v5 = 0;
      if ((*(*a2 + 16))(a2, &v87, 4) == 4 && v87 == 1213416781)
      {
        v58 = 0;
        if ((*(*a2 + 16))(a2, &v58, 4) != 4)
        {
          goto LABEL_38;
        }

        LODWORD(v61) = v58;
        v67 = v58;
        if (v68)
        {
          v8 = v69;
          v9 = 8 * v68;
          do
          {
            v10 = *v8++;
            (*(*v10 + 80))(v10, v67);
            v9 -= 8;
          }

          while (v9);
        }

        LODWORD(v87) = 0;
        if ((*(*a2 + 16))(a2, &v87, 4) != 4 || v87 != 1280066883)
        {
          goto LABEL_38;
        }

        v57 = 0;
        if ((*(*a2 + 16))(a2, &v57, 4) != 4)
        {
          goto LABEL_38;
        }

        v12 = v57;
        re::DynamicArray<re::GeomCell4>::resize(v62, v57);
        v70 = v12;
        if (v71)
        {
          v13 = v72;
          v14 = 8 * v71;
          do
          {
            v15 = *v13++;
            (*(*v15 + 80))(v15, v70);
            v14 -= 8;
          }

          while (v14);
        }

        if (v57)
        {
          for (i = 0; i < v57; *(v65 + 16 * i++) = v80)
          {
            v17 = 0;
            while (v17 <= 0xF)
            {
              v18 = (*(*a2 + 16))(a2, &v80 + v17, 16 - v17);
              v17 += v18;
              if (!v18)
              {
                goto LABEL_38;
              }
            }

            v19 = v63;
            if (v63 <= i)
            {
              *v77 = 0;
              v90 = 0u;
              v91 = 0u;
              v88 = 0u;
              v89 = 0u;
              v87 = 0u;
              v46 = MEMORY[0x1E69E9C10];
              v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v84 = 136315906;
              *&v84[4] = "operator[]";
              *&v84[12] = 1024;
              if (v47)
              {
                v48 = 3;
              }

              else
              {
                v48 = 2;
              }

              *&v84[14] = 789;
              *&v84[18] = 2048;
              *&v84[20] = i;
              v85 = 2048;
              v86[0] = v19;
              _os_log_send_and_compose_impl(v48, v77, &v87, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v52, v53);
              _os_crash_msg();
              __break(1u);
            }
          }
        }

        LODWORD(v87) = 0;
        if ((*(*a2 + 16))(a2, &v87, 4) != 4 || v87 != 1279607621)
        {
LABEL_38:
          v5 = 0;
          goto LABEL_39;
        }

        v56 = 0;
        memset(v54, 0, sizeof(v54));
        v55 = 0;
        v5 = 0;
        {
          HIDWORD(v53) = 0;
          if ((*(*a2 + 16))(a2, &v53 + 4, 4) != 4)
          {
            goto LABEL_159;
          }

          if (HIDWORD(v53))
          {
            v22 = 0;
            while (1)
            {
              LODWORD(v87) = 0;
              if ((*(*a2 + 16))(a2, &v87, 4) != 4 || v87 != 1381258305)
              {
                goto LABEL_159;
              }

              v75 = 0;
              if ((*(*a2 + 16))(a2, &v75, 1) != 1)
              {
                goto LABEL_159;
              }

              v24 = v75 - 1;
              if (v24 > 0xA)
              {
                goto LABEL_159;
              }

              v74 = 0;
              if ((*(*a2 + 16))(a2, &v74, 1) != 1)
              {
                goto LABEL_159;
              }

              v25 = v74 - 1;
              if (v25 > 4)
              {
                goto LABEL_159;
              }

              LODWORD(v87) = 0;
              if ((*(*a2 + 16))(a2, &v87, 4) != 4 || v87 != 1280066883)
              {
                goto LABEL_159;
              }

              LODWORD(v53) = v24;
              v73 = 0;
              if ((*(*a2 + 16))(a2, &v73, 4) != 4)
              {
                goto LABEL_159;
              }

              *(v86 + 2) = 0;
              memset(v84, 0, sizeof(v84));
              v83 = 0;
              v81 = 0;
              v80 = 0uLL;
              v82 = 0;
              if (v73)
              {
                re::DynamicArray<float>::resize(v84, v73);
                re::DynamicArray<re::GeomCell4>::resize(&v80, v73);
                if (v73)
                {
                  v27 = 0;
                  while (1)
                  {
                    v28 = v81;
                    if (v81 <= v27)
                    {
                      break;
                    }

                    v29 = 0;
                    v30 = v83 + 16 * v27;
                    while (v29 <= 0xF)
                    {
                      v31 = (*(*a2 + 16))(a2, v30 + v29, 16 - v29);
                      v29 += v31;
                      if (!v31)
                      {
                        goto LABEL_81;
                      }
                    }

                    if (++v27 >= v73)
                    {
                      v32 = 4 * v73;
                      goto LABEL_73;
                    }
                  }

                  v76 = 0;
                  v90 = 0u;
                  v91 = 0u;
                  v88 = 0u;
                  v89 = 0u;
                  v87 = 0u;
                  v49 = MEMORY[0x1E69E9C10];
                  v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v77 = 136315906;
                  *&v77[4] = "operator[]";
                  *&v77[12] = 1024;
                  if (v50)
                  {
                    v51 = 3;
                  }

                  else
                  {
                    v51 = 2;
                  }

                  *&v77[14] = 789;
                  *&v77[18] = 2048;
                  *&v77[20] = v27;
                  v78 = 2048;
                  v79[0] = v28;
                  _os_log_send_and_compose_impl(v51, &v76, &v87, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v77, 38, v52, v53);
                  result = _os_crash_msg();
                  __break(1u);
                  return result;
                }

                v32 = 0;
LABEL_73:
                v33 = 0;
                v34 = *(v86 + 2);
                while (v32 > v33)
                {
                  v35 = (*(*a2 + 16))(a2, v34 + v33, v32 - v33);
                  v33 += v35;
                  if (!v35)
                  {
                    goto LABEL_81;
                  }
                }
              }

              LODWORD(v87) = 0;
              if ((*(*a2 + 16))(a2, &v87, 4) != 4 || v87 != 1279607621)
              {
LABEL_81:
                v37 = 0;
                goto LABEL_82;
              }

              *(v79 + 2) = 0;
              memset(v77, 0, sizeof(v77));
              {
                LODWORD(v87) = 0;
                if ((*(*a2 + 16))(a2, &v87, 4) == 4 && v87 == 1279350337)
                {
                  break;
                }
              }

              v37 = 0;
LABEL_127:
              if (*v77 && *(v79 + 2))
              {
                (*(**v77 + 40))(*v77);
              }

LABEL_82:
              if (v80 && v83)
              {
                (*(*v80 + 40))(v80);
              }

              if (*v84 && *(v86 + 2))
              {
                (*(**v84 + 40))(*v84);
              }

              if (!v37)
              {
                goto LABEL_159;
              }

              if (++v22 >= HIDWORD(v53))
              {
                goto LABEL_151;
              }
            }

            v39 = v22;
            LODWORD(v76) = 0;
            if ((*(*a2 + 16))(a2, &v76, 4) != 4)
            {
              goto LABEL_125;
            }

            if ((8u >> v25))
            {
              re::internal::GeomBaseTopology::GeomBaseTopology(&v87, v76, &v80);
              v40 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v61, *(v79 + 2), v53, &v87, v84);
              if (*(&v87 + 1) && *(&v89 + 1))
              {
                (*(**(&v87 + 1) + 40))(*(&v87 + 1));
              }
            }

            else
            {
              v41 = re::internal::GeomAttributeManager::addAttribute(v66, *(v79 + 2), v25, v53);
              v40 = v41;
              if ((0x10u >> v25))
              {
                (*(*v41 + 24))(v41, v76);
LABEL_105:
                v37 = 0;
                v42 = *(v40 + 17);
                if (v42 <= 4)
                {
                  if (*(v40 + 17) <= 1u)
                  {
                    if (*(v40 + 17))
                    {
                      {
                        goto LABEL_125;
                      }
                    }

                    {
                      goto LABEL_125;
                    }

LABEL_131:
                    LODWORD(v87) = 0;
                    v37 = 0;
                    if ((*(*a2 + 16))(a2, &v87, 4) == 4 && v87 == 1096171845)
                    {
                      LODWORD(v87) = 0;
                      v37 = (*(*a2 + 16))(a2, &v87, 4) == 4 && v87 == 1414807877;
                    }

                    goto LABEL_126;
                  }

                  switch(v42)
                  {
                    case 2u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 3u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 4u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    default:
                      goto LABEL_126;
                  }
                }

                else if (*(v40 + 17) > 7u)
                {
                  switch(v42)
                  {
                    case 8u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 9u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 0xAu:
                      {
                        goto LABEL_131;
                      }

                      break;
                    default:
                      goto LABEL_126;
                  }
                }

                else
                {
                  switch(v42)
                  {
                    case 5u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 6u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 7u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    default:
LABEL_126:
                      v22 = v39;
                      goto LABEL_127;
                  }
                }

LABEL_125:
                v37 = 0;
                goto LABEL_126;
              }
            }

            if (!v40)
            {
              goto LABEL_125;
            }

            goto LABEL_105;
          }

LABEL_151:
          *v84 = 0;
          if ((*(*a2 + 16))(a2, v84, 4) == 4 && ((LODWORD(v87) = 0, (*(*a2 + 16))(a2, &v87, 4) == 4) ? (v44 = v87 == 1397050693) : (v44 = 0), v44 && re::internal::GeomBaseMesh::areAllFacesValid(&v61)))
          {
            v45 = re::GeomMesh::operator=(this, &v61);
            re::GeomMesh::setName(v45, v56);
            v5 = 1;
          }

          else
          {
LABEL_159:
            v5 = 0;
          }
        }

        if (v54[0] && v56)
        {
          (*(*v54[0] + 40))();
        }
      }
    }
  }

LABEL_39:
  re::internal::GeomAttributeManager::~GeomAttributeManager(v66);
  if (v62[0])
  {
    if (v65)
    {
      (*(*v62[0] + 40))();
    }
  }

  return v5;
}

uint64_t re::internal::anonymous namespace::readCStringHelper(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  LODWORD(v27[0]) = 0;
  v4 = (*(*a2 + 16))(a2, v27, 4);
  result = 0;
  if (v4 == 4 && LODWORD(v27[0]) == 1162690894)
  {
    HIDWORD(v17) = 0;
    if ((*(*a2 + 16))(a2, &v17 + 4, 4) != 4)
    {
      return 0;
    }

    v7 = HIDWORD(v17);
    if (!HIDWORD(v17))
    {
      goto LABEL_15;
    }

    re::DynamicArray<BOOL>::resize(a1, HIDWORD(v17));
    v8 = 0;
    v9 = *(a1 + 32);
    while (v7 > v8)
    {
      result = (*(*a2 + 16))(a2, v9 + v8, v7 - v8);
      v8 += result;
      if (!result)
      {
        return result;
      }
    }

    v10 = (HIDWORD(v17) - 1);
    v11 = *(a1 + 16);
    if (v11 <= v10)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v13 = MEMORY[0x1E69E9C10];
      v14 = v11;
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v22 = 789;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = v14;
      _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(a1 + 32) + v10))
    {
      return 0;
    }

    else
    {
LABEL_15:
      LODWORD(v27[0]) = 0;
      return (*(*a2 + 16))(a2, v27, 4) == 4 && LODWORD(v27[0]) == 1296125509;
    }
  }

  return result;
}

uint64_t re::internal::GeomBaseMesh::areAllFacesValid(re::internal::GeomBaseMesh *this)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = v3 + 16 * v2;
    v5 = *this;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        if (*(v3 + i) < v5)
        {
          v7 = *(v3 + 12);
          if (v7 < v5 || v7 == -1)
          {
            continue;
          }
        }

        return 0;
      }

      v3 += 16;
    }

    while (v3 != v4);
  }

  v9 = *(this + 102);
  if (!v9)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = re::internal::GeomAttributeContainer::attributeByIndex((this + 384), v10);
    v13 = re::internal::accessFaceVaryingAttributeSubmesh(v11, v12);
    v15 = *(v13 + 24);
    v16 = v15 <= v2;
    if (v15 > v2)
    {
      return v16;
    }

    v17 = v13;
    if (v15)
    {
      break;
    }

    if (v15)
    {
      v27 = *(v13 + 40);
      v28 = v27 + 16 * v15;
LABEL_36:
      v29 = *v17;
      do
      {
        for (j = 0; j != 12; j += 4)
        {
          if (*(v27 + j) >= v29)
          {
            return 0;
          }

          v31 = *(v27 + 12);
          if (v31 >= v29 && v31 != -1)
          {
            return 0;
          }
        }

        v27 += 16;
      }

      while (v27 != v28);
    }

    if (++v10 == v9)
    {
      return v16;
    }
  }

  v41 = v9;
  v18 = 0;
  v19 = v15;
  v20 = 12;
  while (1)
  {
    LODWORD(v51) = v18;
    v21 = *(v17 + 60);
    if (v21 != 2)
    {
      break;
    }

    v23 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v17 + 64), &v51);
    if (v23 == -1)
    {
LABEL_27:
      v22 = -1;
      goto LABEL_28;
    }

    v22 = *(*(v17 + 72) + 8 * v23 + 4);
LABEL_28:
    if (v22 > v2)
    {
      return 0;
    }

    v24 = v22;
    v25 = *(this + 3);
    if (v25 <= v22)
    {
      v42 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v46 = 797;
      v47 = 2048;
      v48 = v24;
      v49 = 2048;
      v50 = v25;
      _os_log_send_and_compose_impl(v35, &v42, &v51, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v39, v40);
      _os_crash_msg();
      __break(1u);
LABEL_55:
      v42 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v36 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v46 = 797;
      v47 = 2048;
      v48 = v18;
      v49 = 2048;
      v50 = v25;
      _os_log_send_and_compose_impl(v38, &v42, &v51, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v39, v40);
      _os_crash_msg();
      __break(1u);
    }

    v25 = *(v17 + 24);
    if (v25 <= v18)
    {
      goto LABEL_55;
    }

    v26 = *(*(this + 5) + 16 * v22 + 12) != -1;
    v27 = *(v17 + 40);
    if (((v26 ^ (*(v27 + v20) == -1)) & 1) == 0)
    {
      return 0;
    }

    ++v18;
    v20 += 16;
    if (v19 == v18)
    {
      v28 = v27 + 16 * v25;
      v9 = v41;
      goto LABEL_36;
    }
  }

  if (v21 == 1)
  {
    if (*(v17 + 80) <= v18)
    {
      goto LABEL_27;
    }

    v22 = *(*(v17 + 96) + 4 * v18);
    goto LABEL_28;
  }

  if (!*(v17 + 60))
  {
    if (v18 >= *(v17 + 64))
    {
      v22 = -1;
    }

    else
    {
      v22 = v18;
    }

    goto LABEL_28;
  }

  re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}

BOOL re::internal::anonymous namespace::writeAttributeValues<signed char>(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  do
  {
    v7 = v4 <= v6;
    if (v4 <= v6)
    {
      break;
    }

    v8 = (*(*a2 + 16))(a2, v5 + v6, v4 - v6);
    v6 += v8;
  }

  while (v8);
  return v7;
}

BOOL re::internal::anonymous namespace::writeAttributeValues<short>(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 797;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 2 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

BOOL re::internal::anonymous namespace::writeAttributeValues<int>(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 797;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 4 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

BOOL re::internal::anonymous namespace::writeAttributeValues<double>(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 797;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 8 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<re::Vector2<float>>(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_24;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:
    v14 = 1;
    return v14 & 1;
  }

  v6 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  v7 = 0;
  v8 = 0;
  do
  {
    if (v7 == v6)
    {
      v22 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = v6;
      _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
LABEL_24:
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

      v26 = 797;
      v27 = 2048;
      v28 = 0;
      v29 = 2048;
      v30 = 0;
      _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    v9 = 0;
    v10 = (v5 + 8 * v7);
    LODWORD(v31) = *v10;
    while (v9 <= 3)
    {
      v11 = (*(*a2 + 16))(a2, &v31 + v9, 4 - v9);
      v9 += v11;
      if (!v11)
      {
LABEL_16:
        v14 = v8;
        return v14 & 1;
      }
    }

    v12 = 0;
    LODWORD(v31) = v10[1];
    while (v12 <= 3)
    {
      v13 = (*(*a2 + 16))(a2, &v31 + v12, 4 - v12);
      v12 += v13;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    ++v7;
    v14 = 1;
    v8 = v7 >= v4;
  }

  while (v7 != v4);
  return v14 & 1;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<re::Vector3<float>>(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_28;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:
    v16 = 1;
    return v16 & 1;
  }

  v6 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v7 = 0;
  v8 = 0;
  do
  {
    if (v7 == v6)
    {
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
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

      v28 = 613;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v6;
      _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v20 = MEMORY[0x1E69E9C10];
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

      v28 = 797;
      v29 = 2048;
      v30 = 0;
      v31 = 2048;
      v32 = 0;
      _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    v9 = 0;
    v10 = (v5 + 16 * v7);
    LODWORD(v33) = *v10;
    while (v9 <= 3)
    {
      v11 = (*(*a2 + 16))(a2, &v33 + v9, 4 - v9);
      v9 += v11;
      if (!v11)
      {
LABEL_20:
        v16 = v8;
        return v16 & 1;
      }
    }

    v12 = 0;
    LODWORD(v33) = v10[1];
    while (v12 <= 3)
    {
      v13 = (*(*a2 + 16))(a2, &v33 + v12, 4 - v12);
      v12 += v13;
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    v14 = 0;
    LODWORD(v33) = v10[2];
    while (v14 <= 3)
    {
      v15 = (*(*a2 + 16))(a2, &v33 + v14, 4 - v14);
      v14 += v15;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    ++v7;
    v16 = 1;
    v8 = v7 >= v4;
  }

  while (v7 != v4);
  return v16 & 1;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<re::Vector4<float>>(void *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_32;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_26:
    v18 = 1;
    return v18 & 1;
  }

  v6 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_4:
  v7 = 0;
  v8 = 0;
  do
  {
    if (v7 == v6)
    {
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v30 = 613;
      v31 = 2048;
      v32 = v6;
      v33 = 2048;
      v34 = v6;
      _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v30 = 797;
      v31 = 2048;
      v32 = 0;
      v33 = 2048;
      v34 = 0;
      _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }

    v9 = 0;
    v10 = (v5 + 16 * v7);
    LODWORD(v35) = *v10;
    while (v9 <= 3)
    {
      v11 = (*(*a2 + 16))(a2, &v35 + v9, 4 - v9);
      v9 += v11;
      if (!v11)
      {
LABEL_24:
        v18 = v8;
        return v18 & 1;
      }
    }

    v12 = 0;
    LODWORD(v35) = v10[1];
    while (v12 <= 3)
    {
      v13 = (*(*a2 + 16))(a2, &v35 + v12, 4 - v12);
      v12 += v13;
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    v14 = 0;
    LODWORD(v35) = v10[2];
    while (v14 <= 3)
    {
      v15 = (*(*a2 + 16))(a2, &v35 + v14, 4 - v14);
      v14 += v15;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    v16 = 0;
    LODWORD(v35) = v10[3];
    while (v16 <= 3)
    {
      v17 = (*(*a2 + 16))(a2, &v35 + v16, 4 - v16);
      v16 += v17;
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    ++v7;
    v18 = 1;
    v8 = v7 >= v4;
  }

  while (v7 != v4);
  return v18 & 1;
}

BOOL re::internal::anonymous namespace::readAttributeValues<signed char>(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  do
  {
    v7 = v4 <= v6;
    if (v4 <= v6)
    {
      break;
    }

    v8 = (*(*a2 + 16))(a2, v5 + v6, v4 - v6);
    v6 += v8;
  }

  while (v8);
  return v7;
}

BOOL re::internal::anonymous namespace::readAttributeValues<short>(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 2 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

BOOL re::internal::anonymous namespace::readAttributeValues<int>(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 4 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

BOOL re::internal::anonymous namespace::readAttributeValues<double>(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 8 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

BOOL re::internal::anonymous namespace::readAttributeValues<re::Vector2<float>>(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_17;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      while (v6 != v7)
      {
        if ((*(*a2 + 16))(a2, v5, 4) == 4 && (*(*a2 + 16))(a2, v5 + 4, 4) == 4)
        {
          v8 = ++v7 >= v4;
          v5 += 8;
          if (v4 != v7)
          {
            continue;
          }
        }

        return v8;
      }

      v16 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v10 = MEMORY[0x1E69E9C10];
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v20 = 621;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v6;
      _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
LABEL_17:
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

      v20 = 789;
      v21 = 2048;
      v22 = 0;
      v23 = 2048;
      v24 = 0;
      _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

BOOL re::internal::anonymous namespace::readAttributeValues<re::Vector3<float>>(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_18;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      while (v6 != v7)
      {
        if ((*(*a2 + 16))(a2, v5, 4) == 4 && (*(*a2 + 16))(a2, v5 + 4, 4) == 4 && (*(*a2 + 16))(a2, v5 + 8, 4) == 4)
        {
          v8 = ++v7 >= v4;
          v5 += 16;
          if (v4 != v7)
          {
            continue;
          }
        }

        return v8;
      }

      v16 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v10 = MEMORY[0x1E69E9C10];
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v20 = 621;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v6;
      _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
LABEL_18:
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

      v20 = 789;
      v21 = 2048;
      v22 = 0;
      v23 = 2048;
      v24 = 0;
      _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

BOOL re::internal::anonymous namespace::readAttributeValues<re::Vector4<float>>(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_19;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      while (v6 != v7)
      {
        if ((*(*a2 + 16))(a2, v5, 4) == 4 && (*(*a2 + 16))(a2, v5 + 4, 4) == 4 && (*(*a2 + 16))(a2, v5 + 8, 4) == 4 && (*(*a2 + 16))(a2, v5 + 12, 4) == 4)
        {
          v8 = ++v7 >= v4;
          v5 += 16;
          if (v4 != v7)
          {
            continue;
          }
        }

        return v8;
      }

      v16 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v10 = MEMORY[0x1E69E9C10];
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v20 = 621;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v6;
      _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
LABEL_19:
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

      v20 = 789;
      v21 = 2048;
      v22 = 0;
      v23 = 2048;
      v24 = 0;
      _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

uint64_t re::internal::GeomBaseTopology::GeomBaseTopology(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = *(a3 + 8);
  *v4 = *a3;
  *(a1 + 16) = v5;
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(a3 + 16);
  *(a3 + 16) = v6;
  v7 = *(a1 + 40);
  *(a1 + 40) = *(a3 + 32);
  *(a3 + 32) = v7;
  ++*(a3 + 24);
  ++*(a1 + 32);
  if (!*(a1 + 16))
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v4, 1uLL);
  }

  return a1;
}

uint64_t *re::internal::build3dGlyph(uint64_t a1, CTFontRef font, CGGlyph glyph, uint64_t a4, __n128 a5, __n128 a6)
{
  v625 = *MEMORY[0x1E69E9840];
  v553 = 0;
  info[1] = 0;
  v551 = 0;
  info[0] = 0;
  v552 = 0;
  if (font && (PathForGlyph = CTFontCreatePathForGlyph(font, glyph, 0)) != 0)
  {
    v14 = PathForGlyph;
    CGPathRelease(v14);
    v15 = v553;
    v16 = (v553 + 176 * v551);
    if (v551)
    {
      v17 = 126 - 2 * __clz(v551);
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = 0;
LABEL_7:
  if (!v551)
  {
    v21 = 0;
    goto LABEL_46;
  }

  v19 = *(v553 + 144);
  *v561 = *(v553 + 160);
  *&v561[8] = v19;
  re::computeSignedAreaOf2DPolygon(v561, v18);
  if (v20 >= 0.0)
  {
    goto LABEL_44;
  }

  v21 = v551;
  if (v551)
  {
    v22 = 0;
    v23 = &v575;
    v6 = v561;
    v7 = 176;
    do
    {
      v8 = v551;
      if (v551 <= v22)
      {
        goto LABEL_720;
      }

      v8 = v553 + 176 * v22;
      memset(&v561[48], 0, 28);
      v565 = 0;
      memset(&v561[80], 0, 36);
      v562 = 0u;
      v563 = 0u;
      LODWORD(v564) = 0;
      v561[0] = *v8;
      v24 = *(v8 + 32);
      *&v561[16] = *(v8 + 16);
      *&v561[32] = v24;
      v595 = 0;
      v592 = 0;
      v590 = 0;
      v591 = 0;
      v593 = 0;
      re::DynamicArray<unsigned long>::resize(&v590, *(v8 + 144));
      v25 = *(v8 + 144);
      if (v25)
      {
        v26 = 0;
        v9 = v25 - 1;
        do
        {
          v10 = v592;
          if (v592 <= v9)
          {
            goto LABEL_544;
          }

          *(v595 + 8 * v9--) = *(*(v8 + 160) + 8 * v26++);
        }

        while (v26 < *(v8 + 144));
      }

      re::DynamicArray<re::RigComponentConstraint>::operator=(&v562 + 8, &v590);
      if (v590 && v595)
      {
        (*(*v590 + 40))();
      }

      v595 = 0;
      v592 = 0;
      v590 = 0;
      v591 = 0;
      v593 = 0;
      re::DynamicArray<BOOL>::resize(&v590, *(v8 + 64));
      v27 = *(v8 + 64);
      if (v27)
      {
        v28 = 0;
        v9 = v27 - 1;
        do
        {
          v10 = v592;
          if (v592 <= v9)
          {
            goto LABEL_548;
          }

          *(v595 + v9--) = *(*(v8 + 80) + v28++);
        }

        while (v28 < *(v8 + 64));
      }

      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v561[48], &v590);
      if (v590 && v595)
      {
        (*(*v590 + 40))();
      }

      v29 = *(v8 + 104);
      v9 = v29;
      if (v29)
      {
        re::DynamicArray<unsigned long>::resize(&v561[88], v29);
        v8 = 0;
        v30 = 0;
        v31 = v562;
        v32 = *&v561[80];
        do
        {
          v10 = *&v561[104];
          if (*&v561[104] <= v8)
          {
            goto LABEL_552;
          }

          *(v31 + 8 * v8) = v30;
          v10 = *&v561[64];
          if (*&v561[64] <= v8)
          {
LABEL_556:
            v575.i64[0] = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v278 = MEMORY[0x1E69E9C10];
            v279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v590) = 136315906;
            *(v23 + 196) = "operator[]";
            WORD2(v591) = 1024;
            if (v279)
            {
              v280 = 3;
            }

            else
            {
              v280 = 2;
            }

            *(v23 + 206) = 789;
            WORD1(v592) = 2048;
            *(v23 + 212) = v8;
            v594 = 2048;
            *(v23 + 222) = v10;
            _os_log_send_and_compose_impl(v280, &v575, v599, 80, &dword_1E1C61000, v278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v590, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_560:
            *v622 = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v281 = MEMORY[0x1E69E9C10];
            v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v616 = 136315906;
            *&v616[4] = "operator[]";
            *&v616[12] = 1024;
            if (v282)
            {
              v283 = 3;
            }

            else
            {
              v283 = 2;
            }

            *&v616[14] = 797;
            *&v616[18] = 2048;
            *&v616[20] = v8;
            v617 = 2048;
            *v618 = v6;
            _os_log_send_and_compose_impl(v283, v622, v599, 80, &dword_1E1C61000, v281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_564:
            *v622 = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v284 = MEMORY[0x1E69E9C10];
            v285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v616 = 136315906;
            *&v616[4] = "operator[]";
            if (v285)
            {
              v286 = 3;
            }

            else
            {
              v286 = 2;
            }

            *&v616[12] = 1024;
            *&v616[14] = 621;
            *&v616[18] = 2048;
            *&v616[20] = v9;
            v617 = 2048;
            *v618 = v12;
            _os_log_send_and_compose_impl(v286, v622, v599, 80, &dword_1E1C61000, v284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
            goto LABEL_568;
          }

          v30 += *(v32 + v8++);
        }

        while (v9 != v8);
      }

      v8 = v551;
      if (v551 <= v22)
      {
        goto LABEL_736;
      }

      v8 = v553 + 176 * v22;
      v33 = *v561;
      v34 = *&v561[32];
      *(v8 + 16) = *&v561[16];
      *(v8 + 32) = v34;
      *v8 = v33;
      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v8 + 48, &v561[48]);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v8 + 88, &v561[88]);
      re::DynamicArray<re::RigComponentConstraint>::operator=(v8 + 128, &v562 + 1);
      if (*(&v562 + 1))
      {
        v18 = v565;
        if (v565)
        {
          (*(**(&v562 + 1) + 40))();
        }

        v565 = 0;
        v563 = 0uLL;
        *(&v562 + 1) = 0;
        LODWORD(v564) = v564 + 1;
      }

      if (*&v561[88])
      {
        v18 = v562;
        if (v562)
        {
          (*(**&v561[88] + 40))();
        }

        *&v562 = 0;
        memset(&v561[88], 0, 24);
        ++*&v561[112];
      }

      if (*&v561[48])
      {
        v18 = *&v561[80];
        if (*&v561[80])
        {
          (*(**&v561[48] + 40))();
        }
      }

      ++v22;
    }

    while (v22 != v21);
LABEL_44:
    v21 = v551;
  }

LABEL_46:
  v595 = 0;
  v592 = 0;
  v590 = 0;
  v591 = 0;
  v593 = 0;
  v577[0] = 0;
  v576.i64[0] = 0;
  v575 = 0uLL;
  v576.i32[2] = 0;
  if (v21)
  {
    v23 = 0;
    v6 = 1;
    v7 = 176;
    do
    {
      v22 = v551;
      if (v551 <= v23)
      {
        goto LABEL_580;
      }

      v35 = v553 + 176 * v23;
      v36 = *(v35 + 160);
      v37 = *(v35 + 144);
      *v561 = v36;
      *&v561[8] = v37;
      re::computeSignedAreaOf2DPolygon(v561, v18);
      if (v38 != 0.0)
      {
        v22 = v551;
        if (v38 <= 0.0)
        {
          if (v551 <= v23)
          {
            goto LABEL_664;
          }

          v39 = &v575;
        }

        else
        {
          if (v551 <= v23)
          {
            goto LABEL_668;
          }

          v39 = &v590;
        }
      }

      v23 = v6;
      v40 = v21 > v6;
      v6 = (v6 + 1);
    }

    while (v40);
    v41 = v576.i64[0];
    v42 = v592;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  *&buf[32] = 0;
  memset(buf, 0, 28);
  v549 = 0;
  v546 = 0;
  v547 = 0;
  v545 = 0;
  v548 = 0;
  v561[0] = 0;
  re::DynamicArray<BOOL>::resize(buf, v41, v561);
  if (v42)
  {
  }

  v537 = v592;
  if (v592)
  {
    v23 = 0;
    v6 = v561;
    v43.i64[0] = 0x7F0000007FLL;
    v43.i64[1] = 0x7F0000007FLL;
    v540 = vnegq_f32(v43);
    v7 = 176;
    do
    {
      v561[0] = 1;
      *&v44 = 0x7F0000007FLL;
      *(&v44 + 1) = 0x7F0000007FLL;
      *&v561[16] = v540;
      *&v561[32] = v44;
      memset(&v561[48], 0, 28);
      v45 = 0uLL;
      memset(&v561[80], 0, 36);
      v562 = 0u;
      v563 = 0u;
      LODWORD(v564) = 0;
      v565 = 0;
      *(&v568 + 1) = 0;
      v567 = 0uLL;
      *(&v566 + 1) = 0;
      LODWORD(v568) = 0;
      v22 = v592;
      if (v592 <= v23)
      {
        goto LABEL_648;
      }

      v46 = v595 + 176 * v23;
      v48 = *(v46 + 16);
      v47 = *(v46 + 32);
      *v561 = *v46;
      *&v561[16] = v48;
      *&v561[32] = v47;
      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v561[48], (v46 + 48));
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v561[88], (v46 + 88));
      isPointInsidePolygon = re::DynamicArray<re::RigComponentConstraint>::operator=(&v562 + 8, (v46 + 128));
      v12 = v576.i64[0];
      if (!v576.i64[0])
      {
        goto LABEL_79;
      }

      v11 = 0;
      do
      {
        v22 = *&buf[16];
        if (*&buf[16] <= v11)
        {
          goto LABEL_532;
        }

        if (*(*&buf[32] + v11))
        {
          goto LABEL_78;
        }

        v9 = v577[0];
        v50 = v577[0] + 176 * v11;
        if (!*(v50 + 144))
        {
          goto LABEL_540;
        }

        v22 = *(v50 + 160);
        v599[0] = v565;
        v599[1] = *(&v563 + 1);
        isPointInsidePolygon = re::internal::isPointInsidePolygon(v22, v599);
        if (!isPointInsidePolygon)
        {
          goto LABEL_78;
        }

        v51 = *(&v567 + 1);
        if (!*(&v567 + 1))
        {
          goto LABEL_76;
        }

        v8 = 0;
        v10 = 0;
        do
        {
          v7 = *(&v567 + 1);
          if (*(&v567 + 1) <= v10)
          {
            *v616 = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v254 = MEMORY[0x1E69E9C10];
            v255 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v619 = 136315906;
            *&v619[4] = "operator[]";
            *&v619[12] = 1024;
            if (v255)
            {
              v256 = 3;
            }

            else
            {
              v256 = 2;
            }

            *&v619[14] = 789;
            *&v619[18] = 2048;
            *&v619[20] = v10;
            v620 = 2048;
            *v621 = v7;
            _os_log_send_and_compose_impl(v256, v616, v599, 80, &dword_1E1C61000, v254, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_528:
            *v619 = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v257 = MEMORY[0x1E69E9C10];
            v258 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            *&buf[4] = "operator[]";
            *&buf[12] = 1024;
            if (v258)
            {
              v259 = 3;
            }

            else
            {
              v259 = 2;
            }

            *&buf[14] = 797;
            *&buf[18] = 2048;
            *&buf[20] = v22;
            *&buf[28] = 2048;
            *&buf[30] = v9;
            _os_log_send_and_compose_impl(v259, v619, v599, 80, &dword_1E1C61000, v257, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_532:
            *v616 = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v260 = MEMORY[0x1E69E9C10];
            v261 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v619 = 136315906;
            *&v619[4] = "operator[]";
            *&v619[12] = 1024;
            if (v261)
            {
              v262 = 3;
            }

            else
            {
              v262 = 2;
            }

            *&v619[14] = 789;
            *&v619[18] = 2048;
            *&v619[20] = v11;
            v620 = 2048;
            *v621 = v22;
            _os_log_send_and_compose_impl(v262, v616, v599, 80, &dword_1E1C61000, v260, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_536:
            v560 = 0;
            v615 = 0u;
            v614 = 0u;
            memset(buf, 0, sizeof(buf));
            v263 = MEMORY[0x1E69E9C10];
            v264 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v619 = 136315906;
            *&v619[4] = "operator[]";
            *&v619[12] = 1024;
            if (v264)
            {
              v265 = 3;
            }

            else
            {
              v265 = 2;
            }

            *&v619[14] = 797;
            *&v619[18] = 2048;
            *&v619[20] = v22;
            v620 = 2048;
            *v621 = v6;
            _os_log_send_and_compose_impl(v265, &v560, buf, 80, &dword_1E1C61000, v263, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_540:
            *v616 = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v266 = MEMORY[0x1E69E9C10];
            v267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v619 = 136315906;
            *&v619[4] = "operator[]";
            *&v619[12] = 1024;
            if (v267)
            {
              v268 = 3;
            }

            else
            {
              v268 = 2;
            }

            *&v619[14] = 789;
            *&v619[18] = 2048;
            *&v619[20] = 0;
            v620 = 2048;
            *v621 = 0;
            _os_log_send_and_compose_impl(v268, v616, v599, 80, &dword_1E1C61000, v266, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_544:
            *buf = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v269 = MEMORY[0x1E69E9C10];
            v270 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v575.i32[0] = 136315906;
            *(v23 + 4) = "operator[]";
            v575.i16[6] = 1024;
            if (v270)
            {
              v271 = 3;
            }

            else
            {
              v271 = 2;
            }

            *(v23 + 14) = 789;
            v576.i16[1] = 2048;
            *(v23 + 20) = v9;
            v576.i16[6] = 2048;
            *(v23 + 30) = v10;
            _os_log_send_and_compose_impl(v271, buf, v599, 80, &dword_1E1C61000, v269, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v575, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_548:
            *buf = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v272 = MEMORY[0x1E69E9C10];
            v273 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v575.i32[0] = 136315906;
            *(v23 + 4) = "operator[]";
            v575.i16[6] = 1024;
            if (v273)
            {
              v274 = 3;
            }

            else
            {
              v274 = 2;
            }

            *(v23 + 14) = 789;
            v576.i16[1] = 2048;
            *(v23 + 20) = v9;
            v576.i16[6] = 2048;
            *(v23 + 30) = v10;
            _os_log_send_and_compose_impl(v274, buf, v599, 80, &dword_1E1C61000, v272, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v575, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_552:
            v575.i64[0] = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v275 = MEMORY[0x1E69E9C10];
            v276 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v590) = 136315906;
            *(v23 + 196) = "operator[]";
            WORD2(v591) = 1024;
            if (v276)
            {
              v277 = 3;
            }

            else
            {
              v277 = 2;
            }

            *(v23 + 206) = 789;
            WORD1(v592) = 2048;
            *(v23 + 212) = v8;
            v594 = 2048;
            *(v23 + 222) = v10;
            _os_log_send_and_compose_impl(v277, &v575, v599, 80, &dword_1E1C61000, v275, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v590, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
            goto LABEL_556;
          }

          v52 = *(*(&v568 + 1) + v8 + 144);
          v599[0] = *(*(&v568 + 1) + v8 + 160);
          v599[1] = v52;
          isPointInsidePolygon = re::internal::isPointInsidePolygon(v22, v599);
          if (++v10 >= v51)
          {
            break;
          }

          v8 += 176;
        }

        while ((isPointInsidePolygon & 1) == 0);
        v7 = 176;
        if ((isPointInsidePolygon & 1) == 0)
        {
LABEL_76:
          v22 = *&buf[16];
          if (*&buf[16] <= v11)
          {
            goto LABEL_576;
          }

          *(*&buf[32] + v11) = 1;
        }

LABEL_78:
        ++v11;
      }

      while (v11 != v12);
LABEL_79:
      v53 = v547 + 1;
      _CF = v547 < v546 || v546 >= v53;
      if (!_CF)
      {
        if (v545)
        {
          v67 = 8;
          if (v546)
          {
            v67 = 2 * v546;
          }

          if (v67 <= v53)
          {
            v68 = v547 + 1;
          }

          else
          {
            v68 = v67;
          }
        }

        else
        {
          ++v548;
        }
      }

      v55 = v547;
      v56 = v549 + 224 * v547;
      v57 = *v561;
      v58 = *&v561[32];
      *(v56 + 16) = *&v561[16];
      *(v56 + 32) = v58;
      *v56 = v57;
      *(v56 + 80) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 0;
      *(v56 + 48) = 0;
      *(v56 + 72) = 0;
      *(v56 + 48) = *&v561[48];
      *&v561[48] = 0;
      *(v56 + 56) = *&v561[56];
      *&v561[56] = 0;
      v59 = *(v56 + 64);
      *(v56 + 64) = *&v561[64];
      *&v561[64] = v59;
      v60 = *(v56 + 80);
      *(v56 + 80) = *&v561[80];
      *&v561[80] = v60;
      ++*&v561[72];
      ++*(v56 + 72);
      *(v56 + 120) = 0;
      *(v56 + 96) = 0;
      *(v56 + 104) = 0;
      *(v56 + 88) = 0;
      *(v56 + 112) = 0;
      *(v56 + 88) = *&v561[88];
      *&v561[88] = 0;
      *(v56 + 96) = *&v561[96];
      *&v561[96] = 0;
      v61 = *(v56 + 104);
      *(v56 + 104) = *&v561[104];
      *&v561[104] = v61;
      v62 = *(v56 + 120);
      *(v56 + 120) = v562;
      *&v562 = v62;
      ++*&v561[112];
      ++*(v56 + 112);
      *(v56 + 160) = 0;
      *(v56 + 136) = 0;
      *(v56 + 144) = 0;
      *(v56 + 128) = 0;
      *(v56 + 152) = 0;
      *(v56 + 128) = *(&v562 + 1);
      *(&v562 + 1) = 0;
      *(v56 + 136) = v563;
      *&v563 = 0;
      v63 = *(v56 + 144);
      *(v56 + 144) = *(&v563 + 1);
      *(&v563 + 1) = v63;
      v64 = *(v56 + 160);
      *(v56 + 160) = v565;
      v565 = v64;
      LODWORD(v564) = v564 + 1;
      ++*(v56 + 152);
      *(v56 + 208) = 0;
      *(v56 + 184) = 0;
      *(v56 + 192) = 0;
      *(v56 + 176) = 0;
      *(v56 + 200) = 0;
      *(v56 + 176) = *(&v566 + 1);
      *(&v566 + 1) = 0;
      *(v56 + 184) = v567;
      *&v567 = 0;
      v65 = *(v56 + 192);
      *(v56 + 192) = *(&v567 + 1);
      *(&v567 + 1) = v65;
      v66 = *(v56 + 208);
      *(v56 + 208) = *(&v568 + 1);
      *(&v568 + 1) = v66;
      LODWORD(v568) = v568 + 1;
      ++*(v56 + 200);
      v547 = v55 + 1;
      ++v548;
      if (*(&v562 + 1))
      {
        if (v565)
        {
          (*(**(&v562 + 1) + 40))();
        }

        v565 = 0;
        v563 = 0uLL;
        *(&v562 + 1) = 0;
        LODWORD(v564) = v564 + 1;
      }

      if (*&v561[88])
      {
        if (v562)
        {
          (*(**&v561[88] + 40))();
        }

        *&v562 = 0;
        memset(&v561[88], 0, 24);
        ++*&v561[112];
      }

      if (*&v561[48] && *&v561[80])
      {
        (*(**&v561[48] + 40))();
      }

      ++v23;
    }

    while (v23 != v537);
  }

  if (*buf && *&buf[32])
  {
    (*(**buf + 40))();
  }

  v10 = &v575;
  v69 = *(a4 + 8);
  v70 = *(a4 + 9);
  bzero(&v590, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v592, 1uLL);
  ++v596;
  re::internal::GeomAttributeManager::GeomAttributeManager(v598);
  re::internal::GeomAttributeManager::addAttribute(v598, "vertexPosition", 1, 7);
  if (!v547)
  {
    goto LABEL_513;
  }

  v72 = 0;
  v530 = v69 & v70;
  v11 = v561;
  v73.i64[0] = 0x7F0000007FLL;
  v73.i64[1] = 0x7F0000007FLL;
  v533 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v534 = vnegq_f32(v73);
  v532 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  __asm { FMOV            V8.2S, #3.0 }

  v527 = v547;
  do
  {
    v23 = v547;
    if (v547 <= v72)
    {
      goto LABEL_824;
    }

    v78 = *a4;
    v531 = v72;
    v12 = v549 + 224 * v72;
    v575 = v534;
    v79.i64[0] = 0x7F0000007FLL;
    v79.i64[1] = 0x7F0000007FLL;
    v576 = v79;
    v577[1] = 0;
    v578 = 0;
    v577[0] = 0;
    v579 = 0;
    v589 = 0;
    v580 = 0u;
    v581 = 0u;
    v582 = 0;
    v583 = 0u;
    v584 = 0u;
    v585 = 0;
    v586 = 0u;
    v587 = 0u;
    if (v78 >= 2)
    {
      v8 = v78 - 2;
    }

    else
    {
      v8 = 0;
    }

    v588 = 0;
    re::DynamicArray<re::RigComponentConstraint>::operator=(v577, &v561[32]);
    re::DynamicArray<re::RigComponentConstraint>::operator=(&v580 + 8, &v561[72]);
    re::DynamicArray<re::RigComponentConstraint>::operator=(&v586 + 8, &v561[112]);
    v576 = *&v561[16];
    v575 = *v561;
    v80 = *(v12 + 192) + 1;
    if (v584 < v80)
    {
      re::DynamicArray<int>::setCapacity(&v583 + 1, v80);
    }

    LODWORD(v599[0]) = v578;
    re::DynamicArray<int>::add((&v583 + 8), v599);
    if (*&v561[112])
    {
      if (*(&v563 + 1))
      {
        (*(**&v561[112] + 40))();
      }

      *(&v563 + 1) = 0;
      v562 = 0uLL;
      *&v561[112] = 0;
      LODWORD(v563) = v563 + 1;
    }

    if (*&v561[72])
    {
      if (*&v561[104])
      {
        (*(**&v561[72] + 40))();
      }

      *&v561[104] = 0;
      memset(&v561[72], 0, 24);
      ++*&v561[96];
    }

    if (*&v561[32] && *&v561[64])
    {
      (*(**&v561[32] + 40))();
    }

    v81 = *(v12 + 192);
    if (v81)
    {
      v23 = 0;
      while (1)
      {
        v22 = *(v12 + 192);
        if (v22 <= v23)
        {
          goto LABEL_644;
        }

        LODWORD(v599[0]) = *(v586 + 4 * *(&v584 + 1) - 4) + *&v561[48];
        re::DynamicArray<int>::add((&v583 + 8), v599);
        v6 = *(v589 + 4 * *(&v587 + 1) - 4);
        v7 = DWORD2(v562);
        if (v587 < *(&v587 + 1) + v7)
        {
          re::DynamicArray<int>::setCapacity(&v586 + 1, *(&v587 + 1) + v7);
        }

        if (v7)
        {
          break;
        }

LABEL_136:
        if (*&v561[112])
        {
          if (*(&v563 + 1))
          {
            (*(**&v561[112] + 40))();
          }

          *(&v563 + 1) = 0;
          v562 = 0uLL;
          *&v561[112] = 0;
          LODWORD(v563) = v563 + 1;
        }

        if (*&v561[72])
        {
          if (*&v561[104])
          {
            (*(**&v561[72] + 40))();
          }

          *&v561[104] = 0;
          memset(&v561[72], 0, 24);
          ++*&v561[96];
        }

        if (*&v561[32] && *&v561[64])
        {
          (*(**&v561[32] + 40))();
        }

        if (++v23 == v81)
        {
          goto LABEL_148;
        }
      }

      v22 = 0;
      while (1)
      {
        v9 = *(&v562 + 1);
        if (*(&v562 + 1) <= v22)
        {
          goto LABEL_528;
        }

        LODWORD(v599[0]) = *(*(&v563 + 1) + 4 * v22) + v6;
        re::DynamicArray<int>::add((&v586 + 8), v599);
        if (v7 == ++v22)
        {
          goto LABEL_136;
        }
      }
    }

LABEL_148:
    v82 = v578;
    v8 = *(&v584 + 1);
    memset(v616, 0, 24);
    __p[1] = 0;
    v544 = 0;
    __p[0] = 0;
    memset(v622, 0, 24);
    v556 = 0;
    v557 = 0;
    v558 = 0;
    memset(v599, 0, 25);
    *&v599[4] = v533;
    v600 = xmmword_1E30A0CA0;
    v601 = v532;
    v602 = 0u;
    v603 = 0u;
    v604 = 0u;
    v561[0] = 0;
    memset(&v561[8], 0, 112);
    v562 = 0u;
    v563 = 0u;
    v564 = 0;
    v566 = 0u;
    v567 = 0u;
    v568 = 0u;
    v569 = 0u;
    v570 = 0u;
    LODWORD(v565) = 1065353216;
    v571 = 1065353216;
    v572 = 0u;
    memset(v573, 0, sizeof(v573));
    v574 = 1065353216;
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(v561, &v603 + 1);
    std::vector<geo::math::Matrix<double,3,1>>::resize(v622, v82);
    std::vector<std::vector<unsigned long>>::reserve(&v556, v8);
    v12 = 0x7FFFFFFFFFFFFFF8;
    if (v8)
    {
      v7 = 0;
      v23 = 0;
      while (1)
      {
        v22 = *(&v584 + 1);
        if (v23)
        {
          v6 = (v23 - 1);
          if (*(&v584 + 1) <= v6)
          {
            goto LABEL_712;
          }

          v6 = *(v586 + 4 * v6);
        }

        else
        {
          v6 = 0;
        }

        if (*(&v584 + 1) <= v7)
        {
          goto LABEL_652;
        }

        v83 = *(v586 + 4 * v7);
        __src[0] = 0;
        __src[1] = 0;
        v555 = 0;
        std::vector<unsigned long>::reserve(__src, (v83 - v6));
        if (v83 > v6)
        {
          break;
        }

LABEL_170:
        std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](&v556, __src);
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v7 = (v23 + 1);
        v23 = v7;
        if (v8 <= v7)
        {
          goto LABEL_173;
        }
      }

      v22 = v6;
      v9 = 24 * v6;
      while (1)
      {
        v6 = v578;
        if (v578 <= v22)
        {
          goto LABEL_536;
        }

        v84 = *v622 + v9;
        *v84 = vcvtq_f64_f32(*(v580 + 8 * v22));
        *(v84 + 16) = 0;
        v85 = __src[1];
        if (__src[1] >= v555)
        {
          v86 = __src[0];
          v87 = __src[1] - __src[0];
          v88 = (__src[1] - __src[0]) >> 3;
          v89 = v88 + 1;
          if ((v88 + 1) >> 61)
          {
            goto LABEL_864;
          }

          v90 = v555 - __src[0];
          if ((v555 - __src[0]) >> 2 > v89)
          {
            v89 = v90 >> 2;
          }

          _CF = v90 >= 0x7FFFFFFFFFFFFFF8;
          v91 = 0x1FFFFFFFFFFFFFFFLL;
          if (!_CF)
          {
            v91 = v89;
          }

          if (v91)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(__src, v91);
          }

          v92 = (8 * v88);
          v10 = 0;
          v7 = 0;
          *v92 = v22;
          v6 = (v92 + 1);
          memcpy(0, v86, v87);
          v93 = __src[0];
          __src[0] = 0;
          __src[1] = v6;
          v555 = 0;
          if (v93)
          {
            operator delete(v93);
          }
        }

        else
        {
          *__src[1] = v22;
          v6 = v85 + 8;
        }

        __src[1] = v6;
        ++v22;
        v9 += 24;
        if (v83 == v22)
        {
          goto LABEL_170;
        }
      }
    }

LABEL_173:
    v561[0] = 0;
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(v561, v622);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(v561);
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(&v573[1], v556, v557, 0xAAAAAAAAAAAAAAABLL * (v557 - v556));
    Constraints = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(v561);
    if ((Constraints & 1) == 0 || (Constraints = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(v561), !Constraints) || (Constraints = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(v561, 0), (Constraints & 1) == 0))
    {
      v95 = *re::geometryLogObjects(Constraints);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v95, OS_LOG_TYPE_DEFAULT, "Failed to perfectly triangulate glyph outline.", buf, 2u);
      }
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(v561, v616, __p);
    v97 = __p[0];
    v96 = __p[1];
    v98 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
    __src[1] = 0;
    v555 = 0;
    __src[0] = 0;
    std::vector<geo::math::Matrix<unsigned int,3,1>>::reserve(__src, v98);
    if (v96 != v97)
    {
      v99 = *(&v584 + 1);
      if (*(&v584 + 1))
      {
        v100 = 0;
        if (v98 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v98;
        }

        v9 = *(&v584 + 1) - 1;
        while (1)
        {
          v8 = __p[0] + 12 * v100;
          v11 = *v8;
          v7 = v578;
          if (v578 <= v11)
          {
            break;
          }

          v12 = *(v8 + 4);
          if (v578 <= v12)
          {
            goto LABEL_680;
          }

          v6 = *(v8 + 8);
          if (v578 <= v6)
          {
            goto LABEL_684;
          }

          v559 = vdiv_f32(vadd_f32(vadd_f32(*(v580 + 8 * v11), *(v580 + 8 * v12)), *(v580 + 8 * v6)), _D8);
          if (!*(&v584 + 1))
          {
            goto LABEL_688;
          }

          v101 = *v586;
          *buf = v580;
          *&buf[8] = v101;
          if (re::internal::isPointInsidePolygon(&v559, buf))
          {
            if (v99 < 2)
            {
LABEL_196:
              std::vector<geo::math::Matrix<unsigned int,3,1>>::push_back[abi:nn200100](__src, v8);
            }

            else
            {
              v7 = 0;
              while (1)
              {
                v11 = *(&v584 + 1);
                if (*(&v584 + 1) <= v7)
                {
                  goto LABEL_592;
                }

                if (*(&v584 + 1) <= v7 + 1)
                {
LABEL_596:
                  v560 = 0;
                  v615 = 0u;
                  v614 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v308 = MEMORY[0x1E69E9C10];
                  v309 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v619 = 136315906;
                  *&v619[4] = "operator[]";
                  *&v619[12] = 1024;
                  if (v309)
                  {
                    v310 = 3;
                  }

                  else
                  {
                    v310 = 2;
                  }

                  *&v619[14] = 797;
                  *&v619[18] = 2048;
                  *&v619[20] = v7 + 1;
                  v620 = 2048;
                  *v621 = v11;
                  _os_log_send_and_compose_impl(v310, &v560, buf, 80, &dword_1E1C61000, v308, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
                  _os_crash_msg();
                  __break(1u);
LABEL_600:
                  v560 = 0;
                  v615 = 0u;
                  v614 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v311 = MEMORY[0x1E69E9C10];
                  v312 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v619 = 136315906;
                  *&v619[4] = "operator[]";
                  *&v619[12] = 1024;
                  if (v312)
                  {
                    v313 = 3;
                  }

                  else
                  {
                    v313 = 2;
                  }

                  *&v619[14] = 797;
                  *&v619[18] = 2048;
                  *&v619[20] = v6;
                  v620 = 2048;
                  *v621 = v10;
                  _os_log_send_and_compose_impl(v313, &v560, buf, 80, &dword_1E1C61000, v311, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_604;
                }

                v10 = v578;
                v6 = *(v586 + 4 * v7);
                if (v578 <= v6)
                {
                  goto LABEL_600;
                }

                v102 = (*(v586 + 4 * v7 + 4) - v6);
                *buf = v580 + 8 * v6;
                *&buf[8] = v102;
                if (re::internal::isPointInsidePolygon(&v559, buf))
                {
                  break;
                }

                if (v9 == ++v7)
                {
                  goto LABEL_196;
                }
              }
            }
          }

          if (++v100 == v22)
          {
            goto LABEL_198;
          }
        }

LABEL_676:
        v560 = 0;
        v615 = 0u;
        v614 = 0u;
        memset(buf, 0, sizeof(buf));
        v365 = MEMORY[0x1E69E9C10];
        v366 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v619 = 136315906;
        *&v619[4] = "operator[]";
        *&v619[12] = 1024;
        if (v366)
        {
          v367 = 3;
        }

        else
        {
          v367 = 2;
        }

        *&v619[14] = 797;
        *&v619[18] = 2048;
        *&v619[20] = v11;
        v620 = 2048;
        *v621 = v7;
        _os_log_send_and_compose_impl(v367, &v560, buf, 80, &dword_1E1C61000, v365, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
LABEL_680:
        v560 = 0;
        v615 = 0u;
        v614 = 0u;
        memset(buf, 0, sizeof(buf));
        v368 = MEMORY[0x1E69E9C10];
        v369 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v619 = 136315906;
        *&v619[4] = "operator[]";
        *&v619[12] = 1024;
        if (v369)
        {
          v370 = 3;
        }

        else
        {
          v370 = 2;
        }

        *&v619[14] = 797;
        *&v619[18] = 2048;
        *&v619[20] = v12;
        v620 = 2048;
        *v621 = v7;
        _os_log_send_and_compose_impl(v370, &v560, buf, 80, &dword_1E1C61000, v368, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
LABEL_684:
        v560 = 0;
        v615 = 0u;
        v614 = 0u;
        memset(buf, 0, sizeof(buf));
        v371 = MEMORY[0x1E69E9C10];
        v372 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v619 = 136315906;
        *&v619[4] = "operator[]";
        *&v619[12] = 1024;
        if (v372)
        {
          v373 = 3;
        }

        else
        {
          v373 = 2;
        }

        *&v619[14] = 797;
        *&v619[18] = 2048;
        *&v619[20] = v6;
        v620 = 2048;
        *v621 = v7;
        _os_log_send_and_compose_impl(v373, &v560, buf, 80, &dword_1E1C61000, v371, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
LABEL_688:
        v560 = 0;
        v615 = 0u;
        v614 = 0u;
        memset(buf, 0, sizeof(buf));
        v374 = MEMORY[0x1E69E9C10];
        v375 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v619 = 136315906;
        *&v619[4] = "operator[]";
        *&v619[12] = 1024;
        if (v375)
        {
          v376 = 3;
        }

        else
        {
          v376 = 2;
        }

        *&v619[14] = 797;
        *&v619[18] = 2048;
        *&v619[20] = 0;
        v620 = 2048;
        *v621 = 0;
        _os_log_send_and_compose_impl(v376, &v560, buf, 80, &dword_1E1C61000, v374, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
LABEL_692:
        *v622 = 0;
        v601 = 0u;
        v600 = 0u;
        memset(v599, 0, sizeof(v599));
        v377 = MEMORY[0x1E69E9C10];
        v378 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v616 = 136315906;
        *&v616[4] = "operator[]";
        if (v378)
        {
          v379 = 3;
        }

        else
        {
          v379 = 2;
        }

        *&v616[12] = 1024;
        *&v616[14] = 797;
        *&v616[18] = 2048;
        *&v616[20] = v11 + v22;
        v617 = 2048;
        *v618 = v6;
        _os_log_send_and_compose_impl(v379, v622, v599, 80, &dword_1E1C61000, v377, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
LABEL_696:
        *v622 = 0;
        v601 = 0u;
        v600 = 0u;
        memset(v599, 0, sizeof(v599));
        v380 = MEMORY[0x1E69E9C10];
        v381 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v616[4] = "operator[]";
        *&v616[12] = 1024;
        *&v616[14] = 621;
        if (v381)
        {
          v382 = 3;
        }

        else
        {
          v382 = 2;
        }

        *v616 = 136315906;
        *&v616[18] = 2048;
        *&v616[20] = (v22 + v10 + v11);
        v617 = 2048;
        *v618 = v8;
        _os_log_send_and_compose_impl(v382, v622, v599, 80, &dword_1E1C61000, v380, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
        v173 = _os_crash_msg();
        __break(1u);
LABEL_700:
        *v622 = 0;
        v601 = 0u;
        v600 = 0u;
        memset(v599, 0, sizeof(v599));
        v383 = MEMORY[0x1E69E9C10];
        v384 = v173;
        v385 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v616[4] = "operator[]";
        *&v616[12] = 1024;
        *&v616[14] = 621;
        if (v385)
        {
          v386 = 3;
        }

        else
        {
          v386 = 2;
        }

        *v616 = 136315906;
        *&v616[18] = 2048;
        *&v616[20] = (v22 + v384) + v11;
        v617 = 2048;
        *v618 = v8;
        _os_log_send_and_compose_impl(v386, v622, v599, 80, &dword_1E1C61000, v383, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
        goto LABEL_704;
      }
    }

LABEL_198:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *__src;
    v544 = v555;
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::~ConstrainedDelaunayTriangulationMesherDetails(v561);
    if (*(&v603 + 1))
    {
      *&v604 = *(&v603 + 1);
      operator delete(*(&v603 + 1));
    }

    if (v602)
    {
      *(&v602 + 1) = v602;
      operator delete(v602);
    }

    if (v599[0])
    {
      v599[1] = v599[0];
      operator delete(v599[0]);
    }

    *v561 = &v556;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v561);
    if (*v622)
    {
      *&v622[8] = *v622;
      operator delete(*v622);
    }

    if (*v616)
    {
      *&v616[8] = *v616;
      operator delete(*v616);
    }

    v103 = *(a4 + 4);
    LODWORD(v10) = *(a4 + 10);
    v104 = *(a4 + 11);
    bzero(v599, 0x2D0uLL);
    v22 = v599;
    re::DynamicArray<re::BlendNode>::setCapacity(&v599[2], 1uLL);
    ++LODWORD(v599[5]);
    re::internal::GeomAttributeManager::GeomAttributeManager((&v600 + 8));
    re::internal::GeomAttributeManager::addAttribute((&v600 + 8), "vertexPosition", 1, 7);
    v6 = DWORD2(v584);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
    if (v104)
    {
      v106 = -1431655765 * ((__p[1] - __p[0]) >> 2);
    }

    else
    {
      v106 = 0;
    }

    v8 = v106 - 1431655765 * ((__p[1] - __p[0]) >> 2);
    v107 = 2 * v578;
    if (!v10)
    {
      v107 = 0;
    }

    v108 = (v8 + v107);
    v528 = v10 | v104;
    v541 = v578;
    if (v10 | v104)
    {
      v109 = v578;
    }

    else
    {
      v109 = 0;
    }

    if (v108 < LODWORD(v599[4]))
    {
      v110 = v612;
      if (v612)
      {
        LODWORD(v7) = 0;
        do
        {
          v111 = re::internal::GeomAttributeContainer::attributeByIndex(&v611, v7);
          re::internal::accessFaceVaryingAttributeSubmesh(v111, v112);
          v7 = (v7 + 1);
        }

        while (v110 != v7);
      }
    }

    re::DynamicArray<re::GeomCell4>::resize(&v599[2], v108);
    v608 = v108;
    if (v609)
    {
      v113 = v610;
      v22 = 8 * v609;
      do
      {
        v114 = *v113++;
        (*(*v114 + 80))(v114, v608);
        v22 -= 8;
      }

      while (v22);
    }

    v9 = v541;
    LODWORD(v599[1]) = v109 + v541;
    v605 = v109 + v541;
    if (v606)
    {
      v115 = v607;
      v116 = 8 * v606;
      do
      {
        v117 = *v115++;
        (*(*v117 + 80))(v117, v605);
        v116 -= 8;
      }

      while (v116);
    }

    if (v12)
    {
      v118 = 0;
      v119 = 0;
      do
      {
        re::GeomMeshBuilder::setFaceVertices(v599, v119++, *(__p[0] + v118), *(__p[0] + v118 + 4), *(__p[0] + v118 + 8));
        v118 += 12;
      }

      while (v12 != v119);
      v9 = v541;
      if (v104)
      {
        v120 = 0;
        v121 = 12 * v12;
        do
        {
          re::GeomMeshBuilder::setFaceVertices(v599, v12, *(__p[0] + v120 + 8) + v541, *(__p[0] + v120 + 4) + v541, *(__p[0] + v120) + v541);
          v12 = (v12 + 1);
          v120 += 12;
        }

        while (v121 != v120);
      }
    }

    if (v10 && v6)
    {
      v11 = 0;
      v538 = v6;
      while (1)
      {
        v7 = *(&v584 + 1);
        if (v11)
        {
          v23 = v11 - 1;
          if (*(&v584 + 1) <= v11 - 1)
          {
            goto LABEL_716;
          }

          v122 = *(v586 + 4 * v23);
        }

        else
        {
          v122 = 0;
        }

        if (*(&v584 + 1) <= v11)
        {
          break;
        }

        v123 = *(v586 + 4 * v11);
        if (v122 < v123)
        {
          v124 = 0;
          v22 = v122 + v9;
          LODWORD(v10) = -v123;
          v125 = v9;
          do
          {
            v7 = v122 + v124;
            v126 = v122 + v125;
            if (v122 + v10 == -1)
            {
              v127 = v22;
            }

            else
            {
              v127 = v126 + 1;
            }

            if (v122 + v10 == -1)
            {
              v12 = v122;
            }

            else
            {
              v12 = (v7 + 1);
            }

            re::GeomMeshBuilder::setFaceVertices(v599, v8, v122 + v124, v126, v127);
            re::GeomMeshBuilder::setFaceVertices(v599, v8 + 1, v122 + v124, v127, v12);
            v8 = (v8 + 2);
            ++v124;
            LODWORD(v10) = v10 + 1;
            ++v125;
          }

          while (v122 + v10);
          v6 = v538;
          v9 = v541;
        }

        if (++v11 == v6)
        {
          goto LABEL_253;
        }
      }

LABEL_672:
      *v619 = 0;
      memset(v561, 0, 80);
      v362 = MEMORY[0x1E69E9C10];
      v363 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v363)
      {
        v364 = 3;
      }

      else
      {
        v364 = 2;
      }

      *&buf[14] = 797;
      *&buf[18] = 2048;
      *&buf[20] = v11;
      *&buf[28] = 2048;
      *&buf[30] = v7;
      _os_log_send_and_compose_impl(v364, v619, v561, 80, &dword_1E1C61000, v362, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_676;
    }

LABEL_253:
    re::GeomMesh::GeomMesh(v561, 0);
    re::GeomMesh::operator=(v561, &v599[1]);
    re::GeomMesh::setName(v561, v599[0]);
    re::GeomMesh::freeName(v599);
    v128 = re::GeomMesh::modifyVertexPositions(v561);
    v10 = &v575;
    v11 = v561;
    if (!v9)
    {
      goto LABEL_265;
    }

    v8 = 0;
    v7 = v9;
    v22 = v129;
    do
    {
      v23 = v578;
      if (v578 <= v8)
      {
        goto LABEL_656;
      }

      if (v129 == v8)
      {
LABEL_660:
        *v616 = 0;
        v615 = 0u;
        v614 = 0u;
        memset(buf, 0, sizeof(buf));
        v353 = MEMORY[0x1E69E9C10];
        v354 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v619 = 136315906;
        *&v619[4] = "operator[]";
        *&v619[12] = 1024;
        if (v354)
        {
          v355 = 3;
        }

        else
        {
          v355 = 2;
        }

        *&v619[14] = 621;
        *&v619[18] = 2048;
        *&v619[20] = v22;
        v620 = 2048;
        *v621 = v22;
        _os_log_send_and_compose_impl(v355, v616, buf, 80, &dword_1E1C61000, v353, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
LABEL_664:
        *buf = 0;
        memset(v561, 0, 80);
        v356 = MEMORY[0x1E69E9C10];
        v357 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v599[0]) = 136315906;
        *(v599 + 4) = "operator[]";
        WORD2(v599[1]) = 1024;
        if (v357)
        {
          v358 = 3;
        }

        else
        {
          v358 = 2;
        }

        *(&v599[1] + 6) = 789;
        WORD1(v599[2]) = 2048;
        *(&v599[2] + 4) = v23;
        WORD2(v599[3]) = 2048;
        *(&v599[3] + 6) = v22;
        _os_log_send_and_compose_impl(v358, buf, v561, 80, &dword_1E1C61000, v356, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v599, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
LABEL_668:
        *buf = 0;
        memset(v561, 0, 80);
        v359 = MEMORY[0x1E69E9C10];
        v360 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v599[0]) = 136315906;
        *(v599 + 4) = "operator[]";
        WORD2(v599[1]) = 1024;
        if (v360)
        {
          v361 = 3;
        }

        else
        {
          v361 = 2;
        }

        *(&v599[1] + 6) = 789;
        WORD1(v599[2]) = 2048;
        *(&v599[2] + 4) = v23;
        WORD2(v599[3]) = 2048;
        *(&v599[3] + 6) = v22;
        _os_log_send_and_compose_impl(v361, buf, v561, 80, &dword_1E1C61000, v359, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v599, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
        goto LABEL_672;
      }

      *&v130 = *(v580 + 8 * v8);
      *(&v130 + 2) = v103 * 0.5;
      *(v128 + 16 * v8++) = v130;
    }

    while (v9 != v8);
    if (v528)
    {
      v8 = 0;
      LODWORD(v131) = v129 - v9;
      if (v129 >= v9)
      {
        v131 = v131;
      }

      else
      {
        v131 = 0;
      }

      while (1)
      {
        v23 = v578;
        if (v578 <= v8)
        {
          goto LABEL_728;
        }

        if (v131 == v8)
        {
          break;
        }

        *&v130 = *(v580 + 8 * v8);
        *(&v130 + 2) = -(v103 * 0.5);
        *(v128 + 16 * v9 + 16 * v8++) = v130;
        if (v9 == v8)
        {
          goto LABEL_265;
        }
      }

LABEL_732:
      *v616 = 0;
      v615 = 0u;
      v614 = 0u;
      memset(buf, 0, sizeof(buf));
      v406 = MEMORY[0x1E69E9C10];
      v407 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *&v619[4] = "operator[]";
      *&v619[12] = 1024;
      *&v619[14] = 621;
      if (v407)
      {
        v408 = 3;
      }

      else
      {
        v408 = 2;
      }

      *v619 = 136315906;
      *&v619[18] = 2048;
      *&v619[20] = (v7 + v8);
      v620 = 2048;
      *v621 = v22;
      _os_log_send_and_compose_impl(v408, v616, buf, 80, &dword_1E1C61000, v406, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_736:
      v575.i64[0] = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v409 = MEMORY[0x1E69E9C10];
      v410 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v590) = 136315906;
      *(v23 + 196) = "operator[]";
      WORD2(v591) = 1024;
      if (v410)
      {
        v411 = 3;
      }

      else
      {
        v411 = 2;
      }

      *(v23 + 206) = 789;
      WORD1(v592) = 2048;
      *(v23 + 212) = v22;
      v594 = 2048;
      *(v23 + 222) = v8;
      _os_log_send_and_compose_impl(v411, &v575, v599, 80, &dword_1E1C61000, v409, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v590, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_740:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v412 = MEMORY[0x1E69E9C10];
      v413 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v413)
      {
        v414 = 3;
      }

      else
      {
        v414 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v22;
      v617 = 2048;
      *v618 = v22;
      _os_log_send_and_compose_impl(v414, v622, v599, 80, &dword_1E1C61000, v412, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_744:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v415 = MEMORY[0x1E69E9C10];
      v416 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v416)
      {
        v417 = 3;
      }

      else
      {
        v417 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v11;
      v617 = 2048;
      *v618 = v11;
      _os_log_send_and_compose_impl(v417, v622, v599, 80, &dword_1E1C61000, v415, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_748:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v418 = MEMORY[0x1E69E9C10];
      v419 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v419)
      {
        v420 = 3;
      }

      else
      {
        v420 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v22;
      v623 = 2048;
      v624 = v22;
      _os_log_send_and_compose_impl(v420, &v556, v599, 80, &dword_1E1C61000, v418, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_752:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v421 = MEMORY[0x1E69E9C10];
      v422 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v422)
      {
        v423 = 3;
      }

      else
      {
        v423 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v11;
      v623 = 2048;
      v624 = v11;
      _os_log_send_and_compose_impl(v423, &v556, v599, 80, &dword_1E1C61000, v421, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_756;
    }

LABEL_265:
    re::GeomMesh::freeName(v599);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v600 + 8));
    if (v599[2] && v600)
    {
      (*(*v599[2] + 40))();
    }

    v132 = a4;
    if (*(a4 + 8) != 1)
    {
      goto LABEL_367;
    }

    v529 = *(a4 + 4);
    v6 = *(a4 + 10);
    v7 = *(a4 + 11);
    v11 = v578;
    v12 = *(&v584 + 1);
    v133 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
    v8 = *&v561[40];
    *&buf[32] = 0;
    memset(buf, 0, 28);
    *&v621[2] = 0;
    memset(v619, 0, sizeof(v619));
    re::DynamicArray<re::GeomCell4>::resize(buf, *&v561[40]);
    re::DynamicArray<float>::resize(v619, v8);
    if (v133)
    {
      v134 = v133;
      v23 = *&buf[16];
      v135 = __p[0] + 8;
      v136 = (*&buf[32] + 12);
      v137 = *&buf[16];
      v138 = v133;
      do
      {
        if (!v137)
        {
          goto LABEL_724;
        }

        v139 = *v135;
        *(v136 - 3) = *(v135 - 1);
        *(v136 - 1) = v139;
        *v136 = -1;
        v135 += 3;
        v136 += 4;
        --v137;
        --v138;
      }

      while (v138);
      if (v7)
      {
        v140 = *&buf[32];
        v141 = vdup_n_s32(v11);
        v142 = __p[0] + 4;
        v143 = v133;
        do
        {
          v22 = v143;
          if (v23 <= v143)
          {
            goto LABEL_768;
          }

          v144 = (v140 + 16 * v143);
          v145 = *(v142 - 1) + v11;
          v146 = *v142;
          v142 = (v142 + 12);
          *v144 = vrev64_s32(vadd_s32(v146, v141));
          v144[1].i32[0] = v145;
          v144[1].i32[1] = -1;
          v143 = v22 + 1;
          --v134;
        }

        while (v134);
      }
    }

    v23 = (v12 + v11);
    v539 = v7;
    if (v7)
    {
      v147 = v11;
    }

    else
    {
      v147 = 0;
    }

    HIDWORD(v525) = v147;
    v10 = (v147 + v11);
    v542 = v6;
    if (v6 && v12)
    {
      v148 = 0;
      if (v7)
      {
        v149 = v133;
      }

      else
      {
        v149 = 0;
      }

      v150 = v149 + v133;
      v22 = *(&v584 + 1);
      v151 = v586;
      v7 = *&buf[16];
      v152 = v10;
      while (1)
      {
        v153 = v152;
        if (v148)
        {
          v6 = v148 - 1;
          if (v22 <= v148 - 1)
          {
            goto LABEL_788;
          }

          v153 = *(v151 + 4 * v6) + v152;
        }

        if (v148 == v22)
        {
          goto LABEL_764;
        }

        v154 = *(v151 + 4 * v148) + v152;
        if (v153 < v154)
        {
          break;
        }

LABEL_295:
        ++v152;
        if (++v148 == v12)
        {
          goto LABEL_296;
        }
      }

      v155 = *&buf[32];
      while (1)
      {
        v9 = v150;
        if (v7 <= v150)
        {
          break;
        }

        v156 = (v155 + 16 * v150);
        v157 = v23 + v153 + 1;
        *v156 = v153;
        v156[1] = v23 + v153;
        v156[2] = v157;
        v156[3] = -1;
        v6 = (v9 + 1);
        if (v7 <= v6)
        {
          goto LABEL_572;
        }

        v158 = (v155 + 16 * v6);
        *v158 = v153;
        v158[1] = v157;
        v158[2] = v153 + 1;
        v158[3] = -1;
        v150 = v9 + 2;
        if (++v153 >= v154)
        {
          goto LABEL_295;
        }
      }

LABEL_568:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v287 = MEMORY[0x1E69E9C10];
      v288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v288)
      {
        v289 = 3;
      }

      else
      {
        v289 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v9;
      v617 = 2048;
      *v618 = v7;
      _os_log_send_and_compose_impl(v289, v622, v599, 80, &dword_1E1C61000, v287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_572:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v290 = MEMORY[0x1E69E9C10];
      v291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v291)
      {
        v292 = 3;
      }

      else
      {
        v292 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v7;
      _os_log_send_and_compose_impl(v292, v622, v599, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_576:
      *v616 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v293 = MEMORY[0x1E69E9C10];
      v294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v619 = 136315906;
      *&v619[4] = "operator[]";
      *&v619[12] = 1024;
      if (v294)
      {
        v295 = 3;
      }

      else
      {
        v295 = 2;
      }

      *&v619[14] = 789;
      *&v619[18] = 2048;
      *&v619[20] = v11;
      v620 = 2048;
      *v621 = v22;
      _os_log_send_and_compose_impl(v295, v616, v599, 80, &dword_1E1C61000, v293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_580:
      *buf = 0;
      memset(v561, 0, 80);
      v296 = MEMORY[0x1E69E9C10];
      v297 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v599[0]) = 136315906;
      *(v599 + 4) = "operator[]";
      WORD2(v599[1]) = 1024;
      if (v297)
      {
        v298 = 3;
      }

      else
      {
        v298 = 2;
      }

      *(&v599[1] + 6) = 789;
      WORD1(v599[2]) = 2048;
      *(&v599[2] + 4) = v23;
      WORD2(v599[3]) = 2048;
      *(&v599[3] + 6) = v22;
      _os_log_send_and_compose_impl(v298, buf, v561, 80, &dword_1E1C61000, v296, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v599, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_584;
    }

LABEL_296:
    v159 = 2 * v23;
    if (!v542)
    {
      v159 = 0;
    }

    if (v8)
    {
      v160 = 0;
      v22 = *&v619[16];
      v161 = *&v621[2];
      while (v22 != v160)
      {
        *(v161 + 4 * v160) = v160;
        if (v8 == ++v160)
        {
          goto LABEL_302;
        }
      }

      goto LABEL_740;
    }

LABEL_302:
    v162 = v12;
    v8 = re::GeomMesh::addFaceVaryingAttribute(v561, "vertexUV", 6, v159 + v10, buf, v619);
    v526 = v12;
    if ((*(*v8 + 16))(v8))
    {
      if (*(v8 + 40))
      {
        v7 = *(v8 + 56);
        v12 = (*(*v8 + 16))(v8);
        goto LABEL_306;
      }

LABEL_869:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v507 = MEMORY[0x1E69E9C10];
      v508 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v508)
      {
        v509 = 3;
      }

      else
      {
        v509 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = 0;
      v617 = 2048;
      *v618 = 0;
      _os_log_send_and_compose_impl(v509, v622, v599, 80, &dword_1E1C61000, v507, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_873;
    }

    v12 = 0;
    v7 = 0;
LABEL_306:
    v163 = v162;
    if (!v526)
    {
      goto LABEL_360;
    }

    v22 = 0;
    v164 = *v575.f32;
    v165 = vsubq_f32(v576, v575);
    v165.i32[3] = 0;
    v166 = vmaxnmq_f32(v165, 0);
    v167 = 1.0 / fmaxf(fmaxf(v166.f32[0], v166.f32[2]), v166.f32[1]);
    while (2)
    {
      v8 = *(&v584 + 1);
      if (v22)
      {
        v6 = v22 - 1;
        if (*(&v584 + 1) <= v22 - 1)
        {
          goto LABEL_784;
        }

        v168 = *(v586 + 4 * v6);
      }

      else
      {
        v168 = 0;
      }

      if (*(&v584 + 1) <= v22)
      {
        goto LABEL_760;
      }

      v169 = *(v586 + 4 * v22);
      if (v168 < v169)
      {
        v8 = v168;
        if (v168 <= v12)
        {
          v9 = v12;
        }

        else
        {
          v9 = v168;
        }

        do
        {
          v6 = v578;
          if (v578 <= v8)
          {
            goto LABEL_560;
          }

          if (v9 == v8)
          {
            goto LABEL_564;
          }

          *(v7 + 8 * v8) = vmul_n_f32(vsub_f32(*(v580 + 8 * v8), v164), v167);
        }

        while (v169 != ++v8);
      }

      if (++v22 != v162)
      {
        continue;
      }

      break;
    }

    if (v539)
    {
      v22 = 0;
      while (1)
      {
        v8 = *(&v584 + 1);
        if (v22)
        {
          v6 = v22 - 1;
          if (*(&v584 + 1) <= v22 - 1)
          {
            goto LABEL_836;
          }

          v170 = *(v586 + 4 * v6);
        }

        else
        {
          v170 = 0;
        }

        if (*(&v584 + 1) <= v22)
        {
          goto LABEL_820;
        }

        v171 = *(v586 + 4 * v22);
        if (v170 < v171)
        {
          break;
        }

LABEL_333:
        if (++v22 == v162)
        {
          goto LABEL_334;
        }
      }

      v9 = v170;
      v8 = v11 + v170;
      while (1)
      {
        v6 = v578;
        if (v578 <= v9)
        {
          break;
        }

        if (v12 <= v8)
        {
          goto LABEL_640;
        }

        v172 = vmul_n_f32(vsub_f32(*(v580 + 8 * v9), v164), v167);
        v172.f32[0] = 1.0 - v172.f32[0];
        *(v7 + 8 * v8) = v172;
        ++v9;
        ++v8;
        if (v171 == v9)
        {
          goto LABEL_333;
        }
      }

LABEL_636:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v335 = MEMORY[0x1E69E9C10];
      v336 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v336)
      {
        v337 = 3;
      }

      else
      {
        v337 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v9;
      v617 = 2048;
      *v618 = v6;
      _os_log_send_and_compose_impl(v337, v622, v599, 80, &dword_1E1C61000, v335, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_640:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v338 = MEMORY[0x1E69E9C10];
      v339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      if (v339)
      {
        v340 = 3;
      }

      else
      {
        v340 = 2;
      }

      *&v616[12] = 1024;
      *&v616[14] = 621;
      *&v616[18] = 2048;
      *&v616[20] = v8;
      v617 = 2048;
      *v618 = v12;
      _os_log_send_and_compose_impl(v340, v622, v599, 80, &dword_1E1C61000, v338, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_644:
      *v619 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v341 = MEMORY[0x1E69E9C10];
      v342 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v342)
      {
        v343 = 3;
      }

      else
      {
        v343 = 2;
      }

      *&buf[14] = 797;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      *&buf[28] = 2048;
      *&buf[30] = v22;
      _os_log_send_and_compose_impl(v343, v619, v599, 80, &dword_1E1C61000, v341, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_648:
      *v616 = 0;
      v601 = v45;
      v600 = v45;
      *&v599[4] = v45;
      *&v599[2] = v45;
      *v599 = v45;
      v344 = MEMORY[0x1E69E9C10];
      v345 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v619 = 136315906;
      *&v619[4] = "operator[]";
      *&v619[12] = 1024;
      if (v345)
      {
        v346 = 3;
      }

      else
      {
        v346 = 2;
      }

      *&v619[14] = 789;
      *&v619[18] = 2048;
      *&v619[20] = v23;
      v620 = 2048;
      *v621 = v22;
      _os_log_send_and_compose_impl(v346, v616, v599, 80, &dword_1E1C61000, v344, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_652:
      __src[0] = 0;
      v615 = 0u;
      v614 = 0u;
      memset(buf, 0, sizeof(buf));
      v347 = MEMORY[0x1E69E9C10];
      v348 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v619 = 136315906;
      *&v619[4] = "operator[]";
      *&v619[12] = 1024;
      if (v348)
      {
        v349 = 3;
      }

      else
      {
        v349 = 2;
      }

      *&v619[14] = 797;
      *&v619[18] = 2048;
      *&v619[20] = v7;
      v620 = 2048;
      *v621 = v22;
      _os_log_send_and_compose_impl(v349, __src, buf, 80, &dword_1E1C61000, v347, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_656:
      *v616 = 0;
      v615 = 0u;
      v614 = 0u;
      memset(buf, 0, sizeof(buf));
      v350 = MEMORY[0x1E69E9C10];
      v351 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v619 = 136315906;
      *&v619[4] = "operator[]";
      *&v619[12] = 1024;
      if (v351)
      {
        v352 = 3;
      }

      else
      {
        v352 = 2;
      }

      *&v619[14] = 797;
      *&v619[18] = 2048;
      *&v619[20] = v8;
      v620 = 2048;
      *v621 = v23;
      _os_log_send_and_compose_impl(v352, v616, buf, 80, &dword_1E1C61000, v350, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_660;
    }

LABEL_334:
    if (v542)
    {
      v9 = 0;
      v8 = v12;
      v173 = HIDWORD(v525) + 2 * v11 + v526;
      while (1)
      {
        v11 = *(&v584 + 1);
        if (v9)
        {
          v22 = v9 - 1;
          if (*(&v584 + 1) <= v9 - 1)
          {
            goto LABEL_860;
          }

          v22 = *(v586 + 4 * v22);
        }

        else
        {
          v22 = 0;
        }

        if (*(&v584 + 1) <= v9)
        {
          goto LABEL_840;
        }

        v174 = v22;
        v11 = v578;
        if (v578 <= v22)
        {
          goto LABEL_844;
        }

        v175 = *(v586 + 4 * v9);
        v176 = *(v580 + 8 * v22);
        v177 = 0.0;
        if (v22 < v175)
        {
          v11 = 0;
          v178 = (v22 + v10);
          v179 = 8 * v22;
          v180 = v22 + v173;
          v177 = 0.0;
          do
          {
            v6 = v578;
            if (v578 <= v22 + v11)
            {
              goto LABEL_692;
            }

            if (v178 + v11 >= v12)
            {
              goto LABEL_696;
            }

            v181 = v580 + v179;
            v182 = vsub_f32(*(v580 + v179 + 8 * v11), v176);
            v177 = v177 + sqrtf(vaddv_f32(vmul_f32(v182, v182)));
            v182.i32[0] = 0;
            v182.f32[1] = v177;
            *(v7 + 8 * v178 + 8 * v11) = v182;
            if (v12 <= v180 + v11)
            {
              goto LABEL_700;
            }

            *(v7 + 8 * v180 + 8 * v11) = __PAIR64__(LODWORD(v177), LODWORD(v529));
            v176 = *(v181 + 8 * v11++);
          }

          while (v22 - v175 + v11);
          v11 = v578;
        }

        if (v11 <= v22)
        {
          goto LABEL_848;
        }

        v11 = (v175 + v10);
        if (v12 <= v11)
        {
          goto LABEL_852;
        }

        v183 = vsub_f32(*(v580 + 8 * v22), v176);
        v184 = v177 + sqrtf(vaddv_f32(vmul_f32(v183, v183)));
        v183.i32[0] = 0;
        v183.f32[1] = v184;
        *(v7 + 8 * v11) = v183;
        v6 = (v11 + v23);
        if (v12 <= v6)
        {
          goto LABEL_856;
        }

        *(v7 + 8 * v6) = __PAIR64__(LODWORD(v184), LODWORD(v529));
        if (v22 <= v175)
        {
          break;
        }

LABEL_359:
        ++v9;
        LODWORD(v10) = v10 + 1;
        ++v173;
        if (v9 == v163)
        {
          goto LABEL_360;
        }
      }

      if (v184 <= v529)
      {
        v184 = v529;
      }

      v11 = (v22 + v10);
      v185 = (v22 + v173);
      v186 = 1.0 / v184;
      while (v11 < v12)
      {
        *(v7 + 8 * v11) = vmul_n_f32(*(v7 + 8 * v11), v186);
        if (v12 <= v185)
        {
          goto LABEL_708;
        }

        *(v7 + 8 * v185) = vmul_n_f32(*(v7 + 8 * v185), v186);
        v22 = (v22 + 1);
        ++v11;
        ++v185;
        if (v22 > v175)
        {
          goto LABEL_359;
        }
      }

LABEL_704:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v185 = MEMORY[0x1E69E9C10];
      v387 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v387)
      {
        v388 = 3;
      }

      else
      {
        v388 = 2;
      }

      *&v616[14] = 621;
      *&v616[18] = 2048;
      *&v616[20] = v11;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v388, v622, v599, 80, &dword_1E1C61000, v185, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_708:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v23 = MEMORY[0x1E69E9C10];
      v389 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v389)
      {
        v390 = 3;
      }

      else
      {
        v390 = 2;
      }

      *&v616[14] = 621;
      *&v616[18] = 2048;
      *&v616[20] = v185;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v390, v622, v599, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_712:
      __src[0] = 0;
      v615 = 0u;
      v614 = 0u;
      memset(buf, 0, sizeof(buf));
      v391 = MEMORY[0x1E69E9C10];
      v392 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v619 = 136315906;
      *&v619[4] = "operator[]";
      *&v619[12] = 1024;
      if (v392)
      {
        v393 = 3;
      }

      else
      {
        v393 = 2;
      }

      *&v619[14] = 797;
      *&v619[18] = 2048;
      *&v619[20] = v6;
      v620 = 2048;
      *v621 = v22;
      _os_log_send_and_compose_impl(v393, __src, buf, 80, &dword_1E1C61000, v391, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_716:
      *v619 = 0;
      memset(v561, 0, 80);
      v394 = MEMORY[0x1E69E9C10];
      v395 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v395)
      {
        v396 = 3;
      }

      else
      {
        v396 = 2;
      }

      *&buf[14] = 797;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      *&buf[28] = 2048;
      *&buf[30] = v7;
      _os_log_send_and_compose_impl(v396, v619, v561, 80, &dword_1E1C61000, v394, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_720:
      v575.i64[0] = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v397 = MEMORY[0x1E69E9C10];
      v398 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v590) = 136315906;
      *(v23 + 196) = "operator[]";
      WORD2(v591) = 1024;
      if (v398)
      {
        v399 = 3;
      }

      else
      {
        v399 = 2;
      }

      *(v23 + 206) = 789;
      WORD1(v592) = 2048;
      *(v23 + 212) = v22;
      v594 = 2048;
      *(v23 + 222) = v8;
      _os_log_send_and_compose_impl(v399, &v575, v599, 80, &dword_1E1C61000, v397, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v590, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_724:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v400 = MEMORY[0x1E69E9C10];
      v401 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v401)
      {
        v402 = 3;
      }

      else
      {
        v402 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v23;
      v617 = 2048;
      *v618 = v23;
      _os_log_send_and_compose_impl(v402, v622, v599, 80, &dword_1E1C61000, v400, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_728:
      *v616 = 0;
      v615 = 0u;
      v614 = 0u;
      memset(buf, 0, sizeof(buf));
      v403 = MEMORY[0x1E69E9C10];
      v404 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v619 = 136315906;
      *&v619[4] = "operator[]";
      *&v619[12] = 1024;
      if (v404)
      {
        v405 = 3;
      }

      else
      {
        v405 = 2;
      }

      *&v619[14] = 797;
      *&v619[18] = 2048;
      *&v619[20] = v8;
      v620 = 2048;
      *v621 = v23;
      _os_log_send_and_compose_impl(v405, v616, buf, 80, &dword_1E1C61000, v403, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_732;
    }

LABEL_360:
    if (*v619 && *&v621[2])
    {
      (*(**v619 + 40))();
    }

    v10 = &v575;
    v11 = v561;
    if (*buf && *&buf[32])
    {
      (*(**buf + 40))();
    }

    v132 = a4;
LABEL_367:
    if (v132[9] != 1)
    {
      goto LABEL_431;
    }

    v187 = v132[10];
    v9 = v132[11];
    v23 = DWORD2(v587);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
    v8 = *&v561[40];
    if (v132[11])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if (v132[10])
    {
      v22 = DWORD2(v581);
    }

    else
    {
      v22 = 0;
    }

    *&buf[32] = 0;
    memset(buf, 0, 28);
    *&v621[2] = 0;
    memset(v619, 0, sizeof(v619));
    re::DynamicArray<re::GeomCell4>::resize(buf, *&v561[40]);
    re::DynamicArray<float>::resize(v619, v8);
    if (v12)
    {
      v188 = 0;
      v11 = *&buf[16];
      v189 = *&buf[32];
      v190.i64[1] = -1;
      v190.i64[0] = v22 | 0xFFFFFFFF00000000;
      v191 = vzip1q_s32(v190, v190);
      v191.i32[2] = v22;
      do
      {
        if (v11 == v188)
        {
          goto LABEL_744;
        }

        *(v189 + 16 * v188++) = v191;
      }

      while (v12 != v188);
      if (v9)
      {
        v192.i32[1] = -1;
        v192.i64[1] = -1;
        v192.i32[0] = v22 + 1;
        v193 = *&buf[32];
        v194 = vzip1q_s32(v192, v192);
        v195 = v12;
        v196 = v12;
        do
        {
          v6 = v196;
          if (v11 <= v196)
          {
            goto LABEL_780;
          }

          v194.i32[2] = v22 + 1;
          *(v193 + 16 * v196++) = v194;
        }

        while (--v195);
      }
    }

    if (!v23)
    {
      v187 = 0;
    }

    if (v187 == 1)
    {
      v197 = 0;
      if (v9)
      {
        v198 = v12;
      }

      else
      {
        v198 = 0;
      }

      v199 = v198 + v12;
      v11 = *(&v587 + 1);
      v200 = v589;
      v12 = *&buf[16];
      while (1)
      {
        if (v197)
        {
          v6 = v197 - 1;
          if (v11 <= v197 - 1)
          {
            goto LABEL_808;
          }

          v201 = *(v200 + 4 * v6);
        }

        else
        {
          v201 = 0;
        }

        if (v197 == v11)
        {
          goto LABEL_776;
        }

        v202 = *(v200 + 4 * v197) - 1;
        if (v201 < v202)
        {
          break;
        }

LABEL_399:
        if (++v197 == v23)
        {
          goto LABEL_400;
        }
      }

      v203 = *&buf[32];
      while (1)
      {
        v7 = v199;
        if (v12 <= v199)
        {
          break;
        }

        v204 = (v203 + 16 * v199);
        *v204 = v201;
        v204[1] = v201++;
        v204[2] = v201;
        v204[3] = -1;
        v6 = (v7 + 1);
        if (v12 <= v6)
        {
          goto LABEL_588;
        }

        v205 = (v203 + 16 * v6);
        *v205 = v201 - 1;
        v205[1] = v201;
        v205[2] = v201;
        v205[3] = -1;
        v199 = v7 + 2;
        if (v201 == v202)
        {
          goto LABEL_399;
        }
      }

LABEL_584:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v299 = MEMORY[0x1E69E9C10];
      v300 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v300)
      {
        v301 = 3;
      }

      else
      {
        v301 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v7;
      v617 = 2048;
      *v618 = v12;
      _os_log_send_and_compose_impl(v301, v622, v599, 80, &dword_1E1C61000, v299, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_588:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v302 = MEMORY[0x1E69E9C10];
      v303 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v303)
      {
        v304 = 3;
      }

      else
      {
        v304 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v12;
      _os_log_send_and_compose_impl(v304, v622, v599, 80, &dword_1E1C61000, v302, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_592:
      v560 = 0;
      v615 = 0u;
      v614 = 0u;
      memset(buf, 0, sizeof(buf));
      v305 = MEMORY[0x1E69E9C10];
      v306 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v619 = 136315906;
      *&v619[4] = "operator[]";
      *&v619[12] = 1024;
      if (v306)
      {
        v307 = 3;
      }

      else
      {
        v307 = 2;
      }

      *&v619[14] = 797;
      *&v619[18] = 2048;
      *&v619[20] = v7;
      v620 = 2048;
      *v621 = v11;
      _os_log_send_and_compose_impl(v307, &v560, buf, 80, &dword_1E1C61000, v305, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v619, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_596;
    }

LABEL_400:
    if (v8)
    {
      v206 = 0;
      v7 = *&v619[16];
      v207 = *&v621[2];
      while (v7 != v206)
      {
        *(v207 + 4 * v206) = v206;
        if (v8 == ++v206)
        {
          goto LABEL_404;
        }
      }

LABEL_756:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v424 = MEMORY[0x1E69E9C10];
      v425 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v425)
      {
        v426 = 3;
      }

      else
      {
        v426 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v7;
      v617 = 2048;
      *v618 = v7;
      _os_log_send_and_compose_impl(v426, v622, v599, 80, &dword_1E1C61000, v424, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_760:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v427 = MEMORY[0x1E69E9C10];
      v428 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v428)
      {
        v429 = 3;
      }

      else
      {
        v429 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v22;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v429, v622, v599, 80, &dword_1E1C61000, v427, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_764:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v430 = MEMORY[0x1E69E9C10];
      v431 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v431)
      {
        v432 = 3;
      }

      else
      {
        v432 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v22;
      v617 = 2048;
      *v618 = v22;
      _os_log_send_and_compose_impl(v432, v622, v599, 80, &dword_1E1C61000, v430, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_768:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v433 = MEMORY[0x1E69E9C10];
      v434 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v434)
      {
        v435 = 3;
      }

      else
      {
        v435 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v22;
      v617 = 2048;
      *v618 = v23;
      _os_log_send_and_compose_impl(v435, v622, v599, 80, &dword_1E1C61000, v433, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_772:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v436 = MEMORY[0x1E69E9C10];
      v437 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v437)
      {
        v438 = 3;
      }

      else
      {
        v438 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v7;
      v623 = 2048;
      v624 = v7;
      _os_log_send_and_compose_impl(v438, &v556, v599, 80, &dword_1E1C61000, v436, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_776:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v439 = MEMORY[0x1E69E9C10];
      v440 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v440)
      {
        v441 = 3;
      }

      else
      {
        v441 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v11;
      v617 = 2048;
      *v618 = v11;
      _os_log_send_and_compose_impl(v441, v622, v599, 80, &dword_1E1C61000, v439, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_780:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v442 = MEMORY[0x1E69E9C10];
      v443 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v443)
      {
        v444 = 3;
      }

      else
      {
        v444 = 2;
      }

      *&v616[14] = 789;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v11;
      _os_log_send_and_compose_impl(v444, v622, v599, 80, &dword_1E1C61000, v442, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_784:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v445 = MEMORY[0x1E69E9C10];
      v446 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v446)
      {
        v447 = 3;
      }

      else
      {
        v447 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v447, v622, v599, 80, &dword_1E1C61000, v445, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_788:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v448 = MEMORY[0x1E69E9C10];
      v449 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v449)
      {
        v450 = 3;
      }

      else
      {
        v450 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v22;
      _os_log_send_and_compose_impl(v450, v622, v599, 80, &dword_1E1C61000, v448, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_792:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v451 = MEMORY[0x1E69E9C10];
      v452 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v452)
      {
        v453 = 3;
      }

      else
      {
        v453 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v22;
      v617 = 2048;
      *v618 = v7;
      _os_log_send_and_compose_impl(v453, v622, v599, 80, &dword_1E1C61000, v451, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_796:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v454 = MEMORY[0x1E69E9C10];
      v455 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v455)
      {
        v456 = 3;
      }

      else
      {
        v456 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v11;
      v623 = 2048;
      v624 = v22;
      _os_log_send_and_compose_impl(v456, &v556, v599, 80, &dword_1E1C61000, v454, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_800:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v457 = MEMORY[0x1E69E9C10];
      v458 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v458)
      {
        v459 = 3;
      }

      else
      {
        v459 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v11;
      v623 = 2048;
      v624 = v12;
      _os_log_send_and_compose_impl(v459, &v556, v599, 80, &dword_1E1C61000, v457, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_804:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v460 = MEMORY[0x1E69E9C10];
      v461 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v461)
      {
        v462 = 3;
      }

      else
      {
        v462 = 2;
      }

      *&v622[14] = 797;
      *&v622[18] = 2048;
      *&v622[20] = v7;
      v623 = 2048;
      v624 = v7;
      _os_log_send_and_compose_impl(v462, &v556, v599, 80, &dword_1E1C61000, v460, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_808:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v463 = MEMORY[0x1E69E9C10];
      v464 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v464)
      {
        v465 = 3;
      }

      else
      {
        v465 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v11;
      _os_log_send_and_compose_impl(v465, v622, v599, 80, &dword_1E1C61000, v463, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_812:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v466 = MEMORY[0x1E69E9C10];
      v467 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v467)
      {
        v468 = 3;
      }

      else
      {
        v468 = 2;
      }

      *&v622[14] = 797;
      *&v622[18] = 2048;
      *&v622[20] = v22;
      v623 = 2048;
      v624 = v7;
      _os_log_send_and_compose_impl(v468, &v556, v599, 80, &dword_1E1C61000, v466, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_816:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v469 = MEMORY[0x1E69E9C10];
      v470 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v470)
      {
        v471 = 3;
      }

      else
      {
        v471 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v7;
      _os_log_send_and_compose_impl(v471, v622, v599, 80, &dword_1E1C61000, v469, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_820:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v472 = MEMORY[0x1E69E9C10];
      v473 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v473)
      {
        v474 = 3;
      }

      else
      {
        v474 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v22;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v474, v622, v599, 80, &dword_1E1C61000, v472, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_824:
      *buf = 0;
      memset(v561, 0, 80);
      v475 = MEMORY[0x1E69E9C10];
      v22 = v72;
      v476 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v599[0]) = 136315906;
      *(v599 + 4) = "operator[]";
      WORD2(v599[1]) = 1024;
      if (v476)
      {
        v477 = 3;
      }

      else
      {
        v477 = 2;
      }

      *(&v599[1] + 6) = 789;
      WORD1(v599[2]) = 2048;
      *(&v599[2] + 4) = v22;
      WORD2(v599[3]) = 2048;
      *(&v599[3] + 6) = v23;
      _os_log_send_and_compose_impl(v477, buf, v561, 80, &dword_1E1C61000, v475, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v599, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_828:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v478 = MEMORY[0x1E69E9C10];
      v479 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v479)
      {
        v480 = 3;
      }

      else
      {
        v480 = 2;
      }

      *&v622[14] = 797;
      *&v622[18] = 2048;
      *&v622[20] = v6;
      v623 = 2048;
      v624 = v7;
      _os_log_send_and_compose_impl(v480, &v556, v599, 80, &dword_1E1C61000, v478, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_832:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v481 = MEMORY[0x1E69E9C10];
      v482 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v482)
      {
        v483 = 3;
      }

      else
      {
        v483 = 2;
      }

      *&v622[14] = 797;
      *&v622[18] = 2048;
      *&v622[20] = v6;
      v623 = 2048;
      v624 = v7;
      _os_log_send_and_compose_impl(v483, &v556, v599, 80, &dword_1E1C61000, v481, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_836:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v484 = MEMORY[0x1E69E9C10];
      v485 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v485)
      {
        v486 = 3;
      }

      else
      {
        v486 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v486, v622, v599, 80, &dword_1E1C61000, v484, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_840:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v174 = MEMORY[0x1E69E9C10];
      v487 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v487)
      {
        v488 = 3;
      }

      else
      {
        v488 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v9;
      v617 = 2048;
      *v618 = v11;
      _os_log_send_and_compose_impl(v488, v622, v599, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_844:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v489 = MEMORY[0x1E69E9C10];
      v490 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v490)
      {
        v491 = 3;
      }

      else
      {
        v491 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v174;
      v617 = 2048;
      *v618 = v11;
      _os_log_send_and_compose_impl(v491, v622, v599, 80, &dword_1E1C61000, v489, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_848:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v492 = MEMORY[0x1E69E9C10];
      v493 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v493)
      {
        v494 = 3;
      }

      else
      {
        v494 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v174;
      v617 = 2048;
      *v618 = v11;
      _os_log_send_and_compose_impl(v494, v622, v599, 80, &dword_1E1C61000, v492, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_852:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v495 = MEMORY[0x1E69E9C10];
      v496 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v496)
      {
        v497 = 3;
      }

      else
      {
        v497 = 2;
      }

      *&v616[14] = 621;
      *&v616[18] = 2048;
      *&v616[20] = v11;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v497, v622, v599, 80, &dword_1E1C61000, v495, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_856:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v498 = MEMORY[0x1E69E9C10];
      v499 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v499)
      {
        v500 = 3;
      }

      else
      {
        v500 = 2;
      }

      *&v616[14] = 621;
      *&v616[18] = 2048;
      *&v616[20] = v6;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v500, v622, v599, 80, &dword_1E1C61000, v498, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_860:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v501 = MEMORY[0x1E69E9C10];
      v502 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v502)
      {
        v503 = 3;
      }

      else
      {
        v503 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v22;
      v617 = 2048;
      *v618 = v11;
      _os_log_send_and_compose_impl(v503, v622, v599, 80, &dword_1E1C61000, v501, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_864:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_404:
    v6 = (v22 + 1);
    v208 = re::GeomMesh::addFaceVaryingAttribute(v561, "vertexNormal", 7, v22 + v10, buf, v619);
    v209 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v208);
    v8 = v210;
    if (v22 >= v210)
    {
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v504 = MEMORY[0x1E69E9C10];
      v505 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v505)
      {
        v506 = 3;
      }

      else
      {
        v506 = 2;
      }

      *&v616[14] = 621;
      *&v616[18] = 2048;
      *&v616[20] = v22;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v506, v622, v599, 80, &dword_1E1C61000, v504, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_869;
    }

    *(v209 + 16 * v22) = xmmword_1E30476A0;
    v10 = &v575;
    v11 = v561;
    if ((v9 & 1) == 0)
    {
      goto LABEL_408;
    }

    if (v6 >= v210)
    {
      goto LABEL_889;
    }

    *(v209 + 16 * v6) = xmmword_1E306DD20;
LABEL_408:
    if (v187)
    {
      v22 = 0;
      while (1)
      {
        v7 = *(&v587 + 1);
        if (v22)
        {
          v6 = v22 - 1;
          if (*(&v587 + 1) <= v22 - 1)
          {
            goto LABEL_816;
          }

          v212 = *(v589 + 4 * v6);
        }

        else
        {
          v212 = 0;
        }

        if (*(&v587 + 1) <= v22)
        {
          goto LABEL_792;
        }

        v213 = *(v589 + 4 * v22);
        if (v212 < v213)
        {
          break;
        }

LABEL_423:
        if (++v22 == v23)
        {
          goto LABEL_424;
        }
      }

      v9 = v212;
      if (v212 <= v210)
      {
        v7 = v210;
      }

      else
      {
        v7 = v212;
      }

      v214 = 8 * v212;
      while (1)
      {
        v6 = *(&v581 + 1);
        if (*(&v581 + 1) <= v9)
        {
          break;
        }

        if (v7 == v9)
        {
          goto LABEL_608;
        }

        v211.i32[0] = *(v583 + v214 + 4);
        v211.f32[1] = -*(v583 + v214);
        v215 = vmulq_f32(v211, v211);
        *&v216 = v215.f32[2] + vaddv_f32(*v215.f32);
        *v215.f32 = vrsqrte_f32(v216);
        *v215.f32 = vmul_f32(*v215.f32, vrsqrts_f32(v216, vmul_f32(*v215.f32, *v215.f32)));
        *(v209 + 16 * v9++) = vmulq_n_f32(v211, vmul_f32(*v215.f32, vrsqrts_f32(v216, vmul_f32(*v215.f32, *v215.f32))).f32[0]);
        v214 += 8;
        if (v213 == v9)
        {
          goto LABEL_423;
        }
      }

LABEL_604:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v314 = MEMORY[0x1E69E9C10];
      v315 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v315)
      {
        v316 = 3;
      }

      else
      {
        v316 = 2;
      }

      *&v616[14] = 797;
      *&v616[18] = 2048;
      *&v616[20] = v9;
      v617 = 2048;
      *v618 = v6;
      _os_log_send_and_compose_impl(v316, v622, v599, 80, &dword_1E1C61000, v314, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_608:
      *v622 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v317 = MEMORY[0x1E69E9C10];
      v318 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v616 = 136315906;
      *&v616[4] = "operator[]";
      *&v616[12] = 1024;
      if (v318)
      {
        v319 = 3;
      }

      else
      {
        v319 = 2;
      }

      *&v616[14] = 621;
      *&v616[18] = 2048;
      *&v616[20] = v7;
      v617 = 2048;
      *v618 = v8;
      _os_log_send_and_compose_impl(v319, v622, v599, 80, &dword_1E1C61000, v317, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_612:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v235 = MEMORY[0x1E69E9C10];
      v320 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v320)
      {
        v321 = 3;
      }

      else
      {
        v321 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v12;
      v623 = 2048;
      v624 = v9;
      _os_log_send_and_compose_impl(v321, &v556, v599, 80, &dword_1E1C61000, v235, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_616:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v322 = MEMORY[0x1E69E9C10];
      v323 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v323)
      {
        v324 = 3;
      }

      else
      {
        v324 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v235;
      v623 = 2048;
      v624 = v9;
      _os_log_send_and_compose_impl(v324, &v556, v599, 80, &dword_1E1C61000, v322, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_620:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v235 = MEMORY[0x1E69E9C10];
      v325 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v325)
      {
        v326 = 3;
      }

      else
      {
        v326 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v12;
      v623 = 2048;
      v624 = v11;
      _os_log_send_and_compose_impl(v326, &v556, v599, 80, &dword_1E1C61000, v235, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_624:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v23 = MEMORY[0x1E69E9C10];
      v327 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v327)
      {
        v328 = 3;
      }

      else
      {
        v328 = 2;
      }

      *&v622[14] = 789;
      *&v622[18] = 2048;
      *&v622[20] = v235;
      v623 = 2048;
      v624 = v11;
      _os_log_send_and_compose_impl(v328, &v556, v599, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_628:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v329 = MEMORY[0x1E69E9C10];
      v330 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v330)
      {
        v331 = 3;
      }

      else
      {
        v331 = 2;
      }

      *&v622[14] = 797;
      *&v622[18] = 2048;
      *&v622[20] = v9;
      v623 = 2048;
      v624 = v6;
      _os_log_send_and_compose_impl(v331, &v556, v599, 80, &dword_1E1C61000, v329, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
LABEL_632:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v332 = MEMORY[0x1E69E9C10];
      v333 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v333)
      {
        v334 = 3;
      }

      else
      {
        v334 = 2;
      }

      *&v622[14] = 621;
      *&v622[18] = 2048;
      *&v622[20] = v7;
      v623 = 2048;
      v624 = v8;
      _os_log_send_and_compose_impl(v334, &v556, v599, 80, &dword_1E1C61000, v332, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_636;
    }

LABEL_424:
    if (*v619 && *&v621[2])
    {
      (*(**v619 + 40))();
    }

    if (*buf && *&buf[32])
    {
      (*(**buf + 40))();
    }

    v132 = a4;
LABEL_431:
    if (v530)
    {
      v7 = v132[10];
      v217 = v132[11];
      LODWORD(v10) = DWORD2(v581);
      v23 = DWORD2(v587);
      v9 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
      v8 = *&v561[40];
      *&buf[32] = 0;
      memset(buf, 0, 28);
      *&v621[2] = 0;
      memset(v619, 0, sizeof(v619));
      *&v618[2] = 0;
      memset(v616, 0, sizeof(v616));
      re::DynamicArray<re::GeomCell4>::resize(buf, *&v561[40]);
      re::DynamicArray<re::GeomCell4>::resize(v619, v8);
      re::DynamicArray<float>::resize(v616, v8);
      if (v9)
      {
        v218 = 0;
        v22 = *&buf[16];
        v219 = *&buf[32];
        v11 = *&v619[16];
        v220 = *&v621[2];
        v221.i64[1] = -1;
        v221.i64[0] = v10 | 0xFFFFFFFF00000000;
        v222 = vzip1q_s32(v221, v221);
        v222.i32[2] = v10;
        do
        {
          if (v22 == v218)
          {
            goto LABEL_748;
          }

          *(v219 + 16 * v218) = xmmword_1E30A0E80;
          if (v11 == v218)
          {
            goto LABEL_752;
          }

          *(v220 + 16 * v218++) = v222;
        }

        while (v9 != v218);
        if (v217)
        {
          v223 = *&buf[32];
          v224 = v9;
          v225 = v9;
          v12 = *&v619[16];
          v226 = *&v621[2];
          do
          {
            v11 = v225;
            if (v22 <= v225)
            {
              goto LABEL_796;
            }

            *(v223 + 16 * v225) = xmmword_1E30A0E90;
            if (v12 <= v225)
            {
              goto LABEL_800;
            }

            *(v226 + 16 * v225++) = v222;
          }

          while (--v224);
        }
      }

      if (v23)
      {
        v22 = v7;
      }

      else
      {
        v22 = 0;
      }

      if (v22 == 1)
      {
        v227 = 0;
        if (v217)
        {
          v228 = v9;
        }

        else
        {
          v228 = 0;
        }

        v229 = v228 + v9;
        v7 = *(&v587 + 1);
        v230 = v589;
        v9 = *&buf[16];
        while (1)
        {
          if (v227)
          {
            v6 = v227 - 1;
            if (v7 <= v227 - 1)
            {
              goto LABEL_828;
            }

            v231 = *(v230 + 4 * v6);
          }

          else
          {
            v231 = 0;
          }

          if (v227 == v7)
          {
            goto LABEL_804;
          }

          v232 = *(v230 + 4 * v227) - 1;
          if (v231 < v232)
          {
            break;
          }

LABEL_462:
          if (++v227 == v23)
          {
            goto LABEL_463;
          }
        }

        v233 = *&buf[32];
        v11 = *&v619[16];
        v234 = *&v621[2];
        while (1)
        {
          v12 = v229;
          if (v9 <= v229)
          {
            goto LABEL_612;
          }

          *(v233 + 16 * v229) = xmmword_1E30A0EA0;
          v235 = v229 + 1;
          if (v9 <= v235)
          {
            goto LABEL_616;
          }

          *(v233 + 16 * v235) = xmmword_1E30A0EA0;
          if (v11 <= v229)
          {
            goto LABEL_620;
          }

          v236 = (v234 + 16 * v229);
          *v236 = v231;
          v236[1] = v231++;
          v236[2] = v231;
          v236[3] = -1;
          if (v11 <= v235)
          {
            goto LABEL_624;
          }

          v237 = (v234 + 16 * v235);
          *v237 = v231 - 1;
          v237[1] = v231;
          v237[2] = v231;
          v237[3] = -1;
          v229 = v12 + 2;
          if (v231 == v232)
          {
            goto LABEL_462;
          }
        }
      }

LABEL_463:
      if (v8)
      {
        v238 = 0;
        v7 = *&v616[16];
        v239 = *&v618[2];
        while (v7 != v238)
        {
          *(v239 + 4 * v238) = v238;
          if (v8 == ++v238)
          {
            goto LABEL_467;
          }
        }

        goto LABEL_772;
      }

LABEL_467:
      v7 = re::GeomMesh::addFaceVaryingAttribute(v561, "vertexTangent", 7, 3, buf, v616);
      v240 = v10;
      v8 = re::GeomMesh::addFaceVaryingAttribute(v561, "vertexBitangent", 7, v10 + 3, v619, v616);
      v9 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v7);
      v12 = v241;
      v242 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v8);
      if (v12)
      {
        *v9 = xmmword_1E3047670;
        v10 = &v575;
        v11 = v561;
        if (v12 != 1)
        {
          *(v9 + 16) = xmmword_1E3047690;
          if (v12 > 2)
          {
            v8 = v243;
            v6 = v240;
            *(v9 + 32) = xmmword_1E306DD20;
            if (v243 > v240)
            {
              v244.i32[3] = 0;
              *(v242 + 16 * v240) = xmmword_1E3047680;
              if (v22)
              {
                v22 = 0;
                while (1)
                {
                  v7 = *(&v587 + 1);
                  if (v22)
                  {
                    v6 = v22 - 1;
                    if (*(&v587 + 1) <= v22 - 1)
                    {
                      goto LABEL_832;
                    }

                    v245 = *(v589 + 4 * v6);
                  }

                  else
                  {
                    v245 = 0;
                  }

                  if (*(&v587 + 1) <= v22)
                  {
                    goto LABEL_812;
                  }

                  v246 = *(v589 + 4 * v22);
                  if (v245 < v246)
                  {
                    break;
                  }

LABEL_485:
                  if (++v22 == v23)
                  {
                    goto LABEL_486;
                  }
                }

                v9 = v245;
                if (v245 <= v243)
                {
                  v7 = v243;
                }

                else
                {
                  v7 = v245;
                }

                while (1)
                {
                  v6 = *(&v581 + 1);
                  if (*(&v581 + 1) <= v9)
                  {
                    goto LABEL_628;
                  }

                  if (v7 == v9)
                  {
                    goto LABEL_632;
                  }

                  v244.i64[0] = *(v583 + 8 * v9);
                  v244.i32[2] = 0;
                  v247 = vmulq_f32(v244, v244);
                  *&v248 = v247.f32[2] + vaddv_f32(*v247.f32);
                  *v247.f32 = vrsqrte_f32(v248);
                  *v247.f32 = vmul_f32(*v247.f32, vrsqrts_f32(v248, vmul_f32(*v247.f32, *v247.f32)));
                  v244 = vmulq_n_f32(v244, vmul_f32(*v247.f32, vrsqrts_f32(v248, vmul_f32(*v247.f32, *v247.f32))).f32[0]);
                  *(v242 + 16 * v9++) = v244;
                  if (v246 == v9)
                  {
                    goto LABEL_485;
                  }
                }
              }

LABEL_486:
              if (*v616 && *&v618[2])
              {
                (*(**v616 + 40))();
              }

              if (*v619 && *&v621[2])
              {
                (*(**v619 + 40))();
              }

              if (*buf && *&buf[32])
              {
                (*(**buf + 40))();
              }

              goto LABEL_495;
            }

LABEL_885:
            v556 = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v519 = MEMORY[0x1E69E9C10];
            v520 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v622 = 136315906;
            *&v622[4] = "operator[]";
            *&v622[12] = 1024;
            if (v520)
            {
              v521 = 3;
            }

            else
            {
              v521 = 2;
            }

            *&v622[14] = 621;
            *&v622[18] = 2048;
            *&v622[20] = v6;
            v623 = 2048;
            v624 = v8;
            _os_log_send_and_compose_impl(v521, &v556, v599, 80, &dword_1E1C61000, v519, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
LABEL_889:
            *v622 = 0;
            v601 = 0u;
            v600 = 0u;
            memset(v599, 0, sizeof(v599));
            v522 = MEMORY[0x1E69E9C10];
            v523 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v616 = 136315906;
            *&v616[4] = "operator[]";
            *&v616[12] = 1024;
            if (v523)
            {
              v524 = 3;
            }

            else
            {
              v524 = 2;
            }

            *&v616[14] = 621;
            *&v616[18] = 2048;
            *&v616[20] = v6;
            v617 = 2048;
            *v618 = v8;
            _os_log_send_and_compose_impl(v524, v622, v599, 80, &dword_1E1C61000, v522, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v616, 38, v525, v526);
            _os_crash_msg();
            __break(1u);
          }

LABEL_881:
          v556 = 0;
          v601 = 0u;
          v600 = 0u;
          memset(v599, 0, sizeof(v599));
          v516 = MEMORY[0x1E69E9C10];
          v517 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v622 = 136315906;
          *&v622[4] = "operator[]";
          *&v622[12] = 1024;
          if (v517)
          {
            v518 = 3;
          }

          else
          {
            v518 = 2;
          }

          *&v622[14] = 621;
          *&v622[18] = 2048;
          *&v622[20] = 2;
          v623 = 2048;
          v624 = v12 & 3;
          _os_log_send_and_compose_impl(v518, &v556, v599, 80, &dword_1E1C61000, v516, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
          _os_crash_msg();
          __break(1u);
          goto LABEL_885;
        }

LABEL_877:
        v556 = 0;
        v601 = 0u;
        v600 = 0u;
        memset(v599, 0, sizeof(v599));
        v513 = MEMORY[0x1E69E9C10];
        v514 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v622 = 136315906;
        *&v622[4] = "operator[]";
        *&v622[12] = 1024;
        if (v514)
        {
          v515 = 3;
        }

        else
        {
          v515 = 2;
        }

        *&v622[14] = 621;
        *&v622[18] = 2048;
        *&v622[20] = 1;
        v623 = 2048;
        v624 = 1;
        _os_log_send_and_compose_impl(v515, &v556, v599, 80, &dword_1E1C61000, v513, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
        _os_crash_msg();
        __break(1u);
        goto LABEL_881;
      }

LABEL_873:
      v556 = 0;
      v601 = 0u;
      v600 = 0u;
      memset(v599, 0, sizeof(v599));
      v510 = MEMORY[0x1E69E9C10];
      v511 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v622 = 136315906;
      *&v622[4] = "operator[]";
      *&v622[12] = 1024;
      if (v511)
      {
        v512 = 3;
      }

      else
      {
        v512 = 2;
      }

      *&v622[14] = 621;
      *&v622[18] = 2048;
      *&v622[20] = 0;
      v623 = 2048;
      v624 = 0;
      _os_log_send_and_compose_impl(v512, &v556, v599, 80, &dword_1E1C61000, v510, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v525, v526);
      _os_crash_msg();
      __break(1u);
      goto LABEL_877;
    }

LABEL_495:
    re::GeomMeshBuilder::appendMesh(&v590, v561);
    re::GeomMesh::~GeomMesh(v561);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v586 + 1))
    {
      if (v589)
      {
        (*(**(&v586 + 1) + 40))();
      }

      v589 = 0;
      v587 = 0uLL;
      *(&v586 + 1) = 0;
      ++v588;
    }

    if (*(&v583 + 1))
    {
      if (v586)
      {
        (*(**(&v583 + 1) + 40))();
      }

      *&v586 = 0;
      v584 = 0uLL;
      *(&v583 + 1) = 0;
      ++v585;
    }

    if (*(&v580 + 1))
    {
      if (v583)
      {
        (*(**(&v580 + 1) + 40))();
      }

      *&v583 = 0;
      v581 = 0uLL;
      *(&v580 + 1) = 0;
      ++v582;
    }

    if (v577[0] && v580)
    {
      (*(*v577[0] + 40))();
    }

    v72 = v531 + 1;
  }

  while (v531 + 1 != v527);
LABEL_513:
  v249 = re::GeomMesh::operator=(a1, &v591);
  re::GeomMesh::setName(v249, v590);
  re::GeomMesh::freeName(&v590);
  re::GeomMesh::freeName(&v590);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v598);
  if (v592 && v597)
  {
    (*(*v592 + 40))();
  }

  v250 = v545;
  if (v545 && v549)
  {
    if (v547)
    {
      v251 = 224 * v547;
      v252 = (v549 + 176);
      do
      {
        re::DynamicArray<unsigned long>::deinit((v252 - 6));
        re::DynamicArray<unsigned long>::deinit((v252 - 11));
        re::DynamicArray<unsigned long>::deinit((v252 - 16));
        v252 += 28;
        v251 -= 224;
      }

      while (v251);
      v250 = v545;
    }

    (*(*v250 + 40))(v250);
  }
}